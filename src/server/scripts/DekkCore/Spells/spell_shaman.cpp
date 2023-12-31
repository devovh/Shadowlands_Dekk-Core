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
 * Scripts for spells with SPELLFAMILY_SHAMAN and SPELLFAMILY_GENERIC spells used by shaman players.
 * Ordered alphabetically using scriptname.
 * Scriptnames of files in this file should be prefixed with "spell_sha_".
 */

#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "CellImpl.h"
#include "CreatureAIImpl.h"
#include "GridNotifiersImpl.h"
#include "Item.h"
#include "PhasingHandler.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellAuras.h"
#include "SpellScript.h"
#include "SpellHistory.h"
#include "SpellMgr.h"
#include "SpellAuraEffects.h"
#include "SpellAuras.h"
#include "TemporarySummon.h"

enum ShamanSpells
{
    SPELL_PET_NETHERWINDS_FATIGUED = 160455,
    SPELL_SHAMAN_ANCESTRAL_AWAKENING = 52759,
    SPELL_SHAMAN_ANCESTRAL_AWAKENING_PROC = 52752,
    SPELL_SHAMAN_ANCESTRAL_GUIDANCE = 108281,
    SPELL_SHAMAN_ANCESTRAL_GUIDANCE_HEAL = 114911,
    SPELL_SHAMAN_ASCENDANCE = 114049,
    SPELL_SHAMAN_ASCENDANCE_ELEMENTAL = 114050,
    SPELL_SHAMAN_ASCENDANCE_ENHANCED = 114051,
    SPELL_SHAMAN_ASCENDANCE_RESTORATION = 114052,
    SPELL_SHAMAN_AT_EARTHEN_SHIELD_TOTEM = 198839,
    SPELL_SHAMAN_BIND_SIGHT = 6277,
    SPELL_SHAMAN_CONDUCTIVITY_HEAL = 118800,
    SPELL_SHAMAN_CONDUCTIVITY_TALENT = 108282,
    SPELL_SHAMAN_CRASH_LIGHTNING_PROC = 195592,
    SPELL_SHAMAN_CRASH_LIGTHNING = 187874,
    SPELL_SHAMAN_CRASH_LIGTHNING_AURA = 187878,
    SPELL_SHAMAN_CRASHING_STORM_DUMMY = 192246,
    SPELL_SHAMAN_CARESS_OF_THE_TIDEMOTHER = 207354,
    SPELL_SHAMAN_CARESS_OF_THE_TIDEMOTHER_AURA = 209950,
    SPELL_SHAMAN_DOOM_WINDS = 204945,
    SPELL_SHAMAN_EARTHBIND_FOR_EARTHGRAB_TOTEM = 116947,
    SPELL_SHAMAN_EARTHEN_RAGE_DAMAGE = 170379,
    SPELL_SHAMAN_EARTHEN_RAGE_PASSIVE = 170374,
    SPELL_SHAMAN_EARTHEN_RAGE_PERIODIC = 170377,
    SPELL_SHAMAN_EARTHGRAB_IMMUNITY = 116946,
    SPELL_SHAMAN_EARTHQUAKE = 61882,
    SPELL_SHAMAN_EARTHQUAKE_KNOCKING_DOWN = 77505,
    SPELL_SHAMAN_EARTHQUAKE_TICK = 77478,
    SPELL_SHAMAN_EARTH_ELEMENTAL_AGGRO = 235429,
    SPELL_SHAMAN_EARTH_ELEMENTAL_DUMMY = 198103,
    SPELL_SHAMAN_EARTH_ELEMENTAL_SUMMON = 188616,
    SPELL_SHAMAN_EARTH_SHIELD_HEAL = 379,
    SPELL_SHAMAN_EARTH_SHOCK = 8042,
    SPELL_SHAMAN_ECHO_OF_THE_ELEMENTS = 108283,
    SPELL_SHAMAN_ELEMENTAL_BLAST = 117014,
    SPELL_SHAMAN_ELEMENTAL_BLAST_CRIT = 118522,
    SPELL_SHAMAN_ELEMENTAL_BLAST_HASTE = 173183,
    SPELL_SHAMAN_ELEMENTAL_BLAST_MASTERY = 173184,
    SPELL_SHAMAN_ELEMENTAL_MASTERY = 16166,
    SPELL_SHAMAN_EXHAUSTION = 57723,
    SPELL_SHAMAN_FERAL_LUNGE = 196884,
    SPELL_SHAMAN_FERAL_LUNGE_DAMAGE = 215802,
    SPELL_SHAMAN_FERAL_SPIRIT = 51533,
    SPELL_SHAMAN_FERAL_SPIRIT_SUMMON = 228562,
    SPELL_SHAMAN_FERAL_SPIRIT_ENERGIZE = 190185,
    SPELL_SHAMAN_FERAL_SPIRIT_ENERGIZE_DUMMY = 231723,
    SPELL_SHAMAN_FIRE_ELEMENTAL_DUMMY = 198067,
    SPELL_SHAMAN_FIRE_ELEMENTAL_SUMMON = 188592,
    SPELL_SHAMAN_FIRE_NOVA = 1535,
    SPELL_SHAMAN_FIRE_NOVA_TRIGGERED = 131786,
    SPELL_SHAMAN_FLAMETONGUE_ATTACK = 10444,
    SPELL_SHAMAN_FLAMETONGUE_WEAPON_PASSIVE = 10400,
    SPELL_SHAMAN_FLAMETONGUE_WEAPON_ENCHANT = 334294,
    SPELL_SHAMAN_FLAMETONGUE_WEAPON_AURA = 319778,
    SPELL_SHAMAN_FLAME_SHOCK = 8050,
    SPELL_SHAMAN_FLAME_SHOCK_ELEM = 188389,
    SPELL_SHAMAN_FLAME_SHOCK_MAELSTROM = 188389,
    SPELL_SHAMAN_FROST_SHOCK_FREEZE = 63685,
    SPELL_SHAMAN_FROZEN_POWER = 63374,
    SPELL_SHAMAN_FULMINATION = 88766,
    SPELL_SHAMAN_FULMINATION_INFO = 95774,
    SPELL_SHAMAN_FULMINATION_TRIGGERED = 88767,
    SPELL_SHAMAN_FURY_OF_AIR = 197211,
    SPELL_SHAMAN_FURY_OF_AIR_EFFECT = 197385,
    SPELL_SHAMAN_GHOST_WOLF = 2645,
    SPELL_SHAMAN_GLYPH_OF_HEALING_STREAM = 119523,
    SPELL_SHAMAN_GLYPH_OF_HEALING_STREAM_TOTEM = 55456,
    SPELL_SHAMAN_GLYPH_OF_HEALING_STREAM_TOTEM_TRIGGERED = 119523,
    SPELL_SHAMAN_GLYPH_OF_HEALING_WAVE = 55533,
    SPELL_SHAMAN_GLYPH_OF_LAKESTRIDER = 55448,
    SPELL_SHAMAN_GLYPH_OF_LAVA_LASH = 55444,
    SPELL_SHAMAN_GLYPH_OF_SHAMANISTIC_RAGE = 63280,
    SPELL_SHAMAN_GLYPH_OF_THUNDERSTORM = 62132,
    SPELL_SHAMAN_HEALING_RAIN = 73920,
    SPELL_SHAMAN_HEALING_RAIN_TICK = 73921,
    SPELL_SHAMAN_HEALING_STREAM = 52042,
    SPELL_SHAMAN_HEALING_STREAM_DUMMY = 98856,
    SPELL_SHAMAN_HIGH_TIDE = 157154,
    SPELL_SHAMAN_HOT_HAND = 215785,
    SPELL_SHAMAN_IMPROVED_LIGHTNING_SHIELD = 157774,
    SPELL_SHAMAN_ITEM_LIGHTNING_SHIELD = 23552,
    SPELL_SHAMAN_ITEM_LIGHTNING_SHIELD_DAMAGE = 27635,
    SPELL_SHAMAN_ITEM_MANA_SURGE = 23571,
    SPELL_SHAMAN_ITEM_T14_4P = 123124,
    SPELL_SHAMAN_ITEM_T18_ELEMENTAL_2P_BONUS = 185880,
    SPELL_SHAMAN_ITEM_T18_ELEMENTAL_4P_BONUS = 185881,
    SPELL_SHAMAN_ITEM_T18_GATHERING_VORTEX = 189078,
    SPELL_SHAMAN_ITEM_T18_LIGHTNING_VORTEX = 189063,
    SPELL_SHAMAN_LAVA_BURST = 51505,
    SPELL_SHAMAN_LAVA_LASH = 60103,
    SPELL_SHAMAN_LAVA_LASH_SPREAD_FLAME_SHOCK = 105792,
    SPELL_SHAMAN_LAVA_SURGE = 77756,
    SPELL_SHAMAN_LAVA_SURGE_CAST_TIME = 77762,
    SPELL_SHAMAN_LIGHTNING_BOLT_ELEM = 188196,
    SPELL_SHAMAN_LIGHTNING_BOLT_ELEM_POWER = 214815,
    SPELL_SHAMAN_LIGHTNING_SHIELD = 324,
    SPELL_SHAMAN_LIGHTNING_SHIELD_AURA = 324,
    SPELL_SHAMAN_LIGHTNING_SHIELD_ORB_DAMAGE = 26364,
    SPELL_SHAMAN_LIGHTNING_SHIELD_TRIGGER = 26364,
    SPELL_SHAMAN_LIQUID_MAGMA_DAMAGE = 192231,
    SPELL_SHAMAN_MAELSTROM_WEAPON = 187880,
    SPELL_SHAMAN_MAELSTROM_WEAPON_POWER = 187890,
    SPELL_SHAMAN_MAIL_SPECIALISATION_INT = 86100,
    SPELL_SHAMAN_MAIL_SPECIALIZATION_AGI = 86099,
    SPELL_SHAMAN_MANA_TIDE = 16191,
    SPELL_SHAMAN_NATURE_GUARDIAN = 31616,
    SPELL_SHAMAN_OVERCHARGE = 210727,
    SPELL_SHAMAN_PATH_OF_FLAMES_SPREAD = 210621,
    SPELL_SHAMAN_PATH_OF_FLAMES_TALENT = 201909,
    SPELL_SHAMAN_RAINFALL = 215864,
    SPELL_SHAMAN_RAINFALL_HEAL = 215871,
    SPELL_SHAMAN_RESTORATIVE_MISTS = 114083,
    SPELL_SHAMAN_RIPTIDE = 61295,
    SPELL_SHAMAN_ROLLING_THUNDER_AURA = 88764,
    SPELL_SHAMAN_ROLLING_THUNDER_ENERGIZE = 88765,
    SPELL_SHAMAN_RUSHING_STREAMS = 147074,
    SPELL_SHAMAN_SATED = 57724,
    SPELL_SHAMAN_SEARING_FLAMES_DAMAGE_DONE = 77661,
    SPELL_SHAMAN_SOLAR_BEAM = 113286,
    SPELL_SHAMAN_SOLAR_BEAM_SILENCE = 113288,
    SPELL_SHAMAN_STONE_BULWARK_ABSORB = 114893,
    SPELL_SHAMAN_STORMBRINGER = 201845,
    SPELL_SHAMAN_STORMBRINGER_PROC = 201846,
    SPELL_SHAMAN_STORMLASH = 195255,
    SPELL_SHAMAN_STORMLASH_BUFF = 195222,
    SPELL_SHAMAN_STORMLASH_DAMAGE = 213307,
    SPELL_SHAMAN_STORMSTRIKE = 17364,
    SPELL_SHAMAN_STORMSTRIKE_MAIN = 32175,
    SPELL_SHAMAN_TIDAL_WAVES = 53390,
    SPELL_SHAMAN_TOTEM_HEALING_STREAM_HEAL = 52042,
    SPELL_SHAMAN_UNDULATION_PROC = 216251,
    SPELL_SHAMAN_UNLEASHED_FURY_EARTHLIVING = 118473,
    SPELL_SHAMAN_UNLEASHED_FURY_FLAMETONGUE = 118470,
    SPELL_SHAMAN_UNLEASHED_FURY_FROSTBRAND = 118474,
    SPELL_SHAMAN_UNLEASHED_FURY_ROCKBITER = 118475,
    SPELL_SHAMAN_UNLEASHED_FURY_TALENT = 117012,
    SPELL_SHAMAN_UNLEASHED_FURY_WINDFURY = 118472,
    SPELL_SHAMAN_UNLEASH_ELEMENTS = 73680,
    SPELL_SHAMAN_WATER_WALKING = 546,
    SPELL_SHAMAN_WELLSPRING_MISSILE = 198117,
    SPELL_SHAMAN_WINDFURY_ATTACK = 25504,
    SPELL_SHAMAN_WINDFURY_ATTACK_MAIN_HAND = 25504,
    SPELL_SHAMAN_WINDFURY_ATTACK_OFF_HAND = 33750,
    SPELL_SHAMAN_WINDFURY_WEAPON_PASSIVE = 33757,
    SPELL_SHAMAN_WIND_RUSH_TOTEM = 192077,
    //8.0
    SPELL_SHAMAN_FORCEFUL_WINDS = 262647,
    SPELL_SHAMAN_FORCEFUL_WINDS_MOD_DAMAGE_DONE = 262652,
    SPELL_SHAMAN_CRASHING_LIGHTNING_MOD_CL = 242286,
    SPELL_SHAMAN_CRASHING_LIGHTNING_DAMAGE = 195592, //triggered by SS, LL
    SPELL_SHAMAN_MASTERY_ELEMENTAL_OVERLOAD = 168534,
    SPELL_SHAMAN_CHAIN_LIGHTNING = 188443,

    // Frostbrand and Hailstorm Talent 
    SPELL_FROSTBRAND = 196834,
    SPELL_FROSTBRAND_SLOW = 147732,
    SPELL_HAILSTORM_TALENT = 210853,
    SPELL_HAILSTORM_TALENT_PROC = 210854,
    // Flametongue and Searing Assault talent
    SPELL_FLAMETONGUE = 193796,
    SPELL_FLAMETONGUE_AURA = 194084,
    SPELL_SEARING_ASSAULT_TALENT = 192087,
    SPELL_SEARING_ASSULAT_TALENT_PROC = 268429,
    // Crash Lightning and Crashing Storm talent
    SPELL_GATHERING_STORMS_AURA = 198300,
    SPELL_CRASHING_STORM_TALENT_DAMAGE = 210801,
    SPELL_CRASHING_STORM_TALENT_AT = 210797,
};

enum TotemSpells
{
    SPELL_TOTEM_WIND_RUSH_EFFECT = 192082,
    SPELL_TOTEM_VOODOO_AT = 196935,
    SPELL_TOTEM_VOODOO_EFFECT = 196942,
    SPELL_TOTEM_VOODOO_COOLDOWN = 202318,
    SPELL_TOTEM_LIGHTNING_SURGE_EFFECT = 118905,
    SPELL_TOTEM_RESONANCE_EFFECT = 202192,
    SPELL_TOTEM_LIQUID_MAGMA_EFFECT = 192226,
    SPELL_TOTEM_EARTH_GRAB_ROOT_EFFECT = 64695,
    SPELL_TOTEM_EARTH_GRAB_SLOW_EFFECT = 116947,
    SPELL_TOTEM_HEALING_TIDE_EFFECT = 114942,
    SPELL_TOTEM_TAIL_WIND_EFFECT = 210659,
    SPELL_TOTEM_EMBER_EFFECT = 210658,
    SPELL_TOTEM_STORM_EFFECT = 210652,
    SPELL_TOTEM_CLOUDBURST_EFFECT = 157504,
    SPELL_TOTEM_CLOUDBURST = 157503,
    SPELL_TOTEM_ANCESTRAL_PROTECTION_AT = 207495,
    SPELL_TOTEM_TOTEMIC_REVIVAL = 207553,
    SPELL_TOTEM_SKYFURY_EFFECT = 208963,
    SPELL_TOTEM_GROUDING_TOTEM_EFFECT = 8178
};

enum ShamanSpellIcons
{
    SHAMAN_ICON_ID_SOOTHING_RAIN = 2011,
    SHAMAN_ICON_ID_SHAMAN_LAVA_FLOW = 3087
};

enum MiscSpells
{
    SPELL_HUNTER_INSANITY = 95809,
    SPELL_MAGE_TEMPORAL_DISPLACEMENT = 80354
};

enum AncestralAwakeningProc
{
    SPELL_ANCESTRAL_AWAKENING_PROC = 52752,
};

enum ShamanNpcs
{
    NPC_RAINFALL = 73400,
    NPC_HEALING_RAIN = 73400, // Same as Rainfall at 7.3.5
};

// Feral Lunge - 196884
class spell_sha_feral_lunge : public SpellScriptLoader
{
public:
    spell_sha_feral_lunge() : SpellScriptLoader("spell_sha_feral_lunge") {}

    class spell_sha_feral_lunge_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sha_feral_lunge_SpellScript);

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            if (!sSpellMgr->GetSpellInfo(SPELL_SHAMAN_FERAL_LUNGE_DAMAGE, DIFFICULTY_NONE))
                return false;
            return true;
        }

        void HandleDamage(SpellEffIndex /*effIndex*/)
        {
            Unit* caster = GetCaster();
            Unit* target = GetHitUnit();
            if (!caster || !target)
                return;

            caster->CastSpell(target, SPELL_SHAMAN_FERAL_LUNGE_DAMAGE, true);
        }

        void Register() override
        {
            OnEffectHitTarget += SpellEffectFn(spell_sha_feral_lunge_SpellScript::HandleDamage, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_sha_feral_lunge_SpellScript();
    }
};

// Stormbringer - 201845
class spell_sha_stormbringer : public SpellScriptLoader
{
public:
    spell_sha_stormbringer() : SpellScriptLoader("spell_sha_stormbringer") {}

    class spell_sha_stormbringer_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sha_stormbringer_AuraScript);

        bool CheckProc(ProcEventInfo& eventInfo)
        {
            return eventInfo.GetDamageInfo()->GetAttackType() == BASE_ATTACK;
        }

        void HandleProc(AuraEffect* /*aurEff*/, ProcEventInfo& /*eventInfo*/)
        {
            if (Unit* caster = GetCaster())
            {
                caster->CastSpell(caster, SPELL_SHAMAN_STORMBRINGER_PROC, true);
                caster->GetSpellHistory()->ResetCooldown(SPELL_SHAMAN_STORMSTRIKE, true);
            }
        }

        void Register() override
        {
            DoCheckProc += AuraCheckProcFn(spell_sha_stormbringer_AuraScript::CheckProc);
            OnEffectProc += AuraEffectProcFn(spell_sha_stormbringer_AuraScript::HandleProc, EFFECT_0, SPELL_AURA_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_sha_stormbringer_AuraScript();
    }
};

// Crash Lightning aura - 187878
class spell_sha_crash_lightning_aura : public SpellScriptLoader
{
public:
    spell_sha_crash_lightning_aura() : SpellScriptLoader("spell_sha_crash_lightning_aura") {}

    class spell_sha_crash_lightning_aura_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sha_crash_lightning_aura_AuraScript);

        bool CheckProc(ProcEventInfo& eventInfo)
        {
            if (eventInfo.GetSpellInfo()->Id == SPELL_SHAMAN_STORMSTRIKE_MAIN ||
                eventInfo.GetSpellInfo()->Id == SPELL_SHAMAN_LAVA_LASH)
                return true;
            return false;
        }

        void Register() override
        {
            DoCheckProc += AuraCheckProcFn(spell_sha_crash_lightning_aura_AuraScript::CheckProc);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_sha_crash_lightning_aura_AuraScript();
    }
};

// 51533 - Feral Spirit
class spell_sha_feral_spirit : public SpellScriptLoader
{
public:
    spell_sha_feral_spirit() : SpellScriptLoader("spell_sha_feral_spirit") {}

    class spell_sha_feral_spirit_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sha_feral_spirit_SpellScript);

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            Unit* caster = GetCaster();

            caster->CastSpell(GetHitUnit(), SPELL_SHAMAN_FERAL_SPIRIT_SUMMON, true);
        }

        void Register() override
        {
            OnEffectHitTarget += SpellEffectFn(spell_sha_feral_spirit_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_sha_feral_spirit_SpellScript();
    }
};

// -51556 - Ancestral Awakening
class spell_sha_ancestral_awakening : public SpellScriptLoader
{
public:
    spell_sha_ancestral_awakening() : SpellScriptLoader("spell_sha_ancestral_awakening") { }

    class spell_sha_ancestral_awakening_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sha_ancestral_awakening_AuraScript);

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            if (!sSpellMgr->GetSpellInfo(SPELL_SHAMAN_TIDAL_WAVES, DIFFICULTY_NONE))
                return false;
            return true;
        }

        void HandleEffectProc(AuraEffect* aurEff, ProcEventInfo& eventInfo)
        {
            PreventDefaultAction();
            int32 heal = int32(CalculatePct(eventInfo.GetHealInfo()->GetHeal(), aurEff->GetAmount()));

            //GetTarget()->CastCustomSpell(SPELL_SHAMAN_ANCESTRAL_AWAKENING, SPELLVALUE_BASE_POINT0, heal, (Unit*)nullptr, true, nullptr, aurEff);
        }

        void Register() override
        {
            OnEffectProc += AuraEffectProcFn(spell_sha_ancestral_awakening_AuraScript::HandleEffectProc, EFFECT_0, SPELL_AURA_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_sha_ancestral_awakening_AuraScript();
    }
};

// 52759 - Ancestral Awakening
/// Updated 4.3.4
class spell_sha_ancestral_awakening_proc : public SpellScriptLoader
{
public:
    spell_sha_ancestral_awakening_proc() : SpellScriptLoader("spell_sha_ancestral_awakening_proc") { }

    class spell_sha_ancestral_awakening_proc_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sha_ancestral_awakening_proc_SpellScript);

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            if (!sSpellMgr->GetSpellInfo(SPELL_SHAMAN_ANCESTRAL_AWAKENING_PROC, DIFFICULTY_NONE))
                return false;
            return true;
        }

        void FilterTargets(std::list<WorldObject*>& targets)
        {
            if (targets.size() < 2)
                return;

            targets.sort(Trinity::HealthPctOrderPred());

            WorldObject* target = targets.front();
            targets.clear();
            targets.push_back(target);
        }

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            GetCaster()->CastSpell(GetHitUnit(), SPELL_SHAMAN_ANCESTRAL_AWAKENING_PROC, CastSpellExtraArgs(TRIGGERED_FULL_MASK).AddSpellBP0(GetEffectValue()));
        }

        void Register() override
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_sha_ancestral_awakening_proc_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_CASTER_AREA_RAID);
            OnEffectHitTarget += SpellEffectFn(spell_sha_ancestral_awakening_proc_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_sha_ancestral_awakening_proc_SpellScript();
    }
};

// 1064 - Chain Heal
class spell_sha_chain_heal : public SpellScriptLoader
{
public:
    spell_sha_chain_heal() : SpellScriptLoader("spell_sha_chain_heal") { }

    class spell_sha_chain_heal_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sha_chain_heal_SpellScript);

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            if (!sSpellMgr->GetSpellInfo(SPELL_SHAMAN_HIGH_TIDE, DIFFICULTY_NONE))
                return false;
            return true;
        }

        void CatchInitialTarget(WorldObject*& target)
        {
            _primaryTarget = target;
        }

        void SelectAdditionalTargets(std::list<WorldObject*>& targets)
        {
            Unit* caster = GetCaster();
            AuraEffect const* highTide = caster->GetAuraEffect(SPELL_SHAMAN_HIGH_TIDE, EFFECT_1);
            if (!highTide)
                return;

            float range = 25.0f;
            SpellImplicitTargetInfo targetInfo(TARGET_UNIT_TARGET_CHAINHEAL_ALLY);
            ConditionContainer* conditions = GetSpellInfo()->GetEffect(EFFECT_0).ImplicitTargetConditions;

            uint32 containerTypeMask = GetSpell()->GetSearcherTypeMask(targetInfo.GetObjectType(), conditions);
            if (!containerTypeMask)
                return;

            std::list<WorldObject*> chainTargets;
            Trinity::WorldObjectSpellAreaTargetCheck check(range, _primaryTarget, caster, caster, GetSpellInfo(), targetInfo.GetCheckType(), conditions, TARGET_OBJECT_TYPE_UNIT);
            Trinity::WorldObjectListSearcher<Trinity::WorldObjectSpellAreaTargetCheck> searcher(caster, chainTargets, check, containerTypeMask);
            Cell::VisitAllObjects(_primaryTarget, searcher, range);

            chainTargets.remove_if(Trinity::UnitAuraCheck(false, SPELL_SHAMAN_RIPTIDE, caster->GetGUID()));
            if (chainTargets.empty())
                return;

            chainTargets.sort();
            targets.sort();

            std::list<WorldObject*> extraTargets;
            std::set_difference(chainTargets.begin(), chainTargets.end(), targets.begin(), targets.end(), std::back_inserter(extraTargets));
            Trinity::Containers::RandomResize(extraTargets, uint32(highTide->GetAmount()));
            targets.splice(targets.end(), extraTargets);
        }

        WorldObject* _primaryTarget = nullptr;

        void Register() override
        {
            OnObjectTargetSelect += SpellObjectTargetSelectFn(spell_sha_chain_heal_SpellScript::CatchInitialTarget, EFFECT_0, TARGET_UNIT_TARGET_CHAINHEAL_ALLY);
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_sha_chain_heal_SpellScript::SelectAdditionalTargets, EFFECT_0, TARGET_UNIT_TARGET_CHAINHEAL_ALLY);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_sha_chain_heal_SpellScript();
    }
};

// 1535 Fire Nova
class spell_sha_fire_nova : public SpellScriptLoader
{
public:
    spell_sha_fire_nova() : SpellScriptLoader("spell_sha_fire_nova") { }

    class spell_sha_fire_nova_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sha_fire_nova_SpellScript);

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            if (Unit* target = GetHitUnit())
                if (target->HasAura(SPELL_SHAMAN_FLAME_SHOCK))
                    GetCaster()->CastSpell(target, SPELL_SHAMAN_FIRE_NOVA_TRIGGERED, true);
        }

        void Register() override
        {
            OnEffectHitTarget += SpellEffectFn(spell_sha_fire_nova_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_sha_fire_nova_SpellScript();
    }
};

// 88766 - Fulmination
class spell_sha_fulmination : public SpellScriptLoader
{
public:
    spell_sha_fulmination() : SpellScriptLoader("spell_sha_fulmination") { }

    class spell_sha_fulmination_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sha_fulmination_AuraScript);

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            if (!sSpellMgr->GetSpellInfo(SPELL_SHAMAN_FULMINATION, DIFFICULTY_NONE))
                return false;
            if (!sSpellMgr->GetSpellInfo(SPELL_SHAMAN_FULMINATION_INFO, DIFFICULTY_NONE))
                return false;
            if (!sSpellMgr->GetSpellInfo(SPELL_SHAMAN_IMPROVED_LIGHTNING_SHIELD, DIFFICULTY_NONE))
                return false;
            SpellInfo const* lightningShield = sSpellMgr->GetSpellInfo(SPELL_SHAMAN_LIGHTNING_SHIELD, DIFFICULTY_NONE);
            if (!lightningShield || !lightningShield->GetEffect(EFFECT_0).IsEffect() || !sSpellMgr->GetSpellInfo(lightningShield->GetEffect(EFFECT_0).TriggerSpell, DIFFICULTY_NONE))
                return false;
            if (!sSpellMgr->GetSpellInfo(SPELL_SHAMAN_ITEM_T18_ELEMENTAL_2P_BONUS, DIFFICULTY_NONE))
                return false;
            if (!sSpellMgr->GetSpellInfo(SPELL_SHAMAN_ITEM_T18_ELEMENTAL_4P_BONUS, DIFFICULTY_NONE))
                return false;
            if (!sSpellMgr->GetSpellInfo(SPELL_SHAMAN_ITEM_T18_LIGHTNING_VORTEX, DIFFICULTY_NONE))
                return false;
            return true;
        }

        bool CheckProc(ProcEventInfo& eventInfo)
        {
            // Lava Burst cannot add lightning shield stacks without Improved Lightning Shield
            if ((eventInfo.GetSpellInfo()->SpellFamilyFlags[1] & 0x00001000) && !eventInfo.GetActor()->HasAura(SPELL_SHAMAN_IMPROVED_LIGHTNING_SHIELD))
                return false;

            return eventInfo.GetActor()->HasAura(SPELL_SHAMAN_LIGHTNING_SHIELD);
        }

        void HandleEffectProc(AuraEffect* aurEff, ProcEventInfo& eventInfo)
        {
            Unit* caster = eventInfo.GetActor();
            Unit* target = eventInfo.GetActionTarget();
            if (Aura* aura = caster->GetAura(SPELL_SHAMAN_LIGHTNING_SHIELD))
            {
                // Earth Shock releases the charges
                if (eventInfo.GetSpellInfo()->SpellFamilyFlags[0] & 0x00100000)
                {
                    uint32 stacks = aura->GetCharges();
                    if (stacks > 1)
                    {
                        SpellInfo const* triggerSpell = sSpellMgr->AssertSpellInfo(aura->GetSpellInfo()->GetEffect(EFFECT_0).TriggerSpell, DIFFICULTY_NONE);
                        SpellEffectInfo triggerEffect = triggerSpell->GetEffect(EFFECT_0);

                        uint32 damage;
                        damage = caster->SpellDamageBonusDone(target, triggerSpell, uint32(triggerEffect.CalcValue(caster)), SPELL_DIRECT_DAMAGE, triggerEffect, stacks - 1);
                        damage = target->SpellDamageBonusTaken(caster, triggerSpell, damage, SPELL_DIRECT_DAMAGE);

                        caster->CastSpell(target, SPELL_SHAMAN_FULMINATION, CastSpellExtraArgs(TRIGGERED_FULL_MASK).AddSpellBP0(int32(damage)));
                        caster->RemoveAurasDueToSpell(SPELL_SHAMAN_FULMINATION_INFO);

                        if (AuraEffect const* t18_4p = caster->GetAuraEffect(SPELL_SHAMAN_ITEM_T18_ELEMENTAL_4P_BONUS, EFFECT_0))
                        {
                            if (Aura* gatheringVortex = caster->GetAura(SPELL_SHAMAN_ITEM_T18_GATHERING_VORTEX))
                            {
                                if (gatheringVortex->GetStackAmount() + stacks >= uint32(t18_4p->GetAmount()))
                                    caster->CastSpell(caster, SPELL_SHAMAN_ITEM_T18_LIGHTNING_VORTEX, TRIGGERED_FULL_MASK);

                                if (uint8 newStacks = uint8((gatheringVortex->GetStackAmount() + stacks) % t18_4p->GetAmount()))
                                    gatheringVortex->SetStackAmount(newStacks);
                                else
                                    gatheringVortex->Remove();
                            }
                            else
                                caster->CastSpell(caster, SPELL_SHAMAN_ITEM_T18_GATHERING_VORTEX, CastSpellExtraArgs(TRIGGERED_FULL_MASK).AddSpellMod(SPELLVALUE_AURA_STACK, stacks));
                        }

                        if (AuraEffect const* t18_2p = caster->GetAuraEffect(SPELL_SHAMAN_ITEM_T18_ELEMENTAL_2P_BONUS, EFFECT_0))
                        {
                            if (roll_chance_i(t18_2p->GetAmount()))
                            {
                                caster->GetSpellHistory()->ResetCooldown(SPELL_SHAMAN_EARTH_SHOCK, true);
                                return;
                            }
                        }

                        aura->SetCharges(1);
                        aura->SetUsingCharges(false);
                    }
                }
                else
                {
                    aura->SetCharges(std::min<uint8>(aura->GetCharges() + 1, uint8(aurEff->GetAmount())));
                    aura->SetUsingCharges(false);
                    aura->RefreshDuration();

                    if (aura->GetCharges() == aurEff->GetAmount())
                        caster->CastSpell(caster, SPELL_SHAMAN_FULMINATION_INFO, TRIGGERED_FULL_MASK);
                }
            }
        }

        void Register() override
        {
            DoCheckProc += AuraCheckProcFn(spell_sha_fulmination_AuraScript::CheckProc);
            OnEffectProc += AuraEffectProcFn(spell_sha_fulmination_AuraScript::HandleEffectProc, EFFECT_0, SPELL_AURA_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_sha_fulmination_AuraScript();
    }
};

// 5394 - Healing Stream Totem
class spell_sha_healing_stream_totem : public SpellScriptLoader
{
public:
    spell_sha_healing_stream_totem() : SpellScriptLoader("spell_sha_healing_stream_totem") { }

    class spell_sha_healing_stream_totem_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sha_healing_stream_totem_SpellScript);

        void HandleAfterCast() {

            Unit* caster = GetCaster();
            if (!caster)
                return;

            if (caster->HasAura(SPELL_SHAMAN_CARESS_OF_THE_TIDEMOTHER)) {
                AuraEffect* auraeffx = caster->GetAura(SPELL_SHAMAN_CARESS_OF_THE_TIDEMOTHER)->GetEffect(EFFECT_0);
                int32 amount = auraeffx->GetAmount();
                CastSpellExtraArgs args;
                args.AddSpellMod(SPELLVALUE_BASE_POINT0, amount);
                args.SetTriggerFlags(TRIGGERED_FULL_MASK);
                caster->CastSpell(caster, SPELL_SHAMAN_CARESS_OF_THE_TIDEMOTHER_AURA, args);
            }
        }

        void Register() override
        {
            AfterCast += SpellCastFn(spell_sha_healing_stream_totem_SpellScript::HandleAfterCast);
        }

    };
    SpellScript* GetSpellScript() const override
    {
        return new spell_sha_healing_stream_totem_SpellScript();
    }
};


//192077 - Wind Rush Totem
class spell_sha_wind_rush_totem : public SpellScriptLoader
{
public:
    spell_sha_wind_rush_totem() : SpellScriptLoader("spell_sha_wind_rush_totem") { }

    class spell_sha_wind_rush_totem_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sha_wind_rush_totem_AuraScript);

        void Register() override
        {

        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_sha_wind_rush_totem_AuraScript();
    }
};

// 60103 - Lava Lash
class spell_sha_lava_lash : public SpellScript
{
    PrepareSpellScript(spell_sha_lava_lash);

    bool Load() override
    {
        return GetCaster()->IsPlayer();
    }

    void HandleOnHit()
    {
        GetCaster()->CastSpell(GetHitUnit(), SPELL_SHAMAN_LAVA_LASH_SPREAD_FLAME_SHOCK, CastSpellExtraArgs(TRIGGERED_FULL_MASK).AddSpellMod(SPELLVALUE_MAX_TARGETS, GetEffectValue()));

        GetCaster()->RemoveAurasDueToSpell(SPELL_SHAMAN_HOT_HAND);

        Unit* target = GetHitUnit();
        if (!target)
            return;
        if (GetCaster()->HasAura(SPELL_SHAMAN_CRASHING_STORM_DUMMY) && GetCaster()->HasAura(SPELL_SHAMAN_CRASH_LIGTHNING_AURA))
            GetCaster()->CastSpell(target, SPELL_SHAMAN_CRASHING_LIGHTNING_DAMAGE, true);

        if (GetCaster() && GetCaster()->HasAura(SPELL_SHAMAN_CRASH_LIGTHNING_AURA))
            GetCaster()->CastSpell(nullptr, SPELL_SHAMAN_CRASH_LIGHTNING_PROC, true);
    }

    void Register() override
    {
        OnHit += SpellHitFn(spell_sha_lava_lash::HandleOnHit);
    }
};

//17364
class spell_sha_stormstrike : public SpellScript
{
    PrepareSpellScript(spell_sha_stormstrike);

    void HandleOnHit()
    {
        Unit* target = GetHitUnit();
        if (!target)
            return;

        if (GetCaster()->HasAura(SPELL_SHAMAN_CRASHING_STORM_DUMMY) && GetCaster()->HasAura(SPELL_SHAMAN_CRASH_LIGTHNING_AURA))
            GetCaster()->CastSpell(target, SPELL_SHAMAN_CRASHING_LIGHTNING_DAMAGE, true);

        if (GetCaster() && GetCaster()->HasAura(SPELL_SHAMAN_CRASH_LIGTHNING_AURA))
            GetCaster()->CastSpell(nullptr, SPELL_SHAMAN_CRASH_LIGHTNING_PROC, true);
    }

    void Register() override
    {
        OnHit += SpellHitFn(spell_sha_stormstrike::HandleOnHit);
    }
};

// 105792 - Lava Lash
class spell_sha_lava_lash_spread_flame_shock : public SpellScriptLoader
{
public:
    spell_sha_lava_lash_spread_flame_shock() : SpellScriptLoader("spell_sha_lava_lash_spread_flame_shock") { }

    class spell_sha_lava_lash_spread_flame_shock_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sha_lava_lash_spread_flame_shock_SpellScript);

        bool Load() override
        {
            return GetCaster()->GetTypeId() == TYPEID_PLAYER;
        }

        void FilterTargets(std::list<WorldObject*>& targets)
        {
            targets.remove_if(Trinity::UnitAuraCheck(true, SPELL_SHAMAN_FLAME_SHOCK, GetCaster()->GetGUID()));
        }

        void HandleScript(SpellEffIndex /*effIndex*/)
        {
            if (Unit* mainTarget = GetExplTargetUnit())
            {
                if (Aura* flameShock = mainTarget->GetAura(SPELL_SHAMAN_FLAME_SHOCK, GetCaster()->GetGUID()))
                {
                    if (Aura* newAura = GetCaster()->AddAura(SPELL_SHAMAN_FLAME_SHOCK, GetHitUnit()))
                    {
                        newAura->SetDuration(flameShock->GetDuration());
                        newAura->SetMaxDuration(flameShock->GetDuration());
                    }
                }
            }
        }

        void Register() override
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_sha_lava_lash_spread_flame_shock_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_DEST_AREA_ENEMY);
            OnEffectHitTarget += SpellEffectFn(spell_sha_lava_lash_spread_flame_shock_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_sha_lava_lash_spread_flame_shock_SpellScript();
    }
};

// 324 - Lightning Shield
class spell_sha_lightning_shield : public SpellScriptLoader
{
public:
    spell_sha_lightning_shield() : SpellScriptLoader("spell_sha_lightning_shield") { }

    class spell_sha_lightning_shield_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sha_lightning_shield_AuraScript);

        void UnsetUsingCharges(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            GetAura()->SetUsingCharges(false);
        }

        void Register() override
        {
            OnEffectApply += AuraEffectApplyFn(spell_sha_lightning_shield_AuraScript::UnsetUsingCharges, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_sha_lightning_shield_AuraScript();
    }
};

// 51490 - Thunderstorm
class spell_sha_thunderstorm : public SpellScriptLoader
{
public:
    spell_sha_thunderstorm() : SpellScriptLoader("spell_sha_thunderstorm") { }

    class spell_sha_thunderstorm_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sha_thunderstorm_SpellScript);

        void HandleKnockBack(SpellEffIndex effIndex)
        {
            // Glyph of Thunderstorm
            if (GetCaster()->HasAura(SPELL_SHAMAN_GLYPH_OF_THUNDERSTORM))
                PreventHitDefaultEffect(effIndex);
        }

        void Register() override
        {
            OnEffectHitTarget += SpellEffectFn(spell_sha_thunderstorm_SpellScript::HandleKnockBack, EFFECT_1, SPELL_EFFECT_KNOCK_BACK);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_sha_thunderstorm_SpellScript();
    }
};

// 8232 - Windfury Weapon
class spell_shaman_windfury_weapon : public SpellScriptLoader
{
public:
    spell_shaman_windfury_weapon() : SpellScriptLoader("spell_shaman_windfury_weapon") {}

    class spell_shaman_windfury_weapon_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_shaman_windfury_weapon_SpellScript);

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            return sSpellMgr->GetSpellInfo(SPELL_SHAMAN_WINDFURY_WEAPON_PASSIVE, DIFFICULTY_NONE) != nullptr;
        }

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            if (Unit* caster = GetCaster())
                if (AuraEffect* auraEffect = caster->GetAuraEffect(SPELL_SHAMAN_WINDFURY_WEAPON_PASSIVE, EFFECT_0))
                    auraEffect->SetAmount(GetEffectValue());
        }

        void Register() override
        {
            OnEffectHitTarget += SpellEffectFn(spell_shaman_windfury_weapon_SpellScript::HandleDummy, EFFECT_1, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_shaman_windfury_weapon_SpellScript();
    }
};

// 61882
class aura_sha_earthquake : public AuraScript
{
    PrepareAuraScript(aura_sha_earthquake);

    bool Validate(SpellInfo const* /*spellInfo*/) override
    {
        return ValidateSpellInfo({ SPELL_SHAMAN_EARTHQUAKE });
    }

    void HandlePeriodic(AuraEffect const* /*aurEff*/)
    {
        if (AreaTrigger* at = GetTarget()->GetAreaTrigger(SPELL_SHAMAN_EARTHQUAKE))
            GetTarget()->CastSpell(at->GetPosition(), SPELL_SHAMAN_EARTHQUAKE_TICK, true);
    }

    void Register() override
    {
        OnEffectPeriodic += AuraEffectPeriodicFn(aura_sha_earthquake::HandlePeriodic, EFFECT_1, SPELL_AURA_PERIODIC_DUMMY);
    }
};

class spell_sha_glyph_of_lakestrider : public SpellScriptLoader
{
public:
    spell_sha_glyph_of_lakestrider() : SpellScriptLoader("spell_sha_glyph_of_lakestrider") { }

    class spell_sha_glyph_of_lakestrider_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sha_glyph_of_lakestrider_SpellScript);

        void HandleOnHit()
        {
            if (Player* _player = GetCaster()->ToPlayer())
                if (_player->HasAura(SPELL_SHAMAN_GLYPH_OF_LAKESTRIDER))
                    _player->CastSpell(_player, SPELL_SHAMAN_WATER_WALKING, true);
        }

        void Register() override
        {
            OnHit += SpellHitFn(spell_sha_glyph_of_lakestrider_SpellScript::HandleOnHit);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_sha_glyph_of_lakestrider_SpellScript();
    }
};

class spell_sha_healing_stream : public SpellScriptLoader
{
public:
    spell_sha_healing_stream() : SpellScriptLoader("spell_sha_healing_stream") { }

    class spell_sha_healing_stream_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sha_healing_stream_SpellScript);

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            if (!sSpellMgr->GetSpellInfo(SPELL_SHAMAN_HEALING_STREAM, DIFFICULTY_NONE))
                return false;
            return true;
        }

        void HandleOnHit()
        {
            if (!GetCaster()->GetOwner())
                return;

            if (Player* _player = GetCaster()->GetOwner()->ToPlayer())
                if (Unit* target = GetHitUnit())
                    // Glyph of Healing Stream Totem
                    if (target->GetGUID() != _player->GetGUID() && _player->HasAura(SPELL_SHAMAN_GLYPH_OF_HEALING_STREAM_TOTEM))
                        _player->CastSpell(target, SPELL_SHAMAN_GLYPH_OF_HEALING_STREAM, true);
        }

        void Register() override
        {
            OnHit += SpellHitFn(spell_sha_healing_stream_SpellScript::HandleOnHit);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_sha_healing_stream_SpellScript();
    }
};

// Spirit link
class spell_sha_spirit_link : public SpellScriptLoader
{
public:
    spell_sha_spirit_link() : SpellScriptLoader("spell_sha_spirit_link") { }

    class spell_sha_spirit_link_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sha_spirit_link_SpellScript);

        bool Load() override
        {
            averagePercentage = 0.0f;
            return true;
        }

        void FilterTargets(std::list<WorldObject*>& unitList)
        {
            uint32 targetCount = 0;
            for (std::list<WorldObject*>::const_iterator itr = unitList.begin(); itr != unitList.end(); ++itr)
                if (Unit* target = (*itr)->ToUnit())
                {
                    targets[target->GetGUID()] = target->GetHealthPct();
                    averagePercentage += target->GetHealthPct();
                    ++targetCount;
                }

            averagePercentage /= targetCount;
        }

        void HandleOnHit()
        {
            if (Unit* target = GetHitUnit())
            {
                if (targets.find(target->GetGUID()) == targets.end())
                    return;

                float bp0 = 0.f;
                float bp1 = 0.f;
                float percentage = targets[target->GetGUID()];
                int64 currentHp = target->CountPctFromMaxHealth(percentage);
                int64 desiredHp = target->CountPctFromMaxHealth(averagePercentage);
                if (desiredHp > currentHp)
                    bp1 = desiredHp - currentHp;
                else
                    bp0 = currentHp - desiredHp;
                CastSpellExtraArgs args;
                args.SetTriggerFlags(TRIGGERED_NONE);
                args.AddSpellMod(SPELLVALUE_BASE_POINT0, bp0);
                args.AddSpellMod(SPELLVALUE_BASE_POINT1, bp1);
                GetCaster()->CastSpell(target, 98021, args);
            }

        }

        void Register() override
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_sha_spirit_link_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_CASTER_AREA_RAID);
            OnHit += SpellHitFn(spell_sha_spirit_link_SpellScript::HandleOnHit);
        }

    private:
        std::map<ObjectGuid, float> targets;
        float averagePercentage;
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_sha_spirit_link_SpellScript();
    }
};

class spell_sha_spiritwalkers_grace : public SpellScriptLoader
{
public:
    spell_sha_spiritwalkers_grace() : SpellScriptLoader("spell_sha_spiritwalkers_grace") { }

    class spell_sha_spiritwalkers_grace_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sha_spiritwalkers_grace_SpellScript);

        void HandleOnHit()
        {
            Unit* caster = GetCaster();
            if (caster->HasAura(159651))
                caster->CastSpell(caster, 159652, true);
        }

        void Register() override
        {
            OnHit += SpellHitFn(spell_sha_spiritwalkers_grace_SpellScript::HandleOnHit);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_sha_spiritwalkers_grace_SpellScript();
    }
};

enum Resurgence
{
    SPELL_WATER_SHIELD = 52127,  // Player must have this aura to let the spell proc
    SPELL_RESURGENCE = 16196,  // Dummy aura applied on the player (spec spell)
    SPELL_RESURGENCE_PROC = 101033, // Regenerate life according to the spell that triggered the proc

    /* Spells that can cause the proc  */
    SPELL_HEALING_WAVE = 331,
    SPELL_GREATER_HEALING_WAVE = 77472,
    SPELL_RIPTIDE = 61295,
    SPELL_HEALING_SURGE = 8004,
    SPELL_UNLEASH_LIFE = 73685, // Triggered when Unleashed Elements is used on Earthliving Weapon
    SPELL_CHAIN_HEAL = 1064,
};

// Script to handle the dummy proc of 16196
class spell_sha_resurgence : public SpellScriptLoader
{
public:
    spell_sha_resurgence() : SpellScriptLoader("spell_sha_resurgence") { }

    class spell_sha_resurgence_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sha_resurgence_AuraScript);

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            return ValidateSpellInfo({ SPELL_WATER_SHIELD, SPELL_RESURGENCE, SPELL_RESURGENCE_PROC });
        }

        // Spell cannot proc if caster doesn't have aura 52127
        bool CheckDummyProc(ProcEventInfo& procInfo)
        {
            if (Unit* target = procInfo.GetActor())
                return target->HasAura(SPELL_WATER_SHIELD);

            return false;
        }

        void HandleDummyProc(ProcEventInfo& procInfo)
        {
            float healAmount = 0.f;
            if (Unit* target = procInfo.GetActor())
            {
                healAmount = target->CalculateSpellDamage(target, procInfo.GetProcSpell()->GetSpellInfo()->GetEffect(EFFECT_0), 0);
                if (healAmount)
                {
                    // Change heal amount accoring to the spell that triggered this one */
                    if (DamageInfo* damageInfo = procInfo.GetDamageInfo())
                    {
                        switch (damageInfo->GetSpellInfo()->Id)
                        {
                            // 100% on Healing Wave and Greater Healing Wave
                        case SPELL_HEALING_WAVE:
                        case SPELL_GREATER_HEALING_WAVE:
                            break;

                            // 60% on Riptide, Healing Surge and Unleash Life
                        case SPELL_RIPTIDE:
                        case SPELL_HEALING_SURGE:
                        case SPELL_UNLEASH_LIFE:
                            healAmount *= 0.6f;
                            break;

                            // 33% on Chain Heal
                        case SPELL_CHAIN_HEAL:
                            healAmount *= 0.33f;
                            break;

                            /*
                            * If we have something else here, we should assert, because it would not be
                            * logic (if spell_proc_event entry in DB is correct). But, since I cannot be
                            * sure that proc system is 100% correct, just return for now.
                            */
                        default:
                            return;
                        }  //switch damageInfo->GetSpellInfo()->Id

                        CastSpellExtraArgs args;
                        args.SetTriggerFlags(TRIGGERED_FULL_MASK);
                        args.AddSpellMod(SPELLVALUE_BASE_POINT0, healAmount);
                        target->CastSpell(target, SPELL_RESURGENCE_PROC, args);
                    }   // if procInfo.GetDamageInfo()
                }   // if target->CalculateSpellDamage()
            }   // if procInfo.GetActor()
        }   // void HandleDummyProc

        void Register() override
        {
            DoCheckProc += AuraCheckProcFn(spell_sha_resurgence_AuraScript::CheckDummyProc);
            OnProc += AuraProcFn(spell_sha_resurgence_AuraScript::HandleDummyProc);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_sha_resurgence_AuraScript();
    }
};


// Spells used by the Earthgrab Totem of the Shaman
enum EarthgrabTotem
{
    // Applied on the totem, ticks every two seconds and roots all targets within 10 yards (64695)
    SPELL_EARTHGRAB = 116943,
    SPELL_EARTHGRAB_PERIODIC = 64695,

    // When Earthgrab already hit a target, this target cannot be rooted a second time, and is instead
    // slowed with this one. (Same as the one used by Earthbind Totem)
    SPELL_EARTHBIND = 3600,
};

typedef std::list<WorldObject*> WorldObjectList;
typedef WorldObjectList::const_iterator WorldObjectListCIter;

enum ShamanTotems
{
    /* Entries */
    NPC_TOTEM_MAGMA = 5929,
    NPC_TOTEM_HEALING_STREAM = 3527,
    NPC_TOTEM_HEALING_TIDE = 59764,

    /* Spells */
    SPELL_MAGMA_TOTEM = 8188,     // Ticks every two seconds, inflicting damages to all the creatures in a 8 yards radius
    SPELL_HEALING_STREAM = 5672,     // Ticks every two seconds, targeting the group member with lowest hp in a 40 yards radius
    SPELL_HEALING_TIDE = 114941,   // Ticks every two seconds, targeting 5 / 12 group / raid members with lowest hp in a 40 yards radius
};

//187880 - Maelstrom Weapon
class spell_sha_maelstrom_weapon : public AuraScript
{
    PrepareAuraScript(spell_sha_maelstrom_weapon);

    bool Validate(SpellInfo const* /*spellInfo*/) override
    {
        return ValidateSpellInfo({ SPELL_SHAMAN_MAELSTROM_WEAPON_POWER });
    }

    bool CheckEffectProc(ProcEventInfo& eventInfo)
    {
        return eventInfo.GetDamageInfo()->GetAttackType() == BASE_ATTACK ||
            eventInfo.GetDamageInfo()->GetAttackType() == OFF_ATTACK ||
            eventInfo.GetSpellInfo()->Id == SPELL_SHAMAN_WINDFURY_ATTACK;
    }

    void HandleEffectProc(AuraEffect* /*aurEff*/, ProcEventInfo& /*eventInfo*/)
    {
        if (Unit* caster = GetCaster())
            caster->CastSpell(caster, SPELL_SHAMAN_MAELSTROM_WEAPON_POWER, true);
    }

    void Register() override
    {
        DoCheckProc += AuraCheckProcFn(spell_sha_maelstrom_weapon::CheckEffectProc);
        OnEffectProc += AuraEffectProcFn(spell_sha_maelstrom_weapon::HandleEffectProc, EFFECT_0, SPELL_AURA_DUMMY);
    }
};

//188389
class spell_sha_flame_shock_elem : public SpellScriptLoader
{
public:
    spell_sha_flame_shock_elem() : SpellScriptLoader("spell_sha_flame_shock_elem") {}

    class spell_sha_flame_shock_elem_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sha_flame_shock_elem_AuraScript);

        int32 m_ExtraSpellCost;

        bool Load() override
        {
            Unit* caster = GetCaster();
            if (!caster)
                return false;

            m_ExtraSpellCost = std::min(caster->GetPower(POWER_MAELSTROM), 20);
            return true;
        }

        void HandleApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            int32 m_newDuration = GetDuration() + (GetDuration() * (m_ExtraSpellCost / 20));
            SetDuration(m_newDuration);

            if (Unit* caster = GetCaster())
            {
                int32 m_newMael = caster->GetPower(POWER_MAELSTROM) - m_ExtraSpellCost;
                if (m_newMael < 0)
                    m_newMael = 0;
                if (caster->GetPower(POWER_MAELSTROM))
                    caster->SetPower(POWER_MAELSTROM, m_newMael);
            }
        }

        void HandlePeriodic(AuraEffect const* /*aurEff*/)
        {
            Unit* caster = GetCaster();
            if (!caster)
                return;
            if (caster->HasAura(SPELL_SHAMAN_LAVA_SURGE) && roll_chance_f(15))
            {
                caster->CastSpell(nullptr, SPELL_SHAMAN_LAVA_SURGE_CAST_TIME);
                caster->GetSpellHistory()->ResetCooldown(SPELL_SHAMAN_LAVA_BURST, true);
            }
        }

        void Register() override
        {
            OnEffectApply += AuraEffectApplyFn(spell_sha_flame_shock_elem_AuraScript::HandleApply, EFFECT_1, SPELL_AURA_PERIODIC_DAMAGE, AURA_EFFECT_HANDLE_REAL);
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_sha_flame_shock_elem_AuraScript::HandlePeriodic, EFFECT_1, SPELL_AURA_PERIODIC_DAMAGE);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_sha_flame_shock_elem_AuraScript();
    }
};

//197211 - Fury of Air
class spell_sha_fury_of_air : public SpellScriptLoader
{
public:
    spell_sha_fury_of_air() : SpellScriptLoader("spell_sha_fury_of_air") {}

    class spell_sha_fury_of_air_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sha_fury_of_air_AuraScript);

        void HandlePeriodic(AuraEffect const* /*aurEff*/)
        {
            Unit* caster = GetCaster();
            if (!caster)
                return;

            if (caster->GetPower(POWER_MAELSTROM) >= 5)
                caster->SetPower(POWER_MAELSTROM, caster->GetPower(POWER_MAELSTROM) - 5);
            else
                caster->RemoveAura(SPELL_SHAMAN_FURY_OF_AIR);

        }

        void Register() override
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_sha_fury_of_air_AuraScript::HandlePeriodic, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_sha_fury_of_air_AuraScript();
    }
};

//202192 - Resonance totem
class spell_sha_resonance_effect : public SpellScriptLoader
{
public:
    spell_sha_resonance_effect() : SpellScriptLoader("spell_sha_resonance_effect") {}

    class spell_sha_resonance_effect_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sha_resonance_effect_AuraScript);

        void HandlePeriodic(AuraEffect const* /*aurEff*/)
        {
            Unit* caster = GetCaster();
            if (!caster)
                return;

            if (caster->GetOwner())
                caster->GetOwner()->ModifyPower(POWER_MAELSTROM, +1);
        }

        void Register() override
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_sha_resonance_effect_AuraScript::HandlePeriodic, EFFECT_0, SPELL_AURA_PERIODIC_ENERGIZE);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_sha_resonance_effect_AuraScript();
    }
};

//157504 - Cloudburst Totem
class spell_sha_cloudburst_effect : public SpellScriptLoader
{
public:
    spell_sha_cloudburst_effect() : SpellScriptLoader("spell_sha_cloudburst_effect") { }

    class spell_sha_cloudburst_effect_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sha_cloudburst_effect_AuraScript);

        void OnProc(AuraEffect* p_AurEff, ProcEventInfo& p_EventInfo)
        {
            PreventDefaultAction();

            HealInfo* l_HealInfo = p_EventInfo.GetHealInfo();

            if (!l_HealInfo)
                return;

            if (sSpellMgr->GetSpellInfo(SPELL_TOTEM_CLOUDBURST, DIFFICULTY_NONE))
            {
                SpellInfo const* l_SpellInfo = sSpellMgr->GetSpellInfo(SPELL_TOTEM_CLOUDBURST, DIFFICULTY_NONE);
                GetEffect(p_AurEff->GetEffIndex())->SetAmount(p_AurEff->GetAmount() + CalculatePct(l_HealInfo->GetHeal(), l_SpellInfo->GetEffect(EFFECT_0).BasePoints));
            }
        }

        void OnRemove(AuraEffect const* p_AurEff, AuraEffectHandleModes /* p_Mode */)
        {
            if (Unit* l_Owner = GetOwner()->ToUnit())
            {
                if (float l_Amount = p_AurEff->GetAmount())
                {
                    CastSpellExtraArgs args;
                    args.SetTriggerFlags(TRIGGERED_FULL_MASK);
                    args.AddSpellMod(SPELLVALUE_BASE_POINT0, l_Amount);
                    l_Owner->CastSpell(l_Owner, SPELL_TOTEM_CLOUDBURST, args);
                    GetEffect(p_AurEff->GetEffIndex())->SetAmount(0);
                }
            }
        }

        void Register() override
        {
            OnEffectProc += AuraEffectProcFn(spell_sha_cloudburst_effect_AuraScript::OnProc, EFFECT_0, SPELL_AURA_DUMMY);
            OnEffectRemove += AuraEffectRemoveFn(spell_sha_cloudburst_effect_AuraScript::OnRemove, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_sha_cloudburst_effect_AuraScript();
    }
};

//Cloudburst - 157503
class spell_sha_cloudburst : public SpellScriptLoader
{
public:
    spell_sha_cloudburst() : SpellScriptLoader("spell_sha_cloudburst") { }

    class spell_sha_cloudburst_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sha_cloudburst_SpellScript);

        bool Load() override
        {
            l_TargetCount = 0;
            return true;
        }

        void HandleHeal(SpellEffIndex /*p_EffIndex*/)
        {
            if (l_TargetCount)
                SetHitHeal(GetHitHeal() / l_TargetCount);
        }

        void CountTargets(std::list<WorldObject*>& p_Targets)
        {
            l_TargetCount = p_Targets.size();
        }

        void Register() override
        {
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_sha_cloudburst_SpellScript::CountTargets, EFFECT_0, TARGET_UNIT_DEST_AREA_ALLY);
            OnEffectHitTarget += SpellEffectFn(spell_sha_cloudburst_SpellScript::HandleHeal, EFFECT_0, SPELL_EFFECT_HEAL);
        }

        uint8 l_TargetCount;
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_sha_cloudburst_SpellScript;
    }
};

// Ascendance (Water) - 114052
class spell_sha_ascendance_water : public SpellScriptLoader
{
public:
    spell_sha_ascendance_water() : SpellScriptLoader("spell_sha_ascendance_water") { }

    class spell_sha_ascendance_water_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sha_ascendance_water_AuraScript);

        enum eSpells
        {
            RestorativeMists = 114083
        };

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            return ValidateSpellInfo({ eSpells::RestorativeMists });
        }

        bool CheckProc(ProcEventInfo& eventInfo)
        {
            if (eventInfo.GetHealInfo() && eventInfo.GetSpellInfo() && eventInfo.GetSpellInfo()->Id == eSpells::RestorativeMists)
                return false;

            if (!eventInfo.GetHealInfo())
                return false;

            return true;
        }

        void HandleEffectProc(AuraEffect* aurEff, ProcEventInfo& eventInfo)
        {
            PreventDefaultAction();
            int32 bp0 = eventInfo.GetHealInfo()->GetHeal();
            if (bp0)
            {
                CastSpellExtraArgs args(aurEff);
                args.AddSpellMod(SPELLVALUE_BASE_POINT0, bp0);
                eventInfo.GetActionTarget()->CastSpell(eventInfo.GetActor(), eSpells::RestorativeMists, args);
            }
        }

        void Register() override
        {
            DoCheckProc += AuraCheckProcFn(spell_sha_ascendance_water_AuraScript::CheckProc);
            OnEffectProc += AuraEffectProcFn(spell_sha_ascendance_water_AuraScript::HandleEffectProc, EFFECT_1, SPELL_AURA_PERIODIC_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_sha_ascendance_water_AuraScript();
    }
};

// Ascendance (Water)(heal) - 114083
class spell_sha_ascendance_water_heal : public SpellScriptLoader
{
public:
    spell_sha_ascendance_water_heal() : SpellScriptLoader("spell_sha_ascendance_water_heal") { }

    class spell_sha_ascendance_water_heal_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sha_ascendance_water_heal_SpellScript);

        uint32 m_TargetSize = 0;

        void OnEffectHeal(SpellEffIndex /*effIndex*/)
        {
            SetHitHeal(GetHitHeal() / m_TargetSize);
        }

        void FilterTargets(std::list<WorldObject*>& p_Targets)
        {
            m_TargetSize = p_Targets.size();
        }

        void Register() override
        {
            OnEffectHitTarget += SpellEffectFn(spell_sha_ascendance_water_heal_SpellScript::OnEffectHeal, EFFECT_0, SPELL_EFFECT_HEAL);
            OnObjectAreaTargetSelect += SpellObjectAreaTargetSelectFn(spell_sha_ascendance_water_heal_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_SRC_AREA_ALLY);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_sha_ascendance_water_heal_SpellScript();
    }
};

//210643 Totem Mastery
class spell_sha_totem_mastery : public SpellScriptLoader
{
public:
    spell_sha_totem_mastery() : SpellScriptLoader("spell_sha_totem_mastery") { }

    class spell_sha_totem_mastery_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sha_totem_mastery_SpellScript);

        void HandleSummon()
        {
            Unit* caster = GetCaster();
            if (!caster)
                return;

            Player* player = caster->ToPlayer();
            if (!player)
                return;

            //Unsummon any Resonance Totem that the player already has. ID : 102392
            std::list<Creature*> totemResoList;
            player->GetCreatureListWithEntryInGrid(totemResoList, 102392, 500.0f);

            for (std::list<Creature*>::iterator i = totemResoList.begin(); i != totemResoList.end(); ++i)
            {
                Unit* owner = (*i)->GetOwner();

                if (owner && owner == player && (*i)->IsSummon())
                    continue;

                i = totemResoList.erase(i);
            }

            if ((int32)totemResoList.size() >= 1)
                totemResoList.back()->ToTempSummon()->UnSummon();

            //Unsummon any Storm Totem that the player already has. ID : 106317
            std::list<Creature*> totemStormList;
            player->GetCreatureListWithEntryInGrid(totemStormList, 106317, 500.0f);

            for (std::list<Creature*>::iterator i = totemStormList.begin(); i != totemStormList.end(); ++i)
            {
                Unit* owner = (*i)->GetOwner();

                if (owner && owner == player && (*i)->IsSummon())
                    continue;

                i = totemStormList.erase(i);
            }

            if ((int32)totemStormList.size() >= 1)
                totemStormList.back()->ToTempSummon()->UnSummon();

            //Unsummon any Ember Totem that the player already has. ID : 106319
            std::list<Creature*> totemEmberList;
            player->GetCreatureListWithEntryInGrid(totemEmberList, 106319, 500.0f);

            for (std::list<Creature*>::iterator i = totemEmberList.begin(); i != totemEmberList.end(); ++i)
            {
                Unit* owner = (*i)->GetOwner();

                if (owner && owner == player && (*i)->IsSummon())
                    continue;

                i = totemEmberList.erase(i);
            }

            if ((int32)totemEmberList.size() >= 1)
                totemEmberList.back()->ToTempSummon()->UnSummon();

            //Unsummon any Tailwind Totem that the player already has. ID : 106321
            std::list<Creature*> totemTailwindList;
            player->GetCreatureListWithEntryInGrid(totemTailwindList, 106321, 500.0f);

            for (std::list<Creature*>::iterator i = totemTailwindList.begin(); i != totemTailwindList.end(); ++i)
            {
                Unit* owner = (*i)->GetOwner();

                if (owner && owner == player && (*i)->IsSummon())
                    continue;

                i = totemTailwindList.erase(i);
            }

            if ((int32)totemTailwindList.size() >= 1)
                totemTailwindList.back()->ToTempSummon()->UnSummon();
        }

        void Register() override
        {
            OnCast += SpellCastFn(spell_sha_totem_mastery_SpellScript::HandleSummon);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_sha_totem_mastery_SpellScript();
    }
};

//NPC ID : 100099
//NPC NAME : Voodoo Totem
struct npc_voodoo_totem : public ScriptedAI
{
    npc_voodoo_totem(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
        me->CastSpell(nullptr, SPELL_TOTEM_VOODOO_AT, true);
    }
};

//61245
struct npc_capacitor_totem : public ScriptedAI
{
    npc_capacitor_totem(Creature* creature) : ScriptedAI(creature) { }

    void Reset() override { }
};

//NPC ID : 102392
struct npc_resonance_totem : public ScriptedAI
{
    npc_resonance_totem(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
        me->GetScheduler().Schedule(1s, [this](TaskContext context)
        {
            me->CastSpell(me, SPELL_TOTEM_RESONANCE_EFFECT, true);
            context.Repeat();
        });
    }
};

//NPC ID : 97369
struct npc_liquid_magma_totem : public ScriptedAI
{
    npc_liquid_magma_totem(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
        me->GetScheduler().Schedule(15s, [this](TaskContext context)
        {
            me->CastSpell(me, SPELL_TOTEM_LIQUID_MAGMA_EFFECT, true);
            context.Repeat();
        });
    }
};

//60561
struct npc_earth_grab_totem : public ScriptedAI
{
    npc_earth_grab_totem(Creature* creature) : ScriptedAI(creature) {}

    std::vector<ObjectGuid> alreadyRooted;

    void Reset() override
    {
        me->GetScheduler().Schedule(2s, [this](TaskContext context)
        {
            std::list<Unit*> unitList;
            me->GetAttackableUnitListInRange(unitList, 10.0f);

            for (auto target : unitList)
            {
                if (target->HasAura(SPELL_TOTEM_EARTH_GRAB_ROOT_EFFECT))
                    continue;

                if (std::find(alreadyRooted.begin(), alreadyRooted.end(), target->GetGUID()) == alreadyRooted.end())
                {
                    alreadyRooted.push_back(target->GetGUID());
                    me->CastSpell(target, SPELL_TOTEM_EARTH_GRAB_ROOT_EFFECT, true);
                }
                else
                    me->CastSpell(target, SPELL_TOTEM_EARTH_GRAB_SLOW_EFFECT, true);
            }

            context.Repeat();
        });
    }
};

//NPC ID : 59764
struct npc_healing_tide_totem : public ScriptedAI
{
    npc_healing_tide_totem(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
        me->GetScheduler().Schedule(1900ms, [this](TaskContext context)
        {
            me->CastSpell(me, SPELL_TOTEM_HEALING_TIDE_EFFECT, true);
            context.Repeat();
        });
    }
};

//NPC ID : 106321
struct npc_tailwind_totem : public ScriptedAI
{
    npc_tailwind_totem(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
        me->GetScheduler().Schedule(1s, [this](TaskContext context)
        {
            me->CastSpell(me, SPELL_TOTEM_TAIL_WIND_EFFECT, true);
            context.Repeat();
        });
    }
};

//NPC ID : 106319
struct npc_ember_totem : public ScriptedAI
{
    npc_ember_totem(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
        me->GetScheduler().Schedule(1s, [this](TaskContext context)
        {
            me->CastSpell(me, SPELL_TOTEM_EMBER_EFFECT, true);
            context.Repeat();
        });
    }
};

//NPC ID : 78001
struct npc_cloudburst_totem : public ScriptedAI
{
    npc_cloudburst_totem(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
        if (me->GetOwner())
            me->CastSpell(me->GetOwner(), SPELL_TOTEM_CLOUDBURST_EFFECT, true);
    }
};

//100943
struct npc_earthen_shield_totem : public ScriptedAI
{
    npc_earthen_shield_totem(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
        me->CastSpell(me, SPELL_SHAMAN_AT_EARTHEN_SHIELD_TOTEM, true);
    }
};

//AT ID : 5760
//Spell ID : 198839
class at_earthen_shield_totem : public AreaTriggerEntityScript
{
public:
    at_earthen_shield_totem() : AreaTriggerEntityScript("at_earthen_shield_totem") { }

    struct at_earthen_shield_totemAI : AreaTriggerAI
    {
        int32 timeInterval;

        at_earthen_shield_totemAI(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger)
        {
            timeInterval = 200;
        }

        enum SpellsUsed
        {
            SPELL_SHAMAN_EARTHEN_SHIELD_ABSORB = 201633
        };

        void OnCreate() override
        {
            Unit* caster = at->GetCaster();

            if (!caster)
                return;

            for (auto itr : at->GetInsideUnits())
            {
                Unit* target = ObjectAccessor::GetUnit(*caster, itr);
                if (caster->IsFriendlyTo(target) || target == caster->GetOwner())
                {
                    if (!target->IsTotem())
                        caster->CastSpell(target, SPELL_SHAMAN_EARTHEN_SHIELD_ABSORB, true);
                }
            }
        }

        void OnUnitEnter(Unit* unit) override
        {
            Unit* caster = at->GetCaster();

            if (!caster || !unit)
                return;

            if (unit->IsTotem())
                return;

            if (caster->IsFriendlyTo(unit) || unit == caster->GetOwner())
            {
                caster->CastSpell(unit, SPELL_SHAMAN_EARTHEN_SHIELD_ABSORB, true);
            }
        }

        void OnUnitExit(Unit* unit) override
        {
            Unit* caster = at->GetCaster();

            if (!caster || !unit)
                return;

            if (unit->IsTotem())
                return;

            if (unit->HasAura(SPELL_SHAMAN_EARTHEN_SHIELD_ABSORB) && unit->GetAura(SPELL_SHAMAN_EARTHEN_SHIELD_ABSORB)->GetCaster() == caster)
                unit->RemoveAura(SPELL_SHAMAN_EARTHEN_SHIELD_ABSORB);
        }

        void OnRemove() override
        {
            Unit* caster = at->GetCaster();

            if (!caster)
                return;

            for (auto itr : at->GetInsideUnits())
            {
                if (Unit* target = ObjectAccessor::GetUnit(*caster, itr))
                    if (!target->IsTotem())
                        if (target->HasAura(SPELL_SHAMAN_EARTHEN_SHIELD_ABSORB) && target->GetAura(SPELL_SHAMAN_EARTHEN_SHIELD_ABSORB)->GetCaster() == caster)
                            target->RemoveAura(SPELL_SHAMAN_EARTHEN_SHIELD_ABSORB);
            }
        }
    };

    AreaTriggerAI* GetAI(AreaTrigger* areatrigger) const override
    {
        return new at_earthen_shield_totemAI(areatrigger);
    }
};

//201633 - Earthen Shield
class spell_sha_earthen_shield_absorb : public SpellScriptLoader
{
public:
    spell_sha_earthen_shield_absorb() : SpellScriptLoader("spell_sha_earthen_shield_absorb") { }

    class spell_sha_earthen_shield_absorb_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sha_earthen_shield_absorb_AuraScript);

        void CalcAbsorb(AuraEffect const* /*aurEff*/, int32& amount, bool& /*canBeRecalculated*/)
        {
            if (!GetCaster())
                return;

            amount = GetCaster()->GetHealth();
        }

        void HandleAbsorb(AuraEffect* /*aurEff*/, DamageInfo& dmgInfo, uint32& absorbAmount)
        {
            Unit* caster = GetCaster();
            if (!caster || !caster->IsTotem())
                return;

            Unit* owner = caster->GetOwner();
            if (!owner)
                return;

            if (dmgInfo.GetDamage() - owner->GetTotalSpellPowerValue(SPELL_SCHOOL_MASK_ALL, true) > 0)
                absorbAmount = owner->GetTotalSpellPowerValue(SPELL_SCHOOL_MASK_ALL, true);
            else
                absorbAmount = dmgInfo.GetDamage();

            //201657 - The damager
            caster->CastSpell(caster, 201657, CastSpellExtraArgs(TRIGGERED_FULL_MASK).AddSpellBP0(absorbAmount));
        }

        void Register() override
        {
            DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_sha_earthen_shield_absorb_AuraScript::CalcAbsorb, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB);
            OnEffectAbsorb += AuraEffectAbsorbFn(spell_sha_earthen_shield_absorb_AuraScript::HandleAbsorb, EFFECT_0);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_sha_earthen_shield_absorb_AuraScript();
    }
};

//104818 - Ancestral Protection Totem
struct npc_ancestral_protection_totem : public ScriptedAI
{
    npc_ancestral_protection_totem(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
        me->CastSpell(me, SPELL_TOTEM_ANCESTRAL_PROTECTION_AT, true);
    }
};


//AT ID : 6336
//Spell ID : 207495
class at_sha_ancestral_protection_totem : public AreaTriggerEntityScript
{
public:
    at_sha_ancestral_protection_totem() : AreaTriggerEntityScript("at_sha_ancestral_protection_totem") { }

    struct at_sha_ancestral_protection_totemAI : AreaTriggerAI
    {
        int32 timeInterval;

        at_sha_ancestral_protection_totemAI(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

        enum SpellsUsed
        {
            SPELL_SHAMAN_ANCESTRAL_PROTECTION_TOTEM_AURA = 207498
        };

        void OnCreate() override
        {
            Unit* caster = at->GetCaster();

            if (!caster)
                return;


            for (auto itr : at->GetInsideUnits())
            {
                Unit* target = ObjectAccessor::GetUnit(*caster, itr);
                if (caster->IsFriendlyTo(target) || target == caster->GetOwner())
                {
                    if (!target->IsTotem())
                        caster->CastSpell(target, SPELL_SHAMAN_ANCESTRAL_PROTECTION_TOTEM_AURA, true);
                }
            }
        }

        void OnUnitEnter(Unit* unit) override
        {
            Unit* caster = at->GetCaster();

            if (!caster || !unit)
                return;

            if (caster->IsFriendlyTo(unit) || unit == caster->GetOwner())
            {
                if (unit->IsTotem())
                    return;
                else
                    caster->CastSpell(unit, SPELL_SHAMAN_ANCESTRAL_PROTECTION_TOTEM_AURA, true);
            }
        }

        void OnUnitExit(Unit* unit) override
        {
            Unit* caster = at->GetCaster();

            if (!caster || !unit)
                return;

            if (unit->HasAura(SPELL_SHAMAN_ANCESTRAL_PROTECTION_TOTEM_AURA) && unit->GetAura(SPELL_SHAMAN_ANCESTRAL_PROTECTION_TOTEM_AURA)->GetCaster() == caster)
                unit->RemoveAura(SPELL_SHAMAN_ANCESTRAL_PROTECTION_TOTEM_AURA);
        }

        void OnRemove() override
        {
            Unit* caster = at->GetCaster();

            if (!caster)
                return;

            for (auto itr : at->GetInsideUnits())
            {
                Unit* target = ObjectAccessor::GetUnit(*caster, itr);
                if (!target->IsTotem())
                    if (target->HasAura(SPELL_SHAMAN_ANCESTRAL_PROTECTION_TOTEM_AURA))
                        target->RemoveAura(SPELL_SHAMAN_ANCESTRAL_PROTECTION_TOTEM_AURA);
            }
        }
    };

    AreaTriggerAI* GetAI(AreaTrigger* areatrigger) const override
    {
        return new at_sha_ancestral_protection_totemAI(areatrigger);
    }
};

//207498 ancestral protection
class spell_sha_ancestral_protection_totem_aura : public SpellScriptLoader
{
public:
    spell_sha_ancestral_protection_totem_aura() : SpellScriptLoader("spell_sha_ancestral_protection_totem_aura") { }

    class spell_sha_ancestral_protection_totem_aura_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sha_ancestral_protection_totem_aura_AuraScript);

        void CalculateAmount(AuraEffect const* /*auraEffect*/, int32& amount, bool& /*canBeRecalculated*/)
        {
            amount = -1;
        }


        void HandleAfterRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            if (GetTargetApplication()->GetRemoveMode() != AURA_REMOVE_BY_DEATH)
                return;

            Unit* totem = GetCaster();
            if (!totem)
                return;

            totem->CastSpell(GetTargetApplication()->GetTarget(), SPELL_TOTEM_TOTEMIC_REVIVAL, true);
            totem->KillSelf();
        }

        void Register() override
        {
            DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_sha_ancestral_protection_totem_aura_AuraScript::CalculateAmount, EFFECT_1, SPELL_AURA_SCHOOL_ABSORB);
            OnEffectRemove += AuraEffectRemoveFn(spell_sha_ancestral_protection_totem_aura_AuraScript::HandleAfterRemove, EFFECT_1, SPELL_AURA_SCHOOL_ABSORB, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_sha_ancestral_protection_totem_aura_AuraScript();
    }
};

//AT id : 3691
//Spell ID : 61882
class at_sha_earthquake_totem : public AreaTriggerEntityScript
{
public:
    at_sha_earthquake_totem() : AreaTriggerEntityScript("at_sha_earthquake_totem") { }

    struct at_sha_earthquake_totemAI : AreaTriggerAI
    {
        int32 timeInterval;

        enum UsedSpells
        {
            SPELL_SHAMAN_EARTHQUAKE_DAMAGE = 77478,
            SPELL_SHAMAN_EARTHQUAKE_STUN = 77505
        };

        at_sha_earthquake_totemAI(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger)
        {
            timeInterval = 200;
        }

        void OnUpdate(uint32 p_Time) override
        {
            Unit* caster = at->GetCaster();

            if (!caster)
                return;

            if (!caster->ToPlayer())
                return;

            // Check if we can handle actions
            timeInterval += p_Time;
            if (timeInterval < 1000)
                return;

            if (TempSummon* tempSumm = caster->SummonCreature(WORLD_TRIGGER, at->GetPosition(), TEMPSUMMON_TIMED_DESPAWN, 200ms))
            {
                tempSumm->SetFaction(caster->GetFaction());
                tempSumm->SetSummonerGUID(caster->GetGUID());
                PhasingHandler::InheritPhaseShift(tempSumm, caster);
                CastSpellExtraArgs args;
                args.SetTriggerFlags(TRIGGERED_FULL_MASK);
                args.AddSpellBP0(caster->GetTotalSpellPowerValue(SPELL_SCHOOL_MASK_NORMAL, false) * 0.3);
                tempSumm->CastSpell(caster, SPELL_SHAMAN_EARTHQUAKE_DAMAGE, args);
            }

            timeInterval -= 1000;
        }
    };

    AreaTriggerAI* GetAI(AreaTrigger* areatrigger) const override
    {
        return new at_sha_earthquake_totemAI(areatrigger);
    }
};

//105427 Skyfury Totem
struct npc_skyfury_totem : public ScriptedAI
{
    npc_skyfury_totem(Creature* creature) : ScriptedAI(creature) {}

    uint32 m_uiBuffTimer;
    int32 m_buffDuration = 15000;
    enum TotemData
    {
        SPELL_TO_CAST = SPELL_TOTEM_SKYFURY_EFFECT,
        RANGE = 40,
        DELAY = 500
    };
    void Reset() override
    {
        m_uiBuffTimer = DELAY;
        ApplyBuff();
    }

    void UpdateAI(uint32 uiDiff) override
    {
        m_buffDuration -= uiDiff;

        if (m_uiBuffTimer <= uiDiff)
            ApplyBuff();
        else
            m_uiBuffTimer -= uiDiff;
    }

    void ApplyBuff()
    {
        m_uiBuffTimer = DELAY;

        if (!me)
            return;

        std::list<Unit*> targets;
        Trinity::AnyFriendlyUnitInObjectRangeCheck check(me, me, RANGE);
        Trinity::UnitListSearcher<Trinity::AnyFriendlyUnitInObjectRangeCheck> searcher(me, targets, check);
        Cell::VisitAllObjects(me, searcher, RANGE);
        for (auto itr : targets)
        {
            if (!itr)
                continue;

            if (!itr->HasAura(SPELL_TOTEM_SKYFURY_EFFECT))
            {
                me->CastSpell(itr, SPELL_TOTEM_SKYFURY_EFFECT, true);
                if (Aura* aura = itr->GetAura(SPELL_TOTEM_SKYFURY_EFFECT))
                    aura->SetDuration(m_buffDuration);
            }
        }
    }
};

//5925
struct npc_grounding_totem : public ScriptedAI
{
    npc_grounding_totem(Creature* creature) : ScriptedAI(creature) {}

    void Reset() override
    {
        me->CastSpell(me, SPELL_TOTEM_GROUDING_TOTEM_EFFECT, true);
    }
};

//197995
class spell_sha_wellspring : public SpellScriptLoader
{
public:
    spell_sha_wellspring() : SpellScriptLoader("spell_sha_wellspring") { }

    class spell_sha_wellspring_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sha_wellspring_SpellScript);

        void HandleHit(SpellEffIndex /*effIndex*/)
        {
            Unit* caster = GetCaster();
            Unit* target = GetHitUnit();

            if (!caster || !target)
                return;

            caster->CastSpell(target, SPELL_SHAMAN_WELLSPRING_MISSILE, true);
        }

        void Register() override
        {
            OnEffectHitTarget += SpellEffectFn(spell_sha_wellspring_SpellScript::HandleHit, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_sha_wellspring_SpellScript();
    }
};

// Undulation
// 8004 Healing Surge
// 77472 Healing Wave
class spell_sha_undulation : public SpellScript
{
    PrepareSpellScript(spell_sha_undulation);

    void HandleHitTarget(SpellEffIndex /*effIndex*/)
    {
        if (GetCaster()->VariableStorage.IncrementOrProcCounter("spell_sha_undulation", 3))
            GetCaster()->CastSpell(nullptr, SPELL_SHAMAN_UNDULATION_PROC, true);
        else
            GetCaster()->RemoveAurasDueToSpell(SPELL_SHAMAN_UNDULATION_PROC);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_sha_undulation::HandleHitTarget, EFFECT_0, SPELL_EFFECT_HEAL);
    }
};

// 215864 Rainfall
class spell_sha_rainfall : public SpellScript
{
    PrepareSpellScript(spell_sha_rainfall);

    void HandleHitTarget(SpellEffIndex /*effIndex*/)
    {
        if (WorldLocation* pos = GetHitDest())
            GetCaster()->SummonCreature(NPC_RAINFALL, *pos);
    }

    void Register() override
    {
        OnEffectHit += SpellEffectFn(spell_sha_rainfall::HandleHitTarget, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

// 215864 Rainfall
class aura_sha_rainfall : public AuraScript
{
    PrepareAuraScript(aura_sha_rainfall);

    void HandleHealPeriodic(AuraEffect const* /*aurEff*/)
    {
        if (Unit* caster = GetCaster())
            if (Creature* rainfallTrigger = caster->GetSummonedCreatureByEntry(NPC_RAINFALL))
                caster->CastSpell(rainfallTrigger->GetPosition(), SPELL_SHAMAN_RAINFALL_HEAL, true);
    }

    void HandleAfterRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
    {
        if (Unit* caster = GetCaster())
            if (Creature* rainfallTrigger = caster->GetSummonedCreatureByEntry(NPC_RAINFALL))
                rainfallTrigger->DespawnOrUnsummon(100ms);
    }

    void HandleProc(AuraEffect* aurEff, ProcEventInfo& /*eventInfo*/)
    {
       SetDuration(GetDuration() + GetEffect(EFFECT_2)->GetBaseAmount() * IN_MILLISECONDS, GetEffect(EFFECT_3)->GetBaseAmount() * IN_MILLISECONDS);
    }

    void Register() override
    {
        OnEffectPeriodic += AuraEffectPeriodicFn(aura_sha_rainfall::HandleHealPeriodic, EFFECT_1, SPELL_AURA_PERIODIC_DUMMY);
        OnEffectRemove += AuraEffectRemoveFn(aura_sha_rainfall::HandleAfterRemove, EFFECT_1, SPELL_AURA_PERIODIC_DUMMY, AURA_EFFECT_HANDLE_REAL);
        OnEffectProc += AuraEffectProcFn(aura_sha_rainfall::HandleProc, EFFECT_2, SPELL_AURA_DUMMY);
    }
};

// 188070 Healing Surge
class spell_sha_healing_surge : public SpellScript
{
    PrepareSpellScript(spell_sha_healing_surge);

    void HandleCalcCastTime(int32& castTime)
    {
        int32 requiredMaelstrom = GetEffectInfo(EFFECT_2).BasePoints;
        if (GetCaster()->GetPower(POWER_MAELSTROM) >= requiredMaelstrom)
        {
            castTime = 0;
            _takenPower = requiredMaelstrom;
        }
    }

    void HandleEnergize(SpellEffIndex /*effIndex*/)
    {
        SetEffectValue(-_takenPower);
    }

    void Register() override
    {
//error        OnCalcCastTime += SpellOnCalcCastTimeFn(spell_sha_healing_surge::HandleCalcCastTime);
        OnEffectHitTarget += SpellEffectFn(spell_sha_healing_surge::HandleEnergize, EFFECT_1, SPELL_EFFECT_ENERGIZE);
    }
private:
    int32 _takenPower = 0;
};

// 8042 Earth Shock
class spell_sha_earth_shock : public SpellScript
{
    PrepareSpellScript(spell_sha_earth_shock);

    void HandleTakePower(SpellPowerCost& powerCost)
    {
        _takenPower = powerCost.Amount;
    }

    void HandleCalcDamage(SpellEffIndex /*effIndex*/)
    {
        SetHitDamage(CalculatePct(GetHitDamage(), _takenPower));
    }

    void Register() override
    {
        OnTakePower += SpellOnTakePowerFn(spell_sha_earth_shock::HandleTakePower);
        OnEffectHitTarget += SpellEffectFn(spell_sha_earth_shock::HandleCalcDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
    }
private:
    int32 _takenPower = 0;
};

// 198103
class spell_sha_earth_elemental : public SpellScript
{
    PrepareSpellScript(spell_sha_earth_elemental);

    void HandleSummon(SpellEffIndex /*effIndex*/)
    {
        GetCaster()->CastSpell(GetHitUnit(), SPELL_SHAMAN_EARTH_ELEMENTAL_SUMMON, true);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_sha_earth_elemental::HandleSummon, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

// 198067
class spell_sha_fire_elemental : public SpellScript
{
    PrepareSpellScript(spell_sha_fire_elemental);

    void HandleSummon(SpellEffIndex /*effIndex*/)
    {
        GetCaster()->CastSpell(GetHitUnit(), SPELL_SHAMAN_FIRE_ELEMENTAL_SUMMON, true);
    }

    void Register() override
    {
        OnEffectHitTarget += SpellEffectFn(spell_sha_fire_elemental::HandleSummon, EFFECT_0, SPELL_EFFECT_DUMMY);
    }
};

// 187837 - Lightning Bolt
class spell_sha_enhancement_lightning_bolt : public SpellScript
{
    PrepareSpellScript(spell_sha_enhancement_lightning_bolt);

    bool Validate(SpellInfo const* /*spellInfo*/) override
    {
        return ValidateSpellInfo({ SPELL_SHAMAN_OVERCHARGE });
    }

    void HandleTakePower(SpellPowerCost& powerCost)
    {
        _maxTakenPower = 0;
        _maxDamagePercent = 0;

        if (Aura* overcharge = GetCaster()->GetAura(SPELL_SHAMAN_OVERCHARGE))
        {
            _maxTakenPower = overcharge->GetSpellInfo()->GetEffect(EFFECT_0).BasePoints;
            _maxDamagePercent = overcharge->GetSpellInfo()->GetEffect(EFFECT_1).BasePoints;
        }

        _takenPower = powerCost.Amount = std::min(GetCaster()->GetPower(POWER_MAELSTROM), _maxTakenPower);
    }

    void HandleDamage(SpellEffIndex /*effIndex*/)
    {
        if (_maxTakenPower > 0)
        {
            int32 increasedDamagePercent = CalculatePct(_maxDamagePercent, float(_takenPower) / float(_maxTakenPower) * 100.f);
            int32 hitDamage = CalculatePct(GetHitDamage(), 100 + increasedDamagePercent);
            SetHitDamage(hitDamage);
        }
    }

    void Register() override
    {
        OnTakePower += SpellOnTakePowerFn(spell_sha_enhancement_lightning_bolt::HandleTakePower);
        OnEffectHitTarget += SpellEffectFn(spell_sha_enhancement_lightning_bolt::HandleDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
    }

private:
    int32 _takenPower;
    int32 _maxTakenPower;
    int32 _maxDamagePercent;
};

// 195255 - Stormlash
class aura_sha_stormlash : public AuraScript
{
    PrepareAuraScript(aura_sha_stormlash);

    void HandleProc(AuraEffect* /*aurEff*/, ProcEventInfo& /*eventInfo*/)
    {
        if (Unit* caster = GetCaster())
            caster->CastSpell(caster, SPELL_SHAMAN_STORMLASH_BUFF, true);
    }

    void Register() override
    {
        OnEffectProc += AuraEffectProcFn(aura_sha_stormlash::HandleProc, EFFECT_0, SPELL_AURA_DUMMY);
    }
};

// 195222 - Stormlash Buff
class aura_sha_stormlash_buff : public AuraScript
{
    PrepareAuraScript(aura_sha_stormlash_buff);

    void HandleProc(AuraEffect* /*aurEff*/, ProcEventInfo& eventInfo)
    {
        eventInfo.GetActor()->CastSpell(eventInfo.GetActionTarget(), SPELL_SHAMAN_STORMLASH_DAMAGE, true);
    }

    void Register() override
    {
        OnEffectProc += AuraEffectProcFn(aura_sha_stormlash_buff::HandleProc, EFFECT_1, SPELL_AURA_DUMMY);
    }
};

// 29264
struct npc_feral_spirit : public ScriptedAI
{
    npc_feral_spirit(Creature* p_Creature) : ScriptedAI(p_Creature) { }

    void DamageDealt(Unit* /*victim*/, uint32& /*damage*/, DamageEffectType /*damageType*/) override
    {
        if (TempSummon* tempSum = me->ToTempSummon())
            if (Unit* owner = tempSum->GetOwner())
                if (owner->HasAura(SPELL_SHAMAN_FERAL_SPIRIT_ENERGIZE_DUMMY))
                    if (owner->GetPower(POWER_MAELSTROM) <= 95)
                        owner->ModifyPower(POWER_MAELSTROM, +5);
    }
};

// Spell 196935 - Voodoo Totem
// AT - 11577
class at_sha_voodoo_totem : public AreaTriggerAI
{
public:
    at_sha_voodoo_totem(AreaTrigger* areaTrigger) : AreaTriggerAI(areaTrigger) { }

    void OnUnitEnter(Unit* unit) override
    {
        Unit* caster = at->GetCaster();
        if (!caster || !unit)
            return;

        if (caster->IsValidAttackTarget(unit))
        {
            caster->CastSpell(unit, SPELL_TOTEM_VOODOO_EFFECT, true);
            caster->CastSpell(unit, SPELL_TOTEM_VOODOO_COOLDOWN, true);
        }
    }

    void OnUnitExit(Unit* unit) override
    {
        unit->RemoveAurasDueToSpell(SPELL_TOTEM_VOODOO_EFFECT, at->GetCasterGuid());
    }
};

// Summon Fire, Earth & Storm Elemental  - Called By 198067 Fire Elemental, 198103 Earth Elemental, 192249 Storm Elemental
class spell_shaman_generic_summon_elemental : public SpellScriptLoader
{
public:
    spell_shaman_generic_summon_elemental() : SpellScriptLoader("spell_shaman_generic_summon_elemental") { }

    enum Spells
    {
        PrimalElementalist = 117013,
        SummonFireElemental = 198067,
        SummonFireElementalTriggered = 188592,
        SummonPrimalElementalistFireElemental = 118291,
        SummonEarthElemental = 198103,
        SummonEarthElementalTriggered = 188616,
        SummonPrimalElementalistEarthElemental = 118323,
        SummonStormElemental = 192249,
        SummonStormElementalTriggered = 157299,
        SummonPrimalElementalistStormElemental = 157319,
    };

    class spell_shaman_generic_summon_elemental_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_shaman_generic_summon_elemental_SpellScript);

        bool Validate(SpellInfo const* /*spellInfo*/) override
        {
            return ValidateSpellInfo
            ({
                PrimalElementalist,
                SummonFireElemental,
                SummonFireElementalTriggered,
                SummonPrimalElementalistFireElemental,
                SummonEarthElemental,
                SummonEarthElementalTriggered,
                SummonPrimalElementalistEarthElemental,
                SummonStormElemental,
                SummonStormElementalTriggered,
                SummonPrimalElementalistStormElemental,
                });
        }
        void HandleSummon(SpellEffIndex /*p_EffIndex*/)
        {
            uint32 triggerSpell;

            switch (GetSpellInfo()->Id)
            {
            case SummonFireElemental:
                triggerSpell = (GetCaster()->HasAura(PrimalElementalist)) ? SummonPrimalElementalistFireElemental : SummonFireElementalTriggered;
                break;
            case SummonEarthElemental:
                triggerSpell = (GetCaster()->HasAura(PrimalElementalist)) ? SummonPrimalElementalistEarthElemental : SummonEarthElementalTriggered;
                break;
            case SummonStormElemental:
                triggerSpell = (GetCaster()->HasAura(PrimalElementalist)) ? SummonPrimalElementalistStormElemental : SummonStormElementalTriggered;
                break;
            default:
                triggerSpell = 0;
                break;
            }

            if (triggerSpell)
                GetCaster()->CastSpell(GetCaster(), triggerSpell, true);
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_shaman_generic_summon_elemental_SpellScript::HandleSummon, EFFECT_0, SPELL_EFFECT_DUMMY);
        }

    };

    SpellScript* GetSpellScript() const
    {
        return new spell_shaman_generic_summon_elemental_SpellScript;
    }
};

//168534
class mastery_elemental_overload : public PlayerScript
{
public:
    mastery_elemental_overload() : PlayerScript("mastery_elemental_overload") { }

    void OnSpellCast(Player* player, Spell* spell, bool) override
    {
        if (player->GetSpecializationId() != TALENT_SPEC_SHAMAN_ELEMENTAL)
            return;

        if (player->HasAura(SPELL_SHAMAN_MASTERY_ELEMENTAL_OVERLOAD) && roll_chance_f(15))
        {
            if (SpellInfo const* spellInfo = spell->GetSpellInfo())
            {
                switch (spell->GetSpellInfo()->Id)
                {
                case SPELL_SHAMAN_LIGHTNING_BOLT_ELEM:
                    player->CastSpell(player->GetSelectedUnit(), SPELL_SHAMAN_LIGHTNING_BOLT_ELEM, true);
                    break;
                case SPELL_SHAMAN_ELEMENTAL_BLAST:
                    player->CastSpell(player->GetSelectedUnit(), SPELL_SHAMAN_ELEMENTAL_BLAST, true);
                    break;
                case SPELL_SHAMAN_LAVA_BURST:
                    player->CastSpell(player->GetSelectedUnit(), SPELL_SHAMAN_LAVA_BURST, true);
                    break;
                case SPELL_SHAMAN_CHAIN_LIGHTNING:
                    player->CastSpell(player->GetSelectedUnit(), SPELL_SHAMAN_LAVA_BURST, true);
                    break;
                }
            }
        }
    }
};

// Frostbrand - 196834
class bfa_spell_frostbrand : public SpellScriptLoader
{
public:
    bfa_spell_frostbrand() : SpellScriptLoader("bfa_spell_frostbrand") { }

    class bfa_spell_frostbrand_SpellScript : public SpellScript
    {
        PrepareSpellScript(bfa_spell_frostbrand_SpellScript);

        bool Load() override
        {
            return GetCaster()->IsPlayer();
        }

        void HandleOnHit()
        {
            Unit* caster = GetCaster();
            Unit* target = GetHitUnit();

            if (!caster || !target)
                return;

            caster->CastSpell(target, SPELL_FROSTBRAND_SLOW, true);
        }
        void Register()
        {
            OnHit += SpellHitFn(bfa_spell_frostbrand_SpellScript::HandleOnHit);
        }
    };

    class bfa_spell_frostbrand_AuraScript : public AuraScript
    {
    public:
        PrepareAuraScript(bfa_spell_frostbrand_AuraScript);

        void HandleEffectProc(AuraEffect* aurEff, ProcEventInfo& eventInfo)
        {
            PreventDefaultAction();

            Unit* attacker = eventInfo.GetActionTarget();
            Unit* caster = GetCaster();

            if (!caster || !attacker)
                return;

            caster->CastSpell(attacker, SPELL_FROSTBRAND_SLOW, true);
            if (caster->HasAura(SPELL_HAILSTORM_TALENT))
                caster->CastSpell(attacker, SPELL_HAILSTORM_TALENT_PROC, true);
        }

        void Register() override
        {
            OnEffectProc += AuraEffectProcFn(bfa_spell_frostbrand_AuraScript::HandleEffectProc, EFFECT_1, SPELL_AURA_PROC_TRIGGER_SPELL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new bfa_spell_frostbrand_AuraScript();
    }

    SpellScript* GetSpellScript() const
    {
        return new bfa_spell_frostbrand_SpellScript();
    }
};

// Flametongue - 193796
class bfa_spell_flametongue : public SpellScriptLoader
{
public:
    bfa_spell_flametongue() : SpellScriptLoader("bfa_spell_flametongue") { }

    class bfa_spell_flametongue_SpellScript : public SpellScript
    {
        PrepareSpellScript(bfa_spell_flametongue_SpellScript);

        bool Load() override
        {
            return GetCaster()->IsPlayer();
        }

        void HandleOnHit()
        {
            Unit* caster = GetCaster();
            Unit* target = GetHitUnit();

            if (!caster || !target)
                return;

            if (caster->HasAura(SPELL_SEARING_ASSAULT_TALENT))
                caster->CastSpell(target, SPELL_SEARING_ASSULAT_TALENT_PROC, true);
        }
        void Register()
        {
            OnHit += SpellHitFn(bfa_spell_flametongue_SpellScript::HandleOnHit);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new bfa_spell_flametongue_SpellScript();
    }
};

// Flametongue aura - 194084
class bfa_spell_flametongue_proc_attack : public SpellScriptLoader
{
public:
    bfa_spell_flametongue_proc_attack() : SpellScriptLoader("bfa_spell_flametongue_proc_attack")
    {}

    class bfa_spell_flametongue_proc_attack_AuraScript : public AuraScript
    {
    public:
        PrepareAuraScript(bfa_spell_flametongue_proc_attack_AuraScript);

        void HandleEffectProc(AuraEffect* aurEff, ProcEventInfo& eventInfo)
        {
            PreventDefaultAction();

            Unit* attacker = eventInfo.GetActionTarget();
            Unit* caster = GetCaster();

            if (!caster || !attacker)
                return;
            caster->CastSpell(attacker, SPELL_SHAMAN_FLAMETONGUE_ATTACK, true);
        }

        void Register() override
        {
            OnEffectProc += AuraEffectProcFn(bfa_spell_flametongue_proc_attack_AuraScript::HandleEffectProc, EFFECT_0, SPELL_AURA_PROC_TRIGGER_SPELL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new bfa_spell_flametongue_proc_attack_AuraScript();
    }
};

// Flametongue Attack - 10444
class bfa_spell_flametongue_attack_damage : public SpellScriptLoader
{
public:
    bfa_spell_flametongue_attack_damage() : SpellScriptLoader("bfa_spell_flametongue_attack_damage") { }

    class bfa_spell_flametongue_attack_damage_SpellScript : public SpellScript
    {
        PrepareSpellScript(bfa_spell_flametongue_attack_damage_SpellScript);

        void HandleOnHit(SpellEffIndex /*effIndex*/)
        {
            Unit* caster = GetCaster();
            if (!caster)
                return;

            if (Aura* flamet = caster->GetAura(SPELL_FLAMETONGUE_AURA))
            {
                uint32 damage = caster->GetTotalAttackPowerValue(BASE_ATTACK) * 0.2f;
                SetHitDamage(damage);
            }
        }
        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(bfa_spell_flametongue_attack_damage_SpellScript::HandleOnHit, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new bfa_spell_flametongue_attack_damage_SpellScript();
    }
};

// 6826
class bfa_at_crashing_storm : public AreaTriggerEntityScript
{
public:
    bfa_at_crashing_storm() : AreaTriggerEntityScript("bfa_at_crashing_storm") { }

    struct bfa_at_crashing_storm_AI : AreaTriggerAI
    {
        bfa_at_crashing_storm_AI(AreaTrigger* areatrigger) : AreaTriggerAI(areatrigger) { }

        uint32 damageTimer;

        void OnInitialize()
        {
            damageTimer = 0;
        }

        void OnUpdate(uint32 diff)
        {
            damageTimer += diff;
            if (damageTimer >= 2 * IN_MILLISECONDS)
            {
                CheckPlayers();
                damageTimer = 0;
            }
        }

        void CheckPlayers()
        {
            if (Unit* caster = at->GetCaster())
            {
                std::list<Player*> targetList;
                float radius = 2.5f;

                caster->GetPlayerListInGrid(targetList, radius);
                if (targetList.size())
                {
                    for (auto player : targetList)
                    {
                        if (!player->IsGameMaster())
                            caster->CastSpell(player, SPELL_CRASHING_STORM_TALENT_DAMAGE, true);
                    }
                }
            }
        }
    };

    AreaTriggerAI* GetAI(AreaTrigger* areatrigger) const override
    {
        return new bfa_at_crashing_storm_AI(areatrigger);
    }
};

//192077, 12676
class at_sha_wind_rush_totem : public AreaTriggerAI
{
public:
    at_sha_wind_rush_totem(AreaTrigger* at) : AreaTriggerAI(at) { }

    void OnUnitEnter(Unit* target) override
    {
        if (!target->IsPlayer())
            return;

        if (target->IsFriendlyTo(at->GetCaster()))
            target->CastSpell(target, SPELL_TOTEM_WIND_RUSH_EFFECT, true);
    }
};

//8143
struct npc_sha_tremor_totem : public ScriptedAI
{
    npc_sha_tremor_totem(Creature* c) : ScriptedAI(c) { }

    enum SpellRelated
    {
        SPELL_TREMOR_TOTEM_DISPELL = 8146,
    };

    void Reset() override
    {
        ScriptedAI::Reset();
        me->GetOwner();
    }

    void OnUpdate(uint32 diff)
    {
        if (diff <= 1000)
        {
            std::list<Player*> playerList;
            me->GetPlayerListInGrid(playerList, 30.0f);
            if (playerList.size())
            {
                for (auto& targets : playerList)
                {
                    if (targets->IsFriendlyTo(me->GetOwner()))
                        if (targets->HasAuraType(SPELL_AURA_MOD_FEAR) || targets->HasAuraType(SPELL_AURA_MOD_FEAR_2) || targets->HasAuraType(SPELL_AURA_MOD_CHARM) || targets->HasAuraType(SPELL_AURA_MOD_CHARM))
                            me->CastSpell(targets, SPELL_TREMOR_TOTEM_DISPELL, true);
                }
            }
        }
    }
};


void AddSC_DekkCore_shaman_spell_scripts()
{
    new at_sha_earthquake_totem();
    new at_sha_ancestral_protection_totem();
    new at_earthen_shield_totem();
    new spell_sha_ancestral_protection_totem_aura();
    new spell_sha_ascendance_water();
    new spell_sha_ascendance_water_heal();
    new spell_sha_chain_heal();
    new spell_sha_cloudburst();
    new spell_sha_cloudburst_effect();
    new spell_sha_crash_lightning_aura();
    new spell_sha_earthen_shield_absorb();
    RegisterSpellScript(aura_sha_earthquake);
    new spell_sha_feral_lunge();
    new spell_sha_feral_spirit();
    new spell_sha_fire_nova();
    new spell_sha_flame_shock_elem();
    new spell_sha_fulmination();
    new spell_sha_fury_of_air();
    new spell_sha_glyph_of_lakestrider();
    new spell_sha_healing_stream();
    new spell_sha_healing_stream_totem();
    RegisterSpellScript(spell_sha_lava_lash);
    new spell_sha_lava_lash_spread_flame_shock();
    new spell_sha_lightning_shield();
    RegisterSpellScript(spell_sha_maelstrom_weapon);
    new spell_sha_resonance_effect();
    new spell_sha_resurgence();
    new spell_sha_spirit_link();
    new spell_sha_spiritwalkers_grace();
    new spell_sha_stormbringer();
    new spell_sha_thunderstorm();
    new spell_sha_totem_mastery();
    new spell_sha_wellspring();
    new spell_shaman_windfury_weapon();
    RegisterSpellScript(spell_sha_undulation);
    RegisterSpellAndAuraScriptPair(spell_sha_rainfall, aura_sha_rainfall);
    RegisterSpellScript(spell_sha_healing_surge);
    RegisterSpellScript(spell_sha_earth_shock);
    RegisterSpellScript(spell_sha_earth_elemental);
    RegisterSpellScript(spell_sha_fire_elemental);
    RegisterSpellScript(spell_sha_enhancement_lightning_bolt);
    RegisterSpellScript(aura_sha_stormlash);
    RegisterSpellScript(aura_sha_stormlash_buff);
    RegisterCreatureAI(npc_feral_spirit);
    RegisterAreaTriggerAI(at_sha_voodoo_totem);
    new spell_shaman_generic_summon_elemental();
    RegisterSpellScript(spell_sha_stormstrike);
    RegisterPlayerScript(mastery_elemental_overload);
    new bfa_spell_frostbrand();
    new bfa_spell_flametongue();
    new bfa_spell_flametongue_attack_damage();
    new bfa_spell_flametongue_proc_attack();
    new bfa_at_crashing_storm();
    RegisterAreaTriggerAI(at_sha_wind_rush_totem);
    RegisterCreatureAI(npc_sha_tremor_totem);
    RegisterCreatureAI(npc_earth_grab_totem);
    RegisterCreatureAI(npc_capacitor_totem);
    RegisterCreatureAI(npc_ancestral_protection_totem);
    RegisterCreatureAI(npc_cloudburst_totem);
    RegisterCreatureAI(npc_earthen_shield_totem);
    RegisterCreatureAI(npc_ember_totem);
    RegisterCreatureAI(npc_grounding_totem);
    RegisterCreatureAI(npc_healing_tide_totem);
    RegisterCreatureAI(npc_liquid_magma_totem);
    RegisterCreatureAI(npc_resonance_totem);
    RegisterCreatureAI(npc_skyfury_totem);
    RegisterCreatureAI(npc_tailwind_totem);
    RegisterCreatureAI(npc_voodoo_totem);
}
