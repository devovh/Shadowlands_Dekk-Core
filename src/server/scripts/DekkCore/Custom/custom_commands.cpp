#include "Player.h"
#include "ScriptMgr.h"
#include "Chat.h"
#include "Opcodes.h"
#include "MiscPackets.h"
#include "TemporarySummon.h"
#include "DB2Stores.h"
#include "Garrison.h"
#include "GarrisonMgr.h"
#include "Language.h"
#include "Player.h"
#include "RBAC.h"
#include "WarCampaign.h"


class covenant_commandscript : public CommandScript
{
public:
    covenant_commandscript() : CommandScript("covenant_commandscript") { }

    static bool HandleCovenantCommand(ChatHandler* handler, const char* args)
    {
        if (WorldSession* session = handler->GetSession())
        {
            if (Player* player = session->GetPlayer())
            {
                if (player->IsGameMaster()) // This part only for gm's
                {
                    if (!*args)
                    {
                        handler->PSendSysMessage("Covenant commands allows to initiate covenant opcodes to check them. Usage example: .covenant venthyr");
                        handler->PSendSysMessage("Subcommands: kyrian, venthyr, nightfae, necrolord, callavre, renown");
                        return true;
                    }
                }
                else // This part for players
                {
                    if (!*args)
                    {
                        handler->PSendSysMessage("This command allows you to preview covenants. Usage example: .covenant venthyr");
                        handler->PSendSysMessage("Subcommands: kyrian, venthyr, nightfae, necrolord");
                        return true;
                    }
                }

                std::string param = (char*)args;

                // These params can be used by players and gm's too
                if (param == "kyrian")
                {
                    handler->PSendSysMessage("Preview Kyrian Covenant command initiated.");

                        WorldPackets::Misc::CovenantPreviewOpenNpc send;
                        send.ObjGUID = player->GetGUID();
                        send.CovenantId = 1; // covenant entry
                        player->GetSession()->SendPacket(send.Write());

                }

                if (param == "venthyr")
                {
                    handler->PSendSysMessage("Preview Venthyr Covenant command initiated.");

                        WorldPackets::Misc::CovenantPreviewOpenNpc send;
                        send.ObjGUID = player->GetGUID();
                        send.CovenantId = 2; // covenant entry
                        player->GetSession()->SendPacket(send.Write());

                }

                if (param == "nightfae")
                {
                    handler->PSendSysMessage("Preview Night Fae Covenant command initiated.");

                        WorldPackets::Misc::CovenantPreviewOpenNpc send;
                        send.ObjGUID = player->GetGUID();
                        send.CovenantId = 3; // covenant entry
                        player->GetSession()->SendPacket(send.Write());

                }

                if (param == "necrolord")
                {
                    handler->PSendSysMessage("Preview Necrolord Covenant command initiated.");

                        WorldPackets::Misc::CovenantPreviewOpenNpc send;
                        send.ObjGUID = player->GetGUID();
                        send.CovenantId = 4; // covenant entry
                        player->GetSession()->SendPacket(send.Write());

                }

                if (player->IsGameMaster()) // This part only for gm's
                {
                    if (param == "callavre")
                    {
                        handler->PSendSysMessage("Covenant Calling Availability Response command initiated.");

                        WorldPackets::Misc::CovenantCallingAvailibilityResponse send;
                        send.Availability = true;
                        send.Index = 1;
                        send.Data = 208;//data is correct? 

                        player->GetSession()->SendPacket(send.Write());

                    }

                    if (param == "renown")
                    {
                        handler->PSendSysMessage("Covenant Renown Npc UI command initiated.");

                        WorldPackets::Misc::CovenantRenowOpenNpc send;
                        send.ObjGUID = player->GetGUID(); // it should be an npc guid
                        send.CatchupState = 0;
                        player->GetSession()->SendPacket(send.Write());

                    }

                    if (param == "choose")
                    {
                        handler->PSendSysMessage("Choose your covenant UI command initiated.");

                        player->SendPlayerChoice(player->GetGUID(), 644);

                    }
                }
            }

        }

        return true;
    }


    std::vector<ChatCommand> GetCommands() const override
    {
        static std::vector<ChatCommand> CovenantTestCommandTable =
        {
            { "covenant",          rbac::RBAC_PERM_COMMAND_GM,         true,   &HandleCovenantCommand,        "" },
        };
        return CovenantTestCommandTable;
    }

};

class playspellvisual_commandscript : public CommandScript
{
public:
    playspellvisual_commandscript() : CommandScript("playspellvisual_commandscript") { }

    static bool HandlePlaySpellVisualCommand(ChatHandler* handler, const char* args)
    {
        if (WorldSession* session = handler->GetSession())
        {
            if (Player* player = session->GetPlayer())
            {
                if (!*args)
                {
                    handler->PSendSysMessage("You can initiate playspellvisual function with command. .psv #spellvisualid or .playspellvisual #spellvisualid");
                    return true;
                }

                std::string param = (char*)args;

                if (param != "")
                {
                    handler->PSendSysMessage("Playing spell visual: %s", param);
                    if (player->GetSelectedUnit())
					    player->SendPlaySpellVisual(player->GetSelectedUnit(), stoi(param), 0, 0, 60, false);
                    else
                        player->SendPlaySpellVisual(player, stoi(param), 0, 0, 60, false);
                }
            }

        }

        return true;
    }


    std::vector<ChatCommand> GetCommands() const override
    {
        static std::vector<ChatCommand> PSVCommandTable =
        {
            { "playspellvisual",          rbac::RBAC_PERM_COMMAND_GM,         true,   &HandlePlaySpellVisualCommand,        "" },
            { "psv",                      rbac::RBAC_PERM_COMMAND_GM,         true,   &HandlePlaySpellVisualCommand,        "" },
        };
        return PSVCommandTable;
    }

};

class transmog_commandscript : public CommandScript
{
public:
    transmog_commandscript() : CommandScript("transmog_commandscript") { }

    static bool HandleTransmogCommand(ChatHandler* handler, const char* args)
    {
        if (WorldSession* session = handler->GetSession())
        {
            if (Player* player = session->GetPlayer())
            {
                handler->PSendSysMessage("You initiated transmogrification command. We called Mystic Birdhat for your assistance.");

                // summon Mystic Birdhat <Transmogrifier> 64515
                if (Creature* birdhat = player->SummonCreature(64515, player->GetRandomNearPosition(10.0f), TEMPSUMMON_TIMED_DESPAWN, 1min))
                {
                    birdhat->Say("Hello! Someone said you want to transmogrify! Go on! I'm here for 1 minute only.", LANG_UNIVERSAL);
                    birdhat->SetEmoteState(Emote::EMOTE_STATE_DANCE);
                }
            }
        }
        return true;
    }


    std::vector<ChatCommand> GetCommands() const override
    {
        static std::vector<ChatCommand> TMOGCommandTable =
        {
            { "transmog",          rbac::RBAC_PERM_COMMAND_GM,          true,   &HandleTransmogCommand,        "" },
            { "tmog",          	   rbac::RBAC_PERM_COMMAND_GM,         	true,   &HandleTransmogCommand,        "" },
        };
        return TMOGCommandTable;
    }

};

class garrison_commandscript : public CommandScript
{
public:
    garrison_commandscript() : CommandScript("garrison_commandscript") { }

    std::vector<ChatCommand> GetCommands() const override
    {
        static std::vector<ChatCommand> garrisonFollowerCommandTable =
        {
            { "add", rbac::RBAC_PERM_COMMAND_ACHIEVEMENT_ADD,       false, &HandleGarrisonFollowerAddCommand,   "" },
        };
        static std::vector<ChatCommand> garrisonMissionCommandTable =
        {
            { "add", rbac::RBAC_PERM_COMMAND_ACHIEVEMENT_ADD,       false, &HandleGarrisonMissionAddCommand,    "" },
            { "generate", rbac::RBAC_PERM_COMMAND_ACHIEVEMENT_ADD,       false, &HandleGarrisonGenerateMissionsCommand,    "" },
        };
        static std::vector<ChatCommand> garrisonCommandTable =
        {
            { "follower", rbac::RBAC_PERM_COMMAND_ACHIEVEMENT_ADD,      false, NULL, "", garrisonFollowerCommandTable },
            { "mission",  rbac::RBAC_PERM_COMMAND_ACHIEVEMENT_ADD,      false, NULL, "", garrisonMissionCommandTable },
            { "create", rbac::RBAC_PERM_COMMAND_ACHIEVEMENT_ADD,       false, &HandleGarrisonCreateCommand,    "" },
        };
        static std::vector<ChatCommand> commandTable =
        {
            { "garrison", rbac::RBAC_PERM_COMMAND_ACHIEVEMENT_ADD,      false, NULL, "", garrisonCommandTable },
        };
        return commandTable;
    }

    static bool HandleGarrisonFollowerAddCommand(ChatHandler* handler, char const* args)
    {
        if (!*args)
            return false;

        Player* target = handler->getSelectedPlayerOrSelf();
        if (!target)
        {
            handler->SendSysMessage(LANG_NO_CHAR_SELECTED);
            handler->SetSentErrorMessage(true);
            return false;
        }

        uint32 followerId = atoi((char*)args);
        target->AddGarrisonFollower(followerId);
        return true;
    }

    static bool HandleGarrisonMissionAddCommand(ChatHandler* handler, char const* args)
    {
        if (!*args)
            return false;

        Player* target = handler->getSelectedPlayerOrSelf();
        if (!target)
        {
            handler->SendSysMessage(LANG_NO_CHAR_SELECTED);
            handler->SetSentErrorMessage(true);
            return false;
        }

        uint32 missionId = atoi((char*)args);
        target->AddGarrisonMission(missionId);
        return true;
    }

    static bool HandleGarrisonCreateCommand(ChatHandler* handler, char const* args)
    {
        if (!*args)
            return false;

        Player* target = handler->getSelectedPlayerOrSelf();
        if (!target)
        {
            handler->SendSysMessage(LANG_NO_CHAR_SELECTED);
            handler->SetSentErrorMessage(true);
            return false;
        }

        uint32 garrId = atoi((char*)args);
        target->CreateGarrison(garrId);
        return true;
    }
    
    static bool HandleGarrisonGenerateMissionsCommand(ChatHandler* handler, char const* args)
    {
        Player* target = handler->getSelectedPlayerOrSelf();
        if (!target)
        {
            handler->SendSysMessage(LANG_NO_CHAR_SELECTED);
            handler->SetSentErrorMessage(true);
            return false;
        }

        GarrisonType garType = target->GetCurrentGarrison();

        switch (target->GetMap()->GetEntry()->ExpansionID)
        {
        case EXPANSION_WARLORDS_OF_DRAENOR:     garType = GARRISON_TYPE_GARRISON;       break;
        case EXPANSION_LEGION:                  garType = GARRISON_TYPE_CLASS_HALL;     break;
        case EXPANSION_BATTLE_FOR_AZEROTH:      garType = GARRISON_TYPE_WAR_CAMPAIGN;   break;
        case EXPANSION_SHADOWLANDS:             garType = GARRISON_TYPE_COVENANT;       break;
        default:                                garType = GARRISON_TYPE_COVENANT;       break;
        }
        target->SetCurrentGarrison(garType);

        if (Garrison* garrison = target->GetGarrison((GarrisonType)garType))
            garrison->GenerateMissions();

        target->SendGarrisonInfo();
        target->SendGarrisonRemoteInfo();
        return true;
    }
};

class gear_commandscript : public CommandScript
{
public:
    gear_commandscript() : CommandScript("gear_commandscript") { }

    static bool HandleGearCommand(ChatHandler* handler, const char* args)
    {
        if (WorldSession* session = handler->GetSession())
        {
            if (Player* player = session->GetPlayer())
            {
                if (!*args)
                {
                    handler->PSendSysMessage("Command .gear - Multiple gearing up options!");
                    handler->PSendSysMessage("Example usage: .gear loadout");
                    handler->PSendSysMessage("Subcommands: loadout, bis");
                    return true;
                }

                std::string param = (char*)args;

                if (param == "loadout")
                {
                    if (player->GetLevel() >= 45)
                    {
                        handler->PSendSysMessage("Gearing up with loadout items..");
                        player->GearUpByLoadout(1, { 0 }); // no bonus
                    }
                    else
                    {
                        handler->PSendSysMessage("Gearing up with scaled for level loadout items..");
                        player->GearUpByLoadout(1, { 6771 }); // scaled with level
                    }
                }

                if (param == "bis")
                {
                    if (player->GetLevel() >= 60)
                    {
                        handler->PSendSysMessage("Gearing up with Best in Slot items..");
                        player->GearUpByBiS({ 6807, 1498 }); // mythic + ilvl
                    }
                    else
                    {
                        handler->PSendSysMessage("Gearing up with scaled for level Best in Slot items..");
                        player->GearUpByBiS({ 6771 }); // scaled with level
                    }
                }
            }

        }

        return true;
    }


    std::vector<ChatCommand> GetCommands() const override
    {
        static std::vector<ChatCommand> GearCommandTable =
        {
            { "gear",          rbac::RBAC_PERM_COMMAND_GM,         true,   &HandleGearCommand,        "" },
        };
        return GearCommandTable;
    }

};

class chromie_time_commandscript : public CommandScript
{
public:
    chromie_time_commandscript() : CommandScript("chromie_time_commandscript") { }

    std::vector<ChatCommand> GetCommands() const override
    {
        static std::vector<ChatCommand> chromieTimeSet_CommandTable =
        {
            { "set",          rbac::RBAC_PERM_COMMAND_GM,         true,   &HandleChromieTimeSetCommand,        ""},
            { "info",          rbac::RBAC_PERM_COMMAND_GM,         true,   &HandleChromieTimeInfoCommand,        ""},
        };
        static std::vector<ChatCommand> chromieTime_CommandTable =
        {
            { "chromietime", rbac::RBAC_PERM_COMMAND_GM,      false, NULL, "", chromieTimeSet_CommandTable },
        };
        return chromieTime_CommandTable;
    }

    static bool HandleChromieTimeInfoCommand(ChatHandler* handler, char const* args)
    {
        Player* target = handler->getSelectedPlayerOrSelf();
        if (!target)
        {
            handler->SendSysMessage(LANG_NO_CHAR_SELECTED);
            handler->SetSentErrorMessage(true);
            return false;
        }

        uint16 chromieTime = target->GetChromieTime();
        std::string chromieTimeName = target->GetChromieTimeName();

        handler->PSendSysMessage("Your selected chromie time is %u (%s).", chromieTime, chromieTimeName);

        return true;
    }

    static bool HandleChromieTimeSetCommand(ChatHandler* handler, char const* args)
    {
        if (!*args)
            return false;

        Player* target = handler->getSelectedPlayerOrSelf();
        if (!target)
        {
            handler->SendSysMessage(LANG_NO_CHAR_SELECTED);
            handler->SetSentErrorMessage(true);
            return false;
        }

        uint16 chromieTime = atoi((char*)args);
        target->SetChromieTime(chromieTime);

        return true;
    }

};

void AddSC_Custom_Commands()
{
    new covenant_commandscript();
    new playspellvisual_commandscript();
    new transmog_commandscript();
    new garrison_commandscript();
    new gear_commandscript();
    new chromie_time_commandscript();
}
