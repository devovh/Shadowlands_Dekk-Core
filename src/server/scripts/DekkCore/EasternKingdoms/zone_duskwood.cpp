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

#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "MotionMaster.h"
#include "ObjectAccessor.h"
#include "Player.h"
#include "TemporarySummon.h"

enum TwilightCorrupter
{
    NPC_TWILIGHT_CORRUPTER = 15625,
    YELL_TWILIGHT_CORRUPTOR_RESPAWN = 0,
    YELL_TWILIGHT_CORRUPTOR_AGGRO = 1,
    YELL_TWILIGHT_CORRUPTOR_KILL = 2,
    SPELL_SOUL_CORRUPTION = 25805,
    SPELL_CREATURE_OF_NIGHTMARE = 25806,
    SPELL_LEVEL_UP = 24312,
    EVENT_SOUL_CORRUPTION = 1,
    EVENT_CREATURE_OF_NIGHTMARE = 2,
    QUEST_NIGHTMARES_CORRUPTION = 8735,
    QUEST_CRY_FOR_THE_MOON = 26760,
};

enum SpellSummonStalvanData
{
    NPC_STALVAN = 315,
    NPC_TOBIAS = 43453,
    NPC_WORGEN_TOBIAS = 43797,

    DISPLAYID_WORGEN_TOBIAS = 33508,
    QUEST_MISTMANTLES_REVENGE = 26674,
};

const Position stalvanPosition = { -10371.72f, -1251.92f, 35.99339f };
const Position stalvanDestination = { -10369.932617f, -1253.7677f, 35.909294f };
const float stalvanOrientation = 5.532694f;

const uint8 tobiasPositionsCount = 4;
const Position tobiasPositions[tobiasPositionsCount] =
{
    { -10351.5f, -1256.7f, 34.8566f },
    { -10357.5f, -1256.8f, 35.3863f },
    { -10363.5f, -1257.0f, 35.9107f },
    { -10365.8f, -1255.7f, 35.9098f }
};

enum StalvanData
{
    SPELL_WORGEN_TRANSFORMATION = 81908,

    EVENT_STALVAN_STEP_1 = 1,
    EVENT_STALVAN_STEP_2 = 2,
    EVENT_STALVAN_STEP_3 = 3,
    EVENT_STALVAN_STEP_4 = 4,
    EVENT_STALVAN_STEP_5 = 5,
    EVENT_STALVAN_STEP_6 = 6,

    EVENT_TOBIAS_STEP_1 = 7,
    EVENT_TOBIAS_STEP_2 = 8,
    EVENT_TOBIAS_STEP_3 = 9,
    EVENT_TOBIAS_STEP_4 = 10,

    SAY_00 = 0,
    SAY_01 = 1,
    SAY_02 = 2,
    SAY_03 = 3,
    SAY_04 = 4,
    SAY_05 = 5,
    SAY_06 = 6,
};

struct npc_stalvan : public ScriptedAI
{
    npc_stalvan(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
        _events.Reset();
        _events.ScheduleEvent(EVENT_STALVAN_STEP_1, 3s);
        _events.ScheduleEvent(EVENT_STALVAN_STEP_2, 8s);
        _events.ScheduleEvent(EVENT_STALVAN_STEP_3, 15s);
        _events.ScheduleEvent(EVENT_STALVAN_STEP_4, 23s);
        _events.ScheduleEvent(EVENT_STALVAN_STEP_5, 26s);
        _events.ScheduleEvent(EVENT_STALVAN_STEP_6, 32s);

        _events.ScheduleEvent(EVENT_TOBIAS_STEP_1, 5s);
        _events.ScheduleEvent(EVENT_TOBIAS_STEP_2, 9s);
        _events.ScheduleEvent(EVENT_TOBIAS_STEP_3, 16s);
        _events.ScheduleEvent(EVENT_TOBIAS_STEP_4, 27s);
    }

    void JustDied(Unit* /*killer*/) override
    {
        if (Creature* tobias = GetTobias())
        {
            Talk(SAY_06, tobias);
            tobias->AI()->Talk(SAY_04);
            tobias->DespawnOrUnsummon(4s);
        }
    }

    Creature* GetTobias()
    {
        if (Creature* tobias = me->FindNearestCreature(NPC_TOBIAS, 30, true))
            return tobias;

        return me->FindNearestCreature(NPC_WORGEN_TOBIAS, 30, true);
    }

    void UpdateAI(uint32 diff) override
    {
        _events.Update(diff);

        while (uint32 eventId = _events.ExecuteEvent())
        {
            switch (eventId)
            {
            case EVENT_STALVAN_STEP_1:
                me->SetWalk(true);
                me->SetSpeed(MOVE_WALK, 2.5);
                me->GetMotionMaster()->MovePoint(0, stalvanDestination, true);
                Talk(SAY_00, GetTobias());
                break;

            case EVENT_STALVAN_STEP_2:
                Talk(SAY_01, GetTobias());
                break;

            case EVENT_STALVAN_STEP_3:
                Talk(SAY_02, GetTobias());
                break;

            case EVENT_STALVAN_STEP_4:
                Talk(SAY_03, GetTobias());
                break;

            case EVENT_STALVAN_STEP_5:
                Talk(SAY_04, GetTobias());
                break;

            case EVENT_STALVAN_STEP_6:
                Talk(SAY_05, GetTobias());
                break;

            case EVENT_TOBIAS_STEP_1:
                if (Creature* tobias = GetTobias())
                {
                    tobias->SetFacingToObject(me, true);
                    me->SetFacingToObject(tobias, true);
                    tobias->AI()->Talk(SAY_00, me);
                }
                break;

            case EVENT_TOBIAS_STEP_2:
                if (Creature* tobias = GetTobias())
                    tobias->AI()->Talk(SAY_01, me);
                break;

            case EVENT_TOBIAS_STEP_3:
                if (Creature* tobias = GetTobias())
                    tobias->AI()->Talk(SAY_02, me);
                break;

            case EVENT_TOBIAS_STEP_4:
                if (Creature* tobias = GetTobias())
                {
                    tobias->CastSpell(tobias, SPELL_WORGEN_TRANSFORMATION, true);
                    tobias->SetReactState(REACT_AGGRESSIVE);

                    me->RemoveUnitFlag(UnitFlags(UNIT_FLAG_UNINTERACTIBLE | UNIT_FLAG_IMMUNE_TO_PC));
                 //   me->AddThreat(tobias, 10.f);
                 //   tobias->AddThreat(me, 10.f);
                    tobias->SetInCombatWith(me);

                    if (me->Attack(tobias, true))
                        me->GetMotionMaster()->MoveChase(tobias);

                    if (tobias->Attack(me, true))
                        tobias->GetMotionMaster()->MoveChase(me);

                    me->SetReactState(REACT_AGGRESSIVE);

                    tobias->AI()->Talk(SAY_03, tobias->GetOwner());
                }
                break;

            default:
                break;
            }
        }

        if (!UpdateVictim())
            return;

        DoMeleeAttackIfReady();
    }

private:
    EventMap _events;
};

enum SoothingIncenseCloudData
{
    EVENT_SELECT_TARGET = 1,
    NPC_FORLORN_SPIRIT = 43923,
    NPC_FORLORN_SPIRIT_KILLCREDIT = 43930,
};

struct npc_soothing_incense_cloud : public ScriptedAI
{
    npc_soothing_incense_cloud(Creature* creature) : ScriptedAI(creature) { }

    void Reset() override
    {
        _events.Reset();
        _events.ScheduleEvent(EVENT_SELECT_TARGET, 500ms);
    }

    Player* GetOwner()
    {
        return me->ToTempSummon()->GetSummoner()->ToPlayer();
    }

    void SelectTargets()
    {
        me->GetCreatureListWithEntryInGrid(_selectedTargets, NPC_FORLORN_SPIRIT, 5.f);
    }

    void KillSelectedCreaturesAndRewardPlayer()
    {
        for (auto creature : _selectedTargets)
        {
            if (!creature->IsAlive())
                continue;

            GetOwner()->RewardPlayerAndGroupAtEvent(NPC_FORLORN_SPIRIT_KILLCREDIT, GetOwner());
            creature->DisappearAndDie();
        }
    }

    void UpdateAI(uint32 diff) override
    {
        _events.Update(diff);

        while (uint32 eventId = _events.ExecuteEvent())
        {
            switch (eventId)
            {
            case EVENT_SELECT_TARGET:
                SelectTargets();
                KillSelectedCreaturesAndRewardPlayer();
                break;
            }
        }
    }

private:
    EventMap _events;
    std::list<Creature*> _selectedTargets;
};

enum MorbentFel
{
    SPELL_SACRED_CLEANSING = 82130,
    NPC_WEAKENED_MORBENT_FEL = 43762,
    NPC_MORBENT_FEL = 43761
};

class spell_sacred_cleansing : public SpellScript
{
    PrepareSpellScript(spell_sacred_cleansing);

    void SelectTarget(WorldObject*& target)
    {
        target = GetCaster()->FindNearestCreature(NPC_MORBENT_FEL, 15.0f, true);
    }

    SpellCastResult CheckRequirement()
    {
        if (GetCaster()->FindNearestCreature(NPC_MORBENT_FEL, 15.0f, true))
            return SPELL_CAST_OK;

        return SPELL_FAILED_INCORRECT_AREA;
    }

    void HandleDummy(SpellEffIndex /*effIndex*/)
    {
        Unit* hitUnit = GetHitUnit();
        if (!hitUnit || !GetCaster()->IsPlayer())
            return;

        if (Creature* target = hitUnit->ToCreature())
        {
            if (target->GetEntry() == NPC_MORBENT_FEL)
            {
                GetCaster()->SummonCreature(NPC_WEAKENED_MORBENT_FEL, target->GetPosition());
                target->DespawnOrUnsummon();
            }
        }
    }

    void Register() override
    {
        OnObjectTargetSelect += SpellObjectTargetSelectFn(spell_sacred_cleansing::SelectTarget, EFFECT_0, TARGET_UNIT_NEARBY_ENTRY);
        OnEffectHitTarget += SpellEffectFn(spell_sacred_cleansing::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        OnCheckCast += SpellCheckCastFn(spell_sacred_cleansing::CheckRequirement);
    }
};

class spell_summon_stalvan : public SpellScript
{
    PrepareSpellScript(spell_summon_stalvan);

    bool IsEventRunning()
    {
        return GetCaster()->FindNearestCreature(NPC_STALVAN, 20, true) != nullptr;
    }

    SpellCastResult CheckRequirement()
    {
        return SPELL_CAST_OK;
    }

    void HandleSendEvent(SpellEffIndex /*effIndex*/)
    {
        if (!GetCaster()->IsPlayer())
            return;

        if (GetCaster()->ToPlayer()->GetQuestStatus(QUEST_MISTMANTLES_REVENGE) != QUEST_STATUS_INCOMPLETE)
            return;

        if (IsEventRunning())
            return;

        SummonStalvan();
        SummonTobias();
    }

    void SummonStalvan()
    {
        if (TempSummon* stalvan = GetCaster()->SummonCreature(NPC_STALVAN, stalvanPosition))
        {
            stalvan->SetFacingTo(stalvanOrientation, true);
            stalvan->SetReactState(REACT_PASSIVE);
        }
    }

    void SummonTobias()
    {
        if (TempSummon* tobias = GetCaster()->SummonCreature(NPC_TOBIAS, tobiasPositions[0]))
        {
            tobias->RemoveNpcFlag(NPCFlags(UNIT_NPC_FLAG_QUESTGIVER | UNIT_NPC_FLAG_GOSSIP));
            tobias->SetWalk(true);
            tobias->SetSpeed(MOVE_WALK, 3.5);
            tobias->GetMotionMaster()->MovePoint(0, tobiasPositions[3], true);
            tobias->SetReactState(REACT_PASSIVE);
        }
    }

    void Register() override
    {
        OnEffectHit += SpellEffectFn(spell_summon_stalvan::HandleSendEvent, EFFECT_0, SPELL_EFFECT_SEND_EVENT);
        OnCheckCast += SpellCheckCastFn(spell_summon_stalvan::CheckRequirement);
    }

};

//npc ebenlocke
struct npc_ebenlocke : public ScriptedAI
{
    enum Data
    {
        QUEST_EMBALMERS_REVENGE = 26727,
        EVENT_SUMMON_STITCHES,
        NPC_STITCHES = 43862
    };

    npc_ebenlocke(Creature* creature) : ScriptedAI(creature) { }

    void OnQuestAccept(Player* player, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_EMBALMERS_REVENGE)
        {
            Creature* stitches;

            stitches = me->SummonCreature(NPC_STITCHES, Position(-10552.59f, -1108.68f, 31.5114f, 3.193950f), TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 90s);

        }
    }
};

//43730
struct npc_oliver_harris : public ScriptedAI
{
    npc_oliver_harris(Creature* c) : ScriptedAI(c) { }

    void OnQuestAccept(Player* player, Quest const* quest) override
    {
        if (quest->GetQuestId() == QUEST_CRY_FOR_THE_MOON)
            me->SummonCreature(me->GetEntry(), TEMPSUMMON_MANUAL_DESPAWN);
    }

    void IsSummonedBy(WorldObject* summoner) override
    {
        if (!summoner->IsCreature())
            return;

        ObjectGuid ownerGuid = summoner->GetGUID();
        me->GetOwnerGUID();
        me->SetWalk(true);
        me->GetMotionMaster()->MovePoint(1, -10745.0f, 330.0f, 37.87f, true);
    }

    void MovementInform(uint32 type, uint32 point) override
    {
        if (type != POINT_MOTION_TYPE)
            return;

        if (point == 1)
        {
            me->SetFacingTo(2.949f, true);
            me->Say("Here we go...", LANG_UNIVERSAL);
            AddTimedDelayedOperation(3000, [this]() -> void
            {
                me->Say("It's working. Hold him still, Jitters.", LANG_UNIVERSAL);
            });
            AddTimedDelayedOperation(10000, [this]() -> void
            {
                me->GetMotionMaster()->MovePoint(2, -10746.0f, 331.0f, 37.88f, true);
            });
        }
        if (point == 2)
        {
            if (Unit* owner = me->GetOwner())
                owner->ToPlayer()->KilledMonsterCredit(43969);
            me->DespawnOrUnsummon();
        }
    }
};

void AddSC_DekkCore_duskwood()
{
    RegisterSpellScript(spell_summon_stalvan);
    RegisterCreatureAI(npc_stalvan);
    RegisterCreatureAI(npc_soothing_incense_cloud);
    RegisterSpellScript(spell_sacred_cleansing);
    RegisterCreatureAI(npc_ebenlocke);
    RegisterCreatureAI(npc_oliver_harris);
}
