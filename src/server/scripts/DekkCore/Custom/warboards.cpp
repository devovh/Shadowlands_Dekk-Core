/*
* Copyright 2022 DekkCore
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
#include "ScriptMgr.h"
#include "GameObject.h"
#include "GameObjectAI.h"
#include "ObjectMgr.h"

// Alliance gob: 281339  |  Horde gob: 281340
struct go_warboard : public GameObjectAI
{
    go_warboard(GameObject* go) : GameObjectAI(go) { }

    // Called when a Player clicks a GameObject, before GossipHello
    // prevents achievement tracking if returning true
    bool OnReportUse(Player* player)
    {
        if (player->GetLevel() < 10)
            return false;

        if (player->IsInAlliance())
            player->SendPlayerChoice(me->GetGUID(), 352);

        if (player->IsInHorde())
            player->SendPlayerChoice(me->GetGUID(), 342);

        if (player->HasQuest(58903))
        {
            player->AddCreditToActualObjectiveForQuest(58903, 281340);
            player->RewardQuest(sObjectMgr->GetQuestTemplate(58903), LootItemType::Item, 0, player, true);
        }

        return true;
    }

};

void AddSC_Warboard_Scripts()
{
    RegisterGameObjectAI(go_warboard);
}
