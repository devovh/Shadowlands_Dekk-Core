DELETE FROM `gameobject_template` WHERE `entry`=265545;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (265545, 5, 14239, 'Frostwolf Banner', '', '', '', 0.75, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 35662);

DELETE FROM `gameobject_template` WHERE `entry`=279239;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (279239, 5, 41702, '[DNT] Crate', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 35662);

-- Ben Trias smart ai
SET @ENTRY := 4981;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 10, 0, 100, 1, 1, 15, 1, 5, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On only non hostile unit in line of sight (OOC) - Self: Talk 0 to invoker');

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
(@ENTRY, 0, 0, 0, 10, 0, 100, 1, 1, 15, 1, 5, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On only non hostile unit in line of sight (OOC) - Self: Talk 0 to invoker');

-- Gerik Koen smart ai
SET @ENTRY := 1333;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 10, 0, 100, 1, 1, 15, 1, 5, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On only non hostile unit in line of sight (OOC) - Self: Talk 0 to invoker');

-- Heinrich Stone smart ai
SET @ENTRY := 1324;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 10, 0, 100, 1, 1, 15, 1, 5, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On only non hostile unit in line of sight (OOC) - Self: Talk 0 to invoker');

-- Kyra Boucher smart ai
SET @ENTRY := 1275;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 10, 0, 100, 1, 1, 15, 3, 5, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On only non hostile unit in line of sight (OOC) - Self: Talk 0 to invoker');

-- Edna Mullby smart ai
SET @ENTRY := 1286;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 10, 0, 100, 1, 1, 15, 1, 5, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On only non hostile unit in line of sight (OOC) - Self: Talk 0 to invoker');

-- Lara Moore smart ai
SET @ENTRY := 1295;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 10, 0, 100, 1, 1, 15, 1, 5, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On only non hostile unit in line of sight (OOC) - Self: Talk 0 to invoker');

-- Lisbeth Schneider smart ai
SET @ENTRY := 1299;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 10, 0, 100, 1, 1, 15, 1, 5, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On only non hostile unit in line of sight (OOC) - Self: Talk 0 to invoker');

-- Bryan Cross smart ai
SET @ENTRY := 1319;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 10, 0, 100, 1, 1, 15, 1, 5, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On only non hostile unit in line of sight (OOC) - Self: Talk 0 to invoker');

-- Elsharin smart ai , NPC = 5498 in Wizard's Sanctum
SET @ENTRY := 5498;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type` = 9 AND `entryOrGuid` IN (549800);
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 1, 0, 100, 0, 60000, 80000, 60000, 80000, 80, 549800, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Every 60 - 80 seconds (OOC) - Self: Start timed action list id #549800 (update out of combat) // -inline'),
(@ENTRY * 100, 9, 0, 0, 0, 0, 100, 0, 10000, 12000, 0, 0, 85, 290038, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 10 - 12 seconds - Self: Cast spell 290038 on self'),
(@ENTRY * 100, 9, 1, 0, 0, 0, 100, 0, 10000, 12000, 0, 0, 85, 290038, 0, 0, 2, 0, 0, 11, 149131, 15, 0, 0, 0, 0, 0, 'After 10 - 12 seconds - Random 2 Creature Apprentice Mage (149131) in 15 yd: Cast spell 290038 on self'),
(@ENTRY * 100, 9, 2, 0, 0, 0, 100, 0, 500, 1000, 0, 0, 85, 290038, 0, 0, 1, 0, 0, 11, 149131, 15, 0, 0, 0, 0, 0, 'After 0.5 - 1 seconds - Random 1 Creature Apprentice Mage (149131) in 15 yd: Cast spell 290038 on self'),
(@ENTRY * 100, 9, 3, 0, 0, 0, 100, 0, 1000, 2000, 0, 0, 85, 290038, 0, 0, 2, 0, 0, 11, 149131, 15, 0, 0, 0, 0, 0, 'After 1 - 2 seconds - Random 2 Creature Apprentice Mage (149131) in 15 yd: Cast spell 290038 on self');

UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=165575;
UPDATE `Quest_template_addon` SET `RequiredMinRepValue`='0' WHERE  `ID`=7167;
UPDATE `Quest_template_addon` SET `RequiredMinRepValue`='0' WHERE  `ID`=7172;
UPDATE `Quest_template` SET `RewardSpell`='0' WHERE  `ID`=48874;
UPDATE `Quest_template` SET `RewardSpell`='0' WHERE  `ID`=48776;
UPDATE `Quest_template` SET `RewardItem1`='0', `RewardAmount1`='0' WHERE  `ID`=40664;
UPDATE `Quest_template_addon` SET `ProvidedItemCount`='0' WHERE  `ID` IN (11122, 11294, 11318);
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=19177;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=46496;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=56348;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=98099;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=102600;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=105046;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=105058;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=130706;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=144383;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=156361;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=156499;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=156823;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=156943;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=157069;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=157639;
UPDATE `creature_template` SET `npcflag`='130' WHERE  `entry`=157696;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=157801;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=157846;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=158178;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=158542;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=161553;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=162392;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=162542;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=162801;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=163576;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=164545;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=164796;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=164843;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=167034;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=167216;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=169869;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=170667;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=171770;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=172653;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=174900;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=177435;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=177437;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=177560;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=177586;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=177589;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=177628;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=177637;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=177919;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=177924;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=177968;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=178640;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=178713;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=180189;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=181059;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=182046;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=183530;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=183701;
UPDATE `creature_template` SET `npcflag`='3' WHERE  `entry`=184153;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=184532;
UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=185525;
UPDATE `access_requirement` SET `difficulty`='14' WHERE  `mapId`=2096 AND `difficulty`=1;

UPDATE `access_requirement` SET `difficulty`='14' WHERE  `mapId`=2164 AND `difficulty`=120;
UPDATE `access_requirement` SET `difficulty`='19' WHERE  `mapId`=1358 AND `difficulty`=0;
DELETE FROM `access_requirement` WHERE  `mapId`=2441 AND `difficulty`=1;

UPDATE creature_text SET GroupID='1' WHERE  CreatureID=38033 AND GroupID=2 AND ID=0;

UPDATE `creature_loot_template` SET `Chance`='78' WHERE  `Entry`=38033 AND `Item`=50054;
UPDATE `smart_scripts` SET `event_type`='9', `event_param1`='0', `event_param2`='5' WHERE  `entryorguid`=38033 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_param1`='15000', `event_param2`='25000', `event_param3`='0', `event_param4`='0', `target_type`='2' WHERE  `entryorguid`=38033 AND `source_type`=0 AND `id`=1 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38033, 0, 17, 0, 64, 0, 100, 0, 0, 0, 0, 0, 0, '', 54, 15000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Gossip Hello - Pause Waypoints');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38033, 0, 16, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 81768, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - Cast Transform Smoke effect');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38033, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 3, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - Reset Morph');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38033, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - Reset Faction');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38033, 0, 13, 14, 7, 0, 100, 0, 0, 0, 0, 0, 0, '', 65, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Evade - Resume Waypoints');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38033, 0, 12, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, '', 55, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Aggro - Stop Waypoints');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38033, 0, 11, 0, 40, 0, 100, 0, 13, 0, 0, 0, 0, '', 80, 3803300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Waypoint - Actionlist');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38033, 0, 10, 0, 40, 0, 100, 0, 10, 0, 0, 0, 0, '', 80, 3803300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Waypoint - Actionlist');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38033, 0, 9, 0, 40, 0, 100, 0, 8, 0, 0, 0, 0, '', 80, 3803300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Waypoint - Actionlist');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38033, 0, 8, 0, 40, 0, 100, 0, 2, 0, 0, 0, 0, '', 80, 3803300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Waypoint - Actionlist');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38033, 0, 7, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, '', 53, 0, 38033, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spawn - Start Waypoints');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38033, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - Attack Invoker');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38033, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 2, 1077, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - Set Faction');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38033, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 81768, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - Cast Transform Smoke effect');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38033, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 3, 38034, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - Morph to Alliance Spy');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38033, 0, 2, 3, 62, 0, 100, 0, 10961, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Gossip Select - Speech');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3803300, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 54, 30000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Pause Waypoints');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3803300, 9, 1, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, '', 11, 215145, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Kneel and read scroll');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3803300, 9, 2, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chance for Speech Emote');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3803300, 9, 3, 0, 0, 0, 100, 0, 25000, 25000, 0, 0, 0, '', 28, 215145, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove Kneel and read scroll');

REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`,`orientation`,`delay`, `point_comment`) VALUES (38033, 1, -3301.18, -1774.16, 109.26,0,0, 'Awkward Gangly Orc');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`,`orientation`,`delay`, `point_comment`) VALUES (38033, 2, -3304.85, -1775.52, 109.705,0,0, 'Awkward Gangly Orc');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`,`orientation`,`delay`, `point_comment`) VALUES (38033, 3, -3303.57, -1770.24, 109.559,0,0, 'Awkward Gangly Orc');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`,`orientation`,`delay`, `point_comment`) VALUES (38033, 4, -3308.5, -1751.28, 110.461,0,0, 'Awkward Gangly Orc');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`,`orientation`,`delay`, `point_comment`) VALUES (38033, 5, -3313.01, -1721.83, 118.43,0,0, 'Awkward Gangly Orc');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`,`orientation`,`delay`, `point_comment`) VALUES (38033, 6, -3307.08, -1708.07, 121.666,0,0, 'Awkward Gangly Orc');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`,`orientation`,`delay`, `point_comment`) VALUES (38033, 7, -3310.47, -1691.95, 123.519,0,0, 'Awkward Gangly Orc');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`,`orientation`,`delay`, `point_comment`) VALUES (38033, 8, -3309.02, -1689.83, 123.301,0,0, 'Awkward Gangly Orc');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`,`orientation`,`delay`, `point_comment`) VALUES (38033, 9, -3293.94, -1705.33, 122.356,0,0, 'Awkward Gangly Orc');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`,`orientation`,`delay`, `point_comment`) VALUES (38033, 10, -3292.44, -1704.8, 122.391,0,0, 'Awkward Gangly Orc');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`,`orientation`,`delay`, `point_comment`) VALUES (38033, 11, -3295.5, -1699.74, 122.619,0,0, 'Awkward Gangly Orc');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`,`orientation`,`delay`, `point_comment`) VALUES (38033, 12, -3274.43, -1675.88, 123.071,0,0, 'Awkward Gangly Orc');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`,`orientation`,`delay`, `point_comment`) VALUES (38033, 13, -3274.9, -1674.2, 123.062,0,0, 'Awkward Gangly Orc');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`,`orientation`,`delay`, `point_comment`) VALUES (38033, 14, -3302.59, -1705.79, 122.304,0,0, 'Awkward Gangly Orc');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`,`orientation`,`delay`, `point_comment`) VALUES (38033, 15, -3311.97, -1716.64, 119.64,0,0, 'Awkward Gangly Orc');
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`,`orientation`,`delay`, `point_comment`) VALUES (38033, 16, -3310.7, -1743.45, 112.237,0,0, 'Awkward Gangly Orc');

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38033, 0, 0, 'Curse your eyes, $r!', 12, 0, 100, 0, 0, 0, 0, 37808, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38033, 2, 0, '%s rifles through the fortress supplies, looking for something.', 16, 0, 100, 0, 0, 0, 0, 37805, 0, '');

UPDATE `gossip_menu_option` SET `OptionBroadcastTextID`='37800', `ActionMenuID`='10961' WHERE  `MenuID`=10962 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `OptionBroadcastTextID`='37802' WHERE  `MenuID`=10961 AND `OptionID`=0;

