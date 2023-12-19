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

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (61000000001349677, 85040, 1, 616, 616, '0', 0, '', 0, -1, 0, 0, 5755.81, -3290.84, 1604.6, 2.23713, 10, 0, 0, 4698, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (61000000001349678, 85040, 1, 616, 616, '0', 0, '', 0, -1, 0, 0, 5765.41, -3286.61, 1604.6, 1.62452, 10, 0, 0, 4698, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (61000000001349679, 85040, 1, 616, 616, '0', 0, '', 0, -1, 0, 0, 5778.76, -3291.41, 1604.6, 0.8077, 10, 0, 0, 4698, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (61000000001349680, 85040, 1, 616, 616, '0', 0, '', 0, -1, 0, 0, 5773.7, -3303.57, 1604.6, 5.5828, 10, 0, 0, 4698, 0, 0, 0, 0, 0, 0, 0, '', 0);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032647, 203087, 1, 0, 0, '0', 0, '0', 0, -1, 5762.14, -3299.48, 1604.6, 3.29249, -0, -0, -0.997155, 0.0753789, 300, 255, 1, 0, '', 0);
DELETE FROM `creature` WHERE  `guid`=372273;