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

 /*
  * Scripts for spells with SPELLFAMILY_ROGUE and SPELLFAMILY_GENERIC spells used by rogue players.
  * Ordered alphabetically using scriptname.
  * Scriptnames of files in this file should be prefixed with "spell_rog_".
  */

#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "ScriptMgr.h"
#include "Containers.h"
#include "DB2Stores.h"
#include "Item.h"
#include "Log.h"
#include "ObjectAccessor.h"
#include "Player.h"
#include "Spell.h"
#include "Object.h"
#include "SpellAuraEffects.h"
#include "SpellHistory.h"
#include "SpellMgr.h"
#include "SpellScript.h"


enum RogueSpells
{
    SPELL_ROGUE_BLADE_FLURRY = 13877,
    SPELL_ROGUE_BLADE_FLURRY_EXTRA_ATTACK = 22482,
    SPELL_ROGUE_KILLING_SPREE = 51690,
    SPELL_ROGUE_KILLING_SPREE_TELEPORT = 57840,
    SPELL_ROGUE_KILLING_SPREE_WEAPON_DMG = 57841,
    SPELL_ROGUE_KILLING_SPREE_DMG_BUFF = 61851,
    SPELL_ROGUE_MASTER_OF_SUBTLETY_DAMAGE_PERCENT = 31665,
    SPELL_ROGUE_MASTER_OF_SUBTLETY_PASSIVE = 31223,
    SPELL_ROGUE_SANCTUARY = 98877,
    SPELL_ROGUE_RIPOSTE_DAMAGE = 199753,
    SPELL_ROGUE_KIDNEY_SHOT = 408,
    SPELL_ROGUE_SHADOW_FOCUS = 108209,
    SPELL_ROGUE_SHADOW_FOCUS_EFFECT = 112942,
    SPELL_ROGUE_STEALTH = 1784,
    SPELL_ROGUE_MIND_NUMBLING_POISON = 5761,
    SPELL_ROGUE_TOTAL_PARALYSIS = 113953,
    SPELL_ROGUE_NIGHTBLADE = 195452,
    SPELL_ROGUE_GRAPPLING_HOOK_TRIGGER = 230149,
    SPELL_ROGUE_ALACRITY_BUFF = 193538,
    SPELL_ROGUE_NIGHTBLADE_SLOW = 206760,
    SPELL_ROGUE_SHADOW_DANCE = 185313,
    SPELL_ROGUE_MASTER_OF_SHADOWS = 196976,
    SPELL_ROGUE_RESTLESS_BLADES = 79096,
    SPELL_ROGUE_GARROTE_SILENCE = 1330,
    SPELL_ROGUE_PARALYTIC_POISON = 108215,
    SPELL_ROGUE_PARALYTIC_POISON_DEBUFF = 113952,
    SPELL_ROGUE_RELENTLESS_STRIKES = 58423,
    SPELL_ROGUE_RELENTLESS_STRIKES_POWER = 98440,
    SPELL_ROGUE_GLYPH_OF_HEMORRHAGE = 56807,
    SPELL_ROGUE_GLYPH_OF_EXPOSE_ARMOR = 56803,
    SPELL_ROGUE_GARROTE_DOT = 703,
    SPELL_ROGUE_GLYPH_OF_PREPARATION = 56819,
    SPELL_ROGUE_THUGGEE = 196861,
    SPELL_ROGUE_GLYPH_OF_REGENERATE = 146625,
    SPELL_ROGUE_SHADOW_DANCE_AURA = 185422,
    SPELL_ROGUE_SHADOW_TENCHNIQUES_POWER = 196911,
    SPELL_ROGUE_FAN_OF_KNIVES = 51723,
    SPELL_ROGUE_SMOKE_BOMB_AURA = 212183,
    SPELL_ROGUE_SERRATED_BLADES_R1 = 14171,
    SPELL_ROGUE_SMOKE_BOMB_VISUAL = 183859,
    SPELL_ROGUE_STEALTH_STEALTH_AURA = 158185,
    SPELL_ROGUE_STEALTH_SHAPESHIFT_AURA = 196774,
    SPELL_ROGUE_MAIN_GAUCHE = 86392,
    SPELL_ROGUE_PREMEDITATION_PASSIVE = 343160,
    SPELL_ROGUE_PREMEDITATION_AURA = 343173,
    SPELL_ROGUE_RUTHLESS_PRECISION = 193357,
    SPELL_ROGUE_VANISH_AURA = 11327,
    SPELL_ROGUE_SPRINT = 2983,
    SPELL_ROGUE_TRICKS_OF_THE_TRADE = 57934,
    SPELL_ROGUE_TRICKS_OF_THE_TRADE_PROC = 59628,
    SPELL_ROGUE_HONOR_AMONG_THIEVES_ENERGIZE = 51699,
    SPELL_ROGUE_EVISCERATE = 196819,
    SPELL_ROGUE_DEEPENING_SHADOWS = 185314,
    SPELL_ROGUE_DEEPER_STRATAGEM = 193531,
    SPELL_ROGUE_SHURIKEN_STORM = 197835,
    SPELL_ROGUE_T5_2P_SET_BONUS = 37169,
    SPELL_ROGUE_VENOMOUS_WOUNDS = 79134,
    SPELL_ROGUE_CHEAT_DEATH_COOLDOWN = 45181,
    SPELL_ROGUE_SUBTERFUGE = 108208,
    SPELL_ROGUE_SUBTERFUGE_AURA = 115192,
    SPELL_ROGUE_ALACRITY = 193539,
    SPELL_ROGUE_ROLL_THE_BONES = 193316,
    SPELL_ROGUE_ROLL_THE_BONES_VISUAL = 208244,
    SPELL_ROGUE_DEADLY_POISON_DOT = 2818,
    SPELL_ROGUE_DEADLY_POISON_INSTANT_DAMAGE = 113780,
    SPELL_ROGUE_ADRENALINE_RUSH = 13750,
    SPELL_ROGUE_SYMBOLS_OF_DEATH_CRIT_AURA = 227151,
    SPELL_ROGUE_SYMBOLS_OF_DEATH_RANK2 = 328077,
    SPELL_ROGUE_SLICE_AND_DICE = 5171,
    SPELL_ROGUE_WOUND_POISON = 8679,
    SPELL_ROGUE_CRIPPLING_POISON = 3409,
    SPELL_ROGUE_CRIPPLING_POISON_DEBUFF = 3409,
    SPELL_ROGUE_DEADLY_BREW = 51626,
    SPELL_ROGUE_DEADLY_POISON = 2823,

    SPELL_ROGUE_BROADSIDE = 193356,
    SPELL_ROGUE_HIDDEN_BLADES = 270061,
    SPELL_ROGUE_HIDDEN_BLADES_BUFF = 270070,
    SPELL_ROGUE_GRAND_MELEE = 193358,
    SPELL_ROGUE_TRUE_BEARING = 193359,
    SPELL_ROGUE_RUPTURE = 1943,
    SPELL_ROGUE_RUPTURE_DOT = 1943,
    SPELL_ROGUE_LEECHING_POISON = 108211,
    SPELL_ROGUE_LEECHING_POISON_DEBUFF = 112961,
    SPELL_ROGUE_BURIED_TREASURE = 199600,
    SPELL_ROGUE_SKULL_AND_CROSSBONES = 199603





};

// Updated 9.2.5 - Slice and Dice (315496)
class spell_rog_slice_and_dice : public SpellScript
{
    PrepareSpellScript(spell_rog_slice_and_dice);

    void HandleAfterHit()
    {
        if (Player* _player = GetCaster()->ToPlayer())
        {
            if (Aura* sliceAndDice = _player->GetAura(SPELL_ROGUE_SLICE_AND_DICE))
            {
                std::vector<SpellPowerCost> const& costs = GetSpell()->GetPowerCost();
                auto c = std::find_if(costs.begin(), costs.end(), [](SpellPowerCost const& cost) { return cost.Power == POWER_COMBO_POINTS; });
                if (c != costs.end())
                {
                    if (c->Amount == 1)
                        sliceAndDice->SetDuration(12 * IN_MILLISECONDS);
                    else if (c->Amount == 2)
                        sliceAndDice->SetDuration(18 * IN_MILLISECONDS);
                    else if (c->Amount == 3)
                        sliceAndDice->SetDuration(24 * IN_MILLISECONDS);
                    else if (c->Amount == 4)
                        sliceAndDice->SetDuration(30 * IN_MILLISECONDS);
                    else if (c->Amount == 5)
                        sliceAndDice->SetDuration(36 * IN_MILLISECONDS);
                }
            }
        }
    }

    void Register() override
    {
        AfterHit += SpellHitFn(spell_rog_slice_and_dice::HandleAfterHit);
    }
};

enum TrueBearingIDs
{
    SPELL_ROGUE_BETWEEN_THE_EYES = 199804,
    SPELL_ROGUE_VANISH = 1856,
    SPELL_ROGUE_BLIND = 2094,
    SPELL_ROGUE_CLOAK_OF_SHADOWS = 31224,
    SPELL_ROGUE_RIPOSTE = 199754,
    SPELL_ROGUE_GRAPPLING_HOOK = 195457,
    SPELL_ROGUE_MARKED_FOR_DEATH = 137619,
    SPELL_ROGUE_DEATH_FROM_ABOVE = 152150
};

// True Bearing - 193359
class spell_rog_true_bearing : public SpellScriptLoader
{
public:
    spell_rog_true_bearing() : SpellScriptLoader("spell_rog_true_bearing") {}

    class spell_rog_true_bearing_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_rog_true_bearing_AuraScript);

        bool CheckProc(ProcEventInfo& eventInfo)
        {
            std::vector<uint32> finishers{ SPELL_ROGUE_BETWEEN_THE_EYES, SPELL_ROGUE_ROLL_THE_BONES, SPELL_ROGUE_EVISCERATE };
            for (uint32 finisher : finishers)
                if (eventInfo.GetSpellInfo()->Id == finisher)
                    return true;
            return false;
        }

        void HandleProc(AuraEffect* /*aurEff*/, ProcEventInfo& /*eventInfo*/)
        {
            Unit* caster = GetCaster();
            if (!caster)
                return;

            int32 cp = caster->GetPower(POWER_COMBO_POINTS) + 1;

            std::vector<uint32> spellIds{ SPELL_ROGUE_ADRENALINE_RUSH, SPELL_ROGUE_SPRINT, SPELL_ROGUE_BETWEEN_THE_EYES,
                                          SPELL_ROGUE_VANISH, SPELL_ROGUE_BLIND, SPELL_ROGUE_CLOAK_OF_SHADOWS,
                                          SPELL_ROGUE_RIPOSTE, SPELL_ROGUE_GRAPPLING_HOOK,
                                          SPELL_ROGUE_KILLING_SPREE, SPELL_ROGUE_MARKED_FOR_DEATH, SPELL_ROGUE_DEATH_FROM_ABOVE };

            for (uint32 spell : spellIds)
            {
                if (caster->HasSpell(spell))
                    caster->GetSpellHistory()->AddCooldown(GetSpellInfo()->Id, -2000 * cp, std::chrono::milliseconds(750)); // just ajust miliseconds
                    caster->GetSpellHistory()->ModifyCooldown(spell, Seconds (-2000 * cp)); 

            }
        }

        void Register() override
        {
            DoCheckProc += AuraCheckProcFn(spell_rog_true_bearing_AuraScript::CheckProc);
            OnEffectProc += AuraEffectProcFn(spell_rog_true_bearing_AuraScript::HandleProc, EFFECT_0, SPELL_AURA_ADD_FLAT_MODIFIER);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_rog_true_bearing_AuraScript();
    }
};

// Nightblade - 195452
class spell_rog_nightblade : public SpellScriptLoader
{
public:
    spell_rog_nightblade() : SpellScriptLoader("spell_rog_nightblade") {}

    class spell_rog_nightblade_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_rog_nightblade_AuraScript);

        int8 _cp;

        void HandleApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            Unit* caster = GetCaster();
            if (!caster)
                return;

            int32 maxcp = caster->HasAura(SPELL_ROGUE_DEEPER_STRATAGEM) ? 6 : 5;
            _cp = std::min(caster->GetPower(POWER_COMBO_POINTS) + 1, maxcp);

            if (Aura* aur = GetAura())
            {
                aur->SetMaxDuration(6000 + 2000 * _cp);
                aur->RefreshDuration();
            }
            if (Unit* caster = GetCaster())
                caster->ModifyPower(POWER_COMBO_POINTS, -1 * (_cp - 1));
            SpellCategoryEntry const* catEntry = sSpellCategoryStore.LookupEntry(sSpellMgr->GetSpellInfo(SPELL_ROGUE_SHADOW_DANCE, DIFFICULTY_NONE)->ChargeCategoryId);
             if (GetCaster()->HasAura(SPELL_ROGUE_DEEPENING_SHADOWS) && roll_chance_i(20 * _cp))
                 GetCaster()->GetSpellHistory()->ReduceChargeCooldown(catEntry, _cp * 3000);

            if (Unit* caster = GetCaster())
                if (caster->HasAura(SPELL_ROGUE_RELENTLESS_STRIKES) && roll_chance_i(20 * _cp))
                    caster->CastSpell(caster, SPELL_ROGUE_RELENTLESS_STRIKES_POWER, true);
            if (GetCaster()->HasAura(SPELL_ROGUE_ALACRITY) && roll_chance_i(20 * _cp))
                GetCaster()->CastSpell(GetCaster(), SPELL_ROGUE_ALACRITY_BUFF, true);
        }

        bool CheckProc(ProcEventInfo& eventInfo)
        {
            if (eventInfo.GetDamageInfo()->GetAttackType() == BASE_ATTACK ||
                eventInfo.GetDamageInfo()->GetAttackType() == OFF_ATTACK)
            {
                Unit* caster = eventInfo.GetActor();
                Unit* target = eventInfo.GetActionTarget();
                if (!caster || !target)
                    return false;

                caster->CastSpell(target, SPELL_ROGUE_NIGHTBLADE_SLOW, true);
                return true;
            }
            return false;
        }

        void Register() override
        {
            DoCheckProc += AuraCheckProcFn(spell_rog_nightblade_AuraScript::CheckProc);
            AfterEffectApply += AuraEffectApplyFn(spell_rog_nightblade_AuraScript::HandleApply, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE, AURA_EFFECT_HANDLE_REAL_OR_REAPPLY_MASK);
        }
    };

    class spell_rog_nightblade_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_rog_nightblade_SpellScript);

        void HandleLaunch(SpellEffIndex /*effIndex*/)
        {
            Unit* caster = GetCaster();
            Unit* target = GetHitUnit();
            if (!caster || !target)
                return;

            target->RemoveAurasDueToSpell(SPELL_ROGUE_NIGHTBLADE, caster->GetGUID());
        }

        void Register() override
        {
            OnEffectLaunchTarget += SpellEffectFn(spell_rog_nightblade_SpellScript::HandleLaunch, EFFECT_0, SPELL_EFFECT_APPLY_AURA);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_rog_nightblade_SpellScript();
    }

    AuraScript* GetAuraScript() const override
    {
        return new spell_rog_nightblade_AuraScript();
    }
};

//199754
class spell_rog_riposte : public SpellScriptLoader
{
public:
    spell_rog_riposte() : SpellScriptLoader("spell_rog_riposte") { }

    class spell_rog_riposte_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_rog_riposte_AuraScript);

        void HandleProc(AuraEffect* /*aurEff*/, ProcEventInfo& procInfo)
        {
            PreventDefaultAction();

            Unit* caster = GetCaster();
            if (!caster)
                return;

            Unit* target = procInfo.GetActionTarget();
            if (!target)
                return;
            caster->CastSpell(target, SPELL_ROGUE_RIPOSTE_DAMAGE, true);
        }

        void Register() override
        {
            OnEffectProc += AuraEffectProcFn(spell_rog_riposte_AuraScript::HandleProc, EFFECT_1, SPELL_AURA_PROC_TRIGGER_SPELL);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_rog_riposte_AuraScript();
    }
};

// Between the Eyes - 199804
class spell_rog_between_the_eyes :public SpellScript
{
    PrepareSpellScript(spell_rog_between_the_eyes);

    void HandleTakePower(SpellPowerCost& powerCost)
    {
        if (powerCost.Power == POWER_COMBO_POINTS)
            _cp = powerCost.Amount;
    }

    void HandleAfterHit()
    {
        if (Unit* target = GetHitUnit())
            if (Aura* aura = target->GetAura(SPELL_ROGUE_BETWEEN_THE_EYES, GetCaster()->GetGUID()))
                aura->SetDuration(_cp * IN_MILLISECONDS);
    }

    void Register() override
    {
        OnTakePower += SpellOnTakePowerFn(spell_rog_between_the_eyes::HandleTakePower);
        AfterHit += SpellHitFn(spell_rog_between_the_eyes::HandleAfterHit);
    }
private:
    uint8 _cp = 0;
};

// Kidney Shot - 408
class spell_rog_kidney_shot :public SpellScript
{
    PrepareSpellScript(spell_rog_kidney_shot);

    void HandleTakePower(SpellPowerCost& powerCost)
    {
        if (powerCost.Power == POWER_COMBO_POINTS)
            _cp = powerCost.Amount + 1;
    }

    void HandleAfterHit()
    {
        if (Unit* target = GetHitUnit())
            if (Aura* aura = target->GetAura(SPELL_ROGUE_KIDNEY_SHOT, GetCaster()->GetGUID()))
                aura->SetDuration(_cp * IN_MILLISECONDS);
    }

    void Register() override
    {
        OnTakePower += SpellOnTakePowerFn(spell_rog_kidney_shot::HandleTakePower);
        AfterHit += SpellHitFn(spell_rog_kidney_shot::HandleAfterHit);
    }
private:
    uint8 _cp = 0;
};

// 115192 - Subterfuge Aura
class spell_rog_subterfuge : public SpellScriptLoader
{
public:
    spell_rog_subterfuge() : SpellScriptLoader("spell_rog_subterfuge") {}

    class spell_rog_subterfuge_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_rog_subterfuge_AuraScript);

        void HandleApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            Unit* caster = GetCaster();
            if (!caster)
                return;
            caster->CastSpell(caster, SPELL_ROGUE_STEALTH_SHAPESHIFT_AURA, true);
        }

        void HandleRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            Unit* caster = GetCaster();
            if (!caster)
                return;
            caster->RemoveAurasDueToSpell(SPELL_ROGUE_STEALTH_SHAPESHIFT_AURA);
        }

        void Register() override
        {
            OnEffectApply += AuraEffectApplyFn(spell_rog_subterfuge_AuraScript::HandleApply, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
            OnEffectRemove += AuraEffectRemoveFn(spell_rog_subterfuge_AuraScript::HandleRemove, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_rog_subterfuge_AuraScript();
    }
};

// Smoke Bomb - 212182
// AreaTriggerID - 6951
class at_rog_smoke_bomb : public AreaTriggerEntityScript
{
public:

    at_rog_smoke_bomb() : AreaTriggerEntityScript("at_rog_smoke_bomb")
    {
    }

    struct at_rog_smoke_bombAI : AreaTriggerAI
    {
        at_rog_smoke_bombAI(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

        void OnUnitEnter(Unit* unit) override
        {
            Unit* caster = at->GetCaster();

            if (!caster || !unit)
                return;

            if (!caster->ToPlayer())
                return;

            if (caster->IsValidAssistTarget(unit))
                caster->CastSpell(unit, SPELL_ROGUE_SMOKE_BOMB_AURA, true);
        }

        void OnUnitExit(Unit* unit) override
        {
            Unit* caster = at->GetCaster();

            if (!caster || !unit)
                return;

            if (!caster->ToPlayer())
                return;

            if (unit->HasAura(SPELL_ROGUE_SMOKE_BOMB_AURA))
                unit->RemoveAurasDueToSpell(SPELL_ROGUE_SMOKE_BOMB_AURA);
        }
    };

    AreaTriggerAI* GetAI(AreaTrigger* areatrigger) const override
    {
        return new at_rog_smoke_bombAI(areatrigger);
    }
};




// Fan of Knives - 51723
class spell_rog_fan_of_knives : public SpellScriptLoader
{
public:
    spell_rog_fan_of_knives() : SpellScriptLoader("spell_rog_fan_of_knives") {}

    class spell_rog_fan_of_knives_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_rog_fan_of_knives_SpellScript);

    public:

        spell_rog_fan_of_knives_SpellScript()
        {
            _hit = false;
        }

    private:

        bool _hit;

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            return ValidateSpellInfo(
                {
                    SPELL_ROGUE_FAN_OF_KNIVES
                });
        }

        bool Load() override
        {
            return true;
        }

        void AddCp()
        {
            if (!_hit)
            {
                uint8 cp = GetCaster()->GetPower(POWER_COMBO_POINTS);
                if (cp < GetCaster()->GetMaxPower(POWER_COMBO_POINTS))
                {
                    GetCaster()->SetPower(POWER_COMBO_POINTS, cp + 1);
                }
                _hit = true;
            }
        }

        void RemoveKS()
        {
            Unit* target = GetHitUnit();
            if (target->HasAura(51690)) //Killing spree debuff #1
                target->RemoveAura(51690);
            if (target->HasAura(61851)) //Killing spree debuff #2
                target->RemoveAura(61851);
        }

        void Register() override
        {
            OnHit += SpellHitFn(spell_rog_fan_of_knives_SpellScript::AddCp);
            AfterHit += SpellHitFn(spell_rog_fan_of_knives_SpellScript::RemoveKS);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_rog_fan_of_knives_SpellScript();
    }
};

// Weaponmaster - 193537
class spell_rog_weaponmaster : public SpellScriptLoader
{
public:
    spell_rog_weaponmaster() : SpellScriptLoader("spell_rog_weaponmaster") {}

    class spell_rog_weaponmaster_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_rog_weaponmaster_AuraScript);

        bool CheckProc(ProcEventInfo& eventInfo)
        {
            Unit* caster = eventInfo.GetActor();
            Unit* target = eventInfo.GetActionTarget();
            if (!target || !caster)
                return false;

            SpellInfo const* triggerSpell = eventInfo.GetSpellInfo();
            if (!triggerSpell)
                return false;

            if (!roll_chance_i(6))
                return false;

            if (!eventInfo.GetDamageInfo())
                return false;

            SpellNonMeleeDamage damageLog(caster, target, triggerSpell, { triggerSpell->GetSpellXSpellVisualId(), 0 }, triggerSpell->SchoolMask);
            damageLog.damage = eventInfo.GetDamageInfo()->GetDamage();
            damageLog.cleanDamage = damageLog.damage;
            caster->DealSpellDamage(&damageLog, true);
            caster->SendSpellNonMeleeDamageLog(&damageLog);
            return true;
        }

        void Register() override
        {
            DoCheckProc += AuraCheckProcFn(spell_rog_weaponmaster_AuraScript::CheckProc);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_rog_weaponmaster_AuraScript();
    }
};

enum CombatPotency
{
    SPELL_ROGUE_COMBAT_POTENCY = 35551
};

// 35551 - Combat Potency
class spell_rogue_combat_potency : public SpellScriptLoader
{
public:
    spell_rogue_combat_potency() : SpellScriptLoader("spell_rogue_combat_potency") { }

    class spell_rogue_combat_potency_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_rogue_combat_potency_AuraScript);

        bool CheckProc(ProcEventInfo& eventInfo)
        {
            bool offHand = (eventInfo.GetDamageInfo()->GetAttackType() == OFF_ATTACK && roll_chance_i(20));
            float mainRollChance = 20.f * GetCaster()->getAttackTimer(BASE_ATTACK) / 1.4f / 600.f;
            bool mainHand = (eventInfo.GetDamageInfo()->GetAttackType() == BASE_ATTACK && roll_chance_f(mainRollChance));
            return offHand || mainHand;
        }

        void Register() override
        {
            DoCheckProc += AuraCheckProcFn(spell_rogue_combat_potency_AuraScript::CheckProc);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_rogue_combat_potency_AuraScript();
    }
};

//185313 shadow dance
class spell_rog_shadow_dance : public SpellScriptLoader
{
public:
    spell_rog_shadow_dance() : SpellScriptLoader("spell_rog_shadow_dance") { }

    class spell_rog_shadow_dance_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_rog_shadow_dance_SpellScript);

        void HandleHit(SpellEffIndex /*effIndex*/)
        {
            Unit* caster = GetCaster();
            if (!caster)
                return;

            if (caster->HasAura(SPELL_ROGUE_MASTER_OF_SHADOWS))
                caster->ModifyPower(POWER_ENERGY, +30);

            caster->CastSpell(caster, SPELL_ROGUE_SHADOW_DANCE_AURA, true);
        }

        void Register() override
        {
            OnEffectHit += SpellEffectFn(spell_rog_shadow_dance_SpellScript::HandleHit, EFFECT_0, SPELL_EFFECT_APPLY_AURA);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_rog_shadow_dance_SpellScript();
    }
};

//270061
class spell_rog_hidden_blades : public AuraScript
{
    PrepareAuraScript(spell_rog_hidden_blades);

private:
    uint8 stacks;

    void HandleEffectPeriodic(AuraEffect const* /*aurEff*/)
    {
        if (Unit* caster = GetCaster())
        {
            if (this->stacks != 20)
            {
                caster->AddAura(SPELL_ROGUE_HIDDEN_BLADES_BUFF, caster);
                stacks++;
            }
            if (this->stacks >= 20)
                return;
        }
    }

    void Register() override
    {
        OnEffectPeriodic += AuraEffectPeriodicFn(spell_rog_hidden_blades::HandleEffectPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
    }
};

class spell_rog_deadly_poison_instant_damage : public SpellScriptLoader
{
public:
    spell_rog_deadly_poison_instant_damage() : SpellScriptLoader("spell_rog_deadly_poison_instant_damage") { }

    class spell_rog_deadly_poison_instant_damage_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_rog_deadly_poison_instant_damage_SpellScript);

        void HandleOnCast()
        {
            if (Player* _player = GetCaster()->ToPlayer())
                if (Unit* target = GetExplTargetUnit())
                    if (target->HasAura(SPELL_ROGUE_DEADLY_POISON_DOT, _player->GetGUID()))
                        _player->CastSpell(target, SPELL_ROGUE_DEADLY_POISON_INSTANT_DAMAGE, true);
        }

        void Register() override
        {
            OnCast += SpellCastFn(spell_rog_deadly_poison_instant_damage_SpellScript::HandleOnCast);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_rog_deadly_poison_instant_damage_SpellScript();
    }
};

class spell_rog_deadly_throw : public SpellScriptLoader
{
public:
    spell_rog_deadly_throw() : SpellScriptLoader("spell_rog_deadly_throw") { }

    class spell_rog_deadly_throw_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_rog_deadly_throw_SpellScript);

        void HandleOnHit()
        {
            if (Unit* target = GetHitUnit())
                if (Player* caster = GetCaster()->ToPlayer())
                    if (caster->GetPower(POWER_COMBO_POINTS) >= 5)
                        caster->CastSpell(target, 137576, true);
        }

        void Register() override
        {
            OnHit += SpellHitFn(spell_rog_deadly_throw_SpellScript::HandleOnHit);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_rog_deadly_throw_SpellScript();
    }
};

class spell_rog_dirty_tricks : public SpellScriptLoader
{
public:
    spell_rog_dirty_tricks() : SpellScriptLoader("spell_rog_dirty_tricks") { }

    class spell_rog_dirty_tricks_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_rog_dirty_tricks_AuraScript);

        bool CheckProc(ProcEventInfo& eventInfo)
        {
            const SpellInfo* spellInfo = eventInfo.GetDamageInfo()->GetSpellInfo();
            if (!spellInfo)
                return true;

            if (eventInfo.GetActor()->GetGUID() != GetCasterGUID())
                return true;

            if (spellInfo->Mechanic == MECHANIC_BLEED || spellInfo->GetAllEffectsMechanicMask() & MECHANIC_BLEED || spellInfo->Dispel == DISPEL_POISON)
                if (eventInfo.GetActor()->HasAura(108216))
                    return false;

            return true;
        }

        void Register() override
        {
            DoCheckProc += AuraCheckProcFn(spell_rog_dirty_tricks_AuraScript::CheckProc);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_rog_dirty_tricks_AuraScript();
    }
};

// Deepening Shadows - 185314
class spell_rog_deepening_shadows : public SpellScriptLoader
{
public:
    spell_rog_deepening_shadows() : SpellScriptLoader("spell_rog_deepening_shadows") {}

    class spell_rog_deepening_shadows_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_rog_deepening_shadows_AuraScript);

        int8 _cp;

        bool CheckProc(ProcEventInfo& eventInfo)
        {
            if (Unit* caster = GetCaster())
            {
                int32 maxcp = caster->HasAura(SPELL_ROGUE_DEEPER_STRATAGEM) ? 6 : 5;
                _cp = std::min(caster->GetPower(POWER_COMBO_POINTS) + 1, maxcp);
            }
            if (eventInfo.GetSpellInfo()->Id == 196819)
                return true;
            return false;
        }

         void HandleProc(AuraEffect* /*aurEff*/, ProcEventInfo& /*eventInfo*/)
         {
             Unit* caster = GetCaster();
             if (!caster)
                 return;

             SpellCategoryEntry const* catEntry = sSpellCategoryStore.LookupEntry(sSpellMgr->GetSpellInfo(SPELL_ROGUE_SHADOW_DANCE, DIFFICULTY_NONE)->ChargeCategoryId);
             if (GetCaster()->HasAura(SPELL_ROGUE_DEEPENING_SHADOWS))
                 GetCaster()->GetSpellHistory()->ReduceChargeCooldown(catEntry, _cp * 3000);
         }

        void Register() override
        {
            DoCheckProc += AuraCheckProcFn(spell_rog_deepening_shadows_AuraScript::CheckProc);
            OnEffectProc += AuraEffectProcFn(spell_rog_deepening_shadows_AuraScript::HandleProc, EFFECT_0, SPELL_AURA_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_rog_deepening_shadows_AuraScript();
    }
};

// Shadow Techniques - 196912
class spell_rog_shadow_techniques : public SpellScriptLoader
{
public:
    spell_rog_shadow_techniques() : SpellScriptLoader("spell_rog_shadow_techniques") {}

    class spell_rog_shadow_techniques_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_rog_shadow_techniques_AuraScript);

        bool CheckProc(ProcEventInfo& eventInfo)
        {
            if (eventInfo.GetDamageInfo()->GetAttackType() == BASE_ATTACK)
                return true;
            return false;
        }

        void HandleProc(AuraEffect* /*aurEff*/, ProcEventInfo& /*eventInfo*/)
        {
            Unit* caster = GetCaster();
            if (!caster)
                return;

            if (roll_chance_i(40))
                caster->CastSpell(caster, SPELL_ROGUE_SHADOW_TENCHNIQUES_POWER, true);
        }

        void Register() override
        {
            DoCheckProc += AuraCheckProcFn(spell_rog_shadow_techniques_AuraScript::CheckProc);
            OnEffectProc += AuraEffectProcFn(spell_rog_shadow_techniques_AuraScript::HandleProc, EFFECT_0, SPELL_AURA_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_rog_shadow_techniques_AuraScript();
    }
};

// Shuriken Storm - 197835
class spell_rog_shuriken_storm : public SpellScriptLoader
{
public:
    spell_rog_shuriken_storm() : SpellScriptLoader("spell_rog_shuriken_storm") {}

    class spell_rog_shuriken_storm_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_rog_shuriken_storm_SpellScript);

    public:
        spell_rog_shuriken_storm_SpellScript()
        {
            _stealthed = false;
        }

    private:

        bool _stealthed;

        bool Load() override
        {
            Unit* caster = GetCaster();
            if (caster->HasAuraType(SPELL_AURA_MOD_STEALTH) || caster->HasAura(SPELL_ROGUE_SHADOW_DANCE))
                _stealthed = true;
            return true;
        }

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            return ValidateSpellInfo(
                {
                    SPELL_ROGUE_SHURIKEN_STORM
                });
        }

        void RemoveKS()
        {
            Unit* target = GetHitUnit();
            if (target->HasAura(51690)) //Killing spree debuff #1
                target->RemoveAura(51690);
            if (target->HasAura(61851)) //Killing spree debuff #2
                target->RemoveAura(61851);
        }

        void AddComboPoint()
        {
            Unit* caster = GetCaster();
            uint8 cp = caster->GetPower(POWER_COMBO_POINTS);
            if (_stealthed)
            {
                int32 dmg = GetHitDamage();
                SetHitDamage(dmg * 2); //Shuriken Storm deals 200% damage from stealth
            }
            if (cp < caster->GetMaxPower(POWER_COMBO_POINTS))
            {
                caster->SetPower(POWER_COMBO_POINTS, cp + 1);
            }
        }

        void Register() override
        {
            OnHit += SpellHitFn(spell_rog_shuriken_storm_SpellScript::AddComboPoint); //add 1 combo points for each target (hook called for each target in map)
            AfterHit += SpellHitFn(spell_rog_shuriken_storm_SpellScript::RemoveKS);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_rog_shuriken_storm_SpellScript();
    }
};

// Grappling Hook - 195457
class spell_rog_grappling_hook : public SpellScriptLoader
{
public:
    spell_rog_grappling_hook() : SpellScriptLoader("spell_rog_grappling_hook") {}

    class spell_rog_grappling_hook_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_rog_grappling_hook_SpellScript);

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            return ValidateSpellInfo(
                {
                    SPELL_ROGUE_GRAPPLING_HOOK,
                    SPELL_ROGUE_GRAPPLING_HOOK_TRIGGER
                });
        }

        void HandleDummy()
        {
            Unit* caster = GetCaster();
            WorldLocation const* dest = GetExplTargetDest();
            if (!caster || !dest)
                return;

            caster->CastSpell(Position(dest->GetPositionX(), dest->GetPositionY(), dest->GetPositionZ()), SPELL_ROGUE_GRAPPLING_HOOK_TRIGGER, true);
        }

        void Register() override
        {
            OnCast += SpellCastFn(spell_rog_grappling_hook_SpellScript::HandleDummy);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_rog_grappling_hook_SpellScript();
    }
};

class spell_rog_mutilate : public SpellScript
{
    PrepareSpellScript(spell_rog_mutilate);

    void HandleOnHit(SpellEffIndex /*effIndex*/)
    {
        Player* caster = GetCaster()->ToPlayer();
        Unit* target = GetHitUnit();
        if (!target || !caster)
            return;

        if (caster->HasAura(5374) || caster->HasAura(27576))
            caster->ToPlayer()->ModifyPower(POWER_COMBO_POINTS, 1);
        if (caster->HasAura(14190))
            caster->ToPlayer()->ModifyPower(POWER_COMBO_POINTS, 2);

        caster->ModifyPower(POWER_COMBO_POINTS, -3);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_rog_mutilate::HandleOnHit, EFFECT_2, SPELL_EFFECT_TRIGGER_SPELL);
    }
};

class spell_rog_garrote : public SpellScriptLoader
{
public:
    spell_rog_garrote() : SpellScriptLoader("spell_rog_garrote") {}

    class spell_rog_garrote_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_rog_garrote_SpellScript);

    public:
        spell_rog_garrote_SpellScript()
        {
            _stealthed = false;
        }

    private:

        bool _stealthed;

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            return ValidateSpellInfo(
                {
                    SPELL_ROGUE_GARROTE_DOT,
                    SPELL_ROGUE_GARROTE_SILENCE
                });
        }

        bool Load() override
        {
            if (GetCaster()->HasAuraType(SPELL_AURA_MOD_STEALTH))
                _stealthed = true;
            return true;
        }

        void HandleOnHit()
        {
            Unit* caster = GetCaster();
            Unit* target = GetExplTargetUnit();

            if (_stealthed)
            {
                caster->CastSpell(target, SPELL_ROGUE_GARROTE_SILENCE, true);
            }
        }

        void Register() override
        {
            OnHit += SpellHitFn(spell_rog_garrote_SpellScript::HandleOnHit);
        }
    };

    class spell_rog_garrote_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_rog_garrote_AuraScript);

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            return ValidateSpellInfo(
                {
                    SPELL_ROGUE_THUGGEE
                });
        }

        void HandleRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            if (GetTargetApplication()->GetRemoveMode() != AURA_REMOVE_BY_DEATH)
                return;

            Unit* caster = GetAura()->GetCaster();

            if (!caster)
                return;

            if (!caster->HasAura(SPELL_ROGUE_THUGGEE))
                return;

            caster->GetSpellHistory()->ResetCooldown(SPELL_ROGUE_GARROTE_DOT, true);
        }

        void Register() override
        {
            AfterEffectRemove += AuraEffectRemoveFn(spell_rog_garrote_AuraScript::HandleRemove, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE, AURA_EFFECT_HANDLE_REAL);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_rog_garrote_SpellScript();
    }

    AuraScript* GetAuraScript() const override
    {
        return new spell_rog_garrote_AuraScript();
    }
};
class spell_rog_hemorrhage : public SpellScriptLoader
{
public:
    spell_rog_hemorrhage() : SpellScriptLoader("spell_rog_hemorrhage") { }

    class spell_rog_hemorrhage_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_rog_hemorrhage_SpellScript);

        bool Load() override
        {
            bleeding = false;
            return true;
        }

        void HandleOnHit()
        {
            if (Player* _player = GetCaster()->ToPlayer())
            {
                if (GetHitUnit())
                {
                    if (_player->HasAura(SPELL_ROGUE_GLYPH_OF_HEMORRHAGE))
                    {
                        if (!bleeding)
                        {
                            PreventHitAura();
                            return;
                        }
                    }
                }
            }
        }

        void CheckBleed(SpellMissInfo /*missInfo*/)
        {
            if (Unit* target = GetHitUnit())
                bleeding = target->HasAuraState(AURA_STATE_BLEED);
        }

        void RemoveCP()
        {
            Unit* caster = GetCaster();
            uint8 cp = caster->GetPower(POWER_COMBO_POINTS);

            if (cp > 0)
            {
                caster->SetPower(POWER_COMBO_POINTS, cp - 1);
            }
        }

        void Register() override
        {
            BeforeHit += BeforeSpellHitFn(spell_rog_hemorrhage_SpellScript::CheckBleed);
            OnHit += SpellHitFn(spell_rog_hemorrhage_SpellScript::HandleOnHit);
            AfterHit += SpellHitFn(spell_rog_hemorrhage_SpellScript::RemoveCP);
        }
        bool bleeding;
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_rog_hemorrhage_SpellScript();
    }
};

class spell_rog_cloak_and_dagger : public SpellScriptLoader
{
public:
    spell_rog_cloak_and_dagger() : SpellScriptLoader("spell_rog_cloak_and_dagger") { }

    class spell_rog_cloak_and_dagger_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_rog_cloak_and_dagger_SpellScript);

        SpellCastResult CheckCast()
        {
            if (Unit* caster = GetCaster())
                if (caster->HasAuraType(SPELL_AURA_MOD_STEALTH))
                    if (caster->HasAura(138106))
                        if (Unit* target = GetExplTargetUnit())
                            caster->CastSpell(target, 138916, true);

            return SPELL_CAST_OK;
        }

        void Register() override
        {
            OnCheckCast += SpellCheckCastFn(spell_rog_cloak_and_dagger_SpellScript::CheckCast);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_rog_cloak_and_dagger_SpellScript();
    }
};

// 227151 - Symbols of Death (Crit Aura) - SPELL_ROGUE_SYMBOLS_OF_DEATH_CRIT_AURA
class spell_rog_symbols_of_death_crit_aura : public AuraScript
{
    PrepareAuraScript(spell_rog_symbols_of_death_crit_aura);

    void HandleAfterProc(AuraEffect* /*aurEff*/, ProcEventInfo& /*eventInfo*/)
    {
        Remove(AURA_REMOVE_BY_DEFAULT);
    }

    void Register() override
    {
        AfterEffectProc += AuraEffectProcFn(spell_rog_symbols_of_death_crit_aura::HandleAfterProc, EFFECT_0, SPELL_AURA_ADD_FLAT_MODIFIER);
    }
};
enum CheatDeath
{
    SPELL_ROGUE_CHEAT_DEATH = 31230,
    SPELL_ROGUE_CHEAT_DEATH_ANIM = 31231,
    SPELL_ROGUE_CHEAT_DEATH_DMG_REDUC = 45182,
    SPELL_ROGUE_CHEAT_DEATH_CD_AURA = 45181
};

// 31230 - Cheat Death
class spell_rog_cheat_death : public SpellScriptLoader
{
public:
    spell_rog_cheat_death() : SpellScriptLoader("spell_rog_cheat_death") { }

    class spell_rog_cheat_death_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_rog_cheat_death_AuraScript);

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            return ValidateSpellInfo(
                {
                    SPELL_ROGUE_CHEAT_DEATH_COOLDOWN
                });
        }

        bool Load() override
        {
            return GetUnitOwner()->GetTypeId() == TYPEID_PLAYER;
        }

        void CalculateAmount(AuraEffect const* /*aurEff*/, int32& amount, bool& /*canBeRecalculated*/)
        {
            // Set absorbtion amount to unlimited
            amount = -1;
        }

        void Absorb(AuraEffect* /*aurEff*/, DamageInfo& dmgInfo, uint32& absorbAmount)
        {
            Player* target = GetTarget()->ToPlayer();
            if (target->HasAura(SPELL_ROGUE_CHEAT_DEATH_DMG_REDUC))
            {
                absorbAmount = CalculatePct(dmgInfo.GetDamage(), 85);
                return;
            }
            else
            {
                if (dmgInfo.GetDamage() < target->GetHealth() || target->HasAura(SPELL_ROGUE_CHEAT_DEATH_COOLDOWN))
                    return;

                uint64 health7 = target->CountPctFromMaxHealth(7);
                target->SetHealth(1);
                HealInfo healInfo(target, target, health7, GetSpellInfo(), GetSpellInfo()->GetSchoolMask());
                target->HealBySpell(healInfo);
                target->CastSpell(target, SPELL_ROGUE_CHEAT_DEATH_ANIM, true);
                target->CastSpell(target, SPELL_ROGUE_CHEAT_DEATH_DMG_REDUC, true);
                target->CastSpell(target, SPELL_ROGUE_CHEAT_DEATH_COOLDOWN, true);
                absorbAmount = dmgInfo.GetDamage();
            }
        }

        void Register() override
        {
            DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_rog_cheat_death_AuraScript::CalculateAmount, EFFECT_1, SPELL_AURA_SCHOOL_ABSORB);
            OnEffectAbsorb += AuraEffectAbsorbFn(spell_rog_cheat_death_AuraScript::Absorb, EFFECT_1);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_rog_cheat_death_AuraScript();
    }
};

enum ePoisons
{
    WoundPoison = 8679,
    MindNumbingPoison = 5761,
    CripplingPoison = 3408,
    LeechingPoison = 108211,
    ParalyticPoison = 108215,
    DeadlyPoison = 2823,
    InstantPoison = 315584
};

class spell_rog_poisons : public SpellScript
{
    PrepareSpellScript(spell_rog_poisons);

    void RemovePreviousPoisons()
    {
        if (Player* plr = GetCaster()->ToPlayer())
        {
            if (plr->HasAura(WoundPoison))
                plr->RemoveAura(WoundPoison);
            if (plr->HasAura(MindNumbingPoison))
                plr->RemoveAura(MindNumbingPoison);
            if (plr->HasAura(CripplingPoison))
                plr->RemoveAura(CripplingPoison);
            if (plr->HasAura(LeechingPoison))
                plr->RemoveAura(LeechingPoison);
            if (plr->HasAura(ParalyticPoison))
                plr->RemoveAura(ParalyticPoison);
            if (plr->HasAura(DeadlyPoison))
                plr->RemoveAura(DeadlyPoison);
            if (plr->HasAura(InstantPoison))
                plr->RemoveAura(InstantPoison);
        }
    }

    void HandleBeforeHit(SpellMissInfo missInfo)
    {
        if (missInfo != SPELL_MISS_NONE)
            return;

        if (Player* _player = GetCaster()->ToPlayer())
        {
            RemovePreviousPoisons();
        }
    }

    void Register() override
    {
        BeforeHit += BeforeSpellHitFn(spell_rog_poisons::HandleBeforeHit);
    }
};

// 199603,193358,193357,193359,199600,193356 - Roll The Bones buffs
class spell_rog_roll_the_bones_duration : public SpellScriptLoader
{
public:
    spell_rog_roll_the_bones_duration() : SpellScriptLoader("spell_rog_roll_the_bones_duration") { }

    class spell_rog_roll_the_bones_duration_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_rog_roll_the_bones_duration_AuraScript);

        void AfterApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            Unit* caster = GetCaster();
            if (!caster)
                return;

            Aura* rtb = caster->GetAura(SPELL_ROGUE_ROLL_THE_BONES);
            if (!rtb)
            {
                caster->RemoveAurasDueToSpell(GetSpellInfo()->Id); //sometimes it remains on the caster after relog incorrectly.
                return;
            }

            if (Aura* aur = caster->GetAura(GetSpellInfo()->Id))
            {
                aur->SetMaxDuration(rtb->GetDuration());
                aur->SetDuration(rtb->GetDuration());
            }
        }

        void Register() override
        {
            AfterEffectApply += AuraEffectApplyFn(spell_rog_roll_the_bones_duration_AuraScript::AfterApply, EFFECT_0, SPELL_AURA_ANY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_rog_roll_the_bones_duration_AuraScript();
    }
};

// Roll the bones animation - 208244
class spell_rog_roll_the_bones_visual : public SpellScriptLoader
{
public:
    spell_rog_roll_the_bones_visual() : SpellScriptLoader("spell_rog_roll_the_bones_visual") { }

    class spell_rog_roll_the_bones_visual_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_rog_roll_the_bones_visual_SpellScript);

        void Prevent(SpellEffIndex effIndex)
        {
            Unit* caster = GetCaster();
            if (!caster)
                return;

            if (caster->ToPlayer())
            {
                PreventHitAura();
                PreventHitDamage();
                PreventHitDefaultEffect(effIndex);
                PreventHitEffect(effIndex);
            }
        }

        void Register() override
        {
            OnEffectHitTarget += SpellEffectFn(spell_rog_roll_the_bones_visual_SpellScript::Prevent, uint8(EFFECT_ALL), SPELL_EFFECT_ANY);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_rog_roll_the_bones_visual_SpellScript();
    }
};
class spell_rog_serrated_blades : public SpellScriptLoader
{
public:
    spell_rog_serrated_blades() : SpellScriptLoader("spell_rog_serrated_blades") { }

    class spell_rog_serrated_blades_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_rog_serrated_blades_SpellScript);

        void HandleHit()
        {
            if (AuraEffect* blade = GetCaster()->GetAuraEffectOfRankedSpell(SPELL_ROGUE_SERRATED_BLADES_R1, EFFECT_0))
            {
                uint32 combo = GetCaster()->ToPlayer()->GetPower(POWER_COMBO_POINTS);

                if (roll_chance_i(blade->GetAmount() * combo))
                    if (Aura* dot = GetHitUnit()->GetAura(SPELL_ROGUE_RUPTURE, GetCaster()->GetGUID()))
                        dot->RefreshDuration();

            }
        }

        void Register() override
        {
            OnHit += SpellHitFn(spell_rog_serrated_blades_SpellScript::HandleHit);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_rog_serrated_blades_SpellScript();
    }
};
// Blade Flurry
class spell_rogue_blade_flurry : public SpellScriptLoader
{
public:
    spell_rogue_blade_flurry() : SpellScriptLoader("spell_rogue_blade_flurry") { }

    class spell_rogue_blade_flurry_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_rogue_blade_flurry_SpellScript);

        void HandleOnHit()
        {
            if (GetHitUnit() == GetExplTargetUnit())
                SetHitDamage(0);
        }

        void Register() override
        {
            OnHit += SpellHitFn(spell_rogue_blade_flurry_SpellScript::HandleOnHit);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_rogue_blade_flurry_SpellScript();
    }
};

void AddSC_DekkCore_rogue_spell_scripts()
{
    new at_rog_smoke_bomb();
    //Deadly spells
    new spell_rog_deadly_poison_instant_damage();
    new spell_rog_deadly_throw();
    //END
    RegisterSpellScript(spell_rog_mutilate);
    new spell_rog_subterfuge();
    new spell_rog_shadow_techniques();
    new spell_rog_shuriken_storm();
    new spell_rog_riposte();
    new spell_rog_nightblade();
    new spell_rog_weaponmaster();
    new spell_rog_grappling_hook();
    new spell_rog_cloak_and_dagger();
    new spell_rog_hemorrhage();
    new spell_rog_shadow_dance();
    RegisterSpellScript(spell_rog_hidden_blades);
    new spell_rog_fan_of_knives();
    new spell_rog_deepening_shadows();
    new spell_rog_dirty_tricks();
    new spell_rog_cheat_death();
    new spell_rog_poisons();
    new spell_rog_roll_the_bones_duration();
    new spell_rog_roll_the_bones_visual();
    new spell_rog_serrated_blades();
    new spell_rogue_blade_flurry();
}
