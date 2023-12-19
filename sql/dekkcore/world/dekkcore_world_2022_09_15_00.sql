DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_rog_pickpocket';
REPLACE INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(921,'spell_rog_pickpocket');

UPDATE `creature_template` SET `npcflag`='2' WHERE  `entry`=107934;

UPDATE `gameobject_template` SET `Data1`='10980', `Data30`='0', `ContentTuningId`='0' WHERE  `entry`=164658;
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=6552;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6552', '2', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=6554;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6554', '1', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=6551;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6551', '2', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=6553;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6553', '2', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=6555;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6555', '2', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=9162;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('9162', '2', '40120');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='40' WHERE  `entry`=38305;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('38305', '2', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=9167;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('9167', '2', '44325');
DELETE FROM `creature` WHERE  `guid`=364431;
DELETE FROM `creature` WHERE  `guid`=364429;
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=6514;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6514', '2', '44325');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=6513;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6513', '2', '44325');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=6517;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6517', '2', '44325');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=6516;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6516', '2', '44325');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='40' WHERE  `entry`=6585;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6585', '2', '44325');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=6557;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6557', '2', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=6509;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6509', '2', '44325');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=6519;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6519', '2', '44325');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=6518;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6518', '2', '44325');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=6560;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6560', '2', '44325');

UPDATE `creature_template_addon` SET `auras`='' WHERE  `entry`=38237;
UPDATE `creature_template_addon` SET `auras`='' WHERE  `entry`=38373;
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='35' WHERE  `entry`=6503;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6503', '2', '44325');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='35' WHERE  `entry`=6502;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6502', '2', '44325');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='35' WHERE  `entry`=6510;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6510', '2', '44325');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='35' WHERE  `entry`=38254;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('38254', '2', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='35' WHERE  `entry`=6501;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6501', '2', '44325');
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (24705, 0, 3, -1, 0, 0, 1, 78, 0, 1, 0, 0, 0, 0, 0, 45114);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (24705, 0, 2, 0, 266377, 38240, 1, 78, 0, 1, 0, 0, 0, 0, 0, 45114);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (24705, 0, 1, 0, 266376, 38239, 1, 78, 0, 1, 0, 0, 0, 0, 0, 45114);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (24705, 0, 0, 0, 266375, 38238, 1, 78, 0, 1, 0, 0, 0, 0, 0, 45114);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (24705, 2, 0, -6522, -549, 0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (24705, 1, 0, -7200, -346, 0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (24705, 0, 0, -7431, -818, 0, 22908);

UPDATE `creature_template` SET `npcflag`='11', `AIName`='SmartAI' WHERE  `entry`=38237;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38237, 0, 0, 0, 19, 0, 100, 0, 24706, 0, 0, 0, 85, 71458, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on quest accept - summon maxximilian');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38237, 0, 1, 2, 62, 0, 100, 0, 10978, 0, 0, 0, 33, 38237, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on gossip - give credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38237, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'link - close gossip');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38237, 0, 3, 0, 19, 0, 100, 0, 24705, 0, 0, 0, 85, 71458, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'on quest accept - summon maxximilian');

UPDATE `creature_template` SET `npcflag`='7', `AIName`='SmartAI' WHERE  `entry`=38255;
REPLACE INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES (38255, 0, 72043, 39653);
REPLACE INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES (38255, 1, 79960, 39653);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes2`) VALUES ('38255', '31070', '1');

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38255, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, '', 29, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'start follow');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38255, 0, 1, 0, 60, 0, 100, 0, 1000, 1000, 45000, 45000, 0, '', 80, 3825500, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'start ts');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38255, 0, 2, 0, 60, 0, 100, 0, 1000, 1000, 45000, 45000, 0, '', 80, 3863755, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'start ts');

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3825500, 9, 18, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 51, 0, 0, 0, 0, 0, 0, 11, 38239, 15, 0, 0, 0, 0, 0, 0, 'set data');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3825500, 9, 19, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 51, 0, 0, 0, 0, 0, 0, 11, 38240, 15, 0, 0, 0, 0, 0, 0, 'set data');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3825500, 9, 16, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 45, 0, 1, 0, 0, 0, 0, 11, 38240, 15, 0, 0, 0, 0, 0, 0, 'set data');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3825500, 9, 15, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 45, 0, 1, 0, 0, 0, 0, 11, 38239, 15, 0, 0, 0, 0, 0, 0, 'set data');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3825500, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 51, 0, 0, 0, 0, 0, 0, 11, 38254, 10, 0, 0, 0, 0, 0, 0, 'data');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3825500, 9, 8, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 29, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3825500, 9, 7, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 0, '', 33, 38253, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3825500, 9, 6, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, '', 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'say 4');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3825500, 9, 5, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, '', 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'say 3');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3825500, 9, 4, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, '', 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'say 2');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3825500, 9, 3, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'say 1');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3825500, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'say 0');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3825500, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 66, 0, 0, 0, 0, 0, 0, 11, 38254, 10, 0, 0, 0, 0, 0, 0, 'set view');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3825500, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, '', 66, 0, 0, 0, 0, 0, 0, 11, 38254, 10, 0, 0, 0, 0, 0, 0, 'set view');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3825500, 9, 17, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 51, 0, 0, 0, 0, 0, 0, 11, 38238, 15, 0, 0, 0, 0, 0, 0, 'set data');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3825500, 9, 14, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, '', 45, 0, 1, 0, 0, 0, 0, 11, 38238, 15, 0, 0, 0, 0, 0, 0, 'set data');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3825500, 9, 13, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, '', 1, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'say 8');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3825500, 9, 12, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, '', 1, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'say 7');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3825500, 9, 11, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 0, '', 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'say 6');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3825500, 9, 10, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 0, '', 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'say 5');

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38255, 8, 0, 'FOR DOLORIA!', 14, 0, 100, 0, 0, 0, 0, 51108, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38255, 1, 0, 'Light, give us the courage we need to enter battle with Un\\\'Goro\\\'s corrupted dragons.', 12, 0, 100, 0, 0, 0, 0, 38264, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38255, 2, 0, 'I also ask you to sprinkle wildflowers around the feet of my beautiful Doloria, where\\\'er she may walk.', 12, 0, 100, 0, 0, 0, 0, 38266, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38255, 3, 0, 'Finally, I humbly request that you cease venting your hostility \\\'pon my good squire.', 12, 0, 100, 0, 0, 0, 0, 38271, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38255, 4, 0, 'I accept your blessing.', 12, 0, 100, 0, 0, 0, 0, 38273, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38255, 5, 0, 'Luck is with us today! A damsel appears before us, stuck in a crag, without hope of escape! Let us go save her!', 12, 0, 100, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38255, 6, 0, 'Maiden! Fear not, for Maximillian of Northshire has arrived to deliver you from your rocky tomb!', 12, 0, 100, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38255, 7, 0, 'Now, cry not, as you fall not to your death, but into the waiting arms of my squire! Off you go now!', 14, 0, 100, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (38255, 0, 0, 'Squire! Please stand next to me as I request the blessing of this Light-blessed spirit.', 12, 0, 100, 0, 0, 0, 0, 0, 0, '');




UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=38238;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=38239;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=38240;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38238, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 0, '', 33, 38238, 0, 0, 0, 0, 0, 18, 10, 0, 0, 0, 0, 0, 0, 0, 'on data - credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38239, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 0, '', 33, 38239, 0, 0, 0, 0, 0, 18, 10, 0, 0, 0, 0, 0, 0, 0, 'on data - credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38240, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 0, '', 33, 38240, 0, 0, 0, 0, 0, 18, 10, 0, 0, 0, 0, 0, 0, 0, 'on data - credit');

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `MountCreatureID`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (38238, 0, 0, 0, 65536, 1, 0, 0, 0, 0, 0, NULL);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `MountCreatureID`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (38239, 0, 0, 0, 65536, 1, 0, 0, 0, 0, 0, NULL);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `MountCreatureID`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (38240, 0, 0, 0, 65536, 1, 0, 0, 0, 0, 0, NULL);


UPDATE `gameobject_template` SET `Data1`='11460', `Data2`='0', `Data30`='0' WHERE  `entry`=166863;
UPDATE `gameobject_template_addon` SET `flags`='0' WHERE  `entry`=166863;
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `QuestRequired`) VALUES ('11460', '11504', '1');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=38202;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38202, 0, 0, 1, 8, 0, 100, 1, 71349, 0, 0, 0, 0, '', 11, 71353, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'SpellHit - Cast Capture Lasher Seed Effect');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38202, 0, 1, 0, 61, 0, 100, 1, 0, 0, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - Despawn');

UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='35' WHERE  `entry`=6507;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6507', '2', '44325');
UPDATE `creature_template` SET `minlevel`='11', `maxlevel`='35' WHERE  `entry`=6506;
UPDATE `creature_template_scaling` SET `ContentTuningID`='2' WHERE  `Entry`=6506 AND `DifficultyID`=0;
UPDATE `creature_template` SET `minlevel`='11', `maxlevel`='35' WHERE  `entry`=6505;
UPDATE `creature_template_scaling` SET `ContentTuningID`='2' WHERE  `Entry`=6505 AND `DifficultyID`=0;
UPDATE `gameobject_template` SET `Data0`='43', `Data1`='11141', `Data30`='0' WHERE  `entry`=164958;
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `QuestRequired`) VALUES ('164958', '11315', '1');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='35' WHERE  `entry`=38213;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('38213', '2', '44325');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='25', `unit_flags`='0' WHERE  `entry`=38214;
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=6512;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6512', '2', '44325');

UPDATE `creature_template` SET `AIName`='SmartAI', `mechanic_immune_mask`='613097436' WHERE  `entry`=38504;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38504, 0, 0, 0, 62, 0, 100, 0, 11037, 0, 0, 0, 0, '', 85, 72158, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'On gossip select - Tele invoker');


REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (202195, 1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 38521, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Go Activate - Kill Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (202197, 1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 38520, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Go Activate - Kill Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (202196, 1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 38519, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Go Activate - Kill Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (202187, 1, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 38358, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Go Activate - Kill Credit');


UPDATE `gameobject_template` SET `type`='10', `Data0`='43', `Data5`='0', `AIName`='SmartGameObjectAI' WHERE  `entry`=202195;
UPDATE `gameobject_template` SET `type`='10', `Data0`='43', `Data5`='0', `AIName`='SmartGameObjectAI' WHERE  `entry`=202196;
UPDATE `gameobject_template` SET `type`='10', `Data0`='43', `Data5`='0', `AIName`='SmartGameObjectAI' WHERE  `entry`=202197;
UPDATE `gameobject_template` SET `type`='10', `Data0`='43', `Data5`='0', `AIName`='SmartGameObjectAI' WHERE  `entry`=202187;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=38502;

UPDATE `creature_template` SET `faction`='35' WHERE  `faction`=0;
UPDATE `creature_template` SET `AIName`='' WHERE  `entry`=44614;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=166166;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=178660;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=178159;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=104757;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=184562;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=171366;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=95951;
UPDATE `creature_template` SET `KillCredit1`='0' WHERE  `entry`=185024;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=166179;
UPDATE `creature_template` SET `KillCredit1`='0' WHERE  `entry`=185016;
UPDATE `creature_template` SET `KillCredit1`='0' WHERE  `entry`=185029;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=171370;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=93688;
UPDATE `creature_template` SET `KillCredit1`='0' WHERE  `entry`=185015;
UPDATE `creature_template` SET `KillCredit1`='0' WHERE  `KillCredit1`=181376;
UPDATE `creature_template` SET `KillCredit1`='0' WHERE  `KillCredit2`=173429;
UPDATE `creature_template` SET `KillCredit1`='0' WHERE  `KillCredit1`=134989;
DELETE FROM `quest_objectives` WHERE  `ID`=10000002;
DELETE FROM `quest_objectives` WHERE  `ID`=10000001;
UPDATE `smart_scripts` SET `action_param1`='19623' WHERE  `entryorguid`=50051 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_param1`='201360' WHERE  `entryorguid`=51792 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `action_param1`='91677' WHERE  `entryorguid`=47138 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=47060 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_flags`='1' WHERE  `entryorguid`=49178 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=49178 AND `source_type`=0 AND `id`=3 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=48923 AND `source_type`=0 AND `id`=3 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=47583 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `action_param2`='0', `action_param3`='0' WHERE  `entryorguid`=46230 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=46164 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=45692 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=45031 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_param1`='100780' WHERE  `entryorguid`=44794 AND `source_type`=0 AND `id`=6 AND `link`=0;
UPDATE `smart_scripts` SET `action_type`='80', `action_param1`='8103300', `action_param2`='0', `action_param3`='0', `action_param4`='0', `comment`='Sethekk Ritual Credit - ActionList' WHERE  `entryorguid`=81033 AND `source_type`=0 AND `id`=0 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (8103300, 9, 0, 0, 0, 0, 100, 0, 500, 500, 0, 0, 0, '', 85, 163609, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Sethekk Ritual Credit - Invoker Cast');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (8103300, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, '', 85, 163609, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Sethekk Ritual Credit - Invoker Cast');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (8103300, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 0, '', 85, 163609, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Sethekk Ritual Credit - Invoker Cast');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (8103300, 9, 3, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 0, '', 85, 163648, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Sethekk Ritual Credit - Invoker Cast');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (8103300, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 99, 3, 0, 0, 0, 0, 0, 14, 122633, 231646, 0, 0, 0, 0, 0, 0, 'Sethekk Ritual Credit - Despawn');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (8103300, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sethekk Ritual Credit - Despawn');

UPDATE `smart_scripts` SET `action_type`='80', `action_param1`='8103400', `action_param2`='0', `action_param3`='0', `action_param4`='0' WHERE  `entryorguid`=81034 AND `source_type`=0 AND `id`=0 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (8103400, 9, 0, 0, 0, 0, 100, 0, 500, 500, 0, 0, 0, '', 85, 163609, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Sethekk Ritual Credit - Invoker Cast');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (8103400, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, '', 85, 163609, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Sethekk Ritual Credit - Invoker Cast');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (8103400, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 0, '', 85, 163609, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Sethekk Ritual Credit - Invoker Cast');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (8103400, 9, 3, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 0, '', 85, 163649, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Sethekk Ritual Credit - Invoker Cast');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (8103400, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 99, 3, 0, 0, 0, 0, 0, 14, 122646, 231647, 0, 0, 0, 0, 0, 0, 'Sethekk Ritual Credit - Despawn');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (8103400, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sethekk Ritual Credit - Despawn');

UPDATE `smart_scripts` SET `action_type`='80', `action_param1`='8081700', `action_param2`='0', `action_param3`='0', `action_param4`='0' WHERE  `entryorguid`=80817 AND `source_type`=0 AND `id`=0 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (8081700, 9, 0, 0, 0, 0, 100, 0, 500, 500, 0, 0, 0, '', 85, 163609, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Sethekk Ritual Credit - Invoker Cast');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (8081700, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, '', 85, 163609, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Sethekk Ritual Credit - Invoker Cast');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (8081700, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 0, '', 85, 163609, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Sethekk Ritual Credit - Invoker Cast');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (8081700, 9, 3, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 0, '', 85, 163551, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Sethekk Ritual Credit - Invoker Cast');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (8081700, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 99, 3, 0, 0, 0, 0, 0, 14, 122636, 231343, 0, 0, 0, 0, 0, 0, 'Sethekk Ritual Credit - Despawn');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (8081700, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sethekk Ritual Credit - Despawn');

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (80166, 0, 0, 0, 10, 0, 100, 1, 1, 15, 0, 0, 0, '', 85, 161753, 0, 18, 35, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Invoker Cast');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (80166, 0, 1, 0, 38, 0, 100, 0, 2, 2, 0, 0, 0, '', 78, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Reset Event AI');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (80166, 0, 2, 0, 10, 0, 100, 1, 1, 15, 0, 0, 0, '', 85, 161737, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Invoker Cast');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (80166, 0, 3, 0, 38, 0, 100, 1, 1, 0, 0, 0, 0, '', 78, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Reset Event AI');

UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=117005;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=180654;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=188151;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=120376;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=164036;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=98653;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=111481;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=94507;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=108133;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=102284;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=99436;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=99435;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=99434;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=99433;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=107028;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=100058;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=95843;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=92794;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=164037;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=164727;
UPDATE `creature` SET `PhaseId`='0', `equipment_id`='1' WHERE  `guid`=1100297;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=17318;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=95320;
UPDATE `creature` SET `spawnDifficulties`='0' WHERE  `guid`=36546;
UPDATE `creature` SET `spawnDifficulties`='0' WHERE  `guid`=373761;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=93582;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=93902;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=95319;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=92117;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=92180;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=91045;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=95916;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=115430;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=107201;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=106320;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=105129;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=100742;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=100059;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=164033;

DELETE FROM `world_state` WHERE `ID` IN (20348, 20346, 20554, 20555, 20545, 20546, 20547);
INSERT INTO `world_state` (`ID`, `DefaultValue`, `MapIDs`, `AreaIDs`, `ScriptName`, `Comment`) VALUES 
(20348, 1, '2450', NULL, '', 'Sanctum of Domination - Sylvanas Windrunner - Encounter phase'),
(20346, 0, '2450', NULL, '', 'Sanctum of Domination - Sylvanas Windrunner - Encounter started'),
(20554, 1, '2450', NULL, '', 'Sanctum of Domination - Normal and heroic week - Opened'),
(20555, 1, '2450', NULL, '', 'Sanctum of Domination - Mythic week - Opened'),
(20545, 0, '2450', NULL, '', 'Sanctum of Domination - Normal Difficulty - Testing state'),
(20546, 0, '2450', NULL, '', 'Sanctum of Domination - Heroic Difficulty - Testing state'),
(20547, 0, '2450', NULL, '', 'Sanctum of Domination - Mythic Difficulty - Testing state');

DELETE FROM `conversation_template` WHERE `Id`=17368;
INSERT INTO `conversation_template` (`Id`, `FirstLineId`, `TextureKitId`, `ScriptName`, `VerifiedBuild`) VALUES 
(17368, 44215, 0, 'conversation_sylvanas_windrunner_introduction', 41079);

DELETE FROM `conversation_actors` WHERE `ConversationId`=17368;
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `ConversationActorGuid`, `Idx`, `CreatureId`, `CreatureDisplayInfoId`, `VerifiedBuild`) VALUES 
(17368, 80339, 1200000, 0, 0, 0, 41079);

DELETE FROM `conversation_line_template` WHERE `Id` IN (44219, 44218, 44217, 44216, 44215);
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(44219, 0, 0, 1, 41079),
(44218, 0, 0, 1, 41079),
(44217, 0, 1, 1, 41079),
(44216, 0, 0, 1, 41079),
(44215, 0, 0, 1, 41079);

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=190, `npcflag`=16777216, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67143680, `unit_flags3`=1, `CreatureDifficultyID`=204469 WHERE `entry`=180803;

DELETE FROM `creature_template_addon` WHERE `entry`=180803;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES 
(180803, 0, 0, 0, 1, 0, 0, 0, 4, 0, '355809');

DELETE FROM `creature_template_scaling` WHERE `Entry`=180803;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(180803, 14, 0, 0, 2104, 41488),
(180803, 15, 0, 0, 2105, 41488),
(180803, 16, 0, 0, 2106, 41488),
(180803, 17, 0, 0, 2107, 41488);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=180803 AND `spell_id`=358839;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(180803, 358839, 3, 3);

DELETE FROM `spell_target_position` WHERE `ID`=358839 AND `EffectIndex`=0;
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES 
(358839, 0, 0, 0, 0, 0, 41079);

 -- Sylvanas Windrunner																																				  At the end=8396803
UPDATE `creature_template` SET `minlevel`=63, `maxlevel`=63, `faction`=16, `speed_walk`=1.60000002384185791, `speed_run`=2, `BaseAttackTime`=1000, `unit_flags`=832, `unit_flags3`=0, `VehicleId`=7461, `CreatureDifficultyID`=204624, `mechanic_immune_mask`=617299839, `ScriptName`='boss_sylvanas_windrunner' WHERE `entry`=175732; 

DELETE FROM `creature_template_addon` WHERE `entry`=175732;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES 
(175732, 0, 0, 0, 2, 0, 0, 0, 0, 4, '');

DELETE FROM `creature_equip_template` WHERE `CreatureID`=175732;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(175732, 1, 185997, 0, 0, 185997, 0, 0, 181374, 0, 41079);

DELETE FROM `creature_template_scaling` WHERE `Entry`=175732;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(175732, 14, 3, 3, 2104, 41079),
(175732, 15, 3, 3, 2105, 41079),
(175732, 16, 3, 3, 2106, 41079),
(175732, 17, 3, 3, 2107, 41079);

DELETE FROM `creature_model_info` WHERE `DisplayID`=101311;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES 
(101311, 1.15358, 4, 1, 41359);

DELETE FROM `creature_text` WHERE `CreatureID`=175732;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(175732, 0, 0, 'Very well. Death it is!', 14, 0, 100, 0, 0, 181475, 0, 210319, 0, 'Aggro'),
(175732, 1, 0, 'Fall, hero!', 14, 0, 100, 0, 0, 181499, 0, 210320, 0, 'Slay 01'),
(175732, 1, 1, 'Fuel for the Maw!', 14, 0, 100, 0, 0, 181500, 0, 210321, 0, 'Slay 02'),
(175732, 1, 2, 'You always were weak!', 14, 0, 100, 0, 0, 181501, 0, 210322, 0, 'Slay 03'),
(175732, 2, 0, 'The cycle will be broken. At long last, we will have justice.', 14, 0, 100, 0, 0, 181476, 0, 210323, 0, 'Disengage'),
(175732, 3, 0, '|TInterface\\ICONS\\Achievement_Leader_Sylvanas.blp:20|t %s obtains |cFFFF0000|Hspell:347504|h[Windrunner]|h|r!', 41, 0, 100, 0, 0, 0, 0, 0, 0, 'Windrunner warning'),
(175732, 4, 0, 'No mercy!', 14, 0, 100, 0, 0, 181471, 0, 210324, 0, 'Shadow Dagger'),
(175732, 5, 0, 'To the death!', 14, 0, 100, 0, 0, 181473, 0, 210326, 0, 'Desecrating Shot'),
(175732, 6, 0, '|TInterface\\Icons\\ABILITY_THEBLACKARROW.BLP:20|t %s begins to cast |cFFFF0000|Hspell:347609|h[Wailing Arrow]|h|r!', 41, 0, 100, 0, 0, 0, 0, 0, 0, 'Wailing Arrow warning'),
(175732, 7, 0, '|TInterface\\Icons\\ABILITY_THEBLACKARROW.BLP:20|t You have been targetted by |cFFFF0000|Hspell:347609|h[Wailing Arrow]|h|r!', 41, 0, 100, 0, 0, 0, 0, 0, 5, 'Wailing Arrow tank warning'),
(175732, 8, 0, 'I never miss!', 14, 0, 100, 0, 0, 181474, 0, 210327, 0, 'Wailing Arrow 01'),
(175732, 8, 1, 'I always hit my mark.', 14, 0, 100, 0, 0, 181470, 0, 210339, 0, 'Wailing Arrow 02'),
(175732, 9, 0, '|TInterface\\Icons\\INV_BELT_44.BLP:20|t %s begins to cast |cFFFF0000|Hspell:349458|h[Domination Chains]|h|r!', 41, 0, 100, 0, 0, 0, 0, 0, 0, 'Domination Chains warning'),
(175732, 10, 0, 'The past shackles you!', 14, 0, 100, 0, 0, 181344, 0, 210328, 0, 'Domination Chains'),
(175732, 11, 0, '|TInterface\\Icons\\Ability_Argus_DeathFog.blp:20|t %s begins to cast |cFFFF0000|Hspell:347704|h[Veil of Darkness]|h|r!', 41, 0, 100, 0, 0, 0, 0, 0, 0, 'Veil of Darkness warning'),
(175732, 12, 0, 'Darkness take you!', 14, 0, 100, 0, 0, 181341, 0, 211262, 0, 'Veil of Darkness 01 (Phase 1)'),
(175732, 13, 0, 'You are unfit to stand against me!', 14, 0, 100, 0, 0, 181345, 0, 210329, 0, 'Begin Intermission'),
(175732, 14, 0, '|TInterface\\ICONS\\SPELL_SHADOW_SOULLEECH_3.BLP:20|t %s begins to cast |cFFFF0000|Hspell:348109|h[Banshee Wail]|h|r!', 41, 0, 100, 0, 0, 0, 0, 0, 0, 'Banshee Wail warning'),
(175732, 15, 0, 'Your lives end here!', 14, 0, 100, 0, 0, 181337, 0, 210402, 0, 'Finish Intermission'),
(175732, 16, 0, '|TInterface\\ICONS\\UI_darkshore_warfront_horde_banshee.BLP:20|t %s begins to cast |cFFFF0000|Hspell:351869|h[Haunting Wave]|h|r!', 41, 0, 100, 0, 0, 0, 0, 0, 0, 'Haunting Wave warning'),
(175732, 17, 0, '|TInterface\\ICONS\\Ability_IronMaidens_ConvulsiveShadows.BLP:20|t %s begins to cast |cFFFF0000|Hspell:355540|h[Ruin]|h|r!', 41, 0, 100, 0, 0, 181479, 0, 0, 0, 'Ruin warning'),
(175732, 18, 0, 'I shattered your throne. Now I\'ll break you!', 14, 0, 100, 0, 0, 181529, 0, 210344, 0, 'Winds of Icecrown 01'),
(175732, 19, 0, 'All hope is lost!', 14, 0, 100, 0, 0, 181340, 0, 210338, 0, 'Veil of Darkness 01 (Phase 2-3)'),
(175732, 19, 1, 'Suffer my wrath!', 14, 0, 100, 0, 0, 181339, 0, 210342, 0, 'Veil of Darkness 02 (Phase 2-3)'),
(175732, 19, 2, 'Nothing escapes my wrath!', 14, 0, 100, 0, 0, 181339, 0, 210336, 0, 'Veil of Darkness 03 (Phase 2-3)'),
(175732, 19, 3, 'Fall into oblivion!', 14, 0, 100, 0, 0, 181347, 0, 211258, 0, 'Veil of Darkness 04 (Phase 2-3)'),
(175732, 20, 0, '|TInterface\\ICONS\\ABILITY_WARLOCK_IMPROVEDSOULLEECH.BLP:20|t %s begins to cast |cFFFF0000|Hspell:353955|h[Banshee Scream]|h|r!', 41, 0, 100, 0, 0, 181336, 0, 0, 0, 'Banshee Scream warning'),
(175732, 21, 0, 'Hear the sound of suffering!', 14, 0, 100, 0, 0, 181338, 0, 211266, 0, 'Banshee Wail and Scream 01'),
(175732, 21, 1, 'Death awaits you!', 14, 0, 100, 0, 0, 181336, 0, 210401, 0, 'Banshee Wail and Scream 02'),
(175732, 22, 0, 'You will pay. All of you will pay!', 14, 0, 100, 0, 0, 181530, 0, 210346, 0, 'Winds of Icecrown 02'),
(175732, 23, 0, 'Death bends to my will!', 14, 0, 100, 0, 0, 181343, 0, 210354, 0, 'Phase 3 Start'),
(175732, 24, 0, 'Heed the call of the Banshee Queen!', 14, 0, 100, 0, 0, 181334, 0, 210349, 0, 'Banshee\'s Fury 01'),
(175732, 25, 1, 'Hear my cry and despair!', 14, 0, 100, 0, 0, 181335, 0, 210350, 0, 'Banshee\'s Fury 02'),
(175732, 26, 0, '|TInterface\\ICONS\\Spell_AnimaMaw_GroundState.blp:20|t %s begins to cast |cFFFF0000|Hspell:354145|h[Raze]|h|r!', 41, 0, 100, 0, 0, 0, 0, 0, 0, 'Raze warning');

DELETE FROM `creature_text_locale` WHERE `CreatureID`=175732;
INSERT INTO `creature_text_locale` (`CreatureID`, `GroupID`, `ID`, `Locale`, `Text`) VALUES 
(175732, 3, 0, 'esES', '|TInterface\\ICONS\\Achievement_Leader_Sylvanas.blp:20|t ¡%s obtiene |cFFFF0000|Hspell:347504|h[Brisaveloz]|h|r!'),
(175732, 9, 0, 'esES', '|TInterface\\Icons\\INV_BELT_44.BLP:20|t ¡%s empieza a lanzar |cFFFF0000|Hspell:349458|h[Cadenas de dominación]|h|r!'),
(175732, 6, 0, 'esES', '|TInterface\\Icons\\ABILITY_THEBLACKARROW.BLP:20|t ¡%s empieza a lanzar |cFFFF0000|Hspell:347609|h[Flecha lastimera]|h|r!'),
(175732, 7, 0, 'esES', '|TInterface\\Icons\\ABILITY_THEBLACKARROW.BLP:20|t ¡Te han marcado con |cFFFF0000|Hspell:347609|h[Flecha lastimera]|h|r!'),
(175732, 11, 0, 'esES', '|TInterface\\Icons\\Ability_Argus_DeathFog.blp:20|t ¡%s empieza a lanzar |cFFFF0000|Hspell:347704|h[Velo de oscuridad]|h|r!'),
(175732, 14, 0, 'esES', '|TInterface\\ICONS\\SPELL_SHADOW_SOULLEECH_3.BLP:20|t ¡%s empieza a lanzar |cFFFF0000|Hspell:348109|h[Lamento de alma en pena]|h|r!'),
(175732, 16, 0, 'esES', '|TInterface\\ICONS\\UI_darkshore_warfront_horde_banshee.BLP:20|t ¡%s empieza a lanzar |cFFFF0000|Hspell:351869|h[Oleada inquietante]|h|r!'),
(175732, 17, 0, 'esES', '|TInterface\\ICONS\\Ability_IronMaidens_ConvulsiveShadows.BLP:20|t ¡%s empieza a lanzar |cFFFF0000|Hspell:355540|h[Ruina]|h|r!'),
(175732, 20, 0, 'esES', '|TInterface\\ICONS\\ABILITY_WARLOCK_IMPROVEDSOULLEECH.BLP:20|t ¡%s empieza a lanzar |cFFFF0000|Hspell:353955|h[Alarido de alma en pena]|h|r!');

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=175732;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(175732, 46598, 0, 0);

DELETE FROM `vehicle_template_accessory` WHERE `entry`=175732;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES 
(175732, 178355, 0, 0, 'Sylvanas Windrunner - Shadowcopy', 6, 30000);

DELETE FROM `creature_summon_groups` WHERE `summonerId`=175732;
INSERT INTO `creature_summon_groups` (`summonerId`, `summonerType`, `groupId`, `entry`, `position_x`, `position_y`, `position_z`, `orientation`, `summonType`, `summonTime`, `Comment`) VALUES 
(175732, 0, 0, 176532, 243.661, -804.615, 4105.07, 4.28529, 8, 0, 'Thrall - Sylvanas Windrunner Encounter'),
(175732, 0, 0, 176533, 231.595, -801.5, 4105.07, 5.02181, 8, 0, 'Jaina - Sylvanas Windrunner Encounter'),
(175732, 0, 0, 178081, 239.795, -806.064, 4105.07, 4.77206, 8, 0, 'Bolvar - Sylvanas Windrunner Encounter'),
(175732, 0, 0, 178072, -249.161, -1271.62, 5667.08, 4.56334, 8, 0, 'Anduin - Sylvanas Windrunner Encounter');

 -- Sylvanas Shadowcopy (Fight)
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2099200, `unit_flags3`=1, `CreatureDifficultyID`=199018, `ScriptName`='npc_sylvanas_windrunner_shadowcopy' WHERE `entry`=176369;

DELETE FROM `creature_template_addon` WHERE `entry`=176369;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES 
(176369, 0, 0, 50331648, 1, 0, 0, 0, 0, 4, '');

DELETE FROM `creature_template_scaling` WHERE `Entry`=176369;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(176369, 14, 0, 0, 2104, 41079),
(176369, 15, 0, 0, 2105, 41079),
(176369, 16, 0, 0, 2106, 41079),
(176369, 17, 0, 0, 2107, 41079);

DELETE FROM `creature_template_movement` WHERE `CreatureId`=176369;
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`) VALUES 
(176369, 1, 0, 1, 0, 0, 0);

 -- Sylvanas Shadowcopy (Riding)
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=35653664, `unit_flags3`=1, `CreatureDifficultyID`=201696, `ScriptName`='npc_sylvanas_windrunner_shadowcopy_riding' WHERE `entry`=178355;

DELETE FROM `creature_template_addon` WHERE `entry`=178355;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES 
(178355, 0, 0, 0, 1, 0, 0, 0, 0, 4, '');

DELETE FROM `creature_template_scaling` WHERE `Entry`=178355;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(178355, 14, 0, 0, 2104, 41079),
(178355, 15, 0, 0, 2105, 41079),
(178355, 16, 0, 0, 2106, 41079),
(178355, 17, 0, 0, 2107, 41079);

DELETE FROM `creature_template_movement` WHERE `CreatureId`=178355;
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`) VALUES 
(178355, 1, 0, 1, 0, 0, 0);

 -- Domination Arrow
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=16, `BaseAttackTime`=2000, `unit_flags2`=4194304, `unit_flags3`=1, `CreatureDifficultyID`=204760, `ScriptName`='npc_sylvanas_windrunner_domination_arrow' WHERE `entry`=176920;

DELETE FROM `creature_template_addon` WHERE `entry`=176920;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES 
(176920, 0, 0, 0, 1, 0, 0, 0, 0, 4, '');

DELETE FROM `creature_model_info` WHERE `DisplayID`=100416;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES 
(100416, 0.75, 1.5, 2, 41359);

DELETE FROM `creature_template_scaling` WHERE `Entry`=176920;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(176920, 14, 0, 0, 2104, 41079),
(176920, 15, 0, 0, 2105, 41079),
(176920, 16, 0, 0, 2106, 41079),
(176920, 17, 0, 0, 2107, 41079);

DELETE FROM `creature_template_movement` WHERE `CreatureId`=176920;
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`) VALUES 
(176920, 1, 0, 0, 1, 0, 0);

 -- Dark Sentinel
DELETE FROM `creature_template_scaling` WHERE `Entry`=176920;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(176920, 14, 0, 0, 2104, 41079),
(176920, 15, 0, 0, 2105, 41079),
(176920, 16, 0, 0, 2106, 41079),
(176920, 17, 0, 0, 2107, 41079);

DELETE FROM `creature_equip_template` WHERE `CreatureID`=176404;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(176404, 1, 185997, 0, 0, 185997, 0, 0, 0, 0, 41359);

 -- Ranger (Bow)
DELETE FROM `spell_script_names` WHERE `spell_id`=347560 AND `ScriptName`='spell_sylvanas_windrunner_ranger_bow';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(347560, 'spell_sylvanas_windrunner_ranger_bow');

 -- Ranger (Dagger)
DELETE FROM `spell_script_names` WHERE `spell_id`=348010 AND `ScriptName`='spell_sylvanas_windrunner_ranger_dagger';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(348010, 'spell_sylvanas_windrunner_ranger_dagger');

 -- Windrunner
DELETE FROM `jump_charge_params` WHERE `id` IN (529, 530, 531);
INSERT INTO `jump_charge_params` (`id`, `speed`, `treatSpeedAsMoveTimeSeconds`, `jumpGravity`, `spellVisualId`, `progressCurveId`, `parabolicCurveId`) VALUES 
(529, 0.501, 1, 47.8086, NULL, 0, NULL),
(530, 0.501, 1, 47.8086, NULL, 0, NULL),
(531, 0.151, 1, 526.293, NULL, 0, NULL);

 -- Ranger Strike
DELETE FROM `spell_script_names` WHERE `spell_id`=348299 AND `ScriptName`='spell_sylvanas_windrunner_ranger_strike';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(348299, 'spell_sylvanas_windrunner_ranger_strike');

 -- Windrunner
DELETE FROM `spell_script_names` WHERE `spell_id`=347504 AND `ScriptName`='spell_sylvanas_windrunner_windrunner';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(347504, 'spell_sylvanas_windrunner_windrunner');

 -- Withering Fire
DELETE FROM `spell_script_names` WHERE `spell_id`=347928 AND `ScriptName`='spell_sylvanas_windrunner_withering_fire';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(347928, 'spell_sylvanas_windrunner_withering_fire');

 -- Desecrating Shot
DELETE FROM `spell_script_names` WHERE `spell_id`=348627 AND `ScriptName`='spell_sylvanas_windrunner_desecrating_shot';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(348627, 'spell_sylvanas_windrunner_desecrating_shot');

 -- Ranger Heartseeker
DELETE FROM `spell_script_names` WHERE `spell_id`=352663 AND `ScriptName`='spell_sylvanas_windrunner_ranger_heartseeker';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(352663, 'spell_sylvanas_windrunner_ranger_heartseeker');

 -- Ranger Heartseeker (Shadow damage)
DELETE FROM `spell_script_names` WHERE `spell_id`=352652 AND `ScriptName`='spell_sylvanas_windrunner_ranger_heartseeker_shadow_damage';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(352652, 'spell_sylvanas_windrunner_ranger_heartseeker_shadow_damage');

 -- Domination Chains
DELETE FROM `spell_script_names` WHERE `spell_id`=349419 AND `ScriptName`='spell_sylvanas_windrunner_domination_chains';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(349419, 'spell_sylvanas_windrunner_domination_chains');

 -- Domination Arrow (Fall)
DELETE FROM `spell_script_names` WHERE `spell_id`=352317 AND `ScriptName`='spell_sylvanas_windrunner_domination_arrow';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(352317, 'spell_sylvanas_windrunner_domination_arrow');

 -- Domination Arrow (Fall and Spawn)
DELETE FROM `spell_script_names` WHERE `spell_id`=352319 AND `ScriptName`='spell_sylvanas_windrunner_domination_arrow';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(352319, 'spell_sylvanas_windrunner_domination_arrow');

 -- Domination Chain (Player)
DELETE FROM `spell_script_names` WHERE `spell_id`=349451 AND `ScriptName`='spell_sylvanas_windrunner_domination_chain';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(349451, 'spell_sylvanas_windrunner_domination_chain');

 -- Domination Chain (Periodic)
DELETE FROM `spell_script_names` WHERE `spell_id`=349458 AND `ScriptName`='spell_sylvanas_windrunner_domination_chain_periodic';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(349458, 'spell_sylvanas_windrunner_domination_chain_periodic');

 -- Wailing Arrow
DELETE FROM `spell_script_names` WHERE `spell_id`=347609 AND `ScriptName`='spell_sylvanas_windrunner_wailing_arrow';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(347609, 'spell_sylvanas_windrunner_wailing_arrow');

 -- Wailing Arrow (Trigger)
DELETE FROM `spell_script_names` WHERE `spell_id`=348056 AND `ScriptName`='spell_sylvanas_windrunner_wailing_arrow_trigger';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(348056, 'spell_sylvanas_windrunner_wailing_arrow_trigger');

 -- Wailing Arrow (Raid damage)
DELETE FROM `spell_script_names` WHERE `spell_id`=357618 AND `ScriptName`='spell_sylvanas_windrunner_wailing_arrow_raid_damage';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(357618, 'spell_sylvanas_windrunner_wailing_arrow_raid_damage');

 -- Veil of Darkness (Phase 1 - Fade)
DELETE FROM `spell_script_names` WHERE `spell_id`=352470 AND `ScriptName`='spell_sylvanas_windrunner_veil_of_darkness_fade';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(352470, 'spell_sylvanas_windrunner_veil_of_darkness_fade');

 -- Veil of Darkness (Phase 1 - Cast)
DELETE FROM `spell_script_names` WHERE `spell_id`=347726 AND `ScriptName`='spell_sylvanas_windrunner_veil_of_darkness_phase_1';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(347726, 'spell_sylvanas_windrunner_veil_of_darkness_phase_1');

 -- Rive
DELETE FROM `spell_script_names` WHERE `spell_id`=353417 AND `ScriptName`='spell_sylvanas_windrunner_rive';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(353417, 'spell_sylvanas_windrunner_rive');

 -- Rive (Fast)
DELETE FROM `spell_script_names` WHERE `spell_id`=353418 AND `ScriptName`='spell_sylvanas_windrunner_rive_fast';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(353418, 'spell_sylvanas_windrunner_rive_fast');

 -- Banshee Wail
DELETE FROM `spell_script_names` WHERE `spell_id`=348094 AND `ScriptName`='spell_sylvanas_windrunner_banshee_wail';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(348094, 'spell_sylvanas_windrunner_banshee_wail');

 -- Banshee Wail (Marker)
DELETE FROM `spell_script_names` WHERE `spell_id`=357719 AND `ScriptName`='spell_sylvanas_windrunner_banshee_wail_marker';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(357719, 'spell_sylvanas_windrunner_banshee_wail_marker');

 -- Banshee Wail (Triggered Missile)
DELETE FROM `spell_script_names` WHERE `spell_id`=348108 AND `ScriptName`='spell_sylvanas_windrunner_banshee_wail_triggered_missile';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(348108, 'spell_sylvanas_windrunner_banshee_wail_triggered_missile');

 -- Banshee Wail (Interrupt)
DELETE FROM `spell_script_names` WHERE `spell_id`=351252 AND `ScriptName`='spell_sylvanas_windrunner_banshee_wail_interrupt';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(351252, 'spell_sylvanas_windrunner_banshee_wail_interrupt');

 -- Haunting Wave
DELETE FROM `spell_script_names` WHERE `spell_id`=352271 AND `ScriptName`='spell_sylvanas_windrunner_haunting_wave';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(352271, 'spell_sylvanas_windrunner_haunting_wave');

 -- Ruin
DELETE FROM `spell_script_names` WHERE `spell_id`=355540 AND `ScriptName`='spell_sylvanas_windrunner_ruin';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(355540, 'spell_sylvanas_windrunner_ruin');

 -- Veil of Darkness (Phase 2 - Fade)
DELETE FROM `spell_script_names` WHERE `spell_id`=353273 AND `ScriptName`='spell_sylvanas_windrunner_veil_of_darkness_fade';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(353273, 'spell_sylvanas_windrunner_veil_of_darkness_fade');

 -- Veil of Darkness (Phase 3 - Fade)
DELETE FROM `spell_script_names` WHERE `spell_id`=354168 AND `ScriptName`='spell_sylvanas_windrunner_veil_of_darkness_fade';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(354168, 'spell_sylvanas_windrunner_veil_of_darkness_fade');

 -- Banshee's Bane - 353929
DELETE FROM `spell_script_names` WHERE `spell_id`=353929 AND `ScriptName`='spell_sylvanas_windrunner_banshee_bane';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(353929, 'spell_sylvanas_windrunner_banshee_bane');

 -- Banshee's Fury
DELETE FROM `spell_script_names` WHERE `spell_id`=354068 AND `ScriptName`='spell_sylvanas_windrunner_banshee_fury';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(354068, 'spell_sylvanas_windrunner_banshee_fury');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=357527 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=4 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 357527, 0, 0, 31, 0, 4, 0, 0, 0, 0, 0, '', 'Banshee\'s Fury - Target Players');

 -- Energize Power Aura (Sylvanas)
DELETE FROM `spell_script_names` WHERE `spell_id`=352312 AND `ScriptName`='spell_sylvanas_windrunner_energize_power_aura';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(352312, 'spell_sylvanas_windrunner_energize_power_aura');

 -- Activate Phase Intermission
DELETE FROM `spell_script_names` WHERE `spell_id`=359429 AND `ScriptName`='spell_sylvanas_windrunner_activate_phase_intermission';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(359429, 'spell_sylvanas_windrunner_activate_phase_intermission');

 -- Activate Phase Intermission
DELETE FROM `spell_script_names` WHERE `spell_id`=359431 AND `ScriptName`='spell_sylvanas_windrunner_activate_finish_boss';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(359431, 'spell_sylvanas_windrunner_activate_finish_boss');

DELETE FROM `gameobject_template_addon` WHERE `entry` IN (368743, 368744, 368745, 368746, 368747, 368748, 368749, 368750, 368751, 368752, 368753, 368754, 365171, 368343, 368344, 368345, 368346, 365172, 368958, 369242, 369898);
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `mingold`, `maxgold`, `WorldEffectID`, `AIAnimKitID`) VALUES 
(368743, 1375, 0, 0, 0, 0, 0),
(368744, 1375, 0, 0, 0, 0, 0),
(368745, 1375, 0, 0, 0, 0, 0),
(368746, 1375, 0, 0, 0, 0, 0),
(368747, 1375, 0, 0, 0, 0, 0),
(368748, 1375, 0, 0, 0, 0, 0),
(368749, 1375, 0, 0, 0, 0, 0),
(368750, 1375, 0, 0, 0, 0, 0),
(368751, 1375, 0, 0, 0, 0, 0),
(368752, 1375, 0, 0, 0, 0, 0),
(368753, 1375, 0, 0, 0, 0, 0),
(368754, 1375, 0, 0, 0, 0, 0),
(365171, 2110, 1048608, 0, 0, 0, 0),
(368343, 2110, 1048608, 0, 0, 0, 0),
(368344, 2110, 1048608, 0, 0, 0, 0),
(368345, 2110, 1048608, 0, 0, 0, 0),
(368346, 2110, 1048608, 0, 0, 0, 0),
(365172, 2110, 1048608, 0, 0, 0, 0),
(368958, 0, 48, 0, 0, 0, 0),
(369242, 1375, 32, 0, 0, 0, 0),
(369898, 94, 2113568, 0, 0, 0, 0);

DELETE FROM `areatrigger_template` WHERE `Id` IN (27408, 27687, 6197, 27461, 27782, 27783, 27929, 27928, 27927, 27480, 27432);
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `VerifiedBuild`) VALUES 
(27408, 0, 1, 32, 5, 2.5, 3.5, 5, 2.5, 3.5, 41079), -- Rive
(27687, 0, 0, 36, 4, 4, 0, 0, 0, 0, 41488), -- Calamity - Heroic Mode
(6197,  0, 0, 0, 1, 1, 0, 0, 0, 0, 41079),
(27461, 0, 0, 32, 1, 1, 0, 0, 0, 0, 41488), -- Banshee's Bane
(27782, 0, 4, 100, 100, 0, 0, 0, 0, 0, 41079), -- Blasphemy (357729)
(27783, 0, 4, 100, 100, 0, 0, 0, 0, 0, 41488), -- Blasphemy (357730)
(27929, 0, 1, 34, 1.75, 4, 2, 1.75, 4, 2, 41079), -- Haunting Wave - Normal Mode
(27928, 0, 1, 34, 1.75, 4, 2, 1.75, 4, 2, 41488), -- Haunting Wave - Heroic Mode
(27927, 0, 1, 34, 1.75, 4, 2, 1.75, 4, 2, 44232), -- Haunting Wave - Mythic Mode
(27480, 0, 1, 0, 30, 30, 5, 30, 30, 5, 41488), -- Raze
(27432, 0, 1, 0, 2, 19.5, 5, 2, 19.5, 5, 41079); -- Invigorating Field

DELETE FROM `areatrigger_create_properties` WHERE `Id` IN (23349, 23389, 22400, 23034, 23028, 5428, 23694, 23693, 23673, 23096, 23507, 23506, 23117, 40001);
INSERT INTO `areatrigger_create_properties` (`Id`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `Shape`, `ShapeData0`, `ShapeData1`, `ShapeData2`, `ShapeData3`, `ShapeData4`, `ShapeData5`, `ShapeData6`, `ShapeData7`, `ScriptName`, `VerifiedBuild`) VALUES
(5428, 6197, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'at_sylvanas_windrunner_bridges', 41079), -- Channel Ice (354476, 354574, 354573) and Call Earth (354577, 354575, 354576)
(22400, 6197, 0, 0, 0, 0, -1, 0, 0, 0, 5000, 0, 6, 6, 0, 0, 0, 0, 0, 0, 'at_sylvanas_windrunner_disecrating_shot', 41079), -- Desecrating Shot (348626)
(23028, 27408, 25793, 0, 0, 0, -1, 0, 0, 2653, 4000, 1, 5, 2.5, 3.5, 5, 2.5, 3.5, 0, 0, 'at_sylvanas_windrunner_rive', 41079), -- Rive (353375)
(23034, 6197, 0, 0, 0, 0, -1, 0, 0, 0, 2500, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'at_sylvanas_windrunner_rive_marker', 41079), -- Rive Marker (353419)
(23096, 27461, 0, 0, 0, 0, -1, 0, 460, 0, 600000, 0, 3.6, 3.6, 0, 0, 0, 0, 0, 0, 'at_sylvanas_windrunner_banshee_bane', 41488), -- Rive Marker (353419)
(23117, 27480, 0, 0, 0, 0, -1, 0, 462, 0, 0, 1, 20, 20, 5, 20, 20, 5, 0, 0, 'at_sylvanas_windrunner_raze', 41079), -- Raze (354145)
(23389, 27687, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 'at_sylvanas_windrunner_calamity', 41488), -- Calamity - Heroic Mode
(23506, 27782, 0, 0, 0, 0, -1, 0, 0, 0, 10000, 0, 100, 100, 0, 0, 0, 0, 0, 0, 'at_sylvanas_windrunner_blasphemy', 41079), -- Blasphemy (357729)
(23507, 27783, 0, 0, 0, 0, -1, 0, 0, 0, 7000, 0, 100, 100, 0, 0, 0, 0, 0, 0, 'at_sylvanas_windrunner_blasphemy', 41079), -- Blasphemy (357730)
(23673, 27927, 0, 28419, 0, 0, -1, 0, 0, 10000, 10000, 1, 1.75, 4, 2, 1.75, 4, 2, 0, 0, 'at_sylvanas_windrunner_haunting_wave', 41488), -- Haunting Wave - Mythic Mode (351869)
(23693, 27928, 0, 28658, 0, 0, -1, 0, 0, 14286, 10000, 1, 1.75, 4, 2, 1.75, 4, 2, 0, 0, 'at_sylvanas_windrunner_haunting_wave', 41488), -- Haunting Wave - Heroic Mode (351869)
(23694, 27929, 0, 28659, 0, 0, -1, 0, 0, 14286, 10000, 1, 1.75, 4, 2, 1.75, 4, 2, 0, 0, 'at_sylvanas_windrunner_haunting_wave', 41079), -- Haunting Wave - Normal Mode (351869)
(40001, 27432, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1, 2, 19.5, 5, 2, 19.5, 5, 0, 0, 'at_sylvanas_windrunner_invigorating_field', 0); -- Invigorating Field (353660) NOTE: This one is a custom Id.

DELETE FROM `areatrigger_create_properties_spline_point` WHERE `AreaTriggerCreatePropertiesId` IN (23028, 23694, 23693);
INSERT INTO `areatrigger_create_properties_spline_point` (`AreaTriggerCreatePropertiesId`, `Idx`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(23028, 0, 0, 0, 0, 41359), -- Rive
(23028, 1, -49.9645919799804687, 1.881691813468933105, 0, 41359), 
(23028, 2, -64.953948974609375, 2.446214675903320312, 0, 41359), 
(23028, 3, -72.4486541748046875, 2.728454351425170898, 0, 41359), 
(23028, 4, -79.9433670043945312, 3.010704517364501953, 0, 41359),
(23028, 5, -87.438018798828125, 3.292987823486328125, 0, 41359), 
(23028, 6, -94.9327239990234375, 3.575227260589599609, 0, 41359), 
(23028, 7, -102.427383422851562, 3.857510805130004882, 0, 41359), 
(23028, 8, -109.922080993652343, 4.139750480651855468, 0, 41359), 
(23028, 9, -117.416793823242187, 4.422000408172607421, 0, 41359), 
(23028, 10, -124.911453247070312, 4.704283714294433593, 0, 41359), 
(23028, 11, -132.406158447265625, 4.986523628234863281, 0, 41359), 
(23028, 12, -139.900848388671875, 5.268763065338134765, 0, 41359), 
(23028, 13, -147.3955078125, 5.551046371459960937, 0, 41359), 
(23028, 14, -154.890213012695312, 5.833285808563232421, 0, 41359),
(23694, 0, 0, 0, 0, 41079), -- Haunting Wave - Normal Mode
(23694, 1, 100.0000152587890625, -0.00001968324795598, 0, 41079),
(23693, 0, 0, 0, 0, 41488), -- Haunting Wave - Heroic Mode
(23693, 1, 100.0000076293945312, 0.000041824499930953, 0, 41488);

 -- Highlord Bolvar Fordragon
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=35, `npcflag`=0, `speed_walk`=1.20000004768371582, `speed_run`=1.428571462631225585, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=1073741828, `unit_flags3`=65568, `CreatureDifficultyID`=201344, `ScriptName`='npc_sylvanas_windrunner_bolvar' WHERE `entry`=178081;

DELETE FROM `creature_template_addon` WHERE `entry`=178081;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(178081, 0, 0, 0, 1, 506, 0, 0, 0, '');

DELETE FROM `creature_equip_template` WHERE `CreatureID` = 178081;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(178081, 1, 177838, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_model_info` WHERE `DisplayID`=101964;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES 
(101964, 0.772164, 3.675, 0, 41359);

DELETE FROM `creature_template_scaling` WHERE `Entry` = 178081;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(178081, 14, 0, 0, 837, 41079),
(178081, 15, 0, 0, 837, 41488),
(178081, 16, 0, 0, 837, 41079),
(178081, 17, 0, 0, 837, 41079);

DELETE FROM `creature_template_movement` WHERE `CreatureId`=178081;
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`) VALUES 
(178081, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature_text` WHERE `CreatureID`=178081;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(178081, 0, 0, 'Behind our quarry. Heroes, with me!', 14, 0, 100, 0, 0, 181488, 0, 210387, 0, ''),
(178081, 1, 0, 'By the Light! He\'s expanding the Maw around Oribos!', 14, 0, 100, 0, 0, 181477, 0, 211265, 0, ''),
(178081, 2, 0, 'The Banshee is aiming at our heads!', 14, 0, 100, 0, 0, 181479, 0, 211259, 0, ''),
(178081, 3, 0, 'This power is not yours to command!', 14, 0, 100, 0, 0, 181602, 0, 210390, 0, ''),
(178081, 4, 0, 'Your crusade ends here, Banshee! ', 14, 0, 100, 0, 0, 181523, 0, 211458, 0, ''),
(178081, 5, 0, 'Thrall, scout ahead. Champions, we\'ll assist the admiral!', 14, 0, 100, 0, 0, 181570, 0, 211261, 0, ''),
(178081, 6, 0, 'Thrall won\'t last much longer on his own. We need to reach him!', 14, 0, 100, 0, 0, 181578, 0, 211270, 0, ''),
(178081, 7, 0, 'Sylvanas means to claim our heads! Stop her!', 14, 0, 100, 0, 0, 181480, 0, 211267, 0, ''),
(178081, 8, 0, 'Press the attack! The Jailer must be stopped.', 14, 0, 100, 0, 0, 181478, 0, 211264, 0, ''),
(178081, 9, 0, 'We\'re done with your games, Sylvanas!', 14, 0, 100, 0, 0, 181603, 0, 210391, 0, ''),
(178081, 10, 0, 'This time you\'ll lose, Sylvanas!', 14, 0, 100, 0, 0, 181524, 0, 211459, 0, ''),
(178081, 11, 0, 'No! The Jailer is going to destroy the Arbiter!', 14, 0, 100, 0, 0, 181604, 0, 211464, 0, '');

 -- Runic Mark (triggered)
DELETE FROM `spell_script_names` WHERE `spell_id`=354928 AND `ScriptName`='spell_sylvanas_windrunner_runic_mark_triggered';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(354928, 'spell_sylvanas_windrunner_runic_mark_triggered');

 -- Charge Towards Sylvanas
DELETE FROM `spell_script_names` WHERE `spell_id`=357046 AND `ScriptName`='spell_sylvanas_windrunner_charge_towards_sylvanas';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(357046, 'spell_sylvanas_windrunner_charge_towards_sylvanas');

 -- Winds of Icecrown
DELETE FROM `spell_script_names` WHERE `spell_id`=356941 AND `ScriptName`='spell_sylvanas_windrunner_winds_of_icecrown';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(356941, 'spell_sylvanas_windrunner_winds_of_icecrown');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=356941 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=3 AND `ConditionValue2`=175732 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 356941, 0, 0, 31, 0, 3, 175732, 0, 0, 0, 0, '', 'Winds of Icecrown - Target Sylvanas Windrunner');

 -- Thrall
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=35, `npcflag`=0, `speed_walk`=1.20000004768371582, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=1073741824, `unit_flags3`=65568, `CreatureDifficultyID`=199181, `ScriptName`='npc_sylvanas_windrunner_thrall' WHERE `entry`=176532;

DELETE FROM `creature_template_addon` WHERE `entry`=176532;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(176532, 0, 0, 0, 1, 505, 0, 0, 0, '');

DELETE FROM `creature_equip_template` WHERE `CreatureID` = 176532;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(176532, 1, 168268, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_model_info` WHERE `DisplayID`=101963;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES 
(101963, 0.998133, 1.5, 0, 41359);

DELETE FROM `creature_template_scaling` WHERE `Entry` = 176532;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(176532, 14, 2, 2, 2104, 41079),
(176532, 15, 2, 2, 2105, 41488),
(176532, 16, 2, 2, 2106, 41488),
(176532, 17, 2, 2, 2107, 41488);

DELETE FROM `creature_template_movement` WHERE `CreatureId`=176532;
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`) VALUES 
(176532, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature_text` WHERE `CreatureID`=176532;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(176532, 0, 0, 'Blood and thunder!', 14, 0, 100, 0, 0, 181590, 0, 210382, 0, ''),
(176532, 1, 0, 'I\'ve opened the way! Go! Stop Sylvanas!', 14, 0, 100, 0, 0, 181580, 0, 210371, 0, ''),
(176532, 2, 0, 'Yield, Sylvanas!', 14, 0, 100, 0, 0, 181527, 0, 211453, 0, ''),
(176532, 3, 0, 'With me, champions! Jaina needs our strength!', 14, 0, 100, 0, 0, 181579, 0, 210373, 0, ''),
(176532, 4, 0, 'My defenses falter!', 14, 0, 100, 0, 0, 181577, 0, 210386, 0, ''),
(176532, 5, 0, 'Is there no end to these creatures?!', 14, 0, 100, 0, 0, 181484, 0, 211450, 0, ''),
(176532, 6, 0, 'Their forces are numberless!', 14, 0, 100, 0, 0, 181483, 0, 211449, 0, ''),
(176532, 7, 0, 'I\'m in your debt, Highlord.', 12, 0, 100, 0, 0, 181534, 0, 210383, 0, ''),
(176532, 8, 0, 'Heroes, to me! Let\'s regroup with Jaina!', 14, 0, 100, 0, 0, 181581, 0, 210375, 0, ''),
(176532, 9, 0, 'For Saurfang! For the Horde! ', 14, 0, 100, 0, 0, 181528, 0, 211454, 0, ''),
(176532, 10, 0, 'The Arbiter\'s defenses are weakening! Stop the Jailer while we still can!', 14, 0, 100, 0, 0, 181606, 0, 211463, 0, '');

 -- Pulverize
DELETE FROM `spell_script_names` WHERE `spell_id`=354918 AND `ScriptName`='spell_sylvanas_windrunner_pulverize';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(354918, 'spell_sylvanas_windrunner_pulverize');

 -- Pulverize (triggered)
DELETE FROM `spell_script_names` WHERE `spell_id`=354923 AND `ScriptName`='spell_sylvanas_windrunner_pulverize_triggered';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(354923, 'spell_sylvanas_windrunner_pulverize_triggered');

 -- Stonecrash (phase 1 and 3)
DELETE FROM `spell_script_names` WHERE `spell_id`=357139 AND `ScriptName`='spell_sylvanas_windrunner_stonecrash';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(357139, 'spell_sylvanas_windrunner_stonecrash');

 -- Stonecrash (phase 1 and 3 triggered)
DELETE FROM `jump_charge_params` WHERE `id`=592;
INSERT INTO `jump_charge_params` (`id`, `speed`, `treatSpeedAsMoveTimeSeconds`, `jumpGravity`, `spellVisualId`, `progressCurveId`, `parabolicCurveId`) VALUES 
(592, 0.300, 1, 266.666, 109373, 0, NULL);

 -- Stonecrash (phase 2)
DELETE FROM `spell_script_names` WHERE `spell_id`=357137 AND `ScriptName`='spell_sylvanas_windrunner_stonecrash_phase_two';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(357137, 'spell_sylvanas_windrunner_stonecrash_phase_two');

DELETE FROM `jump_charge_params` WHERE `id`=557;
INSERT INTO `jump_charge_params` (`id`, `speed`, `treatSpeedAsMoveTimeSeconds`, `jumpGravity`, `spellVisualId`, `progressCurveId`, `parabolicCurveId`) VALUES 
(557, 1.251, 1, 19.29110336303710937, 109373, 0, NULL);

DELETE FROM `jump_charge_params` WHERE `id`=574;
INSERT INTO `jump_charge_params` (`id`, `speed`, `treatSpeedAsMoveTimeSeconds`, `jumpGravity`, `spellVisualId`, `progressCurveId`, `parabolicCurveId`) VALUES 
(574, 0.04, 1, 5234.23, 108414, 0, NULL);

 -- Lady Jaina Proudmoore
UPDATE  `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=35, `npcflag`=0, `speed_walk`=1.60000002384185791, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=1073741824, `unit_flags3`=65568, `CreatureDifficultyID`=199182, `ScriptName`='npc_sylvanas_windrunner_jaina' WHERE `entry`=176533;

DELETE FROM `creature_template_addon` WHERE `entry`=176533;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(176533, 0, 0, 0, 1, 654, 0, 0, 0, '');

DELETE FROM `creature_template_scaling` WHERE `Entry` = 176533;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(176533, 14, 0, 0, 2104, 41488),
(176533, 15, 0, 0, 2105, 41488),
(176533, 16, 0, 0, 2106, 41488),
(176533, 17, 0, 0, 2107, 41488);

DELETE FROM `creature_template_movement` WHERE `CreatureId`=176533;
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`) VALUES 
(176533, 1, 0, 0, 0, 0, 0);

DELETE FROM `creature_equip_template` WHERE `CreatureID`=176533;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(176533, 1, 153575, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_model_info` WHERE `DisplayID`=101962;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES 
(101962, 0.652598, 0, 1, 41359);

DELETE FROM `creature_text` WHERE `CreatureID`=176533;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(176533, 0, 0, 'Something is limiting my magic. Where are we?', 12, 0, 100, 0, 0, 181487, 0, 210368, 0, ''),
(176533, 1, 0, 'Is the Jailer trying to break out of the Maw... or something else?', 12, 0, 100, 0, 0, 181489, 0, 211274, 0, ''),
(176533, 2, 0, 'Heroes! I need aid!', 14, 0, 100, 0, 0, 181569, 0, 210366, 0, ''),
(176533, 3, 0, 'There\'s too many of them!', 14, 0, 100, 0, 0, 181482, 0, 211452, 0, ''),
(176533, 4, 0, 'Thank you, Bolvar.', 12, 0, 100, 0, 0, 181533, 0, 210367, 0, ''),
(176533, 5, 0, 'Quickly, champions! Stop Sylvanas!', 14, 0, 100, 0, 0, 181584, 0, 210358, 0, ''),
(176533, 6, 0, 'Hurry! Thrall needs us!', 14, 0, 100, 0, 0, 181583, 0, 210359, 0, ''),
(176533, 7, 0, 'You don\'t have to do this! Surrender! ', 14, 0, 100, 0, 0, 181526, 0, 211456, 0, ''),
(176533, 8, 0, 'Sylvanas! Give Anduin to me!', 14, 0, 100, 0, 0, 181525, 0, 211455, 0, ''),
(176533, 9, 0, 'We\'re out of time! Oribos is being enveloped by the Maw!', 14, 0, 100, 0, 0, 181490, 0, 211271, 0, ''),
(176533, 10, 0, 'Hold them back a little longer. The portal\'s nearly open!', 14, 0, 100, 0, 0, 181491, 0, 210369, 0, ''),
(176533, 11, 0, 'It\'s done! Hurry! ', 14, 0, 100, 0, 0, 181492, 0, 210370, 0, ''),
(176533, 12, 0, 'He\'s done it. The Arbiter falls...', 14, 0, 100, 0, 0, 181499, 0, 211465, 0, '');

 -- Frigid Shards
DELETE FROM `spell_script_names` WHERE `spell_id`=354933 AND `ScriptName`='spell_sylvanas_windrunner_frigid_shards';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(354933, 'spell_sylvanas_windrunner_frigid_shards');

 -- Comet Barrage
DELETE FROM `spell_script_names` WHERE `spell_id`=354938 AND `ScriptName`='spell_sylvanas_windrunner_comet_barrage';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(354938, 'spell_sylvanas_windrunner_comet_barrage');

 -- Teleport to Phase Two
DELETE FROM `spell_script_names` WHERE `spell_id`=350903 AND `ScriptName`='spell_sylvanas_windrunner_teleport_to_phase_two';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(350903, 'spell_sylvanas_windrunner_teleport_to_phase_two');

 -- Raid Portal: Oribos
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=2 AND `SourceEntry`=357102 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=31 AND `ConditionTarget`=0 AND `ConditionValue1`=3 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 2, 357102, 0, 0, 31, 0, 3, 0, 0, 0, 0, 0, '', 'Raid Portal: Oribos - Target Units');

 -- Teleport to Phase Three
DELETE FROM `spell_script_names` WHERE `spell_id`=350906 AND `ScriptName`='spell_sylvanas_windrunner_teleport_to_phase_three';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(350906, 'spell_sylvanas_windrunner_teleport_to_phase_three');

 -- Teleport 
DELETE FROM `spell_script_names` WHERE `spell_id`=357103 AND `ScriptName`='spell_sylvanas_windrunner_teleport';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(357103, 'spell_sylvanas_windrunner_teleport');

 --
 -- Phase 2
  
 -- Mawsworn Hopebreaker
UPDATE `creature_template` SET `minlevel`=61, `maxlevel`=61, `faction`=16, `speed_walk`=1.20000004768371582, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=33587200, `unit_flags2`=2099200 WHERE `entry`=177787;

DELETE FROM `creature_template_addon` WHERE `entry`=177787;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(177787, 0, 0, 0, 1, 0, 0, 0, 0, '351109'); -- Aura may be wrong, check

DELETE FROM `creature_template_scaling` WHERE `Entry`=177787;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(177787, 14, 1, 1, 2104, 41488),
(177787, 15, 1, 1, 2105, 41488),
(177787, 16, 1, 1, 2106, 41488),
(177787, 17, 1, 1, 2107, 41488);

DELETE FROM `creature_equip_template` WHERE `CreatureID`=177787;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(177787, 1, 185377, 0, 0, 0, 0, 0, 0, 0, 0), 
(177787, 2, 185908, 0, 0, 0, 0, 0, 0, 0, 0);

 -- Mawsworn Vanguard
UPDATE `creature_template` SET `minlevel`=61, `maxlevel`=61, `faction`=16, `speed_walk`=1.20000004768371582, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=33587200, `unit_flags2`=2099200 WHERE `entry`=177154;

DELETE FROM `creature_template_scaling` WHERE `Entry`=177154;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(177154, 14, 1, 1, 2104, 41488),
(177154, 15, 1, 1, 2105, 41488),
(177154, 16, 1, 1, 2106, 41488),
(177154, 17, 1, 1, 2107, 41488);

DELETE FROM `creature_equip_template` WHERE `ID`=1 AND `CreatureID`=177154;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(177154, 1, 179720, 0, 0, 0, 0, 0, 0, 0, 0);

 -- Mawforged Goliath
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=16, `speed_walk`=6, `speed_run`=2.142857074737548828, `BaseAttackTime`=3000, `unit_flags`=33587200, `unit_flags2`=2099200 WHERE `entry`=177892;

DELETE FROM `creature_template_addon` WHERE `entry`=177892;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(177892, 0, 0, 0, 1, 0, 0, 0, 0, '350580');

DELETE FROM `creature_template_scaling` WHERE `Entry`=177892;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(177892, 14, 2, 2, 2104, 41488),
(177892, 15, 2, 2, 2105, 41488),
(177892, 16, 2, 2, 2106, 41488),
(177892, 17, 2, 2, 2107, 41488);

 -- Mawforged Summoner
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=16, `speed_walk`=1.20000004768371582, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=33587200, `unit_flags2`=2099200, `HoverHeight`=1.70000004768371582 WHERE `entry`=177891;

DELETE FROM `creature_equip_template` WHERE `ID`=1 AND `CreatureID`=177891;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(177891, 1, 184708, 0, 0, 185371, 0, 0, 0, 0, 0);

DELETE FROM `creature_template_scaling` WHERE `Entry`=177891;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(177891, 14, 2, 2, 2104, 41488),
(177891, 15, 2, 2, 2105, 41488),
(177891, 16, 2, 2, 2106, 41488),
(177891, 17, 2, 2, 2107, 41488);

 -- Mawforged Souljudge
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=16, `speed_walk`=1.20000004768371582, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=33587200, `unit_flags2`=2097152 WHERE `entry`=177889;

DELETE FROM `creature_template_addon` WHERE `entry`=177889;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(177889, 0, 0, 0, 1, 0, 0, 0, 0, '357734'); -- Aura may be wrong

DELETE FROM `creature_template_scaling` WHERE `Entry`=177889;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(177889, 14, 2, 2, 2104, 41488),
(177889, 15, 2, 2, 2105, 41488),
(177889, 16, 2, 2, 2106, 41488),
(177889, 17, 2, 2, 2107, 41488);

DELETE FROM `creature_equip_template` WHERE `ID`=1 AND `CreatureID`=177889;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(177889, 1, 185443, 0, 0, 0, 0, 0, 0, 0, 0);

 -- Decrepit Orb
UPDATE `creature_template` SET `minlevel`=61, `maxlevel`=61, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=35651584, `unit_flags3`=1 WHERE `entry`=178008;

DELETE FROM `creature_template_addon` WHERE `entry`=178008;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(178008, 0, 0, 0, 1, 0, 0, 0, 0, '351317');

DELETE FROM `creature_template_scaling` WHERE `Entry`=178008;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(178008, 14, 1, 1, 2104, 41488),
(178008, 15, 1, 1, 2105, 41488),
(178008, 16, 1, 1, 2106, 41488),
(178008, 17, 1, 1, 2107, 41488);

 -- Focusing Prism
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=35, `npcflag`=16777216, `BaseAttackTime`=2000, `unit_flags2`=100681760, `unit_flags3`=1 WHERE `entry`=180623;

DELETE FROM `creature_template_addon` WHERE `entry`=180623;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(180623, 0, 0, 0, 1, 0, 0, 0, 0, '358159');

DELETE FROM `creature_template_scaling` WHERE `Entry`=180623;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(180623, 14, 0, 0, 2104, 41488),
(180623, 15, 0, 0, 2105, 41488),
(180623, 16, 0, 0, 2106, 41488),
(180623, 17, 0, 0, 2107, 41488);

 -- Activate Invigorating Field
DELETE FROM `spell_script_names` WHERE `spell_id`=353660 AND `ScriptName`='spell_sylvanas_windrunner_activate_invigorating_fields';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(353660, 'spell_sylvanas_windrunner_activate_invigorating_fields');

 -- Invigorating Field
DELETE FROM `jump_charge_params` WHERE `id`=566;
INSERT INTO `jump_charge_params` (`id`, `speed`, `treatSpeedAsMoveTimeSeconds`, `jumpGravity`, `spellVisualId`, `progressCurveId`, `parabolicCurveId`) VALUES 
(566, 1.008, 1, 39.3676, 108168, 0, NULL);

 -- Bane Arrows
DELETE FROM `spell_script_names` WHERE `spell_id`=354011;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(354011, 'spell_sylvanas_windrunner_bane_arrows');

 -- Raze
DELETE FROM `spell_script_names` WHERE `spell_id`=354147;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(354147, 'spell_sylvanas_windrunner_raze');

 -- The Jailer
UPDATE `creature_template` SET `minlevel`=63, `maxlevel`=63, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=71303168, `unit_flags3`=32769, `VehicleId`=7513 WHERE `entry`=178079;

DELETE FROM `creature_template_addon` WHERE `entry`=178079;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(178079, 0, 0, 0, 1, 0, 0, 0, 0, '355347');

DELETE FROM `creature_template_scaling` WHERE `Entry`=178079;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(178079, 14, 3, 3, 2104, 41488),
(178079, 15, 3, 3, 2105, 41488),
(178079, 16, 3, 3, 2106, 41488),
(178079, 17, 3, 3, 2107, 41488);

DELETE FROM `creature_template_movement` WHERE `CreatureId`=178079;
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`) VALUES 
(178079, 1, 0, 1, 0, 0, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=178079;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(178079, 46598, 0, 0);

DELETE FROM `vehicle_template_accessory` WHERE `entry`=178079;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES 
(178079, 179784, 3, 1, 'The Jailer - Soul Leader 3', 6, 30000);

 -- Soul Leader 1 (Last Phase - Rides 178079)
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=33556512, `unit_flags3`=1, `VehicleId`=7536 WHERE `entry`=179788;

DELETE FROM `creature_template_addon` WHERE `entry`=179788;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(179788, 0, 0, 0, 1, 0, 0, 0, 0, '');

DELETE FROM `creature_template_scaling` WHERE `Entry`=179788;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(179788, 14, 0, 0, 2104, 41079),
(179788, 15, 0, 0, 2105, 41079),
(179788, 16, 0, 0, 2106, 41079),
(179788, 17, 0, 0, 2107, 41079);

DELETE FROM `creature_template_movement` WHERE `CreatureId`=179788;
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`) VALUES 
(179788, 1, 0, 1, 0, 0, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=179788;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(179788, 46598, 0, 0);

DELETE FROM `vehicle_template_accessory` WHERE `entry`=179788;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES 
(179788, 179787, 0, 1, 'Soul Leader 1 - Soul Leader 2', 6, 30000);

 -- Soul Leader 2 (Last Phase - Rides 179788)
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=33556512, `unit_flags3`=1, `VehicleId`=7535 WHERE `entry`=179787;

DELETE FROM `creature_template_addon` WHERE `entry`=179787;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(179787, 0, 0, 0, 1, 0, 0, 0, 0, '');

DELETE FROM `creature_template_scaling` WHERE `Entry`=179787;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(179787, 14, 0, 0, 2104, 41079),
(179787, 15, 0, 0, 2105, 41079),
(179787, 16, 0, 0, 2106, 41079),
(179787, 17, 0, 0, 2107, 41079);

DELETE FROM `creature_template_movement` WHERE `CreatureId`=179787;
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`) VALUES 
(179787, 1, 0, 1, 0, 0, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=179787;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(179787, 46598, 0, 0);

DELETE FROM `vehicle_template_accessory` WHERE `entry`=179787;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES 
(179787, 179262, 0, 1, 'Soul Leader 2 - Soul Follower 1', 6, 30000),
(179787, 179262, 1, 1, 'Soul Leader 2 - Soul Follower 1', 6, 30000),
(179787, 179262, 2, 1, 'Soul Leader 2 - Soul Follower 1', 6, 30000),
(179787, 179262, 3, 1, 'Soul Leader 2 - Soul Follower 1', 6, 30000),
(179787, 179262, 4, 1, 'Soul Leader 2 - Soul Follower 1', 6, 30000),
(179787, 179262, 5, 1, 'Soul Leader 2 - Soul Follower 1', 6, 30000),
(179787, 179262, 6, 1, 'Soul Leader 2 - Soul Follower 1', 6, 30000);

 -- Soul Leader 3 (Last Phase - Rides 178079)
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=33556512, `unit_flags3`=1, `VehicleId`=7533 WHERE `entry`=179784;

DELETE FROM `creature_template_addon` WHERE `entry`=179784;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(179784, 0, 0, 0, 1, 0, 0, 0, 0, '');

DELETE FROM `creature_template_scaling` WHERE `Entry`=179784;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(179784, 14, 0, 0, 2104, 41079),
(179784, 15, 0, 0, 2105, 41079),
(179784, 16, 0, 0, 2106, 41079),
(179784, 17, 0, 0, 2107, 41079);

DELETE FROM `creature_template_movement` WHERE `CreatureId`=179784;
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`) VALUES 
(179784, 1, 0, 1, 0, 0, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=179784;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(179784, 46598, 0, 0);

DELETE FROM `vehicle_template_accessory` WHERE `entry`=179784;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES 
(179784, 179261, 0, 1, 'Soul Leader 3 - Soul Leader 4', 6, 30000);

 -- Soul Leader 4 (Last Phase - Rides 179784)
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=33556512, `unit_flags3`=1, `VehicleId`=7514 WHERE `entry`=179261;

DELETE FROM `creature_template_addon` WHERE `entry`=179261;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(179261, 0, 0, 0, 1, 0, 0, 0, 0, '');

DELETE FROM `creature_template_scaling` WHERE `Entry`=179261;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(179261, 14, 0, 0, 2104, 41079),
(179261, 15, 0, 0, 2105, 41079),
(179261, 16, 0, 0, 2106, 41079),
(179261, 17, 0, 0, 2107, 41079);

DELETE FROM `creature_template_movement` WHERE `CreatureId`=179261;
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`) VALUES 
(179261, 1, 0, 1, 0, 0, 0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=179261;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(179261, 46598, 0, 0);

DELETE FROM `vehicle_template_accessory` WHERE `entry`=179261;
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES 
(179261, 179262, 0, 1, 'Soul Leader 4 - Soul Follower 1', 6, 30000),
(179261, 179262, 1, 1, 'Soul Leader 4 - Soul Follower 1', 6, 30000),
(179261, 179262, 2, 1, 'Soul Leader 4 - Soul Follower 1', 6, 30000),
(179261, 179262, 3, 1, 'Soul Leader 4 - Soul Follower 1', 6, 30000),
(179261, 179262, 4, 1, 'Soul Leader 4 - Soul Follower 1', 6, 30000),
(179261, 179262, 5, 1, 'Soul Leader 4 - Soul Follower 1', 6, 30000),
(179261, 179262, 6, 1, 'Soul Leader 4 - Soul Follower 1', 6, 30000),
(179261, 179262, 7, 1, 'Soul Leader 4 - Soul Follower 1', 6, 30000);

 -- Soul Follower 1 (Last Phase - inside 179261)
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=33556512, `unit_flags3`=1 WHERE `entry`=179262;

DELETE FROM `creature_template_addon` WHERE `entry`=179262;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(179262, 0, 0, 50331648, 1, 0, 0, 0, 0, '353687');

DELETE FROM `creature_template_scaling` WHERE `Entry`=179262;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(179262, 14, 0, 0, 2104, 41079),
(179262, 15, 0, 0, 2105, 41079),
(179262, 16, 0, 0, 2106, 41079),
(179262, 17, 0, 0, 2107, 41079);

DELETE FROM `creature_template_movement` WHERE `CreatureId`=179262;
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`) VALUES 
(179262, 1, 0, 1, 0, 0, 0);

 -- Anduin Wrynn
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=14, `npcflag`=0, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=71303168, `unit_flags3`=98336, `VehicleId`=584, `CreatureDifficultyID`=201335, `ScriptName`='npc_sylvanas_windrunner_anduin' WHERE `entry`=178072;

DELETE FROM `creature_template_addon` WHERE `entry`=178072;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(178072, 0, 0, 0, 1, 0, 0, 0, 0, '358166');

DELETE FROM `creature_model_info` WHERE `DisplayID`=99092;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES 
(99092, 0.616385638713836669, 0, 0, 41359);

DELETE FROM `creature_template_scaling` WHERE `Entry`=178072;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(178072, 14, 2, 2, 2104, 41079),
(178072, 15, 2, 2, 2105, 41079),
(178072, 16, 2, 2, 2106, 41079),
(178072, 17, 2, 2, 2107, 41079);

DELETE FROM `creature_equip_template` WHERE `CreatureID`=178072 AND `ID`=1;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES 
(178072, 1, 183938, 0, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `creature_template_movement` WHERE `CreatureId`=178072;
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`) VALUES 
(178072, 1, 0, 0, 0, 0, 0);

 -- Blasphemy
DELETE FROM `spell_script_names` WHERE `spell_id` IN (357729, 357730) AND `ScriptName`='spell_sylvanas_windrunner_blasphemy';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(357729, 'spell_sylvanas_windrunner_blasphemy'),
(357730, 'spell_sylvanas_windrunner_blasphemy');

 -- The Arbiter
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=35, `speed_walk`=0.699999988079071044, `speed_run`=0.25, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=71827456, `unit_flags3`=32769, `CreatureDifficultyID`=201345 WHERE `entry`=178082;

DELETE FROM `creature_template_addon` WHERE `entry`=178082;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES
(178082, 0, 0, 50331648, 1, 0, 0, 0, 0, '357738');

DELETE FROM `creature_template_scaling` WHERE `Entry`=178082;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(178082, 14, 0, 0, 2104, 41079),
(178082, 15, 0, 0, 2105, 41079),
(178082, 16, 0, 0, 2106, 41079),
(178082, 17, 0, 0, 2107, 41079);

DELETE FROM `creature_template_movement` WHERE `CreatureId`=178082;
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`) VALUES 
(178082, 1, 0, 1, 0, 0, 0);


 -- Outroduction
 
DELETE FROM `conversation_template` WHERE `Id` =17375;
INSERT INTO `conversation_template` (`Id`, `FirstLineId`, `TextureKitId`, `ScriptName`, `VerifiedBuild`) VALUES 
(17375, 54141, 0, '', 41079);

DELETE FROM `conversation_actors` WHERE `ConversationId` =17375;
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `ConversationActorGuid`, `Idx`, `CreatureId`, `CreatureDisplayInfoId`, `VerifiedBuild`) VALUES 
(17375, 81173, 0, 0, 0, 0, 41079),
(17375, 80411, 0, 1, 0, 0, 41079),
(17375, 80412, 0, 2, 0, 0, 41079);

DELETE FROM `conversation_line_template` WHERE `Id` IN (44244, 44245, 44246, 44247, 44248, 44249, 44250, 44251);
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(44244, 0, 0, 0, 41079),
(44245, 0, 1, 0, 41079),
(44246, 0, 0, 0, 41079),
(44247, 0, 2, 0, 41079),
(44248, 0, 1, 0, 41079),
(44249, 0, 2, 0, 41079),
(44250, 0, 0, 0, 41079),
(44251, 0, 0, 1, 41079);

 -- Death Gate
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=190, `npcflag`=16777216, `speed_run`=1, `BaseAttackTime`=1000, `unit_flags`=768, `unit_flags2`=101189632 WHERE `entry`=182021;

DELETE FROM `creature_template_scaling` WHERE `Entry`=182021;
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(182021, 14, 0, 0, 2104, 41488),
(182021, 15, 0, 0, 2105, 41488),
(182021, 16, 0, 0, 2106, 41488),
(182021, 17, 0, 0, 2107, 41488);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=182021 AND `spell_id`=360276;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(182021, 360276, 3, 3);

DELETE FROM `spell_target_position` WHERE `ID`=360276 AND `EffectIndex`=0;
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES 
(360276, 0, 0, 0, 0, 0, 41079);

 -- Portal to Oribos (appears at -249.77779, -1277.1838, 5667.2383, 5.0943484)
DELETE FROM `gameobject_template` WHERE `entry`=370168;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES 
(370168, 22, 68190, 'Portal to Oribos', '', '', '', 1, 344603, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 482, '', '', 41079);

DELETE FROM `gameobject_template_addon` WHERE `entry`=370168;
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `mingold`, `maxgold`, `WorldEffectID`, `AIAnimKitID`) VALUES 
(370168, 35, 32, 0, 0, 0, 8021);

DELETE FROM `spell_target_position` WHERE `ID`=344598 AND `EffectIndex`=0;
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES 
(344598, 0, 2222, -1834.21, 1542.27, 5274.16, 41079);

