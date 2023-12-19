SET @CGUID := 61000000001349604;
SET @OGUID := 4000000032604;

-- Creature
DELETE FROM `creature` WHERE `guid` = @CGUID+0;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 79243, 1116, 7078, 7078, '0', 4318, 0, 0, 1, 1936.2691650390625, 322.3975830078125, 89.0596923828125, 1.638979077339172363, 7200, 0, 0, 2586, 0, 0, 0, 0, 0, 44232); -- Baros Alexston (Area: -Unknown- - Difficulty: 0)

DELETE FROM `creature_template_addon` WHERE `entry` = 79243;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(79243, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''); -- 79243 (Baros Alexston)

-- GameObject
DELETE FROM `gameobject` WHERE `guid` = @OGUID+0;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 230280, 1116, 7078, 7078, '0', 4318, 0, 1939.8350830078125, 322.234375, 88.96616363525390625, 2.045852184295654296, 0, 0, 0.853635787963867187, 0.520870327949523925, 7200, 255, 1, 44232); -- Alliance Banner (Area: -Unknown- - Difficulty: 0)

UPDATE `gameobject_template` SET `ContentTuningId`=63, `VerifiedBuild`=44232 WHERE `entry`=230280; -- Alliance Banner

-- Condition for Visibility
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 32 AND `SourceGroup` = 5 AND `SourceEntry` = 79243) OR (`SourceTypeOrReferenceId` = 32 AND `SourceGroup` = 8 AND `SourceEntry` = 230280);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(32, 5, 79243, 0, 0, 47, 0, 34583, 66, 0, 0, 'Baros Alexston gets visible if Quest: 34583 is complete/rewarded'),
(32, 8, 230280, 0, 0, 9, 0, 34583, 0, 0, 0, 'Alliance Banner gets visible if Quest: 34583 is Taken'),
(32, 8, 230280, 0, 1, 47, 0, 34583, 66, 0, 0, 'OR: Alliance Banner gets visible if Quest: 34583 is complete/rewarded');

-- Questchain
DELETE FROM `quest_template_addon` WHERE `ID` IN (34584, 34616, 34586);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES
(34584, 0, 0, 0, 34583, 34585, -34584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(34616, 0, 0, 0, 34583, 34585, -34584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(34586, 0, 0, 0, 34585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');


-- TerrainSwap
DELETE FROM `terrain_swap_defaults` WHERE (`MapId` = 1116 AND `TerrainSwapMap` = 1158);
INSERT INTO `terrain_swap_defaults` (`MapId`, `TerrainSwapMap`, `Comment`) VALUES
(1116, 1158, 'SMV Alliance Garrison Level 1');

-- Condition
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 25 AND `SourceGroup` = 0 AND `SourceEntry` = 1158) OR (`SourceTypeOrReferenceId` = 13 AND `SourceGroup` = 1 AND `SourceEntry` = 160938) OR (`SourceTypeOrReferenceId`=15 AND `SourceGroup`=16871 AND `SourceEntry`=0 AND `SourceId`=0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(25, 0, 1158, 0, 0, 47, 0, 36797, 66, 0, 0, 'TerrainSwap to 1158 if Quest: 36797 is complete/rewarded'),
(13, 1, 160938, 0, 0, 31, 0, 3, 79655, 0, 0, 'Spell "Despawn All Summons (Garrison Intro Only) can hit Vindicator Maraad'),
(13, 1, 160938, 0, 1, 31, 0, 3, 79635, 0, 0, 'Spell "Despawn All Summons (Garrison Intro Only) can hit Prophet Velen'),
(13, 1, 160938, 0, 2, 31, 0, 3, 79656, 0, 0, 'Spell "Despawn All Summons (Garrison Intro Only) can hit Yrel'),
(15, 16871, 0, 0, 0, 47, 0, 34586, 8, 0, 0, 'Show gossip option if player has Establish Your Garrison (34586) in state incomplete');

-- Hidden Tracker Quest
DELETE FROM `quest_template` WHERE `ID` = 36797;
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestPackageID`, `ContentTuningID`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardDisplaySpell1`, `RewardDisplaySpell2`, `RewardDisplaySpell3`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitGiverModelSceneID`, `PortraitTurnIn`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionCapIn1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionCapIn2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionCapIn3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionCapIn4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `RewardFactionCapIn5`, `RewardFactionFlags`, `RewardCurrencyID1`, `RewardCurrencyQty1`, `RewardCurrencyID2`, `RewardCurrencyQty2`, `RewardCurrencyID3`, `RewardCurrencyQty3`, `RewardCurrencyID4`, `RewardCurrencyQty4`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `QuestSessionBonus`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `QuestCompletionLog`, `VerifiedBuild`) VALUES
(36797, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, (0x00000400), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '[Hidden Tracker] Founded Garrison', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

DELETE FROM `spell_script_names` WHERE `spell_id`= 160938;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(160938, 'spell_despawn_all_summons_garrison_intro_only');

DELETE FROM `creature_text` WHERE `CreatureID` = 79243;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(79243, 0, 0, 'Let me know when you are ready to start construction, commander.', 12, 0, 100, 1, 0, 0, 81887, 5, 'Baros Alexston to Player - On Quest Accept 34586');

SET @CGUID := 61000000001349606;
SET @OGUID := 4000000032606;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+4;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 70859, 1116, 7004, 0, '0', 3196, 0, 0, 1, 5611.7099609375, 4525.859375, 120.2640228271484375, 0.194926872849464416, 7200, 0, 0, 2955600, 320750, 0, 0, 0, 0, 45114), -- Thrall (Area: 0 - Difficulty: 0)
(@CGUID+1, 76411, 1116, 7004, 0, '0', 3196, 0, 0, 0, 5611.736328125, 4533.6083984375, 121.02215576171875, 6.025817394256591796, 7200, 0, 0, 24630, 0, 0, 0, 0, 0, 45114), -- Farseer Drek'Thar (Area: 0 - Difficulty: 0)
(@CGUID+2, 78288, 1116, 7004, 0, '0', 3196, 0, 0, 1, 5612.44970703125, 4523.4912109375, 119.755645751953125, 0.29847005009651184, 7200, 0, 0, 19710, 9573, 0, 0, 0, 0, 45114), -- Archmage Khadgar (Area: 0 - Difficulty: 0)
(@CGUID+3, 78272, 1116, 7004, 0, '0', 3331, 0, 0, 1, 5610.61962890625, 4521.2412109375, 119.8433837890625, 0.209163606166839599, 7200, 0, 0, 738900, 0, 0, 0, 0, 0, 45114), -- Durotan (Area: 0 - Difficulty: 0)
(@CGUID+4, 78466, 1116, 7004, 7004, '0', 3197, 0, 0, 1, 5628.99658203125, 4525.7666015625, 119.05975341796875, 2.934297561645507812, 7200, 0, 0, 3325, 0, 0, 0, 0, 0, 45114); -- Gazlowe (Area: -Unknown- - Difficulty: 0)

-- GameObject
DELETE FROM `gameobject` WHERE `guid` = @OGUID+0;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 229057, 1116, 7004, 7004, '0', 3427, 0, 5630.2197265625, 4529.671875, 119.0678482055664062, 3.66789412498474121, 0, 0, -0.96557521820068359, 0.260124027729034423, 7200, 255, 1, 45114); -- Horde Banner (Area: -Unknown- - Difficulty: 0)

-- Phasing
DELETE FROM `phase_area` WHERE (`AreaId` = 7004 AND `PhaseId` IN (3196, 3331, 3427, 3197));
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(7004, 3196, 'Cosmetic - Iconics at Garrison Location'),
(7004, 3331, 'Cosmetic - Durotan at Garrison Location'),
(7004, 3427, 'Frostfire Ridge Intro - Horde'),
(7004, 3197, 'Cosmetic - Gazlowe at Initial Garrison Location');

-- Conditon
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 26 AND `SourceGroup` = 3196 AND `SourceEntry` = 7004) OR (`SourceTypeOrReferenceId` = 26 AND `SourceGroup` = 3331 AND `SourceEntry` = 7004) OR (`SourceTypeOrReferenceId` = 26 AND `SourceGroup` = 3427 AND `SourceEntry` = 7004) OR (`SourceTypeOrReferenceId` = 26 AND `SourceGroup` = 3197 AND `SourceEntry` = 7004) OR (`SourceTypeOrReferenceId` = 32 AND `SourceGroup` = 8 AND `SourceEntry` = 229057);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 3196, 7004, 0, 0, 47, 0, 34402, 2 | 64, 0, 0, 'Apply Phase 3196 If Quest    IS complete / rewarded'),
(26, 3331, 7004, 0, 0, 47, 0, 34402, 2 | 64, 0, 0, 'Apply Phase 3331 If Quest 34402 IS complete / rewarded'),
(26, 3331, 7004, 0, 0, 47, 0, 34364, 64, 0, 1, 'Apply Phase 3331 if Quest 34364 is NOT rewarded'),
(26, 3427, 7004, 0, 0, 47, 0, 34378, 64, 0, 1, 'Apply Phase 3427 If Quest 34378 IS NOT rewarded'),
(26, 3197, 7004, 0, 0, 47, 0, 34364, 2 | 64, 0, 0, 'Apply Phase 3197 If Quest 34364 IS complete / rewarded'),
-- Horde Banner Gob
(32, 8, 229057, 0, 0, 47, 0, 34364, 2 | 8 | 64, 0, 0, 'Horde Banner gets visible if Quest: 34364 is in Progress / complete / rewarded');

DELETE FROM `gossip_menu` WHERE (`MenuID`=16271 AND `TextID`=23530);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(16271, 23530, 45114); -- 76411 (Farseer Drek'Thar)

UPDATE `creature_template` SET `gossip_menu_id`=16271 WHERE `entry`=76411; -- Farseer Drek'Tha

SET @CGUID := 61000000001349611;
SET @OGUID := 4000000032608;

SET @NPCTEXTID := 550031;

-- Creature
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+4;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 80225, 1116, 7004, 0, '0', 3887, 0, 0, 1, 5572.51220703125, 4640.20751953125, 146.4850616455078125, 4.986562252044677734, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 45114), -- Skaggit (Area: 0 - Difficulty: 0)
(@CGUID+1, 63420, 1116, 7004, 0, '0', 3887, 0, 0, 0, 5567.82666015625, 4636.73095703125, 146.71600341796875, 0, 7200, 0, 0, 1989, 0, 0, 0, 0, 0, 45114), -- SLG Generic MoP (Area: 0 - Difficulty: 0)
(@CGUID+2, 80222, 1116, 7004, 0, '0', 3887, 0, 0, 1, 5563.8505859375, 4641.017578125, 147.0868072509765625, 5.23178863525390625, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 45114), -- Mr. Pleeb (Area: 0 - Difficulty: 0)
(@CGUID+3, 80223, 1116, 7004, 0, '0', 3887, 0, 0, 1, 5564.5849609375, 4639.666015625, 146.953125, 4.985915660858154296, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 45114), -- Lady Sena (Area: 0 - Difficulty: 0)
(@CGUID+4, 80221, 1116, 7004, 0, '0', 3887, 0, 0, 1, 5569.72216796875, 4641.03662109375, 146.6927032470703125, 5.053752899169921875, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 45114); -- Libby Wrenchwrecker (Area: 0 - Difficulty: 0)

-- GameObject
DELETE FROM `gameobject` WHERE `guid` = @OGUID+0;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 233664, 1116, 7004, 7004, '0', 3887, 0, 5567.4755859375, 4636.34912109375, 146.6606292724609375, 4.785277843475341796, 0, 0, -0.68087291717529296, 0.732401549816131591, 7200, 255, 0, 45114); -- Master Surveyor (Area: -Unknown- - Difficulty: 0)

-- Creature Template Data
UPDATE `creature_template` SET `unit_flags3`=16777217 WHERE `entry`=63420; -- SLG Generic MoP
UPDATE `creature_template` SET `gossip_menu_id`=16474, `minlevel`=40, `maxlevel`=40 WHERE `entry`=80223; -- Lady Sena
UPDATE `creature_template` SET `minlevel`=40, `maxlevel`=40 WHERE `entry`=80225; -- Skaggit
UPDATE `creature_template` SET `minlevel`=40, `maxlevel`=40 WHERE `entry`=80222; -- Mr. Pleeb
UPDATE `creature_template` SET `gossip_menu_id`=16473 WHERE `entry`=80221; -- Libby Wrenchwrecker

-- Gossip
DELETE FROM `npc_text` WHERE `ID` BETWEEN @NPCTEXTID+0 AND @NPCTEXTID+1;
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(@NPCTEXTID+0, 1, 0, 0, 0, 0, 0, 0, 0, 85494, 0, 0, 0, 0, 0, 0, 0, 45114), -- 80221 (Libby Wrenchwrecker)
(@NPCTEXTID+1, 1, 0, 0, 0, 0, 0, 0, 0, 85496, 0, 0, 0, 0, 0, 0, 0, 45114); -- 80223 (Lady Sena)

DELETE FROM `gossip_menu` WHERE (`MenuID`=16473 AND `TextID`=@NPCTEXTID+0) OR (`MenuID`=16474 AND `TextID`=@NPCTEXTID+1);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(16473, @NPCTEXTID+0, 45114), -- 80221 (Libby Wrenchwrecker)
(16474, @NPCTEXTID+1, 45114); -- 80223 (Lady Sena)

-- Phasing
DELETE FROM `phase_area` WHERE (`AreaId` = 7004 AND `PhaseId` = 3887);
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(7004, 3887, 'Cosmetic - See Master Surveyor');

DELETE FROM `phase_name` WHERE `ID` = 3887;
INSERT INTO `phase_name` (`ID`, `Name`) VALUES
(3887, 'Cosmetic - See Master Surveyor');

-- Condition
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 26 AND `SourceGroup` = 3887 AND `SourceEntry` = 7004);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 3887, 7004, 0, 0, 47, 0, 34378, 8, 0, 0, 'Player has Establish Your Garrison (34378) in state incomplete');

