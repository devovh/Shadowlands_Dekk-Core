/*
 * This file is part of the DekkCore Project.
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

/*
 * Scripts for spells with SPELLFAMILY_MAGE and SPELLFAMILY_GENERIC spells used by mage players.
 * Ordered alphabetically using scriptname.
 * Scriptnames of files in this file should be prefixed with "spell_mage_".
 */

#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "Creature.h"
#include "CombatAI.h"
#include "GridNotifiers.h"
#include "Group.h"
#include "MotionMaster.h"
#include "ObjectAccessor.h"
#include "PhasingHandler.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellAuraEffects.h"
#include "SpellHistory.h"
#include "SpellMgr.h"
#include "SpellScript.h"
#include "TemporarySummon.h"

enum MageSpells
{
    SPELL_MAGE_COLD_SNAP = 235219,
    SPELL_MAGE_FROST_NOVA = 122,
    SPELL_MAGE_CONE_OF_COLD = 120,
    SPELL_MAGE_CONE_OF_COLD_SLOW = 212792,
    SPELL_MAGE_ICE_BARRIER = 11426,
    SPELL_MAGE_ICE_BLOCK = 45438,
    SPELL_MAGE_GLACIAL_INSULATION = 235297,
    SPELL_MAGE_BONE_CHILLING = 205027,
    SPELL_MAGE_BONE_CHILLING_BUFF = 205766,
    SPELL_MAGE_CHILLED = 205708,
    SPELL_MAGE_ICE_LANCE = 30455,
    SPELL_MAGE_ICE_LANCE_TRIGGER = 228598,
    SPELL_MAGE_THERMAL_VOID = 155149,
    SPELL_MAGE_ICY_VEINS = 12472,
    SPELL_MAGE_GLACIAL_SPIKE = 199786,
    SPELL_MAGE_ICICLE_PERIODIC_TRIGGER = 148023,
    SPELL_MAGE_FLURRY_DEBUFF_PROC = 228354,
    SPELL_MAGE_FLURRY = 44614,
    SPELL_MAGE_FLURRY_DAMAGE = 228672,
    SPELL_MAGE_FLURRY_CHILL_PROC = 228358,
    SPELL_MAGE_FLURRY_VISUAL = 228596,
    SPELL_MAGE_SHIELD_OF_ALODI = 195354,
    SPELL_MAGE_BRAIN_FREEZE = 190447,
    SPELL_MAGE_BRAIN_FREEZE_AURA = 190446,
    SPELL_MAGE_BRAIN_FREEZE_IMPROVED = 231584,
    SPELL_MAGE_EBONBOLT_DAMAGE = 257538,
    SPELL_MAGE_JOUSTER = 214626,
    SPELL_MAGE_CHAIN_REACTION = 195419,
    SPELL_MAGE_CHILLED_TO_THE_CORE = 195448,
    SPELL_MAGE_GLARITY_OF_THOUGHT = 195351,
    SPELL_MAGE_ICE_NOVA = 157997,
    SPELL_MAGE_FROZEN_TOUCH = 205030,
    SPELL_MAGE_FROZEN_ORB = 84714,
    SPELL_MAGE_FROZEN_ORB_DAMAGE = 84721,
    SPELL_MAGE_BLIZZARD_RANK_2 = 236662,
    SPELL_MAGE_UNSTABLE_MAGIC = 157976,
    SPELL_MAGE_UNSTABLE_MAGIC_DAMAGE_FIRE = 157977,
    SPELL_MAGE_UNSTABLE_MAGIC_DAMAGE_FROST = 157978,
    SPELL_MAGE_UNSTABLE_MAGIC_DAMAGE_ARCANE = 157979,
    SPELL_MAGE_FINGERS_OF_FROST = 112965,
    SPELL_MAGE_FINGERS_OF_FROST_AURA = 44544,
    SPELL_MAGE_FINGERS_OF_FROST_VISUAL_UI = 126084,
    SPELL_MAGE_FROST_BOMB_AURA = 112948,
    SPELL_MAGE_FROST_BOMB_TRIGGERED = 113092,
    SPELL_MAGE_FROSTBOLT = 116,
    SPELL_MAGE_FROSTBOLT_TRIGGER = 228597,
    SPELL_BLAZING_BARRIER_TRIGGER = 235314,
    SPELL_MAGE_SCORCH = 2948,
    SPELL_MAGE_FIREBALL = 133,
    SPELL_MAGE_FIRE_BLAST = 108853,
    SPELL_MAGE_FLAMESTRIKE = 2120,
    SPELL_MAGE_PYROBLAST = 11366,
    SPELL_MAGE_PHOENIX_FLAMES = 194466,
    SPELL_MAGE_DRAGON_BREATH = 31661,
    SPELL_MAGE_PYROMANIAC = 205020,
    SPELL_MAGE_ALEXSTRASZAS_FURY = 235870,
    SPELL_MAGE_LIVING_BOMB_DAMAGE = 44461,
    SPELL_MAGE_LIVING_BOMB_DOT = 217694,
    SPELL_MAGE_METEOR_DAMAGE = 153564,
    SPELL_MAGE_METEOR_TIMER = 177345,
    SPELL_MAGE_METEOR_VISUAL = 174556,
    SPELL_MAGE_METEOR_BURN = 155158,
    SPELL_MAGE_COMET_STORM = 153595,
    SPELL_MAGE_COMET_STORM_DAMAGE = 153596,
    SPELL_MAGE_COMET_STORM_VISUAL = 242210,
    SPELL_MAGE_POLYMORPH_CRITTERMORPH = 120091,
    SPELL_MAGE_HEATING_UP = 48107,
    SPELL_MAGE_HOT_STREAK = 48108,
    SPELL_MAGE_ENHANCED_PYROTECHNICS_AURA = 157644,
    SPELL_MAGE_INCANTERS_FLOW_BUFF = 116267,
    SPELL_MAGE_RUNE_OF_POWER_BUFF = 116014,
    SPELL_MAGE_OVERPOWERED = 155147,
    SPELL_MAGE_ARCANE_POWER = 12042,
    SPELL_MAGE_CHRONO_SHIFT = 235711,
    SPELL_MAGE_CHRONO_SHIFT_SLOW = 236299,
    SPELL_MAGE_CHRONO_SHIFT_BUFF = 236298,
    SPELL_MAGE_ARCANE_BLAST = 30451,
    SPELL_MAGE_ARCANE_BARRAGE = 44425,
    SPELL_MAGE_ARCANE_BARRAGE_TRIGGERED = 241241,
    SPELL_MAGE_PRESENCE_OF_MIND = 205025,
    SPELL_MAGE_ARCANE_MISSILES_VISUAL_TWO = 79808,
    SPELL_MAGE_ARCANE_MISSILES_VISUAL_ONE = 170571,
    SPELL_MAGE_ARCANE_MISSILES_VISUAL_THREE = 170572,
    SPELL_MAGE_ARCANE_MISSILES_TRIGGER = 7268,
    SPELL_MAGE_ARCANE_MISSILES = 5143,
    SPELL_MAGE_ARCANE_MISSILES_POWER = 208030,
    SPELL_MAGE_ARCANE_MISSILES_CHARGES = 79683,
    SPELL_MAGE_ARCANE_ORB_DAMAGE = 153640,
    SPELL_MAGE_ARCANE_AMPLIFICATION = 236628,
    SPELL_MAGE_RING_OF_FROST_FREEZE = 82691,
    SPELL_MAGE_RING_OF_FROST_IMMUNE = 91264,
    SPELL_MAGE_RING_OF_FROST = 113724,
    SPELL_MAGE_FIRE_MAGE_PASSIVE = 137019,
    SPELL_MAGE_FIRE_ON = 205029,
    SPELL_MAGE_FIRESTARTER = 205026,
    SPELL_MAGE_CAUTERIZE = 87023,
    SPELL_MAGE_MIRROR_IMAGE_LEFT = 58834,
    SPELL_MAGE_MIRROR_IMAGE_RIGHT = 58833,
    SPELL_MAGE_MIRROR_IMAGE_FRONT = 58831,
    SPELL_MAGE_COMBUSTION = 190319,
    SPELL_MAGE_WATER_JET = 135029,
    SPELL_MAGE_ICE_FLOES = 108839,
    SPELL_MAGE_CONJURE_REFRESHMENT_GROUP = 167145,
    SPELL_MAGE_CONJURE_REFRESHMENT_SOLO = 116136,
    SPELL_MAGE_HYPOTHERMIA = 41425,
    SPELL_INFERNO = 253220,
    SPELL_MAGE_BLAZING_BARRIER = 235313,
    SPELL_MAGE_BLAZING_SOUL = 235365,
    SPELL_MAGE_CONTROLLED_BURN = 205033,
    SPELL_MAGE_FLAME_PATCH = 205037,
    SPELL_MAGE_FLAME_PATCH_TRIGGER = 205470,
    SPELL_MAGE_FLAME_PATCH_AOE_DMG = 205472,
    SPELL_MAGE_CINDERSTORM = 198929,
    SPELL_MAGE_CINDERSTORM_DMG = 198928,
    SPELL_MAGE_IGNITE_DOT = 12654,
    SPELL_MAGE_REVERBERATE = 281482,
    SPELL_MAGE_RESONANCE = 205028,
    SPELL_MAGE_CLEARCASTING_BUFF = 277726, // Channel quicker
    SPELL_MAGE_CLEARCASTING_EFFECT = 263725, // Removing the costs
    SPELL_MAGE_CLEARCASTING_PVP_STACK_EFFECT = 276743, // Costs and is stackable
    SPELL_MAGE_ARCANE_EMPOWERMENT = 276741,
    SPELL_MAGE_MANA_SHIELD_TALENT = 235463,
    SPELL_MAGE_MANA_SHIELD_BURN = 235470,
    SPELL_MAGE_RULE_OF_THREES = 264354,
    SPELL_MAGE_RULE_OF_THREES_BUFF = 264774,
    SPELL_MAGE_SPLITTING_ICE = 56377,
    SPELL_ARCANE_CHARGE = 36032,
    SPELL_MAGE_SQUIRREL_FORM = 32813,
    SPELL_MAGE_GIRAFFE_FORM = 32816,
    SPELL_MAGE_SERPENT_FORM = 32817,
    SPELL_MAGE_DRAGONHAWK_FORM = 32818,
    SPELL_MAGE_WORGEN_FORM = 32819,
    SPELL_MAGE_SHEEP_FORM = 32820,
    //Azerite Traits
    SPELL_MAGE_WILDFIRE = 288755, //partially
    SPELL_BLASTER_MASTER = 274596, //ok
    SPELL_BLASTER_MASTER_MASTERY_BUFF = 274598,//ok
    SPELL_CAUTERIZING_BLINK_PROC = 280177,
    SPELL_IMPASSIVE_VISAGE_HEAL = 270117,
    SPELL_FIREMIND_TRIGGER = 278539, //ok
    SPELL_FIREMIND_MOD_INTELECT = 279715,//ok
    SPELL_PACKED_ICE_TRIGGER = 272968,
    SPELL_GLACIAL_ASSAULT_TRIGGER = 279854,//ok
    SPELL_HEART_OF_DARKNESS_TRIGGER = 317137,
    SPELL_EQUIPOISE_TRIGGER = 286027, //ok
    SPELL_EQUIPOISE_INCREASE_ARCANE_BLAST_DAMAGE = 264352, //ok
    SPELL_EQUIPOISE_REDUCE_MANA_COST_ARCANE_BLAST = 264353, //ok
    SPELL_FLASH_FREEZE_TRIGGER = 288164,
    SPELL_GUTRIPER_TRIGGER = 266937,
    SPELL_ARCANE_PUMMELING_TRIGGER = 270669,
    SPELL_ELEMENTAL_WHIRL_TRIGGER = 263984,
    SPELL_GALVANIZING_SPARK_TRIGGER = 278536,//not ok
    SPELL_OVERWHELMING_POWER_TRIGGER = 266180,
    SPELL_VAMPIRIC_SPEED_TRIGGER = 268599,
    SPELL_VAMPIRIC_SPEED_HEAL = 269238,
    SPELL_VAMPIRIC_SPEED_SPEED = 269239,
    SPELL_ELDRITCH_WARDING_TRIGGER = 274379,
    SPELL_BLOOD_SIPHON_TRIGGER = 264108, //ok
    SPELL_ARCANE_PRESSURE_TRIGGER = 274594, //ok
    SPELL_FLAMES_OF_ALACRITY_TRIGGER = 272932,
    SPELL_MAGE_PRISMATIC_CLOAK = 198064,
    SPELL_MAGE_PRISMATIC_CLOAK_BUFF = 198065,
    SPELL_MAGE_CHAIN_REACTION_BFA = 278309,
    SPELL_MAGE_CHAIN_REACTION_MOD_LANCE = 278310,

    SplittingIce = 56377,
    IciclesStack = 205473,
    IciclesDamage = 148022,
    MasteryIcicles = 76613
};

enum TemporalDisplacementSpells
{
    SPELL_MAGE_TEMPORAL_DISPLACEMENT = 80354,
    SPELL_HUNTER_INSANITY = 95809,
    SPELL_PRIEST_SHADOW_WORD_DEATH = 32409,
    SPELL_SHAMAN_EXHAUSTION = 57723,
    SPELL_SHAMAN_SATED = 57724,
    SPELL_PET_NETHERWINDS_FATIGUED = 160455
};

class playerscript_mage_arcane : public PlayerScript
{
public:
    playerscript_mage_arcane() : PlayerScript("playerscript_mage_arcane") {}

    void OnModifyPower(Player* player, Powers power, int32 oldValue, int32& newValue, bool /*regen*/, bool after)
    {
        if (!after)
            return;

        if (power != POWER_ARCANE_CHARGES)
            return;

        // Going up in charges is handled by aura 190427
        // Decreasing power seems weird clientside does not always match serverside power amount (client stays at 1, server is at 0)
        if (newValue)
        {
            if (Aura* arcaneCharge = player->GetAura(SPELL_ARCANE_CHARGE))
                arcaneCharge->SetStackAmount(newValue);
        }
        else
            player->RemoveAurasDueToSpell(SPELL_ARCANE_CHARGE);

        if (player->HasAura(SPELL_MAGE_RULE_OF_THREES))
            if (newValue == 3 && oldValue == 2)
                player->CastSpell(player, SPELL_MAGE_RULE_OF_THREES_BUFF, true);
    }
};

// Chrono Shift - 235711
class spell_mage_chrono_shift : public AuraScript
{
    PrepareAuraScript(spell_mage_chrono_shift);

    bool CheckProc(ProcEventInfo& eventInfo)
    {
        bool _spellCanProc = (eventInfo.GetSpellInfo()->Id == SPELL_MAGE_ARCANE_BARRAGE || eventInfo.GetSpellInfo()->Id == SPELL_MAGE_ARCANE_BARRAGE_TRIGGERED);

        if (_spellCanProc)
            return true;
        return false;
    }

    void Register() override
    {
        DoCheckProc += AuraCheckProcFn(spell_mage_chrono_shift::CheckProc);
    }
};

// Arcane Missiles - 5143
class spell_mage_arcane_missiles : public AuraScript
{
    PrepareAuraScript(spell_mage_arcane_missiles);

    void OnApply(AuraEffect const* /*p_AurEff*/, AuraEffectHandleModes /*mode*/)
    {
        Unit* caster = GetCaster();
        if (!caster)
            return;

        //@TODO: Remove when proc system can handle arcane missiles.....
        caster->RemoveAura(SPELL_MAGE_CLEARCASTING_BUFF);
        caster->RemoveAura(SPELL_MAGE_CLEARCASTING_EFFECT);
        if (Aura* pvpClearcast = caster->GetAura(SPELL_MAGE_CLEARCASTING_PVP_STACK_EFFECT))
            pvpClearcast->ModStackAmount(-1);
        caster->RemoveAura(SPELL_MAGE_RULE_OF_THREES_BUFF);
    }

    void Register() override
    {
        AfterEffectApply += AuraEffectApplyFn(spell_mage_arcane_missiles::OnApply, EFFECT_1, SPELL_AURA_PERIODIC_TRIGGER_SPELL, AURA_EFFECT_HANDLE_REAL);
    }
};

// Arcane Missiles Damage - 7268
class spell_mage_arcane_missiles_damage :public SpellScript
{
    PrepareSpellScript(spell_mage_arcane_missiles_damage);

    void CheckTarget(WorldObject*& target)
    {
        if (target == GetCaster())
            target = nullptr;
    }

    void Register() override
    {
        OnObjectTargetSelect += SpellObjectTargetSelectFn(spell_mage_arcane_missiles_damage::CheckTarget, EFFECT_0, TARGET_UNIT_CHANNEL_TARGET);
    }
};

// Clearcasting - 79684
class spell_mage_clearcasting : public AuraScript
{
    PrepareAuraScript(spell_mage_clearcasting);

    bool CheckProc(ProcEventInfo& eventInfo)
    {
        if (int32 eff0 = GetSpellInfo()->GetEffect(EFFECT_0).CalcValue())
        {
            int32 reqManaToSpent = 0;
            int32 manaUsed = 0;

            // For each ${$c*100/$s1} mana you spend, you have a 1% chance
            // Means: I cast a spell which costs 1000 Mana, for every 500 mana used I have 1% chance =  2% chance to proc
            for (SpellPowerCost powerCost : GetSpellInfo()->CalcPowerCost(GetCaster(), GetSpellInfo()->GetSchoolMask()))
                if (powerCost.Power == POWER_MANA)
                    reqManaToSpent = powerCost.Amount * 100 / eff0;

            // Something changed in DBC, Clearcasting should cost 1% of base mana 8.0.1
            if (reqManaToSpent == 0)
                return false;

            for (SpellPowerCost powerCost : eventInfo.GetSpellInfo()->CalcPowerCost(GetCaster(), eventInfo.GetSpellInfo()->GetSchoolMask()))
                if (powerCost.Power == POWER_MANA)
                    manaUsed = powerCost.Amount;

            int32 chance = std::floor(manaUsed / reqManaToSpent) * 1;
            return roll_chance_i(chance);
        }

        return false;
    }

    void HandleProc(AuraEffect* /*aurEff*/, ProcEventInfo& eventInfo)
    {
        Unit* actor = eventInfo.GetActor();
        actor->CastSpell(actor, SPELL_MAGE_CLEARCASTING_BUFF, true);
        if (actor->HasAura(SPELL_MAGE_ARCANE_EMPOWERMENT))
            actor->CastSpell(actor, SPELL_MAGE_CLEARCASTING_PVP_STACK_EFFECT, true);
        else
            actor->CastSpell(actor, SPELL_MAGE_CLEARCASTING_EFFECT, true);
    }

    void Register() override
    {
        DoCheckProc += AuraCheckProcFn(spell_mage_clearcasting::CheckProc);
        OnEffectProc += AuraEffectProcFn(spell_mage_clearcasting::HandleProc, EFFECT_0, SPELL_AURA_DUMMY);
    }
};

// Arcane Blast - 30451
class spell_mage_arcane_blast : public SpellScript
{
    PrepareSpellScript(spell_mage_arcane_blast);

    void DoCast()
    {
        if (Unit* caster = GetCaster())
            if (Aura* threes = caster->GetAura(SPELL_MAGE_RULE_OF_THREES_BUFF))
                threes->Remove();
    }

    void Register() override
    {
        OnCast += SpellCastFn(spell_mage_arcane_blast::DoCast);
    }
};

// Presence of mind - 205025
class spell_mage_presence_of_mind : public AuraScript
{
    PrepareAuraScript(spell_mage_presence_of_mind);

    bool HandleProc(ProcEventInfo& eventInfo)
    {
        if (eventInfo.GetSpellInfo()->Id == SPELL_MAGE_ARCANE_BLAST)
            return true;
        return false;
    }

    void Register() override
    {
        DoCheckProc += AuraCheckProcFn(spell_mage_presence_of_mind::HandleProc);
    }
};

class CheckArcaneBarrageImpactPredicate
{
public:
    CheckArcaneBarrageImpactPredicate(Unit* caster, Unit* mainTarget) : _caster(caster), _mainTarget(mainTarget) {}

    bool operator()(Unit* target)
    {
        if (!_caster || !_mainTarget)
            return true;

        if (!_caster->IsValidAttackTarget(target))
            return true;

        if (!target->IsWithinLOSInMap(_caster))
            return true;

        if (!_caster->isInFront(target))
            return true;

        if (target->GetGUID() == _caster->GetGUID())
            return true;

        if (target->GetGUID() == _mainTarget->GetGUID())
            return true;

        return false;
    }

private:
    Unit* _caster;
    Unit* _mainTarget;
};

// Fire Blast - 108853
class spell_mage_fire_blast : public SpellScript
{
    PrepareSpellScript(spell_mage_fire_blast);

    void HandleHit(SpellEffIndex /*effIndex*/)
    {
        // this is already handled by Pyroblast Clearcasting Driver - 44448
        /*bool procCheck = false;

        if (Unit* caster = GetCaster())
        {
            if (!caster->HasAura(SPELL_MAGE_HEATING_UP) && !caster->HasAura(SPELL_MAGE_HOT_STREAK))
            {
                caster->CastSpell(caster, SPELL_MAGE_HEATING_UP, true);
                procCheck = true;
            }


            if (caster->HasAura(SPELL_MAGE_HEATING_UP) && !caster->HasAura(SPELL_MAGE_HOT_STREAK) && !procCheck)
            {
                caster->RemoveAurasDueToSpell(SPELL_MAGE_HEATING_UP);
                caster->CastSpell(caster, SPELL_MAGE_HOT_STREAK, true);
            }
        }*/
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_mage_fire_blast::HandleHit, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
    }
};

// Enhanced Pyrotechnics - 157642
class spell_mage_enhanced_pyrotechnics : public AuraScript
{
    PrepareAuraScript(spell_mage_enhanced_pyrotechnics);

    bool HandleProc(ProcEventInfo& eventInfo)
    {
        Unit* caster = GetCaster();

        if (eventInfo.GetSpellInfo()->Id == SPELL_MAGE_FIREBALL)
        {
            if ((eventInfo.GetHitMask() & PROC_HIT_CRITICAL))
            {
                if (caster->HasAura(SPELL_MAGE_ENHANCED_PYROTECHNICS_AURA))
                    caster->RemoveAurasDueToSpell(SPELL_MAGE_ENHANCED_PYROTECHNICS_AURA);
                return false;
            }
            return true;
        }
        return false;
    }

    void Register() override
    {
        DoCheckProc += AuraCheckProcFn(spell_mage_enhanced_pyrotechnics::HandleProc);
    }
};

struct auraData
{
    auraData(uint32 id, int32 duration) : m_id(id), m_duration(duration) {}
    uint32 m_id;
    int32 m_duration;
};

const uint32 icicles[5][3]
{
    {148012, 148017, 148013},
    {148013, 148018, 148014},
    {148014, 148019, 148015},
    {148015, 148020, 148016},
    {148016, 148021, 148012}
};

// Meteor - 153561
class spell_mage_meteor : public SpellScript
{
    PrepareSpellScript(spell_mage_meteor);

    bool Validate(SpellInfo const* /*spellInfo*/) override
    {
        return ValidateSpellInfo({ SPELL_MAGE_METEOR_DAMAGE });
    }

    void HandleDummy()
    {
        Unit* caster = GetCaster();
        WorldLocation const* dest = GetExplTargetDest();
        if (!caster || !dest)
            return;

        caster->CastSpell(Position(dest->GetPositionX(), dest->GetPositionY(), dest->GetPositionZ()), SPELL_MAGE_METEOR_TIMER, true);
    }

    void Register() override
    {
        AfterCast += SpellCastFn(spell_mage_meteor::HandleDummy);
    }
};

// Meteor Damage - 153564
class spell_mage_meteor_damage : public SpellScript
{
    PrepareSpellScript(spell_mage_meteor_damage);

    int32 _targets;

    void HandleHit(SpellEffIndex /*effIndex*/)
    {
        Unit* unit = GetHitUnit();
        if (!unit)
            return;

        SetHitDamage(GetHitDamage() / _targets);
    }

    void CountTargets(std::list<WorldObject*>& targets)
    {
        _targets = targets.size();
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_mage_meteor_damage::HandleHit, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
        OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_mage_meteor_damage::CountTargets, EFFECT_0, TARGET_UNIT_DEST_AREA_ENEMY);
    }
};

// Frenetic Speed - 236058
class spell_mage_frenetic_speed : public AuraScript
{
    PrepareAuraScript(spell_mage_frenetic_speed);

    bool CheckProc(ProcEventInfo& eventInfo)
    {
        return eventInfo.GetSpellInfo()->Id == SPELL_MAGE_SCORCH;
    }

    void Register() override
    {
        DoCheckProc += AuraCheckProcFn(spell_mage_frenetic_speed::CheckProc);
    }
};

// Conflagration - 205023
class spell_mage_conflagration : public AuraScript
{
    PrepareAuraScript(spell_mage_conflagration);

    bool CheckProc(ProcEventInfo& eventInfo)
    {
        return eventInfo.GetSpellInfo() && eventInfo.GetSpellInfo()->Id == SPELL_MAGE_FIREBALL;
    }

    void Register() override
    {
        DoCheckProc += AuraCheckProcFn(spell_mage_conflagration::CheckProc);
    }
};

// Pyroblast 11366
class spell_mage_pyroblast : public SpellScript
{
    PrepareSpellScript(spell_mage_pyroblast);

    void HandleOnHit(SpellEffIndex /*effIndex*/)
    {
        Unit* caster = GetCaster();
        if (!caster)
            return;

        if (caster->HasAura(SPELL_MAGE_HOT_STREAK))
        {
            caster->RemoveAurasDueToSpell(SPELL_MAGE_HOT_STREAK);

            if (caster->HasAura(SPELL_MAGE_PYROMANIAC))
                if (AuraEffect* pyromaniacEff0 = caster->GetAuraEffect(SPELL_MAGE_PYROMANIAC, EFFECT_0))
                    if (roll_chance_i(pyromaniacEff0->GetAmount()))
                    {
                        if (caster->HasAura(SPELL_MAGE_HEATING_UP))
                            caster->RemoveAurasDueToSpell(SPELL_MAGE_HEATING_UP);

                        caster->CastSpell(caster, SPELL_MAGE_HOT_STREAK, true);
                    }
        }
    }

    void Register() override
    {
        OnEffectHit += SpellEffectFn(spell_mage_pyroblast::HandleOnHit, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
    }
};

// Flamestrike 2120
class spell_mage_flamestrike : public SpellScript
{
    PrepareSpellScript(spell_mage_flamestrike);

    void HandleOnHit(SpellEffIndex /*effIndex*/)
    {
        Unit* caster = GetCaster();
        if (!caster)
            return;

        if (caster->HasAura(SPELL_MAGE_HOT_STREAK))
        {
            caster->RemoveAurasDueToSpell(SPELL_MAGE_HOT_STREAK);

            if (caster->HasAura(SPELL_MAGE_PYROMANIAC))
                if (AuraEffect* pyromaniacEff0 = caster->GetAuraEffect(SPELL_MAGE_PYROMANIAC, EFFECT_0))
                    if (roll_chance_i(pyromaniacEff0->GetAmount()))
                    {
                        if (caster->HasAura(SPELL_MAGE_HEATING_UP))
                            caster->RemoveAurasDueToSpell(SPELL_MAGE_HEATING_UP);

                        caster->CastSpell(caster, SPELL_MAGE_HOT_STREAK, true);
                    }
        }
    }

    void HandleDummy()
    {
        Unit* caster = GetCaster();
        WorldLocation const* dest = GetExplTargetDest();
        if (!caster || !dest)
            return;

        if (caster->HasAura(SPELL_MAGE_FLAME_PATCH))
            if (WorldLocation const* dest = GetExplTargetDest())
                caster->CastSpell(dest->GetPosition(), SPELL_MAGE_FLAME_PATCH_TRIGGER, true);
    }

    void Register() override
    {
        OnEffectHit += SpellEffectFn(spell_mage_flamestrike::HandleOnHit, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
        AfterCast += SpellCastFn(spell_mage_flamestrike::HandleDummy);
    }
};

// Kindling - 155148
class spell_mage_kindling : public AuraScript
{
    PrepareAuraScript(spell_mage_kindling);

    bool CheckProc(ProcEventInfo& eventInfo)
    {
        return eventInfo.GetSpellInfo()->Id == SPELL_MAGE_FIREBALL || eventInfo.GetSpellInfo()->Id == SPELL_MAGE_FIRE_BLAST || eventInfo.GetSpellInfo()->Id == SPELL_MAGE_PHOENIX_FLAMES;
    }

    void HandleProc(AuraEffect* aurEff, ProcEventInfo& /*eventInfo*/)
    {
        Unit* caster = GetCaster();
        if (!caster)
            return;

        caster->GetSpellHistory()->ModifyCooldown(SPELL_MAGE_COMBUSTION, -Seconds(aurEff->GetAmount()));
    }

    void Register() override
    {
        DoCheckProc += AuraCheckProcFn(spell_mage_kindling::CheckProc);
        OnEffectProc += AuraEffectProcFn(spell_mage_kindling::HandleProc, EFFECT_0, SPELL_AURA_DUMMY);
    }
};

// Pyroblast Clearcasting Driver - 44448
class spell_mage_pyroblast_clearcasting_driver : public AuraScript
{
    PrepareAuraScript(spell_mage_pyroblast_clearcasting_driver);

    bool CheckProc(ProcEventInfo& eventInfo)
    {
        Unit* caster = GetCaster();

        bool _spellCanProc = (eventInfo.GetSpellInfo()->Id == SPELL_MAGE_SCORCH || eventInfo.GetSpellInfo()->Id == SPELL_MAGE_FIREBALL || eventInfo.GetSpellInfo()->Id == SPELL_MAGE_FIRE_BLAST || eventInfo.GetSpellInfo()->Id == SPELL_MAGE_FLAMESTRIKE || eventInfo.GetSpellInfo()->Id == SPELL_MAGE_PYROBLAST || eventInfo.GetSpellInfo()->Id == SPELL_MAGE_PHOENIX_FLAMES || (eventInfo.GetSpellInfo()->Id == SPELL_MAGE_DRAGON_BREATH && caster->HasAura(SPELL_MAGE_ALEXSTRASZAS_FURY)));

        if (_spellCanProc)
            return true;
        return false;
    }

    void HandleProc(AuraEffect* /*aurEff*/, ProcEventInfo& eventInfo)
    {
        bool procCheck = false;

        Unit* caster = GetCaster();

        if ((eventInfo.GetHitMask() & PROC_HIT_NORMAL))
        {
            if (caster->HasAura(SPELL_MAGE_HEATING_UP))
                caster->RemoveAurasDueToSpell(SPELL_MAGE_HEATING_UP);
            return;
        }

        if (!caster->HasAura(SPELL_MAGE_HEATING_UP) && !caster->HasAura(SPELL_MAGE_HOT_STREAK))
        {
            caster->CastSpell(caster, SPELL_MAGE_HEATING_UP, true);

            procCheck = true;

            if (AuraEffect* burn = caster->GetAuraEffect(SPELL_MAGE_CONTROLLED_BURN, EFFECT_0))
                if (roll_chance_i(burn->GetAmount()))
                    procCheck = false;
        }


        if (caster->HasAura(SPELL_MAGE_HEATING_UP) && !caster->HasAura(SPELL_MAGE_HOT_STREAK) && !procCheck)
        {
            caster->RemoveAurasDueToSpell(SPELL_MAGE_HEATING_UP);
            caster->CastSpell(caster, SPELL_MAGE_HOT_STREAK, true);
        }
    }

    void Register() override
    {
        OnEffectProc += AuraEffectProcFn(spell_mage_pyroblast_clearcasting_driver::HandleProc, EFFECT_0, SPELL_AURA_DUMMY);
        DoCheckProc += AuraCheckProcFn(spell_mage_pyroblast_clearcasting_driver::CheckProc);
    }
};

// Chilled - 205708
class spell_mage_chilled : public AuraScript
{
    PrepareAuraScript(spell_mage_chilled);

    void HandleApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        Unit* caster = GetCaster();
        if (!caster)
            return;

        if (caster->HasAura(SPELL_MAGE_BONE_CHILLING))
        {
            //@TODO REDUCE BONE CHILLING DAMAGE PER STACK TO 0.5% from 1%
            caster->CastSpell(caster, SPELL_MAGE_BONE_CHILLING_BUFF, true);
        }
    }

    void Register() override
    {
        OnEffectApply += AuraEffectApplyFn(spell_mage_chilled::HandleApply, EFFECT_0, SPELL_AURA_MOD_DECREASE_SPEED, AURA_EFFECT_HANDLE_REAL_OR_REAPPLY_MASK);
    }
};

// Flurry - 44614
class spell_mage_flurry : public SpellScript
{
    PrepareSpellScript(spell_mage_flurry);

    void HandleDummy(SpellEffIndex /*effIndex*/)
    {
        Unit* caster = GetCaster();
        Unit* target = GetHitUnit();
        bool isImproved = false;
        if (!caster || !target)
            return;

        if (caster->HasAura(SPELL_MAGE_BRAIN_FREEZE_AURA))
        {
            caster->RemoveAura(SPELL_MAGE_BRAIN_FREEZE_AURA);
            if (caster->HasSpell(SPELL_MAGE_BRAIN_FREEZE_IMPROVED))
                isImproved = true;
        }

        ObjectGuid targetGuid = target->GetGUID();
        if (targetGuid != ObjectGuid::Empty)
            for (uint8 i = 1; i < 3; ++i) // basepoint value is 3 all the time, so, set it 3 because sometimes it won't read
            {
                caster->GetScheduler().Schedule(Milliseconds(i * 250), [targetGuid, isImproved](TaskContext context)
                {
                    if (Unit* caster = GetContextUnit())
                    {
                        if (Unit* target = ObjectAccessor::GetUnit(*caster, targetGuid))
                        {
                            caster->CastSpell(target, SPELL_MAGE_FLURRY_VISUAL, false);

                            if (isImproved)
                                caster->CastSpell(target, SPELL_MAGE_FLURRY_CHILL_PROC, false);
                        }
                    }
                });
            }
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_mage_flurry::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

// Jouster - 214626
class spell_mage_jouster : public AuraScript
{
    PrepareAuraScript(spell_mage_jouster);

    bool CheckProc(ProcEventInfo& eventInfo)
    {
        return eventInfo.GetSpellInfo()->Id == SPELL_MAGE_ICE_LANCE;
    }

    void Register() override
    {
        DoCheckProc += AuraCheckProcFn(spell_mage_jouster::CheckProc);
    }
};

// Jouster Buff - 195391
class spell_mage_jouster_buff : public AuraScript
{
    PrepareAuraScript(spell_mage_jouster_buff);

    void CalculateAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& /*canBeRecalculated*/)
    {
        Unit* caster = GetCaster();
        if (!caster)
            return;

        if (AuraEffect* jousterRank = caster->GetAuraEffect(SPELL_MAGE_JOUSTER, EFFECT_0))
            amount = jousterRank->GetAmount();
    }

    void Register() override
    {
        DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_mage_jouster_buff::CalculateAmount, EFFECT_0, SPELL_AURA_MOD_DAMAGE_PERCENT_TAKEN);
    }
};

// Chain Reaction - 195419
class spell_mage_chain_reaction : public AuraScript
{
    PrepareAuraScript(spell_mage_chain_reaction);

    bool CheckProc(ProcEventInfo& eventInfo)
    {
        return eventInfo.GetSpellInfo()->Id == SPELL_MAGE_FROSTBOLT || eventInfo.GetSpellInfo()->Id == SPELL_MAGE_FROSTBOLT_TRIGGER;
    }

    void Register() override
    {
        DoCheckProc += AuraCheckProcFn(spell_mage_chain_reaction::CheckProc);
    }
};

// Chilled to the Core - 195448
class spell_mage_chilled_to_the_core : public AuraScript
{
    PrepareAuraScript(spell_mage_chilled_to_the_core);

    bool CheckProc(ProcEventInfo& eventInfo)
    {
        return eventInfo.GetSpellInfo()->Id == SPELL_MAGE_ICY_VEINS;
    }

    void Register() override
    {
        DoCheckProc += AuraCheckProcFn(spell_mage_chilled_to_the_core::CheckProc);
    }
};

// Combustion - 190319
class spell_mage_combustion : public SpellScriptLoader
{
public:
    spell_mage_combustion() : SpellScriptLoader("spell_mage_combustion") {}

    class spell_mage_combustion_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_mage_combustion_AuraScript);

        void CalcAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& /*canBeRecalculated*/)
        {
            Unit* caster = GetCaster();
            if (!caster)
                return;

            if (!caster->IsPlayer())
                return;

            int32 crit = caster->ToPlayer()->GetRatingBonusValue(CR_CRIT_SPELL);
            amount += crit;
        }

        void HandleRemove(AuraEffect const* /*aurEffect*/, AuraEffectHandleModes /*mode*/)
        {
            GetCaster()->RemoveAurasDueToSpell(SPELL_INFERNO);
        }

        void Register() override
        {
            DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_mage_combustion_AuraScript::CalcAmount, EFFECT_1, SPELL_AURA_MOD_RATING);
            OnEffectRemove += AuraEffectRemoveFn(spell_mage_combustion_AuraScript::HandleRemove, EFFECT_1, SPELL_AURA_MOD_RATING, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_mage_combustion_AuraScript();
    }
};

// Fire mage (passive) - 137019
class spell_mage_fire_mage_passive : public SpellScriptLoader
{
public:
    spell_mage_fire_mage_passive() : SpellScriptLoader("spell_mage_fire_mage_passive") {}

    class spell_mage_fire_mage_passive_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_mage_fire_mage_passive_AuraScript);

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
           // if (!sSpellMgr->GetSpellInfo(SPELL_MAGE_FIRE_MAGE_PASSIVE, DIFFICULTY_NONE) ||
            //    !sSpellMgr->GetSpellInfo(SPELL_MAGE_FIRE_BLAST, DIFFICULTY_NONE))
              //  return false;
            return true;
        }

    public:

        spell_mage_fire_mage_passive_AuraScript() {}

    private:

        SpellModifier* mod = nullptr;

        void HandleApply(AuraEffect const* aurEffect, AuraEffectHandleModes /*mode*/)
        {
            Player* player = GetCaster()->ToPlayer();
            if (!player)
                return;

            SpellModifierByClassMask* mod = new SpellModifierByClassMask(aurEffect->GetBase());
            mod->op = SpellModOp::CritChance;
            mod->type = SPELLMOD_FLAT;
            mod->spellId = SPELL_MAGE_FIRE_MAGE_PASSIVE;
            mod->value = 200;
            mod->mask[0] = 0x2;

            player->AddSpellMod(mod, true);
        }

        void HandleRemove(AuraEffect const* /*aurEffect*/, AuraEffectHandleModes /*mode*/)
        {
            Player* player = GetCaster()->ToPlayer();
            if (!player)
                return;

            if (mod)
                player->AddSpellMod(mod, false);
        }

        void Register() override
        {
            OnEffectApply += AuraEffectApplyFn(spell_mage_fire_mage_passive_AuraScript::HandleApply, EFFECT_4, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
            OnEffectRemove += AuraEffectRemoveFn(spell_mage_fire_mage_passive_AuraScript::HandleRemove, EFFECT_4, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_mage_fire_mage_passive_AuraScript();
    }
};

// Ice Floes - 108839
class spell_mage_ice_floes : public AuraScript
{
    PrepareAuraScript(spell_mage_ice_floes);

    void HandleAfterProc(ProcEventInfo& eventInfo)
    {
        if (eventInfo.GetSpellInfo() && eventInfo.GetSpellInfo()->CalcCastTime())
            if (Unit* caster = GetCaster())
                if (Aura* iceFloes = caster->GetAura(SPELL_MAGE_ICE_FLOES))
                    iceFloes->ModStackAmount(-1);
    }

    void Register() override
    {
        AfterProc += AuraProcFn(spell_mage_ice_floes::HandleAfterProc);
    }
};

// Flame On - 205029
class spell_mage_fire_on : public SpellScriptLoader
{
public:
    spell_mage_fire_on() : SpellScriptLoader("spell_mage_fire_on") { }

    class spell_mage_fire_on_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_mage_fire_on_SpellScript);

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            return ValidateSpellInfo({
                    SPELL_MAGE_FIRE_ON,
                    SPELL_MAGE_FIRE_BLAST
                });
        }

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            Unit* caster = GetCaster();
            Unit* target = GetHitUnit();
            if (!caster || !target || caster->GetTypeId() != TYPEID_PLAYER)
                return;

           // caster->ToPlayer()->GetSpellHistory()->ResetCharges(sSpellMgr->GetSpellInfo(SPELL_MAGE_FIRE_BLAST, DIFFICULTY_NONE)->ChargeCategoryId);
        }

        void Register() override
        {
            OnEffectHitTarget += SpellEffectFn(spell_mage_fire_on_SpellScript::HandleDummy, EFFECT_2, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_mage_fire_on_SpellScript();
    }
};

// Mirror Image - 55342
class spell_mage_mirror_image_summon : public SpellScriptLoader
{
public:
    spell_mage_mirror_image_summon() : SpellScriptLoader("spell_mage_mirror_image_summon") { }

    class spell_mage_mirror_image_summon_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_mage_mirror_image_summon_SpellScript);

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            if (Unit* caster = GetCaster())
            {
                caster->CastSpell(caster, SPELL_MAGE_MIRROR_IMAGE_LEFT, true);
                caster->CastSpell(caster, SPELL_MAGE_MIRROR_IMAGE_FRONT, true);
                caster->CastSpell(caster, SPELL_MAGE_MIRROR_IMAGE_RIGHT, true);
            }
        }

        void Register() override
        {
            OnEffectHitTarget += SpellEffectFn(spell_mage_mirror_image_summon_SpellScript::HandleDummy, EFFECT_1, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_mage_mirror_image_summon_SpellScript();
    }
};

// Meteor - 177345
// AreaTriggerID - 8089
class at_mage_meteor_timer : public AreaTriggerEntityScript
{
public:
    at_mage_meteor_timer() : AreaTriggerEntityScript("at_mage_meteor_timer") {}

    struct at_mage_meteor_timerAI : AreaTriggerAI
    {
        at_mage_meteor_timerAI(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

        void OnCreate() override
        {
            Unit* caster = at->GetCaster();
            if (!caster)
                return;

            if (TempSummon* tempSumm = caster->SummonCreature(WORLD_TRIGGER, at->GetPosition(), TEMPSUMMON_TIMED_DESPAWN, 5s))
            {
                tempSumm->SetFaction(caster->GetFaction());
                tempSumm->SetSummonerGUID(caster->GetGUID());
                PhasingHandler::InheritPhaseShift(tempSumm, caster);
                caster->CastSpell(tempSumm, SPELL_MAGE_METEOR_VISUAL, true);
            }

        }

        void OnRemove() override
        {
            Unit* caster = at->GetCaster();
            if (!caster)
                return;

            if (TempSummon* tempSumm = caster->SummonCreature(WORLD_TRIGGER, at->GetPosition(), TEMPSUMMON_TIMED_DESPAWN, 5s))
            {
                tempSumm->SetFaction(caster->GetFaction());
                tempSumm->SetSummonerGUID(caster->GetGUID());
                PhasingHandler::InheritPhaseShift(tempSumm, caster);
                caster->CastSpell(tempSumm, SPELL_MAGE_METEOR_DAMAGE, true);
            }
        }
    };

    AreaTriggerAI* GetAI(AreaTrigger* areatrigger) const override
    {
        return new at_mage_meteor_timerAI(areatrigger);
    }
};

// Meteor Burn - 175396
// AreaTriggerID - 6211
class at_mage_meteor_burn : public AreaTriggerEntityScript
{
public:
    at_mage_meteor_burn() : AreaTriggerEntityScript("at_mage_meteor_burn") { }

    struct at_mage_meteor_burnAI : AreaTriggerAI
    {
        at_mage_meteor_burnAI(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

        void OnUnitEnter(Unit* unit) override
        {
            Unit* caster = at->GetCaster();

            if (!caster || !unit)
                return;

            if (caster->GetTypeId() != TYPEID_PLAYER)
                return;

            if (caster->IsValidAttackTarget(unit))
                caster->CastSpell(unit, SPELL_MAGE_METEOR_BURN, true);
        }

        void OnUnitExit(Unit* unit) override
        {
            Unit* caster = at->GetCaster();

            if (!caster || !unit)
                return;

            if (caster->GetTypeId() != TYPEID_PLAYER)
                return;

            if (Aura* meteor = unit->GetAura(SPELL_MAGE_METEOR_BURN, caster->GetGUID()))
                meteor->SetDuration(0);
        }
    };

    AreaTriggerAI* GetAI(AreaTrigger* areatrigger) const override
    {
        return new at_mage_meteor_burnAI(areatrigger);
    }
};

// Blizzard - 190356
// AreaTriggerID - 9397
class at_mage_blizzard : public AreaTriggerEntityScript
{
public:
    at_mage_blizzard() : AreaTriggerEntityScript("at_mage_blizzard") { }

    struct at_mage_blizzardAI : AreaTriggerAI
    {
        at_mage_blizzardAI(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger)
        {
            timeInterval = 1000;
        }

        int32 timeInterval;

        enum UsingSpells
        {
            SPELL_MAGE_BLIZZARD_DAMAGE = 190357
        };

        void OnCreate() override
        {
            at->SetDuration(8000);
        }

        void OnUpdate(uint32 diff) override
        {
            Unit* caster = at->GetCaster();

            if (!caster)
                return;

            if (!caster->IsPlayer())
                return;

            timeInterval += diff;
            if (timeInterval < 1000)
                return;

            if (TempSummon* tempSumm = caster->SummonCreature(WORLD_TRIGGER, at->GetPosition(), TEMPSUMMON_TIMED_DESPAWN, 8100ms))
            {
                tempSumm->SetFaction(caster->GetFaction());
                tempSumm->SetSummonerGUID(caster->GetGUID());
                PhasingHandler::InheritPhaseShift(tempSumm, caster);
                caster->CastSpell(tempSumm, SPELL_MAGE_BLIZZARD_DAMAGE, true);
            }

            timeInterval -= 1000;
        }
    };

    AreaTriggerAI* GetAI(AreaTrigger* areatrigger) const override
    {
        return new at_mage_blizzardAI(areatrigger);
    }
};

// Rune of Power - 116011
// AreaTriggerID - 2947
struct at_mage_rune_of_power : AreaTriggerAI
{
    at_mage_rune_of_power(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

    enum UsingSpells
    {
        SPELL_MAGE_RUNE_OF_POWER_AURA = 116014
    };

    void OnCreate() override
    {
        //at->SetSpellXSpellVisualId(25943);
    }

    void OnUnitEnter(Unit* unit) override
    {
        if (Unit* caster = at->GetCaster())
            if (unit->GetGUID() == caster->GetGUID())
                caster->CastSpell(unit, SPELL_MAGE_RUNE_OF_POWER_AURA, true);
    }

    void OnUnitExit(Unit* unit) override
    {
        if (unit->HasAura(SPELL_MAGE_RUNE_OF_POWER_AURA))
            unit->RemoveAurasDueToSpell(SPELL_MAGE_RUNE_OF_POWER_AURA);
    }
};

// Frozen Orb - 84714
// AreaTriggerID - 12740
struct at_mage_frozen_orb : AreaTriggerAI
{
    at_mage_frozen_orb(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger)
    {
        damageInterval = 500;
    }

    uint32 damageInterval;
    bool procDone = false;

    void OnInitialize() override
    {
        Unit* caster = at->GetCaster();
        if (!caster)
            return;

        Position pos = caster->GetPosition();

        at->MovePositionToFirstCollision(pos, 40.0f, 0.0f);
        at->SetDestination(pos, 4000);
    }

    void OnCreate() override
    {
        //at->SetSpellXSpellVisualId(40291);
    }

    void OnUpdate(uint32 diff) override
    {
        Unit* caster = at->GetCaster();
        if (!caster || !caster->IsPlayer())
            return;

        if (damageInterval <= diff)
        {
            if (!procDone)
            {
                for (ObjectGuid guid : at->GetInsideUnits())
                {
                    if (Unit* unit = ObjectAccessor::GetUnit(*caster, guid))
                    {
                        if (caster->IsValidAttackTarget(unit))
                        {
                            if (caster->HasAura(SPELL_MAGE_FINGERS_OF_FROST_AURA))
                                caster->CastSpell(caster, SPELL_MAGE_FINGERS_OF_FROST_VISUAL_UI, true);

                            caster->CastSpell(caster, SPELL_MAGE_FINGERS_OF_FROST_AURA, true);

                           // at->UpdateTimeToTarget(8000); TODO
                            procDone = true;
                            break;
                        }
                    }
                }
            }

            caster->CastSpell(at->GetPosition(), SPELL_MAGE_FROZEN_ORB_DAMAGE, true);
            damageInterval = 500;
        }
        else
            damageInterval -= diff;
    }
};

// Arcane Orb - 153626
// AreaTriggerID - 1612
struct at_mage_arcane_orb : AreaTriggerAI
{
    at_mage_arcane_orb(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

    void OnUnitEnter(Unit* unit) override
    {
        if (Unit* caster = at->GetCaster())
            if (caster->IsValidAttackTarget(unit))
                caster->CastSpell(unit, SPELL_MAGE_ARCANE_ORB_DAMAGE, true);
    }
};

// 31216 - Mirror Image
class npc_mirror_image : public CreatureScript
{
public:
    npc_mirror_image() : CreatureScript("npc_mirror_image") { }

    enum eSpells
    {
        SPELL_MAGE_FROSTBOLT = 59638,
        SPELL_MAGE_FIREBALL = 133,
        SPELL_MAGE_ARCANE_BLAST = 30451,
        SPELL_MAGE_GLYPH = 63093,
        SPELL_INITIALIZE_IMAGES = 102284,
        SPELL_CLONE_CASTER = 60352,
        SPELL_INHERIT_MASTER_THREAT = 58838
    };

    struct npc_mirror_imageAI : CasterAI
    {
        npc_mirror_imageAI(Creature* creature) : CasterAI(creature) { }

        void IsSummonedBy(WorldObject* owner) override
        {
            if (!owner || !owner->IsPlayer())
                return;

          //  if (!me->HasUnitState(UnitState::UNIT_STATE_FOLLOW))
           // {
           //     me->GetMotionMaster()->Clear();
           //     me->GetMotionMaster()->MoveFollow(owner->ToUnit(), PET_FOLLOW_DIST, me->GetFollowAngle(), MovementSlot::MOTION_SLOT_ACTIVE);
         //   }

           // me->SetMaxPower(me->GetPowerType(), owner->GetMaxPower(me->GetPowerType()));
            me->SetFullPower(me->GetPowerType());
            me->SetMaxHealth(owner->ToUnit()->GetMaxHealth());
            me->SetHealth(owner->ToUnit()->GetHealth());
            me->SetReactState(ReactStates::REACT_DEFENSIVE);

            me->CastSpell(owner, SPELL_INHERIT_MASTER_THREAT, true);

            // here mirror image casts on summoner spell (not present in client dbc) 49866
            // here should be auras (not present in client dbc): 35657, 35658, 35659, 35660 selfcasted by mirror images (stats related?)

            for (uint32 attackType = 0; attackType < WeaponAttackType::MAX_ATTACK; ++attackType)
            {
                WeaponAttackType attackTypeEnum = static_cast<WeaponAttackType>(attackType);
                me->SetBaseWeaponDamage(attackTypeEnum, WeaponDamageRange::MAXDAMAGE, owner->ToUnit()->GetWeaponDamageRange(attackTypeEnum, WeaponDamageRange::MAXDAMAGE));
                me->SetBaseWeaponDamage(attackTypeEnum, WeaponDamageRange::MINDAMAGE, owner->ToUnit()->GetWeaponDamageRange(attackTypeEnum, WeaponDamageRange::MINDAMAGE));
            }

            me->UpdateAttackPowerAndDamage();
        }

        void JustEngagedWith(Unit* who) override
        {
            Unit* owner = me->GetOwner();
            if (!owner)
                return;

            Player* ownerPlayer = owner->ToPlayer();
            if (!ownerPlayer)
                return;

            eSpells spellId = eSpells::SPELL_MAGE_FROSTBOLT;
            switch (ownerPlayer->GetSpecializationId())
            {
            case TALENT_SPEC_MAGE_ARCANE:
                spellId = eSpells::SPELL_MAGE_ARCANE_BLAST;
                break;
            case TALENT_SPEC_MAGE_FIRE:
                spellId = eSpells::SPELL_MAGE_FIREBALL;
                break;
            default:
                break;
            }

        //    events.ScheduleEvent(spellId, 0); ///< Schedule cast
          //  me->GetMotionMaster()->Clear();
        }

        void EnterEvadeMode(EvadeReason /*reason*/) override
        {
            if (me->IsInEvadeMode() || !me->IsAlive())
                return;

            Unit* owner = me->GetOwner();

            me->CombatStop(true);
          //  if (owner && !me->HasUnitState(UNIT_STATE_FOLLOW))
           // {
             //   me->GetMotionMaster()->Clear();
              //  me->GetMotionMaster()->MoveFollow(owner->ToUnit(), PET_FOLLOW_DIST, me->GetFollowAngle(), MovementSlot::MOTION_SLOT_ACTIVE);
           // }
        }

        void Reset() override
        {
            if (Unit* owner = me->GetOwner())
            {
                owner->CastSpell(me, SPELL_INITIALIZE_IMAGES, true);
                owner->CastSpell(me, SPELL_CLONE_CASTER, true);
            }
        }

        bool CanAIAttack(Unit const* target) const override
        {
            /// Am I supposed to attack this target? (ie. do not attack polymorphed target)
            return target && !target->HasBreakableByDamageCrowdControlAura();
        }

        void UpdateAI(uint32 diff) override
        {
         //   events.Update(diff);

            Unit* l_Victim = me->GetVictim();
            if (l_Victim)
            {
                if (CanAIAttack(l_Victim))
                {
                    /// If not already casting, cast! ("I'm a cast machine")
                    if (!me->HasUnitState(UNIT_STATE_CASTING))
                    {
                     //   if (uint32 spellId = events.ExecuteEvent())
                        {
                          //  DoCast(spellId);
                        //    uint32 castTime = me->GetCurrentSpellCastTime(spellId);
                           // events.ScheduleEvent(spellId, (castTime ? castTime : 500) + sSpellMgr->GetSpellInfo(spellId, DIFFICULTY_NONE)->ProcCooldown);
                        }
                    }
                }
                else
                {
                    /// My victim has changed state, I shouldn't attack it anymore
                    if (me->HasUnitState(UNIT_STATE_CASTING))
                        me->CastStop();

                    me->AI()->EnterEvadeMode();
                }
            }
            else
            {
                /// Let's choose a new target
                Unit* target = me->SelectVictim();
                if (!target)
                {
                    /// No target? Let's see if our owner has a better target for us
                    if (Unit* owner = me->GetOwner())
                    {
                        Unit* ownerVictim = owner->GetVictim();
                        if (ownerVictim && me->CanCreatureAttack(ownerVictim))
                            target = ownerVictim;
                    }
                }

                if (target)
                    me->AI()->AttackStart(target);
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_mirror_imageAI(creature);
    }
};

// Flame Patch
// AreaTriggerID - 10801
struct at_mage_flame_patch : AreaTriggerAI
{
    at_mage_flame_patch(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }


    void OnCreate() override
    {
        timeInterval = 1000;
    }

    int32 timeInterval;

    void OnUpdate(uint32 diff) override
    {
        Unit* caster = at->GetCaster();

        if (!caster)
            return;

        if (caster->GetTypeId() != TYPEID_PLAYER)
            return;

        timeInterval += diff;
        if (timeInterval < 1000)
            return;

        caster->CastSpell(at->GetPosition(), SPELL_MAGE_FLAME_PATCH_AOE_DMG, true);

        timeInterval -= 1000;
    }
};

// Cinderstorm - 198929
// AreaTriggerID - 10194
struct at_mage_cinderstorm : AreaTriggerAI
{
    at_mage_cinderstorm(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

    void OnUnitEnter(Unit* unit) override
    {
        if (Unit* caster = at->GetCaster())
            if (caster->IsValidAttackTarget(unit))
                caster->CastSpell(unit, SPELL_MAGE_CINDERSTORM_DMG, true);
    }
};

// Cinderstorm - 198928
class spell_mage_cinderstorm : public SpellScript
{
    PrepareSpellScript(spell_mage_cinderstorm);

    void HandleDamage(SpellEffIndex /*effIndex*/)
    {
        Unit* caster = GetCaster();
        Unit* target = GetHitUnit();
        if (!caster || !target)
            return;

        if (target->HasAura(SPELL_MAGE_IGNITE_DOT))
        {
        //    int32 pct = sSpellMgr->GetSpellInfo(SPELL_MAGE_CINDERSTORM, DIFFICULTY_NONE)->GetEffect(EFFECT_0).CalcValue(caster);
            int32 dmg = GetHitDamage();
           // AddPct(dmg, pct);
            SetHitDamage(dmg);
        }
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_mage_cinderstorm::HandleDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
    }
};

// 257537 - Ebonbolt
class spell_mage_ebonbolt : public SpellScript
{
    PrepareSpellScript(spell_mage_ebonbolt);

    bool Validate(SpellInfo const* /*spellInfo*/) override
    {
        return ValidateSpellInfo(
            {
                SPELL_MAGE_SPLITTING_ICE,
                SPELL_MAGE_EBONBOLT_DAMAGE,
                SPELL_MAGE_BRAIN_FREEZE_AURA
            });
    }

    void DoCast()
    {
        GetCaster()->CastSpell(GetCaster(), SPELL_MAGE_BRAIN_FREEZE_AURA, true);
    }

    void DoEffectHitTarget(SpellEffIndex /*effIndex*/)
    {
        Unit* explTarget = GetExplTargetUnit();
        Unit* hitUnit = GetHitUnit();
        if (!hitUnit || !explTarget)
            return;

        if (GetCaster()->HasAura(SPELL_MAGE_SPLITTING_ICE))
            GetCaster()->VariableStorage.Set<ObjectGuid>("explTarget", explTarget->GetGUID());

        GetCaster()->CastSpell(hitUnit, SPELL_MAGE_EBONBOLT_DAMAGE, true);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_mage_ebonbolt::DoEffectHitTarget, EFFECT_0, SPELL_EFFECT_DUMMY);
        OnCast += SpellCastFn(spell_mage_ebonbolt::DoCast);
    }
};

// 257538 - Ebonbolt Damage
class spell_mage_ebonbolt_damage : public SpellScript
{
    PrepareSpellScript(spell_mage_ebonbolt_damage);

    bool Validate(SpellInfo const* /*spellInfo*/) override
    {
        return ValidateSpellInfo(
            {
                SPELL_MAGE_SPLITTING_ICE
            });
    }

    void DoEffectHitTarget(SpellEffIndex /*effIndex*/)
    {
        Unit* hitUnit = GetHitUnit();
        ObjectGuid primaryTarget = GetCaster()->VariableStorage.GetValue<ObjectGuid>("explTarget");
        int32 damage = GetHitDamage();
        if (!hitUnit || !primaryTarget)
            return;

       // if (int32 eff1 = sSpellMgr->GetSpellInfo(SPELL_MAGE_SPLITTING_ICE, DIFFICULTY_NONE)->GetEffect(EFFECT_1).CalcValue())
          //  if (hitUnit->GetGUID() != primaryTarget)
            //    SetHitDamage(CalculatePct(damage, eff1));
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_mage_ebonbolt_damage::DoEffectHitTarget, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
    }
};

// Firestarter - 203283
class spell_mage_firestarter_pvp : public AuraScript
{
    PrepareAuraScript(spell_mage_firestarter_pvp);

    bool CheckProc(ProcEventInfo& eventInfo)
    {
        return eventInfo.GetSpellInfo()->Id == SPELL_MAGE_FIREBALL;
    }

    void HandleProc(AuraEffect* aurEff, ProcEventInfo& /*eventInfo*/)
    {
        Unit* caster = GetCaster();
        if (!caster)
            return;

        caster->GetSpellHistory()->ModifyCooldown(SPELL_MAGE_COMBUSTION, -Seconds(-aurEff->GetAmount() - 5000));
    }

    void Register() override
    {
        DoCheckProc += AuraCheckProcFn(spell_mage_firestarter_pvp::CheckProc);
        OnEffectProc += AuraEffectProcFn(spell_mage_firestarter_pvp::HandleProc, EFFECT_1, SPELL_AURA_DUMMY);
    }
};

//1953
class spell_mage_blink : public SpellScript
{
    PrepareSpellScript(spell_mage_blink);

    void HandleLeap()
    {
        //if (GetCaster()->HasAura(SPELL_MAGE_BLAZING_SOUL))
        //    GetCaster()->AddAura(SPELL_MAGE_BLAZING_BARRIER);

      //  if (GetCaster()->HasAura(SPELL_MAGE_PRISMATIC_CLOAK))
        //    GetCaster()->AddAura(SPELL_MAGE_PRISMATIC_CLOAK_BUFF);
    }

    void Register() override
    {
        OnCast += SpellCastFn(spell_mage_blink::HandleLeap);
    }
};

void AddSC_DekkCore_mage_spell_scripts()
{
    new playerscript_mage_arcane();
    new spell_mage_combustion();
    new spell_mage_fire_mage_passive();
    new spell_mage_fire_on();
    new spell_mage_mirror_image_summon();
    RegisterSpellScript(spell_mage_ice_floes);
    RegisterSpellScript(spell_mage_ebonbolt);
    RegisterSpellScript(spell_mage_ebonbolt_damage);
    RegisterSpellScript(spell_mage_flurry);
    RegisterSpellScript(spell_mage_pyroblast);
    RegisterSpellScript(spell_mage_meteor);
    RegisterSpellScript(spell_mage_meteor_damage);
    RegisterSpellScript(spell_mage_fire_blast);
    RegisterSpellScript(spell_mage_arcane_missiles_damage);

    RegisterSpellScript(spell_mage_chrono_shift);
    RegisterSpellScript(spell_mage_arcane_missiles);
    RegisterSpellScript(spell_mage_conflagration);
    RegisterSpellScript(spell_mage_enhanced_pyrotechnics);
    RegisterSpellScript(spell_mage_frenetic_speed);
    RegisterSpellScript(spell_mage_kindling);
    RegisterSpellScript(spell_mage_pyroblast_clearcasting_driver);
    RegisterSpellScript(spell_mage_chilled_to_the_core);
    RegisterSpellScript(spell_mage_chain_reaction);
    RegisterSpellScript(spell_mage_jouster);
    RegisterSpellScript(spell_mage_jouster_buff);
    RegisterSpellScript(spell_mage_chilled);
    RegisterSpellScript(spell_mage_firestarter_pvp);
    RegisterSpellScript(spell_mage_flamestrike);
    RegisterSpellScript(spell_mage_cinderstorm);
    RegisterSpellScript(spell_mage_clearcasting);
    RegisterSpellScript(spell_mage_presence_of_mind);
    RegisterSpellScript(spell_mage_arcane_blast);
    new at_mage_meteor_timer();
    new at_mage_meteor_burn();
    new at_mage_blizzard();
    RegisterAreaTriggerAI(at_mage_rune_of_power);
    RegisterAreaTriggerAI(at_mage_frozen_orb);
    RegisterAreaTriggerAI(at_mage_arcane_orb);
    RegisterAreaTriggerAI(at_mage_flame_patch);
    RegisterAreaTriggerAI(at_mage_cinderstorm);
    new npc_mirror_image();
    RegisterSpellScript(spell_mage_blink);
}
