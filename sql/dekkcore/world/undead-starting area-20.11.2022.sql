UPDATE `gameobject_template` SET `Data1`='207255', `Data2`='0', `Data8`='28608' WHERE  `entry`=207255;
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `QuestRequired`) VALUES ('207255', '64582', '1');
UPDATE `gameobject_template_addon` SET `flags`='65540' WHERE  `entry`=207255;

UPDATE `gameobject_template` SET `Data1`='207256', `Data2`='0', `Data8`='28608' WHERE  `entry`=207256;
UPDATE `gameobject_template_addon` SET `flags`='65540' WHERE  `entry`=207256;
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `QuestRequired`) VALUES ('207256', '64581', '1');

UPDATE `smart_scripts` SET `event_type`='73', `event_flags`='0', `event_param2`='0', `event_param3`='0', `action_type`='11', `action_param1`='46598', `action_param3`='0', `action_param4`='0', `action_param5`='0', `target_type`='19', `target_param1`='49337', `target_param2`='20' WHERE  `entryorguid`=49340 AND `source_type`=0 AND `id`=0 AND `link`=1;
UPDATE `smart_scripts` SET `action_type`='41', `action_param1`='60000', `action_param2`='0', `target_type`='1', `target_param1`='0', `target_param2`='0' WHERE  `entryorguid`=49340 AND `source_type`=0 AND `id`=1 AND `link`=0;

UPDATE `quest_template_addon` SET `PrevQuestID`='28651', `NextQuestID`='28672' WHERE  `ID`=24961;
UPDATE `quest_template_addon` SET `PrevQuestID`='24968' WHERE  `ID`=28651;
UPDATE `quest_template_addon` SET `NextQuestID`='3009', `ExclusiveGroup`='28651' WHERE  `ID`=24968;
UPDATE `quest_template_addon` SET `NextQuestID`='28651' WHERE  `ID`=26801;

UPDATE `creature_template` SET `gossip_menu_id`='4655', `npcflag`='49' WHERE  `entry`=2126;
UPDATE `creature_template` SET `gossip_menu_id`='4654', `npcflag`='49' WHERE  `entry`=2124;
UPDATE `creature_template` SET `gossip_menu_id`='3645', `npcflag`='49' WHERE  `entry`=2123;

UPDATE `gameobject_template` SET `Data1`='13364' WHERE  `entry`=175566;

REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (24980, 0, 0, 0, 258607, 1535, 0, 18, 0, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (24980, 1, 1, -1, 0, 0, 0, 18, 0, 1, 0, 0, 0, 0, 0, 0);

REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (24980, 1, 0, 2221, 1011, 0, 45114);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (24980, 0, 8, 2301, 1517, 0, 45114);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (24980, 0, 7, 2293, 1580, 0, 45114);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (24980, 0, 6, 2289, 1623, 0, 45114);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (24980, 0, 5, 2315, 1659, 0, 45114);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (24980, 0, 4, 2351, 1684, 0, 45114);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (24980, 0, 3, 2413, 1656, 0, 45114);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (24980, 0, 2, 2485, 1583, 0, 45114);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (24980, 0, 1, 2479, 1522, 0, 45114);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (24980, 0, 0, 2398, 1349, 0, 45114);

UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=11135 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=11134 AND `OptionID`=0;

UPDATE `creature_template` SET `faction`='7', `unit_flags`='0' WHERE  `entry`=38967;
UPDATE `creature_template_addon` SET `bytes1`='0', `bytes2`='0', `auras`='32615' WHERE  `entry`=38967;