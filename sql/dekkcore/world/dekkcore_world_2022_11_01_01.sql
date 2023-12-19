
UPDATE `creature_template_addon` SET `bytes1`='0', `bytes2`='1', `auras`='102723' WHERE  `entry`=54990;

DELETE FROM `smart_scripts` WHERE `entryorguid`=54990 AND `source_type`=0 AND `id`=0 AND `link`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (54990, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 54996, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Orgus - On Gossip - Kill Credit');
DELETE FROM `smart_scripts` WHERE `entryorguid`=54990 AND `source_type`=0 AND `id`=1 AND `link`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (54990, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 28, 102723, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Captured Nectarbreeze Farmer');
DELETE FROM `smart_scripts` WHERE `entryorguid`=54990 AND `source_type`=0 AND `id`=2 AND `link`=3;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (54990, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 83, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Captured Nectarbreeze Farmer');
DELETE FROM `smart_scripts` WHERE `entryorguid`=54990 AND `source_type`=0 AND `id`=3 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (54990, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Captured Nectarbreeze Farmer');


DELETE FROM `creature_equip_template` WHERE (`CreatureID`=161856 AND `ID`=1);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(161856, 1, 184629, 0, 0, 184629, 0, 0, 0, 0, 0, 43345); -- Assassin



UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2095 WHERE `Id`=22071;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871, `TimeToTarget`=1300 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871, `TimeToTarget`=1300 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869, `TimeToTarget`=1600 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871, `TimeToTarget`=1300 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871, `TimeToTarget`=1300 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871, `TimeToTarget`=1300 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869, `TimeToTarget`=1600 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871, `TimeToTarget`=1300 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869, `TimeToTarget`=1600 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871, `TimeToTarget`=1300 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869, `TimeToTarget`=1600 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871, `TimeToTarget`=1300 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869, `TimeToTarget`=1600 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871, `TimeToTarget`=1300 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871, `TimeToTarget`=1300 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869, `TimeToTarget`=1600 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23869 WHERE `Id`=2147808189;


UPDATE `areatrigger_create_properties_spline_point` SET `X`=16.72120285034179687, `Y`=-0.27128815650939941, `Z`=0.36376953125 WHERE (`AreaTriggerCreatePropertiesId`=22071 AND `Idx` IN (18,17)); -- SpellId : 345568
UPDATE `areatrigger_create_properties_spline_point` SET `X`=15.67588138580322265, `Y`=-0.2543451189994812, `Z`=0.36865234375 WHERE (`AreaTriggerCreatePropertiesId`=22071 AND `Idx`=16); -- SpellId : 345568
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.63055992126464843, `Y`=-0.2374020516872406, `Z`=0.37353515625 WHERE (`AreaTriggerCreatePropertiesId`=22071 AND `Idx`=15); -- SpellId : 345568
UPDATE `areatrigger_create_properties_spline_point` SET `X`=13.58523845672607421, `Y`=-0.22045899927616119, `Z`=0.37841796875 WHERE (`AreaTriggerCreatePropertiesId`=22071 AND `Idx`=14); -- SpellId : 345568
UPDATE `areatrigger_create_properties_spline_point` SET `X`=12.5399169921875, `Y`=-0.20351594686508178, `Z`=0.3828125 WHERE (`AreaTriggerCreatePropertiesId`=22071 AND `Idx`=13); -- SpellId : 345568
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.4947061538696289, `Y`=-0.18652187287807464, `Z`=0.3876953125 WHERE (`AreaTriggerCreatePropertiesId`=22071 AND `Idx`=12); -- SpellId : 345568
UPDATE `areatrigger_create_properties_spline_point` SET `X`=10.44949626922607421, `Y`=-0.16952781379222869, `Z`=0.392578125 WHERE (`AreaTriggerCreatePropertiesId`=22071 AND `Idx`=11); -- SpellId : 345568
UPDATE `areatrigger_create_properties_spline_point` SET `X`=9.404285430908203125, `Y`=-0.15253375470638275, `Z`=0.3974609375 WHERE (`AreaTriggerCreatePropertiesId`=22071 AND `Idx`=10); -- SpellId : 345568
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.359075546264648437, `Y`=-0.1355396956205368, `Z`=0.38671875 WHERE (`AreaTriggerCreatePropertiesId`=22071 AND `Idx`=9); -- SpellId : 345568
UPDATE `areatrigger_create_properties_spline_point` SET `X`=7.313975811004638671, `Y`=-0.11849462985992431, `Z`=0.17333984375 WHERE (`AreaTriggerCreatePropertiesId`=22071 AND `Idx`=8); -- SpellId : 345568
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.269412994384765625, `Y`=-0.10174017399549484, `Z`=0 WHERE (`AreaTriggerCreatePropertiesId`=22071 AND `Idx`=7); -- SpellId : 345568
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.22473907470703125, `Y`=-0.08503671735525131, `Z`=0 WHERE (`AreaTriggerCreatePropertiesId`=22071 AND `Idx`=6); -- SpellId : 345568
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.180065631866455078, `Y`=-0.06833326816558837 WHERE (`AreaTriggerCreatePropertiesId`=22071 AND `Idx`=5); -- SpellId : 345568
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.135076761245727539, `Y`=-0.05123719945549964, `Z`=0 WHERE (`AreaTriggerCreatePropertiesId`=22071 AND `Idx`=4); -- SpellId : 345568
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.090088129043579101, `Y`=-0.03414113074541091, `Z`=0 WHERE (`AreaTriggerCreatePropertiesId`=22071 AND `Idx`=3); -- SpellId : 345568
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.045099496841430664, `Y`=-0.01704506389796733, `Z`=0 WHERE (`AreaTriggerCreatePropertiesId`=22071 AND `Idx`=2); -- SpellId : 345568
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.044921875 WHERE (`AreaTriggerCreatePropertiesId`=22071 AND `Idx`=5);


DELETE FROM `world_quest` WHERE `id` IN (54135 /*54135*/, 63776 /*63776*/, 60395 /*60395*/, 63031 /*63031*/, 52952 /*52952*/, 41161 /*41161*/, 61075 /*61075*/, 63838 /*63838*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(54135, 25200, 16292, 1), -- 54135
(63776, 86400, 20812, 1), -- 63776
(60395, 259200, 19322, 1), -- 60395
(63031, 86400, 20306, 1), -- 63031
(52952, 604800, 16007, 3), -- 52952
(41161, 1209600, 11371, 7), -- 41161
(61075, 86400, 19684, 1), -- 61075
(63838, 302400, 20585, 1); -- 63838

UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=17 AND `Entry` IN (166523,10467,53006,173756,171557,77942,178601,60199,89,61667,65325,19668,29238,3527,59764,176449,175519,173953)) OR (`DifficultyID`=0 AND `Entry` IN (68662,91226,175891,179940,158072,178701,178699,161856,178688,176072,178685,178687,178682,178515,173139,175354,176086,173149));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(166523, 17, 0, 0, 482, 43345),
(10467, 17, 0, 0, 482, 43345),
(53006, 17, 0, 0, 482, 43345),
(173756, 17, 0, 0, 482, 43345),
(171557, 17, 1, 1, 750, 43345),
(77942, 17, 0, 0, 482, 43345),
(178601, 17, 0, 0, 482, 43345),
(60199, 17, 0, 0, 482, 43345),
(89, 17, 0, 0, 482, 43345),
(61667, 17, 0, 0, 882, 43345),
(65325, 17, 0, 0, 977, 43345),
(19668, 17, 0, 0, 482, 43345),
(29238, 17, 0, 0, 994, 43345),
(3527, 17, 0, 0, 482, 43345),
(59764, 17, 0, 0, 482, 43345),
(176449, 17, 0, 0, 482, 43345),
(175519, 17, 0, 0, 2099, 43345),
(173953, 17, -1, -1, 750, 43345),
(68662, 0, 0, 0, 371, 43345),
(91226, 0, 0, 0, 371, 43345),
(175891, 0, 0, 0, 742, 43345),
(179940, 0, 0, 0, 2043, 43345),
(158072, 0, 0, 0, 742, 43345),
(178701, 0, 0, 0, 2043, 43345),
(178699, 0, 0, 0, 2043, 43345),
(161856, 0, 1, 1, 2125, 43345),
(178688, 0, 0, 0, 2043, 43345),
(176072, 0, 1, 1, 2125, 43345),
(178685, 0, 0, 0, 2043, 43345),
(178687, 0, 0, 0, 2043, 43345),
(178682, 0, 0, 0, 2043, 43345),
(178515, 0, 0, 0, 2043, 43345),
(173139, 0, 0, 0, 742, 43345),
(175354, 0, 1, 1, 2125, 43345),
(176086, 0, 0, 0, 742, 43345),
(173149, 0, 0, 0, 742, 43345);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=43345 WHERE (`Entry`=166663 AND `DifficultyID`=0);

DELETE FROM `creature_model_info` WHERE `DisplayID`=94544;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(94544, 1, 0, 0, 43345);

UPDATE `creature_model_info` SET `VerifiedBuild`=43345 WHERE `DisplayID` IN (4590, 87778, 41885, 4587, 46925);
UPDATE `creature_model_info` SET `BoundingRadius`=2.069582223892211914, `CombatReach`=3.599999904632568359, `VerifiedBuild`=43345 WHERE `DisplayID`=97677;
UPDATE `creature_model_info` SET `BoundingRadius`=1.156241893768310546, `CombatReach`=2.52500009536743164, `VerifiedBuild`=43345 WHERE `DisplayID`=54195;
UPDATE `creature_model_info` SET `BoundingRadius`=0.919484734535217285, `CombatReach`=0.625, `VerifiedBuild`=43345 WHERE `DisplayID` IN (106907, 106962);
UPDATE `creature_model_info` SET `BoundingRadius`=0.213859856128692626, `CombatReach`=10, `VerifiedBuild`=43345 WHERE `DisplayID`=75341;
UPDATE `creature_model_info` SET `CombatReach`=0, `VerifiedBuild`=43345 WHERE `DisplayID` IN (62354, 98232);
UPDATE `creature_model_info` SET `BoundingRadius`=0.300000011920928955, `VerifiedBuild`=43345 WHERE `DisplayID`=101317;
UPDATE `creature_model_info` SET `BoundingRadius`=3.046135425567626953, `CombatReach`=3, `VerifiedBuild`=43345 WHERE `DisplayID` IN (101116, 101112);
UPDATE `creature_model_info` SET `BoundingRadius`=0.433389991521835327, `CombatReach`=0.375, `VerifiedBuild`=43345 WHERE `DisplayID`=101115;
UPDATE `creature_model_info` SET `BoundingRadius`=1.012805461883544921, `CombatReach`=1.20000004768371582, `VerifiedBuild`=43345 WHERE `DisplayID`=106981;
UPDATE `creature_model_info` SET `BoundingRadius`=1.154208183288574218, `CombatReach`=1.20000004768371582, `VerifiedBuild`=43345 WHERE `DisplayID`=96293;

REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (213516, 85981, 0, 100, 1, 1, 0, 1, 1, NULL);
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (213517, 85981, 0, 100, 1, 1, 0, 1, 1, NULL);
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (213518, 85981, 0, 100, 1, 1, 0, 1, 1, NULL);
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (213519, 85981, 0, 100, 1, 1, 0, 1, 1, NULL);
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (213520, 85981, 0, 100, 1, 1, 0, 1, 1, NULL);

UPDATE `gameobject_template` SET `Data3`='0', `Data14`='0' WHERE  `entry`=213520;
UPDATE `gameobject_template` SET `Data3`='0', `Data14`='0' WHERE  `entry`=213519;
UPDATE `gameobject_template` SET `Data3`='0', `Data14`='0' WHERE  `entry`=213518;
UPDATE `gameobject_template` SET `Data3`='0', `Data14`='0' WHERE  `entry`=213517;
UPDATE `gameobject_template` SET `Data3`='0', `Data14`='0' WHERE  `entry`=213516;

UPDATE `gameobject_template_addon` SET `flags`='0' WHERE  `entry`=213520;
UPDATE `gameobject_template_addon` SET `flags`='0' WHERE  `entry`=213519;
UPDATE `gameobject_template_addon` SET `flags`='0' WHERE  `entry`=213518;
UPDATE `gameobject_template_addon` SET `flags`='0' WHERE  `entry`=213517;
UPDATE `gameobject_template_addon` SET `flags`='0' WHERE  `entry`=213516;

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (59143, 0, 0, 0, 8, 0, 100, 1, 113285, 0, 0, 0, 0, '', 80, 5914300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Injured Binan Warrior - On Spell Hit - Call Timed Action List');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5914300, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 59143, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Injured Binan Warrior - On Spell Hit - Kill Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5914300, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 91, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Injured Binan Warrior - On Spell Hit - Set Emote State');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5914300, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 0, '', 66, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Injured Binan Warrior - On Spell Hit - Set Facing');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5914300, 9, 3, 0, 0, 0, 100, 0, 500, 500, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Injured Binan Warrior - On Spell Hit - Say Line');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5914300, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Injured Binan Warrior - On Spell Hit - Despawn');

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (59143, 0, 0, 'I am in your debt.', 12, 0, 100, 2, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (59143, 0, 1, 'I must rejoin the battle to save Binan Village.', 12, 0, 100, 2, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (59143, 0, 2, 'Shaohao must have sent you.', 12, 0, 100, 2, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (59143, 0, 3, 'We must drive the yaungol back to the Townlong Steppes.', 12, 0, 100, 2, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (59143, 0, 4, 'You have great honor, stranger. Please join us.', 12, 0, 100, 2, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (59143, 0, 5, 'Thank you. You have saved my life.', 12, 0, 100, 2, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (59143, 0, 6, 'Join us, $c. We could use you in the fight.', 12, 0, 100, 2, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (59143, 0, 7, 'That is powerful healing!', 12, 0, 100, 2, 0, 0, 0, 0, 0, '');

REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('59143', '91587', '2');

UPDATE gameobject_template_addon SET flags='0' WHERE  entry=210759;