UPDATE `creature_template` SET `gossip_menu_id`='60899', `AIName`='SmartAI' WHERE  `entry`=60899;
REPLACE INTO `gossip_menu_option` (`MenuID`, `OptionText`, `OptionBroadcastTextID`) VALUES ('60899', 'Examine the body.', '60367');

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (60899, 0, 0, 1, 62, 0, 100, 0, 60899, 0, 0, 0, 0, '', 11, 117974, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'On gossip select - Cast Summon Suna');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (60899, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 60899, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Killcredit');

UPDATE `creature_template` SET `gossip_menu_id`='60730' WHERE  `entry`=60730;
UPDATE `gossip_menu_option` SET `OptionText`='Let\'s go out of here.' WHERE  `MenuID`=60730 AND `OptionID`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=60730 AND `source_type`=0 AND `id`=0 AND `link`=1;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (60730, 0, 0, 1, 62, 0, 100, 0, 60730, 0, 0, 0, 0, '', 33, 60730, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Give quest credit');
DELETE FROM `smart_scripts` WHERE `entryorguid`=60730 AND `source_type`=0 AND `id`=1 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (60730, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - say text');

REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`) VALUES ('60730', 'Thank you for freeing me, brother. I cannot let you fight alone.', '12', '100');

UPDATE `creature_template` SET `gossip_menu_id`='60687', `AIName`='SmartAI' WHERE  `entry`=60687;
REPLACE INTO `gossip_menu_option` (`MenuID`, `OptionText`) VALUES ('60687', 'I am Ready');

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (60687, 0, 0, 1, 62, 0, 100, 0, 60687, 0, 0, 0, 0, '', 33, 60687, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'On Gossiep Summon');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (60687, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 62, 870, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 1757.99, 2337.58, 377.429, 6.148, 'Tele Invoker');

UPDATE `smart_scripts` SET `event_type`='4', `event_param2`='0', `event_param3`='0', `event_param4`='0', `action_type`='1', `action_param1`='0', `action_param2`='0', `comment`='On aggro - Say Text' WHERE  `entryorguid`=61055 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='25', `event_param1`='0', `event_param2`='0', `event_param3`='0', `event_param4`='0', `action_type`='42', `action_param1`='1', `target_type`='1', `comment`='Just summoned - Hide hp' WHERE  `entryorguid`=61055 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `link`='3', `event_flags`='0', `event_param2`='1', `event_param3`='0', `event_param4`='0', `action_type`='2', `action_param1`='35', `comment`='If <20% hp - Set faction' WHERE  `entryorguid`=61055 AND `source_type`=0 AND `id`=2 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `id`, `link`, `event_type`, `event_flags`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES ('61055', '3', '4', '61', '1', '1', '1', '1', 'Link - Say text');
REPLACE INTO `smart_scripts` (`entryorguid`, `id`, `link`, `event_type`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES ('61055', '4', '5', '61', '33', '61055', '7', 'Link - Give quest credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES ('61055', '5', '61', '41', '3000', '1', 'Link - Despawn');
REPLACE INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES ('61055', '6', '11', '2', '14', '1', 'On respawn - Set faction');

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (61055, 0, 0, 'Has Ban sent you to kill me, then? Just like he killed my husband?', 12, 0, 100, 0, 0, 0, 0, 60643, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (61055, 1, 0, 'I see now... my hatred... consumed me. Tell Ban... all is... forgiven.', 12, 0, 100, 0, 0, 0, 0, 60646, 0, '');



UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=60949;
UPDATE `creature` SET `id`='60949' WHERE  `guid`=10545107;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (60949, 0, 0, 0, 1, 0, 100, 0, 0, 0, 1000, 1000, 0, '', 33, 61291, 0, 0, 0, 0, 0, 17, 0, 25, 0, 0, 0, 0, 0, 0, 'Northwestern Smoke Trail examined');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=60948;
UPDATE `creature` SET `id`='60948' WHERE  `guid`=10545167;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (60948, 0, 0, 0, 1, 0, 100, 0, 0, 0, 1000, 1000, 0, '', 33, 60948, 0, 0, 0, 0, 0, 17, 0, 25, 0, 0, 0, 0, 0, 0, 'Southern Smoke Killcredit');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=61291;
UPDATE `creature` SET `id`='61291' WHERE  `guid`=10545169;
REPLACE INTO `smart_scripts` (`entryorguid`, `event_type`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `target_type`, `target_param2`, `comment`) VALUES ('60949', '1', '1000', '1000', '33', '60949', '17', '25', 'Northwest smoke killcredit');

UPDATE `creature` SET `id`='60950' WHERE  `guid`=10545171;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=60950;
REPLACE INTO `smart_scripts` (`entryorguid`, `event_type`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `target_type`, `target_param2`, `comment`) VALUES ('60950', '1', '1000', '1000', '33', '60950', '17', '25', 'Southern Smoke Killcredit');

UPDATE `quest_poi_points` SET `Y`='2259' WHERE  `QuestID`=30781 AND `Idx1`=4 AND `Idx2`=0;
DELETE FROM `quest_poi` WHERE  `QuestID`=30781 AND `BlobIndex`=0 AND `Idx1`=5;
DELETE FROM `quest_poi_points` WHERE  `QuestID`=30781 AND `Idx1`=5 AND `Idx2`=0;

REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `MountCreatureID`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (60949, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '118923');
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `MountCreatureID`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (60948, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '118923');
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `MountCreatureID`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (60950, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '118923');
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `MountCreatureID`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (61291, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '118923');


DELETE FROM `creature_equip_template` WHERE (`ID`=1 AND `CreatureID` IN (170375,170164,173454,167731,164427));
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(170375, 1, 171132, 0, 0, 0, 0, 0, 0, 0, 0, 46455), -- Kyrian Protector
(170164, 1, 176079, 0, 0, 0, 0, 0, 0, 0, 0, 46455), -- Radiant Sword
(173454, 1, 171944, 0, 0, 0, 0, 0, 0, 0, 0, 46455), -- Disciple of Humility
(167731, 1, 180776, 0, 0, 176566, 0, 0, 0, 0, 0, 46455), -- Separation Assistant
(164427, 1, 176546, 0, 0, 176724, 0, 0, 0, 0, 0, 46455); -- Reanimated Warrior