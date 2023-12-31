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


//
// THIS FILE IS VERY VERY MODIFIED BY DEKKCORE!
//


#ifndef ZONE_SCRIPT_H_
#define ZONE_SCRIPT_H_

#include "Define.h"
#include "Common.h"
#include "ObjectGuid.h"
#include "ScriptMgr.h"

class Creature;
class GameObject;
class Unit;
class WorldObject;
struct CreatureData;

enum ZoneScriptType
{
    ZONE_SCRIPT_TYPE_ZONE,
    ZONE_SCRIPT_TYPE_INSTANCE,
    ZONE_SCRIPT_TYPE_BATTLEFIELD,
    ZONE_SCRIPT_TYPE_OUTDOORPVP,
};


class TC_GAME_API ZoneScript : public ScriptObject
{
public:
    ZoneScript() : ScriptObject(""), _scriptType(ZONE_SCRIPT_TYPE_ZONE) { }
    virtual ~ZoneScript() { }
    ZoneScript(const char* name);

    virtual uint32 GetCreatureEntry(ObjectGuid::LowType /*spawnId*/, CreatureData const* data);
    virtual uint32 GetGameObjectEntry(ObjectGuid::LowType /*spawnId*/, uint32 entry) { return entry; }

    virtual void OnCreatureCreate(Creature*) { }
    virtual void OnCreatureRemove(Creature*) { }

    virtual void OnGameObjectCreate(GameObject*) { }
    virtual void OnGameObjectRemove(GameObject*) { }

    virtual void OnGameObjectCreateForScript(GameObject* /*go*/) {}
    virtual void OnGameObjectRemoveForScript(GameObject* /*go*/) {}
    virtual void OnUnitDeath(Unit*) { }
    virtual void OnPlayerDeath(Player*) { }

    // Called when a player successfully enters or exit the zone.
    virtual void OnPlayerEnterZone(Player* /*player*/) { }
    virtual void OnPlayerExitZone(Player* /*player*/) { }
    virtual void OnPlayerAreaUpdate(Player* /*player*/, uint32 /*newAreaId*/, uint32 /*oldAreaId*/) { }

    //All-purpose data storage ObjectGuid
    virtual ObjectGuid GetGuidData(uint32 /*DataId*/) const { return ObjectGuid::Empty; }
    virtual void SetGuidData(uint32 /*DataId*/, ObjectGuid /*Value*/) { }

    //All-purpose data storage 64 bit
    virtual uint64 GetData64(uint32 /*DataId*/) const { return 0; }
    virtual void SetData64(uint32 /*DataId*/, uint64 /*Value*/) { }

    //All-purpose data storage 32 bit
    virtual uint32 GetData(uint32 /*DataId*/) const { return 0; }
    virtual void SetData(uint32 /*DataId*/, uint32 /*Value*/) { }

    virtual void TriggerGameEvent(uint32 gameEventId, WorldObject* source = nullptr, WorldObject* target = nullptr);
    virtual void ProcessEvent(WorldObject* /*obj*/, uint32 /*eventId*/, WorldObject* /*invoker*/) { }

    bool IsZoneScript() { return _scriptType == ZONE_SCRIPT_TYPE_ZONE; }
    bool IsInstanceScript() { return _scriptType == ZONE_SCRIPT_TYPE_INSTANCE; }

protected:
    ZoneScriptType _scriptType;


};

#endif
