/*
 * This file is part of the DekkCore Project 2022. Made by Fluxurion.
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

#include "Player.h"
#include "Battleground.h"
#include "CollectionMgr.h"
#include "DatabaseEnv.h"
#include "DB2Stores.h"
#include "Item.h"
#include "Log.h"
#include "Mail.h"
#include "MiscPackets.h"
#include "ObjectMgr.h"
#include "SharedDefines.h"
#include "Unit.h"
#include "WorldSession.h"

// Custom Gear Giver function which uses characterloadout & characterloadoutitem db2 to give gear to the player.
void Player::GearUpByLoadout(uint32 loadout_purpose, std::vector<int32> const& bonusListIDs /*= std::vector<int32>()*/)
{
    uint32 ITEM_HEARTHSTONE = 6948;

    // Get equipped item and store it in bag. If bag is full store it in toBeMailedCurrentEquipment to send it in mail later.
    std::vector<Item*> toBeMailedCurrentEquipment;
    for (int es = EquipmentSlots::EQUIPMENT_SLOT_START; es < EquipmentSlots::EQUIPMENT_SLOT_END; es++)
    {
        if (Item* currentEquiped = GetItemByPos(INVENTORY_SLOT_BAG_0, es))
        {
            ItemPosCountVec off_dest;
            if (CanStoreItem(NULL_BAG, NULL_SLOT, off_dest, currentEquiped, false) == EQUIP_ERR_OK)
            {
                RemoveItem(INVENTORY_SLOT_BAG_0, es, true);
                StoreItem(off_dest, currentEquiped, true);
            }
            else
                toBeMailedCurrentEquipment.push_back(currentEquiped);
        }
    }

    // If there are item in the toBeMailedCurrentEquipment vector remove it from inventory and send it in mail.
    if (!toBeMailedCurrentEquipment.empty())
    {
        CharacterDatabaseTransaction trans = CharacterDatabase.BeginTransaction();
        MailDraft draft("Inventory Full: Old Equipment.",
            "To equip your new gear, your old gear had to be unequiped. You did not have enough free bag space, the items that could not be added to your bag you can find in this mail.");

        for (Item* currentEquiped : toBeMailedCurrentEquipment)
        {
            MoveItemFromInventory(INVENTORY_SLOT_BAG_0, currentEquiped->GetBagSlot(), true);
            currentEquiped->DeleteFromInventoryDB(trans);                   // deletes item from character's inventory
            currentEquiped->SaveToDB(trans);                                // recursive and not have transaction guard into self, item not in inventory and can be save standalone
            draft.AddItem(currentEquiped);
        }

        draft.SendMailTo(trans, this, MailSender(this, MAIL_STATIONERY_GM), MailCheckMask(MAIL_CHECK_MASK_COPIED | MAIL_CHECK_MASK_RETURNED));
        CharacterDatabase.CommitTransaction(trans);
    }

    std::vector<uint32> toBeMailedNewItems;

    // Add the new items from loadout.
    for (const uint32 item : sDB2Manager.GetLowestIdItemLoadOutItemsBy(GetClass(), loadout_purpose))
        if (!StoreNewItemInBestSlotsWithBonus(item, 1, bonusListIDs))
                toBeMailedNewItems.push_back(item);

    // If we added more item than free bag slot send the new item as well in mail.
    if (!toBeMailedNewItems.empty())
    {
        CharacterDatabaseTransaction trans = CharacterDatabase.BeginTransaction();
        MailDraft draft("Inventory Full: New Gear.",
            "You did not have enough free bag space to add all your complementary new gear to your bags, those that did not fit you can find in this mail.");

        for (const uint32 item : toBeMailedNewItems)
        {
            if (Item* pItem = Item::CreateItem(item, 1, ItemContext::NONE, this))
            {
                for (int32 bonus : bonusListIDs)
                    pItem->AddBonuses(bonus);
                pItem->SaveToDB(trans);
                draft.AddItem(pItem);
            }
        }

        draft.SendMailTo(trans, this, MailSender(this, MAIL_STATIONERY_GM), MailCheckMask(MAIL_CHECK_MASK_COPIED | MAIL_CHECK_MASK_RETURNED));
        CharacterDatabase.CommitTransaction(trans);
    }

    SaveToDB();
}

void Player::GearUpByBiS(std::vector<int32> const& bonusListIDs /*= std::vector<int32>()*/)
{
    // go to wowhead bis gear guide and run with console:
    // Array.from(document.querySelectorAll(".q4.icontiny")).map(x => {return  x.href.match(/item=\d+/)[0].split("=")[1] }).join(",")
    std::set<uint32> BloodDK_BiS_Gear = {188868,189859,188867,189847,188864,189777,188863,189840,188866,189786,189841,189854,188271,188267,189862};
    std::set<uint32> FrostDK_BiS_Gear = {188868,189859,188867,189847,188864,189805,188863,334678,189840,188866,186568,182633,189772,189841,188270,188271,189851,189862,189851};
    std::set<uint32> UnholyDK_BiS_Gear = {188868,189859,188867,182636,188864,189805,188863,189840,188866,186568,189854,189841,188271,188270,189862};
    std::set<uint32> HavocDH_BiS_Gear = {189846,188892,189827,188896,189847,188894,189812,189843,189856,188893,189798,189802,189772,188271,188270};
    std::set<uint32> VengeanceDH_BiS_Gear = {189846,189846,188892,189827,188896,189847,188894,189812,188898,189856,188893,189798,189802,189772,186434,181507};
    std::set<uint32> Guardian_Druid_BiS_Gear = {189861,188847,189859,188851,189847,188849,189812,189843,189856,188848,189848,189854,189772,188270,188253};
    std::set<uint32> Feral_Druid_BiS_Gear = { 189861,188847,189859,188851,189791,189774,189812,188853,189856,188848,189848,189854,189772,188253,188270 };
    std::set<uint32> Balance_Druid_BiS_Gear = { 189852,189860,188847,189859,188851,189847,188849,189836,188853,189856,188848,189848,189854,189833,188270,188847,188851,188849,188853,188848,188270 };
    std::set<uint32> Restoration_Druid_BiS_Gear = { 189754,189860,188847,189859,188851,189847,188849,189812,189843,189856,188848,189848,189854,189802,188270,188273 };
    std::set<uint32> BeastMaster_Hunter_BiS_Gear = { 189853,188859,189859,188856,189847,188858,189849,189844,189776,188860,189795,189802,189772,188253,188271 };
    std::set<uint32> Marskmanship_Hunter_BiS_Gear = { 189853,188859,189859,188856,189847,188858,189849,189844,189776,188860,189795,189833,189854,188253,188271 };
    std::set<uint32> Survival_Hunter_BiS_Gear = { 188859,189827,188856,189847,188858,189849,188861,189804,189857,189795,189802,189772,188271,188253,189861 };
    std::set<uint32> Arcane_Mage_BiS_Gear = { 189852,189830,189860,188844,189859,188843,189847,188839,189842,188845,189855,189821,188842,189770,189854,189772,189833,188271,188268 };
    std::set<uint32> Fire_Mage_BiS_Gear = { 189852,189860,188844,189859,188843,189847,188839,189842,188845,189793,188842,189823,189854,189802,188268,188271 };
    std::set<uint32> Frost_Mage_BiS_Gear = { 189852,189860,188844,189859,188843,189847,188839,189842,188845,189793,188842,189823,189854,189802,188268,188271 };
    std::set<uint32> Brewmaster_Monk_BiS_Gear = { 189818,189818,188910,189859,188914,189791,188912,189812,189843,189856,188911,189848,189854,189772,188270,188252,188266,188269 };
    std::set<uint32> Mistweaver_Monk_BiS_Gear = { 189789,188910,189859,188914,189791,188912,189812,189843,189856,188911,189798,189802,189772,188270,188254 };
    std::set<uint32> Windwalker_BiS_Gear = { 189818,189861,189783,189838,189822,189791,189774,189812,189843,189856,189803,189848,189833,189854,188271,188270 };
    std::set<uint32> Holy_Paladin_BiS_Gear = { 189830,189845,188933,189859,188932,189847,188929,189825,188928,189840,189858,189832,189854,189802,188263,185197 };
    std::set<uint32> Protection_Paladin_BiS_Gear = { 189851,189845,188933,189859,188932,189847,188929,189825,188928,189840,189858,189832,189802,189854,179331,178771 };
    std::set<uint32> Retribution_Paladin_BiS_Gear = { 189862,188933,189859,188932,189847,188929,189805,188928,189840,188931,189786,189854,189802,188253,186866,188271 };
    std::set<uint32> Discipline_Priest_BiS_Gear = { 189852,189860,188880,189859,188879,189847,188875,189842,189855,189793,188878,189823,189839,189802,188270,186425 };
    std::set<uint32> Holy_Priest_BiS_Gear = { 189852,189860,188880,189859,188879,189847,188875,189842,189855,189821,188878,189794,189839,189854,188270,178708 };
    std::set<uint32> Shadow_Priest_BiS_Gear = { 189852,189860,188880,189859,188879,189847,188875,189842,189855,189793,188878,189823,189839,189854,188254,188270,178809 };
    std::set<uint32> Assasination_Rogue_BiS_Gear = { 191001,191001,189783,189838,188905,189847,188903,189836,188907,189856,188902,189848,189854,189802,188270,188252 };
    std::set<uint32> Outlaw_Rogue_BiS_Gear = { 189818,191001,188901,189859,188905,189847,188903,189812,189843,189856,188902,189798,189802,189772,188253,188252 };
    std::set<uint32> Subtetly_Rogue_BiS_Gear = { 191001,191001,188901,189838,188905,189847,188903,189812,189843,189856,188902,189848,189854,189772,188271,188252 };
    std::set<uint32> Elemental_Shaman_BiS_Gear = { 188923,189859,188920,188922,189849,188925,189837,188924,189831,189854,189833,189834,188272,188271 };
    std::set<uint32> Enhancement_Shaman_BiS_Gear = { 188923,189859,188920,189847,188922,189849,188925,189804,189857,189795,189802,189833,189818,189818,188253,185818,179356 };
    std::set<uint32> Restoration_Shaman_BiS_Gear = { 189754,189845,188847,189838,188920,189791,188922,189797,188925,189837,188924,189831,189772,189854,188270,188254 };
    std::set<uint32> Affliction_Warlock_BiS_Gear = { 189834,189801,189859,189810,189847,189782,189842,189855,189793,189771,189823,189854,189833,188253,188254 };
    std::set<uint32> Demonology_Warlock_BiS_Gear = { 189852,189860,188889,189859,188888,189847,188884,189842,189855,189793,188887,189823,189802,189854,178809,188253,188271 };
    std::set<uint32> Destruction_Warlock_BiS_Gear = { 189852,189860,188889,189859,188888,189847,188884,189842,188890,189793,188887,189823,189802,189854,188271,188253 };
    std::set<uint32> Arms_Warrior_BiS_Gear = { 188942,189859,188941,189847,188938,188937,189858,189832,189802,189854,188253,186438,189862 };
    std::set<uint32> Fury_Warrior_BiS_Gear = { 188942,189859,188941,188938,189825,189850,188940,189832,189802,189854,188253,186438,189862,189817 };
    std::set<uint32> Protection_Warrior_BiS_Gear = { 189851,189845,188942,189859,188941,189847,188938,189825,189850,189840,188940,189832,189854,189802,188270,188252,188266,188269 };
    std::vector<uint32> toBeMailedNewItems;
    std::set<uint32> gears;

    // Get gear for actual specialization
    switch (GetSpecializationId())
    {
    case Specializations::SPEC_DEATHKNIGHT_INITIAL:
    case Specializations::SPEC_DEATHKNIGHT_BLOOD:       gears = BloodDK_BiS_Gear; break;
    case Specializations::SPEC_DEATHKNIGHT_FROST:       gears = FrostDK_BiS_Gear; break;
    case Specializations::SPEC_DEATHKNIGHT_UNHOLY:      gears = UnholyDK_BiS_Gear; break;
    case Specializations::SPEC_DEMONHUNTER_INITIAL:
    case Specializations::SPEC_DEMONHUNTER_HAVOC:       gears = HavocDH_BiS_Gear; break;
    case Specializations::SPEC_DEMONHUNTER_VENGEANCE:   gears = VengeanceDH_BiS_Gear; break;
    case Specializations::SPEC_DRUID_INITIAL:
    case Specializations::SPEC_DRUID_GUARDIAN:          gears = Guardian_Druid_BiS_Gear; break;
    case Specializations::SPEC_DRUID_FERAL:             gears = Feral_Druid_BiS_Gear; break;
    case Specializations::SPEC_DRUID_BALANCE:           gears = Balance_Druid_BiS_Gear; break;
    case Specializations::SPEC_DRUID_RESTORATION:       gears = Restoration_Druid_BiS_Gear; break;
    case Specializations::SPEC_HUNTER_INITIAL:
    case Specializations::SPEC_HUNTER_BEASTMASTER:      gears = BeastMaster_Hunter_BiS_Gear; break;
    case Specializations::SPEC_HUNTER_MARKSMANSHIP:     gears = Marskmanship_Hunter_BiS_Gear; break;
    case Specializations::SPEC_HUNTER_SURVIVAL:         gears = Survival_Hunter_BiS_Gear; break;
    case Specializations::SPEC_MAGE_INITIAL:
    case Specializations::SPEC_MAGE_ARCANE:             gears = Arcane_Mage_BiS_Gear; break;
    case Specializations::SPEC_MAGE_FIRE:               gears = Fire_Mage_BiS_Gear; break;
    case Specializations::SPEC_MAGE_FROST:              gears = Frost_Mage_BiS_Gear; break;
    case Specializations::SPEC_MONK_INITIAL:
    case Specializations::SPEC_MONK_BREWMASTER:         gears = Brewmaster_Monk_BiS_Gear; break;
    case Specializations::SPEC_MONK_MISTWEAVER:         gears = Mistweaver_Monk_BiS_Gear; break;
    case Specializations::SPEC_MONK_WINDWALKER:         gears = Windwalker_BiS_Gear; break;
    case Specializations::SPEC_PALADIN_INITIAL:
    case Specializations::SPEC_PALADIN_HOLY:            gears = Holy_Paladin_BiS_Gear; break;
    case Specializations::SPEC_PALADIN_PROTECTION:      gears = Protection_Paladin_BiS_Gear; break;
    case Specializations::SPEC_PALADIN_RETRIBUTION:     gears = Retribution_Paladin_BiS_Gear; break;
    case Specializations::SPEC_PRIEST_INITIAL:
    case Specializations::SPEC_PRIEST_DISCIPLINE:       gears = Discipline_Priest_BiS_Gear; break;
    case Specializations::SPEC_PRIEST_HOLY:             gears = Holy_Priest_BiS_Gear; break;
    case Specializations::SPEC_PRIEST_SHADOW:           gears = Shadow_Priest_BiS_Gear; break;
    case Specializations::SPEC_ROGUE_INITIAL:
    case Specializations::SPEC_ROGUE_ASSASINATION:      gears = Assasination_Rogue_BiS_Gear; break;
    case Specializations::SPEC_ROGUE_OUTLAW:            gears = Outlaw_Rogue_BiS_Gear; break;
    case Specializations::SPEC_ROGUE_SUBTETLY:          gears = Subtetly_Rogue_BiS_Gear; break;
    case Specializations::SPEC_SHAMAN_INITIAL:
    case Specializations::SPEC_SHAMAN_ELEMENTAL:        gears = Elemental_Shaman_BiS_Gear; break;
    case Specializations::SPEC_SHAMAN_ENHANCEMENT:      gears = Enhancement_Shaman_BiS_Gear; break;
    case Specializations::SPEC_SHAMAN_RESTORATION:      gears = Restoration_Shaman_BiS_Gear; break;
    case Specializations::SPEC_WARLOCK_INITIAL:
    case Specializations::SPEC_WARLOCK_AFFLICTION:      gears = Affliction_Warlock_BiS_Gear; break;
    case Specializations::SPEC_WARLOCK_DEMONOLOGY:      gears = Demonology_Warlock_BiS_Gear; break;
    case Specializations::SPEC_WARLOCK_DESTRUCTION:     gears = Destruction_Warlock_BiS_Gear; break;
    case Specializations::SPEC_WARRIOR_INITIAL:
    case Specializations::SPEC_WARRIOR_ARMS:            gears = Arms_Warrior_BiS_Gear; break;
    case Specializations::SPEC_WARRIOR_FURY:            gears = Fury_Warrior_BiS_Gear; break;
    case Specializations::SPEC_WARRIOR_PROTECTION:      gears = Protection_Warrior_BiS_Gear; break;
    }

    // Get equipped item and store it in bag. If bag is full store it in toBeMailedCurrentEquipment to send it in mail later.
    std::vector<Item*> toBeMailedCurrentEquipment;
    for (int es = EquipmentSlots::EQUIPMENT_SLOT_START; es < EquipmentSlots::EQUIPMENT_SLOT_END; es++)
    {
        if (Item* currentEquiped = GetItemByPos(INVENTORY_SLOT_BAG_0, es))
        {
            ItemPosCountVec off_dest;
            if (CanStoreItem(NULL_BAG, NULL_SLOT, off_dest, currentEquiped, false) == EQUIP_ERR_OK)
            {
                RemoveItem(INVENTORY_SLOT_BAG_0, es, true);
                StoreItem(off_dest, currentEquiped, true);
            }
            else
                toBeMailedCurrentEquipment.push_back(currentEquiped);
        }
    }

    // If there are item in the toBeMailedCurrentEquipment vector remove it from inventory and send it in mail.
    if (!toBeMailedCurrentEquipment.empty())
    {
        CharacterDatabaseTransaction trans = CharacterDatabase.BeginTransaction();
        MailDraft draft("Inventory Full: Old Equipment.",
            "To equip your new gear, your old gear had to be unequiped. You did not have enough free bag space, the items that could not be added to your bag you can find in this mail.");

        for (Item* currentEquiped : toBeMailedCurrentEquipment)
        {
            MoveItemFromInventory(INVENTORY_SLOT_BAG_0, currentEquiped->GetBagSlot(), true);
            currentEquiped->DeleteFromInventoryDB(trans);                   // deletes item from character's inventory
            currentEquiped->SaveToDB(trans);                                // recursive and not have transaction guard into self, item not in inventory and can be save standalone
            draft.AddItem(currentEquiped);
        }

        draft.SendMailTo(trans, this, MailSender(this, MAIL_STATIONERY_GM), MailCheckMask(MAIL_CHECK_MASK_COPIED | MAIL_CHECK_MASK_RETURNED));
        CharacterDatabase.CommitTransaction(trans);
    }

    // do nothing if we have no gear list
    if (gears.empty()) return;

    // Add the new items from loadout and equip them.
    for (const uint32 item : gears)
        if (!StoreNewItemInBestSlotsWithBonus(item, 1, bonusListIDs))
                toBeMailedNewItems.push_back(item);

    // If we added more item than free bag slot send the new item as well in mail.
    if (!toBeMailedNewItems.empty())
    {
        CharacterDatabaseTransaction trans = CharacterDatabase.BeginTransaction();
        MailDraft draft("Inventory Full: New Gear.",
            "You did not have enough free bag space to add all your complementary new gear to your bags, those that did not fit you can find in this mail.");

        for (const uint32 item : toBeMailedNewItems)
        {
            if (Item* pItem = Item::CreateItem(item, 1, ItemContext::NONE, this))
            {
                for (int32 bonus : bonusListIDs)
                    pItem->AddBonuses(bonus);

                pItem->SaveToDB(trans);
                draft.AddItem(pItem);
            }
        }

        draft.SendMailTo(trans, this, MailSender(this, MAIL_STATIONERY_GM), MailCheckMask(MAIL_CHECK_MASK_COPIED | MAIL_CHECK_MASK_RETURNED));
        CharacterDatabase.CommitTransaction(trans);
    }

    SaveToDB();
}

bool Player::StoreNewItemInBestSlotsWithBonus(uint32 titem_id, uint32 titem_amount, std::vector<int32> const& bonusListIDs /*= std::vector<int32>()*/)
{
    TC_LOG_DEBUG("entities.player.items", "Player::StoreNewItemInBestSlots: Player '%s' (%s) creates initial item (ItemID: %u, Count: %u)",
        GetName().c_str(), GetGUID().ToString().c_str(), titem_id, titem_amount);

    // attempt equip by one
    while (titem_amount > 0)
    {
        uint16 eDest;
        InventoryResult msg = CanEquipNewItemWithoutLevelCheck(NULL_SLOT, eDest, titem_id, true, true);
        if (msg != EQUIP_ERR_OK)
            break;

        EquipNewItemWithBonus(eDest, titem_id, ItemContext::NONE, true, bonusListIDs);
        AutoUnequipOffhandIfNeed();
        --titem_amount;
    }

    if (titem_amount == 0)
        return true;                                        // equipped

    // attempt store
    ItemPosCountVec sDest;
    // store in main bag to simplify second pass (special bags can be not equipped yet at this moment)
    InventoryResult msg = CanStoreNewItem(INVENTORY_SLOT_BAG_0, NULL_SLOT, sDest, titem_id, titem_amount);
    if (msg == EQUIP_ERR_OK)
    {
        StoreNewItem(sDest, titem_id, true, GenerateItemRandomBonusListId(titem_id), GuidSet(), ItemContext::NONE, bonusListIDs, true);
        return true;                                        // stored
    }

    // item can't be added
    TC_LOG_ERROR("entities.player.items", "Player::StoreNewItemInBestSlots: Player '%s' (%s) can't equip or store initial item (ItemID: %u, Race: %u, Class: %u, InventoryResult: %u)",
        GetName().c_str(), GetGUID().ToString().c_str(), titem_id, GetRace(), GetClass(), msg);
    return false;
}


Item* Player::EquipNewItemWithBonus(uint16 pos, uint32 item, ItemContext context, bool update, std::vector<int32> const& bonusListIDs /*= std::vector<int32>()*/)
{
    if (Item* pItem = Item::CreateItem(item, 1, context, this))
    {
        for (uint32 bonusListID : bonusListIDs)
            pItem->AddBonuses(bonusListID);

        UpdateCriteria(CriteriaType::ObtainAnyItem, item, 1);
        Item* equippedItem = EquipItem(pos, pItem, update);
        ItemAddedQuestCheck(item, 1);
        return equippedItem;
    }

    return nullptr;
}

InventoryResult Player::CanEquipNewItemWithoutLevelCheck(uint8 slot, uint16& dest, uint32 item, bool swap, bool no_levelcheck) const
{
    dest = 0;
    Item* pItem = Item::CreateItem(item, 1, ItemContext::NONE, this);
    if (pItem)
    {
        InventoryResult result = CanEquipItemWithoutLevelCheck(slot, dest, pItem, swap, true, no_levelcheck);
        delete pItem;
        return result;
    }

    return EQUIP_ERR_ITEM_NOT_FOUND;
}

InventoryResult Player::CanEquipItemWithoutLevelCheck(uint8 slot, uint16& dest, Item* pItem, bool swap, bool not_loading, bool no_levelcheck) const
{
    dest = 0;
    if (pItem)
    {
        TC_LOG_DEBUG("entities.player.items", "Player::CanEquipItem: Player '%s' (%s), Slot: %u, Item: %u, Count: %u",
            GetName().c_str(), GetGUID().ToString().c_str(), slot, pItem->GetEntry(), pItem->GetCount());
        ItemTemplate const* pProto = pItem->GetTemplate();
        if (pProto)
        {
            // item used
            if (pItem->m_lootGenerated)
                return EQUIP_ERR_LOOT_GONE;

            if (pItem->IsBindedNotWith(this))
                return EQUIP_ERR_NOT_OWNER;

            // check count of items (skip for auto move for same player from bank)
            InventoryResult res = CanTakeMoreSimilarItems(pItem);
            if (res != EQUIP_ERR_OK)
                return res;

            // check this only in game
            if (not_loading)
            {
                // May be here should be more stronger checks; STUNNED checked
                // ROOT, CONFUSED, DISTRACTED, FLEEING this needs to be checked.
                if (HasUnitState(UNIT_STATE_STUNNED))
                    return EQUIP_ERR_GENERIC_STUNNED;

                if (IsCharmed())
                    return EQUIP_ERR_CLIENT_LOCKED_OUT; // @todo is this the correct error?

                // do not allow equipping gear except weapons, offhands, projectiles, relics in
                // - combat
                // - in-progress arenas
                if (!pProto->CanChangeEquipStateInCombat())
                {
                    if (IsInCombat())
                        return EQUIP_ERR_NOT_IN_COMBAT;

                    if (Battleground* bg = GetBattleground())
                        if (bg->isArena() && bg->GetStatus() == STATUS_IN_PROGRESS)
                            return EQUIP_ERR_NOT_DURING_ARENA_MATCH;
                }

                if (IsInCombat() && (pProto->GetClass() == ITEM_CLASS_WEAPON || pProto->GetInventoryType() == INVTYPE_RELIC) && m_weaponChangeTimer != 0)
                    return EQUIP_ERR_CLIENT_LOCKED_OUT;         // maybe exist better err

                if (IsNonMeleeSpellCast(false))
                    return EQUIP_ERR_CLIENT_LOCKED_OUT;
            }

            if (!no_levelcheck)
            {
                Optional<ContentTuningLevels> requiredLevels;
                // check allowed level (extend range to upper values if MaxLevel more or equal max player level, this let GM set high level with 1...max range items)
                if (pItem->GetQuality() == ITEM_QUALITY_HEIRLOOM)
                    requiredLevels = sDB2Manager.GetContentTuningData(pItem->GetScalingContentTuningId(), 0, true);

                if (requiredLevels && requiredLevels->MaxLevel < DEFAULT_MAX_LEVEL && requiredLevels->MaxLevel < GetLevel() && !sDB2Manager.GetHeirloomByItemId(pProto->GetId()))
                    return EQUIP_ERR_NOT_EQUIPPABLE;
            }

            uint8 eslot = FindEquipSlot(pItem, slot, swap);
            if (eslot == NULL_SLOT)
                return EQUIP_ERR_NOT_EQUIPPABLE;

            res = CanUseItem(pItem, not_loading);
            if (res != EQUIP_ERR_OK)
                return res;

            if (!swap && GetItemByPos(INVENTORY_SLOT_BAG_0, eslot))
                return EQUIP_ERR_NO_SLOT_AVAILABLE;

            // if we are swapping 2 equiped items, CanEquipUniqueItem check
            // should ignore the item we are trying to swap, and not the
            // destination item. CanEquipUniqueItem should ignore destination
            // item only when we are swapping weapon from bag
            uint8 ignore = uint8(NULL_SLOT);
            switch (eslot)
            {
            case EQUIPMENT_SLOT_MAINHAND:
                ignore = EQUIPMENT_SLOT_OFFHAND;
                break;
            case EQUIPMENT_SLOT_OFFHAND:
                ignore = EQUIPMENT_SLOT_MAINHAND;
                break;
            case EQUIPMENT_SLOT_FINGER1:
                ignore = EQUIPMENT_SLOT_FINGER2;
                break;
            case EQUIPMENT_SLOT_FINGER2:
                ignore = EQUIPMENT_SLOT_FINGER1;
                break;
            case EQUIPMENT_SLOT_TRINKET1:
                ignore = EQUIPMENT_SLOT_TRINKET2;
                break;
            case EQUIPMENT_SLOT_TRINKET2:
                ignore = EQUIPMENT_SLOT_TRINKET1;
                break;
            }

            if (ignore == uint8(NULL_SLOT) || pItem != GetItemByPos(INVENTORY_SLOT_BAG_0, ignore))
                ignore = eslot;

            InventoryResult res2 = CanEquipUniqueItem(pItem, swap ? ignore : uint8(NULL_SLOT));
            if (res2 != EQUIP_ERR_OK)
                return res2;

            // check unique-equipped special item classes
            if (pProto->GetClass() == ITEM_CLASS_QUIVER)
                for (uint8 i = INVENTORY_SLOT_BAG_START; i < INVENTORY_SLOT_BAG_END; ++i)
                    if (Item* pBag = GetItemByPos(INVENTORY_SLOT_BAG_0, i))
                        if (pBag != pItem)
                            if (ItemTemplate const* pBagProto = pBag->GetTemplate())
                                if (pBagProto->GetClass() == pProto->GetClass() && (!swap || pBag->GetSlot() != eslot))
                                    return (pBagProto->GetSubClass() == ITEM_SUBCLASS_AMMO_POUCH)
                                    ? EQUIP_ERR_ONLY_ONE_AMMO
                                    : EQUIP_ERR_ONLY_ONE_QUIVER;

            uint32 type = pProto->GetInventoryType();

            if (eslot == EQUIPMENT_SLOT_OFFHAND)
            {
                // Do not allow polearm to be equipped in the offhand (rare case for the only 1h polearm 41750)
                if (type == INVTYPE_WEAPON && pProto->GetSubClass() == ITEM_SUBCLASS_WEAPON_POLEARM)
                    return EQUIP_ERR_2HSKILLNOTFOUND;
                else if (type == INVTYPE_WEAPON)
                {
                    if (!CanDualWield())
                        return EQUIP_ERR_2HSKILLNOTFOUND;
                }
                else if (type == INVTYPE_WEAPONOFFHAND)
                {
                    if (!CanDualWield() && !pProto->HasFlag(ITEM_FLAG3_ALWAYS_ALLOW_DUAL_WIELD))
                        return EQUIP_ERR_2HSKILLNOTFOUND;
                }
                else if (type == INVTYPE_2HWEAPON)
                {
                    if (!CanDualWield() || !CanTitanGrip())
                        return EQUIP_ERR_2HSKILLNOTFOUND;
                }

                if (IsTwoHandUsed())
                    return EQUIP_ERR_2HANDED_EQUIPPED;
            }

            // equip two-hand weapon case (with possible unequip 2 items)
            if (type == INVTYPE_2HWEAPON)
            {
                if (eslot == EQUIPMENT_SLOT_OFFHAND)
                {
                    if (!CanTitanGrip())
                        return EQUIP_ERR_NOT_EQUIPPABLE;
                }
                else if (eslot != EQUIPMENT_SLOT_MAINHAND)
                    return EQUIP_ERR_NOT_EQUIPPABLE;

                if (!CanTitanGrip())
                {
                    // offhand item must can be stored in inventory for offhand item and it also must be unequipped
                    Item* offItem = GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_OFFHAND);
                    ItemPosCountVec off_dest;
                    if (offItem && (!not_loading ||
                        CanUnequipItem(uint16(INVENTORY_SLOT_BAG_0) << 8 | EQUIPMENT_SLOT_OFFHAND, false) != EQUIP_ERR_OK ||
                        CanStoreItem(NULL_BAG, NULL_SLOT, off_dest, offItem, false) != EQUIP_ERR_OK))
                        return swap ? EQUIP_ERR_CANT_SWAP : EQUIP_ERR_INV_FULL;
                }
            }
            dest = ((INVENTORY_SLOT_BAG_0 << 8) | eslot);
            return EQUIP_ERR_OK;
        }
    }

    return !swap ? EQUIP_ERR_ITEM_NOT_FOUND : EQUIP_ERR_CANT_SWAP;
}

void Player::AddItemAppearanceWithoutSave(uint32 itemModifiedAppearanceID)
{
    ItemModifiedAppearanceEntry const* itemModifiedAppearance = sItemModifiedAppearanceStore.LookupEntry(itemModifiedAppearanceID);
    if (!itemModifiedAppearance)
        return;

    uint32 blockIndex = itemModifiedAppearanceID / 32;
    uint32 bitIndex = itemModifiedAppearanceID % 32;

    AddTransmogFlag(blockIndex, 1 << bitIndex);

    //TC_LOG_INFO("server.worldserver", "AddItemAppearanceWithoutSave: blockIndex %u, bitIndex %u", blockIndex, bitIndex);
}

void Player::AddTransmogSetWithoutSave(uint32 transmogSetID)
{
    std::vector<TransmogSetItemEntry const*> const* items = sDB2Manager.GetTransmogSetItems(transmogSetID);
    if (!items)
        return;

    for (TransmogSetItemEntry const* item : *items)
    {
        ItemModifiedAppearanceEntry const* itemModifiedAppearance = sItemModifiedAppearanceStore.LookupEntry(item->ItemModifiedAppearanceID);
        if (!itemModifiedAppearance)
            continue;

        AddItemAppearanceWithoutSave(itemModifiedAppearance->ID);
    }
}

void Player::UnlockAll_TransmogIllusion(bool saveToDB)
{
    for (uint16 illusionID : sDB2Manager.GetAllIllusions())
    {
        if (saveToDB)
        {
            GetSession()->GetCollectionMgr()->AddTransmogIllusion(illusionID);
        }
        else
        {
            uint32 fieldIndexOffset = illusionID / 32;
            uint64 flag = UI64LIT(1) << (illusionID % 32);

            SetUpdateFieldFlagValue(m_values.ModifyValue(&Player::m_activePlayerData).ModifyValue(&UF::ActivePlayerData::TransmogIllusions, fieldIndexOffset), flag);

            //TC_LOG_INFO("server.worldserver", "Set TransmogIllusions UF fieldIndexOffset %u, flag: %u for illusion: %u", fieldIndexOffset, flag, illusion);
        }
    }
}

void Player::UnlockAll_TransmogSets(bool saveToDB)
{
    for (const uint32 transmogSetId : sDB2Manager.GetAllTransmogSetID())
    {
        if (saveToDB)
        {
            GetSession()->GetCollectionMgr()->AddTransmogSet(transmogSetId);
        }
        else
        {
            AddTransmogSetWithoutSave(transmogSetId);
        }
    }
}

void Player::UnlockAll_TransmogAppearances(bool saveToDB)
{
    for (const uint32 appearanceItemID : sDB2Manager.GetAllAppearanceItemID())
    {
        Item* item = GetItemByEntry(appearanceItemID);

        if (saveToDB)
        {
            GetSession()->GetCollectionMgr()->AddItemAppearance(item);
        }
        else
        {
            ItemModifiedAppearanceEntry const* itemModifiedAppearance = item->GetItemModifiedAppearance();
            AddItemAppearanceWithoutSave(itemModifiedAppearance->ID);
        }
    }
}

void Player::UnlockAll_Heirlooms(bool saveToDB)
{
    for (const uint32 item : sDB2Manager.GetAllHeirlooms())
    {
        if (saveToDB)
        {
            GetSession()->GetCollectionMgr()->AddHeirloom(item, 0);
        }
        else
        {
            AddHeirloom(item, 0);
        }
    }
}

void Player::UnlockAll_Mounts(bool saveToDB)
{
    for (const uint32 spellId : sDB2Manager.GetAllMounts())
    {
        if (saveToDB)
        {
            GetSession()->GetCollectionMgr()->AddMount(spellId, MountStatusFlags::MOUNT_STATUS_NONE);
        }
        else
        {
            MountEntry const* mount = sDB2Manager.GetMount(spellId);

            // Temporary container, just need to store only selected mount
            MountContainer tempMounts;
            tempMounts.insert(std::make_pair(spellId, MountStatusFlags::MOUNT_STATUS_NONE));

            WorldPackets::Misc::AccountMountUpdate mountUpdate;
            mountUpdate.IsFullUpdate = false;
            mountUpdate.Mounts = &tempMounts;
            SendDirectMessage(mountUpdate.Write());
        }
    }
}

void Player::UnlockAll_Toys(bool saveToDB)
{
    for (const uint32 item : sDB2Manager.GetAllToys())
    {
        if (saveToDB)
        {
            GetSession()->GetCollectionMgr()->AddToy(item, false, false);
        }
        else
        {
            AddToy(item, 0);
        }
    }
}

void Player::SendABunchOfItemsInMail(std::vector<uint32> BunchOfItems, std::string const& subject, std::vector<int32> const& bonusListIDs /*= std::vector<int32>()*/)
{
    CharacterDatabaseTransaction trans = CharacterDatabase.BeginTransaction();
    std::string _subject(subject);
    MailDraft draft(_subject,
        "This is a system message. Do not answer! Don't forget to take out the items! :)");

    for (const uint32 item : BunchOfItems)
    {
        TC_LOG_INFO("server.worldserver", "[BunchOfItems]: %u.", item);
        if (Item* pItem = Item::CreateItem(item, 1, ItemContext::NONE, this))
        {
            for (int32 bonus : bonusListIDs)
                pItem->AddBonuses(bonus);

            pItem->SaveToDB(trans);
            draft.AddItem(pItem);
        }
    }

    draft.SendMailTo(trans, this, MailSender(this, MAIL_STATIONERY_GM), MailCheckMask(MAIL_CHECK_MASK_COPIED | MAIL_CHECK_MASK_RETURNED));
    CharacterDatabase.CommitTransaction(trans);
}


void Player::SendTransmogSetItemsInMail(uint32 transmogSetId)
{
    std::vector<TransmogSetItemEntry const*> const* transmogSetItems = sDB2Manager.GetTransmogSetItems(transmogSetId);
    std::vector<uint32> setItems;
    std::string subject = "Transmog Set Items";

    if (!transmogSetItems)
        return;
   
    for (TransmogSetItemEntry const* transmogSetItem : *transmogSetItems)
    {
        ItemModifiedAppearanceEntry const* itemModifiedAppearance = sItemModifiedAppearanceStore.LookupEntry(transmogSetItem->ItemModifiedAppearanceID);
        if (!itemModifiedAppearance)
            continue;

        ItemEntry const* item = sItemStore.LookupEntry(itemModifiedAppearance->ItemID);
        if (!item)
            continue;

        setItems.push_back(item->ID);
    }

    SendABunchOfItemsInMail(setItems, subject);
}

bool Spell::IsWarboardSpell(uint32 spellId)
{
    SpellInfo const* spellInfo = sSpellMgr->GetSpellInfo(spellId, DIFFICULTY_NONE);

    for (SpellEffectInfo const& effect : spellInfo->GetEffects())
    {
        if (effect.Effect == SPELL_EFFECT_QUEST_START && (spellId > 257809 && spellId < 258608 || spellId == 343486 || spellId == 343485))
            return true;
    }

    return false;
}

bool Player::CanTakeQuestFromQuestSpell(uint32 questSpellId)
{
    // Extra check for legion questline starter spell which has 6 quest
    if (questSpellId == 281351 && (HasQuest(43926) || GetQuestStatus(43926) == QUEST_STATUS_REWARDED || HasQuest(40519) || GetQuestStatus(40519) == QUEST_STATUS_REWARDED))
        return false;

    SpellInfo const* spellInfo = sSpellMgr->GetSpellInfo(questSpellId, DIFFICULTY_NONE);
    if (!spellInfo)
    {
        TC_LOG_DEBUG("server.CanTakeQuestFromQuestSpell", "Can't get spellinfo for spell: %u", questSpellId);
        return false;
    }

    std::vector<uint32> questIds;
    std::vector<uint32> acceptableQuestIds;

    for (SpellEffectInfo const& effect : spellInfo->GetEffects())
    {
        if (effect.Effect == SPELL_EFFECT_QUEST_START)
            questIds.push_back(effect.MiscValue);
    }

    for (uint32 questId : questIds)
    {
        Quest const* quest = sObjectMgr->GetQuestTemplate(questId);
        if (!quest)
        {
            TC_LOG_DEBUG("server.CanTakeQuestFromQuestSpell", "Can't get quest template for quest: %u", questId);
            continue;
        }
        else if (!HasQuest(questId) && GetQuestStatus(questId) != QUEST_STATUS_REWARDED)
        {
            acceptableQuestIds.push_back(questId);

            TC_LOG_DEBUG("server.CanTakeQuestFromQuestSpell", "Player can take quest: %u", quest->GetQuestId());
        }
    }

    if (acceptableQuestIds.size() > 0)
        return true;

    return false;
}
