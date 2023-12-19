/*
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

#include "WorldQuestMgr.h"
#include "ObjectMgr.h"
#include "AchievementMgr.h"
#include "DatabaseEnv.h"
#include "QuestObjectiveCriteriaMgr.h"
#include "Log.h"
#include "RaceMask.h"
#include "Containers.h"
#include "GridNotifiersImpl.h"
#include "GameEventMgr.h"
#include "Garrison.h"
#include "Config.h"
#include <sstream>

WorldQuestMgr::WorldQuestMgr()
{
}

WorldQuestMgr::~WorldQuestMgr()
{
    CleanWorldQuestTemplates();
}

void WorldQuestMgr::CleanWorldQuestTemplates()
{
    std::set<WorldQuestTemplate*> toDeleteTemplates;
    std::set<ActiveWorldQuest*> toDeleteActiveTemplates;

    for (auto expansionTemplates : _worldQuestTemplates)
        for (auto teamTemplates : expansionTemplates.second)
            for (auto itr : teamTemplates.second)
                toDeleteTemplates.insert(itr.second);

    for (auto expansionEmissaryTemplates : _emissaryWorldQuestTemplates)
        for (auto teamEmissaryTemplates : expansionEmissaryTemplates.second)
            for (auto itr : teamEmissaryTemplates.second)
                toDeleteTemplates.insert(itr.second);

    for (auto expansionWorldQuests : _activeWorldQuests)
        for (auto teamWorldQuest : expansionWorldQuests.second)
            for (auto activeWorldQuest : teamWorldQuest.second)
                toDeleteActiveTemplates.insert(activeWorldQuest.second);

    for (auto worldQuest : toDeleteTemplates)
        delete worldQuest;

    for (auto activeWorldQuest : toDeleteActiveTemplates)
        delete activeWorldQuest;

    _worldQuestTemplates.clear();
    _emissaryWorldQuestTemplates.clear();
    _activeWorldQuests.clear();
}

WorldQuestMgr* WorldQuestMgr::instance()
{
    static WorldQuestMgr instance;
    return &instance;
}

void WorldQuestMgr::LoadWorldQuestTemplates()
{
    CleanWorldQuestTemplates();

    QueryResult result = WorldDatabase.Query("SELECT id, duration, variable, value FROM world_quest");
    if (!result)
        return;

    do
    {
        Field* fields       = result->Fetch();
        uint32 questId      = fields[0].GetUInt32();
        uint32 duration     = fields[1].GetUInt32();
        uint32 VariableId   = fields[2].GetUInt32();

        Quest const* quest  = sObjectMgr->GetQuestTemplate(questId);

        if (!quest)
        {
            TC_LOG_ERROR("server.loading", "World Quest: %u exist but no quest template found. Skip.", questId);
            continue;
        }

        uint16 zoneID = quest->GetZoneOrSort();

        WorldQuestTemplate* worldQuestTemplate = new WorldQuestTemplate(questId, fields[1].GetUInt32(), fields[2].GetUInt32(), fields[3].GetUInt32());
        AddWorldQuestTemplate(quest, worldQuestTemplate);

    } while (result->NextRow());

    WorldQuestContainer worldQuests = sObjectMgr->GetWorldQuestStore();
    for (auto quests : worldQuests)
    {
        for (uint32 questId : quests.second)
        {
            if (Quest const* quest = sObjectMgr->GetQuestTemplate(questId))
            {
                auto itr = _worldQuestTemplates[quest->GetExpansion()].find(questId);
                if (itr == _worldQuestTemplates[quest->GetExpansion()].end())
                {
                    WorldQuestTemplate* worldQuestTemplate = new WorldQuestTemplate(questId, 7200, 12506, 1);
                    AddWorldQuestTemplate(quest, worldQuestTemplate);
                }
            }
        }
    }

    if (_emissaryWorldQuestTemplates.size() < WORLD_QUEST_EMISSARY)
        TC_LOG_ERROR("server.loading", "World Quest: There is %lu emissary quests but %u needed...", _emissaryWorldQuestTemplates.size(), uint32(WORLD_QUEST_EMISSARY));
}

void WorldQuestMgr::AddWorldQuestTemplate(Quest const* quest, WorldQuestTemplate* worldQuestTemplate)
{
    uint8 questTeamId = GetQuestTeamId(quest);

    switch (questTeamId)
    {
    case TEAM_NEUTRAL:
        {
            _worldQuestTemplates[quest->GetExpansion()][TEAM_ALLIANCE][quest->GetQuestId()] = worldQuestTemplate;
            _worldQuestTemplates[quest->GetExpansion()][TEAM_HORDE][quest->GetQuestId()] = worldQuestTemplate;

            if (quest->IsEmissaryQuest())
            {
                _emissaryWorldQuestTemplates[quest->GetExpansion()][TEAM_ALLIANCE][quest->GetQuestId()] = worldQuestTemplate;
                _emissaryWorldQuestTemplates[quest->GetExpansion()][TEAM_HORDE][quest->GetQuestId()] = worldQuestTemplate;
            }

            break;
        }
    default:
        {
            _worldQuestTemplates[quest->GetExpansion()][questTeamId][quest->GetQuestId()] = worldQuestTemplate;

            if (quest->IsEmissaryQuest())
                _emissaryWorldQuestTemplates[quest->GetExpansion()][questTeamId][quest->GetQuestId()] = worldQuestTemplate;

            break;
        }
    }
	if (quest->IsWorldQuest() && !quest->IsEmissaryQuest() && !quest->IsLegionInvasion())
        _worldQuestTemplateByZone[quest->GetExpansion()][quest->GetZoneOrSort()][quest->GetQuestId()] = worldQuestTemplate;
}

void WorldQuestMgr::LoadWorldQuestRewardTemplates()
{
    QueryResult result = WorldDatabase.Query("SELECT id, questType, rewardType - 1 AS rewardType, rewardId, rewardCount, rewardContext FROM world_quest_reward");
    if (!result)
        return;

    do
    {
        Field* fields = result->Fetch();

        WorldQuestReward worldQuestReward = WorldQuestReward(fields[0].GetUInt32(),
                                                             fields[1].GetUInt8(),
                                                             fields[2].GetUInt8(),
                                                             fields[3].GetUInt32(),
                                                             fields[4].GetUInt32(),
                                                             fields[5].GetUInt32());

        _worldQuestRewards[worldQuestReward.Id].push_back(worldQuestReward);
        _worldQuestRewardByQuestInfos[worldQuestReward.QuestType].push_back(worldQuestReward.Id);
    } while (result->NextRow());
}

void WorldQuestMgr::LoadActiveWorldQuests()
{
    // not asynch, only at startup
    CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_SEL_WORLD_QUEST);
    PreparedQueryResult result = CharacterDatabase.Query(stmt);

    if (!result)
    {
        TC_LOG_INFO("server.loading", "World Quest: There is no active world quests.");
        return;
    }

    do
    {
        Field* fields = result->Fetch();

        uint32 questId      = fields[0].GetUInt32();
        uint32 rewardId     = fields[1].GetUInt32();
        uint32 startTime    = fields[2].GetUInt32();

        Quest const* quest = sObjectMgr->GetQuestTemplate(questId);
        if (!quest)
        {
            TC_LOG_ERROR("server.loading", "World Quest: Quest %u has world quest duration but quest does not exist.", questId);
            continue;
        }

        WorldQuestTemplate* worldQuestTemplate = GetWorldQuestTemplate(quest->GetExpansion(), questId);
        if (!worldQuestTemplate)
        {
            TC_LOG_ERROR("server.loading", "World Quest: Quest %u has world quest duration but quest is not a world quest.", questId);
            continue;
        }

        if (quest->IsLegionInvasion())
            WorldLegionInvasionZoneID = quest->GetZoneOrSort();

        uint8 questTeamId = GetQuestTeamId(quest);
        if (questTeamId == TEAM_NEUTRAL)
        {
            _activeWorldQuests[quest->GetExpansion()][TEAM_ALLIANCE][worldQuestTemplate->QuestId]    = new ActiveWorldQuest(questId, rewardId, startTime);
            _activeWorldQuests[quest->GetExpansion()][TEAM_HORDE][worldQuestTemplate->QuestId]       = new ActiveWorldQuest(questId, rewardId, startTime);
        }
        else
            _activeWorldQuests[quest->GetExpansion()][questTeamId][worldQuestTemplate->QuestId]      = new ActiveWorldQuest(questId, rewardId, startTime);


    } while (result->NextRow());
}

void WorldQuestMgr::Update()
{
    for (auto& expansionWorldQuest : _activeWorldQuests)
    {
        for (auto& teamWorldQuest : expansionWorldQuest.second)
        {
            auto& worldQuests = teamWorldQuest.second;

            for (auto itr = worldQuests.begin(); itr != worldQuests.end();)
            {
                if (itr->second->GetRemainingTime() <= 0)
                {
                    DisableQuest(itr->second);
                    itr = teamWorldQuest.second.erase(itr);
                }
                else
                    ++itr;
            }
        }
    }

    for (uint8 expansion : WorldQuestsExpansions)
    {
        for (uint8 teamId : WorldQuestsTeams)
        {
            if (_worldQuestTemplates[expansion][teamId].size())
            {
                int32 questDiff = WORLD_QUEST_MAX_FILL - GetActiveQuestsCount(expansion, teamId) + GetActiveEmissaryQuestsCount(expansion, teamId);

                //printf("expansion=%d  teamId=%d WorldQuestMgr::Update\n", expansion, teamId);

                // 7637 - suramar, 7558 - valsharah, 7541 - stormheim, 7503 - highmountain, 7334 - azsuna, 7543 - Broken Shore
                // Argus, Antoran wastes 8899, krokuun 8574, 
                std::set<uint32> _list = { 7558, 7541, 7503, 7334 };

                if (WorldLegionInvasionZoneID && expansion == EXPANSION_LEGION)
                {
                    uint32 _selectQuest;
                    WorldLegionInvasionZoneID = Trinity::Containers::SelectRandomContainerElement(_list);

                    switch (WorldLegionInvasionZoneID)
                    {
                    case 7558:
                        _selectQuest = 45812;
                        break;
                    case 7541:
                        _selectQuest = 45839;
                        break;
                    case 7503:
                        _selectQuest = 45840;
                        break;
                    case 7334:
                        _selectQuest = 45838;
                        break;
                    default:
                        _selectQuest = 0;
                        break;
                    }

                    if (expansion == EXPANSION_LEGION)
                    {
                        uint32 _selectQuest;
                        std::set<uint32> _zone = { 7558 };

                        Legionzonequestid = Trinity::Containers::SelectRandomContainerElement(_zone);
                        
                        switch (Legionzonequestid)
                        {
                        case 7558:
                            _selectQuest = 43192;
                            _selectQuest = 42819;
                            break;
                        default:
                            _selectQuest = 0;
                            break;
                        }
                    }

                //    printf("WorldLegionInvasionZoneID=%d\n", WorldLegionInvasionZoneID);
                    if (!IsQuestActive(_selectQuest) && _selectQuest)
                        if (WorldQuestTemplate* wqLegionInvasion = GetWorldQuestTemplate(expansion,_selectQuest))
                        {
                            ActivateQuest(wqLegionInvasion);
                            --questDiff;
                        }
                }

                //printf("questDiff=%d\n", questDiff);

                if (questDiff > 0)
                {
                    std::set<uint32> _list2 = { 7558, 7541, 7503, 7334, 7637, 7543 };//, 7502, 8574, 8701, 8899 
                    for (auto zone : _list2)
                    {
                        if (questDiff <= 0)
                            continue;;
                        uint32 _needCount = WORLD_QUEST_MAX_LEGION_INVASION;
                        if (_worldQuestTemplateByZone[expansion][zone].size())
                        {
                            if (_worldQuestTemplateByZone[expansion][zone].size() >= WORLD_QUEST_MAX_LEGION_INVASION)
                                _needCount = WORLD_QUEST_MAX_LEGION_INVASION;

                            if (_worldQuestTemplateByZone[expansion][zone].size() < WORLD_QUEST_MAX_LEGION_INVASION)
                                _needCount = _worldQuestTemplateByZone[expansion][zone].size();

                            auto questUpdate = Trinity::Containers::SelectRandomContainerElement(_worldQuestTemplateByZone[expansion][zone]);
                            //printf("check zone=%d questcount=%d add quest=%d\n", zone, _needCount, questUpdate.second->QuestId);
                            if (questUpdate.second->GetQuest()->questInfoID == QUEST_INFO_INVASION_POINT || questUpdate.second->GetQuest()->questInfoID == QUEST_INFO_INVASION_POINT)
                                continue;

                            if (!questUpdate.second || questUpdate.second->GetQuest()->GetZoneOrSort() < 1 || (!questUpdate.second->GetQuest()->IsWorldQuest() && !questUpdate.second->GetQuest()->IsEmissaryQuest()))
                                continue;

                            if (zone == WorldLegionInvasionZoneID)
                            {
                                if (!questUpdate.second->GetQuest()->IsLegionInvasionWorldQuest() || zone != questUpdate.second->ZoneID)
                                    continue;
                            }
                            else
                            {
                                if (questUpdate.second->GetQuest()->IsLegionInvasionWorldQuest() || questUpdate.second->GetQuest()->IsLegionInvasion() || zone != questUpdate.second->ZoneID)
                                    continue;
                            }

                            if (!CanBeActivate(questUpdate.second->QuestId))
                                continue;

                            if (!questUpdate.second->GetQuest()->IsEmissaryQuest())
                            {
                                //printf("get zone=%d questcount=%d add quest=%d\n", zone, _needCount, questUpdate.second->QuestId);
                                ActivateQuest(questUpdate.second);
                                --_needCount;
                                --questDiff;
                            }
                            while (_needCount)
                            {
                                if (questDiff <= 0)
                                    continue;;

                            }
                        }
                    }

                    std::set<WorldQuestTemplate*> inactiveWorldQuestTemplates;
                    for (auto it : _worldQuestTemplates[expansion][teamId])
                    {
                        if (WorldQuestTemplate* wqTemplate = it.second)
                            if (!IsQuestActive(wqTemplate->QuestId)) // Do not add already active quests
                                if (!wqTemplate->GetQuest()->IsEmissaryQuest()) /// do not add emissay quest as world quest during roll
                                    inactiveWorldQuestTemplates.insert(wqTemplate);
                    }

                    while (questDiff && inactiveWorldQuestTemplates.size())
                    {
                        WorldQuestTemplate* wqTemplate = Trinity::Containers::SelectRandomContainerElement(inactiveWorldQuestTemplates);

                        ActivateQuest(wqTemplate);
                        inactiveWorldQuestTemplates.erase(wqTemplate);
                        --questDiff;
                    }
                }

                RefreshEmissaryQuests();
            }
        }
    }
}

void WorldQuestMgr::ActivateQuest(WorldQuestTemplate* worldQuestTemplate)
{
    Quest const* quest = worldQuestTemplate->GetQuest();
    if (!quest)
        return;

    // Shouldn't activate same quest twice
    if (IsQuestActive(worldQuestTemplate->QuestId))
        return;

    uint32 questId      = worldQuestTemplate->QuestId;
    uint32 rewardId     = GetRandomRewardForQuestType(quest->GetQuestInfoID());
    uint32 startTime    = time(nullptr);

    uint8 questTeamId = GetQuestTeamId(quest);
    if (questTeamId == TEAM_NEUTRAL)
    {
        _activeWorldQuests[quest->GetExpansion()][TEAM_ALLIANCE][worldQuestTemplate->QuestId]    = new ActiveWorldQuest(questId, rewardId, startTime);
        _activeWorldQuests[quest->GetExpansion()][TEAM_HORDE][worldQuestTemplate->QuestId]       = new ActiveWorldQuest(questId, rewardId, startTime);
    }
    else
        _activeWorldQuests[quest->GetExpansion()][questTeamId][worldQuestTemplate->QuestId]      = new ActiveWorldQuest(questId, rewardId, startTime);

    if (!quest->IsLegionInvasion() && !quest->IsEmissaryQuest() && quest->IsWorldQuest())
        _activeWorldByZoneQuests[quest->GetExpansion()][quest->GetZoneOrSort()][worldQuestTemplate->QuestId] = new ActiveWorldQuest(questId, rewardId, startTime);

    // We add Emissary Quests to all eligible players
    if (quest->IsEmissaryQuest() && !IsBlackListedInConfig(quest->GetQuestId()))
    {
        SessionMap const& smap = sWorld->GetAllSessions();
        for (SessionMap::const_iterator iter = smap.begin(); iter != smap.end(); ++iter)
            if (Player* player = iter->second->GetPlayer())
                if (player->HasWorldQuestEnabled(quest->GetExpansion()))
                    if (player->GetQuestStatus(worldQuestTemplate->QuestId) == QUEST_STATUS_NONE)
                    {
                        TC_LOG_INFO("server.WorldQuest", "Quest %u is Emissary Quest and added to %s.", quest->GetQuestId(), player->GetName().c_str());
                        player->AddQuest(quest, nullptr);
                    }
    }

    // add Legion Invasion Quest to all players
    if (quest->IsLegionInvasion() && !IsBlackListedInConfig(quest->GetQuestId()))
    {
        SessionMap const& smap = sWorld->GetAllSessions();
        for (SessionMap::const_iterator iter = smap.begin(); iter != smap.end(); ++iter)
            if (Player* player = iter->second->GetPlayer())
                if (player->HasWorldQuestEnabled(quest->GetExpansion()))
                    if (player->GetQuestStatus(worldQuestTemplate->QuestId) == QUEST_STATUS_NONE)
                    {
                        TC_LOG_INFO("server.WorldQuest", "Quest %u is Legion Invasion Quest and added to %s.", quest->GetQuestId(), player->GetName().c_str());
                        player->AddQuest(quest, nullptr);
                    }
    }

    if (quest->IsCallingQuest() && !IsBlackListedInConfig(quest->GetQuestId()))
    {
        SessionMap const& smap = sWorld->GetAllSessions();
        for (SessionMap::const_iterator iter = smap.begin(); iter != smap.end(); ++iter)
            if (Player* player = iter->second->GetPlayer())
            {
                if (!player->GetCovenant())
                    return;

                TC_LOG_INFO("server.WorldQuest", "Quest %u is Calling Quest and added to %s.", quest->GetQuestId(), player->GetName().c_str());
                player->AddQuest(quest, nullptr);
            }
    }

    if (quest->IsWorldQuest() && !IsBlackListedInConfig(quest->GetQuestId()))
    {
        SessionMap const& smap = sWorld->GetAllSessions();
        for (SessionMap::const_iterator iter = smap.begin(); iter != smap.end(); ++iter)
            if (Player* player = iter->second->GetPlayer())
            {
                if (worldQuestTemplate->ZoneID > 0)
                {
                    if (worldQuestTemplate->ZoneID == player->GetZoneId())
                    {
                        TC_LOG_INFO("server.WorldQuest", "Quest %u is World Quest and added to %s.", quest->GetQuestId(), player->GetName().c_str());
                        player->AddQuest(quest, nullptr);
                    }
                }
                else
                {
                    TC_LOG_INFO("server.WorldQuest", "Quest %u is World Quest and doesn't have zoneID and not added to %s.", quest->GetQuestId(), player->GetName().c_str());
                    //player->AddQuest(quest, nullptr);
                }
            }
    }

    CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_REP_WORLD_QUEST);
    stmt->setUInt32(0, questId);
    stmt->setUInt32(1, rewardId);
    stmt->setUInt32(2, startTime);
    CharacterDatabase.Execute(stmt);
}

void WorldQuestMgr::DisableQuest(ActiveWorldQuest* activeWorldQuest)
{
    Quest const* quest = sObjectMgr->GetQuestTemplate(activeWorldQuest->QuestId);
    if (!quest)
        return;

    // Can't disable non active world quests
    if (!IsQuestActive(activeWorldQuest->QuestId))
        return;

    // Remove to connected quest status/rewarded and criteria for the next world quest fill
    SessionMap const& smap = sWorld->GetAllSessions();
    for (SessionMap::const_iterator iter = smap.begin(); iter != smap.end(); ++iter)
    {
        if (Player* player = iter->second->GetPlayer())
        {
            player->RemoveActiveQuest(quest, true);
            player->RemoveRewardedQuest(quest->GetQuestId(), true);
            for (auto criteria : GetCriteriasForQuest(quest->GetQuestId()))
            {
                player->UpdateCriteria(CriteriaType::CompleteQuest, 0, criteria->ID);
                player->GetQuestObjectiveCriteriaMgr()->ResetCriteriaTree(criteria->ModifierTreeId);
            }
        }
    }

    for (auto criteria : GetCriteriasForQuest(quest->GetQuestId()))
        CharacterDatabase.PExecute("DELETE FROM character_achievement_progress WHERE criteria = %u", criteria->ID);

    CharacterDatabasePreparedStatement* stmt = CharacterDatabase.GetPreparedStatement(CHAR_DEL_WORLD_QUEST);
    stmt->setUInt32(0, quest->GetQuestId());
    CharacterDatabase.Execute(stmt);
    CharacterDatabase.PExecute("DELETE FROM character_queststatus WHERE quest = %u", quest->GetQuestId());
    CharacterDatabase.PExecute("DELETE FROM character_queststatus_objectives WHERE quest = %u", quest->GetQuestId());
    CharacterDatabase.PExecute("DELETE FROM character_queststatus_rewarded WHERE quest = %u", quest->GetQuestId());

    if (quest->GetObjectives().size() > 0)
        for (QuestObjective const& objective : quest->GetObjectives())
        {
            CharacterDatabase.PExecute("DELETE FROM character_queststatus_objectives_criteria WHERE questObjectiveId = %u", objective.ID);
            CharacterDatabase.PExecute("DELETE FROM character_queststatus_objectives_criteria_progress WHERE criteriaId = %u", objective.ObjectID);
        }

    delete activeWorldQuest;
}

bool WorldQuestMgr::IsQuestActive(uint32 questId)
{
    return GetActiveWorldQuest(questId) != nullptr;
}

bool WorldQuestMgr::CanBeActivate(uint32 questId)
{
    Quest const* quest = sObjectMgr->GetQuestTemplate(questId);

    if (!quest)
        return false;

    WorldQuestTemplate* wq = sWorldQuestMgr->GetWorldQuestTemplate(quest->GetExpansion(), questId);

    switch (wq->GetQuest()->GetQuestInfoID())
    {
    case QUEST_INFO_EMISSARY_QUEST:
    {
        switch (questId)
        {
    case 42233: //Highmountain Tribes
    case 42420: //Court of Farondis
    case 42170: //The Dreamweavers
    case 42422: // The Wardens
    case 42421: // The NightFallen
    case 42234: //The Valarjar
    case 48639: //Army of The Light
    case 48642: //Argussian Reach
    case 48641: //Armies of Legionfall
    case 50562: //Champions of Azeroth
    case 50604: //Tortollan Seekers
    case 50599: // Proudmoore Admiralty
    case 50600: //Order of Embers
    case 50601: // Storms Wake
    case 50605: //Alliance War Effort
    case 50598: //Zandalari Empire
    case 50602: // Talanji Expedition
    case 50603: //Voldunai
    case 50606: // Horde War effort
    case 56120: //The Unshackled
        return true;
    default:
        break;
    }
    break;
    }
    case QUEST_INFO_CALLING_QUEST:
    {
        switch (questId)
        {
    case 60425://Troubles at Home Bastion Kyryan Covenant
    case 60427://Venthyr Covenant
    case 60424://A Call to Ardenweald
    case 60419://Troubles at Home
    case 60391://Aiding Ardenweald
    case 60393://Aiding Bastion
    case 60395://Aiding Maldraxxus
    case 60400://Aiding Revendreth
    case 60415://Rare Resources
    case 60458://Anima Salvage
    case 60380://A Source of Sorrowvine
    case 60372://A Wealth of Wealdwood
    case 60465://Anima Appeal
    case 60358://Gildenite Grab
    case 60377://Bonemetal Bonanza
    case 60387://Training in Bastion
    case 60404://Training Our Forces
    case 60403://Training in Ardenweald
    case 60408://Training Our Forces
    case 60407://Training in Maldraxxus
    case 60388://Training Our Forces
    case 60412://Training in Revendreth
    case 60410://Training Our Forces
    case 60439://Challenges in Ardenweald
    case 60442://Challenges in Bastion
    case 60447://Challenges in Maldraxxus
    case 60450://Challenges in Revendreth
    case 60454://Storm the Maw
        return true;
    default:
        break;
    }
    break;
}
    case QUEST_INFO_RARE_ELITE_WORLD_QUEST:
    {
        switch (questId)
        {
        case 42819: // npc=108879/humongris
        case 42269: // npc=106981/captain-hring, npc=106984/soultrapper-mevra, npc=106982/reaver-jdorn
        case 43193: // npc=109331/calamir
        case 43512: // npc=109943/ana-mouz
            return sGameEventMgr->IsActiveEvent(102);
        case 43985: // npc=99929/flotsam
        case 43192: // npc=108829/levantus
        case 42270: // npc=107023/nithogg
        case 43513: // npc=110321/nazak-the-fiend
            return sGameEventMgr->IsActiveEvent(103);
        case 43448: // npc=110378/drugon-the-frostblood
        case 42779: // npc=108678/sharthos
        case 44287: // npc=102075/withered-jim
            return sGameEventMgr->IsActiveEvent(104);
        case 52157: //npc=140252/hailstone-construct
        case 52163: //npc=136385/azurethos
        case 52166: //npc=140163/belisario-yenajz
        case 52181: //npc=132701/tzane
        case 52169: //npc=132253/jiarak
        case 52196: //npc=138794/dunegorger-kraulok
        case 44054://Demonicide
        case 43333://DANGER: Nylaathria the Forgotten
        case 43175://DANGER: Deepclaw
        case 42964://DANGER: Lagertha
        case 43091://DANGER: Arcanor Prime
        case 54595://yogursa
        case 41696://DANGER: Mawat'aki
        case 44190://DANGER: Jade Darkhaven
        case 48830://Inquisitor Vethroz
        case 48467://Puscilla
        case 48834://Worldsplitter Skuul
        case 48866://Void Warden Valsuran
        case 48466://Ven'orn
        case 54568://Branchlord Aldrus
        case 64273://Containing the Helsworn
        case 60531://Chosen Champions
        case 60533://Terrors in Tirna Scithe
        case 60534://Disloyal Denizens
        case 54598://Thundering Goliath
        case 51431://Soul Goliath
        case 48282://Imp Mother Laglath
        case 48737://Instructor Tarahna
        case 48726://Turek the Lucid
        case 44122://DANGER: Sorallus
        case 43798://DANGER: Kosumoth the Hungering
        case 43959://Stelleris Shakedown
        case 42024://A Friend of My Enemy
        case 55892://Champion Eldanar, Shield of Her Glory
        case 41093://DANGER: Durguth
        case 52330://Beehemoth
        case 51699://Blighted Monstrosity
        case 43027://DANGER: Mortiferous
        case 48502://Naroua, King of the Forest
        case 43344://DANGER: Aodh Witherpetal
        case 48738://Zul'tan the Numerous
        case 48832://Admiral Rel'var
        case 48835://Houndmaster Kerrax
        case 44194://DANGER: Torrentius
        case 48828://Lieutenant Xakaar
        case 41700://DANGER: Shalas'aman
        case 41089://Lords of the Hills
        case 41816://DANGER: Oubdob da Smasher
        case 48829://Wrath-Lord Yarez
        case 42820://DANGER: Aegir Wavecrusher
        case 51156://Fangcaller Xorreth
        case 55891://Champion Aldrantiss, Defender of Her Kingdom
        case 44193://DANGER: Sea King Tidross
        case 51433://Matron Morana
        case 54825://Alash'anir
        case 54599://Skullripper
        case 44815://Sick of the Sycophants
        case 55888://Champion Qalina, Spear of Ice
        case 48831://Commander Texlaz
        case 48936://Slithon the Last
        case 44119://DANGER: Volshax, Breaker of Will
        case 48740://Skreeg the Devourer
        case 51610://Adhara White
        case 55890://Champion Vyz'olgo the Mind-Taker
        case 48731://Herald of Chaos
        case 50855://Old R'gal
        case 48511://Commander Endaxis
        case 41091://Lords of the Hills
        case 44067://Consolidating Power
        case 42870://DANGER: Kathaw the Savage
        case 48827://varga
        case 48728://Umbraliss
        case 54603://Overseer Krix
        case 41703://DANGER: Ormagrogg
        case 48465://Vrax'thul
        case 50850://Tia'Kawan
        case 51157://Golanar
        case 42806://DANGER: Fjorlag, the Grave's Chill
        case 48512://Sister Subversia
        case 48836://Watcher Aival
        case 42799://DANGER: Oglok the Furious
        case 47728://Talestra the Vile
        case 50468://Shul-Nagruth
        case 42798://DANGER: Huntress Estrid
        case 48723://Vigilant Thanos
        case 48509://Commander Sathrenael
        case 51613://Bloodmaw
        case 41090://Lords of the Hills
        case 48725://Venomtail Skyfin
        case 41685://DANGER: Ala'washte
        case 48724://Vigilant Kuro
        case 48736://Overseer Y'Morna
        case 48867://Chief Alchemist Munculus
        case 54604://Molok the Crusher
        case 54591://Rumbling Goliath
        case 41695://DANGER: Defilia
        case 42797://DANGER: Scythemaster Cil'raman
        case 41686://DANGER: Olokk the Shipbreaker
        case 41697://DANGER: Colerian, Alteria, and Selenyi
        case 42864://DANGER: Captain Dargun
        case 47566://Gar'zoth
        case 50847://Twisted Child of Rezan
        case 51580://Rear Admiral Hainsworth
        case 54607://Cresting Goliath
        case 55889://Champion Kyx'zhul the Deepspeaker
        case 48734://Overseer Y'Beda
        case 48837://All-Seer Xanarian
        case 54793://Athrikus Narassin
        case 54589://Plaguefeather
        case 54788://Hydrath
        case 48732://Sabuul
        case 54585://Echo of Myzrael
        case 54588://Overseer Krix
        case 44118://DANGER: Auditor Esiel
        case 47507://Khazaduum
        case 48510://Commander Vecaya
        case 48727://Captain Faruq
        case 48739://Commander Xethgar
        case 54816://Hydrath
        case 42927://DANGER: Malisandra
        case 47953://Tereck the Selector
        case 48694://Soultwisted Monstrosity
        case 48722://Feasel the Muffin Thief
        case 50846://Headhunter Lee'za
        case 54602://Plaguefeather
        case 54606://Echo of Myzrael
        case 43059://DANGER: Fjordun
        case 43152://DANGER: Lytheron
        case 44049://Evil Has Many Legs
        case 48733://Jed'hin Champion Vorusk
        case 50849://Witch Doctor Habra'du
        case 50853://Umbra'rix
        case 51611://Ghost of the Deep
        case 54593://Thundering Goliath
        case 43040://DANGER: Valakar the Thirsty
        case 43079://DANGER: Immolian
        case 43721://The Helarjar Have Surfaced
        case 43801://Shell Out Some Pain
        case 43805://Aquatic Assassination
        case 48192://Tar Spitter
        case 54592://Skullripper
        case 54795://Aman
        case 60532://Destroy the Dominant
        case 44192://DANGER: Lysanis Shadesoul
        case 50851://Mor'fani the Exile
        case 43063://DANGER: Stormfeather
        case 43346://DANGER: Ealdis
        case 44050://The Felsworn Must Fall
        case 47561://Blistermaw
        case 54797://Alash'anir
        case 42785://DANGER: Den Mother Ylva
        case 43345://DANGER: Harbinger of Screams
        case 43814://Unspeakable Collaborators
        case 44113://DANGER: Achronos
        case 44121://DANGER: Az'jatar
        case 47552://Mistress Il'thendra
        case 48701://Baruut the Bloodthirsty
        case 55887://Champion Alzana, Arrow of Thunder
        case 44048://Nagana Happen
        case 47542://Siegemaster Voraan
        case 50848://Brgl-Lrgl the Basher
        case 54791://Granokk
        case 43101://DANGER: Witchdoctor Grgl-Brgl
        case 44187://DANGER: Cinderwing
        case 45969://Defense of the Ancient
        case 48735://Overseer Y'Sorna
        case 50461://Zujothgul
        case 52352://Zeritarj
        case 54820://Zim'kaga
        case 43098://DANGER: Marblub the Massive
        case 43745://Culling the Storm
        case 43803://A Giant Murloc Problem
        case 44114://DANGER: Magistrix Vilessa
        case 51579://Dark Ranger Clea
        case 54587://Molok the Crusher
        case 43722://Sacred Bones
        case 43802://Watery Graves
        case 46072://full fel
        case 51434://Stone Golem
        case 51905://Reinforced Hullbreaker
        case 54578://Branchlord Aldrus
        case 54597://Venomarus
        case 54601://Ragebeak
        case 54792://onu
        case 54796://Shattershard
        case 54818://Conflagros
        case 42963://DANGER: Rulf Bonesnapper
        case 43121://DANGER: Chief Treasurer Jabrill
        case 44189://DANGER: Bestrix
        case 46001://Rules of the Hunt
        case 50852://Lady Seirine
        case 51155://Brgl-Lrgl the Basher
        case 54596://Yogursa
        case 54600://Rumbling Goliath
        case 54608://Burning Goliath
        case 54817://Cyclarus
        case 54821://Athrikus Narassin
        case 42861://DANGER: Boulderfall, the Eroded
        case 43347://DANGER: Rabxach
        case 44044://Felled Experiment
        case 48696://Wrangler Kravos
        case 54584://Cresting Goliath
        case 54794://Soggoth the Slitherer
        case 54824://Shattershard
        case 44191://DANGER: Karthax
        case 48730://Sorolis the Ill-Fated
        case 50459://Vugthuth
        case 54583://Burning Goliath
        case 54594://Venomarus
        case 54789://Cyclarus
        case 54819://Granokk
        case 54823://Aman
        case 50483://Underlord Xerxiz
        case 47833://Shadowcaster Voruun
        case 54586://Fozruk
        case 54605://Fozruk
        case 54822://Soggoth the Slitherer
        case 48698://Kaara the Pale
        case 51806://Pest Remover Mk. II
        case 42953://DANGER: Soulbinder Halldora
        case 43072://DANGER: The Whisperer
        case 43804://Hate the Hatecoil
        case 48091://Vagath the Betrayed
        case 51153://Mor'fani the Exile
        case 54790://Conflagros
        case 42991://DANGER: Runeseer Sigvid
        case 46288://Everyone to the Front
        case 54590://Ragebeak
        case 48729://Ataxon
            return true;
        default:
            break;
        }
        break;
    }
    case QUEST_INFO_LEGIONFALL_WORLD_QUEST:
    {
        switch (questId)
        {
        case 46945: // npc=117470/sivash
        case 47061: // npc=121124/apocron
            return sGameEventMgr->IsActiveEvent(102);
        case 46947: // npc=117239/brutallus
            return sGameEventMgr->IsActiveEvent(103);
        case 46948: // npc=117303/malificus
            return sGameEventMgr->IsActiveEvent(104);
        default:
            break;
        }
        break;
    }
    case QUEST_INFO_PVP_WORLD_QUEST:
    {
        switch (questId)
        {
            // Horde
        case 41227: // Warden Tower Assault: Cordana's Apex
            return sGameEventMgr->IsActiveEvent(109);
        case 41420: // Warden Tower Assault: Nightwatcher's Perch
            return sGameEventMgr->IsActiveEvent(113);
        case 42070: // Warden Tower Assault: Starstalker's Point
            return sGameEventMgr->IsActiveEvent(108);
        case 43247: // Warden Tower Assault: Darkfollow's Spire
            return sGameEventMgr->IsActiveEvent(105);
        case 43598: // Warden Tower Assault: Blackhawk's Bulwark
            return sGameEventMgr->IsActiveEvent(116);
        case 43600: // Warden Tower Assault: Whisperwind's Citadel
            return sGameEventMgr->IsActiveEvent(112);

            // Alliance
        case 41257: // Warden Tower Assault: Cordana's Apex
            return sGameEventMgr->IsActiveEvent(110);
        case 41421: // Warden Tower Assault: Nightwatcher's Perch
            return sGameEventMgr->IsActiveEvent(114);
        case 43183: // Warden Tower Assault: Starstalker's Point
            return sGameEventMgr->IsActiveEvent(107);
        case 43248: // Warden Tower Assault: Darkfollow's Spire
            return sGameEventMgr->IsActiveEvent(106);
        case 43599: // Warden Tower Assault: Blackhawk's Bulwark
            return sGameEventMgr->IsActiveEvent(115);
        case 43601: // Warden Tower Assault: Whisperwind's Citadel
            return sGameEventMgr->IsActiveEvent(111);
        default:
            break;
        }
        break;
    }
    case QUEST_INFO_INVASION_POINT:
    {
        switch (wq->VariableId)
        {
        case 14064: // AREA_REKINDLING 9126
            return sGameEventMgr->IsActiveEvent(180);
        case 14245: // AREA_VAL 9127
            return sGameEventMgr->IsActiveEvent(181);
        case 14063: // AREA_BONICH 9180
            return sGameEventMgr->IsActiveEvent(182);
        case 14246: // AREA_AURINOR 9100
            return sGameEventMgr->IsActiveEvent(183);
        case 14060: // AREA_NAIGTAL 9102
            return sGameEventMgr->IsActiveEvent(184);
        case 14062: // AREA_VAL 9127
            return sGameEventMgr->IsActiveEvent(185);
        case 14243: // AREA_REKINDLING 9126
            return sGameEventMgr->IsActiveEvent(186);
        case 14065: // AREA_SANGUA 9128
            return sGameEventMgr->IsActiveEvent(187);
        case 14061: // AREA_AURINOR 9100
            return sGameEventMgr->IsActiveEvent(188);
        case 14244: // AREA_BONICH 9180
            return sGameEventMgr->IsActiveEvent(189);
        case 14247: // AREA_NAIGTAL 9102
            return sGameEventMgr->IsActiveEvent(190);
        case 14242: // AREA_SANGUA 9128
            return sGameEventMgr->IsActiveEvent(191);
        default:
            return false;
        }
        break;
    }
    case QUEST_INFO_GREATER_INVASION_POINT:
    {
        switch (questId)
        {
        case 49169: // AREA_MATRON_FOLNUNA 9295
        case 49171: // AREA_SOTANATHOR 9299
            return sGameEventMgr->IsActiveEvent(102);
        case 49166: // AREA_INQUISITOR_METO 9297
        case 49167: // AREA_MISTRESS_ALLURADEL 9300
            return sGameEventMgr->IsActiveEvent(103);
        case 49168: // AREA_PIT_LORD_VILEMUS 9296
        case 49170: // AREA_OCCULARUS 9298
            return sGameEventMgr->IsActiveEvent(104);
        default:
            return false;
        }
        break;
    }
    case QUEST_INFO_WORLD_QUEST: 
    case QUEST_INFO_FIRST_AID_WORLD_QUEST:
    case QUEST_INFO_BATTLE_PET_WORLD_QUEST:
    case QUEST_INFO_BLACKSMITHING_WORLD_QUEST:
    case QUEST_INFO_LEATHERWORKING_WORLD_QUEST:
    case QUEST_INFO_ALCHEMY_WORLD_QUEST:
    case QUEST_INFO_HERBALISM_WORLD_QUEST:
    case QUEST_INFO_MINING_WORLD_QUEST:
    case QUEST_INFO_TAILORING_WORLD_QUEST:
    case QUEST_INFO_ENGINEERING_WORLD_QUEST:
    case QUEST_INFO_ENCHANTING_WORLD_QUEST:
    case QUEST_INFO_SKINNING_WORLD_QUEST:
    case QUEST_INFO_JEWELCRAFTING_WORLD_QUEST:
    case QUEST_INFO_INSCRIPTION_WORLD_QUEST:
    case QUEST_INFO_ARCHEOLOGY_WORLD_QUEST:
    case QUEST_INFO_FISHING_WORLD_QUEST:
    case QUEST_INFO_COOKING_WORLD_QUEST:
    {
        return true;
        break;
    }
    default:
        break;
    }

    return !IsQuestActive(questId);
}

void WorldQuestMgr::RewardQuestForPlayer(Player* player, uint32 questId)
{
    ActiveWorldQuest const* activeWorldQuest = sWorldQuestMgr->GetActiveWorldQuest(questId);
    if (!activeWorldQuest)
        return;

    std::vector<WorldQuestReward const*> worldQuestRewards = sWorldQuestMgr->GetRewardsForPlayerById(player, activeWorldQuest->RewardId);
    for (WorldQuestReward const* worldQuestReward : worldQuestRewards)
    {
        switch (worldQuestReward->RewardType)
        {
            case WORLD_QUEST_REWARD_ITEM:
            {
                ItemPosCountVec dest;
                if (player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, worldQuestReward->RewardId, worldQuestReward->RewardCount) == EQUIP_ERR_OK)
                {
                    std::vector<int32> bonusListIDs = sDB2Manager.GetItemBonusTreeVector(worldQuestReward->RewardId, uint32(ItemContext(worldQuestReward->RewardContext)));
                    Item* item = player->StoreNewItem(dest, worldQuestReward->RewardId, true, GenerateItemRandomBonusListId(worldQuestReward->RewardId), GuidSet(), ItemContext(0));
                    player->SendNewItem(item, worldQuestReward->RewardCount, true, false);
                }
                break;
            }
            case WORLD_QUEST_REWARD_CURRENCY:
            {
                player->ModifyCurrency(worldQuestReward->RewardId, worldQuestReward->RewardCount);
                break;
            }
            case WORLD_QUEST_REWARD_GOLD:
            {
                uint64 moneyRew = worldQuestReward->RewardCount * sWorld->getRate(RATE_MONEY_QUEST);
                player->ModifyMoney(moneyRew);

                if (moneyRew > 0)
                    player->UpdateCriteria(CriteriaType::MoneyEarnedFromQuesting, uint32(moneyRew));
                break;
            }
			case WORLD_QUEST_REWARD_ARTIFACT_POWER:
            {
                // For Oplote class tallent. For 
                if (roll_chance_i(25))
                {
                    uint32 _count = worldQuestReward->RewardCount;
                 //   if (Garrison* garrison = player->GetGarrison(GARRISON_TY))
                     //   if (garrison && garrison->hasLegionFall())
                            _count *= 2;
                    ItemPosCountVec dest;
                    if (player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, worldQuestReward->RewardId, _count) == EQUIP_ERR_OK)
                    {
                      //  std::vector<int32> bonusListIDs = sDB2Manager.GetItemBonusTreeVector(worldQuestReward->RewardId, worldQuestReward->RewardContext);
                       // Item* item = player->StoreNewItem(dest, worldQuestReward->RewardId, true, GenerateItemRandomPropertyId(worldQuestReward->RewardId), GuidSet(), 0, bonusListIDs);
                       // player->SendNewItem(item, _count, true, false);
                    }
                }
                break;
            }
            default:
                break;
        }
    }
    player->UpdateCriteria(CriteriaType::CompleteQuest, 1, activeWorldQuest->GetTemplate()->GetQuest()->GetQuestInfoID());
}

WorldQuestTemplate* WorldQuestMgr::GetWorldQuestTemplate(uint32 expansion, uint32 questId)
{
    Quest const* quest = sObjectMgr->GetQuestTemplate(questId);
    if (!quest)
        return nullptr;

    auto expansionTemplates = _worldQuestTemplates.find(quest->GetExpansion());
    if (expansionTemplates == _worldQuestTemplates.end())
        return nullptr;

    uint8 questTeamId = GetQuestTeamId(quest);
    questTeamId = questTeamId == TEAM_NEUTRAL ? TEAM_ALLIANCE : questTeamId;

    auto teamTemplates = expansionTemplates->second.find(questTeamId);
    if (teamTemplates == expansionTemplates->second.end())
        return nullptr;

    auto questTemplate = teamTemplates->second.find(questId);
    if (questTemplate == teamTemplates->second.end())
        return nullptr;

    return questTemplate->second;
}

ActiveWorldQuest* WorldQuestMgr::GetActiveWorldQuest(uint32 questId)
{
    Quest const* quest = sObjectMgr->GetQuestTemplate(questId);
    if (!quest)
        return nullptr;

    auto expansionTemplates = _activeWorldQuests.find(quest->GetExpansion());
    if (expansionTemplates == _activeWorldQuests.end())
        return nullptr;

    uint8 questTeamId = GetQuestTeamId(quest);
    questTeamId = questTeamId == TEAM_NEUTRAL ? TEAM_ALLIANCE : questTeamId;

    auto teamTemplates = expansionTemplates->second.find(questTeamId);
    if (teamTemplates == expansionTemplates->second.end())
        return nullptr;

    auto questTemplate = teamTemplates->second.find(questId);
    if (questTemplate == teamTemplates->second.end())
        return nullptr;

    return questTemplate->second;
}

uint8 WorldQuestMgr::GetActiveEmissaryQuestsCount(uint8 expansion, uint8 teamId)
{
    return std::count_if(_activeWorldQuests[expansion][teamId].begin(), _activeWorldQuests[expansion][teamId].end(), [](auto pair) -> bool
    {
        return pair.second->IsEmissaryQuest();
    });
}

uint32 WorldQuestMgr::GetActiveQuestsCount(uint32 expansion, uint8 teamId)
{
    return _activeWorldQuests[expansion][teamId].size();
}

uint32 WorldQuestMgr::GetActiveQuestsByZoneCount(uint32 expansion, uint16 zoneId)
{
    return _activeWorldByZoneQuests[expansion][zoneId].size();
}

uint32 WorldQuestMgr::GetRandomRewardForQuestType(uint32 questType)
{
    auto rewardByQuestInfosItr = _worldQuestRewardByQuestInfos.find(questType);
    if (rewardByQuestInfosItr == _worldQuestRewardByQuestInfos.end())
        return 0;

    return Trinity::Containers::SelectRandomContainerElement(rewardByQuestInfosItr->second);
}

std::vector<WorldQuestReward const*> WorldQuestMgr::GetRewardsForPlayerById(Player* player, uint32 rewardId)
{
    std::vector<WorldQuestReward const*> rewards;

    auto rewardsItr = _worldQuestRewards.find(rewardId);
    if (rewardsItr == _worldQuestRewards.end())
        return rewards;

    for (WorldQuestReward const& reward : rewardsItr->second)
    {
        switch (reward.RewardType)
        {
            case WORLD_QUEST_REWARD_ITEM:
            {
                if (ItemTemplate const* proto = sObjectMgr->GetItemTemplate(reward.RewardId))
                    if (proto->IsUsableByLootSpecialization(player, false))
                        rewards.push_back(&reward);
                break;
            }
            default:
                rewards.push_back(&reward);
        }
    }

    return rewards;
}

void WorldQuestMgr::BuildPacket(Player* player, WorldPackets::Quest::WorldQuestUpdateResponse& packet)
{
    WorldPackets::Quest::WorldQuestUpdateInfo quest = WorldPackets::Quest::WorldQuestUpdateInfo(0, 0, 0, 0, 0);
    for (auto expansionWorldQuests : _activeWorldQuests)
    {
        for (auto itr : expansionWorldQuests.second[player->GetTeamId()])
        {
            ActiveWorldQuest* activeWorldQuest = itr.second;
            if (player->IsQuestRewarded(itr.first))
                continue;

            if (WorldQuestTemplate const* worldQuestTemplate = activeWorldQuest->GetTemplate())
            {
                quest.QuestID = activeWorldQuest->QuestId;
                quest.LastUpdate = activeWorldQuest->StartTime;
                quest.VariableID = worldQuestTemplate->VariableId;
                quest.Timer = worldQuestTemplate->Duration;
                quest.Value = worldQuestTemplate->Value;
                packet.WorldQuestUpdates.push_back(quest);
            }
        }
    }
}

void WorldQuestMgr::BuildRewardPacket(Player* player, uint32 questId, WorldPackets::Quest::QueryQuestRewardResponse& packet)
{
    ActiveWorldQuest const* activeWorldQuest = GetActiveWorldQuest(questId);
    if (!activeWorldQuest)
        return;

    std::vector<WorldQuestReward const*> worldQuestRewards = GetRewardsForPlayerById(player, activeWorldQuest->RewardId);
    if (!worldQuestRewards.size())
        return;

    for (WorldQuestReward const* worldQuestReward : worldQuestRewards)
    {
        switch (worldQuestReward->RewardType)
        {
            case WORLD_QUEST_REWARD_ITEM:
            {
                WorldPackets::Quest::QueryQuestRewardResponse::ItemReward itemReward;
                itemReward.Item.ItemID = worldQuestReward->RewardId;
                itemReward.Item.ItemBonus = WorldPackets::Item::ItemBonuses();
                itemReward.Item.ItemBonus->Context = (ItemContext)worldQuestReward->RewardContext;
                itemReward.Item.ItemBonus->BonusListIDs = sDB2Manager.GetItemBonusTreeVector(worldQuestReward->RewardId, uint32(ItemContext(worldQuestReward->RewardContext)));
                itemReward.ItemCount = worldQuestReward->RewardCount;
                packet.ItemRewards.push_back(itemReward);
                break;
            }
            case WORLD_QUEST_REWARD_CURRENCY:
            {
                WorldPackets::Quest::QueryQuestRewardResponse::CurrencyReward currencyReward;
                currencyReward.CurrencyID = worldQuestReward->RewardId;
                currencyReward.Amount = worldQuestReward->RewardCount;
                packet.CurrencyRewards.push_back(currencyReward);
                break;
            }
            case WORLD_QUEST_REWARD_GOLD:
            {
                packet.Money = worldQuestReward->RewardCount;
                break;
            }
            default:
                break;
        }
    }
}

void WorldQuestMgr::FillInitWorldStates(WorldPackets::WorldState::InitWorldStates& initWorldStates, Map const* map, uint32 playerAreaId) const
{
    //TODO ADD map and areaid checks 
    for (auto expansionWorldQuests : _activeWorldQuests)
        for (auto teamWorldQuests : expansionWorldQuests.second)
            for (auto itr : teamWorldQuests.second)
                if (WorldQuestTemplate const* worldQuestTemplate = itr.second->GetTemplate())
                    initWorldStates.Worldstates.emplace_back(worldQuestTemplate->VariableId, worldQuestTemplate->Value);
}

std::vector<CriteriaEntry const*> WorldQuestMgr::GetCriteriasForQuest(uint32 quest_id)
{
    std::vector<CriteriaEntry const*> gets;
    Quest const* quest = sObjectMgr->GetQuestTemplate(quest_id);
    if (!quest)
        return gets;

    CriteriaList criterias = sCriteriaMgr->GetPlayerCriteriaByType(CriteriaType::CompleteQuest, 0);
    for (Criteria const* criteria : criterias)
        if (criteria->Entry->Asset.QuestID == int32(quest_id) && criteria->Entry->Flags & 0x20) // guessed for World Quest related stuff
            gets.push_back(criteria->Entry);

    return gets;
}

void WorldQuestMgr::RefreshEmissaryQuests()
{
    for (uint8 expansion : WorldQuestsExpansions)
    {
        for (uint8 teamId : WorldQuestsTeams)
        {
            if (GetActiveEmissaryQuestsCount(expansion, teamId) >= WORLD_QUEST_EMISSARY)
                return;

            if (_emissaryWorldQuestTemplates[expansion][teamId].size() < WORLD_QUEST_EMISSARY)
                return;

            auto it = Trinity::Containers::SelectRandomContainerElement(_emissaryWorldQuestTemplates[expansion][teamId]);
            if (!IsQuestActive(it.first))
                ActivateQuest(it.second);
        }
    }
}

void WorldQuestMgr::AddEmissaryQuestsOnPlayerIfNeeded(Player* player)
{
    for (uint8 expansion : WorldQuestsExpansions)
    {
        if (!player->HasWorldQuestEnabled(expansion))
            continue;

        for (auto itr : _activeWorldQuests[expansion][player->GetTeamId()])
            if (WorldQuestTemplate const* worldQuestTemplate = itr.second->GetTemplate())
                if (Quest const* quest = worldQuestTemplate->GetQuest())
                    if (quest->IsEmissaryQuest())
                        if (player->GetQuestStatus(itr.first) == QUEST_STATUS_NONE)
                            player->AddQuest(quest, nullptr);
    }
}

uint32 WorldQuestMgr::GetTimerForQuest(uint32 questId)
{
    if (ActiveWorldQuest const* wq = GetActiveWorldQuest(questId))
        return wq->GetRemainingTime();

    return 0;
}

TeamId WorldQuestMgr::GetQuestTeamId(Quest const* quest)
{
    if (quest->GetAllowableRaces().RawValue == uint64(-1))
        return TEAM_NEUTRAL;

    if (quest->GetAllowableRaces().RawValue & TEAM_ALLIANCE)
        return TEAM_ALLIANCE;

    if (quest->GetAllowableRaces().RawValue & TEAM_HORDE)
        return TEAM_HORDE;

    return TEAM_NEUTRAL;
}

std::set<Quest const*> const* WorldQuestMgr::GetWorldQuestTask(uint32 areaId) const
{
    return Trinity::Containers::MapGetValuePtr(_worldQuestAreaTaskStore, areaId);
}

std::set<Quest const*> const* WorldQuestMgr::GetQuestTask(uint32 areaId) const
{
    return Trinity::Containers::MapGetValuePtr(_questAreaTaskStore, areaId);
}

WorldQuestTemplate const* WorldQuestMgr::GetWorldQuest(Quest const* quest)
{
    if (WorldQuestTemplate const* worldQuest = GetWorldQuestTemplate(quest->GetExpansion(), quest->GetQuestId()))
        if (worldQuest->ZoneID == 0 || worldQuest->ZoneID == quest->GetZoneOrSort())
            return worldQuest;

    return nullptr;
}

bool WorldQuestMgr::IsBlackListedInConfig(uint32 questId)
{
    std::string blacklist = sConfigMgr->GetStringDefault("WorldQuests.BlackList", "");
    std::stringstream blackliststream(blacklist);
    std::string temp;
    std::unordered_set<int> _blacklist;

    while (std::getline(blackliststream, temp, ','))
        _blacklist.insert(atol(temp.c_str()));

    if (_blacklist.find(questId) != _blacklist.end())
        return true;

    return false;
}
