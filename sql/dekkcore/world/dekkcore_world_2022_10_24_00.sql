DELETE FROM `gossip_menu_option` WHERE `MenuID`=23225;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(23225, 0, 0, 'Where is the ship now?', 160873, 0, 23227, 0, 0, 0, NULL, 0, 45745);

UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry` IN (272677);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (272677) AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(272677,1,0,0,71,0,100,0,59433,0,0,0,0,45,1,1,0,0,0,0,19,141897,100,0,0,0,0,0,0,'The Golden Skipper - On Event 59433 Inform - Set Data 1 (Toranko)'),
(272677,1,1,0,71,0,100,0,59434,0,0,0,0,45,1,0,0,0,0,0,19,141897,100,0,0,0,0,0,0,'The Golden Skipper - On Event 59434 Inform - Set Data 0 (Toranko)'),
(272677,1,2,0,71,0,100,0,59435,0,0,0,0,45,1,1,0,0,0,0,19,142943,100,0,0,0,0,0,0,'The Golden Skipper - On Event 59435 Inform - Set Data 1 (Mith\'aka)'),
(272677,1,3,0,71,0,100,0,59436,0,0,0,0,45,1,0,0,0,0,0,19,142943,100,0,0,0,0,0,0,'The Golden Skipper - On Event 59436 Inform - Set Data 0 (Mith\'aka)');

UPDATE `creature_template` SET `ScriptName`='npc_mithaka' WHERE `entry`=142943;

DELETE FROM `creature_template_scaling` WHERE `Entry` IN (133331,133341,139561,139567,139575,139576,139578);
INSERT INTO `creature_template_scaling` (`Entry`,`DifficultyID`,`LevelScalingDeltaMin`,`LevelScalingDeltaMax`,`ContentTuningID`,`VerifiedBuild`) VALUES
(133331,0,0,0,2117,45745),
(133341,0,0,0,186,45745),
(139561,0,0,0,186,45745),
(139567,0,0,0,189,45745),
(139575,0,0,0,187,45745),
(139576,0,0,0,187,45745),
(139578,0,0,0,187,45745);

UPDATE `creature_model_info` SET `VerifiedBuild`=45745 WHERE `DisplayID` IN (77489, 42408, 79059, 82858, 6302, 4626, 30256, 42744, 86395, 64329, 70446, 59949, 82851);

DELETE FROM `npc_vendor` WHERE (`entry`=139567 AND `item`=163784 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=139567 AND `item`=163783 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=139567 AND `item`=160518 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=139567 AND `item`=162556 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=139567 AND `item`=161373 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=139567 AND `item`=162554 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=139567 AND `item`=161347 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=139567 AND `item`=162555 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133341 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133341 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133341 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133341 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133341 AND `item`=180733 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133341 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=133341 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(139567, 8, 163784, 0, 0, 1, 0, 0, 45745), -- Seafoam Coconut Water
(139567, 7, 163783, 0, 0, 1, 0, 0, 45745), -- Mount Mugamba Spring Water
(139567, 6, 160518, 0, 0, 1, 0, 0, 45745), -- Great Turtle Soup
(139567, 5, 162556, 0, 0, 1, 0, 0, 45745), -- Zeb'ahari Kiwi
(139567, 4, 161373, 0, 0, 1, 0, 0, 45745), -- Seared Simmerfin
(139567, 3, 162554, 0, 0, 1, 0, 0, 45745), -- Rootway Papaya
(139567, 2, 161347, 0, 0, 1, 0, 0, 45745), -- Riverbeast Stew
(139567, 1, 162555, 0, 0, 1, 0, 0, 45745), -- Zocalo Cheddar
(133341, 7, 3857, 0, 0, 1, 0, 0, 45745), -- Coal
(133341, 6, 18567, 0, 0, 1, 0, 0, 45745), -- Elemental Flux
(133341, 5, 3466, 0, 0, 1, 0, 0, 45745), -- Strong Flux
(133341, 4, 2880, 0, 0, 1, 0, 0, 45745), -- Weak Flux
(133341, 3, 180733, 0, 0, 1, 0, 0, 45745), -- Luminous Flux
(133341, 2, 5956, 0, 0, 1, 0, 0, 45745), -- Blacksmith Hammer
(133341, 1, 2901, 0, 0, 1, 0, 0, 45745); -- Mining Pick

UPDATE `gossip_menu` SET `VerifiedBuild`=45745 WHERE (`MenuID`=22729 AND `TextID`=35152) OR (`MenuID`=22728 AND `TextID`=35150);

UPDATE `creature_template` SET `minlevel`=50, `maxlevel`=50 WHERE `entry`=139578; -- Highland Matriarch
UPDATE `creature_template` SET `minlevel`=50, `maxlevel`=50 WHERE `entry`=139576; -- Highland Adolescent
UPDATE `creature_template` SET `minlevel`=50, `maxlevel`=50 WHERE `entry`=139575; -- Highland Alpha
UPDATE `creature_template` SET `minlevel`=50, `maxlevel`=50 WHERE `entry`=133341; -- Ferix Glintzap
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=8388608 WHERE `entry`=133340; -- Horde Vanguard
UPDATE `creature_template` SET `gossip_menu_id`=22729, `minlevel`=50, `maxlevel`=50 WHERE `entry`=139567; -- Joon Cloudgazer
UPDATE `creature_template` SET `gossip_menu_id`=22728, `minlevel`=50, `maxlevel`=50, `unit_flags3`=1048576 WHERE `entry`=139561; -- Mukkral Blackvein
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=133331; -- Narkalt

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (61000000001349645, 200001, 0, 0, 0, '0', 0, '', 0, -1, 0, 0, -8816.56, 603.495, 96.337, 1.1349, 300, 0, 0, 4579, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (61000000001349644, 200000, 0, 0, 0, '0', 0, '0', 0, -1, 0, 0, -8836.85, 630.206, 94.4164, 5.26777, 300, 0, 0, 4579, 0, 2, 0, 0, 0, 0, 0, '', 0);

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_class`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (200001, 0, 0, 0, 0, 0, 'Althirion', NULL, NULL, NULL, NULL, 0, 60, 60, 8, 0, 0, 12, 0, 1, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_class`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (200000, 0, 0, 0, 0, 0, 'Fluxurion', NULL, NULL, NULL, NULL, 200000, 50, 50, 0, 0, 0, 35, 1, 1.14286, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 2, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0);

REPLACE INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (200001, 0, 25901, 1, 1, 45114);
REPLACE INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (200000, 0, 31852, 1, 1, 45114);

REPLACE INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`, `InteractionPauseTimer`) VALUES (200000, 1, 0, 0, 0, 0, 0, NULL);
REPLACE INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`, `InteractionPauseTimer`) VALUES (200001, 1, 0, 0, 0, 0, 0, NULL);

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (200001, 0, 0, 'It doesent Trigger', 12, 0, 100, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (200001, 1, 0, 'I do What I can', 12, 0, 100, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (200000, 0, 0, 'What do you mean ? It Do not Trigger?', 12, 0, 100, 0, 0, 0, 0, 300000, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (200000, 2, 0, 'Ok say Where you want to go', 12, 0, 100, 0, 0, 0, 0, 300002, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (200000, 1, 0, 'Yeahhhh is Triggert NOT.', 12, 0, 100, 0, 0, 0, 0, 300001, 0, '');


INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (200000, 1, -8836.85, 630.206, 94.4164, NULL, 0, NULL);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (200000, 2, -8828.14, 620.798, 94.22, NULL, 0, NULL);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (200000, 3, -8816.79, 610.405, 95.65, NULL, 0, NULL);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (200000, 4, -8812.47, 605.998, 96.12, 4.2318, 0, NULL);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (200000, 5, -8814.21, 603.955, 96.295, NULL, 0, NULL);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (200000, 6, -8798.31, 590.281, 97.651, 0.516, 0, NULL);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (200000, 7, -8773.12, 607.004, 97.329, 0.7399, 0, NULL);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (200000, 8, -8761.91, 618.717, 99.549, 1.3329, 0, NULL);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (200000, 9, -8761.79, 648.644, 103.876, 2.114, 0, NULL);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (200000, 10, -8783.81, 678.422, 102.896, 2.33, 0, NULL);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (200000, 11, -8803.29, 684.526, 101.078, 3.288, 0, NULL);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (200000, 12, -8840.96, 668.995, 97.985, 3.759, 0, NULL);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (200000, 13, -8851.33, 656.127, 96.823, 4.977, 0, NULL);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (200000, 14, -8836.85, 630.206, 94.4164, 5.26777, 0, NULL);

