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

#include "Creature.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "Config.h"
#include "Chat.h"
#include "GameObjectAI.h"
#include "ScriptedGossip.h"
#include "ScriptedCreature.h"
#include "MiscPackets.h"
#include "NPCPackets.h"
#include "GarrisonPackets.h"

enum spellBastion
{
    SPELL_ANIMA_CANNISTER = 323931,
    SPELL_BATHE           = 308755,
};

enum BastionQuest
{
    QUEST_PARDON_OUR_DUST             = 57102,
    QUEST_A_FATE_MOST_NOBLE           = 57584,
    QUEST_A_SOULBIND_IN_NEED          = 57677,
    QUEST_AMONG_THE_KYRIAN            = 60491,
    QUEST_A_PROPER_RECEPTION          = 60492,
    QUEST_ELYSIAN_HOLD                = 57895,
    QUEST_OF_GREAT_RENOWN             = 62789,
    QUEST_INTO_THE_RESERVOIR          = 62792,
    QUEST_SETTING_THE_GROUND_RULES    = 62882,
    QUEST_ON_THE_EDGE_OF_A_REVELATION = 57264,
};

// 176100 IonaSkyblade <Keeper of Renown>
class IonaSkyblade : public CreatureScript
{
public:
    IonaSkyblade() : CreatureScript("IonaSkyblade") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new IonaSkybladeAI(creature);
    }

    struct IonaSkybladeAI : public ScriptedAI
    {
        IonaSkybladeAI(Creature* creature) : ScriptedAI(creature) { }

        void CovenantRenownOpcode(Player* player)
        {
            player->KilledMonsterCredit(175046);
            WorldPackets::Misc::CovenantRenowOpenNpc send;
            send.ObjGUID = player->GetGUID();
            send.CatchupState = true;
            player->GetSession()->SendPacket(send.Write());
        }

        bool OnGossipHello(Player* player) override
        {
            if (me->IsQuestGiver())
                player->PrepareQuestMenu(me->GetGUID());

            if (player->HasQuest(QUEST_OF_GREAT_RENOWN))
            {
                player->ForceCompleteQuest(QUEST_OF_GREAT_RENOWN);
            }

            AddGossipItemFor(player, GossipOptionNpc::Binder, "Show me Covenant renown", GOSSIP_SENDER_MAIN, 0);
            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
            return true;
        }

        bool OnGossipSelect(Player* player, uint32 sender, uint32 action) override
        {
            switch (action)
            {
            case 0:
                CovenantRenownOpcode(player);
                CloseGossipMenuFor(player);
                break;
            }
            return true;
        }
    };

};

// 328302
struct go_Anima_Conductor : public GameObjectAI
{
    go_Anima_Conductor(GameObject* go) : GameObjectAI(go) { }

    bool OnGossipHello(Player* player) override
    {
        if (player->GetQuestStatus(57903) == QUEST_STATUS_INCOMPLETE)// Choosing Your Purpose
            player->ForceCompleteQuest(57903);

        WorldPackets::Misc::OpenNpcAnimaUI send;
        send.ObjectGUID = player->GetGUID();
        send.UiMapID = 1813;
        send.GarrTalentTreeID = 345;
        player->GetSession()->SendPacket(send.Write());

        return true;
    }
};

struct go_anima_canister_349508 : public GameObjectAI
{
    go_anima_canister_349508(GameObject* go) : GameObjectAI(go) { }

    bool OnReportUse(Player* player)
    {

        me->CastSpell(player, SPELL_ANIMA_CANNISTER, true);     
        player->CastSpell(player, SPELL_ANIMA_CANNISTER, true);

        return true;
    }

};

struct npc_depleted_goliath_156398 : public ScriptedAI
{
    npc_depleted_goliath_156398(Creature* creature) : ScriptedAI(creature) { }


    void OnSpellClick(Unit* clicker, bool spellClickHandled) override
    {

        if (Player* player = clicker->ToPlayer())
            player->ForceCompleteQuest(QUEST_PARDON_OUR_DUST);
    }
};

struct npc_near_dead_goliath_166163 : public ScriptedAI
{
    npc_near_dead_goliath_166163(Creature* creature) : ScriptedAI(creature) { }


    void OnSpellClick(Unit* clicker, bool spellClickHandled) override
    {

        if (Player* player = clicker->ToPlayer())
             player->ForceCompleteQuest(QUEST_PARDON_OUR_DUST);
    }
};

struct npc_centurion_colossus_166164 : public ScriptedAI
{
    npc_centurion_colossus_166164(Creature* creature) : ScriptedAI(creature) { }


    void OnSpellClick(Unit* clicker, bool spellClickHandled) override
    {

        if (Player* player = clicker->ToPlayer())
            player->ForceCompleteQuest(QUEST_PARDON_OUR_DUST);
    }
};

class npc_greeter_mnemis_158281 : public CreatureScript
{
public:
    npc_greeter_mnemis_158281() : CreatureScript("npc_greeter_mnemis_158281") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_greeter_mnemis_158281AI(creature);
    }

    struct npc_greeter_mnemis_158281AI : public ScriptedAI
    {
        npc_greeter_mnemis_158281AI(Creature* creature) : ScriptedAI(creature) { }

        bool OnGossipHello(Player* player) override
        {
            if (me->IsQuestGiver())
                player->PrepareQuestMenu(me->GetGUID());
            if (player->HasQuest(QUEST_A_FATE_MOST_NOBLE))
            {
                AddGossipItemFor(player, GossipOptionNpc::None, "What Can u Tell me about Bastion.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 0);
            }
            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());

            return true;
        }

        bool OnGossipSelect(Player* player, uint32 sender, uint32 action) override
        {
            if (action == GOSSIP_ACTION_INFO_DEF + 0)//Bastion
            {
                player->KilledMonsterCredit(158281);
                player->CastSpell(player, SPELL_BATHE, true);
            }

            return true;
        }
    };
};

struct go_pure_thought_vesper_335698 : public GameObjectAI
{
    go_pure_thought_vesper_335698(GameObject* go) : GameObjectAI(go) { }

    bool OnReportUse(Player* player)
    {
        player->KilledMonsterCredit(158332);

        return true;
    }
};

struct go_compendium_of_arrival_335697 : public GameObjectAI
{
    go_compendium_of_arrival_335697(GameObject* go) : GameObjectAI(go) { }

    bool OnReportUse(Player* player)
    {
        player->KilledMonsterCredit(158329);

        return true;
    }
};

struct go_bench_349887 : public GameObjectAI
{
    go_bench_349887(GameObject* go) : GameObjectAI(go) { }

    bool OnReportUse(Player* player)
    {
        player->KilledMonsterCredit(158599);

        return true;
    }
};

struct npc_pelagos_166323 : public ScriptedAI
{
    npc_pelagos_166323(Creature* creature) : ScriptedAI(creature) { }


    bool OnGossipHello(Player* player) override
    {
        if (player->HasQuest(QUEST_A_SOULBIND_IN_NEED))
        {
            player->KilledMonsterCredit(166323);
            player->KilledMonsterCredit(158662);
        }
        return true;
    }
};


class npc_polemarch_adrestes_168742 : public CreatureScript
{
public:
    npc_polemarch_adrestes_168742() : CreatureScript("npc_polemarch_adrestes_168742") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_polemarch_adrestes_168742AI(creature);
    }

    struct npc_polemarch_adrestes_168742AI : public ScriptedAI
    {
        npc_polemarch_adrestes_168742AI(Creature* creature) : ScriptedAI(creature) { }

        bool OnGossipHello(Player* player) override
        {
            if (me->IsQuestGiver())
                player->PrepareQuestMenu(me->GetGUID());

            if (player->HasQuest(QUEST_AMONG_THE_KYRIAN))
            {
                player->ForceCompleteQuest(QUEST_AMONG_THE_KYRIAN);
            }
            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());

            if (player->GetQuestStatus(QUEST_A_PROPER_RECEPTION) == QUEST_STATUS_INCOMPLETE)
            {
                player->TeleportTo(2222, -2162.9697f, -5298.892f, 6540.847f, 5.482f);
                player->ForceCompleteQuest(QUEST_A_PROPER_RECEPTION);
            }

            if (player->GetQuestStatus(QUEST_A_PROPER_RECEPTION) == QUEST_STATUS_REWARDED)
            {
                me->DespawnOrUnsummon();
            }

            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());

            return true;
        }
    };
};

class npc_polemarch_adrestes_168906 : public CreatureScript
{
public:
    npc_polemarch_adrestes_168906() : CreatureScript("npc_polemarch_adrestes_168906") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_polemarch_adrestes_168906AI(creature);
    }

    struct npc_polemarch_adrestes_168906AI : public ScriptedAI
    {
        npc_polemarch_adrestes_168906AI(Creature* creature) : ScriptedAI(creature) { }

        bool OnGossipHello(Player* player) override
        {
            if (me->IsQuestGiver())
                player->PrepareQuestMenu(me->GetGUID());

            if (player->HasQuest(QUEST_ELYSIAN_HOLD))
            {
                player->TeleportTo(2222, -1599.594f, -5852.212f, 6858.558f, 5.443f);
                player->ForceCompleteQuest(QUEST_ELYSIAN_HOLD);
            }
            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());

            return true;
        }
    };
};

class npc_haephus_167745 : public CreatureScript
{
public:
    npc_haephus_167745() : CreatureScript("npc_haephus_167745") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_haephus_167745AI(creature);
    }

    struct npc_haephus_167745AI : public ScriptedAI
    {
        npc_haephus_167745AI(Creature* creature) : ScriptedAI(creature) { }

        void TestOp(Player* player)
        {
            WorldPackets::Garrison::GarrisonOpenTalentNpc send;
            send.NpcGUID = player->GetGUID();
            send.GarrTalentTreeID = 327;
            send.FriendshipFactionID = 0;
            player->GetSession()->SendPacket(send.Write());
        }

        bool OnGossipHello(Player* player) override
        {
            if (me->IsQuestGiver())
                player->PrepareQuestMenu(me->GetGUID());

            if (player->HasQuest(QUEST_INTO_THE_RESERVOIR))
            {
                player->ForceCompleteQuest(QUEST_INTO_THE_RESERVOIR);
            }

            AddGossipItemFor(player, GossipOptionNpc::Binder, "Show me the Sanctum", GOSSIP_SENDER_MAIN, 0);
            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());

            return true;
        }

        bool OnGossipSelect(Player* player, uint32 sender, uint32 action) override
        {
            switch (action)
            {
            case 0:
                TestOp(player);
                CloseGossipMenuFor(player);
                break;
            }
            return true;
        }
    };
};

struct npc_vulnerable_aspirant_168853 : public ScriptedAI
{
    npc_vulnerable_aspirant_168853(Creature* creature) : ScriptedAI(creature) { }


    bool OnGossipHello(Player* player) override
    {
        CloseGossipMenuFor(player);
        if (player->HasQuest(QUEST_ON_THE_EDGE_OF_A_REVELATION))
        {
            player->KilledMonsterCredit(157242);
        }
        return true;
    }
};

//154527
class Command_table_bastion : public CreatureScript
{
public:
    Command_table_bastion() : CreatureScript("Command_table_bastion") { }

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new Command_table_bastionAI(creature);
    }

    struct Command_table_bastionAI : public ScriptedAI
    {
        Command_table_bastionAI(Creature* creature) : ScriptedAI(creature) { }

        void CommandtableOpcode(Player* player)
        {
            WorldPackets::Garrison::GarrisonOpenMissionNpcRequest;
            ObjectGuid NpcGUID;
            int32 GarrFollowerTypeID = 123;

            if (auto garrison = player->GetGarrison(GARRISON_TYPE_COVENANT))
                garrison->SendMissionListUpdate(true);
        }

        bool OnGossipHello(Player* player) override
        {
            if (me->IsQuestGiver())
                player->PrepareQuestMenu(me->GetGUID());

            AddGossipItemFor(player, GossipOptionNpc::Binder, "Show me command table", GOSSIP_SENDER_MAIN, 0);
            SendGossipMenuFor(player, player->GetGossipTextId(me), me->GetGUID());
            return true;
        }

        bool OnGossipSelect(Player* player, uint32 sender, uint32 action) override
        {
            switch (action)
            {
            case 0:
                CommandtableOpcode(player);
                me->SetNpcFlag2(NPCFlags2(UNIT_NPC_FLAG_2_GARRISON_MISSION_NPC || UNIT_NPC_FLAG_2_SHIPMENT_CRAFTER || UNIT_NPC_FLAG_2_GARRISON_ARCHITECT));
                break;
            }
            return true;
        }
    };
};

// Forge of bonds 327598
struct go_forge_of_bounds : public GameObjectAI
{
    go_forge_of_bounds(GameObject* go) : GameObjectAI(go) { }

    bool OnGossipHello(Player* player) override
    {
        WorldPackets::Item::OpenItemForge send;
        send.UNK2 = 3;
        send.UNK5 = false;
        send.Flags = 71210495;
        send.Status = 3951035386;
        send.UNK = true;
        send.Created = true;
        send.UNK1 = 3373646143;
        send.VariableID = 11329;
        send.UNK3 = false;
        send.UNK4 = false;
        send.UNK6 = true;
        send.UNK7 = true;
        send.UNK9 = 0;
        send.UNK8 = true;
        send.UNK10 = 0;
        player->GetSession()->SendPacket(send.Write());

        return true;
    }
};

void AddSC_zone_bastion()
{
    new IonaSkyblade();
    RegisterGameObjectAI(go_Anima_Conductor);
    RegisterGameObjectAI(go_anima_canister_349508);
    RegisterCreatureAI(npc_depleted_goliath_156398);
    RegisterCreatureAI(npc_near_dead_goliath_166163);
    RegisterCreatureAI(npc_centurion_colossus_166164);
    new npc_greeter_mnemis_158281();
    RegisterGameObjectAI(go_pure_thought_vesper_335698);
    RegisterGameObjectAI(go_compendium_of_arrival_335697);
    RegisterGameObjectAI(go_bench_349887);
    RegisterCreatureAI(npc_pelagos_166323);
    new npc_polemarch_adrestes_168742();
    new npc_polemarch_adrestes_168906();
    new npc_haephus_167745();
    RegisterCreatureAI(npc_vulnerable_aspirant_168853);
    new Command_table_bastion();
    RegisterGameObjectAI(go_forge_of_bounds);
}
