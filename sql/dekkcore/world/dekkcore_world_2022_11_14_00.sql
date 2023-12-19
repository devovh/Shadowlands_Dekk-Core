DELETE FROM `creature_template_addon` WHERE `entry` IN  (155011 /*155011 (Daphne Funkybeats) - Cosmetic - Hold Mug Kul Tiras Tankard*/);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(155011, 0, 0, 0, 0, 0, 14677, 0, 0, 0, '263410'); -- 155011 (Daphne Funkybeats) - Cosmetic - Hold Mug Kul Tiras Tankard

DELETE FROM `creature_text` WHERE (`CreatureID` = 1275 AND `GroupID` = 0) OR(`CreatureID` = 1286 AND `GroupID` = 0) OR (`CreatureID` = 1295 AND `GroupID` = 0) OR (`CreatureID` = 1299 AND `GroupID` IN(0, 1)) OR (`CreatureID` = 1319 AND `GroupID` = 0) OR (`CreatureID` = 1324 AND `GroupID` = 0) OR (`CreatureID` = 1333 AND `GroupID` = 0) OR (`CreatureID` = 1341 AND `GroupID` = 0) OR (`CreatureID` = 4981 AND `GroupID` = 0) OR (`CreatureID` = 155011 AND `GroupID` IN(0, 1));
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(1275, 0, 0, 'Welcome!', 12, 7, 100, 3, 0, 0, 32807, 0, 'Kyra Boucher to Player'), -- BroadcastTextID: 32807 - 43329 - 43339 - 53806 - 62063 - 150126 - 190665
(1275, 0, 1, 'Welcome. May I help you find something?', 12, 7, 100, 3, 0, 0, 32811, 0, 'Kyra Boucher to Player'), -- BroadcastTextID: 32811 - 43336 - 43343
(1286, 0, 0, 'Greetings! Please have a look around.', 12, 7, 100, 3, 0, 0, 32809, 0, 'Edna Mullby to Player'), -- BroadcastTextID: 32809 - 43333 - 43341
(1295, 0, 0, 'Greetings, $c.', 12, 7, 100, 3, 0, 0, 32808, 0, 'Lara Moore to Player'), -- BroadcastTextID: 7130 - 7131 - 7132 - 13306 - 29493 - 32808 - 43330 - 43340 - 49696 - 50721
(1299, 0, 0, 'Welcome!', 12, 7, 100, 3, 0, 0, 32807, 0, 'Lisbeth Schneider to Player'), -- BroadcastTextID: 32807 - 43329 - 43339 - 53806 - 62063 - 150126 - 190665
(1299, 0, 1, 'Welcome. May I help you find something?', 12, 7, 100, 3, 0, 0, 32811, 0, 'Lisbeth Schneider to Player'), -- BroadcastTextID: 32811 - 43336 - 43343
(1299, 0, 2, 'Greetings, $c.', 12, 7, 100, 3, 0, 85643, 32808, 0, 'Lisbeth Schneider to Player'), -- BroadcastTextID: 7130 - 7131 - 7132 - 13306 - 29493 - 32808 - 43330 - 43340 - 49696 - 50721
(1299, 0, 3, 'Greetings! Please have a look around.', 12, 7, 100, 3, 0, 0, 32809, 0, 'Lisbeth Schneider to Player'), -- BroadcastTextID: 32809 - 43333 - 43341
(1299, 0, 4, 'Welcome.', 12, 7, 100, 3, 0, 0, 32936, 0, 'Lisbeth Schneider to Player'), -- BroadcastTextID: w32936 - 43338 - 43345 - 62085 - 116569 - 159547 - 189866 - 192447
(1299, 0, 5, 'Greetings.', 12, 7, 100, 3, 0, 0, 32935, 0, 'Lisbeth Schneider to Player'), -- BroadcastTextID: 30620 - 32935 - 33692 - 43337 - 43344 - 67987 - 113432 - 113724 - 113743 - 116805 - 116848 - 116855 - 116862 - 116869 - 116876 - 116883 - 116891 - 118963 - 119094 - 122350 - 125597 - 128601 - 131095 - 132552 - 140147 - 140149 - 142445 - 142489 - 144213 - 145447 - 145856 - 147420 - 176298 - 181403 - 181457 - 182009 - 182946 - 183959 - 189421 - 189817 - 189841 - 189877 - 189904 - 192271 - 192272 - 195237 - 209103 - 216530
(1299, 0, 6, 'Let me know if you need help finding anything, $c.', 12, 7, 100, 3, 0, 0, 32810, 0, 'Lisbeth Schneider to Player'), -- BroadcastTextID: 32810 - 43335 - 43342
(1319, 0, 0, 'Greetings.', 12, 7, 100, 3, 0, 0, 32935, 0, 'Bryan Cross to Player'), -- BroadcastTextID: 30620 - 32935 - 33692 - 43337 - 43344 - 67987 - 113432 - 113724 - 113743 - 116805 - 116848 - 116855 - 116862 - 116869 - 116876 - 116883 - 116891 - 118963 - 119094 - 122350 - 125597 - 128601 - 131095 - 132552 - 140147 - 140149 - 142445 - 142489 - 144213 - 145447 - 145856 - 147420 - 176298 - 181403 - 181457 - 182009 - 182946 - 183959 - 189421 - 189817 - 189841 - 189877 - 189904 - 192271 - 192272 - 195237 - 209103 - 216530
(1324, 0, 0, 'Welcome. May I help you find something?', 12, 7, 100, 3, 0, 0, 32811, 0, 'Heinrich Stone to Player'), -- BroadcastTextID: 32811 - 43336 - 43343
(1333, 0, 0, 'Greetings, $c.', 12, 7, 100, 3, 0, 0, 32808, 0, 'Gerik Koen to Player'), -- BroadcastTextID: 7130 - 7131 - 7132 - 13306 - 29493 - 32808 - 43330 - 43340 - 49696 - 50721
(1341, 0, 0, 'Welcome. May I help you find something?', 12, 7, 100, 3, 0, 0, 32811, 0, 'Wilhelm Strang to Player'), -- BroadcastTextID: 32811 - 43336 - 43343
(4981, 0, 0, 'Greetings.', 12, 7, 100, 3, 0, 0, 32935, 0, 'Ben Trias to Player'), -- BroadcastTextID: 30620 - 32935 - 33692 - 43337 - 43344 - 67987 - 113432 - 113724 - 113743 - 116805 - 116848 - 116855 - 116862 - 116869 - 116876 - 116883 - 116891 - 118963 - 119094 - 122350 - 125597 - 128601 - 131095 - 132552 - 140147 - 140149 - 142445 - 142489 - 144213 - 145447 - 145856 - 147420 - 176298 - 181403 - 181457 - 182009 - 182946 - 183959 - 189421 - 189817 - 189841 - 189877 - 189904 - 192271 - 192272 - 195237 - 209103 - 216530
(155011, 0, 0, 'Come on everyone, let\'s get funky!', 14, 0, 100, 15, 0, 85886, 177277, 0, 'Daphne Funkybeats'),
(155011, 0, 1, 'That was great! Time for a cold refreshment.', 12, 0, 100, 25, 0, 6594, 177278, 0, 'Daphne Funkybeats');

-- Ben Trias smart ai
SET @ENTRY := 4981;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 10, 0, 100, 0, 1, 15, 60000, 300000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On only non hostile unit in line of sight (OOC) - Self: Talk Greetings. (0) to invoker');

-- Thomas Miller smart ai
SET @ENTRY := 3518;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 1, 0, 100, 0, 26000, 26000, 26000, 26000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Every 26 seconds (OOC) - Self: Talk Freshly baked bread for sale! (0) to invoker');

-- Wilhelm Strang smart ai
SET @ENTRY := 1341;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 10, 0, 100, 0, 1, 15, 60000, 300000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On only non hostile unit in line of sight (OOC) - Self: Talk Welcome. May I help you find something? (0) to invoker');

-- Gerik Koen smart ai
SET @ENTRY := 1333;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 10, 0, 100, 0, 1, 15, 60000, 300000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On only non hostile unit in line of sight (OOC) - Self: Talk Greetings, $c. (0) to invoker');

-- Heinrich Stone smart ai
SET @ENTRY := 1324;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 10, 0, 100, 0, 1, 15, 60000, 300000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On only non hostile unit in line of sight (OOC) - Self: Talk Welcome. May I help you find something? (0) to invoker');

-- Kyra Boucher smart ai
SET @ENTRY := 1275;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 10, 0, 100, 0, 1, 15, 60000, 300000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On only non hostile unit in line of sight (OOC) - Self: Talk Welcome! (0) to invoker');

-- Edna Mullby smart ai
SET @ENTRY := 1286;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 10, 0, 100, 0, 1, 15, 60000, 300000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On only non hostile unit in line of sight (OOC) - Self: Talk Greetings! Please have a look around. (0) to invoker');

-- Lara Moore smart ai
SET @ENTRY := 1295;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 10, 0, 100, 0, 1, 15, 60000, 300000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On only non hostile unit in line of sight (OOC) - Self: Talk Greetings, $c. (0) to invoker');

-- Lisbeth Schneider smart ai
SET @ENTRY := 1299;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 10, 0, 100, 0, 1, 15, 60000, 300000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On only non hostile unit in line of sight (OOC) - Self: Talk Welcome! (0) to invoker');

-- Bryan Cross smart ai
SET @ENTRY := 1319;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 10, 0, 100, 0, 1, 15, 60000, 300000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On only non hostile unit in line of sight (OOC) - Self: Talk Greetings. (0) to invoker');


DELETE FROM `creature_equip_template` WHERE (`ID`=1 AND `CreatureID` IN (161874,171397,161447,161446,174941,174938));
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(161874, 1, 45078, 0, 0, 0, 0, 0, 55048, 0, 0, 46597), -- Kaldorei Huntress
(171397, 1, 178119, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Sylvari Ranger
(161447, 1, 178119, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Sylvari Huntress
(161446, 1, 178119, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Sylvari Hunter
(174941, 1, 178119, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Freed Sylvar
(174938, 1, 178119, 0, 0, 0, 0, 0, 0, 0, 0, 46597); -- Freed Sylvar

UPDATE `creature_equip_template` SET `VerifiedBuild`=46597 WHERE (`ID`=1 AND `CreatureID` IN (172078,69791,172085,172076,175803,163363,162996,162700,162708,169889,162993,167992,163653,163698,163662,175591,163192,160748,161456,166111,168932,169421,13117,13116,169428,174928,174925,164443,160448,164448,164444,170515,170476,170086,170102,170472,170497,170485,170501,170500,170090,169227,170739,162435)) OR (`ID`=2 AND `CreatureID`=69792);

DELETE FROM `areatrigger_template` WHERE (`IsServerSide`=0 AND `Id` IN (25959,31105,30880));
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(25959, 0, 0, 0, 2.5, 2.5, 0, 0, 0, 0, 0, 0, 46597),
(31105, 0, 0, 0, 10, 10, 0, 0, 0, 0, 0, 0, 46597),
(30880, 0, 4, 4, 6, 6, 5, 5, 0.5, 0.5, 0, 0, 46597);

UPDATE `areatrigger_template` SET `VerifiedBuild`=46597 WHERE (`IsServerSide`=0 AND `Id` IN (27663,8352,24393,28762,28763,27415,9482,25886,24310,26038,23871,23870,11112,9170,17993,5070,22173,11203,24355,12740,22375,11142,11451,3678,23072,5302,5300));
UPDATE `areatrigger_template` SET `Flags`=2 WHERE (`Id`=9228 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=3, `VerifiedBuild`=46597 WHERE (`Id`=9397 AND `IsServerSide`=0);

DELETE FROM `conversation_actors` WHERE (`Idx`=0 AND `ConversationId` IN (15037,15036));
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `Idx`, `CreatureId`, `CreatureDisplayInfoId`, `NoActorObject`, `ActivePlayerObject`, `VerifiedBuild`) VALUES
(15037, 76712, 0, 160894, 93641, 0, 0, 46597),
(15036, 76712, 0, 160894, 93641, 0, 0, 46597);

UPDATE `conversation_actors` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `ConversationId` IN (15090,15091,15207,15206));

DELETE FROM `conversation_line_template` WHERE `Id` IN (37701, 37700);
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(37701, 625, 0, 0, 46597),
(37700, 625, 0, 0, 46597);


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (161934,189988,161874,176452,171397,163615,86702,101398,105374,169430,5925,6112,161447,161446,174941,174938,169270));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(161934, 0, 0, 0, 837, 46597),
(189988, 0, 0, 0, 482, 46597),
(161874, 0, 0, 0, 837, 46597),
(176452, 0, 0, 0, 482, 46597),
(171397, 0, 0, 0, 837, 46597),
(163615, 0, 0, 0, 837, 46597),
(86702, 0, 0, 0, 67, 46597),
(101398, 0, 0, 0, 482, 46597),
(105374, 0, 0, 0, 482, 46597),
(169430, 0, 0, 0, 482, 46597),
(5925, 0, 0, 0, 482, 46597),
(6112, 0, 0, 0, 482, 46597),
(161447, 0, 0, 0, 807, 46597),
(161446, 0, 0, 0, 807, 46597),
(174941, 0, 0, 0, 807, 46597),
(174938, 0, 0, 0, 807, 46597),
(169270, 0, 1, 1, 807, 46597);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46597 WHERE (`DifficultyID`=0 AND `Entry` IN (172066,63508,69792,69791,172051,172073,167442,172050,167439,172047,172072,172070,172075,172071,172048,175859,172097,172069,172067,172085,167200,172080,172077,172076,175839,172079,172078,173994,171162,175803,119508,175848,170353,170352,170351,162036,161889,170349,170350,164415,164417,161917,161920,162657,161878,163363,163371,161882,163389,173590,173052,173054,173106,167811,173376,173024,172943,172945,171758,167697,169995,172934,172723,172722,172966,172979,172837,172815,162708,171475,162700,169846,162697,169889,173796,162994,169822,162996,162993,170526,174918,164258,163429,172120,171367,171369,171366,163374,171370,163186,156586,165121,162025,174919,163395,171328,156558,171392,163316,163350,163390,170920,163633,170924,167247,163662,175591,163192,163660,163432,176162,176163,170926,168008,167251,163698,167992,163653,163433,173687,173688,174777,163353,160748,163616,170856,170859,170852,173651,173653,170860,170853,61245,169426,95061,166663,2630,3527,31216,105451,13117,13116,169428,60199,19668,62005,55659,98035,169421,147662,147695,147694,147693,61750,169429,168932,161455,166182,166111,174928,161456,166121,174925,171229,164443,160448,164448,164444,161457,166117,170674,158946,165912,170485,170497,170498,170501,170500,170515,173017,166290,169051,170476,165901,170086,170472,170465,170437,170090,170085,170102,170087,174629,169220,169175,161058,164036,165603,162440,170739,162438,169388,162435,175059,163093,169227));


UPDATE `creature_model_info` SET `VerifiedBuild`=46597 WHERE `DisplayID` IN (40543, 93712, 57899, 93735, 97886, 1160, 40976, 93736, 93734, 97904, 19527, 100043, 97869, 45289, 86573, 97114, 93784, 99072, 99692, 90740, 97502, 99167, 97260, 99683, 99172, 98632, 99168, 98612, 98609, 99684, 96766, 20042, 99754, 99753, 97167, 98635, 95745, 97358, 99697, 99703, 98634, 95746, 99700, 95056, 60863, 95743, 99702, 99745, 99747, 99701, 99699, 99698, 95054, 95761, 94218, 94192, 95693, 94221, 94191, 95912, 95694, 95529, 99785, 90396, 99789, 94196, 95913, 95907, 95744, 99796, 95903, 96257, 98503, 98458, 96027, 96028, 93789, 58166, 56830, 26566, 68157, 22255, 100522, 62127, 59799, 92915, 83910, 42373, 19075, 100511, 28647, 13339, 13337, 42372, 36956, 36944, 36957, 328, 36580, 347, 95910, 95917, 100508, 95562, 99926, 96274, 96760, 94200, 95563, 95230, 95873, 95868, 95882, 97303, 98180, 95254, 97112, 95884, 98171, 98954, 97113, 95234, 93752, 94201, 95272, 54918, 96977, 96878, 94457, 93748, 96509);
UPDATE `creature_model_info` SET `BoundingRadius`=1.910230040550231933, `CombatReach`=1.299999952316284179 WHERE `DisplayID` IN (93787, 93795);
UPDATE `creature_model_info` SET `BoundingRadius`=0.625, `CombatReach`=1.875 WHERE `DisplayID`=19530;
UPDATE `creature_model_info` SET `BoundingRadius`=2.385457992553710937, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46597 WHERE `DisplayID`=97051;
UPDATE `creature_model_info` SET `BoundingRadius`=3.578187227249145507, `CombatReach`=1.20000004768371582 WHERE `DisplayID`=96412;
UPDATE `creature_model_info` SET `BoundingRadius`=1.063993692398071289, `CombatReach`=2.099999904632568359, `VerifiedBuild`=46597 WHERE `DisplayID`=95553;
UPDATE `creature_model_info` SET `BoundingRadius`=2.244737863540649414, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=97070;
UPDATE `creature_model_info` SET `BoundingRadius`=1.899988770484924316, `CombatReach`=3.75 WHERE `DisplayID`=95551;
UPDATE `creature_model_info` SET `BoundingRadius`=1.849964499473571777, `CombatReach`=1.60000002384185791, `VerifiedBuild`=46597 WHERE `DisplayID`=98236;
UPDATE `creature_model_info` SET `BoundingRadius`=0.759995520114898681, `CombatReach`=1.5 WHERE `DisplayID` IN (97496, 98617);
UPDATE `creature_model_info` SET `BoundingRadius`=0.305999994277954101, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=94701;
UPDATE `creature_model_info` SET `BoundingRadius`=0.795000016689300537, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=97495;
UPDATE `creature_model_info` SET `BoundingRadius`=0.795000016689300537, `CombatReach`=1.5 WHERE `DisplayID`=98616;
UPDATE `creature_model_info` SET `BoundingRadius`=0.597258210182189941, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46597 WHERE `DisplayID`=99170;
UPDATE `creature_model_info` SET `BoundingRadius`=0.746572732925415039, `CombatReach`=1.5 WHERE `DisplayID`=95695;
UPDATE `creature_model_info` SET `BoundingRadius`=0.349999994039535522, `CombatReach`=1 WHERE `DisplayID`=80463;
UPDATE `creature_model_info` SET `BoundingRadius`=0.174999997019767761, `CombatReach`=0.5 WHERE `DisplayID`=80464;
UPDATE `creature_model_info` SET `BoundingRadius`=0.319639801979064941, `CombatReach`=0.150000005960464477, `VerifiedBuild`=46597 WHERE `DisplayID`=96765;
UPDATE `creature_model_info` SET `BoundingRadius`=0.262499988079071044, `CombatReach`=1.125, `VerifiedBuild`=46597 WHERE `DisplayID`=89243;
UPDATE `creature_model_info` SET `BoundingRadius`=7.107629299163818359, `CombatReach`=3.0625 WHERE `DisplayID`=96087;
UPDATE `creature_model_info` SET `BoundingRadius`=0.300000011920928955, `CombatReach`=0.300000011920928955, `VerifiedBuild`=46597 WHERE `DisplayID`=98075;
UPDATE `creature_model_info` SET `BoundingRadius`=0.400000005960464477, `CombatReach`=0.5, `VerifiedBuild`=46597 WHERE `DisplayID`=40712;
UPDATE `creature_model_info` SET `BoundingRadius`=0.437308698892593383, `CombatReach`=0, `VerifiedBuild`=46597 WHERE `DisplayID`=99696;
UPDATE `creature_model_info` SET `BoundingRadius`=1.207533955574035644, `VerifiedBuild`=46597 WHERE `DisplayID` IN (96880, 96879);
UPDATE `creature_model_info` SET `BoundingRadius`=0.445083141326904296, `CombatReach`=1.80000007152557373, `VerifiedBuild`=46597 WHERE `DisplayID` IN (95049, 95046, 99760, 95052);
UPDATE `creature_model_info` SET `BoundingRadius`=0.881396055221557617, `VerifiedBuild`=46597 WHERE `DisplayID`=99746;
UPDATE `creature_model_info` SET `BoundingRadius`=5.5, `CombatReach`=0, `VerifiedBuild`=46597 WHERE `DisplayID`=97666;
UPDATE `creature_model_info` SET `BoundingRadius`=0.835178792476654052, `CombatReach`=2, `VerifiedBuild`=46597 WHERE `DisplayID`=95742;
UPDATE `creature_model_info` SET `BoundingRadius`=0.496176600456237792, `CombatReach`=0.240000009536743164, `VerifiedBuild`=46597 WHERE `DisplayID` IN (98624, 97505);
UPDATE `creature_model_info` SET `BoundingRadius`=0.844416379928588867, `CombatReach`=1.80000007152557373 WHERE `DisplayID`=96776;
UPDATE `creature_model_info` SET `BoundingRadius`=0.660452723503112792, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=97498;
UPDATE `creature_model_info` SET `BoundingRadius`=1.5, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=39361;
UPDATE `creature_model_info` SET `BoundingRadius`=1.707794785499572753, `CombatReach`=1.10000002384185791, `VerifiedBuild`=46597 WHERE `DisplayID`=97940;
UPDATE `creature_model_info` SET `BoundingRadius`=5.686939239501953125, `CombatReach`=7 WHERE `DisplayID`=94190;
UPDATE `creature_model_info` SET `BoundingRadius`=3.2496795654296875, `CombatReach`=4, `VerifiedBuild`=46597 WHERE `DisplayID`=94207;
UPDATE `creature_model_info` SET `BoundingRadius`=0.693424046039581298, `CombatReach`=0.60000002384185791 WHERE `DisplayID`=94208;
UPDATE `creature_model_info` SET `BoundingRadius`=3.2496795654296875, `CombatReach`=4 WHERE `DisplayID`=94193;
UPDATE `creature_model_info` SET `BoundingRadius`=0.489591449499130249, `CombatReach`=1.980000019073486328, `VerifiedBuild`=46597 WHERE `DisplayID` IN (95914, 95915);
UPDATE `creature_model_info` SET `BoundingRadius`=3.046574592590332031, `CombatReach`=3.75 WHERE `DisplayID`=94205;
UPDATE `creature_model_info` SET `BoundingRadius`=4.062099456787109375, `CombatReach`=5, `VerifiedBuild`=46597 WHERE `DisplayID`=94199;
UPDATE `creature_model_info` SET `BoundingRadius`=2.26100468635559082 WHERE `DisplayID`=98502;
UPDATE `creature_model_info` SET `BoundingRadius`=1.46940779685974121, `CombatReach`=1 WHERE `DisplayID`=93792;
UPDATE `creature_model_info` SET `BoundingRadius`=3.196397781372070312, `CombatReach`=1.5 WHERE `DisplayID`=95690;
UPDATE `creature_model_info` SET `BoundingRadius`=0.699999988079071044, `CombatReach`=2 WHERE `DisplayID` IN (95199, 95198, 95200);
UPDATE `creature_model_info` SET `BoundingRadius`=0.445083051919937133, `CombatReach`=1.80000007152557373, `VerifiedBuild`=46597 WHERE `DisplayID` IN (98560, 95265);
UPDATE `creature_model_info` SET `BoundingRadius`=0.221895694732666015, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46597 WHERE `DisplayID`=74793;
UPDATE `creature_model_info` SET `BoundingRadius`=1.616348624229431152, `CombatReach`=1.10000002384185791 WHERE `DisplayID`=93791;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID`=42629;
UPDATE `creature_model_info` SET `CombatReach`=0, `VerifiedBuild`=46597 WHERE `DisplayID`=30782;
UPDATE `creature_model_info` SET `BoundingRadius`=1, `VerifiedBuild`=46597 WHERE `DisplayID` IN (81443, 81441);
UPDATE `creature_model_info` SET `BoundingRadius`=0.347222000360488891, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=29423;
UPDATE `creature_model_info` SET `BoundingRadius`=1.290538549423217773, `CombatReach`=3, `VerifiedBuild`=46597 WHERE `DisplayID`=100515;
UPDATE `creature_model_info` SET `BoundingRadius`=2.062988519668579101 WHERE `DisplayID`=64331;
UPDATE `creature_model_info` SET `BoundingRadius`=1.499359726905822753, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46597 WHERE `DisplayID`=100519;
UPDATE `creature_model_info` SET `BoundingRadius`=0.866780042648315429, `CombatReach`=0.75 WHERE `DisplayID`=94210;
UPDATE `creature_model_info` SET `BoundingRadius`=0.979612588882446289 WHERE `DisplayID`=62728;
UPDATE `creature_model_info` SET `BoundingRadius`=0.569996654987335205, `CombatReach`=1.125 WHERE `DisplayID` IN (95555, 95552);
UPDATE `creature_model_info` SET `BoundingRadius`=0.46383744478225708, `CombatReach`=1.5 WHERE `DisplayID`=93762;
UPDATE `creature_model_info` SET `BoundingRadius`=0.166933432221412658, `CombatReach`=4, `VerifiedBuild`=46597 WHERE `DisplayID`=94681;
UPDATE `creature_model_info` SET `BoundingRadius`=0.703680276870727539, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=96775;


UPDATE `creature_template_spell` SET `VerifiedBuild`=46597 WHERE (`CreatureID`=26125 AND `Index` IN (7,6,5,4,3,2,1,0));


UPDATE `creature_template` SET `BaseAttackTime`=666 WHERE `entry`=63508; -- Xuen
UPDATE `creature_template` SET `BaseAttackTime`=1731 WHERE `entry`=69792; -- Earth Spirit
UPDATE `creature_template` SET `BaseAttackTime`=1731 WHERE `entry`=69791; -- Fire Spirit
UPDATE `creature_template` SET `unit_flags`=67141696, `dynamicflags`=4 WHERE `entry`=172071; -- Fog-Frenzied Gladestalker
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=161934; -- Helpful Soul
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=35, `speed_walk`=2, `speed_run`=2.142857074737548828, `BaseAttackTime`=1679 WHERE `entry`=189988; -- Thing From Beyond
UPDATE `creature_template` SET `unit_flags3`=16777216, `dynamicflags`=128 WHERE `entry` IN (170353, 170352, 170351, 170349, 170350); -- Lunarlight Bud
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=161874; -- Kaldorei Huntress
UPDATE `creature_template` SET `unit_flags`=33552 WHERE `entry`=161878; -- Sicklethorn Slicer
UPDATE `creature_template` SET `unit_flags`=33552 WHERE `entry`=163363; -- Sicklethorn Zapper
UPDATE `creature_template` SET `dynamicflags`=128 WHERE `entry`=163389; -- Captured Soul
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `speed_walk`=4.800000190734863281, `speed_run`=1.714285731315612792, `BaseAttackTime`=1148, `unit_flags2`=2048 WHERE `entry`=176452; -- Beast
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3192, `npcflag`=3, `BaseAttackTime`=1856, `unit_flags`=32768, `unit_flags2`=33556480, `unit_flags3`=1048576 WHERE `entry`=171397; -- Sylvari Ranger
UPDATE `creature_template` SET `unit_flags3`=16809984 WHERE `entry`=171475; -- Elusive Faerie Cache
UPDATE `creature_template` SET `dynamicflags`=128 WHERE `entry`=169822; -- Enervated Spirit
UPDATE `creature_template` SET `dynamicflags`=4 WHERE `entry`=162993; -- Possessed Guardian
UPDATE `creature_template` SET `unit_flags`=67141632, `dynamicflags`=4 WHERE `entry`=171369; -- Ravenous Larva
UPDATE `creature_template` SET `unit_flags`=67141632 WHERE `entry`=171370; -- Ravenous Larva
UPDATE `creature_template` SET `unit_flags`=67141632, `dynamicflags`=4 WHERE `entry`=163186; -- Gorm Secretor
UPDATE `creature_template` SET `dynamicflags`=128 WHERE `entry`=162025; -- Targeting Bunny
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=1812 WHERE `entry`=17252; -- Felguard
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=2000, `RangeAttackTime`=0, `unit_flags`=512, `unit_flags2`=67635200, `unit_flags3`=16777216, `VehicleId`=7041 WHERE `entry`=163615; -- Veilwing Sentry
UPDATE `creature_template` SET `unit_flags`=32832 WHERE `entry`=171328; -- Gorm Egg Tender
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=171392; -- Ravenous Larva
UPDATE `creature_template` SET `npcflag`=16777216 WHERE `entry`=163633; -- Veilwing Sentry

UPDATE `quest_template` SET `VerifiedBuild`=46597 WHERE `ID` IN (60602, 62286, 62288, 61148, 61886, 66617, 60911, 62058, 60649, 60842, 58993, 28238, 14482, 27210, 24862, 44543, 57563, 58496, 54938, 48677, 42234, 60545, 57300, 50599, 43179, 53701, 29433, 54748, 58437, 59642, 57443, 59705);
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46597 WHERE `ID`=13913; -- They Took Our Gnomes
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46597 WHERE `ID`=26473; -- Bathran's Hair
UPDATE `quest_template` SET `RewardBonusMoney`=9400, `RewardCurrencyID1`=0, `RewardCurrencyQty1`=0, `VerifiedBuild`=46597 WHERE `ID`=55609; -- Operation: Mechagon - The Mechoriginator
UPDATE `quest_template` SET `RewardBonusMoney`=6900, `VerifiedBuild`=46597 WHERE `ID`=62716; -- Re-Introductions
UPDATE `quest_template` SET `RewardBonusMoney`=420, `VerifiedBuild`=46597 WHERE `ID`=35257; -- Power Unearthed
UPDATE `quest_template` SET `RewardBonusMoney`=420, `VerifiedBuild`=46597 WHERE `ID`=34942; -- Back from Beyond
UPDATE `quest_template` SET `RewardBonusMoney`=420, `RewardSpell`=172221, `VerifiedBuild`=46597 WHERE `ID`=34998; -- Talon Watch
UPDATE `quest_template` SET `RewardBonusMoney`=420, `VerifiedBuild`=46597 WHERE `ID`=36601; -- News from Nagrand
UPDATE `quest_template` SET `RewardBonusMoney`=420, `VerifiedBuild`=46597 WHERE `ID`=34908; -- The Foot of the Fortress
UPDATE `quest_template` SET `RewardBonusMoney`=3350, `VerifiedBuild`=46597 WHERE `ID`=33579; -- What the Draenei Found
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `VerifiedBuild`=46597 WHERE `ID`=48881; -- The Reel Deal
UPDATE `quest_template` SET `RewardBonusMoney`=2900, `VerifiedBuild`=46597 WHERE `ID`=31442; -- The Four Tomes
UPDATE `quest_template` SET `RewardBonusMoney`=2900, `Flags`=4194312, `VerifiedBuild`=46597 WHERE `ID`=31448; -- An End to the Suffering
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `VerifiedBuild`=46597 WHERE `ID`=48882; -- I Like Fish Guts and I Cannot Lie
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `VerifiedBuild`=46597 WHERE `ID`=48880; -- Mean Gulls
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `VerifiedBuild`=46597 WHERE `ID`=48904; -- Take the Bait
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `RewardSpell`=81040, `VerifiedBuild`=46597 WHERE `ID`=52252; -- An Explosive Entrance
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `VerifiedBuild`=46597 WHERE `ID`=51308; -- Zuldazar Foothold
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46597 WHERE `ID`=49926; -- The Road to Corlain
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `VerifiedBuild`=46597 WHERE `ID`=49898; -- Clear Victory
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `RewardSpell`=81040, `VerifiedBuild`=46597 WHERE `ID`=48517; -- Honorable Discharge
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `RewardSpell`=81040, `VerifiedBuild`=46597 WHERE `ID`=48184; -- Pieces of History
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46597 WHERE `ID`=47952; -- The Missing Fleet
UPDATE `quest_template` SET `RewardBonusMoney`=110850, `VerifiedBuild`=46597 WHERE `ID`=62720; -- The Fallen Tree


UPDATE `quest_objectives` SET `VerifiedBuild`=46597 WHERE `ID` IN (399077, 399016, 399099, 407607, 407611, 405417, 405286, 405291, 405285, 406809, 427329, 405012, 405011, 407187, 407151, 407150, 407149, 407148, 407147, 407144, 407126, 404410, 404409, 404408, 404379, 404367, 404366, 404341, 404340, 404931, 395297, 396702, 266167, 265836, 265780, 251952, 286696, 392893, 394362, 389382, 274544, 271568, 293168, 268590, 268589, 268588, 268587, 268592, 293169, 293167, 293194, 283946, 405017, 406745, 406744, 392095, 336204, 338545, 341335, 335371, 295555, 292392, 333814, 295603, 295567, 295566, 291911, 336045, 335980, 285073, 387259, 386194, 342150, 342097, 342095, 391411, 342062, 252968, 394283, 396683, 396682, 396662, 392429, 392436, 396812, 408521, 408360, 408319, 408318, 408317, 408316, 408251, 408250, 408229, 408228);
UPDATE `quest_objectives` SET `Description`='Boog and Minx freed', `VerifiedBuild`=46597 WHERE `ID`=295370; -- 295370


UPDATE `quest_visual_effect` SET `VerifiedBuild`=46597 WHERE (`Index`=2 AND `ID` IN (399016,405285,407147,407144,407126,404931,394283,392429,408228)) OR (`Index`=1 AND `ID` IN (399016,405285,407147,407144,407126,404341,404931,406745,394283,392429,408228)) OR (`Index`=0 AND `ID` IN (399016,399099,405417,405286,405291,405285,406809,427329,405012,405011,407187,407147,407144,407126,404341,404340,404931,396702,394362,389382,274544,271568,293168,268590,268589,268588,268587,405017,406745,406744,341335,292392,333814,295603,295567,295566,291911,335980,386194,342150,342095,394283,392429,392436,396812,408228)) OR (`Index`=4 AND `ID` IN (405285,394283,408228)) OR (`Index`=3 AND `ID` IN (405285,407147,394283,392429,408228)) OR (`Index`=9 AND `ID`=394283) OR (`Index`=8 AND `ID`=394283) OR (`Index`=7 AND `ID`=394283) OR (`Index`=6 AND `ID`=394283) OR (`Index`=5 AND `ID` IN (394283,408228));


UPDATE `creature_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (163093, 170920, 170924, 170926, 172047, 172048, 172050, 169822, 160894, 172066, 172067, 172069, 172070, 172071, 172072, 172073, 172075, 172076, 172077, 164258, 172078, 162025, 172079, 172080, 172085, 162036, 172097, 189988, 172120, 163192, 95061, 167697, 3527, 156558, 156586, 161058, 169995, 164415, 164417, 166663, 164443, 164444, 164448, 171162, 163350, 163353, 163363, 165603, 163371, 163374, 170085, 170086, 170087, 170090, 163389, 163390, 170102, 163429, 163432, 174629, 169051, 2630, 167992, 105451, 162435, 162438, 162440, 175848, 169175, 173651, 173653, 6112, 163615, 163616, 69791, 69792, 163633, 173687, 173688, 169220, 169227, 62005, 171475, 163660, 163662, 161446, 161447, 169270, 161455, 161456, 161457, 163698, 170437, 161509, 173796, 174918, 174919, 170465, 174938, 170472, 174941, 162657, 170476, 170485, 172722, 170497, 170498, 170500, 170501, 160448, 170515, 162697, 162700, 170526, 162708, 169426, 176162, 176163, 166111, 175059, 167247, 167251, 172837, 13116, 13117, 171758, 173994, 166182, 170674, 172934, 165121, 172943, 172945, 172966, 170739, 63508, 172979, 166290, 173017, 173024, 160748, 161874, 162993, 162994, 161878, 162996, 161882, 173052, 161889, 170852, 161917, 170853, 161920, 170856, 170859, 170860, 161934);
UPDATE `creature_template` SET `HealthModifier`=0.100000001490116119, `VerifiedBuild`=46597 WHERE `entry`=172051; -- Will-o'-the-Mist
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=169846; -- Twilight Firefly
UPDATE `creature_template` SET `KillCredit1`=163316, `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=163186; -- Gorm Secretor
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=169889; -- Blighted Overseer
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=147662; -- Owl
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry` IN (175591, 175803); -- Grove Defender
UPDATE `creature_template` SET `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=163316; -- Gorm Rampager
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=173376; -- Nightfang
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=147693; -- Coral Snake
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=147694; -- Rabbit
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=147695; -- Forest Moth
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `HealthModifier`=0.189934000372886657, `VerifiedBuild`=46597 WHERE `entry`=167811; -- Molderfly
UPDATE `creature_template` SET `KillCredit1`=173429, `VerifiedBuild`=46597 WHERE `entry`=163395; -- Rootstinger Drone
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=61750; -- Deer
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=171229; -- Gorm Rootstinger
UPDATE `creature_template` SET `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=158946; -- Wild Gormling
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=5925; -- Grounding Totem
UPDATE `creature_template` SET `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=163433; -- Gorm Encroacher
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=105374; -- Hawk
UPDATE `creature_template` SET `KillCredit1`=171365, `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=171328; -- Gorm Egg Tender
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry` IN (173590, 174777); -- Deepwood Leaper
UPDATE `creature_template` SET `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=168008; -- Rootstinger Warrior
UPDATE `creature_template` SET `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=171366; -- Gorm Egg Tender
UPDATE `creature_template` SET `KillCredit1`=171365, `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=171367; -- Gorm Egg Tender
UPDATE `creature_template` SET `KillCredit1`=174745, `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=171369; -- Ravenous Larva
UPDATE `creature_template` SET `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=171370; -- Ravenous Larva
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `HealthModifier`=0.189934000372886657, `VerifiedBuild`=46597 WHERE `entry`=175839; -- Moonfrog
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `HealthModifier`=0.189934000372886657, `VerifiedBuild`=46597 WHERE `entry`=175859; -- Misty Recluse
UPDATE `creature_template` SET `KillCredit1`=174745, `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=171392; -- Ravenous Larva
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=171397; -- Sylvari Ranger
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry` IN (170349, 170350, 170351, 170352, 170353); -- Lunarlight Bud
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=163653; -- Vorkai Sentry
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=165901; -- Stellarwasp
UPDATE `creature_template` SET `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=165912; -- Roving Gladechewer
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry` IN (174925, 174928); -- Captured Sylvar
UPDATE `creature_template` SET `HealthScalingExpansion`=5, `HealthModifier`=0.200000002980232238, `VerifiedBuild`=46597 WHERE `entry`=86702; -- Lingering Spirit
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=172723; -- Grove Kit
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=169388; -- Basin Kit
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `HealthModifier`=0.189934000372886657, `VerifiedBuild`=46597 WHERE `entry`=167200; -- Celestial Silkspinner
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=172815; -- Starhopper
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=166117; -- Molderfly
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=166121; -- Murktoad
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=101398; -- Psyfiend
UPDATE `creature_template` SET `KillCredit1`=170182, `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=164036; -- Darkwarren Slicer
UPDATE `creature_template` SET `family`=303, `type_flags`=1, `VerifiedBuild`=46597 WHERE `entry`=167439; -- Agitated Mistfeather
UPDATE `creature_template` SET `family`=303, `type_flags`=1, `VerifiedBuild`=46597 WHERE `entry`=167442; -- Fledgeling Mistfeather
UPDATE `creature_template` SET `HealthModifier`=0.5, `VerifiedBuild`=46597 WHERE `entry`=173054; -- Deathblossom Bud
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=176452; -- Beast
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=173106; -- Undergrowth Firefly
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=119508; -- Spell Effect Bunny


UPDATE `creature_template_model` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `CreatureID` IN (172066,63508,69791,69792,172051,172073,172072,172070,172050,172047,167442,167439,175859,172097,172075,172071,172048,172069,172067,172085,167200,172080,172077,175839,172076,172079,172078,173994,171162,175803,119508,175848,161934,189988,170353,170352,170351,162036,161889,170349,170350,161874,164417,161509,161920,161917,162657,163363,161878,163371,163389,161882,173590,173052,173054,173106,173024,172943,172945,171758,167697,169995,172934,172723,172722,172966,172979,172815,171397,171475,169846,173796,162996,162994,162993,170526,174918,164258,163429,172120,171369,171366,163374,171370,163186,165121,156586,174919,162025,163395,163615,171328,171392,163316,156558,163350,163390,160894,170920,170924,167247,163633,175591,163662,163192,176163,176162,170926,168008,167251,163698,163660,163432,167992,163653,163433,173687,173688,174777,163353,160748,163616,170856,170859,173651,170852,170860,170853,86702,101398,105374,169426,95061,166663,2630,3527,5925,105451,6112,13116,13117,62005,147693,147695,147662,61750,147694,161447,161446,174941,161455,174938,166182,166111,174928,161456,174925,166121,171229,164443,164448,164444,161457,170674,166117,158946,165912,170485,170497,170498,170501,170500,173017,170515,166290,169051,170476,170086,165901,170472,170465,170437,170102,170090,170085,170087,174629,169220,169175,161058,164036,165603,169270,162440,170739,162438,169388,162435,163093,169227)) OR (`Idx`=2 AND `CreatureID` IN (172051,172076,172078,175803,164417,163389,176452,169822,162996,162994,162993,163316,163350,175591,163662,163698,163432,167992,163653,160748,86702,105374,62005,147695,170497,170515,170090,174629,162438,162435)) OR (`Idx`=1 AND `CreatureID` IN (172051,172070,167442,175859,172069,172067,175839,172076,172079,172078,175803,119508,170353,170352,170351,162036,170349,170350,164417,163363,161878,163371,163389,173052,173054,173106,167811,172943,171758,172934,172966,176452,171397,173796,169822,162996,162994,162993,174918,163429,163374,165121,156586,174919,162025,163316,156558,163350,175591,163662,163192,176163,176162,168008,163698,163432,167992,163653,173688,160748,163616,170856,170859,86702,105374,13116,13117,62005,147695,147694,161456,166121,161457,170674,166117,170497,170501,170515,166290,170476,165901,170437,170102,170090,174629,162440,162438,169388,162435,163093,169227)) OR (`Idx`=3 AND `CreatureID` IN (175803,164417,163389,176452,169822,162996,162994,162993,163350,175591,163662,163432,167992,163653,160748,86702,105374,62005,147695,170497,170515,170090,174629,162438,162435)) OR (`Idx`=11 AND `CreatureID` IN (164417,169822,170090)) OR (`Idx`=10 AND `CreatureID` IN (164417,169822,170090)) OR (`Idx`=9 AND `CreatureID` IN (164417,163389,169822,170090)) OR (`Idx`=8 AND `CreatureID` IN (164417,163389,169822,170090)) OR (`Idx`=7 AND `CreatureID` IN (164417,163389,169822,162993,163653,160748,170497,170090,174629)) OR (`Idx`=6 AND `CreatureID` IN (164417,163389,169822,162993,163653,160748,170497,170090,174629)) OR (`Idx`=5 AND `CreatureID` IN (164417,163389,169822,162993,163653,160748,170497,170090,174629)) OR (`Idx`=4 AND `CreatureID` IN (164417,163389,169822,162996,162993,163432,163653,160748,170497,170090,174629)) OR (`Idx`=15 AND `CreatureID`=170090) OR (`Idx`=14 AND `CreatureID`=170090) OR (`Idx`=13 AND `CreatureID`=170090) OR (`Idx`=12 AND `CreatureID`=170090);
UPDATE `creature_template_model` SET `DisplayScale`=1.5, `VerifiedBuild`=46597 WHERE (`CreatureID`=164415 AND `Idx`=0); -- Skuld Vit
UPDATE `creature_template_model` SET `DisplayScale`=0.150000005960464477, `VerifiedBuild`=46597 WHERE (`CreatureID`=167811 AND `Idx`=0); -- Molderfly
UPDATE `creature_template_model` SET `DisplayScale`=0.75, `VerifiedBuild`=46597 WHERE (`CreatureID`=173376 AND `Idx`=0); -- Nightfang
UPDATE `creature_template_model` SET `DisplayScale`=0.200000002980232238, `VerifiedBuild`=46597 WHERE (`CreatureID`=172837 AND `Idx`=0); -- Deedra
UPDATE `creature_template_model` SET `Probability`=99, `VerifiedBuild`=46597 WHERE (`CreatureID`=176452 AND `Idx`=0); -- Beast
UPDATE `creature_template_model` SET `DisplayScale`=1.20000004768371582, `VerifiedBuild`=46597 WHERE (`CreatureID`=162708 AND `Idx`=0); -- Gallak
UPDATE `creature_template_model` SET `DisplayScale`=1.20000004768371582, `VerifiedBuild`=46597 WHERE (`CreatureID`=162700 AND `Idx`=0); -- Lukir
UPDATE `creature_template_model` SET `DisplayScale`=1.20000004768371582, `VerifiedBuild`=46597 WHERE (`CreatureID`=162697 AND `Idx`=0); -- Haassert
UPDATE `creature_template_model` SET `DisplayScale`=1.20000004768371582, `VerifiedBuild`=46597 WHERE (`CreatureID`=169889 AND `Idx`=0); -- Blighted Overseer
UPDATE `creature_template_model` SET `DisplayScale`=2, `VerifiedBuild`=46597 WHERE (`CreatureID`=169822 AND `Idx`=0); -- Enervated Spirit
UPDATE `creature_template_model` SET `DisplayScale`=0.899999976158142089, `VerifiedBuild`=46597 WHERE (`CreatureID`=171367 AND `Idx`=0); -- Gorm Egg Tender
UPDATE `creature_template_model` SET `DisplayScale`=0.800000011920928955, `VerifiedBuild`=46597 WHERE (`CreatureID`=173653 AND `Idx`=0); -- Alice
UPDATE `creature_template_model` SET `DisplayScale`=1.299999952316284179, `VerifiedBuild`=46597 WHERE (`CreatureID`=160448 AND `Idx`=0); -- Hunter Vivanna
UPDATE `creature_template_model` SET `DisplayScale`=0.400000005960464477, `VerifiedBuild`=46597 WHERE (`CreatureID`=175059 AND `Idx`=0); -- Unfettered Vision


UPDATE `creature_questitem` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `CreatureEntry` IN (172079,164415,161917,162657,163363,161878,172943,172945,167697,172934,172722,172979,162708,162700,162697,162996,162994,162993,172120,163186,171328,163316,170856,170859,170853,161455,166111,161456,160448,170102)) OR (`Idx`=1 AND `CreatureEntry` IN (164415,163363,161878,160448));

DELETE FROM `gameobject_template` WHERE `entry` IN (353770 /*Dim Lunarlight Pod*/, 363846 /*Cage*/, 363824 /*Cage*/, 364346 /*Drust Totem*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(353770, 10, 64906, 'Dim Lunarlight Pod', '', 'Investigating', '', 0.60000002384185791, 3030, 0, 0, 1, 0, 0, 1, 8227, 0, 1, 0, 0, 0, 0, 56085, 0, 0, 0, 0, 0, 1, 0, 0, 1, 4235, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2060, 46597), -- Dim Lunarlight Pod
(363846, 10, 61738, 'Cage', 'questinteract', 'Unlocking', '', 1.299999952316284179, 1691, 0, 0, 10000, 0, 0, 0, 0, 0, 0, 344037, 0, 0, 0, 24815, 0, 0, 0, 0, 0, 1, 0, 93339, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Cage
(363824, 10, 61738, 'Cage', 'questinteract', 'Unlocking', '', 1.299999952316284179, 1691, 0, 0, 10000, 0, 0, 0, 0, 0, 0, 344011, 0, 0, 0, 24815, 0, 0, 0, 0, 0, 1, 0, 93339, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Cage
(364346, 10, 60460, 'Drust Totem', 'questinteract', 'Destroying', '', 0.60000002384185791, 2741, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24585, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 807, 46597); -- Drust Totem

UPDATE `gameobject_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (353233, 355804, 355520, 355525, 355532, 355528, 355526, 355797, 355531, 355522, 355805, 355803, 355795, 355519, 345361, 342362, 355212, 355211, 342361, 342358, 355216, 355215, 346279, 355214, 356603, 354665, 357588, 353194, 348610, 348716, 354654, 348721, 348611, 340664, 354070, 354067, 354069, 354068, 355224, 355223, 355222, 355221, 355220, 355219, 355790, 352047, 227744, 227745, 336432, 309883, 179871, 309704, 227740, 352709, 179905, 242273, 179907, 179899, 179904, 309705, 227741, 352710, 179906, 363851, 353631, 363823, 353630, 353629, 353628, 363999, 339998, 339996, 364243, 339997, 353759);
UPDATE `gameobject_template` SET `Data32`=108, `VerifiedBuild`=46597 WHERE `entry`=353333; -- Faerie Stash
UPDATE `gameobject_template` SET `Data1`=0, `VerifiedBuild`=46597 WHERE `entry`=348723; -- Ripened Anima Seed
UPDATE `gameobject_template` SET `Data32`=108, `VerifiedBuild`=46597 WHERE `entry`=353327; -- Decayed Husk
UPDATE `gameobject_template` SET `name`='Feast of the Waters', `ContentTuningId`=1218, `VerifiedBuild`=46597 WHERE `entry`=230599; -- Festin des flots


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46597 WHERE (`Idx`=1 AND `GameObjectEntry` IN (353233,353333,353327)) OR (`Idx`=0 AND `GameObjectEntry` IN (353233,353333,348723,353327,340664,352047,339998,339996,339997));

DELETE FROM `page_text` WHERE `ID`=8227;
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`, `PlayerConditionID`, `Flags`, `VerifiedBuild`) VALUES
(8227, 'This pod seems to contain something valuable, but it is closed tightly.\n\nAs you place your hand near it, one of the small flower buds on the pod lights up and opens.\n\nPerhaps lighting up lunarlight buds found nearby will open the pod. Five of them should be sufficient. You know this because you are psychic.', 0, 0, 0, 46597); -- 8227


DELETE FROM `world_quest` WHERE `id`=66617;
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(66617, 604800, 19923, 2); -- 66617


UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099



UPDATE `gossip_menu` SET `VerifiedBuild`=46597 WHERE (`MenuID`=25001 AND `TextID`=39418) OR (`MenuID`=26547 AND `TextID`=42152) OR (`MenuID`=26725 AND `TextID`=42495) OR (`MenuID`=26905 AND `TextID`=42826);
DELETE FROM `gossip_menu_option` WHERE (`MenuID`=26905 AND `OptionID`=0);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(26905, 0, 1, 'Show me your wares.', 58437, 0, 0, 0, 0, 0, NULL, 0, 46597); -- OptionBroadcastTextID: 58437 - 58437 - 90189 - 90189 - 180077 - 180077

UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=206986, `BoxText`='Are you sure? This action cannot be undone.', `BoxBroadcastTextID`=206987, `VerifiedBuild`=46597 WHERE (`MenuID`=26725 AND `OptionID`=0); -- BoxBroadcastTextID: 206987 - 206987OptionBroadcastTextID: 206986 - 206986


UPDATE `creature_template` SET `BaseAttackTime`=1738 WHERE `entry`=143622; -- Wild Imp
UPDATE `creature_template` SET `BaseAttackTime`=2320 WHERE `entry`=184600; -- Incubus
UPDATE `creature_template` SET `gossip_menu_id`=25001 WHERE `entry`=158653; -- Prince Renathal
UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=175657; -- Vulca
UPDATE `creature_template` SET `gossip_menu_id`=26547 WHERE `entry`=171190; -- Cudgelface
UPDATE `creature_template` SET `gossip_menu_id`=26737 WHERE `entry`=175772; -- Rahel
UPDATE `creature_template` SET `BaseAttackTime`=1839 WHERE `entry`=1860; -- Voidwalker

UPDATE `creature_template` SET `npcflag`=281474976710658 WHERE `entry`=164796; -- Prince Renathal
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1 WHERE `entry`=175456; -- Swarm Training Dummy
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=1860, `unit_flags`=0 WHERE `entry`=26125; -- Risen Ghoul


UPDATE `quest_template` SET `VerifiedBuild`=46597 WHERE `ID` IN (62286, 62288, 53334, 65089, 66619, 65115, 65072, 45840, 64964, 63976, 65335, 62691, 61148, 58437, 58221, 66617, 61342, 61353, 61520, 61549, 57328, 60842, 62235, 61631, 61947, 61885, 61868, 61784, 58601);
UPDATE `quest_template` SET `ContentTuningID`=290, `RewardCurrencyID1`=0, `RewardCurrencyQty1`=0, `VerifiedBuild`=46597 WHERE `ID`=53216; -- Arathi Donations: Shimmerscale
UPDATE `quest_template` SET `ContentTuningID`=290, `RewardCurrencyID1`=0, `RewardCurrencyQty1`=0, `VerifiedBuild`=46597 WHERE `ID`=53236; -- Arathi Donations: War-Scroll of Fortitude
UPDATE `quest_template` SET `RewardBonusMoney`=92600 WHERE `ID`=57531;
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=62695; -- A Call to Service
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=62857; -- The Court's Bounty
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=62856; -- Building Your Renown
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=59323; -- Anima Awakening
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=59321; -- Sacred Covenant
UPDATE `quest_template` SET `RewardBonusMoney`=30900, `VerifiedBuild`=46597 WHERE `ID`=59315; -- The Court of Harvesters
UPDATE `quest_template` SET `RewardBonusMoney`=7700 WHERE `ID`=49929;
UPDATE `quest_template` SET `RewardBonusMoney`=61750 WHERE `ID`=45563;


UPDATE `quest_objectives` SET `VerifiedBuild`=46597 WHERE `ID` IN (407607, 407611, 341184, 422083, 422082, 427333, 340961, 340984, 422138, 422128, 422121, 422041, 422040, 422039, 422038, 422037, 422045, 422035, 422036, 289065, 421818, 421817, 421816, 421815, 421814, 421788, 422807, 408166, 408915, 408882, 408983, 405557, 396394, 406352, 405417, 405286, 405291, 405285, 394283, 409162, 396253, 427329, 409114, 405633, 405634, 409083, 409075, 408963, 408962, 405683, 405682, 405681, 405680, 406141, 407569, 407568, 407567, 406159, 406158, 406157, 406156, 406155, 406244, 406154, 406262, 406258, 408971, 408970, 392148, 396762, 396761, 396760, 396759, 396758, 396757, 396756, 392147, 404931, 407513, 408918, 407508, 407507, 407506, 408062, 408061, 406867, 406808, 406766, 406710, 394467, 394466, 394465, 394464, 394463, 394462, 394453, 396342, 396343, 396340);


UPDATE `quest_visual_effect` SET `VerifiedBuild`=46597 WHERE (`Index`=0 AND `ID` IN (422082,422036,421817,421788,422807,408915,408882,408983,405557,396394,406352,405417,405286,405291,405285,394283,409162,427329,405633,405634,409083,406141,406244,406154,406262,406258,392148,392147,404931,407507,408062,408061,406867,406808,406766,406710,396342,396343)) OR (`Index`=2 AND `ID` IN (421817,405285,394283,405634,406244,392147,404931,407507)) OR (`Index`=1 AND `ID` IN (421817,405285,394283,405634,406244,406258,392147,404931,407507)) OR (`Index`=4 AND `ID` IN (405285,394283,405634,406244,392147)) OR (`Index`=3 AND `ID` IN (405285,394283,405634,406244,392147)) OR (`Index`=9 AND `ID`=394283) OR (`Index`=8 AND `ID` IN (394283,392147)) OR (`Index`=7 AND `ID` IN (394283,392147)) OR (`Index`=6 AND `ID` IN (394283,405634,406244,392147)) OR (`Index`=5 AND `ID` IN (394283,405634,406244,392147));

DELETE FROM `quest_reward_display_spell` WHERE (`QuestID`=59323 AND `Idx`=12);
INSERT INTO `quest_reward_display_spell` (`QuestID`, `Idx`, `SpellID`, `PlayerConditionID`, `VerifiedBuild`) VALUES
(59323, 12, 387617, 97501, 46597);

UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=46597 WHERE (`QuestID`=59323 AND `Idx` IN (11,10,9,8,7,6,5,4,3,2,1,0)) OR (`QuestID`=59315 AND `Idx`=0);


UPDATE `creature_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (175657, 184600, 175773, 171934, 164796, 164817, 164818);


UPDATE `creature_template_model` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `CreatureID` IN (175773,184600,175657,171934,164796,164817,164818));


UPDATE `gameobject_template` SET `VerifiedBuild`=46597 WHERE `entry`=346104;

DELETE FROM `world_quest` WHERE `id` IN (53216 /*53216*/, 53236 /*53236*/, 66617 /*66617*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(53216, 86400, 16745, 1), -- 53216
(53236, 86400, 16737, 1), -- 53236
(66617, 604800, 19923, 2); -- 66617

UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099


DELETE FROM `conversation_actors` WHERE (`Idx`=0 AND `ConversationId` IN (15216,15217));
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `Idx`, `CreatureId`, `CreatureDisplayInfoId`, `NoActorObject`, `ActivePlayerObject`, `VerifiedBuild`) VALUES
(15216, 77807, 0, 165191, 94286, 0, 0, 46597),
(15217, 77807, 0, 165191, 94286, 0, 0, 46597);


UPDATE `quest_template` SET `VerifiedBuild`=46597 WHERE `ID` IN (42431, 43241, 38842, 40316, 39371, 40050, 37965, 40111, 38748, 58221, 60855, 61549, 57328, 62235, 58601);


UPDATE `quest_objectives` SET `VerifiedBuild`=46597 WHERE `ID` IN (284209, 284208, 284207, 284206, 284205, 284200, 285469, 285188, 285107, 285106, 285105, 285104, 285103, 285102, 278998, 278519, 278526, 278500, 278499, 280668, 280667, 280666, 280665, 280664, 280663, 280662, 279626, 279301, 279299, 279294, 280303, 280233, 280231, 280229, 280228, 286679, 286535, 277272, 277472, 277269, 277243, 277242, 280327, 280326, 280325, 280324, 280323, 286576, 286575, 286054, 278418, 278401, 278382, 409162, 396253, 404910, 404909, 406262, 406258, 408971, 408970, 392148, 396762, 396761, 396760, 396759, 396758, 396757, 396756, 392147, 407513, 408918, 407508, 407507, 407506, 394467, 394466, 394465, 394464, 394463, 394462, 394453);


UPDATE `quest_visual_effect` SET `VerifiedBuild`=46597 WHERE (`Index`=0 AND `ID` IN (284200,285188,285107,285106,278998,278526,280668,277472,280323,278418,409162,406262,406258,392148,392147,407507)) OR (`Index`=1 AND `ID` IN (277472,280323,278418,406258,392147,407507)) OR (`Index`=3 AND `ID` IN (280323,278418,392147)) OR (`Index`=2 AND `ID` IN (280323,278418,392147,407507)) OR (`Index`=8 AND `ID`=392147) OR (`Index`=7 AND `ID`=392147) OR (`Index`=6 AND `ID`=392147) OR (`Index`=5 AND `ID`=392147) OR (`Index`=4 AND `ID`=392147);


UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=170521; -- Swift Shadowstalker
UPDATE `creature_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (168513, 171195, 176569, 174632, 174633, 174634, 171223, 174655, 168100);
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=170766; -- Gorm Spewer
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=170767; -- Engorged Borer


UPDATE `creature_template_model` SET `VerifiedBuild`=46597 WHERE (`CreatureID`=171195 AND `Idx`=0) OR (`CreatureID`=176569 AND `Idx`=0) OR (`CreatureID`=171223 AND `Idx`=0) OR (`CreatureID`=170766 AND `Idx` IN (3,2,1)) OR (`CreatureID`=174634 AND `Idx`=0) OR (`CreatureID`=174633 AND `Idx`=0) OR (`CreatureID`=174632 AND `Idx`=0) OR (`CreatureID`=174655 AND `Idx` IN (18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0)) OR (`CreatureID`=168513 AND `Idx`=0) OR (`CreatureID`=168100 AND `Idx` IN (3,2,1,0));
UPDATE `creature_template_model` SET `DisplayScale`=1.5, `VerifiedBuild`=46597 WHERE (`CreatureID`=170521 AND `Idx`=0); -- Swift Shadowstalker
UPDATE `creature_template_model` SET `DisplayScale`=1.299999952316284179, `VerifiedBuild`=46597 WHERE (`CreatureID`=170767 AND `Idx`=0); -- Engorged Borer
UPDATE `creature_template_model` SET `DisplayScale`=0.800000011920928955, `VerifiedBuild`=46597 WHERE (`CreatureID`=170766 AND `Idx`=0); -- Gorm Spewer


UPDATE `gameobject_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (350826, 350827, 355507, 364893, 353498, 351448);

DELETE FROM `world_quest` WHERE `id`=66617;
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(66617, 604800, 19923, 2); -- 66617

UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099


UPDATE `quest_template` SET `VerifiedBuild`=46597 WHERE `ID` IN (42431, 43241, 38842, 40316, 39371, 40050, 37965, 40111, 38748, 58221, 60855, 61549, 57328, 62235, 58601);


UPDATE `quest_objectives` SET `VerifiedBuild`=46597 WHERE `ID` IN (284209, 284208, 284207, 284206, 284205, 284200, 285469, 285188, 285107, 285106, 285105, 285104, 285103, 285102, 278998, 278519, 278526, 278500, 278499, 280668, 280667, 280666, 280665, 280664, 280663, 280662, 279626, 279301, 279299, 279294, 280303, 280233, 280231, 280229, 280228, 286679, 286535, 277272, 277472, 277269, 277243, 277242, 280327, 280326, 280325, 280324, 280323, 286576, 286575, 286054, 278418, 278401, 278382, 409162, 396253, 404910, 404909, 406262, 406258, 408971, 408970, 392148, 396762, 396761, 396760, 396759, 396758, 396757, 396756, 392147, 407513, 408918, 407508, 407507, 407506, 394467, 394466, 394465, 394464, 394463, 394462, 394453);


UPDATE `quest_visual_effect` SET `VerifiedBuild`=46597 WHERE (`Index`=0 AND `ID` IN (284200,285188,285107,285106,278998,278526,280668,277472,280323,278418,409162,406262,406258,392148,392147,407507)) OR (`Index`=1 AND `ID` IN (277472,280323,278418,406258,392147,407507)) OR (`Index`=3 AND `ID` IN (280323,278418,392147)) OR (`Index`=2 AND `ID` IN (280323,278418,392147,407507)) OR (`Index`=8 AND `ID`=392147) OR (`Index`=7 AND `ID`=392147) OR (`Index`=6 AND `ID`=392147) OR (`Index`=5 AND `ID`=392147) OR (`Index`=4 AND `ID`=392147);


UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=170521; -- Swift Shadowstalker
UPDATE `creature_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (168513, 171195, 176569, 174632, 174633, 174634, 171223, 174655, 168100);
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=170766; -- Gorm Spewer
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=170767; -- Engorged Borer


UPDATE `creature_template_model` SET `VerifiedBuild`=46597 WHERE (`CreatureID`=171195 AND `Idx`=0) OR (`CreatureID`=176569 AND `Idx`=0) OR (`CreatureID`=171223 AND `Idx`=0) OR (`CreatureID`=170766 AND `Idx` IN (3,2,1)) OR (`CreatureID`=174634 AND `Idx`=0) OR (`CreatureID`=174633 AND `Idx`=0) OR (`CreatureID`=174632 AND `Idx`=0) OR (`CreatureID`=174655 AND `Idx` IN (18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0)) OR (`CreatureID`=168513 AND `Idx`=0) OR (`CreatureID`=168100 AND `Idx` IN (3,2,1,0));
UPDATE `creature_template_model` SET `DisplayScale`=1.5, `VerifiedBuild`=46597 WHERE (`CreatureID`=170521 AND `Idx`=0); -- Swift Shadowstalker
UPDATE `creature_template_model` SET `DisplayScale`=1.299999952316284179, `VerifiedBuild`=46597 WHERE (`CreatureID`=170767 AND `Idx`=0); -- Engorged Borer
UPDATE `creature_template_model` SET `DisplayScale`=0.800000011920928955, `VerifiedBuild`=46597 WHERE (`CreatureID`=170766 AND `Idx`=0); -- Gorm Spewer


UPDATE `gameobject_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (350826, 350827, 355507, 364893, 353498, 351448);

DELETE FROM `world_quest` WHERE `id`=66617;
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(66617, 604800, 19923, 2); -- 66617

UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099


DELETE FROM `creature_template_scaling` WHERE (`Entry`=170521 AND `DifficultyID`=0);
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(170521, 0, 0, 0, 837, 46597);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46597 WHERE (`DifficultyID`=0 AND `Entry` IN (171195,176569,171223,170767,170766,170451,174634,174633,174632,168513,168100,174655,163371,170353,170351,170350,170352,161917,163389,170349,161920,162036,163363,161878,161889,161882,173024,173590,173687,173688,172945,172943,172979,173106,172934,173052,173054,172076,172080,167200,175839,172050,174777,167439,172047,172085,172077,167442,172048,172067,172097,172069,172078,175859,172079,172066,172815));


UPDATE `creature_model_info` SET `BoundingRadius`=5.545994281768798828, `VerifiedBuild`=46597 WHERE `DisplayID`=97481;
UPDATE `creature_model_info` SET `VerifiedBuild`=46597 WHERE `DisplayID` IN (13069, 98609, 96867, 94457, 95800, 98612, 99167, 99684, 99683, 99172, 97502, 97260, 93748, 99168, 98503, 93784, 60863, 20042, 96878, 97114, 45289, 40976, 98458, 86573, 19527, 97869, 96880, 100043, 40543);
UPDATE `creature_model_info` SET `BoundingRadius`=3.2496795654296875, `CombatReach`=4 WHERE `DisplayID`=94205;
UPDATE `creature_model_info` SET `BoundingRadius`=0.524999976158142089, `CombatReach`=2.25, `VerifiedBuild`=46597 WHERE `DisplayID`=89243;
UPDATE `creature_model_info` SET `BoundingRadius`=4.062099456787109375, `CombatReach`=5, `VerifiedBuild`=46597 WHERE `DisplayID` IN (94202, 94207);
UPDATE `creature_model_info` SET `BoundingRadius`=5.280729293823242187, `CombatReach`=6.5 WHERE `DisplayID`=94197;
UPDATE `creature_model_info` SET `BoundingRadius`=4.062099456787109375, `CombatReach`=5 WHERE `DisplayID`=94204;
UPDATE `creature_model_info` SET `BoundingRadius`=0.795000016689300537, `CombatReach`=1.5 WHERE `DisplayID`=98616;
UPDATE `creature_model_info` SET `BoundingRadius`=0.759995520114898681, `CombatReach`=1.5 WHERE `DisplayID`=97496;
UPDATE `creature_model_info` SET `BoundingRadius`=0.795000016689300537, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=97495;
UPDATE `creature_model_info` SET `BoundingRadius`=0.597258210182189941, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46597 WHERE `DisplayID`=99170;
UPDATE `creature_model_info` SET `BoundingRadius`=0.349999994039535522, `CombatReach`=1 WHERE `DisplayID`=95198;
UPDATE `creature_model_info` SET `BoundingRadius`=1.763289451599121093, `CombatReach`=1.20000004768371582 WHERE `DisplayID` IN (93790, 93786);
UPDATE `creature_model_info` SET `BoundingRadius`=2.26100468635559082 WHERE `DisplayID`=98502;
UPDATE `creature_model_info` SET `BoundingRadius`=0.174999997019767761, `CombatReach`=0.5 WHERE `DisplayID` IN (80464, 80463);
UPDATE `creature_model_info` SET `BoundingRadius`=0.844416379928588867, `CombatReach`=1.80000007152557373, `VerifiedBuild`=46597 WHERE `DisplayID`=96774;
UPDATE `creature_model_info` SET `BoundingRadius`=4.061502456665039062, `CombatReach`=1.75 WHERE `DisplayID`=96087;
UPDATE `creature_model_info` SET `BoundingRadius`=1.910230040550231933, `CombatReach`=1.299999952316284179 WHERE `DisplayID` IN (93795, 93791);
UPDATE `creature_model_info` SET `BoundingRadius`=3.578187227249145507, `CombatReach`=1.20000004768371582 WHERE `DisplayID`=96412;
UPDATE `creature_model_info` SET `BoundingRadius`=0.625, `CombatReach`=1.875 WHERE `DisplayID`=19530;
UPDATE `creature_model_info` SET `BoundingRadius`=2.992983818054199218, `CombatReach`=2, `VerifiedBuild`=46597 WHERE `DisplayID`=97113;
UPDATE `creature_model_info` SET `BoundingRadius`=2.385457992553710937, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46597 WHERE `DisplayID`=97051;
UPDATE `creature_model_info` SET `BoundingRadius`=1.224515795707702636 WHERE `DisplayID`=62588;
UPDATE `creature_model_info` SET `BoundingRadius`=2.244737863540649414, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=97070;
UPDATE `creature_model_info` SET `BoundingRadius`=0.400000005960464477, `CombatReach`=0.5, `VerifiedBuild`=46597 WHERE `DisplayID`=40712;


UPDATE `creature_template_spell` SET `VerifiedBuild`=46597 WHERE (`CreatureID`=26125 AND `Index` IN (7,6,5,4,3,2,1,0)) OR (`CreatureID`=170521 AND `Index` IN (2,1,0));


UPDATE `creature_template` SET `minlevel`=56, `speed_walk`=0.800000011920928955, `speed_run`=2, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048, `VehicleId`=7255 WHERE `entry`=170521; -- Swift Shadowstalker
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry` IN (170353, 170351, 170350, 170352, 170349); -- Lunarlight Bud

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=1868 WHERE `entry`=26125; -- Risen Ghoul


UPDATE `areatrigger_template` SET `VerifiedBuild`=46597 WHERE (`IsServerSide`=0 AND `Id` IN (25465,25463,24466,8352,30886));
UPDATE `areatrigger_template` SET `Data0`=25, `Data1`=25 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=25, `Data1`=25 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=25, `Data1`=25 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=10, `Data2`=10, `Data3`=10, `Data4`=15, `Data5`=10 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=25, `Data1`=25 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=10, `Data2`=10, `Data3`=10, `Data4`=15, `Data5`=10 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=25, `Data1`=25 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=2 WHERE (`Id`=9228 AND `IsServerSide`=0);


DELETE FROM `quest_offer_reward` WHERE `ID` IN (65034 /*Return to Oribos*/, 65033 /*Observing Victory*/, 62776 /*Return to Oribos*/, 62763 /*Support the Court*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(65034, 1, 0, 0, 0, 0, 0, 0, 0, 'Cartel Zo speaks highly of your efforts. The Purpose is clear.', 46597), -- Return to Oribos
(65033, 1, 0, 0, 0, 0, 0, 0, 0, 'Victory is never assured. Return tomorrow for another observation.', 46597), -- Observing Victory
(62776, 1, 0, 0, 0, 0, 0, 0, 0, 'Your efforts in Ardenweald have not gone unnoticed, Maw Walker.', 46597), -- Return to Oribos
(62763, 0, 0, 0, 0, 0, 0, 0, 0, 'You have done a great service to not only Ardenweald, but the countless nature spirits we protect.\n\nThank you. Today you are a hero of Ardenweald!', 46597); -- Support the Court

UPDATE `quest_offer_reward` SET `VerifiedBuild`=46597 WHERE `ID`=59314;

DELETE FROM `quest_poi` WHERE (`QuestID`=62776 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=62776 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62776 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(62776, 1, 2, 32, 0, 0, 2222, 1565, 0, 0, 0, 89652, 0, 2007682, 0, 46597), -- Return to Oribos
(62776, 0, 1, 32, 0, 0, 2222, 1701, 0, 0, 0, 88280, 0, 2037613, 0, 46597), -- Return to Oribos
(62776, 0, 0, -1, 0, 0, 2222, 1670, 0, 0, 0, 0, 0, 1850485, 0, 46597); -- Return to Oribos

UPDATE `quest_poi` SET `VerifiedBuild`=46597 WHERE (`QuestID`=59315 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59315 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59315 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59315 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59315 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65034 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65034 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62775 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62775 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61411 AND `BlobIndex`=0 AND `Idx1`=16) OR (`QuestID`=61411 AND `BlobIndex`=0 AND `Idx1`=15) OR (`QuestID`=61411 AND `BlobIndex`=0 AND `Idx1`=14) OR (`QuestID`=61411 AND `BlobIndex`=0 AND `Idx1`=13) OR (`QuestID`=61411 AND `BlobIndex`=0 AND `Idx1`=12) OR (`QuestID`=61411 AND `BlobIndex`=0 AND `Idx1`=11) OR (`QuestID`=61411 AND `BlobIndex`=0 AND `Idx1`=10) OR (`QuestID`=61411 AND `BlobIndex`=0 AND `Idx1`=9) OR (`QuestID`=61411 AND `BlobIndex`=0 AND `Idx1`=8) OR (`QuestID`=61411 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=61411 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=61411 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=61411 AND `BlobIndex`=2 AND `Idx1`=4) OR (`QuestID`=61411 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=61411 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61411 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=61411 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65033 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65033 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62763 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=62763 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62763 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=62763 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59314 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=59314 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=59314 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59314 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=59314 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59314 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=59314 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=57249 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=57249 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=57249 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49929 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=45563 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=43341 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=43341 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=42449 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=42449 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=36309 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=62776 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62776 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62776 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(62776, 2, 0, -6851, 796, 5664, 46597), -- Return to Oribos
(62776, 1, 0, -6886, 1028, 5690, 46597), -- Return to Oribos
(62776, 0, 0, -1941, 1391, 5270, 46597); -- Return to Oribos

UPDATE `quest_poi_points` SET `VerifiedBuild`=46597 WHERE (`QuestID`=59315 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=59315 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59315 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59315 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59315 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65034 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65034 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62775 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62775 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=62775 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=62775 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=62775 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=62775 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=62775 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=62775 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=62775 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=62775 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=62775 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=62775 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=62775 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61411 AND `Idx1`=16 AND `Idx2`=0) OR (`QuestID`=61411 AND `Idx1`=15 AND `Idx2`=0) OR (`QuestID`=61411 AND `Idx1`=14 AND `Idx2`=0) OR (`QuestID`=61411 AND `Idx1`=13 AND `Idx2`=0) OR (`QuestID`=61411 AND `Idx1`=12 AND `Idx2`=0) OR (`QuestID`=61411 AND `Idx1`=11 AND `Idx2`=0) OR (`QuestID`=61411 AND `Idx1`=10 AND `Idx2`=0) OR (`QuestID`=61411 AND `Idx1`=9 AND `Idx2`=0) OR (`QuestID`=61411 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=61411 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=61411 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=61411 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=61411 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=61411 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=61411 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=61411 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=61411 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=61411 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=61411 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=61411 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=61411 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=61411 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=61411 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=61411 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61411 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=61411 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=61411 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=61411 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=61411 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=61411 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61411 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61411 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65033 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65033 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62763 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=62763 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62763 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62763 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59314 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=59314 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=59314 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=59314 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59314 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59314 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59314 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53436 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53436 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=45563 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=43341 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=43341 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=42449 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=42449 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=36309 AND `Idx1`=0 AND `Idx2`=0);


UPDATE `quest_greeting` SET `VerifiedBuild`=46597 WHERE (`ID`=174922 AND `Type`=0);

DELETE FROM `quest_details` WHERE `ID` IN (65034 /*Return to Oribos*/, 62776 /*Return to Oribos*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(65034, 1, 1, 0, 0, 0, 0, 0, 0, 46597), -- Return to Oribos
(62776, 1, 1, 0, 0, 0, 0, 0, 0, 46597); -- Return to Oribos

UPDATE `quest_details` SET `VerifiedBuild`=46597 WHERE `ID`=59315;

DELETE FROM `creature_queststarter` WHERE (`id`=174922 AND `quest`=65034);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(174922, 65034, 46597); -- Return to Oribos offered Strategist Zo'rak

UPDATE `creature_queststarter` SET `VerifiedBuild`=46597 WHERE (`id`=164742 AND `quest`=59315) OR (`id`=172431 AND `quest`=62776) OR (`id`=165302 AND `quest`=62691) OR (`id`=175772 AND `quest` IN (62695,62857)) OR (`id`=171934 AND `quest` IN (62856,59323)) OR (`id`=164796 AND `quest`=59321);

DELETE FROM `creature_questender` WHERE (`id`=159478 AND `quest`=65034) OR (`id`=174922 AND `quest`=65033);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(159478, 65034, 46597), -- Return to Oribos ended by Tal-Inara
(174922, 65033, 46597); -- Observing Victory ended by Strategist Zo'rak


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (33530,127948));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(33530, 0, 0, 0, 371, 46597),
(127948, 0, 0, 0, 371, 46597);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46597 WHERE (`DifficultyID`=0 AND `Entry` IN (164818,164796,164817,168152,178338,175658,164742,173393,173389,157727,163439,163970,168862,156220,156196,156384,156218,168944,168945,164385,156234,156225,162891,162890,169167,166282,156273,166314,166318,157632,156274,157695,157649,157828,167891,172888,166718,166068,161545,161551,160973,156413,155682,173094,158526,155704,173545,173548,173610,175525,175526,156685,167738,156668,156777,164736,156686,175211,156689,176186,156732,156687,156670,156692,156733,173571,156691,175209,175210,32639,32638,185525,185914,181575,185576,173916,53884,164036,176569,171223,172799,172266,172268,172249,172267,172171,172250,172248,172247,172252,172246,172193,172191,172192,172227,169812,171688,172185,158155,171701,158006,157949,171195));
UPDATE `creature_template_scaling` SET `ContentTuningID`=837 WHERE (`DifficultyID`=0 AND `Entry` IN (175922,166137));


UPDATE `creature_model_info` SET `VerifiedBuild`=46597 WHERE `DisplayID` IN (94501, 99529, 96715, 94428, 99942, 99988, 94966, 99672, 97696, 99673, 97949, 95735, 99678, 97690, 97956, 42349, 93251, 95518, 96791, 92424, 95335, 96177, 33006, 93266, 98100, 95828, 95827, 96103, 99120, 92729, 92728, 94593, 25375, 25423, 25420, 25439, 94658, 101418, 93951, 99051, 93579, 94018, 93599, 93589, 24103, 28282, 28111, 45289, 62093, 83350, 102304, 96510, 99155, 97746, 74790, 95254, 94201, 13069, 52601, 95232, 94430, 98212, 98237, 96904, 95562, 95244, 96036, 96355, 95566, 95530, 99740, 93748, 95563);
UPDATE `creature_model_info` SET `BoundingRadius`=2.083333253860473632, `VerifiedBuild`=46597 WHERE `DisplayID`=99528;
UPDATE `creature_model_info` SET `BoundingRadius`=0.797087371349334716, `CombatReach`=1 WHERE `DisplayID`=98203;
UPDATE `creature_model_info` SET `BoundingRadius`=1.696866154670715332, `CombatReach`=3.599999904632568359 WHERE `DisplayID`=93163;
UPDATE `creature_model_info` SET `BoundingRadius`=2.317917346954345703, `CombatReach`=1.5 WHERE `DisplayID`=94409;
UPDATE `creature_model_info` SET `BoundingRadius`=0.649999976158142089, `CombatReach`=1.299999952316284179 WHERE `DisplayID`=93671;
UPDATE `creature_model_info` SET `BoundingRadius`=0.901962161064147949, `CombatReach`=1.5 WHERE `DisplayID`=95209;
UPDATE `creature_model_info` SET `BoundingRadius`=3.394514322280883789 WHERE `DisplayID`=79805;
UPDATE `creature_model_info` SET `BoundingRadius`=2.473866462707519531, `CombatReach`=2.5 WHERE `DisplayID`=93853;
UPDATE `creature_model_info` SET `BoundingRadius`=0.490500271320343017, `CombatReach`=1.5 WHERE `DisplayID`=93511;
UPDATE `creature_model_info` SET `BoundingRadius`=1.185773372650146484, `CombatReach`=5 WHERE `DisplayID`=92622;
UPDATE `creature_model_info` SET `BoundingRadius`=0.358060181140899658, `CombatReach`=0.25 WHERE `DisplayID`=94528;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `CombatReach`=1 WHERE `DisplayID`=91955;
UPDATE `creature_model_info` SET `BoundingRadius`=2.429767608642578125, `CombatReach`=2 WHERE `DisplayID` IN (92702, 92701);
UPDATE `creature_model_info` SET `BoundingRadius`=0.866100192070007324, `CombatReach`=2.75 WHERE `DisplayID`=99148;
UPDATE `creature_model_info` SET `BoundingRadius`=2.49996495246887207, `CombatReach`=3.5 WHERE `DisplayID`=94868;
UPDATE `creature_model_info` SET `BoundingRadius`=1.432240724563598632, `CombatReach`=1 WHERE `DisplayID`=94281;
UPDATE `creature_model_info` SET `BoundingRadius`=0.889330029487609863, `CombatReach`=3.75 WHERE `DisplayID`=94426;
UPDATE `creature_model_info` SET `BoundingRadius`=5.101937294006347656, `CombatReach`=3.75 WHERE `DisplayID`=95707;
UPDATE `creature_model_info` SET `BoundingRadius`=0.361281335353851318, `VerifiedBuild`=46597 WHERE `DisplayID`=25173;
UPDATE `creature_model_info` SET `BoundingRadius`=1.888888955116271972, `CombatReach`=2 WHERE `DisplayID` IN (93592, 93590);
UPDATE `creature_model_info` SET `BoundingRadius`=0.562944233417510986, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46597 WHERE `DisplayID`=96509;
UPDATE `creature_model_info` SET `BoundingRadius`=4.061502456665039062, `CombatReach`=1.75 WHERE `DisplayID`=96087;
UPDATE `creature_model_info` SET `BoundingRadius`=0.902461767196655273, `CombatReach`=1.949999928474426269 WHERE `DisplayID`=86207;
UPDATE `creature_model_info` SET `BoundingRadius`=2.87638711929321289, `CombatReach`=4, `VerifiedBuild`=46597 WHERE `DisplayID`=99019;
UPDATE `creature_model_info` SET `BoundingRadius`=5.545994281768798828, `VerifiedBuild`=46597 WHERE `DisplayID`=97481;
UPDATE `creature_model_info` SET `BoundingRadius`=3.2496795654296875, `CombatReach`=4 WHERE `DisplayID`=94205;


UPDATE `gossip_menu_option` SET `OptionText`='I have been to Zereth Mortis before and met Pocopoc.\n|cFFFF0000<Skip ahead to Zereth Mortis and have Pocopoc unlocked.>|r', `BoxText`='Are you sure? This action cannot be undone.', `BoxBroadcastTextID`=206987, `VerifiedBuild`=46597 WHERE (`MenuID`=26284 AND `OptionID`=3); -- BoxBroadcastTextID: 206987 - 206987
UPDATE `gossip_menu_option` SET `OptionText`='Here are the joyful memories I collected from Heartwood Grove.', `VerifiedBuild`=46597 WHERE (`MenuID`=26136 AND `OptionID`=1);
UPDATE `gossip_menu_option` SET `OptionText`='I\'ll take this acorn and recover memories within Heartwood Grove.', `VerifiedBuild`=46597 WHERE (`MenuID`=26136 AND `OptionID`=0);


UPDATE `gossip_menu` SET `VerifiedBuild`=46597 WHERE (`MenuID`=26693 AND `TextID`=42426) OR (`MenuID`=26136 AND `TextID`=41503);


UPDATE `creature_template` SET `gossip_menu_id`=26547 WHERE `entry`=171190; -- Cudgelface
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=1793 WHERE `entry`=17252; -- Felguard

UPDATE `creature_template` SET `gossip_menu_id`=26737 WHERE `entry`=175772; -- Rahel

UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1 WHERE `entry`=175456; -- Swarm Training Dummy

UPDATE `creature_template` SET `BaseAttackTime`=1839 WHERE `entry`=58960; -- Voidlord

UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=157695; -- Lurking Bonemauler
UPDATE `creature_template` SET `unit_flags`=294912 WHERE `entry`=168678; -- Horrific Bonemauler
UPDATE `creature_template` SET `minlevel`=58, `maxlevel`=58, `faction`=2573, `speed_walk`=3.20000004768371582, `speed_run`=2, `BaseAttackTime`=2000, `unit_flags2`=2048, `unit_flags3`=524288 WHERE `entry`=166685; -- Manifestation of Greed

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags`=33536 WHERE `entry`=33530; -- Curious Oracle Hatchling
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=127948; -- Cinderweb Recluse

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=1732, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=185525; -- Genn Greymane
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=1732, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=185914; -- Gilnean Greymage

UPDATE `creature_template` SET `minlevel`=50, `BaseAttackTime`=1620 WHERE `entry`=1860; -- Voidwalker

UPDATE `creature_template` SET `BaseAttackTime`=1580 WHERE `entry`=180016; -- Spectral Feline

UPDATE `creature_template` SET `minlevel`=57, `maxlevel`=60, `speed_run`=0.857142865657806396 WHERE `entry`=181575; -- Drakks

UPDATE `creature_template` SET `BaseAttackTime`=1675 WHERE `entry`=58965; -- Wrathguard
UPDATE `creature_template` SET `minlevel`=50, `maxlevel`=60, `BaseAttackTime`=1567 WHERE `entry`=417; -- Felhunter

UPDATE `creature_template` SET `minlevel`=51, `maxlevel`=60, `BaseAttackTime`=1722 WHERE `entry`=416; -- Imp
UPDATE `creature_template` SET `minlevel`=51, `BaseAttackTime`=1776, `unit_flags`=32768 WHERE `entry`=165189; -- Generic Hunter Pet
UPDATE `creature_template` SET `minlevel`=56, `BaseAttackTime`=1675 WHERE `entry`=143622; -- Wild Imp

UPDATE `creature_template` SET `minlevel`=63, `maxlevel`=63 WHERE `entry`=172431; -- Lady Moonberry

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags`=768 WHERE `entry`=53884; -- Feline Familiar
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=165855; -- Moonfrog
UPDATE `creature_template` SET `unit_flags3`=16777217 WHERE `entry`=172799; -- [DNT] Spell Bunny
UPDATE `creature_template` SET `minlevel`=59, `maxlevel`=59 WHERE `entry`=43499; -- Consecration
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=16777216 WHERE `entry` IN (172266, 172268, 172267); -- Good Memory
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=1797 WHERE `entry`=24207; -- Army of the Dead
UPDATE `creature_template` SET `dynamicflags`=4 WHERE `entry`=172192; -- Masked Hunter
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=172227; -- Invisible Stalker
UPDATE `creature_template` SET `npcflag`=0 WHERE `entry`=172185; -- Zayhad, The Builder
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=158155; -- Gorduk
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=1375, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=570688256, `unit_flags2`=67110913, `unit_flags3`=17309696 WHERE `entry`=75065; -- Blood Drip
UPDATE `creature_template` SET `unit_flags`=67141632 WHERE `entry`=160075; -- Gorm Spewer
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=1868 WHERE `entry`=26125; -- Risen Ghoul


UPDATE `quest_template` SET `RewardBonusMoney`=30900, `VerifiedBuild`=46597 WHERE `ID`=59315; -- The Court of Harvesters
UPDATE `quest_template` SET `VerifiedBuild`=46597 WHERE `ID` IN (63976, 65335, 65089, 66619, 65115, 65072, 64964, 65773, 64527, 62286, 62288, 53334, 45840, 61148, 58437, 58221, 66617, 61342, 61353, 61520, 61549, 57328, 60842, 62235, 61631, 61947, 61885, 61868, 61784, 58601);
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID` IN (65034, 62776); -- Return to Oribos
UPDATE `quest_template` SET `ContentTuningID`=290, `RewardCurrencyID1`=0, `RewardCurrencyQty1`=0, `VerifiedBuild`=46597 WHERE `ID`=53216; -- Arathi Donations: Shimmerscale
UPDATE `quest_template` SET `ContentTuningID`=290, `RewardCurrencyID1`=0, `RewardCurrencyQty1`=0, `VerifiedBuild`=46597 WHERE `ID`=53236; -- Arathi Donations: War-Scroll of Fortitude
UPDATE `quest_template` SET `RewardBonusMoney`=123450 WHERE `ID`=62775;
UPDATE `quest_template` SET `RewardBonusMoney`=7700 WHERE `ID`=49929;
UPDATE `quest_template` SET `RewardBonusMoney`=61750 WHERE `ID`=45563;


UPDATE `quest_objectives` SET `VerifiedBuild`=46597 WHERE `ID` IN (396342, 396343, 396340, 422807, 422083, 422082, 427333, 422138, 422128, 422121, 422041, 422040, 422039, 422038, 422037, 422045, 422035, 422036, 421818, 421817, 421816, 421815, 421814, 421788, 423660, 421023, 407607, 407611, 341184, 340961, 340984, 289065, 405417, 405286, 405291, 405285, 394283, 409162, 396253, 427329, 409114, 405633, 405634, 409083, 409075, 408963, 408962, 405683, 405682, 405681, 405680, 406141, 407569, 407568, 407567, 406159, 406158, 406157, 406156, 406155, 406244, 406154, 406262, 406258, 408971, 408970, 392148, 396762, 396761, 396760, 396759, 396758, 396757, 396756, 392147, 404931, 407513, 408918, 407508, 407507, 407506, 408062, 408061, 406867, 406808, 406766, 406710, 394467, 394466, 394465, 394464, 394463, 394462, 394453);


UPDATE `quest_visual_effect` SET `VerifiedBuild`=46597 WHERE (`Index`=0 AND `ID` IN (396342,396343,422807,422082,422036,421817,421788,405417,405286,405291,405285,394283,409162,427329,405633,405634,409083,406141,406244,406154,406262,406258,392148,392147,404931,407507,408062,408061,406867,406808,406766,406710)) OR (`Index`=2 AND `ID` IN (421817,405285,394283,405634,406244,392147,404931,407507)) OR (`Index`=1 AND `ID` IN (421817,405285,394283,405634,406244,406258,392147,404931,407507)) OR (`Index`=4 AND `ID` IN (405285,394283,405634,406244,392147)) OR (`Index`=3 AND `ID` IN (405285,394283,405634,406244,392147)) OR (`Index`=9 AND `ID`=394283) OR (`Index`=8 AND `ID` IN (394283,392147)) OR (`Index`=7 AND `ID` IN (394283,392147)) OR (`Index`=6 AND `ID` IN (394283,405634,406244,392147)) OR (`Index`=5 AND `ID` IN (394283,405634,406244,392147));


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=46597 WHERE (`QuestID`=59315 AND `Idx`=0);


UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=172249; -- Memory of Te'zan
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=172250; -- Memory of Dreamweaver
UPDATE `creature_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (172252, 156668, 156670, 156685, 156686, 156687, 156689, 156691, 156692, 167891, 163439, 156732, 156733, 156777, 185914, 174732, 168152, 181575, 161545, 161551, 166068, 172799, 172888, 163970, 175209, 175210, 175211, 166282, 166314, 166318, 58960, 173094, 175525, 175526, 157632, 157649, 164385, 168862, 157695, 157727, 173389, 173393, 168944, 168945, 175658, 166718, 171195, 171223, 157828, 173545, 173548, 32638, 32639, 173571, 155682, 155704, 157949, 173610, 169167, 158006, 164736, 164742, 164796, 160327, 164817, 164818, 158155, 178338, 173916, 171688, 171701, 176186, 162890, 162891, 156196, 156218, 156220, 156225, 156234, 156273, 156274, 158526, 167525, 156384, 169812, 156413, 176569, 185525, 185576, 160973, 172192, 167738);
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry` IN (172266, 172267, 172268); -- Good Memory
UPDATE `creature_template` SET `VerifiedBuild`=46597 WHERE `entry`=53884; -- Feline Familiar
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=127948; -- Cinderweb Recluse
UPDATE `creature_template` SET `KillCredit1`=170182, `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=164036; -- Darkwarren Slicer
UPDATE `creature_template` SET `femaleName`='', `type_flags2`=67108896, `VerifiedBuild`=46597 WHERE `entry`=172171; -- Memory of Niya
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=172185; -- Zayhad, The Builder
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=172191; -- Grove Disruptor
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=172193; -- Blighted Carver
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `movementId`=121, `VerifiedBuild`=46597 WHERE `entry`=33530; -- Curious Oracle Hatchling
UPDATE `creature_template` SET `femaleName`='', `type_flags2`=6, `VerifiedBuild`=46597 WHERE `entry`=172227; -- Invisible Stalker
UPDATE `creature_template` SET `femaleName`='', `type_flags2`=67108896, `VerifiedBuild`=46597 WHERE `entry`=172246; -- Memory of Derawyn
UPDATE `creature_template` SET `femaleName`='', `type_flags2`=67108896, `VerifiedBuild`=46597 WHERE `entry`=172247; -- Memory of Korenth
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=172248; -- Memory of Casad


UPDATE `creature_template_model` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `CreatureID` IN (164818,164817,164796,168152,178338,175658,164742,173393,173389,58960,157727,163439,163970,168862,156220,156384,156196,156218,168945,168944,164385,156234,156225,162891,162890,169167,166318,166314,166282,157632,156273,156274,167891,157828,157695,157649,172888,160327,166718,166068,161551,161545,160973,156413,155682,173094,158526,155704,175526,175525,173610,173548,173545,167738,164736,156777,156685,156668,156686,175211,167525,176186,156732,156689,156687,156670,156692,173571,156733,156691,175210,175209,33530,32639,32638,127948,185914,185525,181575,185576,173916,53884,164036,176569,171223,172799,172249,172252,172250,172247,172246,172171,172192,172191,169812,172185,171688,158155,171701,158006,157949,174732,171195)) OR (`Idx`=1 AND `CreatureID` IN (168152,178338,157727,163970,168945,168944,162891,166314,156273,167891,157649,156413,155682,175526,175525,173548,173545,175211,175209,185914,172266,172268,172267,172252,172227,172192,169812,171701,158006,157949)) OR (`Idx`=7 AND `CreatureID` IN (157727,162891)) OR (`Idx`=6 AND `CreatureID` IN (157727,162891)) OR (`Idx`=5 AND `CreatureID` IN (157727,162891,175211)) OR (`Idx`=4 AND `CreatureID` IN (157727,162891,175211)) OR (`Idx`=3 AND `CreatureID` IN (157727,168944,162891,157649,175211,171701,157949)) OR (`Idx`=2 AND `CreatureID` IN (157727,168945,168944,162891,157649,175525,175211,175209,171701,157949));
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `CreatureID` IN (172266,172268,172267)); -- Good Memory
UPDATE `creature_template_model` SET `DisplayScale`=0.75, `VerifiedBuild`=46597 WHERE (`CreatureID`=172248 AND `Idx`=0); -- Memory of Casad
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=46597 WHERE (`CreatureID`=172227 AND `Idx`=0); -- Invisible Stalker
UPDATE `creature_template_model` SET `DisplayScale`=0.800000011920928955, `VerifiedBuild`=46597 WHERE (`CreatureID`=172193 AND `Idx`=0); -- Blighted Carver


UPDATE `creature_questitem` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `CreatureEntry` IN (157727,168862,169812,171688,158155)) OR (`Idx`=1 AND `CreatureEntry` IN (169812,171688));


UPDATE `gameobject_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (349592, 357488, 357473, 357470, 357230, 357492, 357490, 357477, 357472, 352684, 352616, 357231, 357232, 349798, 334874, 334128, 343614, 334815, 364440, 334753, 334754, 243686, 349554, 245027, 245026, 357523, 363826, 349802, 363912, 333216, 355248, 354658, 358588, 358584, 357273, 353486, 353406, 358586, 358585, 176296, 358587, 355972, 367759, 374521, 374520, 374519, 374518, 353498, 350827, 350826, 355507, 352932, 350858);
UPDATE `gameobject_template` SET `IconName`='questinteract', `castBarCaption`='Retrieving', `size`=0.200000002980232238, `Data0`=1691, `Data1`=0, `Data2`=1, `Data8`=62775, `Data14`=23645, `Data30`=106064, `Data31`=1, `ContentTuningId`=807, `VerifiedBuild`=46597 WHERE `entry`=364332; -- Drained Wildseed

DELETE FROM `gameobject_questitem` WHERE (`GameObjectEntry`=364332 AND `Idx`=0);
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(364332, 0, 184101, 46597); -- Drained Wildseed

UPDATE `gameobject_questitem` SET `VerifiedBuild`=46597 WHERE (`Idx`=1 AND `GameObjectEntry` IN (357230,357231,357232,349798)) OR (`Idx`=0 AND `GameObjectEntry` IN (357230,357231,357232,349798,334874));

DELETE FROM `page_text` WHERE `ID`=8128;
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`, `PlayerConditionID`, `Flags`, `VerifiedBuild`) VALUES
(8128, 'Here now we name the burdens of a soul that Revendreth shall forever be responsible for the exsanguination and education of.\n\nLet these names contextualize and manifest the burdens they identify. \n\nSo then may we control these burdens, \nso then may we harvest these burdens, \nso then may we drain these burdens.\n\nTo seize these burdens, the Master has forged the Medallions of the Harvesters. \n\nLet them be the conduits of his will, providing power and the machinations of Death to those servants deemed most fitting. May they be instruments of his ever vigilant force. May they be the fangs by which he feeds upon the sin of the dead.', 0, 0, 0, 46597); -- 8128


DELETE FROM `world_quest` WHERE `id` IN (53216 /*53216*/, 53236 /*53236*/, 66617 /*66617*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(53216, 86400, 16745, 1), -- 53216
(53236, 86400, 16737, 1), -- 53236
(66617, 604800, 19923, 2); -- 66617

UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099

REPLACE INTO `quest_poi` (`QuestID`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Flags`) VALUES ('25574', '266783', '40856', '1', '198', '7');
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `MapID`, `UiMapID`, `Flags`) VALUES ('25574', '1', '1', '-1', '1', '198', '1');
REPLACE INTO `quest_poi_points` (`QuestID`, `X`, `Y`, `VerifiedBuild`) VALUES ('25574', '5746', '-3341', '45114');
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `X`, `Y`, `VerifiedBuild`) VALUES ('25574', '1', '5559', '-3649', '45114');

UPDATE `creature_template` SET `faction`='35', `AIName`='SmartAI' WHERE  `entry`=40856;
REPLACE INTO `creature_template_addon` (`entry`, `bytes1`, `bytes2`) VALUES ('40856', '50331648', '257');
REPLACE INTO `creature_template_spell` (`CreatureID`, `Spell`, `VerifiedBuild`) VALUES ('40856', '76205', '39653');

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (40856, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 53, 1, 40856, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Just Summoned -Wp Start');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (40856, 0, 1, 0, 40, 0, 100, 0, 1, 0, 0, 0, 0, '', 11, 76205, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'WP reached fire');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (40856, 0, 2, 3, 40, 0, 100, 0, 2, 0, 0, 0, 0, '', 11, 76205, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'WP 2 reached fire');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (40856, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 75, 88999, 0, 0, 0, 0, 0, 10, 280332495, 85040, 0, 0, 0, 0, 0, 0, 'link Camp flames on invis Bunny');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (40856, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 75, 88999, 0, 0, 0, 0, 0, 10, 280332496, 85040, 0, 0, 0, 0, 0, 0, 'link Camp flames on invis Bunny');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (40856, 0, 5, 6, 40, 0, 100, 0, 3, 0, 0, 0, 0, '', 11, 76205, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'WP 3 reached fire');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (40856, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 75, 88999, 0, 0, 0, 0, 0, 10, 280332497, 85040, 0, 0, 0, 0, 0, 0, 'äink Camp flames on invis Bunny');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (40856, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 75, 88999, 0, 0, 0, 0, 0, 10, 280332498, 85040, 0, 0, 0, 0, 0, 0, 'Link Camp flames on invis Bunny');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (40856, 0, 8, 9, 40, 0, 100, 0, 5, 0, 0, 0, 0, '', 41, 4000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'WP 5 reached despawn');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (40856, 0, 9, 10, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 40856, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Link quest credit');

REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (40856, 2, 5747, -3306, 1612, NULL, 0, NULL);
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (40856, 1, 5746, -3327, 1612, NULL, 0, NULL);
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (40856, 3, 5757, -3291, 1612, NULL, 0, NULL);
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (40856, 4, 5771, -3293, 1613, NULL, 0, NULL);
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (40856, 5, 5770, -3307, 1613, NULL, 0, NULL);
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (40856, 6, 5622, -3307, 1613, NULL, 0, NULL);

UPDATE `creature_template` SET `unit_flags`='33555200', `unit_flags2`='2048', `AIName`='SmartAI' WHERE  `entry`=85040;
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `MountCreatureID`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (85040, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL);

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (280332495, 85040, 1, 616, 616, '0', 0, '', 0, -1, 0, 0, 5755.81, -3290.84, 1604.6, 2.23713, 10, 0, 0, 4698, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (280332496, 85040, 1, 616, 616, '0', 0, '', 0, -1, 0, 0, 5765.41, -3286.61, 1604.6, 1.62452, 10, 0, 0, 4698, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (280332497, 85040, 1, 616, 616, '0', 0, '', 0, -1, 0, 0, 5778.76, -3291.41, 1604.6, 0.8077, 10, 0, 0, 4698, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (280332498, 85040, 1, 616, 616, '0', 0, '', 0, -1, 0, 0, 5773.7, -3303.57, 1604.6, 5.5828, 10, 0, 0, 4698, 0, 0, 0, 0, 0, 0, 0, '', 0);

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032643, 203087, 1, 0, 0, '0', 0, '0', 0, -1, 5762.14, -3299.48, 1604.6, 3.29249, -0, -0, -0.997155, 0.0753789, 300, 255, 1, 0, '', 0);
DELETE FROM `creature` WHERE  `guid`=372273;
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

UPDATE `creature_template` SET `gossip_menu_id`='685' WHERE  `entry`=1287;
UPDATE `creature_template` SET `gossip_menu_id`='685' WHERE  `entry`=1289;
UPDATE `creature_template` SET `gossip_menu_id`='685' WHERE  `entry`=1294;
UPDATE `creature_template` SET `gossip_menu_id`='687' WHERE  `entry`=1286;
UPDATE `creature_template` SET `gossip_menu_id`='687' WHERE  `entry`=1285;
UPDATE `creature_template` SET `gossip_menu_id`='686' WHERE  `entry`=1275;
UPDATE `creature_template` SET `gossip_menu_id`='685' WHERE  `entry`=1257;
UPDATE `creature_template` SET `gossip_menu_id`='685' WHERE  `entry`=3518;
UPDATE `creature_template` SET `gossip_menu_id`='685' WHERE  `entry`=1301;
UPDATE `creature_template` SET `gossip_menu_id`='4262' WHERE  `entry`=1300;
UPDATE `creature_template` SET `gossip_menu_id`='685' WHERE  `entry`=1299;
UPDATE `creature_template` SET `gossip_menu_id`='687' WHERE  `entry`=1298;
UPDATE `creature_template` SET `gossip_menu_id`='686' WHERE  `entry`=1297;
UPDATE `creature_template` SET `gossip_menu_id`='686' WHERE  `entry`=1295;
UPDATE `creature_template` SET `gossip_menu_id`='685' WHERE  `entry`=1302;
UPDATE `creature_template` SET `gossip_menu_id`='703' WHERE  `entry`=1303;
UPDATE `creature_template` SET `gossip_menu_id`='682' WHERE  `entry`=1304;
UPDATE `creature_template` SET `gossip_menu_id`='701' WHERE  `entry`=1305;
UPDATE `creature_template` SET `gossip_menu_id`='681' WHERE  `entry`=1307;
UPDATE `creature_template` SET `gossip_menu_id`='681' WHERE  `entry`=1308;
UPDATE `creature_template` SET `gossip_menu_id`='681' WHERE  `entry`=1309;
UPDATE `creature_template` SET `gossip_menu_id`='681' WHERE  `entry`=1310;
UPDATE `creature_template` SET `gossip_menu_id`='681' WHERE  `entry`=1312;
UPDATE `creature_template` SET `gossip_menu_id`='681' WHERE  `entry`=1313;
UPDATE `creature_template` SET `gossip_menu_id`='681' WHERE  `entry`=1314;
UPDATE `creature_template` SET `gossip_menu_id`='681' WHERE  `entry`=1315;
UPDATE `creature_template` SET `gossip_menu_id`='681' WHERE  `entry`=1318;
UPDATE `creature_template` SET `gossip_menu_id`='688' WHERE  `entry`=1320;
UPDATE `creature_template` SET `gossip_menu_id`='688' WHERE  `entry`=1321;
UPDATE `creature_template` SET `gossip_menu_id`='699' WHERE  `entry`=43723;
UPDATE `creature_template` SET `gossip_menu_id`='699' WHERE  `entry`=43724;
UPDATE `creature_template` SET `gossip_menu_id`='699' WHERE  `entry`=43725;
UPDATE `creature_template` SET `gossip_menu_id`='699' WHERE  `entry`=43823;
UPDATE `creature_template` SET `gossip_menu_id`='699' WHERE  `entry`=43824;
UPDATE `creature_template` SET `gossip_menu_id`='699' WHERE  `entry`=43825;
UPDATE `creature_template` SET `gossip_menu_id`='699' WHERE  `entry`=43840;

