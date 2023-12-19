#include "Creature.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "Config.h"
#include "Chat.h"
#include "ScriptedGossip.h"
#include "ScriptedCreature.h"
#include "MiscPackets.h"
#include "NPCPackets.h"
#include "GarrisonPackets.h"


struct OpcodeTesterNpc : public ScriptedAI
{
    OpcodeTesterNpc(Creature* creature) : ScriptedAI(creature) { }

    bool OnGossipHello(Player* player) override
    {
        ClearGossipMenuFor(player);
        AddGossipItemFor(player, GossipOptionNpc::Binder, "OpenNpcAnimaUI", GOSSIP_SENDER_MAIN, 0);
        AddGossipItemFor(player, GossipOptionNpc::Binder, "OpenNpcAnimaUI 2", GOSSIP_SENDER_MAIN, 1);
        AddGossipItemFor(player, GossipOptionNpc::Binder, "GetlandingpageshipmentResponse", GOSSIP_SENDER_MAIN, 2);
        AddGossipItemFor(player, GossipOptionNpc::Binder, "CovenantRenowOpenNpc", GOSSIP_SENDER_MAIN, 3);
        AddGossipItemFor(player, GossipOptionNpc::Binder, "Give Reservoir Anima", GOSSIP_SENDER_MAIN, 4);
        AddGossipItemFor(player, GossipOptionNpc::Binder, "AdventureMapOpenNpc", GOSSIP_SENDER_MAIN, 5);
        AddGossipItemFor(player, GossipOptionNpc::Binder, "GarrisonOpenMissionNpc", GOSSIP_SENDER_MAIN, 6);
        AddGossipItemFor(player, GossipOptionNpc::Binder, "Test Add Transmog Set", GOSSIP_SENDER_MAIN, 7);
        AddGossipItemFor(player, GossipOptionNpc::Binder, "Test AddItemWithToast", GOSSIP_SENDER_MAIN, 8);
        SendGossipMenuFor(player, DEFAULT_GOSSIP_MESSAGE, me->GetGUID());
        return true;
    }

    void HandleUIItemInteractionOpenNpc(Player* player)
    {
        WorldPackets::Garrison::DeleteExpiredMissionsResult  packet;
        packet.GarrTypeID = 2;
        packet.Result = 0;
        packet.RemovedMissionsCount = 0;
        packet.Succeeded = true;
        packet.LegionUnkBit = false;
        player->GetSession()->SendPacket(packet.Write());
    }

    void TestOp(Player* player)
    {
        WorldPackets::Garrison::DeleteExpiredMissionsResult send;
        send.GarrTypeID = 2;
        send.Result = 0;
        send.RemovedMissionsCount = 0;
        send.Succeeded = false;
        send.LegionUnkBit =false;
        player->GetSession()->SendPacket(send.Write());
    }

    void CovenantRenownOpcode(Player* player)
    {
        WorldPackets::Garrison::DeleteExpiredMissionsResult send;
        send.GarrTypeID = 111;
        send.Succeeded = true;
        send.LegionUnkBit = true;
        player->GetSession()->SendPacket(send.Write());
    }

    void TestAdventureMapOpenNpc(Player* player)
    {
        WorldPackets::Garrison::DeleteExpiredMissionsResult send;
        send.GarrTypeID = player->GetCurrentGarrison();
        send.Succeeded = true;
        send.LegionUnkBit = false;
        player->GetSession()->SendPacket(send.Write());
    }

    void TestGarrisonOpenMissionNpc(Player* player)
    {
        WorldPackets::Garrison::GarrisonCompleteMissionResult send;
        send.Result = 0;
        send.MissionRecID = 0;
        player->GetSession()->SendPacket(send.Write());
    }

    void testsss(Player* player)
    {
        WorldPackets::Garrison::GarrisonOpenMissionNpc send;
        send.NpcGUID = player->GetGUID();
        send.FollowerType = 1;
        player->GetSession()->SendPacket(send.Write());
    }
   
    bool OnGossipSelect(Player* player, uint32 sender, uint32 action) override
    {
        switch (action)
        {
        case 0:
            HandleUIItemInteractionOpenNpc(player);
            CloseGossipMenuFor(player);
            break;
        case 1:
            TestOp(player);
            CloseGossipMenuFor(player);
            break;
        case 2:
            CovenantRenownOpcode(player);
            CloseGossipMenuFor(player);
            break;
        case 3:
            TestAdventureMapOpenNpc(player);
            CloseGossipMenuFor(player);
            break;
        case 4:
            TestGarrisonOpenMissionNpc(player);
            CloseGossipMenuFor(player);
            break;
        case 5:
            testsss(player);
            CloseGossipMenuFor(player);
            break;
        case 6:
           // TestStartNpc(player);
            CloseGossipMenuFor(player);
            break;
        case 7:
            player->GetSession()->GetCollectionMgr()->AddTransmogSet(2291);
            CloseGossipMenuFor(player);
            break;
        case 8:
            player->AddItemWithToast(152503, 1, 6771);
            CloseGossipMenuFor(player);
            break;
        }
        return true;
    }

};


void AddSC_OpcodeTesterNpc()
{
    RegisterCreatureAI(OpcodeTesterNpc);
}
