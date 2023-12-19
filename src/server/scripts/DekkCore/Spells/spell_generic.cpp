#include "ScriptMgr.h"
#include "Battleground.h"
#include "CellImpl.h"
#include "DB2Stores.h"
#include "GameTime.h"
#include "GridNotifiersImpl.h"
#include "Group.h"
#include "InstanceScript.h"
#include "Item.h"
#include "LFGMgr.h"
#include "Log.h"
#include "NPCPackets.h"
#include "Pet.h"
#include "ReputationMgr.h"
#include "SkillDiscovery.h"
#include "SpellAuraEffects.h"
#include "SpellHistory.h"
#include "SpellMgr.h"
#include "SpellScript.h"
#include "Vehicle.h"

//312916
class spell_class_mecagnomo_emergency : public SpellScriptLoader
{
public:
    spell_class_mecagnomo_emergency() : SpellScriptLoader("spell_class_mecagnomo_emergency") { }

    class spell_class_mecagnomo_emergency_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_class_mecagnomo_emergency_AuraScript);


        void HandleProc(AuraEffect* aurEff, ProcEventInfo& eventInfo)
        {
            PreventDefaultAction();
            Unit* caster = GetCaster();

            uint32 triggerOnHealth = caster->CountPctFromMaxHealth(aurEff->GetAmount());
            uint32 currentHealth = caster->GetHealth();
            // Just falling below threshold
            if (currentHealth > triggerOnHealth && (currentHealth - caster->GetMaxHealth() * 25.0f / 100.0f) <= triggerOnHealth) {
                caster->CastSpell(caster, 313010);
            }


        }


        bool CheckProc(ProcEventInfo& eventInfo)
        {
            Unit* caster = GetCaster();
            caster->ModifyAuraState(AURA_STATE_WOUNDED_20_PERCENT, false);
            return true;

        }


        void Register() override
        {
            DoCheckProc += AuraCheckProcFn(spell_class_mecagnomo_emergency_AuraScript::CheckProc);
            OnEffectProc += AuraEffectProcFn(spell_class_mecagnomo_emergency_AuraScript::HandleProc, EFFECT_0, SPELL_AURA_PROC_TRIGGER_SPELL);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_class_mecagnomo_emergency_AuraScript();
    }
};

// 313015
class spell_class_mecagnomo_emergency2 : public SpellScriptLoader
{
public:
    spell_class_mecagnomo_emergency2() : SpellScriptLoader("spell_class_mecagnomo_emergency2") { }

    class spell_class_mecagnomo_emergency2_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_class_mecagnomo_emergency2_AuraScript);


        void HandleHit(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            if (!GetCaster()->HasAura(313010))
                PreventDefaultAction();
        }

        void Register() override
        {
            OnEffectApply += AuraEffectApplyFn(spell_class_mecagnomo_emergency2_AuraScript::HandleHit, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const override
    {
        return new spell_class_mecagnomo_emergency2_AuraScript();
    }
};
// 313010

class spell_class_mecagnomo_emergency3 : public SpellScriptLoader
{
public:
    spell_class_mecagnomo_emergency3() : SpellScriptLoader("spell_class_mecagnomo_emergency3") { }

    class spell_class_mecagnomo_emergency3_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_class_mecagnomo_emergency3_SpellScript);

        void HandleHit(SpellEffIndex effIndex)
        {
            if (!GetCaster()->HasAura(313015))
                PreventHitDefaultEffect(effIndex);
        }

        void HandleHeal(SpellEffIndex effIndex)
        {

            Unit* caster = GetCaster();
            uint32 heal = caster->GetMaxHealth() * 25.0f / 100.0f;
            //caster->SpellHealingBonusDone(caster, GetSpellInfo(), caster->CountPctFromMaxHealth(GetSpellInfo()->GetEffect(effIndex)->BasePoints), HEAL, GetEffectInfo());
            heal = caster->SpellHealingBonusTaken(caster, GetSpellInfo(), heal, HEAL);
            SetHitHeal(heal);
            caster->CastSpell(caster, 313015, true);

            PreventHitDefaultEffect(effIndex);
        }

        void Register()
        {
            OnEffectHitTarget += SpellEffectFn(spell_class_mecagnomo_emergency3_SpellScript::HandleHeal, EFFECT_0, SPELL_EFFECT_HEAL_PCT);
            OnEffectLaunch += SpellEffectFn(spell_class_mecagnomo_emergency3_SpellScript::HandleHit, EFFECT_1, SPELL_EFFECT_TRIGGER_SPELL);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_class_mecagnomo_emergency3_SpellScript();
    }
};

class spell_deepholm_kill_all_constructs : public SpellScriptLoader
{
public:
    spell_deepholm_kill_all_constructs() : SpellScriptLoader("spell_deepholm_kill_all_constructs") { }


    class spell_deepholm_kill_all_constructs_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_deepholm_kill_all_constructs_SpellScript)

            void HandleDummy()
        {
            if (!GetCaster())
                return;

            if (Player* player = GetCaster()->ToPlayer())
            {
                if (player->GetQuestStatus(26762) == QUEST_STATUS_INCOMPLETE)
                    player->KilledMonsterCredit(43984);
            }
        }

        void Register()
        {
            AfterCast += SpellCastFn(spell_deepholm_kill_all_constructs_SpellScript::HandleDummy);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_deepholm_kill_all_constructs_SpellScript();
    }
};

void AddSC_dekkcore_generic_spell_scripts()
{
    new spell_class_mecagnomo_emergency();
    new spell_class_mecagnomo_emergency2();
    new spell_class_mecagnomo_emergency3();
    new spell_deepholm_kill_all_constructs();
}
