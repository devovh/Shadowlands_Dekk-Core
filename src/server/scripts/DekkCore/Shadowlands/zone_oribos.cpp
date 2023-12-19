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

#include "Player.h"
#include "Creature.h"
#include "CreatureAI.h"
#include "ObjectMgr.h"
#include "GameObject.h"
#include "GameObjectAI.h"
#include "ObjectAccessor.h"
#include "PhasingHandler.h"
#include "ScriptMgr.h"
#include "ScriptedEscortAI.h"
#include "ObjectMgr.h"
#include "SpellInfo.h"
#include "SpellScript.h"
#include "TemporarySummon.h"
#include "ScriptedGossip.h"

enum Oribos
{
    QUEST_INTO_THE_MAW                     = 59181,
    QUEST_STRANGER_IN_AN_EVEN_STRANGERLAND = 60129,
    QUEST_IF_U_WANT_PEACE                  = 57386,
    QUEST_THE_FIRST_MOVE                   = 63576,
    QUEST_A_GATHERING_OF_COVENANTS         = 63856,
    QUEST_VOICES_OF_THE_ETERNAL            = 63857,
    QUEST_TETHER_TO_HOME                   = 60150,
    QUEST_SEEK_THE_ASCENDED                = 59773,
    QUEST_NO_PLACE_FOR_THE_LIVING          = 60148,
    QUEST_AUDIENCE_WITH_THE_ARBITER        = 60149,
    QUEST_A_DOORWAY_THROUGH_THE_VEIL       = 60151,
    QUEST_THE_ETERNAL_CITY                 = 60152,
    QUEST_UNDERSTANDING_THE_SHADOWLANDS    = 60154,
    QUEST_THE_PATH_TO_BASTION              = 60156,
    QUEST_THE_BATTLE_OF_ARDENWEALD         = 63578,

    SCENE_ORIBOS_JUMP_INTO_MAW_PRK         = 3000,
    SCENE_ORIBOS_TO_THE_MAW_SKYJUMP        = 2812,
    SCENE_NO_PLACE_FOR_THE_LIVING          = 342832,  //packageID 3065, sceneID 2608
    SCENE_QUEST_TETHER_TO_HOME             = 355835,  //packageID 2939, sceneID 2571
    SCENE_QUEST_GATE_BASTION               = 344996,  //packageID 2639, sceneID 3112
    SCENE_QUEST_VOICES_OF_THE_ETERNAL      = 351659,  //packageID 3295, sceneID 2784

    MOVIE_AUDIENCE_WITH_THE_ARBITER        = 345622, //MovieId 945
    MOVIE_KINGSMOURNE                      = 349936, //MovieId 949

    SPELL_FLY_TO_MALDRAXXUS                = 334503,
    SPELL_FLY_TO_BASTION                   = 342908,
    SPELL_TELE_TO_ARBITER_ROOM             = 328075,
    SPELL_TELE_TO_RING_OF_FALES            = 328076,

    ACTION_BATTLE_OF_ARDENWEALD_TALK_START = 100,

    EVENT_NO_PLACE_FOR_THE_LIVING_PHASE1 = 1,
    EVENT_AUDIENCE_WITH_THE_ARBITER_PHASE1 = 2,

    EVENT_BATTLE_OF_ARDENWEALD_TALK_START   = 200,
};

//167425 overseer_kah_delen
struct npc_overseer_kah_delen_167425 : public EscortAI
{
public:
    npc_overseer_kah_delen_167425(Creature* creature) : EscortAI(creature) { Reset(); }

    EventMap _events;

private:
    ObjectGuid m_playerGUID;

    void Reset() override
    {
        me->RemoveNpcFlag(UNIT_NPC_FLAG_QUESTGIVER);
        _events.Reset();
        m_playerGUID.Clear();
    }

    void OnQuestAccept(Player* player, Quest const* quest) override
    {
        if (player->ToPlayer())
            m_playerGUID = player->GetGUID();
        if (quest->GetQuestId() == QUEST_NO_PLACE_FOR_THE_LIVING)
        {
            me->RemoveNpcFlag(UNIT_NPC_FLAG_QUESTGIVER);
            me->SetNpcFlag(UNIT_NPC_FLAG_GOSSIP);
        }
    }

    bool OnGossipSelect(Player* player, uint32 MenuID, uint32 gossipListId) override
    {
        ClearGossipMenuFor(player);
        if (MenuID == 25571)
        {
            switch (gossipListId)
            {
            case 0:
                CloseGossipMenuFor(player);
                me->AI()->Talk(2);
                player->KilledMonsterCredit(167425);
                me->RemoveNpcFlag(UNIT_NPC_FLAG_GOSSIP);
                me->SetNpcFlag(UNIT_NPC_FLAG_QUESTGIVER);
                break;

            case 1:
                CloseGossipMenuFor(player);
                player->CastSpell(player, SCENE_NO_PLACE_FOR_THE_LIVING);
                player->KilledMonsterCredit(167425);
                me->RemoveNpcFlag(UNIT_NPC_FLAG_GOSSIP);
                me->SetNpcFlag(UNIT_NPC_FLAG_QUESTGIVER);
                break;
            }
        }
        return true;
    }

    void MoveInLineOfSight(Unit* target) override
    {
        if (!target->IsPlayer())
            return;

        if (Player* player = target->ToPlayer())
            if (target->GetDistance2d(me) <= 10.0f)
                if (player->GetQuestStatus(QUEST_STRANGER_IN_AN_EVEN_STRANGERLAND) == QUEST_STATUS_REWARDED && player->GetQuestStatus(QUEST_NO_PLACE_FOR_THE_LIVING) == QUEST_STATUS_NONE || player->GetQuestStatus(QUEST_AUDIENCE_WITH_THE_ARBITER) == QUEST_STATUS_COMPLETE || player->GetQuestStatus(QUEST_AUDIENCE_WITH_THE_ARBITER) == QUEST_STATUS_REWARDED)
                {
                    me->SetNpcFlag(UNIT_NPC_FLAG_QUESTGIVER);
                }
    }

    void UpdateAI(uint32 diff) override
    {
        EscortAI::UpdateAI(diff);

        _events.Update(diff);

        while (uint32 eventId = _events.ExecuteEvent())
        {
            switch (eventId)
            {
            case EVENT_NO_PLACE_FOR_THE_LIVING_PHASE1:
                me->AI()->Talk(3);
                me->AddDelayedEvent(16000, [this]()
                    {
                        if (Creature* inara = GetClosestCreatureWithEntry(me, 167486, 20.0f))
                        {
                            inara->AI()->Talk(0);
                        }
                    });
                me->AddDelayedEvent(30000, [this]()
                    {
                        if (Creature* sher = GetClosestCreatureWithEntry(me, 167424, 20.0f))
                        {
                            sher->AI()->Talk(1);
                        }
                    });
                me->AddDelayedEvent(40000, [this]()
                    {
                        if (Creature* inara = GetClosestCreatureWithEntry(me, 167486, 20.0f))
                        {
                            inara->AI()->Talk(1);
                        }
                    });
                me->AddDelayedEvent(54000, [this]()
                    {
                        if (Creature* sher = GetClosestCreatureWithEntry(me, 167424, 20.0f))
                        {
                            sher->AI()->Talk(2);
                        }
                    });
                me->AddDelayedEvent(58000, [this]()
                    {
                        if (Player* player = ObjectAccessor::GetPlayer(*me, m_playerGUID))
                        {
                            if (Creature* inara = GetClosestCreatureWithEntry(me, 167486, 20.0f))
                            {
                                inara->DespawnOrUnsummon();
                                if (!player->GetPhaseShift().HasPhase(10062)) PhasingHandler::AddPhase(player, 10062, true);
                            }
                            player->KilledMonsterCredit(167486);
                            me->AI()->Talk(4);
                        }
                    });
                break;
            }
        }
    }

};

//173615 Tal-Inara
struct npc_tal_inara_173615 : public ScriptedAI
{
public:
    npc_tal_inara_173615(Creature* creature) : ScriptedAI(creature) { Reset(); }

    EventMap _events60149;

private:
    ObjectGuid m_playerGUID;

    void Reset() override
    {
        _events60149.Reset();
    }

    bool OnGossipHello(Player* player) override
    {
        if (me->IsQuestGiver())
            player->PrepareQuestMenu(me->GetGUID());
        if (player->HasQuest(QUEST_AUDIENCE_WITH_THE_ARBITER))
        {
            if (!player->GetQuestObjectiveProgress(QUEST_AUDIENCE_WITH_THE_ARBITER, 1))
                AddGossipItemFor(player, GossipOptionNpc::None, "What is this place?", 26362, GOSSIP_ACTION_INFO_DEF + 1);

            if (player->GetQuestObjectiveProgress(QUEST_AUDIENCE_WITH_THE_ARBITER, 1) && !player->GetQuestObjectiveProgress(QUEST_AUDIENCE_WITH_THE_ARBITER, 2))
                AddGossipItemFor(player, GossipOptionNpc::None, "I am ready to return.", 26362, GOSSIP_ACTION_INFO_DEF + 2);
        }
        if (player->HasQuest(QUEST_VOICES_OF_THE_ETERNAL))
        {
            if (!player->GetQuestObjectiveProgress(QUEST_VOICES_OF_THE_ETERNAL, 0))
            {
                ClearGossipMenuFor(player);
                SendGossipMenuFor(player, 42835, me->GetGUID());  // Show Next gossip and should not close
                AddGossipItemFor(player, GossipOptionNpc::None, "I'm ready to begin.", 26362, GOSSIP_ACTION_INFO_DEF + 3);
            }

            if (player->GetQuestObjectiveProgress(QUEST_VOICES_OF_THE_ETERNAL, 0) && !player->GetQuestObjectiveProgress(QUEST_VOICES_OF_THE_ETERNAL, 1))
            {
                ClearGossipMenuFor(player);
                SendGossipMenuFor(player, 42835, me->GetGUID());  // Show Next gossip and should not close
                AddGossipItemFor(player, GossipOptionNpc::None, "<Leave the Arbiter's Chamber.>", 26362, GOSSIP_ACTION_INFO_DEF + 4);
            }
        }
        SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());

        return true;
    }

    bool OnGossipSelect(Player* player, uint32 MenuID, uint32 gossipListId) override
    {
        uint32 const action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);
        ClearGossipMenuFor(player);
        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF + 1:
            CloseGossipMenuFor(player);
            m_playerGUID = player->GetGUID();
            me->RemoveNpcFlag(UNIT_NPC_FLAG_GOSSIP);
            player->KilledMonsterCredit(167425);
            player->CastSpell(player, MOVIE_AUDIENCE_WITH_THE_ARBITER);
            break;

        case GOSSIP_ACTION_INFO_DEF + 2:
            CloseGossipMenuFor(player);
            player->ForceCompleteQuest(QUEST_AUDIENCE_WITH_THE_ARBITER);
            player->CastSpell(player, 328076);
            break;

        case GOSSIP_ACTION_INFO_DEF + 3:
            CloseGossipMenuFor(player);
            player->KilledMonsterCredit(177571);
            player->CastSpell(player, SCENE_QUEST_VOICES_OF_THE_ETERNAL);
            break;

        case GOSSIP_ACTION_INFO_DEF + 4:
            CloseGossipMenuFor(player);
            player->ForceCompleteQuest(QUEST_VOICES_OF_THE_ETERNAL);
            player->CastSpell(player, SPELL_TELE_TO_RING_OF_FALES);
            break;
        }
        return true;
    }

    void UpdateAI(uint32 diff) override
    {
        _events60149.Update(diff);

        while (uint32 eventId = _events60149.ExecuteEvent())
        {
            switch (eventId)
            {
            case EVENT_AUDIENCE_WITH_THE_ARBITER_PHASE1:
                me->AI()->Talk(0);
                me->AddDelayedEvent(6000, [this]()
                    {
                        me->AI()->Talk(1);
                    });
                me->AddDelayedEvent(24000, [this]()
                    {
                        if (Player* player = ObjectAccessor::GetPlayer(*me, m_playerGUID))
                            player->KilledMonsterCredit(175541);
                        me->AI()->Talk(2);
                        me->SetNpcFlag(UNIT_NPC_FLAG_GOSSIP);
                    });
                break;
            }
        }
    }
};

//173615 Tal-Inara
struct npc_tal_inara_159478 : public ScriptedAI
{
public:
    npc_tal_inara_159478(Creature* creature) : ScriptedAI(creature) { Reset(); }

    bool OnGossipHello(Player* player) override
    {
        if (me->IsQuestGiver())
            player->PrepareQuestMenu(me->GetGUID());
        if (player->HasQuest(QUEST_A_GATHERING_OF_COVENANTS))
        {
            AddGossipItemFor(player, GossipOptionNpc::None, "I am ready", 26283, GOSSIP_ACTION_INFO_DEF + 0);
        }
        SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());

        return true;
    }

    bool OnGossipSelect(Player* player, uint32 MenuID, uint32 gossipListId) override
    {
        uint32 const action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);
        ClearGossipMenuFor(player);
        if (player->HasQuest(QUEST_A_GATHERING_OF_COVENANTS))
        {
            player->ForceCompleteQuest(QUEST_A_GATHERING_OF_COVENANTS);
            player->CastSpell(player, SPELL_TELE_TO_ARBITER_ROOM);
        }

        return true;
    }

};

//170153 Lady Jaina Proudmoore
struct npc_jaina_proudmoore_170153 : public ScriptedAI
{
public:
    npc_jaina_proudmoore_170153(Creature* creature) : ScriptedAI(creature) { Reset(); }

    bool OnGossipHello(Player* player) override
    {
        if (me->IsQuestGiver())
            player->PrepareQuestMenu(me->GetGUID());

            AddGossipItemFor(player, GossipOptionNpc::None, "How did you escape the Maw?", 25899, GOSSIP_ACTION_INFO_DEF + 0);

        SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, uint32 MenuID, uint32 gossipListId) override
    {
        if (gossipListId == 0)
        {
            player->PrepareQuestMenu(me->GetGUID());
            ClearGossipMenuFor(player);
            SendGossipMenuFor(player, 41010, me->GetGUID());  // Show Next gossip and should not close
        }
        return true;
    }

};

//171128 Thrall
struct npc_thralle_171128 : public ScriptedAI
{
public:
    npc_thralle_171128(Creature* creature) : ScriptedAI(creature) { Reset(); }

    bool OnGossipHello(Player* player) override
    {
        player->PrepareQuestMenu(me->GetGUID());
        AddGossipItemFor(player, GossipOptionNpc::None, "How did you escape the Maw?", 26543, GOSSIP_ACTION_INFO_DEF + 0);
        SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, uint32 MenuID, uint32 gossipListId) override
    {
        if (gossipListId == 0)
        {
            player->PrepareQuestMenu(me->GetGUID());
            ClearGossipMenuFor(player);
            SendGossipMenuFor(player, 42138, me->GetGUID());  // Show Next gossip and should not close
        }
        return true;
    }

};

//164079 Highlord Bolvar Fordragon
struct npc_highlord_bolvar_fordragon_164079 : public ScriptedAI
{
public:
    npc_highlord_bolvar_fordragon_164079(Creature* creature) : ScriptedAI(creature) { Initialize(); }

private:
    bool say60152;
    EventMap m_events;
    TaskScheduler _scheduler;

    void Initialize()
    {
        m_events.Reset();
    }

    void Reset() override
    {
        say60152 = false;
    }

    void OnQuestAccept(Player* player, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_A_DOORWAY_THROUGH_THE_VEIL)
        {
            if (Creature* sher = GetClosestCreatureWithEntry(player, 167424, 20.0f))
                sher->AI()->Talk(3);
            player->GetScheduler().Schedule(Milliseconds(13000), [this, player](TaskContext context)
                {
                    if (Creature* delen = GetClosestCreatureWithEntry(player, 167425, 20.0f))
                        delen->AI()->Talk(5);
                }).Schedule(Milliseconds(25000), [this, player](TaskContext context)
                    {
                        me->AI()->Talk(0, player);
                    });
        }
    }


    void OnQuestReward(Player* player, Quest const* quest, LootItemType type, uint32 /*opt*/) override
    {
        if (quest->GetQuestId() == QUEST_THE_FIRST_MOVE)
        {
            if (Creature* tal = me->FindNearestCreature(159478, 20.0f))
                if (tal->GetSpawnId() == 346028)
                {
                    player->GetScheduler().Schedule(Milliseconds(3000), [tal](TaskContext context)
                        {
                            tal->AI()->Talk(0);
                        });
                }
        }
    }

    void MoveInLineOfSight(Unit* target) override
    {
        if (!target->IsPlayer())
            return;

        if (Player* player = target->ToPlayer())
            if (target->GetDistance2d(me) <= 15.0f)
                if (player->GetQuestStatus(QUEST_THE_ETERNAL_CITY) == QUEST_STATUS_INCOMPLETE
                    && !player->GetQuestObjectiveProgress(QUEST_THE_ETERNAL_CITY, 4)
                    && player->GetQuestObjectiveProgress(QUEST_THE_ETERNAL_CITY, 5))
                {
                    if (!say60152)
                    {
                        me->AI()->Talk(1);
                        player->GetScheduler().Schedule(Milliseconds(13000), [this, player](TaskContext context)
                            {
                                player->KilledMonsterCredit(167424);
                                if (Creature* inara = GetClosestCreatureWithEntry(player, 167486, 20.0f))
                                    inara->AI()->Talk(3);
                            });
                        say60152 = true;
                    }
                }
    }

    void DoAction(int32 action) override
    {
        if (action == ACTION_BATTLE_OF_ARDENWEALD_TALK_START)
        {
            m_events.ScheduleEvent(EVENT_BATTLE_OF_ARDENWEALD_TALK_START, 2s);
        }
    }

    void UpdateAI(uint32 diff) override
    {
        _scheduler.Update(diff);

        m_events.Update(diff);

        while (uint32 eventId = m_events.ExecuteEvent())
        {
            switch (eventId)
            {
            case EVENT_BATTLE_OF_ARDENWEALD_TALK_START:
            {
                 Talk(3);
                _scheduler.Schedule(Milliseconds(10000), [this](TaskContext context)
                    {
                        if (Creature* darion = me->FindNearestCreature(170640, 30.0f))
                            darion->AI()->Talk(0);
                    }).Schedule(Milliseconds(13000), [this](TaskContext context)
                        {
                            if (Creature* thral = me->FindNearestCreature(171128, 30.0f))
                                thral->AI()->Talk(0);
                        }).Schedule(Milliseconds(20000), [this](TaskContext context)
                            {
                                me->GetMotionMaster()->MovePath(16407901, false);
                                if (Creature* jaina = me->FindNearestCreature(170153, 30.0f))
                                {
                                    jaina->AI()->Talk(0);
                                    jaina->GetMotionMaster()->MovePath(16407901, false);
                                    jaina->DespawnOrUnsummon(30s, 60s);
                                }
                            }).Schedule(Milliseconds(28000), [this](TaskContext context)
                                {
                                    Talk(4);
                                });
                break;
            }
            }
        }
    }

    void MovementInform(uint32 type, uint32 id) override
    {
        switch (type)
        {
        case WAYPOINT_MOTION_TYPE:
        {

            if (id == 7)
            {
                me->DespawnOrUnsummon(3s, 60s);
                break;
            }
        }
        }
    }
};


//175132 pathscriberoh
class npc_pathscribe_roh_175132 : public CreatureScript
{
public:
    npc_pathscribe_roh_175132() : CreatureScript("npc_pathscribe_roh_175132") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_pathscribe_roh_175132AI(creature);
    }

    struct npc_pathscribe_roh_175132AI : public ScriptedAI
    {
        npc_pathscribe_roh_175132AI(Creature* me) : ScriptedAI(me) { }

        bool OnGossipHello(Player* player) override
        {
            if (me->IsQuestGiver())
                player->PrepareQuestMenu(me->GetGUID());
            if (player->HasQuest(QUEST_IF_U_WANT_PEACE))
            {
                AddGossipItemFor(player, GossipOptionNpc::None, "Im ready to go to Maldraxxus.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 0);
            }
            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());

            return true;
        }

        bool OnGossipSelect(Player* player, uint32 MenuID, uint32 gossipListId) override
        {
            uint32 const action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);
            ClearGossipMenuFor(player);
            if (action == GOSSIP_ACTION_INFO_DEF + 0)//Maldraxxus
            {
                player->ForceCompleteQuest(QUEST_IF_U_WANT_PEACE);
                player->CastSpell(player, SPELL_FLY_TO_MALDRAXXUS);
            }

            return true;
        }
    };
};

////175133 pathscriberoh
class npc_pathscribe_roh_175133 : public CreatureScript
{
public:
    npc_pathscribe_roh_175133() : CreatureScript("npc_pathscribe_roh_175133") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_pathscribe_roh_175133AI(creature);
    }

    struct npc_pathscribe_roh_175133AI : public ScriptedAI
    {
        npc_pathscribe_roh_175133AI(Creature* creature) : ScriptedAI(creature) { }

        bool OnGossipHello(Player* player) override
        {
            if (me->IsQuestGiver())
                player->PrepareQuestMenu(me->GetGUID());
            if (player->HasQuest(QUEST_SEEK_THE_ASCENDED))
            {
                AddGossipItemFor(player, GossipOptionNpc::None, "Im ready to go to Bastion.", 26679, GOSSIP_ACTION_INFO_DEF + 0);
            }
            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());

            return true;
        }

        bool OnGossipSelect(Player* player, uint32 sender, uint32 gossipListId) override
        {
            uint32 const action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);
            ClearGossipMenuFor(player);
            if (action == GOSSIP_ACTION_INFO_DEF + 0)//Bastion
            {
                CloseGossipMenuFor(player);
                player->ForceCompleteQuest(QUEST_SEEK_THE_ASCENDED);
                player->CastSpell(player, SPELL_FLY_TO_BASTION);
            }

            return true;
        }
    };
};

//177136 polemarch_adrestes
class npc_polemarch_adrestes_177136 : public CreatureScript
{
public:
    npc_polemarch_adrestes_177136() : CreatureScript("npc_polemarch_adrestes_177136") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_polemarch_adrestes_177136AI(creature);
    }

    struct npc_polemarch_adrestes_177136AI : public ScriptedAI
    {
        npc_polemarch_adrestes_177136AI(Creature* creature) : ScriptedAI(creature) { }

        bool OnGossipHello(Player* player) override
        {
            if (me->IsQuestGiver())
                player->PrepareQuestMenu(me->GetGUID());
            if (player->HasQuest(QUEST_THE_FIRST_MOVE))
            {
                AddGossipItemFor(player, GossipOptionNpc::None, "<Ask Adrestes what happened in Elysian Hold.>", 26131, GOSSIP_ACTION_INFO_DEF + 0);
            }
            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());

            return true;
        }

        bool OnGossipSelect(Player* player, uint32 MenuID, uint32 gossipListId) override
        {
            uint32 const action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);
            ClearGossipMenuFor(player);
            if (action == GOSSIP_ACTION_INFO_DEF + 0)//Maldraxxus
            {

                if (player->HasQuest(QUEST_THE_FIRST_MOVE))
                {
                    player->ForceCompleteQuest(QUEST_THE_FIRST_MOVE);
                    player->CastSpell(player, MOVIE_KINGSMOURNE);
                }
                    
            }

            return true;
        }
    };
};

//177141 Lady Moonberry
struct npc_lady_moonberry_177141 : public  EscortAI
{
public:
    npc_lady_moonberry_177141(Creature* creature) : EscortAI(creature) {}

    void OnQuestAccept(Player* player, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_THE_BATTLE_OF_ARDENWEALD)
        {
            if (Creature* bolvar = me->FindNearestCreature(164079, 30.0f))
                bolvar->AI()->DoAction(ACTION_BATTLE_OF_ARDENWEALD_TALK_START);
            if (Creature* mistblade = me->FindNearestCreature(177205, 20.0f))
            {
                mistblade->GetMotionMaster()->MoveFollow(me, 0.5f, me->GetFollowAngle());
                mistblade->DespawnOrUnsummon(20s, 60s);
            }
            if (Creature* draven = me->FindNearestCreature(177250, 20.0f))
            {
                draven->GetMotionMaster()->MoveFollow(me, 2.0f, me->GetFollowAngle());
                draven->DespawnOrUnsummon(20s, 60s);
            }   
            me->GetMotionMaster()->MovePath(17714101, false);
        }
    }

    void MovementInform(uint32 type, uint32 id) override
    {
        switch (type)
        {
        case WAYPOINT_MOTION_TYPE:
        {
            if (id == 2)
            {
                if (Creature* mevix = me->FindNearestCreature(177126, 100.0f))
                {
                    mevix->GetMotionMaster()->MoveFollow(me, 3.0f, me->GetFollowAngle());
                    mevix->DespawnOrUnsummon(20s, 60s);
                }
                if (Creature* plague = me->FindNearestCreature(178414, 100.0f))
                {
                    plague->GetMotionMaster()->MoveFollow(me, 3.0f, me->GetFollowAngle());
                    plague->DespawnOrUnsummon(20s, 60s);
                }
                if (Creature* kleia = me->FindNearestCreature(177123, 100.0f))
                {
                    kleia->GetMotionMaster()->MoveFollow(me, 3.0f, me->GetFollowAngle());
                    kleia->DespawnOrUnsummon(20s, 60s);
                }
                break;
            }
            if (id == 9)
            {
                me->DespawnOrUnsummon(3s, 60s);
                break;
            }
        }
        }
    }

};

// 178292 Anima Wyrm
struct npc_anima_wyrm_178292 : public ScriptedAI
{
public:
    npc_anima_wyrm_178292(Creature* creature) : ScriptedAI(creature) { }

    void OnSpellClick(Unit* clicker, bool /*spellClickHandled*/) override
    {
        if (Player* player = clicker->ToPlayer())
        {
            if (player->HasQuest(QUEST_THE_BATTLE_OF_ARDENWEALD))
            {
                player->KilledMonsterCredit(178291);
                player->SummonCreature(178291, player->GetPosition(), TEMPSUMMON_MANUAL_DESPAWN);
            }
        }
    }
};

struct IntoTheMaw : public PlayerScript
{
public:
    IntoTheMaw() : PlayerScript("IntoTheMaw") { }

private:
    bool IntoMaw;

    void OnUpdate(Player* player, uint32 diff) override
    {
        if (!player->HasQuest(QUEST_INTO_THE_MAW) || player->GetLevel() != 60)
            return;

        IntoMaw = false;

        if (player->IsFalling() && player->GetPositionZ() <= 5416.469f && player->GetAreaId() == 13499 && !IntoMaw)
        {
            IntoMaw = true;
            player->GetSceneMgr().PlaySceneByPackageId(SCENE_ORIBOS_JUMP_INTO_MAW_PRK, SceneFlag::None);
        }
    }

    void OnSceneComplete(Player* player, uint32 sceneInstanceID) override
    {
        if (player->GetSceneMgr().GetSceneTemplateFromInstanceId(sceneInstanceID)->SceneId == 2608)
        {
            player->SummonCreature(167486, Position(-1918.77f, 1375.15f, 5267.25f, 2.35871f), TEMPSUMMON_MANUAL_DESPAWN);
            if (Creature* delen = GetClosestCreatureWithEntry(player, 167425, 20.0f))
            {
                CAST_AI(npc_overseer_kah_delen_167425, delen->AI())->_events.ScheduleEvent(EVENT_NO_PLACE_FOR_THE_LIVING_PHASE1, 2s);; // Start Event phase
            }
        }

        if (player->GetSceneMgr().GetSceneTemplateFromInstanceId(sceneInstanceID)->SceneId == 2571)
        {
            if (player->GetQuestStatus(QUEST_TETHER_TO_HOME) == QUEST_STATUS_INCOMPLETE)
            {
                player->ForceCompleteQuest(QUEST_TETHER_TO_HOME);
                if (!player->GetPhaseShift().HasPhase(10063)) PhasingHandler::AddPhase(player, 10063, true);
            }
        }

        if (player->GetSceneMgr().GetSceneTemplateFromInstanceId(sceneInstanceID)->SceneId == 2639)
        {
            if (player->GetQuestStatus(QUEST_THE_PATH_TO_BASTION) == QUEST_STATUS_INCOMPLETE)
            {
                player->ForceCompleteQuest(QUEST_THE_PATH_TO_BASTION);
                if (player->GetPhaseShift().HasPhase(10061)) PhasingHandler::RemovePhase(player, 10061, true);
                if (player->GetPhaseShift().HasPhase(10062)) PhasingHandler::RemovePhase(player, 10062, true);
                if (!player->GetPhaseShift().HasPhase(10063)) PhasingHandler::AddPhase(player, 10063, true);
            }
        }
    }

    void OnMovieComplete(Player* player, uint32 movieId)
    {
        if (movieId == 945)
        {
            if (Creature* inara = GetClosestCreatureWithEntry(player, 173615, 20.0f))
            {
                CAST_AI(npc_tal_inara_173615, inara->AI())->_events60149.ScheduleEvent(EVENT_AUDIENCE_WITH_THE_ARBITER_PHASE1, 3s);; // Start Event phase
            }
        }
    }

    void OnUpdateArea(Player* player, uint32 /*newArea*/, uint32 /*oldArea*/) override
    {

        if (player->GetAreaId() == 10565) //Oribos
        {
            if (!player->HasQuest(QUEST_STRANGER_IN_AN_EVEN_STRANGERLAND))
            {
                if (const Quest* quest = sObjectMgr->GetQuestTemplate(QUEST_STRANGER_IN_AN_EVEN_STRANGERLAND))
                    if (player->GetQuestStatus(QUEST_STRANGER_IN_AN_EVEN_STRANGERLAND) == QUEST_STATUS_NONE)
                    {
                        player->AddQuest(quest, nullptr);
                    }
                player->GetScheduler().Schedule(Milliseconds(2000), [this, player](TaskContext context)
                    {
                        if (!player->GetPhaseShift().HasPhase(10060)) PhasingHandler::AddPhase(player, 10060, true);
                    });
            }
            if (player->GetQuestStatus(QUEST_STRANGER_IN_AN_EVEN_STRANGERLAND) == QUEST_STATUS_INCOMPLETE)
            {
                player->GetScheduler().Schedule(Milliseconds(3000), [this, player](TaskContext context)
                    {
                        if (!player->GetPhaseShift().HasPhase(10061)) PhasingHandler::AddPhase(player, 10061, true);
                    });
            }
            if (player->GetQuestStatus(QUEST_STRANGER_IN_AN_EVEN_STRANGERLAND) == QUEST_STATUS_REWARDED)
            {
                if (player->GetPhaseShift().HasPhase(10061)) PhasingHandler::RemovePhase(player, 10061, true);
            }
            if (player->GetQuestStatus(QUEST_A_DOORWAY_THROUGH_THE_VEIL) == QUEST_STATUS_REWARDED)
            {
                if (player->GetPhaseShift().HasPhase(10063)) PhasingHandler::RemovePhase(player, 10063, true);
                if (!player->GetPhaseShift().HasPhase(10064)) PhasingHandler::AddPhase(player, 10064, true);
            }
            if (player->GetQuestStatus(QUEST_THE_FIRST_MOVE) == QUEST_STATUS_REWARDED)
            {
                if (!player->GetPhaseShift().HasPhase(10069)) PhasingHandler::AddPhase(player, 10069, true);
                if (!player->GetPhaseShift().HasPhase(10070)) PhasingHandler::AddPhase(player, 10070, true);
            }
            if (!player->GetPhaseShift().HasPhase(10060)) PhasingHandler::AddPhase(player, 10060, true);
        }

        if (player->GetAreaId() == 13499) //Ring of Fates
        {
            if (!player->HasQuest(QUEST_THE_FIRST_MOVE))
            {
                if (const Quest* quest = sObjectMgr->GetQuestTemplate(QUEST_THE_FIRST_MOVE))
                    if (player->GetQuestStatus(QUEST_THE_FIRST_MOVE) == QUEST_STATUS_NONE)
                    {
                        player->AddQuest(quest, nullptr);
                    }
            }
            if (player->GetQuestStatus(QUEST_STRANGER_IN_AN_EVEN_STRANGERLAND) == QUEST_STATUS_INCOMPLETE)
            {
                if (!player->GetPhaseShift().HasPhase(10061)) PhasingHandler::AddPhase(player, 10061, true);
            }
            if (player->GetQuestStatus(QUEST_NO_PLACE_FOR_THE_LIVING) == QUEST_STATUS_REWARDED)
            {
                if (player->GetPhaseShift().HasPhase(10061)) PhasingHandler::RemovePhase(player, 10061, true);
                if (!player->GetPhaseShift().HasPhase(10062)) PhasingHandler::AddPhase(player, 10062, true);
            }
            if (player->GetQuestStatus(QUEST_TETHER_TO_HOME) == QUEST_STATUS_REWARDED)
            {
                if (!player->GetPhaseShift().HasPhase(10063)) PhasingHandler::AddPhase(player, 10063, true);
            }
            if (player->GetQuestStatus(QUEST_A_DOORWAY_THROUGH_THE_VEIL) == QUEST_STATUS_COMPLETE
                || player->GetQuestStatus(QUEST_A_DOORWAY_THROUGH_THE_VEIL) == QUEST_STATUS_REWARDED)
            {
                if (player->GetPhaseShift().HasPhase(10062)) PhasingHandler::RemovePhase(player, 10062, true);
                if (player->GetPhaseShift().HasPhase(10063)) PhasingHandler::RemovePhase(player, 10063, true);
                if (!player->GetPhaseShift().HasPhase(10064)) PhasingHandler::AddPhase(player, 10064, true);
            }
            if (player->GetQuestStatus(QUEST_A_GATHERING_OF_COVENANTS) == QUEST_STATUS_REWARDED)
            {
                if (player->GetPhaseShift().HasPhase(10061)) PhasingHandler::RemovePhase(player, 10061, true);
                if (!player->GetPhaseShift().HasPhase(10069)) PhasingHandler::AddPhase(player, 10069, true);
            }
            player->GetScheduler().Schedule(Milliseconds(2000), [this, player](TaskContext context)
                {
                    if (!player->GetPhaseShift().HasPhase(10060)) PhasingHandler::AddPhase(player, 10060, true);
                });
            if (!player->GetPhaseShift().HasPhase(10069)) PhasingHandler::AddPhase(player, 10069, true);
        }

        if (player->GetAreaId() == 13498) //Ring of Transference
        {
            if (player->HasQuest(QUEST_UNDERSTANDING_THE_SHADOWLANDS)
                || player->GetQuestStatus(QUEST_UNDERSTANDING_THE_SHADOWLANDS) == QUEST_STATUS_REWARDED)
            {
                player->GetScheduler().Schedule(Milliseconds(2000), [this, player](TaskContext context)
                    {
                        if (!player->GetPhaseShift().HasPhase(10060)) PhasingHandler::AddPhase(player, 10060, true);
                        if (!player->GetPhaseShift().HasPhase(10061)) PhasingHandler::AddPhase(player, 10061, true);
                    });
            }
            if (player->GetQuestStatus(QUEST_THE_PATH_TO_BASTION) == QUEST_STATUS_REWARDED)
            {
                if (player->GetPhaseShift().HasPhase(10061)) PhasingHandler::RemovePhase(player, 10061, true);
                if (player->GetPhaseShift().HasPhase(10062)) PhasingHandler::RemovePhase(player, 10062, true);
                if (!player->GetPhaseShift().HasPhase(10063)) PhasingHandler::AddPhase(player, 10063, true);
            }
        }

        if (player->GetAreaId() == 13437) //Ve'nari's Refuge
            if (player->GetQuestStatus(QUEST_INTO_THE_MAW) == QUEST_STATUS_INCOMPLETE)
            {
                player->ForceCompleteQuest(QUEST_INTO_THE_MAW);
                player->GetSceneMgr().PlaySceneByPackageId(SCENE_ORIBOS_TO_THE_MAW_SKYJUMP, SceneFlag::None);
            }
    }
};



void AddSC_zone_oribos()
{
    RegisterCreatureAI(npc_overseer_kah_delen_167425);
    RegisterCreatureAI(npc_tal_inara_173615);
    RegisterCreatureAI(npc_tal_inara_159478);
    RegisterCreatureAI(npc_jaina_proudmoore_170153);
    RegisterCreatureAI(npc_thralle_171128);
    RegisterCreatureAI(npc_highlord_bolvar_fordragon_164079);
    new npc_pathscribe_roh_175132();
    new npc_pathscribe_roh_175133();
    new npc_polemarch_adrestes_177136();
    RegisterCreatureAI(npc_lady_moonberry_177141);
    RegisterCreatureAI(npc_anima_wyrm_178292);
    RegisterPlayerScript(IntoTheMaw);
}
