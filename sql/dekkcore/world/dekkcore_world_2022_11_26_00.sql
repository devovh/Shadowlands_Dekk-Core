UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=36845;
REPLACE INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES ('36845', '1', '70589', '39653');


UPDATE `smart_scripts` SET `link`='1', `event_type`='8', `event_flags`='1', `event_param1`='69453', `event_param2`='0', `event_param3`='0', `event_param4`='0', `action_type`='33', `action_param1`='36872', `target_type`='7', `comment`='On spellhit - Give quest credit' WHERE  `entryorguid`=36845 AND `source_type`=0 AND `id`=0 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (36845, 0, 0, 1, 8, 0, 100, 1, 69453, 0, 0, 0, 0, '', 33, 36872, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'On spellhit - Give quest credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (36845, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 66, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - Set orient invoker');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (36845, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 3500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - Despawn');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (36845, 0, 3, 0, 9, 0, 100, 0, 0, 30, 6800, 9800, 0, '', 11, 81305, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (36845, 0, 4, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, '', 11, 81305, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast');


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=38925;

DELETE FROM `smart_scripts` WHERE `entryorguid`=38923 AND `source_type`=0 AND `id`=3 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38923, 0, 3, 0, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 29, 3, 0, 38925, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0, 0, 'Summo');
DELETE FROM `smart_scripts` WHERE `entryorguid`=38923 AND `source_type`=0 AND `id`=2 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38923, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link Despawn');
DELETE FROM `smart_scripts` WHERE `entryorguid`=38923 AND `source_type`=0 AND `id`=1 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38923, 0, 1, 0, 38, 0, 100, 0, 1, 1, 0, 0, 0, '', 44, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link set Phase 2');
DELETE FROM `smart_scripts` WHERE `entryorguid`=38923 AND `source_type`=0 AND `id`=0 AND `link`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38923, 0, 0, 1, 38, 0, 100, 0, 1, 1, 0, 0, 0, '', 33, 38887, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Set Data Killcredit');
DELETE FROM `smart_scripts` WHERE `entryorguid`=38925 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38925, 0, 0, 0, 1, 0, 100, 0, 3000, 3000, 3000, 3000, 0, '', 45, 1, 1, 0, 0, 0, 0, 11, 38923, 5, 0, 0, 0, 0, 0, 0, 'Time 3s - Set Data Target (Quest 24974)');

DELETE FROM `smart_scripts` WHERE `entryorguid`=1543 AND `source_type`=0 AND `id`=1 AND `link`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (1543, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 38923, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - Kill Credit');
DELETE FROM `smart_scripts` WHERE `entryorguid`=1543 AND `source_type`=0 AND `id`=0 AND `link`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (1543, 0, 0, 1, 8, 0, 100, 0, 73108, 0, 0, 0, 0, '', 11, 73110, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'SpellHit - Summon Puddlejumper: Force Cast');
DELETE FROM `smart_scripts` WHERE `entryorguid`=1543 AND `source_type`=0 AND `id`=2 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (1543, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - Despawn');
DELETE FROM `smart_scripts` WHERE `entryorguid`=1543 AND `source_type`=0 AND `id`=3 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (1543, 0, 3, 0, 9, 0, 100, 1, 5, 45, 0, 0, 0, '', 11, 75002, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast');

DELETE FROM `smart_scripts` WHERE `entryorguid`=1544 AND `source_type`=0 AND `id`=1 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (1544, 0, 1, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, '', 11, 9532, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Minor Oracle - In Combat - Cast Lightning Bolt');
DELETE FROM `smart_scripts` WHERE `entryorguid`=1544 AND `source_type`=0 AND `id`=4 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (1544, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, '', 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Minor Oracle - Between 0-15% Health - Flee For Assist (No Repeat)');
DELETE FROM `smart_scripts` WHERE `entryorguid`=1544 AND `source_type`=0 AND `id`=3 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (1544, 0, 3, 0, 16, 0, 100, 0, 324, 1, 15000, 30000, 0, '', 11, 324, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Minor Oracle - On Friendly Unit Missing Buff Lightning Shield - Cast Lightning Shield');
DELETE FROM `smart_scripts` WHERE `entryorguid`=1544 AND `source_type`=0 AND `id`=2 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (1544, 0, 2, 0, 9, 0, 100, 0, 0, 40, 9200, 11400, 0, '', 11, 9532, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Minor Oracle - Out of Combat - Cast Lightning Shield');
DELETE FROM `smart_scripts` WHERE `entryorguid`=1544 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (1544, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, '', 11, 12550, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Vile Fin Minor Oracle - On SpellHit - Actionlist');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=99045;

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (99045, 0, 0, 2, 62, 0, 100, 0, 18937, 0, 0, 0, 0, '', 11, 195021, 18, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q39516');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (99045, 0, 1, 0, 19, 0, 100, 0, 40051, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'DH Start Loc');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (99045, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'DH Start Loc');

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (15, 18937, 0, 0, 1, 9, 0, 39516, 0, 0, 0, 0, '', 'Show gossip option if Player has Quest 39516');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (15, 18937, 0, 0, 2, 9, 0, 39515, 0, 0, 0, 0, '', 'Show gossip option if Player has Quest 39515');

DELETE FROM `creature` WHERE `guid`=61000000001349681;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (61000000001349681, 160212, 2222, 0, 0, '0', 0, '0', 0, -1, 0, 1, -1548.59, -5890.16, 6819.37, 2.53628, 300, 0, 0, 117915, 0, 0, 0, 0, 2131968, 0, 0, '', 0);

UPDATE `creature_template` SET `faction`='35' WHERE  `entry`=177820;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=158946;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `KillCredit2`=173429;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `dynamicflags`=128;
UPDATE `creature_template` SET `KillCredit1`='0' WHERE  `KillCredit1`=173429;
UPDATE `creature_template` SET `KillCredit1`='0' WHERE  `KillCredit1`=181376;
UPDATE `creature_template` SET `KillCredit1`='0', `KillCredit2`='0' WHERE  `entry`=190069;
DELETE FROM `creature_questitem` WHERE  `CreatureEntry`=34640 AND `Idx`=0;
DELETE FROM `creature_questitem` WHERE  `CreatureEntry`=34635 AND `Idx`=0;
DELETE FROM `creature_questitem` WHERE  `ItemId`=192493;
REPLACE INTO `quest_template_addon` (`ID`, `ProvidedItemCount`) VALUES ('62269', '1');
REPLACE INTO `quest_template_addon` (`ID`, `ProvidedItemCount`) VALUES ('62213', '1');
REPLACE INTO `quest_template_addon` (`ID`, `ProvidedItemCount`) VALUES ('62237', '1');
REPLACE INTO `quest_template_addon` (`ID`, `ProvidedItemCount`) VALUES ('62186', '1');
UPDATE `quest_template` SET `ItemDropQuantity2`='0' WHERE  `ID`=28399;
UPDATE `quest_template` SET `ItemDropQuantity2`='0' WHERE  `ID`=28398;
UPDATE `quest_template` SET `ItemDropQuantity2`='0' WHERE  `ID`=28401;
UPDATE `quest_template` SET `ItemDropQuantity1`='0' WHERE  `ID`=28406;
UPDATE `quest_template` SET `ItemDropQuantity2`='0' WHERE  `ID`=28394;
UPDATE `quest_template` SET `ItemDropQuantity2`='0' WHERE  `ID`=28393;
UPDATE `quest_template` SET `ItemDropQuantity2`='0' WHERE  `ID`=28457;
UPDATE `quest_template` SET `ItemDropQuantity2`='0' WHERE  `ID`=28458;
UPDATE `quest_template` SET `ItemDropQuantity2`='0' WHERE  `ID`=28461;
UPDATE `quest_template` SET `ItemDropQuantity1`='0' WHERE  `ID`=28463;
UPDATE `quest_template` SET `ItemDropQuantity2`='0' WHERE  `ID`=28465;
UPDATE `quest_template` SET `ItemDropQuantity1`='0' WHERE  `ID`=28466;
UPDATE `quest_template` SET `ItemDropQuantity1`='0' WHERE  `ID`=28473;
UPDATE `quest_template` SET `ItemDropQuantity1`='0' WHERE  `ID`=28692;
UPDATE `quest_template` SET `ItemDropQuantity2`='0' WHERE  `ID`=28775;
UPDATE `quest_template` SET `ItemDropQuantity2`='0' WHERE  `ID`=28776;
UPDATE `quest_template` SET `ItemDropQuantity2`='0' WHERE  `ID`=28777;
UPDATE `quest_template` SET `ItemDropQuantity2`='0' WHERE  `ID`=28778;
UPDATE `quest_template` SET `ItemDropQuantity1`='1' WHERE  `ID`=29119;
REPLACE INTO `quest_template_addon` (`ID`, `ProvidedItemCount`) VALUES ('62598', '1');
REPLACE INTO `quest_template_addon` (`ID`, `ProvidedItemCount`) VALUES ('62504', '1');
REPLACE INTO `quest_template_addon` (`ID`, `ProvidedItemCount`) VALUES ('64549', '1');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=61083;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=39364;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=25326;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=25494;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=25940;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=25952;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=20448;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=21627;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=20933;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=20780;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=20061;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=19913;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=19676;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=19674;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28846 AND `SourceEntry`=7993 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28846 AND `SourceEntry`=8389 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=165 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28846 AND `SourceEntry`=8390 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=165 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28846 AND `SourceEntry`=9295 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=171 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28846 AND `SourceEntry`=9298 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=171 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28846 AND `SourceEntry`=10300 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=197 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28846 AND `SourceEntry`=10302 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=197 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28846 AND `SourceEntry`=10315 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=197 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28846 AND `SourceEntry`=10320 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=197 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28846 AND `SourceEntry`=11208 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=333 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28846 AND `SourceEntry`=12683 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28846 AND `SourceEntry`=14467 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=197 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28846 AND `SourceEntry`=15737 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=165 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28846 AND `SourceEntry`=16215 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=333 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28846 AND `SourceEntry`=21945 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=755 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28846 AND `SourceEntry`=21947 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=755 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28846 AND `SourceEntry`=21949 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=755 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28822 AND `SourceEntry`=7992 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28819 AND `SourceEntry`=8029 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28819 AND `SourceEntry`=10302 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=197 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28819 AND `SourceEntry`=21940 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=755 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28802 AND `SourceEntry`=39152 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=129 AND `ConditionValue2`=390 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28641 AND `SourceEntry`=39152 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=129 AND `ConditionValue2`=390 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28641 AND `SourceEntry`=43509 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=185 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28768 AND `SourceEntry`=12682 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28769 AND `SourceEntry`=9298 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=171 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28769 AND `SourceEntry`=21947 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=755 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28610 AND `SourceEntry`=7989 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28610 AND `SourceEntry`=8389 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=165 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28610 AND `SourceEntry`=8390 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=165 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28610 AND `SourceEntry`=9298 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=171 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28610 AND `SourceEntry`=12689 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28610 AND `SourceEntry`=12691 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28610 AND `SourceEntry`=12695 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28610 AND `SourceEntry`=12704 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28610 AND `SourceEntry`=13488 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=171 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28610 AND `SourceEntry`=14499 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=197 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28610 AND `SourceEntry`=15737 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=165 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28610 AND `SourceEntry`=16215 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=333 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28610 AND `SourceEntry`=21947 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=755 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28611 AND `SourceEntry`=9298 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=171 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28611 AND `SourceEntry`=11225 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=333 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28611 AND `SourceEntry`=12682 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28611 AND `SourceEntry`=12689 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28611 AND `SourceEntry`=14467 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=197 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28611 AND `SourceEntry`=14494 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=197 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28611 AND `SourceEntry`=15746 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=165 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28611 AND `SourceEntry`=16215 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=333 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28611 AND `SourceEntry`=16218 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=333 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28611 AND `SourceEntry`=16220 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=333 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28611 AND `SourceEntry`=21945 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=755 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28611 AND `SourceEntry`=12684 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28608 AND `SourceEntry`=12694 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28608 AND `SourceEntry`=14494 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=197 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28608 AND `SourceEntry`=15737 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=165 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28608 AND `SourceEntry`=16218 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=333 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28608 AND `SourceEntry`=16220 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=333 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28608 AND `SourceEntry`=21945 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=755 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28608 AND `SourceEntry`=21949 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=755 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28608 AND `SourceEntry`=21953 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=755 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28608 AND `SourceEntry`=12684 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28609 AND `SourceEntry`=12684 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28609 AND `SourceEntry`=12682 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28609 AND `SourceEntry`=12683 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28609 AND `SourceEntry`=12689 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28609 AND `SourceEntry`=12691 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28609 AND `SourceEntry`=12704 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28609 AND `SourceEntry`=14494 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=197 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28609 AND `SourceEntry`=15737 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=165 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28609 AND `SourceEntry`=15743 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=165 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28609 AND `SourceEntry`=16215 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=333 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28609 AND `SourceEntry`=16220 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=333 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=28609 AND `SourceEntry`=21949 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=755 AND `ConditionValue2`=1 AND `ConditionValue3`=0;

SET @NPCTEXTID = 98942;
DELETE FROM `npc_text` WHERE `ID` BETWEEN @NPCTEXTID+0 AND @NPCTEXTID+0;
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(@NPCTEXTID+0, 1, 0, 0, 0, 0, 0, 0, 0, 98942, 0, 0, 0, 0, 0, 0, 0, 44232); -- 84224 (Command Table)

DELETE FROM `gossip_menu` WHERE (`MenuID`=18757 AND `TextID`=@NPCTEXTID+0);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(18757, @NPCTEXTID+0, 44232); -- 84224 (Command Table)


UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=98943, `VerifiedBuild`=44232 WHERE (`MenuID`=18757 AND `OptionID`=0); -- OptionBroadcastTextID: 98943 - 98943

UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=18435 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=18994 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=18438 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=18438 AND `OptionID`=1;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=18993 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=18967 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=18864 AND `OptionID`=0;


UPDATE `creature_template` SET `npcflag`='3', `AIName`='SmartAI',`ScriptName`='' WHERE  `entry`=93127;

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (93127, 0, 0, 1, 62, 0, 100, 0, 18435, 0, 0, 0, 0, '', 33, 93127, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'On Gossiep Quest Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (93127, 0, 1, 0, 61, 0, 100, 0, 1000, 1000, 0, 0, 0, '', 1, 8, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Say Text');

UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE  `entry`=96655;

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (96655, 0, 0, 1, 62, 0, 100, 0, 18935, 0, 0, 0, 0, '', 33, 96655, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'On Gossiep Quest Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (96655, 0, 1, 0, 61, 0, 100, 0, 1000, 1000, 0, 0, 0, '', 1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Say Text');

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE  `entry`=96420;

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (96420, 0, 0, 1, 62, 0, 100, 0, 18936, 0, 0, 0, 0, '', 33, 96420, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'On Gosiep Quest Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (96420, 0, 1, 0, 61, 0, 100, 0, 1000, 1000, 0, 0, 0, '', 1, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Say Text');

UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=99045;

UPDATE `smart_scripts` SET `action_type`='33', `action_param1`='99045', `action_param2`='0' WHERE  `entryorguid`=99045 AND `source_type`=0 AND `id`=0 AND `link`=2;

UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=96652;


DELETE FROM `gossip_menu_option` WHERE  `MenuID`=18937 AND `OptionID`=1;
DELETE FROM `gossip_menu_option` WHERE  `MenuID`=18435 AND `OptionID`=2;
DELETE FROM `gossip_menu_option` WHERE  `MenuID`=18935 AND `OptionID`=1;
DELETE FROM `gossip_menu_option` WHERE  `MenuID`=18936 AND `OptionID`=1;
DELETE FROM `gossip_menu_option` WHERE  `MenuID`=18823 AND `OptionID`=1;

DELETE FROM `creature_equip_template` WHERE (`CreatureID`=198497 AND `ID`=1);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(198497, 1, 163530, 0, 0, 0, 0, 0, 0, 0, 0, 46702); -- Nathenaseth


DELETE FROM `conversation_actors` WHERE (`ConversationId`=17844 AND `Idx`=0);
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `Idx`, `CreatureId`, `CreatureDisplayInfoId`, `NoActorObject`, `ActivePlayerObject`, `VerifiedBuild`) VALUES
(17844, 64220, 0, 190239, 63690, 0, 0, 46702);



DELETE FROM `conversation_line_template` WHERE `Id` IN (45414, 45413);
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(45414, 1221, 0, 0, 46702),
(45413, 1221, 0, 0, 46702);


DELETE FROM `conversation_template` WHERE `Id`=17844;
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `TextureKitId`, `VerifiedBuild`) VALUES
(17844, 45413, 0, 46702);

UPDATE `gameobject_template_addon` SET `faction`=29 WHERE `entry`=259114; -- [DNT] Command Table Collision Cylinder


DELETE FROM `quest_poi` WHERE (`QuestID`=65435 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65435 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(65435, 0, 1, 32, 0, 0, 1, 85, 0, 0, 0, 0, 0, 2158408, 0, 46702), -- -Unknown-
(65435, 0, 0, -1, 0, 0, 1, 85, 0, 0, 0, 0, 0, 2158408, 0, 46702); -- -Unknown-

UPDATE `quest_poi` SET `VerifiedBuild`=46702 WHERE (`QuestID`=50603 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50602 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50598 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=65435 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65435 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(65435, 1, 0, 2046, -4273, 95, 46702), -- -Unknown-
(65435, 0, 0, 2046, -4273, 95, 46702); -- -Unknown-

UPDATE `quest_poi_points` SET `VerifiedBuild`=46702 WHERE (`QuestID`=50603 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50602 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50598 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID`=65435;
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(65435, 1, 0, 0, 0, 0, 0, 0, 0, 46702); -- -Unknown-


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (85846,198497,198541));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(85846, 0, 0, 0, 371, 46702),
(198497, 0, 0, 0, 866, 46702),
(198541, 0, 0, 0, 866, 46702);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46702 WHERE (`DifficultyID`=0 AND `Entry` IN (54870,42637,52382,134711,14720,49131,62195,44867,44865,188167,72559,5188,188166,3370,3323,89830,135201,17098,3319,46359,37072,46358,46555,51195,145529,46357,145528,88703,47571,45339,3342,44856,187758,3312,44878,133333,44854,62114,44876,44851,44872,145424,58155,44871,197771,49622,197770,188656,6929,188655,3144,188073,46556,197767,35068,44338,19175,46572,62115,44877,46140,32520,46512,27489,52034,49750,3314,45337,23128,3296,4047,14375,28960,46142,49837,38821,49743,44853,51346,74228,14392,44852));

DELETE FROM `creature_model_info` WHERE `DisplayID` IN (110138, 110187);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(110138, 0.382999986410140991, 1.5, 0, 46702),
(110187, 0.722000002861022949, 2, 0, 46702);

UPDATE `creature_model_info` SET `VerifiedBuild`=46702 WHERE `DisplayID` IN (42562, 4259, 32981, 37864, 81857, 14732, 36584, 31988, 42385, 34156, 34154, 49781, 3128, 1392, 1323, 19181, 24980, 16850, 1319, 35053, 4382, 35052, 35141, 37138, 35051, 88594, 8001, 35695, 34412, 99451, 1358, 34144, 106345, 1312, 1310, 34143, 36598, 89418, 4601, 1318, 34136, 8000, 15468, 30272, 40012, 9133, 73093, 7511, 36559, 79383, 106382, 5706, 4260, 82115, 99452, 106383, 31738, 36583, 35140, 109709, 29569, 304, 19182, 37329, 35148, 1320, 37330, 89803, 35133, 22493, 37724, 36615, 1314, 34406, 21264, 99453, 4514, 14413, 21342, 14370, 36585, 37331, 21072, 8971, 15467, 99462, 34141, 37328, 99507, 51613, 34139);
UPDATE `creature_model_info` SET `BoundingRadius`=0.144999995827674865, `VerifiedBuild`=46702 WHERE `DisplayID`=30969;


UPDATE `gossip_menu` SET `VerifiedBuild`=46702 WHERE (`MenuID`=27894 AND `TextID`=1);


DELETE FROM `creature_template` WHERE `entry` IN (198497 /*Nathenaseth*/, 198541 /*Zurenoth*/);
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(198497, 0, 60, 60, 3341, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Nathenaseth
(198541, 0, 60, 60, 3341, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1); -- Zurenoth

UPDATE `creature_template` SET `minlevel`=63, `maxlevel`=63 WHERE `entry`=134711; -- Lady Sylvanas Windrunner
UPDATE `creature_template` SET `speed_run`=0.857142865657806396, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=85846; -- Bush Chicken
UPDATE `creature_template` SET `minlevel`=11, `maxlevel`=11, `BaseAttackTime`=1970 WHERE `entry`=1860; -- Voidwalker

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=135201; -- Talk to Sylvanas
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=133333; -- Spell Bunny
UPDATE `creature_template` SET `minlevel`=18, `maxlevel`=60, `BaseAttackTime`=1622 WHERE `entry`=165189; -- Generic Hunter Pet

DELETE FROM `quest_template` WHERE `ID`=65435;
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestPackageID`, `ContentTuningID`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitGiverModelSceneID`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `QuestSessionBonus`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(65435, 2, 0, 2573, 13642, 0, 0, 65437, 1, 1, 1, 1, 7750, 0, 0, 0, 0, 0, 1, 0, 38273024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1308636082, 0, 0, 0, 0, 'The Dragon Isles Await', 'Meet Ebyssian in Orgrimmar.', 'Heroes of the Horde, I bring news. The Dragon Isles are awakening!\n\nThe Isles went dormant in the wake of the Sundering. But now, at long last, they have called my kin and I home.\n\nWhile the Isles hold many wonders, it is also a perilous land. We will require the aid of our mortal allies to reclaim our legacy.\n\nI am about to present the Aspects\' invitation to the Horde Council in Orgrimmar. Meet me there and we shall see what they have to say.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46702); -- -Unknown-


DELETE FROM `creature_template` WHERE `entry` IN (198497 /*Nathenaseth*/, 198541 /*Zurenoth*/, 184650 /*Wrathion*/, 190239 /*Ebyssian*/);
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `unit_class`, `WidgetSetID`, `WidgetSetUnitConditionID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `VerifiedBuild`) VALUES
(198497, 0, 0, 'Nathenaseth', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226876, 46702), -- Nathenaseth
(198541, 0, 0, 'Zurenoth', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226920, 46702), -- Zurenoth
(184650, 0, 0, 'Wrathion', '', 'The Black Prince', NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 4, 0, 50, 1, 0, 0, 208705, 46702), -- Wrathion
(190239, 0, 0, 'Ebyssian', '', NULL, NULL, NULL, 8, 0, 0, 2, 0, 0, 1, 0, 2, 4, 16384, 25, 1, 0, 0, 216930, 46702); -- Ebyssian

UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3342; -- Shan'ti
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=14505; -- Dreadsteed
UPDATE `creature_template` SET `VerifiedBuild`=46702 WHERE `entry` IN (52382, 197767, 197770, 197771, 145424, 49131, 72559, 145528, 145529, 49750, 133333, 60941, 54870, 42637, 165189, 135201, 32207, 134711, 18363, 18364, 18365, 18378, 18379, 18380);
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3370; -- Urtrun Clanbringer
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=49622; -- Shok Narnes
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=187758; -- Zaa'je
UPDATE `creature_template` SET `femaleName`='', `movementId`=121, `VerifiedBuild`=46702 WHERE `entry`=85846; -- Bush Chicken
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=51346; -- Orgrimmar Wind Rider
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46357; -- Gonto
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46358; -- Lutah
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46359; -- Punra
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=88703; -- Grunt Arhung
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=74228; -- Darkspear Headhunter
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=4047; -- Zor Lonetree
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=89830; -- Brew Vendor
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry` IN (49743, 62115); -- Dung Beetle
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=5188; -- Garyl
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=21354; -- Fiery Warhorse
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=1860; -- Voidwalker
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=27489; -- Ray'ma
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=32520; -- Totally Generic Bunny (All Phase)
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45337; -- Tyelis
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45339; -- Dark Cleric Cecille
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=47571; -- Belloc Brightblade
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=58155; -- Rugok
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=52034; -- Togar
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=19175; -- Orc Commoner
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=14720; -- High Overlord Saurfang
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=6929; -- Innkeeper Gryshka
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=73780; -- Prideful Gladiator's Cloud Serpent
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry` IN (49837, 62114); -- Spiny Lizard
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46512; -- Naros
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44851; -- Mezlik
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=23128; -- Master Pyreanor
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44852; -- Rilgiz
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44853; -- Branzlit
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44854; -- Kixa
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44856; -- Perixa
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=304; -- Felsteed
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44865; -- Auctioneer Fazdran
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=305; -- White Stallion
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44867; -- Auctioneer Ralinza
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=37072; -- Rogg
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44871; -- Grunt Grimful
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44872; -- Grunt Wabang
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44876; -- Grunt Koma
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44877; -- Grunt Soran
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44878; -- Grunt Karus
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46555; -- Gunra
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46556; -- Jamus'Vaz
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=32641; -- Drix Blackwrench
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44338; -- White Chicken
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=32642; -- Mojodishu
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46572; -- Goram
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3144; -- Eitrigg
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry` IN (188073, 188655, 188656, 188166, 188167); -- Worker
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=62195; -- Shang'gok
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=17098; -- Ambassador Dawnsinger
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=38821; -- Dave's Industrial Light and Magic Bunny (Medium)(Sessile)
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=65011; -- Albino Riding Crane
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=62821; -- Mystic Birdhat
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=62822; -- Cousin Slowhands
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=14375; -- Scout Stronghand
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=28302; -- Acherus Deathcharger
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46140; -- Silvermoon Delegation Guardian
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=14392; -- Overlord Natoj
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46142; -- Forsaken Delegation Deathguard
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=51195; -- Kor'kron Annihilator
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3296; -- Orgrimmar Grunt
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46754; -- Goblin Trike
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3312; -- Olvia
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3314; -- Urtharo
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3319; -- Sana
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=35068; -- Gotura Fourwinds
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=20029; -- Thalassian Warhorse
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=20030; -- Thalassian Charger
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3323; -- Horthus
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=28960; -- Totally Generic Bunny (JSB)
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=18377; -- Swift Red Wind Rider

DELETE FROM `creature_template_model` WHERE (`Idx`=1 AND `CreatureID`=184650) OR (`Idx`=0 AND `CreatureID` IN (184650,190239,198541,198497));
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(184650, 1, 107945, 1, 0, 46702), -- Wrathion
(184650, 0, 107146, 1, 1, 46702), -- Wrathion
(190239, 0, 63690, 1, 1, 46702), -- Ebyssian
(198541, 0, 110187, 1, 1, 46702), -- Zurenoth
(198497, 0, 110138, 1, 1, 46702); -- Nathenaseth

UPDATE `creature_template_model` SET `VerifiedBuild`=46702 WHERE (`Idx`=0 AND `CreatureID` IN (134711,54870,52382,42637,14720,49131,85846,62195,44867,44865,1860,46358,3370,188655,4047,44851,3319,62114,35068,46512,37072,44852,188166,89830,188073,49622,145529,49750,44877,44854,6929,28960,44871,62822,145424,45339,3323,188656,32641,19175,44853,197770,17098,44878,188167,197767,14375,58155,51195,72559,88703,5188,135201,46556,62115,27489,44338,32642,46357,187758,46142,3342,3314,197771,46555,49743,47571,46359,32520,23128,38821,3144,145528,44856,44872,49837,14392,46140,46572,44876,3312,3296,74228,133333,45337,51346,52034,62821,165189,73780,305,65011,46754,32207,28302,20029,20030,18379,18380,18378,18377,18365,18364,18363,14505,60941,21354,304)) OR (`Idx`=3 AND `CreatureID` IN (62114,89830,62115,46142,49743,49837,46140,3296,74228,51346)) OR (`Idx`=2 AND `CreatureID` IN (62114,89830,62115,46142,49743,49837,46140,3296,74228,51346)) OR (`Idx`=1 AND `CreatureID` IN (62114,89830,28960,19175,72559,62115,46142,49743,32520,38821,49837,46140,3296,74228,133333,51346)) OR (`Idx`=7 AND `CreatureID`=46140) OR (`Idx`=6 AND `CreatureID`=46140) OR (`Idx`=5 AND `CreatureID` IN (46140,3296)) OR (`Idx`=4 AND `CreatureID` IN (46140,3296));


UPDATE `gameobject_template` SET `VerifiedBuild`=46702 WHERE `entry` IN (243302, 243300, 243299, 243293, 243292, 206741, 204709, 204640, 204200, 204195, 204192, 206736, 204205, 204196, 204191, 204608, 204600, 175080, 175788, 259114, 332595, 180007, 179881, 203969, 206110, 205142, 175787, 204605, 205109, 204209, 204201, 204198, 206726, 204214, 206725, 204602, 204610, 204197, 206995, 204211, 204639, 204607, 204208, 204604, 205108, 204213, 204609, 204601, 204194, 204210, 204202, 223814, 204606, 204199, 206727, 204207, 204215, 223739, 204603, 204611, 206608, 206609, 204212, 206610);
UPDATE `gameobject_template` SET `Data22`=101280, `VerifiedBuild`=46702 WHERE `entry`=281340; -- Warchief's Command Board
UPDATE `gameobject_template` SET `displayId`=0, `Data3`=0, `VerifiedBuild`=46702 WHERE `entry`=184633; -- Forge
UPDATE `gameobject_template` SET `displayId`=0, `Data3`=0, `Data6`=0, `VerifiedBuild`=46702 WHERE `entry`=203378; -- Blacksmith's Anvil - INVISIBLE
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46702 WHERE `entry`=202590; -- Anvil


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46702 WHERE (`GameObjectEntry`=203969 AND `Idx`=0);


UPDATE `playerchoice_response` SET `ResponseIdentifier`=724, `VerifiedBuild`=46702 WHERE (`ChoiceId`=504 AND `ResponseId`=895 AND `Index`=2);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=723, `VerifiedBuild`=46702 WHERE (`ChoiceId`=504 AND `ResponseId`=900 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=722, `VerifiedBuild`=46702 WHERE (`ChoiceId`=504 AND `ResponseId`=2351 AND `Index`=0);
UPDATE `creature_template` SET `ScriptName`='npc_missions_84698' WHERE  `entry`=84698;

DELETE FROM `smart_scripts` WHERE  `entryorguid`=91349 AND `source_type`=0 AND `id`=12 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=90378 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=90316 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=90296 AND `source_type`=0 AND `id`=11 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=90269 AND `source_type`=0 AND `id`=1 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=89890 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=76886 AND `source_type`=0 AND `id`=3 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=71772 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=63888 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `action_type`='33', `action_param1`='60899' WHERE  `entryorguid`=60899 AND `source_type`=0 AND `id`=0 AND `link`=1;
UPDATE `smart_scripts` SET `action_type`='11', `action_param1`='117974' WHERE  `entryorguid`=60899 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0', `event_flags`='0', `event_param1`='1000', `event_param2`='1000', `event_param3`='0', `event_param4`='0' WHERE  `entryorguid`=55656 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=43910 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=40935 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=41311 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=40713 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='73', `action_type`='33', `action_param1`='39740', `target_type`='7', `comment`='on spellclick - give credit' WHERE  `entryorguid`=39738 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=39738 AND `source_type`=0 AND `id`=2 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=39738 AND `source_type`=0 AND `id`=1 AND `link`=2;
UPDATE `smart_scripts` SET `event_type`='73', `action_type`='33', `action_param1`='39741', `target_type`='7', `comment`='on spellclick - give credit' WHERE  `entryorguid`=39737 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=39737 AND `source_type`=0 AND `id`=1 AND `link`=2;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=39737 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='73', `action_type`='33', `action_param1`='39739', `target_type`='7', `comment`='on spellclick - give credit' WHERE  `entryorguid`=39736 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=39736 AND `source_type`=0 AND `id`=3 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=39736 AND `source_type`=0 AND `id`=4 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=39736 AND `source_type`=0 AND `id`=2 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=39736 AND `source_type`=0 AND `id`=1 AND `link`=2;
UPDATE `smart_scripts` SET `event_type`='73', `action_type`='33', `action_param1`='39727', `target_type`='7', `comment`='on spellclick - give credit' WHERE  `entryorguid`=39730 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=39730 AND `source_type`=0 AND `id`=1 AND `link`=2;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=39730 AND `source_type`=0 AND `id`=2 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=37728 AND `source_type`=0 AND `id`=1 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=37712 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=37161 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=36896 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_flags`='2' WHERE  `entryorguid`=36896 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_flags`='6' WHERE  `entryorguid`=36896 AND `source_type`=0 AND `id`=2 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=36892 AND `source_type`=0 AND `id`=1 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=36879 AND `source_type`=0 AND `id`=1 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=43540 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=41935 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=41466 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=41407 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=41311 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=41158 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=41082 AND `source_type`=0 AND `id`=1 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=40419 AND `source_type`=0 AND `id`=1 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=40417 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `id`='0' WHERE  `entryorguid`=40417 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=39958 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=39638 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=39143 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=38951 AND `source_type`=0 AND `id`=2 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=38482 AND `source_type`=0 AND `id`=1 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=35143 AND `source_type`=0 AND `id`=3 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=35143 AND `source_type`=0 AND `id`=1 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=36842 AND `source_type`=0 AND `id`=3 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=36842 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `id`='1' WHERE  `entryorguid`=36842 AND `source_type`=0 AND `id`=2 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=36840 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=36816 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=36688 AND `source_type`=0 AND `id`=2 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=36620 AND `source_type`=0 AND `id`=7 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=36620 AND `source_type`=0 AND `id`=5 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=36620 AND `source_type`=0 AND `id`=3 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=36564 AND `source_type`=0 AND `id`=5 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=36564 AND `source_type`=0 AND `id`=3 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=36551 AND `source_type`=0 AND `id`=5 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=36522 AND `source_type`=0 AND `id`=1 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=36516 AND `source_type`=0 AND `id`=5 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=36499 AND `source_type`=0 AND `id`=3 AND `link`=0;
UPDATE `smart_scripts` SET `link`='1', `action_type`='33', `action_param1`='36499', `action_param2`='0', `action_param3`='0', `action_param4`='0', `target_type`='7' WHERE  `entryorguid`=36472 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='61' WHERE  `entryorguid`=36472 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=36446 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=36207 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=33824 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `action_type`='33', `action_param1`='33736', `action_param2`='0', `action_param3`='0', `action_param4`='0', `target_type`='7' WHERE  `entryorguid`=33736 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='2' WHERE  `entryorguid`=32874 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='2' WHERE  `entryorguid`=32874 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='38', `event_flags`='1', `event_param2`='1', `action_type`='33', `action_param1`='31119', `target_type`='18', `target_param1`='10', `comment`='On data - Give credit' WHERE  `entryorguid`=31119 AND `source_type`=0 AND `id`=0 AND `link`=1;
UPDATE `smart_scripts` SET `event_flags`='0', `event_param2`='1', `action_type`='41', `action_param1`='100', `action_param2`='0', `target_type`='1', `comment`='Link - Despawn' WHERE  `entryorguid`=31119 AND `source_type`=0 AND `id`=1 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=31119 AND `source_type`=0 AND `id`=2 AND `link`=3;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=31119 AND `source_type`=0 AND `id`=3 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=29614 AND `source_type`=0 AND `id`=5 AND `link`=6;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=29614 AND `source_type`=0 AND `id`=6 AND `link`=7;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=29614 AND `source_type`=0 AND `id`=7 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=29214 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=28734 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=12496;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=12479;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=12478;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=12477;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=12425 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=12120;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=11682 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=10696 AND `source_type`=0 AND `id`=2 AND `link`=0;

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (31021, 0, 0, 'What\'s the commotion outside?', 12, 0, 100, 1, 0, 0, 0, 31730, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (31021, 0, 1, 'Is something going on? I hear angry voices.', 12, 0, 100, 1, 0, 0, 0, 31731, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (31021, 0, 2, 'Everything\'s been so strange lately...', 12, 0, 100, 1, 0, 0, 0, 31732, 0, '');

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30570, 0, 0, 'The Stone Crow\'s closed today, sorry. There are too many health concerns, and I\'m not about to have Ed under fire for supposedly making people sick.', 12, 0, 100, 1, 0, 0, 0, 31724, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30570, 0, 1, 'I hate to disappoint people, but the Stone Crow\'s closed. If the kids from the orphanage were evacuated, I don\'t see why we should be open, either.', 12, 0, 100, 1, 0, 0, 0, 31729, 0, '');

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30547, 0, 0, '...zzz... ..snrk... c\'mere... gonna... gonna be Malowned... zzz..', 12, 0, 100, 0, 0, 0, 0, 31230, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30547, 0, 1, '...mrf... kids messin\'.. with th\' boxes... zzzz... teach \'em... lesson...', 12, 0, 100, 0, 0, 0, 0, 31231, 0, '');

REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('29915', 'You call that fighting? Let me go grab your dolly. Maybe she could teach you how to swing.', '12', '100', '30569');
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `Emote`, `BroadcastTextId`) VALUES ('29422', 'Yes, sir!', '12', '100', '66', '30120');

REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('28951', 'Welcome!', '12', '100', '32807');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('28940', '9', '5', 'By the Light be cleansed!, By the Light be cleansed!', '12', '100', '28602');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('28939', '9', 'Scourge filth! DIE!, Scourge filth! DIE!', '12', '100', '28597');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('28936', '9', 'Scourge filth! DIE!, Scourge filth! DIE!', '12', '100', '28597');

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('28216', '7', 'Not sure if you notice, but there rumbling sometimes from the water in the big hole. I think there something down there.', '12', '100', '28243');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('28216', '8', 'Gorlocs are the bad-guys, just so you know.', '12', '100', '28207');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('28216', '9', 'Good to stay away from Kartak. He only a friend of Frenzyheart so long as we keep his belly full... and he\'s got a big belly.', '12', '100', '28213');

REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('26890', 'You are not welcome in our home.  Leave and go find some other land to pillage!', '14', '100', '25922');
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('26218', 'The spirits have listened!  Can you feel it, $n?', '12', '100', '25615');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `Text`, `Type`, `Language`, `Probability`, `BroadcastTextId`) VALUES ('25589', '5', 'Filthy creature!', '12', '7', '100', '24777');
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('25326', 'You peons work harder or I will come over there and beat you!', '12', '100', '24705');
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('24038', '$n, my child, come here, I have something to ask of you.', '15', '100', '22685');

REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Language`, `Probability`, `BroadcastTextId`) VALUES ('23440', 'For the Dragonmaw!', '12', '1', '100', '1937');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('23440', '1', 'KILL THEM ALL!', '14', '100', '21655');
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('22465', 'I\'m only 4 years old.', '12', '100', '20353');
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('21925', 'Feel my wrath, $r scum!  You will not get away with this!', '14', '100', '19598');
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('21506', 'Illidan\'s lapdogs!  You will pay for my imprisonment with your lives!', '14', '100', '19577');
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('20780', 'Do not die on me, vindicator!', '12', '100', '18386');
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('19674', 'I don\'t give a damn what Shaffar\'s ethereals have placed over the entrance to the Mana-Tombs. You will work until those wards are removed and the Consortium can move in safely and take what\'s rightfully ours!', '12', '100', '17224');
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Language`, `Probability`, `BroadcastTextId`) VALUES ('19257', 'INCOMING! Do not let them through! Focus fire! NOW, NOW, NOW!', '14', '1', '100', '16395');
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('18904', 'Turn back, mortal... This is not your battle.', '15', '100', '16007');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('18471', '13', 'For the first time in the Ring of Blood\'s history, Mogor has chosen to exercise his right of battle! On this wartorn ground, $n will face Mogor, hero of the Warmaul!', '14', '100', '15481');

REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('17841', 'It\'s just like the structure you described at Umbrafen Lake.  Does this mean the naga are pumping water out of all the lakes in Zangarmarsh?', '15', '100', '14706');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('17841', '1', 'The naga are even pumping the water out of their own lake!  What purpose could that possibly serve?', '15', '100', '14712');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('17841', '2', 'There!  Those pipes all appear to be connected to that structure.  It can\'t possibly fit all the water they\'ve been stealing.  Where are they keeping it?', '15', '100', '14713');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('17841', '3', 'What we saw explains what happened in the Dead Mire.  There was a lake here once.  If we don\'t stop the naga, all of the marsh will soon look like this!', '15', '100', '14714');
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `Sound`, `BroadcastTextId`) VALUES ('17693', 'Invaders have breached the defenses!', '14', '100', '10285', '14309');

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (15491, 0, 0, 'Pitiful, predictable mortals... You know not what you have done! The Master\'s will fulfilled. The Moonglade shall be destroyed and Malfurion along with it!', 14, 0, 100, 0, 0, 0, 0, 11030, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (15491, 1, 0, '%s lets loose a sinister laugh.', 16, 0, 100, 0, 0, 0, 0, 11296, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (15491, 2, 0, 'You are certainly not your father, insect. Should it interest me, I would crush you with but a swipe of my claws. Turn Shan\'do Stormrage over to me and your pitiful life will be spared along with the lives of your people.', 14, 0, 100, 0, 0, 0, 0, 11294, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (15491, 3, 0, 'My redemption? You are bold, little one. My redemption comes by the will of my god.', 14, 0, 100, 0, 0, 0, 0, 11297, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (15491, 4, 0, '%s roars furiously.', 16, 0, 100, 0, 0, 0, 0, 11298, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (15491, 5, 0, 'Rise, servants of the Nightmare! Rise and destroy this world! Let there be no survivors...', 14, 0, 100, 0, 0, 0, 0, 11299, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (15491, 6, 0, 'Where is your savior? How long can you hold out against my attacks? ', 14, 0, 100, 0, 0, 0, 0, 11304, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (15491, 7, 0, 'Remulos, look how easy they fall before me? You can stop this, fool. Turn the druid over to me and it will all be over...', 14, 0, 100, 0, 0, 0, 0, 11306, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (15491, 8, 0, 'Defeated my minions? Then face me, mortals!', 14, 0, 100, 0, 0, 0, 0, 11305, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (15491, 9, 0, 'IT BURNS! THE PAIN... SEARING...', 14, 0, 100, 0, 0, 0, 0, 11314, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (15491, 10, 0, 'WHY? Why did this happen to ... to me? Where were you Tyrande? Where were you when I fell from the grace of Elune?', 14, 0, 100, 0, 0, 0, 0, 11315, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (15491, 11, 0, 'I... I feel... I feel the touch of Elune upon my being once more... She smiles upon me... Yes... I...', 14, 0, 100, 0, 0, 0, 0, 11316, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (15491, 12, 0, '%s falls to one knee.', 16, 0, 100, 0, 0, 0, 0, 11319, 0, '');

UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=39864;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=28219;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=28220;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=28221;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=28222;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=28228;
UPDATE `quest_template` SET `ItemDropQuantity1`='0' WHERE  `ID`=28229;
REPLACE INTO `quest_template_addon` (`ID`, `ProvidedItemCount`) VALUES ('63951', '1');
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=28278;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=28279;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=28314;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=28315;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=28316;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=28326;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=28346;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=54135;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=54137;
REPLACE INTO `quest_template_addon` (`ID`, `ProvidedItemCount`) VALUES ('61762', '1');
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=28439;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=28440;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=28446;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=28447;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=28448;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=28449;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=28513;
REPLACE INTO `quest_template_addon` (`ID`, `ProvidedItemCount`) VALUES ('59960', '1');
REPLACE INTO `quest_template_addon` (`ID`, `ProvidedItemCount`) VALUES ('63606', '1');
UPDATE `quest_template` SET `ItemDrop1`='0', `ItemDropQuantity1`='0' WHERE  `ID`=55875;
UPDATE `quest_template` SET `ItemDrop1`='0', `ItemDropQuantity1`='0' WHERE  `ItemDrop1`=168482;
REPLACE INTO `quest_template_addon` (`ID`, `ProvidedItemCount`) VALUES ('62484', '1');
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=51175;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=51428;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=28712;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=29095;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=29015;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=116739;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=115576;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=111805;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=125991;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=119055;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=131432;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=130087;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=182843;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=207606;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=192953;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=225995;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=219663;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=241662;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=253655;
UPDATE `quest_template` SET `RewardFactionOverride2`='0' WHERE  `RewardFactionId2`=0;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=271110;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=81040;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=237602;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=210798;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=214956;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=210796;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=271112;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=282105;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=243675;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=199302;
UPDATE `quest_template` SET `ItemDropQuantity2`='0' WHERE  `ItemDrop2`=0;
UPDATE `quest_template` SET `ItemDropQuantity1`='0' WHERE  `ItemDrop1`=0;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=87477;
UPDATE `quest_template` SET `ItemDropQuantity3`='0' WHERE  `ItemDrop3`=0;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=113342 ;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=103634 ;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=113625 ;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=110227 ;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=182448 ;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=158091 ;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=190132 ;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=210799 ;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=210800 ;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=267118 ;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=245540 ;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=267697 ;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=272527 ;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=271180 ;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=271586 ;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10485 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10390 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8541 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8523 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=4476 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=4475 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=4474 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1847 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1804 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1802 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1801 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1800 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1796 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1795 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1794 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1793 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1791 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1789 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1787 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1785 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1784 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1783 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=16383 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=12262 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10816 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10801 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10678 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=14861 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=11121 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10901 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=11082 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=14695 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=11622 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=17878 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=16380 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=16379 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=16299 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=16298 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=16184 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=16141 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=14697 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=14564 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=14521 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=14520 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=14519 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=14518 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=12263 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=11873 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=11582 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=11551 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=11284 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=11257 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=11078 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=11077 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=11076 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=11075 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10500 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10499 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10498 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10497 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10495 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10491 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10489 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10488 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10487 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10486 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10478 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10477 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10476 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10472 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10471 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10470 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10469 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10464 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10463 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10417 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10416 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10414 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10413 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1788 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1805 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1848 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=4472 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8528 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8529 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8532 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8539 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8542 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8544 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8545 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8546 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8550 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8553 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8558 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10381 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10382 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10394 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10398 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10399 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10400 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10405 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10406 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10407 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10408 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10409 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10412 AND `SourceEntry`=12841 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;

DELETE FROM `creature_equip_template` WHERE (`ID`=2 AND `CreatureID`=34654) OR (`ID`=1 AND `CreatureID` IN (193450,198412,184671,184665,198444,184798,198518,197679,197680,184801,184800,184666,198497));
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(34654, 2, 2202, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- Bountiful Feast Hostess
(193450, 1, 23998, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- Archmage Khadgar
(198412, 1, 34058, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- Mayla Highmountain
(184671, 1, 132171, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- First Arcanist Thalyssra
(184665, 1, 168606, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- Lor'themar Theron
(198444, 1, 5289, 0, 0, 0, 0, 0, 2507, 0, 0, 46702), -- Orgrimmar Grunt
(184798, 1, 94852, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- Chronicler Laz'Kini
(198518, 1, 194522, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- Zindaralash
(197679, 1, 2884, 0, 0, 2884, 0, 0, 0, 0, 0, 46702), -- Shuga Blastcaps
(197680, 1, 168239, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- Jack the Hammer
(184801, 1, 60765, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- Kenzou
(184800, 1, 134779, 0, 0, 134779, 0, 0, 0, 0, 0, 46702), -- Omi
(184666, 1, 34058, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- Mayla Highmountain
(198497, 1, 163530, 0, 0, 0, 0, 0, 0, 0, 0, 46702); -- Nathenaseth


UPDATE `scene_template` SET `Flags`=27, `ScriptPackageID`=3582 WHERE `SceneId`=3003;

DELETE FROM `quest_offer_reward` WHERE `ID` IN (69923 /*-Unknown-*/, 69944 /*-Unknown-*/, 65439 /*-Unknown-*/, 72256 /*-Unknown-*/, 65443 /*-Unknown-*/, 65437 /*-Unknown-*/, 65435 /*-Unknown-*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(69923, 1, 0, 0, 0, 0, 0, 0, 0, 'It is good you thwarted their attack, at least for now.\n\n<Khadgar examines the motes you brought him.>\n\nHmm, primal elemental energy. I will take this for further study.', 46702), -- -Unknown-
(69944, 1, 0, 0, 0, 0, 0, 0, 0, 'These storms are wild, dangerous things. If you wish to confront them, you\'ll want extra protection.\n\nIn my years of hunting, I\'ve gathered many things that helped ward against the wrath of the elements. Perhaps some of them may be of use to you as well.', 46702), -- -Unknown-
(65439, 1, 0, 0, 0, 0, 0, 0, 0, 'Unsettling news indeed, but you had to know of the peril we face.', 46702), -- -Unknown-
(72256, 1, 0, 0, 0, 0, 0, 0, 0, 'I am pleased to have the dracthyr accompanying us on the expedition.\n\nTheir unique perspective should prove valuable, and learning more of their own history will help them come to terms with their current circumstances.\n\nAs I\'ve said before, history heals every wound.', 46702), -- -Unknown-
(65443, 1, 0, 0, 0, 0, 0, 0, 0, 'I believe this expedition shall be a great success.', 46702), -- -Unknown-
(65437, 1, 0, 0, 0, 0, 0, 0, 0, 'o the Dragon Isles beyond the Forbidden Reach. \n\nIts wonders will be as new to you as they will be for the Horde.Aspectral InvitationI am hono', 46702), -- -Unknown-
(65435, 1, 0, 0, 0, 0, 0, 0, 0, 'I am grateful you have answered the call. Your courage will be welcome on the journey ahead.', 46702); -- -Unknown-


DELETE FROM `quest_poi` WHERE (`QuestID`=69925 AND `BlobIndex`=0 AND `Idx1`=14) OR (`QuestID`=69925 AND `BlobIndex`=12 AND `Idx1`=13) OR (`QuestID`=69925 AND `BlobIndex`=11 AND `Idx1`=12) OR (`QuestID`=69925 AND `BlobIndex`=10 AND `Idx1`=11) OR (`QuestID`=69925 AND `BlobIndex`=9 AND `Idx1`=10) OR (`QuestID`=69925 AND `BlobIndex`=8 AND `Idx1`=9) OR (`QuestID`=69925 AND `BlobIndex`=7 AND `Idx1`=8) OR (`QuestID`=69925 AND `BlobIndex`=6 AND `Idx1`=7) OR (`QuestID`=69925 AND `BlobIndex`=5 AND `Idx1`=6) OR (`QuestID`=69925 AND `BlobIndex`=4 AND `Idx1`=5) OR (`QuestID`=69925 AND `BlobIndex`=3 AND `Idx1`=4) OR (`QuestID`=69925 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=69925 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=69925 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=69925 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66586 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=66586 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66586 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66586 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=69923 AND `BlobIndex`=12 AND `Idx1`=13) OR (`QuestID`=69923 AND `BlobIndex`=11 AND `Idx1`=12) OR (`QuestID`=69923 AND `BlobIndex`=10 AND `Idx1`=11) OR (`QuestID`=69923 AND `BlobIndex`=9 AND `Idx1`=10) OR (`QuestID`=69923 AND `BlobIndex`=8 AND `Idx1`=9) OR (`QuestID`=69923 AND `BlobIndex`=7 AND `Idx1`=8) OR (`QuestID`=69923 AND `BlobIndex`=6 AND `Idx1`=7) OR (`QuestID`=69923 AND `BlobIndex`=5 AND `Idx1`=6) OR (`QuestID`=69923 AND `BlobIndex`=4 AND `Idx1`=5) OR (`QuestID`=69923 AND `BlobIndex`=3 AND `Idx1`=4) OR (`QuestID`=69923 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=69923 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=69923 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=69923 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=69944 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=69944 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65439 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65439 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65439 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65443 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=65443 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65443 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65443 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65443 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=72256 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=72256 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=72256 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65437 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65437 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65437 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65435 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65435 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(69925, 0, 14, 32, 0, 0, 1, 1, 0, 2, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(69925, 12, 13, 0, 429459, 192493, 1, 78, 0, 2, 0, 100406, 0, 0, 0, 46702), -- -Unknown-
(69925, 11, 12, 0, 429459, 192493, 0, 18, 0, 2, 0, 100405, 0, 0, 0, 46702), -- -Unknown-
(69925, 10, 11, 0, 429459, 192493, 0, 15, 0, 2, 0, 100403, 0, 0, 0, 46702), -- -Unknown-
(69925, 9, 10, 0, 429459, 192493, 0, 15, 0, 2, 0, 100403, 0, 0, 0, 46702), -- -Unknown-
(69925, 8, 9, 0, 429459, 192493, 0, 15, 0, 2, 0, 100403, 0, 0, 0, 46702), -- -Unknown-
(69925, 7, 8, 0, 429459, 192493, 0, 15, 0, 2, 0, 100403, 0, 0, 0, 46702), -- -Unknown-
(69925, 6, 7, 0, 429459, 192493, 1, 78, 0, 2, 0, 100406, 0, 0, 0, 46702), -- -Unknown-
(69925, 5, 6, 0, 429459, 192493, 1, 78, 0, 2, 0, 100406, 0, 0, 0, 46702), -- -Unknown-
(69925, 4, 5, 0, 429459, 192493, 1, 78, 0, 2, 0, 100406, 0, 0, 0, 46702), -- -Unknown-
(69925, 3, 4, 0, 429459, 192493, 1, 10, 0, 2, 0, 100404, 0, 0, 0, 46702), -- -Unknown-
(69925, 2, 3, 0, 429459, 192493, 1, 10, 0, 2, 0, 100404, 0, 0, 0, 46702), -- -Unknown-
(69925, 1, 2, 0, 429459, 192493, 1, 10, 0, 2, 0, 100404, 0, 0, 0, 46702), -- -Unknown-
(69925, 0, 1, 0, 429459, 192493, 1, 10, 0, 2, 0, 100404, 0, 0, 0, 46702), -- -Unknown-
(69925, 0, 0, -1, 0, 0, 1, 1, 0, 2, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(66586, 0, 3, 32, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2246651, 0, 46702), -- -Unknown-
(66586, 0, 2, 1, 429471, 136298, 2451, 2072, 0, 2, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(66586, 0, 1, 0, 429595, 193761, 2451, 2072, 0, 2, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(66586, 0, 0, -1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2246651, 0, 46702), -- -Unknown-
(69923, 12, 13, 0, 429456, 192493, 0, 18, 0, 2, 0, 100405, 0, 0, 0, 46702), -- -Unknown-
(69923, 11, 12, 0, 429456, 192493, 1, 78, 0, 2, 0, 100406, 0, 0, 0, 46702), -- -Unknown-
(69923, 10, 11, 0, 429456, 192493, 1, 78, 0, 2, 0, 100406, 0, 0, 0, 46702), -- -Unknown-
(69923, 9, 10, 0, 429456, 192493, 1, 78, 0, 2, 0, 100406, 0, 0, 0, 46702), -- -Unknown-
(69923, 8, 9, 0, 429456, 192493, 1, 78, 0, 2, 0, 100406, 0, 0, 0, 46702), -- -Unknown-
(69923, 7, 8, 0, 429456, 192493, 1, 10, 0, 2, 0, 100404, 0, 0, 0, 46702), -- -Unknown-
(69923, 6, 7, 0, 429456, 192493, 1, 10, 0, 2, 0, 100404, 0, 0, 0, 46702), -- -Unknown-
(69923, 5, 6, 0, 429456, 192493, 1, 10, 0, 2, 0, 100404, 0, 0, 0, 46702), -- -Unknown-
(69923, 4, 5, 0, 429456, 192493, 1, 10, 0, 2, 0, 100404, 0, 0, 0, 46702), -- -Unknown-
(69923, 3, 4, 0, 429456, 192493, 0, 15, 0, 2, 0, 100403, 0, 0, 0, 46702), -- -Unknown-
(69923, 2, 3, 0, 429456, 192493, 0, 15, 0, 2, 0, 100403, 0, 0, 0, 46702), -- -Unknown-
(69923, 1, 2, 0, 429456, 192493, 0, 15, 0, 2, 0, 100403, 0, 0, 0, 46702), -- -Unknown-
(69923, 0, 1, 0, 429456, 192493, 0, 15, 0, 2, 0, 100403, 0, 0, 0, 46702), -- -Unknown-
(69923, 0, 0, -1, 0, 0, 1, 1, 0, 2, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(69944, 0, 1, 32, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2159075, 0, 46702), -- -Unknown-
(69944, 0, 0, -1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2258486, 0, 46702), -- -Unknown-
(65439, 0, 2, 32, 0, 0, 1, 1, 0, 2, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(65439, 0, 1, 0, 429443, 193469, 1, 1, 0, 2, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(65439, 0, 0, -1, 0, 0, 1, 1, 0, 2, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(65443, 0, 4, 32, 0, 0, 1, 85, 0, 0, 0, 0, 0, 2212373, 0, 46702), -- -Unknown-
(65443, 0, 3, 2, 422987, 184780, 1, 85, 0, 2, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(65443, 0, 2, 1, 422989, 184782, 1, 85, 0, 2, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(65443, 0, 1, 0, 422988, 184781, 1, 85, 0, 2, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(65443, 0, 0, -1, 0, 0, 1, 1, 0, 2, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(72256, 0, 2, 32, 0, 0, 1, 85, 0, 0, 0, 0, 0, 2159068, 0, 46702), -- -Unknown-
(72256, 0, 1, 0, 431829, 198440, 1, 85, 0, 0, 0, 0, 0, 2287429, 0, 46702), -- -Unknown-
(72256, 0, 0, -1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2159075, 0, 46702), -- -Unknown-
(65437, 0, 2, 32, 0, 0, 1, 85, 0, 2, 0, 0, 0, 2158408, 0, 46702), -- -Unknown-
(65437, 0, 1, 0, 422958, 184790, 1, 85, 0, 2, 0, 0, 0, 2158408, 0, 46702), -- -Unknown-
(65437, 0, 0, -1, 0, 0, 1, 85, 0, 2, 0, 0, 0, 2158408, 0, 46702), -- -Unknown-
(65435, 0, 1, 32, 0, 0, 1, 85, 0, 0, 0, 0, 0, 2158408, 0, 46702), -- -Unknown-
(65435, 0, 0, -1, 0, 0, 1, 85, 0, 0, 0, 0, 0, 2158408, 0, 46702); -- -Unknown-

UPDATE `quest_poi` SET `VerifiedBuild`=46702 WHERE (`QuestID`=50562 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50603 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50602 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=69925 AND `Idx1`=14 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66586 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=66586 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66586 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66586 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=69923 AND `Idx1`=13 AND `Idx2`=11) OR (`QuestID`=69923 AND `Idx1`=13 AND `Idx2`=10) OR (`QuestID`=69923 AND `Idx1`=13 AND `Idx2`=9) OR (`QuestID`=69923 AND `Idx1`=13 AND `Idx2`=8) OR (`QuestID`=69923 AND `Idx1`=13 AND `Idx2`=7) OR (`QuestID`=69923 AND `Idx1`=13 AND `Idx2`=6) OR (`QuestID`=69923 AND `Idx1`=13 AND `Idx2`=5) OR (`QuestID`=69923 AND `Idx1`=13 AND `Idx2`=4) OR (`QuestID`=69923 AND `Idx1`=13 AND `Idx2`=3) OR (`QuestID`=69923 AND `Idx1`=13 AND `Idx2`=2) OR (`QuestID`=69923 AND `Idx1`=13 AND `Idx2`=1) OR (`QuestID`=69923 AND `Idx1`=13 AND `Idx2`=0) OR (`QuestID`=69923 AND `Idx1`=12 AND `Idx2`=11) OR (`QuestID`=69923 AND `Idx1`=12 AND `Idx2`=10) OR (`QuestID`=69923 AND `Idx1`=12 AND `Idx2`=9) OR (`QuestID`=69923 AND `Idx1`=12 AND `Idx2`=8) OR (`QuestID`=69923 AND `Idx1`=12 AND `Idx2`=7) OR (`QuestID`=69923 AND `Idx1`=12 AND `Idx2`=6) OR (`QuestID`=69923 AND `Idx1`=12 AND `Idx2`=5) OR (`QuestID`=69923 AND `Idx1`=12 AND `Idx2`=4) OR (`QuestID`=69923 AND `Idx1`=12 AND `Idx2`=3) OR (`QuestID`=69923 AND `Idx1`=12 AND `Idx2`=2) OR (`QuestID`=69923 AND `Idx1`=12 AND `Idx2`=1) OR (`QuestID`=69923 AND `Idx1`=12 AND `Idx2`=0) OR (`QuestID`=69923 AND `Idx1`=11 AND `Idx2`=11) OR (`QuestID`=69923 AND `Idx1`=11 AND `Idx2`=10) OR (`QuestID`=69923 AND `Idx1`=11 AND `Idx2`=9) OR (`QuestID`=69923 AND `Idx1`=11 AND `Idx2`=8) OR (`QuestID`=69923 AND `Idx1`=11 AND `Idx2`=7) OR (`QuestID`=69923 AND `Idx1`=11 AND `Idx2`=6) OR (`QuestID`=69923 AND `Idx1`=11 AND `Idx2`=5) OR (`QuestID`=69923 AND `Idx1`=11 AND `Idx2`=4) OR (`QuestID`=69923 AND `Idx1`=11 AND `Idx2`=3) OR (`QuestID`=69923 AND `Idx1`=11 AND `Idx2`=2) OR (`QuestID`=69923 AND `Idx1`=11 AND `Idx2`=1) OR (`QuestID`=69923 AND `Idx1`=11 AND `Idx2`=0) OR (`QuestID`=69923 AND `Idx1`=10 AND `Idx2`=11) OR (`QuestID`=69923 AND `Idx1`=10 AND `Idx2`=10) OR (`QuestID`=69923 AND `Idx1`=10 AND `Idx2`=9) OR (`QuestID`=69923 AND `Idx1`=10 AND `Idx2`=8) OR (`QuestID`=69923 AND `Idx1`=10 AND `Idx2`=7) OR (`QuestID`=69923 AND `Idx1`=10 AND `Idx2`=6) OR (`QuestID`=69923 AND `Idx1`=10 AND `Idx2`=5) OR (`QuestID`=69923 AND `Idx1`=10 AND `Idx2`=4) OR (`QuestID`=69923 AND `Idx1`=10 AND `Idx2`=3) OR (`QuestID`=69923 AND `Idx1`=10 AND `Idx2`=2) OR (`QuestID`=69923 AND `Idx1`=10 AND `Idx2`=1) OR (`QuestID`=69923 AND `Idx1`=10 AND `Idx2`=0) OR (`QuestID`=69923 AND `Idx1`=9 AND `Idx2`=11) OR (`QuestID`=69923 AND `Idx1`=9 AND `Idx2`=10) OR (`QuestID`=69923 AND `Idx1`=9 AND `Idx2`=9) OR (`QuestID`=69923 AND `Idx1`=9 AND `Idx2`=8) OR (`QuestID`=69923 AND `Idx1`=9 AND `Idx2`=7) OR (`QuestID`=69923 AND `Idx1`=9 AND `Idx2`=6) OR (`QuestID`=69923 AND `Idx1`=9 AND `Idx2`=5) OR (`QuestID`=69923 AND `Idx1`=9 AND `Idx2`=4) OR (`QuestID`=69923 AND `Idx1`=9 AND `Idx2`=3) OR (`QuestID`=69923 AND `Idx1`=9 AND `Idx2`=2) OR (`QuestID`=69923 AND `Idx1`=9 AND `Idx2`=1) OR (`QuestID`=69923 AND `Idx1`=9 AND `Idx2`=0) OR (`QuestID`=69923 AND `Idx1`=8 AND `Idx2`=11) OR (`QuestID`=69923 AND `Idx1`=8 AND `Idx2`=10) OR (`QuestID`=69923 AND `Idx1`=8 AND `Idx2`=9) OR (`QuestID`=69923 AND `Idx1`=8 AND `Idx2`=8) OR (`QuestID`=69923 AND `Idx1`=8 AND `Idx2`=7) OR (`QuestID`=69923 AND `Idx1`=8 AND `Idx2`=6) OR (`QuestID`=69923 AND `Idx1`=8 AND `Idx2`=5) OR (`QuestID`=69923 AND `Idx1`=8 AND `Idx2`=4) OR (`QuestID`=69923 AND `Idx1`=8 AND `Idx2`=3) OR (`QuestID`=69923 AND `Idx1`=8 AND `Idx2`=2) OR (`QuestID`=69923 AND `Idx1`=8 AND `Idx2`=1) OR (`QuestID`=69923 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=69923 AND `Idx1`=7 AND `Idx2`=11) OR (`QuestID`=69923 AND `Idx1`=7 AND `Idx2`=10) OR (`QuestID`=69923 AND `Idx1`=7 AND `Idx2`=9) OR (`QuestID`=69923 AND `Idx1`=7 AND `Idx2`=8) OR (`QuestID`=69923 AND `Idx1`=7 AND `Idx2`=7) OR (`QuestID`=69923 AND `Idx1`=7 AND `Idx2`=6) OR (`QuestID`=69923 AND `Idx1`=7 AND `Idx2`=5) OR (`QuestID`=69923 AND `Idx1`=7 AND `Idx2`=4) OR (`QuestID`=69923 AND `Idx1`=7 AND `Idx2`=3) OR (`QuestID`=69923 AND `Idx1`=7 AND `Idx2`=2) OR (`QuestID`=69923 AND `Idx1`=7 AND `Idx2`=1) OR (`QuestID`=69923 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=69923 AND `Idx1`=6 AND `Idx2`=11) OR (`QuestID`=69923 AND `Idx1`=6 AND `Idx2`=10) OR (`QuestID`=69923 AND `Idx1`=6 AND `Idx2`=9) OR (`QuestID`=69923 AND `Idx1`=6 AND `Idx2`=8) OR (`QuestID`=69923 AND `Idx1`=6 AND `Idx2`=7) OR (`QuestID`=69923 AND `Idx1`=6 AND `Idx2`=6) OR (`QuestID`=69923 AND `Idx1`=6 AND `Idx2`=5) OR (`QuestID`=69923 AND `Idx1`=6 AND `Idx2`=4) OR (`QuestID`=69923 AND `Idx1`=6 AND `Idx2`=3) OR (`QuestID`=69923 AND `Idx1`=6 AND `Idx2`=2) OR (`QuestID`=69923 AND `Idx1`=6 AND `Idx2`=1) OR (`QuestID`=69923 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=69923 AND `Idx1`=5 AND `Idx2`=11) OR (`QuestID`=69923 AND `Idx1`=5 AND `Idx2`=10) OR (`QuestID`=69923 AND `Idx1`=5 AND `Idx2`=9) OR (`QuestID`=69923 AND `Idx1`=5 AND `Idx2`=8) OR (`QuestID`=69923 AND `Idx1`=5 AND `Idx2`=7) OR (`QuestID`=69923 AND `Idx1`=5 AND `Idx2`=6) OR (`QuestID`=69923 AND `Idx1`=5 AND `Idx2`=5) OR (`QuestID`=69923 AND `Idx1`=5 AND `Idx2`=4) OR (`QuestID`=69923 AND `Idx1`=5 AND `Idx2`=3) OR (`QuestID`=69923 AND `Idx1`=5 AND `Idx2`=2) OR (`QuestID`=69923 AND `Idx1`=5 AND `Idx2`=1) OR (`QuestID`=69923 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=69923 AND `Idx1`=4 AND `Idx2`=11) OR (`QuestID`=69923 AND `Idx1`=4 AND `Idx2`=10) OR (`QuestID`=69923 AND `Idx1`=4 AND `Idx2`=9) OR (`QuestID`=69923 AND `Idx1`=4 AND `Idx2`=8) OR (`QuestID`=69923 AND `Idx1`=4 AND `Idx2`=7) OR (`QuestID`=69923 AND `Idx1`=4 AND `Idx2`=6) OR (`QuestID`=69923 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=69923 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=69923 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=69923 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=69923 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=69923 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=69923 AND `Idx1`=3 AND `Idx2`=11) OR (`QuestID`=69923 AND `Idx1`=3 AND `Idx2`=10) OR (`QuestID`=69923 AND `Idx1`=3 AND `Idx2`=9) OR (`QuestID`=69923 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=69923 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=69923 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=69923 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=69923 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=69923 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=69923 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=69923 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=69923 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=69923 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=69923 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=69923 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=69923 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=69923 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=69923 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=69923 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=69923 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=69923 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=69923 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=69923 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=69923 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=69923 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=69923 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=69923 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=69923 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=69923 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=69923 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=69923 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=69923 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=69923 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=69923 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=69923 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=69923 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=69923 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=69944 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=69944 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65439 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65439 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65439 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65443 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=65443 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65443 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65443 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65443 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=72256 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=72256 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=72256 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65437 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65437 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65437 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65435 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65435 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(69925, 14, 0, 1358, -4919, 0, 46702), -- -Unknown-
(69925, 13, 11, -7393, -2096, 0, 46702), -- -Unknown-
(69925, 13, 10, -7461, -2053, 0, 46702), -- -Unknown-
(69925, 13, 9, -7498, -1997, 0, 46702), -- -Unknown-
(69925, 13, 8, -7513, -1916, 0, 46702), -- -Unknown-
(69925, 13, 7, -7484, -1875, 0, 46702), -- -Unknown-
(69925, 13, 6, -7403, -1844, 0, 46702), -- -Unknown-
(69925, 13, 5, -7350, -1872, 0, 46702), -- -Unknown-
(69925, 13, 4, -7314, -1896, 0, 46702), -- -Unknown-
(69925, 13, 3, -7283, -1939, 0, 46702), -- -Unknown-
(69925, 13, 2, -7279, -1969, 0, 46702), -- -Unknown-
(69925, 13, 1, -7287, -2014, 0, 46702), -- -Unknown-
(69925, 13, 0, -7314, -2057, 0, 46702), -- -Unknown-
(69925, 12, 11, 2210, -1045, 0, 46702), -- -Unknown-
(69925, 12, 10, 1826, -492, 0, 46702), -- -Unknown-
(69925, 12, 9, 1928, 49, 0, 46702), -- -Unknown-
(69925, 12, 8, 2099, 411, 0, 46702), -- -Unknown-
(69925, 12, 7, 2526, 741, 0, 46702), -- -Unknown-
(69925, 12, 6, 3030, 708, 0, 46702), -- -Unknown-
(69925, 12, 5, 3167, 440, 0, 46702), -- -Unknown-
(69925, 12, 4, 3178, 13, 0, 46702), -- -Unknown-
(69925, 12, 3, 3109, -322, 0, 46702), -- -Unknown-
(69925, 12, 2, 2950, -684, 0, 46702), -- -Unknown-
(69925, 12, 1, 2747, -1014, 0, 46702), -- -Unknown-
(69925, 12, 0, 2475, -1151, 0, 46702), -- -Unknown-
(69925, 11, 11, -6789, -4128, 0, 46702), -- -Unknown-
(69925, 11, 10, -6816, -4118, 0, 46702), -- -Unknown-
(69925, 11, 9, -6852, -4075, 0, 46702), -- -Unknown-
(69925, 11, 8, -6856, -4037, 0, 46702), -- -Unknown-
(69925, 11, 7, -6852, -3986, 0, 46702), -- -Unknown-
(69925, 11, 6, -6817, -3959, 0, 46702), -- -Unknown-
(69925, 11, 5, -6782, -3967, 0, 46702), -- -Unknown-
(69925, 11, 4, -6726, -4003, 0, 46702), -- -Unknown-
(69925, 11, 3, -6713, -4040, 0, 46702), -- -Unknown-
(69925, 11, 2, -6717, -4072, 0, 46702), -- -Unknown-
(69925, 11, 1, -6737, -4107, 0, 46702), -- -Unknown-
(69925, 11, 0, -6756, -4125, 0, 46702), -- -Unknown-
(69925, 10, 11, -7088, -3648, 0, 46702), -- -Unknown-
(69925, 10, 10, -7119, -3610, 0, 46702), -- -Unknown-
(69925, 10, 9, -7117, -3583, 0, 46702), -- -Unknown-
(69925, 10, 8, -7114, -3557, 0, 46702), -- -Unknown-
(69925, 10, 7, -7095, -3530, 0, 46702), -- -Unknown-
(69925, 10, 6, -7064, -3520, 0, 46702), -- -Unknown-
(69925, 10, 5, -7026, -3528, 0, 46702), -- -Unknown-
(69925, 10, 4, -6998, -3554, 0, 46702), -- -Unknown-
(69925, 10, 3, -6999, -3584, 0, 46702), -- -Unknown-
(69925, 10, 2, -7007, -3614, 0, 46702), -- -Unknown-
(69925, 10, 1, -7016, -3633, 0, 46702), -- -Unknown-
(69925, 10, 0, -7042, -3656, 0, 46702), -- -Unknown-
(69925, 9, 11, -6731, -3027, 0, 46702), -- -Unknown-
(69925, 9, 10, -6767, -2984, 0, 46702), -- -Unknown-
(69925, 9, 9, -6791, -2946, 0, 46702), -- -Unknown-
(69925, 9, 8, -6792, -2889, 0, 46702), -- -Unknown-
(69925, 9, 7, -6772, -2833, 0, 46702), -- -Unknown-
(69925, 9, 6, -6713, -2801, 0, 46702), -- -Unknown-
(69925, 9, 5, -6656, -2814, 0, 46702), -- -Unknown-
(69925, 9, 4, -6622, -2859, 0, 46702), -- -Unknown-
(69925, 9, 3, -6605, -2924, 0, 46702), -- -Unknown-
(69925, 9, 2, -6612, -2971, 0, 46702), -- -Unknown-
(69925, 9, 1, -6638, -3008, 0, 46702), -- -Unknown-
(69925, 9, 0, -6685, -3028, 0, 46702), -- -Unknown-
(69925, 8, 11, -7095, -2445, 0, 46702), -- -Unknown-
(69925, 8, 10, -7107, -2420, 0, 46702), -- -Unknown-
(69925, 8, 9, -7111, -2385, 0, 46702), -- -Unknown-
(69925, 8, 8, -7104, -2327, 0, 46702), -- -Unknown-
(69925, 8, 7, -7060, -2298, 0, 46702), -- -Unknown-
(69925, 8, 6, -7032, -2306, 0, 46702), -- -Unknown-
(69925, 8, 5, -7009, -2332, 0, 46702), -- -Unknown-
(69925, 8, 4, -6997, -2356, 0, 46702), -- -Unknown-
(69925, 8, 3, -6985, -2389, 0, 46702), -- -Unknown-
(69925, 8, 2, -6985, -2440, 0, 46702), -- -Unknown-
(69925, 8, 1, -7015, -2473, 0, 46702), -- -Unknown-
(69925, 8, 0, -7054, -2486, 0, 46702), -- -Unknown-
(69925, 7, 11, -6767, -1332, 0, 46702), -- -Unknown-
(69925, 7, 10, -6801, -1257, 0, 46702), -- -Unknown-
(69925, 7, 9, -6781, -1205, 0, 46702), -- -Unknown-
(69925, 7, 8, -6741, -1177, 0, 46702), -- -Unknown-
(69925, 7, 7, -6688, -1172, 0, 46702), -- -Unknown-
(69925, 7, 6, -6653, -1185, 0, 46702), -- -Unknown-
(69925, 7, 5, -6621, -1207, 0, 46702), -- -Unknown-
(69925, 7, 4, -6594, -1224, 0, 46702), -- -Unknown-
(69925, 7, 3, -6591, -1286, 0, 46702), -- -Unknown-
(69925, 7, 2, -6602, -1329, 0, 46702), -- -Unknown-
(69925, 7, 1, -6633, -1370, 0, 46702), -- -Unknown-
(69925, 7, 0, -6716, -1368, 0, 46702), -- -Unknown-
(69925, 6, 11, -6945, -762, 0, 46702), -- -Unknown-
(69925, 6, 10, -6964, -691, 0, 46702), -- -Unknown-
(69925, 6, 9, -6966, -641, 0, 46702), -- -Unknown-
(69925, 6, 8, -6943, -591, 0, 46702), -- -Unknown-
(69925, 6, 7, -6892, -562, 0, 46702), -- -Unknown-
(69925, 6, 6, -6832, -548, 0, 46702), -- -Unknown-
(69925, 6, 5, -6798, -574, 0, 46702), -- -Unknown-
(69925, 6, 4, -6792, -653, 0, 46702), -- -Unknown-
(69925, 6, 3, -6792, -691, 0, 46702), -- -Unknown-
(69925, 6, 2, -6805, -733, 0, 46702), -- -Unknown-
(69925, 6, 1, -6845, -773, 0, 46702), -- -Unknown-
(69925, 6, 0, -6911, -791, 0, 46702), -- -Unknown-
(69925, 5, 11, -7922, -1055, 0, 46702), -- -Unknown-
(69925, 5, 10, -7928, -992, 0, 46702), -- -Unknown-
(69925, 5, 9, -7928, -939, 0, 46702), -- -Unknown-
(69925, 5, 8, -7920, -910, 0, 46702), -- -Unknown-
(69925, 5, 7, -7886, -868, 0, 46702), -- -Unknown-
(69925, 5, 6, -7820, -868, 0, 46702), -- -Unknown-
(69925, 5, 5, -7777, -902, 0, 46702), -- -Unknown-
(69925, 5, 4, -7748, -967, 0, 46702), -- -Unknown-
(69925, 5, 3, -7760, -1028, 0, 46702), -- -Unknown-
(69925, 5, 2, -7809, -1075, 0, 46702), -- -Unknown-
(69925, 5, 1, -7858, -1079, 0, 46702), -- -Unknown-
(69925, 5, 0, -7898, -1079, 0, 46702), -- -Unknown-
(69925, 4, 11, 615, -1509, 0, 46702), -- -Unknown-
(69925, 4, 10, 563, -1451, 0, 46702), -- -Unknown-
(69925, 4, 9, 545, -1352, 0, 46702), -- -Unknown-
(69925, 4, 8, 546, -1275, 0, 46702), -- -Unknown-
(69925, 4, 7, 558, -1235, 0, 46702), -- -Unknown-
(69925, 4, 6, 572, -1194, 0, 46702), -- -Unknown-
(69925, 4, 5, 634, -1185, 0, 46702), -- -Unknown-
(69925, 4, 4, 705, -1193, 0, 46702), -- -Unknown-
(69925, 4, 3, 753, -1248, 0, 46702), -- -Unknown-
(69925, 4, 2, 783, -1327, 0, 46702), -- -Unknown-
(69925, 4, 1, 757, -1444, 0, 46702), -- -Unknown-
(69925, 4, 0, 712, -1509, 0, 46702), -- -Unknown-
(69925, 3, 11, -228, -3065, 0, 46702), -- -Unknown-
(69925, 3, 10, -269, -2999, 0, 46702), -- -Unknown-
(69925, 3, 9, -287, -2940, 0, 46702), -- -Unknown-
(69925, 3, 8, -259, -2867, 0, 46702), -- -Unknown-
(69925, 3, 7, -238, -2813, 0, 46702), -- -Unknown-
(69925, 3, 6, -207, -2787, 0, 46702), -- -Unknown-
(69925, 3, 5, -152, -2773, 0, 46702), -- -Unknown-
(69925, 3, 4, -74, -2787, 0, 46702), -- -Unknown-
(69925, 3, 3, -42, -2858, 0, 46702), -- -Unknown-
(69925, 3, 2, -43, -2932, 0, 46702), -- -Unknown-
(69925, 3, 1, -44, -3023, 0, 46702), -- -Unknown-
(69925, 3, 0, -102, -3080, 0, 46702), -- -Unknown-
(69925, 2, 11, 202, -1958, 0, 46702), -- -Unknown-
(69925, 2, 10, 162, -1907, 0, 46702), -- -Unknown-
(69925, 2, 9, 148, -1847, 0, 46702), -- -Unknown-
(69925, 2, 8, 153, -1796, 0, 46702), -- -Unknown-
(69925, 2, 7, 193, -1730, 0, 46702), -- -Unknown-
(69925, 2, 6, 250, -1693, 0, 46702), -- -Unknown-
(69925, 2, 5, 362, -1693, 0, 46702), -- -Unknown-
(69925, 2, 4, 393, -1735, 0, 46702), -- -Unknown-
(69925, 2, 3, 387, -1840, 0, 46702), -- -Unknown-
(69925, 2, 2, 356, -1935, 0, 46702), -- -Unknown-
(69925, 2, 1, 313, -1964, 0, 46702), -- -Unknown-
(69925, 2, 0, 250, -1984, 0, 46702), -- -Unknown-
(69925, 1, 11, -1154, -2982, 0, 46702), -- -Unknown-
(69925, 1, 10, -1212, -2946, 0, 46702), -- -Unknown-
(69925, 1, 9, -1251, -2898, 0, 46702), -- -Unknown-
(69925, 1, 8, -1255, -2793, 0, 46702), -- -Unknown-
(69925, 1, 7, -1217, -2727, 0, 46702), -- -Unknown-
(69925, 1, 6, -1147, -2702, 0, 46702), -- -Unknown-
(69925, 1, 5, -1059, -2694, 0, 46702), -- -Unknown-
(69925, 1, 4, -973, -2746, 0, 46702), -- -Unknown-
(69925, 1, 3, -959, -2811, 0, 46702), -- -Unknown-
(69925, 1, 2, -971, -2895, 0, 46702), -- -Unknown-
(69925, 1, 1, -1014, -2952, 0, 46702), -- -Unknown-
(69925, 1, 0, -1075, -2993, 0, 46702), -- -Unknown-
(69925, 0, 0, 1362, -4911, 0, 46702), -- -Unknown-
(66586, 3, 0, 1358, -4915, 62, 46702), -- -Unknown-
(66586, 2, 0, 592, -633, 0, 46702), -- -Unknown-
(66586, 1, 0, 423, -767, 0, 46702), -- -Unknown-
(66586, 0, 0, 1358, -4915, 62, 46702), -- -Unknown-
(69923, 13, 11, 2385, -984, 0, 46702), -- -Unknown-
(69923, 13, 10, 1957, -757, 0, 46702), -- -Unknown-
(69923, 13, 9, 1746, -372, 0, 46702), -- -Unknown-
(69923, 13, 8, 1751, 57, 0, 46702), -- -Unknown-
(69923, 13, 7, 1849, 353, 0, 46702), -- -Unknown-
(69923, 13, 6, 2004, 598, 0, 46702), -- -Unknown-
(69923, 13, 5, 2283, 744, 0, 46702), -- -Unknown-
(69923, 13, 4, 2674, 748, 0, 46702), -- -Unknown-
(69923, 13, 3, 2990, 552, 0, 46702), -- -Unknown-
(69923, 13, 2, 3037, 245, 0, 46702), -- -Unknown-
(69923, 13, 1, 3000, -314, 0, 46702), -- -Unknown-
(69923, 13, 0, 2725, -909, 0, 46702), -- -Unknown-
(69923, 12, 11, -6721, -1327, 0, 46702), -- -Unknown-
(69923, 12, 10, -6726, -1278, 0, 46702), -- -Unknown-
(69923, 12, 9, -6724, -1221, 0, 46702), -- -Unknown-
(69923, 12, 8, -6714, -1187, 0, 46702), -- -Unknown-
(69923, 12, 7, -6679, -1162, 0, 46702), -- -Unknown-
(69923, 12, 6, -6657, -1162, 0, 46702), -- -Unknown-
(69923, 12, 5, -6615, -1179, 0, 46702), -- -Unknown-
(69923, 12, 4, -6574, -1211, 0, 46702), -- -Unknown-
(69923, 12, 3, -6569, -1270, 0, 46702), -- -Unknown-
(69923, 12, 2, -6569, -1310, 0, 46702), -- -Unknown-
(69923, 12, 1, -6620, -1334, 0, 46702), -- -Unknown-
(69923, 12, 0, -6665, -1334, 0, 46702), -- -Unknown-
(69923, 11, 11, -6920, -813, 0, 46702), -- -Unknown-
(69923, 11, 10, -6955, -796, 0, 46702), -- -Unknown-
(69923, 11, 9, -6960, -749, 0, 46702), -- -Unknown-
(69923, 11, 8, -6960, -699, 0, 46702), -- -Unknown-
(69923, 11, 7, -6957, -660, 0, 46702), -- -Unknown-
(69923, 11, 6, -6920, -638, 0, 46702), -- -Unknown-
(69923, 11, 5, -6861, -653, 0, 46702), -- -Unknown-
(69923, 11, 4, -6797, -690, 0, 46702), -- -Unknown-
(69923, 11, 3, -6788, -719, 0, 46702), -- -Unknown-
(69923, 11, 2, -6788, -773, 0, 46702), -- -Unknown-
(69923, 11, 1, -6824, -820, 0, 46702), -- -Unknown-
(69923, 11, 0, -6859, -820, 0, 46702), -- -Unknown-
(69923, 10, 11, -7810, -1120, 0, 46702), -- -Unknown-
(69923, 10, 10, -7860, -1097, 0, 46702), -- -Unknown-
(69923, 10, 9, -7919, -1054, 0, 46702), -- -Unknown-
(69923, 10, 8, -7924, -1000, 0, 46702), -- -Unknown-
(69923, 10, 7, -7921, -928, 0, 46702), -- -Unknown-
(69923, 10, 6, -7894, -877, 0, 46702), -- -Unknown-
(69923, 10, 5, -7845, -864, 0, 46702), -- -Unknown-
(69923, 10, 4, -7764, -889, 0, 46702), -- -Unknown-
(69923, 10, 3, -7717, -943, 0, 46702), -- -Unknown-
(69923, 10, 2, -7710, -1010, 0, 46702), -- -Unknown-
(69923, 10, 1, -7724, -1063, 0, 46702), -- -Unknown-
(69923, 10, 0, -7769, -1113, 0, 46702), -- -Unknown-
(69923, 9, 11, -7336, -2141, 0, 46702), -- -Unknown-
(69923, 9, 10, -7392, -2109, 0, 46702), -- -Unknown-
(69923, 9, 9, -7447, -2074, 0, 46702), -- -Unknown-
(69923, 9, 8, -7447, -2020, 0, 46702), -- -Unknown-
(69923, 9, 7, -7437, -1963, 0, 46702), -- -Unknown-
(69923, 9, 6, -7429, -1926, 0, 46702), -- -Unknown-
(69923, 9, 5, -7397, -1897, 0, 46702), -- -Unknown-
(69923, 9, 4, -7324, -1914, 0, 46702), -- -Unknown-
(69923, 9, 3, -7287, -1946, 0, 46702), -- -Unknown-
(69923, 9, 2, -7257, -2015, 0, 46702), -- -Unknown-
(69923, 9, 1, -7265, -2055, 0, 46702), -- -Unknown-
(69923, 9, 0, -7277, -2099, 0, 46702), -- -Unknown-
(69923, 8, 11, 666, -1540, 0, 46702), -- -Unknown-
(69923, 8, 10, 624, -1512, 0, 46702), -- -Unknown-
(69923, 8, 9, 577, -1456, 0, 46702), -- -Unknown-
(69923, 8, 8, 570, -1377, 0, 46702), -- -Unknown-
(69923, 8, 7, 602, -1305, 0, 46702), -- -Unknown-
(69923, 8, 6, 636, -1259, 0, 46702), -- -Unknown-
(69923, 8, 5, 678, -1220, 0, 46702), -- -Unknown-
(69923, 8, 4, 741, -1241, 0, 46702), -- -Unknown-
(69923, 8, 3, 785, -1336, 0, 46702), -- -Unknown-
(69923, 8, 2, 797, -1415, 0, 46702), -- -Unknown-
(69923, 8, 1, 778, -1470, 0, 46702), -- -Unknown-
(69923, 8, 0, 721, -1530, 0, 46702), -- -Unknown-
(69923, 7, 11, 226, -1982, 0, 46702), -- -Unknown-
(69923, 7, 10, 191, -1916, 0, 46702), -- -Unknown-
(69923, 7, 9, 177, -1826, 0, 46702), -- -Unknown-
(69923, 7, 8, 179, -1763, 0, 46702), -- -Unknown-
(69923, 7, 7, 221, -1724, 0, 46702), -- -Unknown-
(69923, 7, 6, 282, -1718, 0, 46702), -- -Unknown-
(69923, 7, 5, 321, -1745, 0, 46702), -- -Unknown-
(69923, 7, 4, 357, -1803, 0, 46702), -- -Unknown-
(69923, 7, 3, 382, -1878, 0, 46702), -- -Unknown-
(69923, 7, 2, 377, -1931, 0, 46702), -- -Unknown-
(69923, 7, 1, 357, -1969, 0, 46702), -- -Unknown-
(69923, 7, 0, 299, -1996, 0, 46702), -- -Unknown-
(69923, 6, 11, -144, -3031, 0, 46702), -- -Unknown-
(69923, 6, 10, -186, -2999, 0, 46702), -- -Unknown-
(69923, 6, 9, -230, -2950, 0, 46702), -- -Unknown-
(69923, 6, 8, -215, -2882, 0, 46702); -- -Unknown-

INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(69923, 6, 7, -198, -2831, 0, 46702), -- -Unknown-
(69923, 6, 6, -171, -2802, 0, 46702), -- -Unknown-
(69923, 6, 5, -121, -2814, 0, 46702), -- -Unknown-
(69923, 6, 4, -96, -2840, 0, 46702), -- -Unknown-
(69923, 6, 3, -72, -2889, 0, 46702), -- -Unknown-
(69923, 6, 2, -66, -2956, 0, 46702), -- -Unknown-
(69923, 6, 1, -72, -2999, 0, 46702), -- -Unknown-
(69923, 6, 0, -96, -3020, 0, 46702), -- -Unknown-
(69923, 5, 11, -1112, -3024, 0, 46702), -- -Unknown-
(69923, 5, 10, -1176, -2987, 0, 46702), -- -Unknown-
(69923, 5, 9, -1205, -2938, 0, 46702), -- -Unknown-
(69923, 5, 8, -1200, -2854, 0, 46702), -- -Unknown-
(69923, 5, 7, -1185, -2801, 0, 46702), -- -Unknown-
(69923, 5, 6, -1119, -2745, 0, 46702), -- -Unknown-
(69923, 5, 5, -1066, -2761, 0, 46702), -- -Unknown-
(69923, 5, 4, -1013, -2807, 0, 46702), -- -Unknown-
(69923, 5, 3, -990, -2854, 0, 46702), -- -Unknown-
(69923, 5, 2, -987, -2941, 0, 46702), -- -Unknown-
(69923, 5, 1, -992, -2982, 0, 46702), -- -Unknown-
(69923, 5, 0, -1038, -3034, 0, 46702), -- -Unknown-
(69923, 4, 11, -6856, -4114, 0, 46702), -- -Unknown-
(69923, 4, 10, -6876, -4088, 0, 46702), -- -Unknown-
(69923, 4, 9, -6884, -4070, 0, 46702), -- -Unknown-
(69923, 4, 8, -6888, -4039, 0, 46702), -- -Unknown-
(69923, 4, 7, -6866, -4010, 0, 46702), -- -Unknown-
(69923, 4, 6, -6848, -3997, 0, 46702), -- -Unknown-
(69923, 4, 5, -6806, -3982, 0, 46702), -- -Unknown-
(69923, 4, 4, -6773, -4017, 0, 46702), -- -Unknown-
(69923, 4, 3, -6763, -4039, 0, 46702), -- -Unknown-
(69923, 4, 2, -6766, -4067, 0, 46702), -- -Unknown-
(69923, 4, 1, -6792, -4106, 0, 46702), -- -Unknown-
(69923, 4, 0, -6830, -4116, 0, 46702), -- -Unknown-
(69923, 3, 11, -7086, -3628, 0, 46702), -- -Unknown-
(69923, 3, 10, -7103, -3601, 0, 46702), -- -Unknown-
(69923, 3, 9, -7109, -3570, 0, 46702), -- -Unknown-
(69923, 3, 8, -7095, -3520, 0, 46702), -- -Unknown-
(69923, 3, 7, -7064, -3505, 0, 46702), -- -Unknown-
(69923, 3, 6, -7031, -3507, 0, 46702), -- -Unknown-
(69923, 3, 5, -6992, -3522, 0, 46702), -- -Unknown-
(69923, 3, 4, -6985, -3548, 0, 46702), -- -Unknown-
(69923, 3, 3, -6988, -3588, 0, 46702), -- -Unknown-
(69923, 3, 2, -7002, -3611, 0, 46702), -- -Unknown-
(69923, 3, 1, -7020, -3631, 0, 46702), -- -Unknown-
(69923, 3, 0, -7051, -3648, 0, 46702), -- -Unknown-
(69923, 2, 11, -6773, -2992, 0, 46702), -- -Unknown-
(69923, 2, 10, -6794, -2972, 0, 46702), -- -Unknown-
(69923, 2, 9, -6818, -2924, 0, 46702), -- -Unknown-
(69923, 2, 8, -6813, -2859, 0, 46702), -- -Unknown-
(69923, 2, 7, -6790, -2826, 0, 46702), -- -Unknown-
(69923, 2, 6, -6741, -2803, 0, 46702), -- -Unknown-
(69923, 2, 5, -6674, -2818, 0, 46702), -- -Unknown-
(69923, 2, 4, -6640, -2846, 0, 46702), -- -Unknown-
(69923, 2, 3, -6634, -2897, 0, 46702), -- -Unknown-
(69923, 2, 2, -6637, -2936, 0, 46702), -- -Unknown-
(69923, 2, 1, -6672, -2982, 0, 46702), -- -Unknown-
(69923, 2, 0, -6713, -3004, 0, 46702), -- -Unknown-
(69923, 1, 11, -7090, -2440, 0, 46702), -- -Unknown-
(69923, 1, 10, -7107, -2420, 0, 46702), -- -Unknown-
(69923, 1, 9, -7108, -2397, 0, 46702), -- -Unknown-
(69923, 1, 8, -7108, -2359, 0, 46702), -- -Unknown-
(69923, 1, 7, -7095, -2332, 0, 46702), -- -Unknown-
(69923, 1, 6, -7074, -2322, 0, 46702), -- -Unknown-
(69923, 1, 5, -7047, -2322, 0, 46702), -- -Unknown-
(69923, 1, 4, -7016, -2329, 0, 46702), -- -Unknown-
(69923, 1, 3, -7001, -2366, 0, 46702), -- -Unknown-
(69923, 1, 2, -7011, -2412, 0, 46702), -- -Unknown-
(69923, 1, 1, -7036, -2440, 0, 46702), -- -Unknown-
(69923, 1, 0, -7061, -2447, 0, 46702), -- -Unknown-
(69923, 0, 0, 1366, -4911, 0, 46702), -- -Unknown-
(69944, 1, 0, 1362, -4913, 62, 46702), -- -Unknown-
(69944, 0, 0, 1374, -4921, 62, 46702), -- -Unknown-
(65439, 2, 0, 1354, -4919, 0, 46702), -- -Unknown-
(65439, 1, 0, 1354, -4924, 0, 46702), -- -Unknown-
(65439, 0, 0, 1354, -4911, 0, 46702), -- -Unknown-
(65443, 4, 0, 2049, -4275, 95, 46702), -- -Unknown-
(65443, 3, 0, 1898, -4749, 46, 46702), -- -Unknown-
(65443, 2, 0, 1826, -4178, 152, 46702), -- -Unknown-
(65443, 1, 0, 1858, -4497, 23, 46702), -- -Unknown-
(65443, 0, 0, 1349, -4911, 0, 46702), -- -Unknown-
(72256, 2, 0, 2043, -4272, 95, 46702), -- -Unknown-
(72256, 1, 0, 1448, -4464, 74, 46702), -- -Unknown-
(72256, 0, 0, 1362, -4913, 62, 46702), -- -Unknown-
(65437, 2, 0, 2044, -4273, 95, 46702), -- -Unknown-
(65437, 1, 0, 2044, -4273, 95, 46702), -- -Unknown-
(65437, 0, 0, 2043, -4270, 95, 46702), -- -Unknown-
(65435, 1, 0, 2046, -4273, 95, 46702), -- -Unknown-
(65435, 0, 0, 2046, -4273, 95, 46702); -- -Unknown-

UPDATE `quest_poi_points` SET `VerifiedBuild`=46702 WHERE (`QuestID`=50562 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50603 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50602 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (69925 /*-Unknown-*/, 66586 /*-Unknown-*/, 69923 /*-Unknown-*/, 69944 /*-Unknown-*/, 65439 /*-Unknown-*/, 65443 /*-Unknown-*/, 72256 /*-Unknown-*/, 65437 /*-Unknown-*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(69925, 1, 0, 0, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(66586, 1, 0, 0, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(69923, 1, 0, 0, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(69944, 1, 25, 1, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(65439, 1, 0, 0, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(65443, 1, 0, 0, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(72256, 1, 0, 0, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(65437, 1, 0, 0, 0, 0, 0, 0, 0, 46702); -- -Unknown-

UPDATE `quest_details` SET `VerifiedBuild`=46702 WHERE `ID`=57249;

DELETE FROM `quest_request_items` WHERE `ID` IN (66586 /*-Unknown-*/, 69925 /*-Unknown-*/, 69923 /*-Unknown-*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(66586, 0, 0, 0, 0, 'Has the exploration been a success?', 46702), -- -Unknown-
(69925, 0, 0, 0, 0, 'Our effort continues.', 0), -- -Unknown-
(69923, 0, 0, 0, 0, 'I\'m afraid this is only the beginning.', 46702); -- -Unknown-


DELETE FROM `creature_queststarter` WHERE (`id`=193450 AND `quest` IN (69925,69923,65439)) OR (`id`=190239 AND `quest` IN (66586,65437)) OR (`id`=197279 AND `quest`=69944) OR (`id`=184793 AND `quest`=65443) OR (`id`=184786 AND `quest`=72256);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(193450, 69925, 46702), -- -Unknown- offered Archmage Khadgar
(190239, 66586, 46702), -- -Unknown- offered Ebyssian
(193450, 69923, 46702), -- -Unknown- offered Archmage Khadgar
(197279, 69944, 46702), -- -Unknown- offered Naleidea Rivergleam
(193450, 65439, 46702), -- -Unknown- offered Archmage Khadgar
(184793, 65443, 46702), -- -Unknown- offered Naleidea Rivergleam
(184786, 72256, 46702), -- -Unknown- offered Scalecommander Cindrethresh
(190239, 65437, 46702); -- -Unknown- offered Ebyssian


DELETE FROM `creature_questender` WHERE (`id`=193450 AND `quest` IN (69925,69923)) OR (`id`=195899 AND `quest`=69944) OR (`id`=190239 AND `quest` IN (66586,65439,65437,65435)) OR (`id`=197279 AND `quest` IN (72256,65443));
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(193450, 69925, 46702), -- -Unknown- ended by Archmage Khadgar
(193450, 69923, 46702), -- -Unknown- ended by Archmage Khadgar
(195899, 69944, 46702), -- -Unknown- ended by Storm Huntress Suhrakka
(190239, 66586, 46702), -- -Unknown- ended by Ebyssian
(190239, 65439, 46702), -- -Unknown- ended by Ebyssian
(197279, 72256, 46702), -- -Unknown- ended by Naleidea Rivergleam
(197279, 65443, 46702), -- -Unknown- ended by Naleidea Rivergleam
(190239, 65437, 46702), -- -Unknown- ended by Ebyssian
(190239, 65435, 46702); -- -Unknown- ended by Ebyssian

DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (191286,191592,198949,193450,197288,198412,195385,195357,195899,184810,184809,198411,184814,184808,189075,184813,184671,184665,184858,197279,198476,198475,189554,199726,198442,198444,198434,143794,198537,184798,184797,198461,184795,198539,198518,198536,198540,184787,198538,197679,152743,197682,200166,198462,197680,198557,198553,198542,184796,187709,189091,184801,187711,187710,184800,198391,184793,184786,190239,184666,184664,184812,198541,191387,198497));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(191286, 0, 0, 0, 2425, 46702),
(191592, 0, 0, 0, 328, 46702),
(198949, 0, 0, 0, 293, 46702),
(193450, 0, 0, 0, 2078, 46702),
(197288, 0, 0, 0, 2151, 46702),
(198412, 0, 0, 0, 2151, 46702),
(195385, 0, 0, 0, 2424, 46702),
(195357, 0, 0, 0, 2424, 46702),
(195899, 0, 0, 0, 2172, 46702),
(184810, 0, 0, 0, 2151, 46702),
(184809, 0, 0, 0, 2151, 46702),
(198411, 0, 0, 0, 2151, 46702),
(184814, 0, 0, 0, 2151, 46702),
(184808, 0, 0, 0, 2151, 46702),
(189075, 0, 0, 0, 81, 46702),
(184813, 0, 0, 0, 2151, 46702),
(184671, 0, 0, 0, 2151, 46702),
(184665, 0, 0, 0, 2151, 46702),
(184858, 0, 0, 0, 2151, 46702),
(197279, 0, 0, 0, 2151, 46702),
(198476, 0, 0, 0, 2151, 46702),
(198475, 0, 0, 0, 2151, 46702),
(189554, 0, 0, 0, 2151, 46702),
(199726, 0, 0, 0, 2078, 46702),
(198442, 0, 0, 0, 2151, 46702),
(198444, 0, 0, 0, 883, 46702),
(198434, 0, 0, 0, 2150, 46702),
(143794, 0, 0, 0, 371, 46702),
(198537, 0, 0, 0, 866, 46702),
(184798, 0, 0, 0, 2151, 46702),
(184797, 0, 0, 0, 2151, 46702),
(198461, 0, 0, 0, 2151, 46702),
(184795, 0, 0, 0, 2151, 46702),
(198539, 0, 0, 0, 866, 46702),
(198518, 0, 0, 0, 866, 46702),
(198536, 0, 0, 0, 866, 46702),
(198540, 0, 0, 0, 866, 46702),
(184787, 0, 0, 0, 2151, 46702),
(198538, 0, 0, 0, 866, 46702),
(197679, 0, 0, 0, 2307, 46702),
(152743, 0, 0, 0, 713, 46702),
(197682, 0, 0, 0, 2307, 46702),
(200166, 0, 0, 0, 977, 46702),
(198462, 0, 0, 0, 2151, 46702),
(197680, 0, 0, 0, 2307, 46702),
(198557, 0, 0, 0, 81, 46702),
(198553, 0, 0, 0, 866, 46702),
(198542, 0, 0, 0, 866, 46702),
(184796, 0, 0, 0, 2151, 46702),
(187709, 0, 0, 0, 2078, 46702),
(189091, 0, 0, 0, 2078, 46702),
(184801, 0, 0, 0, 2151, 46702),
(187711, 0, 0, 0, 2078, 46702),
(187710, 0, 0, 0, 2078, 46702),
(184800, 0, 0, 0, 2151, 46702),
(198391, 0, 0, 0, 2151, 46702),
(184793, 0, 0, 0, 2151, 46702),
(184786, 0, 0, 0, 2151, 46702),
(190239, 0, 0, 0, 2150, 46702),
(184666, 0, 0, 0, 2151, 46702),
(184664, 0, 0, 0, 2151, 46702),
(184812, 0, 0, 0, 2151, 46702),
(198541, 0, 0, 0, 866, 46702),
(191387, 0, 0, 0, 371, 46702),
(198497, 0, 0, 0, 866, 46702);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46702 WHERE (`DifficultyID`=0 AND `Entry` IN (77936,39603,66145,66144,66126,3193,43331,39464,39325,39452,39337,34261,3337,34258,34259,43949,26125,55659,98035,17252,19668,163897,34545,3271,4166,3489,3480,50031,50022,3659,3658,3338,50032,50027,50029,50028,3448,3429,3934,5871,50033,3615,9981,3481,3490,3431,3428,3482,5774,3390,3479,3488,3483,3478,3477,3243,3415,3265,62129,3939,3269,43499,3242,14872,14894,34503,3501,34504,14873,44167,3246,44166,116079,116078,116077,50870,115286,3256,3244,34641,62131,34640,61141,3283,3255,2620,3425,3248,3110,5640,45086,45081,9988,45095,45029,11814,3399,8404,45008,45082,45093,45094,7567,7565,7562,3400,53081,44978,44975,45139,7311,16926,45211,16909,30723,30706,45138,45137,45545,45023,45019,45546,45540,174864,174863,45025,45015,45549,52033,52170,174865,46754,46082,48510,45567,45566,45565,180176,158141,45830,158138,158133,45552,158131,45548,45659,140462,63086,63085,133523,46078,45347,30611,46080,29929,172558,45814,175050,52036,46755,54657,69977,48513,12795,133261,12794,12793,45563,45553,167032,180016,69978,12797,12791,12790,12789,19850,12798,146626,24926,24930,24927,25081,25080,24924,24931,24929,35342,34713,34685,34679,42504,10685,3122,3293,40971,40970,6787,11943,3191,75687,12430,6928,3171,3139,3170,34654,3620,32829,32827,3164,32825,32824,32840,3706,75686,3173,3169,3142,39423,32830,32823,34812,32839,41140,34824,34823,34822,32831,34819,47418,3167,3294,3172,3168,9987,6027,5943,5880,3165,3166,11025,63061,3175,3174,44380,63063,3163,75685,3099,3195,3199,3196,3115,3116,3117,3118,3126,160528,160527,160530,160529,160526,3108,41621,103159,143622,180701,3100,3123,3127,61325,3197,3198,175156,3300,4311,62116,5951,115146,71100,40891,42859,61751,149616,148265,148263,148770,148768,145714,150131,149626,44856,155739,148795,149523,149279,149258,50304,151937,6566,173548,149270,133186,148250,148242,149522,168459,14392,62195,3313,5817,88702,88701,135202,5614,5613,5611,5610,5609,5606,137762,6929,6466,44871,44867,44866,72654,44868,44865,62194,68979,54472,57801,54473,168619,174164,168626,171691,168598,46985,168623,34955,62445,2756,3354,72934,65065,168551,65061,16869,16868,13842,3353,5034,35364,5029,49573,168597,168596,168621,168628,169166,65076,171689,168553,12922,46667,65008,70301,66022,43239,65078,65074,69333,65071,68869,3332,7951,3333,15186,175084,42709,176261,42638,46642,35845,62193,160452,158789,46619,46618,161203,46622,46620,3359,46621,31146,3347,153285,3315,3363,6986,3225,3351,3350,2855,7088,3364,5811,3316,6987,62197,62196,3321,3366,3317,3365,10880,23635,61367,14451,52812,52809,3367,62200,62199,52810,3369,14498,42506,49737,3368,3412,46709,46708,14499,2857,3413,11017,52032,46718,46716,3346,46181,3372,3345,7010,46741,46742,62198,3371,11066,95057,109912,14881,63626,15476,21055,114104,12136,95234,113395,5639,115149,5910,3405,3404,72939,44785,44783,47663,51230,47321,47336,47335,50088,44788,3403,5892,44770,176012,44782,44780,44779,13417,176095,176094,61369,3322,19176,54004,44781,54113,44787,15188,161223,141920,133271,174147,43062,141912,4953,44745,5909,44740,42548,88705,88706,88704,47254,5875,44726,1420,44735,44725,44743,9564,141528,130911,50488,50477,29143,44723,3335,45230,44948,3189,5816,50323,179897,3310,3216,44918,3334,3330,20492,20488,20493,20486,44919,3329,34721,34719,34718,3084,93223,20489,24935,24934,3327,44160,187987,19177,141310,3328,47253,20491,20490,47247,26537,47233,34730,34723,34717,34715,34765,47246,12796,3331,73151,31727,31725,31724,25075,31726,31723,31720,47248,5188,3144,58155,27489,89830,46555,49131,145424,93143,37072,88703,47571,46357,23128,45337,46358,32520,3314,187758,188167,49622,188166,188656,3342,188655,197771,197770,188073,197767,46140,135201,44872,3319,45339,42637,51195,46512,44338,35068,54870,3370,52382,145529,46556,52034,145528,49750,17098,46572,133333,134711,46359,49743,74228,28960,44158,38821,4047,3312,19175,14377,49837,14376,14375,51346,3323,72559,62115,62114,46142,3296,14720));

DELETE FROM `creature_model_info` WHERE `DisplayID` IN (106373, 110481, 110387, 109493, 110227, 110304, 108885, 108876, 108868, 110166, 110209, 108870, 103903, 108801, 108802, 108862, 110307, 110272, 102031, 110303, 104821, 104844, 104845, 104846, 104843, 110182, 108205, 104834, 106349, 110185, 110165, 110181, 110186, 110184, 107531, 110191, 110183, 108776, 108798, 106352, 101649, 105598, 105596, 108796, 108913, 108795, 108791, 105169, 102033, 108804, 108775, 110187, 108961, 110138);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(106373, 6.722133636474609375, 0, 0, 46702),
(110481, 0.347222000360488891, 1.5, 0, 46702),
(110387, 0.411357432603836059, 0, 0, 46702),
(109493, 0.187199994921684265, 1.349999904632568359, 0, 46702),
(110227, 0.347222000360488891, 1.5, 0, 46702),
(110304, 0.305999994277954101, 1.5, 0, 46702),
(108885, 0.698000013828277587, 3, 0, 46702),
(108876, 0.372000008821487426, 1.5, 0, 46702),
(108868, 0.722000002861022949, 3, 0, 46702),
(110166, 0.305999994277954101, 1.5, 0, 46702),
(110209, 0.382999986410140991, 1.5, 0, 46702),
(108870, 0.382999986410140991, 1.5, 0, 46702),
(103903, 0.120000004768371582, 1.5, 0, 46702),
(108801, 0.388999998569488525, 1.5, 0, 46702),
(108802, 0.382999986410140991, 1.5, 0, 46702),
(108862, 0.382999986410140991, 1.5, 0, 46702),
(110307, 0.305999994277954101, 1.5, 0, 46702),
(110272, 0.382999986410140991, 1.5, 0, 46702),
(102031, 0.98344588279724121, 3, 0, 46702),
(110303, 0.305999994277954101, 1.5, 0, 46702),
(104821, 0.722000002861022949, 2, 0, 46702),
(104844, 0.722000002861022949, 2, 0, 46702),
(104845, 0.722000002861022949, 2, 0, 46702),
(104846, 0.722000002861022949, 2, 0, 46702),
(104843, 0.722000002861022949, 2, 0, 46702),
(110182, 0.722000002861022949, 2, 0, 46702),
(108205, 0.722000002861022949, 2, 0, 46702),
(104834, 0.722000002861022949, 2, 0, 46702),
(106349, 0.305999994277954101, 1.5, 0, 46702),
(110185, 0.722000002861022949, 2, 0, 46702),
(110165, 0.208000004291534423, 1.5, 0, 46702),
(110181, 0.722000002861022949, 2, 0, 46702),
(110186, 0.722000002861022949, 2, 0, 46702),
(110184, 0.722000002861022949, 2, 0, 46702),
(107531, 0.722000002861022949, 2, 0, 46702),
(110191, 0.382999986410140991, 1.5, 0, 46702),
(110183, 0.722000002861022949, 2, 0, 46702),
(108776, 0.382999986410140991, 1.5, 0, 46702),
(108798, 0.305999994277954101, 1.5, 0, 46702),
(106352, 0.305999994277954101, 1.5, 0, 46702),
(101649, 2.108910322189331054, 8, 0, 46702),
(105598, 0.971067428588867187, 6, 0, 46702),
(105596, 1.235417366027832031, 8, 0, 46702),
(108796, 0.305999994277954101, 1.5, 0, 46702),
(108913, 0.722000002861022949, 2, 0, 46702),
(108795, 0.722000002861022949, 3, 0, 46702),
(108791, 0.698000013828277587, 3, 0, 46702),
(105169, 0.382999986410140991, 1.5, 0, 46702),
(102033, 0.685899972915649414, 1.899999976158142089, 0, 46702),
(108804, 0.382999986410140991, 1.5, 0, 46702),
(108775, 0.382999986410140991, 1.5, 0, 46702),
(110187, 0.722000002861022949, 2, 0, 46702),
(108961, 0.319406092166900634, 0.3125, 0, 46702),
(110138, 0.382999986410140991, 1.5, 0, 46702);


UPDATE `creature_model_info` SET `VerifiedBuild`=46702 WHERE `DisplayID` IN (65631, 31485, 45563, 45564, 44805, 3750, 33312, 2179, 31420, 1035, 1042, 11858, 11860, 3852, 29149, 23873, 33584, 24995, 77403, 77404, 71887, 77402, 39541, 93746, 2237, 1547, 43948, 3877, 3867, 36912, 36916, 10704, 7057, 3850, 36911, 36915, 36913, 36914, 3914, 3856, 4263, 3881, 4525, 36910, 1652, 9254, 3868, 4096, 4093, 4092, 2326, 4095, 2320, 1965, 3869, 4262, 1866, 3872, 3865, 3866, 1056, 1253, 42362, 6093, 4261, 14985, 1343, 4264, 8649, 1284, 6087, 74037, 74036, 74038, 74039, 74035, 4442, 178, 1043, 1105, 2193, 7234, 1747, 1072, 4473, 1250, 3759, 34243, 34241, 9261, 34247, 34222, 11734, 2734, 99508, 34206, 34242, 34245, 34246, 6303, 2957, 2735, 38008, 34204, 34203, 34268, 6060, 81306, 81307, 99511, 27252, 34266, 99510, 34555, 34219, 34214, 48528, 34556, 34551, 99139, 99138, 48526, 34220, 48525, 34558, 37723, 37795, 72174, 99513, 35249, 34843, 36169, 34569, 34568, 34567, 100500, 93435, 32997, 93420, 93425, 34561, 93418, 34557, 34593, 86688, 29968, 32790, 34841, 34421, 27164, 34842, 25871, 98009, 34695, 99374, 37725, 35250, 22602, 28300, 36170, 12677, 82803, 12676, 12675, 34566, 34562, 24877, 101523, 14612, 12679, 12673, 12672, 12671, 19217, 12680, 66245, 22740, 22745, 22743, 22739, 22746, 22744, 29401, 29397, 29395, 10015, 3027, 1960, 7129, 1973, 32226, 5730, 11901, 3751, 49781, 31840, 12477, 3744, 3736, 3749, 29330, 4296, 3737, 1897, 3743, 1877, 31446, 28293, 28310, 32324, 17188, 29205, 35611, 3742, 1654, 3745, 3741, 9262, 4728, 9800, 4611, 10171, 3739, 3740, 10570, 3746, 3748, 3747, 33829, 9801, 3738, 9798, 9799, 381, 4189, 4188, 4186, 4195, 4194, 4187, 6815, 1225, 2166, 1237, 2487, 92325, 91243, 93309, 92324, 91373, 999, 32529, 68067, 77406, 67345, 105247, 1959, 4190, 2732, 4193, 1206, 4192, 193, 4191, 1132, 46126, 32170, 4515, 46130, 32172, 46940, 32173, 73697, 46131, 32171, 704, 1560, 70992, 75973, 90242, 75972, 90243, 86332, 90129, 86333, 90130, 16238, 90133, 34144, 92463, 92464, 20985, 20988, 90366, 83765, 90246, 16235, 37023, 10732, 90244, 25423, 25436, 90245, 82769, 89937, 89935, 83764, 51613, 42385, 1313, 4356, 61024, 61023, 3609, 3608, 3606, 7137, 3605, 3604, 5706, 5205, 9133, 34156, 34155, 34157, 34154, 42386, 47231, 38800, 39809, 38804, 96910, 98725, 96915, 97757, 96906, 96914, 29496, 39637, 46093, 1375, 52707, 43721, 45864, 96884, 43719, 45319, 45170, 13843, 1374, 43669, 29795, 45320, 36545, 45863, 96905, 96903, 96913, 96916, 96364, 43725, 72325, 96885, 35216, 45862, 47982, 44740, 35301, 43726, 43724, 47465, 43722, 46986, 1332, 15352, 1333, 15369, 99385, 33032, 100444, 42350, 32982, 35198, 42384, 1987, 85697, 93637, 35184, 35183, 79390, 35187, 35185, 35186, 27510, 1368, 28048, 1315, 5769, 744, 1372, 99819, 4384, 5846, 1386, 99817, 1316, 5770, 42388, 42387, 99816, 1388, 99813, 1387, 10186, 14499, 32938, 33303, 38047, 99811, 2956, 99812, 20545, 22769, 99814, 99815, 82193, 99807, 81830, 1381, 1390, 99818, 35237, 99808, 14616, 4386, 7136, 10472, 99809, 35242, 35241, 99823, 34932, 1394, 1366, 6839, 99810, 35244, 42389, 1393, 10589, 64259, 62531, 72815, 20923, 15469, 5705, 15470, 20026, 71669, 12229, 64332, 62532, 99456, 73706, 4546, 99509, 4358, 51000, 34109, 82820, 99822, 33191, 33194, 63690, 35538, 35545, 35544, 4231, 4534, 19184, 100150, 13341, 100158, 100157, 99428, 19183, 99429, 99426, 32937, 38631, 15322, 14589, 82821, 4368, 87513, 1986, 18269, 9392, 30501, 4545, 99403, 32936, 61027, 99455, 61026, 4449, 99461, 34046, 901, 34049, 34047, 34059, 8848, 64307, 81476, 37020, 31760, 25955, 34045, 99427, 9391, 99454, 30413, 99459, 99457, 37437, 101484, 1311, 99449, 34184, 1334, 1330, 17722, 17699, 17701, 17700, 34185, 1329, 29370, 29369, 33700, 29368, 8572, 2141, 17720, 19186, 22750, 1327, 20366, 19185, 86393, 1328, 35504, 17719, 17721, 35499, 24164, 99460, 33699, 29375, 29371, 29367, 29366, 29396, 35498, 12678, 99458, 51098, 27687, 27685, 22873, 4602, 27684, 27686, 33701, 35500, 3128, 82115, 40012, 22493, 24982, 35141, 31988, 30272, 63446, 36598, 4382, 8001, 35695, 8971, 35051, 21264, 89419, 34406, 35052, 1314, 106345, 99462, 36559, 31737, 4259, 106382, 36584, 1358, 73093, 79383, 106383, 109709, 89421, 8000, 1319, 34412, 32981, 37138, 35133, 31738, 304, 37331, 29569, 42562, 1392, 37864, 35140, 99451, 37724, 88594, 36615, 4601, 37330, 4260, 16850, 19182, 35148, 81857, 15468, 35053, 15467, 99507, 37328, 21342, 33698, 21072, 4514, 1312, 19181, 14415, 36585, 14414, 14413, 37329, 1323, 49770, 7511, 36583, 14370, 99453, 99452, 14732);
UPDATE `creature_model_info` SET `BoundingRadius`=1.113744497299194335, `CombatReach`=1.72500002384185791, `VerifiedBuild`=46702 WHERE `DisplayID`=64802;
UPDATE `creature_model_info` SET `BoundingRadius`=1.279591798782348632, `CombatReach`=1.066326498985290527, `VerifiedBuild`=46702 WHERE `DisplayID`=643;
UPDATE `creature_model_info` SET `BoundingRadius`=0.388999998569488525, `CombatReach`=1.5, `VerifiedBuild`=46702 WHERE `DisplayID`=93429;
UPDATE `creature_model_info` SET `CombatReach`=0, `VerifiedBuild`=46702 WHERE `DisplayID`=29775;
UPDATE `creature_model_info` SET `BoundingRadius`=0.343162715435028076, `CombatReach`=0.4375, `VerifiedBuild`=46702 WHERE `DisplayID`=87999;
UPDATE `creature_model_info` SET `BoundingRadius`=0.347222000360488891, `CombatReach`=1.5, `VerifiedBuild`=46702 WHERE `DisplayID`=81933;
UPDATE `creature_model_info` SET `BoundingRadius`=0.305999994277954101, `CombatReach`=1.5, `VerifiedBuild`=46702 WHERE `DisplayID` IN (89548, 80609, 80608);
UPDATE `creature_model_info` SET `BoundingRadius`=1, `CombatReach`=1, `VerifiedBuild`=46702 WHERE `DisplayID`=18164;
UPDATE `creature_model_info` SET `BoundingRadius`=0.465000003576278686, `VerifiedBuild`=46702 WHERE `DisplayID`=30262;
UPDATE `creature_model_info` SET `BoundingRadius`=0.280177772045135498, `CombatReach`=1, `VerifiedBuild`=46702 WHERE `DisplayID`=87564;
UPDATE `creature_model_info` SET `BoundingRadius`=0.698000013828277587, `CombatReach`=3, `VerifiedBuild`=46702 WHERE `DisplayID` IN (34114, 34066, 34108, 34110);
UPDATE `creature_model_info` SET `BoundingRadius`=0.767800033092498779, `CombatReach`=3.300000190734863281, `VerifiedBuild`=46702 WHERE `DisplayID`=63703;
UPDATE `creature_model_info` SET `BoundingRadius`=0.722000002861022949, `CombatReach`=3, `VerifiedBuild`=46702 WHERE `DisplayID` IN (34111, 34113, 34107, 94494);
UPDATE `creature_model_info` SET `BoundingRadius`=0.382999986410140991, `CombatReach`=1.5, `VerifiedBuild`=46702 WHERE `DisplayID`=91667;

DELETE FROM `gossip_menu` WHERE (`TextID`=1 AND `MenuID` IN (28767,30069,30068,28626,30054,30059,27576,27579,27578,28582));
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(28767, 1, 46702), -- 184665 (Lor'themar Theron)
(30069, 1, 46702), -- 184858 (Scalecommander Cindrethresh)
(30068, 1, 46702), -- 197279 (Naleidea Rivergleam)
(28626, 1, 46702), -- 193450 (Archmage Khadgar)
(30054, 1, 46702), -- 198411 (Baine Bloodhoof)
(30059, 1, 46702), -- 198442 (Kodethi)
(27576, 1, 46702), -- 184795 (Cataloger Coralie)
(27579, 1, 46702), -- 184787 (Boss Magor)
(27578, 1, 46702), -- 184796 (Pathfinder Tacha)
(28582, 1, 46702); -- 190239 (Ebyssian)

UPDATE `gossip_menu` SET `VerifiedBuild`=46702 WHERE (`MenuID`=6944 AND `TextID`=7778) OR (`MenuID`=10589 AND `TextID`=14648) OR (`MenuID`=10575 AND `TextID`=14633);
DELETE FROM `gossip_menu_option` WHERE (`OptionID`=0 AND `MenuID` IN (30059,28582,27579,30054,27578,30069,27576)) OR (`OptionID`=1 AND `MenuID`=28626);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(30059, 0, 0, 'Scalecommander Cindrethresh would like you to meet her at the zeppelin tower.', 0, 0, 0, 0, 0, 0, NULL, 0, 46702),
(28582, 0, 0, '<Listen to Ebonhorn.>', 0, 0, 0, 0, 0, 0, NULL, 0, 46702),
(27579, 0, 0, 'We need artisans for an expedition to the Dragon Isles. Will you join us?', 0, 0, 0, 0, 0, 0, NULL, 0, 46702),
(30054, 0, 0, '<Stay awhile and listen.>', 137786, 0, 0, 0, 0, 0, NULL, 0, 46702), -- OptionBroadcastTextID: 137786 - 137786 - 144263 - 144263 - 160761 - 160761 - 160763 - 160763 - 160765 - 160765 - 160768 - 160768 - 167552 - 167552 - 173473 - 173473 - 176737 - 176737 - 188459 - 188459 - 202026 - 202026 - 205118 - 205118 - 205774 - 205774
(27578, 0, 0, 'We need explorers for an expedition to the Dragon Isles. Will you join us?', 0, 0, 0, 0, 0, 0, NULL, 0, 46702),
(30069, 0, 0, 'What have you learned of the dracthyr\'s origins?', 0, 0, 0, 0, 0, 0, NULL, 0, 46702),
(27576, 0, 0, 'We need scholars for an expedition to the Dragon Isles. Will you join us?', 0, 0, 0, 0, 0, 0, NULL, 0, 46702),
(28626, 1, 0, '<Ask Khadgar what happened.>', 0, 0, 0, 0, 0, 0, NULL, 0, 46702);

UPDATE `gossip_menu_option` SET `VerifiedBuild`=46702 WHERE (`MenuID`=6944 AND `OptionID`=0);
UPDATE `gossip_menu_option` SET `BoxMoney`=0, `VerifiedBuild`=46702 WHERE (`MenuID`=10575 AND `OptionID`=0); -- OptionBroadcastTextID: 35108 - 35108


DELETE FROM `creature_template` WHERE `entry` IN (191286 /*Molten Eruption*/, 191592 /*[DND] Fire Storm*/, 198949 /*Chizus*/, 193450 /*Archmage Khadgar*/, 197288 /*Skarukaru*/, 198412 /*Mayla Highmountain*/, 195385 /*Adventurous Tailor*/, 195357 /*Grok Thickfoot*/, 195899 /*Storm Huntress Suhrakka*/, 184810 /*Boss Magor*/, 184809 /*Cataloger Coralie*/, 198411 /*Baine Bloodhoof*/, 184814 /*Rugged Artisan*/, 184808 /*Pathfinder Tacha*/, 189075 /*Seagull*/, 184813 /*Brave Researcher*/, 184671 /*First Arcanist Thalyssra*/, 184665 /*Lor'themar Theron*/, 184858 /*Scalecommander Cindrethresh*/, 197279 /*Naleidea Rivergleam*/, 198476 /*Kodethi*/, 198475 /*Scalecommander Emberthal*/, 189554 /*Expedition Provisioner*/, 199726 /*(Bunny) Sessile + Large AOI*/, 198442 /*Kodethi*/, 198444 /*Orgrimmar Grunt*/, 198434 /*Dracthyr Evoker*/, 198537 /*Nothazoral*/, 184798 /*Chronicler Laz'Kini*/, 184797 /*Lorewalker Lali*/, 198461 /*Curious Dracthyr*/, 184795 /*Cataloger Coralie*/, 198539 /*Kozastran*/, 198518 /*Zindaralash*/, 198536 /*Alsiaszar*/, 198540 /*Tharalash*/, 184787 /*Boss Magor*/, 198538 /*Krozuthar*/, 197679 /*Shuga Blastcaps*/, 197682 /*Enchantress Quinni*/, 200166 /*Bronze Drake*/, 198462 /*Dracthyr Tinkerer*/, 197680 /*Jack the Hammer*/, 198557 /*Kalcifer*/, 198553 /*Razmu*/, 198542 /*Destia*/, 184796 /*Pathfinder Tacha*/, 187709 /*Handhold*/, 189091 /*Handhold*/, 184801 /*Kenzou*/, 187711 /*Handhold*/, 187710 /*Handhold*/, 184800 /*Omi*/, 198391 /*Dracthyr Belayer*/, 184793 /*Naleidea Rivergleam*/, 184786 /*Scalecommander Cindrethresh*/, 190239 /*Ebyssian*/, 184666 /*Mayla Highmountain*/, 184664 /*Baine Bloodhoof*/, 184812 /*Restless Explorer*/, 198541 /*Zurenoth*/, 191387 /*Primal Stormling*/, 198497 /*Nathenaseth*/);
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(191286, 0, 60, 60, 14, 0, 1, 1.142857193946838378, 2000, 0, 33554944, 2099200, 17301505, 0, 0, 1), -- Molten Eruption
(191592, 0, 60, 60, 35, 0, 1, 1, 2000, 0, 33587520, 2099200, 16777217, 0, 0, 1), -- [DND] Fire Storm
(198949, 0, 60, 60, 83, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Chizus
(193450, 28626, 70, 70, 2110, 3, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Archmage Khadgar
(197288, 0, 62, 62, 3270, 1, 1, 1.142857193946838378, 2000, 0, 33536, 34816, 0, 0, 0, 1), -- Skarukaru
(198412, 0, 62, 62, 2785, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Mayla Highmountain
(195385, 0, 70, 70, 2028, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Adventurous Tailor
(195357, 0, 70, 70, 2028, 1, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Grok Thickfoot
(195899, 0, 60, 60, 1735, 130, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Storm Huntress Suhrakka
(184810, 0, 62, 62, 3270, 4224, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Boss Magor
(184809, 0, 62, 62, 3270, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Cataloger Coralie
(198411, 30054, 62, 62, 104, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Baine Bloodhoof
(184814, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Rugged Artisan
(184808, 0, 62, 62, 3270, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Pathfinder Tacha
(189075, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Seagull
(184813, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Brave Researcher
(184671, 0, 62, 62, 2799, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- First Arcanist Thalyssra
(184665, 28767, 62, 62, 1604, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Lor'themar Theron
(184858, 30069, 62, 62, 3270, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Scalecommander Cindrethresh
(197279, 30068, 62, 62, 3270, 3, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Naleidea Rivergleam
(198476, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Kodethi
(198475, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Scalecommander Emberthal
(189554, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Expedition Provisioner
(199726, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33554432, 104859648, 1, 0, 0, 1), -- (Bunny) Sessile + Large AOI
(198442, 30059, 62, 62, 35, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Kodethi
(198444, 0, 60, 60, 85, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Orgrimmar Grunt
(198434, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Dracthyr Evoker
(198537, 0, 60, 60, 3341, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Nothazoral
(184798, 0, 62, 62, 1734, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Chronicler Laz'Kini
(184797, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Lorewalker Lali
(198461, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Curious Dracthyr
(184795, 27576, 62, 62, 3270, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Cataloger Coralie
(198539, 0, 60, 60, 3341, 1, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Kozastran
(198518, 0, 60, 60, 3341, 1, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Zindaralash
(198536, 0, 60, 60, 3341, 1, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Alsiaszar
(198540, 0, 60, 60, 3341, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Tharalash
(184787, 27579, 62, 62, 1735, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Boss Magor
(198538, 0, 60, 60, 3341, 1, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Krozuthar
(197679, 0, 62, 62, 83, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Shuga Blastcaps
(197682, 0, 62, 62, 83, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Enchantress Quinni
(200166, 0, 11, 19, 35, 0, 6, 2.142857074737548828, 2000, 0, 32768, 2048, 17825793, 0, 8027, 1), -- Bronze Drake
(198462, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Dracthyr Tinkerer
(197680, 0, 62, 62, 83, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Jack the Hammer
(198557, 0, 1, 1, 35, 16777216, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Kalcifer
(198553, 0, 60, 60, 1735, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Razmu
(198542, 0, 60, 60, 1735, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Destia
(184796, 27578, 62, 62, 3270, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Pathfinder Tacha
(187709, 0, 70, 70, 35, 0, 1, 1, 2000, 0, 768, 67143680, 16777216, 0, 7559, 1), -- Handhold
(189091, 0, 70, 70, 35, 0, 1, 1, 2000, 0, 768, 67143680, 16777216, 0, 7560, 1), -- Handhold
(184801, 0, 62, 62, 2980, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Kenzou
(187711, 0, 70, 70, 35, 0, 1, 1, 2000, 0, 768, 67143680, 16777216, 0, 7559, 1), -- Handhold
(187710, 0, 70, 70, 35, 0, 1, 1, 2000, 0, 768, 67143680, 16777216, 0, 7559, 1), -- Handhold
(184800, 0, 62, 62, 2980, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Omi
(198391, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Dracthyr Belayer
(184793, 0, 62, 62, 3270, 2, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Naleidea Rivergleam
(184786, 0, 62, 62, 3341, 3, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Scalecommander Cindrethresh
(190239, 28582, 60, 60, 35, 3, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Ebyssian
(184666, 0, 62, 62, 2785, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Mayla Highmountain
(184664, 0, 62, 62, 104, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Baine Bloodhoof
(184812, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Restless Explorer
(198541, 0, 60, 60, 3341, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Zurenoth
(191387, 0, 22, 30, 35, 0, 1, 1.142857193946838378, 2000, 0, 768, 2048, 0, 0, 0, 1), -- Primal Stormling
(198497, 0, 60, 60, 3341, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1); -- Nathenaseth

DELETE FROM `quest_template` WHERE `ID` IN (69925 /*-Unknown-*/, 69923 /*-Unknown-*/, 69944 /*-Unknown-*/, 66586 /*-Unknown-*/, 65439 /*-Unknown-*/, 65443 /*-Unknown-*/, 72256 /*-Unknown-*/, 65437 /*-Unknown-*/, 65435 /*-Unknown-*/);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestPackageID`, `ContentTuningID`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitGiverModelSceneID`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `QuestSessionBonus`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(69925, 2, 0, 2573, 1637, 0, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 4096, 32768, 0, 0, 0, 0, 0, 0, 0, 199211, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 12261800583900083122, 0, 0, 0, 0, 'Calming the Storms', 'Gather $1oa Motes of Primal Energy from enemies in active primal storm locations throughout Kalimdor and the Eastern Kingdoms.', 'These Primalists are relentless, unleashing elemental devastation across the Eastern Kingdoms and Kalimdor.\n\nYou must show the same determination, $n. It is the only way to stop them.\n\nFind their next incursion, remove the enemies within the primal storm area before it is too late and foil their efforts.\n\nWe must protect Azeroth!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46702), -- -Unknown-
(69923, 2, 0, 2573, 1637, 0, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 199211, 199109, 0, 0, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 12261800583900083122, 0, 0, 0, 0, 'A Primal Threat', 'Gather $1oa Motes of Primal Energy from enemies in active primal storm locations throughout Kalimdor and the Eastern Kingdoms.', 'Raszageth has wasted no time building up her Primalist forces.\n\nThe Kirin Tor have detected massive storms being unleashed at key points across Kalimdor and the Eastern Kingdoms.\n\nThe Primalists are unleashing the elements to add to their strength. It seems they plan to cause chaos not only in the Dragon Isles, but in the lands of the Alliance and Horde as well.\n\nSeek out the enemy and study their methods. We have to stop them before it\'s too late.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46702), -- -Unknown-
(69944, 2, 0, 2573, 13642, 0, 0, 65444, 1, 1, 1, 1, 7750, 0, 0, 0, 0, 0, 1, 0, 37748736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 12261800583900083122, 0, 0, 0, 0, 'Chasing Storms', 'Speak with Storm Huntress Suhrakka at the zeppelin tower.', 'Well, that wizard certainly knows how to make an entrance, doesn\'t he?\n\nWe won\'t be able to set sail until someone gets those elemental storms under control.\n\nCheck-in with Storm Huntress Suhrakka. She\'s leading the expedition efforts to investigate the storms and can help outfit you with whatever gear you need.\n\nWhile you handle that, I\'ll coordinate the rest of the preparations. At least it\'ll give me some time to read a few more volumes on dragon history before we set sail.', '', 'Speak with Storm Huntress Suhrakka at the zeppelin tower.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46702), -- -Unknown-
(66586, 2, 19171, 2555, 1637, 81, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 33554440, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 12261800583900083122, 0, 8, 0, 0, 'Legacy of Tyr: Secrets of the Past', 'Enter Uldaman in Badlands. Discover the cause of the disturbances.', 'To stop Raszageth from freeing the other Incarnates, the Aspects\' power must be restored.\n\nBut this will not be an easy task. The Titans are silent and Keeper Tyr is long dead.\n\nQueen Alexstrasza has devised a plan. In the Badlands lies a Titan facility called Uldaman. She believes Tyr\'s companions hid a disc of his memories inside its depths.\n \nTake your allies to Uldaman and find the disc for the Dragon Queen. Let us hope Tyr\'s knowledge can be used to re-empower the Aspects.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46702), -- -Unknown-
(65439, 2, 0, 2573, 13642, 0, 0, 0, 1, 1, 1, 1, 7750, 0, 0, 0, 0, 0, 1, 0, 536870912, 4194304, 524288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 12261800583900083122, 0, 0, 0, 0, 'Whispers on the Winds', 'Speak with Archmage Khadgar outside Orgrimmar.', 'Hello, $p. It\'s been a while, and I wish we had more time to catch up.\n\nBut you see, I\'ve just had a rather enlightening... no, make that foreboding... yes, a foreboding conversation with an old friend.\n\nSometimes a revelation can be both, after all.\n\nI really must tell you of what I\'ve learned.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46702), -- -Unknown-
(65443, 2, 0, 2573, 13642, 0, 0, 0, 5, 1, 5, 1, 61750, 394039, 0, 0, 0, 0, 1, 0, 6291456, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 12261800583900083122, 0, 0, 0, 0, 'Expeditionary Coordination', 'Recruit explorers, artisans, and scholars throughout Orgrimmar for the expedition to the Dragon Isles.', 'Pleasure to meet you, I am Naleidea Rivergleam.\n\nThe invitation to visit the Dragon Isles is quite an exciting prospect. Don\'t you agree?\n\nThe Reliquary has combined forces with our expeditionary counterparts to help coordinate our efforts. As a member of the Dragonscale Expedition, it is my honor to welcome you.\n\nThough first we must gather a few more members for our journey. Shall we begin?', '', 'Meet Naleidea at the zeppelin tower outside Orgrimmar.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46702), -- -Unknown-
(72256, 2, 0, 2573, 13642, 0, 0, 0, 5, 1, 5, 1, 61750, 394039, 0, 0, 0, 0, 1, 0, 6291456, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 12261800583900083122, 0, 0, 0, 0, 'The Dark Talons', 'Deliver the Scalecommander\'s orders to Kodethi and the Dark Talons.', 'Naleidea is enthusiastic, but she\'s a historian, not a soldier. She knows nothing of the dangers we\'ll face in the Dragon Isles.\n\nNot that anyone needs to worry. After all, the Dark Talons will be protecting the expedition.\n\nI\'m going to discuss mission logistics with Ebyssian and your Horde leaders.\n\nMy lieutenant, Kodethi, is exploring the city along with the other dracthyr. Be a good soldier and let him know we are going to rally at the zeppelin tower. He\'ll relay my orders to the others.', '', 'Meet Naleidea at the zeppelin tower outside Orgrimmar.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46702), -- -Unknown-
(65437, 2, 0, 2573, 13642, 0, 0, 0, 1, 1, 1, 1, 7750, 0, 0, 0, 0, 0, 1, 0, 570425344, 4194304, 524288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 12261800583900083122, 0, 0, 0, 0, 'Aspectral Invitation', 'Speak with Ebyssian.', 'Your arrival is well timed, $p.\n\nI have just met with the Horde Council, and they have accepted the Aspects\' invitation to the Dragon Isles.\n\nThe same invitation extends to you, as well.\n\nYou may also notice some unfamiliar faces here in Orgrimmar. The dracthyr are new arrivals you will learn about on the journey ahead.\n\nLet us speak more.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46702), -- -Unknown-
(65435, 2, 0, 2573, 13642, 0, 0, 65437, 1, 1, 1, 1, 7750, 0, 0, 0, 0, 0, 1, 0, 38273024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1308636082, 0, 0, 0, 0, 'The Dragon Isles Await', 'Meet Ebyssian in Orgrimmar.', 'Heroes of the Horde, I bring news. The Dragon Isles are awakening!\n\nThe Isles went dormant in the wake of the Sundering. But now, at long last, they have called my kin and I home.\n\nWhile the Isles hold many wonders, it is also a perilous land. We will require the aid of our mortal allies to reclaim our legacy.\n\nI am about to present the Aspects\' invitation to the Horde Council in Orgrimmar. Meet me there and we shall see what they have to say.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46702); -- -Unknown-

UPDATE `quest_template` SET `Expansion`=8, `VerifiedBuild`=46702 WHERE `ID`=57249; -- A Timely Invitation
UPDATE `quest_template` SET `RewardBonusMoney`=30900, `VerifiedBuild`=46702 WHERE `ID`=14065; -- Sharing a Bountiful Feast
UPDATE `quest_template` SET `VerifiedBuild`=46702 WHERE `ID` IN (14438, 26682, 24504, 25945, 871, 59926, 53466, 13618, 44543, 63934, 61136, 61125, 60837, 66696, 62286, 61477, 62288, 60991, 61885, 61346, 66615, 66618, 57328, 52420, 63782, 64854, 60244, 50562, 62209, 54267, 59581, 63044, 64273, 66619, 60992, 60990, 54543, 60656, 61728, 62210, 55343, 51156, 63957, 61140, 61667, 59230, 51586, 61784, 58918, 60337, 63785, 61124, 63824, 62539, 61565, 61411, 65072, 51618, 61060, 49197, 60929, 60844, 65252, 60531, 58144, 60254, 54615, 49099, 49097, 59718, 51185, 61868, 55215, 51612, 51629, 61947, 51639, 55302, 65404, 51905, 59717, 59183, 64080, 52875, 60574, 62211, 52884, 61342, 59441, 61540, 65081, 61220, 62058, 60407, 60447, 60434, 46736, 46735, 46277, 66042, 53435, 50603, 50602);
UPDATE `quest_template` SET `RewardBonusMoney`=420, `VerifiedBuild`=46702 WHERE `ID`=25152; -- Your Place In The World
UPDATE `quest_template` SET `RewardBonusMoney`=1860, `VerifiedBuild`=46702 WHERE `ID`=25170; -- Cleaning Up the Coastline
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46702 WHERE `ID`=25236; -- Thunder Down Under
UPDATE `quest_template` SET `RewardBonusMoney`=525, `VerifiedBuild`=46702 WHERE `ID`=44701; -- Stormheim
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46702 WHERE `ID`=62704; -- The Threads of Fate
UPDATE `quest_template` SET `RewardBonusMoney`=575, `VerifiedBuild`=46702 WHERE `ID`=55851; -- Essential Empowerment
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46702 WHERE `ID`=54164; -- The King's Death
UPDATE `quest_template` SET `RewardBonusMoney`=2300, `VerifiedBuild`=46702 WHERE `ID`=53831; -- A Royal Occasion
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46702 WHERE `ID`=53870; -- Guests at Grommash Hold
UPDATE `quest_template` SET `RewardBonusMoney`=410, `VerifiedBuild`=46702 WHERE `ID`=29611; -- The Art of War
UPDATE `quest_template` SET `RewardBonusMoney`=825, `VerifiedBuild`=46702 WHERE `ID`=26293; -- Machines of War
UPDATE `quest_template` SET `RewardBonusMoney`=3250, `VerifiedBuild`=46702 WHERE `ID`=25924; -- Call of Duty
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=52432; -- Squall
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=50529; -- The Spirits Within
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=51507; -- Gorehorn
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=50519; -- Za'amar
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=52387; -- Supplies Needed: Frenzied Fangtooth
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=51670; -- Lumbergrasp Sentinel
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=54619; -- Wiping Out the Witherbark
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=54550; -- Ruul Onestone
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=59017; -- Call to Arms: Vale of Eternal Blossoms
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=51839; -- Squirgle of the Depths
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=51647; -- Crews of Freehold
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=50866; -- Zayoos
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=49068; -- Quelling the Cove
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=52325; -- Captured Evil
UPDATE `quest_template` SET `Expansion`=8, `VerifiedBuild`=46702 WHERE `ID`=48982; -- Invasion Point: Aurinor
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=52957; -- Call to Arms: Stormsong Valley
UPDATE `quest_template` SET `RewardBonusMoney`=3150, `VerifiedBuild`=46702 WHERE `ID`=45812; -- Assault on Val'sharah
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=49809; -- Atal'Dazar: From the Shadows
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=51747; -- Early Warning
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=54594; -- Venomarus
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=51330; -- Resilient Seeds
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=63100; -- Misery's Company
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=51491; -- Balethorn
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=52209; -- Turtle Tactics
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=52799; -- Pack Leader
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=61088; -- Dust to Dust
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=51791; -- Bubbling Totem Testing
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=52430; -- Not So Bad Down Here
UPDATE `quest_template` SET `RewardBonusMoney`=525, `VerifiedBuild`=46702 WHERE `ID`=41161; -- Out of the Frying Pan
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=52007; -- Engines of War
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=50850; -- Tia'Kawan
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=51212; -- Waycrest Manor: Witchy Kitchen
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=51699; -- Blighted Monstrosity
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=51850; -- Preserve the Oasis
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=51122; -- Scorpox
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=50498; -- Gutrip
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=50871; -- Daggerjaw
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=52752; -- Vigilant Lookouts
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=52248; -- The Shores of Xibala
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=52923; -- Add More to the Collection
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=52310; -- Corrupted Tideskipper
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=52157; -- A Chilling Encounter
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=51719; -- A Glaive Mistake
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=50717; -- Don't Stalk Me, Troll
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46702 WHERE `ID`=51100; -- Jumbo Sandsnapper

DELETE FROM `quest_objectives` WHERE `ID` IN (429459 /*429459*/, 429456 /*429456*/, 429471 /*429471*/, 429595 /*429595*/, 429443 /*429443*/, 422987 /*422987*/, 422989 /*422989*/, 422988 /*422988*/, 431829 /*431829*/, 422958 /*422958*/);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
(429459, 69925, 1, 0, 1, 192493, 10, 0, 1, 0, '', 46702), -- 429459
(429456, 69923, 1, 0, 0, 192493, 10, 0, 1, 0, '', 46702), -- 429456
(429471, 66586, 14, 1, 0, 136298, 1, 3, 0, 0, '', 46702), -- 429471
(429595, 66586, 0, 0, 1, 193761, 1, 0, 0, 0, 'Disc of Tyr\'s memories recovered', 46702), -- 429595
(429443, 65439, 0, 0, 0, 193469, 1, 0, 0, 0, 'Speak with Archmage Khadgar', 46702), -- 429443
(422987, 65443, 0, 2, 1, 184780, 1, 0, 0, 0, 'Scholars recruited', 46702), -- 422987
(422989, 65443, 0, 1, 3, 184782, 1, 0, 0, 0, 'Explorers recruited', 46702), -- 422989
(422988, 65443, 0, 0, 2, 184781, 1, 0, 0, 0, 'Artisans recruited', 46702), -- 422988
(431829, 72256, 0, 0, 0, 198440, 1, 0, 0, 0, 'Orders delivered to Kodethi', 46702), -- 431829
(422958, 65437, 0, 0, 0, 184790, 1, 0, 0, 0, 'Speak with Ebyssian', 46702); -- 422958

UPDATE `quest_objectives` SET `Description`='Spirit of Sharing', `VerifiedBuild`=46702 WHERE `ID`=265223; -- 265223
UPDATE `quest_objectives` SET `VerifiedBuild`=46702 WHERE `ID` IN (264756, 265866, 266637, 265539, 254390, 254389, 265482, 408196, 391637, 386353, 397237, 388427, 353017, 254560, 266797, 286696, 338957, 420210, 405249, 405228, 404778, 404777, 427561, 407607, 405979, 405978, 405977, 405976, 405973, 408487, 405970, 407611, 405227, 406808, 405657, 333247, 332994, 332980, 336038, 427325, 332921, 338879, 336665, 387774, 427331, 387593, 395347, 337340, 408971, 408970, 392148, 396762, 396761, 396760, 396759, 396758, 396757, 396756, 392147, 338924, 336604, 336603, 336602, 419749, 334128, 421561, 421560, 421559, 421563, 398057, 332948, 332947, 332946, 293663, 293662, 293661, 293660, 293659, 293658, 338794, 336202, 407425, 386767, 386766, 386765, 386764, 386763, 386762, 386761, 409240, 396527, 396572, 396521, 396520, 396535, 396519, 409050, 420833, 420832, 420831, 420830, 427333, 405143, 406321, 387579, 404613, 404746, 404745, 404744, 404612, 404579, 404741, 404611, 404609, 404608, 404610, 406588, 407428, 340393, 288711, 288650, 389033, 389032, 334881, 420273, 405251, 406454, 406456, 406455, 295359, 295358, 396185, 337020, 337019, 337018, 336395, 406710, 387721, 335416, 395108, 398175, 398504, 409170, 335978, 420614, 420613, 420612, 420611, 420404, 420403, 419752, 420402, 420401, 420189, 405226, 420138, 420122, 419902, 420876, 419901, 419899, 419900, 419898, 420677, 420676, 407909, 338384, 338383, 406320, 339943, 405834, 405887, 405886, 405885, 405884, 405883, 405882, 405881, 405880, 405879, 405833, 405832, 405831, 405830, 422041, 422040, 422039, 422038, 422037, 422045, 422035, 422036, 405186, 338071, 338069, 338068, 338067, 338066, 337176, 341888, 341887, 341886, 341885, 336520, 336519, 336518, 336517, 336516, 405223, 405212, 405210, 405175, 405174, 405173, 405156, 338950, 405027, 405026, 337758, 337757, 337756, 404824, 404823, 334095, 422509, 406042, 406041, 406040, 406039, 406038, 406037, 406036, 406035, 406034, 406033, 406032, 393734, 393733, 393784, 335149, 335148, 335147, 335146, 398062, 337454, 337384, 337378, 387768, 334795, 396826, 396827, 332893, 334141, 335060, 406766, 339680, 339679, 388898, 388897, 336462, 341826, 336552, 338536, 406867, 341806, 336572, 389002, 389001, 422874, 340265, 337497, 338735, 396823, 396133, 420552, 385413, 385412, 340168, 340167, 340166, 340165, 340164, 340163, 340162, 398917, 398916, 338184, 407429, 341681, 336933, 340210, 341431, 333601, 333595, 409114, 405633, 405634, 334751, 396453, 406354, 406227, 407943, 422063, 422073, 405433, 405422, 405421, 405420, 405419, 405418, 405426, 407187, 407151, 407150, 407149, 407148, 407147, 407144, 407126, 398443, 398529, 398640, 398639, 398638, 398637, 398636, 398569, 398568, 289536, 289535, 289167, 427064, 423785, 423784, 423783, 423782, 423781, 423780, 423779, 423778, 341368, 336210, 337022);

DELETE FROM `quest_visual_effect` WHERE (`ID`=429456 AND `Index` IN (16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0)) OR (`ID`=429471 AND `Index`=0) OR (`ID`=429443 AND `Index`=0) OR (`ID`=422987 AND `Index`=0) OR (`ID`=422989 AND `Index`=0) OR (`ID`=422988 AND `Index`=0) OR (`ID`=431829 AND `Index`=0) OR (`ID`=422958 AND `Index`=0);
INSERT INTO `quest_visual_effect` (`ID`, `Index`, `VisualEffect`, `VerifiedBuild`) VALUES
(429456, 16, 21370, 46702),
(429456, 15, 21369, 46702),
(429456, 14, 21368, 46702),
(429456, 13, 21367, 46702),
(429456, 12, 21366, 46702),
(429456, 11, 21365, 46702),
(429456, 10, 21364, 46702),
(429456, 9, 21363, 46702),
(429456, 8, 21362, 46702),
(429456, 7, 21361, 46702),
(429456, 6, 21360, 46702),
(429456, 5, 21359, 46702),
(429456, 4, 21358, 46702),
(429456, 3, 21357, 46702),
(429456, 2, 21356, 46702),
(429456, 1, 21355, 46702),
(429456, 0, 21283, 46702),
(429471, 0, 19759, 46702),
(429443, 0, 19751, 46702),
(422987, 0, 18193, 46702),
(422989, 0, 18194, 46702),
(422988, 0, 18195, 46702),
(431829, 0, 20720, 46702),
(422958, 0, 19726, 46702);

UPDATE `quest_visual_effect` SET `VerifiedBuild`=46702 WHERE (`Index`=0 AND `ID` IN (408196,391637,386353,397237,388427,353017,420210,405249,405228,405979,405978,405977,405976,405973,408487,405227,406808,333247,332980,387774,392148,392147,419749,421561,421560,421559,293663,338794,407425,409050,405143,404613,404612,404579,406588,407428,288711,389032,420273,405251,406456,406455,295359,295358,396185,337020,337018,336395,406710,335416,395108,398175,398504,420189,405226,419902,419900,419898,420676,338383,339943,405834,405887,405886,405885,405884,405883,405882,405881,405880,405879,405833,405832,405830,422036,405186,336516,405156,338950,405027,405026,337757,422509,393734,393733,393784,335149,335146,337384,387768,396826,396827,335060,406766,339680,339679,388898,388897,336462,336552,338536,406867,341806,336572,389002,389001,340265,396823,396133,420552,338184,407429,341681,336933,405633,405634,396453,407943,422063,405418,405426,407187,407147,407144,407126,423779)) OR (`Index`=11 AND `ID`=387774) OR (`Index`=10 AND `ID`=387774) OR (`Index`=9 AND `ID` IN (387774,405832)) OR (`Index`=8 AND `ID` IN (387774,392147,405832)) OR (`Index`=7 AND `ID` IN (387774,392147,405832)) OR (`Index`=6 AND `ID` IN (387774,392147,405832,405634)) OR (`Index`=5 AND `ID` IN (387774,392147,405832,405027,405634)) OR (`Index`=4 AND `ID` IN (387774,392147,405832,405027,405634,405418)) OR (`Index`=3 AND `ID` IN (387774,392147,405832,336516,405027,387768,405634,405418,407147)) OR (`Index`=2 AND `ID` IN (387774,392147,419749,404612,404579,405832,336516,405027,387768,405634,405418,407147,407144,407126)) OR (`Index`=1 AND `ID` IN (387774,392147,419749,404612,404579,406456,337018,335416,398175,420189,405832,336516,405027,393733,387768,338536,341806,420552,405634,422063,405418,405426,407147,407144,407126));


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=46702 WHERE (`QuestID`=25945 AND `Idx`=0);

DELETE FROM `creature_template` WHERE `entry` IN (197279 /*Naleidea Rivergleam*/, 197288 /*Skarukaru*/, 197679 /*Shuga Blastcaps*/, 197680 /*Jack the Hammer*/, 197682 /*Enchantress Quinni*/, 193450 /*Archmage Khadgar*/, 189075 /*Seagull*/, 189091 /*Handhold*/, 184664 /*Baine Bloodhoof*/, 184665 /*Lor'themar Theron*/, 184666 /*Mayla Highmountain*/, 184671 /*First Arcanist Thalyssra*/, 184786 /*Scalecommander Cindrethresh*/, 184787 /*Boss Magor*/, 184793 /*Naleidea Rivergleam*/, 184795 /*Cataloger Coralie*/, 184796 /*Pathfinder Tacha*/, 184797 /*Lorewalker Lali*/, 184798 /*Chronicler Laz'Kini*/, 184800 /*Omi*/, 184801 /*Kenzou*/, 184808 /*Pathfinder Tacha*/, 184809 /*Cataloger Coralie*/, 184810 /*Boss Magor*/, 184812 /*Restless Explorer*/, 184813 /*Brave Researcher*/, 184814 /*Rugged Artisan*/, 184858 /*Scalecommander Cindrethresh*/, 198391 /*Dracthyr Belayer*/, 198411 /*Baine Bloodhoof*/, 198412 /*Mayla Highmountain*/, 198434 /*Dracthyr Evoker*/, 198442 /*Kodethi*/, 198444 /*Orgrimmar Grunt*/, 198461 /*Curious Dracthyr*/, 198462 /*Dracthyr Tinkerer*/, 198475 /*Scalecommander Emberthal*/, 198476 /*Kodethi*/, 198497 /*Nathenaseth*/, 189554 /*Expedition Provisioner*/, 198518 /*Zindaralash*/, 198536 /*Alsiaszar*/, 198537 /*Nothazoral*/, 198538 /*Krozuthar*/, 198539 /*Kozastran*/, 198540 /*Tharalash*/, 198541 /*Zurenoth*/, 198542 /*Destia*/, 198553 /*Razmu*/, 198557 /*Kalcifer*/, 198949 /*Chizus*/, 190239 /*Ebyssian*/, 199726 /*(Bunny) Sessile + Large AOI*/, 195357 /*Grok Thickfoot*/, 195385 /*Adventurous Tailor*/, 200166 /*Bronze Drake*/, 191286 /*Molten Eruption*/, 191387 /*Primal Stormling*/, 195899 /*Storm Huntress Suhrakka*/, 191592 /*[DND] Fire Storm*/, 187709 /*Handhold*/, 187710 /*Handhold*/, 187711 /*Handhold*/);
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `unit_class`, `WidgetSetID`, `WidgetSetUnitConditionID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `VerifiedBuild`) VALUES
(197279, 0, 0, 'Naleidea Rivergleam', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 16384, 3, 1, 0, 0, 225615, 46702), -- Naleidea Rivergleam
(197288, 0, 0, 'Skarukaru', '', 'Dragon Isles Zeppelin Master', NULL, NULL, 9, 0, 0, 1, 730, 6575, 0, 0, 7, 0, 50348096, 1, 1, 0, 0, 225624, 46702), -- Skarukaru
(197679, 0, 0, 'Shuga Blastcaps', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226029, 46702), -- Shuga Blastcaps
(197680, 0, 0, 'Jack the Hammer', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 10, 1, 0, 0, 226030, 46702), -- Jack the Hammer
(197682, 0, 0, 'Enchantress Quinni', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226032, 46702), -- Enchantress Quinni
(193450, 0, 0, 'Archmage Khadgar', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 1, 0, 7, 4, 16384, 100, 1, 0, 0, 221670, 46702), -- Archmage Khadgar
(189075, 0, 0, 'Seagull', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 6, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 0, 215761, 46702), -- Seagull
(189091, 0, 0, 'Handhold', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 654311430, 1, 1, 0, 0, 215777, 46702), -- Handhold
(184664, 0, 0, 'Baine Bloodhoof', '', 'High Chieftain', NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 7, 0, 16384, 30, 1, 0, 0, 208719, 46702), -- Baine Bloodhoof
(184665, 0, 0, 'Lor\'themar Theron', '', 'Regent Lord of Quel\'Thalas', NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 7, 0, 67125248, 30, 1, 0, 0, 208720, 46702), -- Lor'themar Theron
(184666, 0, 0, 'Mayla Highmountain', '', 'High Chieftain', NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 7, 0, 16384, 20, 1, 0, 0, 208721, 46702), -- Mayla Highmountain
(184671, 0, 0, 'First Arcanist Thalyssra', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 7, 0, 67108864, 30, 1, 0, 0, 208726, 46702), -- First Arcanist Thalyssra
(184786, 0, 0, 'Scalecommander Cindrethresh', '', 'Dark Talons', NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 16384, 10, 1, 0, 0, 208861, 46702), -- Scalecommander Cindrethresh
(184787, 0, 0, 'Boss Magor', '', 'Orgrimmar Artisans Guild', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 16384, 3, 1, 0, 0, 208863, 46702), -- Boss Magor
(184793, 0, 0, 'Naleidea Rivergleam', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 16384, 3, 1, 0, 0, 208874, 46702), -- Naleidea Rivergleam
(184795, 0, 0, 'Cataloger Coralie', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 16384, 1, 1, 0, 0, 208876, 46702), -- Cataloger Coralie
(184796, 0, 0, 'Pathfinder Tacha', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 16384, 1, 1, 0, 0, 208877, 46702), -- Pathfinder Tacha
(184797, 0, 0, 'Lorewalker Lali', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 208878, 46702), -- Lorewalker Lali
(184798, 0, 0, 'Chronicler Laz\'Kini', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 208879, 46702), -- Chronicler Laz'Kini
(184800, 0, 0, 'Omi', '', NULL, NULL, NULL, 9, 0, 0, 4, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 208881, 46702), -- Omi
(184801, 0, 0, 'Kenzou', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 208882, 46702), -- Kenzou
(184808, 0, 0, 'Pathfinder Tacha', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 208889, 46702), -- Pathfinder Tacha
(184809, 0, 0, 'Cataloger Coralie', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 208890, 46702), -- Cataloger Coralie
(184810, 0, 0, 'Boss Magor', '', 'Orgrimmar Artisans Guild', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 3, 1, 0, 0, 208891, 46702), -- Boss Magor
(184812, 0, 0, 'Restless Explorer', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 208893, 46702), -- Restless Explorer
(184813, 0, 0, 'Brave Researcher', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 208894, 46702), -- Brave Researcher
(184814, 0, 0, 'Rugged Artisan', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 208895, 46702), -- Rugged Artisan
(184858, 0, 0, 'Scalecommander Cindrethresh', '', 'Dark Talons', NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 16384, 10, 1, 0, 0, 208950, 46702), -- Scalecommander Cindrethresh
(198391, 0, 0, 'Dracthyr Belayer', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226767, 46702), -- Dracthyr Belayer
(198411, 0, 0, 'Baine Bloodhoof', '', 'High Chieftain', NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 7, 0, 16384, 30, 1, 0, 0, 226787, 46702), -- Baine Bloodhoof
(198412, 0, 0, 'Mayla Highmountain', '', 'High Chieftain', NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 7, 0, 0, 20, 1, 0, 0, 226788, 46702), -- Mayla Highmountain
(198434, 0, 0, 'Dracthyr Evoker', '', 'Dark Talons', NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226813, 46702), -- Dracthyr Evoker
(198442, 0, 0, 'Kodethi', '', 'Dark Talons', NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 16384, 1, 1, 0, 0, 226821, 46702), -- Kodethi
(198444, 0, 0, 'Orgrimmar Grunt', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1.5, 1, 0, 0, 226823, 46702), -- Orgrimmar Grunt
(198461, 0, 0, 'Curious Dracthyr', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226840, 46702), -- Curious Dracthyr
(198462, 0, 0, 'Dracthyr Tinkerer', '', 'Dark Talons', NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226841, 46702), -- Dracthyr Tinkerer
(198475, 0, 0, 'Scalecommander Emberthal', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 20, 1, 0, 0, 226854, 46702), -- Scalecommander Emberthal
(198476, 0, 0, 'Kodethi', '', 'Dark Talons', NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226855, 46702), -- Kodethi
(198497, 0, 0, 'Nathenaseth', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226876, 46702), -- Nathenaseth
(189554, 0, 0, 'Expedition Provisioner', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 216239, 46702), -- Expedition Provisioner
(198518, 0, 0, 'Zindaralash', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226897, 46702), -- Zindaralash
(198536, 0, 0, 'Alsiaszar', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226915, 46702), -- Alsiaszar
(198537, 0, 0, 'Nothazoral', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226916, 46702), -- Nothazoral
(198538, 0, 0, 'Krozuthar', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226917, 46702), -- Krozuthar
(198539, 0, 0, 'Kozastran', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226918, 46702), -- Kozastran
(198540, 0, 0, 'Tharalash', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226919, 46702), -- Tharalash
(198541, 0, 0, 'Zurenoth', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226920, 46702), -- Zurenoth
(198542, 0, 0, 'Destia', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 4096, 0, 1, 1, 0, 0, 226921, 46702), -- Destia
(198553, 0, 0, 'Razmu', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 4096, 0, 1, 1, 0, 0, 226932, 46702), -- Razmu
(198557, 0, 0, 'Kalcifer', '', NULL, NULL, 'openhandglow', 8, 0, 0, 1, 0, 0, 0, 2, 8, 0, 0, 1, 1, 0, 0, 226936, 46702), -- Kalcifer
(198949, 0, 0, 'Chizus', '', NULL, NULL, NULL, 6, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 227366, 46702), -- Chizus
(190239, 0, 0, 'Ebyssian', '', NULL, NULL, NULL, 8, 0, 0, 2, 0, 0, 1, 0, 2, 4, 16384, 25, 1, 0, 0, 216930, 46702), -- Ebyssian
(199726, 0, 0, '(Bunny) Sessile + Large AOI', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1073742848, 0, 1, 1, 0, 0, 228221, 46702), -- (Bunny) Sessile + Large AOI
(195357, 0, 0, 'Grok Thickfoot', '', 'Ambassador of the Artisan\'s Consortium', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 223597, 46702), -- Grok Thickfoot
(195385, 0, 0, 'Adventurous Tailor', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 223625, 46702), -- Adventurous Tailor
(200166, 0, 0, 'Bronze Drake', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 2, 1610612760, 22, 3, 1, 0, 197, 228719, 46702), -- Bronze Drake
(191286, 0, 0, 'Molten Eruption', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 0, 0, 1, 1, 0, 0, 219491, 46702), -- Molten Eruption
(191387, 0, 0, 'Primal Stormling', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 12, 0, 0, 0.200000002980232238, 1, 0, 0, 219592, 46702), -- Primal Stormling
(195899, 0, 0, 'Storm Huntress Suhrakka', '', 'Storm Vendor', NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 16384, 1, 1, 0, 0, 224160, 46702), -- Storm Huntress Suhrakka
(191592, 0, 0, '[DND] Fire Storm', '', NULL, NULL, NULL, 8, 0, 5147, 1, 0, 0, 0, 0, 10, 0, 0, 7, 1, 0, 0, 219797, 46702), -- [DND] Fire Storm
(187709, 0, 0, 'Handhold', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 654311430, 1, 1, 0, 0, 214377, 46702), -- Handhold
(187710, 0, 0, 'Handhold', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 654311430, 1, 1, 0, 0, 214378, 46702), -- Handhold
(187711, 0, 0, 'Handhold', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 654311430, 1, 1, 0, 0, 214379, 46702); -- Handhold

UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=44770; -- Tatepi
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=44779; -- Owato
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=44780; -- Isashi
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=44781; -- Opuno Ironhorn
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=44782; -- Rento
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=44783; -- Hiwahi Three-Feathers
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=44785; -- Miwana
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=44787; -- Auctioneer Sowata
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=44788; -- Lonto
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=35845; -- Dave's Industrial Light and Magic Bunny (Small)(Sessile)
UPDATE `creature_template` SET `VerifiedBuild`=46702 WHERE `entry` IN (161203, 54004, 54113, 134711, 18363, 18364, 18365, 18378, 18379, 18380, 148242, 49750, 148250, 148263, 148265, 143794, 5029, 175156, 5034, 40891, 9564, 121541, 40970, 40971, 50022, 197767, 50027, 50028, 50029, 197770, 197771, 50031, 50032, 50033, 50088, 32207, 135201, 135202, 72559, 9981, 148768, 148770, 9987, 95057, 148795, 130911, 180176, 54870, 95234, 23635, 167032, 5871, 5880, 176012, 158131, 158133, 158138, 158141, 14894, 5943, 113395, 176094, 176095, 149258, 6027, 180701, 140462, 68869, 149616, 149626, 46741, 51230, 11025, 158789, 145424, 69333, 114104, 42504, 46985, 145528, 145529, 6787, 65008, 42637, 42638, 65061, 65065, 150131, 65071, 65074, 65076, 65078, 145714, 6928, 109912, 6986, 6987, 141310, 47335, 47336, 42859, 20486, 20488, 20489, 20490, 20491, 20492, 20493, 47418, 163897, 60941, 141528, 2756, 43062, 11814, 34258, 34261, 43239, 11943, 3099, 3100, 3108, 3110, 3115, 3116, 3117, 3118, 3122, 3123, 141912, 3126, 3127, 141920, 52382, 3139, 3142, 70301, 3163, 34503, 3164, 34504, 3165, 3166, 3167, 3168, 3169, 3170, 3171, 3172, 3173, 3174, 3175, 12136, 34523, 3191, 3193, 3195, 3196, 3197, 3198, 3199, 3225, 3242, 3243, 3244, 3246, 3248, 3255, 3256, 3265, 3269, 3283, 3293, 3294, 34640, 34641, 3332, 3333, 3337, 3338, 66022, 3346, 3347, 3350, 3351, 133186, 3359, 3390, 3415, 173548, 3425, 34765, 3428, 133261, 3429, 3431, 16868, 133271, 16869, 66126, 3448, 137762, 7951, 12430, 3477, 3478, 3479, 3480, 3481, 3482, 3483, 3488, 3489, 3490, 16926, 133333, 39325, 169166, 39337, 155739, 52810, 52812, 39423, 3620, 39452, 39464, 43949, 3658, 3659, 93223, 133523, 3706, 160452, 39603, 53081, 44158, 44160, 44166, 44167, 62131, 3934, 3939, 71100, 62193, 165189, 174147, 57801, 44380, 26537, 4311, 49131);
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry` IN (188073, 188166, 188167, 188655, 188656); -- Worker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=161223; -- Torkhan
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44856; -- Perixa
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44865; -- Auctioneer Fazdran
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44866; -- Auctioneer Drezmit
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44867; -- Auctioneer Ralinza
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44868; -- Auctioneer Xifa
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44871; -- Grunt Grimful
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44872; -- Grunt Wabang
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=62821; -- Mystic Birdhat
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=62822; -- Cousin Slowhands
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44918; -- Drakma
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44919; -- Maztha
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44948; -- Wind Rider Cub
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=103159; -- Baby Winston
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44975; -- Old Umbehto
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44978; -- Sesebi
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45008; -- Batamsi
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry` IN (45015, 74228); -- Darkspear Headhunter
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45019; -- Berserker Zanga
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45023; -- Huntress Kuzari
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45025; -- Mimbubu
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45029; -- Witch Doctor Umbu
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=174863; -- Evie
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=174864; -- Wenha
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=174865; -- Playful Prowler
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=89830; -- Brew Vendor
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=304; -- Felsteed
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=305; -- White Stallion
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45081; -- Makavu
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45082; -- Auctioneer Ziji
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45086; -- Sijambi
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45093; -- Huju
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45094; -- Jin'diza
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45095; -- Night-Stalker Ku'nanji
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=49573; -- Karba Blazemaw
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry` IN (143622, 55659); -- Wild Imp
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45137; -- Shadow-Walker Zuru
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45138; -- Unjari Feltongue
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45139; -- Zirazi the Star-Gazer
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=49622; -- Shok Narnes
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=31720; -- Crewman Shubbscoop
UPDATE `creature_template` SET `VerifiedBuild`=46702 WHERE `entry`=63061; -- Narzak
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=31723; -- Crewman Barrowswizzle
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=63063; -- Shifty
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=31724; -- Crewman Paltertop
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=31725; -- Sky-Captain LaFontaine
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=31726; -- Grunt Gritch
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=31727; -- Grunt Grikee
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=63085; -- Snappy
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=63086; -- Matty
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=13842; -- Frostwolf Ambassador Rokhstrom
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=416; -- Imp
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=417; -- Felhunter
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45211; -- Fiznak
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=175050; -- Aneka Melae
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45230; -- Orgrimmar Brave
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=18377; -- Swift Red Wind Rider
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry` IN (4953, 61367); -- Water Snake
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=175084; -- Lando'sal
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=49737; -- Shazdar
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry` IN (49743, 62115); -- Dung Beetle
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=152743; -- Quizla Blastcaps
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45337; -- Tyelis
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45339; -- Dark Cleric Cecille
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45347; -- Brother Silverhallow
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry` IN (49837, 62114); -- Spiny Lizard
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=27489; -- Ray'ma
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=5188; -- Garyl
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=23128; -- Master Pyreanor
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=54472; -- Vaultkeeper Jazra
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=54473; -- Warpweaver Dushar
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=58960; -- Voidlord
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=58965; -- Wrathguard
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45540; -- Krenk Choplimb
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45545; -- "Jack" Pisarek Slamfix
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45546; -- Vizna Bangwrench
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45548; -- Kark Helmbreaker
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45549; -- Zido Helmbreaker
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45552; -- Pezik Lockfast
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45553; -- Denk Hordewell
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45563; -- Tinza Silvermug
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45565; -- Sanzi
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45566; -- Tanzi
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45567; -- Miragohn Mixmaster
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=179897; -- Ca'nees
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=41140; -- Burok
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45659; -- Auctioneer Fenk
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=54657; -- Doris Volanthius
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=180016; -- Spectral Feline
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=14375; -- Scout Stronghand
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=14376; -- Scout Manslayer
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=14377; -- Scout Tharr
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=63626; -- Varzok
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=14392; -- Overlord Natoj
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=166663; -- Steward
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=14451; -- Orphan Matron Battlewail
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=72654; -- General Purpose Stalker (RKS)
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=9988; -- Xon'cha
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=184600; -- Incubus
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45814; -- Orgrimmar Bruiser
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=50304; -- Captain Donald Adams
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=45830; -- Off-Duty Siegeworker
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=153285; -- Training Dummy
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=14498; -- Tosamina
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=14499; -- Horde Orphan
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=14505; -- Dreadsteed
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=50323; -- Frizzo Villamar
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=5606; -- Goma
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=5609; -- Zazo
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=5610; -- Kozish
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=5611; -- Barkeep Morag
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=5613; -- Doyo'da
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=5614; -- Sarok
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=5639; -- Craven Drok
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=5640; -- Keldran
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=32520; -- Totally Generic Bunny (All Phase)
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=50477; -- Champion Uru'zin
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=50488; -- Stone Guard Nargol
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=37072; -- Rogg
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=19175; -- Orc Commoner
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=19176; -- Tauren Commoner
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=19177; -- Troll Commoner
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=14720; -- High Overlord Saurfang
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=5774; -- Riding Wolf
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.60000002384185791, `VerifiedBuild`=46702 WHERE `entry`=72934; -- Trained Coldsnout
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=32641; -- Drix Blackwrench
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=32642; -- Mojodishu
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=72939; -- Terga Earthbreaker
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46078; -- Boss Mida
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46080; -- Kazit
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46082; -- Engineer Niff
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=41621; -- Commander Thorak
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=5811; -- Kamari
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=5816; -- Katis
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=5817; -- Shimra
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46140; -- Silvermoon Delegation Guardian
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46142; -- Forsaken Delegation Deathguard
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=5875; -- Mordak Darkfist
UPDATE `creature_template` SET `VerifiedBuild`=46702 WHERE `entry`=46181; -- Enchanter Farendin
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=5892; -- Searn Firewarder
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry` IN (1420, 61369); -- Toad
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=5909; -- Cazul
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=5910; -- Zankaja
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=28302; -- Acherus Deathcharger
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=14872; -- Trok
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=14873; -- Okla
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=14881; -- Spider
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry` IN (5951, 61751); -- Hare
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=32823; -- Bountiful Table
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=32824; -- [PH] Pilgrim's Bounty Table - Turkey
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=32825; -- [PH] Pilgrim's Bounty Table - Yams
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=32827; -- [PH] Pilgrim's Bounty Table - Cranberry Sauce
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=32829; -- [PH] Pilgrim's Bounty Table - Pie
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=32830; -- Food Holder
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=32831; -- [PH] Pilgrim's Bounty Table - Stuffing
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=32839; -- Sturdy Plate
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=32840; -- Plate Holder
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=73151; -- Deathguard Netharian
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=149270; -- Orgrimmar Guardian Mage
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=149279; -- Stoki Wonderwand
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=171689; -- Nathoka Bloodfang
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=171691; -- Alpheus Cain
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46357; -- Gonto
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46358; -- Lutah
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46359; -- Punra
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=50870; -- Baxter
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=176261; -- Barra the Quick
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=10685; -- Swine
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46512; -- Naros
UPDATE `creature_template` SET `VerifiedBuild`=46702 WHERE `entry`=15186; -- Murky
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=15188; -- Cenarion Emissary Blackhoof
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=19668; -- Shadowfiend
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=149522; -- Orgrimmar Peon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=149523; -- Zan'chi
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46555; -- Gunra
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46556; -- Jamus'Vaz
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46572; -- Goram
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=68979; -- Voidbinder Zorlan
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=77936; -- Greater Storm Elemental
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46618; -- Fibi
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46619; -- Binzella
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46620; -- Vink
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46621; -- Pank
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46622; -- Vuvanzi
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=1860; -- Voidwalker
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46642; -- Innkeeper Nufa
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=46667; -- Blademaster Ronakada
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=10880; -- Warcaller Gorlach
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46708; -- Suja
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46709; -- Arugi
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=19850; -- Councilor Arial D'Anastasis
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46716; -- Nerog
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=51195; -- Kor'kron Annihilator
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46718; -- Moraka
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46742; -- Brunda
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46754; -- Goblin Trike
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=46755; -- Goblin Turbo-Trike
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=6466; -- Gamon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=78116; -- Water Elemental
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=15476; -- Scorpid
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=11017; -- Roxxik
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=6566; -- Estelle Gendry
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=28960; -- Totally Generic Bunny (JSB)
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=51346; -- Orgrimmar Wind Rider
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=11066; -- Jhag
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=20029; -- Thalassian Warhorse
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=20030; -- Thalassian Charger
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=73780; -- Prideful Gladiator's Cloud Serpent
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=42506; -- Marogg
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=42548; -- Muddy Crawfish
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=29143; -- Bebri Coifcurl
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=65011; -- Albino Riding Crane
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=42709; -- Gravy
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=172558; -- Eyla Pathleader
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=6929; -- Innkeeper Gryshka
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=181535; -- Murkastrasza
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=47233; -- Gordul
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=47246; -- Ureda
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=47247; -- Marud
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=47248; -- Gija
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=47253; -- Rundok
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=47254; -- Gizput
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=7010; -- Zilzibin Drumlore
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=24924; -- Sky-Captain Bomblast
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=24926; -- Chief Officer Brassbolt
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=24927; -- Navigator Sparksizzle
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=24929; -- Crewman Crosswire
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=24930; -- Crewman Gazzlegear
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=24931; -- Crewman Fastwrench
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=24934; -- Snack-O-Matic IV
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=24935; -- Vend-O-Tron D-Luxe
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=47321; -- Zugra Flamefist
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=7088; -- Thuwd
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry` IN (2620, 61141); -- Prairie Dog
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=25075; -- Zeppelin Controls
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=25080; -- Grunt Umgor
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=25081; -- Grunt Ounda
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=52032; -- Sinzi Sparkscribe
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=52033; -- Rogoc
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=52034; -- Togar
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=52036; -- Galra
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=47571; -- Belloc Brightblade
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry` IN (168459, 3296); -- Orgrimmar Grunt
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=69977; -- Blood Guard Zar'shi
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=69978; -- Sergeant Thunderhorn
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=7311; -- Uthel'nay
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=2855; -- Snang
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=2857; -- Thund
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=47663; -- Scout Obrok
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=168551; -- Tamanji
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=168553; -- Telotha Pinegrove
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=34259; -- Caravan Kodo
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=52170; -- Gizzik Oregrab
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=168596; -- Gormok Ogrefist
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=168597; -- Avaros Dawnglaive
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=168598; -- Thega Graveblade
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=168619; -- Huinli Wingpaw
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=168621; -- Martin Goodchilde
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=168623; -- Kazak Darkscream
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=168626; -- Feenix Arcshine
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=168628; -- Hretar Riverspeaker
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=38821; -- Dave's Industrial Light and Magic Bunny (Medium)(Sessile)
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=43331; -- Golden Stonefish
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=29929; -- Mechano-Hog
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3084; -- Bluffwatcher
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=7562; -- Brown Snake
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=7565; -- Black Kingsnake
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=7567; -- Crimson Snake
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry` IN (61325, 3300); -- Adder
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3144; -- Eitrigg
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=21055; -- Golden Dragonhawk Hatchling
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3189; -- Kor'ghan
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46702 WHERE `entry`=34545; -- Razormane Frenzy
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=43499; -- Consecration
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3216; -- Arnak Fireblade
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=115146; -- Boneshard
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=115149; -- Soulbroken Whelpling
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46702 WHERE `entry`=3271; -- Razormane Mystic
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3310; -- Doras
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3312; -- Olvia
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3313; -- Trak'gen
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3314; -- Urtharo
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=34654; -- Bountiful Feast Hostess
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3315; -- Tor'phan
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3316; -- Handor
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3317; -- Ollanus
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3319; -- Sana
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3321; -- Morgum
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=3322; -- Kaja
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3323; -- Horthus
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3327; -- Gest
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3328; -- Ormok
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3329; -- Kor'jus
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3330; -- Muragus
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3331; -- Kareth
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3334; -- Rekkul
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3335; -- Hagrus
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=34679; -- Francis Eaton
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3342; -- Shan'ti
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3345; -- Godan
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=34685; -- Dalni Tallgrass
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=3353; -- Grezz Ragefist
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=3354; -- Sorek
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=115286; -- Crysa
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=146626; -- Legionnaire Voladis
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3363; -- Magar
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3364; -- Borya
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3365; -- Karolek
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3366; -- Tamar
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3367; -- Felika
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3368; -- Borstan
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3369; -- Gotri
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3370; -- Urtrun Clanbringer
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3371; -- Tamaro
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3372; -- Sarlek
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=34713; -- Ondani Greatmill
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=34715; -- Sky-Captain "Dusty" Blastnut
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=34717; -- Crewman Pipewrench
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=34718; -- Crewman Deadbolt
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=34719; -- Crewman Grit
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=34721; -- Chief Officer Ograh
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=34723; -- Watcher Tolwe
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=34730; -- Navigator Zippik
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3399; -- Zamja
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3400; -- Xen'to
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=3403; -- Sian'tsu
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3404; -- Jandi
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3405; -- Zeal'aya
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3412; -- Nogg
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3413; -- Sovik
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=21354; -- Fiery Warhorse
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=66144; -- Mumtar
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=66145; -- Spike
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=34812; -- The Turkey Chair
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=16909; -- Niko
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=34819; -- The Stuffing Chair
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=34822; -- The Pie Chair
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=34823; -- The Cranberry Chair
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=34824; -- The Sweet Potato Chair
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3501; -- Horde Guard
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=52809; -- Blax Bottlerocket
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=93143; -- Cinder Pup
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=3615; -- Devrak
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=34955; -- Karg Skullgore
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=88701; -- Grunt Meena
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=88702; -- Grunt Nolo
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=88703; -- Grunt Arhung
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=88704; -- Gran'dul
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=88705; -- Kranosh
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=88706; -- Murgul
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=17098; -- Ambassador Dawnsinger
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=35068; -- Gotura Fourwinds
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=48510; -- Kall Worthaton
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=26125; -- Risen Ghoul
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=48513; -- Revi Ramrod
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=30611; -- Greela "The Grunt" Crankchain
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=17252; -- Felguard
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=160526; -- Neri Sharpfin
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=160527; -- Mak
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=160528; -- Poen Gillbrack
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=160529; -- Vim Brineheart
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=160530; -- Friend Pronk
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=12789; -- Blood Guard Hini'wana
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=12790; -- Advisor Willington
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=12791; -- Chieftain Earthbind
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=12793; -- Brave Stonehide
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=12794; -- Stone Guard Zarg
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=12795; -- First Sergeant Hola'mahi
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=12796; -- Raider Bork
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=12797; -- Grunt Korf
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=30706; -- Jo'mah
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=12798; -- Grunt Bek'rah
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=30723; -- Xantili
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=62116; -- Creepy Crawly
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=8404; -- Xan'tish
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=62129; -- Cheetah Cub
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=12922; -- Imp Minion
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=62194; -- Ukos Bloodwhisper
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=62195; -- Shang'gok
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=62196; -- Flekky Nox
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=62197; -- Zazzle
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=62198; -- Omakka Wolfbrother
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=62199; -- Gogu
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=62200; -- Sasi
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=35342; -- Bountiful Barrel
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=98035; -- Dreadstalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=35364; -- Slahtz
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=174164; -- Lathysra Goldenstar
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44338; -- White Chicken
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=4047; -- Zor Lonetree
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=75685; -- Razor Hill Grunt
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=75686; -- Darkspear Guardian
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=75687; -- Thunder Bluff Protector
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=116077; -- Swoop
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=116078; -- Buzz
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=116079; -- Cherry
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=4166; -- Gazelle
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=151937; -- Portal Controller
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=187758; -- Zaa'je
UPDATE `creature_template` SET `VerifiedBuild`=46702 WHERE `entry`=62445; -- Ji Firepaw
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=31146; -- Raider's Training Dummy
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44723; -- Nahu Ragehoof
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=187987; -- Shiri's Shipment
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=58155; -- Rugok
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44725; -- Sunwalker Atohmo
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=44726; -- Shalla Whiteleaf
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44735; -- Seer Liwatha
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=44740; -- Sahi Cloudsinger
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=44743; -- Nohi Plainswalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=44745; -- Sunwalker Atohmo's Kodo
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=13417; -- Sagorne Creststrider

DELETE FROM `creature_template_model` WHERE (`Idx`=1 AND `CreatureID` IN (191286,184814,184813,198476,189554,199726,198444,198442,198434,198461,198462,189091,184812)) OR (`Idx`=0 AND `CreatureID` IN (191286,191592,198949,193450,198412,198411,197288,195899,195385,195357,184814,184810,184809,184808,189075,184813,198476,198475,197279,189554,184858,184671,184665,199726,198444,198442,198434,198537,198461,184798,184797,184795,198539,198518,198536,198540,184787,200166,198538,197682,197679,198462,197680,198557,198553,198542,189091,187711,187710,187709,198391,184801,184800,184796,190239,184793,184786,184666,184664,184812,198541,191387,198497)) OR (`Idx`=9 AND `CreatureID` IN (184814,184812)) OR (`Idx`=8 AND `CreatureID` IN (184814,189554,184812)) OR (`Idx`=7 AND `CreatureID` IN (184814,184813,189554,184812)) OR (`Idx`=6 AND `CreatureID` IN (184814,184813,189554,184812)) OR (`Idx`=5 AND `CreatureID` IN (184814,184813,189554,198444,184812)) OR (`Idx`=4 AND `CreatureID` IN (184814,184813,189554,198444,184812)) OR (`Idx`=3 AND `CreatureID` IN (184814,184813,189554,198444,198434,198462,189091,184812)) OR (`Idx`=2 AND `CreatureID` IN (184814,184813,189554,198444,198434,198462,189091,184812)) OR (`Idx`=11 AND `CreatureID`=184812) OR (`Idx`=10 AND `CreatureID`=184812);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(191286, 1, 21955, 1, 0, 46702), -- Molten Eruption
(191286, 0, 11686, 1, 1, 46702), -- Molten Eruption
(191592, 0, 106373, 2, 1, 46702), -- [DND] Fire Storm
(198949, 0, 110481, 1, 1, 46702), -- Chizus
(193450, 0, 110387, 1, 1, 46702), -- Archmage Khadgar
(198412, 0, 63703, 1, 1, 46702), -- Mayla Highmountain
(198411, 0, 30272, 1, 1, 46702), -- Baine Bloodhoof
(197288, 0, 109493, 1, 1, 46702), -- Skarukaru
(195899, 0, 72325, 1, 1, 46702), -- Storm Huntress Suhrakka
(195385, 0, 108885, 1, 1, 46702), -- Adventurous Tailor
(195357, 0, 108876, 1, 1, 46702), -- Grok Thickfoot
(184814, 9, 110214, 1, 1, 46702), -- Rugged Artisan
(184814, 8, 110219, 1, 1, 46702), -- Rugged Artisan
(184814, 7, 110179, 1, 1, 46702), -- Rugged Artisan
(184814, 6, 110166, 1, 1, 46702), -- Rugged Artisan
(184814, 5, 108861, 1, 1, 46702), -- Rugged Artisan
(184814, 4, 108858, 1, 1, 46702), -- Rugged Artisan
(184814, 3, 110194, 1, 1, 46702), -- Rugged Artisan
(184814, 2, 110209, 1, 1, 46702), -- Rugged Artisan
(184814, 1, 108814, 1, 1, 46702), -- Rugged Artisan
(184814, 0, 108799, 1, 1, 46702), -- Rugged Artisan
(184810, 0, 99812, 1, 1, 46702), -- Boss Magor
(184809, 0, 106349, 1, 1, 46702), -- Cataloger Coralie
(184808, 0, 106352, 1, 1, 46702), -- Pathfinder Tacha
(189075, 0, 103903, 1, 1, 46702), -- Seagull
(184813, 7, 108868, 1, 1, 46702), -- Brave Researcher
(184813, 6, 108869, 1, 1, 46702), -- Brave Researcher
(184813, 5, 110229, 1, 1, 46702), -- Brave Researcher
(184813, 4, 110225, 1, 1, 46702), -- Brave Researcher
(184813, 3, 110227, 1, 1, 46702), -- Brave Researcher
(184813, 2, 108862, 1, 1, 46702), -- Brave Researcher
(184813, 1, 108870, 1, 1, 46702), -- Brave Researcher
(184813, 0, 108867, 1, 1, 46702), -- Brave Researcher
(198476, 1, 104821, 1, 1, 46702), -- Kodethi
(198476, 0, 102030, 1, 0, 46702), -- Kodethi
(198475, 0, 102031, 1, 1, 46702), -- Scalecommander Emberthal
(197279, 0, 105169, 1, 1, 46702), -- Naleidea Rivergleam
(189554, 8, 110326, 1, 1, 46702), -- Expedition Provisioner
(189554, 7, 110327, 1, 1, 46702), -- Expedition Provisioner
(189554, 6, 110305, 1, 1, 46702), -- Expedition Provisioner
(189554, 5, 110307, 1, 1, 46702), -- Expedition Provisioner
(189554, 4, 110311, 1, 1, 46702), -- Expedition Provisioner
(189554, 3, 110303, 1, 1, 46702), -- Expedition Provisioner
(189554, 2, 110304, 1, 1, 46702), -- Expedition Provisioner
(189554, 1, 110272, 1, 1, 46702), -- Expedition Provisioner
(189554, 0, 110270, 1, 1, 46702), -- Expedition Provisioner
(184858, 0, 102033, 1, 1, 46702), -- Scalecommander Cindrethresh
(184671, 0, 67345, 1, 1, 46702), -- First Arcanist Thalyssra
(184665, 0, 17122, 1, 1, 46702), -- Lor'themar Theron
(199726, 1, 11686, 1, 1, 46702), -- (Bunny) Sessile + Large AOI
(199726, 0, 14473, 1, 0, 46702), -- (Bunny) Sessile + Large AOI
(198444, 5, 99453, 1, 1, 46702), -- Orgrimmar Grunt
(198444, 4, 99452, 1, 1, 46702), -- Orgrimmar Grunt
(198444, 3, 99451, 1, 1, 46702), -- Orgrimmar Grunt
(198444, 2, 4260, 1, 1, 46702), -- Orgrimmar Grunt
(198444, 1, 4601, 1, 1, 46702), -- Orgrimmar Grunt
(198444, 0, 4259, 1, 1, 46702), -- Orgrimmar Grunt
(198442, 1, 104821, 1, 1, 46702), -- Kodethi
(198442, 0, 102030, 1, 0, 46702), -- Kodethi
(198434, 3, 104846, 1, 1, 46702), -- Dracthyr Evoker
(198434, 2, 104845, 1, 1, 46702), -- Dracthyr Evoker
(198434, 1, 104844, 1, 1, 46702), -- Dracthyr Evoker
(198434, 0, 104843, 1, 1, 46702), -- Dracthyr Evoker
(198537, 0, 110182, 1, 1, 46702), -- Nothazoral
(198461, 1, 108205, 1, 1, 46702), -- Curious Dracthyr
(198461, 0, 104834, 1, 1, 46702), -- Curious Dracthyr
(184798, 0, 81933, 1, 1, 46702), -- Chronicler Laz'Kini
(184797, 0, 42350, 1, 1, 46702), -- Lorewalker Lali
(184795, 0, 106349, 1, 1, 46702), -- Cataloger Coralie
(198539, 0, 110185, 1, 1, 46702), -- Kozastran
(198518, 0, 110165, 1, 1, 46702), -- Zindaralash
(198536, 0, 110181, 1, 1, 46702), -- Alsiaszar
(198540, 0, 110186, 1, 1, 46702), -- Tharalash
(184787, 0, 99812, 1, 1, 46702), -- Boss Magor
(200166, 0, 18164, 1, 1, 46702), -- Bronze Drake
(198538, 0, 110184, 1, 1, 46702), -- Krozuthar
(197682, 0, 81830, 1, 1, 46702), -- Enchantress Quinni
(197679, 0, 82193, 1, 1, 46702), -- Shuga Blastcaps
(198462, 3, 107472, 1, 1, 46702), -- Dracthyr Tinkerer
(198462, 2, 107469, 1, 1, 46702), -- Dracthyr Tinkerer
(198462, 1, 107471, 1, 1, 46702), -- Dracthyr Tinkerer
(198462, 0, 107531, 1, 1, 46702), -- Dracthyr Tinkerer
(197680, 0, 30262, 1.5, 1, 46702), -- Jack the Hammer
(198557, 0, 87564, 1, 1, 46702), -- Kalcifer
(198553, 0, 110191, 1, 1, 46702), -- Razmu
(198542, 0, 110183, 1, 1, 46702), -- Destia
(189091, 3, 105597, 1, 0, 46702), -- Handhold
(189091, 2, 105598, 1, 0, 46702), -- Handhold
(189091, 1, 101649, 1, 1, 46702), -- Handhold
(189091, 0, 105596, 1, 0, 46702), -- Handhold
(187711, 0, 105598, 1, 1, 46702), -- Handhold
(187710, 0, 105596, 1, 1, 46702), -- Handhold
(187709, 0, 101649, 1, 1, 46702), -- Handhold
(198391, 0, 108913, 1, 1, 46702), -- Dracthyr Belayer
(184801, 0, 80609, 1, 1, 46702), -- Kenzou
(184800, 0, 80608, 1, 1, 46702), -- Omi
(184796, 0, 106352, 1, 1, 46702), -- Pathfinder Tacha
(190239, 0, 63690, 1, 1, 46702), -- Ebyssian
(184793, 0, 105169, 1, 1, 46702), -- Naleidea Rivergleam
(184786, 0, 102033, 1, 1, 46702), -- Scalecommander Cindrethresh
(184666, 0, 63703, 1, 1, 46702), -- Mayla Highmountain
(184664, 0, 30272, 1, 1, 46702), -- Baine Bloodhoof
(184812, 11, 108776, 1, 1, 46702), -- Restless Explorer
(184812, 10, 108775, 1, 1, 46702), -- Restless Explorer
(184812, 9, 108791, 1, 1, 46702), -- Restless Explorer
(184812, 8, 108795, 1, 1, 46702), -- Restless Explorer
(184812, 7, 108797, 1, 1, 46702), -- Restless Explorer
(184812, 6, 108796, 1, 1, 46702), -- Restless Explorer
(184812, 5, 108780, 1, 1, 46702), -- Restless Explorer
(184812, 4, 108779, 1, 1, 46702), -- Restless Explorer
(184812, 3, 108801, 1, 1, 46702), -- Restless Explorer
(184812, 2, 108798, 1, 1, 46702), -- Restless Explorer
(184812, 1, 108804, 1, 1, 46702), -- Restless Explorer
(184812, 0, 108802, 1, 1, 46702), -- Restless Explorer
(198541, 0, 110187, 1, 1, 46702), -- Zurenoth
(191387, 0, 108961, 1, 1, 46702), -- Primal Stormling
(198497, 0, 110138, 1, 1, 46702); -- Nathenaseth

UPDATE `creature_template_model` SET `VerifiedBuild`=46702 WHERE (`Idx`=0 AND `CreatureID` IN (77936,39603,66145,66144,66126,3193,43331,39464,39325,39452,39337,34261,3337,43949,34259,34258,55659,163897,98035,19668,34545,3271,4166,3489,50031,50022,3659,3658,3480,3338,50032,50027,50029,50028,3448,3429,50033,5871,3934,3615,9981,5774,3490,3482,3481,3431,3390,3428,3488,3479,34523,3483,3478,3477,3243,3415,62129,3939,3265,43499,3269,3242,14894,14872,34504,34503,3501,14873,44167,3246,44166,116079,116078,116077,115286,50870,3256,3244,34641,62131,34640,61141,3283,3255,2620,3425,3248,3110,5640,45095,45086,45081,45029,9988,53081,45094,45093,45082,45008,11814,8404,7567,7565,7562,3400,3399,45139,44978,44975,7311,45211,45138,45137,30723,30706,16926,16909,174864,174863,45546,45545,45540,45025,45023,45019,45015,45549,52170,52033,174865,180176,140462,46080,46078,45830,45659,45567,45566,45565,45548,45347,30611,158141,158138,158133,158131,133523,63086,63085,48510,46082,45552,29929,175050,172558,54657,52036,46755,45814,167032,133261,69977,48513,45563,45553,12795,12794,12793,69978,19850,12797,12791,12790,12789,146626,12798,24930,24926,25080,25081,24927,24931,24929,24924,180016,35342,34713,34685,34679,42504,10685,3122,3293,40971,40970,3191,75687,11943,6787,12430,3171,3170,3620,3139,6928,34654,75686,34824,34823,34822,34819,34812,32840,32830,32823,41140,39423,32839,32831,32829,32827,32825,32824,3706,3173,3169,3164,3142,47418,9987,6027,5943,5880,3294,3172,3168,3167,63063,63061,44380,11025,3175,3174,3166,3165,75685,3163,3099,3195,3199,3196,1860,3115,3116,3117,3118,3126,184600,160528,160527,160529,160526,3108,160530,41621,103159,78116,17252,180701,143622,3100,61325,3127,3123,175156,3198,3197,3300,4311,62116,5951,115146,58960,71100,40891,61751,42859,155739,150131,149626,149616,148795,148770,148768,148265,148263,145714,44856,151937,149523,149279,149258,50304,6566,166663,173548,149270,148250,149522,148242,133186,168459,62195,14392,3313,143794,417,5817,416,137762,135202,88702,88701,6929,6466,5614,5613,5611,5610,5609,5606,44871,44867,44866,181535,72654,44868,44865,62194,68979,54472,57801,54473,168619,174164,171691,168626,168598,168623,168551,72934,65065,65061,62445,49573,46985,35364,34955,16869,16868,13842,5034,5029,3354,3353,2756,171689,169166,168628,168621,168597,168596,168553,65076,46667,12922,70301,69333,68869,66022,65078,65074,65071,65008,43239,15186,7951,3333,3332,175084,42709,176261,46642,42638,62193,35845,161203,160452,158789,46619,46618,46622,46621,46620,3359,31146,3347,153285,3315,7088,6986,3364,3363,3351,3350,3225,2855,62197,62196,6987,5811,3366,3365,3321,3317,3316,23635,10880,52812,52809,62200,62199,61367,52810,14451,3369,3367,152743,49737,42506,14498,3368,46709,46708,14499,11017,3413,3412,2857,62198,52032,46742,46741,46718,46716,46181,7010,3372,3371,3346,3345,11066,109912,95057,63626,15476,14881,114104,113395,95234,12136,21055,165189,5639,115149,5910,3405,3404,72939,44785,44783,47663,58965,51230,47336,47335,47321,50088,176012,44788,44782,44780,44779,44770,13417,5892,3403,176095,176094,61369,54113,54004,44787,44781,19176,15188,3322,174147,161223,141920,141912,133271,43062,4953,88706,5875,47254,42548,44740,88705,1420,44745,5909,88704,44726,141528,130911,50488,50477,44743,44735,44725,29143,9564,45230,44723,3335,5816,3334,3330,3216,179897,50323,44948,44919,44918,20493,20492,20488,20486,3310,3189,3329,141310,93223,47253,47247,47233,20491,20490,20489,3328,3327,187987,44160,26537,19177,34730,34721,34719,34718,24935,24934,3084,47246,34765,34723,34717,34715,73151,12796,3331,31727,31725,31724,25075,31726,31723,31720,47248,93143,42637,47571,46359,46555,46556,35068,37072,5188,14720,28960,188073,145529,54870,14377,188166,89830,49622,49750,62822,3370,62115,145424,188656,32641,3319,45339,134711,188167,197770,17098,197767,46142,3342,19175,14375,58155,3323,51195,62114,72559,88703,26125,32642,135201,27489,187758,52382,44338,44158,49743,52034,46358,49131,197771,38821,32520,23128,14376,3144,145528,44872,3312,46140,46572,46512,3296,74228,133333,46357,62821,45337,49837,51346,3314,188655,121541,4047,73780,305,65011,46754,32207,28302,20029,20030,18379,18380,18378,18377,18365,18364,18363,14505,60941,21354,304)) OR (`Idx`=1 AND `CreatureID` IN (39337,34261,55659,98035,4166,5774,3501,34641,3283,3248,45015,45830,158141,158138,158133,158131,45814,42504,75687,75686,34824,34823,34822,34819,34812,32831,32829,32827,32825,32824,75685,3195,3199,3196,78116,180701,143622,61325,3198,3197,3300,71100,40891,42859,155739,149626,149616,148795,148770,148768,148265,148263,149258,173548,149270,149522,133186,168459,72654,72934,46985,65008,35845,61367,52810,14499,109912,15476,14881,113395,51230,50088,19176,133271,4953,42548,45230,93223,44160,19177,3084,28960,89830,62115,46142,19175,62114,72559,26125,44158,49743,38821,32520,46140,3296,74228,133333,49837,51346)) OR (`Idx`=3 AND `CreatureID` IN (34261,5774,3501,3283,45015,45830,158141,158138,158133,158131,45814,75686,75685,71100,40891,149616,133186,168459,65008,61367,14499,15476,51230,133271,4953,42548,45230,44160,3084,89830,62115,46142,62114,26125,44158,49743,46140,3296,74228,49837,51346)) OR (`Idx`=2 AND `CreatureID` IN (34261,55659,98035,4166,5774,3501,3283,3248,45015,45830,158141,158138,158133,158131,45814,42504,75686,75685,143622,61325,3300,71100,40891,42859,149616,133186,168459,65008,61367,14499,109912,15476,51230,133271,4953,42548,45230,44160,3084,89830,62115,46142,62114,26125,44158,49743,46140,3296,74228,49837,51346)) OR (`Idx`=5 AND `CreatureID` IN (45230,46140,3296)) OR (`Idx`=4 AND `CreatureID` IN (45230,46140,3296)) OR (`Idx`=7 AND `CreatureID`=46140) OR (`Idx`=6 AND `CreatureID`=46140);


UPDATE `creature_questitem` SET `VerifiedBuild`=46702 WHERE (`Idx`=0 AND `CreatureEntry` IN (43331,39452,34545,3271,3243,3415,3265,3269,3242,34503,44167,3246,44166,3256,3244,34640,3283,3255,3425,3110,42504,3195,3199,3196,3108,3127,3198,3197,42859)) OR (`Idx`=1 AND `CreatureEntry` IN (3271,3415,3269,3242,44167,3246,44166,3256,3244,3283,3255,3195,3199,3196,3198,3197)) OR (`Idx`=2 AND `CreatureEntry` IN (3256,3199));

DELETE FROM `gameobject_template` WHERE `entry` IN (382174 /*Tablet*/, 382173 /*Tablet*/, 382172 /*Idol*/, 382171 /*Jewels*/, 382170 /*Scrolls*/, 382169 /*Books*/, 382167 /*Scroll*/, 382165 /*Scroll*/, 382164 /*Scroll*/, 382163 /*Scroll*/, 382162 /*Lamp*/, 384511 /*Campfire*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(382174, 5, 47840, 'Tablet', '', '', '', 0.60000002384185791, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- Tablet
(382173, 5, 46283, 'Tablet', '', '', '', 0.60000002384185791, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- Tablet
(382172, 5, 42336, 'Idol', '', '', '', 0.100000001490116119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- Idol
(382171, 5, 34985, 'Jewels', '', '', '', 0.60000002384185791, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- Jewels
(382170, 5, 35102, 'Scrolls', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- Scrolls
(382169, 5, 36367, 'Books', '', '', '', 0.60000002384185791, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- Books
(382167, 5, 77697, 'Scroll', '', '', '', 0.60000002384185791, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- Scroll
(382165, 5, 12800, 'Scroll', '', '', '', 0.800000011920928955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- Scroll
(382164, 5, 11756, 'Scroll', '', '', '', 0.319999992847442626, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- Scroll
(382163, 5, 77696, 'Scroll', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- Scroll
(382162, 5, 12323, 'Lamp', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46702), -- Lamp
(384511, 8, 13582, 'Campfire', '', '', '', 1.5, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46702); -- Campfire

UPDATE `gameobject_template` SET `VerifiedBuild`=46702 WHERE `entry` IN (180663, 23570, 340644, 58369, 20808, 123328, 143982, 4166, 195118, 3727, 3729, 174849, 3725, 58389, 58388, 204732, 204731, 202819, 205371, 205230, 204728, 281107, 268690, 251028, 204625, 207101, 204624, 298892, 273293, 273286, 243460, 243459, 203977, 339344, 307614, 273300, 243462, 243461, 206709, 206708, 207099, 350063, 278281, 207100, 204730, 204729, 204627, 204620, 207098, 207097, 207096, 207094, 204626, 203979, 179707, 204710, 204623, 204177, 195199, 195196, 195194, 195192, 195191, 195200, 195198, 195197, 195195, 204176, 204190, 252071, 204187, 204166, 204165, 204164, 203855, 55615, 203854, 203853, 106336, 106327, 106325, 18076, 18075, 3719, 221519, 149038, 195664, 55250, 31578, 195164, 180353, 179968, 174859, 31579, 3850, 3849, 3848, 143981, 278457, 207207, 106335, 106326, 31580, 31577, 31575, 3851, 3847, 3658, 31572, 31573, 203851, 203852, 3290, 1617, 191083, 1618, 204360, 204169, 196475, 204168, 204170, 204167, 204171, 207889, 1731, 1619, 204173, 204172, 204174, 203471, 204175, 152614, 204193, 204658, 204646, 204645, 332214, 323853, 323855, 323852, 323851, 323850, 323849, 204662, 204651, 204650, 355229, 323854, 204664, 204663, 204647, 204212, 179881, 204213, 204202, 204163, 204215, 269949, 207646, 204703, 351923, 351922, 349788, 204683, 204705, 349789, 204682, 204714, 204713, 207640, 207637, 187376, 204636, 204701, 205108, 204702, 339239, 207638, 207636, 204685, 204684, 204638, 204637, 205142, 205109, 204635, 175080, 204618, 204615, 204617, 204616, 204614, 204619, 202804, 195222, 204941, 209050, 209049, 204940, 204613, 204612, 202805, 202802, 209045, 208054, 207631, 204708, 204707, 204695, 204678, 202817, 202816, 202803, 207633, 204706, 204694, 204693, 204681, 204680, 204679, 204939, 204698, 204696, 202800, 186722, 208534, 207630, 204938, 202815, 202801, 202798, 207632, 204937, 204936, 204204, 204203, 202799, 202810, 202809, 202808, 197261, 193981, 35591, 207634, 204699, 237942, 197260, 197259, 197315, 197310, 197207, 206734, 206733, 207150, 207149, 207148, 3301, 207687, 207635, 206595, 206508, 205091, 205090, 204689, 50805, 50804, 50803, 204700, 204726, 206740, 204727, 204721, 197309, 197311, 197313, 197314, 197307, 204688, 376258, 207147, 207146, 205056, 204720, 204719, 206730, 212212, 206548, 206547, 206529, 197322, 197312, 197286, 197285, 105576, 266354, 206732, 204723, 204722, 197278, 243296, 243298, 197287, 243332, 197284, 206549, 206546, 206539, 206538, 204724, 204633, 197323, 197280, 197276, 197257, 254068, 253169, 245923, 243294, 206545, 197279, 252281, 243333, 243324, 243301, 243295, 210181, 207414, 206735, 206729, 206530, 204725, 204634, 204632, 204631, 204628, 204622, 204621, 202717, 186238, 204194, 204210, 243292, 175788, 243299, 243302, 243293, 332595, 243300, 180007, 190549, 206110, 203969, 175787, 259114, 204639, 204605, 204607, 204199, 204191, 206727, 204207, 206741, 206725, 204205, 204604, 204196, 204197, 204609, 204601, 204209, 204201, 223814, 204606, 204198, 206726, 204214, 223739, 206995, 204603, 204195, 204611, 204211, 204640, 204608, 206736, 204192, 204600, 204208, 204200, 204709, 206608, 204602, 206609, 204610, 206610);
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46702 WHERE `entry`=51703; -- Anvil
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46702 WHERE `entry`=51702; -- Anvil
UPDATE `gameobject_template` SET `Data8`=103829, `Data10`=30092, `VerifiedBuild`=46702 WHERE `entry`=50983; -- Heated Forge
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=3879, `VerifiedBuild`=46702 WHERE `entry`=58595; -- Burning Blade Stash
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46702 WHERE `entry`=210059; -- Anvil
UPDATE `gameobject_template` SET `Data8`=103829, `Data10`=30092, `VerifiedBuild`=46702 WHERE `entry`=210058; -- Forge
UPDATE `gameobject_template` SET `name`='Doodad_WinterOrc_Small_Brazier_03_2', `VerifiedBuild`=46702 WHERE `entry`=349790; -- 349790
UPDATE `gameobject_template` SET `name`='Chair', `VerifiedBuild`=46702 WHERE `entry`=351920; -- 351920
UPDATE `gameobject_template` SET `name`='Chair', `VerifiedBuild`=46702 WHERE `entry`=351918; -- 351918
UPDATE `gameobject_template` SET `name`='Chair', `VerifiedBuild`=46702 WHERE `entry`=351919; -- 351919
UPDATE `gameobject_template` SET `name`='Chair', `VerifiedBuild`=46702 WHERE `entry`=351926; -- 351926
UPDATE `gameobject_template` SET `name`='Chair', `VerifiedBuild`=46702 WHERE `entry`=351925; -- 351925
UPDATE `gameobject_template` SET `name`='Chair', `VerifiedBuild`=46702 WHERE `entry`=351924; -- 351924
UPDATE `gameobject_template` SET `name`='Chair', `VerifiedBuild`=46702 WHERE `entry`=351921; -- 351921
UPDATE `gameobject_template` SET `name`='6OR_WOODENDUMMY01', `VerifiedBuild`=46702 WHERE `entry`=351430; -- 351430
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46702 WHERE `entry`=208270; -- Anvil
UPDATE `gameobject_template` SET `Data8`=103829, `Data10`=30092, `VerifiedBuild`=46702 WHERE `entry`=208269; -- Forge
UPDATE `gameobject_template` SET `Data0`=90244, `VerifiedBuild`=46702 WHERE `entry`=207690; -- Portal to Vashj'ir
UPDATE `gameobject_template` SET `Data8`=103829, `Data10`=30092, `VerifiedBuild`=46702 WHERE `entry`=206739; -- Forge
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46702 WHERE `entry`=206738; -- Anvil
UPDATE `gameobject_template` SET `Data22`=101280, `VerifiedBuild`=46702 WHERE `entry`=281340; -- Warchief's Command Board
UPDATE `gameobject_template` SET `displayId`=0, `Data3`=0, `Data6`=0, `VerifiedBuild`=46702 WHERE `entry`=203378; -- Blacksmith's Anvil - INVISIBLE
UPDATE `gameobject_template` SET `displayId`=0, `Data3`=0, `VerifiedBuild`=46702 WHERE `entry`=184633; -- Forge
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46702 WHERE `entry`=202590; -- Anvil


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46702 WHERE (`Idx`=0 AND `GameObjectEntry` IN (58369,195118,203977,203979,3290,204360,58595,203969));


UPDATE `page_text` SET `VerifiedBuild`=46702 WHERE `ID` IN (8436, 8435, 8434, 8433);


DELETE FROM `world_quest` WHERE `id` IN (52387 /*52387*/, 63782 /*63782*/, 60244 /*60244*/, 52957 /*52957*/, 63957 /*63957*/, 54594 /*54594*/, 63824 /*63824*/, 52209 /*52209*/, 60254 /*60254*/, 65404 /*65404*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(52387, 86400, 15960, 6), -- 52387
(63782, 86400, 20762, 1), -- 63782
(60244, 604800, 19251, 1), -- 60244
(52957, 604800, 16007, 6), -- 52957
(63957, 86400, 20813, 1), -- 63957
(54594, 86400, 16893, 1), -- 54594
(63824, 302400, 20585, 4), -- 63824
(52209, 86400, 15662, 1), -- 52209
(60254, 604800, 19257, 1), -- 60254
(65404, 86400, 21463, 1); -- 65404

UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097

UPDATE `quest_template_addon` SET `SpecialFlags`='2' WHERE  `ID`=25189;
UPDATE `smart_scripts` SET `action_type`='80', `action_param1`='4373000', `target_type`='1', `comment`='Quest Accept - Actionlist' WHERE  `entryorguid`=43730 AND `source_type`=0 AND `id`=0 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (43730, 0, 2, 0, 1, 0, 100, 0, 1000, 1000, 1000, 1000, 0, '', 86, 68561, 6, 18, 80, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'OOC - Invoke Nearby Players to cast Dummy Trigger to Self');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (43730, 0, 1, 0, 38, 0, 100, 0, 1, 1, 0, 0, 0, '', 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Data Set - Evade for Reset Position');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (43730, 0, 4, 0, 8, 0, 100, 0, 68561, 0, 0, 0, 0, '', 28, 80817, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Spell Hit from Dummy Trigger - Remove Quest Invis Detection to Invoker (condition)');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (43730, 0, 3, 0, 8, 0, 100, 0, 68561, 0, 0, 0, 0, '', 85, 80817, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Spell Hit from Dummy Trigger - Invoker Cast Quest Invis Detection to Invoker (condition)');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4373000, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Close Gossip to Invoker');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4373000, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 45, 1, 0, 0, 0, 0, 0, 19, 288, 30, 0, 0, 0, 0, 0, 0, 'Set Data to Jitters to Move');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4373000, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, '', 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -10744.3, 335, 37.74, 0, 'Set Data to Jitters to Move');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4373000, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 12, 43950, 8, 0, 0, 0, 0, 8, 0, 0, 0, 0, 10747.5, 331.861, 37.668, 4.5, 'Summon Lurking Worgen');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4373000, 9, 4, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, '', 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -10745, 331.613, 37.867, 0, 'Move to Position');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4373000, 9, 6, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, '', 45, 1, 0, 0, 0, 0, 0, 19, 43950, 5, 0, 0, 0, 0, 0, 0, 'Set Data to Worgen for Actionlist');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4373000, 9, 5, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 0, '', 66, 0, 0, 0, 0, 0, 0, 19, 43950, 5, 0, 0, 0, 0, 0, 0, 'Face Lurking Worgen');
UPDATE `smart_scripts` SET `source_type`='2' WHERE  `entryorguid`=43300 AND `source_type`=0 AND `id`=6 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=32377 AND `source_type`=0 AND `id`=1 AND `link`=0;
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('14523', 'You dog!  Now I\'ll trap your soul into a shard and give you to my imp as a plaything!', '12', '100', '9735');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('14304', '1', '%s becomes enraged!', '16', '100', '10677');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (13716, 0, 0, 'You wish to learn of the stone? Follow me.', 12, 0, 100, 1, 0, 0, 0, 8952, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (13716, 1, 0, 'For so long I have drifted in my cursed form. You have freed me... Your hard work shall be repaid.', 12, 0, 100, 1, 0, 0, 0, 8953, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (13716, 2, 0, 'Please do as I instruct you, $n.', 12, 0, 100, 1, 0, 0, 0, 8954, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (13716, 3, 0, 'Read this tome I have placed before you, and speak the words aloud.', 12, 0, 100, 1, 0, 0, 0, 8950, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (13716, 4, 0, '%s begins to channel his energy, focusing on the stone.', 16, 0, 100, 469, 0, 0, 0, 8951, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (13716, 5, 0, 'Together, the two parts shall become one, once again.', 12, 0, 100, 1, 0, 0, 0, 8948, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (13716, 6, 0, 'Shal myrinan ishnu daldorah...', 12, 0, 100, 1, 0, 0, 0, 8949, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (13716, 7, 0, 'My scepter will once again become whole!', 12, 0, 100, 1, 0, 0, 0, 8955, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (13716, 8, 0, 'Perhaps we can attempt this later. Please speak to me again if you wish to do so.', 12, 0, 100, 0, 0, 0, 0, 8947, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('11360', '%s flees toward the safety of another tiger.', '16', '100', '10549');
UPDATE `smart_scripts` SET `action_param1`='62444' WHERE  `entryorguid`=13219 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `action_param1`='325183' WHERE  `entryorguid`=12320 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=15291;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=15942;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=16159;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=15277 AND `source_type`=0 AND `id`=6 AND `link`=7;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=15212 AND `source_type`=0 AND `id`=3 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=15186 AND `source_type`=0 AND `id`=2 AND `link`=3;
UPDATE `smart_scripts` SET `action_param1`='386185' WHERE  `entryorguid`=14832 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=14605 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `action_type`='80', `action_param1`='2677300', `action_param2`='3', `action_param3`='0', `action_param4`='0', `comment`='Spell Hit - Run Timed Script' WHERE  `entryorguid`=26773 AND `source_type`=0 AND `id`=0 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param1`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES ('26773', '1', '8', '47374', '33', '26773', '7', 'Quest Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `event_param1`, `event_param2`, `action_type`, `action_param1`, `action_param2`, `target_type`, `comment`) VALUES ('2677300', '9', '3000', '3000', '11', '47390', '3', '7', 'Timed Script - Cast Spell');
UPDATE `smart_scripts` SET `action_type`='33', `action_param2`='0', `action_param3`='0', `action_param4`='0', `target_type`='7' WHERE  `entryorguid`=26831 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=26428 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `action_param1`='196840' WHERE  `entryorguid`=26178 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=25092 AND `source_type`=0 AND `id`=2 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=25091 AND `source_type`=0 AND `id`=2 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=25090 AND `source_type`=0 AND `id`=2 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=25087 AND `source_type`=0 AND `id`=2 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=24687 AND `source_type`=0 AND `id`=5 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=24687 AND `source_type`=0 AND `id`=4 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=23637 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=23626 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=23625 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=23624 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=23623 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=23619 AND `source_type`=0 AND `id`=1 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=23368 AND `source_type`=0 AND `id`=1 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=23368 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=23318 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=79219 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=79218 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=28490 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `action_param1`='56641' WHERE  `entryorguid`=25087 AND `source_type`=0 AND `id`=1 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=23188 AND `source_type`=0 AND `id`=7 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=21337 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=20452 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=19943 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=19671 AND `source_type`=0 AND `id`=4 AND `link`=0;
UPDATE `smart_scripts` SET `action_param1`='224197' WHERE  `entryorguid`=19480 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `action_type`='133', `action_param2`='48191', `target_type`='1', `target_param1`='0' WHERE  `entryorguid`=18471 AND `source_type`=0 AND `id`=26 AND `link`=22;
UPDATE `smart_scripts` SET `event_param1`='1' WHERE  `entryorguid`=17894 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=17810 AND `source_type`=0 AND `id`=6 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=17725 AND `source_type`=0 AND `id`=2 AND `link`=3;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=17610 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=17610 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=17584;
UPDATE `smart_scripts` SET `event_param1`='29170' WHERE  `entryorguid`=17551 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=17304 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `action_param1`='188389' WHERE  `entryorguid`=17206 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `action_param1`='119946' WHERE  `entryorguid`=17199 AND `source_type`=0 AND `id`=1 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=17150 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=17143 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=16378 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `action_param1`='16827' WHERE  `entryorguid`=16348 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=16184 AND `source_type`=0 AND `id`=1 AND `link`=0;

DELETE FROM `creature` WHERE `guid`=178063;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178063, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8820.83, -111.979, 82.2256, 3.38613, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178088;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178088, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8795.59, -90.0156, 85.7428, 4.8634, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178123;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178123, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8820.48, -72.0021, 88.1565, 1.69304, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178187;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178187, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8957.64, -259.94, 75.2868, 3.89191, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178193;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178193, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8908.19, -288.135, 77.1988, 0.160971, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178194;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178194, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8882.16, -247.757, 81.3053, 2.13866, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178200;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178200, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8946.81, -45.7433, 91.7167, -3.08645, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178209;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178209, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8911.64, -246.797, 80.9993, 0.729977, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178216;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178216, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8852.55, -286.795, 78.7948, 0.680746, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178217;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178217, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8831.32, -286.287, 79.0083, 2.3374, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178218;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178218, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -9079.94, -176.647, 74.5505, 3.46334, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178219;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178219, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8847.23, -307.637, 76.2481, 3.20048, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178225;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178225, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8838.84, -59.8413, 86.0852, 0.196791, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178235;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178235, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -9002.89, -184.789, 77.1647, -0.336789, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178241;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178241, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -9014.38, -189.489, 76.7536, 0.678203, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178252;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178252, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8794.57, -151.484, 83.6602, 5.88284, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178270;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178270, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8810.83, -55.5067, 91.6915, 0.335752, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178284;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178284, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8923.19, -67.2802, 89.3481, 5.23541, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178287;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178287, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8879.49, -52.4429, 86.311, 4.73631, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178300;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178300, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8986.93, -244.996, 73.6336, 1.99999, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178335;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178335, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8856.32, -108.271, 80.7226, 0.0319623, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178336;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178336, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8861.92, -81.4045, 83.4565, 4.96494, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178338;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178338, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8829.21, -96.6224, 85.0256, 0.964106, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178438;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178438, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8998.49, -232.622, 71.772, 4.52052, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178476;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178476, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -9017.78, -145.125, 83.9009, 3.12597, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178478;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178478, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -9035.42, -160.013, 80.1572, 3.48754, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178481;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178481, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8995.87, -203.208, 74.1448, 1.11975, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `guid`=178489;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (178489, 49871, 0, 6170, 9, '0', 0, '', 0, -1, 22475, 0, -8927.71, -39.7675, 91.7082, 3.26712, 300, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 0);


DELETE FROM `creature` WHERE  `guid`=133281;
DELETE FROM `creature` WHERE  `guid`=133290;
DELETE FROM `creature` WHERE  `guid`=133291;
DELETE FROM `creature` WHERE  `guid`=133297;
DELETE FROM `creature` WHERE  `guid`=133302;
DELETE FROM `creature` WHERE  `guid`=133308;
DELETE FROM `creature` WHERE  `guid`=133310;
DELETE FROM `creature` WHERE  `guid`=133318;
DELETE FROM `creature` WHERE  `guid`=133323;
DELETE FROM `creature` WHERE  `guid`=133329;
DELETE FROM `creature` WHERE  `guid`=133331;
DELETE FROM `creature` WHERE  `guid`=133333;
DELETE FROM `creature` WHERE  `guid`=133337;
DELETE FROM `creature` WHERE  `guid`=133339;
DELETE FROM `creature` WHERE  `guid`=133346;
DELETE FROM `creature` WHERE  `guid`=133350;
DELETE FROM `creature` WHERE  `guid`=133351;
DELETE FROM `creature` WHERE  `guid`=133352;
DELETE FROM `creature` WHERE  `guid`=133355;
DELETE FROM `creature` WHERE  `guid`=133356;
DELETE FROM `creature` WHERE  `guid`=133357;
DELETE FROM `creature` WHERE  `guid`=133359;
DELETE FROM `creature` WHERE  `guid`=133363;
DELETE FROM `creature` WHERE  `guid`=133367;
DELETE FROM `creature` WHERE  `guid`=133368;
DELETE FROM `creature` WHERE  `guid`=133369;
DELETE FROM `creature` WHERE  `guid`=133370;
DELETE FROM `creature` WHERE  `guid`=133373;
DELETE FROM `creature` WHERE  `guid`=133376;
DELETE FROM `creature` WHERE  `guid`=133378;
DELETE FROM `creature` WHERE  `guid`=133379;
DELETE FROM `creature` WHERE  `guid`=133380;
DELETE FROM `creature` WHERE  `guid`=133381;
DELETE FROM `creature` WHERE  `guid`=133385;
DELETE FROM `creature` WHERE  `guid`=133394;
DELETE FROM `creature` WHERE  `guid`=133396;
DELETE FROM `creature` WHERE  `guid`=133397;
DELETE FROM `creature` WHERE  `guid`=133398;
DELETE FROM `creature` WHERE  `guid`=133403;
DELETE FROM `creature` WHERE  `guid`=133405;
DELETE FROM `creature` WHERE  `guid`=133407;
DELETE FROM `creature` WHERE  `guid`=133408;
DELETE FROM `creature` WHERE  `guid`=133412;
DELETE FROM `creature` WHERE  `guid`=133421;
DELETE FROM `creature` WHERE  `guid`=133423;
DELETE FROM `creature` WHERE  `guid`=133426;
DELETE FROM `creature` WHERE  `guid`=133431;
DELETE FROM `creature` WHERE  `guid`=133438;
DELETE FROM `creature` WHERE  `guid`=133440;
DELETE FROM `creature` WHERE  `guid`=133444;
DELETE FROM `creature` WHERE  `guid`=133446;
DELETE FROM `creature` WHERE  `guid`=133447;
DELETE FROM `creature` WHERE  `guid`=133448;
DELETE FROM `creature` WHERE  `guid`=133449;
DELETE FROM `creature` WHERE  `guid`=133451;
DELETE FROM `creature` WHERE  `guid`=133455;
DELETE FROM `creature` WHERE  `guid`=133456;
DELETE FROM `creature` WHERE  `guid`=133457;
DELETE FROM `creature` WHERE  `guid`=133458;
DELETE FROM `creature` WHERE  `guid`=133459;
DELETE FROM `creature` WHERE  `guid`=133460;
DELETE FROM `creature` WHERE  `guid`=133461;
DELETE FROM `creature` WHERE  `guid`=133463;
DELETE FROM `creature` WHERE  `guid`=133464;
DELETE FROM `creature` WHERE  `guid`=133465;
DELETE FROM `creature` WHERE  `guid`=133466;
DELETE FROM `creature` WHERE  `guid`=133467;
DELETE FROM `creature` WHERE  `guid`=133468;
DELETE FROM `creature` WHERE  `guid`=133469;
DELETE FROM `creature` WHERE  `guid`=133470;
DELETE FROM `creature` WHERE  `guid`=133471;
DELETE FROM `creature` WHERE  `guid`=133472;
DELETE FROM `creature` WHERE  `guid`=133473;
DELETE FROM `creature` WHERE  `guid`=133474;
DELETE FROM `creature` WHERE  `guid`=133475;
DELETE FROM `creature` WHERE  `guid`=133476;
DELETE FROM `creature` WHERE  `guid`=133477;
DELETE FROM `creature` WHERE  `guid`=133478;
DELETE FROM `creature` WHERE  `guid`=133479;
DELETE FROM `creature` WHERE  `guid`=133481;
DELETE FROM `creature` WHERE  `guid`=133482;
DELETE FROM `creature` WHERE  `guid`=133483;
DELETE FROM `creature` WHERE  `guid`=133484;
DELETE FROM `creature` WHERE  `guid`=133485;
DELETE FROM `creature` WHERE  `guid`=133486;
DELETE FROM `creature` WHERE  `guid`=133487;
DELETE FROM `creature` WHERE  `guid`=133488;
DELETE FROM `creature` WHERE  `guid`=133489;
DELETE FROM `creature` WHERE  `guid`=133490;
DELETE FROM `creature` WHERE  `guid`=133491;
DELETE FROM `creature` WHERE  `guid`=133492;
DELETE FROM `creature` WHERE  `guid`=133493;
DELETE FROM `creature` WHERE  `guid`=133494;
DELETE FROM `creature` WHERE  `guid`=133531;
DELETE FROM `creature` WHERE  `guid`=133532;
DELETE FROM `creature` WHERE  `guid`=133610;
DELETE FROM `creature` WHERE  `guid`=133611;
DELETE FROM `creature` WHERE  `guid`=133838;
DELETE FROM `creature` WHERE  `guid`=135492;
DELETE FROM `creature` WHERE  `guid`=136224;
DELETE FROM `creature` WHERE  `guid`=136306;
DELETE FROM `creature` WHERE  `guid`=136307;
DELETE FROM `creature` WHERE  `guid`=136340;
DELETE FROM `creature` WHERE  `guid`=136341;
DELETE FROM `creature` WHERE  `guid`=136342;
DELETE FROM `creature` WHERE  `guid`=136343;
DELETE FROM `creature` WHERE  `guid`=136344;
DELETE FROM `creature` WHERE  `guid`=136345;
DELETE FROM `creature` WHERE  `guid`=136346;
