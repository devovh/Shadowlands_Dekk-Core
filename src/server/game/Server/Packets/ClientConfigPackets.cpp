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

#include "ClientConfigPackets.h"

WorldPacket const* WorldPackets::ClientConfig::AccountDataTimes::Write()
{
    _worldPacket << PlayerGuid;
    _worldPacket << ServerTime;
    for (Timestamp<> const& accountDataTime : AccountTimes)
        _worldPacket << accountDataTime;

    return &_worldPacket;
}

WorldPacket const* WorldPackets::ClientConfig::ClientCacheVersion::Write()
{
    _worldPacket << uint32(CacheVersion);

    return &_worldPacket;
}

void WorldPackets::ClientConfig::RequestAccountData::Read()
{
    _worldPacket >> PlayerGuid;
    DataType = _worldPacket.ReadBits(4);
}

WorldPacket const* WorldPackets::ClientConfig::UpdateAccountData::Write()
{
    _worldPacket << Player;
    _worldPacket << Time;
    _worldPacket << uint32(Size);
    _worldPacket.WriteBits(DataType, 4);
    _worldPacket << uint32(CompressedData.size());
    _worldPacket.append(CompressedData);

    return &_worldPacket;
}

void WorldPackets::ClientConfig::UserClientUpdateAccountData::Read()
{
    _worldPacket >> PlayerGuid;
    _worldPacket >> Time;
    _worldPacket >> Size;
    DataType = _worldPacket.ReadBits(4);

    uint32 compressedSize = _worldPacket.read<uint32>();
    if (compressedSize > _worldPacket.size() - _worldPacket.rpos())
        throw ByteBufferPositionException(_worldPacket.rpos(), _worldPacket.size(), compressedSize);

    if (compressedSize)
    {
        CompressedData.resize(compressedSize);
        _worldPacket.read(CompressedData.contents(), compressedSize);
    }
}

void WorldPackets::ClientConfig::SetAdvancedCombatLogging::Read()
{
    Enable = _worldPacket.ReadBit();
}

void WorldPackets::ClientConfig::AddonList::Read()
{
    _worldPacket >> PlayerGuid;
    Addons.resize(_worldPacket.read<uint32>());
    
    for (auto& v : Addons)
    {
        uint32 len1 = _worldPacket.ReadBits(10);
        uint32 len2 = _worldPacket.ReadBits(10);
        v.UnkBit1 = _worldPacket.ReadBit();
        v.UnkBit2 = _worldPacket.ReadBit();
        v.UnkString1 = _worldPacket.ReadString(len1);
        v.UnkString2 = _worldPacket.ReadString(len2);
    }
}

