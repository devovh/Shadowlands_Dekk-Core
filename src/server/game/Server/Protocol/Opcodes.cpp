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

#include "Opcodes.h"
#include "Log.h"
#include "WorldSession.h"
#include "Packets/AllPackets.h"
#include <iomanip>
#include <sstream>

template<class PacketClass, void(WorldSession::*HandlerFunction)(PacketClass&)>
class PacketHandler : public ClientOpcodeHandler
{
public:
    PacketHandler(char const* name, SessionStatus status, PacketProcessing processing) : ClientOpcodeHandler(name, status, processing) { }

    void Call(WorldSession* session, WorldPacket& packet) const override
    {
        PacketClass nicePacket(std::move(packet));
        nicePacket.Read();
        (session->*HandlerFunction)(nicePacket);
        session->LogUnprocessedTail(nicePacket.GetRawPacket());
    }
};

OpcodeTable opcodeTable;

template<typename T>
struct get_packet_class
{
};

template<typename PacketClass>
struct get_packet_class<void(WorldSession::*)(PacketClass&)>
{
    using type = PacketClass;
};

OpcodeTable::OpcodeTable()
{
    memset(_internalTableClient, 0, sizeof(_internalTableClient));
    memset(_internalTableServer, 0, sizeof(_internalTableServer));
}

OpcodeTable::~OpcodeTable()
{
    for (uint16 i = 0; i < NUM_OPCODE_HANDLERS; ++i)
    {
        delete _internalTableClient[i];
        delete _internalTableServer[i];
    }
}

template<typename Handler, Handler HandlerFunction>
void OpcodeTable::ValidateAndSetClientOpcode(OpcodeClient opcode, char const* name, SessionStatus status, PacketProcessing processing)
{
    if (uint32(opcode) == NULL_OPCODE)
    {
        TC_LOG_ERROR("network", "Opcode %s does not have a value", name);
        return;
    }

    if (uint32(opcode) >= NUM_OPCODE_HANDLERS)
    {
        TC_LOG_ERROR("network", "Tried to set handler for an invalid opcode %d", opcode);
        return;
    }

    if (_internalTableClient[opcode] != nullptr)
    {
        TC_LOG_ERROR("network", "Tried to override client handler of %s with %s (opcode %u)", opcodeTable[opcode]->Name, name, opcode);
        return;
    }

    _internalTableClient[opcode] = new PacketHandler<typename get_packet_class<Handler>::type, HandlerFunction>(name, status, processing);
}

void OpcodeTable::ValidateAndSetServerOpcode(OpcodeServer opcode, char const* name, SessionStatus status, ConnectionType conIdx)
{
    if (uint32(opcode) == NULL_OPCODE)
    {
        TC_LOG_ERROR("network", "Opcode %s does not have a value", name);
        return;
    }

    if (uint32(opcode) >= NUM_OPCODE_HANDLERS)
    {
        TC_LOG_ERROR("network", "Tried to set handler for an invalid opcode %d", opcode);
        return;
    }

    if (conIdx >= MAX_CONNECTION_TYPES)
    {
        TC_LOG_ERROR("network", "Tried to set invalid connection type %u for opcode %s", conIdx, name);
        return;
    }

    if (IsInstanceOnlyOpcode(opcode) && conIdx != CONNECTION_TYPE_INSTANCE)
    {
        TC_LOG_ERROR("network", "Tried to set invalid connection type %u for instance only opcode %s", conIdx, name);
        return;
    }

    if (_internalTableServer[opcode] != nullptr)
    {
        TC_LOG_ERROR("network", "Tried to override server handler of %s with %s (opcode %u)", opcodeTable[opcode]->Name, name, opcode);
        return;
    }

    _internalTableServer[opcode] = new ServerOpcodeHandler(name, status, conIdx);
}

/// Correspondence between opcodes and their names
void OpcodeTable::Initialize()
{
#define DEFINE_HANDLER(opcode, status, processing, handler) \
    ValidateAndSetClientOpcode<decltype(handler), handler>(opcode, #opcode, status, processing)

    DEFINE_HANDLER(CMSG_ABANDON_NPE_RESPONSE,                               STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_ACCEPT_GUILD_INVITE,                                STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildAcceptInvite); //Ready
    DEFINE_HANDLER(CMSG_ACCEPT_SOCIAL_CONTRACT,                             STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_ACCEPT_TRADE,                                       STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAcceptTradeOpcode);//Ready
    DEFINE_HANDLER(CMSG_ACCEPT_WARGAME_INVITE,                              STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleAcceptWargameInvite);//Ready
    DEFINE_HANDLER(CMSG_ACCOUNT_NOTIFICATION_ACKNOWLEDGED,                  STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_ACTIVATE_SOULBIND,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleActivateSoulbind);
    DEFINE_HANDLER(CMSG_ACTIVATE_TAXI,                                      STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleActivateTaxiOpcode);//Ready
    DEFINE_HANDLER(CMSG_ADDON_LIST,                                         STATUS_AUTHED,    PROCESS_INPLACE,      &WorldSession::HandleAddonList);//Ready
    DEFINE_HANDLER(CMSG_ADD_ACCOUNT_COSMETIC,                               STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_ADD_BATTLENET_FRIEND,                               STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_ADD_FRIEND,                                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAddFriendOpcode);//Ready
    DEFINE_HANDLER(CMSG_ADD_IGNORE,                                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAddIgnoreOpcode);//Ready
    DEFINE_HANDLER(CMSG_ADD_TOY,                                            STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAddToy);//Ready
    DEFINE_HANDLER(CMSG_ADVENTURE_JOURNAL_OPEN_QUEST,                       STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAdventureJournalOpenQuest);//Ready
    DEFINE_HANDLER(CMSG_ADVENTURE_JOURNAL_UPDATE_SUGGESTIONS,               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAdventureJournalUpdateSuggestions);//Ready
    DEFINE_HANDLER(CMSG_ADVENTURE_MAP_START_QUEST,                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAdventureMapStartQuest);//Ready
    DEFINE_HANDLER(CMSG_ALTER_APPEARANCE,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAlterAppearance);//Ready
    DEFINE_HANDLER(CMSG_AREA_SPIRIT_HEALER_QUERY,                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAreaSpiritHealerQueryOpcode);//Ready
    DEFINE_HANDLER(CMSG_AREA_SPIRIT_HEALER_QUEUE,                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAreaSpiritHealerQueueOpcode);//Ready
    DEFINE_HANDLER(CMSG_AREA_TRIGGER,                                       STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleAreaTriggerOpcode);//Ready
    DEFINE_HANDLER(CMSG_ARTIFACT_ADD_POWER,                                 STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleArtifactAddPower);//Ready
    DEFINE_HANDLER(CMSG_ARTIFACT_SET_APPEARANCE,                            STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleArtifactSetAppearance);//Ready
    DEFINE_HANDLER(CMSG_ASSIGN_EQUIPMENT_SET_SPEC,                          STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleAssignEquipmentSetSpec);//Ready
    DEFINE_HANDLER(CMSG_ATTACK_STOP,                                        STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleAttackStopOpcode);//Ready
    DEFINE_HANDLER(CMSG_ATTACK_SWING,                                       STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleAttackSwingOpcode);//Ready
    DEFINE_HANDLER(CMSG_AUCTIONABLE_TOKEN_SELL,                             STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_AUCTIONABLE_TOKEN_SELL_AT_MARKET_PRICE,             STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_AUCTION_BROWSE_QUERY,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAuctionBrowseQuery);//Ready
    DEFINE_HANDLER(CMSG_AUCTION_CANCEL_COMMODITIES_PURCHASE,                STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAuctionCancelCommoditiesPurchase);//Ready
    DEFINE_HANDLER(CMSG_AUCTION_CONFIRM_COMMODITIES_PURCHASE,               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAuctionConfirmCommoditiesPurchase);//Ready
    DEFINE_HANDLER(CMSG_AUCTION_GET_COMMODITY_QUOTE,                        STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAuctionGetCommodityQuote);//Ready
    DEFINE_HANDLER(CMSG_AUCTION_HELLO_REQUEST,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAuctionHelloOpcode);//Ready
    DEFINE_HANDLER(CMSG_AUCTION_LIST_BIDDED_ITEMS,                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAuctionListBiddedItems);//Ready
    DEFINE_HANDLER(CMSG_AUCTION_LIST_BUCKETS_BY_BUCKET_KEYS,                STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAuctionListBucketsByBucketKeys);//Ready
    DEFINE_HANDLER(CMSG_AUCTION_LIST_ITEMS_BY_BUCKET_KEY,                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAuctionListItemsByBucketKey);//Ready
    DEFINE_HANDLER(CMSG_AUCTION_LIST_ITEMS_BY_ITEM_ID,                      STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAuctionListItemsByItemID);//Ready
    DEFINE_HANDLER(CMSG_AUCTION_LIST_OWNED_ITEMS,                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAuctionListOwnedItems);//Ready
    DEFINE_HANDLER(CMSG_AUCTION_PLACE_BID,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAuctionPlaceBid);//Ready
    DEFINE_HANDLER(CMSG_AUCTION_REMOVE_ITEM,                                STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAuctionRemoveItem);//Ready
    DEFINE_HANDLER(CMSG_AUCTION_REPLICATE_ITEMS,                            STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAuctionReplicateItems);//Ready
    DEFINE_HANDLER(CMSG_AUCTION_REQUEST_FAVORITE_LIST,                      STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAuctionRequestFavoriteList);
    DEFINE_HANDLER(CMSG_AUCTION_SELL_COMMODITY,                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAuctionSellCommodity);//Ready
    DEFINE_HANDLER(CMSG_AUCTION_SELL_ITEM,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAuctionSellItem);//Ready
    DEFINE_HANDLER(CMSG_AUCTION_SET_FAVORITE_ITEM,                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAuctionSetFavoriteItem);//Ready
    DEFINE_HANDLER(CMSG_AUTH_CONTINUED_SESSION,                             STATUS_NEVER,     PROCESS_INPLACE,      &WorldSession::Handle_EarlyProccess);//Ready
    DEFINE_HANDLER(CMSG_AUTH_SESSION,                                       STATUS_NEVER,     PROCESS_INPLACE,      &WorldSession::Handle_EarlyProccess);//Ready
    DEFINE_HANDLER(CMSG_AUTOBANK_ITEM,                                      STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleAutoBankItemOpcode);//Ready
    DEFINE_HANDLER(CMSG_AUTOBANK_REAGENT,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAutoBankReagentOpcode);//Ready
    DEFINE_HANDLER(CMSG_AUTOSTORE_BANK_ITEM,                                STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleAutoStoreBankItemOpcode);//Ready
    DEFINE_HANDLER(CMSG_AUTOSTORE_BANK_REAGENT,                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAutoStoreBankReagentOpcode);//Ready
    DEFINE_HANDLER(CMSG_AUTO_EQUIP_ITEM,                                    STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleAutoEquipItemOpcode);//Ready
    DEFINE_HANDLER(CMSG_AUTO_EQUIP_ITEM_SLOT,                               STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleAutoEquipItemSlotOpcode);//Ready
    DEFINE_HANDLER(CMSG_AUTO_GUILD_BANK_ITEM,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAutoGuildBankItem);//Ready
    DEFINE_HANDLER(CMSG_AUTO_STORE_BAG_ITEM,                                STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleAutoStoreBagItemOpcode);//Ready
    DEFINE_HANDLER(CMSG_AUTO_STORE_GUILD_BANK_ITEM,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAutoStoreGuildBankItem);//Ready
    DEFINE_HANDLER(CMSG_AZERITE_EMPOWERED_ITEM_SELECT_POWER,                STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleAzeriteEmpoweredItemSelectPower);//Ready
    DEFINE_HANDLER(CMSG_AZERITE_EMPOWERED_ITEM_VIEWED,                      STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleAzeriteEmpoweredItemViewed);//Ready
    DEFINE_HANDLER(CMSG_AZERITE_ESSENCE_ACTIVATE_ESSENCE,                   STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleAzeriteEssenceActivateEssence);//Ready
    DEFINE_HANDLER(CMSG_AZERITE_ESSENCE_UNLOCK_MILESTONE,                   STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleAzeriteEssenceUnlockMilestone);//Ready
    DEFINE_HANDLER(CMSG_BANKER_ACTIVATE,                                    STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleBankerActivateOpcode);//Ready
    DEFINE_HANDLER(CMSG_BATTLEFIELD_LEAVE,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBattlefieldLeaveOpcode);//Ready
    DEFINE_HANDLER(CMSG_BATTLEFIELD_LIST,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBattlefieldListOpcode);//Ready
    DEFINE_HANDLER(CMSG_BATTLEFIELD_PORT,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBattleFieldPortOpcode);//Ready
    DEFINE_HANDLER(CMSG_BATTLEMASTER_HELLO,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBattlemasterHelloOpcode);//Ready
    DEFINE_HANDLER(CMSG_BATTLEMASTER_JOIN,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBattlemasterJoinOpcode);//Ready
    DEFINE_HANDLER(CMSG_BATTLEMASTER_JOIN_ARENA,                            STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBattlemasterJoinArena);//Ready
    DEFINE_HANDLER(CMSG_BATTLEMASTER_JOIN_BRAWL,                            STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBattlemasterJoinBrawl);//Ready
    DEFINE_HANDLER(CMSG_BATTLEMASTER_JOIN_SKIRMISH,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleJoinSkirmish);//Ready
    DEFINE_HANDLER(CMSG_BATTLENET_CHALLENGE_RESPONSE,                       STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_BATTLENET_REQUEST,                                  STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleBattlenetRequest);//Ready
    // DekkCore >
    DEFINE_HANDLER(CMSG_BATTLE_PAY_ACK_FAILED_RESPONSE, STATUS_AUTHED, PROCESS_THREADUNSAFE, &WorldSession::HandleBattlePayAckFailedResponse);
    DEFINE_HANDLER(CMSG_BATTLE_PAY_CANCEL_OPEN_CHECKOUT, STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_BATTLE_PAY_CONFIRM_PURCHASE_RESPONSE, STATUS_AUTHED, PROCESS_THREADUNSAFE, &WorldSession::HandleBattlePayConfirmPurchase);
    DEFINE_HANDLER(CMSG_BATTLE_PAY_DISTRIBUTION_ASSIGN_TO_TARGET, STATUS_AUTHED, PROCESS_THREADUNSAFE, &WorldSession::HandleBattlePayDistributionAssign);
    DEFINE_HANDLER(CMSG_BATTLE_PAY_DISTRIBUTION_ASSIGN_VAS, STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_BATTLE_PAY_GET_PRODUCT_LIST, STATUS_AUTHED, PROCESS_THREADUNSAFE, &WorldSession::HandleGetProductList);
    DEFINE_HANDLER(CMSG_BATTLE_PAY_GET_PURCHASE_LIST, STATUS_AUTHED, PROCESS_THREADUNSAFE, &WorldSession::HandleGetPurchaseListQuery);
    DEFINE_HANDLER(CMSG_BATTLE_PAY_OPEN_CHECKOUT, STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_BATTLE_PAY_REQUEST_PRICE_INFO, STATUS_AUTHED, PROCESS_THREADUNSAFE, &WorldSession::HandleBattlePayRequestPriceInfo);
    DEFINE_HANDLER(CMSG_BATTLE_PAY_START_PURCHASE, STATUS_AUTHED, PROCESS_THREADUNSAFE, &WorldSession::HandleBattlePayStartPurchase);
    DEFINE_HANDLER(CMSG_BATTLE_PAY_START_VAS_PURCHASE, STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    // < DekkCore
    DEFINE_HANDLER(CMSG_BATTLE_PET_CLEAR_FANFARE,                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBattlePetClearFanfare);
    DEFINE_HANDLER(CMSG_BATTLE_PET_DELETE_PET,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBattlePetDeletePet);
    DEFINE_HANDLER(CMSG_BATTLE_PET_DELETE_PET_CHEAT,                        STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_BATTLE_PET_MODIFY_NAME,                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBattlePetModifyName);
    DEFINE_HANDLER(CMSG_BATTLE_PET_REQUEST_JOURNAL,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBattlePetRequestJournal);
    DEFINE_HANDLER(CMSG_BATTLE_PET_REQUEST_JOURNAL_LOCK,                    STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBattlePetRequestJournalLock);
    DEFINE_HANDLER(CMSG_BATTLE_PET_SET_BATTLE_SLOT,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBattlePetSetBattleSlot);
    DEFINE_HANDLER(CMSG_BATTLE_PET_SET_FLAGS,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBattlePetSetFlags);
    DEFINE_HANDLER(CMSG_BATTLE_PET_SUMMON,                                  STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleBattlePetSummon);//Ready
    DEFINE_HANDLER(CMSG_BATTLE_PET_UPDATE_DISPLAY_NOTIFY,                   STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_BATTLE_PET_UPDATE_NOTIFY,                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBattlePetUpdateNotify);//Ready
    DEFINE_HANDLER(CMSG_BEGIN_TRADE,                                        STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBeginTradeOpcode);//Ready
    DEFINE_HANDLER(CMSG_BINDER_ACTIVATE,                                    STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleBinderActivateOpcode);//Ready
    DEFINE_HANDLER(CMSG_BLACK_MARKET_BID_ON_ITEM,                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBlackMarketBidOnItem);//Ready
    DEFINE_HANDLER(CMSG_BLACK_MARKET_OPEN,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBlackMarketOpen);//Ready
    DEFINE_HANDLER(CMSG_BLACK_MARKET_REQUEST_ITEMS,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBlackMarketRequestItems);//Ready
    DEFINE_HANDLER(CMSG_BONUS_ROLL,                                         STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_BUG_REPORT,                                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBugReportOpcode);//Ready
    DEFINE_HANDLER(CMSG_BUSY_TRADE,                                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBusyTradeOpcode);//Ready
    DEFINE_HANDLER(CMSG_BUY_BACK_ITEM,                                      STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleBuybackItem);//Ready
    DEFINE_HANDLER(CMSG_BUY_BANK_SLOT,                                      STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleBuyBankSlotOpcode);//Ready
    DEFINE_HANDLER(CMSG_BUY_ITEM,                                           STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleBuyItemOpcode);//Ready
    DEFINE_HANDLER(CMSG_BUY_REAGENT_BANK,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBuyReagentBankOpcode);//Ready
    DEFINE_HANDLER(CMSG_CAGE_BATTLE_PET,                                    STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCageBattlePet);//Ready
    DEFINE_HANDLER(CMSG_CALENDAR_ADD_EVENT,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCalendarAddEvent);//Ready
    DEFINE_HANDLER(CMSG_CALENDAR_COMMUNITY_INVITE,                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCalendarCommunityInvite);//Ready
    DEFINE_HANDLER(CMSG_CALENDAR_COMPLAIN,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCalendarComplain);//Ready
    DEFINE_HANDLER(CMSG_CALENDAR_COPY_EVENT,                                STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCalendarCopyEvent);//Ready
    DEFINE_HANDLER(CMSG_CALENDAR_EVENT_SIGN_UP,                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCalendarEventSignup);//Ready
    DEFINE_HANDLER(CMSG_CALENDAR_GET,                                       STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCalendarGetCalendar);//Ready
    DEFINE_HANDLER(CMSG_CALENDAR_GET_EVENT,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCalendarGetEvent);//Ready
    DEFINE_HANDLER(CMSG_CALENDAR_GET_NUM_PENDING,                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCalendarGetNumPending);//Ready
    DEFINE_HANDLER(CMSG_CALENDAR_INVITE,                                    STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCalendarInvite);//Ready
    DEFINE_HANDLER(CMSG_CALENDAR_MODERATOR_STATUS,                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCalendarModeratorStatus);//Ready
    DEFINE_HANDLER(CMSG_CALENDAR_REMOVE_EVENT,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCalendarRemoveEvent);//Ready
    DEFINE_HANDLER(CMSG_CALENDAR_REMOVE_INVITE,                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCalendarEventRemoveInvite);//Ready
    DEFINE_HANDLER(CMSG_CALENDAR_RSVP,                                      STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCalendarRsvp);//Ready
    DEFINE_HANDLER(CMSG_CALENDAR_STATUS,                                    STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCalendarStatus);//Ready
    DEFINE_HANDLER(CMSG_CALENDAR_UPDATE_EVENT,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCalendarUpdateEvent);//Ready
    DEFINE_HANDLER(CMSG_CANCEL_AURA,                                        STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleCancelAuraOpcode);//Ready
    DEFINE_HANDLER(CMSG_CANCEL_AUTO_REPEAT_SPELL,                           STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleCancelAutoRepeatSpellOpcode);//Ready
    DEFINE_HANDLER(CMSG_CANCEL_CAST,                                        STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleCancelCastOpcode);//Ready
    DEFINE_HANDLER(CMSG_CANCEL_CHANNELLING,                                 STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleCancelChanneling);//Ready
    DEFINE_HANDLER(CMSG_CANCEL_GROWTH_AURA,                                 STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleCancelGrowthAuraOpcode);//Ready
    DEFINE_HANDLER(CMSG_CANCEL_MASTER_LOOT_ROLL,                            STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCancelMasterLootRoll);//Ready
    DEFINE_HANDLER(CMSG_CANCEL_MOD_SPEED_NO_CONTROL_AURAS,                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCancelModSpeedNoControlAuras);//Ready
    DEFINE_HANDLER(CMSG_CANCEL_MOUNT_AURA,                                  STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleCancelMountAuraOpcode);//Ready
    DEFINE_HANDLER(CMSG_CANCEL_QUEUED_SPELL,                                STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleCancelQueuedSpell);//Ready
    DEFINE_HANDLER(CMSG_CANCEL_TEMP_ENCHANTMENT,                            STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleCancelTempEnchantmentOpcode);//Ready
    DEFINE_HANDLER(CMSG_CANCEL_TRADE,                                       STATUS_LOGGEDIN_OR_RECENTLY_LOGGOUT, PROCESS_THREADUNSAFE, &WorldSession::HandleCancelTradeOpcode);//Ready
    DEFINE_HANDLER(CMSG_CAN_DUEL,                                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCanDuel);//Ready
    DEFINE_HANDLER(CMSG_CAN_REDEEM_TOKEN_FOR_BALANCE,                       STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CAST_SPELL,                                         STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleCastSpellOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHALLENGE_MODE_REQUEST_LEADERS,                     STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleRequestLeaders);//Ready
    DEFINE_HANDLER(CMSG_CHANGE_BAG_SLOT_FLAG,                               STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CHANGE_BANK_BAG_SLOT_FLAG,                          STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CHANGE_MONUMENT_APPEARANCE,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleTrophyData);//Ready
    DEFINE_HANDLER(CMSG_CHANGE_REALM_TICKET,                                STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleBattlenetChangeRealmTicket);//Ready
    DEFINE_HANDLER(CMSG_CHANGE_SUB_GROUP,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChangeSubGroupOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHARACTER_CHECK_UPGRADE,                            STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CHARACTER_RENAME_REQUEST,                           STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleCharRenameOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHARACTER_UPGRADE_MANUAL_UNREVOKE_REQUEST,          STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CHARACTER_UPGRADE_START,                            STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CHAR_CUSTOMIZE,                                     STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleCharCustomizeOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHAR_DELETE,                                        STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleCharDeleteOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHAR_RACE_OR_FACTION_CHANGE,                        STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleCharRaceOrFactionChangeOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHAT_ADDON_MESSAGE,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChatAddonMessageOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHAT_ADDON_MESSAGE_TARGETED,                        STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChatAddonMessageTargetedOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHAT_CHANNEL_ANNOUNCEMENTS,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChannelCommand);//Ready
    DEFINE_HANDLER(CMSG_CHAT_CHANNEL_BAN,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChannelPlayerCommand);//Ready
    DEFINE_HANDLER(CMSG_CHAT_CHANNEL_DECLINE_INVITE,                        STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChannelCommand);//Ready
    DEFINE_HANDLER(CMSG_CHAT_CHANNEL_DISPLAY_LIST,                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChannelCommand);//Ready
    DEFINE_HANDLER(CMSG_CHAT_CHANNEL_INVITE,                                STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChannelPlayerCommand);//Ready
    DEFINE_HANDLER(CMSG_CHAT_CHANNEL_KICK,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChannelPlayerCommand);//Ready
    DEFINE_HANDLER(CMSG_CHAT_CHANNEL_LIST,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChannelCommand);//Ready
    DEFINE_HANDLER(CMSG_CHAT_CHANNEL_MODERATOR,                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChannelPlayerCommand);//Ready
    DEFINE_HANDLER(CMSG_CHAT_CHANNEL_OWNER,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChannelCommand);//Ready
    DEFINE_HANDLER(CMSG_CHAT_CHANNEL_PASSWORD,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChannelPassword);//Ready
    DEFINE_HANDLER(CMSG_CHAT_CHANNEL_SET_OWNER,                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChannelPlayerCommand);//Ready
    DEFINE_HANDLER(CMSG_CHAT_CHANNEL_SILENCE_ALL,                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChannelPlayerCommand);//Ready
    DEFINE_HANDLER(CMSG_CHAT_CHANNEL_UNBAN,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChannelPlayerCommand);//Ready
    DEFINE_HANDLER(CMSG_CHAT_CHANNEL_UNMODERATOR,                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChannelPlayerCommand);//Ready
    DEFINE_HANDLER(CMSG_CHAT_CHANNEL_UNSILENCE_ALL,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChannelPlayerCommand);//Ready
    DEFINE_HANDLER(CMSG_CHAT_JOIN_CHANNEL,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleJoinChannel);//Ready
    DEFINE_HANDLER(CMSG_CHAT_LEAVE_CHANNEL,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLeaveChannel);//Ready
    DEFINE_HANDLER(CMSG_CHAT_MESSAGE_AFK,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChatMessageAFKOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHAT_MESSAGE_CHANNEL,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChatMessageChannelOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHAT_MESSAGE_DND,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChatMessageDNDOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHAT_MESSAGE_EMOTE,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChatMessageEmoteOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHAT_MESSAGE_GUILD,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChatMessageOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHAT_MESSAGE_INSTANCE_CHAT,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChatMessageOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHAT_MESSAGE_OFFICER,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChatMessageOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHAT_MESSAGE_PARTY,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChatMessageOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHAT_MESSAGE_RAID,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChatMessageOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHAT_MESSAGE_RAID_WARNING,                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChatMessageOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHAT_MESSAGE_SAY,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChatMessageOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHAT_MESSAGE_WHISPER,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChatMessageWhisperOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHAT_MESSAGE_YELL,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChatMessageOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHAT_REGISTER_ADDON_PREFIXES,                       STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAddonRegisteredPrefixesOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHAT_REPORT_FILTERED,                               STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CHAT_REPORT_IGNORED,                                STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChatIgnoredOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHAT_UNREGISTER_ALL_ADDON_PREFIXES,                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleUnregisterAllAddonPrefixesOpcode);//Ready
    DEFINE_HANDLER(CMSG_CHECK_CHARACTER_NAME_AVAILABILITY,                  STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleCheckCharacterNameAvailability);//Ready
    DEFINE_HANDLER(CMSG_CHECK_IS_ADVENTURE_MAP_POI_VALID,                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleQueryAdventureMapPOI);//Ready
    DEFINE_HANDLER(CMSG_CHOICE_RESPONSE,                                    STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandlePlayerChoiceResponse);//Ready
    DEFINE_HANDLER(CMSG_CHROMIE_TIME_SELECT_EXPANSION,                      STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChromieTimeSelectExpansionOpcode);//Ready
    DEFINE_HANDLER(CMSG_CLAIM_WEEKLY_REWARD,                                STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CLEAR_NEW_APPEARANCE,                               STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CLEAR_RAID_MARKER,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleClearRaidMarker);
    DEFINE_HANDLER(CMSG_CLEAR_TRADE_ITEM,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleClearTradeItemOpcode);
    DEFINE_HANDLER(CMSG_CLIENT_PORT_GRAVEYARD,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandlePortGraveyard);
    DEFINE_HANDLER(CMSG_CLOSE_INTERACTION,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCloseInteraction);
    DEFINE_HANDLER(CMSG_CLOSE_QUEST_CHOICE,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCloseQuestChoice);
    DEFINE_HANDLER(CMSG_CLOSE_RUNEFORGE_INTERACTION,                        STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CLUB_FINDER_APPLICATION_RESPONSE,                   STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CLUB_FINDER_GET_APPLICANTS_LIST,                    STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CLUB_FINDER_POST,                                   STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CLUB_FINDER_REQUEST_CLUBS_DATA,                     STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CLUB_FINDER_REQUEST_CLUBS_LIST,                     STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CLUB_FINDER_REQUEST_MEMBERSHIP_TO_CLUB,             STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CLUB_FINDER_REQUEST_PENDING_CLUBS_LIST,             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLFGListClubFinderRequestPendingClubList);
    DEFINE_HANDLER(CMSG_CLUB_FINDER_REQUEST_SUBSCRIBED_CLUB_POSTING_IDS,    STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CLUB_FINDER_RESPOND_TO_APPLICANT,                   STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CLUB_FINDER_WHISPER_APPLICANT_REQUEST,              STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CLUB_PRESENCE_SUBSCRIBE,                            STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_COLLECTION_ITEM_SET_FAVORITE,                       STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCollectionItemSetFavorite);
    DEFINE_HANDLER(CMSG_COMMENTATOR_SPECTATE,                               STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_COMMENTATOR_ENABLE,                                 STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleCommentatorEnable);
    DEFINE_HANDLER(CMSG_COMMENTATOR_ENTER_INSTANCE,                         STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleCommentatorEnterInstance);
    DEFINE_HANDLER(CMSG_COMMENTATOR_EXIT_INSTANCE,                          STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleCommentatorExitInstance);
    DEFINE_HANDLER(CMSG_COMMENTATOR_GET_MAP_INFO,                           STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleCommentatorGetMapInfo);
    DEFINE_HANDLER(CMSG_COMMENTATOR_GET_PLAYER_COOLDOWNS,                   STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_COMMENTATOR_GET_PLAYER_INFO,                        STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleCommentatorGetPlayerInfo);
    DEFINE_HANDLER(CMSG_COMMENTATOR_START_WARGAME,                          STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_COMMERCE_TOKEN_GET_COUNT,                           STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_COMMERCE_TOKEN_GET_LOG,                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCommerceTokenGetLog);
    DEFINE_HANDLER(CMSG_COMMERCE_TOKEN_GET_MARKET_PRICE,                    STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCommerceTokenGetMarketPrice);
    DEFINE_HANDLER(CMSG_COMPLAINT,                                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleComplaint);
    DEFINE_HANDLER(CMSG_COMPLETE_CINEMATIC,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCompleteCinematic);
    DEFINE_HANDLER(CMSG_COMPLETE_MOVIE,                                     STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCompleteMovie);
    DEFINE_HANDLER(CMSG_CONFIRM_ARTIFACT_RESPEC,                            STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleConfirmArtifactRespec);
    DEFINE_HANDLER(CMSG_CONFIRM_RESPEC_WIPE,                                STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleConfirmRespecWipeOpcode);
    DEFINE_HANDLER(CMSG_CONNECT_TO_FAILED,                                  STATUS_NEVER,     PROCESS_INPLACE,      &WorldSession::Handle_EarlyProccess);
    DEFINE_HANDLER(CMSG_CONSUMABLE_TOKEN_BUY,                               STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CONSUMABLE_TOKEN_BUY_AT_MARKET_PRICE,               STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CONSUMABLE_TOKEN_CAN_VETERAN_BUY,                   STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CONSUMABLE_TOKEN_REDEEM,                            STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CONSUMABLE_TOKEN_REDEEM_CONFIRMATION,               STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CONTRIBUTION_CONTRIBUTE,                            STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleContributionCollectorContribute);
    DEFINE_HANDLER(CMSG_CONTRIBUTION_LAST_UPDATE_REQUEST,                   STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CONVERSATION_CINEMATIC_READY,                       STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_CONVERSATION_LINE_STARTED,                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleConversationLineStarted);
    DEFINE_HANDLER(CMSG_CONVERT_RAID,                                       STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleConvertRaidOpcode);
    DEFINE_HANDLER(CMSG_COVENANT_RENOWN_REQUEST_CATCHUP_STATE,              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCovenantRenownRequestCatchupState);
    DEFINE_HANDLER(CMSG_CREATE_CHARACTER,                                   STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleCharCreateOpcode);
    DEFINE_HANDLER(CMSG_CREATE_SHIPMENT,                                    STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleCreateShipment); //ready
    DEFINE_HANDLER(CMSG_DB_QUERY_BULK,                                      STATUS_AUTHED,    PROCESS_INPLACE,      &WorldSession::HandleDBQueryBulk);
    DEFINE_HANDLER(CMSG_DECLINE_GUILD_INVITES,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleDeclineGuildInvites);
    DEFINE_HANDLER(CMSG_DECLINE_PETITION,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleDeclinePetition);
    DEFINE_HANDLER(CMSG_DELETE_EQUIPMENT_SET,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleDeleteEquipmentSet);
    DEFINE_HANDLER(CMSG_DEL_FRIEND,                                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleDelFriendOpcode);
    DEFINE_HANDLER(CMSG_DEL_IGNORE,                                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleDelIgnoreOpcode);
    DEFINE_HANDLER(CMSG_DEPOSIT_REAGENT_BANK,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleReagentBankDepositOpcode);
    DEFINE_HANDLER(CMSG_DESTROY_ITEM,                                       STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleDestroyItemOpcode);
    DEFINE_HANDLER(CMSG_DF_BOOT_PLAYER_VOTE,                                STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLfgSetBootVoteOpcode);
    DEFINE_HANDLER(CMSG_DF_CONFIRM_EXPAND_SEARCH,                           STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_DF_GET_JOIN_STATUS,                                 STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleDFGetJoinStatus); //Ready
    DEFINE_HANDLER(CMSG_DF_GET_SYSTEM_INFO,                                 STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleDFGetSystemInfo); //Ready
    DEFINE_HANDLER(CMSG_DF_JOIN,                                            STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLfgJoinOpcode); //Ready
    DEFINE_HANDLER(CMSG_DF_LEAVE,                                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLfgLeaveOpcode); //Ready
    DEFINE_HANDLER(CMSG_DF_PROPOSAL_RESPONSE,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLfgProposalResultOpcode); //Ready
    DEFINE_HANDLER(CMSG_DF_READY_CHECK_RESPONSE,                            STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLfgCompleteReadyCheck); //Ready
    DEFINE_HANDLER(CMSG_DF_SET_ROLES,                                       STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLfgSetRolesOpcode); //Ready
    DEFINE_HANDLER(CMSG_DF_TELEPORT,                                        STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLfgTeleportOpcode); //Ready
    DEFINE_HANDLER(CMSG_DISCARDED_TIME_SYNC_ACKS,                           STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_DISMISS_CRITTER,                                    STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleDismissCritter); //Ready
    DEFINE_HANDLER(CMSG_DO_COUNTDOWN,                                       STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_DO_MASTER_LOOT_ROLL,                                STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleDoMasterLootRoll); //Ready
    DEFINE_HANDLER(CMSG_DO_READY_CHECK,                                     STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleDoReadyCheckOpcode); //Ready
    DEFINE_HANDLER(CMSG_DUEL_RESPONSE,                                      STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleDuelResponseOpcode); //Ready
    DEFINE_HANDLER(CMSG_EJECT_PASSENGER,                                    STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleEjectPassenger); //Ready
    DEFINE_HANDLER(CMSG_EMOTE,                                              STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleEmoteOpcode); //Ready
    DEFINE_HANDLER(CMSG_ENABLE_NAGLE,                                       STATUS_NEVER,     PROCESS_INPLACE,      &WorldSession::Handle_EarlyProccess); //Ready
    DEFINE_HANDLER(CMSG_ENABLE_TAXI_NODE,                                   STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleEnableTaxiNodeOpcode); //Ready
    DEFINE_HANDLER(CMSG_ENGINE_SURVEY,                                      STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleEngineSurvey);
    DEFINE_HANDLER(CMSG_ENTER_ENCRYPTED_MODE_ACK,                           STATUS_NEVER,     PROCESS_INPLACE,      &WorldSession::Handle_EarlyProccess); //Ready
    DEFINE_HANDLER(CMSG_ENUM_CHARACTERS,                                    STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleCharEnumOpcode); //Ready
    DEFINE_HANDLER(CMSG_ENUM_CHARACTERS_DELETED_BY_CLIENT,                  STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleCharUndeleteEnumOpcode); //Ready
    DEFINE_HANDLER(CMSG_FAR_SIGHT,                                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleFarSightOpcode);
    DEFINE_HANDLER(CMSG_GAME_EVENT_DEBUG_DISABLE,                           STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_GAME_EVENT_DEBUG_ENABLE,                            STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_GAME_OBJ_REPORT_USE,                                STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleGameobjectReportUse);
    DEFINE_HANDLER(CMSG_GAME_OBJ_USE,                                       STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleGameObjectUseOpcode);
    DEFINE_HANDLER(CMSG_GARRISON_ADD_FOLLOWER_HEALTH,                       STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleGarrisonAddFollowerHealth);
    DEFINE_HANDLER(CMSG_GARRISON_ASSIGN_FOLLOWER_TO_BUILDING,               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonAssignFollowerToBuilding);
    DEFINE_HANDLER(CMSG_GARRISON_CANCEL_CONSTRUCTION,                       STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonCancelConstruction);
    DEFINE_HANDLER(CMSG_GARRISON_CHECK_UPGRADEABLE,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonCheckUpgradeable);
    DEFINE_HANDLER(CMSG_GARRISON_COMPLETE_MISSION,                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonCompleteMission);
    DEFINE_HANDLER(CMSG_GARRISON_FULLY_HEAL_ALL_FOLLOWERS,                  STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleGarrisonFullyHealAllFollowers);
    DEFINE_HANDLER(CMSG_GARRISON_GENERATE_RECRUITS,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonGenerateRecruits);
    DEFINE_HANDLER(CMSG_GARRISON_GET_CLASS_SPEC_CATEGORY_INFO,              STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleRequestClassSpecCategoryInfo);
    DEFINE_HANDLER(CMSG_GARRISON_GET_MAP_DATA,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonGetMapData);
    DEFINE_HANDLER(CMSG_GARRISON_GET_MISSION_REWARD,                        STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonGetMissionReward);
    DEFINE_HANDLER(CMSG_GARRISON_LEARN_TALENT,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonLearnTalent);
    DEFINE_HANDLER(CMSG_GARRISON_MISSION_BONUS_ROLL,                        STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonMissionBonusRoll);
    DEFINE_HANDLER(CMSG_GARRISON_PURCHASE_BUILDING,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonPurchaseBuilding);
    DEFINE_HANDLER(CMSG_GARRISON_RECRUIT_FOLLOWER,                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonRecruitFollower);
    DEFINE_HANDLER(CMSG_GARRISON_REMOVE_FOLLOWER,                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonRemoveFollower);
    DEFINE_HANDLER(CMSG_GARRISON_REMOVE_FOLLOWER_FROM_BUILDING,             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonRemoveFollowerFromBuilding);
    DEFINE_HANDLER(CMSG_GARRISON_RENAME_FOLLOWER,                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonRenameFollower);
    DEFINE_HANDLER(CMSG_GARRISON_REQUEST_BLUEPRINT_AND_SPECIALIZATION_DATA, STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonRequestBlueprintAndSpecializationData);
    DEFINE_HANDLER(CMSG_GARRISON_REQUEST_SHIPMENT_INFO,                     STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonRequestShipmentInfo);
    DEFINE_HANDLER(CMSG_GARRISON_RESEARCH_TALENT,                           STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleGarrisonResearchTalent);
    DEFINE_HANDLER(CMSG_GARRISON_SET_BUILDING_ACTIVE,                       STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleGarrisonSetBuildingActive);
    DEFINE_HANDLER(CMSG_GARRISON_SET_FOLLOWER_FAVORITE,                     STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleGarrisonSetFollowerFavorite);
    DEFINE_HANDLER(CMSG_GARRISON_SET_FOLLOWER_INACTIVE,                     STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonSetFollowerInactive);
    DEFINE_HANDLER(CMSG_GARRISON_SET_RECRUITMENT_PREFERENCES,               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonSetRecruitmentPreferences);
    DEFINE_HANDLER(CMSG_GARRISON_SOCKET_TALENT,                             STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_GARRISON_START_MISSION,                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonStartMission);
    DEFINE_HANDLER(CMSG_GARRISON_SWAP_BUILDINGS,                            STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleGarrisonSwapBuildings);
    DEFINE_HANDLER(CMSG_GENERATE_RANDOM_CHARACTER_NAME,                     STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleRandomizeCharNameOpcode);
    DEFINE_HANDLER(CMSG_GET_ACCOUNT_CHARACTER_LIST,                         STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_GET_ACCOUNT_NOTIFICATIONS,                          STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_GET_GARRISON_INFO,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGetGarrisonInfo);
    DEFINE_HANDLER(CMSG_GET_ITEM_PURCHASE_DATA,                             STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleGetItemPurchaseData);
    DEFINE_HANDLER(CMSG_GET_LANDING_PAGE_SHIPMENTS,                         STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleGetLandingPageShipmentsOpcode);
    DEFINE_HANDLER(CMSG_GET_MIRROR_IMAGE_DATA,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleMirrorImageDataRequest);
    DEFINE_HANDLER(CMSG_GET_PVP_OPTIONS_ENABLED,                            STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleGetPVPOptionsEnabled);
    DEFINE_HANDLER(CMSG_GET_RAF_ACCOUNT_INFO,                               STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_GET_REMAINING_GAME_TIME,                            STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_GET_TROPHY_LIST,                                    STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL); //Ready Thordekk
    DEFINE_HANDLER(CMSG_GET_UNDELETE_CHARACTER_COOLDOWN_STATUS,             STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleGetUndeleteCooldownStatus);//Ready 
    DEFINE_HANDLER(CMSG_GET_VAS_ACCOUNT_CHARACTER_LIST,                     STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_GET_VAS_TRANSFER_TARGET_REALM_LIST,                 STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_GM_TICKET_ACKNOWLEDGE_SURVEY,                       STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_GM_TICKET_GET_CASE_STATUS,                          STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleGMTicketGetCaseStatusOpcode);
    DEFINE_HANDLER(CMSG_GM_TICKET_GET_SYSTEM_STATUS,                        STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleGMTicketSystemStatusOpcode);
    DEFINE_HANDLER(CMSG_GOSSIP_REFRESH_OPTIONS,                             STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_GOSSIP_SELECT_OPTION,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGossipSelectOptionOpcode);
    DEFINE_HANDLER(CMSG_GUILD_ADD_BATTLENET_FRIEND,                         STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_GUILD_ADD_RANK,                                     STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildAddRank);
    DEFINE_HANDLER(CMSG_GUILD_ASSIGN_MEMBER_RANK,                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildAssignRank);
    DEFINE_HANDLER(CMSG_GUILD_AUTO_DECLINE_INVITATION,                      STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_GUILD_BANK_ACTIVATE,                                STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildBankActivate);
    DEFINE_HANDLER(CMSG_GUILD_BANK_BUY_TAB,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildBankBuyTab);
    DEFINE_HANDLER(CMSG_GUILD_BANK_DEPOSIT_MONEY,                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildBankDepositMoney);
    DEFINE_HANDLER(CMSG_GUILD_BANK_LOG_QUERY,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildBankLogQuery);
    DEFINE_HANDLER(CMSG_GUILD_BANK_QUERY_TAB,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildBankQueryTab);
    DEFINE_HANDLER(CMSG_GUILD_BANK_REMAINING_WITHDRAW_MONEY_QUERY,          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildBankMoneyWithdrawn);
    DEFINE_HANDLER(CMSG_GUILD_BANK_SET_TAB_TEXT,                            STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildBankSetTabText);
    DEFINE_HANDLER(CMSG_GUILD_BANK_TEXT_QUERY,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildBankTextQuery);
    DEFINE_HANDLER(CMSG_GUILD_BANK_UPDATE_TAB,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildBankUpdateTab);
    DEFINE_HANDLER(CMSG_GUILD_BANK_WITHDRAW_MONEY,                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildBankWithdrawMoney);
    DEFINE_HANDLER(CMSG_GUILD_CHALLENGE_UPDATE_REQUEST,                     STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildChallengeUpdateRequest);
    DEFINE_HANDLER(CMSG_GUILD_CHANGE_NAME_REQUEST,                          STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_GUILD_DECLINE_INVITATION,                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildDeclineInvitation);
    DEFINE_HANDLER(CMSG_GUILD_DELETE,                                       STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildDelete);
    DEFINE_HANDLER(CMSG_GUILD_DELETE_RANK,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildDeleteRank);
    DEFINE_HANDLER(CMSG_GUILD_DEMOTE_MEMBER,                                STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildDemoteMember);
    DEFINE_HANDLER(CMSG_GUILD_EVENT_LOG_QUERY,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildEventLogQuery);
    DEFINE_HANDLER(CMSG_GUILD_GET_ACHIEVEMENT_MEMBERS,                      STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildGetAchievementMembers);
    DEFINE_HANDLER(CMSG_GUILD_GET_RANKS,                                    STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildGetRanks);
    DEFINE_HANDLER(CMSG_GUILD_GET_ROSTER,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildGetRoster);
    DEFINE_HANDLER(CMSG_GUILD_INVITE_BY_NAME,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildInviteByName);
    DEFINE_HANDLER(CMSG_GUILD_LEAVE,                                        STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildLeave);
    DEFINE_HANDLER(CMSG_GUILD_NEWS_UPDATE_STICKY,                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildNewsUpdateSticky);
    DEFINE_HANDLER(CMSG_GUILD_OFFICER_REMOVE_MEMBER,                        STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildOfficerRemoveMember);
    DEFINE_HANDLER(CMSG_GUILD_PERMISSIONS_QUERY,                            STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildPermissionsQuery);
    DEFINE_HANDLER(CMSG_GUILD_PROMOTE_MEMBER,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildPromoteMember);
    DEFINE_HANDLER(CMSG_GUILD_QUERY_MEMBERS_FOR_RECIPE,                     STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_GUILD_QUERY_MEMBER_RECIPES,                         STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_GUILD_QUERY_NEWS,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildQueryNews);
    DEFINE_HANDLER(CMSG_GUILD_QUERY_RECIPES,                                STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_GUILD_REPLACE_GUILD_MASTER,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildReplaceGuildMaster);
    DEFINE_HANDLER(CMSG_GUILD_SET_ACHIEVEMENT_TRACKING,                     STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildSetAchievementTracking);
    DEFINE_HANDLER(CMSG_GUILD_SET_FOCUSED_ACHIEVEMENT,                      STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildSetFocusedAchievement);
    DEFINE_HANDLER(CMSG_GUILD_SET_GUILD_MASTER,                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildSetGuildMaster);
    DEFINE_HANDLER(CMSG_GUILD_SET_MEMBER_NOTE,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildSetMemberNote);
    DEFINE_HANDLER(CMSG_GUILD_SET_RANK_PERMISSIONS,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildSetRankPermissions);
    DEFINE_HANDLER(CMSG_GUILD_SHIFT_RANK,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildShiftRank);
    DEFINE_HANDLER(CMSG_GUILD_UPDATE_INFO_TEXT,                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildUpdateInfoText);
    DEFINE_HANDLER(CMSG_GUILD_UPDATE_MOTD_TEXT,                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildUpdateMotdText);
    DEFINE_HANDLER(CMSG_HEARTH_AND_RESURRECT,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleHearthAndResurrect);
    DEFINE_HANDLER(CMSG_HIDE_QUEST_CHOICE,                                  STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_HOTFIX_REQUEST,                                     STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleHotfixRequest);
    DEFINE_HANDLER(CMSG_IGNORE_TRADE,                                       STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleIgnoreTradeOpcode);
    DEFINE_HANDLER(CMSG_INITIATE_ROLE_POLL,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleInitiateRolePoll);
    DEFINE_HANDLER(CMSG_INITIATE_TRADE,                                     STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleInitiateTradeOpcode);
    DEFINE_HANDLER(CMSG_INSPECT,                                            STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleInspectOpcode);
    DEFINE_HANDLER(CMSG_INSTANCE_LOCK_RESPONSE,                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleInstanceLockResponse);
    DEFINE_HANDLER(CMSG_ISLAND_QUEUE,                                       STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_ITEM_PURCHASE_REFUND,                               STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleItemRefund);
    DEFINE_HANDLER(CMSG_ITEM_TEXT_QUERY,                                    STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleItemTextQuery);
    DEFINE_HANDLER(CMSG_JOIN_PET_BATTLE_QUEUE,                              STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_JOIN_RATED_BATTLEGROUND,                            STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleJoinRatedBattleground);
    DEFINE_HANDLER(CMSG_KEEP_ALIVE,                                         STATUS_NEVER,     PROCESS_INPLACE,      &WorldSession::Handle_EarlyProccess);
    DEFINE_HANDLER(CMSG_KEYBOUND_OVERRIDE,                                  STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_LATENCY_REPORT,                                     STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_LEARN_PVP_TALENTS,                                  STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleLearnPvpTalentsOpcode);
    DEFINE_HANDLER(CMSG_LEARN_TALENTS,                                      STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleLearnTalentsOpcode);
    DEFINE_HANDLER(CMSG_LEAVE_GROUP,                                        STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLeaveGroupOpcode);
    DEFINE_HANDLER(CMSG_LEAVE_PET_BATTLE_QUEUE,                             STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_LFG_LIST_APPLY_TO_GROUP,                            STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLFGListApplyToGroup);
    DEFINE_HANDLER(CMSG_LFG_LIST_CANCEL_APPLICATION,                        STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLFGListCancelApplication);
    DEFINE_HANDLER(CMSG_LFG_LIST_DECLINE_APPLICANT,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLFGListDeclineApplicant);
    DEFINE_HANDLER(CMSG_LFG_LIST_GET_STATUS,                                STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLFGListGetStatus);
    DEFINE_HANDLER(CMSG_LFG_LIST_INVITE_APPLICANT,                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLFGListInviteApplicant);
    DEFINE_HANDLER(CMSG_LFG_LIST_INVITE_RESPONSE,                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLFGListInviteResponse);
    DEFINE_HANDLER(CMSG_LFG_LIST_JOIN,                                      STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLFGListJoin);
    DEFINE_HANDLER(CMSG_LFG_LIST_LEAVE,                                     STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLFGListLeave);
    DEFINE_HANDLER(CMSG_LFG_LIST_SEARCH,                                    STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLFGListSearch);
    DEFINE_HANDLER(CMSG_LFG_LIST_UPDATE_REQUEST,                            STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLFGListUpdateRequest);
    DEFINE_HANDLER(CMSG_LIST_INVENTORY,                                     STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleListInventoryOpcode);
    DEFINE_HANDLER(CMSG_LIVE_REGION_ACCOUNT_RESTORE,                        STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_LIVE_REGION_CHARACTER_COPY,                         STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_LIVE_REGION_GET_ACCOUNT_CHARACTER_LIST,             STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_LIVE_REGION_KEY_BINDINGS_COPY,                      STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_LOADING_SCREEN_NOTIFY,                              STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleLoadScreenOpcode);
    DEFINE_HANDLER(CMSG_LOAD_SELECTED_TROPHY,                               STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_LOGOUT_CANCEL,                                      STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLogoutCancelOpcode);
    DEFINE_HANDLER(CMSG_LOGOUT_INSTANT,                                     STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_LOGOUT_REQUEST,                                     STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLogoutRequestOpcode);
    DEFINE_HANDLER(CMSG_LOG_DISCONNECT,                                     STATUS_NEVER,     PROCESS_INPLACE,      &WorldSession::Handle_EarlyProccess);
    DEFINE_HANDLER(CMSG_LOG_STREAMING_ERROR,                                STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_LOOT_ITEM,                                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleAutostoreLootItemOpcode);
    DEFINE_HANDLER(CMSG_LOOT_MONEY,                                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLootMoneyOpcode);
    DEFINE_HANDLER(CMSG_LOOT_RELEASE,                                       STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLootReleaseOpcode);
    DEFINE_HANDLER(CMSG_LOOT_ROLL,                                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLootRoll);
    DEFINE_HANDLER(CMSG_LOOT_UNIT,                                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLootOpcode);
    DEFINE_HANDLER(CMSG_LOW_LEVEL_RAID1,                                    STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_LOW_LEVEL_RAID2,                                    STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_MAIL_CREATE_TEXT_ITEM,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleMailCreateTextItem);
    DEFINE_HANDLER(CMSG_MAIL_DELETE,                                        STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleMailDelete);
    DEFINE_HANDLER(CMSG_MAIL_GET_LIST,                                      STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGetMailList);
    DEFINE_HANDLER(CMSG_MAIL_MARK_AS_READ,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleMailMarkAsRead);
    DEFINE_HANDLER(CMSG_MAIL_RETURN_TO_SENDER,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleMailReturnToSender);
    DEFINE_HANDLER(CMSG_MAIL_TAKE_ITEM,                                     STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleMailTakeItem);
    DEFINE_HANDLER(CMSG_MAIL_TAKE_MONEY,                                    STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleMailTakeMoney);
    DEFINE_HANDLER(CMSG_MAKE_CONTITIONAL_APPEARANCE_PERMANENT,              STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_MASTER_LOOT_ITEM,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleLootMasterGiveOpcode);
    DEFINE_HANDLER(CMSG_MERGE_GUILD_BANK_ITEM_WITH_GUILD_BANK_ITEM,         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleMergeGuildBankItemWithGuildBankItem);
    DEFINE_HANDLER(CMSG_MERGE_GUILD_BANK_ITEM_WITH_ITEM,                    STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleMergeGuildBankItemWithItem);
    DEFINE_HANDLER(CMSG_MERGE_ITEM_WITH_GUILD_BANK_ITEM,                    STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleMergeItemWithGuildBankItem);
    DEFINE_HANDLER(CMSG_MINIMAP_PING,                                       STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleMinimapPingOpcode);
    DEFINE_HANDLER(CMSG_MISSILE_TRAJECTORY_COLLISION,                       STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleMissileTrajectoryCollision);
    DEFINE_HANDLER(CMSG_MOUNT_CLEAR_FANFARE,                                STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_MOUNT_SET_FAVORITE,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleMountSetFavorite);
    DEFINE_HANDLER(CMSG_MOUNT_SPECIAL_ANIM,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleMountSpecialAnimOpcode);
    DEFINE_HANDLER(CMSG_MOVE_APPLY_INERTIA_ACK,                             STATUS_UNHANDLED, PROCESS_THREADSAFE,   &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_MOVE_APPLY_MOVEMENT_FORCE_ACK,                      STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMoveApplyMovementForceAck);
    DEFINE_HANDLER(CMSG_MOVE_CHANGE_TRANSPORT,                              STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_CHANGE_VEHICLE_SEATS,                          STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMoveChangeVehicleSeats);
    DEFINE_HANDLER(CMSG_MOVE_COLLISION_DISABLE_ACK,                         STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementAckMessage);
    DEFINE_HANDLER(CMSG_MOVE_COLLISION_ENABLE_ACK,                          STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementAckMessage);
    DEFINE_HANDLER(CMSG_MOVE_DISMISS_VEHICLE,                               STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMoveDismissVehicle);
    DEFINE_HANDLER(CMSG_MOVE_DOUBLE_JUMP,                                   STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_ENABLE_DOUBLE_JUMP_ACK,                        STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementAckMessage);
    DEFINE_HANDLER(CMSG_MOVE_ENABLE_SWIM_TO_FLY_TRANS_ACK,                  STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementAckMessage);
    DEFINE_HANDLER(CMSG_MOVE_FALL_LAND,                                     STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_FALL_RESET,                                    STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_FEATHER_FALL_ACK,                              STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementAckMessage);
    DEFINE_HANDLER(CMSG_MOVE_FORCE_FLIGHT_BACK_SPEED_CHANGE_ACK,            STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleForceSpeedChangeAck);
    DEFINE_HANDLER(CMSG_MOVE_FORCE_FLIGHT_SPEED_CHANGE_ACK,                 STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleForceSpeedChangeAck);
    DEFINE_HANDLER(CMSG_MOVE_FORCE_PITCH_RATE_CHANGE_ACK,                   STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleForceSpeedChangeAck);
    DEFINE_HANDLER(CMSG_MOVE_FORCE_ROOT_ACK,                                STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementAckMessage);
    DEFINE_HANDLER(CMSG_MOVE_FORCE_RUN_BACK_SPEED_CHANGE_ACK,               STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleForceSpeedChangeAck);
    DEFINE_HANDLER(CMSG_MOVE_FORCE_RUN_SPEED_CHANGE_ACK,                    STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleForceSpeedChangeAck);
    DEFINE_HANDLER(CMSG_MOVE_FORCE_SWIM_BACK_SPEED_CHANGE_ACK,              STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleForceSpeedChangeAck);
    DEFINE_HANDLER(CMSG_MOVE_FORCE_SWIM_SPEED_CHANGE_ACK,                   STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleForceSpeedChangeAck);
    DEFINE_HANDLER(CMSG_MOVE_FORCE_TURN_RATE_CHANGE_ACK,                    STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleForceSpeedChangeAck);
    DEFINE_HANDLER(CMSG_MOVE_FORCE_UNROOT_ACK,                              STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementAckMessage);
    DEFINE_HANDLER(CMSG_MOVE_FORCE_WALK_SPEED_CHANGE_ACK,                   STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleForceSpeedChangeAck);
    DEFINE_HANDLER(CMSG_MOVE_GRAVITY_DISABLE_ACK,                           STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementAckMessage);
    DEFINE_HANDLER(CMSG_MOVE_GRAVITY_ENABLE_ACK,                            STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementAckMessage);
    DEFINE_HANDLER(CMSG_MOVE_GUILD_BANK_ITEM,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleMoveGuildBankItem);
    DEFINE_HANDLER(CMSG_MOVE_HEARTBEAT,                                     STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_HOVER_ACK,                                     STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementAckMessage);
    DEFINE_HANDLER(CMSG_MOVE_INERTIA_DISABLE_ACK,                           STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementAckMessage);
    DEFINE_HANDLER(CMSG_MOVE_INERTIA_ENABLE_ACK,                            STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementAckMessage);
    DEFINE_HANDLER(CMSG_MOVE_INIT_ACTIVE_MOVER_COMPLETE,                    STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMoveInitActiveMoverComplete);//Thordekk
    DEFINE_HANDLER(CMSG_MOVE_JUMP,                                          STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_KNOCK_BACK_ACK,                                STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMoveKnockBackAck);
    DEFINE_HANDLER(CMSG_MOVE_REMOVE_INERTIA_ACK,                            STATUS_UNHANDLED, PROCESS_THREADSAFE,   &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_MOVE_REMOVE_MOVEMENT_FORCES,                        STATUS_UNHANDLED, PROCESS_THREADSAFE,   &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_MOVE_REMOVE_MOVEMENT_FORCE_ACK,                     STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMoveRemoveMovementForceAck);
    DEFINE_HANDLER(CMSG_MOVE_SEAMLESS_TRANSFER_COMPLETE,                    STATUS_UNHANDLED, PROCESS_THREADSAFE,   &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_MOVE_SET_CAN_FLY_ACK,                               STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementAckMessage);
    DEFINE_HANDLER(CMSG_MOVE_SET_CAN_TURN_WHILE_FALLING_ACK,                STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementAckMessage);
    DEFINE_HANDLER(CMSG_MOVE_SET_COLLISION_HEIGHT_ACK,                      STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleSetCollisionHeightAck);
    DEFINE_HANDLER(CMSG_MOVE_SET_FACING,                                    STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_SET_FACING_HEARTBEAT,                          STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_SET_FLY,                                       STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_SET_IGNORE_MOVEMENT_FORCES_ACK,                STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementAckMessage);
    DEFINE_HANDLER(CMSG_MOVE_SET_MOD_MOVEMENT_FORCE_MAGNITUDE_ACK,          STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMoveSetModMovementForceMagnitudeAck);
    DEFINE_HANDLER(CMSG_MOVE_SET_PITCH,                                     STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_SET_RUN_MODE,                                  STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_SET_TURN_RATE_CHEAT,                           STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_MOVE_SET_VEHICLE_REC_ID_ACK,                        STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMoveSetVehicleRecAck);
    DEFINE_HANDLER(CMSG_MOVE_SET_WALK_MODE,                                 STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_SPLINE_DONE,                                   STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMoveSplineDoneOpcode);
    DEFINE_HANDLER(CMSG_MOVE_START_ASCEND,                                  STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_START_BACKWARD,                                STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_START_DESCEND,                                 STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_START_FORWARD,                                 STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_START_PITCH_DOWN,                              STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_START_PITCH_UP,                                STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_START_STRAFE_LEFT,                             STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_START_STRAFE_RIGHT,                            STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_START_SWIM,                                    STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_START_TURN_LEFT,                               STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_START_TURN_RIGHT,                              STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_STOP,                                          STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_STOP_ASCEND,                                   STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_STOP_PITCH,                                    STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_STOP_STRAFE,                                   STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_STOP_SWIM,                                     STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_STOP_TURN,                                     STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_TELEPORT_ACK,                                  STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMoveTeleportAck);
    DEFINE_HANDLER(CMSG_MOVE_TIME_SKIPPED,                                  STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleMoveTimeSkippedOpcode);
    DEFINE_HANDLER(CMSG_MOVE_UPDATE_FALL_SPEED,                             STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementOpcodes);
    DEFINE_HANDLER(CMSG_MOVE_WATER_WALK_ACK,                                STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleMovementAckMessage);
    DEFINE_HANDLER(CMSG_MYTHIC_PLUS_REQUEST_MAP_STATS,                      STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleMythicPlusRequestMapStats);
    DEFINE_HANDLER(CMSG_NEUTRAL_PLAYER_SELECT_FACTION,                      STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE,  &WorldSession::HandleSelectFactionOpcode);
    DEFINE_HANDLER(CMSG_NEXT_CINEMATIC_CAMERA,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleNextCinematicCamera);
    DEFINE_HANDLER(CMSG_OBJECT_UPDATE_FAILED,                               STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleObjectUpdateFailedOpcode);
    DEFINE_HANDLER(CMSG_OBJECT_UPDATE_RESCUED,                              STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleObjectUpdateRescuedOpcode);
    DEFINE_HANDLER(CMSG_OFFER_PETITION,                                     STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleOfferPetition);
    DEFINE_HANDLER(CMSG_OPENING_CINEMATIC,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleOpeningCinematic);
    DEFINE_HANDLER(CMSG_OPEN_ITEM,                                          STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleOpenItemOpcode);
    DEFINE_HANDLER(CMSG_OPEN_MISSION_NPC,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonOpenMissionNpc);
    DEFINE_HANDLER(CMSG_OPEN_SHIPMENT_NPC,                                  STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_OPEN_TRADESKILL_NPC,                                STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_OPT_OUT_OF_LOOT,                                    STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleOptOutOfLootOpcode);
    DEFINE_HANDLER(CMSG_OVERRIDE_SCREEN_FLASH,                              STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_PARTY_INVITE,                                       STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandlePartyInviteOpcode);
    DEFINE_HANDLER(CMSG_PARTY_INVITE_RESPONSE,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandlePartyInviteResponseOpcode);
    DEFINE_HANDLER(CMSG_PARTY_UNINVITE,                                     STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandlePartyUninviteOpcode);
    DEFINE_HANDLER(CMSG_PERFORM_ITEM_INTERACTION,                           STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_PETITION_BUY,                                       STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandlePetitionBuy);
    DEFINE_HANDLER(CMSG_PETITION_RENAME_GUILD,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandlePetitionRenameGuild);
    DEFINE_HANDLER(CMSG_PETITION_SHOW_LIST,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandlePetitionShowList);
    DEFINE_HANDLER(CMSG_PETITION_SHOW_SIGNATURES,                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandlePetitionShowSignatures);
    DEFINE_HANDLER(CMSG_PET_ABANDON,                                        STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandlePetAbandon);
    DEFINE_HANDLER(CMSG_PET_ACTION,                                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandlePetAction);
    DEFINE_HANDLER(CMSG_PET_BATTLE_FINAL_NOTIFY,                            STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_PET_BATTLE_INPUT,                                   STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_PET_BATTLE_QUEUE_PROPOSE_MATCH_RESULT,              STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_PET_BATTLE_QUIT_NOTIFY,                             STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_PET_BATTLE_REPLACE_FRONT_PET,                       STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_PET_BATTLE_REQUEST_PVP,                             STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_PET_BATTLE_REQUEST_UPDATE,                          STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_PET_BATTLE_REQUEST_WILD,                            STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_PET_BATTLE_SCRIPT_ERROR_NOTIFY,                     STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_PET_BATTLE_WILD_LOCATION_FAIL,                      STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_PET_CANCEL_AURA,                                    STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandlePetCancelAuraOpcode);
    DEFINE_HANDLER(CMSG_PET_CAST_SPELL,                                     STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandlePetCastSpellOpcode);
    DEFINE_HANDLER(CMSG_PET_RENAME,                                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandlePetRename);
    DEFINE_HANDLER(CMSG_PET_SET_ACTION,                                     STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandlePetSetAction);
    DEFINE_HANDLER(CMSG_PET_SPELL_AUTOCAST,                                 STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandlePetSpellAutocastOpcode);
    DEFINE_HANDLER(CMSG_PET_STOP_ATTACK,                                    STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandlePetStopAttack);
    DEFINE_HANDLER(CMSG_PING,                                               STATUS_NEVER,     PROCESS_INPLACE,      &WorldSession::Handle_EarlyProccess);
    DEFINE_HANDLER(CMSG_PLAYER_LOGIN,                                       STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandlePlayerLoginOpcode);
    DEFINE_HANDLER(CMSG_PUSH_QUEST_TO_PARTY,                                STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandlePushQuestToParty);
    DEFINE_HANDLER(CMSG_PVP_LOG_DATA,                                       STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandlePVPLogDataOpcode);
    DEFINE_HANDLER(CMSG_QUERY_BATTLE_PET_NAME,                              STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleQueryBattlePetName);
    DEFINE_HANDLER(CMSG_QUERY_CORPSE_LOCATION_FROM_CLIENT,                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleQueryCorpseLocation);
    DEFINE_HANDLER(CMSG_QUERY_CORPSE_TRANSPORT,                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleQueryCorpseTransport);
    DEFINE_HANDLER(CMSG_QUERY_COUNTDOWN_TIMER,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleQueryWorldCountwodnTimer);
    DEFINE_HANDLER(CMSG_QUERY_CREATURE,                                     STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleCreatureQuery);
    DEFINE_HANDLER(CMSG_QUERY_GAME_OBJECT,                                  STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleGameObjectQueryOpcode);
    DEFINE_HANDLER(CMSG_QUERY_GARRISON_PET_NAME,                            STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_QUERY_GUILD_INFO,                                   STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleGuildQueryOpcode);
    DEFINE_HANDLER(CMSG_QUERY_INSPECT_ACHIEVEMENTS,                         STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleQueryInspectAchievements);
    DEFINE_HANDLER(CMSG_QUERY_NEXT_MAIL_TIME,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleQueryNextMailTime);
    DEFINE_HANDLER(CMSG_QUERY_NPC_TEXT,                                     STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleNpcTextQueryOpcode);
    DEFINE_HANDLER(CMSG_QUERY_PAGE_TEXT,                                    STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleQueryPageText);
    DEFINE_HANDLER(CMSG_QUERY_PETITION,                                     STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleQueryPetition);
    DEFINE_HANDLER(CMSG_QUERY_PET_NAME,                                     STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleQueryPetName);
    DEFINE_HANDLER(CMSG_QUERY_PLAYER_NAMES,                                 STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleQueryPlayerNames);
    DEFINE_HANDLER(CMSG_QUERY_PLAYER_NAMES_FOR_COMMUNITY,                   STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_QUERY_PLAYER_NAME_BY_COMMUNITY_ID,                  STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_QUERY_QUEST_COMPLETION_NPCS,                        STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleQueryQuestCompletionNPCs);
    DEFINE_HANDLER(CMSG_QUERY_QUEST_INFO,                                   STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleQuestQueryOpcode);
    DEFINE_HANDLER(CMSG_QUERY_REALM_NAME,                                   STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleQueryRealmName);
    DEFINE_HANDLER(CMSG_QUERY_SCENARIO_POI,                                 STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleQueryScenarioPOI);
    DEFINE_HANDLER(CMSG_QUERY_TIME,                                         STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleQueryTimeOpcode);
    DEFINE_HANDLER(CMSG_QUERY_TREASURE_PICKER,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleQueryQuestRewards);
    DEFINE_HANDLER(CMSG_QUERY_VOID_STORAGE,                                 STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleVoidStorageQuery);
    DEFINE_HANDLER(CMSG_QUEST_CONFIRM_ACCEPT,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleQuestConfirmAccept);
    DEFINE_HANDLER(CMSG_QUEST_GIVER_ACCEPT_QUEST,                           STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleQuestgiverAcceptQuestOpcode);
    DEFINE_HANDLER(CMSG_QUEST_GIVER_CHOOSE_REWARD,                          STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleQuestgiverChooseRewardOpcode);
    DEFINE_HANDLER(CMSG_QUEST_GIVER_CLOSE_QUEST,                            STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleQuestgiverCloseQuest);
    DEFINE_HANDLER(CMSG_QUEST_GIVER_COMPLETE_QUEST,                         STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleQuestgiverCompleteQuest);
    DEFINE_HANDLER(CMSG_QUEST_GIVER_HELLO,                                  STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleQuestgiverHelloOpcode);
    DEFINE_HANDLER(CMSG_QUEST_GIVER_QUERY_QUEST,                            STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleQuestgiverQueryQuestOpcode);
    DEFINE_HANDLER(CMSG_QUEST_GIVER_REQUEST_REWARD,                         STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleQuestgiverRequestRewardOpcode);
    DEFINE_HANDLER(CMSG_QUEST_GIVER_STATUS_MULTIPLE_QUERY,                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleQuestgiverStatusMultipleQuery);
    DEFINE_HANDLER(CMSG_QUEST_GIVER_STATUS_QUERY,                           STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleQuestgiverStatusQueryOpcode);
    DEFINE_HANDLER(CMSG_QUEST_LOG_REMOVE_QUEST,                             STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleQuestLogRemoveQuest);
    DEFINE_HANDLER(CMSG_QUEST_POI_QUERY,                                    STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleQuestPOIQuery);
    DEFINE_HANDLER(CMSG_QUEST_PUSH_RESULT,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleQuestPushResult);
    DEFINE_HANDLER(CMSG_QUEST_SESSION_BEGIN_RESPONSE,                       STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_QUEST_SESSION_REQUEST_START,                        STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_QUEST_SESSION_REQUEST_STOP,                         STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_QUEUED_MESSAGES_END,                                STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_QUICK_JOIN_AUTO_ACCEPT_REQUESTS,                    STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleQuickJoinAutoAcceptRequests);
    DEFINE_HANDLER(CMSG_QUICK_JOIN_REQUEST_INVITE,                          STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_QUICK_JOIN_REQUEST_INVITE_WITH_CONFIRMATION,        STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_QUICK_JOIN_RESPOND_TO_INVITE,                       STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_QUICK_JOIN_SIGNAL_TOAST_DISPLAYED,                  STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_RAF_CLAIM_ACTIVITY_REWARD,                          STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_RAF_CLAIM_NEXT_REWARD,                              STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_RAF_GENERATE_RECRUITMENT_LINK,                      STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_RAF_UPDATE_RECRUITMENT_INFO,                        STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_RANDOM_ROLL,                                        STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleRandomRollOpcode);
    DEFINE_HANDLER(CMSG_READY_CHECK_RESPONSE,                               STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleReadyCheckResponseOpcode);
    DEFINE_HANDLER(CMSG_READ_ITEM,                                          STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleReadItem);
    DEFINE_HANDLER(CMSG_RECLAIM_CORPSE,                                     STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleReclaimCorpse);
    DEFINE_HANDLER(CMSG_REMOVE_NEW_ITEM,                                    STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleRemoveNewItem);
    DEFINE_HANDLER(CMSG_REMOVE_RAF_RECRUIT,                                 STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_REORDER_CHARACTERS,                                 STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleReorderCharacters);
    DEFINE_HANDLER(CMSG_REPAIR_ITEM,                                        STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleRepairItemOpcode);
    DEFINE_HANDLER(CMSG_REPLACE_TROPHY,                                     STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_REPOP_REQUEST,                                      STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleRepopRequest);
    DEFINE_HANDLER(CMSG_REPORT_CLIENT_VARIABLES,                            STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_REPORT_ENABLED_ADDONS,                              STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_REPORT_KEYBINDING_EXECUTION_COUNTS,                 STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_REPORT_PVP_PLAYER_AFK,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleReportPvPAFK);
    DEFINE_HANDLER(CMSG_REPORT_SERVER_LAG,                                  STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_REPORT_STUCK_IN_COMBAT,                             STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_REQUEST_ACCOUNT_DATA,                               STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleRequestAccountData);
    DEFINE_HANDLER(CMSG_REQUEST_AREA_POI_UPDATE,                            STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleRequestAreaPoiUpdate);
    DEFINE_HANDLER(CMSG_REQUEST_BATTLEFIELD_STATUS,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleRequestBattlefieldStatusOpcode);
    DEFINE_HANDLER(CMSG_REQUEST_CATEGORY_COOLDOWNS,                         STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleRequestCategoryCooldowns);
    DEFINE_HANDLER(CMSG_REQUEST_CEMETERY_LIST,                              STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleRequestCemeteryList);
    DEFINE_HANDLER(CMSG_REQUEST_CHARACTER_GUILD_FOLLOW_INFO,                STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_REQUEST_CONQUEST_FORMULA_CONSTANTS,                 STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleRequestConquestFormulaConstants);
    DEFINE_HANDLER(CMSG_REQUEST_COVENANT_CALLINGS,                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE,  &WorldSession::HandleRequestCovenantCallings);
    DEFINE_HANDLER(CMSG_REQUEST_CROWD_CONTROL_SPELL,                        STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_REQUEST_FORCED_REACTIONS,                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleRequestForcedReactionsOpcode);
    DEFINE_HANDLER(CMSG_REQUEST_GARRISON_TALENT_WORLD_QUEST_UNLOCKS,        STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleRequestGarrissonTalentsWQUnlocks); //Thordekk
    DEFINE_HANDLER(CMSG_REQUEST_GUILD_PARTY_STATE,                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGuildRequestPartyState);
    DEFINE_HANDLER(CMSG_REQUEST_GUILD_REWARDS_LIST,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleRequestGuildRewardsList);
    DEFINE_HANDLER(CMSG_REQUEST_LATEST_SPLASH_SCREEN,                       STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleRequestLatestSplashScreen);
    DEFINE_HANDLER(CMSG_REQUEST_LFG_LIST_BLACKLIST,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleRequestLFGListBlackList);
    DEFINE_HANDLER(CMSG_REQUEST_MYTHIC_PLUS_AFFIXES,                        STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleMythicPlusCurrentAffixes);
    DEFINE_HANDLER(CMSG_REQUEST_MYTHIC_PLUS_SEASON_DATA,                    STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleMythicPlusSeasonData);
    DEFINE_HANDLER(CMSG_REQUEST_PARTY_JOIN_UPDATES,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleRequestPartyJoinUpdates);
    DEFINE_HANDLER(CMSG_REQUEST_PARTY_MEMBER_STATS,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleRequestPartyMemberStatsOpcode);
    DEFINE_HANDLER(CMSG_REQUEST_PET_INFO,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleRequestPetInfo);
    DEFINE_HANDLER(CMSG_REQUEST_PLAYED_TIME,                                STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandlePlayedTime);
    DEFINE_HANDLER(CMSG_REQUEST_PVP_REWARDS,                                STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleRequestPvpReward);
    DEFINE_HANDLER(CMSG_REQUEST_RAID_INFO,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleRequestRaidInfoOpcode);
    DEFINE_HANDLER(CMSG_REQUEST_RATED_PVP_INFO,                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleRequestRatedPvpInfo);
    DEFINE_HANDLER(CMSG_REQUEST_REALM_GUILD_MASTER_INFO,                    STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_REQUEST_RESEARCH_HISTORY,                           STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_REQUEST_SCHEDULED_PVP_INFO,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleRequestScheduledPVPInfo); //Thordekk
    DEFINE_HANDLER(CMSG_REQUEST_STABLED_PETS,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleRequestStabledPets);
    DEFINE_HANDLER(CMSG_REQUEST_VEHICLE_EXIT,                               STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleRequestVehicleExit);
    DEFINE_HANDLER(CMSG_REQUEST_VEHICLE_NEXT_SEAT,                          STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleRequestVehicleNextSeat);
    DEFINE_HANDLER(CMSG_REQUEST_VEHICLE_PREV_SEAT,                          STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleRequestVehiclePrevSeat);
    DEFINE_HANDLER(CMSG_REQUEST_VEHICLE_SWITCH_SEAT,                        STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleRequestVehicleSwitchSeat);
    DEFINE_HANDLER(CMSG_REQUEST_WEEKLY_REWARDS,                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleMythicPlusRequestWeeklyRewards);
    DEFINE_HANDLER(CMSG_REQUEST_WORLD_QUEST_UPDATE,                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleRequestWorldQuestUpdate);
    DEFINE_HANDLER(CMSG_RESET_CHALLENGE_MODE,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleResetChallengeMode);
    DEFINE_HANDLER(CMSG_RESET_CHALLENGE_MODE_CHEAT,                         STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_RESET_INSTANCES,                                    STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleResetInstancesOpcode);
    DEFINE_HANDLER(CMSG_RESURRECT_RESPONSE,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleResurrectResponse);
    DEFINE_HANDLER(CMSG_REVERT_MONUMENT_APPEARANCE,                         STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_RIDE_VEHICLE_INTERACT,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleRideVehicleInteract);
    DEFINE_HANDLER(CMSG_SAVE_CUF_PROFILES,                                  STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleSaveCUFProfiles);
    DEFINE_HANDLER(CMSG_SAVE_EQUIPMENT_SET,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleEquipmentSetSave);
    DEFINE_HANDLER(CMSG_SAVE_GUILD_EMBLEM,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSaveGuildEmblem);
    DEFINE_HANDLER(CMSG_SCENE_PLAYBACK_CANCELED,                            STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleScenePlaybackCanceled);
    DEFINE_HANDLER(CMSG_SCENE_PLAYBACK_COMPLETE,                            STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleScenePlaybackComplete);
    DEFINE_HANDLER(CMSG_SCENE_TRIGGER_EVENT,                                STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSceneTriggerEvent);
    DEFINE_HANDLER(CMSG_SELF_RES,                                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSelfResOpcode);
    DEFINE_HANDLER(CMSG_SELL_ITEM,                                          STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleSellItemOpcode);
    DEFINE_HANDLER(CMSG_SEND_CHARACTER_CLUB_INVITATION,                     STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_SEND_CONTACT_LIST,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleContactListOpcode);
    DEFINE_HANDLER(CMSG_SEND_MAIL,                                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSendMail);
    DEFINE_HANDLER(CMSG_SEND_TEXT_EMOTE,                                    STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleTextEmoteOpcode);
    DEFINE_HANDLER(CMSG_SERVER_TIME_OFFSET_REQUEST,                         STATUS_AUTHED,    PROCESS_INPLACE,      &WorldSession::HandleServerTimeOffsetRequest);
    DEFINE_HANDLER(CMSG_SET_ACHIEVEMENTS_HIDDEN,                            STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_SET_ACTION_BAR_TOGGLES,                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetActionBarToggles);
    DEFINE_HANDLER(CMSG_SET_ACTION_BUTTON,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetActionButtonOpcode);
    DEFINE_HANDLER(CMSG_SET_ACTIVE_MOVER,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetActiveMoverOpcode);
    DEFINE_HANDLER(CMSG_SET_ADVANCED_COMBAT_LOGGING,                        STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleSetAdvancedCombatLogging);
    DEFINE_HANDLER(CMSG_SET_ASSISTANT_LEADER,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetAssistantLeaderOpcode);
    DEFINE_HANDLER(CMSG_SET_BACKPACK_AUTOSORT_DISABLED,                     STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_SET_BANK_AUTOSORT_DISABLED,                         STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_SET_CHAT_DISABLED,                                  STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_SET_CONTACT_NOTES,                                  STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetContactNotesOpcode);
    DEFINE_HANDLER(CMSG_SET_CURRENCY_FLAGS,                                 STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleSetCurrencyFlags);
    DEFINE_HANDLER(CMSG_SET_DIFFICULTY_ID,                                  STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_SET_DUNGEON_DIFFICULTY,                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetDungeonDifficultyOpcode);
    DEFINE_HANDLER(CMSG_SET_EVERYONE_IS_ASSISTANT,                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetEveryoneIsAssistant);
    DEFINE_HANDLER(CMSG_SET_FACTION_AT_WAR,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetFactionAtWar);
    DEFINE_HANDLER(CMSG_SET_FACTION_INACTIVE,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetFactionInactiveOpcode);
    DEFINE_HANDLER(CMSG_SET_FACTION_NOT_AT_WAR,                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetFactionNotAtWar);
    DEFINE_HANDLER(CMSG_SET_GAME_EVENT_DEBUG_VIEW_STATE,                    STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_SET_INSERT_ITEMS_LEFT_TO_RIGHT,                     STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_SET_LOOT_METHOD,                                    STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetLootMethodOpcode);
    DEFINE_HANDLER(CMSG_SET_LOOT_SPECIALIZATION,                            STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetLootSpecialization);
    DEFINE_HANDLER(CMSG_SET_PARTY_ASSIGNMENT,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetPartyAssignment);
    DEFINE_HANDLER(CMSG_SET_PARTY_LEADER,                                   STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleSetPartyLeaderOpcode);
    DEFINE_HANDLER(CMSG_SET_PET_SLOT,                                       STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleSetPetSlot);
    DEFINE_HANDLER(CMSG_SET_PLAYER_DECLINED_NAMES,                          STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleSetPlayerDeclinedNames);
    DEFINE_HANDLER(CMSG_SET_PREFERRED_CEMETERY,                             STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_SET_PVP,                                            STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetPvP);
    DEFINE_HANDLER(CMSG_SET_RAID_DIFFICULTY,                                STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetRaidDifficultyOpcode);
    DEFINE_HANDLER(CMSG_SET_ROLE,                                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetRoleOpcode);
    DEFINE_HANDLER(CMSG_SET_SAVED_INSTANCE_EXTEND,                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetSavedInstanceExtend);
    DEFINE_HANDLER(CMSG_SET_SELECTION,                                      STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetSelectionOpcode);
    DEFINE_HANDLER(CMSG_SET_SHEATHED,                                       STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleSetSheathedOpcode);
    DEFINE_HANDLER(CMSG_SET_SORT_BAGS_RIGHT_TO_LEFT,                        STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_SET_TAXI_BENCHMARK_MODE,                            STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleSetTaxiBenchmark);
    DEFINE_HANDLER(CMSG_SET_TITLE,                                          STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleSetTitleOpcode);
    DEFINE_HANDLER(CMSG_SET_TRADE_CURRENCY,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetTradeCurrencyOpcode);
    DEFINE_HANDLER(CMSG_SET_TRADE_GOLD,                                     STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetTradeGoldOpcode);
    DEFINE_HANDLER(CMSG_SET_TRADE_ITEM,                                     STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetTradeItemOpcode);
    DEFINE_HANDLER(CMSG_SET_USING_PARTY_GARRISON,                           STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_SET_WAR_MODE,                                       STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetWarMode);
    DEFINE_HANDLER(CMSG_SET_WATCHED_FACTION,                                STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSetWatchedFactionOpcode);
    DEFINE_HANDLER(CMSG_SHOW_TRADE_SKILL,                                   STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_SIGN_PETITION,                                      STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSignPetition);
    DEFINE_HANDLER(CMSG_SILENCE_PARTY_TALKER,                               STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_SOCIAL_CONTRACT_REQUEST,                            STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleSocialContractRequest);
    DEFINE_HANDLER(CMSG_SOCKET_GEMS,                                        STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleSocketGems);
    DEFINE_HANDLER(CMSG_SORT_BAGS,                                          STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleSortBags);
    DEFINE_HANDLER(CMSG_SORT_BANK_BAGS,                                     STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleSortBankBags);
    DEFINE_HANDLER(CMSG_SORT_REAGENT_BANK_BAGS,                             STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleSortReagentBankBags);
    DEFINE_HANDLER(CMSG_SPELL_CLICK,                                        STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleSpellClick);
    DEFINE_HANDLER(CMSG_SPIRIT_HEALER_ACTIVATE,                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSpiritHealerActivate);
    DEFINE_HANDLER(CMSG_SPLIT_GUILD_BANK_ITEM,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSplitGuildBankItem);
    DEFINE_HANDLER(CMSG_SPLIT_GUILD_BANK_ITEM_TO_INVENTORY,                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSplitGuildBankItemToInventory);
    DEFINE_HANDLER(CMSG_SPLIT_ITEM,                                         STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleSplitItemOpcode);
    DEFINE_HANDLER(CMSG_SPLIT_ITEM_TO_GUILD_BANK,                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSplitItemToGuildBank);
    DEFINE_HANDLER(CMSG_STAND_STATE_CHANGE,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleStandStateChangeOpcode);
    DEFINE_HANDLER(CMSG_START_CHALLENGE_MODE,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleChallengeModeStart);
    DEFINE_HANDLER(CMSG_START_SPECTATOR_WAR_GAME,                           STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_START_WAR_GAME,                                     STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_STORE_GUILD_BANK_ITEM,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleStoreGuildBankItem);
    DEFINE_HANDLER(CMSG_SUBMIT_USER_FEEDBACK,                               STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSubmitUserFeedback);
    DEFINE_HANDLER(CMSG_SUBSCRIPTION_INTERSTITIAL_RESPONSE,                 STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_SUMMON_RESPONSE,                                    STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSummonResponseOpcode);
    DEFINE_HANDLER(CMSG_SUPPORT_TICKET_SUBMIT_COMPLAINT,                    STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSupportTicketSubmitComplaint);
    DEFINE_HANDLER(CMSG_SURRENDER_ARENA,                                    STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_SUSPEND_COMMS_ACK,                                  STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_SUSPEND_TOKEN_RESPONSE,                             STATUS_TRANSFER,  PROCESS_THREADUNSAFE, &WorldSession::HandleSuspendTokenResponse);
    DEFINE_HANDLER(CMSG_SWAP_GUILD_BANK_ITEM_WITH_GUILD_BANK_ITEM,          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSwapGuildBankItemWithGuildBankItem);
    DEFINE_HANDLER(CMSG_SWAP_INV_ITEM,                                      STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleSwapInvItemOpcode);
    DEFINE_HANDLER(CMSG_SWAP_ITEM,                                          STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleSwapItem);
    DEFINE_HANDLER(CMSG_SWAP_ITEM_WITH_GUILD_BANK_ITEM,                     STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSwapItemWithGuildBankItem);
    DEFINE_HANDLER(CMSG_SWAP_SUB_GROUPS,                                    STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleSwapSubGroupsOpcode);
    DEFINE_HANDLER(CMSG_SWAP_VOID_ITEM,                                     STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleVoidSwapItem);
    DEFINE_HANDLER(CMSG_TABARD_VENDOR_ACTIVATE,                             STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleTabardVendorActivateOpcode);
    DEFINE_HANDLER(CMSG_TALK_TO_GOSSIP,                                     STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleGossipHelloOpcode);
    DEFINE_HANDLER(CMSG_TAXI_NODE_STATUS_QUERY,                             STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleTaxiNodeStatusQueryOpcode);
    DEFINE_HANDLER(CMSG_TAXI_QUERY_AVAILABLE_NODES,                         STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleTaxiQueryAvailableNodesOpcode);
    DEFINE_HANDLER(CMSG_TAXI_REQUEST_EARLY_LANDING,                         STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleTaxiRequestEarlyLanding);
    DEFINE_HANDLER(CMSG_TIME_ADJUSTMENT_RESPONSE,                           STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_TIME_SYNC_RESPONSE,                                 STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleTimeSyncResponse);
    DEFINE_HANDLER(CMSG_TIME_SYNC_RESPONSE_DROPPED,                         STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_TIME_SYNC_RESPONSE_FAILED,                          STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_TOGGLE_DIFFICULTY,                                  STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_TOGGLE_PVP,                                         STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleTogglePvP);
    DEFINE_HANDLER(CMSG_TOTEM_DESTROYED,                                    STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleTotemDestroyed);
    DEFINE_HANDLER(CMSG_TOY_CLEAR_FANFARE,                                  STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleToyClearFanfare);
    DEFINE_HANDLER(CMSG_TRADE_SKILL_SET_FAVORITE,                           STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_TRAINER_BUY_SPELL,                                  STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleTrainerBuySpellOpcode);
    DEFINE_HANDLER(CMSG_TRAINER_LIST,                                       STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleTrainerListOpcode);
    DEFINE_HANDLER(CMSG_TRANSMOGRIFY_ITEMS,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleTransmogrifyItems);
    DEFINE_HANDLER(CMSG_TURN_IN_PETITION,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleTurnInPetition);
    DEFINE_HANDLER(CMSG_TUTORIAL,                                           STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleTutorialFlag);
    DEFINE_HANDLER(CMSG_TWITTER_CHECK_STATUS,                               STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_TWITTER_CONNECT,                                    STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_TWITTER_DISCONNECT,                                 STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_UI_MAP_QUEST_LINES_REQUEST,                         STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleUiMapQuestLinesRequest); 
    DEFINE_HANDLER(CMSG_UNACCEPT_TRADE,                                     STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleUnacceptTradeOpcode);
    DEFINE_HANDLER(CMSG_UNDELETE_CHARACTER,                                 STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleCharUndeleteOpcode);
    DEFINE_HANDLER(CMSG_UNLEARN_SKILL,                                      STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleUnlearnSkillOpcode);
    DEFINE_HANDLER(CMSG_UNLEARN_SPECIALIZATION,                             STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_UNLOCK_VOID_STORAGE,                                STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleVoidStorageUnlock);
    DEFINE_HANDLER(CMSG_UPDATE_ACCOUNT_DATA,                                STATUS_AUTHED,    PROCESS_THREADUNSAFE, &WorldSession::HandleUpdateAccountData);
    DEFINE_HANDLER(CMSG_UPDATE_AREA_TRIGGER_VISUAL,                         STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_UPDATE_CLIENT_SETTINGS,                             STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_UPDATE_MISSILE_TRAJECTORY,                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleUpdateMissileTrajectory);
    DEFINE_HANDLER(CMSG_UPDATE_RAID_TARGET,                                 STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleUpdateRaidTargetOpcode);
    DEFINE_HANDLER(CMSG_UPDATE_SPELL_VISUAL,                                STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_UPDATE_VAS_PURCHASE_STATES,                         STATUS_AUTHED,    PROCESS_INPLACE,      &WorldSession::HandleUpdateVasPurchaseStates);
    DEFINE_HANDLER(CMSG_UPGRADE_GARRISON,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleGarrisonUpgrade);
    DEFINE_HANDLER(CMSG_UPGRADE_RUNEFORGE_LEGENDARY,                        STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_USED_FOLLOW,                                        STATUS_UNHANDLED, PROCESS_INPLACE,      &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_USE_CRITTER_ITEM,                                   STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleUseCritterItem);
    DEFINE_HANDLER(CMSG_USE_EQUIPMENT_SET,                                  STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleUseEquipmentSet);
    DEFINE_HANDLER(CMSG_USE_ITEM,                                           STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleUseItemOpcode);
    DEFINE_HANDLER(CMSG_USE_TOY,                                            STATUS_LOGGEDIN,  PROCESS_INPLACE,      &WorldSession::HandleUseToy);
    DEFINE_HANDLER(CMSG_VAS_CHECK_TRANSFER_OK,                              STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_VAS_GET_QUEUE_MINUTES,                              STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_VAS_GET_SERVICE_STATUS,                             STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_VIOLENCE_LEVEL,                                     STATUS_AUTHED,    PROCESS_INPLACE,      &WorldSession::HandleViolenceLevel);
    DEFINE_HANDLER(CMSG_VOICE_CHANNEL_STT_TOKEN_REQUEST,                    STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_VOICE_CHAT_JOIN_CHANNEL,                            STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_VOICE_CHAT_LOGIN,                                   STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::Handle_NULL);
    DEFINE_HANDLER(CMSG_VOID_STORAGE_TRANSFER,                              STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleVoidStorageTransfer);
    DEFINE_HANDLER(CMSG_WARDEN3_DATA,                                       STATUS_UNHANDLED, PROCESS_THREADUNSAFE, &WorldSession::HandleWardenData);
    DEFINE_HANDLER(CMSG_WHO,                                                STATUS_LOGGEDIN,  PROCESS_THREADSAFE,   &WorldSession::HandleWhoOpcode);
    DEFINE_HANDLER(CMSG_WHO_IS,                                             STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleWhoIsOpcode);
    DEFINE_HANDLER(CMSG_WORLD_PORT_RESPONSE,                                STATUS_TRANSFER,  PROCESS_THREADUNSAFE, &WorldSession::HandleMoveWorldportAckOpcode);
    DEFINE_HANDLER(CMSG_WRAP_ITEM,                                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleWrapItem);

    //DEFINE_HANDLER(CMSG_BF_MGR_ENTRY_INVITE_RESPONSE,                       STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBfEntryInviteResponse);
    //DEFINE_HANDLER(CMSG_BF_MGR_QUEUE_EXIT_REQUEST,                          STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBfQueueExitRequest);
    //DEFINE_HANDLER(CMSG_BF_MGR_QUEUE_INVITE_RESPONSE,                       STATUS_LOGGEDIN,  PROCESS_THREADUNSAFE, &WorldSession::HandleBfQueueInviteResponse);

#undef DEFINE_HANDLER

#define DEFINE_SERVER_OPCODE_HANDLER(opcode, status, con) \
    static_assert(status == STATUS_NEVER || status == STATUS_UNHANDLED, "Invalid status for server opcode"); \
    ValidateAndSetServerOpcode(opcode, #opcode, status, con)

    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ABORT_NEW_WORLD,                         STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ACCOUNT_COSMETIC_ADDED,                  STATUS_UNHANDLED,    CONNECTION_TYPE_REALM); // TODO IDAPRO
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ACCOUNT_CRITERIA_UPDATE,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ACCOUNT_DATA_TIMES,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ACCOUNT_HEIRLOOM_UPDATE,                 STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ACCOUNT_MOUNT_UPDATE,                    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ACCOUNT_NOTIFICATIONS_RESPONSE,          STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);  // TODO IDAPRO
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ACCOUNT_TOY_UPDATE,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ACCOUNT_TRANSMOG_SET_FAVORITES_UPDATE,   STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ACCOUNT_TRANSMOG_UPDATE,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ACHIEVEMENT_DELETED,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ACHIEVEMENT_EARNED,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ACTIVATE_ESSENCE_FAILED,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ACTIVATE_SOULBIND_FAILED,                STATUS_UNHANDLED,    CONNECTION_TYPE_REALM); // TODO IDAPRO
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ACTIVATE_TAXI_REPLY,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ACTIVE_GLYPHS,                           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ADDON_LIST_REQUEST,                      STATUS_UNHANDLED,    CONNECTION_TYPE_REALM); // TODO IDAPRO
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ADD_BATTLENET_FRIEND_RESPONSE,           STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ADD_ITEM_PASSIVE,                        STATUS_UNHANDLED,    CONNECTION_TYPE_REALM); // TODO IDAPRO
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ADD_LOSS_OF_CONTROL,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);  //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ADD_RUNE_POWER,                          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ADJUST_SPLINE_DURATION,                  STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ADVANCED_COMBAT_LOG,                     STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);// TODO IDAPRO
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ADVENTURE_JOURNAL_DATA_RESPONSE,         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ADVENTURE_MAP_OPEN_NPC,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AE_LOOT_TARGETS,                         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AE_LOOT_TARGET_ACK,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AI_REACTION,                             STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ALLIED_RACE_DETAILS,                     STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ALL_ACCOUNT_CRITERIA,                    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ALL_ACHIEVEMENT_DATA,                    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ALL_GUILD_ACHIEVEMENTS,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_APPLY_MOUNT_EQUIPMENT_RESULT,            STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);// TODO IDAPRO
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ARCHAEOLOGY_SURVERY_CAST,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AREA_POI_UPDATE_RESPONSE,                STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AREA_SPIRIT_HEALER_TIME,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AREA_TRIGGER_DENIED,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AREA_TRIGGER_FORCE_SET_POSITION_AND_FACING, STATUS_UNHANDLED, CONNECTION_TYPE_REALM); // TODO IDAPRO
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AREA_TRIGGER_NO_CORPSE,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AREA_TRIGGER_PLAY_SPELL_VISUAL,          STATUS_UNHANDLED,    CONNECTION_TYPE_REALM); // TODO IDAPRO
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AREA_TRIGGER_RE_PATH,                    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AREA_TRIGGER_RE_SHAPE,                   STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AREA_TRIGGER_UNATTACH,                   STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ARENA_CLEAR_OPPONENTS,                   STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ARENA_CROWD_CONTROL_SPELL_RESULT,        STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ARENA_PREP_OPPONENT_SPECIALIZATIONS,     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ARTIFACT_ENDGAME_POWERS_REFUNDED,        STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ARTIFACT_FORGE_ERROR,                    STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ARTIFACT_RESPEC_PROMPT,                  STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ARTIFACT_XP_GAIN,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ATTACKER_STATE_UPDATE,                   STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ATTACK_START,                            STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ATTACK_STOP,                             STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ATTACK_SWING_ERROR,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ATTACK_SWING_LANDED_LOG,                 STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AUCTIONABLE_TOKEN_AUCTION_SOLD,          STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AUCTIONABLE_TOKEN_SELL_AT_MARKET_PRICE_RESPONSE, STATUS_UNHANDLED, CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AUCTIONABLE_TOKEN_SELL_CONFIRM_REQUIRED, STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AUCTION_CLOSED_NOTIFICATION,             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AUCTION_COMMAND_RESULT,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AUCTION_DISABLE_POSTING_BEFORE_MAINTENANCE, STATUS_UNHANDLED, CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AUCTION_FAVORITE_LIST,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AUCTION_GET_COMMODITY_QUOTE_RESULT,      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AUCTION_HELLO_RESPONSE,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AUCTION_LIST_BIDDED_ITEMS_RESULT,        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AUCTION_LIST_BUCKETS_RESULT,             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AUCTION_LIST_ITEMS_RESULT,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AUCTION_LIST_OWNED_ITEMS_RESULT,         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AUCTION_OUTBID_NOTIFICATION,             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AUCTION_OWNER_BID_NOTIFICATION,          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AUCTION_REPLICATE_RESPONSE,              STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AUCTION_WON_NOTIFICATION,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AURA_POINTS_DEPLETED,                    STATUS_NEVER,        CONNECTION_TYPE_REALM);// Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AURA_UPDATE,                             STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AUTH_CHALLENGE,                          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AUTH_FAILED,                             STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AUTH_RESPONSE,                           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AVAILABLE_HOTFIXES,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_AZERITE_RESPEC_NPC,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BAG_CLEANUP_FINISHED,                    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BARBER_SHOP_RESULT,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATCH_PRESENCE_SUBSCRIPTION,             STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLEFIELD_LIST,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLEFIELD_PORT_DENIED,                 STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLEFIELD_STATUS_ACTIVE,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLEFIELD_STATUS_FAILED,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLEFIELD_STATUS_GROUP_PROPOSAL_FAILED, STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLEFIELD_STATUS_NEED_CONFIRMATION,    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLEFIELD_STATUS_NONE,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLEFIELD_STATUS_QUEUED,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLEFIELD_STATUS_WAIT_FOR_GROUPS,      STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLEGROUND_INFO_THROTTLED,             STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLEGROUND_INIT,                       STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLEGROUND_PLAYER_JOINED,              STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLEGROUND_PLAYER_LEFT,                STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLEGROUND_PLAYER_POSITIONS,           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLEGROUND_POINTS,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLENET_CHALLENGE_ABORT,               STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLENET_CHALLENGE_START,               STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLENET_NOTIFICATION,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLENET_RESPONSE,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_NET_CONNECTION_STATUS,            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    // DekkCore >
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PAY_ACK_FAILED,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PAY_BATTLE_PET_DELIVERED,         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PAY_COLLECTION_ITEM_DELIVERED,    STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PAY_CONFIRM_PURCHASE,             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PAY_DELIVERY_ENDED,               STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PAY_DELIVERY_STARTED,             STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PAY_DISTRIBUTION_ASSIGN_VAS_RESPONSE, STATUS_UNHANDLED, CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PAY_DISTRIBUTION_UNREVOKED,       STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PAY_DISTRIBUTION_UPDATE,          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PAY_GET_DISTRIBUTION_LIST_RESPONSE, STATUS_NEVER,      CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PAY_GET_PRODUCT_LIST_RESPONSE,    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PAY_GET_PURCHASE_LIST_RESPONSE,   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PAY_MOUNT_DELIVERED,              STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PAY_PURCHASE_UPDATE,              STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PAY_START_CHECKOUT,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PAY_START_DISTRIBUTION_ASSIGN_TO_TARGET_RESPONSE, STATUS_NEVER, CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PAY_START_PURCHASE_RESPONSE,      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PAY_VALIDATE_PURCHASE_RESPONSE,   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    // < DekkCore
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PETS_HEALED,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PET_CAGE_DATE_ERROR,              STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PET_DELETED,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PET_ERROR,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PET_JOURNAL,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PET_JOURNAL_LOCK_ACQUIRED,        STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PET_JOURNAL_LOCK_DENIED,          STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PET_LICENSE_CHANGED,              STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PET_RESTORED,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PET_REVOKED,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PET_TRAP_LEVEL,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BATTLE_PET_UPDATES,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BINDER_CONFIRM,                          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BIND_POINT_UPDATE,                       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BLACK_MARKET_BID_ON_ITEM_RESULT,         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BLACK_MARKET_OPEN_RESULT,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BLACK_MARKET_OUTBID,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BLACK_MARKET_REQUEST_ITEMS_RESULT,       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BLACK_MARKET_WON,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BONUS_ROLL_EMPTY,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BOSS_KILL,                               STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BREAK_TARGET,                            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BROADCAST_ACHIEVEMENT,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BROADCAST_SUMMON_CAST,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BROADCAST_SUMMON_RESPONSE,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BUY_FAILED,                              STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_BUY_SUCCEEDED,                           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CACHE_INFO,                              STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CACHE_VERSION,                           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CALENDAR_CLEAR_PENDING_ACTION,           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CALENDAR_COMMAND_RESULT,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CALENDAR_COMMUNITY_INVITE,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CALENDAR_EVENT_REMOVED_ALERT,            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CALENDAR_EVENT_UPDATED_ALERT,            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CALENDAR_INVITE_ADDED,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CALENDAR_INVITE_ALERT,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CALENDAR_INVITE_NOTES,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CALENDAR_INVITE_NOTES_ALERT,             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CALENDAR_INVITE_REMOVED,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CALENDAR_INVITE_REMOVED_ALERT,           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CALENDAR_INVITE_STATUS,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CALENDAR_INVITE_STATUS_ALERT,            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CALENDAR_MODERATOR_STATUS,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CALENDAR_RAID_LOCKOUT_ADDED,             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CALENDAR_RAID_LOCKOUT_REMOVED,           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CALENDAR_RAID_LOCKOUT_UPDATED,           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CALENDAR_SEND_CALENDAR,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CALENDAR_SEND_EVENT,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CALENDAR_SEND_NUM_PENDING,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CAMERA_EFFECT,                           STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CANCEL_AUTO_REPEAT,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CANCEL_COMBAT,                           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CANCEL_ORPHAN_SPELL_VISUAL,              STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CANCEL_SCENE,                            STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CANCEL_SPELL_VISUAL,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CANCEL_SPELL_VISUAL_KIT,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CAN_DUEL_RESULT,                         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CAN_REDEEM_TOKEN_FOR_BALANCE_RESPONSE,   STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CAPTURE_POINT_REMOVED,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CAST_FAILED,                             STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CATEGORY_COOLDOWN,                       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHAIN_MISSILE_BOUNCE,                    STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHALLENGE_MODE_COMPLETE,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHALLENGE_MODE_REQUEST_LEADERS_RESULT,   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHALLENGE_MODE_RESET,                    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHALLENGE_MODE_START,                    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHALLENGE_MODE_UPDATE_DEATH_COUNT,       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHANGE_PLAYER_DIFFICULTY_RESULT,         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHANGE_REALM_TICKET_RESPONSE,            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHANNEL_LIST,                            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHANNEL_NOTIFY,                          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHANNEL_NOTIFY_JOINED,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHANNEL_NOTIFY_LEFT,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHARACTER_CHECK_UPGRADE_RESULT,          STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHARACTER_LOGIN_FAILED,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHARACTER_OBJECT_TEST_RESPONSE,          STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHARACTER_RENAME_RESULT,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHARACTER_UPGRADE_ABORTED,               STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHARACTER_UPGRADE_COMPLETE,              STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHARACTER_UPGRADE_MANUAL_UNREVOKE_RESULT,STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHARACTER_UPGRADE_STARTED,               STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHAR_CUSTOMIZE_FAILURE,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHAR_CUSTOMIZE_SUCCESS,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHAR_FACTION_CHANGE_RESULT,              STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHAT,                                    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHAT_AUTO_RESPONDED,                     STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHAT_DOWN,                               STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHAT_IGNORED_ACCOUNT_MUTED,              STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHAT_IS_DOWN,                            STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHAT_NOT_IN_PARTY,                       STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHAT_PLAYER_AMBIGUOUS,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHAT_PLAYER_NOTFOUND,                    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHAT_RECONNECT,                          STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHAT_REGIONAL_SERVICE_STATUS,            STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHAT_RESTRICTED,                         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHAT_SERVER_MESSAGE,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHEAT_IGNORE_DIMISHING_RETURNS,          STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHECK_ABANDON_NPE,                       STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHECK_CHARACTER_NAME_AVAILABILITY_RESULT,STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHECK_WARGAME_ENTRY,                     STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHROMIE_TIME_OPEN_NPC,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CHROMIE_TIME_SELECT_EXPANSION_SUCCESS,   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CLAIM_RAF_REWARD_RESPONSE,               STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CLEAR_ALL_SPELL_CHARGES,                 STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CLEAR_BOSS_EMOTES,                       STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CLEAR_COOLDOWN,                          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CLEAR_COOLDOWNS,                         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CLEAR_RESURRECT,                         STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CLEAR_SPELL_CHARGES,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CLEAR_TARGET,                            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CLEAR_TREASURE_PICKER_CACHE,             STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CLOSE_ARTIFACT_FORGE,                    STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CLOSE_HEART_FORGE,                       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CLOSE_ITEM_FORGE,                        STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CLUB_FINDER_ERROR_MESSAGE,               STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CLUB_FINDER_GET_CLUB_POSTING_IDS_RESPONSE, STATUS_UNHANDLED,  CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CLUB_FINDER_LOOKUP_CLUB_POSTINGS_LIST,   STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CLUB_FINDER_RESPONSE_CHARACTER_APPLICATION_LIST, STATUS_NEVER, CONNECTION_TYPE_REALM); //Thordekk 
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CLUB_FINDER_RESPONSE_POST_RECRUITMENT_MESSAGE, STATUS_UNHANDLED, CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CLUB_FINDER_UPDATE_APPLICATIONS,         STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CLUB_FINDER_WHISPER_APPLICANT_RESPONSE,  STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_COIN_REMOVED,                            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_COMBAT_EVENT_FAILED,                     STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_COMMENTATOR_MAP_INFO,                    STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_COMMENTATOR_PLAYER_INFO,                 STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_COMMENTATOR_STATE_CHANGED,               STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_COMMERCE_TOKEN_GET_COUNT_RESPONSE,       STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_COMMERCE_TOKEN_GET_LOG_RESPONSE,         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_COMMERCE_TOKEN_GET_MARKET_PRICE_RESPONSE,STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_COMMERCE_TOKEN_UPDATE,                   STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_COMPLAINT_RESULT,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_COMPLETE_SHIPMENT_RESPONSE,              STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CONFIRM_PARTY_INVITE,                    STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CONNECT_TO,                              STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CONQUEST_FORMULA_CONSTANTS,              STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CONSOLE_WRITE,                           STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CONSUMABLE_TOKEN_BUY_AT_MARKET_PRICE_RESPONSE, STATUS_UNHANDLED, CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CONSUMABLE_TOKEN_BUY_CHOICE_REQUIRED,    STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CONSUMABLE_TOKEN_CAN_VETERAN_BUY_RESPONSE, STATUS_UNHANDLED,  CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CONSUMABLE_TOKEN_REDEEM_CONFIRM_REQUIRED,STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CONSUMABLE_TOKEN_REDEEM_RESPONSE,        STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CONTACT_LIST,                            STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CONTRIBUTION_LAST_UPDATE_RESPONSE,       STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CONTROL_UPDATE,                          STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CONVERT_ITEMS_TO_CURRENCY_VALUE,         STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_COOLDOWN_CHEAT,                          STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_COOLDOWN_EVENT,                          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CORPSE_LOCATION,                         STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CORPSE_RECLAIM_DELAY,                    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CORPSE_TRANSPORT_QUERY,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_COVENANT_CALLINGS_AVAILABILITY_RESPONSE, STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_COVENANT_PREVIEW_OPEN_NPC,               STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_COVENANT_RENOWN_OPEN_NPC,                STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_COVENANT_RENOWN_SEND_CATCHUP_STATE,      STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CREATE_CHAR,                             STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CREATE_SHIPMENT_RESPONSE,                STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CRITERIA_DELETED,                        STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CRITERIA_UPDATE,                         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CROSSED_INEBRIATION_THRESHOLD,           STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_CUSTOM_LOAD_SCREEN,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DAILY_QUESTS_RESET,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DAMAGE_CALC_LOG,                         STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DB_REPLY,                                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DEATH_RELEASE_LOC,                       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DEBUG_MENU_MANAGER_FULL_UPDATE,          STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DEFENSE_MESSAGE,                         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DELETE_CHAR,                             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DELETE_EXPIRED_MISSIONS_RESULT,          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DESTROY_ARENA_UNIT,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DESTRUCTIBLE_BUILDING_DAMAGE,            STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DIFFERENT_INSTANCE_FROM_PARTY,           STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DISENCHANT_CREDIT,                       STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DISMOUNT_RESULT,                         STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DISPEL_FAILED,                           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DISPLAY_GAME_ERROR,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DISPLAY_PLAYER_CHOICE,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DISPLAY_PROMOTION,                       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DISPLAY_QUEST_POPUP,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DISPLAY_SOULBIND_UPDATE_MESSAGE,         STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DISPLAY_TOAST,                           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DISPLAY_WORLD_TEXT,                      STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DONT_AUTO_PUSH_SPELLS_TO_ACTION_BAR,     STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DROP_NEW_CONNECTION,                     STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DUEL_ARRANGED,                           STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DUEL_COMPLETE,                           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DUEL_COUNTDOWN,                          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DUEL_IN_BOUNDS,                          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DUEL_OUT_OF_BOUNDS,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DUEL_REQUESTED,                          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DUEL_WINNER,                             STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_DURABILITY_DAMAGE_DEATH,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_EMOTE,                                   STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ENABLE_BARBER_SHOP,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ENCHANTMENT_LOG,                         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ENCOUNTER_END,                           STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ENCOUNTER_START,                         STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_END_LIGHTNING_STORM,                     STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ENTER_ENCRYPTED_MODE,                    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ENUM_CHARACTERS_RESULT,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ENUM_VAS_PURCHASE_STATES_RESPONSE,       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ENVIRONMENTAL_DAMAGE_LOG,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_EQUIPMENT_SET_ID,                        STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_EXPECTED_SPAM_RECORDS,                   STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_EXPLORATION_EXPERIENCE,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_EXTERNAL_TRANSACTION_ID_GENERATED,       STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_FACTION_BONUS_INFO,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_FAILED_PLAYER_CONDITION,                 STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_FAILED_QUEST_TURN_IN,                    STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_FEATURE_SYSTEM_STATUS,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_FEATURE_SYSTEM_STATUS_GLUE_SCREEN,       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_FEIGN_DEATH_RESISTED,                    STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_FISH_ESCAPED,                            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_FISH_NOT_HOOKED,                         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_FLIGHT_SPLINE_SYNC,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_FORCED_DEATH_UPDATE,                     STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_FORCE_ANIM,                              STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_FORCE_ANIMATIONS,                        STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_FORCE_OBJECT_RELINK,                     STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_FRIEND_STATUS,                           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GAIN_MAW_POWER,                          STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GAME_OBJECT_ACTIVATE_ANIM_KIT,           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GAME_OBJECT_BASE,                        STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GAME_OBJECT_CUSTOM_ANIM,                 STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GAME_OBJECT_DESPAWN,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GAME_OBJECT_PLAY_SPELL_VISUAL,           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GAME_OBJECT_PLAY_SPELL_VISUAL_KIT,       STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GAME_OBJECT_RESET_STATE,                 STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GAME_OBJECT_SET_STATE_LOCAL,             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GAME_OBJECT_UI_LINK,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GAME_SPEED_SET,                          STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GAME_TIME_SET,                           STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GAME_TIME_UPDATE,                        STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_ACTIVATE_MISSION_BONUS_ABILITY, STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_ADD_EVENT,                      STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_ADD_FOLLOWER_RESULT,            STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_ADD_MISSION_RESULT,             STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_ADD_SPEC_GROUPS,                STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_APPLY_TALENT_SOCKET_DATA_CHANGES, STATUS_UNHANDLED,  CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_ASSIGN_FOLLOWER_TO_BUILDING_RESULT, STATUS_NEVER,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_AUTO_TROOP_MIN_LEVEL_UPDATE_RESULT, STATUS_UNHANDLED, CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_BUILDING_ACTIVATED,             STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_BUILDING_REMOVED,               STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_BUILDING_SET_ACTIVE_SPECIALIZATION_RESULT, STATUS_UNHANDLED, CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_CHANGE_MISSION_START_TIME_RESULT,STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_CLEAR_COLLECTION,               STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_CLEAR_EVENT_LIST,               STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_CLEAR_SPEC_GROUPS,              STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_COLLECTION_REMOVE_ENTRY,        STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_COLLECTION_UPDATE_ENTRY,        STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_COMPLETE_BUILDING_CONSTRUCTION_RESULT, STATUS_UNHANDLED, CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_COMPLETE_MISSION_RESULT,        STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_CREATE_RESULT,                  STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_DELETE_MISSION_RESULT,          STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_DELETE_RESULT,                  STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_FOLLOWER_ACTIVATIONS_SET,       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_FOLLOWER_CHANGED_FLAGS,         STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_FOLLOWER_CHANGED_ITEM_LEVEL,    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_FOLLOWER_CHANGED_QUALITY,       STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_FOLLOWER_CHANGED_XP,            STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_FOLLOWER_FATIGUE_CLEARED,       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_GENERATE_FOLLOWERS_RESULT,      STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_GET_CLASS_SPEC_CATEGORY_INFO_RESULT, STATUS_NEVER,   CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_GET_RECALL_PORTAL_LAST_USED_TIME_RESULT, STATUS_UNHANDLED, CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_IS_UPGRADEABLE_RESPONSE,        STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_LEARN_BLUEPRINT_RESULT,         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_LEARN_SPECIALIZATION_RESULT,    STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_LIST_COMPLETED_MISSIONS_CHEAT_RESULT, STATUS_UNHANDLED, CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_LIST_FOLLOWERS_CHEAT_RESULT,    STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_MAP_DATA_RESPONSE,              STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_MISSION_BONUS_ROLL_RESULT,      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_MISSION_REQUEST_REWARD_INFO_RESPONSE, STATUS_UNHANDLED, CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_MISSION_START_CONDITION_UPDATE, STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_OPEN_ARCHITECT,                 STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_OPEN_CRAFTER,                   STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_OPEN_MISSION_NPC,               STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_OPEN_RECRUITMENT_NPC,           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_OPEN_TALENT_NPC,                STATUS_NEVER,        CONNECTION_TYPE_INSTANCE); //FULL
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_PLACE_BUILDING_RESULT,          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_PLOT_PLACED,                    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_PLOT_REMOVED,                   STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_RECRUIT_FOLLOWER_RESULT,        STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_REMOTE_INFO,                    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_REMOVE_EVENT,                   STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_REMOVE_FOLLOWER_ABILITY_RESULT, STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_REMOVE_FOLLOWER_FROM_BUILDING_RESULT, STATUS_NEVER,  CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_REMOVE_FOLLOWER_RESULT,         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_RENAME_FOLLOWER_RESULT,         STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_REQUEST_BLUEPRINT_AND_SPECIALIZATION_DATA_RESULT, STATUS_NEVER, CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_RESEARCH_TALENT_RESULT,         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_RESET_TALENT_TREE,              STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_RESET_TALENT_TREE_SOCKET_DATA,  STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_START_MISSION_RESULT,           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_SWAP_BUILDINGS_RESPONSE,        STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_SWITCH_TALENT_TREE_BRANCH,      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_TALENT_COMPLETED,               STATUS_NEVER,        CONNECTION_TYPE_INSTANCE); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_TALENT_REMOVED,                 STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_TALENT_REMOVE_SOCKET_DATA,      STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_TALENT_UPDATE_SOCKET_DATA,      STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_TALENT_WORLD_QUEST_UNLOCKS_RESPONSE, STATUS_NEVER,   CONNECTION_TYPE_INSTANCE); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_UNLEARN_BLUEPRINT_RESULT,       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_UPDATE_FOLLOWER,                STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_UPDATE_GARRISON_MONUMENT_SELECTIONS, STATUS_NEVER,   CONNECTION_TYPE_INSTANCE); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_UPDATE_MISSION_CHEAT_RESULT,    STATUS_UNHANDLED, CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_UPGRADE_RESULT,                 STATUS_NEVER,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GARRISON_USE_RECALL_PORTAL_RESULT,       STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GENERATE_RANDOM_CHARACTER_NAME_RESULT,   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GENERATE_SSO_TOKEN_RESPONSE,             STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GET_ACCOUNT_CHARACTER_LIST_RESULT,       STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GET_GARRISON_INFO_RESULT,                STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GET_LANDING_PAGE_SHIPMENTS_RESPONSE,     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GET_REMAINING_GAME_TIME_RESPONSE,        STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GET_SELECTED_TROPHY_ID_RESPONSE,         STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GET_SHIPMENTS_OF_TYPE_RESPONSE,          STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GET_SHIPMENT_INFO_RESPONSE,              STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GET_TROPHY_LIST_RESPONSE,                STATUS_NEVER,        CONNECTION_TYPE_INSTANCE); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GET_VAS_ACCOUNT_CHARACTER_LIST_RESULT,   STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GET_VAS_TRANSFER_TARGET_REALM_LIST_RESULT, STATUS_UNHANDLED,  CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GM_PLAYER_INFO,                          STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GM_REQUEST_PLAYER_INFO,                  STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GM_TICKET_CASE_STATUS,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GM_TICKET_SYSTEM_STATUS,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GOD_MODE,                                STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GOSSIP_COMPLETE,                         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GOSSIP_MESSAGE,                          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GOSSIP_POI,                              STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GOSSIP_QUEST_UPDATE,                     STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GOSSIP_REFRESH_OPTIONS,                  STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GROUP_ACTION_THROTTLED,                  STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GROUP_AUTO_KICK,                         STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GROUP_DECLINE,                           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GROUP_DESTROYED,                         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GROUP_NEW_LEADER,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GROUP_UNINVITE,                          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_ACHIEVEMENT_DELETED,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_ACHIEVEMENT_EARNED,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_ACHIEVEMENT_MEMBERS,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_BANK_LOG_QUERY_RESULTS,            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_BANK_QUERY_RESULTS,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_BANK_REMAINING_WITHDRAW_MONEY,     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_BANK_TEXT_QUERY_RESULT,            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_CHALLENGE_COMPLETED,               STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_CHALLENGE_UPDATE,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_CHANGE_NAME_RESULT,                STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_COMMAND_RESULT,                    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_CRITERIA_DELETED,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_CRITERIA_UPDATE,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_EVENT_BANK_CONTENTS_CHANGED,       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_EVENT_BANK_MONEY_CHANGED,          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_EVENT_DISBANDED,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_EVENT_LOG_QUERY_RESULTS,           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_EVENT_MOTD,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_EVENT_NEW_LEADER,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_EVENT_PLAYER_JOINED,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_EVENT_PLAYER_LEFT,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_EVENT_PRESENCE_CHANGE,             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_EVENT_RANKS_UPDATED,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_EVENT_RANK_CHANGED,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_EVENT_STATUS_CHANGE,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_EVENT_TAB_ADDED,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_EVENT_TAB_DELETED,                 STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_EVENT_TAB_MODIFIED,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_EVENT_TAB_TEXT_CHANGED,            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_FLAGGED_FOR_RENAME,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_INVITE,                            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_INVITE_DECLINED,                   STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_INVITE_EXPIRED,                    STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_ITEM_LOOTED_NOTIFY,                STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_KNOWN_RECIPES,                     STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_MEMBERS_WITH_RECIPE,               STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_MEMBER_DAILY_RESET,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_MEMBER_RECIPES,                    STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_MEMBER_UPDATE_NOTE,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_MOVED,                             STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_MOVE_STARTING,                     STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_NAME_CHANGED,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_NEWS,                              STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_NEWS_DELETED,                      STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_PARTY_STATE,                       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_PERMISSIONS_QUERY_RESULTS,         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_RANKS,                             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_REPUTATION_REACTION_CHANGED,       STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_RESET,                             STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_REWARD_LIST,                       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_ROSTER,                            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_ROSTER_UPDATE,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_GUILD_SEND_RANK_CHANGE,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_HEALTH_UPDATE,                           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_HIGHEST_THREAT_UPDATE,                   STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_HOTFIX_CONNECT,                          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_HOTFIX_MESSAGE,                          STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INITIALIZE_FACTIONS,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INITIAL_SETUP,                           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INIT_WORLD_STATES,                       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INSPECT_RESULT,                          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INSTANCE_ENCOUNTER_CHANGE_PRIORITY,      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INSTANCE_ENCOUNTER_DISENGAGE_UNIT,       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INSTANCE_ENCOUNTER_END,                  STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INSTANCE_ENCOUNTER_ENGAGE_UNIT,          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INSTANCE_ENCOUNTER_GAIN_COMBAT_RESURRECTION_CHARGE, STATUS_NEVER, CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INSTANCE_ENCOUNTER_IN_COMBAT_RESURRECTION, STATUS_NEVER,      CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INSTANCE_ENCOUNTER_OBJECTIVE_COMPLETE,   STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INSTANCE_ENCOUNTER_OBJECTIVE_START,      STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INSTANCE_ENCOUNTER_OBJECTIVE_UPDATE,     STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INSTANCE_ENCOUNTER_PHASE_SHIFT_CHANGED,  STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INSTANCE_ENCOUNTER_START,                STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INSTANCE_ENCOUNTER_TIMER_START,          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE); //TODO
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INSTANCE_ENCOUNTER_UPDATE_ALLOW_RELEASE_IN_PROGRESS, STATUS_UNHANDLED, CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INSTANCE_ENCOUNTER_UPDATE_SUPPRESS_RELEASE, STATUS_NEVER,     CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INSTANCE_GROUP_SIZE_CHANGED,             STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INSTANCE_INFO,                           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INSTANCE_RESET,                          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INSTANCE_RESET_FAILED,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INSTANCE_SAVE_CREATED,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INTERRUPT_POWER_REGEN,                   STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INVALIDATE_PAGE_TEXT,                    STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INVALIDATE_PLAYER,                       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INVALID_PROMOTION_CODE,                  STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INVENTORY_CHANGE_FAILURE,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INVENTORY_FIXUP_COMPLETE,                STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_INVENTORY_FULL_OVERFLOW,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ISLANDS_MISSION_NPC,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ISLAND_AZERITE_GAIN,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ISLAND_COMPLETE,                         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_IS_QUEST_COMPLETE_RESPONSE,              STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ITEM_CHANGED,                            STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ITEM_COOLDOWN,                           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ITEM_ENCHANT_TIME_UPDATE,                STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ITEM_EXPIRE_PURCHASE_REFUND,             STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ITEM_INTERACTION_COMPLETE,               STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ITEM_PURCHASE_REFUND_RESULT,             STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ITEM_PUSH_RESULT,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ITEM_TIME_UPDATE,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_KICK_REASON,                             STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LATENCY_REPORT_PING,                     STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LEARNED_SPELLS,                          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LEARN_PVP_TALENT_FAILED,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LEARN_TALENT_FAILED,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LEGACY_LOOT_RULES,                       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LEVEL_LINKING_RESULT,                    STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LEVEL_UP_INFO,                           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_BOOT_PLAYER,                         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_DISABLED,                            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_EXPAND_SEARCH_PROMPT,                STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_INSTANCE_SHUTDOWN_COUNTDOWN,         STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_JOIN_RESULT,                         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_LIST_APPLICANT_LIST_UPDATE,          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_LIST_APPLICATION_STATUS_UPDATE,      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_LIST_APPLY_TO_GROUP_RESULT,          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_LIST_INVITE_APPLICANT_RESPONSE,      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_LIST_INVITE_RESPONCE,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_LIST_JOIN_RESULT,                    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_LIST_SEARCH_RESULTS,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_LIST_SEARCH_RESULTS_UPDATE,          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_LIST_SEARCH_STATUS,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_LIST_UPDATE_BLACKLIST,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_LIST_UPDATE_EXPIRATION,              STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_LIST_UPDATE_STATUS,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_OFFER_CONTINUE,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_PARTY_INFO,                          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_PLAYER_INFO,                         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_PLAYER_REWARD,                       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_PROPOSAL_UPDATE,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_QUEUE_STATUS,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_READY_CHECK_RESULT,                  STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_READY_CHECK_UPDATE,                  STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_ROLE_CHECK_UPDATE,                   STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_SLOT_INVALID,                        STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_TELEPORT_DENIED,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LFG_UPDATE_STATUS,                       STATUS_NEVER,        CONNECTION_TYPE_REALM); // Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LIVE_REGION_ACCOUNT_RESTORE_RESULT,      STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LIVE_REGION_CHARACTER_COPY_RESULT,       STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LIVE_REGION_GET_ACCOUNT_CHARACTER_LIST_RESULT, STATUS_UNHANDLED, CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LIVE_REGION_KEY_BINDINGS_COPY_RESULT,    STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LOAD_CUF_PROFILES,                       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LOAD_EQUIPMENT_SET,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LOGIN_SET_TIME_SPEED,                    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LOGIN_VERIFY_WORLD,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LOGOUT_CANCEL_ACK,                       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LOGOUT_COMPLETE,                         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LOGOUT_RESPONSE,                         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LOG_XP_GAIN,                             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LOOT_ALL_PASSED,                         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LOOT_LIST,                               STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LOOT_MONEY_NOTIFY,                       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LOOT_RELEASE,                            STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LOOT_RELEASE_ALL,                        STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LOOT_REMOVED,                            STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LOOT_RESPONSE,                           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LOOT_ROLL,                               STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LOOT_ROLLS_COMPLETE,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LOOT_ROLL_WON,                           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_LOSS_OF_CONTROL_AURA_UPDATE,             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MAIL_COMMAND_RESULT,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MAIL_LIST_RESULT,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MAIL_QUERY_NEXT_TIME_RESULT,             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MAP_OBJECTIVES_INIT,                     STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MAP_OBJ_EVENTS,                          STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MASTER_LOOT_CANDIDATE_LIST,              STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MEETING_STONE_FAILED,                    STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MESSAGE_BOX,                             STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MINIMAP_PING,                            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MIRROR_IMAGE_COMPONENTED_DATA,           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MIRROR_IMAGE_CREATURE_DATA,              STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MISSILE_CANCEL,                          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MODIFY_COOLDOWN,                         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOTD,                                    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOUNT_RESULT,                            STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVEMENT_ENFORCEMENT_ALERT,              STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_APPLY_INERTIA,                      STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_APPLY_MOVEMENT_FORCE,               STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_DISABLE_COLLISION,                  STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_DISABLE_DOUBLE_JUMP,                STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_DISABLE_INERTIA,                    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_DISABLE_GRAVITY,                    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_DISABLE_TRANSITION_BETWEEN_SWIM_AND_FLY, STATUS_NEVER,   CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_ENABLE_COLLISION,                   STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_ENABLE_DOUBLE_JUMP,                 STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_ENABLE_INERTIA,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_ENABLE_GRAVITY,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_ENABLE_TRANSITION_BETWEEN_SWIM_AND_FLY, STATUS_NEVER,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_KNOCK_BACK,                         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_REMOVE_INERTIA,                     STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_REMOVE_MOVEMENT_FORCE,              STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_ROOT,                               STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_ACTIVE_MOVER,                   STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_CAN_FLY,                        STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_CAN_TURN_WHILE_FALLING,         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_COLLISION_HEIGHT,               STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_COMPOUND_STATE,                 STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_FEATHER_FALL,                   STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_FLIGHT_BACK_SPEED,              STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_FLIGHT_SPEED,                   STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_HOVERING,                       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_IGNORE_MOVEMENT_FORCES,         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_LAND_WALK,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_MOD_MOVEMENT_FORCE_MAGNITUDE,   STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_NORMAL_FALL,                    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_PITCH_RATE,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_RUN_BACK_SPEED,                 STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_RUN_SPEED,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_SWIM_BACK_SPEED,                STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_SWIM_SPEED,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_TURN_RATE,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_VEHICLE_REC_ID,                 STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_WALK_SPEED,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SET_WATER_WALK,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SKIP_TIME,                          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_DISABLE_COLLISION,           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_DISABLE_GRAVITY,             STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_ENABLE_COLLISION,            STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_ENABLE_GRAVITY,              STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_ROOT,                        STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_SET_FEATHER_FALL,            STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_SET_FLIGHT_BACK_SPEED,       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_SET_FLIGHT_SPEED,            STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_SET_FLYING,                  STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_SET_HOVER,                   STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_SET_LAND_WALK,               STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_SET_NORMAL_FALL,             STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_SET_PITCH_RATE,              STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_SET_RUN_BACK_SPEED,          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_SET_RUN_MODE,                STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_SET_RUN_SPEED,               STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_SET_SWIM_BACK_SPEED,         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_SET_SWIM_SPEED,              STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_SET_TURN_RATE,               STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_SET_WALK_MODE,               STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_SET_WALK_SPEED,              STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_SET_WATER_WALK,              STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_START_SWIM,                  STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_STOP_SWIM,                   STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_UNROOT,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_UNSET_FLYING,                STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_SPLINE_UNSET_HOVER,                 STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_TELEPORT,                           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UNROOT,                             STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UNSET_CAN_FLY,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UNSET_CAN_TURN_WHILE_FALLING,       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UNSET_HOVERING,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UNSET_IGNORE_MOVEMENT_FORCES,       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UPDATE,                             STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UPDATE_APPLY_INERTIA,               STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UPDATE_APPLY_MOVEMENT_FORCE,        STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UPDATE_COLLISION_HEIGHT,            STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UPDATE_FLIGHT_BACK_SPEED,           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UPDATE_FLIGHT_SPEED,                STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UPDATE_KNOCK_BACK,                  STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UPDATE_MOD_MOVEMENT_FORCE_MAGNITUDE,STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UPDATE_PITCH_RATE,                  STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UPDATE_REMOVE_INERTIA,              STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UPDATE_REMOVE_MOVEMENT_FORCE,       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UPDATE_RUN_BACK_SPEED,              STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UPDATE_RUN_SPEED,                   STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UPDATE_SWIM_BACK_SPEED,             STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UPDATE_SWIM_SPEED,                  STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UPDATE_TELEPORT,                    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UPDATE_TURN_RATE,                   STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MOVE_UPDATE_WALK_SPEED,                  STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MULTI_FLOOR_LEAVE_FLOOR,                 STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MULTI_FLOOR_NEW_FLOOR,                   STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MYTHIC_PLUS_ALL_MAP_STATS,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MYTHIC_PLUS_CURRENT_AFFIXES,             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MYTHIC_PLUS_NEW_WEEK_RECORD,             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MYTHIC_PLUS_SEASON_DATA,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_NEUTRAL_PLAYER_FACTION_SELECT_RESULT,    STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_NEW_TAXI_PATH,                           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_NEW_WORLD,                               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_NOTIFY_DEST_LOC_SPELL_CAST,              STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_NOTIFY_MISSILE_TRAJECTORY_COLLISION,     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_NOTIFY_MONEY,                            STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_NOTIFY_RECEIVED_MAIL,                    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_OFFER_PETITION_ERROR,                    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ON_CANCEL_EXPECTED_RIDE_VEHICLE_AURA,    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ON_MONSTER_MOVE,                         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_OPEN_ANIMA_DIVERSION_UI,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_OPEN_ARTIFACT_FORGE,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_OPEN_CONTAINER,                          STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_OPEN_HEART_FORGE,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_OPEN_ITEM_FORGE,                         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_OPEN_LFG_DUNGEON_FINDER,                 STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_OPEN_SHIPMENT_NPC_FROM_GOSSIP,           STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_OPEN_SHIPMENT_NPC_RESULT,                STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_OVERRIDE_LIGHT,                          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PAGE_TEXT,                               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PARTY_COMMAND_RESULT,                    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PARTY_INVITE,                            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PARTY_KILL_LOG,                          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PARTY_MEMBER_FULL_STATE,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PARTY_MEMBER_PARTIAL_STATE,              STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PARTY_NOTIFY_LFG_LEADER_CHANGE,          STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PARTY_UPDATE,                            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PAST_TIME_EVENTS,                        STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PAUSE_MIRROR_TIMER,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PENDING_RAID_LOCK,                       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PETITION_ALREADY_SIGNED,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PETITION_RENAME_GUILD_RESPONSE,          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PETITION_SHOW_LIST,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PETITION_SHOW_SIGNATURES,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PETITION_SIGN_RESULTS,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_ACTION_FEEDBACK,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_ACTION_SOUND,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_ADDED,                               STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_BATTLE_CHAT_RESTRICTED,              STATUS_NEVER,        CONNECTION_TYPE_REALM);//Ready thordekk  
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_BATTLE_DEBUG_QUEUE_DUMP_RESPONSE,    STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_BATTLE_FINALIZE_LOCATION,            STATUS_NEVER,        CONNECTION_TYPE_REALM);//Ready thordekk 
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_BATTLE_FINAL_ROUND,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);//Ready thordekk 
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_BATTLE_FINISHED,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);//Ready thordekk 
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_BATTLE_FIRST_ROUND,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);//Ready thordekk 
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_BATTLE_INITIAL_UPDATE,               STATUS_NEVER,        CONNECTION_TYPE_REALM);//Ready thordekk 
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_BATTLE_MAX_GAME_LENGTH_WARNING,      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_BATTLE_PVP_CHALLENGE,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_BATTLE_QUEUE_PROPOSE_MATCH,          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_BATTLE_QUEUE_STATUS,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_BATTLE_REPLACEMENTS_MADE,            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_BATTLE_REQUEST_FAILED,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_BATTLE_ROUND_RESULT,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_BATTLE_SLOT_UPDATES,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_CAST_FAILED,                         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_CLEAR_SPELLS,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_DISMISS_SOUND,                       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_GOD_MODE,                            STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_GUIDS,                               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_LEARNED_SPELLS,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_MODE,                                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_NAME_INVALID,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_NEWLY_TAMED,                         STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_SLOT_UPDATED,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_SPELLS_MESSAGE,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_STABLE_LIST,                         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_STABLE_RESULT,                       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_TAME_FAILURE,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PET_UNLEARNED_SPELLS,                    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PHASE_SHIFT_CHANGE,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAYED_TIME,                             STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAYER_AZERITE_ITEM_EQUIPPED_STATUS_CHANGED, STATUS_NEVER,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAYER_AZERITE_ITEM_GAINS,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAYER_BONUS_ROLL_FAILED,                STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAYER_BOUND,                            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAYER_CHOICE_CLEAR,                     STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAYER_CHOICE_DISPLAY_ERROR,             STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAYER_CONDITION_RESULT,                 STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAYER_IS_ADVENTURE_MAP_POI_VALID,       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAYER_OPEN_SUBSCRIPTION_INTERSTITIAL,   STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAYER_SAVE_GUILD_EMBLEM,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAYER_SHOW_UI_EVENT_TOAST,              STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAYER_SKINNED,                          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAYER_TABARD_VENDOR_ACTIVATE,           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAYER_TUTORIAL_HIGHLIGHT_SPELL,         STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAYER_TUTORIAL_UNHIGHLIGHT_SPELL,       STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAY_MUSIC,                              STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAY_OBJECT_SOUND,                       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAY_ONE_SHOT_ANIM_KIT,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAY_ORPHAN_SPELL_VISUAL,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAY_SCENE,                              STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAY_SOUND,                              STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAY_SPEAKERBOT_SOUND,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAY_SPELL_VISUAL,                       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAY_SPELL_VISUAL_KIT,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PLAY_TIME_WARNING,                       STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PONG,                                    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_POWER_UPDATE,                            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PRELOAD_CHILD_MAP,                       STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PREPOPULATE_NAME_CACHE,                  STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PRE_RESSURECT,                           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PRINT_NOTIFICATION,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PROC_RESIST,                             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PUSH_SPELL_TO_ACTION_BAR,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PVP_CREDIT,                              STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PVP_MATCH_COMPLETE,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PVP_MATCH_INITIALIZE,                    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PVP_MATCH_START,                         STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PVP_MATCH_STATISTICS,                    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PVP_OPTIONS_ENABLED,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_PVP_TIER_RECORD,                         STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUERY_BATTLE_PET_NAME_RESPONSE,          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUERY_CREATURE_RESPONSE,                 STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUERY_GAME_OBJECT_RESPONSE,              STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUERY_GARRISON_PET_NAME_RESPONSE,        STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUERY_GUILD_FOLLOW_INFO_RESPONSE,        STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUERY_GUILD_INFO_RESPONSE,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUERY_ITEM_TEXT_RESPONSE,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUERY_NPC_TEXT_RESPONSE,                 STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUERY_PAGE_TEXT_RESPONSE,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUERY_PETITION_RESPONSE,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUERY_PET_NAME_RESPONSE,                 STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUERY_PLAYER_NAME_BY_COMMUNITY_ID_RESPONSE, STATUS_UNHANDLED, CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUERY_PLAYER_NAMES_RESPONSE,             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUERY_QUEST_INFO_RESPONSE,               STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUERY_REALM_GUILD_MASTER_INFO_RESPONSE,  STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUERY_TIME_RESPONSE,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_COMPLETION_NPC_RESPONSE,           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_CONFIRM_ACCEPT,                    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_FORCE_REMOVED,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_GIVER_INVALID_QUEST,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_GIVER_OFFER_REWARD_MESSAGE,        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_GIVER_QUEST_COMPLETE,              STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_GIVER_QUEST_DETAILS,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_GIVER_QUEST_FAILED,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_GIVER_QUEST_LIST_MESSAGE,          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_GIVER_REQUEST_ITEMS,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_GIVER_STATUS,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_GIVER_STATUS_MULTIPLE,             STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_LOG_FULL,                          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_NON_LOG_UPDATE_COMPLETE,           STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_POI_QUERY_RESPONSE,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_POI_UPDATE_RESPONSE,               STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_PUSH_RESULT,                       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_SESSION_INFO_RESPONSE,             STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_SESSION_READY_CHECK,               STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_SESSION_READY_CHECK_RESPONSE,      STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_SESSION_RESULT,                    STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_UPDATE_ADD_CREDIT,                 STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_UPDATE_ADD_CREDIT_SIMPLE,          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_UPDATE_ADD_PVP_CREDIT,             STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_UPDATE_COMPLETE,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_UPDATE_FAILED,                     STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEST_UPDATE_FAILED_TIMER,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_QUEUE_SUMMARY_UPDATE,                    STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RAF_ACCOUNT_INFO,                        STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RAF_ACTIVITY_STATE_CHANGED,              STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RAID_DIFFICULTY_SET,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RAID_GROUP_ONLY,                         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RAID_INSTANCE_MESSAGE,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RAID_MARKERS_CHANGED,                    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RANDOM_ROLL,                             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RATED_PVP_INFO,                          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_READY_CHECK_COMPLETED,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_READY_CHECK_RESPONSE,                    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_READY_CHECK_STARTED,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_READ_ITEM_RESULT_FAILED,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_READ_ITEM_RESULT_OK,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_REALM_LOOKUP_INFO,                       STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_REALM_QUERY_RESPONSE,                    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_REATTACH_RESURRECT,                      STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RECRUIT_A_FRIEND_FAILURE,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_REFRESH_COMPONENT,                       STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_REFRESH_SPELL_HISTORY,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_REMOVE_ITEM_PASSIVE,                     STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_REMOVE_SPELL_FROM_ACTION_BAR,            STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_REPLACE_TROPHY_RESPONSE,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_REPORT_PVP_PLAYER_AFK_RESULT,            STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_REQUEST_CEMETERY_LIST_RESPONSE,          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_REQUEST_PVP_REWARDS_RESPONSE,            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_REQUEST_SCHEDULED_PVP_INFO_RESPONSE,     STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RESEARCH_COMPLETE,                       STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RESET_COMPRESSION_CONTEXT,               STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RESET_FAILED_NOTIFY,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RESET_QUEST_POI,                         STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RESET_RANGED_COMBAT_TIMER,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RESET_WEEKLY_CURRENCY,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RESPEC_WIPE_CONFIRM,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RESPOND_INSPECT_ACHIEVEMENTS,            STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RESTART_GLOBAL_COOLDOWN,                 STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RESTRICTED_ACCOUNT_WARNING,              STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RESUME_CAST,                             STATUS_NEVER,        CONNECTION_TYPE_REALM); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RESUME_CAST_BAR,                         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RESUME_COMMS,                            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RESUME_TOKEN,                            STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RESURRECT_REQUEST,                       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RESYNC_RUNES,                            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RETURN_APPLICANT_LIST,                   STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RETURN_RECRUITING_CLUBS,                 STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ROLE_CHANGED_INFORM,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ROLE_CHOSEN,                             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ROLE_POLL_INFORM,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RUNEFORGE_LEGENDARY_CRAFTING_OPEN_NPC,   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_RUNE_REGEN_DEBUG,                        STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SCENARIO_COMPLETED,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SCENARIO_POIS,                           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SCENARIO_PROGRESS_UPDATE,                STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SCENARIO_SHOW_CRITERIA,                  STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SCENARIO_STATE,                          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SCENARIO_UI_UPDATE,                      STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SCENARIO_VACATE,                         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SCENE_OBJECT_EVENT,                      STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SCENE_OBJECT_PET_BATTLE_FINAL_ROUND,     STATUS_NEVER,        CONNECTION_TYPE_REALM);// Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SCENE_OBJECT_PET_BATTLE_FINISHED,        STATUS_NEVER,        CONNECTION_TYPE_REALM);// Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SCENE_OBJECT_PET_BATTLE_FIRST_ROUND,     STATUS_NEVER,        CONNECTION_TYPE_REALM);// Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SCENE_OBJECT_PET_BATTLE_INITIAL_UPDATE,  STATUS_NEVER,        CONNECTION_TYPE_REALM); // Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SCENE_OBJECT_PET_BATTLE_REPLACEMENTS_MADE, STATUS_NEVER,      CONNECTION_TYPE_REALM);// Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SCENE_OBJECT_PET_BATTLE_ROUND_RESULT,    STATUS_NEVER,        CONNECTION_TYPE_REALM);// Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SCRIPT_CAST,                             STATUS_NEVER,        CONNECTION_TYPE_REALM); // Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SEASON_INFO,                             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SELL_RESPONSE,                           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SEND_ITEM_PASSIVES,                      STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SEND_KNOWN_SPELLS,                       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SEND_RAID_TARGET_UPDATE_ALL,             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SEND_RAID_TARGET_UPDATE_SINGLE,          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SEND_SPELL_CHARGES,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SEND_SPELL_HISTORY,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SEND_UNLEARN_SPELLS,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SERVER_FIRST_ACHIEVEMENTS,               STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SERVER_TIME,                             STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SERVER_TIME_OFFSET,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SETUP_CURRENCY,                          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SETUP_RESEARCH_HISTORY,                  STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_AI_ANIM_KIT,                         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_ALL_TASK_PROGRESS,                   STATUS_NEVER,        CONNECTION_TYPE_INSTANCE); // Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_ANIM_TIER,                           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_CHR_UPGRADE_TIER,                    STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_CURRENCY,                            STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_DF_FAST_LAUNCH_RESULT,               STATUS_NEVER,        CONNECTION_TYPE_REALM); // Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_DUNGEON_DIFFICULTY,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_FACTION_AT_WAR,                      STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_FACTION_NOT_VISIBLE,                 STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_FACTION_STANDING,                    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_FACTION_VISIBLE,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_FLAT_SPELL_MODIFIER,                 STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_FORCED_REACTIONS,                    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_ITEM_PURCHASE_DATA,                  STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_LOOT_METHOD_FAILED,                  STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_MAX_WEEKLY_QUANTITY,                 STATUS_NEVER,        CONNECTION_TYPE_REALM); // Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_MELEE_ANIM_KIT,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_MOVEMENT_ANIM_KIT,                   STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_PCT_SPELL_MODIFIER,                  STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_PET_SPECIALIZATION,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_PLAYER_DECLINED_NAMES_RESULT,        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_PLAY_HOVER_ANIM,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_PROFICIENCY,                         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_QUEST_REPLAY_COOLDOWN_OVERRIDE,      STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_SHIPMENT_READY_RESPONSE,             STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_SPELL_CHARGES,                       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_TASK_COMPLETE,                       STATUS_NEVER,        CONNECTION_TYPE_REALM); //READY
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_TIME_ZONE_INFORMATION,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SET_VEHICLE_REC_ID,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SHADOWLANDS_CAPACITANCE_UPDATE,          STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SHIPMENT_FACTION_UPDATE_RESULT,          STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SHOW_BANK,                               STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SHOW_MAILBOX,                            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SHOW_NEUTRAL_PLAYER_FACTION_SELECT_UI,   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SHOW_QUEST_COMPLETION_TEXT,              STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SHOW_TAXI_NODES,                         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SHOW_TRADE_SKILL_RESPONSE,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SOCIAL_CONTRACT_REQUEST_RESPONSE,        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SOCKET_GEMS_FAILURE,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SOCKET_GEMS_SUCCESS,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPECIAL_MOUNT_ANIM,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPEC_INVOLUNTARILY_CHANGED,              STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_ABSORB_LOG,                        STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_CATEGORY_COOLDOWN,                 STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_CHANNEL_START,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_CHANNEL_UPDATE,                    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_COOLDOWN,                          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_DAMAGE_SHIELD,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_DELAYED,                           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_DISPELL_LOG,                       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_ENERGIZE_LOG,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_EXECUTE_LOG,                       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_FAILED_OTHER,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_FAILURE,                           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_FAILURE_MESSAGE,                   STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_GO,                                STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_HEAL_ABSORB_LOG,                   STATUS_NEVER,        CONNECTION_TYPE_INSTANCE); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_HEAL_LOG,                          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_INSTAKILL_LOG,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_INTERRUPT_LOG,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_MISS_LOG,                          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_NON_MELEE_DAMAGE_LOG,              STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_OR_DAMAGE_IMMUNE,                  STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_PERIODIC_AURA_LOG,                 STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_PREPARE,                           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_START,                             STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPELL_VISUAL_LOAD_SCREEN,                STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPLASH_SCREEN_SHOW_LATEST,               STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SPIRIT_HEALER_CONFIRM,                   STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_STAND_STATE_UPDATE,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_START_ELAPSED_TIMER,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_START_ELAPSED_TIMERS,                    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_START_LIGHTNING_STORM,                   STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_START_LOOT_ROLL,                         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_START_MIRROR_TIMER,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_START_TIMER,                             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_STOP_ELAPSED_TIMER,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_STOP_MIRROR_TIMER,                       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_STOP_SPEAKERBOT_SOUND,                   STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_STREAMING_MOVIES,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SUMMON_CANCEL,                           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SUMMON_RAID_MEMBER_VALIDATE_FAILED,      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SUMMON_REQUEST,                          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SUPERCEDED_SPELLS,                       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SUSPEND_COMMS,                           STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SUSPEND_TOKEN,                           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_SYNC_WOW_ENTITLEMENTS,                   STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TALENTS_INVOLUNTARILY_RESET,             STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TAXI_NODE_STATUS,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TEXT_EMOTE,                              STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_THREAT_CLEAR,                            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_THREAT_REMOVE,                           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_THREAT_UPDATE,                           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TIME_ADJUSTMENT,                         STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TIME_SYNC_REQUEST,                       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TITLE_EARNED,                            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TITLE_LOST,                              STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TOTEM_CREATED,                           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TOTEM_DURATION_CHANGED,                  STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TOTEM_MOVED,                             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TRADE_STATUS,                            STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TRADE_UPDATED,                           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TRAINER_BUY_FAILED,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TRAINER_LIST,                            STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TRANSFER_ABORTED,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TRANSFER_PENDING,                        STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TRANSMOGRIFY_NPC,                        STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TREASURE_PICKER_RESPONSE,                STATUS_NEVER,        CONNECTION_TYPE_INSTANCE); //READY
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TRIGGER_CINEMATIC,                       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TRIGGER_MOVIE,                           STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TURN_IN_PETITION_RESULT,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TUTORIAL_FLAGS,                          STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_TWITTER_STATUS,                          STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UI_HEALING_RANGE_MODIFIED,               STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UI_ITEM_INTERACTION_NPC,                 STATUS_NEVER,        CONNECTION_TYPE_REALM);//Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UI_MAP_QUEST_LINES_RESPONSE,             STATUS_NEVER,        CONNECTION_TYPE_REALM); //READY
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UNDELETE_CHARACTER_RESPONSE,             STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UNDELETE_COOLDOWN_STATUS_RESPONSE,       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UNLEARNED_SPELLS,                        STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UNLOAD_CHILD_MAP,                        STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_AADC_STATUS_RESPONSE,             STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_ACCOUNT_DATA,                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_ACTION_BUTTONS,                   STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_BNET_SESSION_KEY,                 STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_CAPTURE_POINT,                    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_CELESTIAL_BODY,                   STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_CHARACTER_FLAGS,                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_CHARGE_CATEGORY_COOLDOWN,         STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_COOLDOWN,                         STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_DAILY_MISSION_COUNTER,            STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_EXPANSION_LEVEL,                  STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_GAME_TIME_STATE,                  STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_INSTANCE_OWNERSHIP,               STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_LAST_INSTANCE,                    STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_OBJECT,                           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_PRIMARY_SPEC,                     STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_RECENT_PLAYER_GUIDS,              STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_TALENT_DATA,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_TASK_PROGRESS,                    STATUS_NEVER,        CONNECTION_TYPE_REALM); // READY
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_WEEKLY_SPELL_USAGE,               STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_UPDATE_WORLD_STATE,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_USERLIST_ADD,                            STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_USERLIST_REMOVE,                         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_USERLIST_UPDATE,                         STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_USE_EQUIPMENT_SET_RESULT,                STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_VAS_CHECK_TRANSFER_OK_RESPONSE,          STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_VAS_GET_QUEUE_MINUTES_RESPONSE,          STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_VAS_GET_SERVICE_STATUS_RESPONSE,         STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_VAS_PURCHASE_COMPLETE,                   STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_VAS_PURCHASE_STATE_UPDATE,               STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_VENDOR_INVENTORY,                        STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_VIGNETTE_UPDATE,                         STATUS_NEVER,        CONNECTION_TYPE_INSTANCE); //READY
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_VOICE_CHANNEL_INFO_RESPONSE,             STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_VOICE_CHANNEL_STT_TOKEN_RESPONSE,        STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_VOICE_LOGIN_RESPONSE,                    STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_VOID_ITEM_SWAP_RESPONSE,                 STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_VOID_STORAGE_CONTENTS,                   STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_VOID_STORAGE_FAILED,                     STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_VOID_STORAGE_TRANSFER_CHANGES,           STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_VOID_TRANSFER_RESULT,                    STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_WAIT_QUEUE_FINISH,                       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_WAIT_QUEUE_UPDATE,                       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_WARDEN3_DATA,                            STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_WARDEN3_DISABLED,                        STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_WARDEN3_ENABLED,                         STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_WARFRONT_COMPLETE,                       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_WARGAME_REQUEST_SUCCESSFULLY_SENT_TO_OPPONENT, STATUS_NEVER,  CONNECTION_TYPE_REALM); //READY
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_WEATHER,                                 STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_WEEKLY_REWARDS_PROGRESS_RESULT,          STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_WEEKLY_REWARDS_RESULT,                   STATUS_UNHANDLED,    CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_WEEKLY_REWARD_CLAIM_RESULT,              STATUS_NEVER,        CONNECTION_TYPE_INSTANCE); //Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_WEEKLY_SPELL_USAGE,                      STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_WHO,                                     STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_WHO_IS,                                  STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_WILL_BE_KICKED_FOR_ADDED_SUBSCRIPTION_TIME, STATUS_UNHANDLED, CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_WORLD_MAP_OPEN_NPC,                      STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_WORLD_QUEST_UPDATE_RESPONSE,             STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_WORLD_SERVER_INFO,                       STATUS_NEVER,        CONNECTION_TYPE_INSTANCE);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_WOW_ENTITLEMENT_NOTIFICATION,            STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_XP_GAIN_ABORTED,                         STATUS_NEVER,        CONNECTION_TYPE_REALM); //Added Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_XP_GAIN_ENABLED,                         STATUS_NEVER,        CONNECTION_TYPE_REALM); //Added Thordekk
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_ZONE_UNDER_ATTACK,                       STATUS_NEVER,        CONNECTION_TYPE_REALM);

    DEFINE_SERVER_OPCODE_HANDLER(SMSG_COMPRESSED_PACKET,                       STATUS_NEVER,        CONNECTION_TYPE_REALM);
    DEFINE_SERVER_OPCODE_HANDLER(SMSG_MULTIPLE_PACKETS,                        STATUS_UNHANDLED,    CONNECTION_TYPE_REALM);

#undef DEFINE_SERVER_OPCODE_HANDLER
};

template<typename T>
inline std::string GetOpcodeNameForLoggingImpl(T id)
{
    uint32 opcode = uint32(id);
    std::ostringstream ss;
    ss << '[';

    if (static_cast<uint32>(id) < NUM_OPCODE_HANDLERS)
    {
        if (OpcodeHandler const* handler = opcodeTable[id])
            ss << handler->Name;
        else
            ss << "UNKNOWN OPCODE";
    }
    else
        ss << "INVALID OPCODE";

    ss << " 0x" << std::hex << std::setw(4) << std::setfill('0') << std::uppercase << opcode << std::nouppercase << std::dec << " (" << opcode << ")]";
    return ss.str();
}

std::string GetOpcodeNameForLogging(OpcodeClient opcode)
{
    return GetOpcodeNameForLoggingImpl(opcode);
}

std::string GetOpcodeNameForLogging(OpcodeServer opcode)
{
    return GetOpcodeNameForLoggingImpl(opcode);
}
