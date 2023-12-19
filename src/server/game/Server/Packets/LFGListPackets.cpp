/*
 * Copyright (C) 2008-2022 TrinityCore <http://www.trinitycore.org/>
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

#include "LFGListPackets.h"
#include "LFGPackets.h"

ByteBuffer& operator<<(ByteBuffer& data, WorldPackets::LFGList::LFGListBlacklist const& blackList)
{
    data << blackList.ActivityID;
    data << blackList.Reason;

    return data;
}

ByteBuffer& operator>>(ByteBuffer& data, WorldPackets::LFGList::LFGListBlacklist& blackList)
{
    data >> blackList.ActivityID;
    data >> blackList.Reason;
    return data;
}

ByteBuffer& operator<<(ByteBuffer& data, WorldPackets::LFGList::ListRequest const& join)
{
    data << join.ActivityID;

    data << join.ItemLevel;

    data.WriteBits(join.GroupName.length(), 8);
    data.WriteBits(join.Comment.length(), 12);
    data.WriteBits(join.VoiceChat.length(), 6);
    data.WriteBit(join.AutoAccept);
    data.WriteBit(join.PrivateGroup);
    data.WriteBit(join.QuestID.has_value() && *join.QuestID != 0);
    data.WriteBit(join.CrossFaction.has_value() && *join.CrossFaction != 0);
    data.WriteBit(join.MinMyticPlusRating.has_value() && *join.MinMyticPlusRating != 0);

    if (join.QuestID.has_value() && *join.QuestID != 0)
        data << *join.QuestID;

    data.WriteString(join.GroupName);
    data.WriteString(join.Comment);
    data.WriteString(join.VoiceChat);

    if (join.CrossFaction.has_value() && *join.CrossFaction != 0)
        data << *join.CrossFaction;

    if (join.MinMyticPlusRating.has_value() && *join.MinMyticPlusRating != 0)
        data << *join.MinMyticPlusRating;

    data << join.Queued;

    data.FlushBits();

    return data;
}

ByteBuffer& operator>>(ByteBuffer& data, WorldPackets::LFGList::ListRequest& join)
{
    data >> join.ActivityID;

    data >> join.ItemLevel;

    uint32 NameLen = data.ReadBits(8);
    uint32 CommenteLen = data.ReadBits(12);
    uint32 VoiceChateLen = data.ReadBits(6);
    join.AutoAccept = data.ReadBit();
    join.PrivateGroup = data.ReadBit();
    bool isForQuest = data.ReadBit();
    bool isCrossFaction = data.ReadBit();
    bool haveMinMyticPlusRating = data.ReadBit();

    if (isForQuest)
        data >> *join.QuestID;

    join.GroupName = data.ReadString(NameLen);
    join.Comment = data.ReadString(CommenteLen);
    join.VoiceChat = data.ReadString(VoiceChateLen);

    if (isCrossFaction)
        data >> *join.CrossFaction;

    if (haveMinMyticPlusRating)
        data >> *join.MinMyticPlusRating;

    data >> join.Queued;

    data.FlushBits();

    return data;
}

WorldPacket const* WorldPackets::LFGList::LFGListUpdateBlacklist::Write()
{
    std::sort(Blacklist.begin(), Blacklist.end(), [](LFGListBlacklist const& a, LFGListBlacklist const& b) -> bool
    {
        return a.ActivityID < b.ActivityID;
    });

    _worldPacket << static_cast<uint32>(Blacklist.size());
    for (auto const& map : Blacklist)
        _worldPacket << map;

    return &_worldPacket;
}

WorldPacket const* WorldPackets::LFGList::LFGListUpdateStatus::Write()
{
    _worldPacket << ApplicationTicket;
    _worldPacket << ExpirationTime;
    _worldPacket << Status;
    _worldPacket << Request;

    _worldPacket << UNK1;
    _worldPacket << UNK2;

    _worldPacket.WriteBit(Listed);

    _worldPacket.FlushBits();

    return &_worldPacket;
}

void WorldPackets::LFGList::LFGListInviteResponse::Read()
{
    _worldPacket >> ApplicantTicket;
    _worldPacket.FlushBits();
    Accept = _worldPacket.ReadBit();
}

void WorldPackets::LFGList::LFGListJoin::Read()
{
    _worldPacket >> Request;
}

void WorldPackets::LFGList::LFGListLeave::Read()
{
    _worldPacket >> ApplicationTicket;
}

WorldPacket const* WorldPackets::LFGList::LFGListJoinResult::Write()
{
    _worldPacket << ApplicationTicket;
    _worldPacket << Status;
    _worldPacket << Result;

    return &_worldPacket;
}

WorldPacket const* WorldPackets::LFGList::LFGListSearchStatus::Write()
{
    _worldPacket << Ticket;
    _worldPacket << Status;
    _worldPacket.WriteBit(UnkBit);
    _worldPacket.FlushBits();

    return &_worldPacket;
}

void WorldPackets::LFGList::LFGListSearch::Read()
{
    auto count = _worldPacket.ReadBits(5);
    _worldPacket.FlushBits();

    if (count)
    {
        for (int i = 0; i < count; i++)
        {
            auto len = new uint32[3];
            for (int i = 0; i < 3; i++)
                len[i] = _worldPacket.ReadBits(5);

            _worldPacket.FlushBits();

            for (int i = 0; i < 3; i++)
                LanguageSearchFilter += " " + _worldPacket.ReadString(len[i]);
        }
    }

    _worldPacket >> CategoryID;
    _worldPacket >> SearchTerms;
    _worldPacket >> Filter;
    _worldPacket >> PreferredFilters;
    Blacklist.resize(_worldPacket.read<uint32>());
    Guids.resize(_worldPacket.read<uint32>());

    for (auto& v : Blacklist)
    {
        _worldPacket >> v.ActivityID;
        _worldPacket >> v.Reason;
    }

    for (auto& v : Guids)
        _worldPacket >> v;
}

ByteBuffer& operator<<(ByteBuffer& data, WorldPackets::LFGList::ListSearchResult const& listSearch)
{
    data << listSearch.ApplicationTicket;
    data << listSearch.ResultID;
    data << listSearch.UnkGuid1;
    data << listSearch.UnkGuid2;
    data << listSearch.UnkGuid3;
    data << listSearch.UnkGuid4;
    data << listSearch.UnkGuid5;
    data << listSearch.VirtualRealmAddress;
    data << static_cast<uint32>(listSearch.BNetFriendsGuids.size());
    data << static_cast<uint32>(listSearch.NumCharFriendsGuids.size());
    data << static_cast<uint32>(listSearch.NumGuildMateGuids.size());
    data << static_cast<uint32>(listSearch.Members.size());
    data << listSearch.CompletedEncounters;
    data << listSearch.Age;
    data << listSearch.ApplicationStatus;

    data << listSearch.UnkGuid5;

    for (ObjectGuid const& v : listSearch.BNetFriendsGuids)
        data << v;

    for (ObjectGuid const& v : listSearch.NumCharFriendsGuids)
        data << v;

    for (ObjectGuid const& v : listSearch.NumGuildMateGuids)
        data << v;

    for (auto const& v : listSearch.Members)
        data << v;

    data << listSearch.JoinRequest;

    return data;
}

ByteBuffer& operator<<(ByteBuffer& data, WorldPackets::LFGList::MemberInfo const& memberInfo)
{
    data << memberInfo.ClassID;
    data << memberInfo.Role;

    return data;
}

WorldPacket const* WorldPackets::LFGList::LFGListSearchResults::Write()
{
    _worldPacket << AppicationsCount;
    _worldPacket << static_cast<uint32>(SearchResults.size());
    for (auto const& v : SearchResults)
        _worldPacket << v;

    return &_worldPacket;
}

void WorldPackets::LFGList::LFGListApplyToGroup::Read()
{
    _worldPacket >> application.ApplicationTicket;
    _worldPacket >> application.ActivityID;
    application.Role = _worldPacket.read<uint8>();
    application.Comment = _worldPacket.ReadString(_worldPacket.ReadBits(8));
}

void WorldPackets::LFGList::LFGListCancelApplication::Read()
{
    _worldPacket >> ApplicantTicket;
}

void WorldPackets::LFGList::LFGListClubFinderRequestPendingClubList::Read()
{
    _worldPacket >> Queued;
}

void WorldPackets::LFGList::LFGListDeclineApplicant::Read()
{
    _worldPacket >> ApplicantTicket;
    _worldPacket >> ApplicationTicket;
}

void WorldPackets::LFGList::LFGListInviteApplicant::Read()
{
    _worldPacket >> ApplicantTicket;
    _worldPacket >> ApplicationTicket;
    Applicant.resize(_worldPacket.read<uint32>());
    for (auto& v : Applicant)
    {
        _worldPacket >> v.PlayerGUID;
        _worldPacket >> v.Role;
    }
}

void WorldPackets::LFGList::LFGListUpdateRequest::Read()
{
    _worldPacket >> Ticket;
    _worldPacket >> UpdateRequest;
}

WorldPacket const* WorldPackets::LFGList::LFGListInviteApplicantResponse::Write()
{
    _worldPacket << ApplicationTicket;
    _worldPacket << Timer;
    _worldPacket << Status;

    return &_worldPacket;
}

WorldPacket const* WorldPackets::LFGList::LFGListApplyToGroupResponce::Write()
{
    _worldPacket << ApplicantTicket;
    _worldPacket << ApplicationTicket;
    _worldPacket << InviteExpireTimer;
    _worldPacket << Status;
    _worldPacket << Role;
    _worldPacket << SearchResult;
    _worldPacket.WriteBits(ApplicationStatus, 4);
    _worldPacket.FlushBits();

    return &_worldPacket;
}

WorldPacket const* WorldPackets::LFGList::LFGListGroupInviteResponce::Write()
{
    _worldPacket << ApplicantTicket;
    _worldPacket << ApplicationTicket;
    _worldPacket << InviteExpireTimer;
    _worldPacket << Status;
    _worldPacket << Role;
    _worldPacket.WriteBits(ApplicationStatus, 4);
    _worldPacket.FlushBits();

    return &_worldPacket;
}

WorldPacket const* WorldPackets::LFGList::LFGListApplicationUpdate::Write()
{
    _worldPacket << ApplicationTicket;
    _worldPacket << static_cast<uint32>(Applicants.size());
    _worldPacket << UnkInt;
    for (auto const& v : Applicants)
    {
        _worldPacket << v.ApplicantTicket;
        _worldPacket << v.ApplicantPartyLeader;
        _worldPacket << static_cast<uint32>(v.Member.size());
        for (auto const& z : v.Member)
        {
            _worldPacket << z.PlayerGUID;
            _worldPacket << z.VirtualRealmAddress;
            _worldPacket << z.ItemLevel;
            _worldPacket << z.Level;
            _worldPacket << z.HonorLevel;
            _worldPacket << z.PossibleRoleMask;
            _worldPacket << z.SelectedRoleMask;
            _worldPacket << static_cast<uint32>(z.AcStat.size());
            for (auto const& x : z.AcStat)
            {
                _worldPacket << x.UnkInt4;
                _worldPacket << x.UnkInt5;
            }
        }

        _worldPacket.WriteBits(v.ApplicationStatus, 4);
        _worldPacket.WriteBit(v.Listed);
        _worldPacket.WriteString(v.Comment);
    }

    return &_worldPacket;
}

WorldPacket const* WorldPackets::LFGList::LFGListSearchResultUpdate::Write()
{
    _worldPacket << static_cast<uint32>(ResultUpdate.size());
    for (auto const& update : ResultUpdate)
    {
        _worldPacket << update.ApplicationTicket;
        _worldPacket << update.UnkInt;

        _worldPacket << static_cast<uint32>(update.Members.size());
        for (auto const& member : update.Members)
            _worldPacket << member;

        _worldPacket.WriteBit(update.UnkGuid.has_value());
        _worldPacket.WriteBit(update.VirtualRealmAddress.has_value());
        _worldPacket.WriteBit(update.UnkInt2.has_value());
        _worldPacket.WriteBit(update.UnkBit96);
        _worldPacket.WriteBit(update.UnkGuid2.has_value());
        _worldPacket.WriteBit(update.LeaderGuid.has_value());
        _worldPacket.WriteBit(update.UnkGuid3.has_value());
        _worldPacket.WriteBit(update.UnkBIt);
        _worldPacket.WriteBit(update.UnkBIt2);
        _worldPacket.WriteBit(update.UnkBIt3);
        _worldPacket.WriteBit(update.UnkBIt4);
        _worldPacket.FlushBits();

        _worldPacket << update.JoinRequest;

        if (update.UnkGuid.has_value())
            _worldPacket << *update.UnkGuid;

        if (update.VirtualRealmAddress.has_value())
            _worldPacket << *update.VirtualRealmAddress;

        if (update.UnkInt2.has_value())
            _worldPacket << *update.UnkInt2;

        if (update.UnkGuid2.has_value())
            _worldPacket << *update.UnkGuid2;

        if (update.LeaderGuid.has_value())
            _worldPacket << *update.LeaderGuid;

        if (update.UnkGuid3.has_value())
            _worldPacket << *update.UnkGuid3;
    }

    return &_worldPacket;
}
