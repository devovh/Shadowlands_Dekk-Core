#include "Creature.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "Config.h"
#include "Chat.h"
#include "ScriptedGossip.h"
#include "GameTime.h"
#include "PhasingHandler.h"
#include "ScriptedCreature.h"
#include "Object.h"

struct KeyStoneGenerator_npc : public ScriptedAI
{
    KeyStoneGenerator_npc(Creature* creature) : ScriptedAI(creature) { }

    bool OnGossipHello(Player* player) override
    {
        ClearGossipMenuFor(player);
        AddGossipItemFor(player, GossipOptionNpc::Binder, "Generate a Mythic Keystone", GOSSIP_SENDER_MAIN, 0);
        AddGossipItemFor(player, GossipOptionNpc::Binder, "Reset Mythic Kestone", GOSSIP_SENDER_MAIN, 1);
        AddGossipItemFor(player, GossipOptionNpc::Binder, "Remove my Mythic Kestone", GOSSIP_SENDER_MAIN, 2);
        SendGossipMenuFor(player, DEFAULT_GOSSIP_MESSAGE, me->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* player, uint32 sender, uint32 action) override
    {
        switch (action)
        {
        case 0:
            if (!player->HasItemCount(180653, 1, true))
                    player->AddItem(180653, 1);

            if (Item* keystone = player->GetItemByEntry(180653))
            {
                player->CreateChallengeKey(keystone);
                player->InitChallengeKey(keystone);
            }

            me->SendPlaySpellVisual(player, 100337, SPELL_MISS_NONE, 0, 10, false);
            player->PlayDirectSound(18489, player);

            CloseGossipMenuFor(player);
        break;
        case 1:
            if (!player->HasItemCount(180653, 1, true))
                player->ResetChallengeKey();

            player->SendPlaySpellVisual(player, 97417, SPELL_MISS_NONE, 0, 10, false);
            player->PlayDirectSound(107487, player);

            CloseGossipMenuFor(player);
        break;
        case 2:
            if (!player->HasItemCount(180653, 1, true))
                player->DestroyItemCount(180653, 1, true, false);

            player->SendPlaySpellVisual(player, 97417, SPELL_MISS_NONE, 0, 10, false);
            player->PlayDirectSound(107487, player);

            CloseGossipMenuFor(player);
        break;
        }
        return true;
    }

};

void AddSC_KeyStoneGenerator()
{
    RegisterCreatureAI(KeyStoneGenerator_npc);
}
