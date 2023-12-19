REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (29556, 0, 1, 0, 261421, 66153, 870, 371, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (29556, 0, 0, -1, 0, 0, 870, 371, 0, 0, 0, 0, 0, 0, 0, 0);

REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (29556, 1, 7, -583, -2067, 0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (29556, 1, 6, -582, -2006, 0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (29556, 1, 5, -576, -1994, 0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (29556, 1, 4, -516, -1987, 0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (29556, 1, 3, -475, -2023, 0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (29556, 1, 2, -484, -2070, 0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (29556, 1, 1, -513, -2087, 0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (29556, 1, 0, -534, -2098, 0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (29556, 0, 0, -456, -2068, 0, 22908);

UPDATE `creature_template` SET `ScriptName`='npc_innkeeper' WHERE  `entry`=59173;
UPDATE `creature_template` SET `ScriptName`='npc_innkeeper' WHERE  `entry`=59160;

UPDATE `gameobject_template` SET `Data1`='40482' WHERE  `entry`=209951;

UPDATE `gossip_menu_option` SET `OptionID`='1' WHERE  `MenuID`=13070 AND `OptionID`=2;
DELETE FROM `smart_scripts` WHERE `entryorguid`=54914 AND `source_type`=0 AND `id`=0 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (54914, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 55057, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Orgus - On Gossip - Kill Credit');

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032616, 209550, 870, 5785, 5874, '0', 0, '', 0, -1, 2673.64, -190.195, 348.742, 0, 0, 0, 0, 0, 120, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032617, 209550, 870, 5785, 5874, '0', 0, '', 0, -1, 2681.75, -902.639, 330.31, 0, 0, 0, 0, 0, 120, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032618, 209550, 870, 5785, 5874, '0', 0, '', 0, -1, 2697.63, -988.028, 342.969, 0, 0, 0, 0, 0, 120, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032619, 209550, 870, 5785, 5874, '0', 0, '', 0, -1, 2675.76, -887.325, 326.791, 0, 0, 0, 0, 0, 120, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032620, 209550, 870, 5785, 5874, '0', 0, '', 0, -1, 2647.45, -892.043, 327.011, 0, 0, 0, 0, 0, 120, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032621, 209550, 870, 5785, 5874, '0', 0, '', 0, -1, 2663.78, -920.714, 335.369, 0, 0, 0, 0, 0, 120, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032622, 209550, 870, 5785, 5874, '0', 0, '', 0, -1, 2531.06, -961.668, 385.674, 0, 0, 0, 0, 0, 120, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032623, 209550, 870, 5785, 5874, '0', 0, '', 0, -1, 2518.46, -1006.33, 386.197, 0, 0, 0, 0, 0, 120, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032624, 209550, 870, 5785, 5874, '0', 0, '', 0, -1, 2601.1, -1030.75, 358.861, 0, 0, 0, 0, 0, 120, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032625, 209550, 870, 5785, 5874, '0', 0, '', 0, -1, 2586.22, -942.92, 352.242, 0, 0, 0, 0, 0, 120, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032626, 209550, 870, 5785, 5874, '0', 0, '', 0, -1, 2553.54, -967.747, 363.407, 0, 0, 0, 0, 0, 120, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032627, 209550, 870, 5785, 5874, '0', 0, '', 0, -1, 2712.68, -861.111, 331.624, 0, 0, 0, 0, 0, 120, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032628, 209550, 870, 5785, 5874, '0', 0, '', 0, -1, 2724.86, -905.339, 327.185, 0, 0, 0, 0, 0, 120, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032629, 209550, 870, 5785, 5874, '0', 0, '', 0, -1, 2664.11, -1065.96, 349.072, 0, 0, 0, 0, 0, 120, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032630, 209550, 870, 5785, 5874, '0', 0, '', 0, -1, 2668.77, -905.618, 330.466, 0, 0, 0, 0, 0, 120, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032631, 209550, 870, 5785, 5874, '0', 0, '', 0, -1, 2616.53, -989.174, 331.519, 0, 0, 0, 0, 0, 120, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032632, 209550, 870, 0, 0, '0', 0, '0', 0, -1, 2570.59, -1002.58, 365.015, 3.11819, -0, -0, -0.999932, -0.0117027, 300, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032633, 209550, 870, 0, 0, '0', 0, '0', 0, -1, 2552.67, -1011.81, 367.471, 3.77792, -0, -0, -0.949811, 0.312824, 300, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032634, 209550, 870, 0, 0, '0', 0, '0', 0, -1, 2566.75, -1030.88, 363.985, 5.85058, -0, -0, -0.214621, 0.976698, 300, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032635, 209550, 870, 0, 0, '0', 0, '0', 0, -1, 2587.81, -1030, 361.693, 2.56526, -0, -0, -0.958767, -0.284195, 300, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032636, 209550, 870, 0, 0, '0', 0, '0', 0, -1, 2623.18, -1014.85, 356.731, 6.22747, -0, -0, -0.0278523, 0.999612, 300, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032637, 209550, 870, 0, 0, '0', 0, '0', 0, -1, 2643.28, -1028.23, 352.495, 5.99264, -0, -0, -0.144763, 0.989466, 300, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032638, 209550, 870, 0, 0, '0', 0, '0', 0, -1, 2560.25, -1058.35, 364.181, 2.78822, -0, -0, -0.984431, -0.175771, 300, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032639, 209550, 870, 0, 0, '0', 0, '0', 0, -1, 2593.99, -947.07, 352.474, 1.30341, -0, -0, -0.606545, -0.795049, 300, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032640, 209550, 870, 0, 0, '0', 0, '0', 0, -1, 2599.68, -914.673, 352.45, 5.11102, -0, -0, -0.5531, 0.833115, 300, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032641, 209550, 870, 0, 0, '0', 0, '0', 0, -1, 2621.82, -904.636, 331.718, 0.676663, -0, -0, -0.331914, -0.94331, 300, 255, 1, 0, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032642, 209550, 870, 0, 0, '0', 0, '0', 0, -1, 2617.97, -885.352, 327.491, 0.0373483, -0, -0, -0.0186733, -0.999826, 300, 255, 1, 0, '', 0);

UPDATE `creature_template` SET `unit_flags`='0' WHERE  `entry`=55184;
UPDATE `creature_template` SET `unit_flags`='0' WHERE  `entry`=55183;
UPDATE `creature_template` SET `KillCredit2`='54970' WHERE  `entry`=55183;

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `MountCreatureID`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (55183, 0, 0, 0, 50331648, 1, 0, 0, 0, 0, 0, NULL);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `MountCreatureID`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (55184, 0, 0, 0, 50331648, 1, 0, 0, 0, 0, 0, '103079');

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502666, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3220.79, -1350.75, 213.901, 3.57957, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502667, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3214.59, -1313.32, 198.026, 5.9529, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502669, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3186.67, -1383.15, 219.004, 2.9142, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502670, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3177.36, -1257.45, 203.029, 4.28786, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502671, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3177.36, -1327.28, 206.948, 2.9142, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502672, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3166.78, -1201.72, 207.391, 1.89711, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502673, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3158.74, -1229.52, 205.057, 5.4314, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502674, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3214.59, -1257.45, 204.605, 5.2429, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502675, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3153.35, -1368.77, 209.886, 4.33983, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502676, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3130.82, -1299.35, 211.825, 5.9529, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502677, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3056.35, -1229.52, 204.19, 5.20835, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502678, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3055.66, -1313.32, 210.565, 2.9142, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502679, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3065.66, -1285.38, 205.791, 5.41255, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502680, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3074.97, -1355.22, 213.922, 2.9142, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502681, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3074.97, -1271.42, 202.387, 5.41255, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502682, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3084.27, -1397.12, 210.718, 4.02947, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502683, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3093.58, -1215.55, 206.131, 1.89711, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502684, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3084.27, -1452.98, 201.387, 5.36464, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502685, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3129.13, -1395.17, 212.002, 2.28588, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502686, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3130.82, -1313.32, 204.724, 5.9529, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (502687, 55790, 870, 5785, 5912, '0', 0, '', 0, -1, 0, 0, 3261.13, -1285.38, 203.191, 5.41255, 300, 7, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', 0);

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=15193; -- Lady Sylvanas Windrunner
UPDATE `creature_template` SET `gossip_menu_id`=6536, `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=3000 WHERE `entry`=15195; -- Wickerman Guardian
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=15197; -- Darkcaller Yanka
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=15309; -- Spoops
UPDATE `creature_template` SET `gossip_menu_id`=8945, `minlevel`=60, `maxlevel`=60, `npcflag`=1 WHERE `entry`=19178; -- Forsaken Commoner
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=16777216, `flags_extra`=`flags_extra`|128 WHERE `entry`=51720; -- Wickerman Torch Point
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry` IN (51730, 51731); -- Wickerman Reveler
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=51732; -- Royal Dreadmage
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=53756; -- Darla
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=53757; -- Chub
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=53760; -- Farina
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `npcflag`=16777216, `speed_run`=1.385714292526245117, `unit_flags`=33554432, `unit_flags2`=67584, `VehicleId`=1690 WHERE `entry`=53761; -- Crone's Broom
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `speed_run`=1.385714292526245117, `unit_flags`=33554432, `unit_flags2`=67584 WHERE `entry`=53762; -- Crone
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=53763; -- Candace Fenlow
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=53764; -- Crina Fenlow
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=53865; -- Orphan Matron Nanee
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=54169; -- Maxim the Sly
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=54207; -- Dead Undercity Citizen
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=109688; -- Woim

DELETE FROM `creature_template_addon` WHERE `entry` IN (15193, 15195, 15197, 15309, 19178, 51720, 51730, 51731, 51732, 53756, 53757, 53760, 53761, 53762, 53763, 53764, 53865, 54169, 54207, 109688);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(15193, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 15193 (Lady Sylvanas Windrunner)
(15195, 0, 0, 0, 257, 0, 0, 0, 0, 0, '131700 12187'), -- 15195 (Wickerman Guardian) - Blind Eye - Disease Cloud
(15197, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 15197 (Darkcaller Yanka)
(15309, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 15309 (Spoops)
(19178, 0, 0, 0, 257, 0, 0, 0, 0, 0, '33209 33207 33208'), -- 19178 (Forsaken Commoner) - Gossip NPC Periodic - Despawn, Gossip NPC Periodic - Fidget, Gossip NPC Periodic - Talk
(51720, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 51720 (Wickerman Torch Point)
(51730, 0, 0, 0, 1, 0, 0, 0, 0, 0, '95957'), -- 51730 (Wickerman Reveler) - Hold Torch Visual
(51731, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 51731 (Wickerman Reveler)
(51732, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 51732 (Royal Dreadmage)
(53756, 0, 0, 0, 1, 0, 0, 0, 0, 0, '97135'), -- 53756 (Darla) - Children's Costume Aura
(53757, 0, 0, 0, 1, 0, 0, 0, 0, 0, '97135'), -- 53757 (Chub) - Children's Costume Aura
(53760, 0, 0, 0, 1, 0, 0, 0, 0, 0, '97135'), -- 53760 (Farina) - Children's Costume Aura
(53761, 0, 0, 50331648, 1, 0, 0, 0, 0, 0, '100043'), -- 53761 (Crone's Broom) - [DND] Hallow's End Event
(53762, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 53762 (Crone)
(53763, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 53763 (Candace Fenlow)
(53764, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 53764 (Crina Fenlow)
(53865, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 53865 (Orphan Matron Nanee)
(54169, 0, 0, 0, 1, 0, 0, 0, 0, 0, '100600 29266'), -- 54169 (Maxim the Sly) - Cripple State, Permanent Feign Death
(54207, 0, 0, 0, 1, 0, 0, 0, 0, 0, '100600 29266'), -- 54207 (Dead Undercity Citizen) - Cripple State, Permanent Feign Death
(109688, 0, 0, 0, 1, 0, 0, 0, 0, 0, '97135'); -- 109688 (Woim) - Children's Costume Aura

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (51720, 53761);
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`, `InteractionPauseTimer`) VALUES
(51720, 0, 0, 1, 1, 0, 0, NULL),
(53761, 0, 0, 1, 0, 0, 0, NULL);

-- Vehicle data
DELETE FROM `vehicle_template_accessory` WHERE `entry`=53761;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(53761, 53762, 0, 1, 'Crone''s Broom - Crone', 8, 0); -- Crone's Broom - Crone

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=53761;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(53761, 46598, 0, 0);
-- (53761, 75953, 1, 0); (InteractSpellID - Cannot be added because it prevents the accessory from mounting)

DELETE FROM `creature_template_spell` WHERE `CreatureID`=53761;
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(53761, 0, 100068, 45745), -- Crone's Broom
(53761, 1, 100030, 45745); -- Crone's Broom

-- Gossips
DELETE FROM `gossip_menu` WHERE (`MenuID`=6536 AND `TextID`=7739) OR (`MenuID`=12929 AND `TextID`=18183) OR (`MenuID`=12932 AND `TextID`=18190);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(6536, 7739, 45745), -- 15195 (Wickerman Guardian)
(12929, 18183, 45745), -- 53764 (Crina Fenlow)
(12932, 18190, 45745); -- 53763 (Candace Fenlow)

UPDATE `gossip_menu` SET `VerifiedBuild`=45745 WHERE (`MenuID`=6537 AND `TextID`=7740) OR (`MenuID`=348 AND `TextID`=821) OR (`MenuID`=8945 AND `TextID`=11966);

DELETE FROM `gossip_menu_option` WHERE (`MenuID`=12929 AND `OptionID`=0);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(12929, 0, 0, 'I''m ready to attack Stormwind!', 52463, 0, 0, 0, 0, 0, NULL, 0, 45745);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (12929);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15,12929,0,0,0,47,0,29374,10,0,0,0,0,'','Show gossip option if quest 29374 is active or completed');

-- Scaling
DELETE FROM `creature_template_scaling` WHERE `DifficultyID`=0 AND `Entry` IN (15193, 15195, 15197, 15309, 51720, 51730, 51731, 51732, 53756, 53757, 53760, 53761, 53762, 53763, 53764, 53865, 54169, 54207, 109688);
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(15193, 0, 0, 0, 425, 45745),
(15195, 0, 0, 0, 883, 45745),
(15197, 0, 0, 0, 75, 45745),
(15309, 0, 0, 0, 425, 45745),
(51720, 0, 0, 0, 425, 45745),
(51730, 0, 0, 0, 425, 45745),
(51731, 0, 0, 0, 425, 45745),
(51732, 0, 0, 0, 425, 45745),
(53756, 0, 0, 0, 425, 45745),
(53757, 0, 0, 0, 425, 45745),
(53760, 0, 0, 0, 425, 45745),
(53761, 0, 0, 0, 425, 45745),
(53762, 0, 0, 0, 425, 45745),
(53763, 0, 0, 0, 425, 45745),
(53764, 0, 0, 0, 425, 45745),
(53865, 0, 0, 0, 861, 45745),
(54169, 0, 0, 0, 861, 45745),
(54207, 0, 0, 0, 861, 45745),
(109688, 0, 0, 0, 425, 45745);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=45745 WHERE (`DifficultyID`=0 AND `Entry` IN (36517,2227,16287,20406,36273,4558,4561,15683,34983,1768,1908,6033,4610,4609,5738,4611,11044,10136,44734,44733,44732,44737,44731,11835,8393,8390,96368,2055,11750,44764,46559,44766,46560,1662,1537,1536,1553,1548,6395,53528,5665,5664,5652,39116,23776,5663,4560,4559,50609,6411,4602,4601,5662,2050,62393,4600,4556,4557,4553,5698,52587,5696,5699,52588,4599,4598,4604,15684,5731,15686,4552,4615,5204,5732,2934,4614,52319,52317,5733,36217,7683,4612,5736,5734,5735,34985,13839,6522,4488,10181,11067,30729,4617,4616,30711,47587,46483,4583,4584,4582,6566,2799,6467,44786,7297,4587,5744,4586,11031,2802,50304,5651,5624,4590,7087,8721,36225,4775,5747,4551,223,118623,5820,118511,4589,4588,4549,10879,23713,4550,118624,2459,2458,8672,40435,15682,6741,8403,118625,19178,36224,7395,10053,4562,4555,51496,5190,4613,5052,10781,4554,29139,15676,118627,15675,29095,4585,4591,118629,118628,118516,29728,118702,7980,4569,4592,47382,6293,97766,4581,4565,5700,2308,5675,4573,4578,4574,4564,4563,5693,4572,4566,61889,2492,1498,4568,4567,5753,4575,4580,4576,11049,5821,11048,4577,32641,32642,5728,5729,5703,5730,4596,4597,36226,5819,4605,5656,5655,4608,4595,4594,5659,4593,5660,5661,5658,5657,4606,5653,5654,5679,4607,54244,5697,23103,5704,5707,5701,5706,4571,5726,49965,5705,51384,5669,5674,5754,4603,61905,4570,5702,5670,5668,53517,43359,36213,53591,61366,37574,37543));

-- Models
UPDATE `creature_template_model` SET `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `CreatureID` IN (20406,11044,44737,5665,5663,4600,15686,7683,4775,118625,4591,54114,97766,5753,5659,51384,51730,4611,11750,1548,5662,4601,15684,5733,5651,8721,118624,40435,15682,4592,61889,5697,5704,5727,53764,36213,4558,44732,96368,1553,4602,4553,4612,30711,46483,6467,5820,2492,5653,66426,51731,54207,44764,39116,5698,4614,6522,11067,4551,8403,29139,4572,416,36226,16030,4593,5661,5705,37574,1768,53528,4556,4604,5739,118623,10879,7395,15675,6293,4565,5675,4577,4597,15195,37543,15193,5742,4561,34983,44733,8390,1537,5204,2934,4488,30729,44786,4588,4554,118627,4563,32641,4595,54244,23103,53757,15197,54043,20725,16287,46560,52587,5731,13839,4587,5624,2459,61753,10781,29095,5693,4576,4606,5726,49965,51732,15683,8393,23776,10053,5052,118628,58960,2308,4568,32642,5729,4594,5679,5707,53760,4075,6411,5696,7297,4589,4550,19178,118516,4578,5821,5656,5657,15309,5754,53756,18379,10136,4557,4598,4617,7087,5747,2458,4562,29728,54169,4605,5658,5670,61366,5674,5738,1662,4560,4599,6566,8672,36224,54072,5700,4573,4574,5728,53762,4608,5660,86447,4571,53763,356,52588,4552,4615,52319,36217,5734,34985,10181,4582,2802,223,4549,118629,4567,5819,5701,53865,53517,44766,1536,5652,4559,62393,5699,5732,4584,5744,5190,51496,118702,4569,4076,1860,1498,5668,5702,4603,2227,4610,5736,44734,2055,46559,6395,50609,4616,36225,6741,4585,4566,4580,53761,5730,43359,61905,36517,1908,11835,5664,52317,5735,47587,11031,61169,50304,7980,47382,4581,11049,4596,5655,4607,5706,41031,5494,5669,109688,36273,6033,4609,44731,2050,4583,2799,4586,4590,118511,23713,4555,4613,15676,4564,4575,11048,5703,5654,66425,53591,51720,4570)) OR (`Idx`=3 AND `CreatureID` IN (51730,44732,46483,54207,44733,44786,13839,118516,5738,118702,5736,5735,7980)) OR (`Idx`=2 AND `CreatureID` IN (51730,61889,44732,46483,54207,44733,44786,13839,49965,4075,118516,61366,5738,118702,5736,5735,7980)) OR (`Idx`=1 AND `CreatureID` IN (51730,61889,44732,46483,54207,16030,37574,37543,44733,1537,44786,54244,13839,61753,49965,51732,4075,19178,118516,61366,5738,1536,118702,5736,44734,46559,43359,5735,7980,53591));

UPDATE `creature_model_info` SET `VerifiedBuild`=45745 WHERE `DisplayID` IN (37643, 37647, 34057, 32658, 34054, 34053, 30163, 10731, 16112, 19596, 30075, 2622, 29506, 346, 540, 7449, 2676, 2624, 4118, 3976, 2623, 10576, 34055, 34050, 34056, 34052, 11756, 7599, 64888, 1680, 11694, 31290, 32656, 34064, 2483, 1738, 2468, 2472, 2479, 47211, 9020, 16009, 5576, 38381, 3883, 3880, 3019, 31314, 21746, 3882, 2654, 66644, 5235, 2616, 3879, 4011, 44094, 2666, 2636, 37958, 4050, 4053, 37959, 2672, 2617, 2656, 15783, 2647, 13856, 15781, 2662, 4052, 4056, 4109, 5751, 2669, 37834, 37833, 4110, 30069, 3977, 13854, 1201, 134, 4111, 3979, 13855, 29507, 5346, 28213, 2651, 12955, 34073, 34075, 36172, 2639, 2631, 2659, 10732, 2610, 5206, 34076, 34074, 2661, 4120, 10572, 4122, 7597, 10563, 37023, 7117, 6228, 2633, 5845, 30072, 2638, 10619, 74839, 4379, 74822, 2635, 2613, 2655, 10187, 3942, 74838, 2641, 2645, 7995, 27260, 2630, 31851, 15780, 5449, 22380, 7632, 74833, 22381, 30071, 9273, 2652, 2660, 35161, 3130, 2621, 2998, 10130, 2674, 25624, 15784, 74852, 74835, 15782, 25902, 2625, 2670, 74858, 74854, 74837, 74834, 74855, 74859, 74857, 74853, 26451, 74856, 2619, 2642, 2628, 2627, 9353, 35570, 17081, 19840, 2177, 2653, 4987, 65411, 2648, 9807, 23176, 2646, 4057, 1585, 3948, 2612, 2664, 27294, 6837, 10590, 2637, 2675, 4020, 2650, 10733, 4055, 2810, 2657, 2644, 4149, 2663, 2668, 10581, 4381, 10580, 2671, 2811, 28120, 28118, 10923, 1130, 2667, 4060, 13807, 30073, 4378, 9906, 2615, 3862, 3864, 2629, 2618, 2614, 2658, 3859, 2620, 2649, 10197, 3863, 3876, 3860, 3861, 10723, 7994, 2665, 4108, 3853, 4123, 3854, 2634, 6065, 4009, 2626, 2632, 8054, 4121, 4054, 11466, 4061, 2346, 59602, 4064, 4058, 4063, 2640, 850, 38528, 37642, 4062, 37641, 19314, 4732, 1566, 38487, 4010, 3020, 4150, 15349, 2643, 38522, 45952, 37639, 2673, 37640, 37638, 4059, 4005, 4004, 22201, 38376, 10699, 37692, 19315, 24719);
UPDATE `creature_model_info` SET `BoundingRadius`=0.382999986410140991, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID`=38521;

-- Vendor data
DELETE FROM `npc_vendor` WHERE (`entry`=53757 AND `item`=187997 AND `ExtendedCost`=5797 AND `type`=1) OR (`entry`=53757 AND `item`=167731 AND `ExtendedCost`=5797 AND `type`=1) OR (`entry`=53757 AND `item`=151614 AND `ExtendedCost`=5797 AND `type`=1) OR (`entry`=53757 AND `item`=122340 AND `ExtendedCost`=5797 AND `type`=1) OR (`entry`=53757 AND `item`=122338 AND `ExtendedCost`=5796 AND `type`=1) OR (`entry`=53757 AND `item`=163045 AND `ExtendedCost`=3545 AND `type`=1) OR (`entry`=53757 AND `item`=151270 AND `ExtendedCost`=3545 AND `type`=1) OR (`entry`=53757 AND `item`=151271 AND `ExtendedCost`=3545 AND `type`=1) OR (`entry`=53757 AND `item`=70722 AND `ExtendedCost`=3546 AND `type`=1) OR (`entry`=53757 AND `item`=37011 AND `ExtendedCost`=3547 AND `type`=1) OR (`entry`=53757 AND `item`=37604 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53757 AND `item`=37583 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53757 AND `item`=37584 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53757 AND `item`=37582 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53757 AND `item`=37585 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53757 AND `item`=151268 AND `ExtendedCost`=5339 AND `type`=1) OR (`entry`=53757 AND `item`=138990 AND `ExtendedCost`=5339 AND `type`=1) OR (`entry`=53757 AND `item`=128643 AND `ExtendedCost`=5339 AND `type`=1) OR (`entry`=53757 AND `item`=116828 AND `ExtendedCost`=5339 AND `type`=1) OR (`entry`=53757 AND `item`=33292 AND `ExtendedCost`=3546 AND `type`=1) OR (`entry`=53756 AND `item`=139004 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53756 AND `item`=128644 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53756 AND `item`=128645 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53756 AND `item`=128646 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53756 AND `item`=116854 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53756 AND `item`=116853 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53756 AND `item`=116851 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53756 AND `item`=116850 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53756 AND `item`=116848 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53756 AND `item`=20397 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53756 AND `item`=20398 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53756 AND `item`=20399 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53756 AND `item`=20409 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53756 AND `item`=20410 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53756 AND `item`=20411 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53756 AND `item`=20413 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53756 AND `item`=20414 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=49216 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=49215 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=20573 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=20574 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=20568 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=20567 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=20572 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=20571 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=20570 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=20569 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=20564 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=20563 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=20566 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=20565 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=49210 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=49212 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=20391 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=20392 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=20561 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=20562 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=34003 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=34001 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=34002 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=34000 AND `ExtendedCost`=3404 AND `type`=1) OR (`entry`=53760 AND `item`=69195 AND `ExtendedCost`=3403 AND `type`=1) OR (`entry`=53760 AND `item`=69194 AND `ExtendedCost`=3403 AND `type`=1) OR (`entry`=53760 AND `item`=69193 AND `ExtendedCost`=3403 AND `type`=1) OR (`entry`=53760 AND `item`=69192 AND `ExtendedCost`=3403 AND `type`=1) OR (`entry`=53760 AND `item`=69190 AND `ExtendedCost`=3403 AND `type`=1) OR (`entry`=53760 AND `item`=69189 AND `ExtendedCost`=3403 AND `type`=1) OR (`entry`=53760 AND `item`=69188 AND `ExtendedCost`=3403 AND `type`=1) OR (`entry`=53760 AND `item`=69187 AND `ExtendedCost`=3403 AND `type`=1) OR (`entry`=109688 AND `item`=139036 AND `ExtendedCost`=3403 AND `type`=1) OR (`entry`=109688 AND `item`=116812 AND `ExtendedCost`=3547 AND `type`=1) OR (`entry`=109688 AND `item`=116811 AND `ExtendedCost`=3403 AND `type`=1) OR (`entry`=109688 AND `item`=116810 AND `ExtendedCost`=3403 AND `type`=1) OR (`entry`=109688 AND `item`=151269 AND `ExtendedCost`=3545 AND `type`=1) OR (`entry`=109688 AND `item`=116801 AND `ExtendedCost`=3545 AND `type`=1) OR (`entry`=109688 AND `item`=116804 AND `ExtendedCost`=3545 AND `type`=1) OR (`entry`=109688 AND `item`=70908 AND `ExtendedCost`=3545 AND `type`=1) OR (`entry`=109688 AND `item`=33154 AND `ExtendedCost`=3545 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(53757, 20, 187997, 0, 5797, 1, 0, 0, 45745), -- Eternal Heirloom Armor Casing
(53757, 19, 167731, 0, 5797, 1, 0, 0, 45745), -- Battle-Hardened Heirloom Armor Casing
(53757, 18, 151614, 0, 5797, 1, 0, 0, 45745), -- Weathered Heirloom Armor Casing
(53757, 17, 122340, 0, 5797, 1, 0, 0, 45745), -- Timeworn Heirloom Armor Casing
(53757, 16, 122338, 0, 5796, 1, 0, 0, 45745), -- Ancient Heirloom Armor Casing
(53757, 15, 163045, 0, 3545, 1, 0, 0, 45745), -- Headless Horseman's Hearthstone
(53757, 14, 151270, 0, 3545, 1, 0, 0, 45745), -- Horse Tail Costume
(53757, 13, 151271, 0, 3545, 1, 0, 0, 45745), -- Horse Head Costume
(53757, 12, 70722, 0, 3546, 1, 0, 0, 45745), -- Little Wickerman
(53757, 11, 37011, 0, 3547, 1, 0, 0, 45745), -- Magic Broom
(53757, 10, 37604, 0, 3404, 1, 0, 0, 45745), -- Tooth Pick
(53757, 9, 37583, 0, 3404, 1, 0, 0, 45745), -- G.N.E.R.D.S.
(53757, 8, 37584, 0, 3404, 1, 0, 0, 45745), -- Soothing Spearmint Candy
(53757, 7, 37582, 0, 3404, 1, 0, 0, 45745), -- Pyroblast Cinnamon Ball
(53757, 6, 37585, 0, 3404, 1, 0, 0, 45745), -- Chewy Fel Taffy
(53757, 5, 151268, 0, 5339, 1, 0, 0, 45745), -- Exquisite Costume Set: "Xavius"
(53757, 4, 138990, 0, 5339, 1, 0, 0, 45745), -- Exquisite Costume Set: "Grommash"
(53757, 3, 128643, 0, 5339, 1, 0, 0, 45745), -- Exquisite Costume Set: "Deathwing"
(53757, 2, 116828, 0, 5339, 1, 0, 0, 45745), -- Exquisite Costume Set: "The Lich King"
(53757, 1, 33292, 0, 3546, 1, 0, 0, 45745), -- Hallowed Helm
(53756, 17, 139004, 0, 3404, 1, 0, 0, 45745), -- Hallowed Wand - Banshee
(53756, 16, 128644, 0, 3404, 1, 0, 0, 45745), -- Hallowed Wand - Wight
(53756, 15, 128645, 0, 3404, 1, 0, 0, 45745), -- Hallowed Wand - Gargoyle
(53756, 14, 128646, 0, 3404, 1, 0, 0, 45745), -- Hallowed Wand - Nerubian
(53756, 13, 116854, 0, 3404, 1, 0, 0, 45745), -- Hallowed Wand - Spider
(53756, 12, 116853, 0, 3404, 1, 0, 0, 45745), -- Hallowed Wand - Geist
(53756, 11, 116851, 0, 3404, 1, 0, 0, 45745), -- Hallowed Wand - Abomination
(53756, 10, 116850, 0, 3404, 1, 0, 0, 45745), -- Hallowed Wand - Ghoul
(53756, 9, 116848, 0, 3404, 1, 0, 0, 45745), -- Hallowed Wand - Slime
(53756, 8, 20397, 0, 3404, 1, 0, 0, 45745), -- Hallowed Wand - Pirate
(53756, 7, 20398, 0, 3404, 1, 0, 0, 45745), -- Hallowed Wand - Ninja
(53756, 6, 20399, 0, 3404, 1, 0, 0, 45745), -- Hallowed Wand - Leper Gnome
(53756, 5, 20409, 0, 3404, 1, 0, 0, 45745), -- Hallowed Wand - Ghost
(53756, 4, 20410, 0, 3404, 1, 0, 0, 45745), -- Hallowed Wand - Bat
(53756, 3, 20411, 0, 3404, 1, 0, 0, 45745), -- Hallowed Wand - Skeleton
(53756, 2, 20413, 0, 3404, 1, 0, 0, 45745), -- Hallowed Wand - Random
(53756, 1, 20414, 0, 3404, 1, 0, 0, 45745), -- Hallowed Wand - Wisp
(53760, 32, 49216, 0, 3404, 1, 0, 0, 45745), -- Worgen Male Mask
(53760, 31, 49215, 0, 3404, 1, 0, 0, 45745), -- Worgen Female Mask
(53760, 30, 20573, 0, 3404, 1, 0, 0, 45745), -- Undead Male Mask
(53760, 29, 20574, 0, 3404, 1, 0, 0, 45745), -- Undead Female Mask
(53760, 28, 20568, 0, 3404, 1, 0, 0, 45745), -- Troll Male Mask
(53760, 27, 20567, 0, 3404, 1, 0, 0, 45745), -- Troll Female Mask
(53760, 26, 20572, 0, 3404, 1, 0, 0, 45745), -- Tauren Male Mask
(53760, 25, 20571, 0, 3404, 1, 0, 0, 45745), -- Tauren Female Mask
(53760, 24, 20570, 0, 3404, 1, 0, 0, 45745), -- Orc Male Mask
(53760, 23, 20569, 0, 3404, 1, 0, 0, 45745), -- Orc Female Mask
(53760, 22, 20564, 0, 3404, 1, 0, 0, 45745), -- Night Elf Male Mask
(53760, 21, 20563, 0, 3404, 1, 0, 0, 45745), -- Night Elf Female Mask
(53760, 20, 20566, 0, 3404, 1, 0, 0, 45745), -- Human Male Mask
(53760, 19, 20565, 0, 3404, 1, 0, 0, 45745), -- Human Female Mask
(53760, 18, 49210, 0, 3404, 1, 0, 0, 45745), -- Goblin Male Mask
(53760, 17, 49212, 0, 3404, 1, 0, 0, 45745), -- Goblin Female Mask
(53760, 16, 20391, 0, 3404, 1, 0, 0, 45745), -- Gnome Male Mask
(53760, 15, 20392, 0, 3404, 1, 0, 0, 45745), -- Gnome Female Mask
(53760, 14, 20561, 0, 3404, 1, 0, 0, 45745), -- Dwarf Male Mask
(53760, 13, 20562, 0, 3404, 1, 0, 0, 45745), -- Dwarf Female Mask
(53760, 12, 34003, 0, 3404, 1, 0, 0, 45745), -- Draenei Male Mask
(53760, 11, 34001, 0, 3404, 1, 0, 0, 45745), -- Draenei Female Mask
(53760, 10, 34002, 0, 3404, 1, 0, 0, 45745), -- Blood Elf Male Mask
(53760, 9, 34000, 0, 3404, 1, 0, 0, 45745), -- Blood Elf Female Mask
(53760, 8, 69195, 0, 3403, 1, 0, 0, 45745), -- Vrykul Male Mask
(53760, 7, 69194, 0, 3403, 1, 0, 0, 45745), -- Vrykul Female Mask
(53760, 6, 69193, 0, 3403, 1, 0, 0, 45745), -- Ogre Male Mask
(53760, 5, 69192, 0, 3403, 1, 0, 0, 45745), -- Ogre Female Mask
(53760, 4, 69190, 0, 3403, 1, 0, 0, 45745), -- Naga Male Mask
(53760, 3, 69189, 0, 3403, 1, 0, 0, 45745), -- Naga Female Mask
(53760, 2, 69188, 0, 3403, 1, 0, 0, 45745), -- Murloc Male Mask
(53760, 1, 69187, 0, 3403, 1, 0, 0, 45745), -- Murloc Female Mask
(109688, 9, 139036, 0, 3403, 1, 0, 0, 45745), -- Ominous Pet Treat
(109688, 8, 116812, 0, 3547, 1, 0, 0, 45745), -- "Yipp-Saron" Costume
(109688, 7, 116811, 0, 3403, 1, 0, 0, 45745), -- "Lil' Starlet" Costume
(109688, 6, 116810, 0, 3403, 1, 0, 0, 45745), -- "Mad Alchemist" Costume
(109688, 5, 151269, 0, 3545, 1, 0, 0, 45745), -- Naxxy
(109688, 4, 116801, 0, 3545, 1, 0, 0, 45745), -- Cursed Birman
(109688, 3, 116804, 0, 3545, 1, 0, 0, 45745), -- Widget the Departed
(109688, 2, 70908, 0, 3545, 1, 0, 0, 45745), -- Feline Familiar
(109688, 1, 33154, 0, 3545, 1, 0, 0, 45745); -- Sinister Squashling

-- Gameobject templates
UPDATE `gameobject_template` SET `ContentTuningId`=425, `VerifiedBuild`=45745 WHERE `entry`=190071; -- Candy Bucket
UPDATE `gameobject_template` SET `ContentTuningId`=867, `VerifiedBuild`=45745 WHERE `entry`=209094; -- Stolen Crate

UPDATE `gameobject_template_addon` SET `faction`=1735 WHERE `entry`=190071; -- Candy Bucket
UPDATE `gameobject_template_addon` SET `faction`=1735 WHERE `entry`=208198; -- Bonfire
UPDATE `gameobject_template_addon` SET `faction`=114 WHERE `entry`=208965; -- Undead Lamp Post

-- Quests
UPDATE `quest_poi` SET `VerifiedBuild`=45745 WHERE (`QuestID`=8354 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=8354 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=8354 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29400 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=8312 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=8312 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=8312 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=8312 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=8312 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=8312 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=8312 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29431 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=29431 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29431 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29374 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=29374 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29374 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29374 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29375 AND `BlobIndex`=1 AND `Idx1`=7) OR (`QuestID`=29375 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=29375 AND `BlobIndex`=4 AND `Idx1`=5) OR (`QuestID`=29375 AND `BlobIndex`=3 AND `Idx1`=4) OR (`QuestID`=29375 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=29375 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=29375 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29375 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29377 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=29377 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29377 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29377 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29376 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=29376 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29376 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29376 AND `BlobIndex`=0 AND `Idx1`=0);

UPDATE `quest_poi_points` SET `VerifiedBuild`=45745 WHERE (`QuestID`=8354 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=8354 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=8354 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29400 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=8312 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=8312 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=8312 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=8312 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=8312 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=8312 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=8312 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29431 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29431 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29431 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29374 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=29374 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29374 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=29374 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=29374 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=29374 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=29374 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=29374 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=29374 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=29374 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=29374 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=29374 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=29374 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=29374 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29374 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29375 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=29375 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=29375 AND `Idx1`=5 AND `Idx2`=11) OR (`QuestID`=29375 AND `Idx1`=5 AND `Idx2`=10) OR (`QuestID`=29375 AND `Idx1`=5 AND `Idx2`=9) OR (`QuestID`=29375 AND `Idx1`=5 AND `Idx2`=8) OR (`QuestID`=29375 AND `Idx1`=5 AND `Idx2`=7) OR (`QuestID`=29375 AND `Idx1`=5 AND `Idx2`=6) OR (`QuestID`=29375 AND `Idx1`=5 AND `Idx2`=5) OR (`QuestID`=29375 AND `Idx1`=5 AND `Idx2`=4) OR (`QuestID`=29375 AND `Idx1`=5 AND `Idx2`=3) OR (`QuestID`=29375 AND `Idx1`=5 AND `Idx2`=2) OR (`QuestID`=29375 AND `Idx1`=5 AND `Idx2`=1) OR (`QuestID`=29375 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=29375 AND `Idx1`=4 AND `Idx2`=11) OR (`QuestID`=29375 AND `Idx1`=4 AND `Idx2`=10) OR (`QuestID`=29375 AND `Idx1`=4 AND `Idx2`=9) OR (`QuestID`=29375 AND `Idx1`=4 AND `Idx2`=8) OR (`QuestID`=29375 AND `Idx1`=4 AND `Idx2`=7) OR (`QuestID`=29375 AND `Idx1`=4 AND `Idx2`=6) OR (`QuestID`=29375 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=29375 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=29375 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=29375 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=29375 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=29375 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=29375 AND `Idx1`=3 AND `Idx2`=11) OR (`QuestID`=29375 AND `Idx1`=3 AND `Idx2`=10) OR (`QuestID`=29375 AND `Idx1`=3 AND `Idx2`=9) OR (`QuestID`=29375 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=29375 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=29375 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=29375 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=29375 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=29375 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=29375 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=29375 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=29375 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=29375 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=29375 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=29375 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=29375 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=29375 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=29375 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=29375 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=29375 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=29375 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=29375 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=29375 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=29375 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29375 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=29375 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=29375 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=29375 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=29375 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=29375 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=29375 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=29375 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=29375 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=29375 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=29375 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=29375 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29375 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29377 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=29377 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29377 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29377 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29376 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=29376 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29376 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29376 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (8312, 8354, 29431, 29374, 29375, 29376, 29377, 29400);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(8312, 1, 1, 0, 0, 0, 0, 0, 0, 45745), -- Hallow's End Treats for Spoops!
(8354, 5, 1, 0, 0, 0, 0, 0, 0, 45745), -- Chicken Clucking for a Mint
(29431, 1, 1, 0, 0, 0, 0, 0, 0, 45745), -- A Friend in Need
(29374, 5, 1, 0, 0, 0, 0, 0, 0, 45745), -- Stink Bombs Away!
(29375, 5, 1, 0, 0, 0, 0, 0, 0, 45745), -- Clean Up in Undercity
(29376, 70, 1, 0, 0, 0, 0, 0, 0, 45745), -- A Time to Build Up
(29377, 70, 1, 0, 0, 0, 0, 0, 0, 45745), -- A Time to Break Down
(29400, 70, 1, 0, 0, 0, 3, 0, 0, 45745); -- A Season for Celebration

DELETE FROM `quest_request_items` WHERE `ID` IN (29377, 29376, 29375, 29374, 8354);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(29377, 0, 0, 0, 0, 'Have you extinguished the Alliance''s Wickerman, $c?', 45745), -- A Time to Break Down
(29376, 0, 0, 0, 0, 'This is the night that our enemies fear us the most, $c.', 45745), -- A Time to Build Up
(29375, 0, 0, 0, 0, 'Arcane magic... Works every time.', 45745), -- Clean Up in Undercity
(29374, 0, 0, 0, 0, 'The magic those hags in Stormwind use is no match for our magic, $c.', 45745), -- Stink Bombs Away!
(8354, 0, 25, 0, 0, 'I''m waiting...', 45745); -- Chicken Clucking for a Mint

UPDATE `quest_request_items` SET `EmoteOnIncomplete`=1, `CompletionText`='Have you finished trick-or-treating yet?  The Matron said we could pick one place to visit, at least there is a lot happening here.' WHERE `ID`=8312; -- Hallow's End Treats for Spoops!

DELETE FROM `quest_offer_reward` WHERE `ID` IN (29374, 29375, 29400);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(29374, 0, 0, 0, 0, 0, 0, 0, 0, 'That will show the fools in the Alliance who is the strongest.$b$bTake these treats and treat yourself to something nice, $c.', 46340), -- Stink Bombs Away!
(29375, 0, 0, 0, 0, 0, 0, 0, 0, 'I didn''t notice a smell before, but I''ve come to expect weak magic from those Alliance hags.  However, the orc guards complained enough and will surely appreciate your efforts.', 45745), -- Clean Up in Undercity
(29400, 0, 0, 0, 0, 0, 0, 0, 0, 'The Wickerman ceremony is a time honored tradition.  It is good to see the Horde joining us in celebration.', 45745); -- A Season for Celebration

UPDATE `quest_offer_reward` SET `Emote1`=4, `Emote2`=1, `RewardText`='Too funny!  Well done, $n!  Here''s your treat.$B$BHappy Hallow''s End!', `VerifiedBuild`=45745 WHERE `ID`=8354; -- Chicken Clucking for a Mint
UPDATE `quest_offer_reward` SET `VerifiedBuild`=45745 WHERE `ID`=12368;

DELETE FROM `creature_queststarter` WHERE (`id`=53763 AND `quest`=29431) OR (`id`=15197 AND `quest` IN (29377,29376)) OR (`id`=19178 AND `quest`=29400);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(15197, 29377, 45745), -- A Time to Break Down offered Darkcaller Yanka
(15197, 29376, 45745), -- A Time to Build Up offered Darkcaller Yanka
(19178, 29400, 45745), -- A Season for Celebration offered Forsaken Commoner
(53763, 29431, 45745); -- A Friend in Need offered Candace Fenlow

UPDATE `creature_queststarter` SET `VerifiedBuild`=45745 WHERE (`id`=6741 AND `quest`=8354) OR (`id`=15309 AND `quest`=8312) OR (`id`=53763 AND `quest` IN (29374,29375));

UPDATE `creature_questender` SET `VerifiedBuild`=45745 WHERE (`id`=53763 AND `quest` IN (29375,29374)) OR (`id`=15197 AND `quest` IN (29376,29377,29400)) OR (`id`=6741 AND `quest`=8354) OR (`id`=15309 AND `quest`=8312);

DELETE FROM `game_event_creature_quest` WHERE `id`=19178 AND `quest`=29400;
DELETE FROM `game_event_creature_quest` WHERE `id` IN (15197, 53763);

DELETE FROM `gameobject_queststarter` WHERE `id` IN (190039, 190066, 190067, 190071);
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(190039, 12335, 45745),
(190066, 12363, 45745),
(190067, 12364, 45745),
(190071, 12368, 45745);

UPDATE `gameobject_questender` SET `VerifiedBuild`=45745 WHERE (`id`=190071 AND `quest`=12368);

DELETE FROM `game_event_gameobject_quest` WHERE `id` IN (190039, 190066, 190067, 190071);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=19 AND `SourceEntry`=29400;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(19,0,29400,0,0,12,0,12,0,0,0,0,0,'','Show quest 29400 only if event "Hallow''s End" is active');

-- Misc
DELETE FROM `spell_target_position` WHERE (`ID`=100028 AND `EffectIndex`=0);
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES
(100028, 0, 0, -8967.150390625, 512.1090087890625, 146.96099853515625, 45745); -- Spell: 100028 (Teleport to Stormwind) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)

UPDATE `spell_target_position` SET `VerifiedBuild`=45745 WHERE (`EffectIndex`=0 AND `ID` IN (96005,96006,100624,100788));


-- Creature templates
UPDATE `creature_template` SET `gossip_menu_id`=8935 WHERE `entry`=19169; -- Blood Elf Commoner

DELETE FROM `creature_template_addon` WHERE `entry`=19169;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(19169, 0, 0, 0, 257, 0, 0, 0, 0, 0, '33209 33207 33208'); -- 19169 (Blood Elf Commoner) - Gossip NPC Appearance - Hallow's End, Gossip NPC Periodic - Despawn, Gossip NPC Periodic - Fidget, Gossip NPC Periodic - Talk

-- Gameobject templates
UPDATE `gameobject_template` SET `ContentTuningId`=425, `VerifiedBuild`=46340 WHERE `entry` IN (190073, 190072); -- Candy Bucket

UPDATE `gameobject_template_addon` SET `faction`=1735 WHERE `entry` IN (190073, 190072); -- Candy Bucket

-- Quests
UPDATE `quest_offer_reward` SET `VerifiedBuild`=46340 WHERE `ID`=12369;
UPDATE `quest_offer_reward` SET `VerifiedBuild`=46340 WHERE `ID`=12370;

DELETE FROM `creature_queststarter` WHERE (`id`=19169 AND `quest`=29400);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(19169, 29400, 46340); -- A Season for Celebration offered Blood Elf Commoner

DELETE FROM `game_event_creature_quest` WHERE `id`=19169 AND `quest`=29400;

DELETE FROM `gameobject_queststarter` WHERE `id` IN (190072, 190073);
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(190072, 12369, 46340),
(190073, 12370, 46340);

UPDATE `gameobject_questender` SET `VerifiedBuild`=46340 WHERE (`id`=190072 AND `quest`=12369);
UPDATE `gameobject_questender` SET `VerifiedBuild`=46340 WHERE (`id`=190073 AND `quest`=12370);

DELETE FROM `game_event_gameobject_quest` WHERE `id` IN (190072, 190073);

UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=5953; -- Razor Hill Grunt
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=63063; -- Shifty

DELETE FROM `creature_template_addon` WHERE `entry`=5953;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(5953, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''); -- 5953 (Razor Hill Grunt)

-- Gossips
DELETE FROM `gossip_menu` WHERE (`MenuID`=8842 AND `TextID` IN (11473,11474));
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(8842, 11473, 46340), -- 23973 (Masked Orphan Matron)
(8842, 11474, 46340); -- 23973 (Masked Orphan Matron)

DELETE FROM `gossip_menu_option` WHERE `MenuID`=8842 AND `OptionID`=0;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(8842, 0, 0, 'Who is the Headless Horseman?', 22620, 0, 8880, 0, 0, 0, NULL, 0, 46340);

-- Scaling
DELETE FROM `creature_template_scaling` WHERE `DifficultyID`=0 AND `Entry`=5953;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(5953, 0, 0, 0, 2108, 46340);

UPDATE `creature_template_scaling` SET `LevelScalingDeltaMin`=0, `LevelScalingDeltaMax`=0, `VerifiedBuild`=46340 WHERE (`Entry`=63063 AND `DifficultyID`=0);

-- Gameobject templates
UPDATE `gameobject_template` SET `ContentTuningId`=425, `VerifiedBuild`=46340 WHERE `entry`=190064; -- Candy Bucket

UPDATE `gameobject_template_addon` SET `faction`=1735 WHERE `entry`=190064; -- Candy Bucket

-- Quests
UPDATE `quest_offer_reward` SET `VerifiedBuild`=46340 WHERE `ID`=12361;

DELETE FROM `gameobject_queststarter` WHERE `id`=190064;
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(190064, 12361, 46340);

UPDATE `gameobject_questender` SET `VerifiedBuild`=46340 WHERE (`id`=190064 AND `quest`=12361);

DELETE FROM `game_event_gameobject_quest` WHERE `id`=190064;

DELETE FROM `gameobject_template` WHERE `entry` IN (251826 /*Crooked Tree Candle*/, 251824 /*Crooked Tree Rug*/, 251823 /*Crooked Tree Bed*/, 251822 /*Crooked Tree Chair*/, 251768 /*Spooky Light Big*/, 251765 /*Crooked Tree Tent*/, 251706 /*Crooked Tree Cauldron*/, 243192 /*Campfire*/, 369301 /*Area of Suspicious Activity*/, 369302 /*Area of Suspicious Activity*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(251826, 5, 35490, 'Crooked Tree Candle', '', '', '', 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 425, 46366), -- Crooked Tree Candle
(251824, 5, 35483, 'Crooked Tree Rug', '', '', '', 0.699999988079071044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 425, 46366), -- Crooked Tree Rug
(251823, 5, 26987, 'Crooked Tree Bed', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 425, 46366), -- Crooked Tree Bed
(251822, 5, 14518, 'Crooked Tree Chair', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 425, 46366), -- Crooked Tree Chair
(251768, 5, 35401, 'Spooky Light Big', '', '', '', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 425, 46366), -- Spooky Light Big
(251765, 5, 35474, 'Crooked Tree Tent', '', '', '', 0.699999988079071044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 425, 46366), -- Crooked Tree Tent
(251706, 10, 16741, 'Crooked Tree Cauldron', '', '', '', 1, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 218367, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 41554, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 425, 46366); -- Crooked Tree Cauldron

DELETE FROM `gameobject_template_addon` WHERE `entry` IN (251706 /*Crooked Tree Cauldron*/, 251765 /*Crooked Tree Tent*/);
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `WorldEffectID`, `AIAnimKitID`) VALUES
(251706, 0, 262145, 0, 0), -- Crooked Tree Cauldron
(251765, 0, 8388608, 0, 0); -- Crooked Tree Tent

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=188, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=67110912, `unit_flags3`=16777216 WHERE `entry`=109860; -- Crooked Tree Crow
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=14, `BaseAttackTime`=3000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=109825; -- Aria Sorrowheart
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=188, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=109734; -- Hag of the Crooked Tree
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=109854; -- Duroc Ironjaw

DELETE FROM `creature_template_movement` WHERE `CreatureId`=109860;
INSERT INTO `creature_template_movement` (`CreatureId`, `Flight`) VALUES
(109860, 1);

DELETE FROM `creature_template_addon` WHERE `entry` IN (109860 /*109860 (Crooked Tree Crow)*/, 109854 /*109854 (Duroc Ironjaw)*/);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(109860, 0, 0, 50331648, 1, 0, 0, 0, 0, 0, ''), -- 109860 (Crooked Tree Crow)
(109854, 0, 0, 0, 1, 426, 0, 0, 0, 0, ''); -- 109854 (Duroc Ironjaw)

DELETE FROM `creature_model_info` WHERE `DisplayID` IN (100727, 76701, 110117, 101523, 105955);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(100727, 0.713513493537902832, 1.5, 0, 46366),
(76701, 1.006044268608093261, 0, 0, 46366),
(110117, 0.770981490612030029, 0.800000011920928955, 0, 46366),
(101523, 0.277369260787963867, 1, 0, 46366),
(105955, 0.264983922243118286, 1.5, 0, 46366);

UPDATE `creature_model_info` SET `VerifiedBuild`=46366 WHERE `DisplayID` IN (71448, 71801, 23767, 63999, 60003, 56658, 73035, 40021, 55461, 64050, 47755, 67969, 63892, 63879, 3535, 63849, 43152, 63850, 63836, 58163, 26184, 29331, 63846, 2177, 68720, 38421, 25630, 15147, 42265, 63960, 1141, 63848, 16946, 45139, 16633, 40024, 44169, 66640, 68354, 68172, 68195, 68179, 68193, 68093, 68092, 62284, 62283, 56952, 63334, 63605, 63596, 63597, 63598, 72365, 328, 64330, 51292, 70576, 70451, 68398, 36620, 66678, 63592, 59734, 71578, 43758, 64651, 43759, 63591, 23456, 467, 62734, 63935, 43757, 62512, 60914, 26404, 16178, 2536, 36952, 66620, 9829, 51660, 63631, 69421, 66621, 1160, 30256, 68063, 36956, 68064, 62217, 62638, 28080, 66614, 36944, 40090, 70402, 40089, 36957, 4626, 134, 66481, 64329, 69709, 20641, 61304, 32568, 61102, 67397, 67258, 39553, 31215, 62070, 69860, 70986, 69851, 22590, 60845, 33534, 61099, 61101, 61693, 67421, 60891, 30462, 54644, 61123, 61095, 65790, 31291, 71004, 43100, 61098, 62261, 61097, 46710, 61096, 90318, 1986, 704, 90314, 75972, 90243, 82773, 25436, 89937, 90300, 83764, 90302, 90245, 86333, 89935, 15468, 16238, 90130, 10732, 90303, 90293, 4601, 20985, 36584, 90246, 37330, 37328, 75973, 90252, 92464, 90366, 90242, 37023, 83765, 90253, 90244, 21342, 90133, 37329, 4260, 36585, 37331, 35504, 86332, 16235, 35498, 90129, 92463, 4259, 20988, 99436, 99452, 21072, 70992, 93232, 25420, 94658, 25423, 25375, 104817, 25439, 101418, 96327, 93951, 104818, 96422, 94141, 96332, 93576, 93593, 96712, 73366, 93586, 93579, 94020, 93599, 93589, 24103, 97425, 94471, 93584, 96086, 94665, 94655, 37647, 95258, 93596, 95252, 93577, 94286, 92900, 90260, 92399, 27153, 94491, 94614, 92385, 95081, 98688, 99478, 93151, 98194, 96331, 96591, 96281, 96196, 99205, 97984, 93595, 26064, 95511, 28282, 28111, 94612, 93201, 95948, 95843, 11686, 27823, 104785, 40658, 96637, 86231, 96330, 19283, 74802, 88012, 96614, 95464, 94586, 96423, 40657, 88016, 105361, 96084, 90422, 96325, 99054, 99744, 99048, 93587, 77687, 99450, 94469, 42722, 93597, 42720, 77690, 95325, 92345, 96744, 96510, 93580, 82235, 100265, 96642, 96602, 94613, 96603, 93585, 105325, 105324, 28118, 28120, 97650, 93601, 94472, 96714, 95557, 97651, 92714, 96748, 96624, 94449, 97424, 93590, 93598, 93588, 93592, 95260, 97649, 99382, 93600, 98692, 93582, 99050, 97025, 97347, 95660, 24995, 96625, 31275, 47211, 20923);
UPDATE `creature_model_info` SET `CombatReach`=14, `VerifiedBuild`=46366 WHERE `DisplayID`=71135;
UPDATE `creature_model_info` SET `BoundingRadius`=3.449999809265136718, `VerifiedBuild`=46366 WHERE `DisplayID`=39011;
UPDATE `creature_model_info` SET `BoundingRadius`=0.305999994277954101, `CombatReach`=1.5, `VerifiedBuild`=46366 WHERE `DisplayID` IN (73135, 71147);
UPDATE `creature_model_info` SET `BoundingRadius`=2.610027790069580078, `VerifiedBuild`=46366 WHERE `DisplayID`=14511;
UPDATE `creature_model_info` SET `BoundingRadius`=0.75, `CombatReach`=1.125, `VerifiedBuild`=46366 WHERE `DisplayID` IN (77402, 77403, 77404);
UPDATE `creature_model_info` SET `BoundingRadius`=0.386561989784240722, `VerifiedBuild`=46366 WHERE `DisplayID` IN (77407, 77406, 77405);
UPDATE `creature_model_info` SET `BoundingRadius`=2.942395210266113281, `CombatReach`=3, `VerifiedBuild`=46366 WHERE `DisplayID`=70772;
UPDATE `creature_model_info` SET `BoundingRadius`=0.248000010848045349, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46366 WHERE `DisplayID`=58128;
UPDATE `creature_model_info` SET `BoundingRadius`=0.779591858386993408, `VerifiedBuild`=46366 WHERE `DisplayID`=63870;
UPDATE `creature_model_info` SET `BoundingRadius`=0.442737370729446411, `VerifiedBuild`=46366 WHERE `DisplayID`=64471;
UPDATE `creature_model_info` SET `BoundingRadius`=0.249518632888793945, `CombatReach`=0.300000011920928955, `VerifiedBuild`=46366 WHERE `DisplayID`=71224;
UPDATE `creature_model_info` SET `BoundingRadius`=1.156227827072143554, `CombatReach`=1, `VerifiedBuild`=46366 WHERE `DisplayID`=45092;
UPDATE `creature_model_info` SET `BoundingRadius`=1.328571319580078125, `CombatReach`=1.660714149475097656, `VerifiedBuild`=46366 WHERE `DisplayID`=61702;
UPDATE `creature_model_info` SET `BoundingRadius`=0.474178433418273925, `CombatReach`=1.5, `VerifiedBuild`=46366 WHERE `DisplayID`=69274;
UPDATE `creature_model_info` SET `BoundingRadius`=0.539418935775756835, `CombatReach`=0.5, `VerifiedBuild`=46366 WHERE `DisplayID`=98509;
UPDATE `creature_model_info` SET `BoundingRadius`=2.083333253860473632, `CombatReach`=1, `VerifiedBuild`=46366 WHERE `DisplayID`=94018;
UPDATE `creature_model_info` SET `BoundingRadius`=0.774677395820617675, `CombatReach`=1.70000004768371582, `VerifiedBuild`=46366 WHERE `DisplayID`=92191;
UPDATE `creature_model_info` SET `BoundingRadius`=0.60000002384185791, `CombatReach`=0.60000002384185791, `VerifiedBuild`=46366 WHERE `DisplayID`=21304;
UPDATE `creature_model_info` SET `BoundingRadius`=0.349999994039535522, `VerifiedBuild`=46366 WHERE `DisplayID`=69254;

DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (15354,32751,54141,88376,94433,106511,106615,109692,109734,109825,109854,109860,109990,111384,111402,112453,197961,198015));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(15354, 0, 0, 0, 425, 46366),
(32751, 0, 0, 0, 885, 46366),
(54141, 0, 0, 0, 861, 46366),
(88376, 0, 0, 0, 302, 46366),
(94433, 0, 0, 0, 332, 46366),
(106511, 0, 0, 0, 339, 46366),
(106615, 0, 0, 0, 332, 46366),
(109692, 0, 0, 0, 332, 46366),
(109734, 0, 0, 0, 425, 46366),
(109825, 0, 0, 0, 429, 46366),
(109854, 0, 0, 0, 425, 46366),
(109860, 0, 0, 0, 425, 46366),
(109990, 0, 0, 0, 332, 46366),
(111384, 0, 0, 0, 332, 46366),
(111402, 0, 0, 0, 331, 46366),
(112453, 0, 0, 0, 332, 46366),
(197961, 0, 0, 0, 885, 46366),
(198015, 0, 0, 0, 885, 46366);

DELETE FROM `creature_queststarter` WHERE (`id`=109734 AND `quest`=43162) OR (`id`=109854 AND `quest`=43259);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(109734, 43162, 46366), -- Under the Crooked Tree offered Hag of the Crooked Tree
(109854, 43259, 46366); -- Beware of the Crooked Tree offered Duroc Ironjaw

UPDATE `creature_questender` SET `VerifiedBuild`=46366 WHERE (`id`=109734 AND `quest` IN (43162,43259));

UPDATE `creature_template` SET `gossip_menu_id`=6590, `minlevel`=60, `maxlevel`=60 WHERE `entry`=15354; -- Rachelle Gothena
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry` IN (54170, 54146); -- Delian Sunshade
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags`=537166080, `unit_flags2`=34817, `unit_flags3`=8192 WHERE `entry`=54142; -- Hired Courier

DELETE FROM `creature_template_addon` WHERE `entry` IN (15354, 54141, 54142, 54146, 54170);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(15354, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 15354 (Rachelle Gothena)
(54141, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 54141 (Edgar Goodwin)
(54142, 0, 0, 0, 1, 0, 0, 0, 0, 0, '29266 28559'), -- 54142 (Hired Courier) - Permanent Feign Death, Untrackable
(54146, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 54146 (Delian Sunshade)
(54170, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''); -- 54170 (Delian Sunshade)

-- Gossips
DELETE FROM `gossip_menu` WHERE (`MenuID`=6593 AND `TextID`=7812) OR (`MenuID`=6590 AND `TextID`=7806);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(6593, 7812, 46366), -- 15354 (Rachelle Gothena)
(6590, 7806, 46366); -- 15354 (Rachelle Gothena)

DELETE FROM `gossip_menu_option` WHERE `MenuID`=6590 OR (`MenuID`=12949 AND `OptionID`=0);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(6590, 0, 1, 'What Hallow''s End candy do you have for sale?', 10815, 0, 0, 0, 0, 0, NULL, 0, 46366),
(6590, 1, 0, 'What is there to do on Hallow''s End?', 10816, 0, 6593, 0, 0, 0, NULL, 0, 46366),
(12949, 0, 0, 'Have you seen anyone suspicious trying to sell a crate of objects recently?', 52757, 0, 0, 0, 0, 0, NULL, 0, 46366);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=12949;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15,12949,0,0,0,47,0,29416,8,0,0,0,0,'','Show gossip option if quest 29416 is active');

-- Scaling
DELETE FROM `creature_template_scaling` WHERE `Entry` IN (15354, 54141, 54142, 54146, 54170) AND `DifficultyID`=0;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(15354, 0, 0, 0, 425, 46366),
(54141, 0, 0, 0, 861, 46366),
(54142, 0, 0, 0, 861, 46366),
(54146, 0, 0, 0, 861, 46366),
(54170, 0, 0, 0, 861, 46366);

-- Vendor data
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=46366 WHERE (`entry`=15354 AND `item`=18633 AND `ExtendedCost`=0 AND `type`=1); -- Styleen's Sour Suckerpop
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=46366 WHERE (`entry`=15354 AND `item`=18632 AND `ExtendedCost`=0 AND `type`=1); -- Moonbrook Riot Taffy
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=46366 WHERE (`entry`=15354 AND `item`=7228 AND `ExtendedCost`=0 AND `type`=1); -- Tigule's Strawberry Ice Cream
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=46366 WHERE (`entry`=15354 AND `item`=18635 AND `ExtendedCost`=0 AND `type`=1); -- Bellara's Nutterbar
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=46366 WHERE (`entry`=15354 AND `item`=20557 AND `ExtendedCost`=0 AND `type`=1); -- Hallow's End Pumpkin Treat

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=23 AND `SourceGroup`=15354;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23,15354,20557,0,0,47,0,8312,64,0,0,0,0,'','Item Hallow''s End Pumpkin Treat sold by Rachelle Gothena requires quest 8312 rewarded');

-- Gameobject templates
UPDATE `gameobject_template` SET `VerifiedBuild`=46366 WHERE `entry`=190069; -- Candy Bucket

UPDATE `gameobject_template_addon` SET `faction`=1735 WHERE `entry`=190069; -- Candy Bucket

-- Quests
UPDATE `quest_poi` SET `VerifiedBuild`=46366 WHERE (`QuestID`=29428 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=29428 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29428 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=29428 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29427 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29427 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29427 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29431 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=29431 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29431 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29426 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=29426 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=29426 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=29426 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29426 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29425 AND `BlobIndex`=2 AND `Idx1`=4) OR (`QuestID`=29425 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=29425 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29425 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29425 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29415 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=29415 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29415 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29415 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=11357 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=11357 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=11357 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29400 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29416 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=29416 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=29416 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29416 AND `BlobIndex`=0 AND `Idx1`=0);

UPDATE `quest_poi_points` SET `VerifiedBuild`=46366 WHERE (`QuestID`=29428 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=29428 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29428 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29428 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29427 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29427 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29427 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29431 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29431 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29431 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29426 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=29426 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=29426 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=29426 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=29426 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=29426 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=29426 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=29426 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=29426 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=29426 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=29426 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=29426 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=29426 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=29426 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=29426 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=29426 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=29426 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=29426 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=29426 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=29426 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=29426 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=29426 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29426 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29426 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29425 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=29425 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=29425 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29425 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29425 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29415 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=29415 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29415 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29415 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=11357 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=11357 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=11357 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29400 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29416 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=29416 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=29416 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=29416 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=29416 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=29416 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=29416 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=29416 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=29416 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=29416 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=29416 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=29416 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=29416 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29416 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=29416 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=29416 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=29416 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=29416 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=29416 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=29416 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=29416 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=29416 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=29416 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=29416 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=29416 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29416 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (11357, 29415, 29416, 29425, 29426, 29427, 29428);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(11357, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- Masked Orphan Matron
(29415, 1, 1, 0, 0, 0, 0, 0, 0, 46366), -- Missing Heirlooms
(29416, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Fencing the Goods
(29425, 1, 1, 0, 0, 0, 0, 0, 0, 46366), -- Shopping Around
(29426, 1, 1, 0, 0, 0, 0, 0, 0, 46366), -- Taking Precautions
(29427, 1, 1, 0, 0, 0, 0, 0, 0, 46366), -- The Collector's Agent
(29428, 1, 1, 0, 0, 0, 0, 0, 0, 46366); -- What Now?

UPDATE `quest_details` SET `VerifiedBuild`=46366 WHERE `ID`=29400;

DELETE FROM `quest_request_items` WHERE `ID` IN (29416, 29425, 29426, 29427, 29428);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(29416, 0, 0, 0, 0, 'Why are you still pestering me?', 46366), -- Fencing the Goods
(29425, 0, 1, 0, 0, 'You look like you know something about these missing goods.', 46366), -- Shopping Around
(29426, 1, 1, 0, 0, 'Did you get all the ingredients?', 46366), -- Taking Precautions
(29427, 0, 1, 0, 0, 'This appears to be the sought-after crate.', 46366), -- The Collector's Agent
(29428, 1, 0, 0, 0, 'Have you brought the crate as we discussed?', 0); -- What Now?

DELETE FROM `quest_offer_reward` WHERE `ID` IN (29415, 29416, 29425, 29426, 29427, 29428, 29429, 29431);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(29415, 0, 0, 0, 0, 0, 0, 0, 0, '<This courier won''t be meeting with his employer anytime soon and the crate he was hired to transport seems to have disappeared.>', 46366), -- Missing Heirlooms
(29416, 1, 0, 0, 0, 0, 0, 0, 0, 'Keep your voice down and don''t let word of this get out or I''m finished as an auctioneer!', 46366), -- Fencing the Goods
(29425, 1, 1, 0, 0, 0, 0, 0, 0, 'Leave it to Droffers to have a buyer lined up already. We should combine our efforts to track down this thief and keep the crate''s contents from falling into the wrong hands.', 46366), -- Shopping Around
(29426, 1, 1, 0, 0, 0, 0, 0, 0, 'Let''s see what I can remember from the alchemy lessons of my youth. If it explodes, I''ve done something wrong.$B$BThis concoction should protect us from the worst effects of carrying or handling the crate.', 46366), -- Taking Precautions
(29427, 1, 1, 0, 0, 0, 0, 0, 0, 'Tendrils of dark power dance around the crate, but there''s no trace of Sanath Lim-yo. You can now claim the crate and return it to your employer.', 46366), -- The Collector's Agent
(29428, 1, 1, 0, 0, 0, 0, 0, 0, 'I never thought you''d be able to recover it. Well, let''s see it.', 46366), -- What Now?
(29429, 0, 0, 0, 0, 0, 0, 0, 0, 'It''s been sought after, stolen, and sold. Anyone who tried to tap the magic held within has seen that power turn against him.$B$BYet, the crate itself appears unscathed and suffused with magical energy. From time to time, it shakes or bobs as if its contents were alive.$B$BIt seems to have an affinity for you and now, it''s yours.', 46366), -- The Creepy Crate
(29431, 0, 0, 0, 0, 0, 0, 0, 0, 'What do you want?$B$BCandace sent you? She knows me too well. I''ve hit a rut in my research and I''ve been waiting for a very important delivery, but the courier''s late...', 46366); -- A Friend in Need

UPDATE `quest_offer_reward` SET `VerifiedBuild`=46366 WHERE `ID`=12366;

DELETE FROM `creature_queststarter` WHERE (`quest`=29400 AND `id` IN (19176,19175,19177)) OR (`quest`=11357 AND `id` IN (19175,19176,19177,19178));
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(19175, 11357, 46366), -- Masked Orphan Matron offered Orc Commoner
(19175, 29400, 46366), -- A Season for Celebration offered Orc Commoner
(19176, 11357, 46366), -- Masked Orphan Matron offered Tauren Commoner
(19176, 29400, 46366), -- A Season for Celebration offered Tauren Commoner
(19177, 11357, 46366), -- Masked Orphan Matron offered Troll Commoner
(19177, 29400, 46366), -- A Season for Celebration offered Troll Commoner
(19178, 11357, 46366); -- Masked Orphan Matron offered Forsaken Commoner

UPDATE `creature_queststarter` SET `VerifiedBuild`=46366 WHERE (`id`=44866 AND `quest`=29425) OR (`id`=54141 AND `quest`=29415) OR (`id`=54146 AND `quest`=29426) OR (`id`=54142 AND `quest`=29416);
UPDATE `creature_queststarter` SET `VerifiedBuild`=46366 WHERE (`id`=19178 AND `quest`=29400) OR (`id`=54146 AND `quest`=29427);

UPDATE `creature_questender` SET `VerifiedBuild`=46366 WHERE (`id`=54146 AND `quest` IN (29425,29426)) OR (`id`=44866 AND `quest`=29416) OR (`id`=54142 AND `quest`=29415);
UPDATE `creature_questender` SET `VerifiedBuild`=46366 WHERE (`id`=54141 AND `quest` IN (29431,29428));

DELETE FROM `game_event_creature_quest` WHERE (`quest`=29400 AND `id` IN (19176,19175,19177)) OR (`quest`=11357 AND `id` IN (19175,19176,19177,19178));

DELETE FROM `gameobject_queststarter` WHERE `id`=190069 AND `quest`=12366;
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(190069, 12366, 46366);

UPDATE `gameobject_queststarter` SET `VerifiedBuild`=46366 WHERE (`id`=209094 AND `quest`=29428);

UPDATE `gameobject_questender` SET `VerifiedBuild`=46366 WHERE (`id`=190069 AND `quest`=12366);
UPDATE `gameobject_questender` SET `VerifiedBuild`=46366 WHERE (`id`=209095 AND `quest`=29429) OR (`id`=209094 AND `quest`=29427);

DELETE FROM `game_event_gameobject_quest` WHERE `id`=190069;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=19 AND `SourceEntry`=11357;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(19,0,11357,0,0,12,0,12,0,0,0,0,0,'','Show quest 11357 only if event "Hallow''s End" is active');

-- Misc
DELETE FROM `spell_area` WHERE `spell` IN (100618, 100619, 100676) AND `area` IN (14, 85, 1637);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `flags`, `quest_start_status`, `quest_end_status`) VALUES
(100618, 14, 29416, 0, 0, 0, 2, 3, 10, 0),
(100618, 1637, 29416, 0, 0, 0, 2, 3, 10, 0),
(100619, 85, 29427, 0, 0, 0, 2, 3, 10, 0),
(100676, 1637, 29428, 0, 0, 0, 2, 3, 64, 0);

-- Gameobject templates
UPDATE `gameobject_template` SET `ContentTuningId`=425, `VerifiedBuild`=46366 WHERE `entry`=190065; -- Candy Bucket

UPDATE `gameobject_template_addon` SET `faction`=1735 WHERE `entry`=190065; -- Candy Bucket

-- Quests
UPDATE `quest_offer_reward` SET `VerifiedBuild`=46366 WHERE `ID`=12362;

DELETE FROM `gameobject_queststarter` WHERE `id`=190065;
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(190065, 12362, 46366);

UPDATE `gameobject_template` SET `ContentTuningId`=425, `VerifiedBuild`=46366 WHERE `entry`=190070; -- Candy Bucket

UPDATE `gameobject_template_addon` SET `faction`=1735 WHERE `entry`=190070; -- Candy Bucket

-- Quests
DELETE FROM `quest_poi` WHERE (`QuestID`=8359 AND `BlobIndex`=2 AND `Idx1`=4) OR (`QuestID`=8359 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=8359 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=8359 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=8359 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(8359, 2, 4, 32, 0, 0, 1, 85, 0, 0, 0, 0, 0, 80068, 0, 46366), -- Flexing for Nougat
(8359, 1, 3, 32, 0, 0, 1, 85, 0, 0, 0, 0, 0, 1099973, 0, 46366), -- Flexing for Nougat
(8359, 0, 2, 32, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1105479, 0, 46366), -- Flexing for Nougat
(8359, 0, 1, 0, 258953, 6929, 1, 1, 0, 1, 0, 0, 0, 0, 0, 46366), -- Flexing for Nougat
(8359, 0, 0, -1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 46366); -- Flexing for Nougat

UPDATE `quest_poi` SET `VerifiedBuild`=46366 WHERE (`QuestID`=8358 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=8358 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=8358 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=8360 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=8360 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=8360 AND `BlobIndex`=0 AND `Idx1`=0);

DELETE FROM `quest_poi_points` WHERE (`QuestID`=8359 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=8359 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=8359 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=8359 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=8359 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(8359, 4, 0, 1573, -4439, 16, 46366), -- Flexing for Nougat
(8359, 3, 0, 1571, -4434, 16, 46366), -- Flexing for Nougat
(8359, 2, 0, 1238, -4395, 28, 46366), -- Flexing for Nougat
(8359, 1, 0, 1634, -4439, 28, 46366), -- Flexing for Nougat
(8359, 0, 0, 1634, -4439, 28, 46366); -- Flexing for Nougat

UPDATE `quest_poi_points` SET `VerifiedBuild`=46366 WHERE (`QuestID`=8358 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=8358 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=8358 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=8360 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=8360 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=8360 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (8358, 8359, 8360);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(8358, 5, 1, 0, 0, 0, 0, 0, 0, 46366), -- Incoming Gumdrop
(8359, 5, 1, 0, 0, 0, 0, 0, 0, 46366), -- Flexing for Nougat
(8360, 1, 1, 0, 0, 0, 0, 0, 0, 46366); -- Dancing for Marzipan

UPDATE `quest_request_items` SET `EmoteOnIncomplete`=6, `VerifiedBuild`=46366 WHERE `ID`=8358; -- Incoming Gumdrop
UPDATE `quest_request_items` SET `EmoteOnIncomplete`=1, `CompletionText`='No candy until you flex for me, $n...', `VerifiedBuild`=46366 WHERE `ID`=8359; -- Flexing for Nougat
UPDATE `quest_request_items` SET `EmoteOnIncomplete`=6, `CompletionText`='You know how to dance, don''t you?  Try by putting your right foot in... then your right foot out... your right foot in... shake it all about...', `VerifiedBuild`=46366 WHERE `ID`=8360; -- Dancing for Marzipan

UPDATE `quest_offer_reward` SET `RewardText`='Wow, you got them all!  You''re awesome!$B$BThank you for trick-or-treating for me.  Here, take these pumpkin treats - I think you''ll like them a lot!$B$BHappy Hallow''s End, $n!', `VerifiedBuild`=46366 WHERE `ID`=8312; -- Hallow's End Treats for Spoops!
UPDATE `quest_offer_reward` SET `Emote1`=4, `Emote2`=1, `RewardText`='Woo-woo!  Well done, $n!  Here''s your treat.$B$BHappy Hallow''s End!', `VerifiedBuild`=46366 WHERE `ID`=8358; -- Incoming Gumdrop
UPDATE `quest_offer_reward` SET `Emote1`=4, `Emote2`=1, `RewardText`='You are truly mighty, haha!  Well done, and thanks for being such a good sport.  Here''s your candy.$B$BHappy Hallow''s End, $n!', `VerifiedBuild`=46366 WHERE `ID`=8359; -- Flexing for Nougat
UPDATE `quest_offer_reward` SET `Emote1`=4, `Emote2`=1, `RewardText`='You''re quite the dancing machine, $n!$B$BHere''s your treat for being such a good sport.  Happy Hallow''s End, and give my best to your little friend!', `VerifiedBuild`=46366 WHERE `ID`=8360; -- Dancing for Marzipan
UPDATE `quest_offer_reward` SET `VerifiedBuild`=46366 WHERE `ID`=12367;

UPDATE `creature_queststarter` SET `VerifiedBuild`=46366 WHERE (`id`=6929 AND `quest`=8359) OR (`id`=11814 AND `quest`=8358);
UPDATE `creature_queststarter` SET `VerifiedBuild`=46366 WHERE (`id`=6746 AND `quest`=8360);

UPDATE `creature_questender` SET `VerifiedBuild`=46366 WHERE (`id`=6929 AND `quest`=8359) OR (`id`=15309 AND `quest`=8312) OR (`id`=11814 AND `quest`=8358);
UPDATE `creature_questender` SET `VerifiedBuild`=46366 WHERE (`id`=6746 AND `quest`=8360);

DELETE FROM `gameobject_queststarter` WHERE `id`=190070;
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(190070, 12367, 46366);

UPDATE `gameobject_questender` SET `VerifiedBuild`=46366 WHERE (`id`=190070 AND `quest`=12367);

DELETE FROM `game_event_gameobject_quest` WHERE `id`=190070;

UPDATE `creature_template` SET `gossip_menu_id`=8941, `minlevel`=60, `maxlevel`=60 WHERE `entry`=19173; -- Night Elf Commoner

DELETE FROM `creature_template_addon` WHERE `entry`=19173;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(19173, 0, 0, 0, 257, 0, 0, 0, 0, 0, '33209 33207 33208'); -- 19173 (Night Elf Commoner)

-- Gameobject templates
UPDATE `gameobject_template` SET `ContentTuningId`=425, `VerifiedBuild`=46366 WHERE `entry`=190038; -- Candy Bucket

UPDATE `gameobject_template_addon` SET `faction`=1732 WHERE `entry`=190038; -- Candy Bucket

-- Quests
UPDATE `quest_offer_reward` SET `VerifiedBuild`=46366 WHERE `ID`=12334;

DELETE FROM `creature_queststarter` WHERE (`id`=19173 AND `quest`=29074);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(19173, 29074, 46366); -- A Season for Celebration offered Night Elf Commoner

DELETE FROM `game_event_creature_quest` WHERE `id`=19173 AND `quest`=29074;

DELETE FROM `gameobject_queststarter` WHERE `id`=190038;
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(190038, 12334, 46366);

UPDATE `gameobject_questender` SET `VerifiedBuild`=46366 WHERE (`id`=190038 AND `quest`=12334);

DELETE FROM `game_event_gameobject_quest` WHERE `id`=190038;

-- Gossips
DELETE FROM `gossip_menu_option` WHERE (`MenuID`=9469 AND `OptionID`=0);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(9469, 0, 0, 'Who is the Headless Horseman?', 22620, 0, 8880, 0, 0, 0, NULL, 0, 46366);

-- Gameobject templates
UPDATE `gameobject_template` SET `ContentTuningId`=425, `VerifiedBuild`=46366 WHERE `entry`=190037; -- Candy Bucket

UPDATE `gameobject_template_addon` SET `faction`=1732 WHERE `entry`=190037; -- Candy Bucket

-- Quests
UPDATE `quest_offer_reward` SET `VerifiedBuild`=46366 WHERE `ID`=12333;

DELETE FROM `gameobject_queststarter` WHERE `id`=190037;
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(190037, 12333, 46366);

UPDATE `gameobject_questender` SET `VerifiedBuild`=46366 WHERE (`id`=190037 AND `quest`=12333);

DELETE FROM `game_event_gameobject_quest` WHERE `id`=190037;

UPDATE `creature_template` SET `gossip_menu_id`=8936, `minlevel`=60, `maxlevel`=60, `npcflag`=1 WHERE `entry`=19171; -- Draenei Commoner

DELETE FROM `creature_template_addon` WHERE `entry`=19171;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(19171, 0, 0, 0, 257, 0, 0, 0, 0, 0, '33209 33207 33208'); -- 19171 (Draenei Commoner) - Gossip NPC Appearance - Hallow's End, Gossip NPC Periodic - Despawn, Gossip NPC Periodic - Fidget, Gossip NPC Periodic - Talk

-- Gameobject templates
UPDATE `gameobject_template` SET `ContentTuningId`=425, `VerifiedBuild`=46366 WHERE `entry`=190041; -- Candy Bucket

UPDATE `gameobject_template_addon` SET `faction`=1732 WHERE `entry`=190041; -- Candy Bucket

-- Quests
UPDATE `quest_offer_reward` SET `VerifiedBuild`=46366 WHERE `ID`=12337;

DELETE FROM `creature_queststarter` WHERE (`id`=19171 AND `quest`=29074);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(19171, 29074, 46366); -- A Season for Celebration offered Draenei Commoner

DELETE FROM `game_event_creature_quest` WHERE `id`=19171 AND `quest`=29074;

DELETE FROM `gameobject_queststarter` WHERE `id`=190041;
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(190041, 12337, 46366);

UPDATE `gameobject_questender` SET `VerifiedBuild`=46366 WHERE (`id`=190041 AND `quest`=12337);

DELETE FROM `game_event_gameobject_quest` WHERE `id`=190041;

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501246, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 205.75, -1553.33, 88.6323, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501247, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 228.955, -1556.32, 99.3296, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501248, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 151.358, -1565.8, 98.5467, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501249, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 170.729, -1547.7, 96.2901, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501250, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 231.04, -1641.17, 77.0799, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501264, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 339.05, -1647.53, 72.9357, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501265, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 342.231, -1625.85, 70.6503, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501266, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 352.969, -1594.86, 75.4354, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501267, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 341.582, -1618.24, 71.1768, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501268, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 303.113, -1669.5, 67.4644, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501280, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 206.594, -1678.39, 71.7666, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501281, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 295.189, -1675.7, 67.1778, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501282, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 228.293, -1678.72, 88.654, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501283, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 168.12, -1669.95, 74.9093, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501284, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 152.783, -1664.84, 78.2301, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501285, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 240.498, -1665.86, 90.2587, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501286, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 270.052, -1642.94, 90.1081, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501287, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 138.585, -1651.32, 78.5606, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501288, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 180.589, -1664.84, 83.0354, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501289, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 176.957, -1669.03, 89.4588, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501290, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 280.993, -1590.45, 78.6802, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501291, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 264.309, -1615.26, 79.3098, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501292, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 304.436, -1624.88, 75.4223, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501293, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 80.7656, -1614.87, 97.0717, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501294, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 196.181, -1650.91, 77.4528, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501297, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 284.207, -1581.56, 94.2424, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501298, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 108.314, -1650.98, 77.1518, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501299, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 305.224, -1619.71, 90.2015, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501300, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 277.694, -1660.17, 88.9152, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501301, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 344.46, -1602.06, 74.5231, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501302, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 333.863, -1644.25, 87.1651, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501304, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 291.95, -1688.19, 88.6217, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501305, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 346.913, -1604.72, 90.1067, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501306, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 326.696, -1648.21, 92.1339, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501307, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 340.708, -1605.89, 94.9782, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501308, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 117.293, -1689.62, 76.6277, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501309, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 120.922, -1690.68, 92.2521, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501310, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 281.731, -1651.32, 72.512, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501311, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 311.201, -1600.97, 74.5888, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501312, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 316.182, -1580.47, 77.2992, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (501313, 54780, 870, 5785, 5854, '0', 0, '', 0, -1, 0, 0, 315.754, -1622.57, 97.0374, 0, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);

REPLACE INTO `creature_template_addon` (`entry`, `bytes1`, `bytes2`, `auras`) VALUES ('54780', '65536', '1', '102372');


REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (54780, 0, 0, 1, 8, 0, 100, 0, 102375, 0, 2000, 2000, 0, '', 33, 54789, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Orchard Fire');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (54780, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 28, 102372, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Orchard Fire');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (54780, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Orchard Fire');

UPDATE `creature_template` SET `KillCredit1`='0' WHERE  `entry`=54703;
UPDATE `creature_template` SET `KillCredit1`='0' WHERE  `entry`=54702;