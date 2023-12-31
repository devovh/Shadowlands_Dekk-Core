/*
 * This file is part of the TrinityCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "WorldSession.h"
#include "Battleground.h"
#include "Common.h"
#include "Config.h"
#include "Creature.h"
#include "CreatureAI.h"
#include "DatabaseEnv.h"
#include "DB2Stores.h"
#include "GameObject.h"
#include "GarrisonPackets.h"
#include "GameObjectAI.h"
#include "GossipDef.h"
#include "Group.h"
#include "Log.h"
#include "ObjectAccessor.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "PoolMgr.h"
#include "QuestDef.h"
#include "QuestPackets.h"
#include "QuestPools.h"
#include "ReputationMgr.h"
#include "ScriptMgr.h"
#include "World.h"
#include <Quests/WorldQuestMgr.h>
#include <Events/GameEventMgr.h>

void WorldSession::HandleQuestgiverStatusQueryOpcode(WorldPackets::Quest::QuestGiverStatusQuery& packet)
{
    QuestGiverStatus questStatus = QuestGiverStatus::None;

    Object* questGiver = ObjectAccessor::GetObjectByTypeMask(*_player, packet.QuestGiverGUID, TYPEMASK_UNIT | TYPEMASK_GAMEOBJECT);
    if (!questGiver)
    {
        TC_LOG_INFO("network", "Error in CMSG_QUESTGIVER_STATUS_QUERY, called for non-existing questgiver (%s)", packet.QuestGiverGUID.ToString().c_str());
        return;
    }

    switch (questGiver->GetTypeId())
    {
        case TYPEID_UNIT:
        {
            TC_LOG_DEBUG("network", "WORLD: Received CMSG_QUESTGIVER_STATUS_QUERY for npc %s", questGiver->GetGUID().ToString().c_str());
            if (!questGiver->ToCreature()->IsHostileTo(_player)) // do not show quest status to enemies
                questStatus = _player->GetQuestDialogStatus(questGiver);
            break;
        }
        case TYPEID_GAMEOBJECT:
        {
            TC_LOG_DEBUG("network", "WORLD: Received CMSG_QUESTGIVER_STATUS_QUERY for GameObject %s", questGiver->GetGUID().ToString().c_str());
            questStatus = _player->GetQuestDialogStatus(questGiver);
            break;
        }
        default:
            TC_LOG_ERROR("network", "QuestGiver called for unexpected type %u", questGiver->GetTypeId());
            break;
    }

    //inform client about status of quest
    _player->PlayerTalkClass->SendQuestGiverStatus(questStatus, packet.QuestGiverGUID);
}

void WorldSession::HandleQuestgiverHelloOpcode(WorldPackets::Quest::QuestGiverHello& packet)
{
    TC_LOG_DEBUG("network", "WORLD: Received CMSG_QUESTGIVER_HELLO %s", packet.QuestGiverGUID.ToString().c_str());

    Creature* creature = GetPlayer()->GetNPCIfCanInteractWith(packet.QuestGiverGUID, UNIT_NPC_FLAG_QUESTGIVER, UNIT_NPC_FLAG_2_NONE);
    if (!creature)
    {
        TC_LOG_DEBUG("network", "WORLD: HandleQuestgiverHelloOpcode - %s not found or you can't interact with him.",
            packet.QuestGiverGUID.ToString().c_str());
        return;
    }

    // remove fake death
    if (GetPlayer()->HasUnitState(UNIT_STATE_DIED))
        GetPlayer()->RemoveAurasByType(SPELL_AURA_FEIGN_DEATH);

    // Stop the npc if moving
    if (uint32 pause = creature->GetMovementTemplate().GetInteractionPauseTimer())
        creature->PauseMovement(pause);
    creature->SetHomePosition(creature->GetPosition());

    _player->PlayerTalkClass->ClearMenus();
    if (creature->AI()->OnGossipHello(_player))
        return;

    _player->PrepareGossipMenu(creature, creature->GetCreatureTemplate()->GossipMenuId, true);
    _player->SendPreparedGossip(creature);
}

void WorldSession::HandleQuestgiverAcceptQuestOpcode(WorldPackets::Quest::QuestGiverAcceptQuest& packet)
{
    TC_LOG_DEBUG("network", "WORLD: Received CMSG_QUESTGIVER_ACCEPT_QUEST %s, quest = %u, startcheat = %u", packet.QuestGiverGUID.ToString().c_str(), packet.QuestID, packet.StartCheat);

    Object* object;
    if (!packet.QuestGiverGUID.IsPlayer())
        object = ObjectAccessor::GetObjectByTypeMask(*_player, packet.QuestGiverGUID, TYPEMASK_UNIT | TYPEMASK_GAMEOBJECT | TYPEMASK_ITEM);
    else
        object = ObjectAccessor::FindPlayer(packet.QuestGiverGUID);

    auto CLOSE_GOSSIP_CLEAR_SHARING_INFO = ([this]()
    {
        _player->PlayerTalkClass->SendCloseGossip();
        _player->ClearQuestSharingInfo();
    });

    // no or incorrect quest giver
    if (!object)
    {
        CLOSE_GOSSIP_CLEAR_SHARING_INFO();
        return;
    }

    if (Player* playerQuestObject = object->ToPlayer())
    {
        if ((_player->GetPlayerSharingQuest().IsEmpty() && _player->GetPlayerSharingQuest() != packet.QuestGiverGUID) || !playerQuestObject->CanShareQuest(packet.QuestID))
        {
            CLOSE_GOSSIP_CLEAR_SHARING_INFO();
            return;
        }
        if (!_player->IsInSameRaidWith(playerQuestObject))
        {
            CLOSE_GOSSIP_CLEAR_SHARING_INFO();
            return;
        }
    }
    else
    {
        if (!object->hasQuest(packet.QuestID))
        {
            CLOSE_GOSSIP_CLEAR_SHARING_INFO();
            return;
        }
    }

    // some kind of WPE protection
    if (!_player->CanInteractWithQuestGiver(object))
    {
        CLOSE_GOSSIP_CLEAR_SHARING_INFO();
        return;
    }

    if (Quest const* quest = sObjectMgr->GetQuestTemplate(packet.QuestID))
    {
        // prevent cheating
        if (!GetPlayer()->CanTakeQuest(quest, true))
        {
            CLOSE_GOSSIP_CLEAR_SHARING_INFO();
            return;
        }

        if (!_player->GetPlayerSharingQuest().IsEmpty())
        {
            Player* player = ObjectAccessor::FindPlayer(_player->GetPlayerSharingQuest());
            if (player)
            {
                player->SendPushToPartyResponse(_player, QuestPushReason::Accepted);
                _player->ClearQuestSharingInfo();
            }
        }

        if (_player->CanAddQuest(quest, true))
        {
            _player->AddQuestAndCheckCompletion(quest, object);

            if (quest->HasFlag(QUEST_FLAGS_PARTY_ACCEPT))
            {
                if (Group* group = _player->GetGroup())
                {
                    for (GroupReference* itr = group->GetFirstMember(); itr != nullptr; itr = itr->next())
                    {
                        Player* player = itr->GetSource();

                        if (!player || player == _player || !player->IsInMap(_player))     // not self and in same map
                            continue;

                        if (player->CanTakeQuest(quest, true))
                        {
                            player->SetQuestSharingInfo(_player->GetGUID(), quest->GetQuestId());

                            // need confirmation that any gossip window will close
                            player->PlayerTalkClass->SendCloseGossip();

                            _player->SendQuestConfirmAccept(quest, player);
                        }
                    }
                }
            }

            _player->PlayerTalkClass->SendCloseGossip();

            return;
        }
    }

    CLOSE_GOSSIP_CLEAR_SHARING_INFO();
}

void WorldSession::HandleQuestgiverQueryQuestOpcode(WorldPackets::Quest::QuestGiverQueryQuest& packet)
{
    TC_LOG_DEBUG("network", "WORLD: Received CMSG_QUESTGIVER_QUERY_QUEST QuestGiverGUID = %s, QuestID = %u, RespondToGiver = %u", packet.QuestGiverGUID.ToString().c_str(), packet.QuestID, packet.RespondToGiver);

    // Verify that the guid is valid and is a questgiver or involved in the requested quest
    Object* object = ObjectAccessor::GetObjectByTypeMask(*_player, packet.QuestGiverGUID, TYPEMASK_UNIT | TYPEMASK_GAMEOBJECT | TYPEMASK_ITEM);
    if (!object || (!object->hasQuest(packet.QuestID) && !object->hasInvolvedQuest(packet.QuestID)))
    {
        _player->PlayerTalkClass->SendCloseGossip();
        return;
    }

    if (Quest const* quest = sObjectMgr->GetQuestTemplate(packet.QuestID))
    {
        if (!_player->CanTakeQuest(quest, true))
            return;

        if (quest->IsAutoAccept() && _player->CanAddQuest(quest, true))
            _player->AddQuestAndCheckCompletion(quest, object);

        if (quest->IsAutoComplete())
            _player->PlayerTalkClass->SendQuestGiverRequestItems(quest, object->GetGUID(), _player->CanCompleteQuest(quest->GetQuestId()), true);
        else
            _player->PlayerTalkClass->SendQuestGiverQuestDetails(quest, object->GetGUID(), true, false);
    }
}

void WorldSession::HandleQuestQueryOpcode(WorldPackets::Quest::QueryQuestInfo& packet)
{
    TC_LOG_DEBUG("network", "WORLD: Received CMSG_QUEST_QUERY quest = %u", packet.QuestID);

    if (Quest const* quest = sObjectMgr->GetQuestTemplate(packet.QuestID))
        _player->PlayerTalkClass->SendQuestQueryResponse(quest);
    else
    {
        WorldPackets::Quest::QueryQuestInfoResponse response;
        response.QuestID = packet.QuestID;
        SendPacket(response.Write());
    }
}

void WorldSession::HandleQuestgiverChooseRewardOpcode(WorldPackets::Quest::QuestGiverChooseReward& packet)
{
    TC_LOG_DEBUG("network", "WORLD: Received CMSG_QUESTGIVER_CHOOSE_REWARD npc = %s, quest = %u, reward = %u",
        packet.QuestGiverGUID.ToString().c_str(), packet.QuestID, packet.Choice.Item.ItemID);

    Quest const* quest = sObjectMgr->GetQuestTemplate(packet.QuestID);
    if (!quest)
        return;

    if (packet.Choice.Item.ItemID)
    {
        switch (packet.Choice.LootItemType)
        {
            case LootItemType::Item:
            {
                ItemTemplate const* rewardProto = sObjectMgr->GetItemTemplate(packet.Choice.Item.ItemID);
                if (!rewardProto)
                {
                    TC_LOG_ERROR("entities.player.cheat", "Error in CMSG_QUESTGIVER_CHOOSE_REWARD: player %s %s tried to get invalid reward item (Item Entry: %u) for quest %u (possible packet-hacking detected)",
                        _player->GetName().c_str(), _player->GetGUID().ToString().c_str(), packet.Choice.Item.ItemID, packet.QuestID);
                    return;
                }

                bool itemValid = false;
                for (uint32 i = 0; i < quest->GetRewChoiceItemsCount(); ++i)
                {
                    if (quest->RewardChoiceItemId[i] && quest->RewardChoiceItemType[i] == LootItemType::Item && quest->RewardChoiceItemId[i] == packet.Choice.Item.ItemID)
                    {
                        itemValid = true;
                        break;
                    }
                }

                if (!itemValid && quest->GetQuestPackageID())
                {
                    if (std::vector<QuestPackageItemEntry const*> const* questPackageItems = sDB2Manager.GetQuestPackageItems(quest->GetQuestPackageID()))
                    {
                        for (QuestPackageItemEntry const* questPackageItem : *questPackageItems)
                        {
                            if (uint32(questPackageItem->ItemID) != packet.Choice.Item.ItemID)
                                continue;

                            if (_player->CanSelectQuestPackageItem(questPackageItem))
                            {
                                itemValid = true;
                                break;
                            }
                        }
                    }

                    if (!itemValid)
                    {
                        if (std::vector<QuestPackageItemEntry const*> const* questPackageItems = sDB2Manager.GetQuestPackageItemsFallback(quest->GetQuestPackageID()))
                        {
                            for (QuestPackageItemEntry const* questPackageItem : *questPackageItems)
                            {
                                if (uint32(questPackageItem->ItemID) != packet.Choice.Item.ItemID)
                                    continue;

                                itemValid = true;
                                break;
                            }
                        }
                    }
                }

                if (!itemValid)
                {
                    TC_LOG_ERROR("entities.player.cheat", "Error in CMSG_QUESTGIVER_CHOOSE_REWARD: player %s %s tried to get reward item (Item Entry: %u) wich is not a reward for quest %u (possible packet-hacking detected)",
                        _player->GetName().c_str(), _player->GetGUID().ToString().c_str(), packet.Choice.Item.ItemID, packet.QuestID);
                    return;
                }
                break;
            }
            case LootItemType::Currency:
            {
                if (!sCurrencyTypesStore.HasRecord(packet.Choice.Item.ItemID))
                {
                    TC_LOG_ERROR("entities.player.cheat", "Error in CMSG_QUESTGIVER_CHOOSE_REWARD: player %s %s tried to get invalid reward currency (Currency ID: %u) for quest %u (possible packet-hacking detected)",
                        _player->GetName().c_str(), _player->GetGUID().ToString().c_str(), packet.Choice.Item.ItemID, packet.QuestID);
                    return;
                }

                bool currencyValid = false;
                for (uint32 i = 0; i < quest->GetRewChoiceItemsCount(); ++i)
                {
                    if (quest->RewardChoiceItemId[i] && quest->RewardChoiceItemType[i] == LootItemType::Currency && quest->RewardChoiceItemId[i] == packet.Choice.Item.ItemID)
                    {
                        currencyValid = true;
                        break;
                    }
                }

                if (!currencyValid)
                {
                    TC_LOG_ERROR("entities.player.cheat", "Error in CMSG_QUESTGIVER_CHOOSE_REWARD: player %s %s tried to get reward currency (Currency ID: %u) wich is not a reward for quest %u (possible packet-hacking detected)",
                        _player->GetName().c_str(), _player->GetGUID().ToString().c_str(), packet.Choice.Item.ItemID, packet.QuestID);
                    return;
                }
                break;
            }
            default:
                break;
        }
    }

    Object* object = _player;

    if (!quest->HasFlag(QUEST_FLAGS_AUTOCOMPLETE))
    {
        object = ObjectAccessor::GetObjectByTypeMask(*_player, packet.QuestGiverGUID, TYPEMASK_UNIT|TYPEMASK_GAMEOBJECT);
        if (!object || !object->hasInvolvedQuest(packet.QuestID))
            return;

        // some kind of WPE protection
        if (!_player->CanInteractWithQuestGiver(object))
            return;
    }

    if ((!_player->CanSeeStartQuest(quest) &&  _player->GetQuestStatus(packet.QuestID) == QUEST_STATUS_NONE) ||
        (_player->GetQuestStatus(packet.QuestID) != QUEST_STATUS_COMPLETE && !quest->IsAutoComplete()))
    {
        TC_LOG_ERROR("network", "Error in QUEST_STATUS_COMPLETE: player %s %s tried to complete quest %u, but is not allowed to do so (possible packet-hacking or high latency)",
            _player->GetName().c_str(), _player->GetGUID().ToString().c_str(), packet.QuestID);
        return;
    }

    if (_player->CanRewardQuest(quest, true)) // First, check if player is allowed to turn the quest in (all objectives completed). If not, we send players to the offer reward screen
    {
        if (_player->CanRewardQuest(quest, packet.Choice.LootItemType, packet.Choice.Item.ItemID, true)) // Then check if player can receive the reward item (if inventory is not full, if player doesn't have too many unique items, and so on). If not, the client will close the gossip window
        {
            if (Battleground* bg = _player->GetBattleground())
                bg->HandleQuestComplete(packet.QuestID, _player);

            _player->RewardQuest(quest, packet.Choice.LootItemType, packet.Choice.Item.ItemID, object);

            switch (object->GetTypeId())
            {
                case TYPEID_UNIT:
                case TYPEID_PLAYER:
                {
                    //For AutoSubmition was added plr case there as it almost same exclute AI script cases.
                    // Send next quest
                    if (Quest const* nextQuest = _player->GetNextQuest(packet.QuestGiverGUID, quest))
                    {
                        // Only send the quest to the player if the conditions are met
                        if (_player->CanTakeQuest(nextQuest, false))
                        {
                            if (nextQuest->IsAutoAccept() && _player->CanAddQuest(nextQuest, true))
                                _player->AddQuestAndCheckCompletion(nextQuest, object);

                            _player->PlayerTalkClass->SendQuestGiverQuestDetails(nextQuest, packet.QuestGiverGUID, true, false);
                        }
                    }

                    _player->PlayerTalkClass->ClearMenus();
                    if (Creature* creatureQGiver = object->ToCreature())
                        creatureQGiver->AI()->OnQuestReward(_player, quest, packet.Choice.LootItemType, packet.Choice.Item.ItemID);
                    break;
                }
                case TYPEID_GAMEOBJECT:
                {
                    GameObject* questGiver = object->ToGameObject();
                    // Send next quest
                    if (Quest const* nextQuest = _player->GetNextQuest(packet.QuestGiverGUID, quest))
                    {
                        // Only send the quest to the player if the conditions are met
                        if (_player->CanTakeQuest(nextQuest, false))
                        {
                            if (nextQuest->IsAutoAccept() && _player->CanAddQuest(nextQuest, true))
                                _player->AddQuestAndCheckCompletion(nextQuest, object);

                            _player->PlayerTalkClass->SendQuestGiverQuestDetails(nextQuest, packet.QuestGiverGUID, true, false);
                        }
                    }

                    _player->PlayerTalkClass->ClearMenus();
                    questGiver->AI()->OnQuestReward(_player, quest, packet.Choice.LootItemType, packet.Choice.Item.ItemID);
                    break;
                }
                default:
                    break;
            }
        }
    }
    else
        _player->PlayerTalkClass->SendQuestGiverOfferReward(quest, packet.QuestGiverGUID, true);
}

void WorldSession::HandleQuestgiverRequestRewardOpcode(WorldPackets::Quest::QuestGiverRequestReward& packet)
{
    TC_LOG_DEBUG("network", "WORLD: Received CMSG_QUESTGIVER_REQUEST_REWARD npc = %s, quest = %u", packet.QuestGiverGUID.ToString().c_str(), packet.QuestID);

    Object* object = ObjectAccessor::GetObjectByTypeMask(*_player, packet.QuestGiverGUID, TYPEMASK_UNIT | TYPEMASK_GAMEOBJECT);
    if (!object || !object->hasInvolvedQuest(packet.QuestID))
        return;

    // some kind of WPE protection
    if (!_player->CanInteractWithQuestGiver(object))
        return;

    if (_player->CanCompleteQuest(packet.QuestID))
        _player->CompleteQuest(packet.QuestID);

    if (_player->GetQuestStatus(packet.QuestID) != QUEST_STATUS_COMPLETE)
        return;

    if (Quest const* quest = sObjectMgr->GetQuestTemplate(packet.QuestID))
        _player->PlayerTalkClass->SendQuestGiverOfferReward(quest, packet.QuestGiverGUID, true);
}

void WorldSession::HandleQuestLogRemoveQuest(WorldPackets::Quest::QuestLogRemoveQuest& packet)
{
    TC_LOG_DEBUG("network", "WORLD: Received CMSG_QUESTLOG_REMOVE_QUEST slot = %u", packet.Entry);

    if (packet.Entry < MAX_QUEST_LOG_SIZE)
    {
        if (uint32 questId = _player->GetQuestSlotQuestId(packet.Entry))
        {
            if (!_player->TakeQuestSourceItem(questId, true))
                return;                                     // can't un-equip some items, reject quest cancel

            Quest const* quest = sObjectMgr->GetQuestTemplate(questId);
            QuestStatus oldStatus = _player->GetQuestStatus(questId);

            if (quest)
            {
                if (quest->GetLimitTime())
                    _player->RemoveTimedQuest(questId);

                if (quest->HasFlag(QUEST_FLAGS_FLAGS_PVP))
                {
                    _player->pvpInfo.IsHostile = _player->pvpInfo.IsInHostileArea || _player->HasPvPForcingQuest();
                    _player->UpdatePvPState();
                }

            }

            _player->SetQuestSlot(packet.Entry, 0);
            _player->TakeQuestSourceItem(questId, true); // remove quest src item from player
            _player->AbandonQuest(questId); // remove all quest items player received before abandoning quest. Note, this does not remove normal drop items that happen to be quest requirements.
            _player->RemoveActiveQuest(quest);
            _player->RemoveCriteriaTimer(CriteriaStartEvent::AcceptQuest, questId);

            TC_LOG_INFO("network", "Player %s abandoned quest %u", _player->GetGUID().ToString().c_str(), questId);

            if (sWorld->getBoolConfig(CONFIG_QUEST_ENABLE_QUEST_TRACKER)) // check if Quest Tracker is enabled
            {
                // prepare Quest Tracker datas
                CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_UPD_QUEST_TRACK_ABANDON_TIME);
                stmt->setUInt32(0, questId);
                stmt->setUInt64(1, _player->GetGUID().GetCounter());

                // add to Quest Tracker
                CharacterDatabase.Execute(stmt);
            }

            sScriptMgr->OnQuestStatusChange(_player, questId);

            if (quest)
                sScriptMgr->OnQuestStatusChange(_player, quest, oldStatus, QUEST_STATUS_NONE);
        }

        _player->UpdateCriteria(CriteriaType::AbandonAnyQuest, 1);
    }
}

void WorldSession::HandleQuestConfirmAccept(WorldPackets::Quest::QuestConfirmAccept& packet)
{
    TC_LOG_DEBUG("network", "WORLD: Received CMSG_QUEST_CONFIRM_ACCEPT questId = %u", packet.QuestID);

    if (Quest const* quest = sObjectMgr->GetQuestTemplate(packet.QuestID))
    {
        if (!quest->HasFlag(QUEST_FLAGS_PARTY_ACCEPT))
            return;

        Player* originalPlayer = ObjectAccessor::FindPlayer(_player->GetPlayerSharingQuest());
        if (!originalPlayer)
            return;

        if (!_player->IsInSameRaidWith(originalPlayer))
            return;

        if (!originalPlayer->IsActiveQuest(packet.QuestID))
            return;

        if (!_player->CanTakeQuest(quest, true))
            return;

        if (_player->CanAddQuest(quest, true))
        {
            _player->AddQuestAndCheckCompletion(quest, nullptr); // NULL, this prevent DB script from duplicate running

            if (quest->GetSrcSpell() > 0)
                _player->CastSpell(_player, quest->GetSrcSpell(), true);
        }
    }

    _player->ClearQuestSharingInfo();
}

void WorldSession::HandleQuestgiverCompleteQuest(WorldPackets::Quest::QuestGiverCompleteQuest& packet)
{
    bool autoCompleteMode = packet.FromScript; // 0 - standart complete quest mode with npc, 1 - auto-complete mode

    TC_LOG_DEBUG("network", "WORLD: Received CMSG_QUESTGIVER_COMPLETE_QUEST npc = %s, questId = %u self-complete: %u", packet.QuestGiverGUID.ToString().c_str(), packet.QuestID, autoCompleteMode ? 1 : 0);

    Quest const* quest = sObjectMgr->GetQuestTemplate(packet.QuestID);
    if (!quest)
        return;

    if (autoCompleteMode && !quest->HasFlag(QUEST_FLAGS_AUTOCOMPLETE))
        return;

    Object* object = nullptr;
    if (autoCompleteMode)
        object = _player;
    else
        object = ObjectAccessor::GetObjectByTypeMask(*_player, packet.QuestGiverGUID, TYPEMASK_UNIT | TYPEMASK_GAMEOBJECT);

    if (!object)
        return;

    if (!autoCompleteMode)
    {
        if (!object->hasInvolvedQuest(packet.QuestID))
            return;

        // some kind of WPE protection
        if (!_player->CanInteractWithQuestGiver(object))
            return;
    }
    else
    {
        // Do not allow completing quests on other players.
        if (packet.QuestGiverGUID != _player->GetGUID())
            return;
    }

    if (!_player->CanSeeStartQuest(quest) && _player->GetQuestStatus(packet.QuestID) == QUEST_STATUS_NONE)
    {
        TC_LOG_ERROR("entities.player.cheat", "Possible hacking attempt: Player %s [%s] tried to complete quest [entry: %u] without being in possession of the quest!",
            _player->GetName().c_str(), _player->GetGUID().ToString().c_str(), packet.QuestID);
        return;
    }

    if (_player->GetQuestStatus(packet.QuestID) != QUEST_STATUS_COMPLETE)
    {
        if (quest->IsRepeatable())
            _player->PlayerTalkClass->SendQuestGiverRequestItems(quest, packet.QuestGiverGUID, _player->CanCompleteRepeatableQuest(quest), false);
        else
            _player->PlayerTalkClass->SendQuestGiverRequestItems(quest, packet.QuestGiverGUID, _player->CanRewardQuest(quest, false), false);
    }
    else
    {
        if (quest->HasQuestObjectiveType(QUEST_OBJECTIVE_ITEM))                  // some items required
            _player->PlayerTalkClass->SendQuestGiverRequestItems(quest, packet.QuestGiverGUID, _player->CanRewardQuest(quest, false), false);
        else                                            // no items required
            _player->PlayerTalkClass->SendQuestGiverOfferReward(quest, packet.QuestGiverGUID, true);
    }
}

void WorldSession::HandleQuestgiverCloseQuest(WorldPackets::Quest::QuestGiverCloseQuest& questGiverCloseQuest)
{
    if (_player->FindQuestSlot(questGiverCloseQuest.QuestID) >= MAX_QUEST_LOG_SIZE)
        return;

    Quest const* quest = sObjectMgr->GetQuestTemplate(questGiverCloseQuest.QuestID);
    if (!quest)
        return;

    sScriptMgr->OnQuestAcknowledgeAutoAccept(_player, quest);
}

void WorldSession::HandlePushQuestToParty(WorldPackets::Quest::PushQuestToParty& packet)
{
    Quest const* quest = sObjectMgr->GetQuestTemplate(packet.QuestID);
    if (!quest)
        return;

    Player* const sender = GetPlayer();

    if (!_player->CanShareQuest(packet.QuestID))
    {
        sender->SendPushToPartyResponse(sender, QuestPushReason::NotAllowed);
        return;
    }

    // in pool and not currently available (wintergrasp weekly, dalaran weekly) - can't share
    if (!sQuestPoolMgr->IsQuestActive(packet.QuestID))
    {
        sender->SendPushToPartyResponse(sender, QuestPushReason::NotDaily);
        return;
    }

    Group* group = sender->GetGroup();
    if (!group)
    {
        sender->SendPushToPartyResponse(sender, QuestPushReason::NotInParty);
        return;
    }

    for (GroupReference* itr = group->GetFirstMember(); itr != nullptr; itr = itr->next())
    {
        Player* receiver = itr->GetSource();

        if (!receiver || receiver == sender)
            continue;

        if (!receiver->GetPlayerSharingQuest().IsEmpty())
        {
            sender->SendPushToPartyResponse(receiver, QuestPushReason::Busy);
            continue;
        }

        if (!receiver->IsAlive())
        {
            sender->SendPushToPartyResponse(receiver, QuestPushReason::Dead);
            receiver->SendPushToPartyResponse(sender, QuestPushReason::DeadToRecipient, quest);
            continue;
        }

        switch (receiver->GetQuestStatus(packet.QuestID))
        {
            case QUEST_STATUS_REWARDED:
            {
                sender->SendPushToPartyResponse(receiver, QuestPushReason::AlreadyDone);
                receiver->SendPushToPartyResponse(sender, QuestPushReason::AlreadyDoneToRecipient, quest);
                continue;
            }
            case QUEST_STATUS_INCOMPLETE:
            case QUEST_STATUS_COMPLETE:
            {
                sender->SendPushToPartyResponse(receiver, QuestPushReason::OnQuest);
                receiver->SendPushToPartyResponse(sender, QuestPushReason::OnQuestToRecipient, quest);
                continue;
            }
            default:
                break;
        }

        if (!receiver->SatisfyQuestLog(false))
        {
            sender->SendPushToPartyResponse(receiver, QuestPushReason::LogFull);
            receiver->SendPushToPartyResponse(sender, QuestPushReason::LogFullToRecipient, quest);
            continue;
        }

        if (!receiver->SatisfyQuestDay(quest, false))
        {
            sender->SendPushToPartyResponse(receiver, QuestPushReason::AlreadyDone);
            receiver->SendPushToPartyResponse(sender, QuestPushReason::AlreadyDoneToRecipient, quest);
            continue;
        }

        if (!receiver->SatisfyQuestMinLevel(quest, false))
        {
            sender->SendPushToPartyResponse(receiver, QuestPushReason::LowLevel);
            receiver->SendPushToPartyResponse(sender, QuestPushReason::LowLevelToRecipient, quest);
            continue;
        }

        if (!receiver->SatisfyQuestMaxLevel(quest, false))
        {
            sender->SendPushToPartyResponse(receiver, QuestPushReason::HighLevel);
            receiver->SendPushToPartyResponse(sender, QuestPushReason::HighLevelToRecipient, quest);
            continue;
        }

        if (!receiver->SatisfyQuestClass(quest, false))
        {
            sender->SendPushToPartyResponse(receiver, QuestPushReason::Class);
            receiver->SendPushToPartyResponse(sender, QuestPushReason::ClassToRecipient, quest);
            continue;
        }

        if (!receiver->SatisfyQuestRace(quest, false))
        {
            sender->SendPushToPartyResponse(receiver, QuestPushReason::Race);
            receiver->SendPushToPartyResponse(sender, QuestPushReason::RaceToRecipient, quest);
            continue;
        }

        if (!receiver->SatisfyQuestReputation(quest, false))
        {
            sender->SendPushToPartyResponse(receiver, QuestPushReason::LowFaction);
            receiver->SendPushToPartyResponse(sender, QuestPushReason::LowFactionToRecipient, quest);
            continue;
        }

        if (!receiver->SatisfyQuestDependentQuests(quest, false))
        {
            sender->SendPushToPartyResponse(receiver, QuestPushReason::Prerequisite);
            receiver->SendPushToPartyResponse(sender, QuestPushReason::PrerequisiteToRecipient, quest);
            continue;
        }

        if (!receiver->SatisfyQuestExpansion(quest, false))
        {
            sender->SendPushToPartyResponse(receiver, QuestPushReason::Expansion);
            receiver->SendPushToPartyResponse(sender, QuestPushReason::ExpansionToRecipient, quest);
            continue;
        }

        if (!receiver->CanTakeQuest(quest, false))
        {
            sender->SendPushToPartyResponse(receiver, QuestPushReason::Invalid);
            receiver->SendPushToPartyResponse(sender, QuestPushReason::InvalidToRecipient, quest);
            continue;
        }

        sender->SendPushToPartyResponse(receiver, QuestPushReason::Success);

        if (quest->IsAutoComplete() && quest->IsRepeatable() && !quest->IsDailyOrWeekly())
            receiver->PlayerTalkClass->SendQuestGiverRequestItems(quest, sender->GetGUID(), receiver->CanCompleteRepeatableQuest(quest), true);
        else
        {
            receiver->SetQuestSharingInfo(sender->GetGUID(), quest->GetQuestId());
            receiver->PlayerTalkClass->SendQuestGiverQuestDetails(quest, receiver->GetGUID(), true, false);
            if (quest->IsAutoAccept() && receiver->CanAddQuest(quest, true) && receiver->CanTakeQuest(quest, true))
            {
                receiver->AddQuestAndCheckCompletion(quest, sender);
                sender->SendPushToPartyResponse(receiver, QuestPushReason::Accepted);
                receiver->ClearQuestSharingInfo();
            }
        }
    }
}

void WorldSession::HandleQuestPushResult(WorldPackets::Quest::QuestPushResult& packet)
{
    if (!_player->GetPlayerSharingQuest().IsEmpty())
    {
        if (_player->GetPlayerSharingQuest() == packet.SenderGUID)
            if (Player* player = ObjectAccessor::FindPlayer(_player->GetPlayerSharingQuest()))
                player->SendPushToPartyResponse(_player, static_cast<QuestPushReason>(packet.Result));

        _player->ClearQuestSharingInfo();
    }
}

void WorldSession::HandleQuestgiverStatusMultipleQuery(WorldPackets::Quest::QuestGiverStatusMultipleQuery& /*packet*/)
{
    _player->SendQuestGiverStatusMultiple();
}

void WorldSession::HandleRequestWorldQuestUpdate(WorldPackets::Quest::RequestWorldQuestUpdate& /*packet*/)
{	
    if (!sConfigMgr->GetBoolDefault("WorldQuests.Enable", false))
        return;
	
    if (!GetPlayer())
        return;

    WorldPackets::Quest::WorldQuestUpdateResponse response;
    sWorldQuestMgr->BuildPacket(GetPlayer(), response);
    SendPacket(response.Write());
}

void WorldSession::HandlePlayerChoiceResponse(WorldPackets::Quest::ChoiceResponse& choiceResponse)
{
    if (_player->PlayerTalkClass->GetInteractionData().PlayerChoiceId != uint32(choiceResponse.ChoiceID))
    {
        TC_LOG_ERROR("entities.player.cheat", "Error in CMSG_CHOICE_RESPONSE: %s tried to respond to invalid player choice %d (allowed %u) (possible packet-hacking detected)",
            GetPlayerInfo().c_str(), choiceResponse.ChoiceID, _player->PlayerTalkClass->GetInteractionData().PlayerChoiceId);
        return;
    }

    PlayerChoice const* playerChoice = sObjectMgr->GetPlayerChoice(choiceResponse.ChoiceID);
    if (!playerChoice)
        return;

    PlayerChoiceResponse const* playerChoiceResponse = playerChoice->GetResponseByIdentifier(choiceResponse.ResponseIdentifier);
    if (!playerChoiceResponse)
    {
        TC_LOG_ERROR("entities.player.cheat", "Error in CMSG_CHOICE_RESPONSE: %s tried to select invalid player choice response %d (possible packet-hacking detected)",
            GetPlayerInfo().c_str(), choiceResponse.ResponseIdentifier);
        return;
    }

    sScriptMgr->OnPlayerChoiceResponse(GetPlayer(), choiceResponse.ChoiceID, choiceResponse.ResponseIdentifier);

    TC_LOG_DEBUG("server.playerchoice", "Player %s selected PlayerChoice: [ChoiceID: %u, ResponseIdentifier: %u].", _player->GetName().c_str(), choiceResponse.ChoiceID, choiceResponse.ResponseIdentifier);

    if (playerChoiceResponse->Reward)
    {
        if (playerChoiceResponse->Reward->TitleId)
            _player->SetTitle(sCharTitlesStore.AssertEntry(playerChoiceResponse->Reward->TitleId), false);

        if (playerChoiceResponse->Reward->PackageId)
            _player->RewardQuestPackage(playerChoiceResponse->Reward->PackageId);

        if (playerChoiceResponse->Reward->SkillLineId && _player->HasSkill(playerChoiceResponse->Reward->SkillLineId))
            _player->UpdateSkillPro(playerChoiceResponse->Reward->SkillLineId, 1000, playerChoiceResponse->Reward->SkillPointCount);

        if (playerChoiceResponse->Reward->HonorPointCount)
            _player->AddHonorXP(playerChoiceResponse->Reward->HonorPointCount);

        if (playerChoiceResponse->Reward->Money)
            _player->ModifyMoney(playerChoiceResponse->Reward->Money, false);

        if (playerChoiceResponse->Reward->Xp)
            _player->GiveXP(playerChoiceResponse->Reward->Xp, nullptr, 0.0f);

        if (playerChoiceResponse->Reward->SpellID)
        {
            TC_LOG_DEBUG("server.playerchoice", "PlayerChoice Response Reward Spell: Casting %u on player %s.", playerChoiceResponse->Reward->SpellID, _player->GetName().c_str());
            _player->CastSpell(_player, playerChoiceResponse->Reward->SpellID, true);
        }

        for (PlayerChoiceResponseRewardItem const& item : playerChoiceResponse->Reward->Items)
        {
            ItemPosCountVec dest;
            if (_player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, item.Id, item.Quantity) == EQUIP_ERR_OK)
            {
                Item* newItem = _player->StoreNewItem(dest, item.Id, true, GenerateItemRandomBonusListId(item.Id), {}, ItemContext::Quest_Reward, item.BonusListIDs);
                _player->SendNewItem(newItem, item.Quantity, true, false);
            }
        }

        for (PlayerChoiceResponseRewardEntry const& currency : playerChoiceResponse->Reward->Currency)
            _player->ModifyCurrency(currency.Id, currency.Quantity);

        for (PlayerChoiceResponseRewardEntry const& faction : playerChoiceResponse->Reward->Faction)
            _player->GetReputationMgr().ModifyReputation(sFactionStore.AssertEntry(faction.Id), faction.Quantity);

        if (playerChoiceResponse->RewardQuestID)
        {
            Quest const* quest = sObjectMgr->GetQuestTemplate(playerChoiceResponse->RewardQuestID.value());
            if (!quest)
                return;
            if (_player->CanTakeQuest(quest, true))
                _player->PlayerTalkClass->SendQuestGiverQuestDetails(quest, _player->GetGUID(), false, true);
        }
    }
}

bool WorldSession::AdventureMapPOIAvailable(uint32 adventureMapPOIID)
{
    auto adventureMapPOIEntry = sAdventureMapPOIStore.LookupEntry(adventureMapPOIID);
    if (!adventureMapPOIEntry)
        return false;

    auto available = false;

    if (adventureMapPOIEntry->ID == adventureMapPOIID && _player->MeetPlayerCondition(adventureMapPOIEntry->PlayerConditionID))
  //  if (sConditionMgr->IsPlayerMeetingCondition(GetPlayer(), adventureMapPOIEntry->PlayerConditionID))
    {
        switch (adventureMapPOIEntry->Type)
        {
        case 1:
            if (auto quest = sObjectMgr->GetQuestTemplate(adventureMapPOIEntry->QuestID))
                available = !_player->getAdventureQuestID() && _player->CanTakeQuest(quest, false);
            break;
        default:
            break;
        }
    }

    return available;
}

void WorldSession::HandleQueryAdventureMapPOI(WorldPackets::Quest::QueryAdventureMapPOI& packet)
{
    AdventureMapPOIEntry const* poiEntry = sAdventureMapPOIStore.LookupEntry(packet.AdventureMapPOIID);
    if (!poiEntry)
        return;

    bool active = true;
    if (poiEntry->PlayerConditionID)
        active = active && _player->MeetPlayerCondition(poiEntry->PlayerConditionID);

    switch (packet.AdventureMapPOIID)
    {
    case 1: // Alliance Only Bro!
    case 3: // Azsuna
    case 4: // Val'sharah
    case 6: // Stormheim
        if (_player->GetTeam() == ALLIANCE)
            active = true;
        break;
    case 7: // Stormheim
        if (_player->GetTeam() == HORDE)
            active = true;
        break;
    case 8: // Highmountain
    case 9: // Test quest offer
        if (_player->GetTeam() == HORDE)
            active = true;
        break;
    case 12: // worldport 1116, 6971.02, 1004.63, 398.974, 299.925 - Test for insets
    case 14: // Sanctum of Light
    case 15: // Demon Hunt: Wingterror Ikzil
    case 16: // Echoes of the Past
    case 17: // worldport 533, 2719.85, -3098.21, 267.686, 285.619 - Test for insets 2
    case 18: // worldport 0, 2368.83, -5353.17, 52.6645, 315.291   - Test for insets 3
    case 20: // Halls of Valor
    case 21: // Test Offer - Test
    case 22: // Acherus: The Ebon Hold
    case 23: // The Fel Hammer
    case 24: // Trueshot Lodge
    case 25: // The Dreamgrove
    case 26: // Hall of the Guardian
    case 27: // The Wandering Isle
    case 28: // Netherlight Temple
    case 29: // The Halls of Shadows
    case 30: // The Maelstrom
    case 31: // Dreadscar Rift
    case 32: // Suramar
    case 40: // Zuldazar
        if (_player->GetTeam() == HORDE)
            active = true;
        break;
    case 41: // Nazmir
        if (_player->GetTeam() == HORDE)
            active = true;
        break;
    case 42: // Vol'dun
        if (_player->GetTeam() == HORDE)
            active = true;
        break;
    case 43: // Tiragarde Sound
        if (_player->GetTeam() == ALLIANCE)
            active = true;
        break;
    case 44: // Drustvar
        if (_player->GetTeam() == ALLIANCE)
            active = true;
        break;
    case 45: // Stormsong Valley
        if (_player->GetTeam() == ALLIANCE)
            active = true;
        break;
    case 148: // Tiragarde Sound
    case 149: // Drustvar
    case 150: // Stormsong Valley
    case 151: // Zuldazar
    case 152: // Nazmir
    case 153: // Vol'dun
    case 161: // Skoldus Hall
    case 162: // Fracture Chambers
    case 163: // The Soulforges
    case 164: // Deadsoul Interstitia
    case 165: // Kakophonus
    case 166: // Miscreation Wing
    case 167: // Darkness' Domain
    case 168: // Sineater Belfry
    case 169: // The Upper Reaches
    case 171: // The Winding Halls
    case 172: // Bastion
    case 173: // Maldraxxus
    case 174: // Ardenweald
    case 175: // Revendreth
    case 176: // Torghast
    case 177: // Battlegrounds
    case 178: //
        active = true;
    default:
        break;
    }

    if (poiEntry->QuestID)
        if (Quest const* quest = sObjectMgr->GetQuestTemplate(poiEntry->QuestID))
            active = active && _player->CanTakeQuest(quest, false);

    WorldPackets::NPC::ShowAdventureMapResult result;
    result.ID = packet.AdventureMapPOIID;
    result.Active = active;
    SendPacket(result.Write());
}

void WorldSession::HandleUiMapQuestLinesRequest(WorldPackets::Quest::UiMapQuestLinesRequest& packet)
{
    UiMapEntry const* uiMap = sUiMapStore.LookupEntry(packet.UiMapID);
    if (!uiMap)
        return;

    WorldPackets::Quest::UiMapQuestLinesResponse response;
    response.UiMapID = uiMap->ID;

    for (QuestPOIBlobEntry const* questPOIBlob : sQuestPOIBlobStore)
        if (int32(uiMap->ID) == questPOIBlob->UiMapID)
            if (_player->MeetPlayerCondition(questPOIBlob->PlayerConditionID))
                for (QuestLineXQuestEntry const* questLineXQuest : sQuestLineXQuestStore)
                    if (questPOIBlob->QuestID == questLineXQuest->QuestID)
                        if (std::vector<QuestLineXQuestEntry const*> const* questLines = sDB2Manager.GetQuestsOrderForQuestLine(questLineXQuest->QuestLineID))
                            for (QuestLineXQuestEntry const* questLineQuest : *questLines)
                                if (Quest const* quest = sObjectMgr->GetQuestTemplate(questLineQuest->QuestID))
                                    if (_player->CanTakeQuest(quest, false))
                                        if (ContentTuningEntry const* contentTuning = sContentTuningStore.LookupEntry(quest->GetContentTuningId()))
                                            if (_player->GetLevel() >= contentTuning->MinLevel)
                                            {
                                                response.QuestLineXQuestIDs.push_back(questLineQuest->ID);
                                                break;
                                            }

    SendPacket(response.Write());
}

void WorldSession::HandleCloseQuestChoice(WorldPackets::Quest::CloseQuestChoice& packet)
{
}

void WorldSession::HandleQueryQuestRewards(WorldPackets::Quest::QueryQuestReward& packet)
{
    auto quest = sObjectMgr->GetQuestTemplate(packet.QuestID);

    WorldPackets::Quest::QueryQuestRewardResponse response;
    response.QuestID = packet.QuestID;
    response.QuestRewardID = packet.QuestRewardID;
    sWorldQuestMgr->BuildRewardPacket(GetPlayer(), response.QuestID, response);
    SendPacket(response.Write());
}

void WorldSession::HandleRequestAreaPoiUpdate(WorldPackets::Quest::RequestAreaPoiUpdate& packet)
{
    WorldPackets::Quest::AreaPoiUpdate response;
    bool needSend = true;

    // For activate screen need cast 233539
    uint32 questId;

    if (sWorldQuestMgr->WorldLegionInvasionZoneID)
    {
        // 7637 - suramar, 7558 - valsharah, 7541 - stormheim, 7503 - highmountain, 7334 - azsuna, 7543 - Broken Shore
        // Temporary hack
        // valsharah
        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(45812))

        {
            response.Pois.emplace_back(activequest->StartTime, 5210, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);
            response.Pois.emplace_back(activequest->StartTime, 5272, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);
            needSend = true;

            if (GetPlayer()->GetQuestStatus(activequest->QuestId) == QUEST_STATUS_NONE)
                GetPlayer()->AddQuest(activequest->GetTemplate()->GetQuest(), nullptr);
        }
        // azsuna
        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(45838))
        {
            response.Pois.emplace_back(activequest->StartTime, 5175, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);
            response.Pois.emplace_back(activequest->StartTime, 5273, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);
            needSend = true;

            if (GetPlayer()->GetQuestStatus(activequest->QuestId) == QUEST_STATUS_NONE)
                GetPlayer()->AddQuest(activequest->GetTemplate()->GetQuest(), nullptr);
        }
        // stormheim
        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(45839))
        {
            response.Pois.emplace_back(activequest->StartTime, 5178, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);
            response.Pois.emplace_back(activequest->StartTime, 5270, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);
            needSend = true;

            if (GetPlayer()->GetQuestStatus(activequest->QuestId) == QUEST_STATUS_NONE)
                GetPlayer()->AddQuest(activequest->GetTemplate()->GetQuest(), nullptr);
        }
        // highmountain
        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(45840))
        {
            response.Pois.emplace_back(activequest->StartTime, 5177, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);
            response.Pois.emplace_back(activequest->StartTime, 5271, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);
            needSend = true;

            if (GetPlayer()->GetQuestStatus(activequest->QuestId) == QUEST_STATUS_NONE)
                GetPlayer()->AddQuest(activequest->GetTemplate()->GetQuest(), nullptr);
        }
    }
    if (sGameEventMgr->IsActiveEvent(117))
    {
        GameEventData const* ged = &sGameEventMgr->GetEventMap()[117];
        response.Pois.emplace_back(ged->start, 5252, ged->start * 60, 13321, 1);
        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(118))
    {
        GameEventData const* ged = &sGameEventMgr->GetEventMap()[118];
        response.Pois.emplace_back(ged->start, 5261, ged->start * 60, 13321, 9);
        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(119))
    {
        GameEventData const* ged = &sGameEventMgr->GetEventMap()[119];
        response.Pois.emplace_back(ged->start, 5257, ged->start * 60, 13321, 5);
        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(120))
    {
        GameEventData const* ged = &sGameEventMgr->GetEventMap()[120];
        response.Pois.emplace_back(ged->start, 5260, ged->start * 60, 13321, 8);
        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(121))
    {
        GameEventData const* ged = &sGameEventMgr->GetEventMap()[121];
        response.Pois.emplace_back(ged->start, 5254, ged->start * 60, 13321, 2);
        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(122))
    {
        GameEventData const* ged = &sGameEventMgr->GetEventMap()[122];
        response.Pois.emplace_back(ged->start, 5259, ged->start * 60, 13321, 7);
        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(123))
    {
        GameEventData const* ged = &sGameEventMgr->GetEventMap()[123];
        response.Pois.emplace_back(ged->start, 5258, ged->start * 60, 13321, 6);
        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(124))
    {
        GameEventData const* ged = &sGameEventMgr->GetEventMap()[124];
        response.Pois.emplace_back(ged->start, 5256, ged->start * 60, 13321, 4);
        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(125))
    {
        GameEventData const* ged = &sGameEventMgr->GetEventMap()[125];
        response.Pois.emplace_back(ged->start, 5255, ged->start * 60, 13321, 3);
        needSend = true;
    }
    // Spring Balloon Festival
    if (sGameEventMgr->IsActiveEvent(87))
    {
        GameEventData const* ged = &sGameEventMgr->GetEventMap()[87];
        response.Pois.emplace_back(ged->start, 5191, 0, 13062, 1);
        response.Pois.emplace_back(ged->start, 5192, 0, 13062, 1);
        response.Pois.emplace_back(ged->start, 5193, 0, 13062, 1);
        response.Pois.emplace_back(ged->start, 5195, 0, 13062, 1);
        response.Pois.emplace_back(ged->start, 5196, 0, 13062, 1);
        response.Pois.emplace_back(ged->start, 5197, 0, 13062, 1);
        response.Pois.emplace_back(ged->start, 5198, 0, 13062, 1);
        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(301))
    {
        GameEventData const* ged = &sGameEventMgr->GetEventMap()[301];
        response.Pois.emplace_back(ged->start, 5055, 0, 13107, 1);
        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(75))
    {
        GameEventData const* ged = &sGameEventMgr->GetEventMap()[75];
        response.Pois.emplace_back(ged->start, 2704, 0, 6078, 1);
        response.Pois.emplace_back(ged->start, 2705, 0, 6078, 1);
        needSend = true;
    }
    // World Bosses Argus
    if (sGameEventMgr->IsActiveEvent(102))
    {
        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(49171))
            response.Pois.emplace_back(activequest->StartTime, 5380, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);

        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(49169))
            response.Pois.emplace_back(activequest->StartTime, 5381, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);

        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(103))
    {
        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(49166))
            response.Pois.emplace_back(activequest->StartTime, 5379, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);

        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(49167))
            response.Pois.emplace_back(activequest->StartTime, 5375, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);

        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(104))
    {
        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(49168))
            response.Pois.emplace_back(activequest->StartTime, 5377, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);

        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(49170))
            response.Pois.emplace_back(activequest->StartTime, 5376, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);

        needSend = true;
    }
    // Invasion Point Argus
    if (sGameEventMgr->IsActiveEvent(180))
    {
        //Invasion Point: Cen'gar
        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(49098))
            response.Pois.emplace_back(activequest->StartTime, 5359, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);

        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(181))
    {
        //Invasion Point: Val
        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(49091))
            response.Pois.emplace_back(activequest->StartTime, 5372, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);

        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(182))
    {
        //Invasion Point: Bonich
        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(49099))
            response.Pois.emplace_back(activequest->StartTime, 5366, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);

        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(183))
    {
        //Invasion Point: Aurinor
        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(48982))
            response.Pois.emplace_back(activequest->StartTime, 5373, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);

        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(184))
    {
        //Invasion Point: Naigtal
        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(49096))
            response.Pois.emplace_back(activequest->StartTime, 5368, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);

        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(185))
    {
        // Invasion Point : Val
        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(49091))
            response.Pois.emplace_back(activequest->StartTime, 5360, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);

        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(186))
    {
        //Invasion Point: Cen'gar
        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(49098))
            response.Pois.emplace_back(activequest->StartTime, 5370, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);

        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(187))
    {
        //Invasion Point: Sangua
        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(49097))
            response.Pois.emplace_back(activequest->StartTime, 5350, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);

        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(188))
    {
        //Invasion Point: Aurinor
        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(48982))
            response.Pois.emplace_back(activequest->StartTime, 5367, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);

        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(189))
    {
        //Invasion Point: Bonich
        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(49099))
            response.Pois.emplace_back(activequest->StartTime, 5371, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);

        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(190))
    {
        //Invasion Point: Naigtal
        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(49096))
            response.Pois.emplace_back(activequest->StartTime, 5374, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);

        needSend = true;
    }
    if (sGameEventMgr->IsActiveEvent(191))
    {
        //Invasion Point: Sangua
        if (ActiveWorldQuest* activequest = sWorldQuestMgr->GetActiveWorldQuest(49097))
            response.Pois.emplace_back(activequest->StartTime, 5369, activequest->GetTemplate()->Duration, activequest->GetTemplate()->VariableId, activequest->GetTemplate()->Value);

        needSend = true;
    }

    if (needSend)
        SendPacket(response.Write());

    /*  if (uint8 eventID = sWorldStateMgr.GetWorldStateValue(13321))
      {
           WorldPackets::Quest::AreaPoiUpdate response;
           switch (eventID)
           {
               case 1:
                   response.Pois.push_back(WorldPackets::Quest::WorldQuestUpdateInfo(activequest->StartTime, 5271, worldQuest->Timer, worldQuest->VariableID, worldQuest->Value));
           }
      }*/
}
