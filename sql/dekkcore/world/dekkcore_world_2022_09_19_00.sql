update `creature_template` set `AIName`= 'SmartAI' where `entry` in (130922);

DELETE FROM `smart_scripts` WHERE `entryorguid`=130929 AND `source_type`=0 AND `id`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=130929 AND `source_type`=0 AND `id`=2;
DELETE FROM `smart_scripts` WHERE `entryorguid`=130929 AND `source_type`=0 AND `id`=3;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(130929, 0, 1, 0, 10, 0, 100, 0, 1, 10, 15000, 20000, 0, '', 206, 6677, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(130929, 0, 2, 0, 19, 0, 100, 0, 49810, 0, 0, 0, 0, '', 206, 6678, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(130929, 0, 3, 0, 10, 0, 100, 0, 1, 10, 15000, 20000, 0, '', 206, 6681, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=2 AND `SourceEntry`=130929 AND `SourceId`=0 AND `ElseGroup`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=4 AND `SourceEntry`=130929 AND `SourceId`=0 AND `ElseGroup`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=5 AND `SourceEntry`=130929 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 2, 130929, 0, 0, 14, 0, 49810, 0, 0, 0, 0, 0, '', ''),
(22, 4, 130929, 0, 0, 28, 0, 49810, 0, 0, 0, 0, 0, '', ''),
(22, 5, 130929, 0, 0, 28, 0, 50150, 0, 0, 0, 0, 0, '', '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=131043 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(131043, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 267421, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(131043, 0, 1, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 258950, 0, 0, 0, 0, 0, 19, 130921, 20, 0, 0, 0, 0, 0, ''),
(131043, 0, 2, 3, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 267440, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(131043, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 258950, 0, 0, 0, 0, 0, 19, 130922, 20, 0, 0, 0, 0, 0, ''),
(131043, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 10000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=131043 AND `SourceId`=0 AND `ElseGroup`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=4 AND `SourceEntry`=131043 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 131043, 0, 0, 29, 0, 130921, 20, 0, 0, 0, 0, '', ''),
(22, 4, 131043, 0, 0, 29, 0, 130922, 20, 0, 0, 0, 0, '', '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=130921 AND `source_type`=0 AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(130921, 0, 2, 0, 8, 0, 100, 0, 258950, 0, 0, 0, 0, '', 33, 130921, 0, 0, 0, 0, 0, 18, 15, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=130922 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(130922, 0, 0, 0, 8, 0, 100, 0, 258950, 0, 0, 0, 0, '', 33, 130922, 0, 0, 0, 0, 0, 18, 15, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=130905 AND `source_type`=0 AND `id`=3;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(130905, 0, 3, 0, 19, 0, 100, 0, 50074, 0, 0, 0, 0, '', 206, 6743, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=130929 AND `source_type`=0 AND `id`=4;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(130929, 0, 4, 0, 10, 0, 100, 0, 1, 10, 15000, 20000, 0, '', 206, 6745, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=130905 AND `source_type`=0 AND `id`=4;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(130905, 0, 4, 0, 20, 0, 100, 0, 50074, 0, 0, 0, 0, '', 206, 6773, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=130905 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(130905, 0, 0, 1, 62, 0, 100, 0, 22097, 0, 0, 0, 0, '', 33, 133060, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Cala Cruzpot - On Gossip Option 0 Selected - Quest Credit \'\''),
(130905, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Cala Cruzpot - On Gossip Option 0 Selected - Close Gossip'),
(130905, 0, 2, 0, 19, 0, 100, 0, 50074, 0, 0, 0, 0, '', 206, 6743, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(130905, 0, 3, 0, 20, 0, 100, 0, 50074, 0, 0, 0, 0, '', 206, 6773, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


UPDATE `creature_template` SET `flags_extra` = 128 WHERE `entry` IN (132271, 137513, 132258);
UPDATE `areatrigger_create_properties` SET `ScriptName` = 'at_mogulrazdunk_gatling_gun' WHERE `Id` = 17012;
UPDATE `creature_template` SET `ScriptName` = 'bfa_npc_homing_missile' WHERE `entry` = 132338;
UPDATE `creature_template` SET `ScriptName` = 'bfa_npc_venture_skyscorcher' WHERE `entry` = 133436;
UPDATE `creature_template` SET `ScriptName` = 'bfa_boss_mogul_razdunk' WHERE `entry` = 129232;

DELETE FROM `creature` WHERE `id` IN (132056, 132338);
DELETE FROM `spell_script_names` WHERE `spell_id` = 260280;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (260280, 'bfa_spell_gatling_gun');

DELETE FROM `creature_text` WHERE `CreatureID` = 129232;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(129232, 0, 0, 'Do you bums realize how much property damage you\'ve done!?', 14, 0, 100, 0, 0, 97410, 0, 0, 'Mogul Razdunk to Player'),
(129232, 1, 0, 'Right where you belong--under my heel!', 14, 0, 100, 0, 0, 97413, 0, 0, 'Mogul Razdunk'),
(129232, 2, 0, 'Taste some high-caliber carnage!', 14, 0, 100, 0, 0, 97405, 0, 0, 'Mogul Razdunk'),
(129232, 3, 0, 'Get a load of 300 rounds per minute!', 14, 0, 100, 0, 0, 97404, 0, 0, 'Mogul Razdunk'),
(129232, 4, 0, 'What am I payin\' you fools for?! Get out here and fix this!', 14, 0, 100, 0, 0, 97409, 0, 0, 'Mogul Razdunk to Mogul Razdunk'),
(129232, 5, 0, 'Pulverize!', 14, 0, 100, 0, 0, 97415, 0, 0, 'Mogul Razdunk to Drill Smash Target Stalker'),
(129232, 6, 0, '|TINTERFACE\\ICONS\\ABILITY_SIEGE_ENGINEER_SOCKWAVE_MISSILE.BLP:20|t You have been targeted by |cFFFF0000|Hspell:260838|h[Drill Smash]|h|r!', 42, 0, 100, 0, 0, 97406, 0, 0, 'Mogul Razdunk to Player'),
(129232, 7, 0, 'Doh! My insurance premiums!', 14, 0, 100, 0, 0, 97406, 0, 0, 'Mogul Razdunk to Mogul Razdunk'),
(129232, 8, 0, 'Crush!', 14, 0, 100, 0, 0, 97417, 0, 0, 'Mogul Razdunk to Drill Smash Target Stalker'),
(129232, 9, 0, 'Smash!', 14, 0, 100, 0, 0, 97416, 0, 0, 'Mogul Razdunk to Drill Smash Target Stalker'),
(129232, 10, 0, 'You\'ll pay for that!', 14, 0, 100, 0, 0, 97407, 0, 0, 'Mogul Razdunk to Mogul Razdunk');


UPDATE `npc_spellclick_spells` SET `cast_flags` = 1 WHERE `npc_entry` = 126886; -- change spellclick caster to Fertile Soil
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 126886; -- set AIName to Fertile Soil
UPDATE `creature_template` SET `MovementType` = 1 WHERE `entry` IN (127152, 126817); -- set random movement to Carnivorous plants

-- add SAI's for KCredit and setNpcflag
DELETE FROM `smart_scripts` WHERE `entryorguid`=126886;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126886, 0, 0, 1, 8, 0, 100, 0, 251904, 0, 0, 0, 0, '', 33, 126886, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - KCredit'),
(126886, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - SetFlag 0'),
(126886, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 60000, 0, 0, 0, 0, 0, 19, 126892, 1, 0, 0, 0, 0, 0, 'After 1 min - Despawn Summon Unit'),
(126886, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 60000, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 1 min - Des/Respawn NPC');

-- add conditions to spellclick
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=126886 AND `SourceEntry`=251904;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 126886, 251904, 0, 0, 9, 0, 48555, 0, 0, 0, 0, 0, '', 'Only can touch if have quest in progress'),
(18, 126886, 251904, 0, 0, 2, 0, 152644, 1, 0, 0, 0, 0, '', 'Only can touch if have item in bag');


DELETE FROM `smart_scripts` WHERE `entryorguid`=126560 AND `source_type`=0 AND `id`=4;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126560, 0, 4, 0, 19, 0, 100, 0, 47438, 0, 0, 0, 0, '', 206, 8306, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=127414 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(127414, 0, 0, 1, 73, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 127414, 8, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(127414, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 62, 1642, 0, 0, 0, 0, 0, 7, 0, 0, 0, -1385.96, -252.956, 413.711, 4.48029, '');

update `creature_template` set `AIName`= 'SmartAI' where `entry` in (127377,129720,129924);

DELETE FROM `smart_scripts` WHERE `entryorguid`=127377 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(127377, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 0, '', 224, 47440, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(127377, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 62, 1642, 0, 0, 0, 0, 0, 7, 0, 0, 0, -905.379883, 805.449707, 368.413300, 0.007453, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=129907 AND `source_type`=0 AND `id`=3;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(129907, 0, 3, 0, 10, 0, 100, 0, 1, 10, 15000, 20000, 0, '', 206, 6402, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=4 AND `SourceEntry`=129907 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 4, 129907, 0, 0, 8, 0, 49488, 0, 0, 1, 0, 0, '', ''),
(22, 4, 129907, 0, 0, 28, 0, 49488, 0, 0, 0, 0, 0, '', '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=129907 AND `source_type`=0 AND `id`=4;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(129907, 0, 4, 0, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 80, 12990700, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `smart_scripts` WHERE `entryorguid`=12990700 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(12990700, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 66, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, ''),
(12990700, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(12990700, 9, 2, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, '', 53, 0, 1299070, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(12990700, 9, 3, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 0, '', 41, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `waypoints` WHERE `entry`=1299070;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(1299070, 1,  -423.78473, 358.12674, 194.70833, 'wp 1'),
(1299070, 2,  -353.00348, 341.11633, 195.41998, 'wp 2');

update `quest_template_addon` set `ScriptName`= 'quest_Needs_a_Little_Body__The_Urn_of_Voices' where `id` in (49489,49490);


DELETE FROM `smart_scripts` WHERE `entryorguid`=134156 AND `source_type`=0 AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(134156, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 130072, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `smart_scripts` WHERE `entryorguid`=129513 AND `source_type`=0 AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(129513, 0, 2, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 130072, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `smart_scripts` WHERE `entryorguid`=129487 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(129487, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 130072, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `smart_scripts` WHERE `entryorguid`=128933 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(128933, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 130072, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


update `creature_template` set `npcflag`= 16777216 where `entry` in (129720,129924,130706);

DELETE FROM `smart_scripts` WHERE `entryorguid`=129924 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(129924, 0, 0, 1, 8, 0, 100, 0, 257208, 0, 0, 0, 0, '', 33, 129924, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(129924, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 130092, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=129720 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(129720, 0, 0, 1, 8, 0, 100, 0, 258756, 0, 0, 0, 0, '', 33, 129720, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(129720, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 130092, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=130706 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(130706, 0, 0, 0, 20, 0, 100, 0, 49491, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

update `creature_template` set `AIName`= 'SmartAI' where `entry` in (126586,126560,120740,126564,124827);

DELETE FROM `smart_scripts` WHERE `entryorguid`=120740 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(120740, 0, 0, 0, 19, 0, 100, 0, 49488, 0, 0, 0, 0, '', 206, 6401, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=126560 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126560, 0, 0, 0, 19, 0, 100, 0, 47423, 0, 0, 0, 0, '', 1, 0, 6000, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=126790 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126790, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 0, 0, 0, '', 11, 251650, 0, 0, 0, 0, 0, 11, 126586, 20, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=126586 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126586, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3000, 3500, 0, '', 11, 256099, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cast Blood Bolt'),
(126586, 0, 1, 0, 8, 0, 100, 0, 251652, 0, 0, 0, 0, '', 80, 12658600, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(126586, 0, 2, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 0, 6000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(126586, 0, 3, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 138249, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=12658600 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(12658600, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 66, 0, 0, 0, 0, 0, 0, 19, 126790, 20, 0, 0, 0, 0, 0, ''),
(12658600, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 0, '', 2, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(12658600, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 49, 0, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `creature_text` WHERE `CreatureID`=126586;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(126586, 0, 0, 'Interfering Horde scum!', 14, 0, 100, 273, 0, 0, 136856, 0, 'Zanchuli Acolyte to Loti\'s Totem'),
(126586, 0, 1, 'Bah! I will not be undone by some interfering minion of de Horde!', 14, 0, 100, 6, 0, 0, 136853, 0, 'Zanchuli Acolyte to Loti\'s Totem'),
(126586, 0, 2, 'I will carve my next ritual with your blood.', 14, 0, 100, 6, 0, 0, 136857, 0, 'Zanchuli Acolyte to Loti\'s Totem'),
(126586, 0, 3, 'You think I\'m de only one using blood magic here? You are due for an ugly surprise.', 14, 0, 100, 0, 0, 0, 136854, 0, 'Zanchuli Acolyte to Loti\'s Totem'),
(126586, 0, 4, 'You can\'t stop us all!', 14, 0, 100, 0, 0, 0, 136855, 0, 'Zanchuli Acolyte to Loti\'s Totem');

update `quest_template_addon` set `ScriptName`= 'quest_forbidden_practices' where `id`= 47433;

DELETE FROM `smart_scripts` WHERE `entryorguid`=126564 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126564, 0, 0, 0, 62, 0, 100, 0, 21492, 0, 0, 0, 0, '', 33, 126564, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Hexlord Raal - On Gossip Option 0 Selected - Quest Credit \'\''),
(126564, 0, 1, 2, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 53, 0, 1265640, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(126564, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 0, 6000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(126564, 0, 3, 0, 40, 0, 100, 0, 5, 0, 0, 0, 0, '', 1, 1, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(126564, 0, 4, 5, 52, 0, 100, 0, 1, 126564, 0, 0, 0, '', 1, 2, 6000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(126564, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 10000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `waypoints` WHERE `entry`=1265640;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(1265640, 1,  -489.52084, 746.7778,  293.8151, 'wp 1'),
(1265640, 2,  -491.56598, 741.19617, 293.7964, 'wp 2'),
(1265640, 3,   -491.2882, 737.8524,  293.7926, 'wp 3'),
(1265640, 4,  -490.99133, 720.5382,  291.72977, 'wp 4'),
(1265640, 5,  -488.22916, 721.1042,  291.65762, 'wp 5');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=21492 AND `SourceEntry`=0 AND `SourceId`=0 AND `ElseGroup`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 21492, 0, 0, 0, 9, 0, 47433, 0, 0, 0, 0, 0, '', ''),
(15, 21492, 0, 0, 0, 48, 0, 292610, 0, 0, 1, 0, 0, '', '');

update `creature_template` set `npcflag`=16777216  where `entry` = 126822;

DELETE FROM `smart_scripts` WHERE `entryorguid`=126822 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126822, 0, 0, 1, 73, 0, 100, 0, 0, 0, 0, 0, 0, '', 224, 47433, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(126822, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 62, 1642, 0, 0, 0, 0, 0, 7, 0, 0, 0, -620.348, 907.31, 348.808, 1.9496, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=126611 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126611, 0, 0, 1, 10, 0, 100, 1, 1, 1, 0, 0, 0, '', 33, 126611, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(126611, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 89, 10, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''),
(126611, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=126611 AND `SourceId`=0 AND `ElseGroup`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=126560 AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126560, 0, 1, 0, 19, 0, 100, 0, 47435, 0, 0, 0, 0, '', 85, 277236, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(126560, 0, 2, 0, 19, 0, 100, 0, 47434, 0, 0, 0, 0, '', 85, 277236, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(126560, 0, 3, 0, 20, 0, 100, 0, 47437, 0, 0, 0, 0, '', 28, 285976, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `smart_scripts` WHERE `entryorguid`=127669 AND `source_type`=0 AND `id`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(127669, 0, 0, 0, 10, 0, 100, 0, 1, 1, 0, 0, 0, '', 33, 127669, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Nokano - On Spellclick -');

DELETE FROM `smart_scripts` WHERE `entryorguid`=126564 AND `source_type`=0 AND `id`=6;
DELETE FROM `smart_scripts` WHERE `entryorguid`=126564 AND `source_type`=0 AND `id`=7;
DELETE FROM `smart_scripts` WHERE `entryorguid`=126564 AND `source_type`=0 AND `id`=8;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126564, 0, 6, 0, 20, 0, 100, 0, 47435, 0, 0, 0, 0, '', 28, 277236, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(126564, 0, 7, 0, 20, 0, 100, 0, 47434, 0, 0, 0, 0, '', 28, 277236, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, ''),
(126564, 0, 8, 0, 19, 0, 100, 0, 47437, 0, 0, 0, 0, '', 85, 285976, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- 47438 al cojer la quest el npc 126560 tira una conversation

DELETE FROM `smart_scripts` WHERE `entryorguid`=124827 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(124827, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 127444, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_equip_template` WHERE `CreatureID`= 127576;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`) VALUES
(127576, 1, 128100, 0, 0, 0, 0, 0, 0, 0, 0); -- 127576

update `creature_template` set `faction`= 35 where `entry`= 127576;

UPDATE `creature` SET `spawntimesecs` = 60 WHERE `id` = 122683;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 122683;
UPDATE `npc_spellclick_spells` SET `cast_flags` = 1 WHERE `npc_entry` = 122683;
UPDATE `quest_template_addon` SET `ScriptName` = 'quest_memory_breach' WHERE `ID` = 48988;

-- add conditions to spellclick 272297
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=122683 AND `SourceEntry`=272297;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 122683, 272297, 0, 0, 47, 0, 48988, 8, 0, 0, 0, 0, '', 'Only spellclick if quest in progress');

-- add SAIs
DELETE FROM `smart_scripts` WHERE `entryorguid`=122683;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(122683, 0, 0, 1, 8, 0, 100, 0, 272297, 0, 0, 0, 0, '', 11, 272287, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - Cast'),
(122683, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 138412, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - KCredit'),
(122683, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - SetFlag 0'),
(122683, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - Despawn');

DELETE FROM `spell_script_names` WHERE `spell_id`=253810;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(253810, 'quest_cleanse_the_mind');

UPDATE `npc_spellclick_spells` SET `cast_flags` = 1 WHERE `npc_entry` = 138107 AND `spell_id` = 271831; -- change spellclick caster
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 138107; -- set AIName

-- add SAI's for KCredit, addItem, despawn and setNpcflag
DELETE FROM `smart_scripts` WHERE `entryorguid`=138107;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(138107, 0, 0, 1, 8, 0, 100, 0, 271831, 0, 0, 0, 0, '', 33, 138107, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - KCredit'),
(138107, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 56, 160448, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Link - AddItem'),
(138107, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Link - SetFlag 0'),
(138107, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Link - Despawn');

-- add conditions to spellclick
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=138107 AND `SourceEntry`=271831;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 138107, 271831, 0, 0, 9, 0, 51574, 0, 0, 0, 0, 0, '', 'Only can touch if have quest in progress');

/* Quest: A Balm to Calm (47320) */

UPDATE `creature_template_addon` SET `auras` = 246309 WHERE `entry` = 122741;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (122741, 130341);

-- add SAIs to Kaja
DELETE FROM `smart_scripts` WHERE `entryorguid`=122741 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=1227410 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(122741, 0, 0, 1, 8, 0, 100, 0, 244636, 0, 0, 0, 0, '', 33, 122741, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Despawn - KCredit'),
(122741, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 12, 122741, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - SummonUnit'),
(122741, 0, 2, 3, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 44, 169, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Link - Add Phase'),
(122741, 0, 3, 4, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 28, 246309, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Summon - Remove Aura - StandUp'),
(122741, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 206, 6400, 0, 0, 0, 0, 0, 18, 3, 0, 0, 0, 0, 0, 0, 'On StandUp - Say Text'),
(122741, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn before 3s'),
(122741, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 80, 1227410, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn before 3s'),
(1227410, 9, 0, 0, 0, 0, 100, 0, 3500, 3500, 0, 0, 0, '', 33, 10100000, 0, 0, 0, 0, 0, 18, 3, 0, 0, 0, 0, 0, 0, 'On Despawn - KCredit');

-- add conditions to KC and conversation
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` = 5 AND `SourceEntry`=122741;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup` = 1 AND `SourceEntry`=1227410;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 5, 122741, 0, 0, 28, 0, 47320, 0, 0, 0, 0, 0, '', 'Conversation if have quest complete'),
(22, 5, 122741, 0, 0, 8, 0, 47320, 0, 0, 1, 0, 0, '', 'Conversation if not rewarded quest'),
(22, 1, 1227410, 0, 0, 28, 0, 47320, 0, 0, 0, 0, 0, '', 'KC if have quest complete'),
(22, 1, 1227410, 0, 0, 8, 0, 47320, 0, 0, 1, 0, 0, '', 'KC if not rewarded quest');


-- add custom objective
DELETE FROM `quest_objectives` WHERE `ID`=10100000;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES 
(10100000, 47320, 0, 1, 1, 10100000, 1, 26, 0, 0, 'Custom - Kaja', -1);

/* Quest: Searching for Survivors (47317) */

UPDATE `npc_spellclick_spells` SET `cast_flags` = 1 WHERE `npc_entry` = 122729; -- change spellclick caster
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 122729; -- set AIName

-- add SAI's for KCredit, setNpcflag, TextInScreen
DELETE FROM `smart_scripts` WHERE `entryorguid`=122729;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(122729, 0, 0, 1, 8, 0, 100, 0, 244630, 0, 0, 0, 0, '', 33, 122729, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - KCredit'),
(122729, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - SetFlag 0'),
(122729, 0, 2, 0, 8, 0, 100, 0, 244630, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - TextWhisper');

-- add conditions to spellclick
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=122729 AND `SourceEntry`=244630;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 122729, 244630, 0, 0, 9, 0, 47317, 0, 0, 0, 0, 0, '', 'Only can touch if have quest in progress'),
(18, 122729, 244630, 0, 0, 48, 0, 290408, 0, 0, 1, 0, 0, '', 'Only can touch if not complete objective ');

/* Quest: Secrets in the Sands (47316) */


-- add loot to GOB
UPDATE `gameobject_template` SET `Data1` = 271844, `AIName` = 'SmartGameObjectAI' WHERE `entry` = 271844;
DELETE FROM `gameobject_loot_template` WHERE `Entry`=271844 AND `Item`=151346;
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (271844, 151346, 0, 100, 1, 1, 0, 1, 1, 'Rakera\'s Journal Page');

-- Falta ponerle las Conversations al recoger las hojas.
DELETE FROM `smart_scripts` WHERE `entryorguid`=271844 AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(271844, 1, 0, 0, 70, 0, 100, 0, 2, 0, 0, 0, 0, '', 206, 5273, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On StandUp - Say Text');

/* Quest: Knickknack Takeback (47321) */

UPDATE `creature` SET `spawntimesecs` = 120 WHERE `areaId` = 9336; -- update respawn TIME
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 123586;
DELETE FROM `quest_objectives` WHERE `ObjectID` = 151278 AND `ID` = 338775; -- delete sec objective

-- add loot to snakes
DELETE FROM `creature_loot_template` WHERE `Item`=151273;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(122745, 151273, 0, 45, 1, 1, 0, 1, 1, NULL),
(122746, 151273, 0, 45, 1, 1, 0, 1, 1, NULL),
(122782, 151273, 0, 45, 1, 1, 0, 1, 1, NULL),
(123863, 151273, 0, 45, 1, 1, 0, 1, 1, NULL),
(123864, 151273, 0, 45, 1, 1, 0, 1, 1, NULL),
(123865, 151273, 0, 45, 1, 1, 0, 1, 1, NULL),
(123866, 151273, 0, 45, 1, 1, 0, 1, 1, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (122583, 127656);

UPDATE `quest_template_addon` SET `ExclusiveGroup` = -47316, `NextQuestId` = 47959 WHERE `ID` = 47316; -- Secrets in the Sand
UPDATE `quest_template_addon` SET `ExclusiveGroup` = -47316, `NextQuestId` = 47959 WHERE `ID` = 47317; -- Searching for Survivors
UPDATE `quest_template_addon` SET `ExclusiveGroup` = -47316, `NextQuestId` = 47959 WHERE `ID` = 47321; -- Knickknack Takeback
UPDATE `quest_template_addon` SET `PrevQuestID` = 0 WHERE `ID` = 47959; -- The Warguard's Trial

-- add SAIs
DELETE FROM `smart_scripts` WHERE `entryorguid`=122583 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(122583, 0, 0, 1, 62, 0, 100, 0, 21437, 0, 0, 0, 0, '', 62, 1642, 0, 0, 0, 0, 0, 7, 0, 0, 0, 1333.90, 3058.86, 68.2501, 2.1072, 'On Select Gossip - Tele'),
(122583, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 224, 47959, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On Tele - QComplete');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (129304, 126697);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 129304 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 126697 AND `source_type`=0 AND `id` >= 2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(126697, 0, 2, 0, 10, 0, 100, 0, 0, 25, 180000, 180000, 0, '', 1, 0, 4500, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Near - Talk'),
(126697, 0, 3, 0, 52, 0, 100, 0, 0, 126697, 0, 0, 0, '', 45, 5, 5, 0, 0, 0, 0, 11, 129304, 3, 0, 0, 0, 0, 0, 'On Talk - SetData'),
(129304, 0, 0, 1, 38, 0, 100, 0, 5, 5, 0, 0, 0, '', 1, 0, 3000, 0, 0, 0, 0, 18, 25, 0, 0, 0, 0, 0, 0, 'On RecData - Talk'),
(129304, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 256144, 0, 0, 0, 0, 0, 18, 25, 0, 0, 0, 0, 0, 0, 'On Link - CastSpell'),
(129304, 0, 2, 0, 52, 0, 100, 0, 0, 129304, 0, 0, 0, '', 45, 5, 4, 0, 0, 0, 0, 11, 126697, 3, 0, 0, 0, 0, 0, 'On Talk - SetData'),
(126697, 0, 4, 0, 38, 0, 100, 0, 5, 4, 0, 0, 0, '', 1, 1, 4500, 0, 0, 0, 0, 18, 25, 0, 0, 0, 0, 0, 0, 'On RecData - Talk'),
(126697, 0, 5, 0, 52, 0, 100, 0, 1, 126697, 0, 0, 0, '', 45, 5, 3, 0, 0, 0, 0, 11, 129304, 3, 0, 0, 0, 0, 0, 'On Talk - SetData'),
(129304, 0, 3, 0, 38, 0, 100, 0, 5, 3, 0, 0, 0, '', 1, 1, 4500, 0, 0, 0, 0, 18, 25, 0, 0, 0, 0, 0, 0, 'On RecData - Talk'),
(129304, 0, 4, 5, 52, 0, 100, 0, 1, 129304, 0, 0, 0, '', 45, 5, 2, 0, 0, 0, 0, 11, 126697, 3, 0, 0, 0, 0, 0, 'On Talk - SetData'),
(129304, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 256143, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On Link - CastSpell'),
(129304, 0, 6, 0, 8, 0, 100, 0, 256143, 0, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - Despawn'),
(126697, 0, 6, 0, 38, 0, 100, 0, 5, 2, 0, 0, 0, '', 19, 33600, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On RecData - RemoveUnitFlag'),
(126697, 0, 7, 8, 6, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 2, 0, 0, 0, 0, 0, 18, 25, 0, 0, 0, 0, 0, 0, 'On Death - Talk'),
(126697, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 224, 2, 0, 0, 0, 0, 0, 18, 25, 0, 0, 0, 0, 0, 0, 'On Talk - FQComplete');

/*  Quest: Missing Business (50739)  */

UPDATE `npc_spellclick_spells` SET `cast_flags` = 1 WHERE `npc_entry` = 135004 AND `spell_id` = 265199; -- change spellclick caster
UPDATE `creature_template` SET `AIName` = 'SmartAI', `speed_run` = 2 WHERE `entry` = 135004; -- set AIName

-- add SAI for KCredit and Summon Unit
DELETE FROM `smart_scripts` WHERE `entryorguid`=135004 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(135004, 0, 0, 1, 8, 0, 100, 0, 265199, 0, 0, 0, 0, '', 33, 135004, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - KCredit'),
(135004, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - SetNpcflag 0'),
(135004, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 91, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - Up'),
(135004, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 89, 50, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - RandomMovement Out of Area'),
(135004, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 10000, 60, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'On SpellHit - Force Despawn');

-- update REC
UPDATE `quest_template` SET `RewardItem1` = 158464, `RewardAmount1` = 1 WHERE `ID` = 50739;

-- add WPs
DELETE FROM `waypoints` WHERE `entry`=135012 AND `pointid`=1;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(135012, 1, 2130.57, 2916.7, 39.7224, 'Summon Vivi WP');

/* Quest: A Meal for Birds (50755) */

UPDATE `quest_template_addon` SET `ScriptName` = 'SmartQuest', `PrevQuestID` = 0 WHERE `ID` = 50755;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (137629, 137673, 137672);  

DELETE FROM `smart_scripts` WHERE `entryorguid`=137629 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=50755 AND `source_type`=5;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(137629, 0, 0, 0, 19, 0, 100, 0, 50755, 0, 0, 0, 0, '', 85, 270711, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On AcceptQuest - AddAura'),
(50755, 5, 0, 0, 50, 0, 100, 0, 0, 0, 0, 0, 0, '', 28, 270711, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On RewardQuest - RemoveAura');

-- Fix Quest 50239 (A Choice of Allies)
DELETE FROM `creature_queststarter` WHERE (`quest` = 50239) AND (`id` IN (126301));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(126301, 50239);

DELETE FROM `creature_questender` WHERE (`quest` = 50239) AND (`id` IN (126301));
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(126301, 50239);

DELETE FROM `quest_objectives` WHERE (`QuestID` = 50239);
REPLACE INTO `quest_objectives`(`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES (396609, 50239, 2, 1, 0, 273855, 1, 0, 0, 0, NULL, 35662);
REPLACE INTO `quest_objectives`(`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES (396610, 50239, 2, 2, 1, 273853, 1, 0, 0, 0, NULL, 35662);
REPLACE INTO `quest_objectives`(`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES (396611, 50239, 2, 3, 2, 298865, 1, 0, 0, 0, NULL, 35662);
REPLACE INTO `quest_objectives`(`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES (396612, 50239, 2, 4, 3, 316736, 1, 0, 0, 0, NULL, 35662);
REPLACE INTO `quest_objectives`(`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES (396613, 50239, 2, 5, 4, 339222, 1, 0, 0, 0, NULL, 35662);

UPDATE `gameobject_template` SET `size` = 0.5, `type` = 22 WHERE (`entry` = 316736);
UPDATE `gameobject_template` SET `type` = 22, `size` = 0.5 WHERE (`entry` = 339222);
UPDATE `gameobject_template` SET `Data0` = 0 WHERE (`entry` = 273855);
UPDATE `gameobject_template` SET `Data0` = 0 WHERE (`entry` = 273853);
UPDATE `gameobject_template` SET `Data0` = 0 WHERE (`entry` = 298865);

-- Fix SmartAI for Quest 27210 (Traitors Among Us)
SET @ENTRY := 23602;
DELETE FROM smart_scripts WHERE entryOrGuid = 23602 AND source_type = 0;
UPDATE creature_template SET AIName="SmartAI" WHERE entry= @ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
(@ENTRY, 0, 0, 0, 25, 0, 100, 512, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On reset (e.g. after reaching home) - Self: Reset faction"),
(@ENTRY, 0, 1, 0, 1, 0, 100, 0, 0, 1, 30000, 40000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Every 30 - 40 seconds (0 - 0.001s initially) [OOC] - Self: Talk 0 to invoker"),
(@ENTRY, 0, 2, 3, 62, 0, 100, 0, 8762, 0, 0, 0, 11, 42203, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 8762 selected - Self: Cast spell 42203 on Action invoker"),
(@ENTRY, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 33, 23602, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Action invoker: Give kill credit Deserter Agitator"),
(@ENTRY, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Action invoker: Close gossip"),
(@ENTRY, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On link - Self: Despawn instantly respawn in 5000 seconds"),
(@ENTRY, 0, 6, 7, 8, 0, 100, 512, 42219, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On spell 42219 hit  - Self: Look at Action invoker"),
(@ENTRY, 0, 7, 8, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Action invoker: Talk 1 to invoker"),
(@ENTRY, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 87, 2360200, 2360201, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "On link - Self: Call random timed action list: 2360200, 2360201, 0, 0, 0, 0");


-- Fix SmartAI for Quest 27239 (Survey Alcaz Island)
SET @ENTRY := 23704;
DELETE FROM smart_scripts WHERE entryOrGuid = 23704 AND source_type = 0;
UPDATE creature_template SET AIName="SmartAI" WHERE entry= @ENTRY;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
(@ENTRY, 0, 0, 1, 62, 0, 100, 0, 8782, 0, 0, 0, 85, 42316, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On gossip action 0 from menu 8782 selected -  Action invoker: Cast spell 42295 on self"),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "On link - Action invoker: Close gossip");
-- Add Conditions Gossip can only see on Quest
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15) AND (`SourceGroup` = 8782) AND (`SourceEntry` = 0) AND (`SourceId` = 0) AND (`ElseGroup` = 0) AND (`ConditionTypeOrReference` = 9) AND (`ConditionTarget` = 0) AND (`ConditionValue1` = 27239) AND (`ConditionValue2` = 0) AND (`ConditionValue3` = 0);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 8782, 0, 0, 0, 9, 0, 27239, 0, 0, 0, 0, 0, '', 'gossip only can sey you have quest 27239');

replace into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values('10676','0','0','0','2','0','100','1','0','15','0','0','0','25','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Raider Jhash - On 15% HP - Flee');
replace into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values('10676','0','1','0','2','0','100','1','0','15','0','0','0','1','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Raider Jhash - On 15% HP - Say 0');
replace into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values('10676','0','2','0','9','0','100','0','0','20','7000','9000','0','11','6533','0','0','0','0','0','2','0','0','0','0','0','0','0','Raider Jhash - On Close - Cast Net');
replace into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values('10676','0','3','0','62','0','100','0','11189','0','0','0','0','85','73678','0','0','0','0','0','7','0','0','0','0','0','0','0','Raider Jhash - On Gossip Select - Invoker Cast 73678');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`='39239';

replace into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values('39239','0','0','0','27','0','100','0','0','0','0','0','0','53','1','39239','0','0','0','0','23','0','0','0','0','0','0','0','Durotar Riding Wolf - On Passenger Boarded - Start WP 39239');
replace into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values('39239','0','1','0','58','0','100','0','18','39239','0','0','0','41','1','0','0','0','0','0','1','0','0','0','0','0','0','0','Durotar Riding Wolf - On Wp Reached - Despawn');
replace into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values('39239','0','2','0','58','0','100','0','18','39239','0','0','0','15','25171','0','0','0','0','0','21','10','0','0','0','0','0','0','Durotar Riding Wolf - On Wp Reached - Complete Quest');

replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','1','-817.445','-4880.22','19.0949','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','2','-775.32','-4843.44','18.2446','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','3','-689.507','-4770.98','33.6768','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','4','-642.223','-4729.53','33.6771','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','5','-581.367','-4728.2','33.9392','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','6','-557.183','-4735.64','33.4315','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','7','-491.575','-4768.59','32.2102','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','8','-449.438','-4776.29','32.4108','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','9','-369.711','-4812.98','32.3114','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','10','-294.168','-4804.69','29.532','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','11','-97.6855','-4745.22','21.5711','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','12','-42.1502','-4749.2','21.058','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','13','78.5766','-4743.46','18.027','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','14','133.525','-4766.12','12.6002','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','15','187.827','-4750.91','11.2574','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','16','238.708','-4737.98','10.1029','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','17','265.059','-4749.52','10.0805','Durotar Riding Wolf');
replace into `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) values('39239','18','300.983','-4754.8','9.39913','Durotar Riding Wolf');

UPDATE `quest_template_addon` SET `PrevQuestID` = '25132' WHERE `ID` = '25135'; 



