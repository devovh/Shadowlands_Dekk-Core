#include "ScriptMgr.h"
#include "Creature.h"
#include "CreatureAI.h"
#include "InstanceScript.h"
#include "SpellAuras.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "SpellInfo.h"
#include "Spell.h"
#include "AreaTrigger.h"
#include "AreaTriggerAI.h"
#include "nyalotha.h"

enum Texts
{
	SAY_MADNESS_BOMB = 6,
	SAY_GROWTH_TENTACLE,
	SAY_ADAPTIVE_MEMBRANE,
	SAY_STAGE_TWO,
	SAY_ETERNAL_DARKNESS,
	SAY_OCCUPITAL_BLAST,
	SAY_STAGE_THREE,
	SAY_INSANITY_BOMB,
	SAY_KILL,
	SAY_WIPE
};

enum Spells
{
	SPELL_SANITY_BAR = 308997,
	SPELL_SHROUD_OF_RESOLVE = 312158,
	SPELL_SHROUD_OF_RESOLVE_EXTRA_BUTTON = 312157,
	SPELL_GRACE_OF_THE_BLACK_PRINCE = 313330,
	SPELL_GIFT_OF_NZOTH = 313334,
	SPELL_SERVANT_OF_NZOTH = 307832,
	SPELL_MANDIBLE_SLAM = 315947,
	SPELL_BLACK_SCAR = 315954,
	SPELL_MENTAL_DECAY_CAST = 313362,
	SPELL_MENTAL_DECAY = 313364,
	SPELL_MADNESS_BOMB_CAST = 306971,
	SPELL_MADNESS_BOMB_MOD_SIZE = 306973,
	SPELL_MADNESS_BOMB_DAMAGE = 306978,
	SPELL_ADAPTIVE_MEMBRANE_CAST = 306988,
	SPELL_ADAPTIVE_MEMBRANE_ABSORB = 316847,
	SPELL_FRAGMENT_OF_SANITY_GIVE_POWER = 313322,
	SPELL_FRAGMENT_OF_SANITY_MISSILE = 317893,
	SPELL_SANITY_FRAGMENT_CREATE_AT = 304551,
	SPELL_GROWTH_COVERED_TENTACLE = 307131,
	SPELL_HORRIFIC_HEMORRHAGE_DAMAGE = 307306,
	SPELL_NIGHTMARE_ANTIBODY = 307044,
	SPELL_ADAPTIVE_ANTIGEN = 307042,
	//Phase 2
	SPELL_SYNTHESIS = 307071,
	SPELL_SYNTHESIS_IMMUNITY = 307079,
	SPELL_SYNTHESIS_HEAL = 307080,
	SPELL_MYCELIAL_GROWTH = 307061,
	SPELL_REGENERATIVE_MASS = 307058,
	SPELL_ETERNAL_DARKNESS = 307809,
	SPELL_OCCIPITAL_BLAST = 307092,
	SPELL_OCCIPITAL_BLAST_DAMAGE = 315878,
	SPELL_INSANITY_BOMB_MOD_SIZE = 306984,
	SPELL_INSANITY_BOMB_MISSILE = 306985,
	SPELL_THRASHING_TENTACLE_SHADOW = 315820,
	SPELL_THRASHINF_TENTACLE_DAMAGE = 315862,
	//Heroic
	SPELL_BREED_MADNESS = 307008,
	SPELL_BREED_MADNESS_SINGLE_DAMAGE = 307012,
	SPELL_MADDENING_ERUPTION = 316307,
	SPELL_DEEPENING_MADNESS = 312333,
	SPELL_INFINITE_DARKNESS_CAST = 313039,
	SPELL_INFINITE_DARKNESS_DAMAGE = 313040,
	//Mythic
	SPELL_REACTIVE_MASS = 317164,
	SPELL_REGENERATIVE_EXPULSION = 317165,
	//Misc
	SPELL_BERSERK = 64238,
	SPELL_CYST_GENESIS = 313118,
	SPELL_INFINITE_VOID_PERIODIC_DAMAGE = 317627,
	SPELL_MYCELIAL_INFUSION_MOD_DAMAGE = 316701,
};

enum Events
{
	EVENT_CARAPACE_GAIN_ENERGY = 1,
	EVENT_MANDIBLE_SLAM,
	EVENT_MENTAL_DECAY,
	EVENT_MADNESS_BOMB,
	EVENT_ADAPTIVE_MEMBRANE,
	EVENT_GROWTH_COVERED_TENTACLE,
	EVENT_ETERNAL_DARKNESS,
	EVENT_SPAWN_NIGHTMARE_ANTIGEN,
	//Phase 3
	EVENT_OCCIPITAL_BLAST,
	EVENT_INSANITY_BOMB,
	EVENT_THRASHING_TENTACLE,
	//Heroic
	EVENT_GAZE_OF_MADNESS,
	EVENT_INFINITE_DARKNESS,
	EVENT_BREED_MADNESS,
	//Mythic
	EVENT_REGENERATIVE_EXPULSION,
	EVENT_BERSERK
};

enum Misc
{	
	ACTION_THRASHING_GROWTH = 1,
	ACTION_SYNTHESIS,
	ACTION_REACTIVE_MASS
};

uint32 shroudOfResolve = 169223;
ObjectGuid wrathion_carapace_guid;
const Position gaze_of_madness_exit_pos = { -11536.851f, 9343.937f, 126.788f, 4.0266f };

//157439
struct boss_carapace : public BossAI
{
	boss_carapace(Creature* creature) : BossAI(creature, DATA_CARAPACE) { }

private:
	uint8 phase;
	Vehicle* vehicle;

	void Reset() override
	{
		BossAI::Reset();
		vehicle = me->GetVehicleKit();
		me->SetPowerType(POWER_ENERGY);
		me->SetMaxPower(POWER_ENERGY, 100);
		me->SetPower(POWER_ENERGY, 0);
		me->AddAura(AURA_OVERRIDE_POWER_COLOR_PURPLE, me);		
		if (Creature* nzoth = me->FindNearestCreature(NPC_NZOTH_CONTROLLER, 25.0f, true))
			nzoth->EnterVehicle(me);
	}

	void JustEngagedWith(Unit* who) override
	{
		_JustEngagedWith(who);
		this->phase = 1;
		events.ScheduleEvent(EVENT_CARAPACE_GAIN_ENERGY, 100ms);
		events.ScheduleEvent(EVENT_MANDIBLE_SLAM, 3s);
		events.ScheduleEvent(EVENT_MENTAL_DECAY, 9s);
		events.ScheduleEvent(EVENT_MADNESS_BOMB, 12s);
		events.ScheduleEvent(EVENT_SPAWN_NIGHTMARE_ANTIGEN, 16s);
		events.ScheduleEvent(EVENT_ADAPTIVE_MEMBRANE, 18s);
		events.ScheduleEvent(EVENT_GROWTH_COVERED_TENTACLE, 30s);
		if (IsHeroic() || IsMythic())
			events.ScheduleEvent(EVENT_GAZE_OF_MADNESS, 40s);
		events.ScheduleEvent(EVENT_BERSERK, 13min);
		std::list<Player*> playerList;
		me->GetPlayerListInGrid(playerList, 180.0f);
		for (auto& players : playerList)
		{
			//if (!players->GetItemByEntry(shroudOfResolve, ITEM_SEARCH_DEFAULT))
				me->CastSpell(players, SPELL_SERVANT_OF_NZOTH, true);
		}
		instance->DoAddAuraOnPlayers(SPELL_SANITY_BAR);
		instance->DoAddAuraOnPlayers(SPELL_SHROUD_OF_RESOLVE_EXTRA_BUTTON);
		me->GetPlayerListInGrid(playerList, 180.0f);
		for (auto& players : playerList)
		{
			players->SetPower(POWER_ALTERNATE_POWER, 100);
		}
		if (Creature* wrathion = me->FindNearestCreature(NPC_WRATHION_CARAPACE, 180.0f, true))
			wrathion->HandleEmoteCommand(EMOTE_STATE_KNEEL);
	}

	void SpellHitTarget(WorldObject* target, const SpellInfo* spellInfo) override
	{
		switch (spellInfo->Id)
		{
		case SPELL_MANDIBLE_SLAM:
            if (target->IsUnit())
                me->AddAura(SPELL_BLACK_SCAR, target->ToUnit());
               me->CastSpell(target, SPELL_BLACK_SCAR, true);
			break;
		case SPELL_MADNESS_BOMB_DAMAGE:
			me->ModifyPower(POWER_ALTERNATE_POWER, -15);
			break;
		case SPELL_OCCIPITAL_BLAST_DAMAGE:
			me->ModifyPower(POWER_ALTERNATE_POWER, -40);
			break;
		case SPELL_INSANITY_BOMB_MISSILE:
			me->ModifyPower(POWER_ALTERNATE_POWER, -15);
			break;
		}
	}

    void OnSpellCast(SpellInfo const* spell) override
    {

		switch (spell->Id)
		{
		case SPELL_MENTAL_DECAY_CAST:
			if (IsMythic())
			{
				UnitList tarlist;
                if (Unit* target = SelectTarget(SelectTargetMethod::Random, 0, 100.0F, true))
				for (Unit* targets : tarlist)
				{
					me->CastSpell(targets, SPELL_MENTAL_DECAY, true);
					targets->ModifyPower(POWER_ALTERNATE_POWER, -10);
				}
			}
			else
			{
				UnitList tarlist;
                if (Unit* target = SelectTarget(SelectTargetMethod::Random, 0, 100.0F, true))
				for (Unit* targets : tarlist)
				{
					me->CastSpell(targets, SPELL_MENTAL_DECAY, true);
					targets->ModifyPower(POWER_ALTERNATE_POWER, -10);
				}
			}
			break;
		case SPELL_MADNESS_BOMB_CAST:
			if (IsMythic())
			{
				UnitList tarlist;
                if (Unit* target = SelectTarget(SelectTargetMethod::Random, 0, 100.0F, true))
				for (Unit* targets : tarlist)
				{
					me->CastSpell(targets, SPELL_MADNESS_BOMB_MOD_SIZE, true);
				}
			}
			else
			{
				UnitList tarlist;
                if (Unit* target = SelectTarget(SelectTargetMethod::Random, 0, 100.0F, true))
				for (Unit* targets : tarlist)
				{
					me->CastSpell(targets, SPELL_MADNESS_BOMB_MOD_SIZE, true);
				}
			}
			break;

		case SPELL_ADAPTIVE_MEMBRANE_CAST:
		{
			std::list<Creature*> nightmareAntigenList;
			me->GetCreatureListWithEntryInGrid(nightmareAntigenList, NPC_AMALGAMATION_OF_FLESH, 150.0f);
			me->GetCreatureListWithEntryInGrid(nightmareAntigenList, NPC_NIGHTMARE_ANTIGEN, 150.0f);
		//	for (auto& antigens : nightmareAntigenList)
			//{
			//	me->CastCustomSpell(SPELL_ADAPTIVE_MEMBRANE_ABSORB, SPELLVALUE_BASE_POINT0, antigens->GetMaxHealth() * 0.5, antigens);
			//}
			break;
		}
		case SPELL_INFINITE_DARKNESS_CAST:
			me->CastSpell(nullptr, SPELL_INFINITE_DARKNESS_DAMAGE, true);
			break;
		}
	}

void DamageTaken(Unit* attacker, uint32& damage, DamageEffectType /*damageType*/, SpellInfo const* /*spellInfo = nullptr*/) override
	{
		if (this->phase == 1 && me->HealthBelowPct(50))
		{
			this->phase = 2;
			if (Creature* controller = me->FindNearestCreature(NPC_NZOTH_CONTROLLER, 25.0f, true))
				controller->AI()->Talk(SAY_STAGE_TWO);
			events.Reset();			
			me->SetPower(POWER_ENERGY, 0);
			me->SetReactState(REACT_PASSIVE);
			me->GetMotionMaster()->MovePoint(1, -11332.596f, 9317.054f, 98.155f, true);
			if (Creature* wrathion = instance->GetCreature(NPC_WRATHION_CARAPACE))
			{
				wrathion->RemoveAllAuras();
				wrathion->GetMotionMaster()->MovePoint(0, -11472.110f, 9315.943f, 110.878f);
			}
			std::list<Creature*> cystList;
			me->GetCreatureListWithEntryInGrid(cystList, NPC_SYNTHESIS_GROWTH, 300.0f);
			for (auto& cysts : cystList)
			{
				cysts->AI()->DoAction(ACTION_SYNTHESIS);
			}
			//Because of current bugs in MotionMaster
			AddTimedDelayedOperation(30000, [this]()
			{
				me->SetFacingTo(3.143f, true);
				me->AddUnitState(UNIT_STATE_ROOT);
				events.ScheduleEvent(EVENT_CARAPACE_GAIN_ENERGY, 100ms);
				events.ScheduleEvent(EVENT_MENTAL_DECAY, 9s);
				events.ScheduleEvent(EVENT_MADNESS_BOMB, 12s);				
				events.ScheduleEvent(EVENT_ADAPTIVE_MEMBRANE, 18s);
				events.ScheduleEvent(EVENT_ETERNAL_DARKNESS, 20s);
			});
		}
		if (this->phase == 2 && me->HealthBelowPct(40))
		{			
			std::list<Creature*> synthesisList;
			synthesisList.clear();
			me->GetCreatureListWithEntryInGrid(synthesisList, NPC_SYNTHESIS_GROWTH, 300.0f);
			if (synthesisList.empty())
			{
				this->phase = 3;
				if (Creature* controller = me->FindNearestCreature(NPC_NZOTH_CONTROLLER, 25.0f, true))
					controller->AI()->Talk(SAY_STAGE_THREE);
				events.Reset();				
				me->SetPower(POWER_ENERGY, 0);
				me->SetReactState(REACT_PASSIVE);
				me->GetMotionMaster()->MovePoint(2, -11210.179f, 9315.246f, 126.866f, true);
				AddTimedDelayedOperation(10000, [this]()
				{
					events.ScheduleEvent(EVENT_CARAPACE_GAIN_ENERGY, 100ms);
					events.ScheduleEvent(EVENT_MANDIBLE_SLAM, 3s);
					events.ScheduleEvent(EVENT_MENTAL_DECAY, 9s);
					events.ScheduleEvent(EVENT_INSANITY_BOMB, 12s);
					events.ScheduleEvent(EVENT_SPAWN_NIGHTMARE_ANTIGEN, 16s);
					events.ScheduleEvent(EVENT_ADAPTIVE_MEMBRANE, 18s);
					events.ScheduleEvent(EVENT_OCCIPITAL_BLAST, 22s);
				});
			}
		}
	}

	void ExecuteEvent(uint32 eventId) override
	{
		if (me->GetPower(POWER_ENERGY) == 100)
		{
			me->SetPower(POWER_ENERGY, 0);
			events.ScheduleEvent(EVENT_MANDIBLE_SLAM, 100ms);
		}
		switch (eventId)
		{
		case EVENT_SPAWN_NIGHTMARE_ANTIGEN:
		{
			for (uint8 i = 0; i < 15; i++)
			{
				me->SummonCreature(NPC_NIGHTMARE_ANTIGEN, me->GetRandomNearPosition(30.0f), TEMPSUMMON_MANUAL_DESPAWN);
			}
			break;
		}
		case EVENT_MANDIBLE_SLAM:
		{
            if (Unit* target = SelectTarget(SelectTargetMethod::MaxDistance, 0, 100.0f, false))
				me->CastSpell(target, SPELL_MANDIBLE_SLAM, false);
			break;
		}
		case EVENT_CARAPACE_GAIN_ENERGY:
		{
			me->ModifyPower(POWER_ENERGY, +6);
			events.Repeat(1s);
			break;
		}
		case EVENT_MADNESS_BOMB:
		{
			me->CastSpell(nullptr, SPELL_MADNESS_BOMB_CAST, false);
			if (Creature* controller = me->FindNearestCreature(NPC_NZOTH_CONTROLLER, 25.0f, true))
				controller->AI()->Talk(SAY_MADNESS_BOMB);
			events.Repeat(25s);
			break;
		}
		case EVENT_MENTAL_DECAY:
		{
			me->CastSpell(nullptr, SPELL_MENTAL_DECAY_CAST, false);
			events.Repeat(30s);
			break;
		}
		case EVENT_ADAPTIVE_MEMBRANE:	
		{
			me->CastSpell(nullptr, SPELL_ADAPTIVE_MEMBRANE_CAST, false);
			if (Creature* controller = me->FindNearestCreature(NPC_NZOTH_CONTROLLER, 25.0f, true))
				controller->AI()->Talk(SAY_ADAPTIVE_MEMBRANE);
			events.Repeat(35s);
			break;
		}
		case EVENT_GROWTH_COVERED_TENTACLE:
		{
			if (Creature* controller = me->FindNearestCreature(NPC_NZOTH_CONTROLLER, 25.0f, true))
				controller->AI()->Talk(SAY_GROWTH_TENTACLE);
			ChooseThrasingPosition();
			events.Repeat(45s);
			break;
		}
		case EVENT_GAZE_OF_MADNESS:
		{
			me->SummonCreature(NPC_GAZE_OF_MADNESS, gaze_of_madness_exit_pos, TEMPSUMMON_MANUAL_DESPAWN);
			events.Repeat(22s);
			break;
		}
		case EVENT_ETERNAL_DARKNESS:
		{
			if (Creature* controller = me->FindNearestCreature(NPC_NZOTH_CONTROLLER, 25.0f, true))
				controller->AI()->Talk(SAY_ETERNAL_DARKNESS);
			me->CastSpell(nullptr, SPELL_ETERNAL_DARKNESS, false);
			events.Repeat(55s);
			break;
		}
		case EVENT_OCCIPITAL_BLAST:
		{
			if (Creature* controller = me->FindNearestCreature(NPC_NZOTH_CONTROLLER, 25.0f, true))
				controller->AI()->Talk(SAY_OCCUPITAL_BLAST);
            if (Unit* target = SelectTarget(SelectTargetMethod::Random, 0, 100.0F, true))
			{
				me->SetFacingToObject(target, true);
				me->CastSpell(target, SPELL_OCCIPITAL_BLAST, false);
				me->CastSpell(target, SPELL_OCCIPITAL_BLAST_DAMAGE, true);
			}
			events.Repeat(60s);
			break;
		}
		case EVENT_INSANITY_BOMB:
		{
			if (Creature* controller = me->FindNearestCreature(NPC_NZOTH_CONTROLLER, 25.0f, true))
				controller->AI()->Talk(SAY_INSANITY_BOMB);
			std::list<Player*> playerList;
			me->GetPlayerListInGrid(playerList, 180.0f);
			for (auto& players : playerList)
			{				
				me->CastSpell(players, SPELL_INSANITY_BOMB_MOD_SIZE, true);
			}
			events.Repeat(25s);
			break;
		}

		case EVENT_INFINITE_DARKNESS:
		{
            if (Unit* target = SelectTarget(SelectTargetMethod::Random, 0, 100.0F, true))
			{
				me->CastSpell(nullptr, SPELL_INFINITE_DARKNESS_CAST);
			}			
			break;
		}
		case EVENT_BERSERK:
		{
			me->AddAura(SPELL_BERSERK, me);
			break;
		}
		}
	}

	void ChooseThrasingPosition()
	{
		uint8 thrashingPos = urand(0, 3);
		switch (thrashingPos)
		{
		case 0:
			me->SummonCreature(NPC_THRASHING_TENTACLE, -11603.432f, 9261.467f, 123.591f, 1.540f, TEMPSUMMON_MANUAL_DESPAWN);
			break;
		case 1:
			me->SummonCreature(NPC_THRASHING_TENTACLE, -11565.716f, 9269.769f, 124.516f, 1.869f, TEMPSUMMON_MANUAL_DESPAWN);
			break;

		case 2:
			me->SummonCreature(NPC_THRASHING_TENTACLE, -11617.975f, 9359.151f, 125.251f, 5.165f, TEMPSUMMON_MANUAL_DESPAWN);
			break;

		case 3:
			me->SummonCreature(NPC_THRASHING_TENTACLE, -11568.685f, 9365.344f, 124.740f, 4.462f, TEMPSUMMON_MANUAL_DESPAWN);
			break;
		}
	}

	void CleanupEncounter(InstanceScript* instance, Creature* me)
	{
		_JustReachedHome();
		me->DespawnCreaturesInArea(NPC_NIGHTMARE_ANTIGEN, 300.0f);
		me->DespawnCreaturesInArea(NPC_THRASHING_TENTACLE, 300.0f);
		me->DespawnCreaturesInArea(NPC_GAZE_OF_MADNESS, 300.0f);
		me->RemoveAllAreaTriggers();
		instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_SANITY_BAR);
		instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_SHROUD_OF_RESOLVE_EXTRA_BUTTON);
		instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_SERVANT_OF_NZOTH);
	}

	void EnterEvadeMode(EvadeReason /*why*/) override
	{
		if (Creature* controller = me->FindNearestCreature(NPC_NZOTH_CONTROLLER, 25.0f, true))
			controller->AI()->Talk(SAY_WIPE);
		CleanupEncounter(instance, me);
		_DespawnAtEvade();
	}

	void JustDied(Unit* /*killer*/) override
	{
		_JustDied();
		CleanupEncounter(instance, me);
	//	instance->DoModifyPlayerCurrencies(CURRENCY_ECHOES_OF_NYALOTHA, 30);
	}
};

//306973 
class aura_madness_bomb : public AuraScript
{
	PrepareAuraScript(aura_madness_bomb);

	void OnRemove(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
	{
		Unit* target = GetTarget();
		Unit* caster = GetCaster();
		if (!caster || !target)
			return;

		if (GetTargetApplication()->GetRemoveMode() == AURA_REMOVE_BY_EXPIRE)	
			caster->CastSpell(target, SPELL_MADNESS_BOMB_DAMAGE, true);
	}

	void Register() override
	{		
		OnEffectRemove += AuraEffectRemoveFn(aura_madness_bomb::OnRemove, EFFECT_0, SPELL_AURA_MOD_SCALE, AURA_EFFECT_HANDLE_REAL);
	}
};

//306984
class aura_insanity_bomb : public AuraScript
{
	PrepareAuraScript(aura_insanity_bomb);

	void OnRemove(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
	{
		Unit* target = GetTarget();
		Unit* caster = GetCaster();
		if (!caster || !target)
			return;

		if (GetTargetApplication()->GetRemoveMode() == AURA_REMOVE_BY_EXPIRE)
		{
			caster->CastSpell(target, SPELL_INSANITY_BOMB_MISSILE, true);
			target->SummonCreature(NPC_NIGHTMARE_ANTIGEN, target->GetPosition(), TEMPSUMMON_MANUAL_DESPAWN);
		}
	}

	void Register() override
	{
		OnEffectRemove += AuraEffectRemoveFn(aura_insanity_bomb::OnRemove, EFFECT_0, SPELL_AURA_MOD_SCALE, AURA_EFFECT_HANDLE_REAL);
	}
};

//162159
struct npc_thrashing_tentacle : public ScriptedAI
{
	npc_thrashing_tentacle(Creature* c) : ScriptedAI(c)
	{
		SetCombatMovement(false);
		me->SetUnitFlag(UnitFlags(UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_UNINTERACTIBLE));
	}

	void IsSummonedBy(WorldObject* summoner) override
	{
		if (summoner->GetEntry() == NPC_FURY_OF_NZOTH)
		{
			AddTimedDelayedOperation(1000, [this]()
			{
				me->CastSpell(nullptr, SPELL_THRASHING_TENTACLE_SHADOW, false);
			});			
		}
	}
};

//157452
struct npc_nightmare_antigen : public ScriptedAI
{
	npc_nightmare_antigen(Creature* c) : ScriptedAI(c) { }

	void IsSummonedBy(WorldObject* summoner) override
	{
		if (me->GetMapId() == MAP_NYALOTHA)
			me->AI()->DoZoneInCombat(nullptr);
	}
};

//157475
struct npc_synthesis_growth : public ScriptedAI
{
	npc_synthesis_growth(Creature* c) : ScriptedAI(c)
	{
		SetCombatMovement(false);
		me->SetReactState(REACT_PASSIVE);
	}

	void DoAction(int32 action) override
	{
		switch (action)
		{
		case ACTION_SYNTHESIS:
			if (Creature* carapace = me->FindNearestCreature(NPC_FURY_OF_NZOTH, 150.0f, true))
				carapace->AddAura(SPELL_SYNTHESIS, carapace);
			break;
		}
	}
};

//157461
struct npc_mycelial_cyst : public ScriptedAI
{
	npc_mycelial_cyst(Creature* c) : ScriptedAI(c)
	{
		SetCombatMovement(false);
		me->SetReactState(REACT_PASSIVE);
	}

	void DoAction(int32 action) override
	{
		switch (action)
		{
		case ACTION_REACTIVE_MASS:
			me->CastSpell(nullptr, SPELL_REACTIVE_MASS, false);
			me->SetUnitFlag(UNIT_FLAG_UNINTERACTIBLE);
			AddTimedDelayedOperation(21000, [this]()
			{
				me->CastSpell(nullptr, SPELL_REGENERATIVE_EXPULSION, false);
			});
			break;
		}
	}
};

//161884
struct npc_nzoth_controller : public ScriptedAI
{
	npc_nzoth_controller(Creature* c) : ScriptedAI(c)
	{
		SetCombatMovement(false);
		me->SetReactState(REACT_PASSIVE);
	}

	void Reset() override
	{
		if (Creature* carapace = me->FindNearestCreature(NPC_FURY_OF_NZOTH, 150.0f, true))
			me->GetMotionMaster()->MoveFollow(carapace, PET_FOLLOW_DIST, PET_FOLLOW_ANGLE);
	}
};

//307071
class aura_synthesis : public AuraScript
{
	PrepareAuraScript(aura_synthesis);

	void OnTick(AuraEffect const* /*aurEff*/)
	{
		if (Unit* target = GetTarget())
			if (Unit* caster = GetCaster())
				caster->CastSpell(target, SPELL_SYNTHESIS_HEAL, true);
	}

	void Register() override
	{
		OnEffectPeriodic += AuraEffectPeriodicFn(aura_synthesis::OnTick, EFFECT_1, SPELL_AURA_PERIODIC_DUMMY);
	}
};

//157442
struct npc_gaze_of_madness : public ScriptedAI
{
	npc_gaze_of_madness(Creature* c) : ScriptedAI(c)
	{
		SetCombatMovement(false);
	}

private:
	uint8 ticks;
    EventMap events;
    InstanceScript* instance;

	void Reset() override
	{
		ScriptedAI::Reset();
	}

	void JustEngagedWith(Unit* who) override
	{
		events.ScheduleEvent(EVENT_BREED_MADNESS, 3s);
	}

    void OnSpellCast(SpellInfo const* spell) override
    {

		switch (spell->Id)
		{
		case SPELL_BREED_MADNESS:
			me->CastSpell(nullptr, SPELL_MADDENING_ERUPTION, true);
			break;
		}
	}

    void ExecuteEvent(uint32 eventId)// override
	{
		switch (eventId)
		{
		case EVENT_BREED_MADNESS:
            if (Unit* target = SelectTarget(SelectTargetMethod::Random, 0, 100.0F, true))
         {
				this->ticks = 0;
				me->CastSpell(target, SPELL_BREED_MADNESS, false);
				me->GetScheduler().Schedule(100ms, [this, target](TaskContext context)
				{
					if (!target)
						return;
					me->CastSpell(target, SPELL_BREED_MADNESS_SINGLE_DAMAGE, true);
					ticks++;
					if (this->ticks != 9)
						context.Repeat(1s);
					if (this->ticks == 9)
						me->CastSpell(target, SPELL_MADDENING_ERUPTION, true);
				});
			}
			break;
		}
	}

	void IsSummonedBy(WorldObject* summoner) override
	{
		if (instance)
			instance->SendEncounterUnit(ENCOUNTER_FRAME_ENGAGE, me);
		if (summoner->ToUnit()->IsInCombat())
			me->SetInCombatWithZone();
	}

	void JustDied(Unit* /*killer*/) override
	{
		if (instance)
			instance->SendEncounterUnit(ENCOUNTER_FRAME_DISENGAGE, me);
	}
};

//160177
struct npc_wrathion_carapace : public ScriptedAI
{
	npc_wrathion_carapace(Creature* c) : ScriptedAI(c) { }

	void Reset() override
	{ 
		wrathion_carapace_guid = me->GetGUID();
	}

	void MoveInLineOfSight(Unit* unit) override
	{
		if (unit->IsPlayer() && me->GetDistance(unit) <= 5.5f && instance->GetBossState(DATA_CARAPACE) == IN_PROGRESS)
		{
			if (unit->GetPower(POWER_ALTERNATE_POWER) != 100)
				unit->SetPower(POWER_ALTERNATE_POWER, 100);

			if (!unit->HasAura(SPELL_GRACE_OF_THE_BLACK_PRINCE))
				unit->AddAura(SPELL_GRACE_OF_THE_BLACK_PRINCE, unit);
		}
	}
private:
    InstanceScript* instance;
};

void AddSC_carapace()
{
	RegisterCreatureAI(boss_carapace);
	RegisterSpellScript(aura_madness_bomb);
	RegisterSpellScript(aura_insanity_bomb);
	RegisterCreatureAI(npc_thrashing_tentacle);
	RegisterCreatureAI(npc_synthesis_growth);
	RegisterCreatureAI(npc_mycelial_cyst);
	RegisterCreatureAI(npc_nzoth_controller);
	RegisterCreatureAI(npc_nightmare_antigen);
	RegisterSpellScript(aura_synthesis);
	RegisterCreatureAI(npc_wrathion_carapace);
};
