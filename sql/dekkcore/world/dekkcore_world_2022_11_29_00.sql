
DELETE FROM `conversation_template` WHERE `Id`=13099;
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `TextureKitId`, `VerifiedBuild`) VALUES
(13099, 32410, 0, 46741);

UPDATE `conversation_template` SET `VerifiedBuild`=46741 WHERE `Id`=13828;
UPDATE `conversation_template` SET `VerifiedBuild`=46741 WHERE `Id`=15555;
UPDATE `conversation_template` SET `VerifiedBuild`=46741 WHERE `Id`=15554;


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (189085,171746));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(189085, 0, 0, 0, 482, 46741),
(171746, 0, 0, 0, 1327, 46741);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46741 WHERE (`DifficultyID`=0 AND `Entry` IN (162727,165549,165551,158032,165473,165037,162853,162872,176024,158053,174652,175021,165561,175023,169055,169830,158566,158387,166370,169751,159691,168388,169795,158752,171245,158642,162816,165024,164711,163414,171956,171745,174405,168453,165025,171093,171381,171747,171748,164128,169992,164713,169129,167948,167359,174650,160048,167935,167923,167356,160060,159856,170456,170191,176023,167949,162258,169634,167641,167273,161676,167642,157514,167355,161881,161890,62822,62821,171375,167743,170971,167747,167741,164833,167737,160424,157671,160415,167354,156558,167649,167645,172680,172173,165321,173000,157803,157843,172176,175791,180016,165350,161907,175310,164915,158339,161905,175963,175998,164221,161994,175314,173019,175370,167748,162222,160419,167205,160418,160417,161985,174624,166423,175311,167210,174505,167209,161988,161904,167208,168685,161909,175371,175312,176415,167201,165017,165413,165347,162223,164667,173022,167207));
UPDATE `creature_template_scaling` SET `ContentTuningID`=1336, `VerifiedBuild`=46741 WHERE (`Entry`=165440 AND `DifficultyID`=0);


UPDATE `creature_model_info` SET `VerifiedBuild`=46741 WHERE `DisplayID` IN (48061, 94039, 96271, 28815, 98463, 98055, 97076, 98582, 95788, 95804, 95818, 98462, 99910, 97079, 88361, 80031, 96272, 7571, 97325, 92246, 95784, 96789, 96787, 31124, 97657, 71887, 38189, 97652, 96786, 94992, 83594, 97655, 97654, 94921, 61550, 96641, 59546, 80245, 15983, 94155, 96132, 11094, 94867, 95797, 98465, 96131, 94882, 97016, 95964, 94932, 95384, 96211, 95571, 95112, 99867, 94704, 42722, 42720, 93593, 96469, 96561, 96466, 96212, 95395, 95963, 95392, 95965, 95573, 96438, 96115, 96209, 11686, 94812, 98076, 101523, 95655, 96443, 99514, 96102, 100073, 95944, 95791, 95376, 99516, 95704, 99524, 95979, 96072, 94782, 94148, 95511, 96200, 96138, 96335, 97893, 99520, 94718, 94122, 95394, 98197, 98077, 99843, 99515, 94053, 95948, 97877);
UPDATE `creature_model_info` SET `BoundingRadius`=0.44763687252998352, `CombatReach`=0.425000011920928955, `VerifiedBuild`=46741 WHERE `DisplayID`=76383;
UPDATE `creature_model_info` SET `BoundingRadius`=0.631957948207855224, `CombatReach`=0.60000002384185791, `VerifiedBuild`=46741 WHERE `DisplayID`=96999;
UPDATE `creature_model_info` SET `BoundingRadius`=1.075765132904052734, `CombatReach`=3, `VerifiedBuild`=46741 WHERE `DisplayID`=83597;
UPDATE `creature_model_info` SET `BoundingRadius`=0.770189225673675537, `CombatReach`=1.574999928474426269, `VerifiedBuild`=46741 WHERE `DisplayID` IN (94090, 95993);
UPDATE `creature_model_info` SET `BoundingRadius`=1.83896946907043457, `CombatReach`=1.25, `VerifiedBuild`=46741 WHERE `DisplayID` IN (95787, 95785);
UPDATE `creature_model_info` SET `BoundingRadius`=4.394217491149902343, `CombatReach`=1.5, `VerifiedBuild`=46741 WHERE `DisplayID`=97656;
UPDATE `creature_model_info` SET `BoundingRadius`=0.919484734535217285, `CombatReach`=0.625, `VerifiedBuild`=46741 WHERE `DisplayID` IN (95789, 95792, 95786);
UPDATE `creature_model_info` SET `BoundingRadius`=1.183341622352600097, `CombatReach`=3.300000190734863281, `VerifiedBuild`=46741 WHERE `DisplayID`=83604;
UPDATE `creature_model_info` SET `BoundingRadius`=0.760987162590026855, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46741 WHERE `DisplayID`=96239;
UPDATE `creature_model_info` SET `BoundingRadius`=0.88781827688217163, `CombatReach`=1.399999976158142089, `VerifiedBuild`=46741 WHERE `DisplayID`=96244;
UPDATE `creature_model_info` SET `BoundingRadius`=0.606859982013702392, `CombatReach`=0.412499994039535522, `VerifiedBuild`=46741 WHERE `DisplayID`=96635;
UPDATE `creature_model_info` SET `BoundingRadius`=1.268311858177185058, `CombatReach`=2, `VerifiedBuild`=46741 WHERE `DisplayID`=96243;
UPDATE `creature_model_info` SET `BoundingRadius`=1.197071075439453125, `CombatReach`=1.5, `VerifiedBuild`=46741 WHERE `DisplayID`=95113;
UPDATE `creature_model_info` SET `BoundingRadius`=0.870888948440551757, `CombatReach`=2.925000190734863281, `VerifiedBuild`=46741 WHERE `DisplayID`=95969;
UPDATE `creature_model_info` SET `BoundingRadius`=1.091128706932067871, `CombatReach`=1.95000004768371582, `VerifiedBuild`=46741 WHERE `DisplayID`=96555;
UPDATE `creature_model_info` SET `BoundingRadius`=3.68454742431640625, `CombatReach`=6, `VerifiedBuild`=46741 WHERE `DisplayID`=70087;
UPDATE `creature_model_info` SET `BoundingRadius`=1.420079946517944335, `CombatReach`=1.5, `VerifiedBuild`=46741 WHERE `DisplayID`=95687;
UPDATE `creature_model_info` SET `BoundingRadius`=0.696837902069091796, `CombatReach`=1.424999952316284179, `VerifiedBuild`=46741 WHERE `DisplayID`=95991;
UPDATE `creature_model_info` SET `BoundingRadius`=0.839329779148101806, `CombatReach`=1.5, `VerifiedBuild`=46741 WHERE `DisplayID` IN (96133, 96201);
UPDATE `creature_model_info` SET `BoundingRadius`=0.923262715339660644, `CombatReach`=1.65000009536743164, `VerifiedBuild`=46741 WHERE `DisplayID`=96489;
UPDATE `creature_model_info` SET `BoundingRadius`=1.211015939712524414, `CombatReach`=1.949999928474426269, `VerifiedBuild`=46741 WHERE `DisplayID`=95011;
UPDATE `creature_model_info` SET `BoundingRadius`=2.126192092895507812, `CombatReach`=1.80000007152557373, `VerifiedBuild`=46741 WHERE `DisplayID`=95796;
UPDATE `creature_model_info` SET `BoundingRadius`=0.93155074119567871, `CombatReach`=1.5, `VerifiedBuild`=46741 WHERE `DisplayID`=94757;
UPDATE `creature_model_info` SET `BoundingRadius`=0.733513593673706054, `CombatReach`=1.5, `VerifiedBuild`=46741 WHERE `DisplayID`=95231;
UPDATE `creature_model_info` SET `BoundingRadius`=0.686231195926666259, `CombatReach`=0.85000002384185791, `VerifiedBuild`=46741 WHERE `DisplayID`=94786;
UPDATE `creature_model_info` SET `BoundingRadius`=0.629497289657592773, `CombatReach`=1.125, `VerifiedBuild`=46741 WHERE `DisplayID`=96208;


UPDATE `gossip_menu` SET `VerifiedBuild`=46741 WHERE (`MenuID`=26053 AND `TextID`=41375);

UPDATE `gossip_menu_option` SET `VerifiedBuild`=46741 WHERE (`MenuID`=26053 AND `OptionID`=0);



DELETE FROM `creature_template` WHERE `entry`=189085;
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(189085, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33587200, 335546368, 0, 0, 0, 1); -- Past Self

UPDATE `creature_template` SET `BaseAttackTime`=2400 WHERE `entry`=162727; -- Bubbleblood
UPDATE `creature_template` SET `dynamicflags`=4 WHERE `entry`=165549; -- Sour Suckle
UPDATE `creature_template` SET `BaseAttackTime`=1818 WHERE `entry`=165473; -- Bloodtusk Alpha
UPDATE `creature_template` SET `BaseAttackTime`=2000, `unit_flags`=2147582208 WHERE `entry`=162853; -- Unbreakable Urtz
UPDATE `creature_template` SET `unit_flags`=2147582208, `HoverHeight`=13.5 WHERE `entry`=162872; -- Xantuth the Blighted
UPDATE `creature_template` SET `unit_flags`=768, `unit_flags3`=16777216 WHERE `entry`=165440; -- Stringy Growth
UPDATE `creature_template` SET `unit_flags`=570721024, `unit_flags2`=34817, `unit_flags3`=8192 WHERE `entry`=169055; -- Marrow Scraper
UPDATE `creature_template` SET `unit_flags`=570721024, `unit_flags2`=34817, `unit_flags3`=8193 WHERE `entry`=169751; -- Ashen Wasp
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=169795; -- Zombified Ashen Wasp
UPDATE `creature_template` SET `speed_run`=1.257142901420593261 WHERE `entry`=158752; -- Predatory Bloodtusk
UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=54, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=524288 WHERE `entry`=171746; -- Slimelet
UPDATE `creature_template` SET `unit_flags`=537166592 WHERE `entry`=171956; -- Morbid Ritualist
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=165025; -- Panicked Necroray
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=169129; -- Rotdust Bat
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=160060; -- Plague Refuse

UPDATE `creature_template` SET `BaseAttackTime`=1501 WHERE `entry`=180016; -- Spectral Feline

UPDATE `creature_template` SET `minlevel`=60, `BaseAttackTime`=1737 WHERE `entry`=165189; -- Generic Hunter Pet


DELETE FROM `quest_template` WHERE `ID`=66596;
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestPackageID`, `ContentTuningID`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitGiverModelSceneID`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `QuestSessionBonus`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(66596, 2, 0, 2573, 13642, 0, 0, 0, 1, 1, 1, 1, 7750, 393770, 0, 0, 0, 0, 1, 0, 538968064, 4194304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 6130900294268439629, 0, 0, 0, 0, 'Whispers on the Winds', 'Speak with Archmage Khadgar in Stormwind.', 'Hello, $p. It\'s been a while, and I wish we had more time to catch up.\n\nBut you see, I\'ve just had a rather enlightening... no, make that foreboding... yes, a foreboding conversation with an old friend.\n\nSometimes a revelation can be both, after all.\n\nI really must tell you of what I\'ve learned.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46741); -- -Unknown-

UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46741 WHERE `ID`=65655; -- Eyes of the Wolf
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46741 WHERE `ID`=58665; -- Rebellious Souls
UPDATE `quest_template` SET `QuestSortID`=13536, `VerifiedBuild`=46741 WHERE `ID`=65335; -- News from Oribos
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46741 WHERE `ID`=53028; -- A Dying World
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46741 WHERE `ID`=46727; -- Battle for Azeroth: Tides of War
UPDATE `quest_template` SET `VerifiedBuild`=46741 WHERE `ID` IN (62866, 61136, 65119, 61125, 62286, 62288, 60991, 61346, 49091, 62209, 63044, 66619, 60992, 60990, 61728, 62210, 61140, 65255, 59230, 58918, 65115, 61124, 62539, 61565, 49197, 49097, 64579, 59183, 62211, 59441, 49096, 60574, 59703, 58221, 59642, 61148, 60534, 61189, 57328, 61337, 60842, 62235, 60657, 61708, 60786, 62258, 59680, 60659, 61947, 61885, 61868, 61784, 57443, 60899, 66696, 66615, 60396, 60443, 60429, 46736, 46735, 46277, 61983, 57249);
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `RewardFactionOverride2`=7500, `VerifiedBuild`=46741 WHERE `ID`=52782; -- Call to Arms: Stormsong Valley
UPDATE `quest_template` SET `RewardFactionOverride2`=7500, `VerifiedBuild`=46741 WHERE `ID`=59018; -- Call to Arms: Vale of Eternal Blossoms
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46741 WHERE `ID`=63032; -- The Highlord Calls
UPDATE `quest_template` SET `RewardFactionOverride2`=15000, `VerifiedBuild`=46741 WHERE `ID`=53436; -- Azerite for the Alliance

DELETE FROM `quest_objectives` WHERE `ID`=429749;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
(429749, 66596, 0, 0, 0, 184776, 1, 0, 0, 0, 'Speak with Archmage Khadgar', 46741); -- 429749

UPDATE `quest_objectives` SET `VerifiedBuild`=46741 WHERE `ID` IN (423384, 394737, 422807, 337818, 337817, 408877, 405249, 422863, 422187, 422182, 422181, 422180, 422179, 422177, 422178, 422174, 422173, 422170, 422162, 405228, 407607, 407611, 405227, 405657, 407425, 409050, 427333, 405143, 406321, 406588, 407428, 405251, 422514, 422616, 422513, 422512, 422511, 422510, 396185, 395108, 422138, 422128, 422121, 405226, 407909, 406320, 340341, 395348, 421501, 421500, 421499, 421498, 421497, 421496, 421495, 421486, 421170, 396133, 407429, 396453, 398917, 398916, 396806, 396805, 396804, 396803, 409162, 396253, 396683, 396682, 396662, 405417, 405286, 405291, 405285, 405580, 405579, 405578, 405577, 405576, 405575, 405574, 405573, 405572, 405571, 405570, 405385, 405386, 408971, 408970, 392148, 396762, 396761, 396760, 396759, 396758, 396757, 396756, 392147, 405718, 405715, 405714, 405713, 405712, 405711, 405710, 405611, 404931, 407513, 408918, 407508, 407507, 407506, 405171, 406539, 407808, 406538, 407152, 404688, 404687, 407577, 407572, 407571, 407592, 407591, 396797, 396787, 396786, 396785, 396784, 396783, 408943, 408942, 408941, 405225, 405224, 406867, 406808, 406766, 406710, 392429, 392436, 405917, 404980, 427561, 427325, 398425, 398525, 398630, 398629, 398628, 398627, 398626, 398559, 398558, 289536, 289535, 289167, 406976, 341370);

DELETE FROM `quest_visual_effect` WHERE (`ID`=429749 AND `Index`=0);
INSERT INTO `quest_visual_effect` (`ID`, `Index`, `VisualEffect`, `VerifiedBuild`) VALUES
(429749, 0, 19751, 46741);

UPDATE `quest_visual_effect` SET `VerifiedBuild`=46741 WHERE (`Index`=0 AND `ID` IN (423384,422807,337818,405249,422187,422162,405228,405227,407425,409050,405143,406588,407428,405251,422514,396185,395108,405226,396133,407429,396453,396806,396805,396804,396803,409162,405417,405286,405291,405285,405385,405386,392148,392147,405611,404931,407507,405171,406539,406538,407152,404687,407572,407571,407591,396797,396787,396786,396785,396784,396783,405225,405224,406867,406808,406766,406710,392429,392436,405917,406976)) OR (`Index`=1 AND `ID` IN (396806,405285,405385,392147,405611,404931,407507,396785,396783,392429)) OR (`Index`=4 AND `ID` IN (405285,392147,405611,396783)) OR (`Index`=3 AND `ID` IN (405285,405385,392147,405611,396783,392429)) OR (`Index`=2 AND `ID` IN (405285,405385,392147,405611,404931,407507,396783,392429)) OR (`Index`=8 AND `ID`=392147) OR (`Index`=7 AND `ID`=392147) OR (`Index`=6 AND `ID` IN (392147,405611)) OR (`Index`=5 AND `ID` IN (392147,405611));

DELETE FROM `creature_template` WHERE `entry`=189085;
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `unit_class`, `WidgetSetID`, `WidgetSetUnitConditionID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `VerifiedBuild`) VALUES
(189085, 0, 0, 'Past Self', '', NULL, NULL, NULL, 8, 0, 0, 8, 0, 0, 0, 0, 7, 83894272, 0, 1, 1, 0, 0, 215771, 46741); -- Past Self

UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry` IN (175370, 175371, 165321, 169795, 165333, 157514, 168685, 161985, 164221, 161988, 158642, 161994, 165347, 165350, 169830, 73780, 170971, 167641, 167642, 167645, 165413, 167649, 165440, 159856, 21354, 158752, 172173, 165473, 172176, 157671, 180016, 167737, 167741, 171093, 167743, 167747, 167748, 169992, 65011, 165549, 165551, 165561, 174505, 62821, 62822, 162258, 304, 305, 157803, 160048, 160060, 163414, 171245, 157843, 174624, 167923, 28302, 167935, 169055, 167948, 167949, 170191, 175791, 169129, 164667, 171375, 171381, 18375, 18376, 164711, 164713, 158032, 158053, 175963, 167040, 60941, 175998, 164833, 172680, 170456, 160415, 160417, 160418, 160419, 160424, 164915, 162727, 162732, 167201, 167205, 167207, 167208, 167209, 167210, 165017, 165024, 165025, 161676, 168388, 165037, 167273, 158339, 171747, 171748, 162816, 162853, 158387, 168453, 162872, 32206, 169634, 173000, 165189, 173019, 173022, 161881, 161890, 164128, 166370, 171956, 161904, 161905, 175310, 175311, 161907, 175312, 161909, 175314, 158566, 159691, 169751, 14505, 166423);
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=14565; -- Charger
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.800000011920928955, `VerifiedBuild`=46741 WHERE `entry`=174405; -- Condensed Mucus
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=156558; -- Generic - Empty Bunny
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=9158; -- Warhorse
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=162222; -- Rathan
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=162223; -- Emeni
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=174650; -- Bubbling Refuse
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry` IN (174652, 175023); -- Animated Cruor
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18357; -- Ebon Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18359; -- Snowy Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18360; -- Golden Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18362; -- Swift Purple Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18406; -- Swift Blue Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=55272; -- Mountain Horse
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry` IN (176023, 176024); -- Crawbat
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry` IN (175021, 167355); -- Pulsating Maggot
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.800000011920928955, `VerifiedBuild`=46741 WHERE `entry`=171745; -- Congealed Plague
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.300000011920928955, `VerifiedBuild`=46741 WHERE `entry`=171746; -- Slimelet
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=167354; -- Writhing Rachis
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=167356; -- Slimy Burrower
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=167359; -- Overgrown Spore
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=176415; -- Louison

DELETE FROM `creature_template_model` WHERE (`CreatureID`=189085 AND `Idx`=0);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(189085, 0, 104598, 1, 1, 46741); -- Past Self

UPDATE `creature_template_model` SET `VerifiedBuild`=46741 WHERE (`Idx`=0 AND `CreatureID` IN (162732,162727,165549,165551,158032,165473,165037,162872,162853,165440,167040,176024,158053,175023,175021,174652,165561,169830,169055,158566,166370,158387,169795,169751,168388,159691,171245,158752,162816,158642,165024,164711,163414,171956,171745,174405,168453,171381,171093,165025,171748,171747,165333,164128,169992,164713,169129,174650,160060,167948,167935,167923,167359,167356,160048,170456,170191,159856,176023,167949,162258,169634,167641,167642,167273,161676,167355,157514,161890,161881,171375,62821,62822,170971,167747,167743,167741,164833,167737,160424,157671,167354,160415,156558,173000,172680,172173,167649,167645,165321,157843,157803,160417,161909,161985,167205,167209,160419,175791,161994,167207,175370,165347,175314,175998,173022,160418,175310,164915,165350,167210,166423,161907,173019,175963,175371,161904,175311,174624,165189,167748,180016,167201,161988,161905,175312,172176,167208,165413,158339,165017,164667,168685,164221,174505,73780,305,65011,55272,32206,28302,18362,18375,18376,18406,18359,18357,18360,14565,14505,9158,60941,21354,304)) OR (`Idx`=1 AND `CreatureID` IN (165037,176024,174652,165561,171245,162816,164711,163414,171746,171956,171745,174405,165025,171748,164713,169129,167359,167356,160048,170456,159856,176023,167949,162258,169634,161881,164833,160424,157671,160415,156558,172680,157803,165413,165017,164667,174505)) OR (`Idx`=2 AND `CreatureID` IN (176024,165561,171245,164711,171746,164713,176023,167949,161881,157671)) OR (`Idx`=3 AND `CreatureID` IN (171746,167949,157671)) OR (`Idx`=6 AND `CreatureID`=157671) OR (`Idx`=5 AND `CreatureID`=157671) OR (`Idx`=4 AND `CreatureID`=157671);
UPDATE `creature_template_model` SET `DisplayScale`=0.300000011920928955, `VerifiedBuild`=46741 WHERE (`CreatureID`=171746 AND `Idx`=0); -- Slimelet
UPDATE `creature_template_model` SET `DisplayScale`=1.299999952316284179, `VerifiedBuild`=46741 WHERE (`CreatureID`=176415 AND `Idx`=0); -- Louison
UPDATE `creature_template_model` SET `DisplayScale`=1.10000002384185791, `VerifiedBuild`=46741 WHERE (`CreatureID`=162222 AND `Idx`=0); -- Rathan
UPDATE `creature_template_model` SET `DisplayScale`=0.85000002384185791, `Probability`=0, `VerifiedBuild`=46741 WHERE (`CreatureID`=162223 AND `Idx`=0); -- Emeni


UPDATE `creature_questitem` SET `VerifiedBuild`=46741 WHERE (`Idx`=1 AND `CreatureEntry` IN (162727,165473,158752,167948,167923,160048,159856)) OR (`Idx`=0 AND `CreatureEntry` IN (162727,165549,165473,158053,165561,158566,158752,158642,167948,167923,160048,159856,161890,161881,174505)) OR (`Idx`=3 AND `CreatureEntry` IN (167948,167923,160048)) OR (`Idx`=2 AND `CreatureEntry` IN (167948,167923,160048));


UPDATE `gameobject_template` SET `Data32`=108, `VerifiedBuild`=46741 WHERE `entry`=348521; -- Strange Growth
UPDATE `gameobject_template` SET `VerifiedBuild`=46741 WHERE `entry` IN (337095, 336689, 349546, 353395, 358870, 358868, 358855, 353396, 326238, 326236, 353394, 353393, 352110, 345469, 348935, 348526, 353400, 351980, 353399, 353398, 353397, 349898, 354969, 353602, 351470, 349981, 353614, 252245, 353764, 353378, 336675, 354927, 350775, 364864, 353392, 355424, 353616, 353389, 364865, 353633, 353601, 353390, 353391, 365674, 356600, 355452, 342125, 353977, 355042, 365111, 356599, 351336, 364892, 356396, 351447, 358872, 355451, 358877, 358871, 357089, 358876, 358875, 358873, 358874);
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46741 WHERE `entry`=365670; -- Anvil
UPDATE `gameobject_template` SET `Data8`=103829, `Data10`=30092, `VerifiedBuild`=46741 WHERE `entry`=365672; -- Forge
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46741 WHERE `entry`=365673; -- Anvil


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46741 WHERE (`GameObjectEntry`=348521 AND `Idx` IN (1,0));


DELETE FROM `world_quest` WHERE `id` IN (60396 /*60396*/, 60443 /*60443*/, 64579 /*64579*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(60396, 259200, 19322, 1), -- 60396
(60443, 259200, 19334, 1), -- 60443
(64579, 86400, 21348, 1); -- 64579

UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091

UPDATE `gameobject_template` SET `Data1`='24611' WHERE  `entry`=190584;
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `QuestRequired`) VALUES ('190584', '38607', '1');

DELETE FROM `smart_scripts` WHERE  `entryorguid`=1544 AND `source_type`=0 AND `id`=3 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=1544 AND `source_type`=0 AND `id`=4 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=38923 AND `source_type`=0 AND `id`=0 AND `link`=0;


DELETE FROM `quest_offer_reward` WHERE `ID`=63003;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(63003, 1, 0, 0, 0, 0, 0, 0, 0, 'I\'m so pleased to see you again, my apprentice!', 46702); -- Collective Soul

UPDATE `quest_offer_reward` SET `RewardText`='I hope you\'re settled--there\'s no rest for the weary in Maldraxxus.', `VerifiedBuild`=46702 WHERE `ID`=59609; -- No Rest For the Dead
UPDATE `quest_offer_reward` SET `RewardText`='Our bond will grow in strength over time, but for now your training is complete.', `VerifiedBuild`=46702 WHERE `ID`=62848; -- Conduits, What Are They For?
UPDATE `quest_offer_reward` SET `RewardText`='May we prove worthy allies for the battles to come.', `VerifiedBuild`=46702 WHERE `ID`=61388; -- A Journey Made Together
UPDATE `quest_offer_reward` SET `RewardText`='Our shared knowledge will benefit all of Maldraxxus.', `VerifiedBuild`=46702 WHERE `ID`=59597; -- Come On, We're Simpatico!


DELETE FROM `quest_poi` WHERE (`QuestID`=59597 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=59597 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59597 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59597 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=59597 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(59597, 1, 4, 32, 0, 0, 2222, 1698, 0, 2, 0, 0, 0, 0, 0, 46702), -- Come On, We're Simpatico!
(59597, 0, 3, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1874036, 0, 46702), -- Come On, We're Simpatico!
(59597, 0, 2, 0, 396579, 165283, 2222, 1698, 0, 2, 0, 0, 0, 0, 0, 46702), -- Come On, We're Simpatico!
(59597, 1, 1, -1, 0, 0, 2222, 1698, 0, 2, 0, 0, 0, 0, 0, 46702), -- Come On, We're Simpatico!
(59597, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1874036, 0, 46702); -- Come On; We're Simpatico!

UPDATE `quest_poi` SET `VerifiedBuild`=46702 WHERE (`QuestID`=61983 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61983 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61983 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63032 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63032 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59609 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=59609 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59609 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=59609 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62848 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=62848 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62848 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62848 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61388 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=61388 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=61388 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61388 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=61388 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63003 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63003 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61359 AND `BlobIndex`=1 AND `Idx1`=7) OR (`QuestID`=61359 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=61359 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=61359 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=61359 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=61359 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61359 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=61359 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59556 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59556 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59556 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59556 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59556 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=58609 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=58609 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=58609 AND `BlobIndex`=2 AND `Idx1`=4) OR (`QuestID`=58609 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=58609 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=58609 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=58609 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=59597 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=59597 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59597 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59597 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59597 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(59597, 4, 0, 1857, -2472, 0, 46702), -- Come On, We're Simpatico!
(59597, 3, 0, 1858, -2472, 3394, 46702), -- Come On, We're Simpatico!
(59597, 2, 0, 1857, -2472, 0, 46702), -- Come On, We're Simpatico!
(59597, 1, 0, 1856, -2471, 0, 46702), -- Come On, We're Simpatico!
(59597, 0, 0, 1858, -2472, 3394, 46702); -- Come On; We're Simpatico!

UPDATE `quest_poi_points` SET `VerifiedBuild`=46702 WHERE (`QuestID`=61983 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61983 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61983 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63032 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63032 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59609 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59609 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59609 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59609 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62848 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=62848 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62848 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62848 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61388 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=61388 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61388 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61388 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61388 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63003 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63003 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61359 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=61359 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=61359 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=61359 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=61359 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61359 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61359 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61359 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59556 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=59556 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59556 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59556 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59556 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=58609 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=58609 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=58609 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=58609 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=58609 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=58609 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58609 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53436 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53436 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID`=63003;
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(63003, 1, 1, 0, 0, 0, 0, 0, 0, 46702); -- Collective Soul

UPDATE `quest_details` SET `VerifiedBuild`=46702 WHERE `ID` IN (61983, 63032, 59609, 62848, 61388, 59597, 61359, 59556);
UPDATE `quest_details` SET `Emote1`=1, `Emote2`=1, `VerifiedBuild`=46702 WHERE `ID`=58665; -- Rebellious Souls

DELETE FROM `creature_queststarter` WHERE (`id`=161904 AND `quest` IN (59609,62848,61388,59597));
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(161904, 59609, 46702), -- No Rest For the Dead offered Plague Deviser Marileth
(161904, 62848, 46702), -- Conduits, What Are They For? offered Plague Deviser Marileth
(161904, 61388, 46702), -- A Journey Made Together offered Plague Deviser Marileth
(161904, 59597, 46702); -- Come On; We're Simpatico! offered Plague Deviser Marileth

UPDATE `creature_queststarter` SET `VerifiedBuild`=46702 WHERE (`id`=161909 AND `quest`=61983) OR (`id`=162222 AND `quest`=58665) OR (`id`=161907 AND `quest` IN (63032,63003)) OR (`id`=165182 AND `quest`=61359) OR (`id`=158453 AND `quest`=59556);

DELETE FROM `creature_questender` WHERE (`id`=161904 AND `quest` IN (62848,61388,59597,63003));
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(161904, 62848, 46702), -- Conduits, What Are They For? ended by Plague Deviser Marileth
(161904, 61388, 46702), -- A Journey Made Together ended by Plague Deviser Marileth
(161904, 59597, 46702), -- Come On, We're Simpatico! ended by Plague Deviser Marileth
(161904, 63003, 46702); -- Collective Soul ended by Plague Deviser Marileth


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (172679,170016));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(172679, 0, 0, 0, 745, 46702),
(170016, 0, 0, 0, 837, 46702);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46702 WHERE (`DifficultyID`=0 AND `Entry` IN (172279,162222,162223,165333,175791,167201,161988,161907,161985,165347,161905,168685,172671,165182,172680,175312,175371,175370,175310,165321,175311,167645,167649,167208,174624,175314,173019,167207,172173,132969,174505,167210,173000,165350,165431,165215,165200,165199,165213,165131,164221,167748,165133,165177,160418,158259,172176,175998,165413,160419,165017,161904,161909,160417,173022,167205,161994,167743,167747,158339,164915,167209,158453,175963,166423,167640,172607,172567,175144,167741,161676,161679,161668,157843,168045,167355,167737,161890,160415,157803,161881,164667,156558,157671,157514,164833,170971,160424,167642,167273,167641,167354));


UPDATE `creature_model_info` SET `VerifiedBuild`=46702 WHERE `DisplayID` IN (99527, 97928, 94782, 96102, 98197, 98039, 93805, 99515, 96200, 99843, 99524, 99514, 99520, 96115, 96438, 95394, 96335, 99516, 97877, 96209, 68512, 95655, 95946, 95987, 96138, 95791, 96072, 94718, 95704, 94148, 98439, 95944, 94122, 98077, 95392, 95395, 95964, 96443, 95571, 100073, 97893, 100181, 96893, 95384, 94053, 95979, 94812, 99867, 94932, 94704, 95965, 95963, 96466, 96469, 96212, 96211, 96561, 96555, 95573);
UPDATE `creature_model_info` SET `BoundingRadius`=0.686231195926666259, `CombatReach`=0.85000002384185791, `VerifiedBuild`=46702 WHERE `DisplayID`=94786;
UPDATE `creature_model_info` SET `BoundingRadius`=2.126192092895507812, `CombatReach`=1.80000007152557373, `VerifiedBuild`=46702 WHERE `DisplayID`=95796;
UPDATE `creature_model_info` SET `BoundingRadius`=0.733513593673706054, `CombatReach`=1.5, `VerifiedBuild`=46702 WHERE `DisplayID`=95231;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `VerifiedBuild`=46702 WHERE `DisplayID`=105176;
UPDATE `creature_model_info` SET `BoundingRadius`=0.93155074119567871, `CombatReach`=1.5, `VerifiedBuild`=46702 WHERE `DisplayID` IN (94760, 94757);
UPDATE `creature_model_info` SET `BoundingRadius`=0.837949752807617187, `CombatReach`=0, `VerifiedBuild`=46702 WHERE `DisplayID`=93819;
UPDATE `creature_model_info` SET `BoundingRadius`=0.839329779148101806, `CombatReach`=1.5, `VerifiedBuild`=46702 WHERE `DisplayID` IN (96201, 96133, 96208);
UPDATE `creature_model_info` SET `BoundingRadius`=0.745240628719329833, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46702 WHERE `DisplayID`=97197;
UPDATE `creature_model_info` SET `BoundingRadius`=0.919484734535217285, `CombatReach`=0.625, `VerifiedBuild`=46702 WHERE `DisplayID` IN (95792, 95786);
UPDATE `creature_model_info` SET `BoundingRadius`=0.696837902069091796, `CombatReach`=1.424999952316284179, `VerifiedBuild`=46702 WHERE `DisplayID`=95991;
UPDATE `creature_model_info` SET `BoundingRadius`=3.68454742431640625, `CombatReach`=6, `VerifiedBuild`=46702 WHERE `DisplayID`=70087;
UPDATE `creature_model_info` SET `BoundingRadius`=0.923262715339660644, `CombatReach`=1.65000009536743164, `VerifiedBuild`=46702 WHERE `DisplayID`=96489;
UPDATE `creature_model_info` SET `BoundingRadius`=0.994055926799774169, `CombatReach`=1.049999952316284179, `VerifiedBuild`=46702 WHERE `DisplayID`=95687;
UPDATE `creature_model_info` SET `BoundingRadius`=1.937827825546264648, `CombatReach`=2.024999856948852539, `VerifiedBuild`=46702 WHERE `DisplayID`=96223;
UPDATE `creature_model_info` SET `BoundingRadius`=0.870888948440551757, `CombatReach`=2.925000190734863281, `VerifiedBuild`=46702 WHERE `DisplayID`=95969;
UPDATE `creature_model_info` SET `BoundingRadius`=1.197071075439453125, `CombatReach`=1.5, `VerifiedBuild`=46702 WHERE `DisplayID`=95113;
UPDATE `creature_model_info` SET `BoundingRadius`=1.136063933372497558, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46702 WHERE `DisplayID`=95376;


UPDATE `gossip_menu` SET `VerifiedBuild`=46702 WHERE (`MenuID`=26226 AND `TextID`=40493) OR (`MenuID`=26408 AND `TextID`=39914) OR (`MenuID`=26128 AND `TextID`=41488) OR (`MenuID`=26724 AND `TextID`=42492) OR (`MenuID`=25334 AND `TextID`=39958);

UPDATE `gossip_menu_option` SET `OptionText`='<Stay awhile and listen.>', `OptionBroadcastTextId`=137786, `VerifiedBuild`=46702 WHERE (`MenuID`=26408 AND `OptionID`=1); -- OptionBroadcastTextID: 137786 - 137786 - 144263 - 144263 - 160761 - 160761 - 160763 - 160763 - 160765 - 160765 - 160768 - 160768 - 167552 - 167552 - 173473 - 173473 - 176737 - 176737 - 188459 - 188459 - 202026 - 202026 - 205118 - 205118 - 205774 - 205774
UPDATE `gossip_menu_option` SET `VerifiedBuild`=46702 WHERE (`OptionID`=0 AND `MenuID` IN (26724,25334,26226));



UPDATE `creature_template` SET `BaseAttackTime`=1724, `unit_flags`=0 WHERE `entry`=26125; -- Risen Ghoul

UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55, `BaseAttackTime`=2000, `unit_flags`=33554688, `unit_flags2`=67635200, `unit_flags3`=17334273, `VehicleId`=7329 WHERE `entry`=172679; -- Power of the Primus
UPDATE `creature_template` SET `minlevel`=60, `BaseAttackTime`=1627 WHERE `entry`=416; -- Imp
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=1728 WHERE `entry`=1860; -- Voidwalker
UPDATE `creature_template` SET `gossip_menu_id`=26128 WHERE `entry`=165321; -- Merick Feldscar
UPDATE `creature_template` SET `speed_run`=1.142857193946838378, `BaseAttackTime`=1705 WHERE `entry`=17252; -- Felguard
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=170016; -- Leftover Parts
UPDATE `creature_template` SET `minlevel`=60, `BaseAttackTime`=1625 WHERE `entry`=165189; -- Generic Hunter Pet


UPDATE `quest_template` SET `VerifiedBuild`=46702 WHERE `ID` IN (61983, 64508, 49199, 65117, 62287, 65230, 65256, 65269, 60855, 60602, 60564, 58207, 59642, 59599, 58437, 57205, 66616, 61539, 60623, 61549, 59904, 61783, 61866, 61886, 61946, 59680, 62258, 60655, 59601);
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46702 WHERE `ID`=58665; -- Rebellious Souls
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46702 WHERE `ID`=63032; -- The Highlord Calls
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46702 WHERE `ID`=59609; -- No Rest For the Dead
UPDATE `quest_template` SET `RewardBonusMoney`=30900, `VerifiedBuild`=46702 WHERE `ID`=62848; -- Conduits, What Are They For?
UPDATE `quest_template` SET `RewardBonusMoney`=30900, `VerifiedBuild`=46702 WHERE `ID`=61388; -- A Journey Made Together
UPDATE `quest_template` SET `RewardBonusMoney`=30900, `VerifiedBuild`=46702 WHERE `ID`=59597; -- Come On, We're Simpatico!
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46702 WHERE `ID`=63003; -- Collective Soul
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46702 WHERE `ID`=62833; -- A Hero of Great Renown
UPDATE `quest_template` SET `RewardBonusMoney`=30900, `VerifiedBuild`=46702 WHERE `ID`=61359; -- Power of the Primus
UPDATE `quest_template` SET `RewardBonusMoney`=61750, `VerifiedBuild`=46702 WHERE `ID`=59556; -- Welcome To Our House
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `RewardFactionOverride2`=7500, `VerifiedBuild`=46702 WHERE `ID`=52950; -- Call to Arms: Vol'dun
UPDATE `quest_template` SET `RewardFactionOverride2`=7500, `VerifiedBuild`=46702 WHERE `ID`=59019; -- Call to Arms: Uldum
UPDATE `quest_template` SET `RewardBonusMoney`=123450, `VerifiedBuild`=46702 WHERE `ID`=60840; -- Wild Hunt Offensive
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46702 WHERE `ID`=58609; -- Taking The Seat
UPDATE `quest_template` SET `RewardFactionOverride2`=15000, `VerifiedBuild`=46702 WHERE `ID`=53436; -- Azerite for the Alliance


UPDATE `quest_objectives` SET `VerifiedBuild`=46702 WHERE `ID` IN (406976, 394737, 408862, 408861, 405799, 396579, 405709, 405708, 405704, 396514, 396515, 405689, 396502, 405835, 388729, 395349, 422151, 422147, 422149, 407609, 422438, 422437, 422515, 422662, 404910, 404909, 404831, 404829, 404828, 404827, 404826, 404825, 404795, 399077, 399016, 399099, 398874, 398873, 398872, 393819, 393820, 396692, 396683, 396682, 396662, 396615, 396614, 396583, 396582, 394283, 391901, 427327, 409135, 409133, 409127, 409126, 409125, 409108, 409124, 409120, 409106, 409105, 409104, 409103, 409102, 409101, 409100, 409099, 409098, 409097, 408128, 408127, 408126, 408125, 408124, 408123, 405281, 405280, 405271, 405270, 405269, 399076, 399075, 399074, 399073, 399072, 399071, 406262, 406258, 397203, 406683, 406764, 406809, 406865, 396797, 396787, 396786, 396785, 396784, 396783, 407577, 407572, 407571, 407592, 407591, 404431, 404430, 404429, 404428, 404427, 396666, 396665, 396664, 396655, 396590, 408764, 408763, 341370);


UPDATE `quest_visual_effect` SET `VerifiedBuild`=46702 WHERE (`Index`=0 AND `ID` IN (406976,408862,408861,405799,396579,396502,422149,422438,422437,422515,399016,399099,398874,398873,398872,396582,394283,409135,409133,409108,409124,405281,405280,405271,405270,405269,406262,406258,406683,406764,406809,406865,396797,396787,396786,396785,396784,396783,407572,407571,407591,404431,396665,396664,396655,396590,408763)) OR (`Index`=4 AND `ID` IN (422149,394283,396783)) OR (`Index`=3 AND `ID` IN (422149,396582,394283,396783)) OR (`Index`=2 AND `ID` IN (422149,399016,396582,394283,396783,396590)) OR (`Index`=1 AND `ID` IN (422149,399016,396582,394283,406258,396785,396783,396590)) OR (`Index`=9 AND `ID`=394283) OR (`Index`=8 AND `ID`=394283) OR (`Index`=7 AND `ID`=394283) OR (`Index`=6 AND `ID`=394283) OR (`Index`=5 AND `ID`=394283);

DELETE FROM `quest_reward_display_spell` WHERE (`QuestID`=61359 AND `Idx`=13);
INSERT INTO `quest_reward_display_spell` (`QuestID`, `Idx`, `SpellID`, `PlayerConditionID`, `VerifiedBuild`) VALUES
(61359, 13, 387617, 97501, 46702);



UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=46702 WHERE (`QuestID`=59609 AND `Idx`=0) OR (`QuestID`=59597 AND `Idx`=0) OR (`QuestID`=61359 AND `Idx` IN (12,11,10,9,8,7,6,5,4,3,2,1,0)) OR (`QuestID`=59556 AND `Idx`=0);


UPDATE `creature_template` SET `VerifiedBuild`=46702 WHERE `entry` IN (132969, 158453, 164833, 175370, 175371, 160415, 160417, 160418, 160419, 172607, 165131, 165133, 160424, 165413, 167640, 167641, 167642, 157671, 167645, 165431, 170971, 167649, 161559, 175963, 32206, 175144, 165177, 165182, 158259, 18375, 18376, 172671, 164915, 175998, 161597, 165199, 172679, 165200, 172680, 161881, 174624, 165213, 161890, 165215, 164667, 161904, 161905, 161907, 161909, 173000, 167737, 172173, 167741, 167743, 172176, 167747, 167748, 167201, 173019, 158339, 175791, 173022, 167205, 167207, 167208, 161668, 167209, 157514, 167210, 168045, 161676, 161679, 157803, 165017, 170016, 161985, 161988, 166423, 161994, 165321, 157843, 164221, 159238, 159239, 165333, 167273, 175310, 175311, 175312, 175314, 165347, 165350, 162586, 168685, 174505, 172567);
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=9158; -- Warhorse
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=167354; -- Writhing Rachis
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=167355; -- Pulsating Maggot
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=156558; -- Generic - Empty Bunny
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=18357; -- Ebon Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=18359; -- Snowy Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=18360; -- Golden Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=18362; -- Swift Purple Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=18406; -- Swift Blue Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=55272; -- Mountain Horse
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46702 WHERE `entry`=14565; -- Charger
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=162222; -- Rathan
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=162223; -- Emeni
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46702 WHERE `entry`=172279; -- Marion Velox


UPDATE `creature_template_model` SET `VerifiedBuild`=46702 WHERE (`Idx`=0 AND `CreatureID` IN (159239,162586,172279,165333,159238,175791,168685,167201,165347,161988,161985,161907,161905,172671,172679,165182,172680,175371,175370,175312,175310,175311,167649,167645,165321,175314,174624,174505,173019,172173,167210,167208,167207,132969,173000,165350,165431,165215,165213,165200,165199,167748,164221,160418,165177,165133,165131,158259,170016,175998,172176,165413,165017,161904,160419,161909,173022,167205,160417,161994,167747,167743,158339,164915,167209,158453,161597,161559,175963,166423,172607,167640,172567,175144,167741,157514,156558,167642,161890,157843,157803,161679,160415,170971,164667,161668,157671,161676,161881,160424,167355,167737,167641,167273,167354,168045,164833,55272,32206,18362,18375,18376,18406,18359,18357,18360,14565,9158)) OR (`Idx`=1 AND `CreatureID` IN (172680,174505,165213,165413,165017,161597,156558,157803,161679,160415,164667,157671,161881,160424,164833)) OR (`Idx`=6 AND `CreatureID` IN (165213,157671)) OR (`Idx`=5 AND `CreatureID` IN (165213,157671)) OR (`Idx`=4 AND `CreatureID` IN (165213,157671)) OR (`Idx`=3 AND `CreatureID` IN (165213,157671)) OR (`Idx`=2 AND `CreatureID` IN (165213,157671,161881));
UPDATE `creature_template_model` SET `DisplayScale`=0.85000002384185791, `Probability`=0, `VerifiedBuild`=46702 WHERE (`CreatureID`=162223 AND `Idx`=0); -- Emeni
UPDATE `creature_template_model` SET `DisplayScale`=1.10000002384185791, `VerifiedBuild`=46702 WHERE (`CreatureID`=162222 AND `Idx`=0); -- Rathan


UPDATE `creature_questitem` SET `VerifiedBuild`=46702 WHERE (`Idx`=1 AND `CreatureEntry`=162586) OR (`Idx`=0 AND `CreatureEntry` IN (162586,174505,161890,161881));


UPDATE `gameobject_template` SET `VerifiedBuild`=46702 WHERE `entry` IN (353977, 342125, 364882, 365111, 358876, 351336, 358877, 358874, 356396, 358875, 355452, 365674, 355451, 351447, 356599, 364892, 358873, 358872, 358871, 357089, 355042, 354927, 353390, 353392, 350775, 364865, 353764, 355424, 353633, 353389, 364864, 353391, 336675, 353616, 356600, 353601, 353378);
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46702 WHERE `entry`=365673; -- Anvil
UPDATE `gameobject_template` SET `Data8`=103829, `Data10`=30092, `VerifiedBuild`=46702 WHERE `entry`=365672; -- Forge
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46702 WHERE `entry`=365670; -- Anvil

DELETE FROM `world_quest` WHERE `id`=65269;
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(65269, 86400, 21395, 1); -- 65269

UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099



DELETE FROM `creature_equip_template` WHERE (`ID`=1 AND `CreatureID` IN (192527,192505));
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(192527, 1, 1899, 0, 0, 143, 0, 0, 0, 0, 0, 46741), -- Embassy Guard
(192505, 1, 155765, 0, 0, 0, 0, 0, 0, 0, 0, 46741); -- SI:7 Agent

UPDATE `creature_equip_template` SET `VerifiedBuild`=46741 WHERE (`ID`=1 AND `CreatureID` IN (133675,140307,139273,139257,140504,139256,139255,139268,140308,141079,88067,141030,68,50307,133369,133441,133433,44395,42421,928,5491,5492,173819,1351,141508,5489,6171,376,5484,51348,1444,113211,29712,1348,1371,1370,1368,114246,54443,54442,57800,68980,5504,5494,5493,5506,1367,1366,188678,46180,11068,188679,5386,52031,338,49701,42288,1316,1312,30713,5566,1141,1311,4078,1308,149131,147714,5694,147741,148233,1415,2708,147785,2485,5498,148124,149616,331,150122,174146,149626,175082,187734,171787,171822,176067,171821,164079,171796,164803,170640,170557,164596,173330,164685,156698,169634,157671,160415,161676,167273,167642,164667,167649,167645,161988,174505,175371,175312,175311,173019,167201,175310,173000,172176,161909,175998,173022,167205,175963,167741,158339,167737,160424,167743,167747,164830,167535,161757,170095,170099,163041,164588,166564,168440,161695,168522,168518,170492,162873,160522,158032)) OR (`ID`=2 AND `CreatureID` IN (140308,133675,1976,68,17252,167641,174505,162813)) OR (`ID`=4 AND `CreatureID` IN (133675,168685)) OR (`ID`=3 AND `CreatureID`=170493);

DELETE FROM `areatrigger_template` WHERE (`IsServerSide`=0 AND `Id` IN (29625,27842,19475));
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(29625, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 46741),
(27842, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 46741),
(19475, 0, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 46741);


UPDATE `conversation_actors` SET `ConversationActorId`=73735, `CreatureId`=161907, `CreatureDisplayInfoId`=96443, `VerifiedBuild`=46741 WHERE (`ConversationId`=13832 AND `Idx`=0);
UPDATE `conversation_actors` SET `VerifiedBuild`=46741 WHERE (`ConversationId`=13784 AND `Idx`=0);

DELETE FROM `conversation_line_template` WHERE `Id` IN (19931, 39250, 41062, 41061, 20068, 20067, 20066, 20065, 20064, 20058, 20057, 20056, 20055, 39719, 19787, 19786, 19785, 19790, 19792, 19791, 19789, 19788, 52136, 52135, 52134, 52133, 52132, 19932, 22067, 19934, 21615, 21613, 21614, 21612, 21611, 21610, 21609, 19799, 19797, 19796, 19795, 19794, 19793, 19825);
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(19931, 93, 0, 0, 46741),
(39250, 1372, 0, 0, 46741),
(41062, 0, 0, 0, 46741),
(41061, 0, 0, 0, 46741),
(20068, 0, 2, 0, 46741),
(20067, 0, 2, 0, 46741),
(20066, 0, 2, 0, 46741),
(20065, 0, 1, 0, 46741),
(20064, 0, 0, 0, 46741),
(20058, 0, 1, 0, 46741),
(20057, 0, 0, 0, 46741),
(20056, 0, 1, 0, 46741),
(20055, 0, 0, 0, 46741),
(39719, 1372, 0, 0, 46741),
(19787, 0, 0, 0, 46741),
(19786, 0, 0, 0, 46741),
(19785, 0, 0, 0, 46741),
(19790, 0, 1, 0, 46741),
(19792, 0, 2, 0, 46741),
(19791, 0, 1, 0, 46741),
(19789, 0, 1, 0, 46741),
(19788, 0, 0, 0, 46741),
(52136, 0, 1, 0, 46741),
(52135, 0, 0, 0, 46741),
(52134, 0, 0, 0, 46741),
(52133, 0, 1, 0, 46741),
(52132, 0, 0, 0, 46741),
(19932, 92, 1, 0, 46741),
(22067, 0, 0, 0, 46741),
(19934, 92, 0, 0, 46741),
(21615, 0, 2, 1, 46741),
(21613, 0, 0, 0, 46741),
(21614, 0, 2, 1, 46741),
(21612, 0, 1, 0, 46741),
(21611, 0, 1, 0, 46741),
(21610, 0, 0, 0, 46741),
(21609, 0, 0, 0, 46741),
(19799, 0, 1, 0, 46741),
(19797, 0, 1, 0, 46741),
(19796, 0, 1, 0, 46741),
(19795, 0, 1, 0, 46741),
(19794, 0, 1, 0, 46741),
(19793, 0, 0, 0, 46741),
(19825, 0, 0, 0, 46741);

UPDATE `conversation_line_template` SET `VerifiedBuild`=46741 WHERE `Id` IN (39718, 39249, 32411, 32410, 15462, 13132, 13131, 13130, 13129, 13128, 13127, 13126, 13125, 13124, 21797, 21795, 21794, 26769, 26768, 26767, 13123, 13122, 13121, 13133, 13120, 13134, 39347);

UPDATE `gameobject_template_addon` SET `faction`=35 WHERE `entry`=259114; -- [DNT] Command Table Collision Cylinder


DELETE FROM `scene_template` WHERE `SceneId`=2133;
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`, `Encrypted`) VALUES
(2133, 21, 2342, 0);


DELETE FROM `quest_offer_reward` WHERE `ID` IN (53351 /*The MOTHERLODE!!: Ironfoe*/, 51813 /*Blackrock Depths*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(53351, 1, 0, 0, 0, 0, 0, 0, 0, 'Serves him right fer stealin\' one o\' our most sacred artifacts. I hope he squirmed.', 46741), -- The MOTHERLODE!!: Ironfoe
(51813, 1, 0, 0, 0, 0, 0, 0, 0, 'Meddlin\' goblin bastards!\n\n<Moira takes a deep breath.>\n\nSorry, I just canna abide those green miscreants any longer.', 46741); -- Blackrock Depths

UPDATE `quest_offer_reward` SET `RewardText`='These are just some of the allies I\'ve discovered. I\'m sure there are more out there.\n\nI\'m also happy to tell you about how our current allies joined the Alliance. \n\nIt\'s always important to remember the past and the bonds we\'ve made.', `VerifiedBuild`=46741 WHERE `ID`=50239; -- A Choice of Allies
UPDATE `quest_offer_reward` SET `RewardText`='Thank you for coming, $n. Finding new allies isn\'t easy, but your support will help.', `VerifiedBuild`=46741 WHERE `ID`=49929; -- The Call for Allies
UPDATE `quest_offer_reward` SET `RewardText`='I have dire news, $n.', `VerifiedBuild`=46741 WHERE `ID`=63032; -- The Highlord Calls
UPDATE `quest_offer_reward` SET `RewardText`='Our rival houses will think twice before stepping foot outside of their strongholds again. Blood and glory to you, Maw Walker.', `VerifiedBuild`=46741 WHERE `ID`=60396; -- Aiding Maldraxxus


UPDATE `quest_poi` SET `VerifiedBuild`=46741 WHERE (`QuestID`=53342 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=53342 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=53342 AND `BlobIndex`=2 AND `Idx1`=4) OR (`QuestID`=53342 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=53342 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=53342 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53342 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53351 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=53351 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=53351 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53351 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=51813 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=51813 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=51813 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=51813 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50239 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=50239 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49929 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60136 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60136 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59836 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59836 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59836 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61540 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61540 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63032 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63032 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62866 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62866 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61983 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61983 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61983 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60396 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=60396 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=60396 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60396 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=60396 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=57249 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=57249 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=57249 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=0);

UPDATE `quest_poi_points` SET `VerifiedBuild`=46741 WHERE (`QuestID`=53342 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=53342 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=53342 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=53342 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=53342 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=53342 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53342 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53351 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=53351 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=53351 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53351 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=51813 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=51813 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=51813 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=51813 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50239 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=50239 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60136 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60136 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59836 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59836 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61540 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61540 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63032 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63032 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62866 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62866 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61983 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61983 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61983 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60396 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=60396 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=60396 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60396 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60396 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53436 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53436 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (53342 /*Molten Core*/, 53351 /*The MOTHERLODE!!: Ironfoe*/, 51813 /*Blackrock Depths*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(53342, 1, 1, 0, 0, 0, 0, 0, 0, 46741), -- Molten Core
(53351, 1, 1, 0, 0, 0, 0, 0, 0, 46741), -- The MOTHERLODE!!: Ironfoe
(51813, 1, 1, 0, 0, 0, 0, 0, 0, 46741); -- Blackrock Depths

UPDATE `quest_details` SET `VerifiedBuild`=46741 WHERE `ID` IN (50239, 49929, 60136);

DELETE FROM `quest_request_items` WHERE `ID` IN (51813 /*Blackrock Depths*/, 53351 /*The MOTHERLODE!!: Ironfoe*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(51813, 0, 0, 0, 0, 'The mind o\' a dwarf is a glorious thing.', 46741), -- Blackrock Depths
(53351, 0, 0, 0, 0, 'I wish I could see look on his face as ye rip the hammer away from his cold hands.', 0); -- The MOTHERLODE!!: Ironfoe


DELETE FROM `creature_queststarter` WHERE (`id`=140309 AND `quest`=53351) OR (`id`=126332 AND `quest` IN (51813,50239));
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(140309, 53351, 46741), -- The MOTHERLODE!!: Ironfoe offered Moira Thaurissan
(126332, 51813, 46741), -- Blackrock Depths offered Aysa Cloudsinger
(126332, 50239, 46741); -- A Choice of Allies offered Aysa Cloudsinger

UPDATE `creature_queststarter` SET `VerifiedBuild`=46741 WHERE (`id`=133197 AND `quest`=53342) OR (`id`=164079 AND `quest`=60136);

DELETE FROM `creature_questender` WHERE (`id`=133197 AND `quest`=53351) OR (`id`=140309 AND `quest`=51813) OR (`id`=126332 AND `quest` IN (50239,49929));
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(133197, 53351, 46741), -- The MOTHERLODE!!: Ironfoe ended by Moira Thaurissan
(140309, 51813, 46741), -- Blackrock Depths ended by Moira Thaurissan
(126332, 50239, 46741), -- A Choice of Allies ended by Aysa Cloudsinger
(126332, 49929, 46741); -- The Call for Allies ended by Aysa Cloudsinger


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=12 AND `Entry` IN (143567,139904,139273,139256,139896,139267,139270,140504,139272,139255,139257,139852,189085,139268,140380,139686,139687,139689,140308,140309,140307)) OR (`DifficultyID`=0 AND `Entry` IN (133197,192527,192529,198529,198482,197287,192505,198509,198506,198505,192354,192530,172876,172882));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(143567, 12, 0, 0, 674, 46741),
(139904, 12, 0, 0, 464, 46741),
(139273, 12, 0, 0, 464, 46741),
(139256, 12, 0, 0, 517, 46741),
(139896, 12, 0, 0, 464, 46741),
(139267, 12, 0, 0, 464, 46741),
(139270, 12, 0, 0, 464, 46741),
(140504, 12, 0, 0, 464, 46741),
(139272, 12, 1, 1, 464, 46741),
(139255, 12, 0, 0, 517, 46741),
(139257, 12, 0, 0, 517, 46741),
(139852, 12, 0, 0, 517, 46741),
(189085, 12, 0, 0, 482, 46741),
(139268, 12, 0, 0, 464, 46741),
(140380, 12, 0, 0, 517, 46741),
(139686, 12, 0, 0, 464, 46741),
(139687, 12, 0, 0, 464, 46741),
(139689, 12, 0, 0, 464, 46741),
(140308, 12, 0, 0, 464, 46741),
(140309, 12, 0, 0, 464, 46741),
(140307, 12, 0, 0, 464, 46741),
(133197, 0, 0, 0, 293, 46741),
(192527, 0, 0, 0, 2150, 46741),
(192529, 0, 0, 0, 2150, 46741),
(198529, 0, 0, 0, 864, 46741),
(198482, 0, 0, 0, 864, 46741),
(197287, 0, 0, 0, 864, 46741),
(192505, 0, 0, 0, 2150, 46741),
(198509, 0, 0, 0, 81, 46741),
(198506, 0, 0, 0, 864, 46741),
(198505, 0, 0, 0, 864, 46741),
(192354, 0, 0, 0, 2150, 46741),
(192530, 0, 0, 0, 2150, 46741),
(172876, 0, 0, 0, 837, 46741),
(172882, 0, 0, 0, 837, 46741);


DELETE FROM `creature_model_info` WHERE `DisplayID` IN (104597, 107891, 107893, 107885, 110173, 110111, 109492, 107886, 107883, 110154, 110153, 107896);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(104597, 0.722000002861022949, 2, 0, 46741),
(107891, 0.305999994277954101, 1.5, 0, 46741),
(107893, 0.305999994277954101, 1.5, 0, 46741),
(107885, 0.305999994277954101, 1.5, 0, 46741),
(110173, 0.722000002861022949, 2, 0, 46741),
(110111, 0.382999986410140991, 1.5, 0, 46741),
(109492, 0.305999994277954101, 1.5, 0, 46741),
(107886, 0.305999994277954101, 1.5, 0, 46741),
(107883, 0.208000004291534423, 1.5, 0, 46741),
(110154, 0.722000002861022949, 2, 0, 46741),
(110153, 0.208000004291534423, 1.5, 0, 46741),
(107896, 0.305999994277954101, 1.5, 0, 46741);

UPDATE `creature_model_info` SET `VerifiedBuild`=46741 WHERE `DisplayID` IN (80349, 80443, 81489, 81333, 81316, 81317, 70969, 70964, 70965, 81335, 81266, 85679, 84881, 70968, 82281, 83052, 87912, 85249, 2451, 1060, 34117, 10045, 60711, 69893, 39100, 69890, 14614, 69892, 7996, 84990, 39096, 37122, 39095, 87023, 17200, 84989, 37112, 37015, 22612, 29755, 86665, 37014, 14615, 5070, 1460, 5131, 2788, 6448, 2306, 41667, 14331, 14332, 83229, 81533, 14632, 14613, 46929, 82897, 6444, 6080, 83233, 93416, 82874, 104844, 24877, 82928, 82918, 29961, 93411, 93415, 93408, 93413, 72186, 98008, 18890, 18889, 18054, 1659, 100161, 100179, 19732, 100180, 100175, 100171, 100169, 100177, 100173, 100163, 100162, 100164, 62734, 36792, 36791, 13049, 37124, 34160, 39501, 1499, 3284, 3289, 98599, 1501, 87714, 66361, 7008, 86662, 86661, 66363, 37121, 86664, 3283, 37120, 86657, 4885, 4887, 66362, 37117, 37118, 1495, 5548, 3282, 36786, 36790, 5549, 72724, 86654, 4399, 20873, 86663, 104846, 1717, 18055, 1503, 262, 1500, 11746, 11747, 1498, 73152, 1524, 38800, 38804, 39809, 47231, 19670, 99506, 1418, 99496, 3285, 3302, 338, 15921, 86658, 2256, 36656, 106441, 99391, 5446, 1141, 99187, 10591, 106457, 5081, 99381, 5080, 99379, 32928, 99186, 99185, 99193, 1486, 1477, 99383, 27261, 3445, 1432, 5441, 99421, 1694, 37310, 99423, 99422, 1502, 5073, 1491, 221, 3444, 1489, 99417, 37311, 2181, 11680, 10624, 93520, 93516, 54859, 93617, 32776, 1494, 2211, 37119, 68845, 86659, 18322, 87578, 90206, 19177, 104845, 58478, 257, 58785, 90208, 99415, 89772, 5076, 89933, 89777, 328, 18930, 89931, 99418, 1473, 1472, 2968, 92464, 26069, 4626, 90342, 99389, 89785, 1525, 90207, 89771, 90197, 99430, 67053, 92463, 19803, 90341, 20985, 99420, 90201, 89786, 1484, 89885, 104843, 3167, 90209, 46209, 90104, 90360, 20988, 1480, 3292, 56857, 21342, 19178, 37874, 89932, 89930, 99416, 134, 19619, 59145, 16910, 25777, 17241, 57081, 26067, 94657, 25420, 93232, 25423, 25439, 93951, 25375, 94471, 93579, 95532, 96747, 93584, 24103, 93589, 97425, 94021, 73366, 94627, 93596, 93593, 93599, 92191, 96587, 105360, 96576, 104818, 94141, 98220, 100398, 94665, 97936, 96754, 99162, 92192, 99156, 95194, 94655, 94286, 95252, 77405, 95258, 62093, 94612, 77406, 92399, 95081, 98697, 93577, 92385, 94491, 93578, 27153, 96712, 93595, 93581, 90397, 99205, 98194, 97424, 74802, 88012, 92714, 98688, 92345, 86231, 88016, 93585, 93151, 90422, 95843, 96603, 94322, 94586, 99155, 96196, 93598, 105361, 93601, 19283, 95253, 104785, 95464, 94472, 96637, 96614, 98692, 96281, 28118, 28120, 96510, 93580, 94611, 96744, 96602, 27823, 99478, 95557, 93588, 97029, 97649, 97347, 99050, 95042, 93587, 99382, 93590, 93582, 93586, 94614, 93592, 93600, 96642, 93201, 96625, 95260, 97650, 96714, 93597, 97651, 96624, 94449, 95660, 94053, 95571, 96438, 96115, 96335, 96138, 94718, 99843, 99524, 99515, 99520, 98197, 95704, 94782, 94122, 96443, 96102, 97877, 99516, 99514, 95655, 95394, 96072, 98076, 94148, 95791, 98077, 95944, 100073, 95979, 96555, 96466, 94812, 95948, 95511, 96212, 96561, 96469, 95965, 95395, 95963, 94932, 94704, 96134, 97412, 106907, 96252, 95011, 94927, 98429, 95112, 98461, 99414, 97066, 97016, 95780, 9904, 97853, 96444, 96445, 101523, 96447, 95577, 97852, 98673, 95385, 100389, 97894, 94913, 95384, 95392, 96875, 94090, 95991, 94791, 96462, 96461, 98467, 94905, 96829, 95545, 95950, 94882, 96899, 95949, 97893, 95386, 96211, 97655, 59546, 96591, 97654, 98055, 96635, 61550, 94402, 96310, 99905, 97325, 97076, 99910, 45494, 98581, 97079, 48061, 96271, 96446, 95762, 97072, 98003, 94384, 96553, 95848, 100155, 95826, 96185, 96183, 65037, 99861, 94404, 94407, 80021, 94405, 97322, 96821, 95781, 96876, 94924, 94039, 98463, 98582, 96787, 98462, 96272, 95784, 98465, 80031, 95788, 95804, 88361, 95573, 95787, 99867, 11686);
UPDATE `creature_model_info` SET `BoundingRadius`=1.115179181098937988, `CombatReach`=0.75, `VerifiedBuild`=46741 WHERE `DisplayID`=49134;
UPDATE `creature_model_info` SET `BoundingRadius`=0.347000002861022949, `CombatReach`=1.5, `VerifiedBuild`=46741 WHERE `DisplayID` IN (70963, 82772);
UPDATE `creature_model_info` SET `BoundingRadius`=1.549813032150268554, `VerifiedBuild`=46741 WHERE `DisplayID`=32648;
UPDATE `creature_model_info` SET `BoundingRadius`=0.305999994277954101, `CombatReach`=1.5, `VerifiedBuild`=46741 WHERE `DisplayID` IN (86214, 86215);
UPDATE `creature_model_info` SET `BoundingRadius`=2.274932622909545898, `CombatReach`=2.5, `VerifiedBuild`=46741 WHERE `DisplayID`=82155;
UPDATE `creature_model_info` SET `BoundingRadius`=0.102300003170967102, `CombatReach`=0.33000001311302185, `VerifiedBuild`=46741 WHERE `DisplayID`=84157;
UPDATE `creature_model_info` SET `BoundingRadius`=0.221895694732666015, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46741 WHERE `DisplayID`=72183;
UPDATE `creature_model_info` SET `BoundingRadius`=0.60000002384185791, `VerifiedBuild`=46741 WHERE `DisplayID`=76046;
UPDATE `creature_model_info` SET `BoundingRadius`=0.106837116181850433, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46741 WHERE `DisplayID`=344;
UPDATE `creature_model_info` SET `BoundingRadius`=0.416666418313980102, `CombatReach`=1.80000007152557373, `VerifiedBuild`=46741 WHERE `DisplayID`=87530;
UPDATE `creature_model_info` SET `BoundingRadius`=1.420079946517944335, `CombatReach`=1.5, `VerifiedBuild`=46741 WHERE `DisplayID` IN (97981, 95687, 95943);
UPDATE `creature_model_info` SET `BoundingRadius`=1.121858954429626464, `VerifiedBuild`=46741 WHERE `DisplayID`=98199;
UPDATE `creature_model_info` SET `BoundingRadius`=1.937827825546264648, `CombatReach`=2.024999856948852539, `VerifiedBuild`=46741 WHERE `DisplayID`=96223;
UPDATE `creature_model_info` SET `BoundingRadius`=0.686231195926666259, `CombatReach`=0.85000002384185791, `VerifiedBuild`=46741 WHERE `DisplayID`=94786;
UPDATE `creature_model_info` SET `BoundingRadius`=0.733513593673706054, `CombatReach`=1.5, `VerifiedBuild`=46741 WHERE `DisplayID` IN (95231, 94055);
UPDATE `creature_model_info` SET `BoundingRadius`=2.126192092895507812, `CombatReach`=1.80000007152557373, `VerifiedBuild`=46741 WHERE `DisplayID`=95796;
UPDATE `creature_model_info` SET `BoundingRadius`=0.839329779148101806, `CombatReach`=1.5, `VerifiedBuild`=46741 WHERE `DisplayID` IN (96201, 96133, 96208);
UPDATE `creature_model_info` SET `BoundingRadius`=0.919484734535217285, `CombatReach`=0.625, `VerifiedBuild`=46741 WHERE `DisplayID` IN (95792, 95786);
UPDATE `creature_model_info` SET `BoundingRadius`=0.93155074119567871, `CombatReach`=1.5, `VerifiedBuild`=46741 WHERE `DisplayID` IN (94757, 95559, 94833);
UPDATE `creature_model_info` SET `BoundingRadius`=0.923262715339660644, `CombatReach`=1.65000009536743164, `VerifiedBuild`=46741 WHERE `DisplayID`=96489;
UPDATE `creature_model_info` SET `BoundingRadius`=3.68454742431640625, `CombatReach`=6, `VerifiedBuild`=46741 WHERE `DisplayID`=70087;
UPDATE `creature_model_info` SET `BoundingRadius`=0.870888948440551757, `CombatReach`=2.925000190734863281, `VerifiedBuild`=46741 WHERE `DisplayID`=95969;
UPDATE `creature_model_info` SET `BoundingRadius`=1.197071075439453125, `CombatReach`=1.5, `VerifiedBuild`=46741 WHERE `DisplayID`=95113;
UPDATE `creature_model_info` SET `BoundingRadius`=1.022457480430603027, `CombatReach`=1.079999923706054687, `VerifiedBuild`=46741 WHERE `DisplayID`=95570;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `VerifiedBuild`=46741 WHERE `DisplayID`=43178;
UPDATE `creature_model_info` SET `BoundingRadius`=1.355584144592285156, `CombatReach`=1.5, `VerifiedBuild`=46741 WHERE `DisplayID`=96467;
UPDATE `creature_model_info` SET `BoundingRadius`=0.699441432952880859, `CombatReach`=1.25, `VerifiedBuild`=46741 WHERE `DisplayID` IN (96209, 96200);
UPDATE `creature_model_info` SET `BoundingRadius`=1.760997176170349121, `CombatReach`=1.949999928474426269, `VerifiedBuild`=46741 WHERE `DisplayID`=95483;
UPDATE `creature_model_info` SET `BoundingRadius`=0.557368934154510498, `CombatReach`=1.871999979019165039, `VerifiedBuild`=46741 WHERE `DisplayID`=95968;
UPDATE `creature_model_info` SET `BoundingRadius`=1.136063933372497558, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46741 WHERE `DisplayID`=95376;
UPDATE `creature_model_info` SET `BoundingRadius`=3.185197830200195312, `CombatReach`=3.432000160217285156, `VerifiedBuild`=46741 WHERE `DisplayID`=94440;
UPDATE `creature_model_info` SET `BoundingRadius`=2.300529718399047851, `CombatReach`=2.43000030517578125, `VerifiedBuild`=46741 WHERE `DisplayID`=95387;
UPDATE `creature_model_info` SET `BoundingRadius`=1.710888266563415527, `CombatReach`=2, `VerifiedBuild`=46741 WHERE `DisplayID`=94227;
UPDATE `creature_model_info` SET `BoundingRadius`=0.755396783351898193, `CombatReach`=1.35000002384185791, `VerifiedBuild`=46741 WHERE `DisplayID`=96116;
UPDATE `creature_model_info` SET `BoundingRadius`=1.949009418487548828, `CombatReach`=1.65000009536743164, `VerifiedBuild`=46741 WHERE `DisplayID`=96597;
UPDATE `creature_model_info` SET `BoundingRadius`=0.80686497688293457, `CombatReach`=1.65000009536743164, `VerifiedBuild`=46741 WHERE `DisplayID`=93933;
UPDATE `creature_model_info` SET `BoundingRadius`=1.626700997352600097, `CombatReach`=1.80000007152557373, `VerifiedBuild`=46741 WHERE `DisplayID`=96465;
UPDATE `creature_model_info` SET `BoundingRadius`=3.447134733200073242, `CombatReach`=5, `VerifiedBuild`=46741 WHERE `DisplayID`=94916;
UPDATE `creature_model_info` SET `BoundingRadius`=0.44763687252998352, `CombatReach`=0.425000011920928955, `VerifiedBuild`=46741 WHERE `DisplayID`=76383;
UPDATE `creature_model_info` SET `BoundingRadius`=2.211852788925170898, `CombatReach`=2.10000014305114746, `VerifiedBuild`=46741 WHERE `DisplayID`=95818;
UPDATE `creature_model_info` SET `BoundingRadius`=0.631957948207855224, `CombatReach`=0.60000002384185791, `VerifiedBuild`=46741 WHERE `DisplayID`=96999;


UPDATE `creature_template_spell` SET `VerifiedBuild`=46741 WHERE (`CreatureID`=172876 AND `Index` IN (1,0));

UPDATE `gossip_menu` SET `VerifiedBuild`=46741 WHERE (`MenuID`=22201 AND `TextID`=34011) OR (`MenuID`=25540 AND `TextID`=42393) OR (`MenuID`=6944 AND `TextID`=7778) OR (`MenuID`=26226 AND `TextID`=40493) OR (`MenuID`=26214 AND `TextID`=41618);
DELETE FROM `gossip_menu_option` WHERE (`MenuID`=22201 AND `OptionID` IN (5,1,0,6));
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(22201, 5, 0, 'I entrust you to handle this mission <Skip the dungeon quest>.', 0, 0, 0, 0, 0, 0, NULL, 0, 46741),
(22201, 1, 0, '|cFF0000FF(Quest)|r I am ready to go to Molten Core.', 161716, 0, 0, 0, 0, 0, NULL, 0, 46741), -- OptionBroadcastTextID: 161716 - 161716
(22201, 0, 0, '|cFF0000FF(Quest)|r I am ready to go to Blackrock Depths.', 161890, 0, 0, 0, 0, 0, NULL, 0, 46741), -- OptionBroadcastTextID: 161890 - 161890
(22201, 6, 0, 'Thank you, but I will see this through <Continue to the dungeon manually>.', 0, 0, 0, 0, 0, 0, NULL, 0, 46741);

UPDATE `gossip_menu_option` SET `VerifiedBuild`=46741 WHERE (`OptionID`=0 AND `MenuID` IN (6944,26226)) OR (`OptionID`=6 AND `MenuID`=25540);
UPDATE `gossip_menu_option` SET `OptionText`='<Ride the flayedwing back to the Wrangler Pit.>', `VerifiedBuild`=46741 WHERE (`MenuID`=26214 AND `OptionID`=0);


DELETE FROM `creature_template` WHERE `entry` IN (189085 /*Past Self*/, 192527 /*Embassy Guard*/, 192529 /*Cathedral Priest*/, 198529 /*Kotheshal*/, 198482 /*Krozhalan*/, 197287 /*Annywn Dynaspark*/, 192505 /*SI:7 Agent*/, 198509 /*Berkeley*/, 198506 /*Krenzen*/, 198505 /*Blue*/, 192354 /*Obsidian Warder*/, 192530 /*Apprentice Mage*/);
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(189085, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33587200, 335546384, 0, 0, 0, 1), -- Past Self
(192527, 0, 60, 60, 12, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Embassy Guard
(192529, 0, 60, 60, 12, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Cathedral Priest
(198529, 0, 60, 60, 3340, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Kotheshal
(198482, 0, 60, 60, 3340, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Krozhalan
(197287, 0, 60, 60, 64, 0, 1, 1.142857193946838378, 2000, 0, 768, 2048, 0, 0, 0, 1), -- Annywn Dynaspark
(192505, 0, 60, 60, 12, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- SI:7 Agent
(198509, 0, 1, 1, 35, 16777216, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Berkeley
(198506, 0, 60, 60, 1732, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Krenzen
(198505, 0, 60, 60, 1732, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Blue
(192354, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 33556480, 1048576, 0, 0, 1), -- Obsidian Warder
(192530, 0, 60, 60, 12, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1); -- Apprentice Mage


UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=143567; -- Mole Machine to Stormwind
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=1500, `unit_flags`=33600, `unit_flags2`=2048 WHERE `entry`=139904; -- Coin-Operated Crowd Pummeler
UPDATE `creature_template` SET `minlevel`=50, `maxlevel`=50, `BaseAttackTime`=2000, `unit_flags`=33616, `unit_flags2`=2048 WHERE `entry`=139273; -- Rixxa Fluxflame
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=524289 WHERE `entry`=136637; -- Mining Charge
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=1665, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=33556480 WHERE `entry`=139256; -- Dark Iron Miner
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=139896; -- Venture Co. Earthshaper
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=139267; -- Wanton Sapper
UPDATE `creature_template` SET `speed_run`=0.714285731315612792, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=2097152 WHERE `entry`=139270; -- Lesser Crawler Mine
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33587200, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=140504; -- Fanatical Driller
UPDATE `creature_template` SET `faction`=16, `speed_walk`=0.800000011920928955, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=536870912, `unit_flags2`=2048, `VehicleId`=6076 WHERE `entry`=139272; -- Azerite Extractor
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=1665, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=139255; -- Dark Iron Demolitionist
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=1665, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=139257; -- Dark Iron Rifleman
UPDATE `creature_template` SET `minlevel`=60, `faction`=1665, `npcflag`=16777216, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=33556480 WHERE `entry`=139852; -- Dark Iron Golem
UPDATE `creature_template` SET `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=139268; -- Venture Co. Skyscorcher
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=1665, `BaseAttackTime`=2000, `unit_flags`=33600, `unit_flags2`=33556480 WHERE `entry`=140380; -- Drukan
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=139686; -- Unbound Azerite
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=139687; -- Unleashed Azerite
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=139689; -- Congealed Azerite
UPDATE `creature_template` SET `faction`=1732, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=140308; -- Thaelin Darkanvil
UPDATE `creature_template` SET `minlevel`=50, `maxlevel`=50, `faction`=1733, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=140309; -- Moira Thaurissan
UPDATE `creature_template` SET `faction`=1732, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=140307; -- Anvil-Thane Thurgaden
UPDATE `creature_template` SET `unit_flags`=33536, `unit_flags3`=1 WHERE `entry`=4423; -- Darnassian Protector
UPDATE `creature_template` SET `gossip_menu_id`=22201, `unit_flags`=33536 WHERE `entry`=133197; -- Moira Thaurissan
UPDATE `creature_template` SET `unit_flags`=768, `unit_flags3`=1 WHERE `entry`=3681; -- Wisp
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`=55285; -- Astrid Langstrump
UPDATE `creature_template` SET `unit_flags`=768, `unit_flags3`=1 WHERE `entry`=50307; -- Lord Candren
UPDATE `creature_template` SET `unit_flags`=768, `unit_flags3`=1 WHERE `entry`=50305; -- Moon Priestess Lasara
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`=4730; -- Lelanai

UPDATE `creature_template` SET `minlevel`=38, `maxlevel`=38, `npcflag`=0, `unit_flags`=768 WHERE `entry`=62178; -- Elfin Rabbit

UPDATE `creature_template` SET `minlevel`=3, `maxlevel`=3 WHERE `entry`=66876; -- Tyler Stockton
UPDATE `creature_template` SET `minlevel`=1, `maxlevel`=1 WHERE `entry`=51081; -- Nathan Stockton


UPDATE `creature_template` SET `BaseAttackTime`=1679 WHERE `entry`=78116; -- Water Elemental
UPDATE `creature_template` SET `npcflag`=83 WHERE `entry`=1317; -- Lucan Cordell

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=140407; -- Stormwind City Clerk

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=174146; -- Archivist Thomas

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=149467; -- Kul Tiras Adventurer

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=148796; -- Storm's Wake Tidesage
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=89174; -- Laluu

UPDATE `creature_template` SET `minlevel`=60, `BaseAttackTime`=1820 WHERE `entry`=416; -- Imp

UPDATE `creature_template` SET `BaseAttackTime`=1669 WHERE `entry`=58964; -- Observer

UPDATE `creature_template` SET `BaseAttackTime`=1687 WHERE `entry`=143622; -- Wild Imp

UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=54, `BaseAttackTime`=1861 WHERE `entry`=417; -- Felhunter

UPDATE `creature_template` SET `HoverHeight`=1 WHERE `entry`=156758; -- Domesticated Creature

UPDATE `creature_template` SET `speed_run`=1.142857193946838378, `BaseAttackTime`=1661 WHERE `entry`=17252; -- Felguard
UPDATE `creature_template` SET `minlevel`=10, `BaseAttackTime`=1814 WHERE `entry`=165189; -- Generic Hunter Pet

UPDATE `creature_template` SET `unit_flags2`=2048 WHERE `entry`=164803; -- Vault Protector Prime

UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=60, `BaseAttackTime`=1695 WHERE `entry`=1860; -- Voidwalker

UPDATE `creature_template` SET `BaseAttackTime`=1596, `unit_flags`=0 WHERE `entry`=26125; -- Risen Ghoul

UPDATE `creature_template` SET `unit_flags`=33024 WHERE `entry`=167273; -- Boneplated Sharpshooter
UPDATE `creature_template` SET `BaseAttackTime`=1634 WHERE `entry`=178601; -- Kevin's Oozeling
UPDATE `creature_template` SET `BaseAttackTime`=1634 WHERE `entry`=180016; -- Spectral Feline
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=144929; -- Generic - Empty Bunny - Long AOI
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=162259; -- Galescreamer Pup
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=169129; -- Rotdust Bat
UPDATE `creature_template` SET `BaseAttackTime`=2000, `unit_flags`=2147582208 WHERE `entry`=162853; -- Unbreakable Urtz
UPDATE `creature_template` SET `unit_flags`=32832 WHERE `entry`=168192; -- Bloodtusk Ancient
UPDATE `creature_template` SET `unit_flags3`=16777217 WHERE `entry`=158940; -- Corpselouse Vehicle
UPDATE `creature_template` SET `unit_flags`=570688256 WHERE `entry`=169521; -- Gladiator Trainee

UPDATE `creature_template` SET `VehicleId`=0 WHERE `entry`=168857; -- Stitched-Wing Hauler
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `dynamicflags`=128 WHERE `entry`=166186; -- Dead Newcomer
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=1723, `RangeAttackTime`=0, `unit_flags`=32832, `unit_flags2`=2048, `VehicleId`=7332 WHERE `entry`=172876; -- Wild Flayedwing
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=2000, `unit_flags`=33587200, `unit_flags2`=2048, `VehicleId`=7330 WHERE `entry`=172882; -- Flayedwing Mover [DNT]
UPDATE `creature_template` SET `unit_flags`=537166592, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=169249; -- Rotsting Drone
UPDATE `creature_template` SET `speed_run`=1.142857193946838378, `BaseAttackTime`=1667 WHERE `entry`=169190; -- Vengeful Bonetusk Sow
UPDATE `creature_template` SET `unit_flags`=537166592, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=169250; -- Rotsting Worker
UPDATE `creature_template` SET `unit_flags`=2147582208, `HoverHeight`=13.5 WHERE `entry`=162872; -- Xantuth the Blighted

DELETE FROM `vehicle_template_accessory` WHERE (`entry`=139272 AND `seat_id`=0) OR (`entry`=164829 AND `seat_id`=0) OR (`entry`=158940 AND `seat_id`=0) OR (`entry`=165549 AND `seat_id` IN (2,3,1,4,0));
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(139272, 140504, 0, 0, 'Azerite Extractor - Fanatical Driller', 0, 1), -- Azerite Extractor - Fanatical Driller
(164829, 164830, 0, 0, 'Chosen Flayedwing - Flayedwing Scout', 0, 1), -- Chosen Flayedwing - Flayedwing Scout
(158940, 158566, 0, 0, 'Corpselouse Vehicle - Corpselouse Spawnling', 0, 1), -- Corpselouse Vehicle - Corpselouse Spawnling
(165549, 165551, 2, 0, 'Sour Suckle - Suckling Corpselouse', 0, 1), -- Sour Suckle - Suckling Corpselouse
(165549, 165551, 3, 0, 'Sour Suckle - Suckling Corpselouse', 0, 0), -- Sour Suckle - Suckling Corpselouse
(165549, 165551, 1, 0, 'Sour Suckle - Suckling Corpselouse', 0, 0), -- Sour Suckle - Suckling Corpselouse
(165549, 165551, 4, 0, 'Sour Suckle - Suckling Corpselouse', 0, 0), -- Sour Suckle - Suckling Corpselouse
(165549, 158566, 0, 0, 'Sour Suckle - Corpselouse Spawnling', 0, 0); -- Sour Suckle - Corpselouse Spawnling


DELETE FROM `quest_template` WHERE `ID` IN (66596 /*-Unknown-*/, 54377 /*-Unknown-*/);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestPackageID`, `ContentTuningID`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitGiverModelSceneID`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `QuestSessionBonus`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(66596, 2, 0, 2573, 13642, 0, 0, 0, 1, 1, 1, 1, 7750, 393770, 0, 0, 0, 0, 1, 0, 538968064, 4194304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 6130900294268439629, 0, 0, 0, 0, 'Whispers on the Winds', 'Speak with Archmage Khadgar in Stormwind.', 'Hello, $p. It\'s been a while, and I wish we had more time to catch up.\n\nBut you see, I\'ve just had a rather enlightening... no, make that foreboding... yes, a foreboding conversation with an old friend.\n\nSometimes a revelation can be both, after all.\n\nI really must tell you of what I\'ve learned.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46741), -- -Unknown-
(54377, 0, 0, 290, -432, 153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 15000, 0, 0, 0, 0, 0, 0, 0, 6130900294268439629, 0, 7, 0, 0, 'Darkshore Donations: Crimson Ink', 'Gather $1oa War-Scroll of Intellect for Liao in Boralus Harbor.', 'Enlightenment guides our path to victory. In battle, we fight as one.\n\nShare your knowledge and skills with me. Generosity is never forgotten.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 46741); -- -Unknown-

UPDATE `quest_template` SET `RewardBonusMoney`=61750, `VerifiedBuild`=46741 WHERE `ID`=53342; -- Molten Core
UPDATE `quest_template` SET `RewardBonusMoney`=61750, `VerifiedBuild`=46741 WHERE `ID`=53351; -- The MOTHERLODE!!: Ironfoe
UPDATE `quest_template` SET `RewardBonusMoney`=61750, `VerifiedBuild`=46741 WHERE `ID`=51813; -- Blackrock Depths
UPDATE `quest_template` SET `VerifiedBuild`=46741 WHERE `ID` IN (50239, 60136, 64508, 61136, 65119, 61125, 62286, 62288, 60991, 61346, 62209, 49098, 63044, 66619, 60992, 60990, 61728, 62210, 61140, 65255, 59230, 58918, 61124, 62539, 61565, 49197, 54380, 49099, 65234, 64579, 59183, 62211, 59441, 49096, 58084, 60929, 60911, 60872, 60844, 60475, 60337, 59808, 59617, 60534, 59836, 59585, 59743, 61337, 60842, 60443, 60429, 61540, 60659, 61947, 61885, 61868, 61784, 58975, 61352, 66696, 66615, 46736, 46735, 46277, 62866, 61983, 60396, 57249);
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46741 WHERE `ID`=49929; -- The Call for Allies
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46741 WHERE `ID`=63976; -- The Al'ley Cat of Oribos
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46741 WHERE `ID`=65655; -- Eyes of the Wolf
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46741 WHERE `ID`=58665; -- Rebellious Souls
UPDATE `quest_template` SET `QuestSortID`=13536, `VerifiedBuild`=46741 WHERE `ID`=65335; -- News from Oribos
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46741 WHERE `ID`=53028; -- A Dying World
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46741 WHERE `ID`=46727; -- Battle for Azeroth: Tides of War
UPDATE `quest_template` SET `RewardCurrencyID1`=0, `RewardCurrencyQty1`=0, `VerifiedBuild`=46741 WHERE `ID`=54396; -- Darkshore Donations: Wild Berry Bread
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `RewardFactionOverride2`=7500, `VerifiedBuild`=46741 WHERE `ID`=52782; -- Call to Arms: Stormsong Valley
UPDATE `quest_template` SET `RewardFactionOverride2`=7500, `VerifiedBuild`=46741 WHERE `ID`=59018; -- Call to Arms: Vale of Eternal Blossoms
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46741 WHERE `ID`=63032; -- The Highlord Calls
UPDATE `quest_template` SET `RewardFactionOverride2`=15000, `VerifiedBuild`=46741 WHERE `ID`=53436; -- Azerite for the Alliance

DELETE FROM `quest_objectives` WHERE `ID` IN (429749 /*429749*/, 387050 /*387050*/);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
(429749, 66596, 0, 0, 0, 184776, 1, 0, 0, 0, 'Speak with Archmage Khadgar', 46741), -- 429749
(387050, 54377, 1, 0, 0, 158188, 20, 0, 0, 0, '', 46741); -- 387050

UPDATE `quest_objectives` SET `VerifiedBuild`=46741 WHERE `ID` IN (341234, 341233, 341277, 341448, 396000, 388050, 296728, 296727, 296726, 405322, 423384, 394737, 422807, 337818, 337817, 405249, 422863, 422187, 422182, 422181, 422180, 422179, 422177, 422178, 422174, 422173, 422170, 422162, 405228, 407607, 407611, 405227, 405657, 387088, 407425, 409050, 427333, 405143, 406321, 406588, 407428, 405251, 422514, 422616, 422513, 422512, 422511, 422510, 396185, 395108, 405226, 407909, 406320, 387056, 340341, 395348, 422450, 421501, 421500, 421499, 421498, 421497, 421496, 421495, 421486, 421170, 396133, 407429, 396453, 393628, 393643, 405027, 405026, 405012, 405011, 404953, 404824, 404823, 398341, 398338, 398175, 398504, 397091, 397051, 397009, 396643, 396642, 396641, 396640, 396639, 396638, 396622, 396616, 405580, 405579, 405578, 405577, 405576, 405575, 405574, 405573, 405572, 405571, 405570, 409116, 397059, 397121, 407664, 396533, 396532, 396528, 396874, 396873, 396872, 396871, 405718, 405715, 405714, 405713, 405712, 405711, 405710, 405611, 404931, 398525, 398630, 398629, 398628, 398627, 398626, 398559, 398558, 406354, 406227, 407943, 408943, 408942, 408941, 405225, 405224, 406867, 406808, 406766, 406710, 404547, 395236, 409054, 405675, 405674, 427561, 427325, 289536, 289535, 289167, 408877, 406976, 398425, 341370);

DELETE FROM `quest_visual_effect` WHERE (`ID`=429749 AND `Index`=0);
INSERT INTO `quest_visual_effect` (`ID`, `Index`, `VisualEffect`, `VerifiedBuild`) VALUES
(429749, 0, 19751, 46741);

UPDATE `quest_visual_effect` SET `VerifiedBuild`=46741 WHERE (`Index`=1 AND `ID` IN (341234,405027,398341,398175,397121,396532,396528,396871,405611,404931,405674)) OR (`Index`=0 AND `ID` IN (341234,341277,341448,396000,388050,296728,296727,296726,405322,423384,422807,337818,405249,422187,422162,405228,405227,407425,409050,405143,406588,407428,405251,422514,396185,395108,405226,422450,396133,407429,396453,393628,393643,405027,405026,405012,405011,398341,398175,398504,396616,397059,397121,396532,396528,396874,396873,396872,396871,405611,404931,407943,405225,405224,406867,406808,406766,406710,409054,405675,405674,406976)) OR (`Index`=5 AND `ID` IN (405027,398341,405611)) OR (`Index`=4 AND `ID` IN (405027,398341,405611)) OR (`Index`=3 AND `ID` IN (405027,398341,396532,405611)) OR (`Index`=2 AND `ID` IN (405027,398341,397121,396532,396528,405611,404931)) OR (`Index`=6 AND `ID`=405611);


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=46741 WHERE (`QuestID`=60136 AND `Idx`=0);

DELETE FROM `creature_template` WHERE `entry` IN (192505 /*SI:7 Agent*/, 192527 /*Embassy Guard*/, 192529 /*Cathedral Priest*/, 192530 /*Apprentice Mage*/, 197287 /*Annywn Dynaspark*/, 189085 /*Past Self*/, 198482 /*Krozhalan*/, 198505 /*Blue*/, 198506 /*Krenzen*/, 198509 /*Berkeley*/, 198529 /*Kotheshal*/, 192354 /*Obsidian Warder*/);
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `unit_class`, `WidgetSetID`, `WidgetSetUnitConditionID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `VerifiedBuild`) VALUES
(192505, 0, 0, 'SI:7 Agent', '', NULL, NULL, NULL, 8, 0, 0, 4, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 220715, 46741), -- SI:7 Agent
(192527, 0, 0, 'Embassy Guard', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 220737, 46741), -- Embassy Guard
(192529, 0, 0, 'Cathedral Priest', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 220739, 46741), -- Cathedral Priest
(192530, 0, 0, 'Apprentice Mage', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 220740, 46741), -- Apprentice Mage
(197287, 0, 0, 'Annywn Dynaspark', '', NULL, NULL, NULL, 8, 0, 0, 4, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 225623, 46741), -- Annywn Dynaspark
(189085, 0, 0, 'Past Self', '', NULL, NULL, NULL, 8, 0, 0, 8, 0, 0, 0, 0, 7, 83894272, 0, 1, 1, 0, 0, 215771, 46741), -- Past Self
(198482, 0, 0, 'Krozhalan', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226861, 46741), -- Krozhalan
(198505, 0, 0, 'Blue', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 4096, 0, 1, 1, 0, 0, 226884, 46741), -- Blue
(198506, 0, 0, 'Krenzen', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 4096, 0, 1, 1, 0, 0, 226885, 46741), -- Krenzen
(198509, 0, 0, 'Berkeley', '', NULL, NULL, 'openhandglow', 8, 0, 0, 1, 0, 0, 0, 52, 8, 0, 0, 1, 1, 0, 0, 226888, 46741), -- Berkeley
(198529, 0, 0, 'Kotheshal', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226908, 46741), -- Kotheshal
(192354, 0, 0, 'Obsidian Warder', '', NULL, NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 8392704, 2048, 1, 1, 0, 0, 220564, 46741); -- Obsidian Warder

UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry` IN (174488, 190148, 174491, 165549, 165551, 174505, 165561, 165566, 147714, 156663, 156664, 174564, 156670, 170095, 170099, 141020, 156685, 156686, 156687, 156688, 141030, 156689, 147741, 156691, 156692, 141036, 167880, 167881, 156698, 163415, 165654, 165657, 141054, 103033, 174624, 65011, 44880, 156732, 156733, 147785, 156734, 156735, 170159, 141079, 114246, 156758, 156768, 156769, 156791, 168011, 185914, 150122, 170256, 165796, 168045, 42782, 170310, 304, 305, 172572, 331, 338, 416, 168192, 417, 172680, 188342, 168216, 161508, 172702, 143622, 2708, 161537, 18375, 170492, 18376, 170493, 148124, 181681, 49701, 4982, 166061, 175016, 175017, 175018, 175019, 175020, 60941, 170557, 175035, 175036, 175042, 139255, 141504, 139268, 141508, 52031, 175066, 175067, 20716, 148233, 175080, 175081, 170607, 175082, 175083, 175087, 161668, 175095, 175097, 161676, 168388, 175100, 161679, 184055, 172871, 172876, 170640, 168403, 29712, 161695, 11827, 11828, 166186, 159478, 168440, 166206, 49893, 161757, 175206, 175207, 175208, 175209, 175210, 175211, 175212, 175213, 175214, 175215, 175216, 175218, 175222, 168518, 121541, 166284, 168522, 173000, 54442, 54443, 166307, 188678, 173019, 188679, 173022, 166312, 164078, 164079, 164095, 164096, 164098, 164099, 164100, 108180, 85816, 85817, 85818, 85819, 161881, 164123, 88067, 175310, 175311, 175312, 161890, 175314, 166370, 112686, 88080, 88081, 161904, 161905, 161907, 112694, 161909, 112698, 173118, 56796, 166421, 175370, 166423, 175371, 166424, 32206, 168677, 168685, 5386, 164221, 161985, 161988, 157514, 157517, 161994, 52408, 170971, 175478, 173257, 164312, 5493, 5494, 166564, 5504, 175525, 175526, 173300, 164352, 173301, 164353, 173302, 173304, 180016, 173305, 126332, 159893, 173318, 72654, 173325, 173327, 173330, 157671, 168857, 14505, 5566, 5567, 173348, 173350, 173351, 173352, 173353, 173354, 177829, 173355, 173356, 173357, 173364, 173367, 173369, 173370, 1141, 12336, 148796, 166728, 162258, 162259, 32520, 7917, 50424, 1212, 157803, 50432, 50434, 5694, 50435, 21354, 157843, 164579, 169055, 171299, 164588, 164596, 173545, 173548, 1300, 175791, 1307, 1308, 1309, 1310, 1311, 1312, 1314, 1315, 1316, 1317, 1318, 173571, 32641, 32642, 1346, 1347, 175833, 1348, 1349, 1350, 1351, 169129, 113211, 173610, 1366, 164667, 1367, 1368, 1370, 166908, 1371, 171383, 133362, 164684, 164685, 133369, 155739, 3627, 3628, 1405, 169184, 162474, 162477, 1413, 162478, 1414, 169190, 1415, 1419, 133408, 133409, 1429, 164736, 46180, 158032, 3681, 1444, 133433, 158040, 149099, 133441, 28302, 169234, 158053, 169249, 169250, 175963, 149121, 149124, 149131, 167032, 164803, 175998, 26125, 162589, 164829, 158119, 164830, 158120, 164833, 158123, 158125, 162615, 162617, 140253, 173819, 171589, 111190, 176064, 176065, 176066, 176067, 55273, 160415, 160417, 160418, 160419, 17252, 160424, 162666, 164915, 169395, 30713, 30730, 167201, 162727, 182864, 167205, 162732, 167207, 167208, 167209, 167210, 133675, 164996, 160522, 164997, 6171, 6173, 176186, 140403, 140407, 165017, 167273, 176222, 167274, 176223, 169512, 176224, 176225, 176231, 169521, 176234, 169524, 162813, 158339, 176236, 176238, 162816, 176240, 176242, 176243, 144929, 171787, 171790, 171795, 171796, 162853, 15214, 167335, 158387, 149445, 162872, 171821, 162873, 171822, 149467, 149469, 162896, 4078, 158436, 158440, 158442, 162918, 167395, 169634, 1860, 162928, 162929, 158456, 51081, 158463, 57800, 176368, 142816, 165189, 174146, 167435, 165214, 169698, 169699, 149616, 158566, 84745, 163041, 163043, 84749, 84751, 149626, 167526, 167535, 66876, 165321, 42288, 82564, 165347, 165350, 158642, 167591, 169830, 78116, 151937, 176545, 172074, 187734, 178792, 165376, 178804, 185525, 73678, 165403, 167641, 167642, 165405, 167645, 167649, 165413, 11068, 156479, 165431, 185576, 156504, 172173, 158752, 158753, 172176, 158755, 165473, 4423, 73780, 2198, 167737, 167741, 167743, 167747, 167748);
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=174533; -- Displaced Arachnid
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=44807; -- Farmer Wollerton
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=68; -- Stormwind City Guard
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=2334; -- Event Generator 001
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=158940; -- Corpselouse Vehicle
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=174650; -- Bubbling Refuse
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry` IN (174652, 175023); -- Animated Cruor
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=174653; -- Festering Larva
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=174654; -- Wayward Spellshard
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=0, `VerifiedBuild`=46741 WHERE `entry`=136637; -- Mining Charge
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=2442; -- Cow
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=9158; -- Warhorse
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=2485; -- Larimaine Purdue
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=4730; -- Lelanai
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=4753; -- Jartsam
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=85307; -- Sparkbright
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=49540; -- Stormwind Rat
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=376; -- High Priestess Laurena
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=143567; -- Mole Machine to Stormwind
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=174922; -- Strategist Zo'rak
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18357; -- Ebon Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18359; -- Snowy Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18360; -- Golden Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18362; -- Swift Purple Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18406; -- Swift Blue Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry` IN (175021, 167355); -- Pulsating Maggot
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=139256; -- Dark Iron Miner
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=139257; -- Dark Iron Rifleman
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=139267; -- Wanton Sapper
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.5, `VerifiedBuild`=46741 WHERE `entry`=139270; -- Lesser Crawler Mine
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=139272; -- Azerite Extractor
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=114665; -- Sergeant Wilson
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=139273; -- Rixxa Fluxflame
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=172882; -- Flayedwing Mover [DNT]
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=721; -- Rabbit
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=58964; -- Observer
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=928; -- Lord Grayson Shadowbreaker
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=54638; -- Generic Bunny
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=173200; -- Bleak Skitterer
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=139686; -- Unbound Azerite
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=139687; -- Unleashed Azerite
UPDATE `creature_template` SET `femaleName`='', `rank`=6, `HealthModifier`=0.25, `VerifiedBuild`=46741 WHERE `entry`=139689; -- Congealed Azerite
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=173258; -- Bloog
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=5484; -- Brother Benjamin
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=173259; -- Bone Crusher
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=173260; -- Chipper
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=5489; -- Brother Joshua
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=5491; -- Arthur the Faithful
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=5492; -- Katherine the Pure
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=5497; -- Jennea Cannon
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=5498; -- Elsharin
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=173274; -- Gorgemouth
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18927; -- Human Commoner
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=5506; -- Maldryn
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=50305; -- Moon Priestess Lasara
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=50307; -- Lord Candren
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=14555; -- Swift Mistsaber
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=14556; -- Swift Frostsaber
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=14565; -- Charger
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=139852; -- Dark Iron Golem
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=162222; -- Rathan
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=162223; -- Emeni
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=88403; -- Blacksmithing Follower - Alliance
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=12358; -- Riding Striped Frostsaber
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=12359; -- Riding Spotted Frostsaber
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=12360; -- Riding Striped Nightsaber
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=14602; -- Swift Stormsaber
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=139896; -- Venture Co. Earthshaper
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=139904; -- Coin-Operated Crowd Pummeler
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry` IN (133197, 140309); -- Moira Thaurissan
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=1412; -- Squirrel
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=23837; -- ELM General Purpose Bunny
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry` IN (176023, 176024); -- Crawbat
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=55272; -- Mountain Horse
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=55285; -- Astrid Langstrump
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=140307; -- Anvil-Thane Thurgaden
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=35168; -- Striped Dawnsaber
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=140308; -- Thaelin Darkanvil
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=55370; -- General Purpose Bunny ZTO
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=140380; -- Drukan
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=62178; -- Elfin Rabbit
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.75, `VerifiedBuild`=46741 WHERE `entry`=140504; -- Fanatical Driller
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=167353; -- Chittering Claw
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=167354; -- Writhing Rachis
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=167359; -- Overgrown Spore
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=68980; -- Voidbinder Sturzah
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=178601; -- Kevin's Oozeling
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=44395; -- Celestine of the Harvest
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=89174; -- Laluu
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=174223; -- Pus-In-Boots
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=1976; -- Stormwind City Patroller
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=42339; -- Canal Crab
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=189988; -- Thing From Beyond
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=51348; -- Stormwind Gryphon Rider
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=42421; -- Stormwind Fisherman
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=156558; -- Generic - Empty Bunny

DELETE FROM `creature_template_model` WHERE (`Idx`=0 AND `CreatureID` IN (189085,192527,192529,198529,198482,197287,192505,198509,198506,198505,192530,192354)) OR (`Idx`=5 AND `CreatureID`=192505) OR (`Idx`=4 AND `CreatureID`=192505) OR (`Idx`=3 AND `CreatureID` IN (192505,192354)) OR (`Idx`=2 AND `CreatureID` IN (192505,192354)) OR (`Idx`=1 AND `CreatureID` IN (192505,192354));
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(189085, 0, 104598, 1, 1, 46741), -- Past Self
(192527, 0, 107891, 1, 1, 46741), -- Embassy Guard
(192529, 0, 107893, 1, 1, 46741), -- Cathedral Priest
(198529, 0, 110173, 1, 1, 46741), -- Kotheshal
(198482, 0, 110111, 1, 1, 46741), -- Krozhalan
(197287, 0, 109492, 1, 1, 46741), -- Annywn Dynaspark
(192505, 5, 107887, 1, 1, 46741), -- SI:7 Agent
(192505, 4, 107886, 1, 1, 46741), -- SI:7 Agent
(192505, 3, 107885, 1, 1, 46741), -- SI:7 Agent
(192505, 2, 107884, 1, 1, 46741), -- SI:7 Agent
(192505, 1, 107883, 1, 1, 46741), -- SI:7 Agent
(192505, 0, 107882, 1, 1, 46741), -- SI:7 Agent
(198509, 0, 68845, 1, 1, 46741), -- Berkeley
(198506, 0, 110154, 1, 1, 46741), -- Krenzen
(198505, 0, 110153, 1, 1, 46741), -- Blue
(192530, 0, 107896, 1, 1, 46741), -- Apprentice Mage
(192354, 3, 104846, 1, 1, 46741), -- Obsidian Warder
(192354, 2, 104845, 1, 1, 46741), -- Obsidian Warder
(192354, 1, 104844, 1, 1, 46741), -- Obsidian Warder
(192354, 0, 104843, 1, 1, 46741); -- Obsidian Warder

UPDATE `creature_template_model` SET `VerifiedBuild`=46741 WHERE (`Idx`=0 AND `CreatureID` IN (143567,139904,139273,136637,139896,139256,139270,139267,139272,140504,139852,139257,139255,139268,140380,139686,139687,139689,140309,140308,140307,73678,4423,133197,44807,2442,88081,88080,3681,88067,141030,55285,55273,141054,141036,50307,50305,35168,4730,133369,141020,12360,4753,141079,133409,133408,126332,72654,14602,14556,14555,12359,12358,158125,167032,133441,133433,133362,44395,158123,158120,158119,112698,112694,172572,133675,112686,176242,176222,42782,20716,176243,176238,176240,176234,176231,176236,176224,176225,176223,62178,50435,50434,12336,5492,44880,173819,5491,928,56796,142816,6173,5489,1351,376,141508,7917,6171,5484,4982,1212,50424,113211,1444,108180,50432,141504,29712,15214,66876,42421,1348,1371,1349,51081,11828,11827,1370,1368,1350,114246,68980,57800,54443,54442,1405,5504,5506,5494,5493,1367,1366,42339,188678,188342,49893,49540,68,188679,46180,11068,78116,1318,52031,49701,42288,5386,1317,1316,1315,1312,338,30730,30713,5566,1300,3628,3627,1347,1346,1314,1311,1141,51348,1429,1310,5567,4078,1309,158755,158753,158456,158440,158436,140407,140403,140253,23837,2334,1308,149469,158463,2708,1415,85818,150122,149626,89174,1419,148233,111190,147741,2198,1307,85307,155739,149131,149467,2485,331,174146,149616,85817,149099,5694,148796,148124,149124,52408,84749,1414,1976,1412,151937,85816,84745,147785,721,82564,149445,103033,5497,32520,1413,147714,85819,18927,5498,149121,84751,175526,173610,173548,176186,175525,173545,164736,156686,156685,173351,175211,156732,156689,156687,156670,156692,173571,156733,156691,175210,175209,178792,114665,175216,174922,168011,164096,416,175213,171790,164095,58964,187734,171787,164579,55370,176368,176067,167591,176066,176065,176064,171821,171299,164079,162896,171795,185914,185525,143622,164100,171589,164684,164099,164098,164078,156504,417,170640,175218,175042,162918,173370,173369,173318,169524,166284,165796,156791,156664,173354,156769,156758,156663,175066,156768,166312,175067,175019,173355,159478,190148,175036,173357,173356,173353,173352,165654,175080,167880,175081,175208,156735,165405,173305,173325,170607,173302,173301,162928,17252,182864,175222,175214,170310,170256,175083,173330,173327,175082,165403,175020,165189,185576,164596,32642,32641,184055,173304,170557,165657,162929,156688,121541,175215,175212,175087,167881,164685,175016,156734,88403,175207,175206,173348,164803,181681,173364,171822,164353,164352,54638,178804,177829,175018,174564,173350,166061,156479,175035,175017,173300,173118,171796,166307,164123,173367,172702,176545,162666,156698,174491,174488,1860,166206,167526,168045,161668,161679,167641,161676,167642,157514,172680,167649,165321,172173,167645,175371,175370,175312,174624,165350,161988,161985,26125,175311,175791,175314,175310,174505,173019,168685,167207,167201,165347,161905,161904,173000,167210,167208,165431,167748,175998,172176,165413,164221,161909,160419,160418,175963,173022,167205,165017,160417,167741,164833,157843,157803,167209,164915,161994,158339,167737,167743,164667,160424,167747,160415,170971,167273,166423,157671,161890,161508,161537,189988,178601,164829,164830,166424,167535,167335,175100,175095,174223,169634,161881,175097,164996,156558,164997,174654,180016,167395,167353,158040,167435,166908,166421,168216,173260,173259,173258,173257,162478,167274,164588,162617,162615,162474,171383,162477,174653,166564,162589,161695,144929,168518,170099,168440,162813,162258,170159,170095,168522,162259,163041,163043,161757,170492,170493,169129,162853,174650,167359,175833,168192,166728,163415,168403,175021,168388,175023,162873,162732,169055,162727,165473,169521,165376,159893,157517,169698,168857,173274,169699,169395,160522,165566,166186,172882,172876,173200,165214,169512,169249,169190,174533,169250,172871,169234,169184,168677,158442,165561,164312,172074,161907,158032,162816,165551,158642,167355,176024,158566,158752,174652,162872,165549,167354,158053,176023,166370,169830,158387,73780,305,65011,55272,32206,28302,18362,18375,18376,18406,18359,18357,18360,14565,14505,9158,60941,21354,304)) OR (`Idx`=2 AND `CreatureID` IN (139896,139267,139255,141030,141054,141079,158125,133441,133433,158123,158120,158119,112698,112694,112686,62178,141508,141504,29712,42421,51081,42339,49540,68,140403,140253,149469,149131,149467,149616,149124,149445,175525,173351,175211,175209,175216,175213,143622,175218,175042,156758,175066,175067,175208,170607,175222,175082,175020,173304,175215,175016,156734,175207,175206,175018,175017,173300,173118,171796,26125,157671,161881,167395,166564,168518,168440,168522,163041,163043,161757,169521,160522,175478,174533,165561,176024,176023)) OR (`Idx`=1 AND `CreatureID` IN (139896,139267,139257,139255,139268,73678,141030,141054,141036,141079,72654,158125,133441,133433,158123,158120,158119,112698,112694,133675,112686,62178,141508,141504,29712,15214,42421,51081,42339,49540,68,78116,51348,140407,140403,140253,23837,149469,149626,148233,111190,147741,155739,149131,149467,149616,149099,148796,148124,149124,1976,147785,721,149445,32520,147714,18927,175526,173548,175525,173545,173351,175211,175209,175216,175213,55370,185914,143622,175218,175042,156758,175066,175067,175019,175208,170607,175222,170310,170256,175082,175020,184055,173304,175215,175087,175016,156734,175207,175206,171822,54638,175018,175017,173300,173118,171796,161679,172680,26125,174505,165413,165017,164833,157803,164667,160424,160415,157671,166424,169634,161881,156558,167395,158040,167435,168216,162617,162477,166564,144929,168518,168440,162813,162258,168522,163041,163043,161757,169129,167359,168192,158940,169521,160522,172882,175478,165214,174533,168677,165561,164312,162816,176024,174652,176023)) OR (`Idx`=3 AND `CreatureID` IN (139255,141030,141054,141079,158125,133441,133433,158123,158120,158119,112698,112694,62178,141508,141504,29712,51081,42339,68,140403,140253,149469,149131,149467,149616,149445,173351,175211,175216,175218,175042,156758,175066,175067,175208,170607,175222,175020,173304,175215,175016,175207,175206,175018,175017,173300,173118,171796,26125,157671,167395,166564,168518,168522,163041,161757,175478)) OR (`Idx`=4 AND `CreatureID` IN (141054,141504,140403,140253,149131,175211,175216,175218,175042,175208,170607,175222,173304,175215,175016,175207,175206,175018,175017,173300,173118,157671,163041,161757)) OR (`Idx`=19 AND `CreatureID` IN (141504,140253)) OR (`Idx`=18 AND `CreatureID` IN (141504,140253)) OR (`Idx`=17 AND `CreatureID` IN (141504,140253)) OR (`Idx`=16 AND `CreatureID` IN (141504,140253)) OR (`Idx`=15 AND `CreatureID` IN (141504,140403,140253)) OR (`Idx`=14 AND `CreatureID` IN (141504,140403,140253)) OR (`Idx`=13 AND `CreatureID` IN (141504,140403,140253)) OR (`Idx`=12 AND `CreatureID` IN (141504,140403,140253)) OR (`Idx`=11 AND `CreatureID` IN (141504,140403,140253,163041)) OR (`Idx`=10 AND `CreatureID` IN (141504,140403,140253,163041)) OR (`Idx`=9 AND `CreatureID` IN (141504,140403,140253,163041)) OR (`Idx`=8 AND `CreatureID` IN (141504,140403,140253,163041)) OR (`Idx`=7 AND `CreatureID` IN (141504,140403,140253,163041,161757)) OR (`Idx`=6 AND `CreatureID` IN (141504,140403,140253,157671,163041,161757)) OR (`Idx`=5 AND `CreatureID` IN (141504,140403,140253,175211,175216,175218,175208,175222,175016,175207,175206,175018,173300,173118,157671,163041,161757)) OR (`Idx`=51 AND `CreatureID`=140253) OR (`Idx`=50 AND `CreatureID`=140253) OR (`Idx`=49 AND `CreatureID`=140253) OR (`Idx`=48 AND `CreatureID`=140253) OR (`Idx`=47 AND `CreatureID`=140253) OR (`Idx`=46 AND `CreatureID`=140253) OR (`Idx`=45 AND `CreatureID`=140253) OR (`Idx`=44 AND `CreatureID`=140253) OR (`Idx`=43 AND `CreatureID`=140253) OR (`Idx`=42 AND `CreatureID`=140253) OR (`Idx`=41 AND `CreatureID`=140253) OR (`Idx`=40 AND `CreatureID`=140253) OR (`Idx`=39 AND `CreatureID`=140253) OR (`Idx`=38 AND `CreatureID`=140253) OR (`Idx`=37 AND `CreatureID`=140253) OR (`Idx`=36 AND `CreatureID`=140253) OR (`Idx`=35 AND `CreatureID`=140253) OR (`Idx`=34 AND `CreatureID`=140253) OR (`Idx`=33 AND `CreatureID`=140253) OR (`Idx`=32 AND `CreatureID`=140253) OR (`Idx`=31 AND `CreatureID`=140253) OR (`Idx`=30 AND `CreatureID`=140253) OR (`Idx`=29 AND `CreatureID`=140253) OR (`Idx`=28 AND `CreatureID`=140253) OR (`Idx`=27 AND `CreatureID`=140253) OR (`Idx`=26 AND `CreatureID`=140253) OR (`Idx`=25 AND `CreatureID`=140253) OR (`Idx`=24 AND `CreatureID`=140253) OR (`Idx`=23 AND `CreatureID`=140253) OR (`Idx`=22 AND `CreatureID`=140253) OR (`Idx`=21 AND `CreatureID`=140253) OR (`Idx`=20 AND `CreatureID`=140253);
UPDATE `creature_template_model` SET `DisplayScale`=0.85000002384185791, `Probability`=0, `VerifiedBuild`=46741 WHERE (`CreatureID`=162223 AND `Idx`=0); -- Emeni
UPDATE `creature_template_model` SET `DisplayScale`=1.10000002384185791, `VerifiedBuild`=46741 WHERE (`CreatureID`=162222 AND `Idx`=0); -- Rathan
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=46741 WHERE (`CreatureID`=158940 AND `Idx`=0); -- Corpselouse Vehicle
UPDATE `creature_template_model` SET `DisplayScale`=1.20000004768371582, `VerifiedBuild`=46741 WHERE (`CreatureID`=175478 AND `Idx`=0); -- Pack Tauralus


UPDATE `creature_questitem` SET `VerifiedBuild`=46741 WHERE (`Idx`=0 AND `CreatureEntry` IN (166206,174505,161890,164830,161881,166728,162727,165473,165561,158642,158566,158752,165549,158053)) OR (`Idx`=1 AND `CreatureEntry` IN (162727,165473,158752));

DELETE FROM `gameobject_template` WHERE `entry` IN (292884 /*Propellant Canister*/, 292883 /*The Black Anvil*/, 301214 /*Chair*/, 301213 /*Chair*/, 301212 /*Chair*/, 301211 /*Chair*/, 301215 /*Chair*/, 301219 /*Chair*/, 301218 /*Chair*/, 301217 /*Chair*/, 301216 /*Chair*/, 301209 /*Bench*/, 301200 /*Bench*/, 301248 /*Chair*/, 301198 /*Bench*/, 301197 /*Bench*/, 301182 /*Bench*/, 301247 /*Chair*/, 301296 /*Monument of Franclorn Forgewright*/, 301245 /*Chair*/, 301251 /*Chair*/, 301230 /*Chair*/, 301244 /*Chair*/, 301235 /*Chair*/, 301237 /*Chair*/, 301199 /*Bench*/, 301252 /*Chair*/, 301231 /*Chair*/, 301195 /*Bench*/, 301234 /*Chair*/, 301194 /*Bench*/, 301236 /*Chair*/, 301238 /*Chair*/, 301196 /*Bench*/, 301246 /*Chair*/, 301229 /*Chair*/, 301233 /*Chair*/, 301243 /*Chair*/, 301249 /*Chair*/, 301222 /*Chair*/, 301174 /*Bench*/, 301239 /*Chair*/, 301256 /*Chair*/, 301228 /*Chair*/, 301261 /*Chair*/, 301260 /*Chair*/, 301259 /*Chair*/, 301258 /*Chair*/, 301257 /*Chair*/, 301255 /*Chair*/, 301254 /*Chair*/, 301253 /*Chair*/, 301250 /*Chair*/, 301242 /*Chair*/, 301241 /*Chair*/, 301240 /*Chair*/, 301232 /*Chair*/, 301227 /*Chair*/, 301226 /*Chair*/, 301225 /*Chair*/, 301224 /*Chair*/, 301223 /*Chair*/, 301208 /*Chair*/, 301201 /*Bench*/, 301177 /*Bench*/, 301176 /*Bench*/, 301175 /*Bench*/, 301173 /*Bench*/, 301172 /*Bench*/, 301207 /*Chair*/, 301206 /*Chair*/, 301205 /*Chair*/, 301204 /*Chair*/, 301203 /*Bench*/, 301202 /*Chair*/, 301193 /*Bench*/, 301192 /*Bench*/, 301191 /*Bench*/, 301189 /*Bench*/, 301188 /*Bench*/, 301187 /*Bench*/, 301185 /*Bench*/, 301184 /*Bench*/, 301179 /*Bench*/, 301178 /*Bench*/, 292553 /*Azerite*/, 301190 /*Bench*/, 301186 /*Bench*/, 301183 /*Bench*/, 301181 /*Bench*/, 301180 /*Bench*/, 292800 /*Azerite*/, 292799 /*Azerite*/, 292798 /*Azerite*/, 292797 /*Azerite*/, 292796 /*Azerite*/, 292795 /*Azerite*/, 292882 /*Place Crate o' Azerite*/, 301165 /*Bench*/, 301153 /*Bench*/, 292554 /*Azerite*/, 301161 /*Bench*/, 301157 /*Bench*/, 301154 /*Bench*/, 301151 /*Bench*/, 301162 /*Bench*/, 301155 /*Bench*/, 301152 /*Bench*/, 292617 /*Crate o' Azerite*/, 301158 /*Bench*/, 301156 /*Bench*/, 301149 /*Bench*/, 301159 /*Bench*/, 301163 /*Bench*/, 301160 /*Bench*/, 301150 /*Bench*/, 301164 /*Bench*/, 301220 /*Chair*/, 301171 /*Bench*/, 301148 /*Bench*/, 301147 /*Bench*/, 301146 /*Bench*/, 301143 /*Bench*/, 301221 /*Chair*/, 301170 /*Bench*/, 301169 /*Bench*/, 301168 /*Bench*/, 301167 /*Bench*/, 301166 /*Bench*/, 301144 /*Bench*/, 301142 /*Bench*/, 292555 /*Azerite*/, 292552 /*Azerite*/, 292590 /*Rockslide*/, 292529 /*The Black Anvil*/, 301269 /*The Lyceum*/, 301344 /*Chair*/, 301290 /*ArenaGate03*/, 301387 /*Chair*/, 301336 /*Chair*/, 301437 /*Doodad_DarkIronDwarfRune_E01*/, 297683 /*Cave-in*/, 301379 /*Chair*/, 301287 /*Doodad_BlackRockDoors02*/, 301282 /*Bar Door*/, 301347 /*Chair*/, 301328 /*Chair*/, 301435 /*Doodad_DarkIronDwarfRune_C01*/, 301373 /*Chair*/, 301540 /*Relic Coffer Door*/, 301419 /*Chair*/, 301320 /*Chair*/, 301403 /*Chair*/, 301427 /*Bench*/, 301274 /*Cell Door*/, 301279 /*Cell Door*/, 301365 /*Chair*/, 301312 /*Chair*/, 301542 /*Relic Coffer Door*/, 301304 /*Chair*/, 301532 /*Relic Coffer Door*/, 301266 /*Doodad_BurningGiantWheel01*/, 301357 /*Chair*/, 301271 /*Shadowforge Gate*/, 301400 /*Chair*/, 301392 /*Chair*/, 301349 /*Chair*/, 301434 /*Doodad_DarkIronDwarfRune_B01*/, 301534 /*Relic Coffer Door*/, 301384 /*Chair*/, 301292 /*ArenaGate04*/, 301439 /*Doodad_DarkIronDwarfRune_G01*/, 301352 /*Chair*/, 301341 /*Chair*/, 301416 /*Chair*/, 301370 /*Chair*/, 301408 /*Chair*/, 301440 /*The Black Forge*/, 301333 /*Chair*/, 301432 /*Bench*/, 301424 /*Bench*/, 301284 /*Golem Room North*/, 301294 /*Giant Door Mechanism*/, 301362 /*Chair*/, 301325 /*Chair*/, 301317 /*Chair*/, 301375 /*Chair*/, 301354 /*Chair*/, 301276 /*Cell Door*/, 301309 /*Chair*/, 301286 /*Thone Room Doors*/, 301301 /*Chair*/, 301338 /*Chair*/, 301367 /*Chair*/, 301413 /*Chair*/, 301537 /*Relic Coffer Door*/, 301268 /*Doodad_BlackRockDoorSingle01*/, 301397 /*Chair*/, 301330 /*Chair*/, 301389 /*Chair*/, 301359 /*Chair*/, 301381 /*Chair*/, 301278 /*Cell Door*/, 301421 /*Bench*/, 301314 /*Chair*/, 301405 /*Chair*/, 301429 /*Bench*/, 301436 /*Doodad_DarkIronDwarfRune_D01*/, 301289 /*ArenaGate01*/, 301343 /*Chair*/, 301306 /*Chair*/, 301410 /*Chair*/, 301270 /*Shadowforge Gate*/, 301372 /*Chair*/, 301281 /*East Garrison Door*/, 301402 /*Chair*/, 301394 /*Chair*/, 301335 /*Chair*/, 301364 /*Chair*/, 301386 /*Chair*/, 301438 /*Doodad_DarkIronDwarfRune_F01*/, 301273 /*Cell Door*/, 301378 /*Chair*/, 301327 /*Chair*/, 301356 /*Chair*/, 301346 /*Chair*/, 301283 /*Doodad_BlackRockIronDoor02*/, 301322 /*Chair*/, 301418 /*Chair*/, 301426 /*Bench*/, 301340 /*Chair*/, 301319 /*Chair*/, 301311 /*Chair*/, 301539 /*Relic Coffer Door*/, 301297 /*Giant Doors*/, 301332 /*Chair*/, 301303 /*Chair*/, 301415 /*Chair*/, 301324 /*Chair*/, 301433 /*Doodad_DarkIronDwarfRune_A01*/, 301399 /*Chair*/, 301531 /*Dark Coffer*/, 301374 /*Chair*/, 301391 /*Chair*/, 301316 /*Chair*/, 301383 /*Chair*/, 301369 /*Chair*/, 301351 /*Chair*/, 301407 /*Chair*/, 301308 /*Chair*/, 301431 /*Bench*/, 301423 /*Bench*/, 301299 /*BigDoorDummyCollision02*/, 301361 /*Chair*/, 301412 /*Chair*/, 301396 /*Chair*/, 301536 /*Relic Coffer Door*/, 301366 /*Chair*/, 301353 /*Chair*/, 301291 /*ArenaGate02*/, 301388 /*Chair*/, 301380 /*Chair*/, 301345 /*Chair*/, 297684 /*Cave-in*/, 301288 /*Doodad_BlackRockDoors03*/, 301275 /*Cell Door*/, 301337 /*Chair*/, 301348 /*Chair*/, 301358 /*Chair*/, 301420 /*Bench*/, 301404 /*Chair*/, 301329 /*Chair*/, 301428 /*Bench*/, 301267 /*Doodad_BlackRockDoors01*/, 301280 /*Cell Door*/, 301321 /*Chair*/, 301313 /*Chair*/, 301371 /*Chair*/, 301334 /*Chair*/, 301305 /*Chair*/, 301401 /*Chair*/, 301326 /*Chair*/, 301363 /*Chair*/, 301393 /*Chair*/, 301541 /*Relic Coffer Door*/, 301385 /*Chair*/, 301318 /*Chair*/, 301377 /*Chair*/, 301355 /*Chair*/, 301417 /*Chair*/, 301409 /*Chair*/, 301310 /*Chair*/, 301425 /*Bench*/, 301145 /*Chair*/, 301272 /*Supply Room Door*/, 301533 /*Secret Door*/, 301543 /*Relic Coffer Door*/, 301339 /*Chair*/, 301302 /*Chair*/, 301414 /*Chair*/, 301538 /*Relic Coffer Door*/, 301331 /*Chair*/, 301293 /*The Shadowforge Lock*/, 301398 /*Chair*/, 301535 /*Relic Coffer Door*/, 301390 /*Chair*/, 301323 /*Chair*/, 301376 /*Chair*/, 301382 /*Chair*/, 301530 /*Relic Coffer Door*/, 301285 /*Golem Room South*/, 301350 /*Dark Iron Keg Shotgun*/, 301315 /*Chair*/, 301342 /*Chair*/, 301368 /*Chair*/, 301262 /*Chair*/, 301422 /*Bench*/, 301307 /*Chair*/, 301406 /*Chair*/, 301430 /*Bench*/, 301277 /*Cell Door*/, 301298 /*Giant Door Fake Collision*/, 301360 /*Chair*/, 301411 /*Chair*/, 301395 /*Chair*/, 301295 /*Ironfel*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(292884, 10, 9359, 'Propellant Canister', '', 'Drinking', '', 1, 1690, 0, 0, 3000, 0, 1, 0, 0, 0, 0, 275264, 0, 0, 0, 21295, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Propellant Canister
(292883, 5, 50205, 'The Black Anvil', '', '', '', 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- The Black Anvil
(301214, 7, 987, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301213, 7, 988, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301212, 7, 988, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301211, 7, 988, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301215, 7, 987, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301219, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301218, 7, 39, 'Chair', '', '', '', 0.999999701976776123, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301217, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301216, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301209, 7, 990, 'Bench', '', '', '', 0.999999940395355224, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301200, 7, 990, 'Bench', '', '', '', 1.349999785423278808, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301248, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301198, 7, 990, 'Bench', '', '', '', 1.349999904632568359, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301197, 7, 990, 'Bench', '', '', '', 1.349999904632568359, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301182, 7, 987, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301247, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301296, 2, 2932, 'Monument of Franclorn Forgewright', '', '', '', 1, 93, 3033, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Monument of Franclorn Forgewright
(301245, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301251, 7, 39, 'Chair', '', '', '', 1.000000476837158203, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301230, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301244, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301235, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301237, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301199, 7, 990, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301252, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301231, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301195, 7, 990, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301234, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301194, 7, 990, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301236, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301238, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301196, 7, 990, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301246, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301229, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301233, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301243, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301249, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301222, 7, 39, 'Chair', '', '', '', 1.000000476837158203, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301174, 7, 990, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301239, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301256, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301228, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301261, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301260, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301259, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301258, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301257, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301255, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301254, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301253, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301250, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301242, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301241, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301240, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301232, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301227, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301226, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301225, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301224, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301223, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301208, 7, 988, 'Chair', '', '', '', 1.35000014305114746, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301201, 7, 990, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301177, 7, 990, 'Bench', '', '', '', 1.349999785423278808, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301176, 7, 990, 'Bench', '', '', '', 1.349999785423278808, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301175, 7, 987, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301173, 7, 987, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301172, 7, 990, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301207, 7, 988, 'Chair', '', '', '', 1.35000014305114746, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301206, 7, 988, 'Chair', '', '', '', 1.35000014305114746, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301205, 7, 988, 'Chair', '', '', '', 1.35000014305114746, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301204, 7, 988, 'Chair', '', '', '', 1.35000014305114746, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301203, 7, 990, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301202, 7, 988, 'Chair', '', '', '', 1.35000014305114746, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301193, 7, 990, 'Bench', '', '', '', 1.349999785423278808, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301192, 7, 987, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301191, 7, 987, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301189, 7, 987, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301188, 7, 987, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301187, 7, 987, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301185, 7, 987, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301184, 7, 987, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301179, 7, 987, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301178, 7, 987, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(292553, 5, 47692, 'Azerite', '', '', '', 0.5, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Azerite
(301190, 7, 987, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301186, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301183, 7, 987, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301181, 7, 987, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301180, 7, 987, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(292800, 5, 50371, 'Azerite', '', '', '', 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Azerite
(292799, 5, 50370, 'Azerite', '', '', '', 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Azerite
(292798, 5, 50369, 'Azerite', '', '', '', 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Azerite
(292797, 5, 50368, 'Azerite', '', '', '', 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Azerite
(292796, 5, 50073, 'Azerite', '', '', '', 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Azerite
(292795, 5, 50367, 'Azerite', '', '', '', 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Azerite
(292882, 10, 50281, 'Place Crate o\' Azerite', 'questinteract', 'Placing Azerite', '', 0.649999976158142089, 1690, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 275257, 0, 0, 0, 158016, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 674, 46741), -- Place Crate o' Azerite
(301165, 7, 990, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301153, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(292554, 5, 47685, 'Azerite', '', '', '', 0.5, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Azerite
(301161, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301157, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301154, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301151, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301162, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301155, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301152, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(292617, 10, 50281, 'Crate o\' Azerite', 'questinteract', '', '', 0.649999976158142089, 2913, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 674, 46741), -- Crate o' Azerite
(301158, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301156, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301149, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301159, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301163, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301160, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301150, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301164, 7, 990, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301220, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301171, 7, 990, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301148, 7, 990, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301147, 7, 990, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301146, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301143, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301221, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301170, 7, 990, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301169, 7, 990, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301168, 7, 990, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301167, 7, 990, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301166, 7, 990, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301144, 7, 990, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301142, 7, 990, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(292555, 5, 48379, 'Azerite', '', '', '', 0.5, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Azerite
(292552, 5, 47686, 'Azerite', '', '', '', 0.5, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Azerite
(292590, 0, 30796, 'Rockslide', '', '', '', 1.399999976158142089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Rockslide
(292529, 8, 50205, 'The Black Anvil', '', '', '', 1, 623, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 674, 46741), -- The Black Anvil
(301269, 0, 2752, 'The Lyceum', '', '', '', 1.499399900436401367, 0, 1634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- The Lyceum
(301344, 7, 39, 'Chair', '', '', '', 1.006711840629577636, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301290, 0, 3751, 'ArenaGate03', '', '', '', 2.099999904632568359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- ArenaGate03
(301387, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301336, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301437, 1, 2771, 'Doodad_DarkIronDwarfRune_E01', '', '', '', 1.49758768081665039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_DarkIronDwarfRune_E01
(297683, 0, 43997, 'Cave-in', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cave-in
(301379, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301287, 0, 2750, 'Doodad_BlackRockDoors02', '', '', '', 1.246167898178100585, 1, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_BlackRockDoors02
(301282, 0, 2751, 'Bar Door', '', '', '', 1.309999942779541015, 0, 739, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bar Door
(301347, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301328, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301435, 1, 2672, 'Doodad_DarkIronDwarfRune_C01', '', '', '', 1.49758768081665039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_DarkIronDwarfRune_C01
(301373, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301540, 0, 3075, 'Relic Coffer Door', '', '', '', 1, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301419, 7, 39, 'Chair', '', '', '', 0.999999821186065673, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301320, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301403, 7, 39, 'Chair', '', '', '', 0.999999880790710449, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301427, 7, 987, 'Bench', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301274, 0, 2751, 'Cell Door', '', '', '', 1.00000011920928955, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301279, 0, 2751, 'Cell Door', '', '', '', 1, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301365, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301312, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301542, 0, 3075, 'Relic Coffer Door', '', '', '', 1, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301304, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301532, 0, 3075, 'Relic Coffer Door', '', '', '', 1, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301266, 0, 2730, 'Doodad_BurningGiantWheel01', '', '', '', 1, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_BurningGiantWheel01
(301357, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301271, 0, 2753, 'Shadowforge Gate', '', '', '', 1, 0, 1634, 0, 0, 0, 0, 0, 5703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Shadowforge Gate
(301400, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301392, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301349, 7, 39, 'Chair', '', '', '', 1.006711483001708984, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301434, 1, 2671, 'Doodad_DarkIronDwarfRune_B01', '', '', '', 1.49758768081665039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_DarkIronDwarfRune_B01
(301534, 0, 3076, 'Relic Coffer Door', '', '', '', 1.00000011920928955, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301384, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301292, 0, 3751, 'ArenaGate04', '', '', '', 2.10000014305114746, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- ArenaGate04
(301439, 1, 2773, 'Doodad_DarkIronDwarfRune_G01', '', '', '', 1.49758768081665039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_DarkIronDwarfRune_G01
(301352, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301341, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301416, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301370, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301408, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301440, 8, 3351, 'The Black Forge', '', '', '', 1, 543, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- The Black Forge
(301333, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301432, 7, 987, 'Bench', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301424, 7, 987, 'Bench', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301284, 0, 2752, 'Golem Room North', '', '', '', 1.499400019645690917, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Golem Room North
(301294, 0, 2852, 'Giant Door Mechanism', '', '', '', 1, 0, 0, 12000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Giant Door Mechanism
(301362, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301325, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301317, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301375, 7, 39, 'Chair', '', '', '', 1.000000476837158203, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301354, 7, 39, 'Chair', '', '', '', 1.006711483001708984, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301276, 0, 2751, 'Cell Door', '', '', '', 1, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301309, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301286, 0, 2752, 'Thone Room Doors', '', '', '', 1.514394044876098632, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Thone Room Doors
(301301, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301338, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301367, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301413, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301537, 0, 3076, 'Relic Coffer Door', '', '', '', 1.00000011920928955, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301268, 0, 2751, 'Doodad_BlackRockDoorSingle01', '', '', '', 1, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_BlackRockDoorSingle01
(301397, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301330, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301389, 7, 39, 'Chair', '', '', '', 1.000000476837158203, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301359, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301381, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301278, 0, 2751, 'Cell Door', '', '', '', 0.999999940395355224, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301421, 7, 987, 'Bench', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301314, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301405, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301429, 7, 987, 'Bench', '', '', '', 0.999999821186065673, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301436, 1, 2673, 'Doodad_DarkIronDwarfRune_D01', '', '', '', 1.49758768081665039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_DarkIronDwarfRune_D01
(301289, 0, 3751, 'ArenaGate01', '', '', '', 2.099999904632568359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- ArenaGate01
(301343, 7, 39, 'Chair', '', '', '', 1.006711602210998535, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301306, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301410, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301270, 0, 2753, 'Shadowforge Gate', '', '', '', 1, 0, 1634, 0, 0, 0, 0, 0, 5703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Shadowforge Gate
(301372, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301281, 0, 2751, 'East Garrison Door', '', '', '', 0.980392158031463623, 0, 1634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- East Garrison Door
(301402, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301394, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301335, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301364, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301386, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301438, 1, 2772, 'Doodad_DarkIronDwarfRune_F01', '', '', '', 1.49758768081665039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_DarkIronDwarfRune_F01
(301273, 0, 2751, 'Cell Door', '', '', '', 0.980392277240753173, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301378, 7, 39, 'Chair', '', '', '', 1.000000476837158203, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301327, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301356, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301346, 7, 39, 'Chair', '', '', '', 1.000000476837158203, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301283, 0, 2752, 'Doodad_BlackRockIronDoor02', '', '', '', 1.499400019645690917, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_BlackRockIronDoor02
(301322, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301418, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301426, 7, 987, 'Bench', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301340, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301319, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301311, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301539, 0, 3075, 'Relic Coffer Door', '', '', '', 1, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301297, 0, 2790, 'Giant Doors', '', '', '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Giant Doors
(301332, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301303, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301415, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301324, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301433, 1, 2670, 'Doodad_DarkIronDwarfRune_A01', '', '', '', 1.49758768081665039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_DarkIronDwarfRune_A01
(301399, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301531, 0, 3078, 'Dark Coffer', '', '', '', 1, 0, 659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Dark Coffer
(301374, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301391, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301316, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301383, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301369, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301351, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301407, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301308, 7, 39, 'Chair', '', '', '', 1.000000476837158203, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741); -- Chair

INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(301431, 7, 987, 'Bench', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301423, 7, 987, 'Bench', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301299, 0, 2854, 'BigDoorDummyCollision02', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- BigDoorDummyCollision02
(301361, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301412, 7, 39, 'Chair', '', '', '', 0.999999880790710449, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301396, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301536, 0, 3076, 'Relic Coffer Door', '', '', '', 1.00000011920928955, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301366, 7, 39, 'Chair', '', '', '', 1.006711602210998535, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301353, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301291, 0, 3751, 'ArenaGate02', '', '', '', 2.10000014305114746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- ArenaGate02
(301388, 7, 39, 'Chair', '', '', '', 1.000000476837158203, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301380, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301345, 7, 39, 'Chair', '', '', '', 1.006711244583129882, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(297684, 0, 10265, 'Cave-in', '', '', '', 1.299999952316284179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cave-in
(301288, 0, 2750, 'Doodad_BlackRockDoors03', '', '', '', 1.246168017387390136, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_BlackRockDoors03
(301275, 0, 2751, 'Cell Door', '', '', '', 1.00000011920928955, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301337, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301348, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301358, 7, 39, 'Chair', '', '', '', 1.000000596046447753, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301420, 7, 987, 'Bench', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301404, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301329, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301428, 7, 987, 'Bench', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301267, 0, 2750, 'Doodad_BlackRockDoors01', '', '', '', 1, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_BlackRockDoors01
(301280, 0, 2751, 'Cell Door', '', '', '', 1, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301321, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301313, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301371, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301334, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301305, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301401, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301326, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301363, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301393, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301541, 0, 3075, 'Relic Coffer Door', '', '', '', 1, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301385, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301318, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301377, 7, 39, 'Chair', '', '', '', 1.000000476837158203, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301355, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301417, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301409, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301310, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301425, 7, 987, 'Bench', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301145, 7, 988, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301272, 0, 2751, 'Supply Room Door', '', '', '', 0.980392158031463623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Supply Room Door
(301533, 0, 3077, 'Secret Door', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Secret Door
(301543, 0, 3075, 'Relic Coffer Door', '', '', '', 1, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301339, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301302, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301414, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301538, 0, 3076, 'Relic Coffer Door', '', '', '', 1.00000011920928955, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301331, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301293, 0, 2851, 'The Shadowforge Lock', '', '', '', 0.999999940395355224, 0, 1634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- The Shadowforge Lock
(301398, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301535, 0, 3076, 'Relic Coffer Door', '', '', '', 1.00000011920928955, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301390, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301323, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301376, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301382, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301530, 0, 3076, 'Relic Coffer Door', '', '', '', 1.00000011920928955, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301285, 0, 2752, 'Golem Room South', '', '', '', 1.499400019645690917, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Golem Room South
(301350, 1, 3152, 'Dark Iron Keg Shotgun', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Dark Iron Keg Shotgun
(301315, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301342, 7, 39, 'Chair', '', '', '', 1.000000476837158203, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301368, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301262, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301422, 7, 987, 'Bench', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301307, 7, 39, 'Chair', '', '', '', 1.000000476837158203, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301406, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301430, 7, 987, 'Bench', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301277, 0, 2751, 'Cell Door', '', '', '', 1, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301298, 0, 2853, 'Giant Door Fake Collision', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Giant Door Fake Collision
(301360, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301411, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301395, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301295, 0, 2931, 'Ironfel', '', '', '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741); -- Ironfel

UPDATE `gameobject_template` SET `VerifiedBuild`=46741 WHERE `entry` IN (294556, 210181, 299327, 177000, 293422, 293325, 293324, 293320, 293316, 292776, 292769, 203751, 194282, 227907, 227908, 339222, 316736, 278331, 278330, 278329, 278328, 278327, 273853, 350063, 298865, 278332, 278326, 273855, 278333, 278325, 278324, 278310, 232224, 281864, 232235, 232234, 232225, 207416, 281304, 278311, 267647, 231870, 204281, 203954, 203951, 203950, 203949, 203948, 203929, 203945, 203944, 203930, 202062, 202061, 203947, 203946, 203943, 203942, 203941, 203940, 203939, 203938, 203937, 203936, 203935, 203934, 203933, 203932, 203931, 203928, 203927, 203926, 203925, 203924, 202064, 202063, 202060, 202059, 202050, 202049, 202048, 202052, 202044, 202046, 202058, 202056, 202055, 202051, 202047, 202045, 202043, 207722, 207719, 202057, 201985, 207718, 201995, 202003, 292771, 254120, 207723, 207721, 207720, 202054, 202053, 201996, 201994, 201993, 201992, 201986, 201982, 254088, 202001, 202000, 201999, 201998, 201987, 201983, 254092, 254089, 202002, 254115, 254093, 202011, 201989, 140911, 259114, 254117, 254116, 209297, 254118, 254108, 254110, 203800, 254111, 254109, 254123, 209039, 254122, 209692, 205553, 197098, 197096, 197018, 197099, 197097, 197022, 197021, 180007, 266354, 207661, 197031, 197029, 197028, 197027, 197026, 197025, 197024, 197023, 193981, 175758, 175729, 197030, 197011, 197032, 197020, 197012, 197008, 190536, 197073, 197061, 197060, 197057, 197056, 197055, 197054, 197053, 197052, 197051, 197050, 197047, 197049, 197070, 197059, 197048, 197066, 197075, 197071, 197072, 197076, 197074, 197069, 197064, 197067, 197068, 105175, 197091, 197092, 335930, 322639, 203762, 197090, 197089, 197013, 355054, 197062, 197058, 197046, 259008, 311875, 323844, 197083, 197079, 323840, 332224, 197063, 197084, 323843, 197080, 197085, 197093, 323846, 197009, 197081, 197044, 323842, 197017, 323845, 323841, 197007, 197065, 197045, 197082, 105174, 293696, 197014, 358588, 358587, 358586, 358585, 358584, 357273, 355972, 367759, 357285, 357578, 357289, 353485, 353490, 357298, 357294, 352745, 368955, 353492, 377007, 377005, 377001, 357340, 357322, 357320, 357313, 357311, 357274, 357272, 353482, 357315, 357316, 357327, 357321, 353488, 357325, 357324, 357323, 357326, 357318, 357310, 357314, 357319, 365157, 353491, 365154, 352746, 353489, 365156, 365155, 354681, 345445, 345444, 353480, 353822, 353483, 353823, 367758, 357308, 357307, 357306, 357305, 357303, 357302, 357301, 357300, 357282, 357271, 357263, 357262, 357299, 357288, 357286, 357278, 357269, 357267, 357266, 353481, 357287, 357277, 355063, 353487, 357293, 357292, 357291, 357264, 357095, 353484, 369532, 369531, 369530, 369529, 369528, 364423, 364422, 353478, 369533, 369527, 353479, 353477, 377031, 375407, 369526, 364419, 353476, 374521, 374520, 374519, 374518, 369536, 369535, 369534, 364424, 353750, 364499, 354922, 364497, 354921, 354924, 354923, 353764, 353977, 342125, 365111, 351336, 358877, 358876, 358874, 356396, 358875, 356599, 355452, 355451, 365674, 364892, 358873, 358872, 358871, 357089, 355042, 351447, 355424, 353633, 356600, 364940, 349593, 351479, 351474, 364394, 355505, 364393, 358315, 347444, 351478, 351475, 351467, 354927, 252145, 353616, 349509, 341721, 341720, 364864, 352118, 353389, 353390, 357351, 353392, 353391, 353992, 336675, 364863, 353615, 349981, 246280, 349082, 338855, 349546, 336689, 336691, 348532, 236184, 353881, 357701, 357446, 353397, 350775, 353396, 337095, 351470, 348935, 349898, 353601, 353378, 353614, 353602, 364865, 352110, 353395, 353400, 353394, 353399, 353398, 353393);
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46741 WHERE `entry`=227906; -- Anvil
UPDATE `gameobject_template` SET `Data8`=103829, `Data10`=30092, `VerifiedBuild`=46741 WHERE `entry`=227909; -- Forge
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46741 WHERE `entry`=365670; -- Anvil
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46741 WHERE `entry`=365673; -- Anvil
UPDATE `gameobject_template` SET `Data8`=103829, `Data10`=30092, `VerifiedBuild`=46741 WHERE `entry`=365672; -- Forge
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46741 WHERE `entry`=357352; -- Anvil
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46741 WHERE `entry`=348536; -- Anvil
UPDATE `gameobject_template` SET `Data8`=103829, `Data10`=30092, `VerifiedBuild`=46741 WHERE `entry`=348535; -- Forge


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46741 WHERE (`Idx`=0 AND `GameObjectEntry` IN (203751,140911,203800,105175,203762,105174,347444,349509)) OR (`Idx`=1 AND `GameObjectEntry`=347444);

DELETE FROM `scenario_poi` WHERE (`CriteriaTreeID`=66869 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=66867 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=66864 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=66854 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=66856 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=66827 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=66829 AND `BlobIndex`=0 AND `Idx1`=0) OR (`CriteriaTreeID`=66732 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `scenario_poi` (`CriteriaTreeID`, `BlobIndex`, `Idx1`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `VerifiedBuild`) VALUES
(66869, 0, 0, 1932, 1159, 0, 2, 0, 0, 46741),
(66867, 0, 0, 1932, 1159, 0, 2, 0, 0, 46741),
(66864, 0, 0, 1932, 1159, 0, 2, 0, 0, 46741),
(66854, 0, 0, 1932, 1159, 0, 2, 0, 0, 46741),
(66856, 0, 0, 1932, 1159, 0, 2, 0, 0, 46741),
(66827, 0, 0, 1932, 1159, 0, 2, 0, 0, 46741),
(66829, 0, 0, 1932, 1159, 0, 2, 0, 0, 46741),
(66732, 0, 0, 1932, 1159, 0, 2, 0, 0, 46741);


DELETE FROM `world_quest` WHERE `id` IN (54396 /*54396*/, 54377 /*54377*/, 60443 /*60443*/, 64579 /*64579*/, 60396 /*60396*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(54396, 86400, 16754, 1), -- 54396
(54377, 86400, 16769, 1), -- 54377
(60443, 259200, 19334, 1), -- 60443
(64579, 86400, 21348, 1), -- 64579
(60396, 259200, 19322, 1); -- 60396

UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099

DELETE FROM `creature_equip_template` WHERE (`CreatureID`=80087 AND `ID`=1) OR (`CreatureID`=144154 AND `ID`=2);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(80087, 1, 57012, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Liberated Frostwolf Prisoner
(144154, 2, 2703, 0, 0, 0, 0, 0, 0, 0, 0, 46741); -- Anvil-Thane Thurgaden


UPDATE `areatrigger_template` SET `VerifiedBuild`=46741 WHERE (`IsServerSide`=0 AND `Id` IN (9225,7371,8074,12740,2947,10727,27318,27633,12515,26326));
UPDATE `areatrigger_template` SET `Flags`=2, `VerifiedBuild`=46741 WHERE (`Id`=9228 AND `IsServerSide`=0);


DELETE FROM `quest_poi` WHERE (`QuestID`=65436 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65436 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(65436, 0, 1, 32, 0, 0, 0, 84, 0, 0, 0, 0, 0, 2194169, 0, 46741), -- -Unknown-
(65436, 0, 0, -1, 0, 0, 0, 84, 0, 0, 0, 0, 0, 2194169, 0, 46741); -- -Unknown-

UPDATE `quest_poi` SET `VerifiedBuild`=46741 WHERE (`QuestID`=34423 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=34423 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=34423 AND `BlobIndex`=2 AND `Idx1`=5) OR (`QuestID`=34423 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=34423 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=34423 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=34423 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=34423 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=35242 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=35242 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=35242 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=35242 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=35242 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=35240 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=35240 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=35240 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=35240 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=35240 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=35240 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=34422 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=34422 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=34422 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=34420 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=34420 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=34393 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=34393 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=34393 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=34393 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=34393 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=34393 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=34393 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=34393 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=34392 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=34392 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=34392 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=34392 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=35933 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=35933 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=57249 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=57249 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=57249 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=34398 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=34398 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=34398 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=34398 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=51486 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=51486 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=147 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=147 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=147 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=76 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=76 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=76 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=76 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=37 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=37 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=56120 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=56120 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50602 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50598 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=69925 AND `BlobIndex`=0 AND `Idx1`=14) OR (`QuestID`=69925 AND `BlobIndex`=12 AND `Idx1`=13) OR (`QuestID`=69925 AND `BlobIndex`=11 AND `Idx1`=12) OR (`QuestID`=69925 AND `BlobIndex`=10 AND `Idx1`=11) OR (`QuestID`=69925 AND `BlobIndex`=9 AND `Idx1`=10) OR (`QuestID`=69925 AND `BlobIndex`=8 AND `Idx1`=9) OR (`QuestID`=69925 AND `BlobIndex`=7 AND `Idx1`=8) OR (`QuestID`=69925 AND `BlobIndex`=6 AND `Idx1`=7) OR (`QuestID`=69925 AND `BlobIndex`=5 AND `Idx1`=6) OR (`QuestID`=69925 AND `BlobIndex`=4 AND `Idx1`=5) OR (`QuestID`=69925 AND `BlobIndex`=3 AND `Idx1`=4) OR (`QuestID`=69925 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=69925 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=69925 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=69925 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66586 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=66586 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66586 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66586 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66042 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66042 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66042 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53435 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53435 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63949 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63949 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63051 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63051 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62635 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61981 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61981 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61981 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60500 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60500 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60500 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=57880 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=57880 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49929 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=45563 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=43341 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=43341 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=42449 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=42449 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=36309 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=65436 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65436 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(65436, 1, 0, -8309, 336, 155, 46741), -- -Unknown-
(65436, 0, 0, -8309, 336, 155, 46741); -- -Unknown-

UPDATE `quest_poi_points` SET `VerifiedBuild`=46741 WHERE (`QuestID`=34423 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=34423 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=34423 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=34423 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=34423 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=34423 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=34423 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=34423 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=34423 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=34423 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=34423 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=34423 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=34423 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=34423 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=35242 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=35242 AND `Idx1`=3 AND `Idx2`=9) OR (`QuestID`=35242 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=35242 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=35242 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=35242 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=35242 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=35242 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=35242 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=35242 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=35242 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=35242 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=35242 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=35242 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=35240 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=35240 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=35240 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=35240 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=35240 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=35240 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=34422 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=34422 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=34422 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=34422 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=34422 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=34422 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=34422 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=34422 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=34422 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=34422 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=34422 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=34422 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=34422 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=34422 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=34420 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=34420 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=34393 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=34393 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=34393 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=34393 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=34393 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=34393 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=34393 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=34393 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=34392 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=34392 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=34392 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=34392 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=35933 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=35933 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=35933 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=35933 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=35933 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=35933 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=35933 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=35933 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=35933 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=35933 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=35933 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=35933 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=35933 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=34398 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=34398 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=34398 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=34398 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=51486 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=51486 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=147 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=147 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=147 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=76 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=76 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=76 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=76 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=76 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=76 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=76 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=76 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=76 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=37 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=37 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=56120 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=56120 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50602 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50598 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=14 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=13 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=12 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=11 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=10 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=9 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=69925 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=69925 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66586 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=66586 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66586 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66586 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66042 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66042 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66042 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53435 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53435 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63949 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63949 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63051 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62635 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61981 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61981 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61981 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60500 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60500 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60500 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=57880 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=57880 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53436 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53436 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=45563 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=43341 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=43341 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=42449 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=42449 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=36309 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (65436 /*-Unknown-*/, 14036 /*Pilgrim's Bounty*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(65436, 1, 0, 0, 0, 0, 0, 0, 0, 46741), -- -Unknown-
(14036, 1, 1, 0, 0, 0, 0, 0, 0, 46741); -- Pilgrim's Bounty

UPDATE `quest_details` SET `VerifiedBuild`=46741 WHERE `ID` IN (34423, 35242, 35240, 34422, 34420, 34393, 34392, 35933, 57249, 34398, 53500, 51486);

DELETE FROM `creature_queststarter` WHERE (`id`=133362 AND `quest`=53500);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(133362, 53500, 46741); -- Stranger in a Strange Land offered Ambassador Moorgard


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (80087,81274,79152,54374,198506,198509,198505,198533,197287,198532,197762,170715,198383,189767,197253,197269,197267,144181,144130,144128,176995,144153,144154,185305,144152,144156,185352,177039,144122,144119,144118,144123,143567,144125,144124,144129,144127,144163,144132,144126,176828,32820,70098,184600,115786,198236));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(80087, 0, 0, 0, 178, 46741),
(81274, 0, 0, 0, 178, 46741),
(79152, 0, 0, 0, 178, 46741),
(54374, 0, 0, 0, 371, 46741),
(198506, 0, 0, 0, 864, 46741),
(198509, 0, 0, 0, 81, 46741),
(198505, 0, 0, 0, 864, 46741),
(198533, 0, 0, 0, 864, 46741),
(197287, 0, 0, 0, 864, 46741),
(198532, 0, 0, 0, 864, 46741),
(197762, 0, 0, 0, 2401, 46741),
(170715, 0, 0, 0, 864, 46741),
(198383, 0, 0, 0, 2151, 46741),
(189767, 0, 0, 0, 2151, 46741),
(197253, 0, 0, 0, 864, 46741),
(197269, 0, 0, 0, 371, 46741),
(197267, 0, 0, 0, 864, 46741),
(144181, 0, 0, 0, 674, 46741),
(144130, 0, 0, 0, 517, 46741),
(144128, 0, 0, 0, 517, 46741),
(176995, 0, 0, 0, 517, 46741),
(144153, 0, 0, 0, 517, 46741),
(144154, 0, 0, 0, 517, 46741),
(185305, 0, 0, 0, 517, 46741),
(144152, 0, 0, 0, 517, 46741),
(144156, 0, 0, 0, 517, 46741),
(185352, 0, 0, 0, 1281, 46741),
(177039, 0, 0, 0, 1281, 46741),
(144122, 0, 0, 0, 517, 46741),
(144119, 0, 0, 0, 517, 46741),
(144118, 0, 0, 0, 517, 46741),
(144123, 0, 0, 0, 517, 46741),
(143567, 0, 0, 0, 674, 46741),
(144125, 0, 0, 0, 517, 46741),
(144124, 0, 0, 0, 517, 46741),
(144129, 0, 0, 0, 517, 46741),
(144127, 0, 0, 0, 517, 46741),
(144163, 0, 0, 0, 517, 46741),
(144132, 0, 0, 0, 517, 46741),
(144126, 0, 0, 0, 517, 46741),
(176828, 0, 0, 0, 517, 46741),
(32820, 0, 0, 0, 389, 46741),
(70098, 0, 0, 0, 371, 46741),
(184600, 0, 0, 0, 482, 46741),
(115786, 0, 0, 0, 371, 46741),
(198236, 0, 0, 0, 482, 46741);


UPDATE `creature_template_scaling` SET `VerifiedBuild`=46741 WHERE (`DifficultyID`=0 AND `Entry` IN (81895,78905,81926,78906,78830,83670,81901,80804,85146,78768,82871,85142,78820,78509,43499,80715,78589,78591,78590,78559,41200,81763,81762,78507,85856,78510,82624,26125,81695,81696,83651,83652,82417,78558,81711,78333,79062,82484,82305,83538,82647,78883,78696,76648,82016,78569,79315,82004,82000,81994,81990,82264,82012,81999,81998,81997,81996,82263,79316,82010,82188,82001,81995,82025,78568,82013,82009,82006,82002,81993,82189,82017,82082,82191,82187,82014,82007,82011,82005,82259,82075,82008,78556,82260,82015,78554,78423,78430,78553,79675,77653,78193,82003,78670,78674,5990,78667,5983,41158,82504,82774,76651,58542,60199,76556,76117,76110,82448,85731,9699,77643,76448,76108,85213,76189,76673,76085,76103,76886,76429,77090,82270,82273,76436,76098,84182,84199,149458,147714,5081,173545,149099,3628,147785,1311,148796,1141,2485,5497,149445,331,1307,52408,148233,89174,149469,149433,149121,1419,147741,148124,103033,85307,5694,2708,149131,5498,150122,84751,84749,84745,174146,149124,1308,85819,85818,85817,85816,82564,23837,4078,52031,5499,158440,158436,158463,158456,158755,158753,52361,52359,52358,3627,30730,5503,5500,1309,1313,30713,1429,5567,1310,5566,49701,1314,1347,42288,1300,1346,188679,5386,1316,1257,12480,1301,1431,277,14438,111421,1415,1414,338,12481,1413,6740,188678,1318,1317,1315,1312,46180,188342,11068,2533,2532,62177,29093,44582,8670,15659,8719,44583,1427,1295,1291,1367,1366,1402,4075,5494,5493,1294,175420,175416,1299,1298,1428,29142,1297,179896,44774,44773,141270,181535,1478,1477,2330,3504,2331,1405,1350,1349,50424,3520,50432,14450,83882,83878,157498,157496,83890,1444,83883,14497,54026,54117,10782,1646,55684,42339,53641,5384,42421,54217,54215,656,58167,54218,54216,54214,53991,54219,1472,5513,5514,5517,11069,5515,44392,5516,2879,7798,80069,29725,44394,44393,5512,5510,20407,957,5511,5413,2334,44236,49540,45306,44235,1649,188521,144134,43034,6579,43840,1416,43725,43724,43723,43823,7232,49748,43842,43841,5518,11026,5519,43825,14563,43824,5509,43690,18927,14439,42782,16908,44395,20716,51348,88067,133369,126332,112686,1976,158125,158123,158119,172572,133362,158120,111190,133441,133409,133408,133433,88081,88080,112698,112694,133675,68,73678,144135,144133,1423,60649,721,1860,1412,61071,822,13321,116,524,31768,12351,356,3350,3351,47663,14451,62200,62199,52810,52812,52809,3413,11017,3412,3369,14498,14499,198538,42506,57801,49737,54472,62194,71163,24931,24929,24930,24927,24926,24924,25081,25080,44780,44779,77789,58199,58193,47336,47335,47321,158637,51230,45244,46742,3348,3347,11046,8659,161223,176012,54004,11066,176095,176094,50088,46181,3345,46741,3346,54113,174147,141920,141912,133271,174863,174864,45540,45546,45545,174865,52170,180176,46078,45549,45567,45566,45565,140462,46080,45347,45548,45659,45830,30611,175050,52036,52033,63086,63085,158138,133523,54657,12795,12793,12789,45552,158141,158133,158131,29929,46755,19850,45814,48510,42548,46082,46754,48513,12797,12794,172558,133261,167032,45563,45553,14377,149409,32642,32641,149290,46358,12791,12790,69977,146626,69978,14376,19176,44782,44781,44787,3322,44783,15188,24935,24934,34719,34718,3084,34730,34721,34715,34723,34717,191387,3371,2857,46709,46708,3368,3372,46718,7010,52032,46716,43062,95057,12136,44745,44726,1420,114104,109912,95234,4953,44740,141528,130911,9564,44723,44743,45230,5875,3335,44735,44725,88705,88704,12798,29143,12796,179897,5910,73151,3334,23635,46357,37072,46359,3319,46512,3216,5909,47254,88706,3330,5816,3189,198542,198557,63626,3327,34765,113395,15476,47233,3328,10880,14881,44918,26537,198553,50477,3310,50488,44160,20490,20493,20488,20486,50323,20492,20491,20489,187987,44948,44919,5639,3329,93223,47246,141310,47247,47248,3331,62198,19177,44158,3367,55054,134711,54870,42637,52382,14720,49131,198541,188167,198497,145424,47571,3323,3314,58155,72654,23128,17098,45337,46556,46555,46140,52034,35068,135201,49622,197771,197770,197767,145529,145528,4047,44338,45339,46142,133333,3144,51195,44872,44871,89830,44868,44867,44866,44865,27489,3312,3370,188655,5188,46572,188166,3342,19175,188073,187758,188656,88703,49750,72559,31720,25075,31727,31725,31724,31726,31723,149371,149404,149408,149296,149297,44877,15116,44854,44853,74228,44876,44878,14375,44851,44856,44852,5614,5613,5611,137762,6929,135202,28960,5610,5609,5606,6466,88702,14392,3313,88701,62195,5817,3296,168459,49837,38821,32520,149270,148770,149522,50304,151937,133186,149279,6566,47253,149258,150131,149523,148795,149626,155739,148250,148242,145714,148263,148768,173548,148265,149616,51346,61751,42859,4311,3204,71100,3197,3127,197288,184810,184809,184808,3198,160527,199726,160526,160530,160529,160528,197279,198412,198411,189075,175156,49743,190239,193450,62115,62114,184858,184814,184812,62822,62821,198476,198475,195899,5951,198434,200166,184813,195385,3100,184671,184665,195357,62116,180701,143622,40891,189554,121541,41621,3108,174994,175620,175408,168703,166143,55626,175767,164931,172605,175625,172649,175922,103159,158653,161977,164738,161979,175580,164741,175772,174038,175450,175449,159000,175624,175451,173942,175452,175441,172368,175469,166137,175572,175595,162702,175459,175455,175462,175453,174714,175623,164900,175622,166160,175466,175448,174710,175470,162704,175590,175458,175456,166048,175467,174045));
UPDATE `creature_template_scaling` SET `ContentTuningID`=178, `VerifiedBuild`=46741 WHERE (`DifficultyID`=0 AND `Entry` IN (2630,12922));
UPDATE `creature_template_scaling` SET `LevelScalingDeltaMin`=-2, `LevelScalingDeltaMax`=-2, `VerifiedBuild`=46741 WHERE (`Entry`=66876 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `LevelScalingDeltaMin`=-4, `LevelScalingDeltaMax`=-4, `VerifiedBuild`=46741 WHERE (`Entry`=108180 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `LevelScalingDeltaMax`=-3, `VerifiedBuild`=46741 WHERE (`Entry`=14496 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `LevelScalingDeltaMax`=-2, `VerifiedBuild`=46741 WHERE (`Entry`=53626 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `LevelScalingDeltaMin`=0, `LevelScalingDeltaMax`=0, `VerifiedBuild`=46741 WHERE (`Entry`=19269 AND `DifficultyID`=0);

DELETE FROM `creature_model_info` WHERE `DisplayID` IN (110154, 110153, 110178, 109492, 110176, 109706, 107015, 109484, 109485, 110214, 110229, 108869, 108780, 109964);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(110154, 0.722000002861022949, 2, 0, 46741),
(110153, 0.208000004291534423, 1.5, 0, 46741),
(110178, 0.722000002861022949, 2, 0, 46741),
(109492, 0.305999994277954101, 1.5, 0, 46741),
(110176, 0.722000002861022949, 2, 0, 46741),
(109706, 0.347000002861022949, 1.5, 0, 46741),
(107015, 0.312299996614456176, 1.349999904632568359, 0, 46741),
(109484, 0.208000004291534423, 1.5, 0, 46741),
(109485, 0.305999994277954101, 1.5, 0, 46741),
(110214, 0.372000008821487426, 1.5, 0, 46741),
(110229, 0.347222000360488891, 1.5, 0, 46741),
(108869, 0.698000013828277587, 3, 0, 46741),
(108780, 0.305999994277954101, 1.5, 0, 46741),
(109964, 1.340504646301269531, 0.550000011920928955, 0, 46741);

UPDATE `creature_model_info` SET `VerifiedBuild`=46741 WHERE `DisplayID` IN (54576, 56720, 56608, 60225, 54575, 86435, 54761, 54759, 58670, 58673, 58672, 58758, 57410, 57412, 57413, 35803, 43199, 56743, 54760, 54758, 56744, 59103, 56742, 59101, 52028, 25204, 24992, 59707, 4588, 53438, 57853, 57870, 57854, 57869, 33663, 59618, 56977, 59619, 56765, 59620, 59808, 55047, 56548, 57166, 57781, 57046, 57165, 57168, 59613, 57780, 59616, 57167, 59614, 59615, 54659, 53357, 56799, 52528, 55046, 56881, 56794, 56779, 56772, 56929, 56791, 56789, 56787, 56785, 56782, 56928, 29405, 56783, 56880, 56796, 56780, 56776, 52540, 56792, 56781, 56773, 56802, 56774, 56882, 56800, 56833, 56883, 56879, 56793, 56777, 56784, 56771, 56925, 56826, 56778, 36185, 56926, 56798, 61871, 50650, 53057, 52434, 53997, 54363, 53682, 56801, 54646, 54647, 2743, 54639, 16882, 20923, 6730, 6728, 6729, 6727, 57262, 53155, 53356, 80387, 23767, 53355, 53182, 53183, 40344, 53055, 53053, 53040, 6711, 56162, 53989, 53226, 53051, 53049, 53047, 53681, 56418, 53041, 53201, 53374, 53048, 53156, 53042, 40345, 53046, 53514, 40342, 53680, 58494, 53699, 53223, 40343, 58186, 90356, 89772, 89771, 89933, 26069, 25375, 3010, 25777, 26067, 89785, 99421, 89786, 1491, 89932, 5073, 99430, 3292, 89931, 90342, 90341, 1484, 1480, 37874, 89930, 17241, 18297, 90331, 90104, 89777, 18930, 90197, 16910, 67053, 90201, 90209, 90206, 58785, 90208, 5076, 2968, 90207, 19803, 99420, 89885, 56857, 58478, 99415, 87530, 46209, 1494, 99416, 19619, 59145, 57081, 2181, 99381, 3295, 93520, 93516, 87578, 54859, 93617, 37850, 1694, 99383, 99425, 3298, 99417, 99424, 27261, 3444, 1489, 3445, 99379, 99423, 99422, 32928, 1432, 1502, 5081, 99193, 1431, 5567, 1443, 5545, 1433, 14492, 71826, 99418, 1473, 5080, 1472, 5444, 99186, 99185, 1486, 1477, 99187, 106441, 10591, 36957, 25901, 99498, 7991, 15594, 7992, 99497, 5551, 1445, 1439, 1438, 99496, 3285, 1423, 99615, 1447, 1427, 5552, 33948, 1446, 34070, 80, 87182, 102298, 1519, 1509, 99196, 99197, 1524, 1498, 1500, 36786, 1544, 36790, 14500, 28507, 5448, 58003, 85210, 88674, 5549, 5586, 344, 262, 338, 38421, 8632, 38626, 19091, 18054, 10131, 1357, 99401, 19670, 39184, 45881, 38422, 99164, 18055, 99399, 38686, 2363, 40027, 38688, 38685, 38683, 38596, 38684, 1141, 5570, 3308, 3313, 3310, 37311, 10477, 99390, 719, 3309, 5043, 104846, 6844, 104843, 46544, 26450, 33839, 33838, 3311, 3306, 19598, 99392, 3307, 4997, 1418, 33740, 2176, 34396, 99393, 48989, 106457, 8795, 8793, 33497, 5378, 33527, 4998, 33496, 33495, 33494, 99395, 6007, 36597, 33529, 33528, 3314, 99394, 3315, 33523, 14375, 99396, 99398, 19177, 99397, 19178, 14493, 1659, 81303, 29961, 19732, 81304, 37310, 60711, 5131, 41667, 68845, 83229, 93416, 93411, 81533, 83233, 93415, 93408, 5446, 98008, 82874, 93413, 3167, 82928, 99391, 46929, 82897, 82918, 18890, 257, 221, 72186, 4626, 18889, 99389, 8804, 2834, 21826, 8805, 87912, 85249, 8181, 82281, 105311, 8684, 8675, 8799, 88363, 69941, 8803, 8683, 8682, 80349, 8674, 8798, 85691, 8678, 8673, 8652, 87992, 8676, 8680, 87993, 8806, 8681, 8289, 8679, 3258, 42906, 328, 134, 6297, 6295, 1006, 1924, 33162, 33161, 389, 21774, 23513, 2327, 207, 99819, 1372, 99822, 14499, 20545, 22769, 33303, 38047, 7136, 10472, 99818, 99814, 38418, 99815, 14616, 110184, 99807, 39809, 1381, 38800, 42386, 48091, 48650, 22746, 22744, 22745, 22743, 22740, 22739, 34108, 34107, 57090, 24806, 26749, 35545, 35544, 33191, 35538, 93574, 33194, 34340, 35244, 99821, 1368, 10578, 99820, 94494, 100150, 10589, 100158, 100157, 34932, 1366, 99810, 99823, 38631, 91667, 14589, 87513, 83227, 32938, 99138, 99139, 34551, 34556, 34555, 72174, 37795, 100500, 34841, 34558, 34569, 34568, 34567, 34693, 86688, 34842, 32936, 34421, 34557, 34593, 32997, 27164, 99374, 37725, 37723, 29968, 32790, 93431, 39637, 22602, 32937, 93436, 93419, 12677, 12675, 12671, 34561, 93434, 93425, 93418, 25871, 99513, 35250, 19217, 34694, 36169, 18269, 34843, 35249, 36170, 12679, 12676, 98009, 82803, 24877, 34566, 34562, 14415, 90300, 16697, 28118, 28120, 90319, 90312, 90314, 90253, 35052, 12673, 12672, 28300, 66245, 14612, 14414, 19183, 19184, 34113, 99429, 34110, 99428, 34114, 15322, 22750, 29369, 29368, 9391, 29375, 29370, 29366, 29371, 29367, 108961, 1393, 4386, 35237, 99808, 1390, 1394, 35242, 6839, 99809, 35241, 4368, 62532, 64259, 12229, 30501, 34046, 901, 71669, 72816, 64332, 2954, 99403, 33699, 9392, 64307, 81476, 34045, 99426, 34059, 8572, 2141, 99461, 99454, 34049, 34047, 61027, 61026, 12680, 25955, 12678, 101484, 4546, 51098, 1334, 70069, 8848, 35051, 4382, 35053, 1319, 35133, 99449, 4545, 4449, 99455, 1330, 99457, 99459, 110183, 87564, 15471, 5705, 1327, 29396, 62531, 15470, 99460, 1328, 10186, 44816, 34184, 24164, 110191, 31760, 1311, 37020, 17721, 17701, 17699, 17700, 37437, 17722, 17719, 17720, 20366, 30413, 34185, 33701, 99456, 33698, 1329, 86393, 35499, 35500, 99458, 42389, 19185, 19186, 33700, 99811, 81857, 42562, 32981, 37864, 14732, 31988, 110187, 110138, 35695, 1323, 1314, 40012, 21264, 16850, 34406, 89418, 35140, 35141, 89419, 7117, 37724, 29569, 36559, 73093, 79383, 109709, 88594, 4514, 304, 34412, 7118, 82115, 37138, 8000, 9133, 24982, 34157, 34156, 34155, 34154, 22493, 1312, 1392, 8971, 3128, 19181, 35148, 1358, 19182, 106383, 106345, 106382, 8001, 36615, 31737, 49781, 99507, 27686, 22873, 27687, 27685, 4602, 27684, 90313, 90316, 90321, 90255, 32173, 46126, 90302, 1320, 15237, 34143, 34141, 99462, 31738, 1318, 15467, 1310, 14413, 36583, 34136, 34144, 34139, 3609, 3608, 3606, 36584, 4259, 5706, 7137, 3605, 3604, 5205, 61024, 99451, 51613, 1313, 61023, 4260, 42385, 99453, 99452, 4356, 4601, 36585, 21072, 21342, 90245, 86333, 90244, 86332, 83764, 37023, 82773, 16235, 90246, 20985, 10732, 92464, 35504, 16238, 90133, 90366, 20988, 90242, 35498, 92463, 89937, 89935, 25423, 75972, 90243, 90129, 90130, 25436, 75973, 70992, 37328, 37331, 37330, 37329, 3027, 4515, 240, 46132, 4192, 4190, 4193, 2732, 108870, 109493, 108798, 99812, 106349, 106352, 4191, 91243, 91373, 77406, 104845, 93309, 92324, 92325, 105169, 110304, 63703, 30272, 7511, 103903, 1132, 63690, 110387, 15468, 110307, 36598, 108862, 102033, 110166, 42722, 32170, 42720, 104821, 102031, 72325, 1560, 104844, 77405, 18164, 108868, 108885, 193, 67345, 17122, 108876, 32171, 46940, 105247, 77407, 32172, 110272, 27823, 32529, 999, 93162, 94961, 95732, 97945, 97956, 65130, 96508, 99676, 11686, 93215, 95622, 97692, 97958, 98014, 94498, 97947, 97953, 95735, 95348, 97693, 95720, 68067, 97957, 94910, 92399, 95535, 93223, 99938, 95536, 96830, 95347, 97955, 99993, 99998, 94442, 93768, 99976, 97690, 94443, 94844, 94444, 97948, 97696, 100000, 99992, 96159, 97951, 94766, 93169, 97691, 97946, 94765, 99670, 99056, 100716, 93210, 100715, 93815, 94447, 97949, 99162, 99679, 92704, 94500, 99672, 98189, 94183, 94501);
UPDATE `creature_model_info` SET `BoundingRadius`=1, `VerifiedBuild`=46741 WHERE `DisplayID`=46201;
UPDATE `creature_model_info` SET `BoundingRadius`=0.105000004172325134, `CombatReach`=0.450000017881393432, `VerifiedBuild`=46741 WHERE `DisplayID`=38776;
UPDATE `creature_model_info` SET `BoundingRadius`=0.60000002384185791, `VerifiedBuild`=46741 WHERE `DisplayID`=76046;
UPDATE `creature_model_info` SET `BoundingRadius`=0.681569099426269531, `CombatReach`=1.399999976158142089, `VerifiedBuild`=46741 WHERE `DisplayID`=913;
UPDATE `creature_model_info` SET `BoundingRadius`=1.25, `CombatReach`=1.25, `VerifiedBuild`=46741 WHERE `DisplayID`=74513;
UPDATE `creature_model_info` SET `BoundingRadius`=0.221895694732666015, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46741 WHERE `DisplayID`=72183;
UPDATE `creature_model_info` SET `BoundingRadius`=1.195951819419860839, `CombatReach`=2.1875, `VerifiedBuild`=46741 WHERE `DisplayID`=60363;
UPDATE `creature_model_info` SET `BoundingRadius`=0.347000002861022949, `CombatReach`=1.5, `VerifiedBuild`=46741 WHERE `DisplayID`=82772;
UPDATE `creature_model_info` SET `DisplayID_Other_Gender`=0, `VerifiedBuild`=46741 WHERE `DisplayID`=8801;
UPDATE `creature_model_info` SET `BoundingRadius`=0.503912866115570068, `CombatReach`=1.60000002384185791, `VerifiedBuild`=46741 WHERE `DisplayID`=8180;
UPDATE `creature_model_info` SET `BoundingRadius`=1, `CombatReach`=2, `VerifiedBuild`=46741 WHERE `DisplayID`=1070;
UPDATE `creature_model_info` SET `BoundingRadius`=0.399049997329711914, `CombatReach`=1.724999904632568359, `VerifiedBuild`=46741 WHERE `DisplayID`=100611;
UPDATE `creature_model_info` SET `BoundingRadius`=0.545473396778106689, `CombatReach`=0.818644046783447265, `VerifiedBuild`=46741 WHERE `DisplayID`=77397;
UPDATE `creature_model_info` SET `BoundingRadius`=1.386821508407592773, `CombatReach`=1.372881412506103515, `VerifiedBuild`=46741 WHERE `DisplayID`=105009;
UPDATE `creature_model_info` SET `BoundingRadius`=0.797087371349334716, `CombatReach`=1, `VerifiedBuild`=46741 WHERE `DisplayID`=98203;


UPDATE `creature_template_spell` SET `VerifiedBuild`=46741 WHERE (`CreatureID`=165189 AND `Index` IN (7,6,1,0)) OR (`CreatureID`=26125 AND `Index` IN (7,6,5,4,3,2,1,0));


UPDATE `trainer` SET `VerifiedBuild`=46741 WHERE `Id` IN (386, 580);


UPDATE `trainer_spell` SET `MoneyCost`=50000000, `VerifiedBuild`=46741 WHERE (`TrainerId`=386 AND `SpellId`=90266); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=10000, `VerifiedBuild`=46741 WHERE (`TrainerId`=386 AND `SpellId`=33389); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=500000, `VerifiedBuild`=46741 WHERE (`TrainerId`=386 AND `SpellId`=33392); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=2500000, `VerifiedBuild`=46741 WHERE (`TrainerId`=386 AND `SpellId`=34092); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `VerifiedBuild`=46741 WHERE (`TrainerId`=580 AND `SpellId` IN (36027,125610));

DELETE FROM `creature_trainer` WHERE (`CreatureID`=63626 AND `MenuID`=14991 AND `OptionID`=41206);
INSERT INTO `creature_trainer` (`CreatureID`, `TrainerID`, `MenuID`, `OptionID`) VALUES
(63626, 580, 14991, 41206);


UPDATE `gossip_menu` SET `VerifiedBuild`=46741 WHERE (`MenuID`=16433 AND `TextID`=23824) OR (`MenuID`=16863 AND `TextID`=24524) OR (`MenuID`=23796 AND `TextID`=37252) OR (`MenuID`=4342 AND `TextID`=5516) OR (`MenuID`=12240 AND `TextID`=17194) OR (`MenuID`=20009 AND `TextID`=29733) OR (`MenuID`=14991 AND `TextID`=20326) OR (`MenuID`=12520 AND `TextID`=17608) OR (`MenuID`=13390 AND `TextID`=19019) OR (`MenuID`=16319 AND `TextID`=24248) OR (`MenuID`=12040 AND `TextID`=3302) OR (`MenuID`=1951 AND `TextID`=2593) OR (`MenuID`=23767 AND `TextID`=37146);
DELETE FROM `gossip_menu_option` WHERE (`MenuID`=23796 AND `OptionID`=0);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(23796, 0, 0, 'I must help Khadgar. Send me to the Blasted Lands!', 168994, 0, 0, 0, 0, 0, NULL, 0, 46741); -- OptionBroadcastTextID: 168994 - 168994

UPDATE `gossip_menu_option` SET `ActionMenuID`=0, `ActionPoiID`=0, `BoxMoney`=0, `VerifiedBuild`=46741 WHERE (`MenuID`=1951 AND `OptionID`=0); -- OptionBroadcastTextID: 67342 - 67342
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2822, `ActionMenuID`=0, `BoxMoney`=0, `VerifiedBuild`=46741 WHERE (`MenuID`=12040 AND `OptionID`=0); -- OptionBroadcastTextID: 2822 - 2822 - 162070 - 162070
UPDATE `gossip_menu_option` SET `VerifiedBuild`=46741 WHERE (`OptionID`=0 AND `MenuID` IN (16863,16641,14991,25426)) OR (`OptionID`=1 AND `MenuID`=14991);
UPDATE `gossip_menu_option` SET `ActionMenuID`=0, `ActionPoiID`=0, `BoxMoney`=0, `VerifiedBuild`=46741 WHERE (`MenuID`=1951 AND `OptionID`=15); -- OptionBroadcastTextID: 8508 - 8508 - 8511 - 8511 - 8518 - 8518 - 8524 - 8524 - 8525 - 8525 - 8529 - 8529 - 8534 - 8534 - 8536 - 8536 - 8539 - 8539 - 8542 - 8542 - 15228 - 15228 - 19208 - 19208 - 45383 - 45383 - 200263 - 200263
UPDATE `gossip_menu_option` SET `ActionMenuID`=0, `BoxMoney`=0, `VerifiedBuild`=46741 WHERE (`MenuID`=1951 AND `OptionID`=8); -- OptionBroadcastTextID: 2868 - 2868 - 3429 - 3429 - 4891 - 4891 - 5088 - 5088 - 5360 - 5360 - 5915 - 5915 - 6634 - 6634 - 6911 - 6911 - 6999 - 6999 - 7078 - 7078 - 15234 - 15234 - 32202 - 32202 - 45378 - 45378
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=15232, `ActionMenuID`=0, `ActionPoiID`=0, `BoxMoney`=0, `VerifiedBuild`=46741 WHERE (`MenuID`=1951 AND `OptionID`=7); -- OptionBroadcastTextID: 15232 - 15232 - 32197 - 32197 - 45377 - 45377
UPDATE `gossip_menu_option` SET `ActionMenuID`=0, `BoxMoney`=0, `VerifiedBuild`=46741 WHERE (`MenuID`=1951 AND `OptionID`=16); -- OptionBroadcastTextID: 5518 - 5518
UPDATE `gossip_menu_option` SET `ActionMenuID`=0, `BoxMoney`=0, `VerifiedBuild`=46741 WHERE (`MenuID`=1951 AND `OptionID`=11); -- OptionBroadcastTextID: 5513 - 5513 - 5911 - 5911 - 6396 - 6396 - 6633 - 6633 - 6910 - 6910 - 15224 - 15224 - 19202 - 19202 - 32166 - 32166 - 44629 - 44629 - 200258 - 200258
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=3426, `ActionMenuID`=0, `BoxMoney`=0, `VerifiedBuild`=46741 WHERE (`MenuID`=1951 AND `OptionID`=5); -- OptionBroadcastTextID: 3426 - 3426 - 5908 - 5908 - 6631 - 6631 - 6907 - 6907 - 6987 - 6987 - 15214 - 15214 - 19201 - 19201 - 32167 - 32167 - 44628 - 44628 - 78584 - 78584 - 200249 - 200249
UPDATE `gossip_menu_option` SET `ActionMenuID`=0, `ActionPoiID`=0, `BoxMoney`=0, `VerifiedBuild`=46741 WHERE (`MenuID`=1951 AND `OptionID`=2); -- OptionBroadcastTextID: 56155 - 56155 - 200247 - 200247
UPDATE `gossip_menu_option` SET `ActionMenuID`=0, `ActionPoiID`=0, `BoxMoney`=0, `VerifiedBuild`=46741 WHERE (`MenuID`=1951 AND `OptionID`=3); -- OptionBroadcastTextID: 53080 - 53080
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=31340, `ActionMenuID`=0, `ActionPoiID`=0, `BoxMoney`=0, `VerifiedBuild`=46741 WHERE (`MenuID`=1951 AND `OptionID`=6); -- OptionBroadcastTextID: 31340 - 31340 - 45376 - 45376
UPDATE `gossip_menu_option` SET `ActionMenuID`=0, `BoxMoney`=0, `VerifiedBuild`=46741 WHERE (`MenuID`=1951 AND `OptionID`=13); -- OptionBroadcastTextID: 5914 - 5914 - 47507 - 47507 - 129194 - 129194 - 129224 - 129224 - 129235 - 129235 - 129362 - 129362 - 129389 - 129389
UPDATE `gossip_menu_option` SET `ActionMenuID`=0, `ActionPoiID`=0, `BoxMoney`=0, `VerifiedBuild`=46741 WHERE (`MenuID`=1951 AND `OptionID`=10); -- OptionBroadcastTextID: 2870 - 2870 - 3428 - 3428 - 4890 - 4890 - 5086 - 5086 - 5332 - 5332 - 5910 - 5910 - 6909 - 6909 - 6993 - 6993 - 15222 - 15222 - 32189 - 32189 - 45380 - 45380
UPDATE `gossip_menu_option` SET `OptionText`='I need a ride.', `OptionBroadcastTextId`=3409, `VerifiedBuild`=46741 WHERE (`MenuID`=4342 AND `OptionID`=0); -- OptionBroadcastTextID: 3409 - 3409
UPDATE `gossip_menu_option` SET `ActionMenuID`=0, `BoxMoney`=0, `VerifiedBuild`=46741 WHERE (`MenuID`=1951 AND `OptionID`=14); -- OptionBroadcastTextID: 2869 - 2869 - 3430 - 3430 - 4896 - 4896 - 5112 - 5112 - 5352 - 5352 - 5916 - 5916 - 6635 - 6635 - 6912 - 6912 - 7022 - 7022 - 7095 - 7095 - 15250 - 15250 - 19210 - 19210 - 45382 - 45382
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=56949, `VerifiedBuild`=46741 WHERE (`MenuID`=13390 AND `OptionID`=0); -- OptionBroadcastTextID: 56949 - 56949
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=5316, `ActionMenuID`=0, `BoxMoney`=0, `VerifiedBuild`=46741 WHERE (`MenuID`=1951 AND `OptionID`=4); -- OptionBroadcastTextID: 5316 - 5316 - 5423 - 5423 - 5515 - 5515 - 5913 - 5913 - 6369 - 6369 - 15208 - 15208 - 32174 - 32174 - 44627 - 44627
UPDATE `gossip_menu_option` SET `ActionMenuID`=0, `ActionPoiID`=0, `BoxMoney`=0, `VerifiedBuild`=46741 WHERE (`MenuID`=1951 AND `OptionID`=9); -- OptionBroadcastTextID: 2863 - 2863 - 4889 - 4889 - 6632 - 6632 - 19203 - 19203 - 45379 - 45379 - 200256 - 200256
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2823, `VerifiedBuild`=46741 WHERE (`MenuID`=12040 AND `OptionID`=1); -- OptionBroadcastTextID: 2823 - 2823 - 7509 - 7509 - 8097 - 8097
UPDATE `gossip_menu_option` SET `ActionMenuID`=0, `ActionPoiID`=0, `BoxMoney`=0, `VerifiedBuild`=46741 WHERE (`MenuID`=1951 AND `OptionID`=12); -- OptionBroadcastTextID: 9749 - 9749

DELETE FROM `creature_template` WHERE `entry` IN (198506 /*Krenzen*/, 198509 /*Berkeley*/, 198505 /*Blue*/, 198533 /*Nazurathar*/, 197287 /*Annywn Dynaspark*/, 198532 /*Zhakloskar*/, 197762 /*Lord Krazore*/, 198383 /*Dracthyr Smith*/, 189767 /*Thaelin Darkanvil*/, 197253 /*"Lefty" Lucy*/, 197269 /*Toy Tank*/, 197267 /*Riley Tidy*/, 198236 /*Divine Image*/);
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(198506, 0, 60, 60, 1732, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Krenzen
(198509, 0, 1, 1, 35, 16777216, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Berkeley
(198505, 0, 60, 60, 1732, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Blue
(198533, 0, 60, 60, 3340, 1, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Nazurathar
(197287, 0, 60, 60, 64, 0, 1, 1.142857193946838378, 2000, 0, 768, 2048, 0, 0, 0, 1), -- Annywn Dynaspark
(198532, 0, 60, 60, 3340, 1, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Zhakloskar
(197762, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Lord Krazore
(198383, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Dracthyr Smith
(189767, 0, 62, 62, 3270, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Thaelin Darkanvil
(197253, 0, 60, 60, 12, 0, 1, 1.142857193946838378, 2000, 0, 768, 2048, 0, 0, 0, 1), -- "Lefty" Lucy
(197269, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 335546368, 32768, 0, 0, 1), -- Toy Tank
(197267, 0, 60, 60, 12, 0, 1, 1.142857193946838378, 2000, 0, 768, 2048, 0, 0, 0, 1), -- Riley Tidy
(198236, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 1809, 0, 33554432, 2048, 1, 0, 0, 1); -- Divine Image


DELETE FROM `quest_template` WHERE `ID`=65436;
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestPackageID`, `ContentTuningID`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitGiverModelSceneID`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `QuestSessionBonus`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(65436, 2, 0, 2573, 13642, 0, 0, 66577, 1, 1, 1, 1, 7750, 0, 0, 0, 0, 0, 1, 0, 38273024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 2971683917, 0, 0, 0, 0, 'The Dragon Isles Await', 'Meet Wrathion in Stormwind.', 'Wondrous news, my friend! The Dragon Isles are awakening!\n\nMy people left our lands dormant in the wake of the Sundering. But now, at long last, we feel the call to home.\n\nWhile the Isles hold many wonders, there are perils as well. We will require the aid of our mortal allies in order to reclaim our legacy.\n\nMeet me in Stormwind. I must present the Aspects\' invitation to the Alliance.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46741); -- -Unknown-


UPDATE `quest_template` SET `RewardBonusMoney`=960, `VerifiedBuild`=46741 WHERE `ID`=34423; -- Altar Altercation
UPDATE `quest_template` SET `RewardBonusMoney`=960, `VerifiedBuild`=46741 WHERE `ID`=35242; -- Vengeance for the Fallen
UPDATE `quest_template` SET `RewardBonusMoney`=960, `VerifiedBuild`=46741 WHERE `ID`=35240; -- Bled Dry
UPDATE `quest_template` SET `VerifiedBuild`=46741 WHERE `ID` IN (34422, 34420, 34393, 34392, 35933, 56775, 43806, 40519, 53500, 51486, 26965, 28096, 64015, 57443, 61136, 61125, 62286, 62288, 60991, 61346, 49091, 53264, 63543, 62235, 64854, 60244, 52930, 62209, 63044, 65265, 48982, 64273, 65411, 66619, 60992, 60990, 58993, 61728, 62210, 61140, 59230, 58918, 61124, 62539, 61565, 61539, 49197, 60254, 65117, 53252, 65234, 59183, 62211, 59441, 63937, 49096, 51670, 53963, 51626, 51839, 55215, 51905, 52157, 52871, 51156, 51105, 51412, 55342, 55303, 52884, 12522, 24720, 34774, 28460, 28148, 25152, 59926, 53831, 53870, 53466, 25170, 29611, 26293, 25924, 13618, 871, 25236, 44543, 44701, 62704, 55851, 54164, 56120, 50602, 50598, 60391, 60442, 60430, 69925, 66586, 66042, 58084, 60929, 60911, 60872, 60770, 60654, 60565, 60574, 60475, 59808, 58207, 60623, 60534, 59836, 63958, 64101, 63780, 59585, 61060, 60657, 61540, 61949, 61883, 61867, 61787, 58975, 61352, 66696, 66618, 66615, 60389, 60444, 60431, 46736, 46735, 46277, 63949, 63051, 62635, 61981, 60500, 57249, 43341);
UPDATE `quest_template` SET `RewardBonusMoney`=840, `VerifiedBuild`=46741 WHERE `ID`=26688; -- Worgen in the Woods
UPDATE `quest_template` SET `RewardBonusMoney`=90, `Flags`=37748736, `FlagsEx`=0, `VerifiedBuild`=46741 WHERE `ID`=60545; -- Shadowlands: A Chilling Summons
UPDATE `quest_template` SET `RewardBonusMoney`=90, `VerifiedBuild`=46741 WHERE `ID`=46727; -- Battle for Azeroth: Tides of War
UPDATE `quest_template` SET `RewardBonusMoney`=90, `VerifiedBuild`=46741 WHERE `ID`=29547; -- The King's Command
UPDATE `quest_template` SET `RewardBonusMoney`=840, `VerifiedBuild`=46741 WHERE `ID`=26209; -- Murder Was The Case That They Gave Me
UPDATE `quest_template` SET `RewardBonusMoney`=840, `Expansion`=8, `VerifiedBuild`=46741 WHERE `ID`=31316; -- Julia, The Pet Tamer
UPDATE `quest_template` SET `RewardBonusMoney`=90, `VerifiedBuild`=46741 WHERE `ID`=42978; -- A Royal Audience
UPDATE `quest_template` SET `RewardBonusMoney`=90, `VerifiedBuild`=46741 WHERE `ID`=44700; -- Stormheim
UPDATE `quest_template` SET `RewardBonusMoney`=420, `VerifiedBuild`=46741 WHERE `ID`=34398; -- Warlords of Draenor: The Dark Portal
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46741 WHERE `ID`=147; -- Manhunt
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46741 WHERE `ID`=76; -- The Jasperlode Mine
UPDATE `quest_template` SET `RewardBonusMoney`=150, `VerifiedBuild`=46741 WHERE `ID`=37; -- Find the Lost Guards
UPDATE `quest_template` SET `Flags`=8, `VerifiedBuild`=46741 WHERE `ID`=27367; -- Gidwin Goldbraids
UPDATE `quest_template` SET `RewardBonusMoney`=4200, `VerifiedBuild`=46741 WHERE `ID`=44414; -- Felspawns of Lothros
UPDATE `quest_template` SET `RewardFactionOverride2`=7500, `VerifiedBuild`=46741 WHERE `ID`=59017; -- Call to Arms: Vale of Eternal Blossoms
UPDATE `quest_template` SET `RewardFactionOverride2`=7500, `VerifiedBuild`=46741 WHERE `ID`=52957; -- Call to Arms: Stormsong Valley
UPDATE `quest_template` SET `RewardSpell`=207606, `VerifiedBuild`=46741 WHERE `ID`=41161; -- Out of the Frying Pan
UPDATE `quest_template` SET `RewardBonusMoney`=3150, `VerifiedBuild`=46741 WHERE `ID`=45840; -- Assault on Highmountain
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=61075; -- A Spark of Light
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=51431; -- Soul Goliath
UPDATE `quest_template` SET `RewardSpell`=271180, `VerifiedBuild`=46741 WHERE `ID`=51618; -- Azerite Madness
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=51646; -- Polly Want A Cracker?
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=51746; -- The Shadows of Corlain
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=51774; -- Ragna
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=51779; -- Grimscowl the Hairbrained
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=51832; -- Beat Around The Bush
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=51884; -- Haywire Golem
UPDATE `quest_template` SET `RewardSpell`=282105, `VerifiedBuild`=46741 WHERE `ID` IN (52874, 50975); -- Azerite Mining
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=51970; -- The Caterer
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=52117; -- Briarback Mountain
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=51462; -- Paratroopers
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=52471; -- That's a Big Carcass
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=52280; -- Sea Salt Flavored
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=52218; -- Night Horrors
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=51123; -- Sirokar
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=51316; -- Walking in a Spiderweb
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=51315; -- Wild Flutterbies
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=51174; -- Instructions Not Included
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=50957; -- Wrath of Rezan
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=50867; -- Tambano
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=50676; -- River Toll
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=50648; -- Bubbles and Trouble
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=50545; -- Forked Lightning
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=50514; -- Totem Maker Jash'ga
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=50496; -- Glompmaw
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=50468; -- Shul-Nagruth
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=52237; -- The Underrot: Restless Horror
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `RewardFactionOverride2`=7500, `VerifiedBuild`=46741 WHERE `ID`=51038; -- Supplies Needed: Akunda's Bite
UPDATE `quest_template` SET `RewardSpell`=271586, `VerifiedBuild`=46741 WHERE `ID`=51635; -- Make Loh Go
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=50964; -- Ritual Combat
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=52938; -- Small Beginnings
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=52419; -- Work Order: Coarse Leather Barding
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=51013; -- Work Order: Mistscale
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=51496; -- Loa Your Standards
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=52754; -- Marshdwellers
UPDATE `quest_template` SET `RewardBonusMoney`=8350, `VerifiedBuild`=46741 WHERE `ID`=42431; -- The Brood of Nithogg
UPDATE `quest_template` SET `RewardBonusMoney`=8350, `VerifiedBuild`=46741 WHERE `ID`=43241; -- Flow of the Nightmare
UPDATE `quest_template` SET `RewardBonusMoney`=8350, `VerifiedBuild`=46741 WHERE `ID`=38842; -- Faerie Fracas
UPDATE `quest_template` SET `RewardBonusMoney`=8350, `VerifiedBuild`=46741 WHERE `ID`=40316; -- The Screeching Crag
UPDATE `quest_template` SET `RewardBonusMoney`=8350, `VerifiedBuild`=46741 WHERE `ID`=39371; -- Witches of the Sky
UPDATE `quest_template` SET `RewardBonusMoney`=8350, `VerifiedBuild`=46741 WHERE `ID`=40050; -- Shipwreck Cove
UPDATE `quest_template` SET `RewardBonusMoney`=8350, `VerifiedBuild`=46741 WHERE `ID`=37779; -- Tip the Scales
UPDATE `quest_template` SET `RewardBonusMoney`=8350, `VerifiedBuild`=46741 WHERE `ID`=37965; -- A Tainted Vintage
UPDATE `quest_template` SET `RewardBonusMoney`=8350, `VerifiedBuild`=46741 WHERE `ID`=40111; -- Rout the Bilgefin Invaders
UPDATE `quest_template` SET `RewardBonusMoney`=8350, `VerifiedBuild`=46741 WHERE `ID`=37466; -- The Broken Academy
UPDATE `quest_template` SET `RewardBonusMoney`=3250, `VerifiedBuild`=46741 WHERE `ID`=27003; -- Easy Money
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46741 WHERE `ID`=25487; -- The Grimtotem are Coming
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46741 WHERE `ID`=24906; -- Seaside Salvage
UPDATE `quest_template` SET `Expansion`=8, `VerifiedBuild`=46741 WHERE `ID`=31588; -- Learning the Ropes
UPDATE `quest_template` SET `ContentTuningID`=825, `RewardBonusMoney`=1260, `Expansion`=0, `VerifiedBuild`=46741 WHERE `ID`=66323; -- Idling Pie
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46741 WHERE `ID`=14036; -- Pilgrim's Bounty
UPDATE `quest_template` SET `RewardBonusMoney`=825, `VerifiedBuild`=46741 WHERE `ID`=25317; -- Protect the World Tree
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=54467; -- Legacy in Ruins
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=54648; -- Kaldorei Resurgence
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=54797; -- Alash'anir
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=54806; -- Commander Ral'esh
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=54808; -- Thelar Moonstrike
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=54896; -- Ivus the Forest Lord
UPDATE `quest_template` SET `RewardFactionOverride2`=15000, `VerifiedBuild`=46741 WHERE `ID`=53435; -- Azerite for the Horde
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46741 WHERE `ID`=63031; -- Acquisition: Crystallized Stygia
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46741 WHERE `ID`=57880; -- An Estate Within the Old Gate
UPDATE `quest_template` SET `RewardFactionOverride2`=15000, `VerifiedBuild`=46741 WHERE `ID`=53436; -- Azerite for the Alliance
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46741 WHERE `ID`=49929; -- The Call for Allies
UPDATE `quest_template` SET `Expansion`=8, `VerifiedBuild`=46741 WHERE `ID`=45563; -- The Shrouded Coin
UPDATE `quest_template` SET `RewardBonusMoney`=525, `VerifiedBuild`=46741 WHERE `ID`=42449; -- Return of the Four Horsemen
UPDATE `quest_template` SET `RewardBonusMoney`=3700, `VerifiedBuild`=46741 WHERE `ID`=36309; -- The Strength of Iron


UPDATE `quest_objectives` SET `VerifiedBuild`=46741 WHERE `ID` IN (274409, 273678, 273677, 273075, 273645, 273640, 273639, 273635, 273936, 273557, 273556, 273438, 273930, 273946, 272621, 274206, 265976, 405017, 406745, 406744, 391353, 337818, 337817, 259891, 265757, 265756, 265755, 265754, 268521, 285830, 272640, 388379, 341543, 254511, 252154, 266110, 253201, 253200, 253199, 286606, 420804, 392429, 392436, 405249, 405228, 407607, 407611, 405227, 405657, 341015, 419452, 419666, 419665, 419617, 419746, 419447, 419729, 395347, 407513, 408918, 407508, 407507, 407506, 421561, 421560, 421559, 421563, 398057, 340280, 407425, 409050, 422647, 420833, 420832, 420831, 420830, 422887, 427333, 405143, 406321, 395297, 396702, 406588, 407428, 340393, 405251, 396185, 395108, 405226, 407909, 406320, 409135, 409133, 409127, 409126, 409125, 409108, 409124, 409120, 409106, 409105, 409104, 409103, 409102, 409101, 409100, 409099, 409098, 409097, 408128, 408127, 408126, 408125, 408124, 408123, 398062, 422151, 422147, 422149, 289065, 341002, 422450, 396133, 407429, 405172, 396453, 420217, 335866, 341888, 341887, 341886, 341885, 336520, 336519, 336518, 336517, 336516, 336598, 336665, 385303, 385302, 385301, 385300, 385299, 385298, 385297, 341824, 336546, 337014, 337013, 337141, 337151, 337328, 337324, 337320, 337340, 337446, 388898, 388897, 337497, 385409, 385408, 340161, 340160, 340159, 340158, 340157, 340156, 340155, 337627, 338010, 338009, 337840, 335977, 335976, 338184, 340133, 339066, 338616, 338615, 338403, 334881, 334797, 334759, 335762, 335455, 335454, 335391, 335389, 334987, 385381, 385380, 335041, 334608, 334607, 334606, 334591, 334482, 334481, 337884, 334335, 334334, 334129, 333514, 333513, 333447, 333446, 339692, 333036, 332916, 332886, 322737, 389031, 389030, 389004, 389003, 338484, 338483, 341838, 336564, 334376, 340310, 338922, 340210, 336035, 339682, 284209, 284208, 284207, 284206, 284205, 284200, 285469, 285188, 285107, 285106, 285105, 285104, 285103, 285102, 278998, 278519, 278526, 278500, 278499, 280668, 280667, 280666, 280665, 280664, 280663, 280662, 279626, 279301, 279299, 279294, 280303, 280233, 280231, 280229, 280228, 276885, 276884, 276880, 276871, 276869, 276870, 276859, 276858, 286679, 286535, 277272, 277472, 277269, 277243, 277242, 280327, 280326, 280325, 280324, 280323, 277677, 277667, 277606, 277605, 277604, 277603, 276298, 266508, 263436, 265900, 265093, 265092, 265091, 265090, 266996, 268806, 426833, 426832, 426761, 262057, 252186, 397237, 388427, 353017, 265539, 254560, 266797, 254390, 254389, 265482, 286696, 408196, 391637, 386353, 390280, 337022, 336162, 387246, 387245, 387859, 387858, 387857, 387856, 387855, 387854, 387853, 388230, 388283, 388285, 388392, 398408, 398524, 398625, 398624, 398623, 398622, 398621, 398561, 398560, 429459, 429471, 429595, 427064, 423785, 423784, 423783, 423782, 423781, 423780, 423779, 423778, 341368, 393628, 393643, 405027, 405026, 405012, 405011, 404953, 404568, 404567, 404370, 404369, 398896, 398895, 398894, 398893, 398892, 398875, 398876, 398917, 398916, 398341, 398338, 397091, 397051, 397009, 393819, 393820, 396692, 405281, 405280, 405271, 405270, 405269, 399076, 399075, 399074, 399073, 399072, 399071, 405580, 405579, 405578, 405577, 405576, 405575, 405574, 405573, 405572, 405571, 405570, 409116, 397059, 397121, 420275, 420615, 419747, 407664, 396533, 396532, 396528, 405223, 405212, 405210, 405175, 405174, 405173, 405156, 409030, 405171, 406354, 406227, 407943, 406869, 406804, 406765, 406712, 404547, 395236, 409054, 405675, 405674, 427561, 427331, 427325, 398405, 398526, 398635, 398634, 398633, 398632, 398631, 398557, 398556, 289536, 289535, 289167, 421948, 421947, 421946, 421945, 421944, 421943, 421942, 421941, 421940, 421939, 420917, 421394, 420319, 421393, 420374, 420373, 421171, 420320, 420318, 409112, 408089, 406892, 398387, 393260, 341370, 285211, 285210, 285209, 285208, 286697);
UPDATE `quest_objectives` SET `Description`='Defend the bulwark', `VerifiedBuild`=46741 WHERE `ID`=420803; -- 420803
UPDATE `quest_objectives` SET `Description`='Maldraxxi barricade built', `VerifiedBuild`=46741 WHERE `ID`=420801; -- 420801
UPDATE `quest_objectives` SET `Amount`=20, `VerifiedBuild`=46741 WHERE `ID`=334576; -- 334576
UPDATE `quest_objectives` SET `Amount`=20, `VerifiedBuild`=46741 WHERE `ID`=334547; -- 334547


UPDATE `quest_visual_effect` SET `VerifiedBuild`=46741 WHERE (`Index`=0 AND `ID` IN (274409,273678,273075,273640,273639,273936,273557,273556,273438,273946,272621,405017,406745,406744,391353,337818,268521,272640,388379,341543,392429,392436,405249,405228,405227,419452,419729,407507,421561,421560,421559,407425,409050,422647,405143,396702,406588,407428,405251,396185,395108,405226,409135,409133,409108,409124,422149,422450,396133,407429,396453,335866,336516,336598,336546,337013,337320,388898,388897,337627,338010,338009,335976,338184,340133,339066,338403,335762,335391,335389,334334,333514,339692,333036,389030,389004,389003,338484,338483,341838,336564,334376,340310,336035,339682,284200,285188,285107,285106,278998,278526,280668,276858,277472,280323,426833,426832,426761,397237,388427,353017,408196,391637,386353,387246,387853,429471,423779,393628,393643,405027,405026,405012,405011,404567,404369,398896,398895,398894,398893,398892,398875,398876,398341,405281,405280,405271,405270,405269,397059,397121,420275,419747,396532,396528,405156,405171,407943,406869,406804,406765,406712,409054,405675,405674,421171,409112,406892)) OR (`Index`=1 AND `ID` IN (273936,406745,392429,407507,422647,422149,336516,338010,333514,333036,334376,336035,277472,280323,387246,405027,404369,398896,398895,398894,398893,398892,398875,398876,398341,397121,419747,396532,396528,405674)) OR (`Index`=3 AND `ID` IN (392429,422149,336516,333036,334376,280323,405027,398896,398895,398894,398893,398892,398875,398876,398341,419747,396532)) OR (`Index`=2 AND `ID` IN (392429,407507,422149,336516,333036,334376,336035,280323,387246,405027,398896,398895,398894,398893,398892,398875,398876,398341,397121,419747,396532,396528)) OR (`Index`=4 AND `ID` IN (422149,334376,405027,398876,398341,419747)) OR (`Index`=7 AND `ID` IN (334376,398876,419747)) OR (`Index`=6 AND `ID` IN (334376,398876,419747)) OR (`Index`=5 AND `ID` IN (334376,405027,398876,398341,419747)) OR (`Index`=11 AND `ID` IN (398876,419747)) OR (`Index`=10 AND `ID` IN (398876,419747)) OR (`Index`=9 AND `ID` IN (398876,419747)) OR (`Index`=8 AND `ID` IN (398876,419747)) OR (`Index`=14 AND `ID`=419747) OR (`Index`=13 AND `ID`=419747) OR (`Index`=12 AND `ID`=419747);


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=46741 WHERE (`Idx`=0 AND `QuestID` IN (34423,34420,43341));


DELETE FROM `creature_template` WHERE `entry` IN (197253 /*"Lefty" Lucy*/, 197267 /*Riley Tidy*/, 197269 /*Toy Tank*/, 197287 /*Annywn Dynaspark*/, 197762 /*Lord Krazore*/, 198236 /*Divine Image*/, 198383 /*Dracthyr Smith*/, 198505 /*Blue*/, 198506 /*Krenzen*/, 198509 /*Berkeley*/, 198532 /*Zhakloskar*/, 198533 /*Nazurathar*/, 189767 /*Thaelin Darkanvil*/);
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `unit_class`, `WidgetSetID`, `WidgetSetUnitConditionID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `VerifiedBuild`) VALUES
(197253, 0, 0, '\"Lefty\" Lucy', '', NULL, NULL, NULL, 8, 0, 0, 4, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 225585, 46741), -- "Lefty" Lucy
(197267, 0, 0, 'Riley Tidy', '', NULL, NULL, NULL, 8, 0, 0, 4, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 225599, 46741), -- Riley Tidy
(197269, 0, 0, 'Toy Tank', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 12, 0, 0, 1, 1, 0, 0, 225601, 46741), -- Toy Tank
(197287, 0, 0, 'Annywn Dynaspark', '', NULL, NULL, NULL, 8, 0, 0, 4, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 225623, 46741), -- Annywn Dynaspark
(197762, 0, 0, 'Lord Krazore', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226120, 46741), -- Lord Krazore
(198236, 0, 0, 'Divine Image', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 1, 0, 10, 1024, 0, 1, 1, 0, 0, 226608, 46741), -- Divine Image
(198383, 0, 0, 'Dracthyr Smith', '', 'Obsidian Warders', NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226759, 46741), -- Dracthyr Smith
(198505, 0, 0, 'Blue', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 4096, 0, 1, 1, 0, 0, 226884, 46741), -- Blue
(198506, 0, 0, 'Krenzen', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 4096, 0, 1, 1, 0, 0, 226885, 46741), -- Krenzen
(198509, 0, 0, 'Berkeley', '', NULL, NULL, 'openhandglow', 8, 0, 0, 1, 0, 0, 0, 52, 8, 0, 0, 1, 1, 0, 0, 226888, 46741), -- Berkeley
(198532, 0, 0, 'Zhakloskar', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226911, 46741), -- Zhakloskar
(198533, 0, 0, 'Nazurathar', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226912, 46741), -- Nazurathar
(189767, 0, 0, 'Thaelin Darkanvil', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 16384, 3, 1, 0, 0, 216452, 46741); -- Thaelin Darkanvil

UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry` IN (147741, 76110, 76117, 44779, 44780, 44781, 44782, 44783, 44787, 188073, 147785, 161223, 103033, 85142, 76189, 44851, 44852, 85146, 44853, 44854, 44856, 44865, 44866, 44867, 44868, 44871, 44872, 44876, 174710, 44877, 44878, 174714, 116, 80715, 188166, 188167, 62821, 62822, 44918, 44919, 85213, 44948, 103159, 80804, 174863, 174864, 174865, 53991, 277, 54004, 148025, 89830, 197279, 197288, 54026, 304, 305, 188342, 76429, 76436, 331, 338, 76448, 356, 143622, 49622, 31720, 148124, 31723, 31724, 31725, 31726, 31727, 54113, 174994, 54117, 166048, 134711, 63085, 416, 31768, 76556, 175050, 49701, 18363, 18364, 18365, 45230, 18375, 18376, 18377, 18378, 18379, 18380, 4953, 188521, 166137, 54214, 49737, 54215, 148233, 54216, 54217, 54218, 166143, 54219, 49743, 49748, 148242, 49750, 148250, 166160, 148263, 148265, 524, 76648, 76651, 175156, 76673, 45337, 45339, 49837, 40891, 5081, 9564, 188655, 188656, 49871, 27489, 188678, 188679, 656, 121541, 81274, 5188, 108180, 23128, 54472, 85816, 85817, 85818, 85819, 58960, 112686, 112694, 45540, 112698, 45545, 45546, 76886, 45548, 197767, 45549, 197770, 45552, 197771, 45553, 85856, 45563, 45565, 45566, 45567, 157496, 157498, 175408, 161977, 161979, 175416, 175420, 179897, 822, 175441, 50088, 175448, 175449, 175450, 175451, 175452, 175453, 175455, 175456, 175458, 175459, 175462, 144125, 144126, 175466, 144127, 175467, 175469, 175470, 32206, 32207, 144133, 144134, 144135, 45659, 135201, 135202, 144163, 5384, 5386, 72559, 54657, 5413, 193450, 14375, 14376, 14377, 957, 14392, 175572, 126332, 175580, 77090, 175590, 175595, 14438, 5493, 5494, 175620, 14450, 175622, 175623, 14451, 175624, 5499, 175625, 72654, 5500, 5503, 148768, 148770, 5509, 5510, 5511, 5512, 5513, 5514, 95057, 5518, 189075, 5519, 184600, 45814, 148787, 148795, 148796, 50304, 45830, 14496, 14497, 14498, 14499, 14505, 50323, 130911, 5566, 5567, 184650, 180176, 184665, 81695, 81696, 184671, 81711, 5606, 14563, 5609, 5610, 5611, 5613, 5614, 1141, 54870, 5639, 175767, 175772, 81762, 81763, 50424, 32520, 50432, 5694, 95234, 50477, 50488, 23635, 184808, 184809, 184810, 184812, 184813, 37072, 184814, 19175, 19176, 19177, 14720, 1297, 1298, 1299, 1300, 1301, 184858, 32641, 32642, 1307, 1308, 46078, 81895, 1309, 1310, 46080, 1311, 1312, 46082, 1313, 1314, 81901, 1315, 1316, 1317, 1318, 175922, 41621, 55054, 5816, 81926, 5817, 1346, 1347, 1349, 1350, 149099, 19269, 1366, 1367, 46140, 46142, 149121, 149124, 167032, 149131, 5875, 1402, 81990, 1405, 81993, 81994, 81995, 176012, 81996, 46180, 81997, 81998, 81999, 1413, 82000, 1414, 82001, 1415, 82002, 1416, 82003, 82004, 82005, 1419, 82006, 1420, 82007, 82008, 82009, 198411, 1423, 82010, 198412, 158119, 82011, 158120, 82012, 82013, 82014, 1428, 158123, 82015, 1429, 82016, 158125, 82017, 1431, 5909, 5910, 158131, 158133, 82025, 28302, 158138, 1444, 198434, 158141, 14881, 113395, 1472, 5951, 198475, 198476, 82075, 176094, 176095, 82082, 5983, 198497, 5990, 149258, 73151, 189554, 149270, 162702, 162704, 77643, 149279, 77653, 149290, 198538, 198541, 198542, 149296, 149297, 198553, 198557, 46357, 46358, 46359, 82187, 82188, 82189, 82191, 180701, 149371, 1646, 1649, 149404, 149408, 149409, 82259, 82260, 140462, 82263, 82264, 77789, 144946, 82270, 15116, 82273, 149433, 149445, 149458, 82305, 149469, 158436, 46512, 158440, 185305, 15188, 158456, 158463, 149522, 149523, 46555, 46556, 185352, 46572, 10782, 82417, 1860, 82448, 149616, 149626, 82484, 82504, 10880, 46708, 46709, 19850, 46716, 51195, 46718, 158653, 55684, 46741, 46742, 82564, 51230, 46754, 46755, 6466, 42288, 78116, 82624, 15476, 73678, 158753, 158755, 82647, 11017, 11026, 78193, 6566, 11046, 28960, 51346, 6579, 11066, 11068, 11069, 20029, 20030, 73780, 145424, 114104, 82774, 190239, 42506, 78333, 176828, 172368, 42548, 6740, 145528, 145529, 29143, 82871, 159000, 78423, 78430, 2330, 2331, 65011, 42637, 150122, 150131, 176995, 78507, 78509, 78510, 172558, 177039, 78553, 78554, 172572, 78556, 78558, 78559, 145714, 6929, 181535, 78568, 78569, 109912, 172605, 78589, 78590, 78591, 47253, 47254, 42782, 172649, 141310, 2532, 2533, 7010, 24924, 24926, 24927, 24929, 24930, 24931, 24934, 24935, 47321, 78667, 78670, 78674, 47335, 47336, 42859, 20486, 20488, 20489, 20490, 20491, 20492, 20493, 78696, 74228, 78768, 25075, 25080, 25081, 2708, 78820, 78830, 199726, 60941, 43034, 141528, 7232, 43062, 78883, 52031, 52032, 52033, 52034, 52036, 78905, 78906, 47571, 20716, 168459, 69977, 69978, 195357, 2857, 29725, 195385, 2879, 47663, 52170, 83538, 79062, 52216, 88067, 38821, 88080, 88081, 83651, 83652, 29929, 83670, 3084, 3100, 3108, 52358, 52359, 52361, 141912, 3127, 141920, 52382, 3144, 52408, 200166, 12136, 3189, 3197, 3198, 3204, 43499, 79315, 79316, 3216, 83878, 83882, 3296, 83883, 83890, 3312, 3313, 3314, 3319, 7798, 3322, 3323, 3329, 3330, 3331, 3334, 3335, 3342, 3345, 3346, 3347, 3348, 3350, 3351, 191387, 133186, 146626, 3367, 3368, 3370, 3371, 3372, 34715, 34717, 34718, 34719, 34721, 34723, 195899, 34730, 43690, 3412, 3413, 173545, 173548, 34765, 133261, 43723, 43724, 43725, 133271, 21354, 137762, 16908, 133333, 3504, 3520, 155739, 133362, 43823, 43824, 43825, 133369, 43840, 43841, 43842, 61751, 52809, 52810, 52812, 79675, 164738, 164741, 133408, 133409, 84182, 133433, 133441, 84199, 3627, 3628, 88701, 88702, 88703, 88706, 17098, 93223, 133523, 164900, 35068, 48510, 26125, 111190, 48513, 30611, 164931, 173942, 17252, 160526, 160527, 160528, 160529, 160530, 12789, 12790, 12791, 12793, 12794, 12795, 133675, 12796, 12797, 12798, 30713, 44158, 44160, 30730, 174038, 62114, 62115, 62116, 174045, 44235, 44236, 71100, 80069, 12922, 80087, 62194, 62195, 62198, 62199, 62200, 165189, 174146, 174147, 44338, 4047, 57801, 4078, 44392, 26537, 84745, 84749, 84751, 147435, 8659, 151937, 66876, 187758, 4311, 49131, 53626, 53641, 187987, 58155, 58167, 147714, 44745, 76085, 76098, 58193, 76103, 76108);
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=44773; -- Anastasia
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=44774; -- Genevieve
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=68; -- Stormwind City Guard
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=9158; -- Warhorse
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=85307; -- Sparkbright
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=49540; -- Stormwind Rat
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=143567; -- Mole Machine to Stormwind
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=58542; -- Past Self
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=63086; -- Matty
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18357; -- Ebon Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18359; -- Snowy Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18360; -- Golden Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18362; -- Swift Purple Gryphon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=45244; -- Farseer Krogar
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18406; -- Swift Blue Gryphon
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=45306; -- Chief Surgeon Gashweld
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=45347; -- Brother Silverhallow
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=170715; -- Stormwind Gryphon
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=54374; -- Brilliant Kaliri
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=85731; -- Araazi
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=721; -- Rabbit
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=9699; -- Fire Beetle
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=58959; -- Fel Imp
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=179896; -- Finn
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=144118; -- Fenella Darkvire
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=144119; -- Kasea Angerforge
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=144122; -- Bloodhound Mastiff
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=144123; -- Blazing Fireguard
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=144124; -- Dark Iron Core Hound
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=144128; -- Dark Iron Brewer
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=41158; -- Nethergarde Defender
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=144129; -- Plugger Spazzring
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=144130; -- Mistress Nagmara
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=144132; -- Warbringer Construct
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=144152; -- Moira Thaurissan
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=144153; -- Thaelin Darkanvil
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=144154; -- Anvil-Thane Thurgaden
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=144156; -- Drukan
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=41200; -- Generic Bunny - PRK
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=144181; -- Mole Machine to Shadowforge City
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=63626; -- Varzok
UPDATE `creature_template` SET `femaleName`='', `rank`=1, `type`=7, `type_flags`=2101324, `HealthModifier`=1200, `ManaModifier`=250, `VerifiedBuild`=46741 WHERE `entry`=126306; -- Anduin Wrynn
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=14439; -- Officer Brady
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18927; -- Human Commoner
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=5497; -- Jennea Cannon
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=5498; -- Elsharin
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=5515; -- Einris Brightspear
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=5516; -- Ulfir Ironbeard
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=5517; -- Thorfin Stoneshield
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=14565; -- Charger
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=1257; -- Keldric Boucher
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=1291; -- Carla Granger
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=1294; -- Aldric Moore
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=1295; -- Lara Moore
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=46181; -- Enchanter Farendin
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=1412; -- Squirrel
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=1427; -- Harlan Bagley
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=23837; -- ELM General Purpose Bunny
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=1477; -- Christoph Faral
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=1478; -- Aedis Brom
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.050000000745058059, `VerifiedBuild`=46741 WHERE `entry`=32820; -- Wild Turkey
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=32842; -- The WoW Dev Team
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=55272; -- Mountain Horse
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=1863; -- Succubus
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=55626; -- General Purpose Bunny (DLA)
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=158637; -- Guiding Orb
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=1976; -- Stormwind City Patroller
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=60199; -- Rune of Power
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=42339; -- Canal Crab
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=51348; -- Stormwind Gryphon Rider
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=42421; -- Stormwind Fisherman
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=15659; -- Auctioneer Jaxon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=29093; -- Ian Drake
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=29142; -- Jelinek Sharpshear
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=2334; -- Event Generator 001
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=60649; -- Black Lamb
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=47233; -- Gordul
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=47246; -- Ureda
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=47247; -- Marud
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=47248; -- Gija
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=141270; -- Pepper
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=2485; -- Larimaine Purdue
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=20407; -- Farseer Umbrua
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=2630; -- Earthbind Totem
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry` IN (61071, 13321); -- Small Frog
UPDATE `creature_template` SET `femaleName`='', `movementId`=121, `VerifiedBuild`=46741 WHERE `entry`=70098; -- Spawn of G'nathus
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=34337; -- The Postmaster
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry` IN (79152, 79153); -- Ironmarch Bomb
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=168703; -- Spider
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=21055; -- Golden Dragonhawk Hatchling
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=3310; -- Doras
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=3327; -- Gest
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=3328; -- Ormok
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=3369; -- Gotri
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=12351; -- Dire Riding Wolf
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=12480; -- Melris Malagan
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=12481; -- Justine Demalier
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=88704; -- Gran'dul
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=88705; -- Kranosh
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=115786; -- Sharptalon Hatchling
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=111421; -- Lurking Owl Kitten
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=62177; -- Forest Moth
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=71163; -- Unborn Val'kyr
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=4075; -- Rat
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=44393; -- Bolner Hammerbeak
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=44394; -- Dalga Hammerbeak
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=44395; -- Celestine of the Harvest
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=89174; -- Laluu
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=120526; -- Succubus
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=8670; -- Auctioneer Chilton
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=8719; -- Auctioneer Fitch
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=44582; -- Theresa Denman
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=44583; -- Terrance Denman
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=44723; -- Nahu Ragehoof
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=44725; -- Sunwalker Atohmo
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=44726; -- Shalla Whiteleaf
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=44735; -- Seer Liwatha
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=44740; -- Sahi Cloudsinger
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=44743; -- Nohi Plainswalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=58199; -- Lord Itharius

DELETE FROM `creature_template_model` WHERE (`Idx`=0 AND `CreatureID` IN (198506,198509,198505,198533,197287,198532,197762,189767,198383,197269,197267,197253,198236)) OR (`Idx`=3 AND `CreatureID`=198383) OR (`Idx`=2 AND `CreatureID`=198383) OR (`Idx`=1 AND `CreatureID`=198383);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(198506, 0, 110154, 1, 1, 46741), -- Krenzen
(198509, 0, 68845, 1, 1, 46741), -- Berkeley
(198505, 0, 110153, 1, 1, 46741), -- Blue
(198533, 0, 110178, 1, 1, 46741), -- Nazurathar
(197287, 0, 109492, 1, 1, 46741), -- Annywn Dynaspark
(198532, 0, 110176, 1, 1, 46741), -- Zhakloskar
(197762, 0, 109706, 1, 1, 46741), -- Lord Krazore
(189767, 0, 107015, 1, 1, 46741), -- Thaelin Darkanvil
(198383, 3, 104846, 1, 1, 46741), -- Dracthyr Smith
(198383, 2, 104845, 1, 1, 46741), -- Dracthyr Smith
(198383, 1, 104844, 1, 1, 46741), -- Dracthyr Smith
(198383, 0, 104843, 1, 1, 46741), -- Dracthyr Smith
(197269, 0, 74513, 2.5, 1, 46741), -- Toy Tank
(197267, 0, 109485, 1, 1, 46741), -- Riley Tidy
(197253, 0, 109484, 1, 1, 46741), -- "Lefty" Lucy
(198236, 0, 109964, 1, 100, 46741); -- Divine Image



UPDATE `creature_template_model` SET `VerifiedBuild`=46741 WHERE (`Idx`=1 AND `CreatureID` IN (81926,78905,78906,81901,80087,80804,85146,78768,82871,85142,78820,80715,41200,78507,85856,83652,83651,81274,81711,83538,78883,82305,82647,77653,5990,41158,82504,58542,76673,76189,76085,76429,77090,76098,84182,76103,76436,149458,147714,173545,149099,148796,147785,149445,148233,149469,149433,148124,147741,149131,149124,23837,52361,62177,4075,53626,14496,42339,42421,49540,144134,18927,51348,112698,158119,133441,133433,1976,112694,112686,111190,158123,158120,133675,158125,68,177039,144125,144163,73678,144135,144133,144126,144127,1423,721,116,61071,13321,31768,52810,14499,58193,51230,50088,133271,45830,158138,158141,158133,158131,45814,42548,149409,149290,52216,19176,3084,109912,4953,45230,78116,32842,113395,15476,14881,44160,93223,44158,19177,72654,46140,133333,46142,89830,19175,72559,149371,149404,149408,149296,149297,74228,28960,168459,3296,32520,38821,49837,149522,149270,148770,155739,149626,149258,148795,133186,173548,149616,148768,148265,148263,51346,42859,71100,3197,198434,180701,189554,62115,49743,40891,198476,184812,62114,3198,143622,184813,199726,184814,175620,174994,184650,175580,55626,172368,175448,175572,175469,175590,174038,175595,175466,175458,175470,175459,174045,175441,26125)) OR (`Idx`=0 AND `CreatureID` IN (81926,81895,78905,78906,83670,81901,78830,80087,80804,85146,78768,82871,85142,78820,78509,43499,80715,78591,78590,78589,78559,41200,81763,81762,78507,85856,78510,82624,81695,2630,81696,83652,83651,81274,78558,82484,78333,82417,81711,79062,83538,78883,82305,82647,78696,76648,82002,82001,82000,81998,81996,12922,81993,81997,82263,82189,82004,78569,78568,82264,81990,82025,81994,79316,79315,81995,81999,82016,82013,82012,82009,82010,82260,82259,82191,82187,82082,82075,82017,82014,82011,82008,82007,82005,78556,82188,82006,82015,78554,78553,78430,78423,79675,77653,78193,82003,79152,79153,78670,78674,78667,5990,5983,41158,82774,82504,76651,54374,60199,58542,76556,85731,76117,76448,76673,85213,76189,82448,82273,76108,76085,76429,82270,77090,84199,77643,76110,9699,76098,84182,76886,76103,76436,149458,147714,173545,149099,5081,148796,147785,3628,1311,5497,2485,1141,331,149445,148233,89174,52408,1307,149469,149433,149121,148124,147741,1419,103033,150122,149131,85307,5694,5498,2708,174146,149124,85819,85818,85817,85816,84751,84749,84745,82564,1308,23837,4078,158755,158753,158463,158456,158440,158436,52031,5499,52359,52358,52361,3627,30730,30713,5503,5500,1313,1309,5567,1429,1310,5566,49701,1347,1314,188679,42288,1346,1300,5386,1316,1257,12480,1431,1301,277,14438,111421,12481,1415,1414,338,188678,6740,1413,1318,1317,1315,1312,188342,46180,11068,2533,2532,62177,44582,29093,15659,8719,8670,44583,1427,1367,1366,1295,1291,5494,5493,4075,1402,1294,179896,175420,175416,44774,29142,1428,1299,1298,1297,141270,44773,181535,1478,1477,3504,2330,2331,1405,66876,1350,1349,157498,157496,108180,83890,83882,83878,50432,50424,14450,3520,1444,83883,53626,14496,54026,14497,54117,10782,1646,170715,55684,42339,53641,58167,54218,54217,54216,54215,54214,42421,53991,5384,656,54219,1472,5514,5513,11069,5517,44392,5516,5515,2879,5512,5413,80069,44394,44393,29725,20407,7798,5511,5510,2334,957,44236,49540,188521,144134,45306,44235,43034,1649,43840,6579,43725,43724,43723,18927,11026,7232,5519,5509,1416,49748,43842,43841,43825,43824,43823,43690,14563,5518,14439,44395,42782,20716,16908,19269,51348,88067,126306,133369,133362,112698,158119,133441,133433,1976,133409,88081,112694,112686,111190,158123,158120,133675,88080,133408,126332,144181,158125,172572,68,185352,176828,144156,144128,144118,143567,177039,144124,144125,144163,144154,144122,144119,73678,144130,144135,144123,144129,144132,144152,144133,185305,144153,176995,144126,144127,1423,822,721,60649,1412,116,61071,32820,524,13321,49871,144946,148787,147435,148025,31768,12351,356,3351,3350,47663,62200,62199,14451,52812,52809,52810,21055,11017,3413,3412,14498,14499,3369,198538,62194,57801,54472,49737,42506,70098,71163,1863,184600,24931,24929,25081,25080,24930,24927,24926,24924,44780,44779,77789,58199,58193,47336,47335,47321,158637,51230,45244,46742,11046,8659,3348,3347,161223,176095,176094,176012,54113,54004,50088,46741,46181,11066,3346,3345,174147,141912,141920,133271,174864,174863,45540,52170,45546,174865,45545,180176,140462,46080,46078,45830,45659,45567,45566,45565,45549,45548,45347,30611,133523,158138,63086,63085,54657,52033,52036,175050,29929,158141,158133,158131,48510,46755,46082,45814,45552,42548,19850,12795,12793,12789,172558,48513,12794,167032,133261,45563,45553,12797,14377,149409,58959,32642,32641,149290,52216,46358,12791,69977,12790,146626,69978,14376,44787,44783,44782,44781,19176,3322,15188,34719,34718,24935,24934,34730,34721,34715,3084,34723,34717,191387,46718,46709,46708,3372,3371,3368,2857,52032,46716,7010,43062,95057,12136,44745,44726,1420,114104,109912,95234,44740,4953,141528,130911,9564,45230,44743,44723,88705,88704,44735,44725,5875,3335,29143,12798,179897,73151,12796,5910,3334,78116,115786,23635,46357,37072,46512,46359,3319,34337,32842,5909,3189,5816,88706,3330,47254,3216,3327,3328,47233,10880,113395,63626,34765,15476,14881,198542,198557,198553,187987,50488,50477,50323,44948,44919,44918,44160,26537,20493,20492,20491,20490,20489,20488,20486,3310,5639,93223,3329,141310,47247,47248,47246,62198,44158,19177,3331,3367,134711,55054,54870,52382,42637,14720,198541,198497,188167,49131,35068,3314,145424,135201,72654,58155,52034,47571,46556,46555,46140,45337,23128,17098,3323,197771,197770,197767,145529,145528,133333,49622,46142,45339,44338,4047,3144,3312,44865,44867,44866,44868,188655,5188,44872,89830,3370,27489,51195,44871,188656,188166,188073,187758,46572,19175,3342,88703,72559,49750,31720,31727,31725,31724,25075,31726,31723,149371,149404,149408,149296,149297,44877,44854,44853,15116,74228,44878,44876,44856,44852,44851,14375,137762,135202,6929,5614,5613,5611,120526,88702,6466,28960,5606,5609,5610,168459,88701,62195,14392,5817,3313,3296,32520,38821,49837,149522,149270,148770,155739,151937,150131,149626,149523,149279,149258,148795,148250,148242,133186,50304,47253,6566,173548,149616,148768,148265,148263,145714,51346,61751,42859,71100,4311,3204,3197,3127,198411,198475,195899,175156,184810,62116,189075,62822,184808,197288,121541,160528,198434,184858,180701,41621,189554,160530,62821,62115,49743,197279,184671,160527,40891,5951,200166,58960,198412,3100,198476,184812,416,3108,184809,62114,184665,195357,3198,195385,1860,143622,160529,184813,199726,193450,184814,160526,46754,32207,20029,20030,18379,18380,18378,18377,18365,18364,18363,175620,175408,174994,17252,168703,184650,190239,158653,175580,172649,166137,161979,175625,175450,164738,174714,174710,173942,175451,55626,166143,164931,175455,175922,175767,175772,175623,172368,164900,164741,159000,175452,161977,175448,175449,175453,175462,166048,172605,175572,175469,162702,175590,103159,175622,174038,175595,175466,175458,175624,175470,175467,165189,175456,175459,174045,166160,162704,175441,60941,73780,65011,55272,32206,28302,18362,18375,18376,18406,18359,18357,18360,14565,14505,9158,305,21354,304,26125)) OR (`Idx`=3 AND `CreatureID` IN (78905,78906,80087,80804,85146,82871,85142,85856,83652,78883,82647,41158,82504,76189,76085,76429,76098,76103,149458,149445,149469,149433,149131,62177,53626,14496,42339,144134,112698,158119,133441,133433,112694,158123,158120,158125,68,144125,144163,144133,144127,61071,13321,31768,14499,58193,51230,133271,45830,158138,158141,158133,158131,45814,42548,149409,149290,3084,4953,45230,32842,15476,44160,44158,46140,46142,89830,149371,149404,149408,149296,149297,74228,168459,3296,49837,133186,149616,51346,71100,198434,189554,62115,49743,40891,184812,62114,184813,184814,175620,175580,172368,175448,175572,175469,175466,175458,175470,175459,175441,26125)) OR (`Idx`=2 AND `CreatureID` IN (78905,78906,81901,80087,80804,85146,82871,85142,78820,80715,78507,85856,83652,81711,78883,82647,77653,41158,82504,76189,76085,76429,77090,76098,76103,149458,149445,149469,149433,149131,149124,62177,4075,53626,14496,42339,42421,49540,144134,112698,158119,133441,133433,112694,112686,158123,158120,158125,68,144125,144163,144133,144126,144127,61071,13321,31768,14499,58193,51230,133271,45830,158138,158141,158133,158131,45814,42548,149409,149290,3084,109912,4953,45230,32842,15476,44160,44158,46140,46142,89830,149371,149404,149408,149296,149297,74228,168459,3296,49837,133186,149616,51346,42859,71100,198434,189554,62115,49743,40891,184812,62114,143622,184813,184814,175620,175580,172368,175448,175572,175469,174038,175466,175458,175470,175459,175441,26125)) OR (`Idx`=4 AND `CreatureID` IN (149131,45230,46140,3296,189554,184812,184813,184814,175620,175580,175572,175469,175466,175458,175470,175459,175441)) OR (`Idx`=5 AND `CreatureID` IN (45230,46140,3296,189554,184812,184813,184814,175620,175580,175572,175469,175466,175470,175459,175441)) OR (`Idx`=7 AND `CreatureID` IN (46140,189554,184812,184813,184814,175620,175572,175469,175466,175470,175459,175441)) OR (`Idx`=6 AND `CreatureID` IN (46140,189554,184812,184813,184814,175620,175572,175469,175466,175470,175459,175441)) OR (`Idx`=8 AND `CreatureID` IN (189554,184812,184814,175469)) OR (`Idx`=11 AND `CreatureID` IN (184812,175469)) OR (`Idx`=10 AND `CreatureID` IN (184812,175469)) OR (`Idx`=9 AND `CreatureID` IN (184812,184814,175469)) OR (`Idx`=15 AND `CreatureID`=175469) OR (`Idx`=14 AND `CreatureID`=175469) OR (`Idx`=13 AND `CreatureID`=175469) OR (`Idx`=12 AND `CreatureID`=175469);


UPDATE `creature_questitem` SET `VerifiedBuild`=46741 WHERE (`Idx`=0 AND `CreatureEntry` IN (81901,78820,78509,78507,78510,81711,83538,78883,5990,176995,116,524,49871,42859,3197,3127,3108,3198)) OR (`Idx`=1 AND `CreatureEntry` IN (3197,3198));

DELETE FROM `gameobject_template` WHERE `entry` IN (301145 /*Chair*/, 375827 /*Crate of Provisions*/, 299340 /*Door*/, 299337 /*Door*/, 299341 /*Door*/, 299338 /*Door*/, 292529 /*The Black Anvil*/, 301381 /*Chair*/, 301415 /*Chair*/, 301349 /*Chair*/, 301278 /*Cell Door*/, 301317 /*Chair*/, 301338 /*Chair*/, 301157 /*Bench*/, 301165 /*Bench*/, 301436 /*Doodad_DarkIronDwarfRune_D01*/, 301281 /*East Garrison Door*/, 301283 /*Doodad_BlackRockIronDoor02*/, 301351 /*Chair*/, 301170 /*Bench*/, 301370 /*Chair*/, 301350 /*Dark Iron Keg Shotgun*/, 301308 /*Chair*/, 301439 /*Doodad_DarkIronDwarfRune_G01*/, 301273 /*Cell Door*/, 301154 /*Bench*/, 301539 /*Relic Coffer Door*/, 301330 /*Chair*/, 301167 /*Bench*/, 301340 /*Chair*/, 301410 /*Chair*/, 301438 /*Doodad_DarkIronDwarfRune_F01*/, 301153 /*Bench*/, 301426 /*Bench*/, 301391 /*Chair*/, 301402 /*Chair*/, 301372 /*Chair*/, 301186 /*Bench*/, 301531 /*Dark Coffer*/, 301266 /*Doodad_BurningGiantWheel01*/, 301399 /*Chair*/, 301362 /*Chair*/, 301418 /*Chair*/, 301425 /*Bench*/, 301358 /*Chair*/, 301148 /*Bench*/, 301343 /*Chair*/, 301375 /*Chair*/, 301299 /*BigDoorDummyCollision02*/, 301305 /*Chair*/, 301380 /*Chair*/, 301406 /*Chair*/, 301383 /*Chair*/, 301536 /*Relic Coffer Door*/, 301151 /*Bench*/, 301268 /*Doodad_BlackRockDoorSingle01*/, 301369 /*Chair*/, 301541 /*Relic Coffer Door*/, 301143 /*Bench*/, 301291 /*ArenaGate02*/, 301142 /*Bench*/, 301319 /*Chair*/, 301332 /*Chair*/, 301183 /*Bench*/, 301337 /*Chair*/, 301367 /*Chair*/, 301288 /*Doodad_BlackRockDoors03*/, 301423 /*Bench*/, 301420 /*Bench*/, 301335 /*Chair*/, 301311 /*Chair*/, 301190 /*Bench*/, 301275 /*Cell Door*/, 301297 /*Giant Doors*/, 301412 /*Chair*/, 301538 /*Relic Coffer Door*/, 301404 /*Chair*/, 301280 /*Cell Door*/, 301158 /*Bench*/, 301401 /*Chair*/, 301363 /*Chair*/, 301348 /*Chair*/, 301533 /*Secret Door*/, 301364 /*Chair*/, 301361 /*Chair*/, 301310 /*Chair*/, 301530 /*Relic Coffer Door*/, 301156 /*Bench*/, 301272 /*Supply Room Door*/, 301307 /*Chair*/, 301164 /*Bench*/, 301329 /*Chair*/, 301396 /*Chair*/, 301430 /*Bench*/, 301324 /*Chair*/, 301293 /*The Shadowforge Lock*/, 301428 /*Bench*/, 301417 /*Chair*/, 301220 /*Chair*/, 301388 /*Chair*/, 301331 /*Chair*/, 301352 /*Chair*/, 301298 /*Giant Door Fake Collision*/, 301166 /*Bench*/, 301161 /*Bench*/, 301353 /*Chair*/, 301285 /*Golem Room South*/, 301387 /*Chair*/, 301390 /*Chair*/, 301344 /*Chair*/, 301321 /*Chair*/, 301290 /*ArenaGate03*/, 301377 /*Chair*/, 301262 /*Chair*/, 301267 /*Doodad_BlackRockDoors01*/, 301543 /*Relic Coffer Door*/, 301169 /*Bench*/, 301277 /*Cell Door*/, 301392 /*Chair*/, 301433 /*Doodad_DarkIronDwarfRune_A01*/, 301382 /*Chair*/, 301393 /*Chair*/, 301379 /*Chair*/, 301385 /*Chair*/, 301282 /*Bar Door*/, 301409 /*Chair*/, 301374 /*Chair*/, 301313 /*Chair*/, 301345 /*Chair*/, 301312 /*Chair*/, 301373 /*Chair*/, 301535 /*Relic Coffer Door*/, 301147 /*Bench*/, 301302 /*Chair*/, 301334 /*Chair*/, 301274 /*Cell Door*/, 301160 /*Bench*/, 301355 /*Chair*/, 301421 /*Bench*/, 301150 /*Bench*/, 301295 /*Ironfel*/, 301414 /*Chair*/, 301411 /*Chair*/, 301376 /*Chair*/, 301540 /*Relic Coffer Door*/, 301270 /*Shadowforge Gate*/, 301394 /*Chair*/, 301405 /*Chair*/, 301366 /*Chair*/, 301403 /*Chair*/, 301326 /*Chair*/, 301152 /*Bench*/, 301342 /*Chair*/, 301287 /*Doodad_BlackRockDoors02*/, 301398 /*Chair*/, 301155 /*Bench*/, 301422 /*Bench*/, 301318 /*Chair*/, 301429 /*Bench*/, 301386 /*Chair*/, 301532 /*Relic Coffer Door*/, 301168 /*Bench*/, 301347 /*Chair*/, 301427 /*Bench*/, 301279 /*Cell Door*/, 301309 /*Chair*/, 301304 /*Chair*/, 301314 /*Chair*/, 301171 /*Bench*/, 301292 /*ArenaGate04*/, 301163 /*Bench*/, 301341 /*Chair*/, 301323 /*Chair*/, 301271 /*Shadowforge Gate*/, 301146 /*Bench*/, 301395 /*Chair*/, 301336 /*Chair*/, 301371 /*Chair*/, 301269 /*The Lyceum*/, 301435 /*Doodad_DarkIronDwarfRune_C01*/, 301339 /*Chair*/, 301424 /*Bench*/, 301315 /*Chair*/, 301419 /*Chair*/, 301346 /*Chair*/, 301407 /*Chair*/, 301301 /*Chair*/, 301368 /*Chair*/, 301542 /*Relic Coffer Door*/, 301144 /*Bench*/, 301284 /*Golem Room North*/, 301354 /*Chair*/, 301365 /*Chair*/, 301159 /*Bench*/, 301408 /*Chair*/, 301400 /*Chair*/, 301413 /*Chair*/, 301534 /*Relic Coffer Door*/, 301328 /*Chair*/, 301276 /*Cell Door*/, 301303 /*Chair*/, 301333 /*Chair*/, 301384 /*Chair*/, 301434 /*Doodad_DarkIronDwarfRune_B01*/, 301432 /*Bench*/, 301416 /*Chair*/, 301397 /*Chair*/, 301360 /*Chair*/, 301320 /*Chair*/, 301359 /*Chair*/, 301356 /*Chair*/, 301294 /*Giant Door Mechanism*/, 301322 /*Chair*/, 301389 /*Chair*/, 301221 /*Chair*/, 301537 /*Relic Coffer Door*/, 301431 /*Bench*/, 301378 /*Chair*/, 301180 /*Bench*/, 301149 /*Bench*/, 301286 /*Thone Room Doors*/, 301357 /*Chair*/, 301162 /*Bench*/, 301327 /*Chair*/, 301325 /*Chair*/, 301289 /*ArenaGate01*/, 301316 /*Chair*/, 301437 /*Doodad_DarkIronDwarfRune_E01*/, 301306 /*Chair*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(301145, 7, 988, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(375827, 3, 1868, 'Crate of Provisions', 'questinteract', 'Collecting', '', 1, 1691, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 109980, 0, 0, 0, 0, 1281, 46741), -- Crate of Provisions
(299340, 0, 3075, 'Door', '', '', '', 1.10000002384185791, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Door
(299337, 0, 2750, 'Door', '', '', '', 1.35000002384185791, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Door
(299341, 0, 3076, 'Door', '', '', '', 1.10000002384185791, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Door
(299338, 0, 2751, 'Door', '', '', '', 1.5, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Door
(292529, 8, 50205, 'The Black Anvil', '', '', '', 1, 623, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 674, 46741), -- The Black Anvil
(301381, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301415, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301349, 7, 39, 'Chair', '', '', '', 1.006711483001708984, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301278, 0, 2751, 'Cell Door', '', '', '', 0.999999940395355224, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301317, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301338, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301157, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301165, 7, 990, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301436, 1, 2673, 'Doodad_DarkIronDwarfRune_D01', '', '', '', 1.49758768081665039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_DarkIronDwarfRune_D01
(301281, 0, 2751, 'East Garrison Door', '', '', '', 0.980392158031463623, 0, 1634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- East Garrison Door
(301283, 0, 2752, 'Doodad_BlackRockIronDoor02', '', '', '', 1.499400019645690917, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_BlackRockIronDoor02
(301351, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301170, 7, 990, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301370, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301350, 1, 3152, 'Dark Iron Keg Shotgun', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Dark Iron Keg Shotgun
(301308, 7, 39, 'Chair', '', '', '', 1.000000476837158203, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301439, 1, 2773, 'Doodad_DarkIronDwarfRune_G01', '', '', '', 1.49758768081665039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_DarkIronDwarfRune_G01
(301273, 0, 2751, 'Cell Door', '', '', '', 0.980392277240753173, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301154, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301539, 0, 3075, 'Relic Coffer Door', '', '', '', 1, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301330, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301167, 7, 990, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301340, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301410, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301438, 1, 2772, 'Doodad_DarkIronDwarfRune_F01', '', '', '', 1.49758768081665039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_DarkIronDwarfRune_F01
(301153, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301426, 7, 987, 'Bench', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301391, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301402, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301372, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301186, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301531, 0, 3078, 'Dark Coffer', '', '', '', 1, 0, 659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Dark Coffer
(301266, 0, 2730, 'Doodad_BurningGiantWheel01', '', '', '', 1, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_BurningGiantWheel01
(301399, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301362, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301418, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301425, 7, 987, 'Bench', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301358, 7, 39, 'Chair', '', '', '', 1.000000596046447753, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301148, 7, 990, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301343, 7, 39, 'Chair', '', '', '', 1.006711602210998535, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301375, 7, 39, 'Chair', '', '', '', 1.000000476837158203, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301299, 0, 2854, 'BigDoorDummyCollision02', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- BigDoorDummyCollision02
(301305, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301380, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301406, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301383, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301536, 0, 3076, 'Relic Coffer Door', '', '', '', 1.00000011920928955, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301151, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301268, 0, 2751, 'Doodad_BlackRockDoorSingle01', '', '', '', 1, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_BlackRockDoorSingle01
(301369, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301541, 0, 3075, 'Relic Coffer Door', '', '', '', 1, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301143, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301291, 0, 3751, 'ArenaGate02', '', '', '', 2.10000014305114746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- ArenaGate02
(301142, 7, 990, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301319, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301332, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301183, 7, 987, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301337, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301367, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301288, 0, 2750, 'Doodad_BlackRockDoors03', '', '', '', 1.246168017387390136, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_BlackRockDoors03
(301423, 7, 987, 'Bench', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301420, 7, 987, 'Bench', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301335, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301311, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301190, 7, 987, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301275, 0, 2751, 'Cell Door', '', '', '', 1.00000011920928955, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301297, 0, 2790, 'Giant Doors', '', '', '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Giant Doors
(301412, 7, 39, 'Chair', '', '', '', 0.999999880790710449, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301538, 0, 3076, 'Relic Coffer Door', '', '', '', 1.00000011920928955, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301404, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301280, 0, 2751, 'Cell Door', '', '', '', 1, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301158, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301401, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301363, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301348, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301533, 0, 3077, 'Secret Door', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Secret Door
(301364, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301361, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301310, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301530, 0, 3076, 'Relic Coffer Door', '', '', '', 1.00000011920928955, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301156, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301272, 0, 2751, 'Supply Room Door', '', '', '', 0.980392158031463623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Supply Room Door
(301307, 7, 39, 'Chair', '', '', '', 1.000000476837158203, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301164, 7, 990, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301329, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301396, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301430, 7, 987, 'Bench', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301324, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301293, 0, 2851, 'The Shadowforge Lock', '', '', '', 0.999999940395355224, 0, 1634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- The Shadowforge Lock
(301428, 7, 987, 'Bench', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301417, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301220, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301388, 7, 39, 'Chair', '', '', '', 1.000000476837158203, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301331, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301352, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301298, 0, 2853, 'Giant Door Fake Collision', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Giant Door Fake Collision
(301166, 7, 990, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301161, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301353, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301285, 0, 2752, 'Golem Room South', '', '', '', 1.499400019645690917, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Golem Room South
(301387, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301390, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301344, 7, 39, 'Chair', '', '', '', 1.006711840629577636, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301321, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301290, 0, 3751, 'ArenaGate03', '', '', '', 2.099999904632568359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- ArenaGate03
(301377, 7, 39, 'Chair', '', '', '', 1.000000476837158203, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301262, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301267, 0, 2750, 'Doodad_BlackRockDoors01', '', '', '', 1, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_BlackRockDoors01
(301543, 0, 3075, 'Relic Coffer Door', '', '', '', 1, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301169, 7, 990, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301277, 0, 2751, 'Cell Door', '', '', '', 1, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301392, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301433, 1, 2670, 'Doodad_DarkIronDwarfRune_A01', '', '', '', 1.49758768081665039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_DarkIronDwarfRune_A01
(301382, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301393, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301379, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301385, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301282, 0, 2751, 'Bar Door', '', '', '', 1.309999942779541015, 0, 739, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bar Door
(301409, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301374, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301313, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301345, 7, 39, 'Chair', '', '', '', 1.006711244583129882, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301312, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301373, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301535, 0, 3076, 'Relic Coffer Door', '', '', '', 1.00000011920928955, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301147, 7, 990, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301302, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301334, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301274, 0, 2751, 'Cell Door', '', '', '', 1.00000011920928955, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301160, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301355, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301421, 7, 987, 'Bench', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301150, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301295, 0, 2931, 'Ironfel', '', '', '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Ironfel
(301414, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301411, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301376, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301540, 0, 3075, 'Relic Coffer Door', '', '', '', 1, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301270, 0, 2753, 'Shadowforge Gate', '', '', '', 1, 0, 1634, 0, 0, 0, 0, 0, 5703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Shadowforge Gate
(301394, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301405, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301366, 7, 39, 'Chair', '', '', '', 1.006711602210998535, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301403, 7, 39, 'Chair', '', '', '', 0.999999880790710449, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301326, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301152, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301342, 7, 39, 'Chair', '', '', '', 1.000000476837158203, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301287, 0, 2750, 'Doodad_BlackRockDoors02', '', '', '', 1.246167898178100585, 1, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_BlackRockDoors02
(301398, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301155, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301422, 7, 987, 'Bench', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301318, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301429, 7, 987, 'Bench', '', '', '', 0.999999821186065673, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301386, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301532, 0, 3075, 'Relic Coffer Door', '', '', '', 1, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301168, 7, 990, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301347, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301427, 7, 987, 'Bench', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301279, 0, 2751, 'Cell Door', '', '', '', 1, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301309, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301304, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301314, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301171, 7, 990, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301292, 0, 3751, 'ArenaGate04', '', '', '', 2.10000014305114746, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- ArenaGate04
(301163, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301341, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301323, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301271, 0, 2753, 'Shadowforge Gate', '', '', '', 1, 0, 1634, 0, 0, 0, 0, 0, 5703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Shadowforge Gate
(301146, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301395, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301336, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301371, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301269, 0, 2752, 'The Lyceum', '', '', '', 1.499399900436401367, 0, 1634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- The Lyceum
(301435, 1, 2672, 'Doodad_DarkIronDwarfRune_C01', '', '', '', 1.49758768081665039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_DarkIronDwarfRune_C01
(301339, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301424, 7, 987, 'Bench', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301315, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301419, 7, 39, 'Chair', '', '', '', 0.999999821186065673, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301346, 7, 39, 'Chair', '', '', '', 1.000000476837158203, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301407, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301301, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301368, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301542, 0, 3075, 'Relic Coffer Door', '', '', '', 1, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301144, 7, 990, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301284, 0, 2752, 'Golem Room North', '', '', '', 1.499400019645690917, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Golem Room North
(301354, 7, 39, 'Chair', '', '', '', 1.006711483001708984, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301365, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301159, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301408, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301400, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301413, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301534, 0, 3076, 'Relic Coffer Door', '', '', '', 1.00000011920928955, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301328, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301276, 0, 2751, 'Cell Door', '', '', '', 1, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301303, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301333, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301384, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301434, 1, 2671, 'Doodad_DarkIronDwarfRune_B01', '', '', '', 1.49758768081665039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_DarkIronDwarfRune_B01
(301432, 7, 987, 'Bench', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301416, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301397, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301360, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301320, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301359, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301356, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301294, 0, 2852, 'Giant Door Mechanism', '', '', '', 1, 0, 0, 12000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Giant Door Mechanism
(301322, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301389, 7, 39, 'Chair', '', '', '', 1.000000476837158203, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301221, 7, 39, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301537, 0, 3076, 'Relic Coffer Door', '', '', '', 1.00000011920928955, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301431, 7, 987, 'Bench', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301378, 7, 39, 'Chair', '', '', '', 1.000000476837158203, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301180, 7, 987, 'Bench', '', '', '', 1.35000014305114746, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301149, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301286, 0, 2752, 'Thone Room Doors', '', '', '', 1.514394044876098632, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Thone Room Doors
(301357, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301162, 7, 987, 'Bench', '', '', '', 1.35000002384185791, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bench
(301327, 7, 39, 'Chair', '', '', '', 1.000000238418579101, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301325, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301289, 0, 3751, 'ArenaGate01', '', '', '', 2.099999904632568359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- ArenaGate01
(301316, 7, 39, 'Chair', '', '', '', 1.00000011920928955, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Chair
(301437, 1, 2771, 'Doodad_DarkIronDwarfRune_E01', '', '', '', 1.49758768081665039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_DarkIronDwarfRune_E01
(301306, 7, 39, 'Chair', '', '', '', 1.000000357627868652, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741); -- Chair


UPDATE `gameobject_template` SET `VerifiedBuild`=46741 WHERE `entry` IN (237981, 231986, 229323, 237992, 237998, 229350, 229325, 237999, 233432, 238955, 238954, 236913, 234623, 233056, 236914, 234622, 233057, 233160, 231958, 237670, 188215, 232500, 236691, 229599, 234140, 231860, 231957, 233277, 233197, 237261, 231985, 230833, 232502, 233298, 231766, 233906, 236690, 229598, 232506, 234139, 231763, 232503, 232504, 236692, 229600, 233104, 233297, 231137, 232505, 225787, 230609, 225742, 177203, 142145, 176586, 233909, 233905, 233910, 233904, 324, 233914, 233911, 176633, 233913, 184164, 176694, 147762, 235883, 226707, 226633, 147753, 147760, 226752, 233393, 147770, 176584, 233819, 147771, 147755, 197087, 332224, 323843, 323842, 197078, 355054, 323845, 323841, 197007, 197073, 197061, 197060, 197057, 197056, 197055, 197054, 197053, 197052, 197051, 197050, 197047, 197076, 197075, 197072, 197071, 197070, 197066, 197059, 197049, 197048, 323840, 197074, 197069, 197067, 197065, 197064, 197063, 197062, 197058, 197046, 197045, 197044, 197068, 323846, 323844, 197086, 197085, 197084, 197083, 197014, 197088, 197082, 197081, 197080, 197079, 197092, 197093, 105174, 311875, 197097, 197091, 197090, 197089, 197020, 197017, 197009, 105175, 322639, 335930, 197027, 197026, 197013, 197029, 197028, 197025, 197008, 197030, 207661, 197031, 197012, 175729, 197011, 197032, 203978, 197186, 197135, 197119, 202257, 197125, 197024, 197023, 175758, 202259, 202253, 197185, 197183, 197180, 197179, 197178, 197098, 197018, 197184, 197182, 197181, 197177, 197176, 197099, 202256, 197022, 197021, 205553, 202260, 202258, 197134, 270011, 197140, 197122, 197136, 197123, 278802, 250672, 197193, 197192, 197191, 197190, 197189, 197188, 197187, 197138, 294556, 197126, 201998, 201989, 207723, 202002, 207721, 202010, 202005, 202004, 201983, 207722, 202006, 201987, 201993, 201996, 201992, 202028, 202027, 202026, 202025, 202024, 202023, 202003, 201997, 201995, 201994, 201991, 201980, 202036, 202020, 202014, 202035, 202019, 202021, 202013, 201981, 202018, 206623, 202034, 202033, 202032, 202031, 202030, 202029, 202022, 202017, 202016, 202015, 202012, 202008, 202009, 202007, 201496, 201495, 201494, 201493, 201489, 201488, 201492, 201491, 201490, 209042, 209050, 209049, 209048, 209045, 209044, 209043, 209041, 209040, 203800, 209101, 209053, 209052, 209051, 209047, 209046, 202758, 175739, 209054, 190536, 201456, 201453, 201452, 201451, 201450, 201449, 201448, 201447, 201446, 201445, 201460, 201459, 201458, 201457, 201455, 201454, 201421, 201483, 201480, 205105, 205104, 203801, 203762, 201485, 201484, 201482, 201481, 201479, 201478, 201477, 201476, 201475, 201474, 201463, 201462, 201461, 204987, 193585, 193584, 193583, 180047, 204988, 203976, 202274, 202273, 202272, 202271, 202270, 202267, 218719, 209692, 227908, 227907, 278330, 232234, 278327, 273855, 278311, 267647, 278332, 278324, 298865, 278329, 232225, 203751, 259008, 339222, 278326, 278310, 231870, 207416, 278331, 232235, 209039, 316736, 278328, 232224, 281304, 278333, 278325, 273853, 204281, 190395, 177000, 203733, 204941, 204940, 204706, 204680, 204939, 204938, 204937, 204936, 210058, 186722, 202800, 210059, 207646, 207630, 204693, 202801, 205091, 50804, 50803, 50805, 206509, 207690, 207689, 206595, 206508, 207688, 207687, 207686, 208054, 207635, 207632, 204698, 204679, 204678, 204643, 202815, 202814, 202813, 202812, 202811, 204699, 202810, 197261, 207634, 204727, 204726, 204700, 207101, 281107, 268690, 252303, 251028, 204624, 203977, 307614, 298892, 273293, 273286, 243460, 243459, 339344, 273300, 206709, 207100, 207099, 243462, 243461, 207098, 207094, 206708, 204620, 179707, 350063, 278281, 204730, 204729, 204627, 203979, 204710, 204639, 204623, 207096, 207097, 206739, 206738, 204721, 190549, 237942, 208534, 208270, 208269, 202798, 197260, 35591, 202809, 202808, 202799, 193981, 197259, 206740, 197310, 197207, 376258, 204688, 197309, 206730, 205056, 197307, 204719, 207149, 207148, 207147, 204720, 207150, 207146, 204626, 206735, 206733, 206732, 204723, 204722, 204709, 204622, 204725, 204724, 204640, 204628, 204621, 204611, 203378, 202590, 184633, 197315, 212212, 206548, 197322, 197285, 206529, 197313, 105576, 197311, 197286, 197312, 197314, 206547, 197278, 197276, 197280, 197257, 206549, 206538, 210181, 207414, 243296, 243298, 197287, 197284, 197323, 206546, 197279, 204633, 204634, 206539, 206545, 204632, 204631, 202717, 204198, 206741, 206736, 206530, 204204, 204203, 204192, 204191, 254068, 253169, 245923, 243333, 243332, 243324, 243295, 206729, 204197, 204195, 243301, 243294, 252281, 243302, 243300, 243299, 243293, 243292, 204607, 204606, 204605, 204200, 204196, 204194, 204610, 204205, 204199, 175787, 259114, 204608, 204604, 175788, 332595, 269949, 206995, 206110, 204609, 204209, 204602, 204603, 281340, 206725, 204601, 204215, 204214, 204210, 204207, 180007, 266354, 206726, 204600, 186238, 204656, 204193, 206737, 204665, 204666, 204658, 204645, 204655, 204208, 205109, 206727, 205142, 204201, 205108, 204662, 204211, 204202, 203969, 204212, 179881, 204213, 204664, 204663, 204651, 175080, 204163, 206608, 206609, 206610, 204650, 204647, 323849, 332214, 323854, 323853, 323852, 323851, 204646, 355229, 323855, 323850, 223814, 223739, 204172, 58595, 1619, 1731, 204171, 204360, 196475, 203471, 204167, 204168, 204169, 204170, 207889, 152614, 357355, 351893, 358149, 353378, 368945, 355489, 364894, 351449, 356589, 364853, 349077, 355486, 359074, 356531, 355483, 355487, 355463, 353211, 364851, 356396, 355476, 356609, 351940, 364852, 355465, 356394, 355478, 355490, 355482, 355462, 364524, 349495, 353951, 364867, 364855, 364854, 355484, 355488, 355464, 364856, 359109, 355401, 356605, 351953, 351949, 359110, 359106, 355386, 351950, 355398, 355394, 368347, 359107, 355395, 355399, 351951, 359108, 351956, 351952, 358869);
UPDATE `gameobject_template` SET `Data8`=103829, `Data10`=30092, `VerifiedBuild`=46741 WHERE `entry`=237997; -- Forge
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46741 WHERE `entry`=225908; -- Anvil
UPDATE `gameobject_template` SET `Data8`=103829, `Data10`=30092, `VerifiedBuild`=46741 WHERE `entry`=1685; -- Forge
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46741 WHERE `entry`=1684; -- Blacksmith's Anvil
UPDATE `gameobject_template` SET `Data8`=103829, `Data10`=30092, `VerifiedBuild`=46741 WHERE `entry`=206560; -- Forge
UPDATE `gameobject_template` SET `Data8`=103829, `Data10`=30092, `VerifiedBuild`=46741 WHERE `entry`=201420; -- Forge
UPDATE `gameobject_template` SET `Data8`=103829, `Data10`=30092, `VerifiedBuild`=46741 WHERE `entry`=201419; -- Forge
UPDATE `gameobject_template` SET `Data8`=103829, `Data10`=30092, `VerifiedBuild`=46741 WHERE `entry`=201418; -- Forge
UPDATE `gameobject_template` SET `Data8`=103829, `Data10`=30092, `VerifiedBuild`=46741 WHERE `entry`=201417; -- Forge
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46741 WHERE `entry`=201416; -- Anvil
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46741 WHERE `entry`=201415; -- Anvil
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46741 WHERE `entry`=92011; -- Grimand's Anvil
UPDATE `gameobject_template` SET `Data22`=101280, `VerifiedBuild`=46741 WHERE `entry`=281339; -- Hero's Call Board
UPDATE `gameobject_template` SET `Data8`=103829, `Data10`=30092, `VerifiedBuild`=46741 WHERE `entry`=227909; -- Forge
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46741 WHERE `entry`=227906; -- Anvil
UPDATE `gameobject_template` SET `Data8`=103829, `Data10`=30092, `VerifiedBuild`=46741 WHERE `entry`=359276; -- Forge
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46741 WHERE `entry`=353240; -- Anvil

DELETE FROM `gameobject_questitem` WHERE (`GameObjectEntry`=375827 AND `Idx`=0);
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(375827, 0, 190606, 46741); -- Crate of Provisions

UPDATE `gameobject_questitem` SET `VerifiedBuild`=46741 WHERE (`Idx`=0 AND `GameObjectEntry` IN (229323,105174,105175,278802,203800,203801,203762,203751,203977,203979,203969,58595,204360));


UPDATE `playerchoice_response` SET `ResponseIdentifier`=578, `VerifiedBuild`=46741 WHERE (`ChoiceId`=504 AND `ResponseId`=895 AND `Index`=2);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=577, `VerifiedBuild`=46741 WHERE (`ChoiceId`=504 AND `ResponseId`=900 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=576, `VerifiedBuild`=46741 WHERE (`ChoiceId`=504 AND `ResponseId`=2351 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=575, `VerifiedBuild`=46741 WHERE (`ChoiceId`=504 AND `ResponseId`=895 AND `Index`=2);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=574, `VerifiedBuild`=46741 WHERE (`ChoiceId`=504 AND `ResponseId`=900 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=573, `VerifiedBuild`=46741 WHERE (`ChoiceId`=504 AND `ResponseId`=2351 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=569, `VerifiedBuild`=46741 WHERE (`ChoiceId`=504 AND `ResponseId`=895 AND `Index`=2);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=568, `VerifiedBuild`=46741 WHERE (`ChoiceId`=504 AND `ResponseId`=900 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=567, `VerifiedBuild`=46741 WHERE (`ChoiceId`=504 AND `ResponseId`=2351 AND `Index`=0);

DELETE FROM `world_quest` WHERE `id` IN (64015 /*64015*/, 53264 /*53264*/, 54467 /*54467*/, 51038 /*51038*/, 60442 /*60442*/, 50957 /*50957*/, 53252 /*53252*/, 60391 /*60391*/, 51013 /*51013*/, 63937 /*63937*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(64015, 86400, 20782, 1), -- 64015
(53264, 86400, 16734, 1), -- 53264
(54467, 86400, 17061, 1), -- 54467
(51038, 86400, 16095, 3), -- 51038
(60442, 259200, 19334, 1), -- 60442
(50957, 86400, 14856, 2), -- 50957
(53252, 86400, 16737, 1), -- 53252
(60391, 259200, 19324, 1), -- 60391
(51013, 86400, 15966, 6), -- 51013
(63937, 86400, 20782, 1); -- 63937

DELETE FROM `vehicle_template_accessory` WHERE (`seat_id`=0 AND `entry` IN (175623));
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(175623, 175624, 0, 0, 'Sinfall Attendant - Paper Airplane', 1, 200); -- Sinfall Attendant - Paper Airplane



UPDATE `creature_template` SET `minlevel`=11, `maxlevel`=57, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=80087; -- Liberated Frostwolf Prisoner
UPDATE `creature_template` SET `minlevel`=25, `maxlevel`=25 WHERE `entry`=43499; -- Consecration
UPDATE `creature_template` SET `dynamicflags`=4 WHERE `entry`=80715; -- Deathspine Ravager

UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=41200; -- Generic Bunny - PRK
UPDATE `creature_template` SET `minlevel`=11, `maxlevel`=40, `faction`=2580 WHERE `entry`=2630; -- Earthbind Totem
UPDATE `creature_template` SET `minlevel`=40, `maxlevel`=40, `speed_run`=4.285714149475097656, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=17301504 WHERE `entry`=81274; -- Mana Bombs Conversation Controller
UPDATE `creature_template` SET `speed_walk`=0.5, `speed_run`=0.571428596973419189 WHERE `entry`=79062; -- Arnold Croman
UPDATE `creature_template` SET `speed_run`=1.142857193946838378 WHERE `entry`=83538; -- Warsong Commander
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=82647; -- Tormented Soul
UPDATE `creature_template` SET `unit_flags2`=2048 WHERE `entry`=78883; -- Iron Grunt
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82016; -- Durphorn the Bullheaded
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82004; -- Salty Futz
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82000; -- Elaynea Welton the Wind and Sea
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=81994; -- Corselle
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=81990; -- Moriccalas
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82264; -- Johnny Oshimo
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82012; -- Kengtus Pranch the Patient
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=81999; -- Nevo
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=81998; -- Anruin
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=81996; -- Turkina
UPDATE `creature_template` SET `unit_flags`=33024 WHERE `entry`=82263; -- Agios Lumen

UPDATE `creature_template` SET `unit_flags`=33024 WHERE `entry`=82010; -- Bonesaw
UPDATE `creature_template` SET `unit_flags`=33040, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82188; -- Mumper
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82001; -- Monishot
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=81995; -- Maelgwyn
UPDATE `creature_template` SET `minlevel`=40, `maxlevel`=40, `faction`=2580 WHERE `entry`=12922; -- Imp Minion
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82025; -- Yoori

UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82013; -- Plainsmender Darragh
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82009; -- Barbery the Crazy Cat Lady
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82006; -- Pazo Stonehoof
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82002; -- Alya
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=81993; -- Starcaller Astrylian
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82189; -- Lupas
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82017; -- Miserain Starsorrow
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82082; -- Racy
UPDATE `creature_template` SET `unit_flags`=33040, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82191; -- High Warlord Shoju
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82187; -- Etubrute
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82014; -- Archon
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82007; -- Tore
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82011; -- Northpaul
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82005; -- Challe Tebrilinde
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82259; -- Thrend
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82075; -- Ryii the Shameless
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=32 WHERE `entry`=82008; -- Malothas
UPDATE `creature_template` SET `unit_flags`=33024, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82260; -- Rainiara the Kingslayer
UPDATE `creature_template` SET `unit_flags`=33040, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=82015; -- Moonalli
UPDATE `creature_template` SET `unit_flags2`=18432 WHERE `entry`=78554; -- Vindicator Maraad
UPDATE `creature_template` SET `unit_flags2`=18432 WHERE `entry`=78553; -- Thrall
UPDATE `creature_template` SET `gossip_menu_id`=16433 WHERE `entry`=79675; -- Lady Liadrin
UPDATE `creature_template` SET `minlevel`=40, `maxlevel`=40, `faction`=14, `speed_walk`=3.20000004768371582, `speed_run`=2, `BaseAttackTime`=5000, `unit_flags`=33570816, `unit_flags2`=34816, `unit_flags3`=524289 WHERE `entry`=79152; -- Ironmarch Bomb
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=78670; -- Ironmarch Warcaster
UPDATE `creature_template` SET `unit_flags`=537166080, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=41158; -- Nethergarde Defender
UPDATE `creature_template` SET `minlevel`=49, `maxlevel`=49 WHERE `entry`=58542; -- Past Self
UPDATE `creature_template` SET `minlevel`=48, `maxlevel`=48, `unit_flags`=768 WHERE `entry`=54374; -- Brilliant Kaliri
UPDATE `creature_template` SET `minlevel`=49, `maxlevel`=49 WHERE `entry`=60199; -- Rune of Power
UPDATE `creature_template` SET `npcflag`=80 WHERE `entry`=76108; -- "Stitches" Solderbolt
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=76189; -- Ironmarch Grunt
UPDATE `creature_template` SET `dynamicflags`=128 WHERE `entry`=82273; -- Iron Demolisher
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=148796; -- Storm's Wake Tidesage

UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=89174; -- Laluu
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=174146; -- Archivist Thomas
UPDATE `creature_template` SET `npcflag`=83 WHERE `entry`=5499; -- Lilyssia Nightbreeze
UPDATE `creature_template` SET `minlevel`=14, `maxlevel`=14 WHERE `entry`=111421; -- Lurking Owl Kitten

UPDATE `creature_template` SET `npcflag`=83 WHERE `entry`=1317; -- Lucan Cordell

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20, `npcflag`=0, `unit_flags`=768 WHERE `entry`=62177; -- Forest Moth

UPDATE `creature_template` SET `npcflag`=2097155 WHERE `entry`=8719; -- Auctioneer Fitch

UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=181535; -- Murkastrasza
UPDATE `creature_template` SET `minlevel`=3, `maxlevel`=3 WHERE `entry`=66876; -- Tyler Stockton
UPDATE `creature_template` SET `minlevel`=1 WHERE `entry`=14496; -- Stormwind Orphan
UPDATE `creature_template` SET `minlevel`=14, `maxlevel`=14, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=67110912, `unit_flags3`=16777216, `VehicleId`=7262 WHERE `entry`=170715; -- Stormwind Gryphon
UPDATE `creature_template` SET `npcflag`=4305 WHERE `entry`=55684; -- Jordan Smith

UPDATE `creature_template` SET `npcflag`=65 WHERE `entry`=7232; -- Borgus Steelhand

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=19269; -- Shutterbug

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=144181; -- Mole Machine to Shadowforge City
UPDATE `creature_template` SET `speed_run`=1.428571462631225585 WHERE `entry`=68; -- Stormwind City Guard
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=144130; -- Mistress Nagmara
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=144128; -- Dark Iron Brewer
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=176995; -- Boiling Flamebringer
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=144153; -- Thaelin Darkanvil
UPDATE `creature_template` SET `minlevel`=60, `npcflag`=3 WHERE `entry`=144154; -- Anvil-Thane Thurgaden
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=84, `speed_run`=1.428571462631225585, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=185305; -- Grimhowl
UPDATE `creature_template` SET `minlevel`=60, `unit_flags`=33536 WHERE `entry`=144152; -- Moira Thaurissan
UPDATE `creature_template` SET `minlevel`=60, `unit_flags`=33536 WHERE `entry`=144156; -- Drukan
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags2`=67143680, `unit_flags3`=16809985 WHERE `entry`=185352; -- Blackrock Ball
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=67110912, `unit_flags3`=16809984 WHERE `entry`=177039; -- [DNT] Effect Bunny
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=144122; -- Bloodhound Mastiff
UPDATE `creature_template` SET `minlevel`=60, `npcflag`=3 WHERE `entry`=144119; -- Kasea Angerforge
UPDATE `creature_template` SET `minlevel`=60, `unit_flags`=768 WHERE `entry`=144118; -- Fenella Darkvire
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=144123; -- Blazing Fireguard
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=143567; -- Mole Machine to Stormwind
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=144125; -- Shadowforge Citizen
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=144124; -- Dark Iron Core Hound
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=144129; -- Plugger Spazzring
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=144127; -- Grim Patron
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=144163; -- Hammered Patron
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=144132; -- Warbringer Construct
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=144126; -- Guzzling Patron
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=84, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=18432, `unit_flags3`=1048576 WHERE `entry`=176828; -- Strongarm Jarden

UPDATE `creature_template` SET `minlevel`=60, `faction`=188, `speed_run`=0.857142865657806396 WHERE `entry`=32820; -- Wild Turkey
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3341, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=198538; -- Krozuthar
UPDATE `creature_template` SET `minlevel`=11, `maxlevel`=11, `speed_run`=0.857142865657806396, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=70098; -- Spawn of G'nathus
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55 WHERE `entry`=71163; -- Unborn Val'kyr
UPDATE `creature_template` SET `minlevel`=50, `maxlevel`=50, `BaseAttackTime`=2876 WHERE `entry`=1863; -- Succubus
UPDATE `creature_template` SET `minlevel`=50, `maxlevel`=50, `BaseAttackTime`=2876 WHERE `entry`=184600; -- Incubus
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=44780; -- Isashi
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=44779; -- Owato
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=58199; -- Lord Itharius
UPDATE `creature_template` SET `gossip_menu_id`=12240 WHERE `entry`=47321; -- Zugra Flamefist
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=174147; -- Archivist Sylvia
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=141920; -- Traveling Son
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=141912; -- Traveling Warrior
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=140462; -- Hermf

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=63085; -- Snappy
UPDATE `creature_template` SET `npcflag`=281474976710659 WHERE `entry`=133523; -- Ji Firepaw

UPDATE `creature_template` SET `gossip_menu_id`=12040 WHERE `entry`=45563; -- Tinza Silvermug
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=149409; -- Silvermoon Adventurer
UPDATE `creature_template` SET `BaseAttackTime`=1575 WHERE `entry`=58959; -- Fel Imp

UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=44782; -- Rento

UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=44787; -- Auctioneer Sowata
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=3322; -- Kaja
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=44783; -- Hiwahi Three-Feathers
UPDATE `creature_template` SET  `minlevel`=60, `unit_flags3`=8388608 WHERE `entry`=15188; -- Cenarion Emissary Blackhoof
UPDATE `creature_template` SET `faction`=83, `npcflag`=0 WHERE `entry`=3084; -- Bluffwatcher
UPDATE `creature_template` SET `minlevel`=16, `maxlevel`=16, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=191387; -- Primal Stormling
UPDATE `creature_template` SET `gossip_menu_id`=20009 WHERE `entry`=109912; -- Captive Wyrmtongue
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=141528; -- Clara Spelldriver
UPDATE `creature_template` SET `minlevel`=60, `npcflag`=1125899906842625 WHERE `entry`=29143; -- Bebri Coifcurl
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=714, `npcflag`=128, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=179897; -- Ca'nees
UPDATE `creature_template` SET `BaseAttackTime`=1701 WHERE `entry`=78116; -- Water Elemental
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=115786; -- Sharptalon Hatchling
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=1735, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=198542; -- Destia
UPDATE `creature_template` SET `faction`=35, `npcflag`=16777216, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=198557; -- Kalcifer
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=1735, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=198553; -- Razmu
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `npcflag`=16777216, `BaseAttackTime`=2000, `unit_flags2`=2048, `dynamicflags`=128 WHERE `entry`=187987; -- Shiri's Shipment
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=141310; -- Associate Telemancer Rafcav
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`=19177; -- Troll Commoner
UPDATE `creature_template` SET `npcflag`=1 WHERE `entry`=44158; -- Orgrimmar Skyway Peon

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3341, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=198541; -- Zurenoth
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3341, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=198497; -- Nathenaseth

UPDATE `creature_template` SET `gossip_menu_id`=12520 WHERE `entry`=49750; -- Warchief's Herald
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=149408; -- Zandalar Adventurer

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=137762; -- Take a potion

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=135202; -- Meet your team
UPDATE `creature_template` SET `gossip_menu_id`=23765 WHERE `entry`=133186; -- Leyline Navigator
UPDATE `creature_template` SET `gossip_menu_id`=23767 WHERE `entry`=149279; -- Stoki Wonderwand
UPDATE `creature_template` SET `npcflag`=129 WHERE `entry`=6566; -- Estelle Gendry

UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=148250; -- Silvermoon Magistrix
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=148242; -- Silvermoon Magister
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=145714; -- Use the Portal to Zuldazar
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3270, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=34816 WHERE `entry`=197288; -- Skarukaru
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3270, `npcflag`=4224, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=184810; -- Boss Magor
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3270, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=184809; -- Cataloger Coralie
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3270, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=184808; -- Pathfinder Tacha
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=104859648, `unit_flags3`=1 WHERE `entry`=199726; -- (Bunny) Sessile + Large AOI
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3270, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=197279; -- Naleidea Rivergleam
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=2785, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=198412; -- Mayla Highmountain
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=104, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=198411; -- Baine Bloodhoof
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=189075; -- Seagull
UPDATE `creature_template` SET `faction`=554 WHERE `entry`=175156; -- Voidwalker Minion
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=35, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=190239; -- Ebyssian
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `faction`=2110, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=193450; -- Archmage Khadgar
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3270, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=184858; -- Scalecommander Cindrethresh
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=184814; -- Rugged Artisan
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=184812; -- Restless Explorer
UPDATE `creature_template` SET `BaseAttackTime`=1740 WHERE `entry`=58960; -- Voidlord
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=198476; -- Kodethi
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=198475; -- Scalecommander Emberthal
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=1735, `npcflag`=130, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=195899; -- Storm Huntress Suhrakka
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=60, `BaseAttackTime`=1812 WHERE `entry`=1860; -- Voidwalker
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=198434; -- Dracthyr Evoker
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=29, `faction`=35, `speed_walk`=6, `speed_run`=2.142857074737548828, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=17825793, `VehicleId`=8027 WHERE `entry`=200166; -- Bronze Drake
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=184813; -- Brave Researcher
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `faction`=2028, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=195385; -- Adventurous Tailor
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=3100; -- Elder Mottled Boar
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=2799, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=184671; -- First Arcanist Thalyssra
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=1604, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=184665; -- Lor'themar Theron
UPDATE `creature_template` SET `minlevel`=11, `BaseAttackTime`=1761 WHERE `entry`=416; -- Imp
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `faction`=2028, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=195357; -- Grok Thickfoot
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=100665344, `unit_flags3`=1 WHERE `entry`=180701; -- (Bunny) Sessile
UPDATE `creature_template` SET `minlevel`=50, `BaseAttackTime`=1802 WHERE `entry`=143622; -- Wild Imp
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=189554; -- Expedition Provisioner
UPDATE `creature_template` SET `minlevel`=24, `speed_run`=1.142857193946838378, `BaseAttackTime`=1620 WHERE `entry`=17252; -- Felguard

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=103159; -- Baby Winston

UPDATE `creature_template` SET `speed_run`=1.257142901420593261 WHERE `entry`=175572; -- Sinfall Guarantor

UPDATE `creature_template` SET `minlevel`=7, `BaseAttackTime`=1715 WHERE `entry`=165189; -- Generic Hunter Pet
UPDATE `creature_template` SET `minlevel`=18, `BaseAttackTime`=1708 WHERE `entry`=26125; -- Risen Ghoul

UPDATE `smart_scripts` SET `event_param2`='20' WHERE  `entryorguid`=364374 AND `source_type`=1 AND `id`=0 AND `link`=0;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=177293;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=177295;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=177646;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=178152;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=178191;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=36845;
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`) VALUES ('34520', 'If you want go get big tongue baby !', '12', '100');
UPDATE `smart_scripts` SET `action_type`='133' WHERE  `entryorguid`=17826 AND `source_type`=0 AND `id`=13 AND `link`=14;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (16159, 0, 0, 'Am I hearing things?', 12, 0, 100, 0, 0, 0, 0, 13252, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (16159, 0, 1, 'Who goes there?', 12, 0, 100, 0, 0, 0, 0, 13251, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (16159, 0, 2, 'All quiet.', 12, 0, 100, 0, 0, 0, 0, 13250, 0, '');
DELETE FROM `smart_scripts` WHERE  `entryorguid`=15184 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `action_param1`='234320' WHERE  `entryorguid`=11032 AND `source_type`=0 AND `id`=1 AND `link`=0;
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (11016, 0, 0, 'I\\\'m ready, $n. Let\\\'s find my equipment and get out of here. I think I know where it is.', 12, 0, 100, 1, 0, 0, 0, 6433, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (11016, 1, 0, 'We\\\'ve failed, $n!!', 12, 0, 100, 0, 0, 0, 0, 6434, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (11016, 2, 0, 'Oh my! Look at this... all these candles. I\\\'m sure they\\\'re used for some terrible ritual or dark summoning. We best make haste!', 12, 0, 100, 5, 0, 0, 0, 6456, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (11016, 3, 0, 'There! Over there!', 12, 0, 100, 25, 0, 0, 0, 6457, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (11016, 4, 0, 'All I need now is a golden lasso.', 12, 0, 100, 15, 0, 0, 0, 6458, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (11016, 5, 0, 'Let\\\'s get out of here, $n. I\\\'m ready now!', 12, 0, 100, 0, 0, 0, 0, 6459, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (11016, 6, 0, 'DIE, DEMON DOGS!', 12, 0, 100, 0, 0, 0, 0, 6460, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (11016, 7, 0, 'Ah! Fresh air at last! I never thought I\\\'d see the day...', 12, 0, 100, 0, 0, 0, 0, 6461, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (11016, 8, 0, 'What was that?! Trey? TREY!?', 12, 0, 100, 5, 0, 0, 0, 6463, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (11016, 9, 0, 'NO! What have they done to you!?', 12, 0, 100, 0, 0, 0, 0, 6467, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (11016, 10, 0, 'No! My friend... what\\\'s happened? This is all my fault...', 12, 0, 100, 18, 0, 0, 0, 6468, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (11016, 11, 0, 'I can travel faster on my own from here, $n. Meet Jessir Moonbow near Ashenvale. She should be with the druids of the Emerald Circle. She\\\'ll tell you what to do next. Thank you so much for your help!', 12, 0, 100, 1, 0, 0, 0, 6469, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (11016, 12, 0, 'You will not stop me from escaping here, $r!', 12, 0, 100, 0, 0, 0, 0, 6803, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (11016, 12, 1, 'You kept me in that cell for too long, monster!', 12, 0, 100, 0, 0, 0, 0, 6802, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (11016, 12, 2, 'You will pay for what you\\\'ve done to Trey!', 12, 0, 100, 0, 0, 0, 0, 6803, 0, '');
DELETE FROM `smart_scripts` WHERE  `entryorguid`=10979 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=10824 AND `source_type`=0 AND `id`=0 AND `link`=0;
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('10740', '%s whimpers.', '16', '100', '6270');
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('10717', '%s is summoned through a temporal rift!', '16', '100', '6033');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=10668;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=10425 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=9538;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=9522;
UPDATE `quest_template_addon` SET `SpecialFlags`='32' WHERE  `ID`=10935;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=59354;
UPDATE `smart_scripts` SET `action_param1`='120' WHERE  `entryorguid`=7750 AND `source_type`=0 AND `id`=1 AND `link`=0;
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Language`, `Probability`, `BroadcastTextId`) VALUES ('7843', 'Aaaaahhh! So close to escaping.', '12', '7', '100', '3829');
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('7671', '%s\\\'s physical form is weakened. You notice the Stone of Binding near the creature is glowing! Strike now!', '41', '100', '3642');
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('7670', '%s\\\'s physical form is weakened. You notice the Stone of Binding near the creature is glowing! Strike now!', '41', '100', '3642');
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('7669', '%s\\\'s physical form is weakened. You notice the Stone of Binding near the creature is glowing! Strike now!', '41', '100', '3642');
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('7668', '%s\\\'s physical form is weakened. You notice the Stone of Binding near the creature is glowing! Strike now!', '41', '100', '3642');
REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `BroadcastTextId`) VALUES ('7572', 'Per your request, Corporal Splithoof has come, $n.', '12', '100', '3764');
DELETE FROM `smart_scripts` WHERE  `entryorguid`=7843 AND `source_type`=0 AND `id`=4 AND `link`=0;

DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=169 AND `SourceEntry`=4298 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=12714 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=169 AND `SourceEntry`=4737 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=47 AND `ConditionTarget`=0 AND `ConditionValue1`=14116 AND `ConditionValue2`=11 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=169 AND `SourceEntry`=4755 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=14078 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=169 AND `SourceEntry`=4756 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=28 AND `ConditionTarget`=0 AND `ConditionValue1`=14091 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=169 AND `SourceEntry`=5140 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=28598 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=169 AND `SourceEntry`=5140 AND `SourceId`=0 AND `ElseGroup`=2 AND `ConditionTypeOrReference`=28 AND `ConditionTarget`=0 AND `ConditionValue1`=28598 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=169 AND `SourceEntry`=5424 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=28598 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=169 AND `SourceEntry`=5424 AND `SourceId`=0 AND `ElseGroup`=2 AND `ConditionTypeOrReference`=28 AND `ConditionTarget`=0 AND `ConditionValue1`=28598 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=169 AND `SourceEntry`=5833 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=47 AND `ConditionTarget`=0 AND `ConditionValue1`=29798 AND `ConditionValue2`=73 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=169 AND `SourceEntry`=7705 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=193525 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=169 AND `SourceEntry`=7705 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=40076 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=169 AND `SourceEntry`=7705 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=14 AND `ConditionTarget`=0 AND `ConditionValue1`=40077 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=170 AND `SourceEntry`=0 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=28 AND `ConditionTarget`=0 AND `ConditionValue1`=14091 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=170 AND `SourceEntry`=4298 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=12714 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=170 AND `SourceEntry`=4720 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=47 AND `ConditionTarget`=0 AND `ConditionValue1`=14237 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=170 AND `SourceEntry`=4755 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=14159 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=171 AND `SourceEntry`=4298 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=12714 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=171 AND `SourceEntry`=4356 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=12706 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=171 AND `SourceEntry`=4356 AND `SourceId`=0 AND `ElseGroup`=2 AND `ConditionTypeOrReference`=28 AND `ConditionTarget`=0 AND `ConditionValue1`=12706 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=171 AND `SourceEntry`=4720 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=47 AND `ConditionTarget`=0 AND `ConditionValue1`=14237 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=171 AND `SourceEntry`=4755 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=14159 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=174 AND `SourceEntry`=4298 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=52693 AND `ConditionValue2`=2 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=175 AND `SourceEntry`=4298 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=12778 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=175 AND `SourceEntry`=4298 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=28 AND `ConditionTarget`=0 AND `ConditionValue1`=12779 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=176 AND `SourceEntry`=4298 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=9 AND `ConditionTarget`=0 AND `ConditionValue1`=12800 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=180 AND `SourceEntry`=4714 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=14375 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=180 AND `SourceEntry`=4714 AND `SourceId`=4786 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=14222 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=180 AND `SourceEntry`=4720 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=47 AND `ConditionTarget`=0 AND `ConditionValue1`=14245 AND `ConditionValue2`=66 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=5310 AND `SourceEntry`=7741 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=40077 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=5310 AND `SourceEntry`=7741 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=28 AND `ConditionTarget`=0 AND `ConditionValue1`=40077 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=8840 AND `SourceEntry`=2 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=47867 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=8840 AND `SourceEntry`=2 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=28 AND `ConditionTarget`=0 AND `ConditionValue1`=47867 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=8840 AND `SourceEntry`=3 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=47222 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=8840 AND `SourceEntry`=3 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=28 AND `ConditionTarget`=0 AND `ConditionValue1`=47222 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=11292 AND `SourceEntry`=324 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=53194 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=11292 AND `SourceEntry`=324 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=53194 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=11292 AND `SourceEntry`=9734 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=53194 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=26 AND `SourceGroup`=11292 AND `SourceEntry`=9734 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=53194 AND `ConditionValue2`=0 AND `ConditionValue3`=0;

DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=1000 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=8808 AND `ConditionValue2`=4 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=1001 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=8805 AND `ConditionValue2`=4 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=1002 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=8799 AND `ConditionValue2`=4 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=1003 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=5834 AND `ConditionValue2`=4 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=1004 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=8809 AND `ConditionValue2`=4 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=1005 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=8808 AND `ConditionValue2`=5 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=1006 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=8805 AND `ConditionValue2`=5 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=1007 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=8799 AND `ConditionValue2`=5 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=1008 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=5834 AND `ConditionValue2`=5 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=1009 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=8809 AND `ConditionValue2`=5 AND `ConditionValue3`=0;

UPDATE `creature_loot_template` SET `Reference`='0' WHERE  `Reference`=104;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=2002;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=2207;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=177443;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=44614;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=177422;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=177354;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=185813;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=180511;


DELETE FROM `quest_objectives` WHERE `ID`=291653;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES (291653, 48196, 0, 0, 1, 127149, 1, 0, 0, 0, 'Hotshot found', 45114);

DELETE FROM `creature_template` WHERE `entry`=127149;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_class`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (127149, 0, 0, 0, 0, 0, 'Hotshot', 'Hotshot', NULL, NULL, 'questinteract', 127149, 15, 50, 7, 0, 0, 35, 1, 1, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 1, 0, 34817, 8193, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 1, 0.2, 1, 0, 0, 132527, 0, 0, 1, 0, 0, 0, '', 45114);

REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(197770, 224326, 1, 1),
(197771, 224326, 1, 1),
(187987, 370848, 3, 1),
(198557, 224326, 1, 1),
(185352, 366953, 3, 1),
(185305, 366812, 1, 1),
(198509, 224326, 1, 1),
(83670, 167955, 1, 1),
(78906, 161978, 3, 1),
(78905, 161978, 3, 1);


DELETE FROM `creature_equip_template` WHERE (`ID`=1 AND `CreatureID` IN (189077,189600,193921,143643,143645,143542,143415,143534,192527,192505)) OR (`ID`=3 AND `CreatureID`=140308);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(189077, 1, 194962, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Toddy Whiskers
(189600, 1, 150577, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- High Exarch Turalyon
(193921, 1, 47104, 0, 0, 47104, 0, 0, 0, 0, 0, 46741), -- Master Mathias Shaw
(140308, 3, 11684, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Thaelin Darkanvil
(143643, 1, 163599, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Anvil-Thane Thurgaden
(143645, 1, 32537, 0, 0, 32537, 0, 0, 0, 0, 0, 46741), -- Dark Iron Cultist
(143542, 1, 3433, 0, 0, 0, 0, 0, 5870, 0, 0, 46741), -- Gezzrok the Keeper
(143415, 1, 3433, 0, 0, 0, 0, 0, 5870, 0, 0, 46741), -- Flamewalker Sentinel
(143534, 1, 163683, 0, 0, 163598, 0, 0, 0, 0, 0, 46741), -- Thaelin Darkanvil
(192527, 1, 1899, 0, 0, 143, 0, 0, 0, 0, 0, 46741), -- Embassy Guard
(192505, 1, 155765, 0, 0, 0, 0, 0, 0, 0, 0, 46741); -- SI:7 Agent

UPDATE `creature_equip_template` SET `VerifiedBuild`=46741 WHERE (`ID`=1 AND `CreatureID` IN (143098,51348,193450,29712,29152,5504,42421,4984,29016,29088,68,36674,1976,176241,44395,137391,140307,133675,141079,50307,133433,141030,88067,133441)) OR (`ID`=9 AND `CreatureID`=139088) OR (`ID`=2 AND `CreatureID` IN (29016,133675)) OR (`ID`=3 AND `CreatureID`=29016) OR (`ID`=4 AND `CreatureID`=133675);

DELETE FROM `areatrigger_template` WHERE (`IsServerSide`=0 AND `Id` IN (19388,19382,29625,27842,6426));
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(19388, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 46741),
(19382, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 46741),
(29625, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 46741),
(27842, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 46741),
(6426, 0, 1, 4, 5.5, 4, 2.5, 5.5, 4, 2.5, 0, 0, 46741);

UPDATE `areatrigger_template` SET `VerifiedBuild`=46741 WHERE (`Id`=27633 AND `IsServerSide`=0);


DELETE FROM `conversation_line_template` WHERE `Id` IN (21854, 21853, 21852, 21851, 49025, 21623, 21622, 21621, 21620, 21619, 21618, 21617, 21616, 22199, 21581, 21580, 21579, 21578, 21577, 21576, 21709, 21708, 21707, 21706, 21705, 21704, 21703, 21702, 21701, 21700, 21699, 21698, 21667, 21666, 21691, 21689, 21688, 21687, 21686, 21685);
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(21854, 0, 2, 0, 46741),
(21853, 0, 1, 0, 46741),
(21852, 0, 0, 0, 46741),
(21851, 0, 0, 0, 46741),
(49025, 0, 0, 0, 46741),
(21623, 0, 0, 0, 46741),
(21622, 0, 0, 0, 46741),
(21621, 0, 0, 0, 46741),
(21620, 0, 0, 0, 46741),
(21619, 0, 1, 0, 46741),
(21618, 0, 1, 0, 46741),
(21617, 0, 1, 0, 46741),
(21616, 0, 1, 0, 46741),
(22199, 0, 0, 1, 46741),
(21581, 0, 1, 0, 46741),
(21580, 0, 0, 0, 46741),
(21579, 0, 1, 0, 46741),
(21578, 0, 0, 0, 46741),
(21577, 0, 1, 0, 46741),
(21576, 0, 0, 0, 46741),
(21709, 0, 1, 0, 46741),
(21708, 0, 0, 0, 46741),
(21707, 0, 1, 0, 46741),
(21706, 0, 0, 0, 46741),
(21705, 0, 1, 0, 46741),
(21704, 0, 0, 0, 46741),
(21703, 0, 1, 0, 46741),
(21702, 0, 0, 0, 46741),
(21701, 0, 1, 0, 46741),
(21700, 0, 0, 0, 46741),
(21699, 0, 1, 0, 46741),
(21698, 0, 0, 0, 46741),
(21667, 0, 0, 0, 46741),
(21666, 0, 0, 0, 46741),
(21691, 0, 1, 0, 46741),
(21689, 0, 0, 0, 46741),
(21688, 0, 1, 0, 46741),
(21687, 0, 0, 0, 46741),
(21686, 0, 1, 0, 46741),
(21685, 0, 0, 0, 46741);


DELETE FROM `quest_offer_reward` WHERE `ID` IN (70050 /*-Unknown-*/, 66596 /*-Unknown-*/, 53566 /*Dark Iron Dwarves*/, 51474 /*Forged in Fire an' Flame*/, 53352 /*Firelands*/, 53342 /*Molten Core*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(70050, 1, 0, 0, 0, 0, 0, 0, 0, 'If you\'re heading into those storms, you\'re going to need all the help you can get.\n\nLucky for you, I\'ve been stocking up on storm-chasing gear for years.\n\nTake a look, and see what fits.', 46741), -- -Unknown-
(66596, 1, 0, 0, 0, 0, 0, 0, 0, 're not present to witness Raszageth\'s release as we were, no', 46741), -- -Unknown-
(53566, 1, 1, 0, 0, 0, 0, 0, 0, 'And so ends the tale of how the Dark Iron dwarves joined the Alliance.\n\nThose who we once believed to be enemies of the Alliance are now close allies. Their mastery over the earth continues to help the Alliance.\n\nThere\'s an important lesson here, $n. Even amongst our fiercest enemies are those who may one day become allies.', 46741), -- Dark Iron Dwarves
(51474, 1, 0, 0, 0, 0, 0, 0, 0, 'We\'re grateful to ye, $n.', 46741), -- Forged in Fire an' Flame
(53352, 1, 0, 0, 0, 0, 0, 0, 0, 'High Justice Grimstone calls himself the Herald o\' Ragnaros now, does he? That traitor will rue the day he turned his back on the Dark Iron dwarves.', 46741), -- Firelands
(53342, 1, 0, 0, 0, 0, 0, 0, 0, 'Good work, $n. That fragment gets us a long way toward fixin\' the Black Anvil.', 46741); -- Molten Core


DELETE FROM `quest_poi` WHERE (`QuestID`=70050 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=70050 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66458 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=66458 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66458 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66458 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66596 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66596 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66596 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(70050, 0, 1, 32, 0, 0, 0, 84, 0, 0, 0, 0, 0, 2196835, 0, 46741), -- -Unknown-
(70050, 0, 0, -1, 0, 0, 0, 84, 0, 0, 0, 0, 0, 2258380, 0, 46741), -- -Unknown-
(66458, 0, 3, 32, 0, 0, 0, 84, 0, 2, 0, 0, 0, 0, 0, 46741), -- -Unknown-
(66458, 0, 2, 1, 427353, 136494, 2451, 2072, 0, 2, 0, 0, 0, 0, 0, 46741), -- -Unknown-
(66458, 0, 1, 0, 427004, 193761, 2451, 2072, 0, 2, 0, 0, 0, 0, 0, 46741), -- -Unknown-
(66458, 0, 0, -1, 0, 0, 0, 84, 0, 2, 0, 0, 0, 0, 0, 46741), -- -Unknown-
(66596, 0, 2, 32, 0, 0, 0, 84, 0, 0, 0, 0, 0, 2242655, 0, 46741), -- -Unknown-
(66596, 0, 1, 0, 429749, 184776, 0, 84, 0, 2, 0, 0, 0, 0, 0, 46741), -- -Unknown-
(66596, 0, 0, -1, 0, 0, 0, 84, 0, 0, 0, 0, 0, 2242661, 0, 46741); -- -Unknown-

UPDATE `quest_poi` SET `VerifiedBuild`=46741 WHERE (`QuestID`=53566 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=53566 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=51474 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=51474 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=51474 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53352 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=53352 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53352 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62866 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62866 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61983 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61983 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61983 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60136 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60136 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=57249 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=57249 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=57249 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53342 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=53342 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=53342 AND `BlobIndex`=2 AND `Idx1`=4) OR (`QuestID`=53342 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=53342 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=53342 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53342 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=70050 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=70050 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66458 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=66458 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66458 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66458 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66596 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66596 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66596 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(70050, 1, 0, -8641, 1328, 5, 46741), -- -Unknown-
(70050, 0, 0, -8611, 1289, 5, 46741), -- -Unknown-
(66458, 3, 0, -8647, 1326, 0, 46741), -- -Unknown-
(66458, 2, 0, 591, -632, 0, 46741), -- -Unknown-
(66458, 1, 0, 429, -765, 0, 46741), -- -Unknown-
(66458, 0, 0, -8649, 1330, 0, 46741), -- -Unknown-
(66596, 2, 0, -8647, 1324, 5, 46741), -- -Unknown-
(66596, 1, 0, -8650, 1323, 0, 46741), -- -Unknown-
(66596, 0, 0, -8648, 1329, 5, 46741); -- -Unknown-

UPDATE `quest_poi_points` SET `VerifiedBuild`=46741 WHERE (`QuestID`=53566 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53566 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=51474 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=51474 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=51474 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53352 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=53352 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53352 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62866 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62866 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61983 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61983 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61983 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60136 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60136 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53436 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53436 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53342 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=53342 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=53342 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=53342 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=53342 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=53342 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53342 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (70050 /*-Unknown-*/, 70048 /*-Unknown-*/, 66458 /*-Unknown-*/, 66596 /*-Unknown-*/, 53566 /*Dark Iron Dwarves*/, 51474 /*Forged in Fire an' Flame*/, 53352 /*Firelands*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(70050, 1, 25, 4, 0, 0, 0, 0, 0, 46741), -- -Unknown-
(70048, 1, 0, 0, 0, 0, 0, 0, 0, 46741), -- -Unknown-
(66458, 1, 0, 0, 0, 0, 0, 0, 0, 46741), -- -Unknown-
(66596, 1, 0, 0, 0, 0, 0, 0, 0, 46741), -- -Unknown-
(53566, 1, 1, 0, 0, 0, 0, 0, 0, 46741), -- Dark Iron Dwarves
(51474, 1, 1, 0, 0, 0, 0, 0, 0, 46741), -- Forged in Fire an' Flame
(53352, 1, 1, 0, 0, 0, 0, 0, 0, 46741); -- Firelands


DELETE FROM `quest_request_items` WHERE `ID` IN (53342 /*Molten Core*/, 51474 /*Forged in Fire an' Flame*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(53342, 0, 0, 0, 0, 'Sometimes it\'s hard tae understand Thaelin\'s ramblin\'s, but he\'s a smart one.', 0), -- Molten Core
(51474, 0, 0, 0, 0, 'Ye\'ve been a lifesaver, $n.', 46741); -- Forged in Fire an' Flame


DELETE FROM `creature_queststarter` WHERE (`id`=189077 AND `quest`=70050) OR (`id`=193450 AND `quest` IN (70048,66596)) OR (`id`=189569 AND `quest`=66458) OR (`id`=140309 AND `quest`=53566);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(189077, 70050, 46741), -- -Unknown- offered Toddy Whiskers
(193450, 70048, 46741), -- -Unknown- offered Archmage Khadgar
(189569, 66458, 46741), -- -Unknown- offered Wrathion
(193450, 66596, 46741), -- -Unknown- offered Archmage Khadgar
(140309, 53566, 46741); -- Dark Iron Dwarves offered Moira Thaurissan

UPDATE `creature_queststarter` SET `VerifiedBuild`=46741 WHERE (`id`=133197 AND `quest` IN (51474,53352));

DELETE FROM `creature_questender` WHERE (`id`=195912 AND `quest`=70050) OR (`id`=189569 AND `quest`=66596) OR (`id`=126332 AND `quest`=53566) OR (`id`=140309 AND `quest`=51474) OR (`id`=133197 AND `quest` IN (53352,53342));
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(195912, 70050, 46741), -- -Unknown- ended by Storm Hunter William
(189569, 66596, 46741), -- -Unknown- ended by Wrathion
(126332, 53566, 46741), -- Dark Iron Dwarves ended by Aysa Cloudsinger
(140309, 51474, 46741), -- Forged in Fire an' Flame ended by Moira Thaurissan
(133197, 53352, 46741), -- Firelands ended by Moira Thaurissan
(133197, 53342, 46741); -- Molten Core ended by Moira Thaurissan


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (197611,198079,194015,84915,189569,189079,189077,198383,198496,198408,189080,189076,193786,187193,189600,187196,198393,195830,193812,195912,189078,194199,193921,180538,194756,198515,198530,140380,140308,140309,140307,143643,143645,143534,143390,143416,143417,143405,143406,143414,192354,192527,133197,192505)) OR (`DifficultyID`=12 AND `Entry` IN (143607,143648,143975,189085,71925,112694,143567,143542,12265,143415));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(197611, 0, 0, 0, 2078, 46741),
(198079, 0, 0, 0, 2151, 46741),
(194015, 0, 0, 0, 2307, 46741),
(84915, 0, 0, 0, 371, 46741),
(189569, 0, 0, 0, 2437, 46741),
(189079, 0, 0, 0, 2151, 46741),
(189077, 0, 0, 0, 2151, 46741),
(198383, 0, 0, 0, 2151, 46741),
(198496, 0, 0, 0, 2151, 46741),
(198408, 0, 0, 0, 2151, 46741),
(189080, 0, 0, 0, 2151, 46741),
(189076, 0, 0, 0, 2151, 46741),
(193786, 0, 0, 0, 2151, 46741),
(187193, 0, 0, 0, 2151, 46741),
(189600, 0, 3, 3, 2148, 46741),
(187196, 0, 0, 0, 2151, 46741),
(198393, 0, 0, 0, 2150, 46741),
(195830, 0, 0, 0, 2151, 46741),
(193812, 0, 0, 0, 2151, 46741),
(195912, 0, 0, 0, 2172, 46741),
(189078, 0, 0, 0, 2151, 46741),
(194199, 0, 0, 0, 2151, 46741),
(193921, 0, 0, 0, 2078, 46741),
(180538, 0, 0, 0, 2078, 46741),
(194756, 0, 0, 0, 2148, 46741),
(198515, 0, 0, 0, 864, 46741),
(198530, 0, 0, 0, 864, 46741),
(140380, 0, 0, 0, 517, 46741),
(140308, 0, 0, 0, 464, 46741),
(140309, 0, 0, 0, 464, 46741),
(140307, 0, 0, 0, 464, 46741),
(143607, 12, 1, 1, 517, 46741),
(143648, 12, 0, 0, 517, 46741),
(143975, 12, 0, 0, 517, 46741),
(189085, 12, 0, 0, 482, 46741),
(71925, 12, 0, 0, 464, 46741),
(143643, 0, 0, 0, 464, 46741),
(143645, 0, 0, 0, 517, 46741),
(112694, 12, 0, 0, 332, 46741),
(143567, 12, 0, 0, 674, 46741),
(143542, 12, 0, 0, 517, 46741),
(12265, 12, 0, 0, 1004, 46741),
(143415, 12, 0, 0, 517, 46741),
(143534, 0, 0, 0, 517, 46741),
(143390, 0, 0, 0, 517, 46741),
(143416, 0, 0, 0, 517, 46741),
(143417, 0, 0, 0, 517, 46741),
(143405, 0, 0, 0, 517, 46741),
(143406, 0, 0, 0, 517, 46741),
(143414, 0, 0, 0, 517, 46741),
(192354, 0, 0, 0, 2150, 46741),
(192527, 0, 0, 0, 2150, 46741),
(133197, 0, 0, 0, 293, 46741),
(192505, 0, 0, 0, 2150, 46741);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46741 WHERE (`DifficultyID`=0 AND `Entry` IN (143098,43103,29019,51348,193450,189075,142641,141902,43102,198391,180701,11397,5504,3469,139088,4984,141554,44749,200166,29016,29152,36674,29144,29088,176223,4075,49540,29712,176236,15214,44880,176225,176241,176238,176234,176231,176227,176224,176246,176245,176243,176240,42782,176222,50435,50434,44395,20716,176242,42421,1412,137391,42098,88081,88080,1976,3681,14556,14555,50307,133408,172572,50305,4730,121541,4423,141020,133369,140253,12360,12359,12358,133362,133433,158125,158123,35168,158120,111190,158119,72654,126332,141054,112698,140403,141030,133409,55272,44807,167032,141079,112686,4753,88067,14602,55285,133441,55273,2442,141036,133675,721,32520,68)) OR (`DifficultyID`=12 AND `Entry`=73678);

DELETE FROM `creature_model_info` WHERE `DisplayID` IN (109896, 108853, 107146, 107015, 105170, 108842, 108846, 108866, 110238, 102175, 106766, 106741, 108857, 110232, 110237, 108855, 108854, 108810, 110338, 108812, 102032, 107861, 110164, 110174, 107891, 107885);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(109896, 0.382999986410140991, 1.5, 0, 46741),
(108853, 0.347000002861022949, 1.5, 0, 46741),
(107146, 0.481360882520675659, 0, 0, 46741),
(107015, 0.312299996614456176, 1.349999904632568359, 0, 46741),
(105170, 0.347000002861022949, 1.5, 0, 46741),
(108842, 0.208000004291534423, 1.5, 0, 46741),
(108846, 0.305999994277954101, 1.5, 0, 46741),
(108866, 0.347000002861022949, 1.5, 0, 46741),
(110238, 0.347222000360488891, 1.5, 0, 46741),
(102175, 0.649800002574920654, 1.799999952316284179, 0, 46741),
(106766, 0.305999994277954101, 1.5, 0, 46741),
(106741, 0.759269475936889648, 1.65000009536743164, 0, 46741),
(108857, 0.347222000360488891, 1.5, 0, 46741),
(110232, 0.347000002861022949, 1.5, 0, 46741),
(110237, 0.347222000360488891, 1.5, 0, 46741),
(108855, 1, 1.5, 0, 46741),
(108854, 1, 1.5, 0, 46741),
(108810, 0.305999994277954101, 1.5, 0, 46741),
(110338, 0.347222000360488891, 1.5, 0, 46741),
(108812, 0.208000004291534423, 1.5, 0, 46741),
(102032, 0.866400063037872314, 2.40000009536743164, 0, 46741),
(107861, 1, 1.5, 0, 46741),
(110164, 0.208000004291534423, 1.5, 0, 46741),
(110174, 0.722000002861022949, 2, 0, 46741),
(107891, 0.305999994277954101, 1.5, 0, 46741),
(107885, 0.305999994277954101, 1.5, 0, 46741);



UPDATE `creature_model_info` SET `VerifiedBuild`=46741 WHERE `DisplayID` IN (87815, 33220, 88847, 37311, 47166, 110387, 88608, 58570, 103903, 87694, 94032, 32939, 94031, 102031, 108913, 104846, 100074, 105247, 86655, 72253, 14755, 11044, 2244, 99506, 88609, 2256, 62093, 37114, 1461, 88605, 86663, 5078, 86657, 86658, 29642, 99501, 37117, 10624, 34115, 18164, 25847, 99505, 25848, 99503, 5008, 99504, 5003, 30284, 25341, 1418, 25899, 100162, 1141, 100173, 34160, 100164, 100178, 100175, 100171, 100169, 100166, 100163, 100186, 100185, 100180, 100177, 1659, 100161, 36792, 36791, 29961, 19732, 100179, 18054, 134, 82278, 38773, 96323, 82279, 82281, 71887, 4589, 85249, 82280, 257, 221, 72186, 80349, 2172, 19894, 87912, 12239, 12231, 83229, 10045, 14331, 93416, 14332, 93411, 81533, 37015, 82897, 328, 98008, 5446, 37014, 22612, 104844, 2788, 27823, 2451, 1460, 86665, 14615, 5131, 84989, 7996, 6448, 37112, 6444, 6080, 82874, 82918, 69892, 83233, 93415, 29755, 93413, 99389, 93408, 11686, 41667, 84990, 69893, 37122, 69890, 14613, 46929, 14614, 39096, 34117, 24877, 2306, 68845, 17200, 5070, 60711, 14632, 39100, 82928, 39095, 18890, 1060, 87023, 18889, 4626, 3167, 21342, 99391);
UPDATE `creature_model_info` SET `BoundingRadius`=0.305999994277954101, `CombatReach`=1.5, `VerifiedBuild`=46741 WHERE `DisplayID` IN (87508, 71246);
UPDATE `creature_model_info` SET `BoundingRadius`=0.520500004291534423, `CombatReach`=2.25, `VerifiedBuild`=46741 WHERE `DisplayID`=9329;
UPDATE `creature_model_info` SET `BoundingRadius`=3, `CombatReach`=4.5, `VerifiedBuild`=46741 WHERE `DisplayID`=87899;
UPDATE `creature_model_info` SET `BoundingRadius`=4.345299720764160156, `CombatReach`=10, `VerifiedBuild`=46741 WHERE `DisplayID`=87777;
UPDATE `creature_model_info` SET `BoundingRadius`=0.524999976158142089, `CombatReach`=6, `VerifiedBuild`=46741 WHERE `DisplayID`=12189;
UPDATE `creature_model_info` SET `BoundingRadius`=2.610027790069580078, `VerifiedBuild`=46741 WHERE `DisplayID`=12164;
UPDATE `creature_model_info` SET `BoundingRadius`=3.20148324966430664, `VerifiedBuild`=46741 WHERE `DisplayID`=8269;
UPDATE `creature_model_info` SET `BoundingRadius`=0.221895694732666015, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46741 WHERE `DisplayID`=72183;
UPDATE `creature_model_info` SET `BoundingRadius`=0.347000002861022949, `CombatReach`=1.5, `VerifiedBuild`=46741 WHERE `DisplayID`=82772;

DELETE FROM `creature_template_spell` WHERE (`CreatureID`=143390 AND `Index`=0);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(143390, 0, 279655, 46741); -- The Tank


DELETE FROM `gossip_menu` WHERE (`MenuID`=30048 AND `TextID`=1);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(30048, 1, 46741); -- 189077 (Toddy Whiskers)

UPDATE `gossip_menu` SET `VerifiedBuild`=46741 WHERE (`MenuID`=28626 AND `TextID`=1) OR (`MenuID`=22198 AND `TextID`=34007) OR (`MenuID`=22201 AND `TextID`=34011);
DELETE FROM `gossip_menu_option` WHERE (`MenuID`=22201 AND `OptionID` IN (0,2,1)) OR (`MenuID`=28626 AND `OptionID`=0);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(22201, 0, 0, '|cFF0000FF(Quest)|r I am ready to go to Blackrock Depths.', 161890, 0, 0, 0, 0, 0, NULL, 0, 46741), -- OptionBroadcastTextID: 161890 - 161890
(28626, 0, 0, '<Ask Khadgar what happened.>', 0, 0, 0, 0, 0, 0, NULL, 0, 46741),
(22201, 2, 0, '|cFF0000FF(Quest)|r I am ready to go to the Firelands.', 161901, 0, 0, 0, 0, 0, NULL, 0, 46741), -- OptionBroadcastTextID: 161901 - 161901
(22201, 1, 0, '|cFF0000FF(Quest)|r I am ready to go to Molten Core.', 161716, 0, 0, 0, 0, 0, NULL, 0, 46741); -- OptionBroadcastTextID: 161716 - 161716

DELETE FROM `creature_template` WHERE `entry` IN (197611 /*(Bunny) Sessile + Gigantic AOI*/, 198079 /*Chrovo*/, 194015 /*Wildfeather*/, 189569 /*Wrathion*/, 189079 /*Thaelin Darkanvil*/, 189077 /*Toddy Whiskers*/, 198383 /*Dracthyr Smith*/, 198496 /*Scalecommander Emberthal*/, 198408 /*Dervishian*/, 189080 /*Cataloger Wulferd*/, 189076 /*Pathfinder Jeb*/, 193786 /*Cataloguing Enthusiast*/, 187193 /*Brave Researcher*/, 189600 /*High Exarch Turalyon*/, 187196 /*Rugged Artisan*/, 198393 /*Dracthyr Evoker*/, 195830 /*Expedition Provisioner*/, 193812 /*Expedition Trainee*/, 195912 /*Storm Hunter William*/, 189078 /*Scalecommander Azurathel*/, 194199 /*Haephesta*/, 193921 /*Master Mathias Shaw*/, 180538 /*(Bunny) Sessile + Large AOI*/, 194756 /*Genn Greymane*/, 198515 /*Alzinathel*/, 198530 /*Emishalan*/, 189085 /*Past Self*/, 192354 /*Obsidian Warder*/, 192527 /*Embassy Guard*/, 192505 /*SI:7 Agent*/);
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(197611, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33554432, 104859648, 1, 0, 0, 1), -- (Bunny) Sessile + Gigantic AOI
(198079, 0, 62, 62, 3270, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Chrovo
(194015, 0, 62, 62, 3270, 0, 1, 1.385714292526245117, 2000, 0, 768, 2048, 0, 0, 0, 1), -- Wildfeather
(189569, 0, 70, 70, 35, 3, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Wrathion
(189079, 0, 62, 62, 3270, 1, 1, 1.142857193946838378, 2000, 0, 33536, 34816, 0, 0, 0, 1), -- Thaelin Darkanvil
(189077, 30048, 62, 62, 3270, 3, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Toddy Whiskers
(198383, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Dracthyr Smith
(198496, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Scalecommander Emberthal
(198408, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Dervishian
(189080, 0, 62, 62, 3270, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Cataloger Wulferd
(189076, 0, 62, 62, 3270, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Pathfinder Jeb
(193786, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Cataloguing Enthusiast
(187193, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Brave Researcher
(189600, 0, 63, 63, 1733, 1, 1.60000002384185791, 2, 1500, 0, 33536, 34816, 0, 0, 0, 1), -- High Exarch Turalyon
(187196, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Rugged Artisan
(198393, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Dracthyr Evoker
(195830, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Expedition Provisioner
(193812, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Expedition Trainee
(195912, 0, 60, 60, 3270, 130, 1, 1.142857193946838378, 2000, 0, 33536, 34816, 0, 0, 0, 1), -- Storm Hunter William
(189078, 0, 62, 62, 3270, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Scalecommander Azurathel
(194199, 0, 62, 62, 3270, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Haephesta
(193921, 0, 70, 70, 12, 1, 1, 1.142857193946838378, 2000, 0, 33600, 2048, 0, 0, 0, 1), -- Master Mathias Shaw
(180538, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33554432, 102762496, 1, 0, 0, 1), -- (Bunny) Sessile + Large AOI
(194756, 0, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 768, 34816, 0, 0, 0, 1), -- Genn Greymane
(198515, 0, 60, 60, 3340, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Alzinathel
(198530, 0, 60, 60, 3340, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Emishalan
(189085, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33587200, 335546368, 0, 0, 0, 1), -- Past Self
(192354, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 33556480, 1048576, 0, 0, 1), -- Obsidian Warder
(192527, 0, 60, 60, 12, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Embassy Guard
(192505, 0, 60, 60, 12, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1); -- SI:7 Agent




UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags2`=4196352 WHERE `entry`=143098; -- Captain Hicks
UPDATE `creature_template` SET `gossip_menu_id`=28626, `minlevel`=70, `maxlevel`=70, `faction`=2110, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=193450; -- Archmage Khadgar
UPDATE `creature_template` SET `minlevel`=27, `maxlevel`=27, `speed_run`=0.857142865657806396, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=84915; -- Molten Corgi
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=189075; -- Seagull
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=142641; -- Aron Kyleson
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=80, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=141902; -- Perrin Moontear
UPDATE `creature_template` SET `minlevel`=50, `maxlevel`=50, `BaseAttackTime`=1837 WHERE `entry`=1860; -- Voidwalker
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=198391; -- Dracthyr Belayer
UPDATE `creature_template` SET `minlevel`=16, `BaseAttackTime`=1566 WHERE `entry`=165189; -- Generic Hunter Pet
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=100665344, `unit_flags3`=1 WHERE `entry`=180701; -- (Bunny) Sessile
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=11397; -- Nara Meideros
UPDATE `creature_template` SET `unit_flags`=768, `unit_flags3`=1 WHERE `entry`=3469; -- Ancient of War
UPDATE `creature_template` SET `npcflag`=0, `unit_flags3`=8388608 WHERE `entry`=139088; -- Boralus Guard
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=4984; -- Argos Nightwhisper
UPDATE `creature_template` SET `faction`=1076, `speed_run`=1.714285731315612792, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=141554; -- Glaive Thrower
UPDATE `creature_template` SET `minlevel`=12, `maxlevel`=13, `faction`=35, `speed_walk`=6, `speed_run`=2.142857074737548828, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=17825793, `VehicleId`=8027 WHERE `entry`=200166; -- Bronze Drake
UPDATE `creature_template` SET `npcflag`=1 WHERE `entry`=36674; -- Nambria
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=1665, `BaseAttackTime`=2000, `unit_flags`=33600, `unit_flags2`=33556480 WHERE `entry`=140380; -- Drukan
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=137391; -- Dark Iron Earthbreaker
UPDATE `creature_template` SET `faction`=1732, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=140308; -- Thaelin Darkanvil
UPDATE `creature_template` SET `minlevel`=50, `maxlevel`=50, `faction`=1733, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=140309; -- Moira Thaurissan
UPDATE `creature_template` SET `faction`=1732, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=140307; -- Anvil-Thane Thurgaden
UPDATE `creature_template` SET `minlevel`=61, `maxlevel`=61, `BaseAttackTime`=2000, `unit_flags`=576, `unit_flags2`=2048 WHERE `entry`=143607; -- High Justice Grimstone
UPDATE `creature_template` SET `minlevel`=60, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2099200 WHERE `entry`=143648; -- Lava Burster
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=1081, `BaseAttackTime`=2800, `unit_flags`=33555264, `unit_flags2`=71829504, `unit_flags3`=16777216 WHERE `entry`=143975; -- Ragnaros
UPDATE `creature_template` SET `faction`=2959, `speed_run`=1 WHERE `entry`=71925; -- Magma Totem
UPDATE `creature_template` SET `unit_flags3`=25165825 WHERE `entry`=42098; -- Invisible Stalker (Cataclysm Boss, Ignore Combat, Floating)
UPDATE `creature_template` SET `faction`=2959, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2099200, `unit_flags3`=524288 WHERE `entry`=143643; -- Anvil-Thane Thurgaden
UPDATE `creature_template` SET `minlevel`=60, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=143645; -- Dark Iron Cultist
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=143567; -- Mole Machine to Stormwind
UPDATE `creature_template` SET `minlevel`=60, `faction`=16, `speed_run`=1.714285731315612792, `BaseAttackTime`=2000, `unit_flags`=848, `unit_flags2`=2048 WHERE `entry`=143542; -- Gezzrok the Keeper
UPDATE `creature_template` SET `BaseAttackTime`=1500, `unit_flags2`=2099200, `unit_flags3`=524288 WHERE `entry`=12265; -- Lava Spawn
UPDATE `creature_template` SET `minlevel`=60, `faction`=16, `speed_run`=1.714285731315612792, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2048 WHERE `entry`=143415; -- Flamewalker Sentinel
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=143534; -- Thaelin Darkanvil
UPDATE `creature_template` SET `minlevel`=60, `faction`=2580, `speed_walk`=6, `speed_run`=2.142857074737548828, `BaseAttackTime`=2000, `RangeAttackTime`=0, `unit_flags2`=2048, `unit_flags3`=1, `VehicleId`=6248 WHERE `entry`=143390; -- The Tank
UPDATE `creature_template` SET `minlevel`=60, `faction`=54, `speed_walk`=1.20000004768371582, `speed_run`=1.714285731315612792, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2048 WHERE `entry`=143416; -- Ancient Core Hound
UPDATE `creature_template` SET `minlevel`=60, `faction`=16, `speed_run`=2.285714387893676757, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2048 WHERE `entry`=143417; -- Lava Surger
UPDATE `creature_template` SET `minlevel`=60, `faction`=16, `speed_run`=1.714285731315612792, `BaseAttackTime`=1500, `unit_flags`=64, `unit_flags2`=2048 WHERE `entry`=143405; -- Blazing Elemental
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=16, `speed_run`=2.285714387893676757, `BaseAttackTime`=1600, `unit_flags`=64, `unit_flags2`=2048 WHERE `entry`=143406; -- Lava Annihilator
UPDATE `creature_template` SET `minlevel`=60, `faction`=16, `speed_run`=1.714285731315612792, `BaseAttackTime`=2000, `unit_flags2`=2099200 WHERE `entry`=143414; -- Molten Giant

UPDATE `creature_template` SET `unit_flags`=768, `unit_flags3`=1 WHERE `entry`=3681; -- Wisp
UPDATE `creature_template` SET `unit_flags`=768, `unit_flags3`=1 WHERE `entry`=50307; -- Lord Candren
UPDATE `creature_template` SET `unit_flags`=768, `unit_flags3`=1 WHERE `entry`=50305; -- Moon Priestess Lasara
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`=4730; -- Lelanai
UPDATE `creature_template` SET `unit_flags`=33536, `unit_flags3`=1 WHERE `entry`=4423; -- Darnassian Protector
UPDATE `creature_template` SET `gossip_menu_id`=22198 WHERE `entry`=126332; -- Aysa Cloudsinger

UPDATE `creature_template` SET `gossip_menu_id`=22201, `unit_flags`=33536 WHERE `entry`=133197; -- Moira Thaurissan
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`=55285; -- Astrid Langstrump
UPDATE `creature_template` SET `speed_run`=1 WHERE `entry`=141036; -- Pumpkin Stalker
UPDATE `creature_template` SET `speed_run`=1.428571462631225585 WHERE `entry`=68; -- Stormwind City Guard


DELETE FROM `quest_template` WHERE `ID` IN (70050 /*-Unknown-*/, 70048 /*-Unknown-*/, 66458 /*-Unknown-*/, 66596 /*-Unknown-*/);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestPackageID`, `ContentTuningID`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitGiverModelSceneID`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `QuestSessionBonus`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(70050, 2, 0, 2573, 13642, 0, 0, 67700, 1, 1, 1, 1, 7750, 0, 0, 0, 0, 0, 1, 0, 37748736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 6130900294268439629, 0, 0, 0, 0, 'Chasing Storms', 'Speak with Storm Hunter William in Stormwind Harbor.', 'So the handsome fellas are sendin\' ye on a wee adventure, eh?\n\nThat\'s fine. The expedition won\'t be able to set sail until someone gets those elemental storms under control anyway.\n\nCheck-in with Storm Hunter William. He\'s leading the expedition efforts to investigate the storms and can outfit ye with whatever gear you need.\n\nI\'ll coordinate the rest of the preparations here while ye have all the fun out there.\n\nYe\'ll owe me one, though!', '', 'Speak with Storm Hunter William in Stormwind Harbor.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46741), -- -Unknown-
(70048, 2, 0, 2573, 1519, 0, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 199211, 199109, 0, 0, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 6130900294268439629, 0, 0, 0, 0, 'A Primal Threat', 'Gather $1oa Motes of Primal Energy from enemies in active primal storm locations throughout Kalimdor and the Eastern Kingdoms.', 'Raszageth has wasted no time building up her Primalist forces.\n\nThe Kirin Tor have detected massive storms being unleashed at key points across Kalimdor and the Eastern Kingdoms.\n\nThe Primalists are unleashing the elements to add to their strength. It seems they plan to cause chaos not only in the Dragon Isles, but in the lands of the Alliance and Horde as well.\n\nSeek out the enemy and study their methods. We have to stop them before it\'s too late.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46741), -- -Unknown-
(66458, 2, 19171, 2555, 1519, 81, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 33554440, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 6130900294268439629, 0, 8, 0, 0, 'Legacy of Tyr: Secrets of the Past', 'Enter Uldaman: Legacy of Tyr in the Badlands and recover the disc.', 'To stop Raszageth from freeing the other Incarnates, the power of the Aspects must be restored.\n\nInconveniently, the Titans are rather preoccupied and Keeper Tyr is long dead.\n\nQueen Alexstrasza has suggested a plan. In the depths of the Badlands lies a Titan facility called Uldaman. Apparently allies of Tyr may have hidden a disc of his memories there.\n \nWord is that the place has been overrun by troggs. Gather your allies, head to Uldaman, and seize the disc in the name of the Dragon Queen!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46741), -- -Unknown-
(66596, 2, 0, 2573, 13642, 0, 0, 0, 1, 1, 1, 1, 7750, 393770, 0, 0, 0, 0, 1, 0, 538968064, 4194304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 6130900294268439629, 0, 0, 0, 0, 'Whispers on the Winds', 'Speak with Archmage Khadgar in Stormwind.', 'Hello, $p. It\'s been a while, and I wish we had more time to catch up.\n\nBut you see, I\'ve just had a rather enlightening... no, make that foreboding... yes, a foreboding conversation with an old friend.\n\nSometimes a revelation can be both, after all.\n\nI really must tell you of what I\'ve learned.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46741); -- -Unknown-

UPDATE `quest_template` SET `VerifiedBuild`=46741 WHERE `ID` IN (56775, 27210, 26209, 43806, 40519, 58975, 61867, 58207, 61136, 60657, 61125, 66696, 62286, 62288, 60991, 61346, 60770, 49091, 66615, 54363, 59585, 58084, 64854, 62209, 63044, 65265, 48982, 66619, 60992, 61787, 60990, 61728, 62210, 60475, 61140, 60623, 59230, 58918, 61124, 61949, 62539, 59808, 61565, 61060, 49197, 60929, 61352, 65117, 60534, 60872, 65234, 61883, 60654, 59183, 60574, 62211, 59441, 60911, 60565, 49096, 60390, 60443, 60429, 46736, 46735, 46277, 62866, 61983, 60136, 57249);
UPDATE `quest_template` SET `RewardBonusMoney`=4200, `AllowableRaces`=6130900294268439629, `VerifiedBuild`=46741 WHERE `ID`=50046; -- It's a Sabotage
UPDATE `quest_template` SET `RewardBonusMoney`=1650, `VerifiedBuild`=46741 WHERE `ID`=28238; -- Twilight Shores
UPDATE `quest_template` SET `RewardBonusMoney`=3250, `VerifiedBuild`=46741 WHERE `ID`=14482; -- Call of Duty
UPDATE `quest_template` SET `AllowableRaces`=6130900294268439629, `VerifiedBuild`=46741 WHERE `ID`=46268; -- A Found Memento
UPDATE `quest_template` SET `RewardBonusMoney`=525, `VerifiedBuild`=46741 WHERE `ID`=42978; -- A Royal Audience
UPDATE `quest_template` SET `RewardBonusMoney`=525, `VerifiedBuild`=46741 WHERE `ID`=44700; -- Stormheim
UPDATE `quest_template` SET `RewardBonusMoney`=61750, `VerifiedBuild`=46741 WHERE `ID`=53566; -- Dark Iron Dwarves
UPDATE `quest_template` SET `RewardBonusMoney`=61750, `VerifiedBuild`=46741 WHERE `ID`=51474; -- Forged in Fire an' Flame
UPDATE `quest_template` SET `RewardCurrencyID1`=0, `RewardCurrencyQty1`=0, `VerifiedBuild`=46741 WHERE `ID`=54391; -- Darkshore Donations: Quick Golden Beryl
UPDATE `quest_template` SET `RewardCurrencyID1`=0, `RewardCurrencyQty1`=0, `VerifiedBuild`=46741 WHERE `ID`=54369; -- Darkshore Donations: Electroshock Mount Motivator
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `RewardFactionOverride2`=7500, `VerifiedBuild`=46741 WHERE `ID`=52782; -- Call to Arms: Stormsong Valley
UPDATE `quest_template` SET `RewardBonusMoney`=3150, `VerifiedBuild`=46741 WHERE `ID`=45840; -- Assault on Highmountain
UPDATE `quest_template` SET `RewardFactionOverride2`=7500, `VerifiedBuild`=46741 WHERE `ID`=59018; -- Call to Arms: Vale of Eternal Blossoms
UPDATE `quest_template` SET `RewardBonusMoney`=61750, `VerifiedBuild`=46741 WHERE `ID`=53352; -- Firelands
UPDATE `quest_template` SET `QuestSortID`=13536, `VerifiedBuild`=46741 WHERE `ID`=65335; -- News from Oribos
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46741 WHERE `ID`=53028; -- A Dying World
UPDATE `quest_template` SET `RewardBonusMoney`=7750, `VerifiedBuild`=46741 WHERE `ID`=46727; -- Battle for Azeroth: Tides of War
UPDATE `quest_template` SET `RewardBonusMoney`=8350, `VerifiedBuild`=46741 WHERE `ID`=42431; -- The Brood of Nithogg
UPDATE `quest_template` SET `RewardBonusMoney`=8350, `VerifiedBuild`=46741 WHERE `ID`=43241; -- Flow of the Nightmare
UPDATE `quest_template` SET `RewardBonusMoney`=8350, `VerifiedBuild`=46741 WHERE `ID`=38842; -- Faerie Fracas
UPDATE `quest_template` SET `RewardBonusMoney`=8350, `VerifiedBuild`=46741 WHERE `ID`=40316; -- The Screeching Crag
UPDATE `quest_template` SET `RewardBonusMoney`=8350, `VerifiedBuild`=46741 WHERE `ID`=39371; -- Witches of the Sky
UPDATE `quest_template` SET `RewardBonusMoney`=8350, `VerifiedBuild`=46741 WHERE `ID`=40050; -- Shipwreck Cove
UPDATE `quest_template` SET `RewardBonusMoney`=8350, `VerifiedBuild`=46741 WHERE `ID`=37779; -- Tip the Scales
UPDATE `quest_template` SET `RewardBonusMoney`=8350, `VerifiedBuild`=46741 WHERE `ID`=37965; -- A Tainted Vintage
UPDATE `quest_template` SET `RewardBonusMoney`=8350, `VerifiedBuild`=46741 WHERE `ID`=40111; -- Rout the Bilgefin Invaders
UPDATE `quest_template` SET `RewardBonusMoney`=8350, `VerifiedBuild`=46741 WHERE `ID`=37466; -- The Broken Academy
UPDATE `quest_template` SET `RewardFactionOverride2`=15000, `VerifiedBuild`=46741 WHERE `ID`=53436; -- Azerite for the Alliance
UPDATE `quest_template` SET `RewardBonusMoney`=61750, `VerifiedBuild`=46741 WHERE `ID`=53342; -- Molten Core

DELETE FROM `quest_objectives` WHERE `ID` IN (429731 /*429731*/, 427353 /*427353*/, 427004 /*427004*/, 429749 /*429749*/);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
(429731, 70048, 1, 0, 0, 192493, 10, 0, 1, 0, '', 46741), -- 429731
(427353, 66458, 14, 1, 1, 136494, 1, 2, 0, 0, '', 46741), -- 427353
(427004, 66458, 0, 0, 0, 193761, 1, 0, 0, 0, 'Disc of Tyr\'s memories recovered', 46741), -- 427004
(429749, 66596, 0, 0, 0, 184776, 1, 0, 0, 0, 'Speak with Archmage Khadgar', 46741); -- 429749

UPDATE `quest_objectives` SET `VerifiedBuild`=46741 WHERE `ID` IN (391353, 296295, 266167, 265836, 265757, 265756, 265755, 265754, 289293, 285830, 341454, 404547, 395236, 406765, 387078, 393819, 393820, 396692, 405249, 405171, 405228, 427561, 407607, 407611, 405227, 405657, 404568, 404567, 427325, 387022, 407664, 396533, 396532, 396528, 393628, 393643, 421561, 421560, 421559, 421563, 407425, 409050, 422647, 427333, 387034, 405143, 406712, 406321, 406588, 407428, 398341, 398338, 405251, 405281, 405280, 405271, 405270, 405269, 399076, 399075, 399074, 399073, 399072, 399071, 396185, 395108, 405226, 406869, 407909, 397091, 397051, 397009, 406320, 405223, 405212, 405210, 405175, 405174, 405173, 405156, 405027, 405026, 409054, 405675, 405674, 422151, 422147, 422149, 340341, 289065, 395348, 405580, 405579, 405578, 405577, 405576, 405575, 405574, 405573, 405572, 405571, 405570, 404953, 422450, 406804, 404370, 404369, 396133, 398917, 398916, 407429, 396453, 405012, 405011, 398896, 398895, 398894, 398893, 398892, 398875, 398876, 341452, 422807, 337818, 337817, 284209, 284208, 284207, 284206, 284205, 284200, 285469, 285188, 285107, 285106, 285105, 285104, 285103, 285102, 278998, 278519, 278526, 278500, 278499, 280668, 280667, 280666, 280665, 280664, 280663, 280662, 279626, 279301, 279299, 279294, 280303, 280233, 280231, 280229, 280228, 276885, 276884, 276880, 276871, 276869, 276870, 276859, 276858, 286679, 286535, 277272, 277472, 277269, 277243, 277242, 280327, 280326, 280325, 280324, 280323, 277677, 277667, 277606, 277605, 277604, 277603, 276298, 398407, 398525, 398630, 398629, 398628, 398627, 398626, 398559, 398558, 289536, 289535, 289167, 408877, 406976, 405322, 341370, 341234, 341233);

DELETE FROM `quest_visual_effect` WHERE (`ID`=429731 AND `Index` IN (16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0)) OR (`ID`=427353 AND `Index`=0) OR (`ID`=429749 AND `Index`=0);
INSERT INTO `quest_visual_effect` (`ID`, `Index`, `VisualEffect`, `VerifiedBuild`) VALUES
(429731, 16, 21370, 46741),
(429731, 15, 21369, 46741),
(429731, 14, 21368, 46741),
(429731, 13, 21367, 46741),
(429731, 12, 21366, 46741),
(429731, 11, 21365, 46741),
(429731, 10, 21364, 46741),
(429731, 9, 21363, 46741),
(429731, 8, 21362, 46741),
(429731, 7, 21361, 46741),
(429731, 6, 21360, 46741),
(429731, 5, 21359, 46741),
(429731, 4, 21358, 46741),
(429731, 3, 21357, 46741),
(429731, 2, 21356, 46741),
(429731, 1, 21355, 46741),
(429731, 0, 21283, 46741),
(427353, 0, 19759, 46741),
(429749, 0, 19751, 46741);

UPDATE `quest_visual_effect` SET `VerifiedBuild`=46741 WHERE (`Index`=0 AND `ID` IN (391353,341454,406765,405249,405171,405228,405227,404567,396532,396528,393628,393643,421561,421560,421559,407425,409050,422647,405143,406712,406588,407428,398341,405251,405281,405280,405271,405270,405269,396185,395108,405226,406869,405156,405027,405026,409054,405675,405674,422149,422450,406804,404369,396133,407429,396453,405012,405011,398896,398895,398894,398893,398892,398875,398876,341452,422807,337818,284200,285188,285107,285106,278998,278526,280668,276858,277472,280323,406976,405322,341234)) OR (`Index`=3 AND `ID` IN (396532,398341,405027,422149,398896,398895,398894,398893,398892,398875,398876,280323)) OR (`Index`=2 AND `ID` IN (396532,396528,398341,405027,422149,398896,398895,398894,398893,398892,398875,398876,280323)) OR (`Index`=1 AND `ID` IN (396532,396528,422647,398341,405027,405674,422149,404369,398896,398895,398894,398893,398892,398875,398876,277472,280323,341234)) OR (`Index`=5 AND `ID` IN (398341,405027,398876)) OR (`Index`=4 AND `ID` IN (398341,405027,422149,398876)) OR (`Index`=11 AND `ID`=398876) OR (`Index`=10 AND `ID`=398876) OR (`Index`=9 AND `ID`=398876) OR (`Index`=8 AND `ID`=398876) OR (`Index`=7 AND `ID`=398876) OR (`Index`=6 AND `ID`=398876);


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=46741 WHERE (`QuestID`=60136 AND `Idx`=0);

DELETE FROM `creature_template` WHERE `entry` IN (187193 /*Brave Researcher*/, 187196 /*Rugged Artisan*/, 180538 /*(Bunny) Sessile + Large AOI*/, 193921 /*Master Mathias Shaw*/, 198383 /*Dracthyr Smith*/, 198393 /*Dracthyr Evoker*/, 198408 /*Dervishian*/, 194015 /*Wildfeather*/, 189569 /*Wrathion*/, 192354 /*Obsidian Warder*/, 198496 /*Scalecommander Emberthal*/, 189600 /*High Exarch Turalyon*/, 198515 /*Alzinathel*/, 198530 /*Emishalan*/, 189076 /*Pathfinder Jeb*/, 189077 /*Toddy Whiskers*/, 189078 /*Scalecommander Azurathel*/, 189079 /*Thaelin Darkanvil*/, 189080 /*Cataloger Wulferd*/, 189085 /*Past Self*/, 195830 /*Expedition Provisioner*/, 192505 /*SI:7 Agent*/, 198079 /*Chrovo*/, 192527 /*Embassy Guard*/, 194199 /*Haephesta*/, 194756 /*Genn Greymane*/, 195912 /*Storm Hunter William*/, 197611 /*(Bunny) Sessile + Gigantic AOI*/, 193786 /*Cataloguing Enthusiast*/, 193812 /*Expedition Trainee*/);
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `unit_class`, `WidgetSetID`, `WidgetSetUnitConditionID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `VerifiedBuild`) VALUES
(187193, 0, 0, 'Brave Researcher', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 213823, 46741), -- Brave Researcher
(187196, 0, 0, 'Rugged Artisan', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 213826, 46741), -- Rugged Artisan
(180538, 0, 0, '(Bunny) Sessile + Large AOI', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1073742848, 0, 1, 1, 0, 0, 204198, 46741), -- (Bunny) Sessile + Large AOI
(193921, 0, 0, 'Master Mathias Shaw', '', 'Leader of SI:7', NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 7, 0, 0, 20, 1, 0, 0, 222150, 46741), -- Master Mathias Shaw
(198383, 0, 0, 'Dracthyr Smith', '', 'Obsidian Warders', NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226759, 46741), -- Dracthyr Smith
(198393, 0, 0, 'Dracthyr Evoker', '', 'Obsidian Warders', NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226769, 46741), -- Dracthyr Evoker
(198408, 0, 0, 'Dervishian', '', 'Obsidian Warders', NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 32768, 1, 1, 0, 0, 226784, 46741), -- Dervishian
(194015, 0, 0, 'Wildfeather', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 160, 1, 0, 0, 1, 1, 0, 140, 222244, 46741), -- Wildfeather
(189569, 0, 0, 'Wrathion', '', 'The Black Prince', NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 4, 16384, 50, 1, 0, 0, 216254, 46741), -- Wrathion
(192354, 0, 0, 'Obsidian Warder', '', NULL, NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 8392704, 2048, 1, 1, 0, 0, 220564, 46741), -- Obsidian Warder
(198496, 0, 0, 'Scalecommander Emberthal', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 20, 1, 0, 0, 226875, 46741), -- Scalecommander Emberthal
(189600, 0, 0, 'High Exarch Turalyon', '', 'Lord Commander of Alliance Forces', NULL, NULL, 8, 0, 0, 2, 0, 0, 1, 0, 7, 4, 67125248, 1200, 1, 1, 183, 216285, 46741), -- High Exarch Turalyon
(198515, 0, 0, 'Alzinathel', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226894, 46741), -- Alzinathel
(198530, 0, 0, 'Emishalan', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226909, 46741), -- Emishalan
(189076, 0, 0, 'Pathfinder Jeb', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 215762, 46741), -- Pathfinder Jeb
(189077, 0, 0, 'Toddy Whiskers', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 16384, 3, 1, 0, 0, 215763, 46741), -- Toddy Whiskers
(189078, 0, 0, 'Scalecommander Azurathel', '', 'Obsidian Warders', NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 16384, 10, 1, 0, 0, 215764, 46741), -- Scalecommander Azurathel
(189079, 0, 0, 'Thaelin Darkanvil', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 3, 1, 0, 0, 215765, 46741), -- Thaelin Darkanvil
(189080, 0, 0, 'Cataloger Wulferd', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 215766, 46741), -- Cataloger Wulferd
(189085, 0, 0, 'Past Self', '', NULL, NULL, NULL, 8, 0, 0, 8, 0, 0, 0, 0, 7, 83894272, 0, 1, 1, 0, 0, 215771, 46741), -- Past Self
(195830, 0, 0, 'Expedition Provisioner', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 224075, 46741), -- Expedition Provisioner
(192505, 0, 0, 'SI:7 Agent', '', NULL, NULL, NULL, 8, 0, 0, 4, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 220715, 46741), -- SI:7 Agent
(198079, 0, 0, 'Chrovo', '', 'Dragon Isles Dock Master', NULL, NULL, 9, 0, 0, 1, 729, 6570, 0, 0, 7, 0, 50348032, 1, 1, 0, 0, 226451, 46741), -- Chrovo
(192527, 0, 0, 'Embassy Guard', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 220737, 46741), -- Embassy Guard
(194199, 0, 0, 'Haephesta', '', 'Ambassador of the Artisan\'s Consortium', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 222428, 46741), -- Haephesta
(194756, 0, 0, 'Genn Greymane', '', 'King of Gilneas', NULL, NULL, 8, 0, 0, 2, 0, 0, 1, 0, 7, 4, 67125248, 600, 50, 0, 0, 222989, 46741), -- Genn Greymane
(195912, 0, 0, 'Storm Hunter William', '', 'Storm Vendor', NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 16384, 1, 1, 0, 0, 224173, 46741), -- Storm Hunter William
(197611, 0, 0, '(Bunny) Sessile + Gigantic AOI', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1073742848, 0, 1, 1, 0, 0, 225957, 46741), -- (Bunny) Sessile + Gigantic AOI
(193786, 0, 0, 'Cataloguing Enthusiast', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 222015, 46741), -- Cataloguing Enthusiast
(193812, 0, 0, 'Expedition Trainee', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 222041, 46741); -- Expedition Trainee


UPDATE `creature_template` SET `femaleName`='', `type_flags`=2097224, `HealthModifier`=2.5, `VerifiedBuild`=46741 WHERE `entry`=12265; -- Lava Spawn
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=140380; -- Drukan
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry` IN (14505, 140403, 142641, 29016, 29019, 88067, 88080, 88081, 198391, 141020, 20716, 141030, 121541, 141036, 29088, 55273, 141054, 73678, 141079, 193450, 112686, 15214, 112694, 112698, 29152, 21354, 1860, 44749, 29712, 200166, 176222, 176223, 176224, 43102, 176225, 43103, 32520, 176227, 176231, 176234, 176236, 176238, 176240, 60941, 176241, 176242, 176243, 180701, 176245, 176246, 133362, 72654, 133369, 84915, 189075, 73780, 133408, 133409, 50434, 304, 50435, 305, 133433, 165189, 133441, 44880, 3681, 111190, 137391, 139088, 65011, 140253, 42782, 126332, 28302, 32206, 172572, 36674, 158119, 158120, 167032, 5504, 158123, 158125, 143645, 143098, 4423, 18375, 133675, 18376);
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18406; -- Swift Blue Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=68; -- Stormwind City Guard
UPDATE `creature_template` SET `femaleName`='', `type`=11, `HealthModifier`=0.050000000745058059, `VerifiedBuild`=46741 WHERE `entry`=71925; -- Magma Totem
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=14555; -- Swift Mistsaber
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry` IN (133197, 140309); -- Moira Thaurissan
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=14556; -- Swift Frostsaber
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=141554; -- Glaive Thrower
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=35168; -- Striped Dawnsaber
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=14565; -- Charger
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=42421; -- Stormwind Fisherman
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=51348; -- Stormwind Gryphon Rider
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=12358; -- Riding Striped Frostsaber
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=12359; -- Riding Spotted Frostsaber
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=12360; -- Riding Striped Nightsaber
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=14602; -- Swift Stormsaber
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=3469; -- Ancient of War
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=55272; -- Mountain Horse
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=55285; -- Astrid Langstrump
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=721; -- Rabbit
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=50305; -- Moon Priestess Lasara
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=4075; -- Rat
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=50307; -- Lord Candren
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=29144; -- Refurbished Steam Tank
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=2442; -- Cow
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=143390; -- The Tank
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=9158; -- Warhorse
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=44807; -- Farmer Wollerton
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=143405; -- Blazing Elemental
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=11397; -- Nara Meideros
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=143406; -- Lava Annihilator
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=143414; -- Molten Giant
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=143415; -- Flamewalker Sentinel
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=143416; -- Ancient Core Hound
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=143417; -- Lava Surger
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=143975; -- Ragnaros
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=4730; -- Lelanai
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=4753; -- Jartsam
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=1412; -- Squirrel
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=1976; -- Stormwind City Patroller
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=42098; -- Invisible Stalker (Cataclysm Boss, Ignore Combat, Floating)
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry` IN (143534, 140308); -- Thaelin Darkanvil
UPDATE `creature_template` SET `VerifiedBuild`=46741 WHERE `entry`=44395; -- Celestine of the Harvest
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=143542; -- Gezzrok the Keeper
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=143567; -- Mole Machine to Stormwind
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=141902; -- Perrin Moontear
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=143607; -- High Justice Grimstone
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry` IN (143643, 140307); -- Anvil-Thane Thurgaden
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=143648; -- Lava Burster
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=49540; -- Stormwind Rat
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46741 WHERE `entry`=4984; -- Argos Nightwhisper
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18357; -- Ebon Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18359; -- Snowy Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18360; -- Golden Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=8, `VerifiedBuild`=46741 WHERE `entry`=18362; -- Swift Purple Gryphon

DELETE FROM `creature_template_model` WHERE (`Idx`=1 AND `CreatureID` IN (197611,189569,198383,193786,198408,198393,195830,193812,187196,187193,180538,192505,192354)) OR (`Idx`=0 AND `CreatureID` IN (197611,198079,194015,189569,189079,189077,189080,189076,198383,198496,193786,198408,198393,195912,195830,194199,193812,189600,189078,187196,187193,193921,180538,194756,198530,198515,189085,192527,192505,192354)) OR (`Idx`=2 AND `CreatureID` IN (189569,198383,193786,198393,195830,193812,187196,187193,192505,192354)) OR (`Idx`=3 AND `CreatureID` IN (198383,193786,198393,195830,193812,187196,187193,192505,192354)) OR (`Idx`=6 AND `CreatureID` IN (193786,195830,187196,187193)) OR (`Idx`=5 AND `CreatureID` IN (193786,195830,193812,187196,187193,192505)) OR (`Idx`=4 AND `CreatureID` IN (193786,195830,193812,187196,187193,192505)) OR (`Idx`=9 AND `CreatureID` IN (195830,187193)) OR (`Idx`=8 AND `CreatureID` IN (195830,187193)) OR (`Idx`=7 AND `CreatureID` IN (195830,187196,187193));
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(197611, 1, 11686, 1, 1, 46741), -- (Bunny) Sessile + Gigantic AOI
(197611, 0, 14473, 1, 0, 46741), -- (Bunny) Sessile + Gigantic AOI
(198079, 0, 109896, 1, 1, 46741), -- Chrovo
(194015, 0, 47166, 1, 0, 46741), -- Wildfeather
(189569, 2, 107055, 1, 0, 46741), -- Wrathion
(189569, 1, 107945, 1, 0, 46741), -- Wrathion
(189569, 0, 107146, 1, 1, 46741), -- Wrathion
(189079, 0, 107015, 1, 1, 46741), -- Thaelin Darkanvil
(189077, 0, 105170, 1, 1, 46741), -- Toddy Whiskers
(189080, 0, 106766, 1, 1, 46741), -- Cataloger Wulferd
(189076, 0, 106741, 1, 1, 46741), -- Pathfinder Jeb
(198383, 3, 104846, 1, 1, 46741), -- Dracthyr Smith
(198383, 2, 104845, 1, 1, 46741), -- Dracthyr Smith
(198383, 1, 104844, 1, 1, 46741), -- Dracthyr Smith
(198383, 0, 104843, 1, 1, 46741), -- Dracthyr Smith
(198496, 0, 102031, 1, 1, 46741), -- Scalecommander Emberthal
(193786, 6, 110326, 1, 1, 46741), -- Cataloguing Enthusiast
(193786, 5, 108853, 1, 1, 46741), -- Cataloguing Enthusiast
(193786, 4, 108813, 1, 1, 46741), -- Cataloguing Enthusiast
(193786, 3, 110249, 1, 1, 46741), -- Cataloguing Enthusiast
(193786, 2, 110232, 1, 1, 46741), -- Cataloguing Enthusiast
(193786, 1, 108857, 1, 1, 46741), -- Cataloguing Enthusiast
(193786, 0, 110225, 1, 1, 46741), -- Cataloguing Enthusiast
(198408, 1, 102176, 1, 0, 46741), -- Dervishian
(198408, 0, 102175, 1, 1, 46741), -- Dervishian
(198393, 3, 104846, 1, 1, 46741), -- Dracthyr Evoker
(198393, 2, 104845, 1, 1, 46741), -- Dracthyr Evoker
(198393, 1, 104844, 1, 1, 46741), -- Dracthyr Evoker
(198393, 0, 104843, 1, 1, 46741), -- Dracthyr Evoker
(195912, 0, 71246, 1, 1, 46741), -- Storm Hunter William
(195830, 9, 110330, 1, 1, 46741), -- Expedition Provisioner
(195830, 8, 110329, 1, 1, 46741), -- Expedition Provisioner
(195830, 7, 110326, 1, 1, 46741), -- Expedition Provisioner
(195830, 6, 110327, 1, 1, 46741), -- Expedition Provisioner
(195830, 5, 110315, 1, 1, 46741), -- Expedition Provisioner
(195830, 4, 110325, 1, 1, 46741), -- Expedition Provisioner
(195830, 3, 110331, 1, 1, 46741), -- Expedition Provisioner
(195830, 2, 110338, 1, 1, 46741), -- Expedition Provisioner
(195830, 1, 110337, 1, 1, 46741), -- Expedition Provisioner
(195830, 0, 110339, 1, 1, 46741), -- Expedition Provisioner
(194199, 0, 107861, 1, 1, 46741), -- Haephesta
(193812, 5, 94032, 1, 1, 46741), -- Expedition Trainee
(193812, 4, 94031, 1, 1, 46741), -- Expedition Trainee
(193812, 3, 108857, 1, 1, 46741), -- Expedition Trainee
(193812, 2, 108810, 1, 1, 46741), -- Expedition Trainee
(193812, 1, 108812, 1, 1, 46741), -- Expedition Trainee
(193812, 0, 108455, 1, 1, 46741), -- Expedition Trainee
(189600, 0, 100074, 1.20000004768371582, 1, 46741), -- High Exarch Turalyon
(189078, 0, 102032, 1, 1, 46741), -- Scalecommander Azurathel
(187196, 7, 108842, 1, 1, 46741), -- Rugged Artisan
(187196, 6, 108846, 1, 1, 46741), -- Rugged Artisan
(187196, 5, 108853, 1, 1, 46741), -- Rugged Artisan
(187196, 4, 108852, 1, 1, 46741), -- Rugged Artisan
(187196, 3, 108855, 1, 1, 46741), -- Rugged Artisan
(187196, 2, 108854, 1, 1, 46741), -- Rugged Artisan
(187196, 1, 108857, 1, 1, 46741), -- Rugged Artisan
(187196, 0, 108856, 1, 1, 46741), -- Rugged Artisan
(187193, 9, 110249, 1, 1, 46741), -- Brave Researcher
(187193, 8, 110248, 1, 1, 46741), -- Brave Researcher
(187193, 7, 110237, 1, 1, 46741), -- Brave Researcher
(187193, 6, 110238, 1, 1, 46741), -- Brave Researcher
(187193, 5, 110233, 1, 1, 46741), -- Brave Researcher
(187193, 4, 110236, 1, 1, 46741), -- Brave Researcher
(187193, 3, 110232, 1, 1, 46741), -- Brave Researcher
(187193, 2, 108866, 1, 1, 46741), -- Brave Researcher
(187193, 1, 110225, 1, 1, 46741), -- Brave Researcher
(187193, 0, 110227, 1, 1, 46741), -- Brave Researcher
(193921, 0, 72253, 1, 1, 46741), -- Master Mathias Shaw
(180538, 1, 11686, 1, 1, 46741), -- (Bunny) Sessile + Large AOI
(180538, 0, 14473, 1, 0, 46741), -- (Bunny) Sessile + Large AOI
(194756, 0, 62093, 1, 1, 46741), -- Genn Greymane
(198530, 0, 110174, 1, 1, 46741), -- Emishalan
(198515, 0, 110164, 1, 1, 46741), -- Alzinathel
(189085, 0, 104598, 1, 1, 46741), -- Past Self
(192527, 0, 107891, 1, 1, 46741), -- Embassy Guard
(192505, 5, 107887, 1, 1, 46741), -- SI:7 Agent
(192505, 4, 107886, 1, 1, 46741), -- SI:7 Agent
(192505, 3, 107885, 1, 1, 46741), -- SI:7 Agent
(192505, 2, 107884, 1, 1, 46741), -- SI:7 Agent
(192505, 1, 107883, 1, 1, 46741), -- SI:7 Agent
(192505, 0, 107882, 1, 1, 46741), -- SI:7 Agent
(192354, 3, 104846, 1, 1, 46741), -- Obsidian Warder
(192354, 2, 104845, 1, 1, 46741), -- Obsidian Warder
(192354, 1, 104844, 1, 1, 46741), -- Obsidian Warder
(192354, 0, 104843, 1, 1, 46741); -- Obsidian Warder

UPDATE `creature_template_model` SET `VerifiedBuild`=46741 WHERE (`Idx`=0 AND `CreatureID` IN (143098,43103,29019,51348,193450,189075,142641,141902,84915,43102,198391,1860,165189,180701,139088,11397,5504,4984,3469,141554,44749,200166,29016,36674,29152,29144,176241,176236,176225,176223,49540,44880,29712,29088,15214,4075,176246,176245,176243,176240,176238,176234,176231,176227,176224,176222,50435,50434,44395,42782,176242,42421,20716,1412,140307,140309,137391,140380,140308,73678,143607,143648,143975,71925,143643,143645,42098,88081,88080,112694,143567,143542,12265,143415,143390,143406,143534,143416,143417,143405,143414,1976,4730,44807,2442,133441,158119,12358,133433,50307,14555,133409,133369,721,35168,12360,121541,50305,32520,72654,112686,158123,111190,141030,140403,141054,88067,14602,133675,158120,4423,141079,167032,12359,133408,55285,126332,133197,141020,172572,158125,141036,14556,3681,4753,140253,68,133362,55273,112698,73780,305,65011,55272,32206,28302,18362,18375,18376,18406,18359,18357,18360,14565,14505,9158,60941,21354,304)) OR (`Idx`=2 AND `CreatureID` IN (43103,43102,139088,29016,29152,49540,29712,29088,4075,42421,137391,143645,112694,133441,158119,133433,112686,158123,141030,140403,141054,158120,141079,158125,140253,68,112698)) OR (`Idx`=1 AND `CreatureID` IN (43103,29019,51348,43102,180701,139088,29016,29152,29144,49540,29712,29088,15214,4075,42421,137391,73678,143645,42098,112694,1976,133441,158119,133433,721,32520,72654,112686,158123,111190,141030,140403,141054,133675,158120,141079,158125,141036,140253,68,112698)) OR (`Idx`=3 AND `CreatureID` IN (43102,139088,29016,29712,29088,137391,143645,112694,133441,158119,133433,158123,141030,140403,141054,158120,141079,158125,140253,68,112698)) OR (`Idx`=11 AND `CreatureID` IN (139088,140403,140253)) OR (`Idx`=10 AND `CreatureID` IN (139088,140403,140253)) OR (`Idx`=9 AND `CreatureID` IN (139088,140403,140253)) OR (`Idx`=8 AND `CreatureID` IN (139088,140403,140253)) OR (`Idx`=7 AND `CreatureID` IN (139088,140403,140253)) OR (`Idx`=6 AND `CreatureID` IN (139088,140403,140253)) OR (`Idx`=5 AND `CreatureID` IN (139088,140403,140253)) OR (`Idx`=4 AND `CreatureID` IN (139088,29016,140403,141054,140253)) OR (`Idx`=15 AND `CreatureID` IN (140403,140253)) OR (`Idx`=14 AND `CreatureID` IN (140403,140253)) OR (`Idx`=13 AND `CreatureID` IN (140403,140253)) OR (`Idx`=12 AND `CreatureID` IN (140403,140253)) OR (`Idx`=51 AND `CreatureID`=140253) OR (`Idx`=50 AND `CreatureID`=140253) OR (`Idx`=49 AND `CreatureID`=140253) OR (`Idx`=48 AND `CreatureID`=140253) OR (`Idx`=47 AND `CreatureID`=140253) OR (`Idx`=46 AND `CreatureID`=140253) OR (`Idx`=45 AND `CreatureID`=140253) OR (`Idx`=44 AND `CreatureID`=140253) OR (`Idx`=43 AND `CreatureID`=140253) OR (`Idx`=42 AND `CreatureID`=140253) OR (`Idx`=41 AND `CreatureID`=140253) OR (`Idx`=40 AND `CreatureID`=140253) OR (`Idx`=39 AND `CreatureID`=140253) OR (`Idx`=38 AND `CreatureID`=140253) OR (`Idx`=37 AND `CreatureID`=140253) OR (`Idx`=36 AND `CreatureID`=140253) OR (`Idx`=35 AND `CreatureID`=140253) OR (`Idx`=34 AND `CreatureID`=140253) OR (`Idx`=33 AND `CreatureID`=140253) OR (`Idx`=32 AND `CreatureID`=140253) OR (`Idx`=31 AND `CreatureID`=140253) OR (`Idx`=30 AND `CreatureID`=140253) OR (`Idx`=29 AND `CreatureID`=140253) OR (`Idx`=28 AND `CreatureID`=140253) OR (`Idx`=27 AND `CreatureID`=140253) OR (`Idx`=26 AND `CreatureID`=140253) OR (`Idx`=25 AND `CreatureID`=140253) OR (`Idx`=24 AND `CreatureID`=140253) OR (`Idx`=23 AND `CreatureID`=140253) OR (`Idx`=22 AND `CreatureID`=140253) OR (`Idx`=21 AND `CreatureID`=140253) OR (`Idx`=20 AND `CreatureID`=140253) OR (`Idx`=19 AND `CreatureID`=140253) OR (`Idx`=18 AND `CreatureID`=140253) OR (`Idx`=17 AND `CreatureID`=140253) OR (`Idx`=16 AND `CreatureID`=140253);

DELETE FROM `gameobject_template` WHERE `entry` IN (292529 /*The Black Anvil*/, 292798 /*Azerite*/, 292883 /*The Black Anvil*/, 292795 /*Azerite*/, 292800 /*Azerite*/, 292797 /*Azerite*/, 298887 /*Fragment o' the Molten Core*/, 292799 /*Azerite*/, 292796 /*Azerite*/, 297822 /*Circle of Thorns Portal*/, 297886 /*Fire Door*/, 297823 /*Molten Ground*/, 297814 /*Volcano*/, 297819 /*Firelands Sulfuron Bridge*/, 297824 /*Sticky Web*/, 297821 /*Ragnaros Platform*/, 297818 /*Firelands Bridge*/, 301536 /*Relic Coffer Door*/, 301288 /*Doodad_BlackRockDoors03*/, 301280 /*Cell Door*/, 301272 /*Supply Room Door*/, 301541 /*Relic Coffer Door*/, 301533 /*Secret Door*/, 301293 /*The Shadowforge Lock*/, 301285 /*Golem Room South*/, 297683 /*Cave-in*/, 301277 /*Cell Door*/, 301269 /*The Lyceum*/, 301538 /*Relic Coffer Door*/, 301530 /*Relic Coffer Door*/, 301298 /*Giant Door Fake Collision*/, 301290 /*ArenaGate03*/, 301282 /*Bar Door*/, 301274 /*Cell Door*/, 301266 /*Doodad_BurningGiantWheel01*/, 301543 /*Relic Coffer Door*/, 301535 /*Relic Coffer Door*/, 301295 /*Ironfel*/, 301287 /*Doodad_BlackRockDoors02*/, 301279 /*Cell Door*/, 301271 /*Shadowforge Gate*/, 301540 /*Relic Coffer Door*/, 301532 /*Relic Coffer Door*/, 301292 /*ArenaGate04*/, 301284 /*Golem Room North*/, 301276 /*Cell Door*/, 301268 /*Doodad_BlackRockDoorSingle01*/, 301537 /*Relic Coffer Door*/, 301289 /*ArenaGate01*/, 301281 /*East Garrison Door*/, 301273 /*Cell Door*/, 301297 /*Giant Doors*/, 292590 /*Rockslide*/, 297702 /*Molten Core*/, 301542 /*Relic Coffer Door*/, 301534 /*Relic Coffer Door*/, 301294 /*Giant Door Mechanism*/, 297684 /*Cave-in*/, 301286 /*Thone Room Doors*/, 301278 /*Cell Door*/, 301270 /*Shadowforge Gate*/, 301283 /*Doodad_BlackRockIronDoor02*/, 301539 /*Relic Coffer Door*/, 301531 /*Dark Coffer*/, 301299 /*BigDoorDummyCollision02*/, 301291 /*ArenaGate02*/, 301275 /*Cell Door*/, 301267 /*Doodad_BlackRockDoors01*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(292529, 8, 50205, 'The Black Anvil', '', '', '', 1, 623, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 674, 46741), -- The Black Anvil
(292798, 5, 50369, 'Azerite', '', '', '', 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Azerite
(292883, 5, 50205, 'The Black Anvil', '', '', '', 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- The Black Anvil
(292795, 5, 50367, 'Azerite', '', '', '', 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Azerite
(292800, 5, 50371, 'Azerite', '', '', '', 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Azerite
(292797, 5, 50368, 'Azerite', '', '', '', 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Azerite
(298887, 10, 10648, 'Fragment o\' the Molten Core', 'questinteract', 'Repairing', '', 0.100000001490116119, 1690, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 280420, 0, 0, 1, 142623, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 674, 46741), -- Fragment o' the Molten Core
(292799, 5, 50370, 'Azerite', '', '', '', 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Azerite
(292796, 5, 50073, 'Azerite', '', '', '', 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Azerite
(297822, 10, 10579, 'Circle of Thorns Portal', '', '', '', 1.230000019073486328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1029, 46741), -- Circle of Thorns Portal
(297886, 0, 10718, 'Fire Door', '', '', '', 0.449999988079071044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Fire Door
(297823, 33, 10571, 'Molten Ground', '', '', '', 1, 0, 0, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Molten Ground
(297814, 33, 10640, 'Volcano', '', '', '', 1, 0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Volcano
(297819, 33, 10628, 'Firelands Sulfuron Bridge', '', '', '', 1, 0, 0, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Firelands Sulfuron Bridge
(297824, 0, 10631, 'Sticky Web', '', '', '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Sticky Web
(297821, 33, 10620, 'Ragnaros Platform', '', '', '', 1, 0, 0, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Ragnaros Platform
(297818, 0, 10735, 'Firelands Bridge', '', '', '', 1.490000009536743164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Firelands Bridge
(301536, 0, 3076, 'Relic Coffer Door', '', '', '', 1.00000011920928955, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301288, 0, 2750, 'Doodad_BlackRockDoors03', '', '', '', 1.246168017387390136, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_BlackRockDoors03
(301280, 0, 2751, 'Cell Door', '', '', '', 1, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301272, 0, 2751, 'Supply Room Door', '', '', '', 0.980392158031463623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Supply Room Door
(301541, 0, 3075, 'Relic Coffer Door', '', '', '', 1, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301533, 0, 3077, 'Secret Door', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Secret Door
(301293, 0, 2851, 'The Shadowforge Lock', '', '', '', 0.999999940395355224, 0, 1634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- The Shadowforge Lock
(301285, 0, 2752, 'Golem Room South', '', '', '', 1.499400019645690917, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Golem Room South
(297683, 0, 43997, 'Cave-in', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cave-in
(301277, 0, 2751, 'Cell Door', '', '', '', 1, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301269, 0, 2752, 'The Lyceum', '', '', '', 1.499399900436401367, 0, 1634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- The Lyceum
(301538, 0, 3076, 'Relic Coffer Door', '', '', '', 1.00000011920928955, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301530, 0, 3076, 'Relic Coffer Door', '', '', '', 1.00000011920928955, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301298, 0, 2853, 'Giant Door Fake Collision', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Giant Door Fake Collision
(301290, 0, 3751, 'ArenaGate03', '', '', '', 2.099999904632568359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- ArenaGate03
(301282, 0, 2751, 'Bar Door', '', '', '', 1.309999942779541015, 0, 739, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Bar Door
(301274, 0, 2751, 'Cell Door', '', '', '', 1.00000011920928955, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301266, 0, 2730, 'Doodad_BurningGiantWheel01', '', '', '', 1, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_BurningGiantWheel01
(301543, 0, 3075, 'Relic Coffer Door', '', '', '', 1, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301535, 0, 3076, 'Relic Coffer Door', '', '', '', 1.00000011920928955, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301295, 0, 2931, 'Ironfel', '', '', '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Ironfel
(301287, 0, 2750, 'Doodad_BlackRockDoors02', '', '', '', 1.246167898178100585, 1, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_BlackRockDoors02
(301279, 0, 2751, 'Cell Door', '', '', '', 1, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301271, 0, 2753, 'Shadowforge Gate', '', '', '', 1, 0, 1634, 0, 0, 0, 0, 0, 5703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Shadowforge Gate
(301540, 0, 3075, 'Relic Coffer Door', '', '', '', 1, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301532, 0, 3075, 'Relic Coffer Door', '', '', '', 1, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301292, 0, 3751, 'ArenaGate04', '', '', '', 2.10000014305114746, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- ArenaGate04
(301284, 0, 2752, 'Golem Room North', '', '', '', 1.499400019645690917, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Golem Room North
(301276, 0, 2751, 'Cell Door', '', '', '', 1, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301268, 0, 2751, 'Doodad_BlackRockDoorSingle01', '', '', '', 1, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_BlackRockDoorSingle01
(301537, 0, 3076, 'Relic Coffer Door', '', '', '', 1.00000011920928955, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301289, 0, 3751, 'ArenaGate01', '', '', '', 2.099999904632568359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- ArenaGate01
(301281, 0, 2751, 'East Garrison Door', '', '', '', 0.980392158031463623, 0, 1634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- East Garrison Door
(301273, 0, 2751, 'Cell Door', '', '', '', 0.980392277240753173, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301297, 0, 2790, 'Giant Doors', '', '', '', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Giant Doors
(292590, 0, 30796, 'Rockslide', '', '', '', 1.399999976158142089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Rockslide
(297702, 3, 10648, 'Molten Core', 'questinteract', 'Acquiring', '', 2, 1690, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 85362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 91045, 1, 0, 0, 0, 674, 46741), -- Molten Core
(301542, 0, 3075, 'Relic Coffer Door', '', '', '', 1, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301534, 0, 3076, 'Relic Coffer Door', '', '', '', 1.00000011920928955, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301294, 0, 2852, 'Giant Door Mechanism', '', '', '', 1, 0, 0, 12000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Giant Door Mechanism
(297684, 0, 10265, 'Cave-in', '', '', '', 1.299999952316284179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cave-in
(301286, 0, 2752, 'Thone Room Doors', '', '', '', 1.514394044876098632, 0, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Thone Room Doors
(301278, 0, 2751, 'Cell Door', '', '', '', 0.999999940395355224, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301270, 0, 2753, 'Shadowforge Gate', '', '', '', 1, 0, 1634, 0, 0, 0, 0, 0, 5703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Shadowforge Gate
(301283, 0, 2752, 'Doodad_BlackRockIronDoor02', '', '', '', 1.499400019645690917, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Doodad_BlackRockIronDoor02
(301539, 0, 3075, 'Relic Coffer Door', '', '', '', 1, 0, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Relic Coffer Door
(301531, 0, 3078, 'Dark Coffer', '', '', '', 1, 0, 659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Dark Coffer
(301299, 0, 2854, 'BigDoorDummyCollision02', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- BigDoorDummyCollision02
(301291, 0, 3751, 'ArenaGate02', '', '', '', 2.10000014305114746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- ArenaGate02
(301275, 0, 2751, 'Cell Door', '', '', '', 1.00000011920928955, 0, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741), -- Cell Door
(301267, 0, 2750, 'Doodad_BlackRockDoors01', '', '', '', 1, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46741); -- Doodad_BlackRockDoors01

UPDATE `gameobject_template` SET `VerifiedBuild`=46741 WHERE `entry` IN (164767, 204284, 292774, 195468, 205144, 201619, 197196, 203988, 203987, 203955, 203954, 203953, 203952, 203951, 203950, 203949, 203948, 209692, 203800, 190536, 209073, 267647, 294556, 231870, 209039, 281304, 210181, 178190, 178188, 176954, 176952, 178189, 176953, 178191, 176955, 178192, 176956, 177000, 176957, 178193, 232225, 278325, 232235, 350063, 273855, 298865, 293696, 339222, 194282, 293422, 292776, 316736, 293324, 293320, 293316, 273853, 204281, 203751, 293325, 292769, 278311, 227907, 278332, 278330, 278328, 278326, 232224, 278333, 278324, 227908, 232234, 278310, 259008, 278331, 278329, 207416, 278327);
UPDATE `gameobject_template` SET `ContentTuningId`=288, `VerifiedBuild`=46741 WHERE `entry`=293894; -- Portal to Darnassus
UPDATE `gameobject_template` SET `Data8`=103829, `Data10`=30092, `VerifiedBuild`=46741 WHERE `entry`=227909; -- Forge
UPDATE `gameobject_template` SET `Data8`=103828, `Data10`=30091, `VerifiedBuild`=46741 WHERE `entry`=227906; -- Anvil

DELETE FROM `gameobject_questitem` WHERE (`GameObjectEntry`=297702 AND `Idx`=0);
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(297702, 0, 163693, 46741); -- Molten Core

UPDATE `gameobject_questitem` SET `VerifiedBuild`=46741 WHERE (`Idx`=0 AND `GameObjectEntry` IN (204284,205144,203800,203751));

DELETE FROM `world_quest` WHERE `id` IN (54391 /*54391*/, 60390 /*60390*/, 60443 /*60443*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(54391, 86400, 16772, 1), -- 54391
(60390, 259200, 19324, 1), -- 60390
(60443, 259200, 19334, 1); -- 60443


