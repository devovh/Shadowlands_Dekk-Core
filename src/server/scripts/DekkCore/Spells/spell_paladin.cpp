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
 * Scripts for spells with SPELLFAMILY_PALADIN and SPELLFAMILY_GENERIC spells used by paladin players.
 * Ordered alphabetically using scriptname.
 * Scriptnames of files in this file should be prefixed with "spell_pal_".
 */

#include "AreaTrigger.h"
#include "ScriptMgr.h"
#include "DB2Stores.h"
#include "Creature.h"
#include "Group.h"
#include "Player.h"
#include "Random.h"
#include "AreaTriggerAI.h"
#include "Spell.h"
#include "PhasingHandler.h"
#include "ScriptedCreature.h"
#include "ScriptMgr.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "SpellHistory.h"
#include "SpellMgr.h"
#include "TemporarySummon.h"

enum PaladinSpells
{
    SPELL_PALADIN_AVENGERS_SHIELD                = 31935,
    SPELL_PALADIN_AVENGING_WRATH                 = 31884,
    SPELL_PALADIN_BEACON_OF_LIGHT                = 53563,
    SPELL_PALADIN_BEACON_OF_LIGHT_HEAL           = 53652,
    SPELL_PALADIN_BLESSING_OF_LOWER_CITY_DRUID   = 37878,
    SPELL_PALADIN_BLESSING_OF_LOWER_CITY_PALADIN = 37879,
    SPELL_PALADIN_BLESSING_OF_LOWER_CITY_PRIEST  = 37880,
    SPELL_PALADIN_BLESSING_OF_LOWER_CITY_SHAMAN  = 37881,
    SPELL_PALADIN_CONSECRATION_REDUCE_SPEED = 204242,
    SPELL_PALADIN_BLINDING_LIGHT_EFFECT          = 105421,
    SPELL_PALADIN_CONCENTRACTION_AURA            = 19746,
    SPELL_PALADIN_DIVINE_PURPOSE_PROC            = 90174,
    SPELL_PALADIN_DIVINE_STEED_HUMAN             = 221883,
    SPELL_PALADIN_DIVINE_STEED_DWARF             = 276111,
    SPELL_PALADIN_CONSECRATION_DAMAGE            = 81297,
    SPELL_PALADIN_DIVINE_STEED_DRAENEI           = 221887,
    SPELL_PALADIN_DIVINE_STEED_DARK_IRON_DWARF   = 276112,
    SPELL_PALADIN_DIVINE_STEED_BLOODELF          = 221886,
    SPELL_PALADIN_DIVINE_STEED_TAUREN            = 221885,
    SPELL_PALADIN_DIVINE_STEED_ZANDALARI_TROLL   = 294133,
    SPELL_PALADIN_DIVINE_STORM_DAMAGE            = 224239,
    SPELL_PALADIN_ENDURING_LIGHT                 = 40471,
    SPELL_PALADIN_ENDURING_JUDGEMENT             = 40472,
    SPELL_PALADIN_EYE_FOR_AN_EYE_RANK_1          = 9799,
    SPELL_PALADIN_EYE_FOR_AN_EYE_DAMAGE          = 25997,
    SPELL_PALADIN_FINAL_STAND                    = 204077,
    SPELL_PALADIN_FINAL_STAND_EFFECT             = 204079,
    SPELL_PALADIN_FORBEARANCE                    = 25771,
    SPELL_PALADIN_GUARDIAN_OF_ANCIENT_KINGS      = 86659,
    SPELL_PALADIN_HAMMER_OF_JUSTICE              = 853,
    SPELL_PALADIN_HAND_OF_SACRIFICE              = 6940,
    SPELL_PALADIN_HOLY_MENDING                   = 64891,
    SPELL_PALADIN_HOLY_POWER_ARMOR               = 28790,
    SPELL_PALADIN_HOLY_POWER_ATTACK_POWER        = 28791,
    SPELL_PALADIN_CONSECRATED_GROUND = 204054,
    SPELL_PALADIN_HOLY_POWER_SPELL_POWER         = 28793,
    SPELL_PALADIN_HOLY_POWER_MP5                 = 28795,
    SPELL_PALADIN_HOLY_SHOCK_R1                  = 20473,
    SPELL_PALADIN_HOLY_SHOCK_R1_DAMAGE           = 25912,
    SPELL_PALADIN_HOLY_SHOCK_R1_HEALING          = 25914,
    SPELL_PALADIN_IMMUNE_SHIELD_MARKER           = 61988,
    SPELL_PALADIN_ITEM_HEALING_TRANCE            = 37706,
    SPELL_PALADIN_JUDGEMENT_GAIN_HOLY_POWER      = 220637,
    SPELL_PALADIN_JUDGEMENT_PROT_RET_R3          = 315867,
    SPELL_PALADIN_RIGHTEOUS_DEFENSE_TAUNT        = 31790,
    SPELL_PALADIN_RIGHTEOUS_VERDICT_AURA         = 267611,
    SPELL_PALADIN_SEAL_OF_RIGHTEOUSNESS          = 25742,
    SPELL_PALADIN_TEMPLAR_VERDICT_DAMAGE         = 224266,
    SPELL_PALADIN_ZEAL_AURA                      = 269571,
    SPELL_PALADIN_DARKEST_BEFORE_THE_DAWN = 210378,
    SPELL_PALADIN_DARKEST_BEFORE_THE_DAWN_BUFF = 210391,
    SPELL_PALADIN_FIST_OF_JUSTICE = 198054,
    SPELL_PALADIN_FIST_OF_JUSTICE_RETRI = 234299,
    SPELL_PALADIN_JUDGMENT_OF_LIGHT = 183778,
    SPELL_PALADIN_JUDGMENT_OF_LIGHT_TARGET_DEBUFF = 196941,
    SPELL_PALADIN_AWAKENING = 248033,
    SPELL_PALADIN_HAND_OF_HINDRANCE = 183218,
    SPELL_PALADIN_LAW_AND_ORDER = 204934,
    PELL_PALADIN_WAKE_OF_ASHES = 255937,
    SPELL_PALADIN_WAKE_OF_ASHES_STUN = 255941,
    SPELL_PALADIN_LIGHT_OF_DAWN = 85222,
    SPELL_PALADIN_LIGHT_OF_DAWN_TRIGGER = 185984,
    SPELL_PALADIN_ARCING_LIGHT_HEAL = 119952,
    SPELL_PALADIN_HOLY_PRISM_ALLIES = 114871,
    SPELL_PALADIN_BEACON_OF_LIGHT_PROC_AURA = 53651,
    SPELL_PALADIN_BEACON_OF_FAITH_PROC_AURA = 177173,
    SPELL_PALADIN_BEACON_OF_FAITH = 156910,
    SPELL_PALADIN_BEACON_OF_VIRTUE = 200025,
    SPELL_PALADIN_INFUSION_OF_LIGHT_AURA = 54149,
    SPELL_PALADIN_HOLY_SHOCK_DAMAGE = 25912,
    SPELL_PALADIN_HOLY_SHOCK_HEAL = 25914,
    SPELL_PALADIN_BLADE_OF_JUSTICE = 184575,
    SPELL_PALADIN_SHIELD_OF_VENGEANCE_DAMAGE = 184689,
    SPELL_PALADIN_CRUSADER_STRIKE = 35395,
    SPELL_PALADIN_ARDENT_DEFENDER = 31850,
    SPELL_PALADIN_ARDENT_DEFENDER_HEAL = 66235,
    SPELL_PALADIN_AURA_OF_SACRIFICE = 183416,
    SPELL_PALADIN_AURA_OF_SACRIFICE_DAMAGE = 210380,
    SPELL_PALADIN_LIGHT_HAMMER_COSMETIC = 122257,
    SPELL_PALADIN_AURA_OF_SACRIFICE_ALLY = 210372,
    SPELL_PALADIN_JUDGMENT_OF_LIGHT_HEAL = 183811,
    SPELL_PALADIN_LIGHTS_HAMMER_TICK = 114918,
    SPELL_PALADIN_LIGHT_OF_THE_MARTYR = 183998,
    SPELL_PALADIN_LIGHT_OF_THE_MARTYR_DAMAGE = 196917,
    SPELL_PALADIN_LIGHT_OF_THE_PROTECTOR = 184092,
    SPELL_PALADIN_FERVENT_MARTYR_BUFF = 223316,
    SPELL_PALADIN_GREATER_BLESSING_OF_KINGS = 203538,
    SPELL_PALADIN_SERAPHIM = 152262,
    SPELL_PALADIN_SHIELD_OF_THE_RIGHTEOUS = 53600,
    SPELL_PALADIN_SHIELD_OF_THE_RIGHTEOUS_PROC = 132403,
    SPELL_PALADIN_DIVINE_PURPOSE_RET_AURA = 223819,
    SPELL_PALADIN_HAND_OF_THE_PROTECTOR = 213652,
    SPELL_PALADIN_CONSECRATION = 26573,
    SPELL_PALADIN_CRUSADERS_MIGHT = 196926,
    SPELL_PALADIN_DIVINE_INTERVENTION_HEAL = 184250,
    SPELL_PALADIN_DIVINE_PURPOSE_HOLY = 197646,
    SPELL_PALADIN_DIVINE_PURPOSE_HOLY_AURA_1 = 216411,
    SPELL_PALADIN_DIVINE_PURPOSE_HOLY_AURA_2 = 216413,
    SPELL_PALADIN_DIVINE_PURPOSE_RET = 223817,
    SPELL_PALADIN_DIVINE_SHIELD = 642,
    SPELL_PALADIN_DIVINE_STEED_SPEED = 220509,
    SPELL_PALADIN_DIVINE_STORM = 53385,
        SPELL_PALADIN_ARCING_LIGHT_DAMAGE = 114919,
        SPELL_PALADIN_AURA_OF_SACRIFICE_HEAL = 210383,
        SPELL_PALADIN_BLINDING_LIGHT_CONFUSE = 105421,
        SPELL_PALADIN_CONSECRATION_HEAL = 204241,
        SPELL_PALADIN_CRUSADERS_JUDGMENT = 204023,
        SPELL_PALADIN_FINAL_STAND_TAUNT = 204079,
        SPELL_PALADIN_FIRST_AVENGER = 203776,
        SPELL_PALADIN_GRAND_CRUSADER_PROC = 85416,
        SPELL_HAMMER_OF_RIGHTEOUS = 53595,
        SPELL_HAMMER_OF_RIGHTEOUS_LIGHT_WAVE = 88263,
        SPELL_PALADIN_HOLY_LIGHT = 82326,
        SPELL_PALADIN_HOLY_PRISM_DAMAGE_VISUAL = 114862,
        SPELL_PALADIN_HOLY_PRISM_DAMAGE_VISUAL_2 = 114870,
        SPELL_PALADIN_HOLY_PRISM_ENNEMIES = 114852,
        SPELL_PALADIN_HOLY_PRISM_HEAL_VISUAL = 121551,
        SPELL_PALADIN_HOLY_PRISM_HEAL_VISUAL_2 = 121552,
        SPELL_PALADIN_HOLY_SHOCK_GENERIC = 20473,
        SPELL_PALADIN_JUDGMENT = 20271,
        SPELL_PALADIN_JUDGMENT_HOLY_DEBUFF = 214222,
        SPELL_PALADIN_JUDGMENT_RETRI_DEBUFF = 197277,
        SPELL_PALADIN_JUSTICARS_VENGEANCE = 215661,
        SPELL_PALADIN_RETRIBUTION_AURA_DAMAGE = 204011,
        SPELL_PALADIN_RIGHTEOUS_PROTECTOR = 204074,
        SPELL_PALADIN_RIGHTEOUS_VERDICT = 267610,
        SPELL_PALADIN_RIGHTEOUS_VERDICT_PROC = 267611,
        SPELL_PALADIN_TEMPLARS_VERDICT = 85256,
        SPELL_PALADIN_TEMPLARS_VERDICT_DAMAGE = 224266,
        SPELL_PALADIN_THE_FIRES_OF_JUSTICE = 209785,
        SPELL_PALADIN_WORD_OF_GLORY = 210191,
        SPELL_PALADIN_WORD_OF_GLORY_HEAL = 214894,
        SPELL_PALADIN_BLESSED_HAMMER = 204019,
};

enum PaladinNPCs
{
    NPC_PALADIN_LIGHTS_HAMMER = 59738
};

enum PaladinSpellVisualKit
{
    PALADIN_VISUAL_KIT_DIVINE_STORM = 73892
};

//210378
class aura_darkest_before_the_dawn : public AuraScript
{
    PrepareAuraScript(aura_darkest_before_the_dawn);

    void OnTick(AuraEffect const* /*aurEff*/)
    {
      //  if (GetCaster())
        //    if (Aura* dawnTrigger = GetCaster()->GetAura(SPELL_PALADIN_DARKEST_BEFORE_THE_DAWN))
          //      GetCaster()->AddAura(SPELL_PALADIN_DARKEST_BEFORE_THE_DAWN_BUFF);
    }

    void Register() override
    {
        OnEffectPeriodic += AuraEffectPeriodicFn(aura_darkest_before_the_dawn::OnTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
    }
};


//234299
class fist_of_justice : public PlayerScript
{
public:
    fist_of_justice() : PlayerScript("fist_of_justice") { }

    void OnModifyPower(Player* player, Powers power, int32 oldValue, int32& newValue, bool /*regen*/, bool /*after*/)
    {
        if (player->GetClass() != CLASS_PALADIN)
            return;

        if (!player->HasAura(SPELL_PALADIN_FIST_OF_JUSTICE))
            return;

        if (player->GetPowerType() == POWER_HOLY_POWER)
            if (newValue < oldValue)
                if (player->HasAura(SPELL_PALADIN_FIST_OF_JUSTICE))
                    player->GetSpellHistory()->ModifyCooldown(SPELL_PALADIN_HAMMER_OF_JUSTICE,(Milliseconds) -2000);
    }
};


//183218
class spell_pal_hand_of_hindrance : public AuraScript
{
    PrepareAuraScript(spell_pal_hand_of_hindrance);

    void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes mode)
    {
        if (GetTargetApplication()->GetRemoveMode() == AURA_REMOVE_BY_ENEMY_SPELL)
            if (Unit* caster = GetCaster())
                if (caster->HasAura(SPELL_PALADIN_LAW_AND_ORDER))
                    caster->GetSpellHistory()->ModifyCooldown(SPELL_PALADIN_HAND_OF_HINDRANCE,(Milliseconds) -15000);
    }

    void Register() override
    {
        OnEffectRemove += AuraEffectRemoveFn(spell_pal_hand_of_hindrance::OnRemove, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
    }
};


// 205290 - Wake of Ashes
class spell_pal_wake_of_ashes : public SpellScript
{
    PrepareSpellScript(spell_pal_wake_of_ashes);

    void HandleDamages(SpellEffIndex /*effIndex*/)
    {
        if (Creature* target = GetHitCreature())
            if (CreatureTemplate const* creTemplate = target->GetCreatureTemplate())
                if (creTemplate->type == CREATURE_TYPE_DEMON || creTemplate->type == CREATURE_TYPE_UNDEAD)
                    GetCaster()->CastSpell(target, SPELL_PALADIN_WAKE_OF_ASHES_STUN, true);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_pal_wake_of_ashes::HandleDamages, EFFECT_0, SPELL_EFFECT_APPLY_AURA);
    }
};

// 53651 - Beacon of Light Proc / Beacon of Faith (proc aura) - 177173
class spell_pal_beacon_of_light_proc : public AuraScript
{
    PrepareAuraScript(spell_pal_beacon_of_light_proc);

    int32 GetPctBySpell(uint32 spellID) const
    {
        int32 pct = 0;

        switch (spellID)
        {
        case SPELL_PALADIN_ARCING_LIGHT_HEAL: // Light's Hammer
        case SPELL_PALADIN_HOLY_PRISM_ALLIES: // Holy Prism
        case SPELL_PALADIN_LIGHT_OF_DAWN: // Light of Dawn
            pct = 15; // 15% heal from these spells
            break;
        default:
            pct = 40; // 40% heal from all other heals
            break;
        }

        return pct;
    }

    bool CheckProc(ProcEventInfo& eventInfo)
    {
        Unit* ownerOfBeacon = GetTarget();
        Unit* targetOfBeacon = GetCaster();
        Unit* targetOfHeal = eventInfo.GetActionTarget();

        //if (eventInfo.GetSpellInfo() && eventInfo.GetSpellInfo()->Id != SPELL_PALADIN_BEACON_OF_LIGHT_HEAL && eventInfo.GetSpellInfo()->Id != SPELL_PALADIN_LIGHT_OF_THE_MARTYR && targetOfBeacon->IsWithinLOSInMap(ownerOfBeacon) && targetOfHeal->GetGUID() != targetOfBeacon->GetGUID())
        return true;

        return false;
    }

    void OnProc(AuraEffect* /*aurEff*/, ProcEventInfo& eventInfo)
    {
        PreventDefaultAction();
        bool auraCheck;
        Unit* ownerOfBeacon = GetTarget();
        Unit* targetOfBeacon = GetCaster();

        if (!targetOfBeacon)
            return;

        HealInfo* healInfo = eventInfo.GetHealInfo();

        if (!healInfo)
            return;

        int32 bp = CalculatePct(healInfo->GetHeal(), GetPctBySpell(GetSpellInfo()->Id));

        if (GetSpellInfo()->Id == SPELL_PALADIN_BEACON_OF_LIGHT_PROC_AURA && (targetOfBeacon->HasAura(SPELL_PALADIN_BEACON_OF_LIGHT) || targetOfBeacon->HasAura(SPELL_PALADIN_BEACON_OF_VIRTUE)))
        {
            ownerOfBeacon->CastSpell(targetOfBeacon, SPELL_PALADIN_BEACON_OF_LIGHT_HEAL, CastSpellExtraArgs(TRIGGERED_FULL_MASK).AddSpellBP0(bp));
            auraCheck = true;
        }

        if ((GetSpellInfo()->Id == SPELL_PALADIN_BEACON_OF_FAITH_PROC_AURA && targetOfBeacon->HasAura(SPELL_PALADIN_BEACON_OF_FAITH)))
        {
            bp /= 2;
            ownerOfBeacon->CastSpell(targetOfBeacon, SPELL_PALADIN_BEACON_OF_LIGHT_HEAL, CastSpellExtraArgs(TRIGGERED_FULL_MASK).AddSpellBP0(bp));
            auraCheck = true;
        }

        if (!auraCheck)
            ownerOfBeacon->RemoveAura(GetSpellInfo()->Id);
    }

    void Register() override
    {
        DoCheckProc += AuraCheckProcFn(spell_pal_beacon_of_light_proc::CheckProc);
        OnEffectProc += AuraEffectProcFn(spell_pal_beacon_of_light_proc::OnProc, EFFECT_0, SPELL_AURA_DUMMY);
    }
};

//231832 - Blade of Wrath! (proc)
class spell_pal_blade_of_wrath_proc : public AuraScript
{
    PrepareAuraScript(spell_pal_blade_of_wrath_proc);

    void HandleProc(AuraEffect* /*aurEff*/, ProcEventInfo& /*eventInfo*/)
    {
        Unit* caster = GetCaster();
        if (!caster)
            return;

        caster->GetSpellHistory()->ResetCooldown(SPELL_PALADIN_BLADE_OF_JUSTICE, true);
    }

    void Register() override
    {
        OnEffectProc += AuraEffectProcFn(spell_pal_blade_of_wrath_proc::HandleProc, EFFECT_0, SPELL_AURA_DUMMY);
    }
};

// 184662 - Shield of Vengeance
class spell_pal_shield_of_vengeance : public AuraScript
{
    PrepareAuraScript(spell_pal_shield_of_vengeance);

    int32 absorb;
    int32 currentAbsorb;

    void CalculateAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& canBeRecalculated)
    {
        if (Unit* caster = GetCaster())
        {
            canBeRecalculated = false;

            float ap = caster->GetTotalAttackPowerValue(BASE_ATTACK);
            absorb = (ap * 20);
            amount += absorb;
        }
    }

    void Absorb(AuraEffect* /*aurEff*/, DamageInfo& dmgInfo, uint32& /*absorbAmount*/)
    {
        Unit* caster = GetCaster();
        if (!caster)
            return;

        currentAbsorb += dmgInfo.GetDamage();
    }

    void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        Unit* caster = GetCaster();
        if (!caster)
            return;

        if (currentAbsorb < absorb)
            return;

        std::list<Unit*> targets;
        caster->GetAttackableUnitListInRange(targets, 8.0f);

        if (uint32 targetSize = targets.size())
            absorb /= targetSize;

        caster->CastSpell(caster, SPELL_PALADIN_SHIELD_OF_VENGEANCE_DAMAGE, CastSpellExtraArgs(TRIGGERED_FULL_MASK).AddSpellBP0(absorb));
    }

    void Register() override
    {
        DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_pal_shield_of_vengeance::CalculateAmount, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB);
        OnEffectRemove += AuraEffectRemoveFn(spell_pal_shield_of_vengeance::OnRemove, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB, AURA_EFFECT_HANDLE_REAL);
        OnEffectAbsorb += AuraEffectAbsorbFn(spell_pal_shield_of_vengeance::Absorb, EFFECT_0);
    }
};


// The fires of Justice - 203316
class spell_pal_the_fire_of_justice : public AuraScript
{
    PrepareAuraScript(spell_pal_the_fire_of_justice);

    bool CheckProc(ProcEventInfo& eventInfo)
    {
        if (eventInfo.GetSpellInfo()->Id == SPELL_PALADIN_CRUSADER_STRIKE)
            return true;

        return false;
    }

    void Register() override
    {
        DoCheckProc += AuraCheckProcFn(spell_pal_the_fire_of_justice::CheckProc);
    }
};


// 31850 - ardent defender
class spell_pal_ardent_defender : public AuraScript
{
    PrepareAuraScript(spell_pal_ardent_defender);

public:
    spell_pal_ardent_defender()
    {
        absorbPct = 0;
        healPct = 0;
    }

    bool Validate(SpellInfo const* /*spellInfo*/) override
    {
        return ValidateSpellInfo({ SPELL_PALADIN_ARDENT_DEFENDER });
    }

    bool Load() override
    {
        absorbPct = GetSpellInfo()->GetEffect(EFFECT_0).CalcValue();
        healPct = GetSpellInfo()->GetEffect(EFFECT_1).CalcValue();
        return GetUnitOwner()->IsPlayer();
    }

    void CalculateAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& /*canBeRecalculated*/)
    {
        amount = -1;
    }

    void Absorb(AuraEffect* aurEff, DamageInfo& dmgInfo, uint32& absorbAmount)
    {
        absorbAmount = CalculatePct(dmgInfo.GetDamage(), absorbPct);

        Unit* target = GetTarget();
        if (dmgInfo.GetDamage() < target->GetHealth())
            return;

        float healAmount = target->CountPctFromMaxHealth(healPct);
        target->CastSpell(target, SPELL_PALADIN_ARDENT_DEFENDER_HEAL, &healAmount);
        aurEff->GetBase()->Remove();
    }

    void Register() override
    {
        DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_pal_ardent_defender::CalculateAmount, EFFECT_1, SPELL_AURA_SCHOOL_ABSORB);
        OnEffectAbsorb += AuraEffectAbsorbFn(spell_pal_ardent_defender::Absorb, EFFECT_1);
    }

private:
    uint32 absorbPct;
    uint32 healPct;
};


// 231895
class spell_pal_crusade : public AuraScript
{
    PrepareAuraScript(spell_pal_crusade);

    void CalculateAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& /*canBeRecalculated*/)
    {
        amount /= 10;
    }

    void OnProc(AuraEffect* /*aurEff*/, ProcEventInfo& eventInfo)
    {
        auto powerCosts = eventInfo.GetSpellInfo()->CalcPowerCost(eventInfo.GetActor(), SPELL_SCHOOL_MASK_HOLY);

        for (auto powerCost : powerCosts)
            if (powerCost.Power == POWER_HOLY_POWER)
                GetAura()->ModStackAmount(powerCost.Amount, AURA_REMOVE_BY_DEFAULT, false);
    }

    void Register() override
    {
        DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_pal_crusade::CalculateAmount, EFFECT_0, SPELL_AURA_ADD_PCT_MODIFIER);
        DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_pal_crusade::CalculateAmount, EFFECT_0, SPELL_AURA_ADD_PCT_MODIFIER);
        OnEffectProc += AuraEffectProcFn(spell_pal_crusade::OnProc, EFFECT_0, SPELL_AURA_ADD_PCT_MODIFIER);
    }
};


// 210372
class spell_pal_aura_of_sacrifice_ally : public AuraScript
{
    PrepareAuraScript(spell_pal_aura_of_sacrifice_ally);

    bool Load() override
    {
        return ValidateSpellInfo({ SPELL_PALADIN_AURA_OF_SACRIFICE });
    }

    void CalcAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& /*canBeRecalculated*/)
    {
        amount = -1;
    }

    void OnAbsorb(AuraEffect* /*aurEff*/, DamageInfo& dmgInfo, uint32& absorbAmount)
    {
        Unit* caster = GetCaster();
        SpellInfo const* auraOfSacrificeInfo = sSpellMgr->GetSpellInfo(SPELL_PALADIN_AURA_OF_SACRIFICE, DIFFICULTY_NONE);

        if (!caster || !caster->IsValidAssistTarget(GetTarget()) ||
            caster->GetHealthPct() < auraOfSacrificeInfo->GetEffect(EFFECT_2).BasePoints)
        {
            absorbAmount = 0;
            return;
        }

        absorbAmount = CalculatePct(dmgInfo.GetDamage(), auraOfSacrificeInfo->GetEffect(EFFECT_0).BasePoints);

        // Deal damages to the paladin
        GetTarget()->CastSpell(caster, SPELL_PALADIN_AURA_OF_SACRIFICE_DAMAGE, CastSpellExtraArgs(TRIGGERED_FULL_MASK).AddSpellBP0(absorbAmount));
    }

    void Register() override
    {
        DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_pal_aura_of_sacrifice_ally::CalcAmount, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB);
        OnEffectAbsorb += AuraEffectAbsorbFn(spell_pal_aura_of_sacrifice_ally::OnAbsorb, EFFECT_0);
    }
};

// 271580 - Divine Judgement
// 85804 - Selfless Healer
class spell_pal_proc_from_holy_power_consumption : public AuraScript
{
    PrepareAuraScript(spell_pal_proc_from_holy_power_consumption);

    bool CheckProc(ProcEventInfo& eventInfo)
    {
        if (Spell const* procSpell = eventInfo.GetProcSpell())
           if (Optional<SpellPowerCost> cost = GetSpellInfo()->CalcPowerCost(POWER_HOLY_POWER, false, GetCaster(), GetSpellInfo()->GetSchoolMask(), nullptr))
                if (cost->Amount > 0)
                    return true;

        return false;
    }

    void Register() override
    {
        DoCheckProc += AuraCheckProcFn(spell_pal_proc_from_holy_power_consumption::CheckProc);
    }
};

// Light's Hammer
// NPC Id - 59738
class npc_pal_lights_hammer : public ScriptedAI
{
public:

    npc_pal_lights_hammer(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
        me->CastSpell(me, SPELL_PALADIN_LIGHT_HAMMER_COSMETIC, true);
        me->SetUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_UNINTERACTIBLE | UNIT_FLAG_REMOVE_CLIENT_CONTROL));
    }
};

// Aura of Sacrifice - 183416
// AreaTriggerID - 100102 (custom)
struct at_pal_aura_of_sacrifice : AreaTriggerAI
{
    at_pal_aura_of_sacrifice(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger)
    {
        at->SetPeriodicProcTimer(1000);
    }

    void OnUnitEnter(Unit* unit) override
    {
        if (Unit* caster = at->GetCaster())
            if (unit->IsPlayer() && caster->IsPlayer() && caster != unit)
                if (caster->ToPlayer()->IsInSameRaidWith(unit->ToPlayer()))
                    caster->CastSpell(unit, SPELL_PALADIN_AURA_OF_SACRIFICE_ALLY, true);
    }

    void OnUnitExit(Unit* unit) override
    {
        unit->RemoveAurasDueToSpell(SPELL_PALADIN_AURA_OF_SACRIFICE_ALLY);
    }
};


//183778
class judgment_of_light : public PlayerScript
{
public:
    judgment_of_light() : PlayerScript("judgment_of_light") { }

    void OnDamage(Unit* caster, Unit* target, uint32& damage, SpellInfo const* spellProto)
    {
        if (Player* player = caster->ToPlayer())
        {
            if (player->GetClass() != CLASS_PALADIN)
                return;
        }

        if (!caster || !target)
            return;

        if (caster->HasAura(SPELL_PALADIN_JUDGMENT_OF_LIGHT) && target->HasAura(SPELL_PALADIN_JUDGMENT_OF_LIGHT_TARGET_DEBUFF))
        {
            if (caster->IsWithinMeleeRange(target))
            {
                caster->CastSpell(nullptr, SPELL_PALADIN_JUDGMENT_OF_LIGHT_HEAL, true);
                target->RemoveAura(SPELL_PALADIN_JUDGMENT_OF_LIGHT_TARGET_DEBUFF, ObjectGuid::Empty, AuraRemoveMode::AURA_REMOVE_BY_ENEMY_SPELL);
            }
        }
    }
};

//212056
class absolution : public PlayerScript
{
public:
    absolution() : PlayerScript("absolution") { }

    void OnPlayerSuccessfulSpellCast(Player* player, Spell* spell)
    {
        if (player->GetClass() != CLASS_PALADIN)
            return;

        uint32 absolution = 212056;

        if (spell->GetSpellInfo()->Id == absolution)
        {
            std::list<Unit*> allies;
            player->GetFriendlyUnitListInRange(allies, 30.0f, false);
            for (auto& targets : allies)
            {
                if (targets->isDead())
                {
                    if (Player* playerTarget = targets->ToPlayer())
                        playerTarget->ResurrectPlayer(0.35f, false);
                }
            }
        }
    }
};


// 185984 - Light of Dawn aoe heal
class spell_pal_light_of_dawn_trigger : public SpellScriptLoader
{
public:
    spell_pal_light_of_dawn_trigger() : SpellScriptLoader("spell_pal_light_of_dawn_trigger") {}

    class spell_pal_light_of_dawn_trigger_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_pal_light_of_dawn_trigger_SpellScript);

        void FilterTargets(std::list<WorldObject*>& targets)
        {
            Unit* caster = GetCaster();
            uint8 limit = 5;

            targets.remove_if([caster](WorldObject* target)
            {
                Position pos = target->GetPosition();
                return !(caster->IsWithinDist2d(&pos, 15.0f) && caster->isInFront(target, float(M_PI / 3))); //must be in a cone in 15 yards
            });

            Trinity::Containers::RandomResize(targets, limit); //max 5 targets.
        }

        void HandleOnHit(SpellEffIndex /*effIndex*/)
        {
            int32 dmg = GetHitHeal();

            dmg += GetCaster()->m_unitData->AttackPower * 1.8f;

            SetHitHeal(dmg);
        }

        void Register() override
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_pal_light_of_dawn_trigger_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_DEST_AREA_ALLY);
            OnEffectHitTarget += SpellEffectFn(spell_pal_light_of_dawn_trigger_SpellScript::HandleOnHit, EFFECT_0, SPELL_EFFECT_HEAL);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_pal_light_of_dawn_trigger_SpellScript();
    }
};


// Light of the Martyr - 183998
class spell_pal_light_of_the_martyr : public SpellScriptLoader
{
public:
    spell_pal_light_of_the_martyr() : SpellScriptLoader("spell_pal_light_of_the_martyr") {}

    class spell_pal_light_of_the_martyr_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_pal_light_of_the_martyr_SpellScript);

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            if (!sSpellMgr->GetSpellInfo(SPELL_PALADIN_LIGHT_OF_THE_MARTYR_DAMAGE, DIFFICULTY_NONE))
                return false;
            return true;
        }

        void HandleOnHit(SpellEffIndex /*effIndex*/)
        {
            Unit* caster = GetCaster();

            float dmg = (GetHitHeal() * 50.0f) / 100.0f;
            caster->CastSpell(caster, SPELL_PALADIN_LIGHT_OF_THE_MARTYR_DAMAGE, &dmg);

            if (caster->HasAura(SPELL_PALADIN_FERVENT_MARTYR_BUFF))
                caster->RemoveAurasDueToSpell(SPELL_PALADIN_FERVENT_MARTYR_BUFF);
        }

        void Register() override
        {
            OnEffectHitTarget += SpellEffectFn(spell_pal_light_of_the_martyr_SpellScript::HandleOnHit, EFFECT_0, SPELL_EFFECT_HEAL);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_pal_light_of_the_martyr_SpellScript();
    }
};

//203538 - Greater Blessing of Kings
class spell_pal_greater_blessing_of_kings : public SpellScriptLoader
{
public:
    spell_pal_greater_blessing_of_kings() : SpellScriptLoader("spell_pal_greater_blessing_of_kings") { }

    class spell_pal_greater_blessing_of_kings_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_pal_greater_blessing_of_kings_AuraScript);

    public:
        spell_pal_greater_blessing_of_kings_AuraScript() : leftAbsorbAmount(0), maxAbsorbAmount(0) { }

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            return ValidateSpellInfo({ SPELL_PALADIN_GREATER_BLESSING_OF_KINGS });
        }

        bool Load() override
        {
            maxAbsorbAmount = 2.7f * GetCaster()->GetTotalSpellPowerValue(SPELL_SCHOOL_MASK_ALL, true);
            leftAbsorbAmount = maxAbsorbAmount;
            return GetUnitOwner()->IsPlayer();
        }

        void OnTick(AuraEffect const* /*aurEff*/)
        {
            leftAbsorbAmount = maxAbsorbAmount;
        }

        void CalculateAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& /*canBeRecalculated*/)
        {
            amount = -1;
        }

        void Absorb(AuraEffect* /*aurEff*/, DamageInfo& dmgInfo, uint32& absorbAmount)
        {
            absorbAmount = std::min(dmgInfo.GetDamage(), leftAbsorbAmount);
            leftAbsorbAmount -= absorbAmount;
        }

        void Register() override
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_pal_greater_blessing_of_kings_AuraScript::OnTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
            DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_pal_greater_blessing_of_kings_AuraScript::CalculateAmount, EFFECT_1, SPELL_AURA_SCHOOL_ABSORB);
            OnEffectAbsorb += AuraEffectAbsorbFn(spell_pal_greater_blessing_of_kings_AuraScript::Absorb, EFFECT_1);
        }

    private:
        uint32 leftAbsorbAmount;
        uint32 maxAbsorbAmount;
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_pal_greater_blessing_of_kings_AuraScript();
    }
};

// 152262 - Seraphim
class spell_pal_seraphim : public SpellScript
{
    PrepareSpellScript(spell_pal_seraphim);

    bool Validate(SpellInfo const* /*spell*/) override
    {
        return ValidateSpellInfo({ SPELL_PALADIN_SERAPHIM, SPELL_PALADIN_SHIELD_OF_THE_RIGHTEOUS });
    }

    SpellCastResult CheckCast()
    {
        uint32 ChargeCategoryId = sSpellMgr->GetSpellInfo(SPELL_PALADIN_SHIELD_OF_THE_RIGHTEOUS, DIFFICULTY_NONE)->ChargeCategoryId;
        if (!GetCaster()->GetSpellHistory()->HasCharge(ChargeCategoryId))
            return SPELL_FAILED_NO_POWER;

        return SPELL_FAILED_SUCCESS;
    }

    void HandleDummy(SpellEffIndex effIndex)
    {
        uint32 ChargeCategoryId = sSpellMgr->GetSpellInfo(SPELL_PALADIN_SHIELD_OF_THE_RIGHTEOUS, DIFFICULTY_NONE)->ChargeCategoryId;
        SpellHistory* spellHistory = GetCaster()->GetSpellHistory();

        //int32 useCharges = (std::min(GetSpellInfo()->GetEffect(effIndex).BasePoints, spellHistory->GetChargeCount(ChargeCategoryId));

    //    for (uint8 i = 0; i < useCharges; ++i)
            spellHistory->ConsumeCharge(ChargeCategoryId);

      //  if (Aura* seraphimAura = GetCaster()->GetAura(SPELL_PALADIN_SERAPHIM))
        //    seraphimAura->SetDuration(GetSpellInfo()->GetMaxDuration() * useCharges);

        spellHistory->ForceSendSpellCharge(sSpellCategoryStore.LookupEntry(ChargeCategoryId));
    }

    void Register() override
    {
        OnCheckCast += SpellCheckCastFn(spell_pal_seraphim::CheckCast);
        OnEffectHitTarget += SpellEffectFn(spell_pal_seraphim::HandleDummy, EFFECT_1, SPELL_EFFECT_DUMMY);
    }
};

// Activate Forbearance
// Called by Blessing of Protection - 1022, Lay on Hands - 633, Blessing of Spellwarding - 204018
class spell_pal_activate_forbearance : public SpellScript
{
    PrepareSpellScript(spell_pal_activate_forbearance);

    bool Validate(SpellInfo const* /*spell*/) override
    {
        return ValidateSpellInfo({ SPELL_PALADIN_FORBEARANCE });
    }

    SpellCastResult CheckForbearance()
    {
        if (Unit* target = GetExplTargetUnit())
        {
            if (target->HasAura(SPELL_PALADIN_FORBEARANCE))
            {
                return SPELL_FAILED_TARGET_AURASTATE;
            }
        }
        return SPELL_CAST_OK;
    }

    void HandleOnHit()
    {
        if (Player* player = GetCaster()->ToPlayer())
            if (Unit* target = GetHitUnit())
                player->CastSpell(target, SPELL_PALADIN_FORBEARANCE, true);
    }

    void Register() override
    {
        OnCheckCast += SpellCheckCastFn(spell_pal_activate_forbearance::CheckForbearance);
        OnHit += SpellHitFn(spell_pal_activate_forbearance::HandleOnHit);
    }
};


// Justicar's Vengeance - 215661
class spell_pal_justicars_vengeance : public SpellScript
{
    PrepareSpellScript(spell_pal_justicars_vengeance);

    void HandleHit(SpellEffIndex /*effIndex*/)
    {
        Unit* caster = GetCaster();
        Unit* target = GetHitUnit();
        if (!target)
            return;

        if (target->HasAuraType(SPELL_AURA_MOD_STUN) || target->HasAuraWithMechanic(1 << MECHANIC_STUN))
        {
            int32 damage = GetHitDamage();
            AddPct(damage, 50);

            SetHitDamage(damage);
            SetEffectValue(damage);
        }

        if (caster->HasAura(SPELL_PALADIN_DIVINE_PURPOSE_RET_AURA))
            caster->RemoveAurasDueToSpell(SPELL_PALADIN_DIVINE_PURPOSE_RET_AURA);

        if (caster->HasAura(SPELL_PALADIN_FIST_OF_JUSTICE_RETRI))
            if (caster->GetSpellHistory()->HasCooldown(SPELL_PALADIN_HAMMER_OF_JUSTICE))
                caster->GetSpellHistory()->ModifyCooldown(SPELL_PALADIN_HAMMER_OF_JUSTICE,(Milliseconds) -10 * IN_MILLISECONDS);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_pal_justicars_vengeance::HandleHit, EFFECT_0, SPELL_EFFECT_HEALTH_LEECH);
    }
};



// 210191 - Word of Glory
class spell_pal_word_of_glory : public SpellScript
{
    PrepareSpellScript(spell_pal_word_of_glory);

    WorldObject* m_mainTarget;

    void HandleDummy(SpellEffIndex /*effIndex*/)
    {
        m_mainTarget = GetHitUnit();
    }

    void FilterTargets(std::list<WorldObject*>& targets)
    {
        uint32 const maxTargets = uint32(GetSpellInfo()->GetEffect(EFFECT_0).CalcValue(GetCaster()));

        if (m_mainTarget)
            targets.remove(m_mainTarget);

        if (targets.size() > maxTargets)
        {
            targets.sort(Trinity::HealthPctOrderPred());
            targets.resize(maxTargets);
        }

        if (m_mainTarget)
            targets.push_back(m_mainTarget);

        _targets = targets;
    }

    void SetTargets(std::list<WorldObject*>& targets)
    {
        targets = _targets;
    }

    void HandleOnCast()
    {
        if (Unit* caster = GetCaster())
        {
            bool noHpCost = false;

            uint8 hp = caster->GetPower(POWER_HOLY_POWER);
            uint8 hpCost = 3;

            if (caster->HasAura(SPELL_PALADIN_DIVINE_PURPOSE_RET_AURA))
            {
                caster->RemoveAurasDueToSpell(SPELL_PALADIN_DIVINE_PURPOSE_RET_AURA);
                noHpCost = true;
            }

            if (caster->HasAura(SPELL_PALADIN_THE_FIRES_OF_JUSTICE) && !noHpCost)
            {
                caster->RemoveAurasDueToSpell(SPELL_PALADIN_THE_FIRES_OF_JUSTICE);
                hpCost -= 1;
            }

            if (!noHpCost)
            {
                hp -= hpCost;
                caster->SetPower(POWER_HOLY_POWER, hp);
            }

            if (caster->HasAura(SPELL_PALADIN_FIST_OF_JUSTICE_RETRI))
            {
                if (caster->GetSpellHistory()->HasCooldown(SPELL_PALADIN_HAMMER_OF_JUSTICE))
                    caster->GetSpellHistory()->ModifyCooldown(SPELL_PALADIN_HAMMER_OF_JUSTICE,(Milliseconds) -7 * IN_MILLISECONDS);
            }
        }
    }

    void Register() override
    {
        OnCast += SpellCastFn(spell_pal_word_of_glory::HandleOnCast);
        OnEffectHitTarget += SpellEffectFn(spell_pal_word_of_glory::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
    }

private:
    std::list<WorldObject*> _targets;
};


// Divine Purpose Proc
// Called by Seal of Light - 202273, Justicar's Vengeance - 215661, Word of Glory - 210191, Divine Storm - 53385, Templar's Verdict - 85256
// Called by Holy Shock - 20473, Light of Dawn - 85222
class spell_pal_divine_purpose_proc : public SpellScript
{
    PrepareSpellScript(spell_pal_divine_purpose_proc);

    void HandleAfterCast()
    {
        if (Player* player = GetCaster()->ToPlayer())
        {
            if (player->HasSpell(SPELL_PALADIN_DIVINE_PURPOSE_RET) || player->HasSpell(SPELL_PALADIN_DIVINE_PURPOSE_HOLY))
            {
                uint32 spec = player->GetSpecializationId();
                uint32 activateSpell = GetSpellInfo()->Id;

                switch (spec)
                {
                case TALENT_SPEC_PALADIN_RETRIBUTION:
                {
                    if (roll_chance_i(20))
                    {
                        if (activateSpell == SPELL_PALADIN_JUSTICARS_VENGEANCE || activateSpell == SPELL_PALADIN_WORD_OF_GLORY || activateSpell == SPELL_PALADIN_DIVINE_STORM || activateSpell == SPELL_PALADIN_TEMPLARS_VERDICT)
                            player->CastSpell(player, SPELL_PALADIN_DIVINE_PURPOSE_RET_AURA);
                    }
                    break;
                }
                case TALENT_SPEC_PALADIN_HOLY:
                {
                    if (roll_chance_i(15))
                    {
                        if (activateSpell == SPELL_PALADIN_HOLY_SHOCK_GENERIC)
                        {
                            player->CastSpell(player, SPELL_PALADIN_DIVINE_PURPOSE_HOLY_AURA_1);

                            if (player->GetSpellHistory()->HasCooldown(SPELL_PALADIN_HOLY_SHOCK_GENERIC))
                                player->GetSpellHistory()->ResetCooldown(SPELL_PALADIN_HOLY_SHOCK_GENERIC, true);
                        }

                        if (activateSpell == SPELL_PALADIN_LIGHT_OF_DAWN)
                        {
                            player->CastSpell(player, SPELL_PALADIN_DIVINE_PURPOSE_HOLY_AURA_2);

                            if (player->GetSpellHistory()->HasCooldown(SPELL_PALADIN_LIGHT_OF_DAWN))
                                player->GetSpellHistory()->ResetCooldown(SPELL_PALADIN_LIGHT_OF_DAWN, true);
                        }
                    }
                    break;
                }
                }
            }
        }
    }

    void Register() override
    {
        AfterCast += SpellCastFn(spell_pal_divine_purpose_proc::HandleAfterCast);
    }
};


// 31935 - Avenger's Shield
class spell_pal_avengers_shield : public SpellScript
{
    PrepareSpellScript(spell_pal_avengers_shield);

    void HandleOnHit(SpellEffIndex /* effIndex */)
    {
        Unit* caster = GetCaster();
        Unit* target = GetHitUnit();
        if (!target)
            return;

        if (caster->HasAura(SPELL_PALADIN_GRAND_CRUSADER_PROC))
            caster->RemoveAurasDueToSpell(SPELL_PALADIN_GRAND_CRUSADER_PROC);

        int32 damage = GetHitDamage();

        if (caster->HasAura(SPELL_PALADIN_FIRST_AVENGER))
            AddPct(damage, 50);

        SetHitDamage(damage);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_pal_avengers_shield::HandleOnHit, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
    }
};


// Light of the Protector - 184092 and Hand of the Protector - 213652
class spell_pal_light_of_the_protector : public SpellScript
{
    PrepareSpellScript(spell_pal_light_of_the_protector);

    void HandleOnHit(SpellEffIndex /*effIndex*/)
    {
        Unit* caster = GetCaster();
        uint32 dmg;

        if (GetSpellInfo()->Id == SPELL_PALADIN_LIGHT_OF_THE_PROTECTOR)
        {
            int32 effvalue = sSpellMgr->GetSpellInfo(SPELL_PALADIN_LIGHT_OF_THE_PROTECTOR, DIFFICULTY_NONE)->GetEffect(EFFECT_1).BasePoints;
            int32 healthMissing = caster->GetMaxHealth() - caster->GetHealth();

            dmg = ApplyPct(healthMissing, effvalue) + GetHitHeal();

            if (caster->FindNearestCreature(43499, 8) && caster->HasAura(SPELL_PALADIN_CONSECRATION)) // if you are standing in your consecration, the heal is increased by 20%
                AddPct(dmg, 20);
        }

        if (GetSpellInfo()->Id == SPELL_PALADIN_HAND_OF_THE_PROTECTOR)
        {
            int32 effvalue = sSpellMgr->GetSpellInfo(SPELL_PALADIN_HAND_OF_THE_PROTECTOR, DIFFICULTY_NONE)->GetEffect(EFFECT_1).BasePoints;

            Unit* target = GetHitUnit();
            int32 healthMissing = target->GetMaxHealth() - target->GetHealth();

            dmg = ApplyPct(healthMissing, effvalue) + GetHitHeal();
        }

        dmg = std::max(dmg, (uint32)0);

        SetHitHeal(dmg);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_pal_light_of_the_protector::HandleOnHit, EFFECT_0, SPELL_EFFECT_HEAL);
    }
};

// Shield of the Righteous - 53600
class spell_pal_shield_of_the_righteous : public SpellScript
{
    PrepareSpellScript(spell_pal_shield_of_the_righteous);

    void HandleOnHit(SpellEffIndex /*effIndex*/)
    {
        if (Player* player = GetCaster()->ToPlayer())
        {
            if (GetHitUnit())
            {
                if (player->FindNearestCreature(43499, 8) && player->HasAura(SPELL_PALADIN_CONSECRATION)) //if player is standing in his consecration all effects are increased by 20%
                {
                    int32 previousDuration = 0;

                    if (Aura* aur = player->GetAura(SPELL_PALADIN_SHIELD_OF_THE_RIGHTEOUS_PROC))
                        previousDuration = aur->GetDuration();

                    uint32 dmg = GetHitDamage();
                    dmg += dmg / 5;
                    SetHitDamage(dmg); //damage is increased by 20%

                    float mastery = player->m_activePlayerData->Mastery;

                    float reduction = ((-25 - mastery / 2.0f) * 120.0f) / 100.0f; //damage reduction is increased by 20%
                    player->CastSpell(player, SPELL_PALADIN_SHIELD_OF_THE_RIGHTEOUS_PROC, &reduction);

                    if (Aura* aur = player->GetAura(SPELL_PALADIN_SHIELD_OF_THE_RIGHTEOUS_PROC))
                        aur->SetDuration(aur->GetDuration() + previousDuration);
                }
                else
                {
                    int32 previousDuration = 0;

                    if (Aura* aur = player->GetAura(SPELL_PALADIN_SHIELD_OF_THE_RIGHTEOUS_PROC))
                        previousDuration = aur->GetDuration();

                    player->CastSpell(player, SPELL_PALADIN_SHIELD_OF_THE_RIGHTEOUS_PROC, true);

                    if (Aura* aur = player->GetAura(SPELL_PALADIN_SHIELD_OF_THE_RIGHTEOUS_PROC))
                        aur->SetDuration(aur->GetDuration() + previousDuration);
                }

                if (Aura* aura = player->GetAura(SPELL_PALADIN_RIGHTEOUS_PROTECTOR)) //reduce the CD of Light of the Protector and Avenging Wrath by 3
                {
                    uint32 cooldownReduction = aura->GetEffect(EFFECT_0)->GetBaseAmount() * IN_MILLISECONDS;

                    if (player->HasSpell(SPELL_PALADIN_LIGHT_OF_THE_PROTECTOR))
                        if (SpellInfo const* spellInfo = sSpellMgr->GetSpellInfo(SPELL_PALADIN_LIGHT_OF_THE_PROTECTOR, DIFFICULTY_NONE))
                            player->GetSpellHistory()->ReduceChargeCooldown(spellInfo->ChargeCategoryId, cooldownReduction);

                    if (player->HasSpell(SPELL_PALADIN_HAND_OF_THE_PROTECTOR))
                        if (SpellInfo const* spellInfo = sSpellMgr->GetSpellInfo(SPELL_PALADIN_HAND_OF_THE_PROTECTOR, DIFFICULTY_NONE))
                            player->GetSpellHistory()->ReduceChargeCooldown(spellInfo->ChargeCategoryId, cooldownReduction);

                    if (SpellInfo const* spellInfo = sSpellMgr->GetSpellInfo(SPELL_PALADIN_AVENGING_WRATH, DIFFICULTY_NONE))
                        player->GetSpellHistory()->ReduceChargeCooldown(spellInfo->ChargeCategoryId, cooldownReduction);
                }
            }
        }
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_pal_shield_of_the_righteous::HandleOnHit, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
    }
};

// Flash of Light - 19750
class spell_pal_flash_of_light : public SpellScript
{
    PrepareSpellScript(spell_pal_flash_of_light);

    void HandleOnHit(SpellEffIndex /*effIndex*/)
    {
        GetCaster()->RemoveAurasDueToSpell(SPELL_PALADIN_INFUSION_OF_LIGHT_AURA);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_pal_flash_of_light::HandleOnHit, EFFECT_0, SPELL_EFFECT_HEAL);
    }
};

// Crusader Strike - 35395
class spell_pal_crusader_strike : public SpellScript
{
    PrepareSpellScript(spell_pal_crusader_strike);

    void HandleOnHit()
    {
        Unit* caster = GetCaster();

        if (caster->HasAura(SPELL_PALADIN_CRUSADERS_MIGHT))
        {
            if (caster->GetSpellHistory()->HasCooldown(SPELL_PALADIN_HOLY_SHOCK_GENERIC))
                caster->GetSpellHistory()->ModifyCooldown(SPELL_PALADIN_HOLY_SHOCK_GENERIC,(Milliseconds) -1 * IN_MILLISECONDS);

            if (caster->GetSpellHistory()->HasCooldown(SPELL_PALADIN_LIGHT_OF_DAWN))
                caster->GetSpellHistory()->ModifyCooldown(SPELL_PALADIN_LIGHT_OF_DAWN, (Milliseconds)-1 * IN_MILLISECONDS);
        }
    }

    void Register() override
    {
        OnHit += SpellHitFn(spell_pal_crusader_strike::HandleOnHit);
    }
};


// Beacon of Faith - 156910
class spell_pal_beacon_of_faith : public SpellScript
{
    PrepareSpellScript(spell_pal_beacon_of_faith);

    SpellCastResult CheckCast()
    {
        Unit* target = GetExplTargetUnit();

        if (!target)
            return SPELL_FAILED_DONT_REPORT;

        if (target->HasAura(SPELL_PALADIN_BEACON_OF_LIGHT))
            return SPELL_FAILED_BAD_TARGETS;

        return SPELL_CAST_OK;
    }

    void Register()
    {
        OnCheckCast += SpellCheckCastFn(spell_pal_beacon_of_faith::CheckCast);
    }
};

// 53563 - Beacon of Light
class spell_pal_beacon_of_light : public SpellScript
{
    PrepareSpellScript(spell_pal_beacon_of_light);

    SpellCastResult CheckCast()
    {
        Unit* target = GetExplTargetUnit();

        if (!target)
            return SPELL_FAILED_DONT_REPORT;

        if (target->HasAura(SPELL_PALADIN_BEACON_OF_FAITH))
            return SPELL_FAILED_BAD_TARGETS;

        return SPELL_CAST_OK;
    }

    void Register()
    {
        OnCheckCast += SpellCheckCastFn(spell_pal_beacon_of_light::CheckCast);
    }
};


// 84963  - Inquisition
class spell_pal_inquisition : public SpellScript
{
    PrepareSpellScript(spell_pal_inquisition);

    float m_powerTaken = 0.f;

    void HandleTakePower(SpellPowerCost& powerCost)
    {
        m_powerTaken = powerCost.Amount;
    }

    void HandleAfterHit()
    {
        if (Aura* aura = GetCaster()->GetAura(GetSpellInfo()->Id))
            aura->SetDuration(aura->GetDuration() * m_powerTaken);
    }

    void Register() override
    {
        OnTakePower += SpellOnTakePowerFn(spell_pal_inquisition::HandleTakePower);
        AfterHit += SpellHitFn(spell_pal_inquisition::HandleAfterHit);
    }
};


// Bastion of Light - 204035
class spell_pal_bastion_of_light : public SpellScriptLoader
{
public:
    spell_pal_bastion_of_light() : SpellScriptLoader("spell_pal_bastion_of_light") {}

    class spell_pal_bastion_of_light_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_pal_bastion_of_light_SpellScript);

        void HandleOnHit(SpellEffIndex /*effIndex*/)
        {
            Unit* caster = GetCaster();

            caster->GetSpellHistory()->ResetCharges(sSpellMgr->GetSpellInfo(SPELL_PALADIN_SHIELD_OF_THE_RIGHTEOUS, DIFFICULTY_NONE)->ChargeCategoryId);
        }

        void Register() override
        {
            OnEffectHitTarget += SpellEffectFn(spell_pal_bastion_of_light_SpellScript::HandleOnHit, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_pal_bastion_of_light_SpellScript();
    }
};


//Light of Dawn - 85222
class spell_pal_light_of_dawn : public SpellScript
{
    PrepareSpellScript(spell_pal_light_of_dawn);

    bool Validate(SpellInfo const* /*spellInfo*/) override
    {
        if (!sSpellMgr->GetSpellInfo(SPELL_PALADIN_LIGHT_OF_DAWN_TRIGGER, DIFFICULTY_NONE))
            return false;
        return true;
    }

    void HandleOnHit()
    {
        if (Unit* caster = GetCaster())
        {
            caster->CastSpell(caster, SPELL_PALADIN_LIGHT_OF_DAWN_TRIGGER, true);

            if (caster->HasAura(SPELL_PALADIN_DIVINE_PURPOSE_HOLY_AURA_2))
                caster->RemoveAurasDueToSpell(SPELL_PALADIN_DIVINE_PURPOSE_HOLY_AURA_2);
        }
    }

    void HandleAfterCast()
    {
        Unit* caster = GetCaster();

        if (!caster)
            return;

        if (caster->HasAura(SPELL_PALADIN_AWAKENING))
        {
            if (roll_chance_f(15))
            {
                caster->CastSpell(nullptr, SPELL_PALADIN_AVENGING_WRATH, true);

                if (Aura* avengingWrath = caster->GetAura(SPELL_PALADIN_AVENGING_WRATH))
                    avengingWrath->SetDuration(10000, true);
            }
        }
    }

    void Register() override
    {
        OnCast += SpellCastFn(spell_pal_light_of_dawn::HandleOnHit);
        AfterCast += SpellCastFn(spell_pal_light_of_dawn::HandleAfterCast);
    }
};

// Holy Shield - 152261
class spell_pal_holy_shield : public SpellScriptLoader
{
public:
    spell_pal_holy_shield() : SpellScriptLoader("spell_pal_holy_shield") { }

    class spell_pal_holy_shield_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_pal_holy_shield_AuraScript);

        bool CheckProc(ProcEventInfo& eventInfo)
        {
            if (eventInfo.GetHitMask() & PROC_HIT_BLOCK)
                return true;

            return false;
        }

        void CalculateAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& /*canBeRecalculated*/)
        {
            // Disable absorb (shitty blizzard)
            amount = 0;
        }

        void Register() override
        {
            DoCheckProc += AuraCheckProcFn(spell_pal_holy_shield_AuraScript::CheckProc);
            DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_pal_holy_shield_AuraScript::CalculateAmount, EFFECT_2, SPELL_AURA_SCHOOL_ABSORB);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_pal_holy_shield_AuraScript();
    }
};

// Light's Hammer - 122773
class spell_pal_lights_hammer : public SpellScriptLoader
{
public:
    spell_pal_lights_hammer() : SpellScriptLoader("spell_pal_lights_hammer") { }

    class spell_pal_lights_hammer_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_pal_lights_hammer_SpellScript);

        void HandleAfterCast()
        {
            if (Unit* caster = GetCaster())
            {
                std::list<Creature*> tempList;
                std::list<Creature*> LightsHammerlist;

                caster->GetCreatureListWithEntryInGrid(LightsHammerlist, NPC_PALADIN_LIGHTS_HAMMER, 200.0f);

                tempList = LightsHammerlist;

                for (std::list<Creature*>::iterator i = tempList.begin(); i != tempList.end(); ++i)
                {
                    Unit* owner = (*i)->GetOwner();
                    if (owner != nullptr && owner->GetGUID() == caster->GetGUID() && (*i)->IsSummon())
                        continue;

                    LightsHammerlist.remove((*i));
                }

                for (std::list<Creature*>::iterator itr = LightsHammerlist.begin(); itr != LightsHammerlist.end(); ++itr)
                    (*itr)->CastSpell((*itr), SPELL_PALADIN_LIGHTS_HAMMER_TICK, true);
            }
        }

        void Register() override
        {
            AfterCast += SpellCastFn(spell_pal_lights_hammer_SpellScript::HandleAfterCast);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_pal_lights_hammer_SpellScript();
    }
};

// Light's Hammer (Periodic Dummy) - 114918
class spell_pal_lights_hammer_tick : public SpellScriptLoader
{
public:
    spell_pal_lights_hammer_tick() : SpellScriptLoader("spell_pal_lights_hammer_tick") { }

    class spell_pal_lights_hammer_tick_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_pal_lights_hammer_tick_AuraScript);

        void OnTick(AuraEffect const* /*aurEff*/)
        {
            if (Unit* caster = GetCaster())
            {
                if (caster->GetOwner())
                {
                    CastSpellExtraArgs args;
                    args.SetTriggerFlags(TRIGGERED_FULL_MASK);
                    args.SetOriginalCaster(caster->GetOwner()->GetGUID());
                    caster->CastSpell(Position(caster->GetPositionX(), caster->GetPositionY(), caster->GetPositionZ()), SPELL_PALADIN_ARCING_LIGHT_HEAL, args);
                    caster->CastSpell(Position(caster->GetPositionX(), caster->GetPositionY(), caster->GetPositionZ()), SPELL_PALADIN_ARCING_LIGHT_DAMAGE, args);
                }
            }
        }

        void Register() override
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_pal_lights_hammer_tick_AuraScript::OnTick, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_pal_lights_hammer_tick_AuraScript();
    }
};


// 216860 - Judgement of the Pure
class spell_pal_judgement_of_the_pure : public SpellScriptLoader
{
public:
    spell_pal_judgement_of_the_pure() : SpellScriptLoader("spell_pal_judgement_of_the_pure") {}

    class spell_pal_judgement_of_the_pure_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_pal_judgement_of_the_pure_AuraScript);

        bool HandleProc(ProcEventInfo& eventInfo)
        {
            if (eventInfo.GetSpellInfo() && eventInfo.GetSpellInfo()->Id == SPELL_PALADIN_JUDGMENT)
                return true;
            return false;
        }

        void Register() override
        {
            DoCheckProc += AuraCheckProcFn(spell_pal_judgement_of_the_pure_AuraScript::HandleProc);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_pal_judgement_of_the_pure_AuraScript();
    }
};

void AddSC_DekkCore_paladin_spell_scripts()
{
    RegisterSpellScript(aura_darkest_before_the_dawn);
    RegisterPlayerScript(fist_of_justice);
    RegisterSpellScript(spell_pal_hand_of_hindrance);
    RegisterSpellScript(spell_pal_wake_of_ashes);
    RegisterSpellScript(spell_pal_beacon_of_light_proc);
    RegisterSpellScript(spell_pal_shield_of_vengeance);
    RegisterSpellScript(spell_pal_blade_of_wrath_proc);
    RegisterSpellScript(spell_pal_the_fire_of_justice);
    RegisterSpellScript(spell_pal_ardent_defender);
    RegisterSpellScript(spell_pal_crusade);
    RegisterSpellScript(spell_pal_aura_of_sacrifice_ally);
    RegisterSpellScript(spell_pal_proc_from_holy_power_consumption);
    RegisterCreatureAI(npc_pal_lights_hammer);
    RegisterAreaTriggerAI(at_pal_aura_of_sacrifice);
    RegisterPlayerScript(judgment_of_light);
    RegisterPlayerScript(absolution);
    new spell_pal_light_of_dawn_trigger();
    new spell_pal_light_of_the_martyr();
    new spell_pal_greater_blessing_of_kings();
    RegisterSpellScript(spell_pal_seraphim);
    RegisterSpellScript(spell_pal_activate_forbearance);
    RegisterSpellScript(spell_pal_word_of_glory);
    RegisterSpellScript(spell_pal_justicars_vengeance);
    RegisterSpellScript(spell_pal_divine_purpose_proc);
    RegisterSpellScript(spell_pal_avengers_shield);
    RegisterSpellScript(spell_pal_shield_of_the_righteous);
    RegisterSpellScript(spell_pal_light_of_the_protector);
    RegisterSpellScript(spell_pal_flash_of_light);
    RegisterSpellScript(spell_pal_crusader_strike);
    RegisterSpellScript(spell_pal_beacon_of_faith);
    RegisterSpellScript(spell_pal_beacon_of_light);
    RegisterSpellScript(spell_pal_inquisition);
    new spell_pal_bastion_of_light();
    new spell_pal_holy_shield();
    new spell_pal_judgement_of_the_pure();
    new spell_pal_lights_hammer();
    new spell_pal_lights_hammer_tick();
    RegisterSpellScript(spell_pal_light_of_dawn);
}
