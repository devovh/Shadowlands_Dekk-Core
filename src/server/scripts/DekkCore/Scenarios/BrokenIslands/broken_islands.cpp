/*######
## DekkCore
## The Broken Islands Scenario
######*/

#include "LFGMgr.h"
#include "LFGQueue.h"
#include "LFGPackets.h"
#include "broken_islands.h"
#include "DynamicObject.h"
#include "ScriptedEscortAI.h"
#include "CreatureTextMgr.h"
#include "MiscPackets.h"
#include "TemporarySummon.h"
#include "GameObjectAI.h"
#include "CreatureGroups.h"
#include "Transport.h"
#include "Group.h"

//! 227058 Leave for Broken Shore Queue
class spell_broken_shore_queue : public SpellScriptLoader
{
public:
    spell_broken_shore_queue() : SpellScriptLoader("spell_broken_shore_queue") { }

    class spell_broken_shore_queue_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_broken_shore_queue_SpellScript);

        enum data
        {
            QUEST = 42740,
            NPC_CONV = 581
        };

        void HandleScriptEffect(SpellEffIndex effIndex)
        {
            PreventHitDefaultEffect(EFFECT_0);
            if (Unit* caster = GetCaster())
            {
                Player *player = caster->ToPlayer();
                if (!player)
                    return;

                std::set<uint32> Slot;
                Slot.insert(908);
                sLFGMgr->JoinLfg(player, player->GetSpecializationRoleMaskForGroup(), Slot);
            }
        }

        void Register() override
        {
            OnEffectHitTarget += SpellEffectFn(spell_broken_shore_queue_SpellScript::HandleScriptEffect, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_broken_shore_queue_SpellScript();
    }
};


//! 217781 phase update.
class spell_bi_enter_stage1 : public SpellScriptLoader
{
public:
    spell_bi_enter_stage1() : SpellScriptLoader("spell_bi_enter_stage1") { }

    class spell_bi_enter_stage1_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_bi_enter_stage1_AuraScript);


        void OnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            if (Unit* caster = GetCaster())
            {
                Player *player = caster->ToPlayer();
                if (!player)
                    return;


                Map* m = player->FindMap();
                if (!m)
                    return;
                InstanceScript *script = player->GetInstanceScript();
                if (!script)
                    return;

                ObjectGuid guid = script->GetGuidData(player->GetTeam() == HORDE ? GO_HORDE_SHIP : GO_ALLIANCE_SHIP);
                if (!guid)
                    return;


                //scenation ID 1189 step 0
            //    player->UpdateAchievementCriteria(CRITERIA_TYPE_SCRIPT_EVENT_2, 54140);

                //scenation ID 786 step 0
             //   player->UpdateAchievementCriteria(CRITERIA_TYPE_SCRIPT_EVENT_2, 44060);


                Map::PlayerList const &PlList = player->GetMap()->GetPlayers();

                if (PlList.isEmpty())
                    return;

                for (Map::PlayerList::const_iterator i = PlList.begin(); i != PlList.end(); ++i)
                    if (Player* plr = i->GetSource())
                    {
                        if (TransportBase* transport = plr->GetTransport())
                        {
                            transport->RemovePassenger(plr);
                            plr->SetTransport(NULL);
                            plr->m_movementInfo.transport.Reset();
                        }

                        plr->SendMovieStart(486);
                        plr->CastSpell(plr, plr->GetTeam() == ALLIANCE ? 199358 : 225152, false);
                    }
            }
        }

        void Register() override
        {
            AfterEffectApply += AuraEffectApplyFn(spell_bi_enter_stage1_AuraScript::OnApply, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_bi_enter_stage1_AuraScript();
    }
};

//! 182420 scene 6
class spell_scenarion_bi_step_6 : public SpellScriptLoader
{
public:
    spell_scenarion_bi_step_6() : SpellScriptLoader("spell_scenarion_bi_step_6") { }

    class spell_scenarion_bi_step_6_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_scenarion_bi_step_6_SpellScript);

        enum data
        {
            CRITERIA_VALUE = 53062,
        };


        void HandleScriptEffect(SpellEffIndex effIndex)
        {
            Unit* p = GetOriginalCaster();
            if (!p)
                return;

            Player *player = p->ToPlayer();
            if (!player)
                return;

            //criteria 31029. rew. 2
          //  player->UpdateAchievementCriteria(CRITERIA_TYPE_SCRIPT_EVENT_2, CRITERIA_VALUE);
        }

        void Register() override
        {
            OnEffectLaunchTarget += SpellEffectFn(spell_scenarion_bi_step_6_SpellScript::HandleScriptEffect, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_scenarion_bi_step_6_SpellScript();
    }
};

struct scenarion_bi_heroesl_baseAI : ScriptedAI
{
    scenarion_bi_heroesl_baseAI(Creature* creature) : ScriptedAI(creature)
    {
        me->setActive(true);
    }

    FormationInfo* group{};
    std::vector<uint32> npcForSearch{};

    void GetNPCAroundAndDoAction(std::function<void(Creature*)>&& function, uint8 groupai = 0)
    {
        if (!group)
        {
            group = sFormationMgr->CreateCustomFormation(me);
            if (groupai)
                group->GroupAI = groupai;

            std::list<Creature*> guards{};
            me->GetCreatureListInGrid(guards, 150.0f);

            guards.remove_if([this](Creature* creature)
                {
                    if (!creature)
                        return true;

                    if (creature->HasUnitFlag2(UNIT_FLAG2_FEIGN_DEATH))
                        return true;

                    if (creature->GetEntry() == me->GetEntry())
                        return true;

                    for (uint32 entry : npcForSearch)
                        if (creature->GetEntry() == entry)
                            return false;

                    return true;
                });

            std::vector<uint32> specailNps{};
            switch (me->GetEntry())
            {
            case NPC_VARIAN:
                specailNps.push_back(90717);
                // no break
            case 90717:
                specailNps.push_back(NPC_JAINA);
                break;
            case NPC_SYLVANA:
                specailNps.push_back(90708);
                // no break;
            case 90708:
                specailNps.push_back(90711);
                break;
            }

            for (auto id : specailNps)
                if (auto script = me->GetInstanceScript())
                    if (Creature* cre = script->instance->GetCreature(script->GetGuidData(id)))
                        guards.push_back(cre);

            for (std::list<Creature*>::iterator itr = guards.begin(); itr != guards.end(); ++itr)
            {
                if (CreatureGroup* f = me->GetFormation())
                {
                    bool needAdd = true;
                    if (auto targetF = (*itr)->GetFormation())
                    {
                        if (targetF->GetLeader() && targetF->GetLeader() == f->GetLeader())
                            needAdd = false;
                        else
                            sFormationMgr->RemoveCreatureFromGroup(targetF, (*itr));
                    }

                    if (needAdd)
                    {
                        auto newF = new FormationInfo(*group);
                        newF->FollowAngle = urand((180 - 60) / 4, (180 + 60) / 4) * 4 * M_PI / 180;

                        if (urand(1, 2) == 1)
                            newF->FollowAngle += M_PI;

                        newF->FollowDist = abs(float(urand(1, 2) * 3) / cos(newF->FollowAngle));

                        f->AddMember((*itr));
                    }
                }
                function((*itr));
            }
        }
        else if (CreatureGroup* f = me->GetFormation())
        {
            for (auto& pair : f->GetMembers())
            {
                function(pair.first);

                if (groupai)
                    pair.second->GroupAI = groupai;
            }
        }
    }
};


class scenarion_bi_heroes : public CreatureScript
{
public:
    scenarion_bi_heroes() : CreatureScript("scenarion_bi_heroes") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new scenarion_bi_heroeslAI(creature);
    }

    struct scenarion_bi_heroeslAI : public ScriptedAI
    {
        scenarion_bi_heroeslAI(Creature* creature) : ScriptedAI(creature) 
        {
            if (me->GetEntry() == 90717 || me->GetEntry() == 90714)
                me->SetReactState(REACT_AGGRESSIVE);

            std::vector<uint32> npcForSearch{};

            npcForSearch = { 90713, 90714, 90716, 90717, 91353, 91949, 92074,/* 92122,*/ 92586, 93219, 97486, 97496, 101057 };
        }

        bool introEvent = false;
        uint32 currentWP = 0;
        EventMap events;
        std::list<ObjectGuid> targetList;

        bool check1{}, check2{}, tempcheck{}, firstcheck{};

        void Reset() override
        {
            events.Reset();
        }

        void MovementInform(uint32 moveType, uint32 pointId) override
        {
            switch (me->GetEntry())
            {
            case NPC_VARIAN:
                if (moveType == WAYPOINT_MOTION_TYPE && currentWP == 439145 && pointId == 5)
                {
                    currentWP = 0;

                    me->AddDelayedEvent(3000, [this]() -> void
                        {
                            if (Creature* targ = me->FindNearestCreature(90716, 40.0f, true))
                                targ->AI()->Talk(0);

                            me->SetHomePosition(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetOrientation());

                          /*  GetNPCAroundAndDoAction([](Creature* cre)
                                {
                                    cre->SetReactState(REACT_AGGRESSIVE);
                                    cre->RemoveUnitFlag(UNIT_FLAG_IMMUNE_TO_NPC);
                                });*/

                            if (auto script = me->GetInstanceScript())
                                if (Creature* cre = script->instance->GetCreature(script->GetGuidData(NPC_JAINA)))
                                {
                                    cre->AddDelayedEvent(2000, [cre]() -> void
                                        {
                                            cre->AI()->Talk(3);
                                            cre->CastSpell(cre, 220571);

                                            cre->AddDelayedEvent(6000, [cre]() -> void
                                                {
                                                    cre->RemoveAura(220571);
                                                  //  cre->SummonGameObject(242549, 1420.85f, 2107.47f, 21.659f, 1.8675f, 0.0f, 0.0f, 0.0f, 0.0f, DAY);
                                                });
                                        });
                                }
                            if (CreatureGroup* f = me->GetFormation())
                                for (auto& pair : f->GetMembers())
                                {
                                    pair.second->FollowAngle = urand((180 - 35) / 4, (180 + 35) / 4) * 4 * M_PI / 180;
                                    pair.second->FollowDist = abs(float(urand(2, 3) * 3) / cos(pair.second->FollowAngle));
                                }

                          /*  me->AddDelayedEvent(3000, [this]() -> void
                                {
                                    GetNPCAroundAndDoAction([](Creature* cre) {cre->GetMotionMaster()->Clear();  cre->GetMotionMaster()->MovePath(439146, false, irand(-1, 1), irand(-1, 1)); }, 3);
                                });*/
                            currentWP = 439146;
                        });
                }

                if (moveType == WAYPOINT_MOTION_TYPE && currentWP == 439146 && pointId == 10)
                {
                    currentWP = 0;
                   /* me->AddDelayedEvent(2000, [this]() -> void
                        {
                            GetNPCAroundAndDoAction([](Creature* cre) {cre->GetMotionMaster()->Clear(); cre->SetReactState(REACT_AGGRESSIVE); }, 3);
                        });*/
                }

                if (moveType == POINT_MOTION_TYPE || moveType == EFFECT_MOTION_TYPE || moveType == WAYPOINT_MOTION_TYPE)
                {
                    //intro 9
                    InstanceScript* script = me->GetInstanceScript();
                    if (!script)
                        return;

                    me->SetHomePosition(me->GetPosition());

                //    if (script->getScenarionStep() != SCENARION_STEP_9)
                   //     return;

                    Map* m = script->instance;
                    if (!m)
                        return;

                    Creature* gualdan = m->GetCreature(script->GetGuidData(NPC_GULDAN));
                    if (!gualdan)
                        return;

                    gualdan->NearTeleportTo(1660.127f, 1655.793f, 79.36142f, 2.33f);
                    //sCreatureTextMgr->SendChat(me, TEXT_GENERIC_5);
                    gualdan->AI()->SetData(SCENARION_STEP_9, 1);
                   // gualdan->SetFacingTo(me, true);
                    me->SetReactState(REACT_AGGRESSIVE);
                    me->RemoveUnitFlag(UNIT_FLAG_IMMUNE_TO_NPC);
                }
                break;
            case 90717:
                if (moveType != WAYPOINT_MOTION_TYPE || currentWP == 0)
                    return;

                switch (currentWP)
                {
                case 439136:
                    if (pointId == 13)
                    {
                        Map::PlayerList const& PlList = me->GetMap()->GetPlayers();
                        for (Map::PlayerList::const_iterator i = PlList.begin(); i != PlList.end(); ++i)
                          //  if (Player* player = i.GetSource())
                            {
                            Player* player;
                                if (player->GetTeam() == ALLIANCE)
                                {
                                    player->CastSpell(player, 218626);
                                    player->TeleportTo(1460, 812.54f, 2166.87f, 85.84f, 0.4f);
                                }
                            }

                        me->AddDelayedEvent(22000, [this]() -> void
                            {
                                DoCast(199718);
                                me->GetMotionMaster()->MovePath(439137, false);
                                currentWP = 439137;
                            });
                    }
                    break;
                }
                break;
            }
        }

        void MoveInLineOfSight(Unit* who) override
        {
            ScriptedAI::MoveInLineOfSight(who);

            if (auto script = me->GetInstanceScript())
                if (script->GetData(DATA_SCENARIO_TEAM) != ALLIANCE)
                    return;

            if (introEvent)
                return;

            if (me->GetEntry() == 90717) // genn
            {
                if (who->GetTypeId() != TYPEID_PLAYER || !me->IsWithinDistInMap(who, 20.0f))
                    return;

                introEvent = true;
                Talk(0);

                if (auto script = me->GetInstanceScript())
                    if (auto commander = script->instance->GetCreature(script->GetGuidData(90705)))
                        commander->AI()->DoAction(true);

                me->AddDelayedEvent(8000, [this]() -> void
                    {
                        std::list<Creature*> targets;
                        me->GetCreatureListInGrid(targets, 150.0f);
                        targets.remove_if([this](Creature* target) -> bool
                            {
                                if (target && target->GetEntry() == 110618)
                                    return false;


                                return !target || !target->IsAlive() || target->IsTrigger() || !target->IsVisible() || me->IsFriendlyTo(target) || target->GetFaction() == 1819 || target->GetEntry() == 90705;
                            });

                      /*  GetNPCAroundAndDoAction([this, targets](Creature* creature) -> void
                            {
                                creature->SetReactState(REACT_AGGRESSIVE);
                                if (targets.empty())
                                    return;

                                auto itr = targets.begin();
                                std::advance(itr, urand(0, targets.size() - 1));
                                creature->AI()->AttackStart(*itr);
                                creature->SetHomePosition((*itr)->GetPosition());
                            });*/

                        me->SetReactState(REACT_AGGRESSIVE);

                        Talk(1);

                        for (auto& plr : me->GetMap()->GetPlayers())
                            me->CastSpell(plr.GetSource(), 185265, true);

                        DoCast(199256);
                        me->GetMotionMaster()->MovePoint(1, 538.84f, 2107.58f, 3.0f);
                        me->SetHomePosition({ 538.84f, 2107.58f, 3.0f });


                        me->AddDelayedEvent(11000, [this]() -> void
                            {
                                DoCast(183988);
                             //   GetNPCAroundAndDoAction([](Creature*) {}, 3);
                            });

                        for (auto* target : targets)
                            targetList.push_back(target->GetGUID());
                    });
            }

            if (me->GetEntry() == NPC_VARIAN)
            {
                Player* p = who->ToPlayer();
                if (!p)
                    return;

                if (InstanceScript* script = me->GetInstanceScript())
                  //  if (script->getScenarionStep() == 3)
                        if (auto script = me->GetInstanceScript())
                            if (Creature* cre = script->instance->GetCreature(script->GetGuidData(90714)))
                                if (me->GetDistance(cre) <= 30.0f)
                                {
                                    introEvent = true;

                               //     script->DoUpdateAchievementCriteria(CRITERIA_TYPE_SCRIPT_EVENT_2, 45228);
                                    DoCast(199399);

                                /*    GetNPCAroundAndDoAction([](Creature* creature) -> void
                                        {
                                            creature->SetReactState(REACT_AGGRESSIVE);
                                        }, 5);*/

                                    me->SetReactState(REACT_AGGRESSIVE);
                                }
            }
        };

        void DoAction(int32 const action) override
        {
            if (me->GetEntry() == 90717 && action == 3)
            {
                //GetNPCAroundAndDoAction([](Creature* creature) { creature->SetReactState(REACT_PASSIVE); }, 5);

                me->GetMotionMaster()->Clear();
                me->GetMotionMaster()->MovePath(439136, false);
                currentWP = 439136;
                me->SetHomePosition(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetOrientation());
            }

            if (auto script = me->GetInstanceScript())
                if (script->GetData(DATA_SCENARIO_TEAM) != ALLIANCE)
                    if (action < 7)
                        return;

            if (me->GetEntry() == NPC_VARIAN)
            {
                switch (action)
                {
                case 5:
                   /* GetNPCAroundAndDoAction([](Creature* creature)
                        {
                            creature->AI()->EnterEvadeMode();
                            creature->GetMotionMaster()->Clear();
                            creature->SetReactState(REACT_AGGRESSIVE);
                        }, 5);*/
                    me->GetMotionMaster()->Clear();
                    me->GetMotionMaster()->MovePath(439144, false); //4 9 14 21
                    me->SetHomePosition(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetOrientation());
                    if (auto script = me->GetInstanceScript())
                        if (script->GetData(DATA_SCENARIO_TEAM) != ALLIANCE)
                          /*  GetNPCAroundAndDoAction([](Creature* creature)
                                {
                                    creature->SetReactState(REACT_PASSIVE);
                                }, 5);*/
                    break;
                case 6:
                   /* GetNPCAroundAndDoAction([](Creature* creature)
                        {
                            creature->AI()->EnterEvadeMode();

                            creature->SetReactState(REACT_PASSIVE);
                        });*/
                   // EnterEvadeMode();
                    me->SetReactState(REACT_PASSIVE);
                    me->GetMotionMaster()->MovePath(439145, false);
                    currentWP = 439145;
                    me->SetHomePosition(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetOrientation());
                    break;
                case 7:
                   // GetNPCAroundAndDoAction([](Creature* cre) {cre->SetReactState(REACT_AGGRESSIVE); }, 5);
                    break;
                case 8:
                    if (auto script = me->GetInstanceScript())
                        if (script->GetData(DATA_SCENARIO_TEAM) != ALLIANCE) // hack for horde scenario for recreate group
                        {
                            if (auto f = me->GetFormation())
                                sFormationMgr->RemoveCreatureFromGroup(f, me);

                         //   group = nullptr;
                        }

                 //   GetNPCAroundAndDoAction([](Creature* creature) {}, 5);
                    me->GetMotionMaster()->Clear();

                    me->AddDelayedEvent(5000, [this]() -> void
                        {
                         //   me->SummonGameObject(242549, 1536.26f, 1776.97f, 37.263f, 2.03f, 0.0f, 0.0f, 0.0f, 0.0f, DAY);

                            me->GetMotionMaster()->MovePath(439141, false); // 3
                            me->SetHomePosition(1612.035f, 1706.058f, 77.55668f, me->GetOrientation());
                        });
                    break;
                }
            }
        }

     /*   void DamageTaken(Unit* attacker, uint32& damage, DamageEffectType dmgType) override
        {
            damage = 0;
        }*/

        void JustEngagedWith(Unit* who) override
        {
            switch (me->GetEntry())
            {
            case 90717:
                events.ScheduleEvent(1, 11s); //200397
                events.ScheduleEvent(3, 5s); //222584
                DoCast(199256);
                break;
            case 90714:
                events.ScheduleEvent(2, 3s); // 199509
                events.ScheduleEvent(3, 5s); //222584
                break;
            }
        }

        void EnterEvadeMode(EvadeReason why) override
        {
            CreatureAI::EnterEvadeMode();

            me->AddDelayedEvent(100, [this]() -> void
                {
                    if (me->IsInCombat())
                        return;

                    if (me->GetEntry() == NPC_VARIAN)
                      //  if (me->GetInstanceScript()->getScenarionStep() == 4)
                            if (auto target = me->FindNearestCreature(90525, 120.0f, true))
                            {
                                me->ClearUnitState(UNIT_STATE_EVADE);
                                AttackStart(target);
                            }
                });

            if (me->GetEntry() != 90717)
                return;

            targetList.remove_if([this](ObjectGuid targetGuid) -> bool
                {
                    Creature* target = ObjectAccessor::GetCreature(*me, targetGuid);
                    if (target && target->GetEntry() == 110618)
                        return false;

                    return !target || !target->IsAlive() || target->IsTrigger() || !target->IsVisible();
                });

            me->AddDelayedEvent(100, [this]() -> void
                {
                    if (me->IsInCombat())
                        return;

                    if (auto script = me->GetInstanceScript())
                    //    if (script->getScenarionStep() > 2)
                            return;

                    me->ClearUnitState(UNIT_STATE_EVADE);

                    if (targetList.empty())
                    {
                        if (auto target = me->FindNearestCreature(110618, 80.0f, true))
                            AttackStart(target);
                        return;
                    }

                    auto itr = targetList.begin();
                    std::advance(itr, urand(0, targetList.size() - 1));
                    if (auto target = ObjectAccessor::GetCreature(*me, *itr))
                        AttackStart(target);
                });
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            if (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                case 1:
                    DoCast(200397);
                    events.ScheduleEvent(1, 11s);
                    break;
                case 2:
                    DoCast(199509);
                    events.ScheduleEvent(2, 3s);
                    break;
                case 3:
                    DoCast(222584);
                    events.ScheduleEvent(3, 5s);
                    break;
                }
            }
            DoMeleeAttackIfReady();
        }
    };
};

class sceneTrigger_part1 : public SceneScript
{
public:
    sceneTrigger_part1() : SceneScript("sceneTrigger_part1")
    {}

    bool OnTrigger(Player* player, SpellScene const* trigger, std::string type) override
    {
        if (type == "farsight")
        {
            if (auto data = player->GetInstanceScript())
            {
                Map* m = player->FindMap();
                if (!m)
                    return true;

                WorldLocation destTarget;
                destTarget.m_mapId = 1460;
                if (player->GetTeam() == HORDE)
                {
                    destTarget.m_positionX = 591.77f;
                    destTarget.m_positionY = 1898.48f;
                    destTarget.m_positionZ = 1.41f;
                    m->LoadGrid(521.7239f, 1862.63f);
                }
                else
                {
                    destTarget.m_positionX = 472.92f;
                    destTarget.m_positionY = 2037.86f;
                    destTarget.m_positionZ = 0.09f;
                    m->LoadGrid(461.8785f, 2032.679f);
                }
              //  destTarget.m_orientation = 0.5030039f;

                m->LoadGrid(destTarget.m_positionX, destTarget.m_positionY);

                DynamicObject* dynObj = new DynamicObject(true);
              /*  if (!dynObj->CreateDynamicObject(sObjectMgr->GetGenerator<HighGuid::DynamicObject>()->Generate(), player, player->GetTeam() == HORDE ? 225153 : 215222, destTarget, 1.0f, DYNAMIC_OBJECT_AREA_SPELL))
                {
                    delete dynObj;
                    return true;
                }*/

                //dynObj->SetUInt32Value(DYNAMICOBJECT_FIELD_BYTES, 536903323);
                dynObj->SetDuration(60000);

                player->SetViewpoint(dynObj, true);
               // player->SetUInt32Value(UNIT_FIELD_CHANNEL_SPELL, player->GetTeam() == HORDE ? 225153 : 215222);
              //  player->SetUInt32Value(UNIT_FIELD_CHANNEL_SPELL_XSPELL_VISUAL, player->GetTeam() == HORDE ? 107211 : 101301);
            }
        }
        if (type == "phaseupdate")
        {
            Map* m = player->FindMap();
            if (!m)
                return true;
            InstanceScript* script = player->GetInstanceScript();
            if (!script)
                return true;

            ObjectGuid guid = script->GetGuidData(player->GetTeam() == HORDE ? GO_HORDE_SHIP : GO_ALLIANCE_SHIP);
            if (!guid)
                return true;

          //  if (GameObject* go = m->GetGameObject(guid))
              //  go->SetVisible(true);
        }
        if (type == "port")
        {
            InstanceScript* script = player->GetInstanceScript();

            if (!script)
                return true;

            //if (script->getScenarionStep() != 0)
            //    return true;

            //scenation ID 1189 step 0
          //  player->UpdateAchievementCriteria(CRITERIA_TYPE_SCRIPT_EVENT_2, 54140);

            //scenation ID 786 step 0
         //   player->UpdateAchievementCriteria(CRITERIA_TYPE_SCRIPT_EVENT_2, 44060);

            if (WorldObject* obj = player->GetViewpoint())
                player->SetViewpoint(obj, false);

          //  player->SetUInt32Value(UNIT_FIELD_CHANNEL_SPELL, 0);
          //  player->SetUInt32Value(UNIT_FIELD_CHANNEL_SPELL_XSPELL_VISUAL, 0);

            if (TransportBase* transport = player->GetTransport())
            {
                transport->RemovePassenger(player);
                player->SetTransport(NULL);
                player->m_movementInfo.transport.Reset();
            }

            Map::PlayerList const& PlList = player->GetMap()->GetPlayers();

            if (PlList.isEmpty())
                return true;

            for (Map::PlayerList::const_iterator i = PlList.begin(); i != PlList.end(); ++i)
                if (Player* plr = i->GetSource())
                    plr->CastSpell(plr, plr->GetTeam() == ALLIANCE ? 199358 : 225152, false);
        }
        if (type == "complete")
        {
            //scenation ID 1189 step 0
          //  player->UpdateAchievementCriteria(CRITERIA_TYPE_SCRIPT_EVENT_2, 54140);

            //scenation ID 786 step 0
           // player->UpdateAchievementCriteria(CRITERIA_TYPE_SCRIPT_EVENT_2, 44060);

            /*if (player->GetDistance(461.8785f, 2032.679f, 0.1627506f) > 300.0f)
            {
                if (WorldObject* obj = player->GetViewpoint())
                    player->SetViewpoint(obj, false);

                if (Transport* transport = player->GetTransport())
                {
                    transport->RemovePassenger(player);
                    player->setTransport(NULL);
                    player->m_movementInfo.transport.Reset();
                }

                player->CastSpell(player, player->GetTeam() == ALLIANCE ? 199358 : 225152, false);
            }*/
        }
        return true;
    }
};


void AddSC_brokenIslands()
{
    new spell_bi_enter_stage1();
    new spell_broken_shore_queue();
    new spell_scenarion_bi_step_6();
    new scenarion_bi_heroes();
    new sceneTrigger_part1();
}
