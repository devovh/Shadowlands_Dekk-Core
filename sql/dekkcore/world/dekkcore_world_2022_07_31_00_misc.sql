UPDATE `creature_template` SET `maxlevel`='10' WHERE  `entry`=61657;
DELETE FROM `creature_template_scaling` WHERE  `Entry`=61657 AND `DifficultyID`=1;
UPDATE `creature_template_scaling` SET `LevelScalingDeltaMin`='0', `LevelScalingDeltaMax`='0', `ContentTuningID`='2' WHERE  `Entry`=61657 AND `DifficultyID`=0;
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='15' WHERE  `entry`=61659;
DELETE FROM `creature_template_scaling` WHERE  `Entry`=61659 AND `DifficultyID`=1;
UPDATE `creature_template_scaling` SET `ContentTuningID`='2' WHERE  `Entry`=61659 AND `DifficultyID`=0;
UPDATE `creature_template` SET `maxlevel`='15' WHERE  `entry`=61658;
DELETE FROM `creature_template_scaling` WHERE  `Entry`=61658 AND `DifficultyID`=1;
UPDATE `creature_template_scaling` SET `ContentTuningID`='2' WHERE  `Entry`=61658 AND `DifficultyID`=0;
UPDATE `creature_template` SET `maxlevel`='15' WHERE  `entry`=61666;
DELETE FROM `creature_template_scaling` WHERE  `Entry`=61666 AND `DifficultyID`=1;
UPDATE `creature_template_scaling` SET `ContentTuningID`='2' WHERE  `Entry`=61666 AND `DifficultyID`=0;
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='15' WHERE  `entry`=61669;
DELETE FROM `creature_template_scaling` WHERE  `Entry`=61669 AND `DifficultyID`=1;
UPDATE `creature_template_scaling` SET `ContentTuningID`='2' WHERE  `Entry`=61669 AND `DifficultyID`=0;
UPDATE `creature_template` SET `maxlevel`='15' WHERE  `entry`=61408;
DELETE FROM `creature_template_scaling` WHERE  `Entry`=61408 AND `DifficultyID`=1;
UPDATE `creature_template_scaling` SET `ContentTuningID`='2' WHERE  `Entry`=61408 AND `DifficultyID`=0;
UPDATE `creature_template` SET `maxlevel`='15' WHERE  `entry`=61672;
DELETE FROM `creature_template_scaling` WHERE  `Entry`=61672 AND `DifficultyID`=1;
UPDATE `creature_template_scaling` SET `ContentTuningID`='2' WHERE  `Entry`=61672 AND `DifficultyID`=0;
UPDATE `creature_template` SET `maxlevel`='15' WHERE  `entry`=61678;
DELETE FROM `creature_template_scaling` WHERE  `Entry`=61678 AND `DifficultyID`=1;
UPDATE `creature_template_scaling` SET `ContentTuningID`='2' WHERE  `Entry`=61678 AND `DifficultyID`=0;
UPDATE `creature_template` SET `maxlevel`='15' WHERE  `entry`=61412;
DELETE FROM `creature_template_scaling` WHERE  `Entry`=61412 AND `DifficultyID`=1;
UPDATE `creature_template_scaling` SET `ContentTuningID`='2' WHERE  `Entry`=61412 AND `DifficultyID`=0;
UPDATE `creature_template` SET `maxlevel`='15' WHERE  `entry`=61705;
DELETE FROM `creature_template_scaling` WHERE  `Entry`=61705 AND `DifficultyID`=1;
UPDATE `creature_template_scaling` SET `ContentTuningID`='2' WHERE  `Entry`=61705 AND `DifficultyID`=0;
UPDATE `creature_template` SET `maxlevel`='17' WHERE  `entry`=61463;
DELETE FROM `creature_template_scaling` WHERE  `Entry`=61463 AND `DifficultyID`=1;
UPDATE `creature_template_scaling` SET `ContentTuningID`='2' WHERE  `Entry`=61463 AND `DifficultyID`=0;
UPDATE `creature_template` SET `maxlevel`='17' WHERE  `entry`=61528;
DELETE FROM `creature_template_scaling` WHERE  `Entry`=61528 AND `DifficultyID`=1;
UPDATE `creature_template_scaling` SET `ContentTuningID`='2' WHERE  `Entry`=61528 AND `DifficultyID`=0;
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='15' WHERE  `entry`=61644;
DELETE FROM `creature_template_scaling` WHERE  `Entry`=61644 AND `DifficultyID`=1;
UPDATE `creature_template_scaling` SET `ContentTuningID`='2' WHERE  `Entry`=61644 AND `DifficultyID`=0;

UPDATE `creature_template` SET `npcflag`='16777216', `AIName`='SmartAI' WHERE  `entry`=61680;
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES ('61680', '120327', '1', '1');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (61680, 0, 0, 1, 73, 0, 100, 1, 0, 0, 0, 0, 0, '', 33, 61680, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'on spellclick - give credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (61680, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'link - say 0');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (61680, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'link - despawn');

UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=3733;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('3733', '2', '33095');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=3734;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('3734', '2', '33095');

REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (13595, 2, 2, -1, 0, 0, 1, 43, 0, 1, 0, 0, 0, 0, 0, 41793);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (13595, 1, 1, 27, 0, 0, 1, 43, 0, 1, 0, 0, 0, 0, 0, 41793);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (13595, 0, 0, 0, 257793, 33183, 1, 43, 0, 1, 0, 0, 0, 0, 0, 41793);

REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (13595, 2, 0, 3738, 27,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (13595, 1, 0, 3772, -156,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (13595, 0, 0, 3845, -215,0, 22908);

UPDATE `creature_template` SET `maxlevel`='30' WHERE  `entry`=33390;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('33390', '2', '40593');
UPDATE `creature_template` SET `maxlevel`='30' WHERE  `entry`=33389;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('33389', '2', '40593');
UPDATE `creature_template` SET `maxlevel`='30' WHERE  `entry`=3713;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('3713', '2', '33095');
UPDATE `creature_template` SET `maxlevel`='30' WHERE  `entry`=3717;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('3717', '2', '33095');
UPDATE `creature_template` SET `minlevel`='15', `maxlevel`='30' WHERE  `entry`=33444;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('33444', '2', '37474');
UPDATE `creature_template` SET `minlevel`='15', `maxlevel`='30' WHERE  `entry`=33334;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('33334', '2', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=33283;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('33283', '2', '33095');

DELETE FROM `creature_template` WHERE `entry`=33347;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_class`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (33347, 0, 0, 0, 0, 0, 'Delgren the Purifier', 'Delgren the Purifier', '', NULL, 'questinteract', 0, 26, 33, 0, 0, 0, 12, 16777216, 1, 1.14286, 1, 0, 0, 2000, 2000, 0, 0, 2, 537133824, 2048, 0, 0, 0, 0, 7, 128, 0, 33347, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 38979, 0, 0, 1, 0, 0, 0, '', 42979);

UPDATE `creature_template_addon` SET `auras`='62856 29266' WHERE  `entry`=33347;
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('33347', '62839', '1');
REPLACE INTO `smart_scripts` (`entryorguid`, `event_type`, `action_type`, `action_param1`, `action_param2`, `target_type`, `comment`) VALUES ('33347', '73', '56', '45043', '1', '7', 'Delgren the Purifier - Spell Click - Give Player Item Delgren the Purifier\\\'s Prayer Book (condition)');

UPDATE `creature_template` SET `IconName`='questinteract', `npcflag`='16777216', `unit_flags`='537133824', `AIName`='SmartAI' WHERE  `entry`=33348;
UPDATE `creature_template_addon` SET `auras`='62856 29266' WHERE  `entry`=33348;
UPDATE `npc_spellclick_spells` SET `spell_id`='62837' WHERE  `npc_entry`=33348 AND `spell_id`=62838;
REPLACE INTO `smart_scripts` (`entryorguid`, `event_type`, `action_type`, `action_param1`, `action_param2`, `target_type`, `comment`) VALUES ('33348', '73', '56', '45042', '1', '7', 'Feero Ironhand - Spell Click - Give Player Item Feero\\\'s Holy Hammer (condition)');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 33348, 0, 1, 2, 0, 45042, 1, 0, 1, 0, '', '(AND)SAI if Invoker Doesn\'t Have Item');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 33347, 0, 1, 2, 0, 45043, 1, 0, 1, 0, '', '(AND)SAI if Invoker Doesn\'t Have Item');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 33347, 0, 1, 8, 0, 13626, 0, 0, 1, 0, '', '(AND)SAI if Invoker Quest Not Rewarded');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 33348, 0, 1, 14, 0, 13626, 0, 0, 1, 0, '', '(AND)SAI if Invoker Has Quest');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 33348, 0, 1, 8, 0, 13626, 0, 0, 1, 0, '', '(AND)SAI if Invoker Quest Not Rewarded');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 3363, 0, 0, 9, 0, 13626, 0, 0, 0, 0, '', 'SAI only if not near creature');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (18, 4484, 62838, 0, 0, 9, 0, 13626, 0, 0, 0, 0, '', 'SpellClick - IfPlayerHasQuest');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 3663, 0, 0, 9, 0, 13626, 0, 0, 0, 0, '', 'SpellClick - IfPlayerHasQuest');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 33347, 0, 1, 14, 0, 13626, 0, 0, 1, 0, '', '(AND)SAI if Invoker Has Quest');


DELETE FROM `creature_equip_template` WHERE (`ID`=1 AND `CreatureID`=94337) OR (`ID`=2 AND `CreatureID` IN (109639,97851,94413,105525));
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(94337, 1, 0, 0, 0, 0, 0, 0, 80271, 0, 0, 44730), -- Dread-Rider Plaguebringer
(109639, 2, 109042, 0, 0, 109042, 0, 0, 0, 0, 0, 44730), -- Dread-Rider Stalker
(97851, 2, 42920, 0, 0, 108594, 0, 0, 0, 0, 0, 44730), -- Felskorn Chosen
(94413, 2, 109597, 0, 0, 52524, 0, 0, 0, 0, 0, 44730), -- Isel the Hammer
(105525, 2, 128097, 0, 0, 0, 0, 0, 0, 0, 0, 44730); -- Helmouth Cursewalker

UPDATE `creature_equip_template` SET `VerifiedBuild`=44730 WHERE (`ID`=1 AND `CreatureID` IN (165992,166612,165983,165860,165862,166714,168130,168531,170624,166963,166605,168014,175366,168012,165918,169177,169093,169076,170762,169073,170759,169070,169072,170763,170758,51348,176554,1756,175138,1976,173220,61840,61839,171789,42421,58167,1327,6089,340,155011,176203,6090,1328,176192,173706,68,61841,55684,87501,1321,1339,14439,1319,61837,61838,61836,61834,1285,3518,44583,1287,1289,1432,1275,49748,1257,12480,12481,14423,1301,1431,5493,5494,188678,1297,1298,1367,1366,188679,52031,46180,11068,1316,30713,338,42288,5386,1312,49701,5503,1313,5500,5499,5566,4078,1141,1311,1308,148124,147741,148233,147785,149131,147714,331,2708,5694,149616,2485,150122,149626,1415,5498,174146,113785,96794,119484,96795,92643,104091,96793,96792,119226,96791,112079,118506,96771,96770,105339,106930,96949,96948,96950,96945,96944,96947,96946,107968,96951,90417,96644,113873,90431,90463,90418,97213,113784,96772,112720,113781,92457,110019,92183,96954,103626,106655,32725,120687,96959,96953,96809,96957,96956,96952,97500,97533,106263,106262,98724,93471,96785,111246,96778,120413,120412,109554,96958,107772,96955,119487,119486,98723,96786,96780,92489,96802,96779,119272,120420,120423,120422,120417,120416,120419,97141,109390,109387,93536,113780,113783,97792,116175,94338,93870,95052,97825,94318,109640,109525,97816,92307,93584,98953,93779,112481,105748,105746,105749,98018,96236,90747,108283,108289,96229,90734,91085,90785,90783,95891,90866,90899,90749,110521,95889,114717,92471,92224,90902)) OR (`ID`=2 AND `CreatureID` IN (165862,166606,166605,169177,120415)) OR (`ID`=6 AND `CreatureID` IN (165862,166605,166606,169177,93471)) OR (`ID`=7 AND `CreatureID` IN (165862,93471)) OR (`ID`=8 AND `CreatureID`=165862) OR (`ID`=5 AND `CreatureID` IN (166606,166605,169177,93471)) OR (`ID`=9 AND `CreatureID`=166605) OR (`ID`=3 AND `CreatureID` IN (166606,166605,169177,1976,93471)) OR (`ID`=4 AND `CreatureID` IN (166605,169177)) OR (`ID`=10 AND `CreatureID`=166605);


UPDATE `areatrigger_template` SET `VerifiedBuild`=44730 WHERE (`IsServerSide`=0 AND `Id` IN (9225,24363,9243,12462));


UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=20468;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=4506;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=4506;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=4506;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=4506;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=4506;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=4506;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=4506;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=4506;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8272;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8272;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8272;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8272;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8272;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8272;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8272;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8272;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8272;


UPDATE `conversation_actors` SET `VerifiedBuild`=44730 WHERE (`Idx`=0 AND `ConversationId` IN (14324,15497,16017,14912,14904,14949,14322,15558,14910,14909,14908,14903,16009,14323,14911)) OR (`Idx`=2 AND `ConversationId` IN (14912,14903)) OR (`Idx`=3 AND `ConversationId` IN (14912,14903)) OR (`Idx`=1 AND `ConversationId` IN (14912,14910,14903)) OR (`Idx`=10 AND `ConversationId`=14903) OR (`Idx`=9 AND `ConversationId`=14903) OR (`Idx`=8 AND `ConversationId`=14903) OR (`Idx`=7 AND `ConversationId`=14903) OR (`Idx`=5 AND `ConversationId`=14903) OR (`Idx`=6 AND `ConversationId`=14903) OR (`Idx`=4 AND `ConversationId`=14903);


UPDATE `conversation_line_template` SET `VerifiedBuild`=44730 WHERE `Id` IN (35807, 38876, 40308, 40307, 37389, 37390, 39046, 37388, 37387, 37386, 37385, 37362, 37361, 37360, 37359, 37492, 39251, 37491, 37490, 37489, 35805, 39045, 39044, 37381, 37380, 37379, 37378, 37377, 37376, 37375, 37374, 37358, 37512, 37511, 37510, 38356, 38355, 38354, 37509, 38353, 38352, 38351, 37357, 37356, 37508, 38350, 38349, 38348, 38347, 38346, 38345, 38344, 37355, 37516, 37354, 37353, 37507, 37352, 37351, 40278, 40277, 35806, 37384, 37383, 37382);


UPDATE `conversation_template` SET `VerifiedBuild`=44730 WHERE `Id`=15497;
UPDATE `conversation_template` SET `VerifiedBuild`=44730 WHERE `Id`=14324;
UPDATE `conversation_template` SET `VerifiedBuild`=44730 WHERE `Id`=14323;
UPDATE `conversation_template` SET `VerifiedBuild`=44730 WHERE `Id`=14322;
UPDATE `conversation_template` SET `VerifiedBuild`=44730 WHERE `Id`=15558;
UPDATE `conversation_template` SET `VerifiedBuild`=44730 WHERE `Id`=14912;
UPDATE `conversation_template` SET `VerifiedBuild`=44730 WHERE `Id`=14911;
UPDATE `conversation_template` SET `VerifiedBuild`=44730 WHERE `Id`=14910;
UPDATE `conversation_template` SET `VerifiedBuild`=44730 WHERE `Id`=14909;
UPDATE `conversation_template` SET `VerifiedBuild`=44730 WHERE `Id`=14908;
UPDATE `conversation_template` SET `VerifiedBuild`=44730 WHERE `Id`=14904;
UPDATE `conversation_template` SET `VerifiedBuild`=44730 WHERE `Id`=14903;
UPDATE `conversation_template` SET `VerifiedBuild`=44730 WHERE `Id`=14949;
UPDATE `conversation_template` SET `FirstLineID`=40277, `VerifiedBuild`=44730 WHERE `Id`=16009;
UPDATE `conversation_template` SET `FirstLineID`=40307, `VerifiedBuild`=44730 WHERE `Id`=16017;



UPDATE `quest_offer_reward` SET `VerifiedBuild`=44730 WHERE `ID` IN (59752, 59751, 39775, 42444, 38053);
UPDATE `quest_offer_reward` SET `RewardText`='It is good that you have arrived.\n\nWe need heroes like you in this dire hour.', `VerifiedBuild`=44730 WHERE `ID`=60545; -- Shadowlands: A Chilling Summons


UPDATE `quest_poi` SET `VerifiedBuild`=44730 WHERE (`QuestID`=59751 AND `BlobIndex`=3 AND `Idx1`=12) OR (`QuestID`=59751 AND `BlobIndex`=2 AND `Idx1`=11) OR (`QuestID`=59751 AND `BlobIndex`=1 AND `Idx1`=10) OR (`QuestID`=59751 AND `BlobIndex`=0 AND `Idx1`=9) OR (`QuestID`=59751 AND `BlobIndex`=1 AND `Idx1`=8) OR (`QuestID`=59751 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=59751 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=59751 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=59751 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59751 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59751 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59751 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59751 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=40567 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=40567 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=40567 AND `BlobIndex`=0 AND `Idx1`=0);

UPDATE `quest_poi_points` SET `VerifiedBuild`=44730 WHERE (`QuestID`=59751 AND `Idx1`=12 AND `Idx2`=2) OR (`QuestID`=59751 AND `Idx1`=12 AND `Idx2`=1) OR (`QuestID`=59751 AND `Idx1`=12 AND `Idx2`=0) OR (`QuestID`=59751 AND `Idx1`=11 AND `Idx2`=0) OR (`QuestID`=59751 AND `Idx1`=10 AND `Idx2`=0) OR (`QuestID`=59751 AND `Idx1`=9 AND `Idx2`=0) OR (`QuestID`=59751 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=59751 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=59751 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=59751 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=59751 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=59751 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59751 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59751 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59751 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=40567 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=40567 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=40567 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_greeting` WHERE (`ID`=90866 AND `Type`=0);
INSERT INTO `quest_greeting` (`ID`, `Type`, `GreetEmoteType`, `GreetEmoteDelay`, `Greeting`, `VerifiedBuild`) VALUES
(90866, 0, 0, 0, 'Those freaks managed to blow what was left of our ammunition stores; it\'s a miracle the ship held together as long as she did!', 44730); -- 90866

UPDATE `quest_greeting` SET `VerifiedBuild`=44730 WHERE (`Type`=0 AND `ID` IN (166723,165918));

DELETE FROM `quest_details` WHERE `ID` IN (42446 /*Singed Feathers*/, 42444 /*Plight of the Blackfeather*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(42446, 403, 0, 0, 0, 0, 0, 0, 0, 44730), -- Singed Feathers
(42444, 0, 0, 0, 0, 0, 0, 0, 0, 44730); -- Plight of the Blackfeather

UPDATE `quest_details` SET `VerifiedBuild`=44730 WHERE `ID` IN (59753, 59752, 59907, 59751, 38558);


UPDATE `creature_queststarter` SET `VerifiedBuild`=44730 WHERE (`id`=170624 AND `quest`=59753) OR (`id`=166723 AND `quest`=59752) OR (`id`=165918 AND `quest`=59907) OR (`id`=169076 AND `quest`=59751) OR (`id`=107498 AND `quest`=42446) OR (`id`=107499 AND `quest`=42444) OR (`id`=90866 AND `quest`=38558);


UPDATE `creature_questender` SET `VerifiedBuild`=44730 WHERE (`id`=166723 AND `quest`=59752) OR (`id`=165918 AND `quest`=59751) OR (`id`=169076 AND `quest`=60545) OR (`id`=107840 AND `quest`=39775) OR (`id`=107498 AND `quest`=42444) OR (`id`=90866 AND `quest`=38053);


UPDATE `spell_target_position` SET `VerifiedBuild`=44730 WHERE (`EffectIndex`=1 AND `ID` IN (329463,245992)) OR (`EffectIndex`=0 AND `ID` IN (348402,328796,333607,222695));


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (94337,95073,94342,93097,94323,94318,98108,109640,109559,109083,109110,95030,109570,98109,109525,98112,95052,109567,109639,94338,97906,97983,96080,97984,97859,97821,97944,97851,97822,97816,92307,105105,95620,97963,97825,94413,107808,94346,109678,98161,106904,103796,103797,92539,94929,94930,105525,107803,105531,98014,105746,115254,115276,114957,115291,98018,105749,97952,105748,105532,110981,111327,107498,107499,100838,89817,90747,100433,96236,108309,108283,96229,108289,100435,110604,90734,92152,111172,90748,98114,90783,95891,90866,90785,90749,110521,95889,110667,92471,114717,90902,91069,92407,90899,92224,91085));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(94337, 0, 0, 0, 334, 44730),
(95073, 0, 0, 0, 334, 44730),
(94342, 0, 0, 0, 334, 44730),
(93097, 0, 0, 0, 81, 44730),
(94323, 0, 0, 0, 334, 44730),
(94318, 0, 0, 0, 334, 44730),
(98108, 0, 0, 0, 881, 44730),
(109640, 0, 0, 0, 334, 44730),
(109559, 0, 0, 0, 334, 44730),
(109083, 0, 0, 0, 633, 44730),
(109110, 0, 0, 0, 633, 44730),
(95030, 0, 0, 0, 334, 44730),
(109570, 0, 0, 0, 334, 44730),
(98109, 0, 0, 0, 334, 44730),
(109525, 0, 0, 0, 334, 44730),
(98112, 0, 0, 0, 334, 44730),
(95052, 0, 0, 0, 334, 44730),
(109567, 0, 0, 0, 334, 44730),
(109639, 0, 0, 0, 334, 44730),
(94338, 0, 0, 0, 334, 44730),
(97906, 0, 0, 0, 334, 44730),
(97983, 0, 0, 0, 334, 44730),
(96080, 0, 0, 0, 334, 44730),
(97984, 0, 0, 0, 334, 44730),
(97859, 0, 0, 0, 334, 44730),
(97821, 0, 0, 0, 334, 44730),
(97944, 0, 0, 0, 334, 44730),
(97851, 0, 0, 0, 334, 44730),
(97822, 0, 0, 0, 334, 44730),
(97816, 0, 0, 0, 334, 44730),
(92307, 0, 0, 0, 334, 44730),
(105105, 0, 0, 0, 633, 44730),
(95620, 0, 0, 0, 334, 44730),
(97963, 0, 0, 0, 334, 44730),
(97825, 0, 0, 0, 334, 44730),
(94413, 0, 0, 0, 334, 44730),
(107808, 0, 0, 0, 334, 44730),
(94346, 0, 0, 0, 334, 44730),
(109678, 0, 0, 0, 334, 44730),
(98161, 0, 0, 0, 881, 44730),
(106904, 0, 0, 0, 347, 44730),
(103796, 0, 0, 0, 334, 44730),
(103797, 0, 0, 0, 334, 44730),
(92539, 0, 0, 0, 334, 44730),
(94929, 0, 0, 0, 334, 44730),
(94930, 0, 0, 0, 334, 44730),
(105525, 0, 0, 0, 334, 44730),
(107803, 0, 0, 0, 334, 44730),
(105531, 0, 0, 0, 334, 44730),
(98014, 0, 0, 0, 334, 44730),
(105746, 0, 0, 0, 334, 44730),
(115254, 0, 0, 0, 347, 44730),
(115276, 0, 0, 0, 347, 44730),
(114957, 0, 0, 0, 347, 44730),
(115291, 0, 0, 0, 334, 44730),
(98018, 0, 0, 0, 334, 44730),
(105749, 0, 0, 0, 334, 44730),
(97952, 0, 0, 0, 371, 44730),
(105748, 0, 0, 0, 334, 44730),
(105532, 0, 0, 0, 334, 44730),
(110981, 0, 0, 0, 334, 44730),
(111327, 0, 0, 0, 881, 44730),
(107498, 0, 0, 0, 334, 44730),
(107499, 0, 0, 0, 334, 44730),
(100838, 0, 0, 0, 642, 44730),
(89817, 0, 0, 0, 773, 44730),
(90747, 0, 0, 0, 334, 44730),
(100433, 0, 0, 0, 334, 44730),
(96236, 0, 0, 0, 334, 44730),
(108309, 0, 0, 0, 334, 44730),
(108283, 0, 0, 0, 334, 44730),
(96229, 0, 0, 0, 334, 44730),
(108289, 0, 0, 0, 334, 44730),
(100435, 0, 0, 0, 334, 44730),
(110604, 0, 0, 0, 334, 44730),
(90734, 0, 0, 0, 334, 44730),
(92152, 0, 0, 0, 334, 44730),
(111172, 0, 0, 0, 371, 44730),
(90748, 0, 0, 0, 334, 44730),
(98114, 0, 0, 0, 881, 44730),
(90783, 0, 0, 0, 334, 44730),
(95891, 0, 0, 0, 334, 44730),
(90866, 0, 0, 0, 334, 44730),
(90785, 0, 0, 0, 334, 44730),
(90749, 0, 0, 0, 334, 44730),
(110521, 0, 0, 0, 334, 44730),
(95889, 0, 0, 0, 334, 44730),
(110667, 0, 0, 0, 334, 44730),
(92471, 0, 0, 0, 334, 44730),
(114717, 0, 0, 0, 334, 44730),
(90902, 0, 0, 0, 334, 44730),
(91069, 0, 0, 0, 334, 44730),
(92407, 0, 0, 0, 334, 44730),
(90899, 0, 0, 0, 334, 44730),
(92224, 0, 0, 0, 334, 44730),
(91085, 0, 0, 0, 334, 44730);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=44730 WHERE (`DifficultyID`=0 AND `Entry` IN (168044,166714,165983,165862,166195,171423,168130,168531,166415,166612,170624,171497,166605,175366,168014,165860,168012,166119,126605,165992,165974,166963,166606,165918,169095,169100,169075,169076,169098,169101,170762,170760,168670,169071,169109,169073,170761,170759,169072,170763,170758,116633,169093,169070,115634,175138,721,165505,176554,61840,61839,171789,58167,173220,1327,169177,6089,3629,340,155011,173219,176220,176203,6090,1478,1477,44237,1328,3513,3512,3511,3510,3509,3508,3507,3505,176192,1756,173706,61841,3626,55684,2795,87503,87501,38821,176235,176237,1333,51938,5565,1321,1320,49540,1339,14439,3520,50523,50524,1319,50525,61837,42421,56925,61838,44582,50480,61836,61834,1286,1285,188151,3518,44583,50669,1287,1289,6174,1432,1275,2198,29142,179896,2331,2330,279,3504,44773,49748,1295,1294,1427,1257,1291,12480,44774,71526,141270,12481,29093,1299,4075,8719,15659,1402,8670,14423,175420,1428,175416,1301,1431,5493,5494,188678,277,6740,1297,1298,1367,1366,52359,52358,52361,188679,188342,52031,42339,46180,11068,1316,30713,1318,338,42288,30730,5386,1317,1315,1312,49701,68,5503,1313,5500,5499,3628,1300,5566,1346,1347,1314,149458,1429,1310,5567,4078,1141,1309,1311,1308,158755,158753,140407,149433,149436,140403,140253,23837,158463,158456,158440,158436,2334,3627,51348,149469,84745,84749,151937,93223,1419,52408,331,1976,1412,2708,111190,85307,1307,147785,5694,148233,149124,5497,149616,147741,2485,148124,149121,149099,150122,147714,148796,149445,149626,155739,103033,149131,82564,1415,5498,1414,1413,174146,84751,85819,85818,89174,85817,85816,32520,96826,96823,113785,96794,119485,119484,96795,85290,120906,92643,96789,103092,103120,103116,35845,96793,96792,103119,103118,96790,97490,96833,96832,93534,93545,119226,96791,96983,62821,62822,112079,105332,96771,96770,105339,106930,118506,112441,96949,96948,96950,96945,96944,96947,96946,107968,122926,112554,105081,96951,90417,96644,113873,90431,90463,90418,97213,97002,96976,113784,96987,96975,96772,96990,117448,108323,97332,108792,97342,98931,93521,104208,93523,93522,93541,93542,96838,101924,93539,41200,93529,92194,110738,103976,79861,105564,96839,119437,93525,93524,105723,93528,93531,93530,97718,108925,96845,96844,93527,93543,99867,93538,119438,119396,119436,104230,32844,106359,112720,112717,93532,114730,93526,109985,112716,96981,113781,113812,68238,96968,96967,92458,93533,172326,97685,92195,54638,93544,68232,106196,110020,92457,92456,110019,110018,93189,108401,92184,92183,96954,96484,96483,151827,68239,92464,92460,92459,93188,92185,115264,106655,96841,96840,32454,32451,97512,32725,97003,120687,92438,110621,110622,92936,96959,96953,96809,112947,113775,96957,96956,96952,116420,96835,96834,97514,124678,110623,97533,112007,32494,17213,97863,116408,116419,96781,113900,97009,97005,112456,113901,106843,112437,112012,96812,96807,125261,97500,96808,106263,97001,96797,96639,106262,96796,96811,96798,98724,112847,110409,96788,96785,111246,97725,112543,108076,106951,96777,96778,25058,120413,31710,120412,105904,120415,107326,96829,31719,96828,96507,106815,107587,96830,96827,96643,96479,114732,109554,96799,96958,98725,107772,96955,119487,119486,34527,98723,96810,96805,96787,99350,96786,96806,96780,92489,121602,96802,34330,97212,96779,121541,103630,119272,97520,112545,107590,31741,31740,110642,31742,120424,96198,120421,120420,31735,120423,120422,31729,120417,31714,31728,120416,109739,31689,120419,31730,120418,43359,96813,97141,72587,96592,96843,109390,96842,96837,96784,118524,96836,93537,109387,93536,113780,113783,96782,31796,96636,97792,97767,96635,116175,97692,115287,106528,104091,103626,124679,93471,96641,27047,101436,108891,62906,108890,93405,94856,88981,93628,93779,93584,98955,98953,93870,97979,91743,107840,107928,97890,112481,112480,112479,108856,97840,97730,97080,48706,97741,97722,108927,97839,64352,88978,88465,64806,62905,97542,109682,107469,106565,97104,97743,97516,99223,97828,97731,108322,48689,92072,107258,31890,97118,108313,91975,91983,97755,92017,107947,83642,62992,83674,59357,31889,62818,97735,93725,111291,91824,89829));


UPDATE `creature_model_info` SET `VerifiedBuild`=44730 WHERE `DisplayID` IN (100300, 100287, 100307, 100297, 100294, 856, 100312, 98519, 101354, 100293, 100309, 100305, 100291, 100292, 100310, 100311, 100270, 100296, 100313, 100301, 100299, 100298, 100295, 100288, 100308, 100290, 100302, 92410, 100315, 31379, 92627, 97033, 92900, 96422, 96329, 78869, 90805, 96325, 96332, 97018, 17122, 94037, 67345, 97372, 97373, 62751, 24079, 96981, 99949, 78345, 99947, 95808, 96331, 27153, 96423, 96326, 96330, 42278, 42277, 11746, 96328, 96084, 3296, 96327, 40027, 33471, 3304, 5043, 1516, 96086, 3300, 4996, 1696, 5728, 1488, 92198, 3316, 100003, 100004, 5000, 1519, 1509, 33743, 1521, 1526, 262, 34004, 100159, 18055, 99951, 98571, 42279, 1697, 39184, 1505, 60207, 60316, 21072, 100172, 100174, 1418, 1511, 37115, 37112, 31174, 2208, 3448, 37124, 2247, 10624, 1520, 1517, 1522, 14493, 1544, 36814, 36815, 1510, 36816, 42275, 99401, 19670, 39532, 42276, 99498, 37087, 42274, 42273, 1440, 1434, 1541, 99497, 36839, 1448, 1429, 4888, 86663, 5074, 1444, 1525, 33948, 99197, 99196, 5082, 36597, 1445, 1423, 5551, 1431, 1439, 5567, 34070, 49021, 87182, 99391, 25901, 2176, 1447, 1141, 7992, 15594, 1438, 7991, 14472, 5552, 45881, 99615, 1443, 5545, 3285, 99496, 1433, 5444, 1446, 1427, 86660, 4181, 33303, 37850, 22769, 106457, 106441, 15921, 2220, 2276, 99381, 2257, 5441, 22612, 28507, 99187, 10591, 2256, 99193, 27261, 99186, 5080, 32928, 99383, 5081, 99185, 1486, 1477, 99379, 5446, 99389, 99425, 99424, 3298, 3295, 99421, 1432, 3445, 1502, 99422, 99423, 37311, 90354, 221, 1489, 3444, 2181, 5073, 99417, 1491, 1494, 76046, 93617, 32776, 37109, 4403, 90332, 15959, 86665, 90336, 37110, 2459, 87578, 54859, 93520, 93516, 1694, 37310, 18327, 20985, 99415, 257, 46209, 18930, 89777, 89931, 328, 92463, 37874, 89786, 90209, 26069, 89771, 1484, 3167, 90206, 2968, 58785, 1480, 89933, 89785, 5076, 90201, 89930, 90208, 67053, 3292, 99420, 90197, 99430, 20988, 90104, 26067, 89885, 89772, 89932, 90342, 56857, 92464, 90207, 57081, 99418, 19803, 1473, 1472, 87530, 58478, 99416, 19619, 17241, 59145, 27161, 27160, 1595, 27963, 27965, 38800, 76023, 61959, 61955, 25604, 68004, 68022, 68019, 27958, 25602, 68021, 68020, 27956, 65228, 28150, 28154, 25621, 27449, 64782, 27962, 42720, 42722, 65453, 69094, 27949, 27944, 69097, 47519, 69780, 47090, 72076, 36894, 23672, 69528, 66838, 36893, 47056, 29735, 71830, 79714, 2177, 38491, 36883, 65834, 72985, 67193, 67195, 63776, 65256, 26347, 65174, 72947, 26310, 25594, 24916, 65106, 74532, 63488, 65163, 70701, 65172, 25644, 26335, 25616, 59303, 15505, 28153, 67402, 30098, 25622, 25613, 71622, 68439, 17200, 69194, 28149, 75277, 26376, 26378, 2428, 26390, 25610, 25635, 27999, 70773, 28152, 28145, 26075, 66652, 38804, 35704, 75278, 75276, 75274, 68547, 69575, 72235, 48278, 28433, 73438, 25645, 56737, 28317, 72948, 72956, 46696, 30415, 30358, 63050, 27782, 97943, 65345, 25618, 45425, 46694, 60926, 25648, 25619, 60927, 60924, 35280, 70532, 26339, 25611, 36904, 26442, 26300, 91289, 46697, 63051, 25650, 25620, 64586, 65257, 73730, 69682, 28146, 28163, 28158, 65242, 23337, 26437, 75912, 63038, 71596, 71597, 26330, 32991, 35818, 25882, 72465, 72945, 36906, 34635, 36907, 74200, 28144, 28148, 65244, 3714, 5556, 65255, 71942, 3585, 338, 80, 16910, 65477, 74194, 74199, 25955, 68484, 65173, 26396, 72078, 68483, 21342, 72074, 71943, 25674, 27954, 78398, 65233, 27952, 69152, 26395, 22003, 52659, 69153, 27616, 25673, 27019, 64049, 72344, 48000, 25807, 63575, 26440, 27592, 65370, 72103, 69790, 26307, 25875, 5585, 67016, 1206, 64939, 901, 42872, 30869, 69926, 28162, 17170, 28160, 25607, 28155, 28159, 36634, 25791, 15180, 71019, 27959, 33542, 58842, 25041, 36905, 75302, 75301, 64048, 27287, 27955, 25806, 72095, 25947, 25605, 25983, 27822, 65714, 27960, 5554, 26299, 75130, 65252, 72104, 4626, 27883, 71599, 1072, 67043, 64759, 65975, 41568, 27680, 66672, 61971, 9990, 67760, 2954, 5586, 69542, 67001, 27657, 66159, 6295, 25595, 65101, 59102, 28147, 71088, 28156, 28143, 26441, 74782, 28161, 27448, 71017, 26394, 1669, 5777, 27915, 63577, 27719, 65422, 65412, 47999, 55376, 74087, 63578, 68480, 65355, 56704, 69627, 47997, 34172, 63576, 40155, 67808, 45556, 63934, 64272, 63938, 65625, 64268, 63733, 30211, 70856, 71101, 65626, 71063, 65627, 64267, 63939, 71099, 64271, 64270, 70449, 70443, 64046, 65514, 63088, 62508, 62575, 70595, 63482, 70597, 65873, 68968, 70713, 27823, 64821, 69471, 68940, 60922, 70976, 63731, 70977, 74478, 68916, 41014, 68913, 63730, 63732, 68213, 62584, 72713, 22255, 65486, 70711, 70596, 70710, 70598, 70712, 70259, 45970, 65862, 65389, 62352, 17697, 62218, 70871, 73431, 70870, 76630, 57052, 59729, 65457, 70286, 25630, 65678, 45883, 65680, 29504, 60914, 65681, 65679, 64208, 64200, 45882, 28072, 4959, 68949, 76925, 6302, 70120, 70444, 69898, 68749, 71878, 65390, 70442, 4960, 68188, 69899, 64770, 16633, 65206, 66649, 63402, 62852, 64764, 62851, 66648, 66650, 42109, 70450, 63792, 68157, 62719, 11686, 47633, 17694, 38870, 62093, 7028, 45220, 71571, 34520, 70590, 47992, 40716, 40713, 67199, 45193, 45191, 134, 40075, 45107, 62918, 65089, 63674, 32186, 40024, 62917, 62920, 62934, 62936, 62247, 60307, 62919, 62931, 45108, 62207);
UPDATE `creature_model_info` SET `BoundingRadius`=4.150206565856933593, `CombatReach`=17.5, `VerifiedBuild`=44730 WHERE `DisplayID`=94426;
UPDATE `creature_model_info` SET `BoundingRadius`=1.507208466529846191, `CombatReach`=1.20000004768371582, `VerifiedBuild`=44730 WHERE `DisplayID`=94391;
UPDATE `creature_model_info` SET `BoundingRadius`=6.138474464416503906, `CombatReach`=8, `VerifiedBuild`=44730 WHERE `DisplayID`=92781;
UPDATE `creature_model_info` SET `BoundingRadius`=0.983263254165649414, `CombatReach`=1.45000004768371582, `VerifiedBuild`=44730 WHERE `DisplayID`=92412;
UPDATE `creature_model_info` SET `BoundingRadius`=1.150964021682739257, `CombatReach`=1.5, `VerifiedBuild`=44730 WHERE `DisplayID`=92779;
UPDATE `creature_model_info` SET `BoundingRadius`=0.772163748741149902, `CombatReach`=3.674999713897705078, `VerifiedBuild`=44730 WHERE `DisplayID`=95194;
UPDATE `creature_model_info` SET `BoundingRadius`=0.510007679462432861, `CombatReach`=1.299999952316284179, `VerifiedBuild`=44730 WHERE `DisplayID`=88865;
UPDATE `creature_model_info` SET `BoundingRadius`=0.249600008130073547, `CombatReach`=1.80000007152557373, `VerifiedBuild`=44730 WHERE `DisplayID`=71257;
UPDATE `creature_model_info` SET `BoundingRadius`=0.305999994277954101, `CombatReach`=1.5, `VerifiedBuild`=44730 WHERE `DisplayID`=10569;
UPDATE `creature_model_info` SET `BoundingRadius`=0.681569099426269531, `CombatReach`=1.399999976158142089, `VerifiedBuild`=44730 WHERE `DisplayID`=913;
UPDATE `creature_model_info` SET `BoundingRadius`=0.106837116181850433, `CombatReach`=0.800000011920928955, `VerifiedBuild`=44730 WHERE `DisplayID`=344;
UPDATE `creature_model_info` SET `BoundingRadius`=0.381700009107589721, `CombatReach`=1.65000009536743164, `VerifiedBuild`=44730 WHERE `DisplayID`=75300;
UPDATE `creature_model_info` SET `BoundingRadius`=0.381944209337234497, `CombatReach`=1.65000009536743164, `VerifiedBuild`=44730 WHERE `DisplayID`=75299;
UPDATE `creature_model_info` SET `BoundingRadius`=0.289735019207000732, `VerifiedBuild`=44730 WHERE `DisplayID`=52602;
UPDATE `creature_model_info` SET `BoundingRadius`=1.206647515296936035, `CombatReach`=1.80000007152557373, `VerifiedBuild`=44730 WHERE `DisplayID`=60156;
UPDATE `creature_model_info` SET `DisplayID_Other_Gender`=0, `VerifiedBuild`=44730 WHERE `DisplayID`=3718;
UPDATE `creature_model_info` SET `BoundingRadius`=0.699999988079071044, `VerifiedBuild`=44730 WHERE `DisplayID`=30213;
UPDATE `creature_model_info` SET `CombatReach`=0, `VerifiedBuild`=44730 WHERE `DisplayID` IN (65513, 71672, 69679);
UPDATE `creature_model_info` SET `CombatReach`=1.5, `VerifiedBuild`=44730 WHERE `DisplayID`=35202;
UPDATE `creature_model_info` SET `BoundingRadius`=1.763700842857360839, `VerifiedBuild`=44730 WHERE `DisplayID`=32546;
UPDATE `creature_model_info` SET `BoundingRadius`=1.142845392227172851, `VerifiedBuild`=44730 WHERE `DisplayID`=65144;
UPDATE `creature_model_info` SET `BoundingRadius`=1.437936067581176757, `VerifiedBuild`=44730 WHERE `DisplayID`=70110;
UPDATE `creature_model_info` SET `BoundingRadius`=1.966109275817871093, `VerifiedBuild`=44730 WHERE `DisplayID`=73303;
UPDATE `creature_model_info` SET `BoundingRadius`=0.952371120452880859, `VerifiedBuild`=44730 WHERE `DisplayID`=23553;
UPDATE `creature_model_info` SET `BoundingRadius`=0.661612987518310546, `VerifiedBuild`=44730 WHERE `DisplayID`=65516;
UPDATE `creature_model_info` SET `BoundingRadius`=0.857133984565734863, `VerifiedBuild`=44730 WHERE `DisplayID`=63535;
UPDATE `creature_model_info` SET `BoundingRadius`=0.468923985958099365, `CombatReach`=0, `VerifiedBuild`=44730 WHERE `DisplayID`=64467;
UPDATE `creature_model_info` SET `BoundingRadius`=2.26545882225036621, `CombatReach`=3.375, `VerifiedBuild`=44730 WHERE `DisplayID`=62814;
UPDATE `creature_model_info` SET `BoundingRadius`=1.258588314056396484, `VerifiedBuild`=44730 WHERE `DisplayID`=58588;


UPDATE `creature_template_spell` SET `VerifiedBuild`=44730 WHERE (`CreatureID`=26125 AND `Index` IN (7,6,5,4,3,2,1,0));

DELETE FROM `npc_vendor` WHERE (`entry`=103797 AND `item`=180733 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(103797, 3, 180733, 0, 0, 1, 0, 0, 44730); -- Luminous Flux

UPDATE `npc_vendor` SET `VerifiedBuild`=44730 WHERE (`entry`=106904 AND `item`=123954 AND `ExtendedCost`=6066 AND `type`=1) OR (`entry`=106904 AND `item`=123952 AND `ExtendedCost`=6066 AND `type`=1) OR (`entry`=106904 AND `item`=123951 AND `ExtendedCost`=6066 AND `type`=1) OR (`entry`=106904 AND `item`=137928 AND `ExtendedCost`=6066 AND `type`=1) OR (`entry`=106904 AND `item`=137927 AND `ExtendedCost`=6066 AND `type`=1) OR (`entry`=106904 AND `item`=136698 AND `ExtendedCost`=6067 AND `type`=1) OR (`entry`=106904 AND `item`=137915 AND `ExtendedCost`=6067 AND `type`=1) OR (`entry`=106904 AND `item`=137910 AND `ExtendedCost`=6067 AND `type`=1) OR (`entry`=106904 AND `item`=140579 AND `ExtendedCost`=6107 AND `type`=1) OR (`entry`=106904 AND `item`=139598 AND `ExtendedCost`=6050 AND `type`=1) OR (`entry`=106904 AND `item`=139602 AND `ExtendedCost`=6051 AND `type`=1) OR (`entry`=106904 AND `item`=129149 AND `ExtendedCost`=6106 AND `type`=1) OR (`entry`=106904 AND `item`=136920 AND `ExtendedCost`=6108 AND `type`=1) OR (`entry`=106904 AND `item`=129367 AND `ExtendedCost`=6115 AND `type`=1) OR (`entry`=106904 AND `item`=140743 AND `ExtendedCost`=6109 AND `type`=1);
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=44730 WHERE (`entry`=106904 AND `item`=140217 AND `ExtendedCost`=0 AND `type`=1); -- Boon of the Salvager
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=44730 WHERE (`entry`=103797 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1); -- Coal
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=44730 WHERE (`entry`=103797 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1); -- Elemental Flux
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=44730 WHERE (`entry`=103797 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1); -- Strong Flux
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=44730 WHERE (`entry`=103797 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1); -- Weak Flux
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=44730 WHERE (`entry`=103797 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1); -- Blacksmith Hammer
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=44730 WHERE (`entry`=103797 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1); -- Mining Pick


DELETE FROM `gossip_menu` WHERE (`MenuID`=10181 AND `TextID`=14128);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(10181, 14128, 44730); -- 106904 (Valdemar Stormseeker)

UPDATE `gossip_menu` SET `VerifiedBuild`=44730 WHERE (`MenuID`=26056 AND `TextID`=41731) OR (`MenuID`=20506 AND `TextID`=14013) OR (`MenuID`=19781 AND `TextID`=29303) OR (`MenuID`=20539 AND `TextID`=30748);
DELETE FROM `gossip_menu_option` WHERE (`MenuID`=26056 AND `OptionID`=2) OR (`MenuID`=27553 AND `OptionID`=0);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(26056, 2, 0, 'I have heard this tale before. |cFFFF0000<Maw skip unavailable.> [Requires Level 50]|r', 0, 1, 1, 0, 27553, 0, 0, 0, NULL, 0, 44730),
(27553, 0, 0, 'I understand.', 53318, 1, 1, 0, 26056, 0, 0, 0, NULL, 0, 44730); -- OptionBroadcastTextID: 53318 - 53318 - 60548 - 60548 - 97920 - 97920

UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=31340, `BoxMoney`=0, `VerifiedBuild`=44730 WHERE (`MenuID`=20506 AND `OptionID`=3); -- OptionBroadcastTextID: 31340 - 31340 - 45376 - 45376
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=8508, `BoxMoney`=0, `VerifiedBuild`=44730 WHERE (`MenuID`=20506 AND `OptionID`=11); -- OptionBroadcastTextID: 8508 - 8508 - 8511 - 8511 - 8518 - 8518 - 8524 - 8524 - 8525 - 8525 - 8529 - 8529 - 8534 - 8534 - 8536 - 8536 - 8539 - 8539 - 8542 - 8542 - 15228 - 15228 - 19208 - 19208 - 45383 - 45383 - 200263 - 200263
UPDATE `gossip_menu_option` SET `BoxMoney`=0, `VerifiedBuild`=44730 WHERE (`MenuID`=20506 AND `OptionID`=10); -- OptionBroadcastTextID: 32180 - 32180 - 159628 - 159628
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=32216, `BoxMoney`=0, `VerifiedBuild`=44730 WHERE (`MenuID`=20506 AND `OptionID`=13); -- OptionBroadcastTextID: 32216 - 32216 - 32724 - 32724 - 159725 - 159725
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2863, `BoxMoney`=0, `VerifiedBuild`=44730 WHERE (`MenuID`=20506 AND `OptionID`=5); -- OptionBroadcastTextID: 2863 - 2863 - 4889 - 4889 - 6632 - 6632 - 19203 - 19203 - 45379 - 45379 - 200256 - 200256
UPDATE `gossip_menu_option` SET `BoxMoney`=0, `VerifiedBuild`=44730 WHERE (`MenuID`=20506 AND `OptionID`=0); -- OptionBroadcastTextID: 123314 - 123314
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=3426, `BoxMoney`=0, `VerifiedBuild`=44730 WHERE (`MenuID`=20506 AND `OptionID`=2); -- OptionBroadcastTextID: 3426 - 3426 - 5908 - 5908 - 6631 - 6631 - 6907 - 6907 - 6987 - 6987 - 15214 - 15214 - 19201 - 19201 - 32167 - 32167 - 44628 - 44628 - 78584 - 78584 - 200249 - 200249
UPDATE `gossip_menu_option` SET `BoxMoney`=0, `VerifiedBuild`=44730 WHERE (`MenuID`=20506 AND `OptionID`=1); -- OptionBroadcastTextID: 56155 - 56155 - 200247 - 200247
UPDATE `gossip_menu_option` SET `VerifiedBuild`=44730 WHERE (`OptionID`=0 AND `MenuID` IN (10181,26056));
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=58437, `OptionType`=3, `OptionNpcFlag`=128, `VerifiedBuild`=44730 WHERE (`MenuID`=19781 AND `OptionID`=0); -- OptionBroadcastTextID: 58437 - 58437 - 90189 - 90189 - 180077 - 180077
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2870, `BoxMoney`=0, `VerifiedBuild`=44730 WHERE (`MenuID`=20506 AND `OptionID`=6); -- OptionBroadcastTextID: 2870 - 2870 - 3428 - 3428 - 4890 - 4890 - 5086 - 5086 - 5332 - 5332 - 5910 - 5910 - 6909 - 6909 - 6993 - 6993 - 15222 - 15222 - 32189 - 32189 - 45380 - 45380
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=5513, `BoxMoney`=0, `VerifiedBuild`=44730 WHERE (`MenuID`=20506 AND `OptionID`=7); -- OptionBroadcastTextID: 5513 - 5513 - 5911 - 5911 - 6396 - 6396 - 6633 - 6633 - 6910 - 6910 - 15224 - 15224 - 19202 - 19202 - 32166 - 32166 - 44629 - 44629 - 200258 - 200258
UPDATE `gossip_menu_option` SET `BoxMoney`=0, `VerifiedBuild`=44730 WHERE (`MenuID`=20506 AND `OptionID`=12); -- OptionBroadcastTextID: 32176 - 32176 - 159395 - 159395
UPDATE `gossip_menu_option` SET `BoxMoney`=0, `VerifiedBuild`=44730 WHERE (`MenuID`=20506 AND `OptionID`=9); -- OptionBroadcastTextID: 4895 - 4895 - 5093 - 5093 - 5336 - 5336 - 5514 - 5514 - 5912 - 5912 - 6397 - 6397 - 15226 - 15226 - 19204 - 19204 - 45381 - 45381 - 200260 - 200260

UPDATE `creature_template` SET `gossip_menu_id`=26056 WHERE `entry`=171789; -- High Inquisitor Whitemane
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=12, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `dynamicflags`=128 WHERE `entry`=188151; -- Worker
UPDATE `creature_template` SET `npcflag`=129 WHERE `entry`=119484; -- Captain Roberts
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`=96644; -- Sky Admiral Rogers
UPDATE `creature_template` SET `gossip_menu_id`=20506 WHERE `entry`=104091; -- Kirin Tor Guardian

UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags3`=1 WHERE `entry`=94342; -- Credit Bunny
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=94323; -- Nurse Dolores
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1.142857193946838378 WHERE `entry`=94318; -- Genn Greymane
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=98108; -- Gryphon-Master Clifford
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=109559; -- Gilnean Mastiff
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=109083; -- Houndmaster Payne
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=109110; -- Tracking Hound
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=109570; -- Derek Testerman
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=109525; -- Desmond
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=109567; -- Harrison McCabe
UPDATE `creature_template` SET `minlevel`=45, `faction`=31, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=108891; -- Runewood Doe
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=97906; -- Runebound Wretch
UPDATE `creature_template` SET `minlevel`=45, `faction`=31, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=108890; -- Runewood Greatstag
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=97983; -- Credit - North Portal Destroyed
UPDATE `creature_template` SET `unit_flags2`=2097152, `unit_flags3`=16777217 WHERE `entry`=96080; -- Demonic Gateway
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=97984; -- Credit - East Portal Destroyed
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=97859; -- Karuas
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=97821; -- Felskorn Oathbinder
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=97944; -- Muorg
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=97851; -- Felskorn Chosen
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=7, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=100698112, `unit_flags3`=16777216 WHERE `entry`=93405; -- Training Block
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=97822; -- Garzareth
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags2`=33556480 WHERE `entry`=97816; -- Felskorn Zealot
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=0, `HoverHeight`=1 WHERE `entry`=92307; -- God-King Skovald
UPDATE `creature_template` SET `npcflag`=0, `unit_flags3`=16777216, `dynamicflags`=128 WHERE `entry`=105105; -- Storm Brew
UPDATE `creature_template` SET `maxlevel`=45 WHERE `entry`=95620; -- Servant of Skovald
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=0, `unit_flags3`=16777217 WHERE `entry`=97963; -- Felblood Cup
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=97825; -- Felskorn Cleaver
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=94413; -- Isel the Hammer
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `HoverHeight`=3 WHERE `entry`=94856; -- Priestess of Eyir
UPDATE `creature_template` SET `faction`=188, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=88981; -- Ironclaw Scuttler
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=190, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=4196352, `HoverHeight`=16 WHERE `entry`=93628; -- Eyir
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2165, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=93779; -- Commander Lorna Crowley
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480, `HoverHeight`=3 WHERE `entry`=93584; -- Tideskorn Shieldmaiden
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=1.714285731315612792, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `VehicleId`=4437 WHERE `entry`=98955; -- Tideskorn Warbear
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33587200, `unit_flags2`=33556480, `HoverHeight`=3 WHERE `entry`=98953; -- Tideskorn Shieldmaiden
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2165, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480, `unit_flags3`=8388608 WHERE `entry`=93870; -- Greywatch Guard
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=190, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `HoverHeight`=7.5 WHERE `entry`=97979; -- Vethir
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=190, `npcflag`=1, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67143680, `unit_flags3`=16777216 WHERE `entry`=91743; -- Circle of Binding
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=190, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67160064, `unit_flags3`=16777217 WHERE `entry`=107840; -- Stormforged Grapple Launcher
UPDATE `creature_template` SET `minlevel`=45, `faction`=7, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=107928; -- Cliffdiver Eagle
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=97890; -- Dravax
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=14, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=112481; -- Felskorn Zealot
UPDATE `creature_template` SET `minlevel`=45, `faction`=14, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=112480; -- Servant of Skovald
UPDATE `creature_template` SET `minlevel`=45, `faction`=14, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=112479; -- Felskorn Oathbinder
UPDATE `creature_template` SET `minlevel`=45, `faction`=14, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=108856; -- Agitated Stonewarden
UPDATE `creature_template` SET `faction`=188, `npcflag`=1073741824, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=97840; -- Rose Taipan
UPDATE `creature_template` SET `faction`=188, `npcflag`=1073741824, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=97080; -- Golden Eaglet
UPDATE `creature_template` SET `faction`=188, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=97741; -- Black-Footed Fox Kit
UPDATE `creature_template` SET `faction`=188, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=97722; -- Golden Eaglet
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=98161; -- Garhal the Scalekeeper
UPDATE `creature_template` SET `gossip_menu_id`=10181, `maxlevel`=45 WHERE `entry`=106904; -- Valdemar Stormseeker


UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=92539; -- Havi
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=94929; -- Huginn
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=94930; -- Muninn
UPDATE `creature_template` SET `minlevel`=45, `faction`=7, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=108927; -- Gluttonous Raven
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=97839; -- Rose Taipan
UPDATE `creature_template` SET `minlevel`=45, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=107803; -- Wild Plains Runehorn
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=98014; -- Captain Sten
UPDATE `creature_template` SET `maxlevel`=45, `faction`=2817, `speed_run`=1.142857193946838378 WHERE `entry`=105746; -- Helarjar Berserker
UPDATE `creature_template` SET `speed_walk`=1.60000002384185791, `speed_run`=1.428571462631225585, `BaseAttackTime`=1500, `unit_flags`=33088, `unit_flags2`=2048 WHERE `entry`=115254; -- Stormforged Valarjar
UPDATE `creature_template` SET `speed_walk`=1.60000002384185791, `speed_run`=1.428571462631225585, `BaseAttackTime`=1500, `unit_flags`=33088, `unit_flags2`=2048 WHERE `entry`=115276; -- Valarjar Soul
UPDATE `creature_template` SET `maxlevel`=45, `faction`=2817, `speed_walk`=2.799999952316284179, `speed_run`=2, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=114957; -- Vagnhild
UPDATE `creature_template` SET `maxlevel`=45, `faction`=2817, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=115291; -- Helarjar Soulthief
UPDATE `creature_template` SET `speed_run`=1.142857193946838378 WHERE `entry`=98018; -- Halvir
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=105749; -- Helmouth Soulhunter
UPDATE `creature_template` SET `npcflag`=1073741824, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=97952; -- Tiny Apparition
UPDATE `creature_template` SET `maxlevel`=45, `speed_run`=1.142857193946838378 WHERE `entry`=105748; -- Helarjar Mistcaller
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=105532; -- Helhound
UPDATE `creature_template` SET `minlevel`=60, `speed_run`=1.142857193946838378, `unit_flags`=33536 WHERE `entry`=111327; -- Hillevi the Scalekeeper
UPDATE `creature_template` SET `faction`=2844, `speed_run`=1.385714292526245117, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048, `HoverHeight`=7.5 WHERE `entry`=109682; -- Tamed Stormwing Drake
UPDATE `creature_template` SET `faction`=14, `speed_walk`=1.60000002384185791, `speed_run`=1.428571462631225585, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `VehicleId`=4701, `HoverHeight`=4 WHERE `entry`=107469; -- Rampaging Squallhunter
UPDATE `creature_template` SET `faction`=2000, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=2048 WHERE `entry`=106565; -- Blackfeather Gatherer
UPDATE `creature_template` SET `speed_run`=1.142857193946838378, `unit_flags`=33536 WHERE `entry`=107498; -- Cukkaw
UPDATE `creature_template` SET `faction`=31, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=97104; -- Spotted Hare
UPDATE `creature_template` SET `speed_run`=1.142857193946838378, `unit_flags`=33536 WHERE `entry`=107499; -- Frightened Ravenbear
UPDATE `creature_template` SET `faction`=188, `npcflag`=1073741824, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=97743; -- Mist Fox Kit
UPDATE `creature_template` SET `faction`=31, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=97516; -- Foothills Greatstag
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=14, `speed_walk`=1.60000002384185791, `speed_run`=1.428571462631225585, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `VehicleId`=4701, `HoverHeight`=6.5 WHERE `entry`=99223; -- Adult Squallhunter
UPDATE `creature_template` SET `minlevel`=45, `faction`=7, `BaseAttackTime`=2000, `unit_flags`=537166592, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=97828; -- Silvertail Mountain Goat
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=97731; -- Mist Fox Kit
UPDATE `creature_template` SET `faction`=31, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=108322; -- Ferngrazer Stag
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=89817; -- Vault Guardian
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=14, `speed_walk`=1.60000002384185791, `speed_run`=1.428571462631225585, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `VehicleId`=4701, `HoverHeight`=4 WHERE `entry`=107258; -- Juvenile Squallhunter
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=90747; -- Slash Gutspill
UPDATE `creature_template` SET `faction`=31, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=31890; -- Mountain Skunk
UPDATE `creature_template` SET `faction`=188, `npcflag`=1073741824, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=97118; -- Long-Eared Owl
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=100433; -- Mightstone Rockcaller
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry` IN (96236, 108283); -- Mightstone Savage
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry` IN (108309, 100435); -- Bloodtotem Flameheart
UPDATE `creature_template` SET `minlevel`=45, `unit_flags`=32768 WHERE `entry` IN (96229, 108289); -- Bloodtotem Skirmisher
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=110604; -- Credit - Ingredients Added
UPDATE `creature_template` SET `faction`=31, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=108313; -- Ferngrazer Doe
UPDATE `creature_template` SET `minlevel`=45, `unit_flags`=537165824 WHERE `entry`=90734; -- Gro Rumblehoof
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67143680, `unit_flags3`=16777217 WHERE `entry` IN (91975, 91983, 92017); -- Grapple Point
UPDATE `creature_template` SET `minlevel`=45, `faction`=7, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=97755; -- Galecrested Eagle
UPDATE `creature_template` SET `minlevel`=45, `speed_walk`=1 WHERE `entry`=92152; -- Whitewater Typhoon
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=90748; -- Whitewater Tempest
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=98114; -- Donovan
UPDATE `creature_template` SET `minlevel`=45, `npcflag`=3 WHERE `entry`=90783; -- Mishka
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1.142857193946838378, `unit_flags3`=512 WHERE `entry`=95891; -- Genn Greymane
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=33600 WHERE `entry`=90866; -- Tinkmaster Overspark
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=90785; -- Skyfire Marine
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags3`=1048576 WHERE `entry`=90749; -- Sky Admiral Rogers
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=536904448, `unit_flags3`=8192 WHERE `entry`=92471; -- Skyfire Engineer
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=114717; -- Forsaken Bat-Rider
UPDATE `creature_template` SET `faction`=188, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=97735; -- Long-Eared Owl
UPDATE `creature_template` SET `faction`=1712, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=111291; -- Stonescar River-Thresher
UPDATE `creature_template` SET `minlevel`=45, `faction`=31, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=91824; -- Bluffwalker Goat
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=90902; -- Dread-Rider Malwick
UPDATE `creature_template` SET `minlevel`=45, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=91069; -- Forsaken Dreadwing
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=33554432, `unit_flags3`=1 WHERE `entry`=92407; -- Riding Bat
UPDATE `creature_template` SET `minlevel`=45, `speed_run`=1.385714292526245117, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=90899; -- Forsaken Bat-Rider
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=92224; -- Forsaken Deathstalker
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=537166592, `unit_flags2`=1, `unit_flags3`=8192 WHERE `entry`=91085; -- Skyfire Marine
UPDATE `creature_template` SET `minlevel`=45, `faction`=2156, `speed_walk`=2.799999952316284179, `speed_run`=2, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=89829; -- Highcrag Eagle


UPDATE `quest_template` SET `VerifiedBuild`=44730 WHERE `ID` IN (59753, 59907, 59752, 59751, 56775, 40883, 39274, 46736, 46735, 46277, 60545, 43341, 41760);
UPDATE `quest_template` SET `RewardBonusMoney`=70, `VerifiedBuild`=44730 WHERE `ID`=46727; -- Tides of War
UPDATE `quest_template` SET `RewardBonusMoney`=550, `VerifiedBuild`=44730 WHERE `ID`=50046; -- It's a Sabotage
UPDATE `quest_template` SET `RewardBonusMoney`=70, `VerifiedBuild`=44730 WHERE `ID`=29547; -- The King's Command
UPDATE `quest_template` SET `RewardBonusMoney`=280, `VerifiedBuild`=44730 WHERE `ID`=28238; -- Twilight Shores
UPDATE `quest_template` SET `RewardBonusMoney`=550, `VerifiedBuild`=44730 WHERE `ID`=14482; -- Call of Duty
UPDATE `quest_template` SET `RewardBonusMoney`=550, `VerifiedBuild`=44730 WHERE `ID`=27210; -- Traitors Among Us
UPDATE `quest_template` SET `RewardBonusMoney`=550, `VerifiedBuild`=44730 WHERE `ID`=26209; -- Murder Was The Case That They Gave Me
UPDATE `quest_template` SET `RewardSpell`=239804, `VerifiedBuild`=44730 WHERE `ID`=46268; -- A Found Memento
UPDATE `quest_template` SET `RewardBonusMoney`=4950, `VerifiedBuild`=44730 WHERE `ID`=31316; -- Julia, The Pet Tamer
UPDATE `quest_template` SET `RewardBonusMoney`=70, `VerifiedBuild`=44730 WHERE `ID`=42978; -- A Royal Audience
UPDATE `quest_template` SET `RewardBonusMoney`=550, `VerifiedBuild`=44730 WHERE `ID`=38806; -- Infernal Brimstone Sample
UPDATE `quest_template` SET `RewardBonusMoney`=825, `VerifiedBuild`=44730 WHERE `ID`=40740; -- The Dead and the Damned
UPDATE `quest_template` SET `RewardBonusMoney`=70, `VerifiedBuild`=44730 WHERE `ID`=39775; -- Stormforged Grapple Launcher
UPDATE `quest_template` SET `RewardBonusMoney`=550, `VerifiedBuild`=44730 WHERE `ID`=42446; -- Singed Feathers
UPDATE `quest_template` SET `RewardBonusMoney`=550, `VerifiedBuild`=44730 WHERE `ID`=42444; -- Plight of the Blackfeather
UPDATE `quest_template` SET `RewardBonusMoney`=70, `VerifiedBuild`=44730 WHERE `ID`=41452; -- Feline Frantic
UPDATE `quest_template` SET `RewardBonusMoney`=550, `VerifiedBuild`=44730 WHERE `ID`=40907; -- Removing Obstacles
UPDATE `quest_template` SET `RewardBonusMoney`=550, `VerifiedBuild`=44730 WHERE `ID`=40266; -- The Lost Advisor
UPDATE `quest_template` SET `RewardBonusMoney`=550, `VerifiedBuild`=44730 WHERE `ID`=44557; -- Finite Numbers
UPDATE `quest_template` SET `RewardBonusMoney`=70, `VerifiedBuild`=44730 WHERE `ID`=44720; -- A Call to Action
UPDATE `quest_template` SET `RewardBonusMoney`=550, `VerifiedBuild`=44730 WHERE `ID`=38797; -- Living Felslate Sample
UPDATE `quest_template` SET `RewardBonusMoney`=70, `VerifiedBuild`=44730 WHERE `ID`=44401; -- A Weapon For Every Occasion
UPDATE `quest_template` SET `RewardBonusMoney`=550, `VerifiedBuild`=44730 WHERE `ID`=44414; -- Felspawns of Lothros
UPDATE `quest_template` SET `RewardBonusMoney`=550, `VerifiedBuild`=44730 WHERE `ID`=39575; -- The Path of Huln
UPDATE `quest_template` SET `RewardBonusMoney`=70, `VerifiedBuild`=44730 WHERE `ID`=38912; -- The Bloodtotem Tribe
UPDATE `quest_template` SET `RewardBonusMoney`=550, `VerifiedBuild`=44730 WHERE `ID`=38784; -- Leystone Seam Sample
UPDATE `quest_template` SET `RewardBonusMoney`=550, `VerifiedBuild`=44730 WHERE `ID`=38499; -- Strange New Ores
UPDATE `quest_template` SET `RewardBonusMoney`=70, `VerifiedBuild`=44730 WHERE `ID`=38913; -- The Skyhorn Tribe
UPDATE `quest_template` SET `RewardBonusMoney`=1100, `VerifiedBuild`=44730 WHERE `ID`=42431; -- The Brood of Nithogg
UPDATE `quest_template` SET `RewardBonusMoney`=1100, `VerifiedBuild`=44730 WHERE `ID`=38842; -- Faerie Fracas
UPDATE `quest_template` SET `RewardBonusMoney`=1100, `VerifiedBuild`=44730 WHERE `ID`=40316; -- The Screeching Crag
UPDATE `quest_template` SET `RewardBonusMoney`=1100, `VerifiedBuild`=44730 WHERE `ID`=39371; -- Witches of the Sky
UPDATE `quest_template` SET `RewardBonusMoney`=1100, `VerifiedBuild`=44730 WHERE `ID`=40050; -- Shipwreck Cove
UPDATE `quest_template` SET `RewardBonusMoney`=1100, `VerifiedBuild`=44730 WHERE `ID`=37965; -- A Tainted Vintage
UPDATE `quest_template` SET `RewardBonusMoney`=1100, `VerifiedBuild`=44730 WHERE `ID`=40111; -- Rout the Bilgefin Invaders
UPDATE `quest_template` SET `RewardBonusMoney`=1100, `VerifiedBuild`=44730 WHERE `ID`=43241; -- Flow of the Nightmare
UPDATE `quest_template` SET `RewardBonusMoney`=1100, `VerifiedBuild`=44730 WHERE `ID`=39393; -- Moonclaw Vale
UPDATE `quest_template` SET `RewardBonusMoney`=1100, `VerifiedBuild`=44730 WHERE `ID`=39029; -- Defend The Temple
UPDATE `quest_template` SET `RewardBonusMoney`=1100, `VerifiedBuild`=44730 WHERE `ID`=38748; -- Ruins of Shala'nir
UPDATE `quest_template` SET `RewardBonusMoney`=1100, `VerifiedBuild`=44730 WHERE `ID`=36811; -- Retake Faronaar
UPDATE `quest_template` SET `RewardBonusMoney`=70, `VerifiedBuild`=44730 WHERE `ID`=49929; -- The Call for Allies
UPDATE `quest_template` SET `RewardBonusMoney`=70, `VerifiedBuild`=44730 WHERE `ID`=42449; -- Return of the Four Horsemen
UPDATE `quest_template` SET `RewardBonusMoney`=3300, `VerifiedBuild`=44730 WHERE `ID`=40567; -- Darkheart Thicket: Enter the Nightmare
UPDATE `quest_template` SET `RewardBonusMoney`=550, `VerifiedBuild`=44730 WHERE `ID`=38558; -- See Ya Later, Oscillator
UPDATE `quest_template` SET `RewardBonusMoney`=550, `VerifiedBuild`=44730 WHERE `ID`=38053; -- Assault and Battery
UPDATE `quest_template` SET `RewardBonusMoney`=550, `VerifiedBuild`=44730 WHERE `ID`=38052; -- Boarded!
UPDATE `quest_template` SET `RewardBonusMoney`=550, `VerifiedBuild`=44730 WHERE `ID`=38036; -- Supplies From the Skies
UPDATE `quest_template` SET `RewardBonusMoney`=550, `VerifiedBuild`=44730 WHERE `ID`=36309; -- The Strength of Iron
UPDATE `quest_template` SET `RewardBonusMoney`=70, `VerifiedBuild`=44730 WHERE `ID`=35168; -- Your First Blacksmithing Work Order


UPDATE `quest_objectives` SET `VerifiedBuild`=44730 WHERE `ID` IN (397740, 397435, 397209, 397739, 397738, 397737, 397055, 398944, 398943, 398942, 398941, 398940, 398939, 391353, 337818, 337817, 296295, 259891, 266167, 265836, 265757, 265756, 265755, 265754, 289293, 268521, 278449, 281145, 281614, 281143, 284232, 283162, 282399, 283166, 282398, 281695, 281694, 281707, 281364, 281363, 280546, 286709, 286708, 278445, 286602, 286606, 278436, 279832, 284209, 284208, 284207, 284206, 284205, 284200, 278998, 278519, 278526, 278500, 278499, 280668, 280667, 280666, 280665, 280664, 280663, 280662, 279626, 279301, 279299, 279294, 280303, 280233, 280231, 280229, 280228, 286679, 286535, 277272, 277472, 277269, 277243, 277242, 280327, 280326, 280325, 280324, 280323, 285469, 285188, 285107, 285106, 285105, 285104, 285103, 285102, 280217, 280216, 280215, 280214, 280213, 280212, 279406, 279334, 280557, 280096, 279148, 279144, 279143, 285466, 278822, 278821, 278820, 286576, 286575, 286054, 278418, 278401, 278382, 283837, 277310, 277309, 277543, 277308, 281903, 277307, 277306, 277305, 289536, 289535, 289167, 405017, 406745, 406744, 285211, 285210, 285209, 285208, 286697, 286382, 280866, 278005, 277451, 277993, 275007, 273590);
UPDATE `quest_objectives` SET `Description`='Jump in to the Vault', `VerifiedBuild`=44730 WHERE `ID`=279777; -- 279777
UPDATE `quest_objectives` SET `Description`='Escort Spiritwalker Ebonhorn to the Path of Huln', `VerifiedBuild`=44730 WHERE `ID`=279776; -- 279776
UPDATE `quest_objectives` SET `Description`='Forsaken slain', `VerifiedBuild`=44730 WHERE `ID`=277527; -- 277527


UPDATE `quest_visual_effect` SET `VerifiedBuild`=44730 WHERE (`Index`=1 AND `ID` IN (397740,397055,398943,398942,398941,398940,277472,280323,278820,278418,406745,280866,275007,273590)) OR (`Index`=0 AND `ID` IN (397740,397055,398944,398943,398942,398941,398940,391353,337818,268521,281143,283162,282399,283166,282398,281695,281694,281707,281364,281363,280546,286708,279777,279776,284200,278998,278526,280668,277472,280323,285188,285107,285106,279406,279334,278820,278418,405017,406745,406744,286382,280866,278005,277451,275007,273590)) OR (`Index`=3 AND `ID` IN (280323,278418,275007)) OR (`Index`=2 AND `ID` IN (280323,278418,275007)) OR (`Index`=8 AND `ID`=275007) OR (`Index`=7 AND `ID`=275007) OR (`Index`=6 AND `ID`=275007) OR (`Index`=5 AND `ID`=275007) OR (`Index`=4 AND `ID`=275007);


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=44730 WHERE (`Idx`=0 AND `QuestID` IN (59752,38806,38797,38784,38499,43341));


UPDATE `creature_template` SET `VerifiedBuild`=44730 WHERE `entry` IN (147741, 44773, 44774, 116408, 116419, 116420, 107469, 35845, 147785, 103033, 68, 112007, 112012, 188151, 103092, 107587, 62818, 107590, 62821, 62822, 103116, 103118, 103119, 103120, 112079, 27047, 9158, 165860, 165862, 85290, 62905, 98723, 98724, 116633, 98725, 165918, 277, 279, 89829, 49540, 304, 305, 188342, 62992, 107772, 165974, 331, 165983, 338, 340, 165992, 31689, 143622, 31710, 31714, 31719, 148124, 31728, 31729, 31730, 107840, 31735, 31740, 31741, 31742, 98931, 18357, 18359, 18360, 49701, 18362, 31796, 98953, 98955, 18375, 18376, 166119, 107928, 148233, 170624, 18406, 107947, 49748, 112437, 112441, 107968, 112456, 175138, 166195, 31889, 31890, 112479, 112480, 112481, 112543, 112545, 108076, 112554, 170758, 170759, 170760, 170761, 170762, 170763, 188678, 188679, 103626, 103630, 121541, 721, 121602, 99223, 85816, 85817, 85818, 85819, 175366, 166415, 112716, 112717, 112720, 175416, 179896, 175420, 94856, 99350, 108313, 32206, 108322, 108323, 90417, 90418, 90431, 41200, 5386, 54638, 112847, 90463, 108401, 72587, 166605, 166606, 166612, 14423, 103976, 14439, 166663, 5493, 5494, 112947, 5499, 5500, 5503, 117448, 99541, 148796, 166709, 166714, 166723, 14505, 68232, 68238, 68239, 5565, 5566, 5567, 32451, 104091, 14565, 1141, 32494, 59357, 32520, 5694, 50480, 104208, 126605, 1257, 104230, 157969, 1275, 50523, 50524, 50525, 1285, 1286, 1287, 1289, 1291, 1294, 1295, 171423, 1297, 1298, 1299, 1300, 1301, 1307, 1308, 1309, 1310, 1311, 1312, 1313, 166963, 1314, 1315, 1316, 1317, 1318, 1319, 1320, 1321, 1327, 1328, 1333, 1339, 108792, 1346, 1347, 149099, 1366, 1367, 171497, 99867, 149121, 149124, 32725, 149131, 1402, 108856, 46180, 32751, 1412, 1413, 1414, 1415, 1419, 50669, 1427, 1428, 1429, 1431, 1432, 28302, 108890, 108891, 23837, 140253, 108925, 1477, 1478, 108927, 32844, 55272, 176192, 176203, 6089, 6090, 140403, 176220, 140407, 176235, 176237, 171789, 64352, 149433, 149436, 6174, 149445, 149458, 149469, 158436, 158440, 1756, 158456, 158463, 24207, 113775, 113780, 113781, 113783, 113784, 113785, 1860, 149616, 149626, 113812, 109387, 109390, 113873, 176554, 55684, 113900, 113901, 1976, 82564, 42288, 42339, 122926, 158753, 158755, 51348, 118506, 109554, 105081, 11068, 118524, 64806, 42421, 73780, 96198, 2198, 172326, 91743, 15659, 29093, 109682, 6740, 29142, 91824, 109739, 2330, 2331, 65011, 2334, 105332, 168012, 168014, 105339, 150122, 168044, 91975, 87501, 87503, 91983, 96479, 96483, 96484, 92017, 168130, 141270, 92072, 109985, 110018, 110019, 110020, 96592, 105564, 96635, 96636, 96639, 96641, 96643, 92183, 92184, 92185, 92194, 92195, 25058, 51938, 2708, 105723, 96770, 96771, 96772, 96777, 96778, 96779, 96780, 96781, 96782, 96784, 96785, 96786, 96787, 96788, 96789, 96790, 96791, 96792, 96793, 96796, 96797, 96798, 96799, 52031, 96802, 96805, 96806, 96807, 96808, 96809, 155011, 96810, 96811, 96812, 2795, 96813, 114730, 114732, 96827, 96828, 96829, 96830, 96832, 96833, 96834, 96835, 96836, 96837, 96838, 96839, 96840, 119226, 96841, 96842, 96843, 96844, 96845, 119272, 168531, 92438, 92456, 92457, 92458, 92460, 92464, 96944, 96945, 96946, 96947, 96948, 96949, 105904, 96950, 96951, 96952, 96953, 96954, 96955, 96956, 96957, 96958, 101436, 96959, 92489, 96967, 96968, 96975, 96976, 110409, 96981, 96983, 96987, 96990, 97001, 97002, 97003, 97005, 34330, 97009, 119396, 34337, 38821, 168670, 119436, 119437, 119438, 168694, 83642, 97080, 43359, 119486, 119487, 97104, 83674, 173219, 173220, 97118, 52358, 52359, 52361, 97141, 52408, 110621, 110622, 110623, 34527, 110642, 97212, 97213, 56925, 115146, 106196, 110738, 106262, 106263, 97332, 97342, 115264, 115287, 106359, 92936, 88465, 169070, 169071, 169072, 169073, 169075, 169076, 101924, 169093, 169095, 169098, 169100, 169101, 169109, 97490, 97512, 97514, 97516, 3504, 3505, 3507, 3508, 3509, 3510, 3511, 3512, 3513, 97533, 3518, 3520, 155739, 97542, 12480, 12481, 169177, 106528, 173706, 106565, 3626, 3627, 3628, 3629, 61834, 61836, 61837, 61838, 61839, 61840, 61841, 93188, 93189, 97685, 97692, 93223, 106655, 97718, 97722, 97725, 115634, 97730, 97731, 97735, 97741, 97743, 97755, 26125, 111190, 97767, 79861, 97792, 17213, 111246, 124678, 124679, 97828, 17252, 97839, 97840, 111291, 106815, 97863, 30713, 93405, 30730, 106843, 97890, 88978, 88981, 48689, 93471, 48706, 44237, 106930, 97979, 106951, 93521, 93522, 93523, 93524, 93525, 93526, 93527, 93528, 93529, 93530, 93531, 93532, 93533, 93534, 93536, 93537, 93538, 93539, 93541, 93542, 93543, 93544, 93545, 120412, 120413, 120415, 120416, 120417, 120418, 165189, 120419, 120420, 120421, 174146, 120422, 120423, 120424, 93584, 4075, 4078, 151827, 93628, 84745, 84749, 84751, 93725, 8670, 151937, 93779, 8719, 116175, 120687, 107258, 44582, 44583, 93870, 165505, 107326, 71526, 125261, 58167, 147714);
UPDATE `creature_template` SET `femaleName`='', `subname`='Gladiator Quartermaster', `HealthScalingExpansion`=6, `rank`=1, `type`=7, `type_flags`=4096, `HealthModifier`=5, `VerifiedBuild`=44730 WHERE `entry`=120906; -- Marshal Frazer
UPDATE `creature_template` SET `femaleName`='', `subname`='Blackfeather Chieftain', `VerifiedBuild`=44730 WHERE `entry`=107498; -- Cukkaw
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=107499; -- Frightened Ravenbear
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=62906; -- Highlands Turkey
UPDATE `creature_template` SET `VerifiedBuild`=44730 WHERE `entry`=85307; -- Sparkbright
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=89817; -- Vault Guardian
UPDATE `creature_template` SET `femaleName`='', `subname`='King of Gilneas', `VerifiedBuild`=44730 WHERE `entry`=94318; -- Genn Greymane
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=94323; -- Nurse Dolores
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry` IN (94337, 95052, 109640); -- Dread-Rider Plaguebringer
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.899999976158142089, `VerifiedBuild`=44730 WHERE `entry` IN (94338, 109639); -- Dread-Rider Stalker
UPDATE `creature_template` SET `name`='Credit  Bunny', `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=94342; -- Credit Bunny
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=94346; -- Ensign Ward
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=107803; -- Wild Plains Runehorn
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.5, `VerifiedBuild`=44730 WHERE `entry`=107808; -- Plains Runehorn Calf
UPDATE `creature_template` SET `femaleName`='', `subname`='Forger of Shields', `VerifiedBuild`=44730 WHERE `entry`=94413; -- Isel the Hammer
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=103796; -- Riala the Hearthwatcher
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=103797; -- Brulf the Heavy
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry` IN (108283, 96236); -- Mightstone Savage
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry` IN (108289, 96229); -- Bloodtotem Skirmisher
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry` IN (108309, 100435); -- Bloodtotem Flameheart
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.200000002980232238, `VerifiedBuild`=44730 WHERE `entry`=94929; -- Huginn
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.200000002980232238, `VerifiedBuild`=44730 WHERE `entry`=94930; -- Muninn
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=95030; -- Forsaken Dreadwing
UPDATE `creature_template` SET `VerifiedBuild`=44730 WHERE `entry`=5497; -- Jennea Cannon
UPDATE `creature_template` SET `VerifiedBuild`=44730 WHERE `entry`=5498; -- Elsharin
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.899999976158142089, `VerifiedBuild`=44730 WHERE `entry`=95073; -- Forsaken Dreadwing
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=32454; -- Dalaran Citizen
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=90734; -- Gro Rumblehoof
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=90747; -- Slash Gutspill
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=90748; -- Whitewater Tempest
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry` IN (90749, 96644); -- Sky Admiral Rogers
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=90783; -- Mishka
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry` IN (90785, 91085); -- Skyfire Marine
UPDATE `creature_template` SET `femaleName`='', `subname`='Chief Architect of Gnomish Engineering', `VerifiedBuild`=44730 WHERE `entry`=90866; -- Tinkmaster Overspark
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry` IN (90899, 114717); -- Forsaken Bat-Rider
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=90902; -- Dread-Rider Malwick
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.5, `VerifiedBuild`=44730 WHERE `entry`=91069; -- Forsaken Dreadwing
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.75, `VerifiedBuild`=44730 WHERE `entry`=95620; -- Servant of Skovald
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=109083; -- Houndmaster Payne
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.699999988079071044, `VerifiedBuild`=44730 WHERE `entry`=109110; -- Tracking Hound
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=68850; -- Emerald Proto-Whelp
UPDATE `creature_template` SET `femaleName`='', `subname`='Gilneas Brigade', `VerifiedBuild`=44730 WHERE `entry`=95889; -- Commander Lorna Crowley
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=95891; -- Genn Greymane
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=100433; -- Mightstone Rockcaller
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=96080; -- Demonic Gateway
UPDATE `creature_template` SET `femaleName`='', `subname`='Gryphon Tender', `VerifiedBuild`=44730 WHERE `entry`=109525; -- Desmond
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=109559; -- Gilnean Mastiff
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=109567; -- Harrison McCabe
UPDATE `creature_template` SET `femaleName`='', `subname`='Gilneas Brigade', `VerifiedBuild`=44730 WHERE `entry`=109570; -- Derek Testerman
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=105105; -- Storm Brew
UPDATE `creature_template` SET `femaleName`='', `subname`='Ensign Ward\'s Companion', `family`=160, `VerifiedBuild`=44730 WHERE `entry`=109678; -- Greywatch Gryphon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=100838; -- Thunderhorn
UPDATE `creature_template` SET `VerifiedBuild`=44730 WHERE `entry`=2485; -- Larimaine Purdue
UPDATE `creature_template` SET `VerifiedBuild`=44730 WHERE `entry`=96507; -- Tassia Whisperglen
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=105525; -- Helmouth Cursewalker
UPDATE `creature_template` SET `femaleName`='', `rank`=6, `HealthModifier`=0.25, `VerifiedBuild`=44730 WHERE `entry`=105531; -- Dread Falke
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.5, `VerifiedBuild`=44730 WHERE `entry`=105532; -- Helhound
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=92152; -- Whitewater Typhoon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=92224; -- Forsaken Deathstalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=92307; -- God-King Skovald
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=105746; -- Helarjar Berserker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=105748; -- Helarjar Mistcaller
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=96794; -- Laire Brewgold
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=105749; -- Helmouth Soulhunter
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=96795; -- Coira Longrifle
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=96823; -- Teller Plushner
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=96826; -- Paymaster Amadi
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=92407; -- Riding Bat
UPDATE `creature_template` SET `VerifiedBuild`=44730 WHERE `entry`=92459; -- Dorothy Egan
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=92471; -- Skyfire Engineer
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=92539; -- Havi
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=114957; -- Vagnhild
UPDATE `creature_template` SET `femaleName`='', `subname`='Supplies and Repairs', `VerifiedBuild`=44730 WHERE `entry`=110521; -- Supplier Barleyfoot
UPDATE `creature_template` SET `femaleName`='', `subname`='Legion Elite Gladiator', `HealthScalingExpansion`=6, `rank`=1, `type`=7, `type_flags2`=16384, `HealthModifier`=10, `VerifiedBuild`=44730 WHERE `entry`=119484; -- Captain Roberts
UPDATE `creature_template` SET `femaleName`='', `subname`='Legion Combatant', `HealthScalingExpansion`=6, `rank`=1, `type`=7, `type_flags2`=16384, `HealthModifier`=10, `VerifiedBuild`=44730 WHERE `entry`=119485; -- Lieutenant Dorgen
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=92643; -- Silver Hand Knight
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=110604; -- Credit - Ingredients Added
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=110667; -- Adolescent Storm Drake
UPDATE `creature_template` SET `VerifiedBuild`=44730 WHERE `entry`=34587; -- Warbot
UPDATE `creature_template` SET `femaleName`='', `subname`='Odyn\'s Chosen', `VerifiedBuild`=44730 WHERE `entry`=115254; -- Stormforged Valarjar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=115276; -- Valarjar Soul
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=115291; -- Helarjar Soulthief
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=97500; -- Hunaka Greenhoof
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=97520; -- Drog Skullbreaker
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.75, `VerifiedBuild`=44730 WHERE `entry`=110981; -- Fleshripper Helsquid
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=93097; -- Thicket Hare
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.009999999776482582, `VerifiedBuild`=44730 WHERE `entry`=111172; -- Stormstruck Beaver
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=97816; -- Felskorn Zealot
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=97821; -- Felskorn Oathbinder
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=97822; -- Garzareth
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=97825; -- Felskorn Cleaver
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=97851; -- Felskorn Chosen
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=97859; -- Karuas
UPDATE `creature_template` SET `femaleName`='', `subname`='Flight Master', `VerifiedBuild`=44730 WHERE `entry`=111327; -- Hillevi the Scalekeeper
UPDATE `creature_template` SET `femaleName`='', `rank`=6, `HealthModifier`=0.5, `VerifiedBuild`=44730 WHERE `entry`=97906; -- Runebound Wretch
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=97944; -- Muorg
UPDATE `creature_template` SET `femaleName`='', `subname`='Valarjar Emissary', `VerifiedBuild`=44730 WHERE `entry`=106904; -- Valdemar Stormseeker
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.200000002980232238, `VerifiedBuild`=44730 WHERE `entry`=97952; -- Tiny Apparition
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=97963; -- Felblood Cup
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.009999999776482582, `VerifiedBuild`=44730 WHERE `entry`=147221; -- Redridge Tarantula
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=97983; -- Credit - North Portal Destroyed
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=97984; -- Credit - East Portal Destroyed
UPDATE `creature_template` SET `femaleName`='', `subname`='Captain of the Helmouth', `VerifiedBuild`=44730 WHERE `entry`=98014; -- Captain Sten
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=98018; -- Halvir
UPDATE `creature_template` SET `femaleName`='', `subname`='Flight Master', `VerifiedBuild`=44730 WHERE `entry`=98108; -- Gryphon-Master Clifford
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=98109; -- Hankerin Ferinale
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=98112; -- Steward Dayton
UPDATE `creature_template` SET `femaleName`='', `subname`='Lorna Crowley\'s Companion', `family`=160, `VerifiedBuild`=44730 WHERE `entry`=98114; -- Donovan
UPDATE `creature_template` SET `VerifiedBuild`=44730 WHERE `entry`=89174; -- Laluu
UPDATE `creature_template` SET `femaleName`='', `subname`='Flight Master', `VerifiedBuild`=44730 WHERE `entry`=98161; -- Garhal the Scalekeeper


UPDATE `creature_template_model` SET `VerifiedBuild`=44730 WHERE (`Idx`=10 AND `CreatureID` IN (168694,165862,166605,166963,166119,169177,140403,140253)) OR (`Idx`=9 AND `CreatureID` IN (168694,168044,165862,166605,166606,166963,166119,169177,140403,140253)) OR (`Idx`=8 AND `CreatureID` IN (168694,168044,165862,166605,166606,166963,166119,169177,173219,140403,140253)) OR (`Idx`=7 AND `CreatureID` IN (168694,168044,165862,166605,166606,166963,166119,169177,173219,140403,140253)) OR (`Idx`=6 AND `CreatureID` IN (168694,168044,165862,166605,166606,166963,166119,169177,173219,140403,140253)) OR (`Idx`=5 AND `CreatureID` IN (168694,168044,165862,166605,166606,166963,166119,169177,173219,140403,140253)) OR (`Idx`=4 AND `CreatureID` IN (168694,168044,165862,166605,166606,166963,166119,169177,173219,1756,140403,140253,149131)) OR (`Idx`=3 AND `CreatureID` IN (168694,168044,165862,166605,166606,166963,166119,169093,169177,173219,1756,42339,68,149458,149436,149433,140403,140253,149469,149616,149131,149445,92643,112079,118506,101924,119437,119438,119436,119396,32454,124678,96643,97725,31730,124679,106263,96636,31728,31741,96592,97692,96641,96639,104091,96635,31729,106262,93471,97851,97816,95620,93584,98953,93870,112481,112480,115276,108309,100435,96229,108289,92471,99541,114717,92224,90899,26125)) OR (`Idx`=2 AND `CreatureID` IN (168694,168044,165862,166605,126605,166606,166963,166119,169093,169177,173219,1756,49540,42421,143622,4075,42339,68,149458,149436,149433,140403,140253,149469,149616,149124,149131,149445,92643,96983,112079,118506,101924,119437,105564,119438,119436,119396,32454,32451,124678,96643,97725,31730,124679,106263,96636,31740,31719,31728,31741,96592,31735,97692,96641,96639,104091,96635,31729,106262,93471,97851,97816,95620,93584,98953,93870,112481,112480,64352,115276,64806,108309,100435,96229,108289,92471,99541,114717,92224,90899,26125)) OR (`Idx`=1 AND `CreatureID` IN (168694,168044,165862,171423,166605,126605,166606,166963,166119,169095,169100,169101,169098,169109,168670,169093,116633,115634,721,173220,169177,173219,1756,38821,49540,42421,143622,4075,52361,42339,68,149458,149436,149433,140407,140403,140253,23837,51348,149469,147714,149626,93223,149099,32520,149616,149124,111190,155739,147785,149131,148124,148796,1976,148233,149445,147741,92643,35845,96983,112079,118506,104208,101924,119437,79861,105564,41200,119438,119436,119396,109985,54638,106196,32454,32451,124678,32494,106843,96643,97725,110409,97767,31730,124679,106263,96636,31740,31719,108076,27047,109739,31728,31741,43359,96592,31735,118524,97692,96641,34527,72587,96639,104091,31796,96635,31729,107590,106262,93471,97212,97792,94342,94337,109640,109110,109639,95052,94338,97983,97984,96080,97851,97816,95620,97963,93584,98953,93870,107840,112481,112480,64352,115291,115276,64806,62905,48689,92072,108309,100435,96229,108289,110604,91975,91983,92017,107947,90785,62992,110667,59357,92471,62818,99541,91085,114717,92224,90899,91824,26125)) OR (`Idx`=0 AND `CreatureID` IN (168694,168044,165983,165862,166195,171423,168130,168531,24207,166415,166714,166612,170624,171497,166605,166723,166709,165860,126605,165918,175366,166606,168014,166963,166119,168012,165974,165992,169095,169100,169076,169075,170762,170760,169101,169098,170761,170759,169109,169073,169071,168670,170763,170758,169093,169072,116633,169070,115634,175138,721,165505,176554,171789,61840,61839,173220,169177,58167,1327,176220,176203,173219,155011,6089,3629,340,6090,1478,1477,1328,44237,176192,173706,3513,3512,3511,3510,3509,3508,3507,3505,1756,61841,55684,3626,176237,176235,87503,87501,38821,2795,1333,51938,5565,1321,1320,49540,1339,14439,50523,50525,50524,3520,1319,61837,42421,61838,56925,50480,44582,188151,61836,61834,50669,44583,3518,1286,1285,6174,1432,1289,1287,179896,29142,3504,2331,2330,2198,1275,279,34337,71526,44774,1295,115146,12480,1294,1291,1257,1427,143622,34587,44773,49748,17252,166663,141270,29093,12481,147221,68850,175420,15659,14423,8719,8670,4075,1402,1299,1428,175416,188678,6740,5494,5493,1431,1301,1298,1297,277,1367,1366,52359,52358,188679,188342,52361,52031,46180,42339,11068,49701,42288,30730,30713,5386,1318,1317,1316,1315,1312,338,5503,1313,68,5500,5499,3628,5566,1346,1300,1347,1314,149458,1429,1310,1311,4078,5567,1309,1141,158755,158753,158463,158456,158440,158436,149436,149433,140407,140403,140253,23837,2334,1308,157969,3627,51348,149469,85818,147714,1414,149626,150122,89174,93223,84751,149099,82564,32520,149616,1860,149124,151937,85817,84745,1413,5498,111190,1419,85819,155739,1415,85307,147785,1412,85816,149131,148124,5694,148796,5497,52408,1307,331,1976,84749,149121,165189,148233,103033,149445,147741,2708,174146,2485,113785,96826,96823,119485,119484,96794,85290,96795,120906,92643,96789,103092,103116,35845,103120,103119,103118,96793,96792,97490,96832,96833,96790,119226,93534,93545,96791,96983,62822,62821,112079,105339,105332,96771,96770,118506,106930,112441,96949,96948,96944,96947,96950,107968,122926,96945,96946,112554,113873,105081,96951,96644,90463,90431,90418,90417,113784,97213,97002,96987,96976,96975,117448,108792,108323,97342,97332,96990,96772,98931,93521,104208,101924,96838,93542,93541,93523,93522,119437,110738,103976,79861,105564,96839,93539,93529,93524,41200,92194,93525,93528,105723,97718,93530,93531,108925,99867,96845,96844,93543,93538,93527,119438,119436,119396,104230,172326,114730,113812,113781,112720,112716,97685,96968,96967,93533,93526,109985,32844,96981,68238,106359,93532,112717,92458,93544,92195,92456,110020,110019,54638,68232,92457,110018,106196,96954,96484,96483,92459,151827,68239,92183,92460,108401,92464,93189,92184,115264,106655,96841,96840,93188,92185,32454,32451,97512,32751,32725,97003,96953,96959,112947,92438,92936,110621,120687,110622,113775,96809,116420,96957,96956,96952,96835,96834,97514,124678,110623,97533,112007,32494,17213,116419,116408,97863,96781,113901,97009,106843,112456,113900,97005,125261,112437,112012,96812,96807,97500,96808,105904,96777,96796,120416,96643,97725,110409,97001,97767,120413,96813,106951,31730,96198,96806,97520,124679,96782,120423,106263,96636,107587,113783,34330,96811,31740,93536,121541,113780,120420,96797,96829,112545,120417,96842,103626,96810,96778,107326,111246,31719,108076,115287,27047,109739,96779,31728,96788,96836,96785,98724,119272,93537,120424,31741,119486,120421,98725,109390,103630,109387,96958,43359,96798,96955,31710,96507,96830,96786,109554,96592,120418,110642,25058,119487,31735,118524,116175,97692,96843,96641,96827,34527,72587,112543,106815,96799,96479,120415,96639,104091,31796,96780,114732,96784,120412,96635,31729,31689,97141,112847,96837,96805,92489,121602,31742,96802,31714,107590,99350,120422,106262,93471,96787,97212,120419,98723,107772,97792,101436,96828,106528,95073,94342,94337,94323,94318,93097,98108,109640,109559,109110,109083,95030,109639,109570,109567,109525,98112,98109,95052,94338,108891,97906,62906,108890,97983,97984,96080,97859,97821,97944,97851,93405,97822,105105,97816,95620,92307,97963,97825,94856,94413,88981,93779,93628,93584,98955,98953,93870,107840,97979,91743,107928,97890,112481,112480,112479,108856,97840,97730,97080,48706,107808,97741,109678,94346,97722,106904,103796,98161,103797,94930,94929,92539,108927,97839,107803,105525,105531,98014,64352,105746,88978,88465,115291,115276,115254,114957,64806,105749,105748,105532,98018,97952,110981,62905,97542,111327,109682,107469,107498,106565,107499,97104,97743,97516,99223,97828,100838,97731,108322,48689,89817,92072,107258,90747,31890,100433,97118,108309,96236,100435,96229,108289,108283,110604,108313,90734,91975,97755,91983,92017,107947,92152,111172,83642,98114,90748,110521,95891,95889,90866,90785,90783,90749,62992,110667,83674,59357,92471,31889,62818,99541,90902,91085,89829,92407,114717,92224,97735,90899,91069,93725,111291,91824,305,65011,55272,32206,28302,18375,18376,18406,18359,18357,18360,14565,14505,9158,73780,18362,304,26125)) OR (`Idx`=11 AND `CreatureID` IN (165862,166605,166963,166119,169177,140403,140253)) OR (`Idx`=32 AND `CreatureID` IN (166119,140253)) OR (`Idx`=31 AND `CreatureID` IN (166119,140253)) OR (`Idx`=30 AND `CreatureID` IN (166119,140253)) OR (`Idx`=29 AND `CreatureID` IN (166119,140253)) OR (`Idx`=28 AND `CreatureID` IN (166119,140253)) OR (`Idx`=27 AND `CreatureID` IN (166119,140253)) OR (`Idx`=26 AND `CreatureID` IN (166119,140253)) OR (`Idx`=25 AND `CreatureID` IN (166119,140253)) OR (`Idx`=24 AND `CreatureID` IN (166119,140253)) OR (`Idx`=23 AND `CreatureID` IN (166119,140253)) OR (`Idx`=22 AND `CreatureID` IN (166119,140253)) OR (`Idx`=21 AND `CreatureID` IN (166119,140253)) OR (`Idx`=20 AND `CreatureID` IN (166119,140253)) OR (`Idx`=19 AND `CreatureID` IN (166119,140253)) OR (`Idx`=18 AND `CreatureID` IN (166119,140253)) OR (`Idx`=17 AND `CreatureID` IN (166119,140253)) OR (`Idx`=16 AND `CreatureID` IN (166119,140253)) OR (`Idx`=15 AND `CreatureID` IN (166119,140403,140253)) OR (`Idx`=14 AND `CreatureID` IN (166119,140403,140253)) OR (`Idx`=13 AND `CreatureID` IN (166119,140403,140253)) OR (`Idx`=12 AND `CreatureID` IN (166119,140403,140253)) OR (`Idx`=51 AND `CreatureID`=140253) OR (`Idx`=50 AND `CreatureID`=140253) OR (`Idx`=49 AND `CreatureID`=140253) OR (`Idx`=48 AND `CreatureID`=140253) OR (`Idx`=47 AND `CreatureID`=140253) OR (`Idx`=46 AND `CreatureID`=140253) OR (`Idx`=45 AND `CreatureID`=140253) OR (`Idx`=44 AND `CreatureID`=140253) OR (`Idx`=43 AND `CreatureID`=140253) OR (`Idx`=42 AND `CreatureID`=140253) OR (`Idx`=41 AND `CreatureID`=140253) OR (`Idx`=40 AND `CreatureID`=140253) OR (`Idx`=39 AND `CreatureID`=140253) OR (`Idx`=38 AND `CreatureID`=140253) OR (`Idx`=37 AND `CreatureID`=140253) OR (`Idx`=36 AND `CreatureID`=140253) OR (`Idx`=35 AND `CreatureID`=140253) OR (`Idx`=34 AND `CreatureID`=140253) OR (`Idx`=33 AND `CreatureID`=140253);


UPDATE `creature_questitem` SET `VerifiedBuild`=44730 WHERE (`Idx`=0 AND `CreatureEntry` IN (95073,94337,109640,109110,95030,109639,94338,108891,108890,94856,98955,107928,97890,108856,108927,107803,105746,105749,105748,110981,107469,97516,99223,97828,100838,108322,107258,90747,100433,108309,96236,100435,96229,108289,108283,108313,90734,97755,110667,90902,91069,111291,91824)) OR (`Idx`=2 AND `CreatureEntry` IN (108891,108890,98955,108856,107803,107469,97516,99223,100838,108322,107258,108313)) OR (`Idx`=1 AND `CreatureEntry` IN (108891,108890,98955,97890,108856,107803,107469,97516,99223,97828,100838,108322,107258,108313,97755,110667)) OR (`Idx`=4 AND `CreatureEntry`=98955) OR (`Idx`=3 AND `CreatureEntry` IN (98955,107469,97516,99223,100838,107258));


UPDATE `gameobject_template` SET `VerifiedBuild`=44730 WHERE `entry` IN (355200, 354667, 354666, 352595, 352594, 352593, 352592, 352591, 353979, 201911, 201563, 315955, 243791, 243787, 243779, 202243, 243788, 243780, 202244, 201857, 201825, 202245, 243789, 243785, 245433, 201910, 243790, 243786, 202220, 201674, 201673, 355461, 210181, 201529, 201531, 201536, 201535, 201534, 201533, 201532, 201528, 201510, 201537, 281118, 201527, 201507, 207416, 201539, 201505, 201542, 201541, 201540, 201538, 201526, 201525, 201524, 201521, 201504, 201498, 206110, 201497, 201496, 201495, 201494, 201493, 201492, 201491, 201490, 201489, 201488, 201422, 1684, 201523, 201522, 201512, 201511, 201509, 201508, 201506, 201503, 201513, 201500, 201514, 202028, 202027, 197137, 197132, 202010, 202004, 197133, 197131, 197117, 197190, 197189, 197187, 197139, 197116, 197193, 197192, 197191, 197188, 197121, 197122, 278802, 197135, 281339, 203978, 202259, 202257, 202253, 197138, 197134, 197126, 197119, 270011, 202260, 202258, 202256, 197186, 250672, 197185, 197184, 197183, 197182, 197181, 197180, 197179, 197178, 197177, 197176, 197140, 197136, 197123, 197018, 203800, 209692, 209039, 205553, 197125, 293422, 292774, 292771, 197099, 197022, 197021, 180007, 207661, 197098, 197031, 197030, 197029, 197028, 197027, 197026, 197025, 197024, 197023, 193981, 175758, 175729, 197020, 197011, 197032, 197012, 197008, 203801, 197073, 197061, 197060, 197057, 197056, 197055, 197054, 197053, 197052, 197051, 197050, 197047, 197049, 197068, 197071, 197091, 197070, 197075, 197067, 197059, 105175, 197072, 197064, 197048, 197090, 197069, 197076, 197045, 197074, 197066, 335930, 322639, 203762, 197092, 197089, 197013, 254082, 323842, 197082, 197058, 254081, 253169, 197007, 197079, 197063, 323844, 294556, 197084, 243305, 293696, 243297, 254080, 197044, 197081, 197017, 243301, 197009, 323841, 197065, 105174, 254086, 243294, 323846, 197014, 197062, 197046, 245923, 243299, 323843, 243295, 311875, 197083, 254084, 243324, 253168, 259008, 243300, 332224, 323840, 197080, 252281, 254085, 197093, 197085, 323845, 254068, 250455, 250310, 250302, 242129, 269969, 242128, 250306, 250305, 250301, 259378, 250261, 250260, 250259, 250258, 242127, 259351, 242126, 242125, 241966, 247019, 259834, 250509, 247018, 247015, 247013, 250511, 250510, 278574, 250526, 250525, 250524, 250523, 250522, 250521, 250457, 250502, 250518, 250503, 241968, 250501, 250519, 250520, 248974, 248969, 248967, 248965, 250505, 250504, 268047, 251212, 251210, 251209, 250417, 250406, 250405, 250403, 250402, 250401, 250400, 250399, 250398, 250396, 248855, 247564, 268054, 251211, 250407, 250404, 250397, 250395, 248860, 248859, 248858, 248857, 248852, 247579, 247572, 247571, 247558, 266129, 268368, 250527, 241961, 250513, 250528, 250391, 250512, 250515, 250514, 250390, 250516, 250517, 250506, 250508, 250507, 259379, 248522, 268060, 248523, 268079, 248933, 250389, 248822, 246002, 250387, 259285, 259284, 250393, 250392, 250388, 248856, 242220, 259287, 259288, 268066, 259390, 259384, 259383, 259382, 259381, 259286, 250394, 241965, 241952, 241960, 268065, 259387, 259380, 250464, 250435, 241959, 247849, 247848, 241951, 248843, 242123, 259346, 259345, 252331, 248844, 248842, 248841, 248093, 247797, 245368, 244824, 242641, 242640, 242639, 242638, 242637, 242636, 242216, 247858, 280797, 251105, 250318, 250319, 250317, 242215, 245661, 258327, 250322, 242050, 268057, 245691, 245662, 249919, 250438, 258330, 241943, 268067, 259349, 250314, 242049, 188215, 242047, 242054, 245663, 242048, 268081, 259348, 242118, 242042, 267068, 259344, 259343, 259334, 258328, 246943, 246942, 246941, 246154, 245623, 242052, 242051, 242045, 242044, 242041, 242037, 242366, 259304, 259342, 259317, 250313, 246945, 246944, 246258, 246257, 242040, 200296, 258329, 242046, 250218, 200297, 268061, 249732, 259311, 248079, 259312, 246262, 242202, 249729, 249731, 242199, 259341, 259310, 250217, 259309, 242038, 244651, 249730, 250216, 259347, 268072, 241972, 242198, 250219, 241419, 248516, 242039, 259262, 269037, 268087, 268053, 259350, 242201, 242043, 241513, 241512, 241511, 241453, 268045, 259306, 268074, 259303, 259305, 259416, 259415, 246001, 250300, 250458, 268078, 194115, 268051, 246260, 246261, 268044, 250298, 250299, 241963, 242200, 241958, 254236, 241944, 259339, 250477, 266736, 250479, 267991, 250480, 250478, 250485, 241922, 266619, 266618, 259337, 259335, 259295, 259294, 259293, 250494, 250493, 250492, 250487, 242218, 241950, 241921, 241920, 235100, 235099, 235098, 266851, 266761, 266705, 250497, 250459, 250436, 250214, 246465, 244950, 242237, 250496, 268049, 250495, 246463, 244562, 251286, 269989, 268059, 259338, 259336, 259292, 250491, 250490, 250484, 250483, 250481, 250473, 250472, 250471, 250215, 241964, 241945, 259276, 244537, 251580, 250460, 242172, 251312, 268048, 242169, 250329, 242233, 259289, 270855, 241957, 250297, 259273, 251593, 245249, 244534, 241970, 241954, 250470, 250358, 259270, 250499, 250467, 244560, 250339, 250355, 241967, 259283, 259267, 250451, 242227, 259280, 251579, 251584, 251594, 259264, 242176, 241948, 250352, 250336, 242224, 250474, 259277, 251581, 259290, 250461, 250349, 250333, 242234, 242170, 250346, 259274, 259271, 250631, 251883, 241971, 241955, 244561, 242231, 250359, 268043, 250340, 242228, 250500, 250468, 250452, 251624, 242174, 259281, 259265, 250449, 242177, 251582, 241949, 251595, 250353, 250337, 250462, 242225, 251585, 250334, 241946, 250350, 259278, 250331, 242235, 250347, 259835, 259291, 269967, 259307, 259275, 251311, 241480, 244536, 259279, 259272, 241956, 251992, 251592, 250328, 242232, 250360, 250463, 252245, 268086, 250498, 241969, 259269, 250469, 250482, 250357, 268073, 246466, 278457, 224813, 242226, 148502, 259282, 259266, 250450, 250354, 250338, 259426, 250351, 250348, 250335, 250332, 241947, 242223, 259308, 242236, 251033, 232235, 232234, 232225, 232224, 236219, 252237, 253130, 243799, 251219, 251155, 251189, 266054, 244872, 266845, 252145, 251620, 248766, 248584, 248581, 236833, 241726, 250089);
UPDATE `gameobject_template` SET `name`='Chair', `VerifiedBuild`=44730 WHERE `entry`=259375; -- 259375
UPDATE `gameobject_template` SET `name`='Chair', `VerifiedBuild`=44730 WHERE `entry`=250308; -- 250308
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=44730 WHERE `entry`=250304; -- 250304
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=44730 WHERE `entry`=259358; -- 259358
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=44730 WHERE `entry`=259365; -- 259365
UPDATE `gameobject_template` SET `name`='Chair', `VerifiedBuild`=44730 WHERE `entry`=250309; -- 250309
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=44730 WHERE `entry`=259359; -- 259359
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=44730 WHERE `entry`=259362; -- 259362
UPDATE `gameobject_template` SET `name`='Guild Vault', `VerifiedBuild`=44730 WHERE `entry`=242029; -- 242029
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=44730 WHERE `entry`=259361; -- 259361
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=44730 WHERE `entry`=259360; -- 259360
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=44730 WHERE `entry`=259364; -- 259364
UPDATE `gameobject_template` SET `name`='Stool', `VerifiedBuild`=44730 WHERE `entry`=259372; -- 259372
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=44730 WHERE `entry`=259354; -- 259354
UPDATE `gameobject_template` SET `name`='Stool', `VerifiedBuild`=44730 WHERE `entry`=259369; -- 259369
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=44730 WHERE `entry`=259367; -- 259367
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=44730 WHERE `entry`=259355; -- 259355
UPDATE `gameobject_template` SET `name`='Stool', `VerifiedBuild`=44730 WHERE `entry`=259377; -- 259377
UPDATE `gameobject_template` SET `name`='Stool', `VerifiedBuild`=44730 WHERE `entry`=259373; -- 259373
UPDATE `gameobject_template` SET `name`='Stool', `VerifiedBuild`=44730 WHERE `entry`=259374; -- 259374
UPDATE `gameobject_template` SET `name`='Stool', `VerifiedBuild`=44730 WHERE `entry`=259371; -- 259371
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=44730 WHERE `entry`=259370; -- 259370
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=44730 WHERE `entry`=259368; -- 259368
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=44730 WHERE `entry`=259366; -- 259366
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=44730 WHERE `entry`=259363; -- 259363
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=44730 WHERE `entry`=259357; -- 259357
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=44730 WHERE `entry`=259356; -- 259356
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=44730 WHERE `entry`=259353; -- 259353
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=44730 WHERE `entry`=259352; -- 259352
UPDATE `gameobject_template` SET `ContentTuningId`=339, `VerifiedBuild`=44730 WHERE `entry`=251304; -- Portal to Sanctum of Light
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=44730 WHERE `entry`=259376; -- 259376
UPDATE `gameobject_template` SET `name`='Forsaken Blight Cache', `VerifiedBuild`=44730 WHERE `entry`=243343; -- 243343
UPDATE `gameobject_template` SET `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=243700; -- Forsaken Battle Plans
UPDATE `gameobject_template` SET `name`='Mailbox', `VerifiedBuild`=44730 WHERE `entry`=266464; -- 266464
UPDATE `gameobject_template` SET `name`='Campfire', `VerifiedBuild`=44730 WHERE `entry`=259758; -- 259758
UPDATE `gameobject_template` SET `name`='Campfire', `VerifiedBuild`=44730 WHERE `entry`=259757; -- 259757
UPDATE `gameobject_template` SET `name`='Campfire', `VerifiedBuild`=44730 WHERE `entry`=259756; -- 259756
UPDATE `gameobject_template` SET `name`='Stool', `VerifiedBuild`=44730 WHERE `entry`=253276; -- 253276
UPDATE `gameobject_template` SET `name`='Stool', `VerifiedBuild`=44730 WHERE `entry`=253275; -- 253275
UPDATE `gameobject_template` SET `name`='Stool', `VerifiedBuild`=44730 WHERE `entry`=253274; -- 253274
UPDATE `gameobject_template` SET `name`='Stool', `VerifiedBuild`=44730 WHERE `entry`=253270; -- 253270
UPDATE `gameobject_template` SET `name`='Stool', `VerifiedBuild`=44730 WHERE `entry`=253269; -- 253269
UPDATE `gameobject_template` SET `name`='Stool', `VerifiedBuild`=44730 WHERE `entry`=253268; -- 253268
UPDATE `gameobject_template` SET `name`='Stool', `VerifiedBuild`=44730 WHERE `entry`=253267; -- 253267
UPDATE `gameobject_template` SET `name`='Stool', `VerifiedBuild`=44730 WHERE `entry`=253266; -- 253266
UPDATE `gameobject_template` SET `name`='Stool', `VerifiedBuild`=44730 WHERE `entry`=253264; -- 253264
UPDATE `gameobject_template` SET `name`='Stool', `VerifiedBuild`=44730 WHERE `entry`=253263; -- 253263
UPDATE `gameobject_template` SET `name`='Stool', `VerifiedBuild`=44730 WHERE `entry`=253262; -- 253262
UPDATE `gameobject_template` SET `name`='Stool', `VerifiedBuild`=44730 WHERE `entry`=253261; -- 253261
UPDATE `gameobject_template` SET `castBarCaption`='Breaking', `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=244703; -- Nether Circle
UPDATE `gameobject_template` SET `name`='Map', `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=254021; -- 254021
UPDATE `gameobject_template` SET `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=251173; -- Forbidden Tome
UPDATE `gameobject_template` SET `name`='Felbound Portal', `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=244681; -- 244681
UPDATE `gameobject_template` SET `name`='Fel Blood Cauldron', `VerifiedBuild`=44730 WHERE `entry`=244696; -- 244696
UPDATE `gameobject_template` SET `castBarCaption`='Opening', `VerifiedBuild`=44730 WHERE `entry`=248601; -- Tideskorn Cage
UPDATE `gameobject_template` SET `castBarCaption`='Burning', `VerifiedBuild`=44730 WHERE `entry`=244704; -- Tideskorn Banner
UPDATE `gameobject_template` SET `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=251571; -- Ashilvara, Verse 1
UPDATE `gameobject_template` SET `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=251558; -- Engraved Shield
UPDATE `gameobject_template` SET `castBarCaption`='Activating', `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=243571; -- Shieldmaiden Idol
UPDATE `gameobject_template` SET `name`='FelMag_Empowered_AuraFel', `ContentTuningId`=339, `VerifiedBuild`=44730 WHERE `entry`=251285; -- 251285
UPDATE `gameobject_template` SET `name`='FelMag_Empowered_AuraFel', `ContentTuningId`=339, `VerifiedBuild`=44730 WHERE `entry`=251277; -- 251277
UPDATE `gameobject_template` SET `name`='FelMag_Empowered_AuraFel', `ContentTuningId`=339, `VerifiedBuild`=44730 WHERE `entry`=251275; -- 251275
UPDATE `gameobject_template` SET `IconName`='', `VerifiedBuild`=44730 WHERE `entry`=251221; -- Floki's Runestone
UPDATE `gameobject_template` SET `IconName`='', `VerifiedBuild`=44730 WHERE `entry`=251218; -- Rollo's Runestone
UPDATE `gameobject_template` SET `name`='FelMag_Empowered_AuraFel', `ContentTuningId`=339, `VerifiedBuild`=44730 WHERE `entry`=251276; -- 251276
UPDATE `gameobject_template` SET `IconName`='', `VerifiedBuild`=44730 WHERE `entry`=251220; -- Ragnar's Runestone
UPDATE `gameobject_template` SET `name`='Bonfire', `VerifiedBuild`=44730 WHERE `entry`=253244; -- 253244
UPDATE `gameobject_template` SET `name`='Mailbox', `VerifiedBuild`=44730 WHERE `entry`=266466; -- 266466
UPDATE `gameobject_template` SET `name`='Campfire', `VerifiedBuild`=44730 WHERE `entry`=253250; -- 253250
UPDATE `gameobject_template` SET `name`='Spit Post', `VerifiedBuild`=44730 WHERE `entry`=244859; -- 244859
UPDATE `gameobject_template` SET `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=244718; -- Sigrid's Journal
UPDATE `gameobject_template` SET `castBarCaption`='Opening', `Data1`=0, `Data18`=682, `Data19`=2, `ContentTuningId`=682, `VerifiedBuild`=44730 WHERE `entry`=244887; -- Small Treasure Chest
UPDATE `gameobject_template` SET `castBarCaption`='Opening', `Data1`=0, `Data19`=2, `ContentTuningId`=682, `VerifiedBuild`=44730 WHERE `entry`=244913; -- Treasure Chest
UPDATE `gameobject_template` SET `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=265583; -- Kvaldir Portal
UPDATE `gameobject_template` SET `castBarCaption`='Searching', `Data1`=0, `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=252239; -- Shipwreck Debris
UPDATE `gameobject_template` SET `ContentTuningId`=1155, `VerifiedBuild`=44730 WHERE `entry`=249822; -- Echoing Horn of the Damned
UPDATE `gameobject_template` SET `name`='Feather', `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=250538; -- 250538
UPDATE `gameobject_template` SET `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=250536; -- Intact Greatstag Antler
UPDATE `gameobject_template` SET `castBarCaption`='Breaking', `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=250427; -- Squallhunter Egg
UPDATE `gameobject_template` SET `name`='Rock', `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=251101; -- 251101
UPDATE `gameobject_template` SET `castBarCaption`='Burning', `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=243840; -- Mightstone Banner
UPDATE `gameobject_template` SET `name`='Campfire', `VerifiedBuild`=44730 WHERE `entry`=253235; -- 253235
UPDATE `gameobject_template` SET `castBarCaption`='Grabbing', `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=252080; -- Hearty Vrykul Grains
UPDATE `gameobject_template` SET `name`='Bowl', `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=252079; -- 252079
UPDATE `gameobject_template` SET `name`='Crab', `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=252078; -- 252078
UPDATE `gameobject_template` SET `name`='Barrel', `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=252077; -- 252077
UPDATE `gameobject_template` SET `castBarCaption`='Grabbing', `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=252076; -- Barrel of Crabs
UPDATE `gameobject_template` SET `name`='Veggie', `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=252075; -- 252075
UPDATE `gameobject_template` SET `castBarCaption`='Grabbing', `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=252074; -- Basket of Root Vegetables
UPDATE `gameobject_template` SET `name`='Vrykul Crate', `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=251876; -- 251876
UPDATE `gameobject_template` SET `name`='Sack', `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=250572; -- 250572
UPDATE `gameobject_template` SET `name`='Campfire', `VerifiedBuild`=44730 WHERE `entry`=253238; -- 253238
UPDATE `gameobject_template` SET `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=251188; -- Wicked-Looking Spear
UPDATE `gameobject_template` SET `castBarCaption`='Burning', `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=243841; -- Bloodtotem Standard
UPDATE `gameobject_template` SET `castBarCaption`='Opening', `Data1`=0, `Data18`=682, `Data19`=2, `ContentTuningId`=682, `VerifiedBuild`=44730 WHERE `entry`=241206; -- Small Treasure Chest
UPDATE `gameobject_template` SET `name`='Campfire', `VerifiedBuild`=44730 WHERE `entry`=255223; -- 255223
UPDATE `gameobject_template` SET `name`='Gnome Bolts Pile', `VerifiedBuild`=44730 WHERE `entry`=240283; -- 240283
UPDATE `gameobject_template` SET `name`='Gnome Drill', `VerifiedBuild`=44730 WHERE `entry`=240282; -- 240282
UPDATE `gameobject_template` SET `name`='Gnome Toolbox', `VerifiedBuild`=44730 WHERE `entry`=240281; -- 240281
UPDATE `gameobject_template` SET `castBarCaption`='Opening', `Data1`=0, `Data18`=682, `Data19`=2, `ContentTuningId`=682, `VerifiedBuild`=44730 WHERE `entry`=241557; -- Small Treasure Chest
UPDATE `gameobject_template` SET `IconName`='', `Data0`=2861, `Data1`=62231, `Data4`=5, `Data5`=95, `Data12`=682, `VerifiedBuild`=44730 WHERE `entry`=244777; -- Fjarnskaggl
UPDATE `gameobject_template` SET `castBarCaption`='Opening', `Data1`=0, `Data18`=682, `Data19`=2, `ContentTuningId`=682, `VerifiedBuild`=44730 WHERE `entry`=241562; -- Small Treasure Chest
UPDATE `gameobject_template` SET `castBarCaption`='Opening', `Data1`=0, `Data18`=682, `Data19`=2, `ContentTuningId`=682, `VerifiedBuild`=44730 WHERE `entry`=241558; -- Treasure Chest
UPDATE `gameobject_template` SET `castBarCaption`='Broadcasting Signal', `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=240235; -- Skyfire Propeller
UPDATE `gameobject_template` SET `castBarCaption`='Collecting', `Data1`=0, `ContentTuningId`=334, `VerifiedBuild`=44730 WHERE `entry`=241275; -- Skyfire Medical Supplies
UPDATE `gameobject_template` SET `Data1`=64266, `VerifiedBuild`=44730 WHERE `entry`=246491; -- Fever of Stormrays


UPDATE `gameobject_questitem` SET `VerifiedBuild`=44730 WHERE (`Idx`=0 AND `GameObjectEntry` IN (278802,203800,203801,105175,203762,105174,250417,245368,244824,249729,266619,241275));


DELETE FROM `creature_equip_template` WHERE (`ID`=1 AND `CreatureID` IN (187441,187696));
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(187441, 1, 153575, 0, 0, 0, 0, 0, 0, 0, 0, 44730), -- Lady Jaina Proudmoore
(187696, 1, 23998, 0, 0, 0, 0, 0, 0, 0, 0, 44730); -- Archmage Khadgar

UPDATE `creature_equip_template` SET `VerifiedBuild`=44730 WHERE (`ID`=1 AND `CreatureID` IN (178232,182146,177476,181179,181408,178134,185058,185057,185056,185055,185064,185065,185063,185062,185061,185060,181292,185051,185053,185052,185054,185045,185044,185049,185048,185047,185046,185067,185068,178136,185066,185071,185070,185069,185072,184558,184556,184555,184557,184554,184551,184541,184542,184538,184569,184550,184549,184548,184564,177958,178346,180085,181093,181007,180089,181102,181098,181091,182293,182284,182289,181797,184566,184568,184567,182256,182255,177688,182267,182268,182265,181193,177694,184670,181027,184056,187651,181183,184460,184934,177486,180918,180920,171822,171796,176332,164803,176169,176165,178997,156671,170557,164596,175082,187734,171787,164079,171821,176067,170640,173330,156698,164685,176267,164686,185405,185406,174794,154631,161063,168245,175276,175495,160175,163427,160174,179379,153436,154625,153456,154627,175823,175825,160037,176100,160212,158773,160391,168517,160390,154635,168485,171816,168427,51372)) OR (`ID`=3 AND `CreatureID`=182284) OR (`ID`=2 AND `CreatureID`=182284) OR (`ID`=6 AND `CreatureID`=174676);


UPDATE `areatrigger_template` SET `VerifiedBuild`=44730 WHERE (`IsServerSide`=0 AND `Id` IN (11266,10665,10727,9228,27415,11023,22375,12740,8352,2947,8382,3319,7020,24455,9181,27935,28488,28489,12515,22573,21379,21377));


UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6039;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=4488;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23044;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6039;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23044;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6039;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6351;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23044;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6039;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=18264;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6039;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2717, `VerifiedBuild`=44730 WHERE `Id`=8661; -- SpellId : 84714
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6351;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6039;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=3680;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=3680;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=3680;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23044;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=3680;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=3680;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=3680;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6351;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=304;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=3691;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=383;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6039;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=53493, `VerifiedBuild`=44730 WHERE `Id`=8661; -- SpellId : 84714
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6351;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=2442;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=2442;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3073, `VerifiedBuild`=44730 WHERE `Id`=8661; -- SpellId : 84714
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=383;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=383;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=383;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23044;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3126, `VerifiedBuild`=44730 WHERE `Id`=8661; -- SpellId : 84714
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=28546, `VerifiedBuild`=44730 WHERE `Id`=20575; -- SpellId : 330606
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=34952, `VerifiedBuild`=44730 WHERE `Id`=20575; -- SpellId : 330606
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=38396, `VerifiedBuild`=44730 WHERE `Id`=20575; -- SpellId : 330606
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=4488;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=3691;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3138, `VerifiedBuild`=44730 WHERE `Id`=8661; -- SpellId : 84714
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=4435;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23044;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=18264;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6351;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23044;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6039;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6039;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23044;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6351;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6039;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23044;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23700;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=28488, `ScaleCurveId`=0, `ShapeData0`=1.75, `ShapeData1`=1.75, `VerifiedBuild`=44730 WHERE `Id`=2147483648; -- SpellId : 0 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23700;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=28489, `ScaleCurveId`=0, `ShapeData0`=1.25, `ShapeData1`=1.25, `VerifiedBuild`=44730 WHERE `Id`=2147483648; -- SpellId : 0 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23700;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23700;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23700;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23700;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23044;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=3691;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6710;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6039;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5977;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=7363;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=7363;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=18501;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=18501;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=18501;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=18501;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=21377, `ScaleCurveId`=0, `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44730 WHERE `Id`=2147483648; -- SpellId : 0 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=21379, `ScaleCurveId`=0, `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44730 WHERE `Id`=2147483648; -- SpellId : 0 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)


UPDATE `areatrigger_create_properties_spline_point` SET `X`=40.19394683837890625, `Z`=3.67293548583984375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx` IN (16,15)); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=37.5556182861328125, `Z`=4.23726654052734375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=14); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=34.81681442260742187, `Z`=4.33919525146484375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=13); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=32.00967788696289062, `Z`=4.23458099365234375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=12); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=29.1634368896484375, `Z`=4.16756439208984375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=11); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=26.29108619689941406, `Z`=4.04915618896484375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=10); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=23.39740943908691406, `Z`=3.74373626708984375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=9); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.49566078186035156, `Z`=3.79109954833984375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=8); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=17.58532524108886718, `Z`=3.65438079833984375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=7); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.66800880432128906, `Z`=3.42403411865234375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=6); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.74325466156005859, `Z`=2.93416595458984375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=5); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.810671806335449218, `Z`=1.83443450927734375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=4); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.874800682067871093, `Y`=-0.00005654125561704, `Z`=1.0390625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=3); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.93753671646118164, `Z`=0.316650390625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=2); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0, `Z`=0, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx` IN (1,0)); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=39.91107940673828125, `Z`=1.10863494873046875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx` IN (18,17)); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=37.44528579711914062, `Z`=0.69982147216796875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=16); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=34.95537567138671875, `Z`=0.68468475341796875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=15); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=32.46158218383789062, `Z`=0.63390350341796875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=14); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=29.96419906616210937, `Z`=0.77623748779296875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=13); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=27.46600341796875, `Z`=0.82054901123046875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=12); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=24.96810150146484375, `Z`=0.68297576904296875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=11); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=22.46963310241699218, `Z`=0.79564666748046875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=10); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=19.97065353393554687, `Z`=1.08409881591796875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=9); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=17.47190475463867187, `Z`=1.28197479248046875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=8); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.97317695617675781, `Z`=1.40123748779296875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=7); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=12.47443485260009765, `Z`=1.36743927001953125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=6); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=9.975672721862792968, `Z`=0.96314239501953125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=5); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=7.477196693420410156, `Z`=0.55945587158203125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=4); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.979301929473876953, `Y`=0.000096432682767044, `Z`=0.08728790283203125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=3); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.481413841247558593, `Z`=0.00232696533203125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=2); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.01650207489728927, `Z`=-0.00000762939453125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx` IN (1,0)); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=46.00550460815429687, `Z`=-0.6363067626953125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx` IN (18,17)); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=43.14185714721679687, `Z`=-0.7050628662109375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=16); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=40.22042083740234375, `Z`=-0.5333251953125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=15); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=37.29203033447265625, `Z`=-0.59423828125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=14); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=34.36232376098632812, `Z`=-0.745849609375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=13); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=31.431732177734375, `Z`=-0.8974609375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=12); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=28.50106620788574218, `Z`=-1.0808868408203125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=11); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=25.56859779357910156, `Z`=-1.0808868408203125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=10); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=22.63492584228515625, `Z`=-1.0808868408203125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=9); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=19.70056915283203125, `Z`=-1.0808868408203125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=8); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=16.76561164855957031, `Z`=-1.0808868408203125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=7); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=13.83011054992675781, `Z`=-1.0808868408203125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=6); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=10.89429378509521484, `Z`=-1.0808868408203125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=5); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=7.95749664306640625, `Z`=-0.670166015625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=4); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.020107746124267578, `Y`=0.000135460533783771, `Z`=-0.26416015625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=3); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.937444925308227539, `Z`=-0.1021728515625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=2); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=46.65912628173828125, `Z`=-1.9726409912109375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx` IN (18,17)); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=43.92985916137695312, `Z`=-1.9726409912109375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=16); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=41.0522308349609375, `Z`=-1.9726409912109375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=15); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=38.1420135498046875, `Z`=-1.9726409912109375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=14); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=35.21983718872070312, `Z`=-1.9726409912109375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=13); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=32.29206085205078125, `Z`=-1.9726409912109375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=12); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=29.36125755310058593, `Z`=-1.9726409912109375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=11); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=26.42856597900390625, `Z`=-1.9726409912109375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=10); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=23.49464607238769531, `Z`=-1.9726409912109375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=9); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.55991172790527343, `Z`=-1.9726409912109375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=8); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=17.62412071228027343, `Z`=-1.866241455078125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=7); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.68657112121582031, `Z`=-1.213775634765625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=6); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.74885177612304687, `Z`=-0.443756103515625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=5); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.81153106689453125, `Z`=0.006439208984375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=4); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.874597072601318359, `Y`=-0.00011958221875829, `Z`=0.2779541015625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=3); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.937505960464477539, `Z`=0.2447509765625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=2); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=30.11638450622558593, `Y`=-10.192265510559082, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx` IN (14,13)); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.44924068450927734, `Y`=-24.9339599609375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=12); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-5.09873390197753906, `Y`=-27.175262451171875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=11); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-20.5012149810791015, `Y`=-18.166635513305664, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=10); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-26.6604042053222656, `Y`=-3.38228869438171386, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=9); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-23.0542106628417968, `Y`=10.34746551513671875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=8); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-13.2364692687988281, `Y`=17.89702606201171875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=7); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.64819526672363281, `Y`=17.75796318054199218, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=6); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.106591701507568359, `Y`=12.08996391296386718, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=5); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.23322153091430664, `Y`=5.091224193572998046, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=4); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.131866455078125, `Y`=0.618221879005432128, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=3); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-1.83646881580352783, `Y`=0.260794997215270996, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=2); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.4650423526763916, `Y`=2.78022170066833496, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx` IN (1,0)); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=37.95549392700195312, `Y`=1.561859965324401855, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx` IN (14,13)); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=24.03809738159179687, `Y`=-21.0482711791992187, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=12); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.375220328569412231, `Y`=-26.4331912994384765, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=11); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-18.0943126678466796, `Y`=-14.5014972686767578, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=10); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-21.9554729461669921, `Y`=4.829248428344726562, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=9); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-12.0096654891967773, `Y`=19.15801811218261718, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=8); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.989128589630126953, `Y`=21.49558448791503906, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=7); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=13.17737960815429687, `Y`=13.5356454849243164, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=6); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=13.99110603332519531, `Y`=2.868815422058105468, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=5); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.016867637634277343, `Y`=-3.17883610725402832, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=4); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.682173609733581542, `Y`=-2.46880364418029785, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=3); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.22478115558624267, `Y`=1.519622683525085449, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=2); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.008911848068237304, `Y`=3.5222930908203125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx` IN (1,0)); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-23.2986164093017578, `Y`=-35.3672142028808593, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx` IN (16,15)); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-34.4903678894042968, `Y`=-12.7972593307495117, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=14); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-30.3793373107910156, `Y`=10.18924617767333984, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=13); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-14.7121858596801757, `Y`=24.93094062805175781, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=12); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.835787773132324218, `Y`=27.17224311828613281, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=11); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.23826789855957031, `Y`=18.16361618041992187, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=10); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=26.39745521545410156, `Y`=3.379269599914550781, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=9); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=22.79126167297363281, `Y`=-10.3504848480224609, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=8); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=12.97352123260498046, `Y`=-17.9000453948974609, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=7); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.385247707366943359, `Y`=-17.7609825134277343, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=6); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-4.36953926086425781, `Y`=-12.0929832458496093, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=5); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-5.4961709976196289, `Y`=-5.09424352645874023, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=4); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.39481568336486816, `Y`=-0.62124103307723999, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=3); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.573520421981811523, `Y`=-0.26381421089172363, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=2); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.20209360122680664, `Y`=-2.78324103355407714, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx` IN (1,0)); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=35.953125, `Z`=0.70642852783203125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx` IN (18,17)); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=33.02178573608398437, `Z`=0.07740020751953125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=16); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=30.08493804931640625, `Z`=0.00000762939453125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=15); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=27.14760208129882812, `Z`=0.00000762939453125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=14); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=24.21023941040039062, `Z`=0.00000762939453125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=13); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=21.27286338806152343, `Z`=0.00000762939453125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=12); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=18.33548164367675781, `Z`=0.00000762939453125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=11); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=15.39809131622314453, `Z`=0.00000762939453125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=10); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=12.46070194244384765, `Z`=0.00000762939453125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=9); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=9.523306846618652343, `Z`=0.00000762939453125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=8); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.585910320281982421, `Z`=0.00000762939453125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=7); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.648507595062255859, `Z`=0.00000762939453125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=6); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.711104929447174072, `Z`=0.00000762939453125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=5); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.22629785537719726, `Z`=0.00000762939453125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=4); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-5.16370725631713867, `Y`=0.00009697581117507, `Z`=0.00000762939453125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=3); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-8.10111713409423828, `Z`=0.00000762939453125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=2); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-11.0385265350341796, `Z`=0.00000762939453125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx` IN (1,0)); -- SpellId : 84714


DELETE FROM `conversation_line_template` WHERE `Id` IN (44462, 45707, 44820, 44794, 45220, 44796, 44297, 44296, 44295, 44797, 44494, 44493, 44492, 44491, 44395, 45681, 44373, 45680, 45679, 44374, 44500, 44499, 44459, 44458, 44457, 44456, 44316, 44315, 45219, 44311, 44379, 44378, 44382, 45634, 45633, 44793, 44380, 44381, 44475, 44298, 45463, 44798, 44383, 44384, 44394, 44474, 44321, 44319, 45538, 45537, 45536, 44412, 45722, 44479, 44478, 44477, 45771, 45753, 45272, 45271, 44372, 44368, 45519, 44486, 44485, 44488);
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(44462, 0, 2, 0, 44730),
(45707, 0, 1, 0, 44730),
(44820, 0, 0, 0, 44730),
(44794, 1578, 0, 0, 44730),
(45220, 1641, 0, 0, 44730),
(44796, 1578, 0, 0, 44730),
(44297, 0, 0, 0, 44730),
(44296, 0, 1, 0, 44730),
(44295, 0, 0, 0, 44730),
(44797, 1578, 0, 0, 44730),
(44494, 0, 2, 0, 44730),
(44493, 0, 2, 0, 44730),
(44492, 0, 1, 0, 44730),
(44491, 0, 0, 0, 44730),
(44395, 0, 1, 0, 44730),
(45681, 0, 0, 0, 44730),
(44373, 0, 0, 0, 44730),
(45680, 0, 2, 0, 44730),
(45679, 0, 1, 0, 44730),
(44374, 0, 0, 0, 44730),
(44500, 0, 1, 0, 44730),
(44499, 0, 0, 0, 44730),
(44459, 0, 1, 0, 44730),
(44458, 0, 0, 0, 44730),
(44457, 0, 1, 0, 44730),
(44456, 0, 0, 0, 44730),
(44316, 0, 1, 0, 44730),
(44315, 0, 0, 0, 44730),
(45219, 1641, 0, 0, 44730),
(44311, 0, 0, 0, 44730),
(44379, 0, 1, 0, 44730),
(44378, 0, 0, 0, 44730),
(44382, 0, 0, 0, 44730),
(45634, 0, 1, 0, 44730),
(45633, 0, 0, 0, 44730),
(44793, 1578, 0, 0, 44730),
(44380, 0, 0, 0, 44730),
(44381, 0, 0, 0, 44730),
(44475, 0, 2, 0, 44730),
(44298, 0, 1, 0, 44730),
(45463, 0, 0, 0, 44730),
(44798, 0, 0, 0, 44730),
(44383, 0, 2, 0, 44730),
(44384, 0, 1, 0, 44730),
(44394, 0, 0, 0, 44730),
(44474, 0, 0, 0, 44730),
(44321, 0, 1, 0, 44730),
(44319, 0, 0, 0, 44730),
(45538, 0, 1, 0, 44730),
(45537, 0, 0, 0, 44730),
(45536, 0, 0, 0, 44730),
(44412, 0, 0, 0, 44730),
(45722, 0, 0, 0, 44730),
(44479, 0, 0, 0, 44730),
(44478, 0, 1, 0, 44730),
(44477, 0, 0, 0, 44730),
(45771, 0, 0, 1, 44730),
(45753, 0, 0, 0, 44730),
(45272, 0, 1, 1, 44730),
(45271, 0, 0, 1, 44730),
(44372, 0, 1, 0, 44730),
(44368, 0, 0, 0, 44730),
(45519, 0, 1, 0, 44730),
(44486, 0, 1, 0, 44730),
(44485, 0, 0, 0, 44730),
(44488, 0, 0, 0, 44730);


DELETE FROM `quest_offer_reward` WHERE `ID` IN (65749 /*The Necessity Of Equipment*/, 64760 /*Technical Difficulties*/, 64758 /*Following the Leader*/, 64743 /*Xy Are You Doing This?*/, 64744 /*Broker Decloaker*/, 64742 /*Traces of Tampering*/, 64741 /*Security Check*/, 64771 /*Enlightened Exodus*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(65749, 0, 0, 0, 0, 0, 0, 0, 0, 'You have my thanks $p, and a gift for your future efforts.', 44730), -- The Necessity Of Equipment
(64760, 669, 0, 0, 0, 0, 0, 0, 0, 'Thank you for your assistance, Maw Walker.\n\nI must return to Oribos. I will tell Cartel Al that our friends are not lost, but Enlightened.', 44730), -- Technical Difficulties
(64758, 22, 0, 0, 0, 0, 0, 0, 0, 'No! What has that fool done to the console?!', 44730), -- Following the Leader
(64743, 669, 0, 0, 0, 0, 0, 0, 0, 'Oh, they thought they could hide their plans with a code? Hold on, my friend, this should take just a moment...', 44730), -- Xy Are You Doing This?
(64744, 669, 0, 0, 0, 0, 0, 0, 0, 'Their deaths are a shame, but we must protect Haven.', 44730), -- Broker Decloaker
(64742, 669, 0, 0, 0, 0, 0, 0, 0, 'Cartel Xy is nearby.', 44730), -- Traces of Tampering
(64741, 669, 0, 0, 0, 0, 0, 0, 0, 'I knew it! Haven\'s defenses were deliberately tampered with -- by Cartel Xy!', 44730), -- Security Check
(64771, 669, 0, 0, 0, 0, 0, 0, 0, 'If they cannot be persuaded, they must be protected.', 44730); -- Enlightened Exodus

UPDATE `quest_offer_reward` SET `RewardText`='A mortal, here? The designs of the First Ones are mysterious.', `VerifiedBuild`=44730 WHERE `ID`=65463; -- The Wellspring of the First Ones
UPDATE `quest_offer_reward` SET `RewardText`='We move closer to our goal. Ever onward.', `VerifiedBuild`=44730 WHERE `ID`=66042; -- Patterns Within Patterns
UPDATE `quest_offer_reward` SET `VerifiedBuild`=44730 WHERE `ID`=63053;


UPDATE `quest_poi` SET `VerifiedBuild`=44730 WHERE (`QuestID`=65262 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65262 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65064 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=65064 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65064 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65064 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65064 AND `BlobIndex`=0 AND `Idx1`=0);

UPDATE `quest_poi_points` SET `VerifiedBuild`=44730 WHERE (`QuestID`=65262 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65262 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=65262 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=65262 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=65262 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=65262 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=65262 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=65262 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=65262 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=65262 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=65262 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65064 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=65064 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65064 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65064 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=65064 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=65064 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=65064 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=65064 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=65064 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=65064 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=65064 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=65064 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=65064 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=65064 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=65064 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65064 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (65463 /*The Wellspring of the First Ones*/, 64760 /*Technical Difficulties*/, 64758 /*Following the Leader*/, 64743 /*Xy Are You Doing This?*/, 64744 /*Broker Decloaker*/, 64742 /*Traces of Tampering*/, 64741 /*Security Check*/, 65774 /*The Catalyst Awakens*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(65463, 1, 0, 0, 0, 0, 0, 0, 0, 44730), -- The Wellspring of the First Ones
(64760, 669, 0, 0, 0, 0, 0, 0, 0, 44730), -- Technical Difficulties
(64758, 669, 0, 0, 0, 0, 0, 0, 0, 44730), -- Following the Leader
(64743, 669, 0, 0, 0, 0, 0, 0, 0, 44730), -- Xy Are You Doing This?
(64744, 669, 0, 0, 0, 0, 0, 0, 0, 44730), -- Broker Decloaker
(64742, 669, 0, 0, 0, 0, 0, 0, 0, 44730), -- Traces of Tampering
(64741, 669, 0, 0, 0, 0, 0, 0, 0, 44730), -- Security Check
(65774, 0, 0, 0, 0, 0, 0, 0, 0, 44730); -- The Catalyst Awakens

UPDATE `quest_details` SET `VerifiedBuild`=44730 WHERE `ID` IN (65349, 65749, 65064, 65727, 64771, 65259, 65748, 63053);

DELETE FROM `quest_request_items` WHERE `ID` IN (65749 /*The Necessity Of Equipment*/, 64743 /*Xy Are You Doing This?*/, 64771 /*Enlightened Exodus*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(65749, 0, 0, 0, 0, 'What is this you have brought me?', 0), -- The Necessity Of Equipment
(64743, 669, 0, 0, 0, 'We must discover Cartel Xy\'s intentions here.', 0), -- Xy Are You Doing This?
(64771, 0, 669, 0, 0, 'Have any others chosen to leave?', 44730); -- Enlightened Exodus


DELETE FROM `creature_queststarter` WHERE (`id`=181084 AND `quest`=65463) OR (`id`=180936 AND `quest` IN (64760,64758)) OR (`id`=181003 AND `quest` IN (64743,64744,64742,64741)) OR (`id`=182257 AND `quest`=65774);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(181084, 65463, 44730), -- The Wellspring of the First Ones offered Drim
(180936, 64760, 44730), -- Technical Difficulties offered Rana
(180936, 64758, 44730), -- Following the Leader offered Rana
(181003, 64743, 44730), -- Xy Are You Doing This? offered Al'dalil
(181003, 64744, 44730), -- Broker Decloaker offered Al'dalil
(181003, 64742, 44730), -- Traces of Tampering offered Al'dalil
(181003, 64741, 44730), -- Security Check offered Al'dalil
(182257, 65774, 44730); -- The Catalyst Awakens offered Vilo

UPDATE `creature_queststarter` SET `VerifiedBuild`=44730 WHERE (`id`=182146 AND `quest`=65349) OR (`id`=177958 AND `quest`=65749) OR (`id`=184486 AND `quest`=65064) OR (`id`=180950 AND `quest`=65727) OR (`id`=181003 AND `quest`=64771) OR (`id`=181183 AND `quest`=65259) OR (`id`=185713 AND `quest`=65748) OR (`id`=175907 AND `quest`=63053) OR (`id`=170624 AND `quest`=59753) OR (`id`=166723 AND `quest`=59752) OR (`id`=165918 AND `quest`=59907) OR (`id`=169076 AND `quest`=59751) OR (`id`=107498 AND `quest`=42446) OR (`id`=107499 AND `quest`=42444) OR (`id`=90866 AND `quest`=38558);

DELETE FROM `creature_questender` WHERE (`id`=185587 AND `quest`=65749) OR (`id`=181003 AND `quest` IN (64760,64743,64744,64742,64741,64771)) OR (`id`=180936 AND `quest`=64758);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(185587, 65749, 44730), -- The Necessity Of Equipment ended by Rafiq
(181003, 64760, 44730), -- Technical Difficulties ended by Al'dalil
(180936, 64758, 44730), -- Following the Leader ended by Rana
(181003, 64743, 44730), -- Xy Are You Doing This? ended by Al'dalil
(181003, 64744, 44730), -- Broker Decloaker ended by Al'dalil
(181003, 64742, 44730), -- Traces of Tampering ended by Al'dalil
(181003, 64741, 44730), -- Security Check ended by Al'dalil
(181003, 64771, 44730); -- Enlightened Exodus ended by Al'dalil

UPDATE `creature_questender` SET `VerifiedBuild`=44730 WHERE (`id`=182146 AND `quest`=65463) OR (`id`=181183 AND `quest`=66042) OR (`id`=175907 AND `quest`=63053) OR (`id`=166723 AND `quest`=59752) OR (`id`=165918 AND `quest`=59751) OR (`id`=169076 AND `quest`=60545) OR (`id`=107840 AND `quest`=39775) OR (`id`=107498 AND `quest`=42444) OR (`id`=90866 AND `quest`=38053);



DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (183792,181939,182098,182100,187441,187696,187719));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(183792, 0, 0, 0, 2057, 44730),
(181939, 0, 0, 0, 2057, 44730),
(182098, 0, 0, 0, 2057, 44730),
(182100, 0, 0, 0, 2057, 44730),
(187441, 0, 0, 0, 2057, 44730),
(187696, 0, 0, 0, 746, 44730),
(187719, 0, 0, 0, 371, 44730);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=44730 WHERE (`DifficultyID`=0 AND `Entry` IN (181222,182121,184940,185609,185543,185190,185755,178232,181295,178233,182146,181077,182692,184235,185511,179004,182458,178159,181119,185587,180748,181172,181179,182877,180630,184423,184406,183739,182373,182294,181408,182758,181084,185090,181086,185058,185057,185056,183298,184767,185055,185064,185065,185063,185062,185061,183970,185060,185035,181292,185039,185038,185040,185051,185053,185052,185054,185034,185036,182437,181838,185045,185044,185049,185048,185047,183969,185046,181839,185067,185068,181837,181905,178135,181834,181862,178134,185066,182438,185071,184945,178137,178136,185070,185069,185072,183265,183408,181586,182876,183268,183257,184389,183287,185498,184556,184555,183258,184557,184390,184554,184551,145146,185455,184553,184552,185261,184543,181946,183225,184541,184542,183217,184538,184569,184550,184549,184548,184393,183242,183284,183283,183565,184896,183308,184897,184892,183273,183227,184894,184895,184893,184565,184564,184563,182330,181397,182303,184076,184077,184044,177517,180165,180075,184082,177958,184483,186209,180043,183639,178158,182247,182301,182335,184516,185299,178326,183631,184750,184684,186211,181555,178346,181495,182354,158637,185430,180089,180085,180050,181562,180919,177376,181146,184943,181102,183277,185265,182568,182473,183721,182474,181098,181122,181108,181123,181091,182569,181109,184391,185277,182135,184561,184560,181797,183303,184566,182292,183304,184568,184567,183747,182293,183274,183228,178129,182289,184558,178155,181385,184944,182256,182284,182214,178238,182265,182268,182267,181193,182255,181344,184942,183142,177695,182324,177691,177690,177689,184751,181349,184324,177694,181571,177688,184756,177693,177723,182131,178154,184670,182296,181782,183465,184322,184321,183971,185750,181383,183869,181369,181366,183911,183838,182096,181857,181392,181484,181375,181339,181330,181359,181884,181352,180669,180656,183546,182314,182315,182254,183768,182252,184045,183769,184046,182319,182260,182282,183146,183889,185295,181110,182316,182281,178099,182216,185292,181500,181027,25171,181028,181995,180051,183966,184056,183263,180654,182259,183270,183262,184194,181580,181558,181093,184690,180652,183904,180655,181007,180049,182768,181293,180653,183291,180641,178935,183468,182107,178093,182234,182769,180916,185702,180931,180948,181183,180927,180926,180933,184460,182681,184934,185630,181003,178936,177486,180936,178015,182257,180918,180956,178895,183349,180052,184487,184486,184239,185798,183903,185713,180961,180950,183143,182218,181006,180923,180920,182245,177476,185807,178196,180715,177432,172538,178909,55455,185488,183963,178098,180650,182113,181490,184071,178913,178094,185291,185457,182116,183378,185282,185285,181362,181361,175217,181681,174564,176146,156479,176137,176169,176165,178997,156672,168353,164368,184055,165379,164367,156696,156690,156667,156671,156694,156669,156683,173351,156777,164736,156666,156668,156732,156685,156670,167738,156681,156733,156687,156686,175211,156689,173571,156691,114665,156692,175209,175083,175210,174922,164095,168011,175016,164096,175213,171790,187734,175082,171787,183720,164579,167591,55370,164079,175080,162896,186199,171821,171795,173386,171299,176067,176368,176065,176064,176066,175081,171589,156504,32639,32638,183830,159478,164099,164098,164100,164684,164078,166284,165657,173370,185576,169524,165796,156735,175067,156758,175066,173369,156791,166312,173356,156768,156769,173355,173354,173357,156664,156663,175222,164596,176332,173353,173352,162928,170310,175214,142666,142668,162929,32642,32641,73400,175218,170640,175216,173318,175042,170607,175019,156734,175212,173330,162918,173327,175035,175036,171796,170256,182864,170557,171822,178804,173350,173301,173348,175215,173302,164352,173305,164353,175020,173304,164685,175018,156688,175087,175207,173367,173325,167881,166061,176197,164123,167880,175208,175206,165403,173118,173364,165405,175017,172702,176267,173300,164803,164686,164173,185405,185406,175327,162666,176545,156698,172058,174636,168731,158599,168359,166165,158504,166161,174794,166332,174676,168438,156228,168428,168437,174635,158510,158509,168309,170415,168333,168268,166166,168613,161063,168245,168244,157728,175777,158772,157725,168442,168407,168984,168948,168943,157761,169114,169099,166869,156376,177543,169123,158005,158081,158179,158004,170932,158150,169163,157967,157973,158110,169179,169158,158054,169509,156279,170325,172124,160606,168240,165068,165055,175651,161499,169513,160608,160629,156586,158427,172714,174998,173130,173206,173205,173204,161536,171666,171664,171668,171712,170333,171670,168466,170334,169126,175653,168919,170248,172196,168936,170335,170328,168624,168915,170247,168410,168877,169572,175276,168872,170330,170329,170331,170332,168866,170393,168397,170392,160602,160223,62862,171526,157962,175196,163974,160435,160434,160432,160430,160428,172206,171037,175426,160470,159423,172839,160274,170284,163427,160285,160437,160569,160178,164370,164369,160581,160175,160174,160173,167871,179379,153436,154625,153456,154627,175823,175825,54638,160037,167867,178075,154580,154583,160325,154586,154585,154564,174269,62822,62821,174937,176100,160212,154567,171036,175907,159421,164590,160449,174581,158773,174188,164591,160389,160386,160391,168517,179800,121541,160387,167745,160390,159532,174583,154527,154635,168485,171816,171981,171973,173057,171959,171958,168519,174582,174580,168427,175495,175494,175493,168430,154630,154631,51372,61143,2957,2956,3035,2959,6271,2620));


UPDATE `creature_model_info` SET `VerifiedBuild`=44730 WHERE `DisplayID` IN (104969, 101572, 98797, 104584, 103256, 105246, 101970, 101911, 98897, 104869, 105142, 105568, 96828, 105238, 101909, 100985, 104059, 102641, 101884, 102611, 98798, 102612, 100849, 104016, 102577, 101906, 105486, 100558, 100374, 105488, 98860, 98858, 98861, 60928, 105283, 98822, 105629, 98823, 98821, 103134, 104771, 104770, 98898, 100915, 100452, 105693, 101049, 104769, 104772, 100129, 105040, 105694, 93574, 105334, 98855, 93952, 104999, 102008, 101914, 103103, 104063, 103102, 104062, 102089, 94224, 104805, 101006, 100366, 93853, 98975, 100375, 100365, 105011, 105243, 100091, 100095, 98527, 101849, 92417, 101851, 97817, 22452, 104586, 104583, 100371, 92411, 97600, 104803, 98830, 95771, 95966, 95880, 95747, 97355, 102146, 104972, 105607, 105606, 98795, 104884, 105605, 100131, 102145, 104885, 100850, 105604, 104710, 98804, 104781, 98531, 95158, 74230, 104974, 104911, 98826, 100449, 100448, 98976, 100120, 98978, 105006, 98977, 98833, 17200, 98796, 103435, 100128, 105557, 94225, 100675, 98824, 94226, 103436, 98854, 98834, 100378, 98789, 105507, 17188, 98788, 100996, 102865, 101005, 100450, 98799, 100987, 98825, 98866, 98846, 102127, 102126, 100994, 98968, 98973, 71887, 101990, 100976, 105244, 105627, 104967, 52334, 98974, 92398, 101996, 105234, 98508, 105239, 98506, 105237, 102043, 100733, 98509, 104014, 86964, 104562, 101478, 104964, 104867, 103087, 104868, 101775, 100380, 100377, 98895, 101987, 98828, 98829, 103135, 104976, 105519, 98816, 101214, 105241, 98837, 104965, 100381, 100993, 105236, 101985, 100379, 105460, 100732, 105459, 100995, 104973, 105242, 98836, 100731, 101048, 98835, 105126, 104860, 104896, 101054, 101215, 101986, 98818, 61527, 101984, 98838, 105286, 103751, 103756, 94586, 100187, 1544, 96327, 93232, 96332, 97029, 104817, 68476, 100263, 100264, 100886, 96330, 95529, 93594, 94471, 99051, 96329, 96423, 93576, 96326, 93951, 94627, 101418, 96587, 93579, 95042, 94614, 93599, 24103, 73366, 94021, 97424, 93589, 96281, 93586, 96086, 93593, 97025, 93596, 93584, 104818, 96591, 96196, 105360, 98220, 95194, 94655, 37647, 96754, 94286, 92900, 94665, 98076, 100398, 99156, 99162, 97936, 95511, 92399, 92385, 28282, 28111, 104789, 98194, 93577, 96422, 94491, 98688, 93591, 92345, 96510, 95081, 92714, 96325, 95964, 90397, 93595, 99205, 90422, 74802, 88012, 93585, 95260, 96084, 86231, 88016, 105361, 95464, 95258, 77687, 77690, 28118, 28120, 93578, 95286, 27153, 94612, 94625, 99050, 93581, 97425, 96747, 99478, 96637, 96614, 96714, 93151, 95252, 104785, 95948, 93600, 93582, 93201, 99744, 96744, 93588, 97006, 97650, 94611, 93580, 96748, 94469, 93598, 96602, 82235, 99155, 96625, 96603, 93590, 99159, 93592, 97649, 99382, 93587, 95557, 93597, 100265, 97651, 97347, 96642, 99450, 105324, 105325, 99519, 96624, 94449, 95660, 93759, 99209, 99294, 99293, 99248, 94170, 99208, 99210, 99246, 97289, 10002, 99215, 99216, 94150, 94169, 92664, 98921, 93471, 98922, 95116, 328, 95114, 27881, 69274, 94637, 94752, 93464, 98493, 93472, 93469, 95551, 99325, 97288, 94168, 96581, 94600, 99892, 99893, 99895, 99881, 93757, 99853, 93747, 47799, 95554, 64329, 94293, 98494, 40712, 94295, 59131, 93470, 93496, 93500, 67251, 45494, 99710, 93498, 94248, 99296, 99220, 98495, 93534, 99267, 99317, 99229, 93462, 99213, 95319, 93497, 99709, 99292, 101308, 95013, 95666, 95012, 100034, 94141, 19283, 93241, 92663, 92661, 93444, 42722, 42720, 99161, 93199, 94174, 92676, 97463, 99712, 93535, 99711, 99593, 98734, 94236, 94234, 96348, 99125, 11686, 27823, 94235, 93893, 93566, 93563, 97487, 93463, 99225, 98931, 96889, 96316, 99714, 99134, 93644, 93564, 94092, 98930, 97824, 96578, 93836, 91896, 96161, 97205, 99713, 95479, 98177, 93567, 96767, 96576, 99825, 92534, 37343, 4959, 1221, 1220, 1059, 643, 4960, 1072);
UPDATE `creature_model_info` SET `BoundingRadius`=0.32674834132194519, `CombatReach`=0.400000005960464477, `VerifiedBuild`=44730 WHERE `DisplayID` IN (101991, 101992, 101993);
UPDATE `creature_model_info` SET `BoundingRadius`=0.574241161346435546, `VerifiedBuild`=44730 WHERE `DisplayID`=98859;
UPDATE `creature_model_info` SET `BoundingRadius`=0.793866634368896484, `CombatReach`=1, `VerifiedBuild`=44730 WHERE `DisplayID`=98820;
UPDATE `creature_model_info` SET `BoundingRadius`=0.678112566471099853, `CombatReach`=1, `VerifiedBuild`=44730 WHERE `DisplayID` IN (92413, 92414);
UPDATE `creature_model_info` SET `BoundingRadius`=7.82753753662109375, `CombatReach`=9.600000381469726562, `VerifiedBuild`=44730 WHERE `DisplayID`=101903;
UPDATE `creature_model_info` SET `BoundingRadius`=0.745923817157745361, `CombatReach`=1.10000002384185791, `VerifiedBuild`=44730 WHERE `DisplayID` IN (92416, 92410);
UPDATE `creature_model_info` SET `BoundingRadius`=0.839329779148101806, `CombatReach`=1.5, `VerifiedBuild`=44730 WHERE `DisplayID`=96060;
UPDATE `creature_model_info` SET `BoundingRadius`=1.604430198669433593, `CombatReach`=2.099999904632568359, `VerifiedBuild`=44730 WHERE `DisplayID` IN (98791, 98790);
UPDATE `creature_model_info` SET `BoundingRadius`=0.844040274620056152, `CombatReach`=1.10000002384185791, `VerifiedBuild`=44730 WHERE `DisplayID`=92779;
UPDATE `creature_model_info` SET `BoundingRadius`=1.069305181503295898, `CombatReach`=1.25, `VerifiedBuild`=44730 WHERE `DisplayID` IN (94056, 94227);
UPDATE `creature_model_info` SET `BoundingRadius`=0.442157149314880371, `CombatReach`=2, `VerifiedBuild`=44730 WHERE `DisplayID`=99094;
UPDATE `creature_model_info` SET `BoundingRadius`=0.185789525508880615, `CombatReach`=0.150000005960464477, `VerifiedBuild`=44730 WHERE `DisplayID` IN (100455, 100454);
UPDATE `creature_model_info` SET `BoundingRadius`=0.780315995216369628, `CombatReach`=0.629999995231628417, `VerifiedBuild`=44730 WHERE `DisplayID`=100453;
UPDATE `creature_model_info` SET `BoundingRadius`=1.171437382698059082, `CombatReach`=2.20000004768371582, `VerifiedBuild`=44730 WHERE `DisplayID`=105245;
UPDATE `creature_model_info` SET `BoundingRadius`=3.663525342941284179, `VerifiedBuild`=44730 WHERE `DisplayID`=101783;
UPDATE `creature_model_info` SET `BoundingRadius`=0.244929656386375427, `VerifiedBuild`=44730 WHERE `DisplayID`=105558;
UPDATE `creature_model_info` SET `BoundingRadius`=2.083333253860473632, `CombatReach`=1, `VerifiedBuild`=44730 WHERE `DisplayID`=94613;
UPDATE `creature_model_info` SET `BoundingRadius`=0.445083141326904296, `CombatReach`=1.80000007152557373, `VerifiedBuild`=44730 WHERE `DisplayID`=99048;
UPDATE `creature_model_info` SET `BoundingRadius`=0.911385178565979003, `CombatReach`=2, `VerifiedBuild`=44730 WHERE `DisplayID`=92193;
UPDATE `creature_model_info` SET `BoundingRadius`=0.954861402511596679, `CombatReach`=2, `VerifiedBuild`=44730 WHERE `DisplayID`=94167;
UPDATE `creature_model_info` SET `BoundingRadius`=0.367219984531402587, `VerifiedBuild`=44730 WHERE `DisplayID`=93632;
UPDATE `creature_model_info` SET `BoundingRadius`=0.340989977121353149, `VerifiedBuild`=44730 WHERE `DisplayID`=96577;
UPDATE `creature_model_info` SET `BoundingRadius`=0.450024068355560302, `CombatReach`=0.699999988079071044, `VerifiedBuild`=44730 WHERE `DisplayID`=99297;
UPDATE `creature_model_info` SET `BoundingRadius`=1.167062759399414062, `CombatReach`=1, `VerifiedBuild`=44730 WHERE `DisplayID`=93445;
UPDATE `creature_model_info` SET `BoundingRadius`=2.62589120864868164, `CombatReach`=2.25, `VerifiedBuild`=44730 WHERE `DisplayID`=95007;
UPDATE `creature_model_info` SET `BoundingRadius`=0.797462046146392822, `CombatReach`=1.75, `VerifiedBuild`=44730 WHERE `DisplayID`=92192;
UPDATE `creature_model_info` SET `BoundingRadius`=1.181651949882507324, `CombatReach`=1, `VerifiedBuild`=44730 WHERE `DisplayID`=93565;
UPDATE `creature_model_info` SET `BoundingRadius`=1.139231443405151367, `CombatReach`=2.5, `VerifiedBuild`=44730 WHERE `DisplayID`=92191;

DELETE FROM `npc_vendor` WHERE (`entry`=185587 AND `item`=188031 AND `ExtendedCost`=7254 AND `type`=1) OR (`entry`=185587 AND `item`=188023 AND `ExtendedCost`=7254 AND `type`=1) OR (`entry`=185587 AND `item`=188016 AND `ExtendedCost`=7254 AND `type`=1) OR (`entry`=185587 AND `item`=188010 AND `ExtendedCost`=7254 AND `type`=1) OR (`entry`=185587 AND `item`=188027 AND `ExtendedCost`=7254 AND `type`=1) OR (`entry`=185587 AND `item`=188022 AND `ExtendedCost`=7254 AND `type`=1) OR (`entry`=185587 AND `item`=188015 AND `ExtendedCost`=7254 AND `type`=1) OR (`entry`=185587 AND `item`=188009 AND `ExtendedCost`=7254 AND `type`=1) OR (`entry`=185587 AND `item`=188028 AND `ExtendedCost`=7254 AND `type`=1) OR (`entry`=185587 AND `item`=188019 AND `ExtendedCost`=7254 AND `type`=1) OR (`entry`=185587 AND `item`=188035 AND `ExtendedCost`=7254 AND `type`=1) OR (`entry`=185587 AND `item`=188006 AND `ExtendedCost`=7254 AND `type`=1) OR (`entry`=185587 AND `item`=188032 AND `ExtendedCost`=7258 AND `type`=1) OR (`entry`=185587 AND `item`=188024 AND `ExtendedCost`=7258 AND `type`=1) OR (`entry`=185587 AND `item`=188036 AND `ExtendedCost`=7258 AND `type`=1) OR (`entry`=185587 AND `item`=188037 AND `ExtendedCost`=7258 AND `type`=1) OR (`entry`=185587 AND `item`=188030 AND `ExtendedCost`=7258 AND `type`=1) OR (`entry`=185587 AND `item`=188021 AND `ExtendedCost`=7258 AND `type`=1) OR (`entry`=185587 AND `item`=188014 AND `ExtendedCost`=7258 AND `type`=1) OR (`entry`=185587 AND `item`=188008 AND `ExtendedCost`=7258 AND `type`=1) OR (`entry`=185587 AND `item`=188029 AND `ExtendedCost`=7258 AND `type`=1) OR (`entry`=185587 AND `item`=188020 AND `ExtendedCost`=7258 AND `type`=1) OR (`entry`=185587 AND `item`=188013 AND `ExtendedCost`=7258 AND `type`=1) OR (`entry`=185587 AND `item`=188007 AND `ExtendedCost`=7258 AND `type`=1) OR (`entry`=185587 AND `item`=188033 AND `ExtendedCost`=7259 AND `type`=1) OR (`entry`=185587 AND `item`=188025 AND `ExtendedCost`=7259 AND `type`=1) OR (`entry`=185587 AND `item`=188017 AND `ExtendedCost`=7259 AND `type`=1) OR (`entry`=185587 AND `item`=188011 AND `ExtendedCost`=7259 AND `type`=1) OR (`entry`=185587 AND `item`=188034 AND `ExtendedCost`=7259 AND `type`=1) OR (`entry`=185587 AND `item`=188026 AND `ExtendedCost`=7259 AND `type`=1) OR (`entry`=185587 AND `item`=188018 AND `ExtendedCost`=7259 AND `type`=1) OR (`entry`=185587 AND `item`=188012 AND `ExtendedCost`=7259 AND `type`=1) OR (`entry`=185587 AND `item`=188054 AND `ExtendedCost`=7259 AND `type`=1) OR (`entry`=180948 AND `item`=187812 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=180948 AND `item`=6530 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=180948 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=180948 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=180948 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=180948 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=180948 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=180948 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=180948 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=180948 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(185587, 33, 188031, 0, 7254, 1, 0, 0, 44730), -- Harmonium Legplates
(185587, 32, 188023, 0, 7254, 1, 0, 0, 44730), -- Anthemic Legguards
(185587, 31, 188016, 0, 7254, 1, 0, 0, 44730), -- Staccato Leggings
(185587, 30, 188010, 0, 7254, 1, 0, 0, 44730), -- Choral Leggings
(185587, 29, 188027, 0, 7254, 1, 0, 0, 44730), -- Harmonium Helm
(185587, 28, 188022, 0, 7254, 1, 0, 0, 44730), -- Anthemic Coif
(185587, 27, 188015, 0, 7254, 1, 0, 0, 44730), -- Staccato Helm
(185587, 26, 188009, 0, 7254, 1, 0, 0, 44730), -- Choral Hood
(185587, 25, 188028, 0, 7254, 1, 0, 0, 44730), -- Harmonium Breastplate
(185587, 24, 188019, 0, 7254, 1, 0, 0, 44730), -- Anthemic Cuirass
(185587, 23, 188035, 0, 7254, 1, 0, 0, 44730), -- Staccato Vest
(185587, 22, 188006, 0, 7254, 1, 0, 0, 44730), -- Choral Vestments
(185587, 21, 188032, 0, 7258, 1, 0, 0, 44730), -- Harmonium Spaulders
(185587, 20, 188024, 0, 7258, 1, 0, 0, 44730), -- Anthemic Shoulders
(185587, 19, 188036, 0, 7258, 1, 0, 0, 44730), -- Staccato Mantle
(185587, 18, 188037, 0, 7258, 1, 0, 0, 44730), -- Choral Amice
(185587, 17, 188030, 0, 7258, 1, 0, 0, 44730), -- Harmonium Gauntlets
(185587, 16, 188021, 0, 7258, 1, 0, 0, 44730), -- Anthemic Gauntlets
(185587, 15, 188014, 0, 7258, 1, 0, 0, 44730), -- Staccato Grips
(185587, 14, 188008, 0, 7258, 1, 0, 0, 44730), -- Choral Handwraps
(185587, 13, 188029, 0, 7258, 1, 0, 0, 44730), -- Harmonium Percussive Stompers
(185587, 12, 188020, 0, 7258, 1, 0, 0, 44730), -- Anthemic Greaves
(185587, 11, 188013, 0, 7258, 1, 0, 0, 44730), -- Staccato Boots
(185587, 10, 188007, 0, 7258, 1, 0, 0, 44730), -- Choral Slippers
(185587, 9, 188033, 0, 7259, 1, 0, 0, 44730), -- Harmonium Girdle
(185587, 8, 188025, 0, 7259, 1, 0, 0, 44730), -- Anthemic Links
(185587, 7, 188017, 0, 7259, 1, 0, 0, 44730), -- Staccato Belt
(185587, 6, 188011, 0, 7259, 1, 0, 0, 44730), -- Choral Sash
(185587, 5, 188034, 0, 7259, 1, 0, 0, 44730), -- Harmonium Vambrace
(185587, 4, 188026, 0, 7259, 1, 0, 0, 44730), -- Anthemic Bracers
(185587, 3, 188018, 0, 7259, 1, 0, 0, 44730), -- Staccato Cuffs
(185587, 2, 188012, 0, 7259, 1, 0, 0, 44730), -- Choral Wraps
(185587, 1, 188054, 0, 7259, 1, 0, 0, 44730), -- Antecedent Drape
(180948, 10, 187812, 0, 0, 1, 0, 0, 44730), -- Empty Kettle
(180948, 9, 6530, 0, 0, 1, 0, 0, 44730), -- Nightcrawlers
(180948, 8, 6256, 0, 0, 1, 0, 0, 44730), -- Fishing Pole
(180948, 7, 6217, 0, 0, 1, 0, 0, 44730), -- Copper Rod
(180948, 6, 39505, 0, 0, 1, 0, 0, 44730), -- Virtuoso Inking Set
(180948, 5, 20815, 0, 0, 1, 0, 0, 44730), -- Jeweler's Kit
(180948, 4, 5956, 0, 0, 1, 0, 0, 44730), -- Blacksmith Hammer
(180948, 3, 7005, 0, 0, 1, 0, 0, 44730), -- Skinning Knife
(180948, 2, 85663, 0, 0, 1, 0, 0, 44730), -- Herbalist's Spade
(180948, 1, 2901, 0, 0, 1, 0, 0, 44730); -- Mining Pick



DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (183792,181939,182098,182100,187441,187696,187719));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(183792, 0, 0, 0, 2057, 44730),
(181939, 0, 0, 0, 2057, 44730),
(182098, 0, 0, 0, 2057, 44730),
(182100, 0, 0, 0, 2057, 44730),
(187441, 0, 0, 0, 2057, 44730),
(187696, 0, 0, 0, 746, 44730),
(187719, 0, 0, 0, 371, 44730);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=44730 WHERE (`DifficultyID`=0 AND `Entry` IN (181222,182121,184940,185609,185543,185190,185755,178232,181295,178233,182146,181077,182692,184235,185511,179004,182458,178159,181119,185587,180748,181172,181179,182877,180630,184423,184406,183739,182373,182294,181408,182758,181084,185090,181086,185058,185057,185056,183298,184767,185055,185064,185065,185063,185062,185061,183970,185060,185035,181292,185039,185038,185040,185051,185053,185052,185054,185034,185036,182437,181838,185045,185044,185049,185048,185047,183969,185046,181839,185067,185068,181837,181905,178135,181834,181862,178134,185066,182438,185071,184945,178137,178136,185070,185069,185072,183265,183408,181586,182876,183268,183257,184389,183287,185498,184556,184555,183258,184557,184390,184554,184551,145146,185455,184553,184552,185261,184543,181946,183225,184541,184542,183217,184538,184569,184550,184549,184548,184393,183242,183284,183283,183565,184896,183308,184897,184892,183273,183227,184894,184895,184893,184565,184564,184563,182330,181397,182303,184076,184077,184044,177517,180165,180075,184082,177958,184483,186209,180043,183639,178158,182247,182301,182335,184516,185299,178326,183631,184750,184684,186211,181555,178346,181495,182354,158637,185430,180089,180085,180050,181562,180919,177376,181146,184943,181102,183277,185265,182568,182473,183721,182474,181098,181122,181108,181123,181091,182569,181109,184391,185277,182135,184561,184560,181797,183303,184566,182292,183304,184568,184567,183747,182293,183274,183228,178129,182289,184558,178155,181385,184944,182256,182284,182214,178238,182265,182268,182267,181193,182255,181344,184942,183142,177695,182324,177691,177690,177689,184751,181349,184324,177694,181571,177688,184756,177693,177723,182131,178154,184670,182296,181782,183465,184322,184321,183971,185750,181383,183869,181369,181366,183911,183838,182096,181857,181392,181484,181375,181339,181330,181359,181884,181352,180669,180656,183546,182314,182315,182254,183768,182252,184045,183769,184046,182319,182260,182282,183146,183889,185295,181110,182316,182281,178099,182216,185292,181500,181027,25171,181028,181995,180051,183966,184056,183263,180654,182259,183270,183262,184194,181580,181558,181093,184690,180652,183904,180655,181007,180049,182768,181293,180653,183291,180641,178935,183468,182107,178093,182234,182769,180916,185702,180931,180948,181183,180927,180926,180933,184460,182681,184934,185630,181003,178936,177486,180936,178015,182257,180918,180956,178895,183349,180052,184487,184486,184239,185798,183903,185713,180961,180950,183143,182218,181006,180923,180920,182245,177476,185807,178196,180715,177432,172538,178909,55455,185488,183963,178098,180650,182113,181490,184071,178913,178094,185291,185457,182116,183378,185282,185285,181362,181361,175217,181681,174564,176146,156479,176137,176169,176165,178997,156672,168353,164368,184055,165379,164367,156696,156690,156667,156671,156694,156669,156683,173351,156777,164736,156666,156668,156732,156685,156670,167738,156681,156733,156687,156686,175211,156689,173571,156691,114665,156692,175209,175083,175210,174922,164095,168011,175016,164096,175213,171790,187734,175082,171787,183720,164579,167591,55370,164079,175080,162896,186199,171821,171795,173386,171299,176067,176368,176065,176064,176066,175081,171589,156504,32639,32638,183830,159478,164099,164098,164100,164684,164078,166284,165657,173370,185576,169524,165796,156735,175067,156758,175066,173369,156791,166312,173356,156768,156769,173355,173354,173357,156664,156663,175222,164596,176332,173353,173352,162928,170310,175214,142666,142668,162929,32642,32641,73400,175218,170640,175216,173318,175042,170607,175019,156734,175212,173330,162918,173327,175035,175036,171796,170256,182864,170557,171822,178804,173350,173301,173348,175215,173302,164352,173305,164353,175020,173304,164685,175018,156688,175087,175207,173367,173325,167881,166061,176197,164123,167880,175208,175206,165403,173118,173364,165405,175017,172702,176267,173300,164803,164686,164173,185405,185406,175327,162666,176545,156698,172058,174636,168731,158599,168359,166165,158504,166161,174794,166332,174676,168438,156228,168428,168437,174635,158510,158509,168309,170415,168333,168268,166166,168613,161063,168245,168244,157728,175777,158772,157725,168442,168407,168984,168948,168943,157761,169114,169099,166869,156376,177543,169123,158005,158081,158179,158004,170932,158150,169163,157967,157973,158110,169179,169158,158054,169509,156279,170325,172124,160606,168240,165068,165055,175651,161499,169513,160608,160629,156586,158427,172714,174998,173130,173206,173205,173204,161536,171666,171664,171668,171712,170333,171670,168466,170334,169126,175653,168919,170248,172196,168936,170335,170328,168624,168915,170247,168410,168877,169572,175276,168872,170330,170329,170331,170332,168866,170393,168397,170392,160602,160223,62862,171526,157962,175196,163974,160435,160434,160432,160430,160428,172206,171037,175426,160470,159423,172839,160274,170284,163427,160285,160437,160569,160178,164370,164369,160581,160175,160174,160173,167871,179379,153436,154625,153456,154627,175823,175825,54638,160037,167867,178075,154580,154583,160325,154586,154585,154564,174269,62822,62821,174937,176100,160212,154567,171036,175907,159421,164590,160449,174581,158773,174188,164591,160389,160386,160391,168517,179800,121541,160387,167745,160390,159532,174583,154527,154635,168485,171816,171981,171973,173057,171959,171958,168519,174582,174580,168427,175495,175494,175493,168430,154630,154631,51372,61143,2957,2956,3035,2959,6271,2620));


UPDATE `creature_model_info` SET `VerifiedBuild`=44730 WHERE `DisplayID` IN (104969, 101572, 98797, 104584, 103256, 105246, 101970, 101911, 98897, 104869, 105142, 105568, 96828, 105238, 101909, 100985, 104059, 102641, 101884, 102611, 98798, 102612, 100849, 104016, 102577, 101906, 105486, 100558, 100374, 105488, 98860, 98858, 98861, 60928, 105283, 98822, 105629, 98823, 98821, 103134, 104771, 104770, 98898, 100915, 100452, 105693, 101049, 104769, 104772, 100129, 105040, 105694, 93574, 105334, 98855, 93952, 104999, 102008, 101914, 103103, 104063, 103102, 104062, 102089, 94224, 104805, 101006, 100366, 93853, 98975, 100375, 100365, 105011, 105243, 100091, 100095, 98527, 101849, 92417, 101851, 97817, 22452, 104586, 104583, 100371, 92411, 97600, 104803, 98830, 95771, 95966, 95880, 95747, 97355, 102146, 104972, 105607, 105606, 98795, 104884, 105605, 100131, 102145, 104885, 100850, 105604, 104710, 98804, 104781, 98531, 95158, 74230, 104974, 104911, 98826, 100449, 100448, 98976, 100120, 98978, 105006, 98977, 98833, 17200, 98796, 103435, 100128, 105557, 94225, 100675, 98824, 94226, 103436, 98854, 98834, 100378, 98789, 105507, 17188, 98788, 100996, 102865, 101005, 100450, 98799, 100987, 98825, 98866, 98846, 102127, 102126, 100994, 98968, 98973, 71887, 101990, 100976, 105244, 105627, 104967, 52334, 98974, 92398, 101996, 105234, 98508, 105239, 98506, 105237, 102043, 100733, 98509, 104014, 86964, 104562, 101478, 104964, 104867, 103087, 104868, 101775, 100380, 100377, 98895, 101987, 98828, 98829, 103135, 104976, 105519, 98816, 101214, 105241, 98837, 104965, 100381, 100993, 105236, 101985, 100379, 105460, 100732, 105459, 100995, 104973, 105242, 98836, 100731, 101048, 98835, 105126, 104860, 104896, 101054, 101215, 101986, 98818, 61527, 101984, 98838, 105286, 103751, 103756, 94586, 100187, 1544, 96327, 93232, 96332, 97029, 104817, 68476, 100263, 100264, 100886, 96330, 95529, 93594, 94471, 99051, 96329, 96423, 93576, 96326, 93951, 94627, 101418, 96587, 93579, 95042, 94614, 93599, 24103, 73366, 94021, 97424, 93589, 96281, 93586, 96086, 93593, 97025, 93596, 93584, 104818, 96591, 96196, 105360, 98220, 95194, 94655, 37647, 96754, 94286, 92900, 94665, 98076, 100398, 99156, 99162, 97936, 95511, 92399, 92385, 28282, 28111, 104789, 98194, 93577, 96422, 94491, 98688, 93591, 92345, 96510, 95081, 92714, 96325, 95964, 90397, 93595, 99205, 90422, 74802, 88012, 93585, 95260, 96084, 86231, 88016, 105361, 95464, 95258, 77687, 77690, 28118, 28120, 93578, 95286, 27153, 94612, 94625, 99050, 93581, 97425, 96747, 99478, 96637, 96614, 96714, 93151, 95252, 104785, 95948, 93600, 93582, 93201, 99744, 96744, 93588, 97006, 97650, 94611, 93580, 96748, 94469, 93598, 96602, 82235, 99155, 96625, 96603, 93590, 99159, 93592, 97649, 99382, 93587, 95557, 93597, 100265, 97651, 97347, 96642, 99450, 105324, 105325, 99519, 96624, 94449, 95660, 93759, 99209, 99294, 99293, 99248, 94170, 99208, 99210, 99246, 97289, 10002, 99215, 99216, 94150, 94169, 92664, 98921, 93471, 98922, 95116, 328, 95114, 27881, 69274, 94637, 94752, 93464, 98493, 93472, 93469, 95551, 99325, 97288, 94168, 96581, 94600, 99892, 99893, 99895, 99881, 93757, 99853, 93747, 47799, 95554, 64329, 94293, 98494, 40712, 94295, 59131, 93470, 93496, 93500, 67251, 45494, 99710, 93498, 94248, 99296, 99220, 98495, 93534, 99267, 99317, 99229, 93462, 99213, 95319, 93497, 99709, 99292, 101308, 95013, 95666, 95012, 100034, 94141, 19283, 93241, 92663, 92661, 93444, 42722, 42720, 99161, 93199, 94174, 92676, 97463, 99712, 93535, 99711, 99593, 98734, 94236, 94234, 96348, 99125, 11686, 27823, 94235, 93893, 93566, 93563, 97487, 93463, 99225, 98931, 96889, 96316, 99714, 99134, 93644, 93564, 94092, 98930, 97824, 96578, 93836, 91896, 96161, 97205, 99713, 95479, 98177, 93567, 96767, 96576, 99825, 92534, 37343, 4959, 1221, 1220, 1059, 643, 4960, 1072);
UPDATE `creature_model_info` SET `BoundingRadius`=0.32674834132194519, `CombatReach`=0.400000005960464477, `VerifiedBuild`=44730 WHERE `DisplayID` IN (101991, 101992, 101993);
UPDATE `creature_model_info` SET `BoundingRadius`=0.574241161346435546, `VerifiedBuild`=44730 WHERE `DisplayID`=98859;
UPDATE `creature_model_info` SET `BoundingRadius`=0.793866634368896484, `CombatReach`=1, `VerifiedBuild`=44730 WHERE `DisplayID`=98820;
UPDATE `creature_model_info` SET `BoundingRadius`=0.678112566471099853, `CombatReach`=1, `VerifiedBuild`=44730 WHERE `DisplayID` IN (92413, 92414);
UPDATE `creature_model_info` SET `BoundingRadius`=7.82753753662109375, `CombatReach`=9.600000381469726562, `VerifiedBuild`=44730 WHERE `DisplayID`=101903;
UPDATE `creature_model_info` SET `BoundingRadius`=0.745923817157745361, `CombatReach`=1.10000002384185791, `VerifiedBuild`=44730 WHERE `DisplayID` IN (92416, 92410);
UPDATE `creature_model_info` SET `BoundingRadius`=0.839329779148101806, `CombatReach`=1.5, `VerifiedBuild`=44730 WHERE `DisplayID`=96060;
UPDATE `creature_model_info` SET `BoundingRadius`=1.604430198669433593, `CombatReach`=2.099999904632568359, `VerifiedBuild`=44730 WHERE `DisplayID` IN (98791, 98790);
UPDATE `creature_model_info` SET `BoundingRadius`=0.844040274620056152, `CombatReach`=1.10000002384185791, `VerifiedBuild`=44730 WHERE `DisplayID`=92779;
UPDATE `creature_model_info` SET `BoundingRadius`=1.069305181503295898, `CombatReach`=1.25, `VerifiedBuild`=44730 WHERE `DisplayID` IN (94056, 94227);
UPDATE `creature_model_info` SET `BoundingRadius`=0.442157149314880371, `CombatReach`=2, `VerifiedBuild`=44730 WHERE `DisplayID`=99094;
UPDATE `creature_model_info` SET `BoundingRadius`=0.185789525508880615, `CombatReach`=0.150000005960464477, `VerifiedBuild`=44730 WHERE `DisplayID` IN (100455, 100454);
UPDATE `creature_model_info` SET `BoundingRadius`=0.780315995216369628, `CombatReach`=0.629999995231628417, `VerifiedBuild`=44730 WHERE `DisplayID`=100453;
UPDATE `creature_model_info` SET `BoundingRadius`=1.171437382698059082, `CombatReach`=2.20000004768371582, `VerifiedBuild`=44730 WHERE `DisplayID`=105245;
UPDATE `creature_model_info` SET `BoundingRadius`=3.663525342941284179, `VerifiedBuild`=44730 WHERE `DisplayID`=101783;
UPDATE `creature_model_info` SET `BoundingRadius`=0.244929656386375427, `VerifiedBuild`=44730 WHERE `DisplayID`=105558;
UPDATE `creature_model_info` SET `BoundingRadius`=2.083333253860473632, `CombatReach`=1, `VerifiedBuild`=44730 WHERE `DisplayID`=94613;
UPDATE `creature_model_info` SET `BoundingRadius`=0.445083141326904296, `CombatReach`=1.80000007152557373, `VerifiedBuild`=44730 WHERE `DisplayID`=99048;
UPDATE `creature_model_info` SET `BoundingRadius`=0.911385178565979003, `CombatReach`=2, `VerifiedBuild`=44730 WHERE `DisplayID`=92193;
UPDATE `creature_model_info` SET `BoundingRadius`=0.954861402511596679, `CombatReach`=2, `VerifiedBuild`=44730 WHERE `DisplayID`=94167;
UPDATE `creature_model_info` SET `BoundingRadius`=0.367219984531402587, `VerifiedBuild`=44730 WHERE `DisplayID`=93632;
UPDATE `creature_model_info` SET `BoundingRadius`=0.340989977121353149, `VerifiedBuild`=44730 WHERE `DisplayID`=96577;
UPDATE `creature_model_info` SET `BoundingRadius`=0.450024068355560302, `CombatReach`=0.699999988079071044, `VerifiedBuild`=44730 WHERE `DisplayID`=99297;
UPDATE `creature_model_info` SET `BoundingRadius`=1.167062759399414062, `CombatReach`=1, `VerifiedBuild`=44730 WHERE `DisplayID`=93445;
UPDATE `creature_model_info` SET `BoundingRadius`=2.62589120864868164, `CombatReach`=2.25, `VerifiedBuild`=44730 WHERE `DisplayID`=95007;
UPDATE `creature_model_info` SET `BoundingRadius`=0.797462046146392822, `CombatReach`=1.75, `VerifiedBuild`=44730 WHERE `DisplayID`=92192;
UPDATE `creature_model_info` SET `BoundingRadius`=1.181651949882507324, `CombatReach`=1, `VerifiedBuild`=44730 WHERE `DisplayID`=93565;
UPDATE `creature_model_info` SET `BoundingRadius`=1.139231443405151367, `CombatReach`=2.5, `VerifiedBuild`=44730 WHERE `DisplayID`=92191;


UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=84671, `VerifiedBuild`=44730 WHERE (`MenuID`=25583 AND `OptionID`=0); -- OptionBroadcastTextID: 84671 - 84671
UPDATE `gossip_menu_option` SET `VerifiedBuild`=44730 WHERE (`OptionID`=0 AND `MenuID` IN (25654,26775)) OR (`OptionID`=1 AND `MenuID`=27692);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=44730 WHERE (`OptionID`=7 AND `MenuID`=26892) OR (`OptionID`=0 AND `MenuID` IN (27370,27526,27680,27637,27411,27477,27259,27692)) OR (`OptionID`=1 AND `MenuID` IN (27637,27259));
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=64115, `BoxBroadcastTextID`=66369, `VerifiedBuild`=44730 WHERE (`MenuID`=9821 AND `OptionID`=2); -- BoxBroadcastTextID: 66369 - 66369OptionBroadcastTextID: 64115 - 64115
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=12271, `VerifiedBuild`=44730 WHERE (`MenuID`=25591 AND `OptionID`=0); -- OptionBroadcastTextID: 12271 - 12271 - 140511 - 140511 - 158191 - 158191

DELETE FROM `creature_template` WHERE `entry`=184324;
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(184324, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 67141632, 2048, 0, 64, 0, 1); -- Wiggling Annelid


UPDATE `creature_template` SET `unit_flags`=536903680 WHERE `entry`=183287; -- Vespoid Fighter
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=180050; -- Cervid Protector
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=190, `npcflag`=16777216, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912, `unit_flags3`=16777216 WHERE `entry`=183792; -- Devourer Fissure
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=178155; -- Scarabid Burrower
UPDATE `creature_template` SET `faction`=1736 WHERE `entry`=182256; -- Ascended Crusader
UPDATE `creature_template` SET `faction`=1692 WHERE `entry`=182284; -- Dreadsworn Guard
UPDATE `creature_template` SET `faction`=1692 WHERE `entry`=182214; -- Mawsworn Annihilator
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=178238; -- Desert Raptora
UPDATE `creature_template` SET `speed_run`=1.385714292526245117 WHERE `entry`=181193; -- Highlord Darion Mograine
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=181349; -- Cipherclad
UPDATE `creature_template` SET `unit_flags`=2130176 WHERE `entry`=177688; -- Automa Protector
UPDATE `creature_template` SET `faction`=3263, `unit_flags`=537133888, `unit_flags2`=2099201, `unit_flags3`=8192 WHERE `entry`=177693; -- Automa Colossus
UPDATE `creature_template` SET `unit_flags`=537166592, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=181782; -- Mawsworn Converter

UPDATE `creature_template` SET `unit_flags`=67108864, `unit_flags3`=131072 WHERE `entry`=181383; -- Mawtouched Grazer
UPDATE `creature_template` SET `dynamicflags`=128 WHERE `entry` IN (181369, 181366, 181392, 181375, 180669, 180656, 180654, 180652, 180655, 180653, 180641, 180650); -- Progenitor Forge
UPDATE `creature_template` SET `HoverHeight`=3 WHERE `entry`=182096; -- Enhanced Avian
UPDATE `creature_template` SET `BaseAttackTime`=2000, `unit_flags`=67108864, `unit_flags3`=131072 WHERE `entry`=181484; -- Mawtouched Animate
UPDATE `creature_template` SET `faction`=35, `unit_flags`=32768 WHERE `entry`=181339; -- Forge Defense Node
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=182315; -- Vombata Prototype
UPDATE `creature_template` SET `unit_flags`=33040 WHERE `entry`=182252; -- Fauna Guardian
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=182282; -- Frothing Gorger
UPDATE `creature_template` SET `dynamicflags`=128 WHERE `entry`=183146; -- Prying Eye
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=182281; -- Insatiable Scavenger
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=178099; -- Cervid Protector
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=181028; -- Dormant Architect
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=180051; -- Lupine Animate
UPDATE `creature_template` SET `gossip_menu_id`=27540 WHERE `entry`=183262; -- Echoed Jiro Genesii
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=536904448, `unit_flags2`=2048, `dynamicflags`=128 WHERE `entry`=182098; -- Injured Vombata
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=190, `npcflag`=16777216, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=182100; -- Trapped Leporid
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=178935; -- Vombata Matron
UPDATE `creature_template` SET `dynamicflags`=128 WHERE `entry`=182107; -- Damaged Dormant Automa
UPDATE `creature_template` SET `gossip_menu_id`=27259 WHERE `entry`=180916; -- Anap
UPDATE `creature_template` SET `gossip_menu_id`=27291 WHERE `entry`=180926; -- Custodian Kalir
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=184460; -- Taelia Fordragon
UPDATE `creature_template` SET `gossip_menu_id`=27299, `npcflag`=3 WHERE `entry`=181003; -- Al'dalil
UPDATE `creature_template` SET `gossip_menu_id`=27262 WHERE `entry`=180936; -- Rana

UPDATE `creature_template` SET `gossip_menu_id`=27263 WHERE `entry`=180950; -- Avna
UPDATE `creature_template` SET `gossip_menu_id`=27260 WHERE `entry`=180923; -- Varoun
UPDATE `creature_template` SET `gossip_menu_id`=9821 WHERE `entry`=180920; -- Siloh

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=534, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=18432 WHERE `entry`=187441; -- Lady Jaina Proudmoore
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=2110, `BaseAttackTime`=2000, `unit_flags`=33587968, `unit_flags2`=2048, `unit_flags3`=16777216 WHERE `entry`=187696; -- Archmage Khadgar
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048, `unit_flags3`=16777216 WHERE `entry`=187719; -- Avian Fledgling

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=2908, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33587968, `unit_flags2`=18432, `unit_flags3`=16777216 WHERE `entry`=187734; -- Taelia Fordragon


UPDATE `creature_template` SET `npcflag`=281474976710659 WHERE `entry`=173386; -- Calia Menethil

UPDATE `creature_template` SET `faction`=35 WHERE `entry`=32642; -- Mojodishu
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=32641; -- Drix Blackwrench

UPDATE `creature_template` SET `dynamicflags`=128 WHERE `entry`=166166; -- Centurion Colossus
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=168943; -- Goldenpaw Stalker
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=170932; -- Cloudfeather Guardian
UPDATE `creature_template` SET `unit_flags`=33024 WHERE `entry`=160629; -- Baedos

UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=51372; -- Thunder Bluff Wind Rider


UPDATE `quest_template` SET `VerifiedBuild`=44730 WHERE `ID` IN (65463, 65461, 65432, 64760, 64758, 64743, 64744, 64742, 64741, 65727, 65774, 65259, 65748, 63850, 65349, 65064, 64771, 65250, 65749, 63053, 61136, 52954, 61125, 62286, 60991, 50287, 61346, 49091, 50496, 53078, 51908, 54619, 51583, 54544, 50461, 41167, 51467, 51806, 51609, 52936, 53963, 52849, 52181, 51623, 52199, 51463, 49198, 62209, 63044, 50468, 51120, 60992, 60990, 50570, 52456, 51664, 52798, 54543, 54616, 61728, 62210, 54591, 52278, 54329, 51842, 55304, 61140, 65255, 59230, 51117, 58918, 51764, 52754, 61124, 51901, 65403, 51625, 62539, 50521, 61565, 50874, 51431, 50786, 65252, 51377, 51084, 50548, 49099, 49097, 51738, 52299, 52937, 62287, 50667, 51173, 65143, 51495, 51228, 55215, 65096, 51629, 52383, 59016, 60622, 55344, 59183, 52875, 52218, 62211, 51412, 65262, 59441, 62280, 60092, 44555, 39733, 39864, 61982, 58975, 61303, 60950, 60929, 60911, 60872, 60609, 61468, 61791, 61815, 61870, 61879, 61948, 60659, 62258, 61708, 60656, 61593, 63950, 57650, 64273, 64531, 63959, 64194, 63823, 64043, 63783, 59585, 58605, 59848, 63039, 61667, 61141, 56120, 50602, 50598, 60454, 60412, 60434, 47797, 46736, 46735, 46277, 66042, 64783, 63949, 63903, 62719, 62700, 60493, 53435);
UPDATE `quest_template` SET `RewardCurrencyID1`=1553, `RewardCurrencyQty1`=500, `VerifiedBuild`=44730 WHERE `ID`=54358; -- Darkshore Donations: Scarlet Diamond
UPDATE `quest_template` SET `RewardBonusMoney`=390, `VerifiedBuild`=44730 WHERE `ID`=45812; -- Assault on Val'sharah
UPDATE `quest_template` SET `ContentTuningID`=290, `VerifiedBuild`=44730 WHERE `ID`=54334; -- Darkshore Donations: Electroshock Mount Motivator
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=44730 WHERE `ID`=65031; -- Battlegrounds
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=44730 WHERE `ID`=64846; -- Torghast
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=44730 WHERE `ID`=62279; -- Revendreth
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=44730 WHERE `ID`=62277; -- Ardenweald
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=44730 WHERE `ID`=62278; -- Maldraxxus
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=44730 WHERE `ID`=62275; -- Bastion
UPDATE `quest_template` SET `RewardBonusMoney`=65, `VerifiedBuild`=44730 WHERE `ID`=39731; -- The Tranquil Forest
UPDATE `quest_template` SET `RewardBonusMoney`=65, `VerifiedBuild`=44730 WHERE `ID`=39718; -- Paradise Lost


UPDATE `quest_objectives` SET `VerifiedBuild`=44730 WHERE `ID` IN (423044, 423040, 422946, 423070, 421909, 423063, 421354, 421896, 421564, 421351, 421511, 422501, 421347, 421348, 421908, 421448, 421447, 421446, 421435, 422486, 422485, 422484, 423238, 423332, 422599, 423255, 419962, 423112, 422130, 422131, 423066, 422168, 422150, 421428, 421427, 421426, 421396, 423264, 409123, 409122, 405249, 340380, 405228, 407607, 405227, 312149, 312067, 312066, 312065, 312064, 312063, 405657, 332886, 340701, 340700, 337499, 387774, 336366, 387581, 312629, 335944, 337225, 336452, 340308, 340306, 340305, 340304, 340303, 385303, 385302, 385301, 385300, 385299, 385298, 385297, 340090, 338260, 336541, 338355, 338354, 338353, 337830, 336755, 336754, 336753, 336747, 407425, 409050, 322737, 334791, 387012, 405143, 406321, 333109, 339028, 339027, 336654, 341366, 339941, 339940, 339939, 339938, 339937, 387579, 387770, 406588, 407428, 288711, 288650, 387715, 338609, 386954, 337362, 389006, 389005, 405251, 386964, 422514, 422616, 422513, 422512, 422511, 422510, 396185, 334783, 395108, 337105, 337104, 337103, 337102, 337101, 337100, 337099, 337098, 337097, 337096, 337095, 337094, 337093, 339682, 405226, 337493, 422872, 341820, 336544, 407909, 332933, 332932, 406320, 334144, 335866, 333822, 333821, 422509, 335626, 335625, 334693, 334860, 334859, 334858, 334857, 334856, 334855, 334854, 333056, 336965, 336964, 338674, 340309, 407609, 333504, 335047, 422236, 336001, 336000, 335999, 335998, 335997, 335200, 335199, 388898, 388897, 422088, 422089, 341826, 336552, 338871, 395346, 399070, 389035, 389034, 396133, 385413, 385412, 340168, 340167, 340166, 340165, 340164, 340163, 340162, 338403, 407429, 335762, 422614, 396453, 407641, 407625, 407624, 397534, 279996, 282101, 280872, 285005, 406934, 404547, 395236, 405569, 405568, 405128, 405055, 405097, 405027, 405026, 405012, 405011, 404953, 408966, 399043, 405945, 406713, 406731, 406768, 406790, 406868, 408943, 408942, 408941, 405225, 405224, 407577, 407572, 407571, 407592, 407591, 406539, 407808, 406538, 407152, 404613, 404746, 404745, 404744, 404612, 404579, 404741, 404611, 404609, 404608, 404610, 407575, 406364, 406363, 406362, 420245, 394355, 396820, 396818, 392836, 420833, 420832, 420831, 420830, 421032, 420277, 420741, 420744, 420312, 420311, 420310, 420308, 420309, 420428, 420427, 420307, 420298, 419883, 419882, 420488, 419750, 407664, 396533, 396532, 396528, 394456, 397112, 409209, 397125, 397124, 397111, 409034, 406454, 406456, 406455, 408060, 405334, 405331, 390280, 337022, 336162, 398452, 398447, 398640, 398639, 398638, 398637, 398636, 398569, 398568, 290967, 290966, 290965, 290964, 289536, 289535, 289167, 427064, 423785, 423784, 423783, 423782, 423781, 423780, 423779, 423778, 421425, 421424, 421423, 421422, 421421, 421420, 421419, 421417, 421948, 421947, 421946, 421945, 421944, 421943, 421942, 421941, 421940, 421939, 420917, 421394, 420319, 421393, 420374, 420373, 421171, 420320, 420318, 420171, 408884, 408359, 408227, 408183, 398485, 398486, 398389, 341368);


UPDATE `quest_visual_effect` SET `VerifiedBuild`=44730 WHERE (`Index`=0 AND `ID` IN (423040,422946,421351,421347,421448,421447,421446,422599,423255,422131,423066,421428,421427,421426,421396,409123,409122,405249,405228,405227,312149,387774,340090,338260,338355,337830,336755,336754,336753,336747,407425,409050,405143,339028,339027,339937,387770,406588,407428,288711,338609,389006,389005,405251,422514,396185,395108,337105,337101,337100,337099,337098,337097,339682,405226,336544,332933,332932,335866,333821,422509,335626,335625,334860,334859,334858,334857,334856,334855,334854,333504,335998,335997,335200,335199,388898,388897,336552,399070,389034,396133,338403,407429,335762,422614,396453,407641,407625,407624,279996,282101,280872,285005,406934,405569,405568,405128,405055,405097,405027,405026,405012,405011,408966,399043,406713,406768,406790,406868,405225,405224,407572,407571,407591,406539,406538,407152,404613,404612,404579,406364,406363,406362,420245,420277,420741,420744,420311,420310,420308,420309,420428,420427,420307,419882,396532,396528,394456,397112,409209,397125,397124,397111,406456,406455,405334,405331,398452,290967,423779,421171,420171)) OR (`Index`=26 AND `ID`=423255) OR (`Index`=25 AND `ID`=423255) OR (`Index`=24 AND `ID`=423255) OR (`Index`=23 AND `ID`=423255) OR (`Index`=22 AND `ID`=423255) OR (`Index`=21 AND `ID`=423255) OR (`Index`=20 AND `ID`=423255) OR (`Index`=19 AND `ID`=423255) OR (`Index`=18 AND `ID`=423255) OR (`Index`=17 AND `ID`=423255) OR (`Index`=16 AND `ID`=423255) OR (`Index`=15 AND `ID`=423255) OR (`Index`=14 AND `ID`=423255) OR (`Index`=13 AND `ID`=423255) OR (`Index`=12 AND `ID`=423255) OR (`Index`=11 AND `ID` IN (423255,387774)) OR (`Index`=10 AND `ID` IN (423255,387774)) OR (`Index`=9 AND `ID` IN (423255,387774)) OR (`Index`=8 AND `ID` IN (423255,387774)) OR (`Index`=7 AND `ID` IN (423255,409123,387774)) OR (`Index`=6 AND `ID` IN (423255,409123,387774,279996,282101,280872,285005)) OR (`Index`=5 AND `ID` IN (423255,409123,387774,279996,282101,280872,285005,405027,394456)) OR (`Index`=4 AND `ID` IN (423255,409123,387774,279996,282101,280872,285005,405027,399043,394456)) OR (`Index`=3 AND `ID` IN (423255,409123,387774,387770,279996,282101,280872,285005,405027,399043,396532,394456)) OR (`Index`=2 AND `ID` IN (423255,409123,387774,387770,335200,279996,282101,280872,285005,405027,399043,404612,404579,420245,396532,396528,394456,405331)) OR (`Index`=1 AND `ID` IN (423255,409123,387774,387770,332933,335625,334854,335200,407641,407625,407624,279996,282101,280872,285005,405027,408966,399043,404612,404579,420245,420311,420310,420308,420309,420427,396532,396528,394456,397124,406456,405331));


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=44730 WHERE (`Idx`=0 AND `QuestID` IN (61468,62719));

DELETE FROM `creature_template` WHERE `entry`=184324;
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `unit_class`, `WidgetSetID`, `WidgetSetUnitConditionID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `VerifiedBuild`) VALUES
(184324, 0, 0, 'Wiggling Annelid', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 42, 1, 0, 0, 0.5, 1, 0, 0, 208350, 44730); -- Wiggling Annelid

UPDATE `creature_template` SET `VerifiedBuild`=44730 WHERE `entry` IN (156696, 156698, 183565, 165657, 174635, 174636, 156732, 156733, 156734, 156735, 156758, 174667, 174676, 156768, 183631, 156769, 183639, 156777, 156791, 170247, 170248, 170256, 62821, 62822, 165796, 170284, 183720, 183721, 183739, 170310, 62862, 183747, 174794, 170325, 170328, 170329, 170330, 170331, 170332, 170333, 170334, 170335, 183768, 183769, 183792, 161410, 183801, 170392, 170393, 183830, 183838, 170415, 179379, 304, 305, 183869, 63002, 161499, 183889, 174937, 183903, 183904, 183911, 143622, 161536, 174998, 183963, 183966, 183969, 166061, 183970, 175016, 183971, 175017, 175018, 175019, 416, 175020, 417, 170557, 175035, 175036, 175042, 18363, 18364, 18365, 175066, 175067, 18377, 18378, 18379, 18380, 175080, 175081, 175082, 175083, 170607, 175087, 184044, 184045, 184046, 184055, 184056, 166161, 184071, 170640, 166165, 166166, 184076, 184077, 184082, 179612, 175196, 175206, 175207, 175208, 175209, 175210, 175211, 175212, 175213, 175214, 175215, 175216, 175217, 175218, 175222, 184186, 166284, 184194, 121541, 166312, 175276, 184235, 184239, 166332, 179800, 175327, 58960, 184321, 58965, 184322, 170932, 175426, 184389, 184390, 184391, 184393, 184406, 184423, 32207, 175493, 175494, 175495, 184460, 171036, 171037, 54638, 184483, 184486, 184487, 184516, 180043, 180049, 180050, 180051, 180052, 184538, 184541, 184542, 184543, 184548, 184549, 184550, 184551, 184552, 180075, 184553, 184554, 184555, 184556, 184557, 184558, 184560, 184561, 180085, 184563, 184564, 184565, 184566, 180089, 184567, 184568, 184569, 166663, 157725, 157728, 99541, 175651, 175653, 157761, 14505, 180165, 184670, 184684, 184690, 171299, 175777, 184750, 184751, 184756, 184767, 153436, 175823, 166869, 175825, 153456, 157962, 157967, 157973, 32638, 32639, 32641, 32642, 175907, 158004, 158005, 184892, 184893, 184894, 184895, 184896, 184897, 158054, 184934, 184940, 184942, 184943, 158081, 184944, 184945, 171526, 158110, 28302, 5925, 158150, 176064, 176065, 176066, 171589, 176067, 185034, 185035, 185036, 185038, 185039, 185040, 158179, 185044, 185045, 185046, 185047, 185048, 185049, 185051, 162666, 185052, 185053, 185054, 176100, 185055, 185056, 185057, 185058, 185060, 185061, 185062, 185063, 185064, 185065, 185066, 185067, 185068, 185069, 185070, 185071, 185072, 185090, 176137, 171664, 171666, 171668, 176146, 171670, 180630, 180641, 176165, 158259, 176169, 180650, 180652, 180653, 180654, 180655, 180656, 171712, 180669, 176197, 185190, 180715, 185193, 55370, 171787, 176267, 171790, 180748, 171795, 171796, 171816, 171821, 171822, 185261, 185277, 162896, 185282, 185285, 176332, 55455, 158427, 185291, 185292, 185295, 185299, 162918, 162928, 162929, 176368, 73400, 6271, 158504, 158509, 158510, 171958, 171959, 77942, 180916, 180918, 180919, 180920, 180923, 180926, 180927, 171973, 185405, 185406, 180931, 180933, 171981, 180936, 1860, 180948, 180950, 185430, 180956, 167527, 180961, 145146, 78001, 185455, 185457, 158599, 181003, 181005, 181006, 181007, 185486, 185488, 172058, 185498, 176545, 167591, 158637, 181027, 181028, 185506, 185511, 181059, 46754, 185543, 181077, 172124, 60199, 181084, 181086, 78116, 181091, 181093, 181098, 185576, 181102, 181108, 181109, 185587, 181110, 181119, 181122, 181123, 185609, 181146, 172196, 185630, 158772, 158773, 172206, 167738, 181172, 167745, 181179, 181183, 181193, 20029, 20030, 181222, 185702, 73780, 185713, 185750, 185755, 181292, 181293, 181295, 167867, 167871, 167880, 167881, 185798, 185807, 181330, 163427, 181339, 181344, 181349, 181352, 181359, 181361, 181362, 181366, 181369, 181375, 185855, 181383, 181385, 154527, 181392, 181397, 181408, 65011, 154564, 154567, 168011, 154580, 154583, 154585, 154586, 181484, 154625, 154627, 181490, 172538, 154630, 154631, 181495, 154635, 181500, 181555, 181558, 181559, 181562, 181571, 181580, 181581, 159200, 181586, 172702, 172714, 168240, 168244, 168245, 181681, 168268, 2620, 69791, 69792, 186199, 186209, 186211, 168309, 168333, 181782, 168353, 168359, 172839, 181797, 159421, 159423, 114665, 168397, 181834, 181837, 181838, 168407, 181839, 168410, 177376, 181857, 168427, 168428, 168430, 181862, 159478, 172912, 25171, 172913, 172914, 168437, 168438, 168442, 163974, 181884, 168466, 181905, 177432, 168485, 159532, 61056, 181939, 181946, 168517, 168519, 177476, 177486, 164078, 164079, 177517, 181995, 164095, 164096, 164098, 164099, 164100, 173057, 177543, 61143, 164123, 2956, 2957, 168613, 168624, 173118, 164173, 182084, 173130, 182085, 182088, 182089, 182096, 182098, 182100, 182107, 182113, 3035, 182116, 182121, 182131, 182135, 182146, 173204, 173205, 173206, 168731, 177688, 177689, 177690, 177691, 177693, 177694, 177695, 177723, 182214, 182216, 182218, 182234, 182245, 182247, 182252, 182254, 173300, 182255, 173301, 182256, 173302, 182257, 173304, 182259, 173305, 182260, 164352, 164353, 182265, 182267, 182268, 173318, 164367, 164368, 164369, 164370, 173325, 182281, 173327, 182282, 182284, 173330, 43499, 182289, 182292, 182293, 182294, 182296, 168866, 182301, 173348, 182303, 168872, 173350, 173351, 173352, 173353, 173354, 168877, 173355, 173356, 173357, 182314, 182315, 182316, 173364, 182319, 173367, 173369, 182324, 173370, 182330, 182335, 173386, 168915, 168919, 182354, 168936, 182373, 168943, 168948, 168984, 160037, 177958, 182437, 182438, 182458, 182466, 182473, 182474, 164579, 178015, 164589, 164590, 164591, 164596, 173571, 169099, 169114, 178075, 169123, 169126, 160173, 160174, 160175, 182563, 160178, 182568, 182569, 178093, 178094, 178098, 178099, 169158, 164684, 164685, 169163, 164686, 160212, 178129, 3527, 160223, 169179, 178134, 178135, 178136, 178137, 178154, 178155, 178158, 178159, 164736, 160274, 160285, 178196, 182681, 182692, 178232, 178233, 160325, 164803, 178238, 182758, 182768, 182769, 160386, 160387, 160389, 160390, 160391, 178326, 160428, 160430, 160432, 160434, 160435, 26125, 160437, 178346, 160449, 160470, 182864, 182876, 182877, 17252, 169509, 169513, 160569, 169524, 142666, 142668, 165055, 187441, 160581, 165068, 160602, 160606, 160608, 169572, 160629, 178601, 156228, 165189, 156279, 183142, 174188, 183143, 183146, 187651, 183217, 187696, 174269, 183225, 183227, 183228, 156376, 187719, 183242, 187734, 183257, 183258, 183262, 183263, 183265, 183266, 183268, 183270, 183272, 183273, 183274, 183277, 178804, 183283, 183284, 183287, 165379, 183291, 183298, 183303, 183304, 183308, 165403, 165405, 143038, 156479, 183349, 156504, 178895, 183378, 178909, 178913, 183408, 178935, 178936, 178958, 161063, 156586, 183465, 183468, 178997, 179004, 174564, 156663, 156664, 156666, 156667, 156668, 156669, 156670, 156671, 174580, 156672, 174581, 174582, 174583, 156681, 156683, 183546, 156685, 156686, 156687, 156688, 156689, 156690, 156691, 156692, 156694);
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.009999999776482582, `VerifiedBuild`=44730 WHERE `entry`=143515; -- Teeny Titan Orb
UPDATE `creature_template` SET `VerifiedBuild`=44730 WHERE `entry`=174922; -- Strategist Zo'rak
UPDATE `creature_template` SET `name`='Pulp-Covered Relic', `VerifiedBuild`=44730 WHERE `entry`=185265; -- Relique couverte de pulpe
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=51372; -- Thunder Bluff Wind Rider
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=2959; -- Prairie Stalker
UPDATE `creature_template` SET `VerifiedBuild`=44730 WHERE `entry`=7547; -- Azure Whelpling
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=17254; -- Ash'ana
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=151779; -- Lil' Nefarian


UPDATE `creature_template_model` SET `VerifiedBuild`=44730 WHERE (`Idx`=0 AND `CreatureID` IN (181222,182121,184940,185609,185543,185190,185755,178232,181295,178233,182146,181077,185511,184235,182692,179004,182458,178159,185587,181172,181119,180748,184423,182877,181179,180630,184406,183739,182373,182294,181408,185193,185090,182758,181084,181086,185058,185057,185056,185055,184767,183298,185065,185064,185063,185062,185061,185060,183970,185035,181292,185054,185053,185052,185051,185040,185039,185038,185036,185034,182437,181838,185045,185049,185048,185047,185046,185044,183969,181839,185068,185067,181905,181837,178135,185066,181862,181834,178134,182438,185072,185071,185070,185069,184945,178137,178136,183265,183408,182876,181586,183268,183257,185498,184389,184556,184555,183287,184557,183258,145146,185455,185261,184554,184553,184552,184551,184543,184390,184542,184541,183225,181946,184538,183217,184569,184550,184549,184548,183565,184393,183284,183283,183242,184897,184896,184892,183308,183273,183227,184895,184894,184893,184565,184564,184563,184076,182330,182303,181397,184077,184044,180165,177517,184082,180075,186209,184483,183639,180043,177958,178158,185299,184516,182335,182301,182247,184750,183631,178326,184684,186211,181555,181495,178346,182354,158637,7547,185430,180089,180085,180050,181562,180919,181581,177376,181146,184943,181102,183277,185486,185265,182568,182473,183721,182474,181098,60199,183792,181122,185506,181123,181108,181091,182569,181109,184391,185277,184561,182135,184560,184566,183303,181797,184568,184567,183304,182292,183747,183274,182293,184558,183228,182289,178129,181385,178155,184944,182256,182284,182214,178238,182265,182268,182267,181193,182255,181344,184942,183142,177695,182324,177691,177690,177689,184751,181349,184324,177694,181571,185855,177688,184756,177723,177693,178601,182131,178154,181559,184670,69791,69792,183801,43499,182296,181782,184322,184321,183465,185750,183971,181383,183869,181369,181366,183911,183838,182096,181857,181392,181484,181375,181339,181330,181359,181884,181352,180669,180656,183546,143515,183768,182315,182314,182254,182252,184045,183769,184046,182319,183146,182282,182260,182316,185295,183889,181110,182281,178099,182216,185292,181500,181027,25171,181028,181995,181939,180051,183966,184056,183263,180654,182259,183270,184194,183272,183262,181580,181558,181093,182098,183266,58960,61056,3527,184186,77942,164589,166663,184690,182100,182089,182085,183904,180655,180652,181005,143038,181007,180049,182768,181293,180653,63002,17252,183291,182088,182084,180641,178935,183468,99541,26125,182107,178093,182769,182234,187651,185702,180916,179612,184934,182681,182257,181003,180948,180936,17254,185630,184460,181183,180933,180931,180927,180926,178936,178015,177486,178895,183349,180956,180918,181059,180052,185798,184487,184486,184239,185713,183903,183143,185807,182245,182218,181006,180961,180950,180923,180920,177476,180715,178196,177432,172538,185457,178909,180650,181490,183963,182116,178913,185285,182113,185291,185282,178094,178098,181362,184071,55455,183378,185488,181361,181681,175217,174564,417,176146,176137,156479,187441,187719,187696,176169,176165,178997,184055,168353,165379,164368,156672,164367,156696,156694,156690,156683,156671,156669,156667,173351,167738,164736,156777,156732,156685,156681,156670,156668,156666,175211,156733,156689,156687,156686,151779,173571,156692,156691,114665,175083,174922,175209,175210,175213,175016,171790,168011,164096,164095,187734,175082,171787,55370,183720,167591,164579,186199,175080,173386,171821,171795,171299,164079,162896,176368,176067,176066,176065,176064,143622,175081,171589,156504,32639,32638,183830,159478,164078,164684,164100,164099,164098,165657,166284,156664,156791,156663,156758,173369,156769,165796,156768,169524,185576,156735,175067,175066,173370,173357,173356,173355,173354,166312,176332,175222,175214,173353,173352,170310,164596,162928,58965,78116,142668,142666,162929,32642,32641,5925,78001,73400,159200,158259,175218,170640,175216,416,173318,175042,175212,175019,173330,173327,170607,162918,156734,175036,175035,171796,170256,182864,170557,171822,178804,173350,175215,173348,173302,173301,164352,173305,164353,175207,175087,175020,175018,173367,173325,173304,164685,156688,176197,167881,166061,175208,175206,175017,173364,173118,167880,165405,165403,164123,176267,173300,172702,164803,185406,185405,175327,164686,164173,176545,162666,156698,172058,174636,168731,174667,158599,168359,166165,166161,158504,174794,174676,168438,166332,168428,156228,168437,174635,158510,158509,170415,168309,168333,168268,166166,168613,161063,168245,168244,175777,157728,158772,168442,157725,168407,168984,168948,168943,157761,169114,169099,166869,1860,177543,156376,169123,158005,158179,158081,158004,170932,169163,158150,157967,157973,158110,169179,169158,158054,169509,156279,170325,172124,160606,168240,165068,165055,175651,169513,161499,160629,160608,156586,158427,172714,174998,173206,173205,173204,173130,161536,171666,171664,171668,171712,171670,170334,170333,168466,175653,169126,168919,170248,172196,168936,170335,170328,168915,168624,170247,168410,175276,169572,168877,168872,170330,170329,170332,170331,170393,168866,168397,170392,182563,182466,160569,163974,172206,160470,160430,160174,157962,160435,163427,160432,171037,160581,172839,160223,160285,160173,164370,160437,160434,160178,175426,160602,160274,171526,159423,62862,160175,175196,170284,160428,164369,161410,178958,167527,167871,179379,154625,153436,175825,175823,154627,153456,54638,178075,167867,160037,172913,172914,172912,160325,154583,154580,174269,154586,154585,154564,62822,62821,174937,176100,160212,154567,175907,171036,159421,165189,174581,164590,160449,158773,174188,164591,160391,160389,160386,179800,168517,167745,160387,121541,160390,168485,171981,171973,175493,173057,174582,171958,168430,171959,154630,168427,175495,175494,168519,154631,154635,154527,174583,174580,171816,159532,51372,2620,2956,61143,6271,3035,2957,2959,305,65011,46754,32207,28302,20030,18379,18380,18378,18377,18365,18364,18363,14505,73780,20029,304)) OR (`Idx`=1 AND `CreatureID` IN (185609,185543,185190,181077,185511,184235,179004,182877,184406,183739,182758,181086,185058,185057,185056,185055,185065,185064,185063,185062,185061,185060,183970,185035,185054,185053,185052,185051,185040,185039,185038,185036,185034,182437,185045,185049,185048,185047,185046,185044,183969,185068,185067,185066,181834,182438,185072,185071,185070,185069,182876,183268,183257,185498,184556,184555,184557,183258,145146,184554,184553,184551,184543,184542,184541,183225,181946,184538,183217,184569,184549,184548,183565,183284,183283,184897,184896,184892,183308,183273,183227,184895,184894,184893,184563,180165,177517,186209,184483,180043,178158,185299,184516,182247,183631,182354,180050,181562,177376,185486,182568,183721,181122,185506,181108,182569,181109,184561,182135,184560,184566,183303,181797,184568,184567,183304,183274,182293,184558,183228,178129,178155,182256,182284,182265,182268,182267,182255,184324,177694,182131,178154,185750,183971,181383,181369,181366,182096,181392,181484,181375,181359,181884,180669,180656,183546,182315,182314,183769,184046,182319,182260,182316,185295,183889,181110,182281,182216,185292,181500,25171,181028,181939,183966,180654,182259,183272,184690,180655,180652,180049,182768,180641,99541,26125,182107,182769,182234,178895,180956,180052,185807,182245,182218,181006,180950,180923,177476,178196,177432,172538,185457,178909,180650,181490,182116,178913,182113,185291,178094,178098,181362,184071,55455,183378,181361,187696,184055,173351,175211,175209,175213,175016,175082,55370,186199,143622,156758,175067,175066,176332,175222,170310,78116,73400,175218,175216,175042,175019,170607,156734,171796,170256,171822,175215,175207,175087,175020,175018,173304,175208,175206,175017,173118,173300,158599,166161,158504,174794,168438,166332,156228,170415,161063,168245,157725,157761,169158,156279,165068,160608,156586,172714,174998,170334,169126,168936,170328,170330,170329,160569,157962,160285,160437,160274,62862,175196,167871,54638,178075,164590,164591,179800,175493,173057,175495,175494,159532,51372,61143,6271)) OR (`Idx`=2 AND `CreatureID` IN (185511,182877,184406,183739,181086,182876,181946,183308,182247,183631,182354,181562,177376,182568,181122,182569,182135,183303,181797,178129,182256,182284,182268,182267,182255,182131,178154,181369,181392,181375,181884,180669,180656,182315,185292,181028,181939,180654,180655,180652,180641,99541,26125,180956,180950,180923,178196,177432,178909,182116,178913,182113,178098,183378,173351,175211,175209,175213,175016,175082,143622,156758,175067,175066,176332,175222,175218,175216,175042,170607,156734,171796,175215,175207,175020,175018,173304,175208,175206,175017,173118,173300,156228,161063,160608,172714,160569,160285,160437,175495,175494,51372)) OR (`Idx`=3 AND `CreatureID` IN (184406,183739,181946,182247,177376,182135,181797,178129,182256,182284,182267,182255,182131,181369,181392,181375,181884,180669,180656,182315,185292,180654,180655,180652,180641,99541,26125,180950,180923,178196,177432,178909,182116,178913,182113,178098,173351,175211,175016,156758,175067,175066,176332,175222,175218,175216,175042,170607,171796,175215,175207,175020,175018,173304,175208,175206,175017,173118,173300,156228,161063,160608,172714,160285,160437,175495,175494,51372)) OR (`Idx`=13 AND `CreatureID` IN (182135,182113)) OR (`Idx`=12 AND `CreatureID` IN (182135,182113)) OR (`Idx`=11 AND `CreatureID` IN (182135,182113,176332)) OR (`Idx`=10 AND `CreatureID` IN (182135,182131,182116,182113,176332)) OR (`Idx`=9 AND `CreatureID` IN (182135,182131,182116,182113,176332,156228)) OR (`Idx`=8 AND `CreatureID` IN (182135,182131,181375,182116,182113,176332,156228)) OR (`Idx`=7 AND `CreatureID` IN (182135,182131,181375,180669,182116,182113,176332,156228)) OR (`Idx`=6 AND `CreatureID` IN (182135,182131,181369,181375,180669,182116,182113,176332,156228)) OR (`Idx`=5 AND `CreatureID` IN (182135,181797,182256,182131,181369,181375,181884,180669,180654,180652,182116,182113,175211,175016,176332,175222,175218,175216,175207,175018,175208,175206,173118,173300,156228,161063,175495,175494)) OR (`Idx`=4 AND `CreatureID` IN (182135,181797,182256,182131,181369,181392,181375,181884,180669,180656,180654,180655,180652,182116,182113,175211,175016,176332,175222,175218,175216,175042,170607,175215,175207,175018,173304,175208,175206,175017,173118,173300,156228,161063,175495,175494));


UPDATE `creature_questitem` SET `VerifiedBuild`=44730 WHERE (`Idx`=0 AND `CreatureEntry` IN (181222,178159,181408,183258,178158,180050,185506,181108,181109,183747,182293,181344,181349,181352,182314,182316,181110,178099,180051,180049,183291,180052,178098,178997,172058,168731,168359,168309,168333,168613,168244,157728,168442,168407,168943,157761,169114,169099,166869,169123,170932,157973,169509,170325,172124,160606,165068,165055,169513,170333,170248,172196,170335,170247,182466,160569,172206,2956,3035,2957,2959)) OR (`Idx`=1 AND `CreatureEntry` IN (180050,181108,181109,181344,181349,180051,180049,180052,178098,168731,168333,168244,157728,157761,166869,169123,170932,172124,160606,170335,172206,2956,3035,2957,2959)) OR (`Idx`=2 AND `CreatureEntry` IN (181108,181109,180051,180049,180052,157761,166869,2956,2957,2959));

DELETE FROM `gameobject_template` WHERE `entry` IN (373562 /*Excitable Concordance*/, 370402 /*Hidden Notes*/, 370401 /*Hidden Satchel*/, 370394 /*Hidden Equipment*/, 373680 /*Shield Conduit*/, 373681 /*Shield Conduit*/, 373679 /*Shield Conduit*/, 373678 /*Shield Conduit*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(373562, 10, 71463, 'Excitable Concordance', 'inspect', '', '', 1, 1634, 0, 0, 3000, 0, 0, 0, 8382, 297, 109, 362219, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 94126, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44730), -- Excitable Concordance
(370402, 3, 71455, 'Hidden Notes', 'questinteract', 'Rummaging', '', 0.75, 3372, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 103044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 362964, 0, 0, 0, 108769, 1, 0, 0, 0, 2057, 44730), -- Hidden Notes
(370401, 3, 71454, 'Hidden Satchel', 'questinteract', 'Rummaging', '', 0.5, 3372, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 103044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 362964, 0, 0, 0, 108769, 1, 0, 0, 0, 2057, 44730), -- Hidden Satchel
(370394, 3, 66132, 'Hidden Equipment', 'questinteract', 'Rummaging', '', 1, 3372, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 103044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 362964, 0, 0, 0, 108769, 1, 0, 0, 0, 2057, 44730), -- Hidden Equipment
(373680, 10, 66589, 'Shield Conduit', 'questinteract', 'Reinforcing', '', 0.60000002384185791, 43, 0, 0, 1, 0, 0, 0, 0, 0, 0, 359411, 0, 0, 0, 214248, 0, 0, 0, 0, 27472, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44730), -- Shield Conduit
(373681, 10, 66589, 'Shield Conduit', 'questinteract', 'Reinforcing', '', 0.60000002384185791, 93, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214248, 0, 0, 0, 0, 27473, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44730), -- Shield Conduit
(373679, 10, 66589, 'Shield Conduit', 'questinteract', 'Reinforcing', '', 0.60000002384185791, 93, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214248, 0, 0, 0, 0, 27475, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44730), -- Shield Conduit
(373678, 10, 66589, 'Shield Conduit', 'questinteract', 'Reinforcing', '', 0.60000002384185791, 93, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214248, 0, 0, 0, 0, 27471, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44730); -- Shield Conduit

UPDATE `gameobject_template` SET `VerifiedBuild`=44730 WHERE `entry` IN (373651, 373648, 375690, 375373, 376038, 375016, 375227, 373677, 373676, 373675, 373674, 373673, 375072, 373478, 370362, 375000, 373603, 373553, 373586, 375127, 373470, 373596, 373669, 373656, 373655, 373654, 373653, 368277, 373472, 375913, 375910, 375908, 375906, 375902, 375895, 375402, 375332, 375353, 375352, 375351, 373447, 370486, 370481, 369366, 369367, 373559, 373557, 369369, 369368, 375541, 373558, 375977, 375542, 373567, 373560, 373535, 370484, 370467, 373647, 370466, 373577, 369363, 370499, 373583, 375983, 375666, 375290, 375362, 370451, 375275, 370491, 375657, 375180, 375179, 375178, 370515, 370514, 370177, 375494, 375061, 375489, 375488, 375487, 375663, 370476, 375331, 375099, 368104, 373568, 373458, 370473, 349088, 375982, 375338, 373461, 375378, 375112, 375096, 370489, 370488, 370437, 375538, 375379, 370487, 375069, 367813, 375662, 370332, 370285, 375068, 375423, 375973, 349900, 375477, 375476, 375475, 375345, 375203, 375347, 375071, 375540, 375348, 375530, 370500, 375278, 373469, 369231, 375664, 373482, 370494, 373554, 375097, 375660, 375333, 375679, 369309, 373620, 375344, 375343, 376020, 375543, 373619, 369306, 369305, 375972, 369312, 369307, 376251, 376057, 375676, 375056, 375042, 376008, 373471, 375100, 369308, 370409, 375529, 370390, 375207, 375251, 370411, 375248, 373592, 375032, 375253, 375482, 375661, 375659, 375252, 357300, 357271, 357263, 367758, 355972, 358588, 358585, 358584, 357275, 357270, 353493, 368638, 358587, 358586, 357273, 353494, 353486, 353406, 191605, 345444, 357578, 353483, 357289, 353485, 357285, 353490, 352745, 353480, 353487, 353481, 353489, 368955, 357294, 357298, 365156, 357340, 353488, 365157, 365154, 357272, 353823, 353822, 352746, 345445, 365155, 357277, 353492, 353482, 357326, 357319, 357314, 357301, 357287, 357286, 357282, 357278, 357264, 357262, 355063, 354681, 353491, 357310, 357299, 357267, 357288, 357269, 357266, 357324, 357321, 357325, 357323, 357322, 357318, 357311, 357305, 357303, 357302, 357274, 357327, 357320, 357316, 357315, 357313, 357308, 357307, 357306, 369532, 369531, 367754, 364422, 357095, 354680, 369533, 369529, 357462, 353479, 353478, 374521, 374520, 374519, 374518, 369534, 369530, 375407, 369536, 369528, 364423, 369535, 364424, 353750, 369527, 369526, 353477, 353476, 364419, 364499, 354922, 354924, 354923, 364497, 354921, 358544, 358546, 358545, 349889, 349888, 349887, 349528, 349527, 349526, 349525, 349524, 349523, 358538, 358532, 355534, 354926, 355537, 334847, 352078, 352079, 350770, 350768, 350772, 350769, 350771, 350767, 335612, 350980, 335610, 355551, 353603, 335614, 352026, 349898, 355570, 355569, 340004, 352024, 340083, 340050, 336690, 351469, 344725, 352578, 349980, 353781, 336691, 344736, 252247, 353833, 348558, 352751, 353832, 352023, 355553, 346114, 355783, 353831, 346108, 341884, 363828, 356553, 351735, 355377, 341829, 327598, 328302, 357942, 357941, 355255, 357261, 356875, 356396, 353378, 353379, 364891, 364986, 353806, 358463, 358039, 352029, 352239, 208887, 1619, 208888, 208890, 4170, 4171, 47297, 47296);
UPDATE `gameobject_template` SET `name`='Orb', `castBarCaption`='Pushing', `VerifiedBuild`=44730 WHERE `entry`=373551; -- Kugel
UPDATE `gameobject_template` SET `name`='Orb', `VerifiedBuild`=44730 WHERE `entry`=373550; -- Orbe
UPDATE `gameobject_template` SET `name`='Orb', `VerifiedBuild`=44730 WHERE `entry`=373549; -- Kugel
UPDATE `gameobject_template` SET `name`='Template Archive', `castBarCaption`='Opening', `VerifiedBuild`=44730 WHERE `entry`=373548; -- Vorlagenarchiv
UPDATE `gameobject_template` SET `name`='Chair', `VerifiedBuild`=44730 WHERE `entry`=376028; -- 9BO_Brokers_Chair01
UPDATE `gameobject_template` SET `name`='Firim in Exile, Part 5', `castBarCaption`='Collecting', `VerifiedBuild`=44730 WHERE `entry`=375985; -- Firim im Exil, Teil 5
UPDATE `gameobject_template` SET `name`='Excitable Concordance', `VerifiedBuild`=44730 WHERE `entry`=373584; -- Erregbare Konkordanz
UPDATE `gameobject_template` SET `displayId`=0, `Data2`=1, `ContentTuningId`=651, `VerifiedBuild`=44730 WHERE `entry`=2061; -- Campfire
UPDATE `gameobject_template` SET `Data2`=1, `Data6`=0, `VerifiedBuild`=44730 WHERE `entry`=364440; -- Portal to Oribos
UPDATE `gameobject_template` SET `Data32`=108, `VerifiedBuild`=44730 WHERE `entry`=356823; -- Cloudwalker's Coffer
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=2412, `ContentTuningId`=71, `VerifiedBuild`=44730 WHERE `entry`=2912; -- Ambercorn

DELETE FROM `gameobject_questitem` WHERE (`Idx`=0 AND `GameObjectEntry` IN (370402,370401,370394));
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(370402, 0, 187626, 44730), -- Hidden Notes
(370401, 0, 187626, 44730), -- Hidden Satchel
(370394, 0, 187626, 44730); -- Hidden Equipment

UPDATE `gameobject_questitem` SET `VerifiedBuild`=44730 WHERE (`GameObjectEntry`=375227 AND `Idx`=0) OR (`GameObjectEntry`=375977 AND `Idx`=0) OR (`GameObjectEntry`=375180 AND `Idx`=0) OR (`GameObjectEntry`=375179 AND `Idx`=0) OR (`GameObjectEntry`=375178 AND `Idx`=0) OR (`GameObjectEntry`=370515 AND `Idx`=0) OR (`GameObjectEntry`=370514 AND `Idx`=0) OR (`GameObjectEntry`=370177 AND `Idx`=0) OR (`GameObjectEntry`=373461 AND `Idx`=0) OR (`GameObjectEntry`=335612 AND `Idx`=0) OR (`GameObjectEntry`=335610 AND `Idx`=0) OR (`GameObjectEntry`=346108 AND `Idx`=0) OR (`GameObjectEntry`=356553 AND `Idx` IN (15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0)) OR (`GameObjectEntry`=356823 AND `Idx` IN (1,0)) OR (`GameObjectEntry`=2912 AND `Idx`=0);


UPDATE `playerchoice_response` SET `ResponseIdentifier`=8151, `ChoiceArtFileId`=135855, `Header`='Rigialic', `Description`='$366352s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=680 AND `ResponseId`=0 AND `Index`=2);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=8150, `ChoiceArtFileId`=134325, `Header`='Fortialic', `Description`='$367088s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=680 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=8149, `ChoiceArtFileId`=3610527, `Header`='Healialic', `Description`='$366356s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=680 AND `ResponseId`=0 AND `Index`=0);


DELETE FROM `creature_equip_template` WHERE (`ID`=2 AND `CreatureID` IN (95852,93688,93563,97447));
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(95852, 2, 65795, 0, 0, 0, 0, 0, 5258, 0, 0, 44325), -- Nathanos Blightcaller
(93688, 2, 57020, 0, 0, 57020, 0, 0, 0, 0, 0, 44325), -- Forsaken Deathstalker
(93563, 2, 851, 0, 0, 34717, 0, 0, 0, 0, 0, 44325), -- Cauldronmaster Mills
(97447, 2, 30147, 0, 0, 61512, 0, 0, 110180, 0, 0, 44325); -- Commander Lorna Crowley

UPDATE `creature_equip_template` SET `VerifiedBuild`=44325 WHERE (`ID`=1 AND `CreatureID` IN (90899,91085,90902,114717,92224,92471,90866,95889,95891,90749,90785,90783,110521,93687,93960,93962,93961,92933,92950,92930,92931,93498,93485,93104,93486,93479,93490,93496,94114,93173,93959,94275,94271,93506,92932,96644,143112,143111,139088,143105,117654,92670,94970,97515,96049,95937,98020,97794,98262,109386,100063,97955,98259,98256,98258,97796,97798,98263,99574,99673,99674,101644,94579,94561,99912,99533,99711,97880,94846,102274,102591,97901,94610,94261,102623,102886,94255,108557)) OR (`ID`=2 AND `CreatureID` IN (94571,98825,97940,97903));


UPDATE `areatrigger_template` SET `VerifiedBuild`=44325 WHERE (`IsServerSide`=0 AND `Id` IN (8888,9394,9681));


UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=20000, `VerifiedBuild`=44325 WHERE `Id`=4126; -- SpellId : 183859
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=20000, `VerifiedBuild`=44325 WHERE `Id`=4126; -- SpellId : 183859
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=20000, `VerifiedBuild`=44325 WHERE `Id`=4126; -- SpellId : 183859
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44325 WHERE `Id`=4655;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=20000, `VerifiedBuild`=44325 WHERE `Id`=4126; -- SpellId : 183859
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=20000, `VerifiedBuild`=44325 WHERE `Id`=4126; -- SpellId : 183859
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=3000, `VerifiedBuild`=44325 WHERE `Id`=4966; -- SpellId : 193016


UPDATE `areatrigger_create_properties_polygon_vertex` SET `VerifiedBuild`=44325 WHERE (`AreaTriggerCreatePropertiesId`=4966 AND `Idx` IN (3,2,1,0));


DELETE FROM `conversation_line_template` WHERE `Id` IN (3266, 3267, 3263, 4381, 4380, 4379, 4378, 4670, 3272, 4668, 2784, 3261, 4672, 3269, 3268, 2815, 2814, 2813, 3260, 2785, 3256, 3255, 3270, 2791, 2790, 3230, 3229, 3228, 4671, 3265, 2793, 4669, 6344, 6343, 2789, 1413, 1412, 1411, 1414, 40253, 3264, 3259, 3258, 3257, 6347, 6346, 6345, 6348, 3262, 3271, 2792, 1442, 1297);
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(3266, 84, 0, 0, 44325),
(3267, 84, 0, 0, 44325),
(3263, 84, 0, 0, 44325),
(4381, 0, 1, 0, 44325),
(4380, 0, 0, 0, 44325),
(4379, 0, 1, 0, 44325),
(4378, 0, 0, 0, 44325),
(4670, 127, 0, 0, 44325),
(3272, 84, 0, 0, 44325),
(4668, 127, 0, 0, 44325),
(2784, 127, 0, 0, 44325),
(3261, 84, 0, 0, 44325),
(4672, 127, 0, 0, 44325),
(3269, 84, 0, 0, 44325),
(3268, 84, 0, 0, 44325),
(2815, 0, 2, 0, 44325),
(2814, 0, 1, 0, 44325),
(2813, 0, 0, 0, 44325),
(3260, 84, 0, 0, 44325),
(2785, 127, 0, 0, 44325),
(3256, 84, 1, 0, 44325),
(3255, 84, 1, 0, 44325),
(3270, 84, 0, 0, 44325),
(2791, 126, 0, 0, 44325),
(2790, 127, 0, 0, 44325),
(3230, 82, 0, 0, 44325),
(3229, 82, 0, 0, 44325),
(3228, 82, 0, 0, 44325),
(4671, 127, 0, 0, 44325),
(3265, 84, 0, 0, 44325),
(2793, 687, 0, 0, 44325),
(4669, 127, 0, 0, 44325),
(6344, 0, 0, 0, 44325),
(6343, 0, 0, 0, 44325),
(2789, 127, 0, 0, 44325),
(1413, 0, 1, 0, 44325),
(1412, 0, 1, 0, 44325),
(1411, 0, 1, 0, 44325),
(1414, 0, 0, 0, 44325),
(40253, 82, 0, 0, 44325),
(3264, 84, 0, 0, 44325),
(3259, 84, 0, 0, 44325),
(3258, 84, 0, 0, 44325),
(3257, 84, 0, 0, 44325),
(6347, 0, 1, 0, 44325),
(6346, 0, 1, 0, 44325),
(6345, 0, 1, 0, 44325),
(6348, 0, 0, 0, 44325),
(3262, 84, 0, 0, 44325),
(3271, 84, 0, 0, 44325),
(2792, 98, 0, 0, 44325),
(1442, 0, 1, 0, 44325),
(1297, 0, 0, 0, 44325);


UPDATE `conversation_actors` SET `ConversationActorId`=49709, `CreatureId`=98825, `CreatureDisplayInfoId`=63690, `VerifiedBuild`=44325 WHERE (`ConversationId`=1167 AND `Idx`=0);
UPDATE `conversation_actors` SET `VerifiedBuild`=44325 WHERE (`ConversationId`=16006 AND `Idx`=0);

UPDATE `conversation_line_template` SET `VerifiedBuild`=44325 WHERE `Id` IN (2782, 2781, 40254);


UPDATE `conversation_template` SET `VerifiedBuild`=44325 WHERE `Id`=1167;
UPDATE `conversation_template` SET `FirstLineID`=40253, `VerifiedBuild`=44325 WHERE `Id`=16006;

DELETE FROM `gameobject_template_addon` WHERE `entry`=244823;
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `WorldEffectID`, `AIAnimKitID`) VALUES
(244823, 0, 1048608, 0, 0); -- The Skyfire


UPDATE `quest_offer_reward` SET `VerifiedBuild`=44325 WHERE `ID` IN (39800, 38206, 38035, 39735, 38916, 39992, 40388, 39990, 39988, 40112, 39983, 40520, 40167, 40515, 38909, 39027, 39043, 39026, 39025, 42104);

DELETE FROM `quest_poi` WHERE (`QuestID`=39027 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=39027 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=39027 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=39027 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=39027 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=39027 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(39027, 0, 5, 32, 0, 0, 1220, 650, 0, 0, 0, 0, 0, 1092466, 0, 44325), -- Dargrul and the Hammer
(39027, 1, 4, 3, 284250, 93805, 1220, 650, 0, 0, 0, 34496, 0, 1032033, 0, 44325), -- Dargrul and the Hammer
(39027, 0, 3, 3, 284250, 93805, 1220, 650, 0, 0, 0, 34497, 0, 1026186, 0, 44325), -- Dargrul and the Hammer
(39027, 1, 2, 1, 278827, 94610, 1220, 650, 0, 0, 0, 34497, 0, 1032033, 0, 44325), -- Dargrul and the Hammer
(39027, 0, 1, 1, 278827, 94610, 1220, 650, 0, 0, 0, 34496, 0, 1064537, 0, 44325), -- Dargrul and the Hammer
(39027, 0, 0, -1, 0, 0, 1220, 650, 0, 0, 0, 0, 0, 1026186, 0, 44325); -- Dargrul and the Hammer

DELETE FROM `quest_poi_points` WHERE (`QuestID`=39027 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=39027 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=39027 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=39027 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=39027 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=39027 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(39027, 5, 0, 3541, 4770, 700, 44325), -- Dargrul and the Hammer
(39027, 4, 0, 3547, 4769, 671, 44325), -- Dargrul and the Hammer
(39027, 3, 0, 3738, 4959, 671, 44325), -- Dargrul and the Hammer
(39027, 2, 0, 3556, 4780, 873, 44325), -- Dargrul and the Hammer
(39027, 1, 0, 3470, 4503, 873, 44325), -- Dargrul and the Hammer
(39027, 0, 0, 3714, 4958, 671, 44325); -- Dargrul and the Hammer


DELETE FROM `quest_greeting` WHERE (`Type`=0 AND `ID` IN (90866,93826,93805));
INSERT INTO `quest_greeting` (`ID`, `Type`, `GreetEmoteType`, `GreetEmoteDelay`, `Greeting`, `VerifiedBuild`) VALUES
(90866, 0, 0, 0, 'Those freaks managed to blow what was left of our ammunition stores; it\'s a miracle the ship held together as long as she did!', 44325), -- 90866
(93826, 0, 0, 0, 'Dargrul the Underking is using my people as fodder for his new toy and army. He thinks by defeating us it will prepare him for the coming of the Burning Legion.$b$bWhen I\'m done with him, he will wish he had faced the Burning Legion instead.', 44325), -- 93826
(93805, 0, 0, 0, 'It was I who told the Chieftains and the Underking that we would need to give the Hammer of Khaz\'goroth to outsiders so that the Legion could be defeated. I just did not understand how violent the Underking\'s response would be.', 44325); -- 93805



UPDATE `quest_details` SET `VerifiedBuild`=44325 WHERE `ID` IN (38036, 38558, 38053, 38052, 39800, 38206, 49929, 38035, 39735, 39575, 38916, 39992, 40388, 39990, 39988, 40112, 39983, 40520, 40167, 40515, 38913, 38912, 38909, 39027, 39043, 39026, 39025);

DELETE FROM `quest_request_items` WHERE `ID` IN (65749 /*The Necessity Of Equipment*/, 64743 /*Xy Are You Doing This?*/, 38206 /*Making the Rounds*/, 64771 /*Enlightened Exodus*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(65749, 0, 0, 0, 0, 'What is this you have brought me?', 0), -- The Necessity Of Equipment
(64743, 669, 0, 0, 0, 'We must discover Cartel Xy\'s intentions here.', 0), -- Xy Are You Doing This?
(38206, 0, 0, 0, 0, 'As soon as preparations are complete, we set out for Stormheim.', 44325), -- Making the Rounds
(64771, 0, 669, 0, 0, 'Have any others chosen to leave?', 44325); -- Enlightened Exodus


DELETE FROM `creature_queststarter` WHERE (`id`=181084 AND `quest`=65463) OR (`id`=180936 AND `quest` IN (64760,64758)) OR (`id`=181003 AND `quest` IN (64743,64744,64742,64741)) OR (`id`=182257 AND `quest`=65774);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(181084, 65463, 44730), -- The Wellspring of the First Ones offered Drim
(180936, 64760, 44730), -- Technical Difficulties offered Rana
(180936, 64758, 44730), -- Following the Leader offered Rana
(181003, 64743, 44730), -- Xy Are You Doing This? offered Al'dalil
(181003, 64744, 44730), -- Broker Decloaker offered Al'dalil
(181003, 64742, 44730), -- Traces of Tampering offered Al'dalil
(181003, 64741, 44730), -- Security Check offered Al'dalil
(182257, 65774, 44730); -- The Catalyst Awakens offered Vilo

UPDATE `creature_queststarter` SET `VerifiedBuild`=44730 WHERE (`id`=182146 AND `quest`=65349) OR (`id`=177958 AND `quest`=65749) OR (`id`=184486 AND `quest`=65064) OR (`id`=180950 AND `quest`=65727) OR (`id`=181003 AND `quest`=64771) OR (`id`=181183 AND `quest`=65259) OR (`id`=185713 AND `quest`=65748) OR (`id`=175907 AND `quest`=63053) OR (`id`=170624 AND `quest`=59753) OR (`id`=166723 AND `quest`=59752) OR (`id`=165918 AND `quest`=59907) OR (`id`=169076 AND `quest`=59751) OR (`id`=107498 AND `quest`=42446) OR (`id`=107499 AND `quest`=42444) OR (`id`=90866 AND `quest`=38558);
UPDATE `creature_queststarter` SET `VerifiedBuild`=44325 WHERE (`id`=90783 AND `quest`=38036) OR (`id`=90866 AND `quest` IN (38558,38053)) OR (`id`=90749 AND `quest`=38052) OR (`id`=96663 AND `quest`=39800) OR (`id`=96644 AND `quest` IN (38206,38035)) OR (`id`=94571 AND `quest`=39575) OR (`id`=98825 AND `quest` IN (38916,39983,40520,40167)) OR (`id`=97903 AND `quest`=39992) OR (`id`=97892 AND `quest` IN (40388,39990)) OR (`id`=98794 AND `quest`=39988) OR (`id`=97891 AND `quest`=40112) OR (`id`=93826 AND `quest` IN (40515,38913,38912)) OR (`id`=93805 AND `quest` IN (38909,39026,39025)) OR (`id`=97553 AND `quest` IN (39027,39043));

DELETE FROM `creature_questender` WHERE (`id`=185587 AND `quest`=65749) OR (`id`=181003 AND `quest` IN (64760,64743,64744,64742,64741,64771)) OR (`id`=180936 AND `quest`=64758);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(185587, 65749, 44730), -- The Necessity Of Equipment ended by Rafiq
(181003, 64760, 44730), -- Technical Difficulties ended by Al'dalil
(180936, 64758, 44730), -- Following the Leader ended by Rana
(181003, 64743, 44730), -- Xy Are You Doing This? ended by Al'dalil
(181003, 64744, 44730), -- Broker Decloaker ended by Al'dalil
(181003, 64742, 44730), -- Traces of Tampering ended by Al'dalil
(181003, 64741, 44730), -- Security Check ended by Al'dalil
(181003, 64771, 44730); -- Enlightened Exodus ended by Al'dalil

UPDATE `creature_questender` SET `VerifiedBuild`=44730 WHERE (`id`=182146 AND `quest`=65463) OR (`id`=181183 AND `quest`=66042) OR (`id`=175907 AND `quest`=63053) OR (`id`=166723 AND `quest`=59752) OR (`id`=165918 AND `quest`=59751) OR (`id`=169076 AND `quest`=60545) OR (`id`=107840 AND `quest`=39775) OR (`id`=107498 AND `quest`=42444) OR (`id`=90866 AND `quest`=38053);
UPDATE `creature_questender` SET `VerifiedBuild`=44325 WHERE (`id`=90749 AND `quest`=39800) OR (`id`=96663 AND `quest`=38206) OR (`id`=96644 AND `quest` IN (38035,39735)) OR (`id`=94571 AND `quest`=38916) OR (`id`=98825 AND `quest` IN (39992,40520,40167,40515)) OR (`id`=97903 AND `quest`=40388) OR (`id`=97892 AND `quest` IN (39990,39988)) OR (`id`=98794 AND `quest`=40112) OR (`id`=97891 AND `quest`=39983) OR (`id`=93826 AND `quest`=38909) OR (`id`=93805 AND `quest` IN (39027,42104)) OR (`id`=97553 AND `quest` IN (39043,39026,39025));


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (92152,111172,90902,92407,92224,117654,96663,94970,110898,94272,110740,92471,110712,92670,92950,94275,94114,29726,94571,96049,108556,98948,107680,97956,99940,98674,100063,97955,97940,97939,97903,97798,97892,98794,98263,98258,97894,98262,98256,97891,97794,98757,98259,97808,98410,97932,98020,109386,98022,97796,97803,99574,94561,94579,100427,100418,101077,99912,99913,98825,99533,99711,99660,98913,97880,96576,96573,97901,94610,97827,102283,94286,94255,95051,97648,94846,102276,103067)) OR (`DifficultyID`=12 AND `Entry` IN (98114,91824,31889,90866,95889,95891,90899,90749,91069,97735,110667,90783,114717,110521,90785,90748,91085,59357,95852,93688,95422,104973,93563,95291,97447,97444,93173,93960,93959,92932,92931,93479,92930,92957));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(92152, 0, 0, 0, 334, 44325),
(111172, 0, 0, 0, 371, 44325),
(90902, 0, 0, 0, 334, 44325),
(92407, 0, 0, 0, 334, 44325),
(92224, 0, 0, 0, 334, 44325),
(98114, 12, 0, 0, 881, 44325),
(91824, 12, 0, 0, 334, 44325),
(31889, 12, 0, 0, 81, 44325),
(90866, 12, 0, 0, 334, 44325),
(95889, 12, 0, 0, 334, 44325),
(95891, 12, 0, 0, 334, 44325),
(90899, 12, 0, 0, 334, 44325),
(90749, 12, 0, 0, 334, 44325),
(91069, 12, 0, 0, 334, 44325),
(97735, 12, 0, 0, 81, 44325),
(110667, 12, 0, 0, 334, 44325),
(90783, 12, 0, 0, 334, 44325),
(114717, 12, 0, 0, 334, 44325),
(110521, 12, 0, 0, 334, 44325),
(90785, 12, 0, 0, 334, 44325),
(90748, 12, 0, 0, 334, 44325),
(91085, 12, 0, 0, 334, 44325),
(59357, 12, 0, 0, 81, 44325),
(95852, 12, 0, 0, 334, 44325),
(93688, 12, 0, 0, 334, 44325),
(95422, 12, 0, 0, 334, 44325),
(104973, 12, 0, 0, 334, 44325),
(93563, 12, 0, 0, 334, 44325),
(95291, 12, 0, 0, 334, 44325),
(97447, 12, 0, 0, 334, 44325),
(97444, 12, 0, 0, 334, 44325),
(93173, 12, 0, 0, 334, 44325),
(93960, 12, 0, 0, 334, 44325),
(93959, 12, 0, 0, 334, 44325),
(92932, 12, 0, 0, 334, 44325),
(92931, 12, 0, 0, 334, 44325),
(93479, 12, 0, 0, 334, 44325),
(92930, 12, 0, 0, 334, 44325),
(92957, 12, 0, 0, 334, 44325),
(117654, 0, 0, 0, 334, 44325),
(96663, 0, 0, 0, 334, 44325),
(94970, 0, 0, 0, 334, 44325),
(110898, 0, 0, 0, 334, 44325),
(94272, 0, 0, 0, 334, 44325),
(110740, 0, 0, 0, 334, 44325),
(92471, 0, 0, 0, 334, 44325),
(110712, 0, 0, 0, 334, 44325),
(92670, 0, 0, 0, 334, 44325),
(92950, 0, 0, 0, 334, 44325),
(94275, 0, 0, 0, 334, 44325),
(94114, 0, 0, 0, 334, 44325),
(29726, 0, 0, 0, 371, 44325),
(94571, 0, 0, 0, 333, 44325),
(96049, 0, 0, 0, 333, 44325),
(108556, 0, 0, 0, 333, 44325),
(98948, 0, 0, 0, 354, 44325),
(107680, 0, 0, 0, 333, 44325),
(97956, 0, 0, 0, 333, 44325),
(99940, 0, 0, 0, 333, 44325),
(98674, 0, 0, 0, 333, 44325),
(100063, 0, 0, 0, 333, 44325),
(97955, 0, 0, 0, 333, 44325),
(97940, 0, 0, 0, 333, 44325),
(97939, 0, 0, 0, 333, 44325),
(97903, 0, 0, 0, 333, 44325),
(97798, 0, 0, 0, 333, 44325),
(97892, 0, 0, 0, 333, 44325),
(98794, 0, 0, 0, 333, 44325),
(98263, 0, 0, 0, 333, 44325),
(98258, 0, 0, 0, 333, 44325),
(97894, 0, 0, 0, 333, 44325),
(98262, 0, 0, 0, 333, 44325),
(98256, 0, 0, 0, 333, 44325),
(97891, 0, 0, 0, 333, 44325),
(97794, 0, 0, 0, 333, 44325),
(98757, 0, 0, 0, 333, 44325),
(98259, 0, 0, 0, 333, 44325),
(97808, 0, 0, 0, 333, 44325),
(98410, 0, 0, 0, 333, 44325),
(97932, 0, 0, 0, 333, 44325),
(98020, 0, 0, 0, 333, 44325),
(109386, 0, 0, 0, 333, 44325),
(98022, 0, 0, 0, 333, 44325),
(97796, 0, 0, 0, 333, 44325),
(97803, 0, 0, 0, 333, 44325),
(99574, 0, 0, 0, 333, 44325),
(94561, 0, 0, 0, 333, 44325),
(94579, 0, 0, 0, 333, 44325),
(100427, 0, 0, 0, 333, 44325),
(100418, 0, 0, 0, 333, 44325),
(101077, 0, 0, 0, 333, 44325),
(99912, 0, 0, 0, 333, 44325),
(99913, 0, 0, 0, 333, 44325),
(98825, 0, 0, 0, 333, 44325),
(99533, 0, 0, 0, 333, 44325),
(99711, 0, 0, 0, 2114, 44325),
(99660, 0, 0, 0, 333, 44325),
(98913, 0, 0, 0, 333, 44325),
(97880, 0, 0, 0, 333, 44325),
(96576, 0, 0, 0, 333, 44325),
(96573, 0, 0, 0, 333, 44325),
(97901, 0, 0, 0, 333, 44325),
(94610, 0, 0, 0, 333, 44325),
(97827, 0, 0, 0, 333, 44325),
(102283, 0, 0, 0, 333, 44325),
(94286, 0, 0, 0, 333, 44325),
(94255, 0, 0, 0, 333, 44325),
(95051, 0, 0, 0, 333, 44325),
(97648, 0, 0, 0, 333, 44325),
(94846, 0, 0, 0, 333, 44325),
(102276, 0, 0, 0, 333, 44325),
(103067, 0, 0, 0, 333, 44325);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=44325 WHERE (`DifficultyID`=0 AND `Entry` IN (111291,62992,143103,143101,142641,143114,143112,143111,139088,143106,143105,143108,143100,29019,15214,44880,43103,96644,92553,23033,105228,105220,80101,67230,51649,111569,54128,71693,112553,97515,32639,32638,97507,98916,6491,101644,94507,98915,83642,102591,102284,102632,102406,102623,102297,94261,98653,95043,102886,95937,102274,108557,97741)) OR (`DifficultyID`=12 AND `Entry` IN (89829,93687,93983,93486,93490,93496,93560,93498,93485,94202,114795,93104,93113,93961,92933,93962,93506,94271));


UPDATE `creature_model_info` SET `BoundingRadius`=2.26545882225036621, `CombatReach`=3.375, `VerifiedBuild`=44325 WHERE `DisplayID`=62814;
UPDATE `creature_model_info` SET `VerifiedBuild`=44325 WHERE `DisplayID` IN (32186, 47633, 62936, 62931, 62933, 62247, 65089, 45108, 71571, 45107, 66644, 63724, 62932, 72903, 62934, 64397, 63616, 4341, 31251, 16062, 17694, 21930, 28490, 64235, 28491, 64236, 55806, 62917, 63430, 62919, 62918, 62920, 60307, 63722, 63728, 63726, 63721, 26992, 7028, 38870, 45191, 63408, 87819, 87818, 87831, 87826, 87825, 88608, 87822, 87821, 88065, 87817, 88847, 33220, 62755, 45185, 26989, 62352, 62743, 26990, 62754, 45193, 47166, 44979, 62746, 45192, 62753, 62744, 71615, 44977, 44978, 62745, 44980, 26991, 62752, 45220, 55538, 69083, 85261, 44551, 37527, 71848, 38638, 68666, 65250, 55989, 1206, 28282, 28111, 65239, 3019, 66013, 70616, 66019, 68320, 65938, 66422, 12064, 63759, 62780, 65802, 63439, 63758, 63760, 39162, 65824, 27570, 63266, 23773, 17287, 65727, 67168, 63101, 62277, 62186, 5233, 66237, 64672, 67772, 65461, 58886, 64387, 66395, 65484, 66296, 66012, 66011, 11686, 66297, 62390, 33309, 67626, 67702, 64985, 63606, 34706, 55720, 23258, 64339);
UPDATE `creature_model_info` SET `BoundingRadius`=1.258588314056396484, `VerifiedBuild`=44325 WHERE `DisplayID`=58588;
UPDATE `creature_model_info` SET `BoundingRadius`=0.421299993991851806, `CombatReach`=1.65000009536743164, `VerifiedBuild`=44325 WHERE `DisplayID`=64374;
UPDATE `creature_model_info` SET `DisplayID_Other_Gender`=0, `VerifiedBuild`=44325 WHERE `DisplayID` IN (13854, 13855, 13856, 4130, 4129);
UPDATE `creature_model_info` SET `BoundingRadius`=0.305999994277954101, `CombatReach`=1.5, `VerifiedBuild`=44325 WHERE `DisplayID`=87694;
UPDATE `creature_model_info` SET `BoundingRadius`=0.442471057176589965, `VerifiedBuild`=44325 WHERE `DisplayID`=53878;
UPDATE `creature_model_info` SET `CombatReach`=0, `VerifiedBuild`=44325 WHERE `DisplayID`=49084;
UPDATE `creature_model_info` SET `BoundingRadius`=0.285771012306213378, `VerifiedBuild`=44325 WHERE `DisplayID`=26452;
UPDATE `creature_model_info` SET `BoundingRadius`=0.289735019207000732, `VerifiedBuild`=44325 WHERE `DisplayID`=52602;
UPDATE `creature_model_info` SET `BoundingRadius`=1.206647515296936035, `CombatReach`=1.80000007152557373, `VerifiedBuild`=44325 WHERE `DisplayID`=60156;
UPDATE `creature_model_info` SET `BoundingRadius`=1.613173127174377441, `CombatReach`=3.75, `VerifiedBuild`=44325 WHERE `DisplayID`=63994;
UPDATE `creature_model_info` SET `BoundingRadius`=1.279077529907226562, `VerifiedBuild`=44325 WHERE `DisplayID`=63267;
UPDATE `creature_model_info` SET `BoundingRadius`=0.077500000596046447, `CombatReach`=0.75, `VerifiedBuild`=44325 WHERE `DisplayID`=33312;


UPDATE `creature_template_spell` SET `VerifiedBuild`=44325 WHERE (`CreatureID`=92957 AND `Index`=0) OR (`CreatureID`=97817 AND `Index` IN (2,1,0));


UPDATE `trainer` SET `VerifiedBuild`=44325 WHERE `Id`=881;


UPDATE `trainer_spell` SET `VerifiedBuild`=44325 WHERE (`TrainerId`=881 AND `SpellId` IN (102698,102697,7928,7929,74558,74556,88893,74557,3278,3277,27033,27032,3276,18630,10840,10841,18629,45546,45545));

DELETE FROM `creature_trainer` WHERE (`CreatureID`=92931 AND `MenuID`=0 AND `OptionID`=0);
INSERT INTO `creature_trainer` (`CreatureID`, `TrainerID`, `MenuID`, `OptionID`) VALUES
(92931, 881, 0, 0);



UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=44325 WHERE (`entry`=92932 AND `item`=23805 AND `ExtendedCost`=0 AND `type`=1); -- Schematic: Ultra-Spectropic Detection Goggles
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=44325 WHERE (`entry`=92932 AND `item`=23816 AND `ExtendedCost`=0 AND `type`=1); -- Schematic: Fel Iron Toolbox
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=44325 WHERE (`entry`=92932 AND `item`=23803 AND `ExtendedCost`=0 AND `type`=1); -- Schematic: Cogspinner Goggles
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=44325 WHERE (`entry`=92932 AND `item`=23807 AND `ExtendedCost`=0 AND `type`=1); -- Schematic: Adamantite Scope
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=44325 WHERE (`entry`=92932 AND `item`=23799 AND `ExtendedCost`=0 AND `type`=1); -- Schematic: Adamantite Rifle
UPDATE `npc_vendor` SET `slot`=11, `VerifiedBuild`=44325 WHERE (`entry`=107109 AND `item`=136706 AND `ExtendedCost`=6072 AND `type`=1); -- Technique: Straszan Mark
UPDATE `npc_vendor` SET `slot`=10, `VerifiedBuild`=44325 WHERE (`entry`=107109 AND `item`=136702 AND `ExtendedCost`=6072 AND `type`=1); -- Formula: Soul Fibril
UPDATE `npc_vendor` SET `slot`=9, `VerifiedBuild`=44325 WHERE (`entry`=107109 AND `item`=136699 AND `ExtendedCost`=6072 AND `type`=1); -- Recipe: Flamespike
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=44325 WHERE (`entry`=107109 AND `item`=137727 AND `ExtendedCost`=6072 AND `type`=1); -- Schematic: Mecha-Bond Imprint Matrix
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=44325 WHERE (`entry`=107109 AND `item`=137935 AND `ExtendedCost`=6072 AND `type`=1); -- Recipe: Leather Love Seat
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=44325 WHERE (`entry`=107109 AND `item`=141884 AND `ExtendedCost`=6116 AND `type`=1); -- Krota's Shield
UPDATE `npc_vendor` SET `slot`=8, `VerifiedBuild`=44325 WHERE (`entry`=100437 AND `item`=128849 AND `ExtendedCost`=0 AND `type`=1); -- Scallion Kimchi
UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=44325 WHERE (`entry`=100437 AND `item`=128848 AND `ExtendedCost`=0 AND `type`=1); -- Roasted Maize
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=44325 WHERE (`entry`=100437 AND `item`=128835 AND `ExtendedCost`=0 AND `type`=1); -- Highmountain Fry Bread
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=44325 WHERE (`entry`=100437 AND `item`=138977 AND `ExtendedCost`=0 AND `type`=1); -- Thundertotem Rice Cake
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=44325 WHERE (`entry`=100437 AND `item`=128836 AND `ExtendedCost`=0 AND `type`=1); -- Barley Bread
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=44325 WHERE (`entry`=100437 AND `item`=128838 AND `ExtendedCost`=0 AND `type`=1); -- Foxberries
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=44325 WHERE (`entry`=100437 AND `item`=128837 AND `ExtendedCost`=0 AND `type`=1); -- Dried Bilberries
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=44325 WHERE (`entry`=100437 AND `item`=132247 AND `ExtendedCost`=0 AND `type`=1); -- Bottle of Airspark

DELETE FROM `gossip_menu` WHERE (`MenuID`=18747 AND `TextID`=27251);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(18747, 27251, 44325); -- 97379 (Scouting Map)

UPDATE `gossip_menu` SET `VerifiedBuild`=44325 WHERE (`MenuID`=18233 AND `TextID`=26196) OR (`MenuID`=18391 AND `TextID`=26502) OR (`MenuID`=18513 AND `TextID`=26764) OR (`MenuID`=18515 AND `TextID`=26766) OR (`MenuID`=18514 AND `TextID`=26765) OR (`MenuID`=19355 AND `TextID`=28508) OR (`MenuID`=18912 AND `TextID`=26755) OR (`MenuID`=19773 AND `TextID`=29286) OR (`MenuID`=19570 AND `TextID`=28943);

UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2583, `OptionType`=3, `OptionNpcFlag`=512, `VerifiedBuild`=44325 WHERE (`MenuID`=19773 AND `OptionID`=0); -- OptionBroadcastTextID: 2583 - 2583 - 6399 - 6399 - 7142 - 7142 - 9992 - 9992 - 14967 - 14967
UPDATE `gossip_menu_option` SET `VerifiedBuild`=44325 WHERE (`MenuID`=18912 AND `OptionID` IN (1,0));


UPDATE `creature_template` SET `minlevel`=45, `speed_walk`=1 WHERE `entry`=92152; -- Whitewater Typhoon
UPDATE `creature_template` SET `faction`=1712, `BaseAttackTime`=2000, `unit_flags`=67141632, `unit_flags2`=2048, `dynamicflags`=68 WHERE `entry`=111291; -- Stonescar River-Thresher
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=90902; -- Dread-Rider Malwick
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=33554432, `unit_flags3`=1 WHERE `entry`=92407; -- Riding Bat
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=92224; -- Forsaken Deathstalker
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=98114; -- Donovan
UPDATE `creature_template` SET `minlevel`=45, `faction`=31, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=91824; -- Bluffwalker Goat
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=33600 WHERE `entry`=90866; -- Tinkmaster Overspark
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1.142857193946838378, `unit_flags3`=512 WHERE `entry`=95891; -- Genn Greymane
UPDATE `creature_template` SET `minlevel`=45, `unit_flags3`=8192 WHERE `entry`=90899; -- Forsaken Bat-Rider
UPDATE `creature_template` SET `gossip_menu_id`=18391, `minlevel`=45, `maxlevel`=45, `unit_flags3`=1048576 WHERE `entry`=90749; -- Sky Admiral Rogers
UPDATE `creature_template` SET `minlevel`=45, `unit_flags3`=8192 WHERE `entry`=91069; -- Forsaken Dreadwing
UPDATE `creature_template` SET `faction`=188, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=97735; -- Long-Eared Owl
UPDATE `creature_template` SET `gossip_menu_id`=18233, `minlevel`=45, `npcflag`=3 WHERE `entry`=90783; -- Mishka
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=114717; -- Forsaken Bat-Rider
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=90785; -- Skyfire Marine
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=90748; -- Whitewater Tempest
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=33536 WHERE `entry`=91085; -- Skyfire Marine
UPDATE `creature_template` SET `minlevel`=45, `faction`=2156, `speed_walk`=2.799999952316284179, `speed_run`=2, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=89829; -- Highcrag Eagle
UPDATE `creature_template` SET `minlevel`=45, `unit_flags`=294912 WHERE `entry`=95852; -- Nathanos Blightcaller
UPDATE `creature_template` SET `minlevel`=45, `dynamicflags`=4 WHERE `entry`=93688; -- Forsaken Deathstalker
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags3`=8193 WHERE `entry`=95422; -- Skyfire Deck Gun
UPDATE `creature_template` SET `minlevel`=45, `unit_flags`=537166592, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=93687; -- Forsaken Bat-Rider
UPDATE `creature_template` SET `minlevel`=45, `unit_flags`=33552, `unit_flags3`=1 WHERE `entry`=93486; -- Dread-Captain Tattersail
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=93490; -- Royal Dreadguard
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags3`=16777216 WHERE `entry`=104973; -- Rope Stalker
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=93563; -- Cauldronmaster Mills
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags3`=16777216 WHERE `entry`=95291; -- Bubbling Cauldron
UPDATE `creature_template` SET `minlevel`=45, `npcflag`=0 WHERE `entry`=93496; -- Black Rose Apothecary
UPDATE `creature_template` SET `minlevel`=45, `npcflag`=16777216 WHERE `entry`=97444; -- Donovan
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=93560; -- Deathweaver Cassandra
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=93498; -- Forsaken Deathguard
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=93485; -- Forsaken Crewman
UPDATE `creature_template` SET `minlevel`=45, `unit_flags2`=2048 WHERE `entry`=93173; -- Icebound Dreadnought
UPDATE `creature_template` SET `unit_flags2`=2048 WHERE `entry`=93113; -- Forsaken Dreadwing
UPDATE `creature_template` SET `gossip_menu_id`=18515 WHERE `entry`=93960; -- Commander Lorna Crowley
UPDATE `creature_template` SET `gossip_menu_id`=18514, `speed_run`=1.142857193946838378 WHERE `entry`=93959; -- Genn Greymane
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=93961; -- Worgen Tracker
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=92933; -- 7th Legion Dragoon
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=93962; -- Worgen Stalker
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=33600, `unit_flags3`=1 WHERE `entry`=92932; -- Tinkmaster Overspark
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=1 WHERE `entry`=92931; -- Mishka
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=94271; -- Skyfire Engineer
UPDATE `creature_template` SET `gossip_menu_id`=18513, `minlevel`=45, `maxlevel`=45, `unit_flags3`=1048576 WHERE `entry`=92930; -- Sky Admiral Rogers
UPDATE `creature_template` SET `minlevel`=45, `unit_flags3`=1 WHERE `entry`=92957; -- Skyfire Deck Gun
UPDATE `creature_template` SET `faction`=2995, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=142641; -- Aron Kyleson
UPDATE `creature_template` SET `npcflag`=0 WHERE `entry`=139088; -- Boralus Guard
UPDATE `creature_template` SET `faction`=2164, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=117654; -- Commander Lorna Crowley
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=43103; -- Bluetip Thresher
UPDATE `creature_template` SET `faction`=1819, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=96663; -- Genn Greymane
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `npcflag`=16777216, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912, `unit_flags3`=16777217 WHERE `entry`=110898; -- Skyfire Deck Gun
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags2`=34816 WHERE `entry`=94272; -- Ensign Ward
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=1732, `speed_run`=1.385714292526245117, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=110740; -- Skyfire Gryphon
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=92471; -- Skyfire Engineer
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912, `unit_flags3`=16777217 WHERE `entry`=110712; -- Skyfire Deck Gun
UPDATE `creature_template` SET `unit_flags`=33280, `unit_flags3`=1 WHERE `entry`=92670; -- 7th Legion Dragoon
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=92950; -- Skyfire Marine
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=94275; -- Skyfire Powder Monkey
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=94114; -- Skyfire Gryphon Rider

UPDATE `creature_template` SET `gossip_menu_id`=19355, `npcflag`=3 WHERE `entry`=96644; -- Sky Admiral Rogers
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=92553; -- Kirin Tor Summoner
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=105228; -- Greg
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=105220; -- Tournament Announcer
UPDATE `creature_template` SET `speed_run`=0.857142865657806396, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=80101; -- Royal Peachick
UPDATE `creature_template` SET `speed_run`=0.857142865657806396, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=67230; -- Imperial Moth
UPDATE `creature_template` SET `speed_run`=1.142857193946838378, `BaseAttackTime`=1500, `unit_flags`=768 WHERE `entry`=51649; -- Moonkin Hatchling
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=54128; -- Creepy Crate
UPDATE `creature_template` SET `speed_run`=0.857142865657806396, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=71693; -- Rascal-Bot
UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=29726; -- Mr. Chilly
UPDATE `creature_template` SET `gossip_menu_id`=20506 WHERE `entry`=104091; -- Kirin Tor Guardian
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=93517; -- Dread Commander Thalanor
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2028, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=34816 WHERE `entry`=98916; -- Hanye Chargefeather
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=94571; -- Spiritwalker Ebonhorn
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=97956; -- Tichondrius
UPDATE `creature_template` SET `speed_run`=1.417142868041992187 WHERE `entry`=100063; -- Tauren Defender
UPDATE `creature_template` SET `speed_run`=1.394285798072814941 WHERE `entry`=97955; -- Night Elf Defender
UPDATE `creature_template` SET `minlevel`=45, `speed_run`=1.257142901420593261 WHERE `entry`=97940; -- Wrathguard
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags3`=16777216 WHERE `entry` IN (97939, 97932); -- Legion Portal
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `unit_flags3`=1048576 WHERE `entry`=97903; -- Jarod Shadowsong
UPDATE `creature_template` SET `speed_run`=1.417142868041992187 WHERE `entry`=97798; -- Night Elf Defender
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=97892; -- Malfurion Stormrage
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=98794; -- Eche'ro
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=98263; -- Blackmaw Warrior
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.417142868041992187 WHERE `entry`=98258; -- Blackmaw Shaman
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=97894; -- Korialstrasz
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.474285721778869628 WHERE `entry`=98262; -- Blackmaw Shaman
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.439999938011169433 WHERE `entry`=98256; -- Blackmaw Pathfinder
UPDATE `creature_template` SET `minlevel`=45, `speed_walk`=1, `unit_flags3`=1048576 WHERE `entry`=97891; -- Unng Ak
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.314285635948181152 WHERE `entry`=97794; -- Blackmaw Pathfinder
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.439999938011169433 WHERE `entry`=98259; -- Blackmaw Warrior
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `speed_walk`=1 WHERE `entry`=97808; -- Infernal Siegebreaker
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=98410; -- Infernal Trigger
UPDATE `creature_template` SET `speed_run`=1.405714273452758789 WHERE `entry`=98020; -- Felguard Legionnaire
UPDATE `creature_template` SET `minlevel`=45, `speed_run`=1.177142858505249023 WHERE `entry`=109386; -- Felguard Legionnaire
UPDATE `creature_template` SET `minlevel`=45, `speed_run`=1.337142825126647949 WHERE `entry`=98022; -- Plague Imp
UPDATE `creature_template` SET `minlevel`=45, `speed_run`=1.302857160568237304 WHERE `entry`=97796; -- Felguard Legionnaire
UPDATE `creature_template` SET `speed_run`=1.474285721778869628 WHERE `entry`=97803; -- Plague Imp
UPDATE `creature_template` SET `gossip_menu_id`=0 WHERE `entry`=97854; -- Liza Galestride
UPDATE `creature_template` SET `minlevel`=45, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=101644; -- Greystone Shardmaster
UPDATE `creature_template` SET `minlevel`=45, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=67108864, `unit_flags2`=2048, `dynamicflags`=64 WHERE `entry`=94507; -- Enraged Ambershard
UPDATE `creature_template` SET `minlevel`=45 WHERE `entry`=94561; -- Warbrave Nava
UPDATE `creature_template` SET `minlevel`=45, `speed_walk`=1 WHERE `entry`=100427; -- Turbulent Lifefury
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=100418; -- Darkshard Crystal
UPDATE `creature_template` SET `minlevel`=45, `unit_flags`=32768 WHERE `entry`=101077; -- Sekhan
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=98825; -- Spiritwalker Ebonhorn
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags3`=8388608 WHERE `entry`=99711; -- Highmountain Protector
UPDATE `creature_template` SET `speed_walk`=0.60000002384185791, `speed_run`=0.857142865657806396 WHERE `entry`=94688; -- Diseased Grub
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2028, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=34816 WHERE `entry`=98915; -- Muun Windchest
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2815, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=102591; -- Bitestone Fishbrul
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=94610; -- Dargrul
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=97827; -- Ularogg Cragshaper
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2815, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `dynamicflags`=4 WHERE `entry`=102284; -- Bitestone Snailsman
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=4196352, `unit_flags3`=1, `HoverHeight`=10 WHERE `entry`=102632; -- Glowing Deepshard
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2815, `npcflag`=16777216, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912, `unit_flags3`=16777217 WHERE `entry`=102406; -- Stolen Drog
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=6293504 WHERE `entry`=102623; -- Stonefist Brawler
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2815, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=102297; -- Heavy Brewbrul
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2815, `npcflag`=0, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=94261; -- Bitestone Rockbeater
UPDATE `creature_template` SET `minlevel`=45, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=67141632, `unit_flags2`=2048, `dynamicflags`=64 WHERE `entry`=98653; -- Manaspine Basilisk
UPDATE `creature_template` SET `minlevel`=45, `npcflag`=0 WHERE `entry`=94286; -- Oakin Ironbull
UPDATE `creature_template` SET `minlevel`=45, `faction`=16, `BaseAttackTime`=2500, `unit_flags`=32768, `unit_flags2`=2099200 WHERE `entry`=95937; -- Hill Ettin
UPDATE `creature_template` SET `minlevel`=45, `npcflag`=0 WHERE `entry`=94255; -- Jale Rivermane
UPDATE `creature_template` SET `minlevel`=45, `npcflag`=0 WHERE `entry`=95051; -- Warbrave Oro
UPDATE `creature_template` SET `minlevel`=45, `speed_run`=1.142857193946838378 WHERE `entry`=94846; -- Bitestone Rockcrusher
UPDATE `creature_template` SET `minlevel`=45, `unit_flags`=33587968 WHERE `entry`=102276; -- Brulworm
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=103067; -- Bitestone Slinger
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `VehicleId`=4316 WHERE `entry`=102274; -- Bitestone Raider
UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=2785, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=18432 WHERE `entry`=108557; -- Kola Watermane
UPDATE `creature_template` SET `faction`=188, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=97741; -- Black-Footed Fox Kit
UPDATE `creature_template` SET `dynamicflags`=0 WHERE `entry`=100520; -- Rivermane Tauren



UPDATE `quest_template` SET `RewardBonusMoney`=550 WHERE `ID` IN (38036, 38558, 38053, 38052, 38806, 38797, 39575, 38916, 39992, 40520, 38909, 39027, 39043, 40266, 44557, 44414, 38784, 38499, 39026, 39025, 36309);
UPDATE `quest_template` SET `RewardBonusMoney`=675 WHERE `ID`=39800;
UPDATE `quest_template` SET `RewardBonusMoney`=70 WHERE `ID` IN (38206, 49929, 38035, 39735, 40388, 39988, 40112, 40515, 38913, 38912);
UPDATE `quest_template` SET `RewardBonusMoney`=825 WHERE `ID`=40740;
UPDATE `quest_template` SET `RewardBonusMoney`=280 WHERE `ID` IN (39990, 39983, 40167);
UPDATE `quest_template` SET `RewardBonusMoney`=1100 WHERE `ID` IN (42431, 38842, 40316, 39371, 40050, 40111, 43241, 39393, 39029, 38748, 36811);
UPDATE `quest_template` SET `RewardBonusMoney`=3250 WHERE `ID`=40567;


UPDATE `quest_objectives` SET `Description`='Forsaken slain' WHERE `ID`=277527;
UPDATE `quest_objectives` SET `Description`='Greymane\'s mission complete' WHERE `ID`=286405;
UPDATE `quest_objectives` SET `Description`='Speak with Genn Greymane' WHERE `ID`=279841;
UPDATE `quest_objectives` SET `Description`='Salute 7th Legion Dragoons' WHERE `ID`=279840;
UPDATE `quest_objectives` SET `Description`='Inspect Deck Guns' WHERE `ID`=279839;
UPDATE `quest_objectives` SET `Description`='Jump in to the Vault' WHERE `ID`=279777;
UPDATE `quest_objectives` SET `Description`='Escort Spiritwalker Ebonhorn to the Path of Huln' WHERE `ID`=279776;
UPDATE `quest_objectives` SET `Description`='Tichondrius defeated' WHERE `ID`=280144;
UPDATE `quest_objectives` SET `Flags`=1, `Description`='Defend Malfurion' WHERE `ID`=280142; -- 280142
UPDATE `quest_objectives` SET `Description`='Legion slain' WHERE `ID`=280137;
UPDATE `quest_objectives` SET `Description`='Ask Ebonhorn to Tell You the Story of Huln' WHERE `ID`=280397;
UPDATE `quest_objectives` SET `Description`='Darkshard Crystal' WHERE `ID`=280857;
UPDATE `quest_objectives` SET `Description`='The Story of Huln witnessed' WHERE `ID`=280365;
UPDATE `quest_objectives` SET `Description`='Follow Jale to Mayla Highmountain' WHERE `ID`=281830;
UPDATE `quest_objectives` SET `Description`='Lead Jale Rivermane to Thunder Totem' WHERE `ID`=278984;
UPDATE `quest_objectives` SET `Description`='Escape Bitestone Enclave' WHERE `ID`=284250;
UPDATE `quest_objectives` SET `Description`='Escape the Grasp of Dargrul' WHERE `ID`=280971;
UPDATE `quest_objectives` SET `Description`='Confront Dargrul the Underking' WHERE `ID`=278827;
UPDATE `quest_objectives` SET `Description`='Follow Warbrave Oro' WHERE `ID`=280130;
UPDATE `quest_objectives` SET `Description`='Bitestone drogbar slain' WHERE `ID`=283671;
UPDATE `quest_objectives` SET `Description`='Drogbar in Riverbend defeated' WHERE `ID`=278825;
UPDATE `quest_objectives` SET `Description`='Oakin Ironbull rescued' WHERE `ID`=279160;
UPDATE `quest_objectives` SET `Description`='Warbrave Oro rescued' WHERE `ID`=279159;
UPDATE `quest_objectives` SET `Description`='Jale Rivermane rescued' WHERE `ID`=278830;


UPDATE `creature_template` SET `femaleName`='' WHERE `entry` IN (93959, 98485, 94114, 103067, 98674, 107680, 94272, 94275, 98757, 98794, 96573, 96576, 98825, 101077, 92152, 96644, 96663, 98913, 92224, 43103, 94561, 94571, 94579, 114717, 23033, 92407, 114795, 92471, 94846, 92670, 94970, 110667, 95051, 110712, 95078, 92930, 92931, 92933, 92950, 92957, 90748, 90749, 99711, 110898, 90783, 90785, 97507, 97515, 95291, 93104, 90899, 90902, 93173, 97648, 95422, 99912, 99940, 97781, 97794, 91085, 97796, 97798, 102276, 97808, 97817, 100063, 97827, 97880, 97891, 97892, 97894, 142641, 97901, 97903, 97905, 93433, 97932, 97939, 97940, 93479, 97955, 97956, 93485, 93490, 93496, 93498, 93506, 98020, 98077, 95891, 98136, 93687, 93688, 100418, 100427, 109386, 100445, 98256, 98258, 98259, 104973, 98262, 98263, 96049, 98352, 109577, 98410);
UPDATE `creature_template` SET `femaleName`='', `subname`='Gilneas Brigade' WHERE `entry` IN (93960, 97447, 117654, 95889); -- Commander Lorna Crowley
UPDATE `creature_template` SET `femaleName`='', `subname`='Gilneas Brigade' WHERE `entry`=93961; -- Worgen Tracker
UPDATE `creature_template` SET `femaleName`='', `subname`='Gilneas Brigade' WHERE `entry`=93962; -- Worgen Stalker
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.5 WHERE `entry` IN (93983, 93113, 91069, 93358); -- Forsaken Dreadwing
UPDATE `creature_template` SET `femaleName`='', `subname`='Dalaran Pet Tournament Employee' WHERE `entry`=105220; -- Tournament Announcer
UPDATE `creature_template` SET `femaleName`='', `subname`='Dalaran Pet Tournament Employee' WHERE `entry`=105228; -- Greg
UPDATE `creature_template` SET `femaleName`='', `movementId`=121 WHERE `entry`=71693; -- Rascal-Bot
UPDATE `creature_template` SET `femaleName`='', `movementId`=121 WHERE `entry`=67230; -- Imperial Moth
UPDATE `creature_template` SET `femaleName`='' WHERE `entry`=51649; -- Moonkin Hatchling
UPDATE `creature_template` SET `femaleName`='', `subname`='Rivermane Chieftain' WHERE `entry` IN (94255, 99533); -- Jale Rivermane
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.949999988079071044 WHERE `entry`=94271; -- Skyfire Engineer
UPDATE `creature_template` SET `femaleName`='', `subname`='Rivermane Tribe' WHERE `entry`=94286; -- Oakin Ironbull
UPDATE `creature_template` SET `femaleName`='', `movementId`=121 WHERE `entry`=54128; -- Creepy Crate
UPDATE `creature_template` SET `femaleName`='', `subname`='Leatherworking Trainer' WHERE `entry`=98948; -- Hrul Sharphoof
UPDATE `creature_template` SET `femaleName`='Huln\'s Companion' WHERE `entry`=116854;
UPDATE `creature_template` SET `femaleName`='' WHERE `entry`=29726; -- Mr. Chilly
UPDATE `creature_template` SET `femaleName`='', `subname`='The Underking' WHERE `entry`=94610; -- Dargrul
UPDATE `creature_template` SET `femaleName`='', `subname`='Robert \"Chance\" Llore\'s Creation' WHERE `entry`=112553; -- Wintron
UPDATE `creature_template` SET `femaleName`='', `subname`='Supplies and Repairs' WHERE `entry`=110521; -- Supplier Barleyfoot
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.5 WHERE `entry`=95043; -- Young Mountainstrider
UPDATE `creature_template` SET `femaleName`='', `family`=160, `HealthModifier`=0.5 WHERE `entry`=110740; -- Skyfire Gryphon
UPDATE `creature_template` SET `femaleName`='', `subname`='Used Totem Vendor' WHERE `entry`=99574; -- Slyhoof the Shameless Shaman
UPDATE `creature_template` SET `femaleName`='', `subname`='Homemade Milk & Cheese Vendor' WHERE `entry`=108556; -- Kurd Butterhoof
UPDATE `creature_template` SET `femaleName`='', `subname`='Chief Architect of Gnomish Engineering' WHERE `entry` IN (92932, 90866); -- Tinkmaster Overspark
UPDATE `creature_template` SET `femaleName`='', `subname`='Produce Vendor' WHERE `entry`=99660; -- Fara Dawntrail
UPDATE `creature_template` SET `femaleName`='', `subname`='Lorna Crowley\'s Companion', `family`=160, `HealthModifier`=0.5 WHERE `entry` IN (97438, 97444, 97446, 97448); -- Donovan
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.5 WHERE `entry`=93171; -- Skeletal Gryphon
UPDATE `creature_template` SET `femaleName`='', `rank`=6, `HealthModifier`=0.5 WHERE `entry`=99913; -- Whitewater Grouper
UPDATE `creature_template` SET `femaleName`='', `family`=160, `type`=1 WHERE `entry`=102175; -- Silver Covenant Hippogryph
UPDATE `creature_template` SET `femaleName`='', `subname`='King of Stormwind' WHERE `entry`=97749; -- Anduin Wrynn
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.009999999776482582 WHERE `entry`=111172; -- Stormstruck Beaver
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.60000002384185791 WHERE `entry` IN (97803, 98022); -- Plague Imp
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.800000011920928955 WHERE `entry`=102283; -- Mushroom Merchant
UPDATE `creature_template` SET `femaleName`='', `subname`='Captain of the Windrunner' WHERE `entry`=93486; -- Dread-Captain Tattersail
UPDATE `creature_template` SET `femaleName`='', `movementId`=121 WHERE `entry`=80101; -- Royal Peachick
UPDATE `creature_template` SET `femaleName`='', `subname`='Captain of the Banshee\'s Wail' WHERE `entry`=93560; -- Deathweaver Cassandra
UPDATE `creature_template` SET `femaleName`='', `subname`='Captain of the Black Rose' WHERE `entry`=93563; -- Cauldronmaster Mills
UPDATE `creature_template` SET `femaleName`='', `subname`='Champion of the Banshee Queen' WHERE `entry`=95852; -- Nathanos Blightcaller
UPDATE `creature_template` SET `femaleName`='', `subname`='Lorna Crowley\'s Companion', `family`=160 WHERE `entry`=98114; -- Donovan
UPDATE `creature_template` SET `femaleName`='', `subname`='Battle Pet Day Care' WHERE `entry`=111569; -- Ms. Liddie
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.300000011920928955 WHERE `entry`=93834; -- Forsaken Dreadwing


UPDATE `gameobject_template` SET `Data1`=64266, `VerifiedBuild`=44325 WHERE `entry`=246491; -- Fever of Stormrays
UPDATE `gameobject_template` SET `IconName`='', `Data0`=2861, `Data1`=62231, `Data4`=5, `Data5`=95, `Data12`=682, `VerifiedBuild`=44325 WHERE `entry`=244777; -- Fjarnskaggl
UPDATE `gameobject_template` SET `castBarCaption`='Collecting', `Data1`=0, `ContentTuningId`=334, `VerifiedBuild`=44325 WHERE `entry`=241275; -- Skyfire Medical Supplies
UPDATE `gameobject_template` SET `castBarCaption`='Opening', `Data1`=0, `Data18`=682, `Data19`=2, `ContentTuningId`=682, `VerifiedBuild`=44325 WHERE `entry`=241558; -- Treasure Chest
UPDATE `gameobject_template` SET `name`='Gnome Drill', `VerifiedBuild`=44325 WHERE `entry`=240282; -- 240282
UPDATE `gameobject_template` SET `castBarCaption`='Broadcasting Signal', `ContentTuningId`=334, `VerifiedBuild`=44325 WHERE `entry`=240235; -- Skyfire Propeller
UPDATE `gameobject_template` SET `name`='Gnome Bolts Pile', `VerifiedBuild`=44325 WHERE `entry`=240283; -- 240283
UPDATE `gameobject_template` SET `castBarCaption`='Opening', `Data1`=0, `Data18`=682, `Data19`=2, `ContentTuningId`=682, `VerifiedBuild`=44325 WHERE `entry`=241557; -- Small Treasure Chest
UPDATE `gameobject_template` SET `name`='Gnome Toolbox', `VerifiedBuild`=44325 WHERE `entry`=240281; -- 240281
UPDATE `gameobject_template` SET `VerifiedBuild`=44325 WHERE `entry` IN (236833, 250089, 241630, 297572, 297571, 297570, 293759, 281638, 279586, 290974, 164766, 164765, 164764, 164763, 164762, 164761, 164760, 164759, 293696, 226911, 259392, 242229, 248767, 152614, 248584, 245227);
UPDATE `gameobject_template` SET `castBarCaption`='Opening', `Data1`=0, `Data18`=682, `Data19`=2, `ContentTuningId`=682, `VerifiedBuild`=44325 WHERE `entry`=241562; -- Small Treasure Chest
UPDATE `gameobject_template` SET `name`='Campfire', `VerifiedBuild`=44325 WHERE `entry`=255223; -- 255223
UPDATE `gameobject_template` SET `name`='Fiery Smoke', `VerifiedBuild`=44325 WHERE `entry`=242517; -- 242517
UPDATE `gameobject_template` SET `name`='Chemical Puddle', `VerifiedBuild`=44325 WHERE `entry`=242486; -- 242486
UPDATE `gameobject_template` SET `name`='Chemical Fire', `VerifiedBuild`=44325 WHERE `entry`=242483; -- 242483
UPDATE `gameobject_template` SET `ContentTuningId`=334, `VerifiedBuild`=44325 WHERE `entry`=242380; -- Volatile Flare
UPDATE `gameobject_template` SET `name`='Apothecary Cauldron', `VerifiedBuild`=44325 WHERE `entry`=242243; -- 242243
UPDATE `gameobject_template` SET `ContentTuningId`=334, `VerifiedBuild`=44325 WHERE `entry`=240210; -- Skyfire Parachute
UPDATE `gameobject_template` SET `name`='Radio Tower', `VerifiedBuild`=44325 WHERE `entry`=240285; -- 240285
UPDATE `gameobject_template` SET `name`='Control Console', `VerifiedBuild`=44325 WHERE `entry`=240284; -- 240284
UPDATE `gameobject_template` SET `name`='Campfire', `VerifiedBuild`=44325 WHERE `entry`=256939; -- 256939
UPDATE `gameobject_template` SET `type`=5, `Data0`=0, `Data1`=0, `VerifiedBuild`=44325 WHERE `entry`=164767; -- Wooden Chair
UPDATE `gameobject_template` SET `ContentTuningId`=334, `VerifiedBuild`=44325 WHERE `entry`=252142; -- Backpack
UPDATE `gameobject_template` SET `ContentTuningId`=334, `VerifiedBuild`=44325 WHERE `entry`=244823; -- The Skyfire
UPDATE `gameobject_template` SET `ContentTuningId`=642, `VerifiedBuild`=44325 WHERE `entry`=244567; -- Portal to The Skyfire
UPDATE `gameobject_template` SET `name`='L70ETC Bleachers', `ContentTuningId`=885, `VerifiedBuild`=44325 WHERE `entry`=259820; -- 259820
UPDATE `gameobject_template` SET `name`='Hay', `VerifiedBuild`=44325 WHERE `entry`=259240; -- 259240
UPDATE `gameobject_template` SET `name`='Ball 2', `VerifiedBuild`=44325 WHERE `entry`=253969; -- 253969
UPDATE `gameobject_template` SET `name`='Ball 1', `VerifiedBuild`=44325 WHERE `entry`=253968; -- 253968
UPDATE `gameobject_template` SET `ContentTuningId`=348, `VerifiedBuild`=44325 WHERE `entry`=268733; -- Hrul's Dwelling in Thundertotem
UPDATE `gameobject_template` SET `ContentTuningId`=348, `VerifiedBuild`=44325 WHERE `entry`=245204; -- Caruk the Simple
UPDATE `gameobject_template` SET `ContentTuningId`=348, `VerifiedBuild`=44325 WHERE `entry`=245203; -- Revelation of Garhan
UPDATE `gameobject_template` SET `ContentTuningId`=348, `VerifiedBuild`=44325 WHERE `entry`=245201; -- Leyota's Legacy
UPDATE `gameobject_template` SET `name`='Emerald Dream Portal', `ContentTuningId`=333, `VerifiedBuild`=44325 WHERE `entry`=245400; -- 245400
UPDATE `gameobject_template` SET `name`='Brazier', `VerifiedBuild`=44325 WHERE `entry`=248773; -- 248773
UPDATE `gameobject_template` SET `castBarCaption`='Opening', `Data1`=0, `Data19`=2, `ContentTuningId`=682, `VerifiedBuild`=44325 WHERE `entry`=245525; -- Small Treasure Chest
UPDATE `gameobject_template` SET `ContentTuningId`=333, `VerifiedBuild`=44325 WHERE `entry`=248593; -- Cooking Cauldron
UPDATE `gameobject_template` SET `castBarCaption`='Collecting', `Data1`=0, `ContentTuningId`=333, `VerifiedBuild`=44325 WHERE `entry`=245620; -- Mu'sha's Tears
UPDATE `gameobject_template` SET `castBarCaption`='Collecting', `ContentTuningId`=333, `VerifiedBuild`=44325 WHERE `entry`=245621; -- Bottle of Airspark
UPDATE `gameobject_template` SET `size`=1, `ContentTuningId`=682, `VerifiedBuild`=44325 WHERE `entry`=245543; -- Treasure Chest
UPDATE `gameobject_template` SET `name`='Hammer FX', `ContentTuningId`=333, `VerifiedBuild`=44325 WHERE `entry`=246716; -- 246716
UPDATE `gameobject_template` SET `name`='Highmountain Spike', `VerifiedBuild`=44325 WHERE `entry`=244816; -- 244816
UPDATE `gameobject_template` SET `size`=3, `ContentTuningId`=333, `VerifiedBuild`=44325 WHERE `entry`=246734; -- Featherstone
UPDATE `gameobject_template` SET `size`=2, `ContentTuningId`=333, `VerifiedBuild`=44325 WHERE `entry`=246736; -- Brulzerking
UPDATE `gameobject_template` SET `size`=2, `ContentTuningId`=333, `VerifiedBuild`=44325 WHERE `entry`=246740; -- Deep Rejuvenation
UPDATE `gameobject_template` SET `size`=1, `ContentTuningId`=0, `VerifiedBuild`=44325 WHERE `entry`=243287; -- Bitestone Enclave
UPDATE `gameobject_template` SET `size`=1, `ContentTuningId`=333, `VerifiedBuild`=44325 WHERE `entry`=242659; -- Tauren Baby


UPDATE `gameobject_questitem` SET `VerifiedBuild`=44325 WHERE (`Idx`=0 AND `GameObjectEntry` IN (241275,245620));

DELETE FROM `scenario_poi` WHERE (`CriteriaTreeID`=43618 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=43588 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=43585 AND `BlobIndex`=1 AND `Idx1`=1) OR (`CriteriaTreeID`=43585 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=43522 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=43520 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `scenario_poi` (`CriteriaTreeID`, `BlobIndex`, `Idx1`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `VerifiedBuild`) VALUES
(43618, 0, 0, 1475, 671, 0, 2, 0, 0, 44325),
(43588, 0, 0, 1475, 671, 0, 2, 0, 0, 44325),
(43585, 1, 1, 5006, 2930, 0, 1, 1475, 671, 44325),
(43585, 0, 0, 1475, 671, 0, 2, 0, 44628, 44325),
(43522, 0, 0, 1475, 671, 0, 2, 0, 0, 44325),
(43520, 0, 0, 1475, 671, 0, 2, 0, 0, 44325);

UPDATE `creature_template` SET `RangeAttackTime`='0', `AIName`='SmartAI' WHERE  `entry`=33278;
UPDATE `creature_template_addon` SET `auras`='62804' WHERE  `entry`=33278;

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (33278, 0, 0, 0, 1, 0, 100, 0, 500, 1500, 3000, 8000, 0, '', 88, 3327800, 3327820, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'OOC - Random Actionlist for Cosmetic Arrow');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (33278, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, '', 17, 376, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'On Reset - Emote State Ready Bow');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`,`event_param5`,`event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`,`target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3327800, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0,0,0, 11, 93474, 2, 0, 0, 0, 0, 10, 241497,0, 0, 0, 0, 0, 0, 0, 'Maestra Sentinel Actionlist - Cosmetic Shoot');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`,`event_param5`,`event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`,`target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3327820, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0,0,0, 11, 93474, 2, 0, 0, 0, 0, 10, 241496,0, 0, 0, 0, 0, 0, 0, 'Maestra Sentinel Actionlist - Cosmetic Shoot');
UPDATE `creature` SET `equipment_id`='1', `wander_distance`='0', `MovementType`='0' WHERE  `id`=33278;
UPDATE `creature` SET `wander_distance`='0', `MovementType`='0' WHERE  `id`=33375;

UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=33356;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('33356', '2', '39653');
UPDATE `creature_template` SET `maxlevel`='30' WHERE  `entry`=12922;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('12922', '2', '39617');
UPDATE `creature_template` SET `maxlevel`='30' WHERE  `entry`=3925;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('3925', '2', '39653');
UPDATE `creature_template` SET `maxlevel`='30' WHERE  `entry`=3924;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('3924', '2', '39653');
UPDATE `creature_template` SET `minlevel`='14', `maxlevel`='30' WHERE  `entry`=3926;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('3926', '2', '39653');
UPDATE `creature_template` SET `maxlevel`='30' WHERE  `entry`=3819;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('3819', '2', '39653');
UPDATE `creature_template` SET `minlevel`='10' WHERE  `entry`=32856;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('32856', '2', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=4054;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('4054', '2', '39617');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=34518;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('34518', '2', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=34366;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('34366', '2', '39653');
UPDATE `creature_template` SET `minlevel`='10' WHERE  `entry`=34390;
REPLACE INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES (34390, 0, 0, 0, 0, 39653);

UPDATE `gameobject_template` SET `Data1`='2952', `Data30`='0' WHERE  `entry`=19015;

DELETE FROM `creature_template` WHERE `entry`=34426;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_class`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (34426, 0, 0, 0, 0, 0, 'Laughing Sister', 'Laughing Sister', '', NULL, 'questinteract', 0, 10, 30, 0, 0, 0, 124, 16777216, 1, 1.14286, 1, 0, 0, 2000, 2000, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 7, 16778368, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 41043, 0, 0, 1, 0, 0, 0, '', 42979);


REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (34426, 0, 0, 0, 73, 0, 100, 1, 0, 0, 0, 0, 0, '', 80, 3442600, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spell Click - Actionlist (condition)');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (34426, 0, 1, 2, 11, 0, 100, 0, 0, 0, 0, 0, 0, '', 18, 770, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Spawn - Set Unattackable');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (34426, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Link - Set Passive');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3442600, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 56, 46543, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Add Item to Invoker');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3442600, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Despawn');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 34426, 0, 1, 14, 0, 13928, 0, 0, 1, 0, '', 'SAI if Invoker has Quest Status');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 34426, 0, 1, 28, 0, 13928, 0, 0, 1, 0, '', 'SAI if Invoker Quest Not Complete');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 34426, 0, 1, 8, 0, 13928, 0, 0, 1, 0, '', 'SAI if Invoker Quest Not Rewarded');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 1, 4054, 0, 0, 9, 0, 13928, 0, 0, 0, 0, '', 'SpellClick - IfPlayerHasQuest');
UPDATE `creature` SET  `wander_distance`='0', `MovementType`='0' WHERE  `id`=34426;
UPDATE `creature_template` SET `IconName`='questinteract', `faction`='124', `unit_flags`='0', `type_flags`='0' WHERE  `entry`=4054;
UPDATE `creature_template_addon` SET `bytes2`='1' WHERE  `entry`=4054;
UPDATE `smart_scripts` SET `link`='1', `event_type`='11', `event_flags`='0', `event_param2`='0', `event_param3`='0', `event_param4`='0', `action_type`='8', `action_param1`='3', `target_type`='1', `comment`='Spawn - Set React Assist' WHERE  `entryorguid`=4054 AND `source_type`=0 AND `id`=0 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (4054, 0, 2, 0, 2, 0, 100, 0, 0, 1, 1000, 2000, 0, '', 80, 405400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'HP 1% - Death Actionlist');
DELETE FROM `creature_template_model` WHERE  `CreatureID`=34426 AND `Idx`=1;
UPDATE `creature_template_model` SET `CreatureDisplayID`='2723' WHERE  `CreatureID`=34426 AND `Idx`=0;
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES (34426, 67404, 1, 0);
UPDATE `creature` SET `equipment_id`='1' WHERE  `id`=34366;
UPDATE `creature` SET `equipment_id`='1' WHERE  `id`=34390;

DELETE FROM `trainer_spell` WHERE `TrainerId`=580;
INSERT INTO `trainer_spell` (`TrainerId`, `SpellId`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`) VALUES
(580,125610,1000,0,0,0,0,0,1,41079),
(580,10676,500,0,0,119467,0,0,0,41079),
(580,10688,500,0,0,119467,0,0,0,41079),
(580,10707,500,0,0,119467,0,0,0,41079),
(580,10709,500,0,0,119467,0,0,0,41079),
(580,10711,500,0,0,119467,0,0,0,41079),
(580,10714,500,0,0,119467,0,0,0,41079),
(580,35907,500,0,0,119467,0,0,0,41079),
(580,36027,500,0,0,119467,0,0,0,41079),
(580,123212,500,0,0,119467,0,0,0,41079),
(580,123214,500,0,0,119467,0,0,0,41079),
(580,127816,500,0,0,119467,0,0,0,41079);