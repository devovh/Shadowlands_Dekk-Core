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
#include "ScriptedGossip.h"
#include "LFGMgr.h"
#include "MiscPackets.h"

enum legendarycrafting
{
    GOSSIP_MENU_NPC_LEGENDARY_CRAFTING = 25682,
    GOSSIP_MENU_OPTION_ID_1 = 1,
    GOSSIP_MENU_OPTION_ID_2 = 2,
    GOSSIP_MENU_OPTION_ID_3 = 3,
};

class npc_legendary_crafting : public CreatureScript
{
public:
    npc_legendary_crafting() : CreatureScript("npc_legendary_crafting") { }

    struct npc_legendary_craftingAI : public ScriptedAI
    {
        npc_legendary_craftingAI(Creature* creature) : ScriptedAI(creature) { }

        bool OnGossipHello(Player* player) override
        {
            AddGossipItemFor(player, GOSSIP_MENU_NPC_LEGENDARY_CRAFTING, GOSSIP_MENU_OPTION_ID_3, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
            AddGossipItemFor(player, GOSSIP_MENU_NPC_LEGENDARY_CRAFTING, GOSSIP_MENU_OPTION_ID_2 + 2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
            SendGossipMenuFor(player, GOSSIP_MENU_NPC_LEGENDARY_CRAFTING, me->GetGUID());

            return true;
        }

        void LegendaryCraftingOpenNpcMenu(Player* player, bool update)
        {
            WorldPackets::Misc::LegendaryCraftingOpenNpc worldpark;
            worldpark.ObjGUID = me->GetGUID();
            worldpark.IsUpgrade = update;
            player->GetSession()->SendPacket(worldpark.Write());
        }

        bool OnGossipSelect(Player* player, uint32 /*menuId*/, uint32 gossipListId) override
        {
            uint32 const action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);
            ClearGossipMenuFor(player);

            switch (action)
            {
            case GOSSIP_ACTION_INFO_DEF + 3:
                LegendaryCraftingOpenNpcMenu(player, true);
                break;
            case GOSSIP_ACTION_INFO_DEF + 2:
                LegendaryCraftingOpenNpcMenu(player, false);
                break;
            }
            return true;
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_legendary_craftingAI(creature);
    }
};

enum ColdheartInterstitiaGossips
{
    GOSSIP_MENU_SELECT_COLDHEART_INTERSTITIA = 26658,
};

//175000, 175009, 175025,175026, 175027,175028, 175029
class npc_coldheart_interstitia_175026 : public CreatureScript
{
public:
    npc_coldheart_interstitia_175026() : CreatureScript("npc_coldheart_interstitia_175026") { }

    struct npc_coldheart_interstitia_175026AI : public ScriptedAI
    {
        npc_coldheart_interstitia_175026AI(Creature* creature) : ScriptedAI(creature) { }

        bool issend = false;
        void MoveInLineOfSight(Unit* who) override
        {
            if (!who->IsPlayer())
                return;
            if (me->GetDistance2d(who) < 5.0f)
            {
                if (Player* player = who->ToPlayer())
                {
                    if (issend)
                        return;
                    issend = true;
                    ClearGossipMenuFor(player);
                    AddGossipItemFor(player, GOSSIP_MENU_SELECT_COLDHEART_INTERSTITIA, GOSSIP_MENU_OPTION_ID_1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
                    AddGossipItemFor(player, GOSSIP_MENU_SELECT_COLDHEART_INTERSTITIA, GOSSIP_MENU_OPTION_ID_1 + 1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
                    AddGossipItemFor(player, GOSSIP_MENU_SELECT_COLDHEART_INTERSTITIA, GOSSIP_MENU_OPTION_ID_1 + 2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
                    AddGossipItemFor(player, GOSSIP_MENU_SELECT_COLDHEART_INTERSTITIA, GOSSIP_MENU_OPTION_ID_1 + 3, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4);
                    AddGossipItemFor(player, GOSSIP_MENU_SELECT_COLDHEART_INTERSTITIA, GOSSIP_MENU_OPTION_ID_1 + 4, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5);
                    AddGossipItemFor(player, GOSSIP_MENU_SELECT_COLDHEART_INTERSTITIA, GOSSIP_MENU_OPTION_ID_1 + 5, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 6);
                    AddGossipItemFor(player, GOSSIP_MENU_SELECT_COLDHEART_INTERSTITIA, GOSSIP_MENU_OPTION_ID_1 + 6, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7);
                    AddGossipItemFor(player, GOSSIP_MENU_SELECT_COLDHEART_INTERSTITIA, GOSSIP_MENU_OPTION_ID_1 + 7, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 8);
                    SendGossipMenuFor(player, GOSSIP_MENU_SELECT_COLDHEART_INTERSTITIA, me->GetGUID());

                }
            }
            else
                issend = false;
        }

        uint32 GetPostionOffset()
        {
            uint32 offset = 0;
            switch (me->GetEntry())
            {
            case 175000: offset = 0; break;
            case 175009: offset = 1; break;
            case 175025: offset = 2; break;
            case 175026: offset = 3; break;
            case 175027: offset = 4; break;
            case 175028: offset = 5; break;
            case 175029: offset = 6; break;
            default:
                break;
            }
            return offset;
        }

        void SendMenu(Player* player, uint32 spellId, int32 cost = 0, uint32 level = 1)
        {
            uint32 lfg = 0;
            uint32 scenario = 0;
            std::set<uint32> lfgId;
            if (player->HasCurrency(1828, cost))
            {
                player->CastSpell(player, spellId, true);
                player->ModifyCurrency(1828, -cost);
            }
            else
            {
                if (player->IsGameMaster())
                    player->CastSpell(player, spellId, true);
                else
                    return;
            }
            //Torghast: The Hall of Skodus
            if (GetPostionOffset() == 0)
            {
                switch (level)
                {
                case 1:lfg = 2100; scenario = 1848; break;
                case 2:lfg = 2128; scenario = 1863; break;
                case 3:lfg = 2129; scenario = 1865; break;
                case 4:lfg = 2130; scenario = 1866; break;
                case 5:lfg = 2131; scenario = 1867; break;
                case 6:lfg = 2132; scenario = 1868; break;
                case 7:lfg = 2133; scenario = 1869; break;
                case 8:lfg = 2134; scenario = 1870; break;
                default: break;
                }
            }
            //broken bone room
            if (GetPostionOffset() == 1)
            {
                switch (level)
                {
                case 1:lfg = 2101; scenario = 1849; break;
                case 2:lfg = 2135; scenario = 1871; break;
                case 3:lfg = 2136; scenario = 1872; break;
                case 4:lfg = 2137; scenario = 1873; break;
                case 5:lfg = 2138; scenario = 1874; break;
                case 6:lfg = 2139; scenario = 1875; break;
                case 7:lfg = 2140; scenario = 1876; break;
                case 8:lfg = 2141; scenario = 1877; break;
                default: break;
                }
            }
            //Soul Forge
            if (GetPostionOffset() == 2)
            {
                switch (level)
                {
                case 1:lfg = 2102; scenario = 1850; break;
                case 2:lfg = 2142; scenario = 1878; break;
                case 3:lfg = 2143; scenario = 1879; break;
                case 4:lfg = 2144; scenario = 1880; break;
                case 5:lfg = 2145; scenario = 1881; break;
                case 6:lfg = 2146; scenario = 1882; break;
                case 7:lfg = 2147; scenario = 1883; break;
                case 8:lfg = 2148; scenario = 1884; break;
                default: break;
                }
            }
            //heart-to-heart gap
            if (GetPostionOffset() == 3)
            {
                switch (level)
                {
                case 1:lfg = 2103; scenario = 1851; break;
                case 2:lfg = 2149; scenario = 1885; break;
                case 3:lfg = 2150; scenario = 1886; break;
                case 4:lfg = 2151; scenario = 1887; break;
                case 5:lfg = 2152; scenario = 1888; break;
                case 6:lfg = 2153; scenario = 1889; break;
                case 7:lfg = 2154; scenario = 1890; break;
                case 8:lfg = 2155; scenario = 1891; break;
                default: break;
                }
            }
            //Moltrega
            if (GetPostionOffset() == 4)
            {
                switch (level)
                {
                case 1:lfg = 2104; scenario = 1852; break;
                case 2:lfg = 2156; scenario = 1892; break;
                case 3:lfg = 2157; scenario = 1893; break;
                case 4:lfg = 2158; scenario = 1894; break;
                case 5:lfg = 2159; scenario = 1895; break;
                case 6:lfg = 2160; scenario = 1896; break;
                case 7:lfg = 2161; scenario = 1897; break;
                case 8:lfg = 2162; scenario = 1898; break;
                default: break;
                }
            }
            //upper area
            if (GetPostionOffset() == 5)
            {
                switch (level)
                {
                case 1:lfg = 2105; scenario = 1853; break;
                case 2:lfg = 2163; scenario = 1899; break;
                case 3:lfg = 2164; scenario = 1900; break;
                case 4:lfg = 2165; scenario = 1901; break;
                case 5:lfg = 2166; scenario = 1902; break;
                case 6:lfg = 2167; scenario = 1903; break;
                case 7:lfg = 2168; scenario = 1904; break;
                case 8:lfg = 2169; scenario = 1905; break;
                default: break;
                }
            }
            //Twisted Cloister
            if (GetPostionOffset() == 6)
            {
                switch (level)
                {
                case 1:lfg = 2106; scenario = 1857; break;
                case 2:lfg = 2170; scenario = 1906; break;
                case 3:lfg = 2171; scenario = 1907; break;
                case 4:lfg = 2172; scenario = 1908; break;
                case 5:lfg = 2173; scenario = 1909; break;
                case 6:lfg = 2174; scenario = 1910; break;
                case 7:lfg = 2175; scenario = 1911; break;
                case 8:lfg = 2176; scenario = 1912; break;
                default: break;
                }
            }
            if (scenario)
            {
                lfgId.insert(lfg);
                player->SetScenarioId(scenario);
                sLFGMgr->JoinLfg(player, lfg::LfgRoles::PLAYER_ROLE_DAMAGE, lfgId);
            }
        }

        bool OnGossipSelect(Player* player, uint32 /*menuId*/, uint32 gossipListId) override
        {
            uint32 const sender = player->PlayerTalkClass->GetGossipOptionSender(gossipListId);
            uint32 const action = player->PlayerTalkClass->GetGossipOptionAction(gossipListId);
            ClearGossipMenuFor(player);

            switch (action)
            {
            case GOSSIP_ACTION_INFO_DEF + 1: SendMenu(player, 344276, 120, 1); break;
            case GOSSIP_ACTION_INFO_DEF + 2: SendMenu(player, 344277, 220, 2); break;
            case GOSSIP_ACTION_INFO_DEF + 3: SendMenu(player, 344278, 305, 3); break;
            case GOSSIP_ACTION_INFO_DEF + 4: SendMenu(player, 344279, 375, 4); break;
            case GOSSIP_ACTION_INFO_DEF + 5: SendMenu(player, 344280, 435, 5); break;
            case GOSSIP_ACTION_INFO_DEF + 6: SendMenu(player, 344281, 485, 6); break;
            case GOSSIP_ACTION_INFO_DEF + 7: SendMenu(player, 344282, 530, 7); break;
            case GOSSIP_ACTION_INFO_DEF + 8: SendMenu(player, 344283, 570, 8); break;
            }
            return true;
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_coldheart_interstitia_175026AI(creature);
    }
};

enum
{
    QUEST_FEAR_NO_EVIL_WORGEN_WARRIOR = 28813,
    QUEST_FEAR_NO_EVIL_ALLIANCE = 29082,
    QUEST_FEAR_NO_EVIL_ALLIANCE_2 = 28809,
    QUEST_FEAR_NO_EVIL_ALLIANCE_3 = 28808,
    QUEST_FEAR_NO_EVIL_ALLIANCE_4 = 28811,
    QUEST_FEAR_NO_EIVL_ALLIANCE_5 = 28810,
    QUEST_FEAR_NO_EVIL_ALLIANCE_6 = 28806,
    QUEST_FEAR_NO_EVIL_ALLIANCE_NIGHT_ELF_WARLOCK_DK = 28812,
};

//180653 item id
class item_challenge_key : public ItemScript
{
public:
    item_challenge_key() : ItemScript("item_challenge_key") { }

    bool OnCreate(Player* player, Item* item)
    {
        if (player->HasItemCount(158923, 1, true))
            player->InitChallengeKey(item);
        else
            player->CreateChallengeKey(item);
        return false;
    }
};

//143967
class npc_expedition_map : public CreatureScript
{
public:
    npc_expedition_map() : CreatureScript("npc_expedition_map") { }

    struct npc_expedition_mapAI : public ScriptedAI
    {
        npc_expedition_mapAI(Creature* creature) : ScriptedAI(creature) { }

    bool OnGossipHello(Player* player) override
    {
        return false;
    }

    bool OnGossipSelect(Player* player, uint32 /*menuId*/, uint32 gossipListId) override
    {
        lfg::LfgDungeonSet newDungeons;
        newDungeons.insert(1768);
        sLFGMgr->JoinLfg(player, ROLE_DAMAGE, newDungeons);

        //alliance
        player->KilledMonsterCredit(139310);
        //horde
        player->KilledMonsterCredit(139309);

        // 1768 map 1955 spawndiff 12

        // 1724 spawndiff 38
        // 1743 spawndiff 39 heroic
        // 1746 spawndiff 40
        // 1763 spawndiff 45

        // 1726 1736 1737 1762


        return true;
    }
};

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_expedition_mapAI(creature);
    }
};

/*######
## npc_elder_kuruti
######*/

#define GOSSIP_ITEM_KUR1 "Greetings, elder. It is time for your people to end their hostility towards the draenei and their allies."
#define GOSSIP_ITEM_KUR2 "I did not mean to deceive you, elder. The draenei of Telredor thought to approach you in a way that would seem familiar to you."
#define GOSSIP_ITEM_KUR3 "I will tell them. Farewell, elder."

class npc_elder_kuruti : public CreatureScript
{
public:
    npc_elder_kuruti() : CreatureScript("npc_elder_kuruti") {}

    CreatureAI* GetAI(Creature* creature) const override
    {
        return new npc_elder_kurutiAI(creature);
    }

    struct npc_elder_kurutiAI : public ScriptedAI
    {
        npc_elder_kurutiAI(Creature* creature) : ScriptedAI(creature) { }

        bool OnGossipHello(Player* player) override
        {
            if (player->GetQuestStatus(9803) == QUEST_STATUS_INCOMPLETE)
                AddGossipItemFor(player, GossipOptionNpc::Binder, GOSSIP_ITEM_KUR1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);

            SendGossipMenuFor(player, 9226, me->GetGUID());

            return true;
        }

        bool OnGossipSelect(Player* player, uint32 sender, uint32 action) override
        {
            player->PlayerTalkClass->ClearMenus();

            switch (action)
            {
                case GOSSIP_ACTION_INFO_DEF:
                    AddGossipItemFor(player, GossipOptionNpc::Binder, GOSSIP_ITEM_KUR2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
                    SendGossipMenuFor(player, 9227, me->GetGUID());
                    break;
                case GOSSIP_ACTION_INFO_DEF + 1:
                    AddGossipItemFor(player, GossipOptionNpc::Binder, GOSSIP_ITEM_KUR3, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
                    SendGossipMenuFor(player, 9229, me->GetGUID());
                    break;
                case GOSSIP_ACTION_INFO_DEF + 2:
                    if (!player->HasItemCount(24573))
                    {
                        ItemPosCountVec dest;
                        uint32 itemId = 24573;
                        InventoryResult msg = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, itemId, 1, NULL);
                        if (msg == EQUIP_ERR_OK)
                        {
                            player->StoreNewItem(dest, itemId, true);
                        }
                        else
                            player->SendEquipError(msg, NULL, NULL, itemId);
                    }
                    SendGossipMenuFor(player, 9231, me->GetGUID());
                    break;
            }
            return true;
        }
    };

};

void AddCustom_npc()
{
    new npc_legendary_crafting();
    new npc_coldheart_interstitia_175026();
    new item_challenge_key();
    new npc_expedition_map();
    new npc_elder_kuruti();
}
