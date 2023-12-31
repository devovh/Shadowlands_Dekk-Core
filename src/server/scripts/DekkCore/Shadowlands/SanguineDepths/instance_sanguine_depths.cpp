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

class instance_sanquine_depths : public InstanceMapScript
{
    public:
        instance_sanquine_depths() : InstanceMapScript("instance_sanquine_depths", 2284) { }

struct instance_sanquine_depths_InstanceMapScript : public InstanceScript
{
    instance_sanquine_depths_InstanceMapScript(InstanceMap* map) : InstanceScript(map) { }
};

InstanceScript* GetInstanceScript(InstanceMap* map) const override
{
    return new instance_sanquine_depths_InstanceMapScript(map);
}
};

void AddSC_instance_sanquine_depths()
{
    new instance_sanquine_depths();
}
