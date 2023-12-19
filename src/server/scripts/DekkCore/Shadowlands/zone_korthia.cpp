/*
 * Copyright 2021 
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

#include "Creature.h"
#include "GameObjectAI.h"
#include "PhasingHandler.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedGossip.h"
#include "ScriptedCreature.h"
#include "TemporarySummon.h"

enum Areakorthia
{
    KEEPERS_RESPITE  = 13625,
};

enum eventkorthia
{
    EVENT_THE_CITY_OF_SECRETS_I      = 100,
    EVENT_THE_CITY_OF_SECRETS_II,
    EVENT_THE_CITY_OF_SECRETS_III,

    EVENT_WHO_IS_THE_MAW_WALKER      = 200,

    EVENT_CHARGE_OF_THE_COVENANTS    = 300,
    EVENT_SUMMONCOVENANT_RANDOM,

};

enum Questkorthia
{
    QUEST_KORTHIA_THE_CITY_OF_SECRETS = 63663,
    QUEST_WHO_IS_THE_MAW_WALKER       = 63994,
    QUEST_OPENING_TO_ORIBOS           = 63665,
    QUEST_CHARGE_OF_THE_COVENANTS     = 64007,
};

enum Spellkorthia
{
    SPELL_STUN_AURA                   = 163091,
    SPELL_TAL_GALANS_TRIAL1           = 353275,
    SPELL_TAL_GALANS_TRIAL2           = 353282,
    SPELL_CHAINELING                  = 353370,
    SPELL_ATTUNING                    = 351172,
    SPELL_RESTORING                   = 357775,
};

enum Npckorthia
{
    NPC_ATTENDANT_PROTECTOR           = 174917,
    NPC_FOREST_DEFENDER               = 179421,
    NPC_BLADEGUARD_CAPTAIN            = 179603,
    NPC_VENTHYR_NOBLE                 = 177700,
    NPC_VENTHYR_ARISTOCRAT            = 177698,
    NPC_KYRIAN_STEWARD                = 177699,
    NPC_KYRIAN_ASCENDANT              = 177697,
    NPC_VERAYN                        = 177236,
};

Npckorthia covenants[8] =
{
    NPC_ATTENDANT_PROTECTOR,
    NPC_FOREST_DEFENDER,
    NPC_BLADEGUARD_CAPTAIN,
    NPC_VENTHYR_NOBLE,
    NPC_VENTHYR_ARISTOCRAT,
    NPC_KYRIAN_STEWARD,
    NPC_KYRIAN_ASCENDANT,
    NPC_VERAYN,
};


class player_korthia : public PlayerScript
{
public:
    player_korthia() : PlayerScript("player_korthia") { }

    void OnPlayerRepop(Player* player) override
    {
        OnCheckPhase(player);
    }

    void OnPlayerResurrect(Player* player) override
    {
        OnCheckPhase(player);
    }

    void OnQuestStatusChange(Player* player, uint32 questId) override
    {
        OnCheckPhase(player);
    }

    void OnUpdateArea(Player* player, uint32 newArea, uint32 /*oldArea*/) override
    {
        OnCheckPhase(player);
    }

    void OnCheckPhase(Player* player)
    {

        if (player->GetAreaId() == KEEPERS_RESPITE)
        {
            if (player->GetQuestStatus(QUEST_KORTHIA_THE_CITY_OF_SECRETS) == QUEST_STATUS_REWARDED)
            {
                if (!player->GetPhaseShift().HasPhase(13601)) PhasingHandler::AddPhase(player, 13601, true);
            }
            if (player->GetQuestStatus(QUEST_CHARGE_OF_THE_COVENANTS) == QUEST_STATUS_COMPLETE)
            {
                if (!player->FindNearestCreature(177927, 15.0f, true))
                {
                    player->SummonCreature(177927, 3251.87f, 5814.35f, 4939.49f, 4.84907f, TEMPSUMMON_MANUAL_DESPAWN);
                }
                if (player->GetPhaseShift().HasPhase(13601)) PhasingHandler::RemovePhase(player, 13601, true);
            }
            if (player->GetQuestStatus(QUEST_CHARGE_OF_THE_COVENANTS) == QUEST_STATUS_REWARDED)
            {
                if (player->GetPhaseShift().HasPhase(13601)) PhasingHandler::RemovePhase(player, 13601, true);
                if (!player->GetPhaseShift().HasPhase(13602)) PhasingHandler::AddPhase(player, 13602, true);
                if (!player->GetPhaseShift().HasPhase(17292)) PhasingHandler::AddPhase(player, 17292, true);
                if (!player->GetPhaseShift().HasPhase(17293)) PhasingHandler::AddPhase(player, 17293, true);
            }
        }
    }

};

Position const Venari_path[4] =
{
    {3280.17f, 5767.36f, 4938.27f, 0},
    {3287.78f, 5754.54f, 4939.65f, 0},
    {3285.42f, 5741.01f, 4939.51f, 0},
    {3279.19f, 5727.87f, 4939.12f, 0},
};

 //177227 tal galan
struct npc_tal_galan_177227 : public  ScriptedAI
{
public:
    npc_tal_galan_177227(Creature* creature) : ScriptedAI(creature) {}

private:
    EventMap _events;
    bool say63663;
    ObjectGuid kp_leftGUID1;
    ObjectGuid kp_leftGUID2;
    ObjectGuid kp_rightGUID1;
    ObjectGuid kp_rightGUID2;
    ObjectGuid venariGUID;
    ObjectGuid m_playerGUID;

    void Reset() override
    {
        _events.Reset();
        say63663 = false;
        m_playerGUID = ObjectGuid::Empty;
        kp_leftGUID1 = ObjectGuid::Empty;
        kp_leftGUID2 = ObjectGuid::Empty;
        kp_rightGUID1 = ObjectGuid::Empty;
        kp_rightGUID2 = ObjectGuid::Empty;
        venariGUID = ObjectGuid::Empty;
    }

    void OnQuestAccept(Player* player, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_OPENING_TO_ORIBOS)
        {
            if (Creature* venari = me->FindNearestCreature(177202, 10.0f))
            {
                venari->AI()->Talk(7);
                venari->GetMotionMaster()->MoveSmoothPath(1004, Venari_path, 4, true, false);
                venari->ForcedDespawn(15000);
            }
        }
    }

    void OnQuestReward(Player* player, Quest const* quest, LootItemType /*type*/, uint32 /*opt*/) override
    {
        if (quest->GetQuestId() == QUEST_KORTHIA_THE_CITY_OF_SECRETS)
        {
            if (Creature* venari = ObjectAccessor::GetCreature(*me, venariGUID))
                venari->ForcedDespawn(1000);
            me->ForcedDespawn(1000);
        }
    }

    bool OnGossipHello(Player* player) override    //npc_txt appear to top
    {
        if ((player->GetQuestStatus(QUEST_KORTHIA_THE_CITY_OF_SECRETS) == QUEST_STATUS_INCOMPLETE) && player->GetQuestObjectiveProgress(QUEST_KORTHIA_THE_CITY_OF_SECRETS, 0))
        {
            AddGossipItemFor(player, GossipOptionNpc::None, "Lead the way, Tal-Galan.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 0);
            SendGossipMenuFor(player, 43335, me->GetGUID());
            player->PrepareQuestMenu(me->GetGUID());
        }
        if (player->GetQuestStatus(QUEST_KORTHIA_THE_CITY_OF_SECRETS) == QUEST_STATUS_COMPLETE || player->GetQuestStatus(QUEST_KORTHIA_THE_CITY_OF_SECRETS) == QUEST_STATUS_REWARDED)
        {
            player->PrepareQuestMenu(me->GetGUID());
            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
        }
        if ((player->GetQuestStatus(QUEST_WHO_IS_THE_MAW_WALKER) == QUEST_STATUS_INCOMPLETE))
        {
            AddGossipItemFor(player, GossipOptionNpc::None, "I'm prepared for your Maw Walker test.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
            SendGossipMenuFor(player, 42958, me->GetGUID());
            player->PrepareQuestMenu(me->GetGUID());
        }
        if (player->GetQuestStatus(QUEST_WHO_IS_THE_MAW_WALKER) == QUEST_STATUS_COMPLETE || player->GetQuestStatus(QUEST_WHO_IS_THE_MAW_WALKER) == QUEST_STATUS_REWARDED)
        {
            player->PrepareQuestMenu(me->GetGUID());
            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
        }
        return true;
    }

    bool OnGossipSelect(Player* player, uint32 MenuID, uint32 gossipListId) override
    {
        uint32 const action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);
        ClearGossipMenuFor(player);
        if (action == GOSSIP_ACTION_INFO_DEF + 0)
        {
            CloseGossipMenuFor(player);
            player->KilledMonsterCredit(180469);
            _events.ScheduleEvent(EVENT_THE_CITY_OF_SECRETS_III, 1s);
        }
        if (action == GOSSIP_ACTION_INFO_DEF + 1)
        {
            CloseGossipMenuFor(player);
            m_playerGUID = player ->GetGUID();
            Talk(9);
            me->CastSpell(player, SPELL_CHAINELING, true);
            player->AddAura(SPELL_STUN_AURA, player);
            player->AddAura(SPELL_TAL_GALANS_TRIAL1, player);
            _events.ScheduleEvent(EVENT_WHO_IS_THE_MAW_WALKER, 8s);
        }
        return true;
    }


    void IsSummonedBy(WorldObject* summoner) override
    {
        m_playerGUID = summoner->GetGUID();

        if (Player* player = summoner->ToPlayer())
            if (player->HasQuest(QUEST_KORTHIA_THE_CITY_OF_SECRETS))
                summonKorthianProtector();
    }

    void MoveInLineOfSight(Unit* who) override
    {
        if (Player* player = who->ToPlayer())
        {
            if (Player* player = ObjectAccessor::GetPlayer(*me, m_playerGUID))
                if (player->IsInDist(me, 30.0f) && player->HasQuest(QUEST_KORTHIA_THE_CITY_OF_SECRETS))
                    if (!say63663)
                    {
                        say63663 = true;
                        _events.ScheduleEvent(EVENT_THE_CITY_OF_SECRETS_I, 1s);
                    }
        }
    }

    void UpdateAI(uint32 diff) override
    {
        _events.Update(diff);

        while (uint32 eventId = _events.ExecuteEvent())
        {
            if (Player* player = ObjectAccessor::GetPlayer(*me, m_playerGUID))
            {
                switch (eventId)
                {
                case EVENT_THE_CITY_OF_SECRETS_I:
                {
                    if (Creature* venari = me->SummonCreature(177202, 3439.06f, 5940.07f, 4883.01f, 1.74492f, TEMPSUMMON_MANUAL_DESPAWN))
                    {
                        venariGUID = venari->GetGUID();
                        venari->AI()->DoAction(2);
                    }
                    Talk(0);
                    me->AddDelayedEvent(8000, [this, player]() -> void
                        {
                            Talk(1);
                            std::list<Creature*> cList = me->FindNearestCreatures(177450, 10.0f);
                            for (std::list<Creature*>::const_iterator itr = cList.begin(); itr != cList.end(); ++itr)
                            {
                                if (Creature* kp = *itr)
                                {
                                    kp->SetFacingToObject(player);
                                    kp->HandleEmoteCommand(EMOTE_STATE_READY2H_ALLOW_MOVEMENT);
                                }
                            }
                        });
                }
                break;
                case EVENT_THE_CITY_OF_SECRETS_II:
                {
                    Talk(2);
                    me->AddDelayedEvent(8000, [this, player]() -> void
                        {
                            Talk(3);
                            me->HandleEmoteCommand(EMOTE_ONESHOT_BOW);
                        });
                    me->AddDelayedEvent(11000, [this, player]() -> void
                        {
                            player->KilledMonsterCredit(177209);
                            if (Creature* venari = ObjectAccessor::GetCreature(*me, venariGUID))
                                venari->HandleEmoteCommand(EMOTE_ONESHOT_BOW);
                            std::list<Creature*> cList = me->FindNearestCreatures(177450, 10.0f);
                            for (std::list<Creature*>::const_iterator itr = cList.begin(); itr != cList.end(); ++itr)
                            {
                                if (Creature* kp = *itr)
                                {
                                    kp->HandleEmoteCommand(EMOTE_STATE_STAND);
                                    kp->GetMotionMaster()->MoveTargetedHome();
                                }
                            }
                        });
                }
                break;
                case EVENT_THE_CITY_OF_SECRETS_III:
                    Talk(4);
                    me->AddDelayedEvent(4000, [this]() -> void
                        {
                            if (Creature* venari = ObjectAccessor::GetCreature(*me, venariGUID))
                            {
                                venari->AI()->Talk(4);
                                venari->GetMotionMaster()->MovePath(17720201, false);
                            }
                            me->GetMotionMaster()->MovePath(17722701, false);
                        });
                break;
                case EVENT_WHO_IS_THE_MAW_WALKER:
                    Talk(10);
                    me->AddDelayedEvent(7000, [this, player]() -> void
                        {
                            player->AddAura(SPELL_TAL_GALANS_TRIAL2, player);
                        });
                    me->AddDelayedEvent(13000, [this]() -> void
                        {
                            if (Creature* venari = me->FindNearestCreature(177202, 10.0f))
                                venari->AI()->Talk(5);
                        });
                    me->AddDelayedEvent(20000, [this]() -> void
                        {
                            Talk(11);
                        });
                    me->AddDelayedEvent(28000, [this]() -> void
                        {
                            if (Creature* venari = me->FindNearestCreature(177202, 10.0f))
                                venari->AI()->Talk(6);
                        });
                    me->AddDelayedEvent(34000, [this, player]() -> void
                        {
                            Talk(12);
                            player->ForceCompleteQuest(QUEST_WHO_IS_THE_MAW_WALKER);
                            me->RemoveAura(SPELL_CHAINELING);
                            player->RemoveAura(SPELL_STUN_AURA);
                            player->RemoveAura(SPELL_TAL_GALANS_TRIAL1);
                            player->RemoveAura(SPELL_TAL_GALANS_TRIAL2);
                        });
                    break;
                }
            }
        }
    }

    void MovementInform(uint32 type, uint32 id) override
    {
        if (type == WAYPOINT_MOTION_TYPE)
        {
            switch (id)
            {
            case 1:
                if (Creature* kpleft1 = ObjectAccessor::GetCreature(*me, kp_leftGUID1))
                    if (Creature* kpleft2 = ObjectAccessor::GetCreature(*me, kp_leftGUID2))
                        if (Creature* kpright1 = ObjectAccessor::GetCreature(*me, kp_rightGUID1))
                            if (Creature* kpright2 = ObjectAccessor::GetCreature(*me, kp_rightGUID2))
                            {
                                kpright1->GetMotionMaster()->MovePath(1774501, false);
                                kpleft1->GetMotionMaster()->MovePath(1774502, false);
                                me->AddDelayedEvent(1500, [this, kpleft2, kpright2]() -> void
                                    {
                                        kpright2->GetMotionMaster()->MovePath(1774501, false);
                                        kpleft2->GetMotionMaster()->MovePath(1774502, false);
                                    });
                            }
                break;
            case 3:
                Talk(5);
            break;
            case 5:
                Talk(6);
                break;
            case 8:
                Talk(7);
                break;
            case 10:
                Talk(8);
                break;
            }
        }
    }

    void DoAction(int32 action) override
    {
        if (action == 3) _events.ScheduleEvent(EVENT_THE_CITY_OF_SECRETS_II, 7s);
    }

    void summonKorthianProtector()
    {
        if (Creature* kpl1 = me->SummonCreature(177450, 3325.19f, 5946.71f, 4882.15f, 2.6952f, TEMPSUMMON_MANUAL_DESPAWN)) //  Korthian Protector_left
            kp_leftGUID1 = kpl1->GetGUID();
        if (Creature* kpl2 = me->SummonCreature(177450, 3326.35f, 5948.63f, 4882.16f, 2.6952f, TEMPSUMMON_MANUAL_DESPAWN))
            kp_leftGUID2 = kpl2->GetGUID();
        if (Creature* kpr1 = me->SummonCreature(177450, 3328.96f, 5953.21f, 4881.89f, 2.6952f, TEMPSUMMON_MANUAL_DESPAWN)) //  Korthian Protector_Right
            kp_rightGUID1 = kpr1->GetGUID();
        if (Creature* kpr2 = me->SummonCreature(177450, 3327.92f, 5951.11f, 4881.99f, 2.6952f, TEMPSUMMON_MANUAL_DESPAWN))
            kp_rightGUID2 = kpr2->GetGUID();
    }
};

//Waystone to Oribos 368216
struct go_waystone_to_oribos_368216 : public GameObjectAI
{
    go_waystone_to_oribos_368216(GameObject* go) : GameObjectAI(go)
    {
        me->SetGoState(GO_STATE_READY);
    }

    bool OnReportUse(Player* player) override
    {
        if ((player->GetQuestStatus(QUEST_OPENING_TO_ORIBOS) == QUEST_STATUS_INCOMPLETE) && !player->GetQuestObjectiveProgress(QUEST_OPENING_TO_ORIBOS, 1))
        {
            player->CastSpell(player, SPELL_ATTUNING, false);
            player->GetScheduler().Schedule(Milliseconds(7000), [this, player](TaskContext context)
                {
                    me->SetGoState(GO_STATE_ACTIVE);
                });
        }
        if ((player->GetQuestStatus(QUEST_OPENING_TO_ORIBOS) == QUEST_STATUS_INCOMPLETE) && player->GetQuestObjectiveProgress(QUEST_OPENING_TO_ORIBOS, 1) && !player->GetQuestObjectiveProgress(QUEST_OPENING_TO_ORIBOS, 3))
            {
                player->ForceCompleteQuest(QUEST_OPENING_TO_ORIBOS);
                player->TeleportTo(2222, -1758.319f, 1359.19f, 5451.51f, 3.9254f);
            }
        return true;
    }
};


Position summonCovenantPosition1 = { 3271.81f, 5763.31f, 4941.53f, 0.8645f };
Position summonCovenantPosition2 = { 3261.45f, 5758.25f, 4941.55f, 2.6355f };

//177927 tal galan
struct npc_tal_galan_177927 : public  ScriptedAI
{
public:
    npc_tal_galan_177927(Creature* creature) : ScriptedAI(creature) {}

private:
    EventMap _events;
    ObjectGuid bolvarGUID;

    void Reset() override
    {
        _events.Reset();
        bolvarGUID = ObjectGuid::Empty;
    }

    void IsSummonedBy(WorldObject* summoner) override
    {
        if (Player* player = summoner->ToPlayer())
            if (player->HasQuest(QUEST_CHARGE_OF_THE_COVENANTS))
            {
                _events.ScheduleEvent(EVENT_SUMMONCOVENANT_RANDOM, 1s);
                _events.ScheduleEvent(EVENT_CHARGE_OF_THE_COVENANTS, 3s);
                if (Creature* bolvar = me->SummonCreature(177228, 3265.22f, 5770.33f, 4938.93f, 1.8656f, TEMPSUMMON_MANUAL_DESPAWN))
                    bolvarGUID = bolvar->GetGUID();
            }
    }

    void UpdateAI(uint32 diff) override
    {
        _events.Update(diff);

        while (uint32 eventId = _events.ExecuteEvent())
        {
            switch (eventId)
            {
            case EVENT_CHARGE_OF_THE_COVENANTS:
            {
                me->SetWalk(true);
                me->GetMotionMaster()->MovePoint(0, 3267.47f, 5777.91f, 4938.09f, true);
                me->AddDelayedEvent(5000, [this]() -> void
                    {
                        Talk(0);
                    });
                me->AddDelayedEvent(15000, [this]() -> void
                    {
                        if (Creature* bolvar = ObjectAccessor::GetCreature(*me, bolvarGUID))
                        {
                            bolvar->AI()->Talk(0);
                            bolvar->SetWalk(true);
                            bolvar->GetMotionMaster()->MovePoint(0, 3247.33f, 5812.81f, 4939.43f, true, 5.3586f);
                            me->GetMotionMaster()->MovePoint(0, 3251.87f, 5814.35f, 4939.49f, true, 4.84907f);
                        }
                    });
                me->AddDelayedEvent(25000, [this]() -> void
                    {
                        Talk(1);
                        _events.CancelEvent(EVENT_SUMMONCOVENANT_RANDOM);
                    });
            }
            break;
            case EVENT_SUMMONCOVENANT_RANDOM:
                    SummonCovenant(covenants[urand(0, 7)]);
                _events.Repeat(randtime(1s, 1s));
            break;
            }
        }
    }

    void SummonCovenant(uint32 creature)
    {
            switch (uint8 rand = urand(0, 1))
            {
            case 0:
                if (Creature* covenant1 = me->SummonCreature(creature, summonCovenantPosition1, TEMPSUMMON_TIMED_DESPAWN, 15s))
                {
                    if (covenant1->GetEntry() == NPC_ATTENDANT_PROTECTOR)
                        covenant1->SetAIAnimKitId(0);
                    covenant1->GetMotionMaster()->MovePath(17792701, false);
                }
                break;
            case 1:
                if (Creature* covenant2 = me->SummonCreature(creature, summonCovenantPosition1, TEMPSUMMON_TIMED_DESPAWN, 15s))
                {
                    if (covenant2->GetEntry() == NPC_ATTENDANT_PROTECTOR)
                        covenant2->SetAIAnimKitId(0);
                    covenant2->GetMotionMaster()->MovePath(17792702, false);
                }
                break;
            }
    }
};

//177228 highlord_bolvar_fordragon
struct npc_highlord_bolvar_fordragon_177228 : public  ScriptedAI
{
public:
    npc_highlord_bolvar_fordragon_177228(Creature* creature) : ScriptedAI(creature) {}

    void OnQuestReward(Player* player, Quest const* quest, LootItemType /*type*/, uint32 /*opt*/) override
    {
        if (quest->GetQuestId() == QUEST_CHARGE_OF_THE_COVENANTS)
        {
            if (Creature* talgalan = me->FindNearestCreature(177927, 15.0f, true))
                if (!talgalan->GetPhaseShift().HasPhase(13602))
                    talgalan->ForcedDespawn(500);
            me->ForcedDespawn(500);
        }
    }

};

//180525 Surveyer Mnemis
struct npc_surveyer_mnemis_180525 : public  ScriptedAI
{
public:
    npc_surveyer_mnemis_180525(Creature* creature) : ScriptedAI(creature) {}

    bool OnGossipSelect(Player* player, uint32 MenuID, uint32 gossipListId) override
    {
        if (gossipListId == 0)
        {
            CloseGossipMenuFor(player);
            Talk(0);
            me->HandleEmoteCommand(EMOTE_STATE_WORK_SMITH);
            me->AddDelayedEvent(5000, [this, player]() -> void
                {
                    if (Creature* gorger = me->SummonCreature(177245, 2955.73f, 6175.28f, 4809.96f, 4.45462f, TEMPSUMMON_TIMED_DESPAWN, 600s))
                    {
                        gorger->SetWalk(false);
                        gorger->GetMotionMaster()->MovePoint(0, 2948.23f, 6153.43f, 4811.34f, true);
                    }
                });
            me->AddDelayedEvent(35000, [this, player]() -> void
                {
                    me->HandleEmoteCommand(EMOTE_ONESHOT_NONE);
                    if (!player->HasItemCount(187438, 1, false))
                        player->CastSpell(player, 357681, false);
                });
        }
     
        return true;
    }

};

//187504 Mikanikos' Restorative Contraption
class item_restorative_contraption : public ItemScript
{
public:
    item_restorative_contraption() : ItemScript("item_restorative_contraption") { }

    bool OnUse(Player* player, Item* item, SpellCastTargets const& targets, ObjectGuid /*castId*/) override
    {
        if (Unit* target = player->GetSelectedUnit())
            if (Creature* creature = target->ToCreature())
                if (target->GetStandState() == UNIT_STAND_STATE_DEAD)
                {
                    switch (target->GetEntry())
                    {
                    case 180554:
                        setItemEffect(creature, player);
                        break;
                    case 180555:
                        setItemEffect(creature, player);
                        break;
                    case 180556:
                        setItemEffect(creature, player);
                        break;
                    case 180557:
                        setItemEffect(creature, player);
                        break;
                    }
                }
        return true;
    }

    void setItemEffect(Creature* creature, Player* player)
    {
        player->CastSpell(creature, SPELL_RESTORING);
        player->AddDelayedEvent(3500, [player, creature]() -> void
            {
                creature->RemoveAura(314629);
                creature->SetStandState(UNIT_STAND_STATE_STAND);
                creature->SetWalk(false);
                creature->GetMotionMaster()->MoveRandom(20.0f);
                player->KilledMonsterCredit(180555);
                creature->ForcedDespawn(5000);
            });
    }
};

void AddSC_zone_korthia()
{
    new  player_korthia();
    RegisterCreatureAI(npc_tal_galan_177227);
    RegisterGameObjectAI(go_waystone_to_oribos_368216);
    RegisterCreatureAI(npc_tal_galan_177927);
    RegisterCreatureAI(npc_highlord_bolvar_fordragon_177228);
    RegisterCreatureAI(npc_surveyer_mnemis_180525);
    RegisterItemScript(item_restorative_contraption);
    
}
