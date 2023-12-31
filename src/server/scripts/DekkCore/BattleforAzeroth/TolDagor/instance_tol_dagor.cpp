/*
 * Copyright 2021 DEKKCORE
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
#include "Player.h"
#include "InstanceScript.h"
#include "tol_dagor.h"

DoorData const doorData[] =
{
    { 284467, DATA_THE_SAND_QUEEN, DOOR_TYPE_ROOM },
    { 281030, DATA_KNIGHT_CAPTAIN_VALYRI, DOOR_TYPE_ROOM },
    { 281049, DATA_KNIGHT_CAPTAIN_VALYRI, DOOR_TYPE_ROOM },
};

class instance_tol_dagor : public InstanceMapScript
{
public:
    instance_tol_dagor() : InstanceMapScript("instance_tol_dagor", 1771) { }

    struct instance_tol_dagor_InstanceMapScript : public InstanceScript
    {
        instance_tol_dagor_InstanceMapScript(InstanceMap* map) : InstanceScript(map)
        {
            SetHeaders(DataHeader);
            SetBossNumber(EncounterCount);
            LoadDoorData(doorData);
        }
    };

    InstanceScript* GetInstanceScript(InstanceMap* map) const override
    {
        return new instance_tol_dagor_InstanceMapScript(map);
    }

};

void AddSC_instance_tol_dagor()
{
    new instance_tol_dagor();
}
