#include "Creature.h"
#include "Player.h"
#include "ScriptMgr.h"
#include "Config.h"
#include "Chat.h"
#include "ScriptedGossip.h"
#include "ScriptedCreature.h"
#include "MiscPackets.h"
#include "TemporarySummon.h"

struct CovenantTest : public ScriptedAI
{
    CovenantTest(Creature* creature) : ScriptedAI(creature) { }

    uint32 covenantEntry;

    bool OnGossipHello(Player* player) override
    {
        ClearGossipMenuFor(player);
        AddGossipItemFor(player, GossipOptionNpc::CovenantRenown, "Preview Kyrian!", GOSSIP_SENDER_MAIN, 0);
        AddGossipItemFor(player, GossipOptionNpc::CovenantRenown, "Preview Venthyr!", GOSSIP_SENDER_MAIN, 1);
        AddGossipItemFor(player, GossipOptionNpc::CovenantRenown, "Preview Night Fae!", GOSSIP_SENDER_MAIN, 2);
        AddGossipItemFor(player, GossipOptionNpc::CovenantRenown, "Preview Necrolords!", GOSSIP_SENDER_MAIN, 3);
        AddGossipItemFor(player, GossipOptionNpc::CovenantRenown, "Choose your covenant!", GOSSIP_SENDER_MAIN, 4);
        AddGossipItemFor(player, GossipOptionNpc::CovenantRenown, "Thanks, you can go now!", GOSSIP_SENDER_MAIN, 5);
        AddGossipItemFor(player, GossipOptionNpc::CovenantRenown, "Test Justsumoned!", GOSSIP_SENDER_MAIN, 6);
        SendGossipMenuFor(player, DEFAULT_GOSSIP_MESSAGE, me->GetGUID());
        return true;
    }

    void CovenantPreviewOpenNpc(Player* player, bool update)
    {
        WorldPackets::Misc::CovenantPreviewOpenNpc send;
        send.ObjGUID = player->GetGUID();
        send.CovenantId = covenantEntry;
        player->GetSession()->SendPacket(send.Write());
    }

    bool OnGossipSelect(Player* player, uint32 sender, uint32 action) override
    {
        switch (action)
        {
        case 0: // kyrian
            covenantEntry = 1;
            CovenantPreviewOpenNpc(player, true);
            CloseGossipMenuFor(player);
            break;
        case 1: // venthyr
            covenantEntry = 2;
            CovenantPreviewOpenNpc(player, true);
            CloseGossipMenuFor(player);
            break;
        case 2: // night fae
            covenantEntry = 3;
            CovenantPreviewOpenNpc(player, true);
            CloseGossipMenuFor(player);
            break;
        case 3: // necrolord
            covenantEntry = 4;
            CovenantPreviewOpenNpc(player, true);
            CloseGossipMenuFor(player);
            break;
        case 4: // show ui
            player->SendPlayerChoice(player->GetGUID(), 644);
            CloseGossipMenuFor(player);
            break;
        case 5:
            me->Whisper("It's always a pleasure to help You! Farewell!", LANG_UNIVERSAL, player);
            me->CastSpell(me, 357699); // channeling effect
            me->ForcedDespawn(3000);
            CloseGossipMenuFor(player);
            break;
        case 6:
            me->SummonCreature(me->GetEntry(), me->GetPosition(), TEMPSUMMON_TIMED_DESPAWN, 10s);
            me->CastSpell(me, 357717);
            me->ForcedDespawn(500);
            CloseGossipMenuFor(player);
            break;
        }
        return true;
    }

    void JustSummoned(Creature* summon) override
    {
        //summons.Summon(summon);
        
            summon->Say("JustSummoned function working!", LANG_UNIVERSAL);
            // Bolvar: My shining star, I will do as you request!  xD
            summon->Say(202786);
            summon->PlayDirectSound(163065, nullptr, 202786);

        summon->CastSpell(summon, 350480);
    }

};

class CovenantTest_commandscript : public CommandScript
{
public:
    CovenantTest_commandscript() : CommandScript("CovenantTest_commandscript") { }

    static bool HandleCovenantTestCommand(ChatHandler* handler, const char* /*args*/)
    {
        if (sConfigMgr->GetBoolDefault("CovenantTest.Enable", true))
        {
            handler->PSendSysMessage("You initiated covenant test command.");
            Player* player = handler->GetSession()->GetPlayer();
            Creature* npc = player->SummonCreature(8000002, player->GetPositionX(), player->GetPositionY(), player->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 5*60s);
        }

        return true;
    }

    std::vector<ChatCommand> GetCommands() const override
    {
        static std::vector<ChatCommand> CovenantTestCommandTable =
        {
            { "npcov",          rbac::RBAC_PERM_COMMAND_GM,         true,   &HandleCovenantTestCommand,        "" }
        };
        return CovenantTestCommandTable;
    }
};

void AddSC_CovenantTest()
{
    RegisterCreatureAI(CovenantTest);
    new CovenantTest_commandscript();
}
