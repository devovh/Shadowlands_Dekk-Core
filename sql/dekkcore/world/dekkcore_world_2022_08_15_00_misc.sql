DELETE FROM creature WHERE guid = 5000000100000371;
DELETE FROM creature_addon WHERE guid = 5000000100000371;

DELETE FROM `creature_template_addon` WHERE  `entry`=179344;

DELETE FROM `creature_template` WHERE `entry`=179344;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_class`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (179344, 0, 0, 0, 0, 0, 'Drab Gromit', '', NULL, NULL, 'questinteract', 0, 1, 1, 8, 0, 0, 31, 1, 1, 1.14286, 1, 6, 0, 2000, 2000, 1, 1, 1, 0, 0, 1, 0, 291, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0.2, 1, 1, 1, 1, 1, 1, 0, 0, 202867, 0, 0, 1, 0, 0, 0, '', 44730);

SET @ENTRY := 179344;
UPDATE `creature_template` SET `AIName`="SmartAI" , `scriptname` ="" WHERE `entry`= @ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
replace into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('179344','0','0','0','64','0','100','0','0','0','0','0','0','','33','179344','0','0','0','0','0','7','0','0','0','0','0','0','0','On gossip hello - killcredit');

UPDATE `areatrigger_create_properties` SET `ScriptName`='areatrigger_pri_divine_star', `VerifiedBuild`=44325 WHERE `Id`=2148; 

UPDATE `creature_template` SET `minlevel`='10' WHERE  `entry`=17887;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('17887', '2', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='40' WHERE  `entry`=17550;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('17550', '1', '33095');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='40' WHERE  `entry`=17610;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('17610', '2', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='40' WHERE  `entry`=17609;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('17609', '2', '39653');

REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (9646, 1, 1, -1, 0, 0, 530, 476, 0, 1, 0, 0, 0, 0, 0, 41793);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (9646, 0, 0, 0, 261617, 24025, 530, 476, 0, 1, 0, 0, 0, 0, 0, 41793);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (9646, 0, 2, 32, 0, 0, 530, 476, 0, 0, 0, 0, 0, 0, 0, 41793);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (9646, 0, 1, 0, 261617, 24025, 530, 476, 0, 1, 0, 0, 0, 0, 0, 41793);

REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`,`VerifiedBuild`) VALUES (9646, 1, 0, -1916, -11791,0, 23877);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9646, 0, 0, -1423, -11289,0, 23877);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9646, 2, 0, -2044, -11878,0, 26124);

DELETE FROM `areatrigger_scripts` WHERE  `entry`=4280;

UPDATE `creature_template` SET `minlevel`='10' WHERE  `entry`=17589;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('17589', '2', '37474');
UPDATE `creature_template` SET `minlevel`='10' WHERE  `entry`=17588;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('17588', '2', '37474');

REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (9756, 1, 1, -1, 0, 0, 530, 476, 0, 1, 0, 0, 0, 0, 0, 41793);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (9756, 0, 0, 0, 253869, 17974, 530, 476, 0, 1, 0, 0, 0, 0, 0, 41793);

REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9756, 1, 0, -1916, -11794,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9756, 0, 0, -1934, -11848,0, 22908);

UPDATE `creature_template` SET `minlevel`='10' WHERE  `entry`=17323;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('17323', '2', '39653');
UPDATE `creature_template` SET `minlevel`='10' WHERE  `entry`=17334;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('17334', '2', '39653');

UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=7531 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=7537 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=7536 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=7535 AND `OptionID`=0;
UPDATE `gossip_menu_option` SET `BoxMoney`='0', `BoxText`='' WHERE  `MenuID`=7534 AND `OptionID`=0;

UPDATE `creature_template` SET `maxlevel`='40' WHERE  `entry`=17525;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('17225', '2', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='40' WHERE  `entry`=17524;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('17524', '2', '40593');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='40' WHERE  `entry`=17224;
UPDATE `creature_template_scaling` SET `ContentTuningID`='2' WHERE  `Entry`=17224 AND `DifficultyID`=0;
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='40' WHERE  `entry`=17339;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('17339', '2', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='40' WHERE  `entry`=17337;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('17337', '2', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='40' WHERE  `entry`=17338;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('17338', '2', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='40' WHERE  `entry`=17528;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('17528', '2', '40593');

REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (9569, 5, 5, -1, 0, 0, 530, 476, 0, 1, 0, 0, 0, 0, 0, 22908);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (9569, 4, 4, 0, 260780, 23863, 530, 476, 0, 1, 0, 0, 0, 0, 0, 22908);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (9569, 3, 3, 0, 260779, 17340, 530, 476, 0, 1, 0, 0, 0, 0, 0, 22908);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (9569, 2, 2, 0, 260779, 17340, 530, 476, 0, 1, 0, 0, 0, 0, 0, 22908);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (9569, 1, 1, 0, 260778, 17342, 530, 476, 0, 1, 0, 0, 0, 0, 0, 22908);
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (9569, 0, 0, 0, 260777, 17494, 530, 476, 0, 1, 0, 0, 0, 0, 0, 22908);


REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 5, 0, -2020, -11872,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 4, 6, -1528, -11460,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 4, 5, -1561, -11394,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 4, 4, -1586, -11321,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 4, 3, -1567, -11286,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 4, 2, -1382, -11450,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 4, 1, -1447, -11469,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 4, 0, -1466, -11474,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 3, 3, -1620, -11215,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 3, 2, -1552, -11211,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 3, 1, -1559, -11240,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 3, 0, -1626, -11286,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 2, 4, -1612, -11354,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 2, 3, -1552, -11315,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 2, 2, -1516, -11315,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 2, 1, -1453, -11464,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 2, 0, -1524, -11487,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 1, 7, -1612, -11354,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 1, 6, -1626, -11286,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 1, 5, -1622, -11253,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 1, 4, -1582, -11218,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 1, 3, -1546, -11217,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 1, 2, -1519, -11285,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 1, 1, -1453, -11464,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 1, 0, -1483, -11506,0, 22908);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`,`Z`, `VerifiedBuild`) VALUES (9569, 0, 0, -1401, -11442,0, 22908);

UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='40' WHERE  `entry`=22060;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('22060', '2', '33095');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='40' WHERE  `entry`=17664;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('17664', '2', '33095');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='40' WHERE  `entry`=17494;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('17494', '2', '40593');

DELETE FROM `creature_template_spell` WHERE (`CreatureID`=416 AND `Index` IN (4,3,2,1)) OR (`CreatureID`=1860 AND `Index` IN (7,6,5,4,3,2,1,0)) OR (`CreatureID`=26125 AND `Index` IN (7,6,5,4)) OR (`CreatureID` IN (34840,123640,131613) AND `Index`=1) OR (`CreatureID` IN (55335,89089,128521,129591,130573,134460,138699,141294,148640,161927,165147,166553,166554,172876,185842) AND `Index` IN (1,0)) OR (`CreatureID` IN (66299,111608,122012,123414,123640,126808,131271,131613,131945,132191,138069,146503,148769,167445,170455,170630,171109,171960,173342,178396) AND `Index`=0) OR (`CreatureID` IN (97817,110681,124988,138901,155527,157956,162221,166551,170400,170521,170577,173551,173553,178126,182445) AND `Index` IN (2,1,0)) OR (`CreatureID`=113042 AND `Index` IN (4,3,2,1,0)) OR (`CreatureID` IN (135227,169600) AND `Index` IN (3,2,1,0)) OR (`CreatureID`=157017 AND `Index` IN (5,4,3,2,1,0)) OR (`CreatureID`=165189 AND `Index` IN (7,6,4,3,2,1,0));
INSERT INTO `creature_template_spell`(`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES 
(416, 1, 4, 44325), -- Imp
(416, 2, 3110, 44325), -- Imp
(416, 3, 3, 44325), -- Imp
(416, 4, 4, 44325), -- Imp
(1860, 0, 1, 44325), -- Voidwalker
(1860, 1, 4, 44325), -- Voidwalker
(1860, 2, 3716, 44325), -- Voidwalker
(1860, 3, 17735, 44325), -- Voidwalker
(1860, 4, 112042, 44325), -- Voidwalker
(1860, 5, 17767, 44325), -- Voidwalker
(1860, 6, 3, 44325), -- Voidwalker
(1860, 7, 4, 44325), -- Voidwalker
(26125, 4, 47482, 44325), -- Risen Ghoul
(26125, 5, 47484, 44325), -- Risen Ghoul
(26125, 6, 3, 44325), -- Risen Ghoul
(26125, 7, 4, 44325), -- Risen Ghoul
(34840, 1, 66299, 44325), -- Hot Rod
(55335, 0, 103695, 44325), -- Rell Nightwind
(55335, 1, 103696, 44325), -- Rell Nightwind
(66299, 0, 130396, 44325), -- Gyrocopter Turret
(89089, 0, 179215, 44325), -- Prince Farondis
(89089, 1, 225948, 44325), -- Prince Farondis
(97817, 0, 193718, 44325), -- Highmountain Survivalist
(97817, 1, 193016, 44325), -- Highmountain Survivalist
(97817, 2, 197342, 44325), -- Highmountain Survivalist
(110681, 0, 220148, 44325), -- Enhanced Illusion
(110681, 1, 220081, 44325), -- Enhanced Illusion
(110681, 2, 220207, 44325), -- Enhanced Illusion
(111608, 0, 203379, 44325), -- Moonfall Riding Hippogryph
(113042, 0, 227160, 44325), -- Illidan Stormrage
(113042, 1, 227154, 44325), -- Illidan Stormrage
(113042, 2, 227161, 44325), -- Illidan Stormrage
(113042, 3, 224934, 44325), -- Illidan Stormrage
(113042, 4, 227153, 44325), -- Illidan Stormrage
(122012, 0, 244343, 44325), -- Direhorn Juvenile
(123414, 0, 250351, 44325), -- Champion of Krag'wa
(123640, 0, 246140, 44325), -- Field Gun Turret
(123640, 1, 246203, 44325), -- Field Gun Turret
(124988, 0, 251509, 44325), -- Lightforged Warframe
(124988, 1, 251485, 44325), -- Lightforged Warframe
(124988, 2, 251569, 44325), -- Lightforged Warframe
(126808, 0, 251903, 44325), -- Ata the Winglord
(128521, 0, 255007, 44325), -- Old Rotana
(128521, 1, 255002, 44325), -- Old Rotana
(129591, 0, 256947, 44325), -- Crimsonwood Demolisher
(129591, 1, 281258, 44325), -- Crimsonwood Demolisher
(130573, 0, 250951, 44325), -- Curseformed Ravager
(130573, 1, 250904, 44325), -- Curseformed Ravager
(131271, 0, 275231, 44325), -- Harli the Swift
(131613, 0, 259769, 44325), -- Hand of Fate
(131613, 1, 259794, 44325), -- Hand of Fate
(131945, 0, 260148, 44325), -- Goldfield's Rifle
(132191, 0, 272188, 44325), -- Piloted Farmhand
(134460, 0, 254970, 44325), -- Old K'zlotec
(134460, 1, 254971, 44325), -- Old K'zlotec
(135227, 0, 1, 44325), -- Vorrik
(135227, 1, 4, 44325), -- Vorrik
(135227, 2, 3, 44325), -- Vorrik
(135227, 3, 4, 44325), -- Vorrik
(138069, 0, 271931, 44325), -- Azerite Cannon
(138699, 0, 256947, 44325), -- Crimsonwood Demolisher
(138699, 1, 281258, 44325), -- Crimsonwood Demolisher
(138901, 0, 274038, 44325), -- Prototype Shredder MK-03
(138901, 1, 274587, 44325), -- Prototype Shredder MK-03
(138901, 2, 274054, 44325), -- Prototype Shredder MK-03
(141294, 0, 271600, 44325), -- Make Loh Go!
(141294, 1, 271601, 44325), -- Make Loh Go!
(146503, 0, 284590, 44325), -- Goblin Gyrocopter
(148640, 0, 283374, 44325), -- Crowd Pummeler
(148640, 1, 283388, 44325), -- Crowd Pummeler
(148769, 0, 288511, 44325), -- Goblin Pummeler
(155527, 0, 302623, 44325), -- Aquelian Honor Guard
(155527, 1, 302639, 44325), -- Aquelian Honor Guard
(155527, 2, 302642, 44325), -- Aquelian Honor Guard
(157017, 0, 1, 44325), -- Lithic Watcher
(157017, 1, 4, 44325), -- Lithic Watcher
(157017, 2, 329908, 44325), -- Lithic Watcher
(157017, 3, 329909, 44325), -- Lithic Watcher
(157017, 4, 3, 44325), -- Lithic Watcher
(157017, 5, 4, 44325), -- Lithic Watcher
(157956, 0, 308077, 44325), -- Bootus
(157956, 1, 325271, 44325), -- Bootus
(157956, 2, 308114, 44325), -- Bootus
(161927, 0, 315440, 44325), -- Ysera
(161927, 1, 315872, 44325), -- Ysera
(162221, 0, 315822, 44325), -- Stoneborn Legionnaire
(162221, 1, 315918, 44325), -- Stoneborn Legionnaire
(162221, 2, 316064, 44325), -- Stoneborn Legionnaire
(165147, 0, 321705, 44325), -- Soulfused Construct
(165147, 1, 321700, 44325), -- Soulfused Construct
(165189, 0, 1, 44325), -- Generic Hunter Pet
(165189, 1, 4, 44325), -- Generic Hunter Pet
(165189, 2, 17253, 44325), -- Generic Hunter Pet
(165189, 3, 2649, 44325), -- Generic Hunter Pet
(165189, 4, 61684, 44325), -- Generic Hunter Pet
(165189, 6, 3, 44325), -- Generic Hunter Pet
(165189, 7, 4, 44325), -- Generic Hunter Pet
(166551, 0, 324666, 44325), -- Outcast Venthyr
(166551, 1, 324669, 44325), -- Outcast Venthyr
(166551, 2, 324651, 44325), -- Outcast Venthyr
(166553, 0, 324744, 44325), -- Unyielding Venthyr
(166553, 1, 324734, 44325), -- Unyielding Venthyr
(166554, 0, 324785, 44325), -- Bossy Dredger
(166554, 1, 324790, 44325), -- Bossy Dredger
(167445, 0, 325940, 44325), -- Centurion Colossus
(169600, 0, 330123, 44325), -- Dredger Servant
(169600, 1, 330275, 44325), -- Dredger Servant
(169600, 2, 330269, 44325), -- Dredger Servant
(169600, 3, 330320, 44325), -- Dredger Servant
(170400, 0, 332168, 44325), -- Avatar of Aliothe
(170400, 1, 332169, 44325), -- Avatar of Aliothe
(170400, 2, 332172, 44325), -- Avatar of Aliothe
(170455, 0, 332343, 44325), -- "Valeshrieker"
(170521, 0, 332469, 44325), -- Swift Shadowstalker
(170521, 1, 332470, 44325), -- Swift Shadowstalker
(170521, 2, 332471, 44325), -- Swift Shadowstalker
(170577, 0, 332642, 44325), -- Nightsong Ardenmoth
(170577, 1, 332598, 44325), -- Nightsong Ardenmoth
(170577, 2, 332599, 44325), -- Nightsong Ardenmoth
(170630, 0, 342977, 44325), -- Kyrian Wings
(171109, 0, 333831, 44325), -- Odd Fungret
(171960, 0, 339029, 44325), -- Conjured Wings
(172876, 0, 337837, 44325), -- Wild Flayedwing
(172876, 1, 337842, 44325), -- Wild Flayedwing
(173342, 0, 342977, 44325), -- Kyrian Wings
(173551, 0, 340144, 44325), -- Praetorian Windblade
(173551, 1, 340149, 44325), -- Praetorian Windblade
(173551, 2, 342298, 44325), -- Praetorian Windblade
(173553, 0, 339927, 44325), -- Goliath Crusher
(173553, 1, 339932, 44325), -- Goliath Crusher
(173553, 2, 342298, 44325), -- Goliath Crusher
(178126, 0, 351494, 44325), -- Centurion Demolisher
(178126, 1, 351553, 44325), -- Centurion Demolisher
(178126, 2, 352323, 44325), -- Centurion Demolisher
(178396, 0, 352093, 44325), -- Xandria
(182445, 0, 361080, 44325), -- Bounding Bufonid
(182445, 1, 361073, 44325), -- Bounding Bufonid
(182445, 2, 361164, 44325), -- Bounding Bufonid
(185842, 0, 368614, 44325), -- Winged Soul Eater
(185842, 1, 368621, 44325); -- Winged Soul Eater

