UPDATE `creature_equip_template` SET `VerifiedBuild`=46547 WHERE (`ID`=1 AND `CreatureID` IN (164273,58807,58803,58810,59036,56767,56678,56473,64549,59752,62236,56747,171318,171368,172479,165009,165008,163414,174225,164128)) OR (`ID`=2 AND `CreatureID`=164273);

DELETE FROM `areatrigger_template` WHERE (`Id`=3576 AND `IsServerSide`=0);
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(3576, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 46547);


DELETE FROM `quest_poi` WHERE (`QuestID`=61060 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=61060 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=61060 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=61060 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=61060 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61060 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61060 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(61060, 0, 6, 32, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 46547), -- Spore Losers
(61060, 0, 5, 31, 0, 0, 2222, 1536, 0, 2, 0, 88558, 0, 0, 0, 46547), -- Spore Losers
(61060, 0, 4, 5, 405212, 171368, 2222, 1536, 0, 0, 0, 0, 0, 0, 1, 46547), -- Spore Losers
(61060, 0, 3, 4, 405210, 171348, 2222, 1536, 0, 0, 0, 0, 0, 0, 1, 46547), -- Spore Losers
(61060, 0, 2, 3, 405175, 171140, 2222, 1536, 0, 0, 0, 0, 0, 0, 1, 46547), -- Spore Losers
(61060, 0, 1, 2, 405174, 171318, 2222, 1536, 0, 0, 0, 0, 0, 0, 1, 46547), -- Spore Losers
(61060, 0, 0, 0, 405156, 171115, 2222, 1536, 0, 2, 0, 0, 0, 1992478, 0, 46547); -- Spore Losers

UPDATE `quest_poi` SET `VerifiedBuild`=46547 WHERE (`QuestID`=62743 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62743 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=45563 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65033 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65033 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62778 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=62778 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=62778 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=62778 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=62778 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62748 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=62748 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62748 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=62748 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=57249 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=57249 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=57249 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49929 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=43341 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=43341 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=42449 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=42449 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=36309 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=61060 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=61060 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=61060 AND `Idx1`=4 AND `Idx2`=7) OR (`QuestID`=61060 AND `Idx1`=4 AND `Idx2`=6) OR (`QuestID`=61060 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=61060 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=61060 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=61060 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=61060 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=61060 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=61060 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=61060 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=61060 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=61060 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=61060 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61060 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=61060 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=61060 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=61060 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=61060 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=61060 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=61060 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=61060 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=61060 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61060 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(61060, 6, 0, 2502, -4177, 3394, 46547), -- Spore Losers
(61060, 5, 0, 2511, -4174, 3394, 46547), -- Spore Losers
(61060, 4, 7, 2508, -4110, 3365, 46547), -- Spore Losers
(61060, 4, 6, 2474, -3948, 3342, 46547), -- Spore Losers
(61060, 4, 5, 2515, -3738, 3286, 46547), -- Spore Losers
(61060, 4, 4, 2588, -3711, 3281, 46547), -- Spore Losers
(61060, 4, 3, 2930, -3914, 3358, 46547), -- Spore Losers
(61060, 4, 2, 2998, -3975, 3352, 46547), -- Spore Losers
(61060, 4, 1, 2767, -4091, 3330, 46547), -- Spore Losers
(61060, 4, 0, 2657, -4127, 3344, 46547), -- Spore Losers
(61060, 3, 4, 2467, -3902, 3337, 46547), -- Spore Losers
(61060, 3, 3, 2790, -3875, 3304, 46547), -- Spore Losers
(61060, 3, 2, 2945, -4090, 3351, 46547), -- Spore Losers
(61060, 3, 1, 2928, -4175, 3350, 46547), -- Spore Losers
(61060, 3, 0, 2612, -4175, 3361, 46547), -- Spore Losers
(61060, 2, 8, 2484, -4166, 3394, 46547), -- Spore Losers
(61060, 2, 7, 2446, -4012, 3376, 46547), -- Spore Losers
(61060, 2, 6, 2439, -3973, 3355, 46547), -- Spore Losers
(61060, 2, 5, 2522, -3761, 3291, 46547), -- Spore Losers
(61060, 2, 4, 2557, -3727, 3288, 46547), -- Spore Losers
(61060, 2, 3, 3040, -3982, 3362, 46547), -- Spore Losers
(61060, 2, 2, 3005, -4147, 3360, 46547), -- Spore Losers
(61060, 2, 1, 2926, -4179, 3351, 46547), -- Spore Losers
(61060, 2, 0, 2539, -4205, 3402, 46547), -- Spore Losers
(61060, 1, 11, 2651, -4143, 3345, 46547), -- Spore Losers
(61060, 1, 10, 2546, -4117, 3369, 46547), -- Spore Losers
(61060, 1, 9, 2515, -4088, 3362, 46547), -- Spore Losers
(61060, 1, 8, 2484, -4058, 3360, 46547), -- Spore Losers
(61060, 1, 7, 2448, -4010, 3374, 46547), -- Spore Losers
(61060, 1, 6, 2470, -3901, 3337, 46547), -- Spore Losers
(61060, 1, 5, 2522, -3757, 3291, 46547), -- Spore Losers
(61060, 1, 4, 2602, -3776, 3284, 46547), -- Spore Losers
(61060, 1, 3, 3036, -3981, 3361, 46547), -- Spore Losers
(61060, 1, 2, 3047, -4002, 3362, 46547), -- Spore Losers
(61060, 1, 1, 3049, -4007, 3362, 46547), -- Spore Losers
(61060, 1, 0, 3004, -4150, 3360, 46547), -- Spore Losers
(61060, 0, 0, 2480, -4177, 3394, 46547); -- Spore Losers

UPDATE `quest_poi_points` SET `VerifiedBuild`=46547 WHERE (`QuestID`=62743 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=45563 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65033 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65033 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62778 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=62778 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=62778 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62778 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62778 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62748 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=62748 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62748 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62748 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53436 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53436 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=43341 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=43341 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=42449 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=42449 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=36309 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (45563 /*The Shrouded Coin*/, 31342 /*The Path to Respect Lies in Violence*/, 30757 /*Lord of the Shado-Pan*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(45563, 1, 5, 0, 0, 0, 0, 0, 0, 46547), -- The Shrouded Coin
(31342, 0, 0, 0, 0, 0, 0, 0, 0, 46547), -- The Path to Respect Lies in Violence
(30757, 0, 0, 0, 0, 0, 0, 0, 0, 46547); -- Lord of the Shado-Pan


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=2 AND `Entry` IN (164360,64468,64387,59804,59764,53006,56884,58812,58810,58803,58794,59036,58807,66652,58201,56767,56641,56640,56713,60006,60007,60005,58344,58345,56541,67229,56678,56473,56472,56646,56395,56870,56765,56763,56764,56766,59895,56505,64549,56397,56803,65407,56719,3527,24207,175519)) OR (`DifficultyID`=0 AND `Entry` IN (56754,59751,62236,56747,64550,59811,56926,59741,65414,58198,65257,63717,59752,60162,59808,171109,165363,174993,175150));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(164360, 2, 0, 0, 745, 46547),
(64468, 2, 2, 2, 2565, 46547),
(64387, 2, 2, 2, 2565, 46547),
(59804, 2, 0, 0, 2565, 46547),
(59764, 2, 0, 0, 482, 46547),
(53006, 2, 0, 0, 482, 46547),
(56884, 2, 2, 2, 2565, 46547),
(58812, 2, 1, 1, 2565, 46547),
(58810, 2, 1, 1, 2565, 46547),
(58803, 2, 1, 1, 2565, 46547),
(58794, 2, 1, 1, 2565, 46547),
(59036, 2, 1, 1, 2565, 46547),
(58807, 2, 1, 1, 2565, 46547),
(66652, 2, 0, 0, 2565, 46547),
(58201, 2, 1, 1, 2565, 46547),
(56767, 2, 1, 1, 2565, 46547),
(56641, 2, 2, 2, 2565, 46547),
(56640, 2, 2, 2, 2565, 46547),
(56713, 2, 2, 2, 2565, 46547),
(60006, 2, 2, 2, 2565, 46547),
(60007, 2, 2, 2, 2565, 46547),
(60005, 2, 2, 2, 2565, 46547),
(58344, 2, 0, 0, 2565, 46547),
(58345, 2, 0, 0, 2565, 46547),
(56541, 2, 2, 2, 2565, 46547),
(67229, 2, 2, 2, 2565, 46547),
(56678, 2, -1, -1, 2565, 46547),
(56473, 2, 1, 1, 2565, 46547),
(56472, 2, 1, 1, 2565, 46547),
(56646, 2, 0, 0, 2565, 46547),
(56395, 2, 0, 0, 2565, 46547),
(56870, 2, 2, 2, 2565, 46547),
(56765, 2, 1, 1, 2565, 46547),
(56763, 2, 1, 1, 2565, 46547),
(56764, 2, 1, 1, 2565, 46547),
(56766, 2, 0, 0, 2565, 46547),
(59895, 2, 2, 2, 2565, 46547),
(56505, 2, 3, 3, 2565, 46547),
(64549, 2, 1, 1, 2565, 46547),
(56397, 2, 3, 3, 2565, 46547),
(56803, 2, 0, 0, 2565, 46547),
(65407, 2, 0, 0, 2565, 46547),
(56719, 2, 2, 2, 2565, 46547),
(3527, 2, 0, 0, 482, 46547),
(24207, 2, 0, 0, 482, 46547),
(175519, 2, 0, 0, 2099, 46547),
(56754, 0, 2, 2, 2565, 46547),
(59751, 0, 0, 0, 2565, 46547),
(62236, 0, 2, 2, 2565, 46547),
(56747, 0, 2, 2, 2565, 46547),
(64550, 0, 3, 3, 2565, 46547),
(59811, 0, 0, 0, 2565, 46547),
(56926, 0, 0, 0, 2565, 46547),
(59741, 0, 0, 0, 2565, 46547),
(65414, 0, 0, 0, 2565, 46547),
(58198, 0, 0, 0, 2565, 46547),
(65257, 0, 0, 0, 2565, 46547),
(63717, 0, 0, 0, 2565, 46547),
(59752, 0, 0, 0, 2565, 46547),
(60162, 0, 3, 3, 2565, 46547),
(59808, 0, 0, 0, 2565, 46547),
(171109, 0, 0, 0, 837, 46547),
(165363, 0, 0, 0, 2060, 46547),
(174993, 0, 0, 0, 745, 46547),
(175150, 0, 0, 0, 745, 46547);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46547 WHERE (`DifficultyID`=2 AND `Entry` IN (73400,61245)) OR (`DifficultyID`=0 AND `Entry` IN (171368,171318,171348,162711,171115,164117,172854,164063,171140,172609,172607,172567,172479,171740,165009,172485,164544,164525,165008,171092,168269,160888,168266,171956,164273,175024,165024,171381,174224,164128,164713,174225,171093,176400,173267,173271,169129,164711,163414,170002,165025,174649,162816,159691,168453,167359,170456,169992,173273,173272,174650));

DELETE FROM `creature_model_info` WHERE `DisplayID`=98108;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(98108, 0.300000011920928955, 0.60000002384185791, 0, 46547);

UPDATE `creature_model_info` SET `VerifiedBuild`=46547 WHERE `DisplayID` IN (16946, 21888, 23377, 25204, 41677, 40625, 40884, 38615, 86434, 26079, 86432, 106962, 42078, 38459, 94921, 94703, 100181, 94050, 97464, 97653, 97465, 99929, 96786, 98461, 31124, 94090, 97652, 17200, 98244, 73697, 97654, 97655, 95993, 97657, 95793, 59546, 11686, 7571, 38189, 61550, 94867, 95789, 88004, 97399);
UPDATE `creature_model_info` SET `BoundingRadius`=0.781249523162841796, `CombatReach`=3.375, `VerifiedBuild`=46547 WHERE `DisplayID` IN (41902, 46071);
UPDATE `creature_model_info` SET `BoundingRadius`=1, `CombatReach`=2, `VerifiedBuild`=46547 WHERE `DisplayID`=41107;
UPDATE `creature_model_info` SET `BoundingRadius`=0.694444000720977783, `CombatReach`=3, `VerifiedBuild`=46547 WHERE `DisplayID` IN (41121, 40291);
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `CombatReach`=1, `VerifiedBuild`=46547 WHERE `DisplayID` IN (41106, 40958);
UPDATE `creature_model_info` SET `BoundingRadius`=0.312499791383743286, `CombatReach`=1.349999904632568359, `VerifiedBuild`=46547 WHERE `DisplayID` IN (40297, 40563);
UPDATE `creature_model_info` SET `BoundingRadius`=0.347222000360488891, `CombatReach`=1.5, `VerifiedBuild`=46547 WHERE `DisplayID` IN (41051, 40562, 41124, 41861, 42079, 42081, 46084);
UPDATE `creature_model_info` SET `BoundingRadius`=0.416666418313980102, `CombatReach`=1.80000007152557373, `VerifiedBuild`=46547 WHERE `DisplayID` IN (40296, 41897);
UPDATE `creature_model_info` SET `BoundingRadius`=1.25, `CombatReach`=2.5, `VerifiedBuild`=46547 WHERE `DisplayID`=40708;
UPDATE `creature_model_info` SET `BoundingRadius`=0.75, `CombatReach`=1.5, `VerifiedBuild`=46547 WHERE `DisplayID` IN (41849, 40687, 40887, 40885);
UPDATE `creature_model_info` SET `BoundingRadius`=0.520833015441894531, `CombatReach`=2.25, `VerifiedBuild`=46547 WHERE `DisplayID` IN (41901, 41900, 46083);
UPDATE `creature_model_info` SET `BoundingRadius`=0.300000011920928955, `VerifiedBuild`=46547 WHERE `DisplayID`=39437;
UPDATE `creature_model_info` SET `BoundingRadius`=0.41666644811630249, `CombatReach`=1.800000190734863281, `VerifiedBuild`=46547 WHERE `DisplayID`=41896;
UPDATE `creature_model_info` SET `BoundingRadius`=0.75, `CombatReach`=7.5, `VerifiedBuild`=46547 WHERE `DisplayID`=43283;
UPDATE `creature_model_info` SET `BoundingRadius`=20.0310516357421875, `CombatReach`=28, `VerifiedBuild`=46547 WHERE `DisplayID`=39492;
UPDATE `creature_model_info` SET `BoundingRadius`=0.868054986000061035, `CombatReach`=3.75, `VerifiedBuild`=46547 WHERE `DisplayID`=39489;
UPDATE `creature_model_info` SET `BoundingRadius`=0.324999988079071044, `CombatReach`=0.649999976158142089, `VerifiedBuild`=46547 WHERE `DisplayID`=43936;
UPDATE `creature_model_info` SET `BoundingRadius`=0.625, `CombatReach`=1.25, `VerifiedBuild`=46547 WHERE `DisplayID`=40959;
UPDATE `creature_model_info` SET `BoundingRadius`=0.364583075046539306, `CombatReach`=1.574999928474426269, `VerifiedBuild`=46547 WHERE `DisplayID`=41803;
UPDATE `creature_model_info` SET `BoundingRadius`=0.67146378755569458, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46547 WHERE `DisplayID`=96059;
UPDATE `creature_model_info` SET `BoundingRadius`=0.442737370729446411, `VerifiedBuild`=46547 WHERE `DisplayID`=100426;
UPDATE `creature_model_info` SET `BoundingRadius`=1.613647699356079101, `CombatReach`=4.5, `VerifiedBuild`=46547 WHERE `DisplayID`=83605;
UPDATE `creature_model_info` SET `BoundingRadius`=6, `CombatReach`=0, `VerifiedBuild`=46547 WHERE `DisplayID`=48481;
UPDATE `creature_model_info` SET `BoundingRadius`=0.767379224300384521, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46547 WHERE `DisplayID`=90427;
UPDATE `creature_model_info` SET `BoundingRadius`=0.733513593673706054, `CombatReach`=1.5, `VerifiedBuild`=46547 WHERE `DisplayID` IN (95990, 94992);
UPDATE `creature_model_info` SET `BoundingRadius`=1.056259632110595703, `CombatReach`=2.160000085830688476, `VerifiedBuild`=46547 WHERE `DisplayID` IN (95638, 94145);
UPDATE `creature_model_info` SET `BoundingRadius`=2.583770751953125, `CombatReach`=2.70000004768371582, `VerifiedBuild`=46547 WHERE `DisplayID`=97964;
UPDATE `creature_model_info` SET `BoundingRadius`=0.75, `VerifiedBuild`=46547 WHERE `DisplayID`=95654;
UPDATE `creature_model_info` SET `BoundingRadius`=4.5, `CombatReach`=7.5, `VerifiedBuild`=46547 WHERE `DisplayID`=99201;
UPDATE `creature_model_info` SET `BoundingRadius`=1.183341622352600097, `CombatReach`=3.300000190734863281, `VerifiedBuild`=46547 WHERE `DisplayID` IN (83597, 83594);
UPDATE `creature_model_info` SET `BoundingRadius`=1.075765132904052734, `CombatReach`=3, `VerifiedBuild`=46547 WHERE `DisplayID`=83604;
UPDATE `creature_model_info` SET `BoundingRadius`=1.098554372787475585, `CombatReach`=0.375, `VerifiedBuild`=46547 WHERE `DisplayID`=97656;
UPDATE `creature_model_info` SET `BoundingRadius`=0.386183589696884155, `CombatReach`=0.262500017881393432, `VerifiedBuild`=46547 WHERE `DisplayID`=96635;


UPDATE `creature_template_spell` SET `VerifiedBuild`=46547 WHERE (`CreatureID`=26125 AND `Index` IN (7,6,5,4,3,2,1,0)) OR (`CreatureID`=171109 AND `Index`=0);


UPDATE `creature_template` SET `minlevel`=37, `maxlevel`=37, `faction`=16, `unit_flags`=33536, `unit_flags2`=2099200, `unit_flags3`=524288 WHERE `entry`=64468; -- Sha of Hatred
UPDATE `creature_template` SET `unit_flags`=295744, `unit_flags2`=2099200 WHERE `entry`=64387; -- Master Snowdrift
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=16, `unit_flags2`=526336, `unit_flags3`=524288 WHERE `entry`=59804; -- Gripping Hatred
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `BaseAttackTime`=1887 WHERE `entry`=59764; -- Healing Tide Totem
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=53006; -- Spirit Link Totem
UPDATE `creature_template` SET `minlevel`=37, `maxlevel`=37, `faction`=35, `unit_flags`=294992, `unit_flags2`=2099200, `unit_flags3`=1 WHERE `entry`=56884; -- Taran Zhu
UPDATE `creature_template` SET `minlevel`=36, `maxlevel`=36, `faction`=16, `unit_flags2`=526336, `unit_flags3`=1 WHERE `entry`=58812; -- Hateful Essence
UPDATE `creature_template` SET `minlevel`=36, `maxlevel`=36, `faction`=16, `unit_flags2`=2048 WHERE `entry`=58810; -- Fragment of Hatred
UPDATE `creature_template` SET `minlevel`=36, `maxlevel`=36, `faction`=16, `BaseAttackTime`=2400, `unit_flags2`=2048 WHERE `entry`=58803; -- Residual Hatred
UPDATE `creature_template` SET `minlevel`=36, `maxlevel`=36, `unit_flags2`=69208065, `unit_flags3`=8193 WHERE `entry`=58794; -- Slain Shado-Pan Defender
UPDATE `creature_template` SET `minlevel`=36, `maxlevel`=36, `unit_flags2`=2099201, `unit_flags3`=8193 WHERE `entry`=59036; -- Slain Shado-pan Initiate
UPDATE `creature_template` SET `minlevel`=36, `maxlevel`=36, `faction`=16, `unit_flags2`=2048 WHERE `entry`=58807; -- Vestige of Hatred
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=33554432, `unit_flags3`=524288 WHERE `entry`=66652; -- Lesser Volatile Energy
UPDATE `creature_template` SET `unit_flags2`=2048 WHERE `entry`=58201; -- Sha Manifestation
UPDATE `creature_template` SET `faction`=634, `unit_flags2`=4196352, `unit_flags3`=1 WHERE `entry`=56767; -- Shado-Pan Fire Archer
UPDATE `creature_template` SET `minlevel`=37, `maxlevel`=37, `unit_flags2`=100665344, `unit_flags3`=17301505 WHERE `entry` IN (56641, 56640); -- Ball of Fire
UPDATE `creature_template` SET `minlevel`=37, `maxlevel`=37, `faction`=16, `unit_flags2`=2099216, `unit_flags3`=524288 WHERE `entry`=56713; -- Master Snowdrift
UPDATE `creature_template` SET `minlevel`=37, `maxlevel`=37, `unit_flags`=768, `unit_flags2`=67110912, `unit_flags3`=16777216 WHERE `entry` IN (60006, 60007, 60005); -- Master Snowdrift
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags`=256, `unit_flags2`=67110912, `unit_flags3`=17301504 WHERE `entry`=58344; -- Shado-pan Smoke Bomb
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags`=768, `unit_flags2`=67110912, `unit_flags3`=17301504 WHERE `entry`=58345; -- Shado-pan Vanish Bomb
UPDATE `creature_template` SET `minlevel`=37, `maxlevel`=37, `faction`=2244, `unit_flags`=32848, `unit_flags2`=2097152, `VehicleId`=1879 WHERE `entry`=56541; -- Master Snowdrift
UPDATE `creature_template` SET `minlevel`=37, `maxlevel`=37, `unit_flags`=33554496, `unit_flags2`=67110914, `unit_flags3`=16777216 WHERE `entry`=67229; -- Master Snowdrift
UPDATE `creature_template` SET `minlevel`=36, `maxlevel`=36, `faction`=2263, `BaseAttackTime`=1333, `unit_flags`=16, `unit_flags2`=2048 WHERE `entry`=56473; -- Flying Snow
UPDATE `creature_template` SET `minlevel`=36, `maxlevel`=36, `faction`=2263, `unit_flags`=16, `unit_flags2`=2048, `VehicleId`=1890 WHERE `entry`=56472; -- Fragrant Lotus
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=14, `speed_run`=1.142857193946838378, `unit_flags2`=100698112, `unit_flags3`=17301505 WHERE `entry`=56646; -- Fire Flower
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=2244, `unit_flags`=32784, `VehicleId`=1884 WHERE `entry`=56395; -- Shado-Pan Novice
UPDATE `creature_template` SET `faction`=2244, `unit_flags2`=2099200, `unit_flags3`=1 WHERE `entry`=56870; -- Master Snowdrift
UPDATE `creature_template` SET `minlevel`=36, `maxlevel`=36, `faction`=16, `unit_flags2`=33554432 WHERE `entry`=56765; -- Destroying Sha
UPDATE `creature_template` SET `minlevel`=36, `maxlevel`=36, `faction`=16, `unit_flags2`=33554432 WHERE `entry`=56763; -- Regenerating Sha
UPDATE `creature_template` SET `minlevel`=36, `maxlevel`=36, `faction`=16, `unit_flags2`=33554432 WHERE `entry`=56764; -- Consuming Sha
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=16, `unit_flags2`=33554432 WHERE `entry`=56766; -- Volatile Energy
UPDATE `creature_template` SET `minlevel`=37, `maxlevel`=37, `faction`=2564, `unit_flags2`=33556481, `unit_flags3`=8192 WHERE `entry`=59895; -- Shado-Pan Monk
UPDATE `creature_template` SET `minlevel`=38, `maxlevel`=38, `unit_flags`=256, `unit_flags2`=67110914, `unit_flags3`=16777217 WHERE `entry`=56505; -- Shado-pan Referee
UPDATE `creature_template` SET `minlevel`=36, `maxlevel`=36, `faction`=634, `unit_flags2`=4196352, `unit_flags3`=1 WHERE `entry`=64549; -- Shado-Pan Ice Archer
UPDATE `creature_template` SET `minlevel`=38, `maxlevel`=38, `unit_flags`=256, `unit_flags2`=67143682, `unit_flags3`=1 WHERE `entry`=56397; -- Position
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=524289 WHERE `entry`=56803; -- Static Field Stalker
UPDATE `creature_template` SET `faction`=2482, `unit_flags2`=33554432, `VehicleId`=1884 WHERE `entry`=65407; -- Shado-Pan Novice
UPDATE `creature_template` SET `minlevel`=37, `maxlevel`=37, `unit_flags2`=35651584 WHERE `entry`=56719; -- Sha of Violence
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `BaseAttackTime`=1878 WHERE `entry`=3527; -- Healing Stream Totem
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `BaseAttackTime`=1688 WHERE `entry`=24207; -- Army of the Dead
UPDATE `creature_template` SET `minlevel`=56, `maxlevel`=56, `BaseAttackTime`=1699 WHERE `entry`=416; -- Imp
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=61245; -- Capacitor Totem
UPDATE `creature_template` SET `BaseAttackTime`=1878 WHERE `entry`=175519; -- Frothing Pustule
UPDATE `creature_template` SET `minlevel`=60, `BaseAttackTime`=1791, `unit_flags`=32784 WHERE `entry`=165189; -- Generic Hunter Pet
UPDATE `creature_template` SET `minlevel`=37, `maxlevel`=37, `faction`=2102, `unit_flags2`=4196352 WHERE `entry`=56754; -- Azure Serpent
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=16, `unit_flags2`=2048 WHERE `entry`=59751; -- Shado-Pan Warden
UPDATE `creature_template` SET `faction`=2482, `unit_flags2`=34816 WHERE `entry`=62236; -- Ban Bearheart
UPDATE `creature_template` SET `minlevel`=37, `maxlevel`=37, `unit_flags`=32832, `unit_flags2`=2099200 WHERE `entry`=56747; -- Gu Cloudstrike
UPDATE `creature_template` SET `minlevel`=38, `maxlevel`=38, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=64550; -- Ice Arrow Target
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags2`=2048 WHERE `entry`=59811; -- Unstable Energy
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=56926; -- Arc Lightning Stalker
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=2482, `unit_flags2`=2048 WHERE `entry`=59741; -- Shado-Pan Guardian
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_walk`=1.60000002384185791, `speed_run`=1.428571462631225585, `unit_flags2`=2048 WHERE `entry`=65414; -- Ethereal Sha
UPDATE `creature_template` SET `faction`=35, `speed_walk`=2, `speed_run`=1.428571462631225585, `unit_flags`=256, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=58198; -- Shado-Pan Disciple
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags2`=67110912, `unit_flags3`=1 WHERE `entry`=65257; -- Unleashed Sha
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_walk`=2, `speed_run`=1.428571462631225585, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=63717; -- Shado-Pan Disciple
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=16, `unit_flags2`=2048 WHERE `entry`=59752; -- Shado-Pan Ambusher
UPDATE `creature_template` SET `minlevel`=38, `maxlevel`=38, `unit_flags2`=32768, `unit_flags3`=25165825 WHERE `entry`=60162; -- Training Target
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags2`=34816 WHERE `entry`=59808; -- Shado-Pan Stormbringer
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55, `speed_run`=1, `BaseAttackTime`=2000, `RangeAttackTime`=0, `unit_flags`=32768, `unit_flags2`=2048, `VehicleId`=7282 WHERE `entry`=171109; -- Odd Fungret
UPDATE `creature_template` SET `npcflag`=16777216 WHERE `entry`=171115; -- Fungret Mushroom
UPDATE `creature_template` SET `minlevel`=60, `faction`=3188, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=165363; -- Risen Shadow
UPDATE `creature_template` SET `unit_flags`=4227152 WHERE `entry`=172485; -- Scathely
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55, `faction`=94, `npcflag`=16777216, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912, `unit_flags3`=16777216 WHERE `entry`=174993; -- Ritual Circle
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55, `faction`=94, `npcflag`=16777216, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912, `unit_flags3`=16777216 WHERE `entry`=175150; -- Bone Stake
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags3`=0 WHERE `entry`=164128; -- Mephiles the Loyal
UPDATE `creature_template` SET `unit_flags`=570721024, `unit_flags2`=34817, `unit_flags3`=8192 WHERE `entry`=169129; -- Rotdust Bat
UPDATE `creature_template` SET `unit_flags`=67141632 WHERE `entry`=165025; -- Panicked Necroray
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55, `BaseAttackTime`=1837 WHERE `entry`=26125; -- Risen Ghoul



UPDATE `quest_template` SET `RewardBonusMoney`=2900, `Flags`=8, `VerifiedBuild`=46547 WHERE `ID`=31342; -- The Path to Respect Lies in Violence
UPDATE `quest_template` SET `RewardBonusMoney`=2900, `Flags`=8, `VerifiedBuild`=46547 WHERE `ID`=30757; -- Lord of the Shado-Pan
UPDATE `quest_template` SET `RewardBonusMoney`=470, `VerifiedBuild`=46547 WHERE `ID`=40716; -- The Sixth
UPDATE `quest_template` SET `RewardBonusMoney`=15500, `VerifiedBuild`=46547 WHERE `ID`=58023; -- One Big Problem
UPDATE `quest_template` SET `RewardBonusMoney`=1300, `VerifiedBuild`=46547 WHERE `ID`=58161; -- Forest Disappearances
UPDATE `quest_template` SET `RewardBonusMoney`=15500, `VerifiedBuild`=46547 WHERE `ID`=58022; -- Finish What He Started
UPDATE `quest_template` SET `VerifiedBuild`=46547 WHERE `ID` IN (62763, 66042, 65259, 64994, 64106, 63949, 63903, 63612, 61984, 60061, 59999, 62635, 50601, 48642, 63979, 63977, 61983, 57300, 56119, 50599, 42421, 42420, 28834, 35320, 49091, 48982, 48620, 49096, 61303, 59581, 59771, 59850, 59643, 60337, 66696, 59902, 59585, 61060, 61708, 59680, 61949, 61883, 61867, 61787, 43241, 39393, 39274, 39029, 38748, 46736, 46735, 46277, 65033, 62778, 62748, 57249, 53436, 43341, 42449, 36309);
UPDATE `quest_template` SET `RewardBonusMoney`=10350, `VerifiedBuild`=46547 WHERE `ID`=62457; -- The Great Vault
UPDATE `quest_template` SET `RewardBonusMoney`=10350, `Expansion`=9, `VerifiedBuild`=46547 WHERE `ID`=45563; -- The Shrouded Coin
UPDATE `quest_template` SET `RewardBonusMoney`=5150, `VerifiedBuild`=46547 WHERE `ID`=60136; -- Into Torghast
UPDATE `quest_template` SET `RewardBonusMoney`=23250, `VerifiedBuild`=46547 WHERE `ID`=59520; -- Plaguefall: Knee Deep In It
UPDATE `quest_template` SET `RewardBonusMoney`=1300, `VerifiedBuild`=46547 WHERE `ID`=58665; -- Rebellious Souls
UPDATE `quest_template` SET `RewardBonusMoney`=15500, `VerifiedBuild`=46547 WHERE `ID`=58431; -- Pool of Potions
UPDATE `quest_template` SET `Expansion`=9, `VerifiedBuild`=46547 WHERE `ID`=31588; -- Learning the Ropes
UPDATE `quest_template` SET `RewardBonusMoney`=10350, `Expansion`=9, `VerifiedBuild`=46547 WHERE `ID`=63501; -- It's Called Borrowing
UPDATE `quest_template` SET `RewardBonusMoney`=1300, `VerifiedBuild`=46547 WHERE `ID`=63035; -- A Fresh Blade
UPDATE `quest_template` SET `RewardBonusMoney`=82700, `VerifiedBuild`=46547 WHERE `ID`=62723; -- Bolstering Bastion
UPDATE `quest_template` SET `RewardBonusMoney`=12900, `VerifiedBuild`=46547 WHERE `ID`=62170; -- You'll Never Walk Alone
UPDATE `quest_template` SET `RewardBonusMoney`=62050, `VerifiedBuild`=46547 WHERE `ID`=60057; -- Necrotic Wake: A Paragon's Plight
UPDATE `quest_template` SET `RewardBonusMoney`=15500, `VerifiedBuild`=46547 WHERE `ID`=59750; -- How to Get a Head
UPDATE `quest_template` SET `RewardBonusMoney`=15500, `VerifiedBuild`=46547 WHERE `ID`=58750; -- Take the Bull by the Horns
UPDATE `quest_template` SET `RewardBonusMoney`=15500, `VerifiedBuild`=46547 WHERE `ID`=57547; -- A Test of Courage
UPDATE `quest_template` SET `RewardSpell`=81040, `VerifiedBuild`=46547 WHERE `ID`=44006; -- Your Fullest Potential
UPDATE `quest_template` SET `RewardBonusMoney`=3750, `VerifiedBuild`=46547 WHERE `ID`=41741; -- Troops in the Field
UPDATE `quest_template` SET `RewardBonusMoney`=470, `VerifiedBuild`=46547 WHERE `ID`=40078; -- A Heavy Burden
UPDATE `quest_template` SET `RewardBonusMoney`=470, `VerifiedBuild`=46547 WHERE `ID`=39062; -- To Skold-Ashil
UPDATE `quest_template` SET `RewardBonusMoney`=300, `VerifiedBuild`=46547 WHERE `ID`=29689; -- Advancing the Campaign
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46547 WHERE `ID`=29652; -- One Last Favor
UPDATE `quest_template` SET `RewardBonusMoney`=300, `VerifiedBuild`=46547 WHERE `ID`=29543; -- Invading the Citadel
UPDATE `quest_template` SET `RewardBonusMoney`=1450, `VerifiedBuild`=46547 WHERE `ID`=29439; -- The Call of the World-Shaman
UPDATE `quest_template` SET `RewardBonusMoney`=2900, `VerifiedBuild`=46547 WHERE `ID`=28852; -- Soften them Up
UPDATE `quest_template` SET `RewardBonusMoney`=2900, `VerifiedBuild`=46547 WHERE `ID`=28836; -- Sins of the Sea Witch
UPDATE `quest_template` SET `RewardBonusMoney`=2900, `VerifiedBuild`=46547 WHERE `ID`=28779; -- A Long Way from Home
UPDATE `quest_template` SET `RewardBonusMoney`=2900, `Flags`=8, `VerifiedBuild`=46547 WHERE `ID`=28760; -- Vengeance for Orsis
UPDATE `quest_template` SET `RewardBonusMoney`=2900, `Flags`=3735552, `VerifiedBuild`=46547 WHERE `ID`=28737; -- What Is This Place?
UPDATE `quest_template` SET `RewardBonusMoney`=370, `VerifiedBuild`=46547 WHERE `ID`=28558; -- Hero's Call: Uldum!
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46547 WHERE `ID`=27758; -- The Carpenter
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46547 WHERE `ID`=10160; -- Know your Enemy
UPDATE `quest_template` SET `RewardBonusMoney`=10350, `VerifiedBuild`=46547 WHERE `ID`=57245; -- Ani-Matter Animator
UPDATE `quest_template` SET `RewardBonusMoney`=12900, `VerifiedBuild`=46547 WHERE `ID`=59867; -- WANTED: Appraiser Vix
UPDATE `quest_template` SET `RewardBonusMoney`=15500, `VerifiedBuild`=46547 WHERE `ID`=58785; -- Smack and Grab
UPDATE `quest_template` SET `RewardBonusMoney`=15500, `VerifiedBuild`=46547 WHERE `ID`=59430; -- A Plague on Your House
UPDATE `quest_template` SET `RewardBonusMoney`=15500, `VerifiedBuild`=46547 WHERE `ID`=58619; -- Read Between the Lines
UPDATE `quest_template` SET `RewardBonusMoney`=19400, `VerifiedBuild`=46547 WHERE `ID`=59781; -- The Last Guy
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46547 WHERE `ID`=52944; -- Call to Arms: Drustvar
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46547 WHERE `ID`=59018; -- Call to Arms: Vale of Eternal Blossoms
UPDATE `quest_template` SET `RewardBonusMoney`=20700, `VerifiedBuild`=46547 WHERE `ID`=60840; -- Wild Hunt Offensive
UPDATE `quest_template` SET `RewardBonusMoney`=20700, `VerifiedBuild`=46547 WHERE `ID`=62741; -- Choice of Action
UPDATE `quest_template` SET `RewardBonusMoney`=20700, `VerifiedBuild`=46547 WHERE `ID`=62721; -- Deconstructing The Problem
UPDATE `quest_template` SET `RewardBonusMoney`=20700, `VerifiedBuild`=46547 WHERE `ID`=62712; -- War of Attrition
UPDATE `quest_template` SET `RewardBonusMoney`=20700, `VerifiedBuild`=46547 WHERE `ID`=62742; -- Avoid 'Em Like the Plague
UPDATE `quest_template` SET `RewardBonusMoney`=20700, `VerifiedBuild`=46547 WHERE `ID`=62743; -- Decaying Situation
UPDATE `quest_template` SET `RewardBonusMoney`=1300, `VerifiedBuild`=46547 WHERE `ID`=49929; -- The Call for Allies


UPDATE `quest_objectives` SET `VerifiedBuild`=46547 WHERE `ID` IN (268554, 393614, 393613, 405161, 405162, 393509, 421958, 421957, 409270, 408476, 408475, 408474, 408473, 408464, 408462, 408459, 408458, 427064, 423785, 423784, 423783, 423782, 423781, 423780, 423779, 423778, 422599, 420622, 421948, 421947, 421946, 421945, 421944, 421943, 421942, 421941, 421940, 421939, 420917, 421394, 420319, 421393, 420374, 420373, 421171, 420320, 420318, 420171, 407797, 407018, 397542, 397541, 397540, 397539, 397538, 397537, 397536, 397535, 397424, 336214, 292699, 420333, 420337, 420336, 420335, 420334, 406976, 405322, 396463, 396462, 394737, 396497, 394257, 392095, 390274, 336204, 284171, 284170, 419383, 419382, 419380, 421956, 421955, 409272, 408422, 408421, 408267, 408266, 408265, 408263, 408260, 408259, 398150, 398149, 396941, 396921, 394890, 392621, 404561, 284139, 265527, 265526, 265525, 266526, 266525, 266584, 251773, 256870, 254160, 267363, 266343, 391973, 397119, 394931, 396450, 396449, 396444, 397186, 396950, 396949, 340356, 395348, 405569, 405568, 409240, 396527, 396572, 396521, 396520, 396535, 396519, 396927, 396922, 396931, 397110, 397128, 397127, 397109, 396667, 397818, 398175, 398504, 404831, 404829, 404828, 404827, 404826, 404825, 404795, 427561, 397201, 407664, 396533, 396532, 396528, 405223, 405212, 405210, 405175, 405174, 405173, 405156, 406539, 407808, 406538, 407152, 408768, 408767, 408503, 408502, 408500, 408499, 408498, 408497, 408496, 408433, 408432, 408431, 408372, 408371, 408772, 408338, 408337, 408336, 408249, 408248, 408247, 408246, 408245, 408244, 408243, 408242, 408241, 408240, 408218, 408217, 408216, 408215, 408214, 408212, 408211, 408210, 408209, 408208, 396797, 396787, 396786, 396785, 396784, 396783, 406869, 406804, 406765, 406712, 408534, 408533, 408399, 408393, 408392, 408391, 285469, 285188, 285107, 285106, 285105, 285104, 285103, 285102, 280217, 280216, 280215, 280214, 280213, 280212, 279406, 279334, 280557, 280096, 279148, 279144, 279143, 285466, 278822, 278821, 278820, 286576, 286575, 286054, 278418, 278401, 278382, 289536, 289535, 289167, 421938, 421952, 421951, 409271, 408626, 408625, 408624, 408623, 408622, 408620, 408617, 408616, 421954, 421953, 409273, 408430, 408429, 408428, 408427, 408426, 408425, 408424, 408423, 422648, 409280, 409281, 408773, 408631, 408607, 408606, 408605, 408604, 408603, 408602, 408600, 408412, 408411, 341370, 285211, 285210, 285209, 285208, 286697);
UPDATE `quest_objectives` SET `Description`='Timewalking dungeons completed', `VerifiedBuild`=46547 WHERE `ID`=408089; -- 408089
UPDATE `quest_objectives` SET `Description`='Win a Pet Battle', `VerifiedBuild`=46547 WHERE `ID`=268806; -- 268806
UPDATE `quest_objectives` SET `Description`='Choose a Third Artifact to Pursue', `VerifiedBuild`=46547 WHERE `ID`=286600; -- 286600
UPDATE `quest_objectives` SET `Description`='Carry Havi\'s fish to the fire', `VerifiedBuild`=46547 WHERE `ID`=280283; -- 280283


UPDATE `quest_visual_effect` SET `VerifiedBuild`=46547 WHERE (`Index`=0 AND `ID` IN (393614,393613,405161,405162,393509,423779,422599,421171,420171,407018,420333,420337,420336,420335,420334,406976,405322,394257,419383,419382,419380,398150,396941,396921,394890,392621,286600,284139,280283,391973,394931,397186,405569,405568,396931,397110,397128,397127,397109,396667,397818,398175,398504,396532,396528,405156,406539,406538,407152,408371,408338,408240,408208,396797,396787,396786,396785,396784,396783,406869,406804,406765,406712,408391,285188,285107,285106,279406,279334,278820,278418,408411)) OR (`Index`=2 AND `ID` IN (393509,391973,396532,396528,408371,396783,278418)) OR (`Index`=1 AND `ID` IN (393509,420335,394257,396921,394890,280283,391973,397127,396667,398175,396532,396528,408371,396785,396783,278820,278418,408411)) OR (`Index`=4 AND `ID` IN (391973,396783)) OR (`Index`=3 AND `ID` IN (391973,396532,408371,396783,278418));


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=46547 WHERE (`Idx`=0 AND `QuestID` IN (60136,43341));


UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46547 WHERE `entry`=60162; -- Training Target
UPDATE `creature_template` SET `VerifiedBuild`=46547 WHERE `entry` IN (170456, 14505, 31216, 18406, 173267, 173271, 164360, 173272, 173273, 168266, 168269, 175519, 162711, 14565, 53006, 171092, 171093, 169992, 170002, 175024, 55272, 165007, 165008, 165009, 165024, 165025, 59764, 162816, 172854, 171740, 3527, 21354, 164525, 163414, 164544, 65407, 168453, 9158, 24207, 73780, 167359, 173495, 304, 164063, 305, 174649, 174650, 165189, 171318, 170779, 169129, 164117, 172479, 164128, 172485, 171381, 176400, 159691, 164711, 164713, 65011, 171956, 416, 73400, 174225, 28302, 172567, 161985, 32206, 160888, 172591, 165363, 172607, 172609, 26125, 164273, 61245, 18357, 18359, 18360, 18362, 18375, 18376);
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=3.75, `CreatureDifficultyID`=27078, `VerifiedBuild`=46547 WHERE `entry`=56870; -- Master Snowdrift
UPDATE `creature_template` SET `femaleName`='', `rank`=1, `type_flags2`=128, `HealthModifier`=45, `CreatureDifficultyID`=27042, `VerifiedBuild`=46547 WHERE `entry`=56884; -- Taran Zhu
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46547 WHERE `entry`=66920; -- Corrupted Taran Zhu
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=2.25, `CreatureDifficultyID`=58667, `VerifiedBuild`=46547 WHERE `entry`=65257; -- Unleashed Sha
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46547 WHERE `entry`=174993; -- Ritual Circle
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46547 WHERE `entry`=171109; -- Odd Fungret
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46547 WHERE `entry`=56926; -- Arc Lightning Stalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46547 WHERE `entry`=171115; -- Fungret Mushroom
UPDATE `creature_template` SET `rank`=0, `HealthModifier`=1.5, `CreatureDifficultyID`=28059, `VerifiedBuild`=46547 WHERE `entry`=56395; -- Shado-Pan Novice
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46547 WHERE `entry`=56397; -- Position
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46547 WHERE `entry`=171140; -- Forlorn Fungret
UPDATE `creature_template` SET `HealthModifier`=0.75, `CreatureDifficultyID`=56463, `VerifiedBuild`=46547 WHERE `entry`=59741; -- Shado-Pan Guardian
UPDATE `creature_template` SET `HealthModifier`=13.5, `CreatureDifficultyID`=56458, `VerifiedBuild`=46547 WHERE `entry`=59751; -- Shado-Pan Warden
UPDATE `creature_template` SET `HealthModifier`=3, `CreatureDifficultyID`=56459, `VerifiedBuild`=46547 WHERE `entry`=59752; -- Shado-Pan Ambusher
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.375, `CreatureDifficultyID`=22546, `VerifiedBuild`=46547 WHERE `entry`=59804; -- Gripping Hatred
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=5.25, `CreatureDifficultyID`=56460, `VerifiedBuild`=46547 WHERE `entry`=59808; -- Shado-Pan Stormbringer
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=6.75, `CreatureDifficultyID`=56462, `VerifiedBuild`=46547 WHERE `entry`=59811; -- Unstable Energy
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=15, `CreatureDifficultyID`=27925, `VerifiedBuild`=46547 WHERE `entry`=56472; -- Fragrant Lotus
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=15, `CreatureDifficultyID`=27919, `VerifiedBuild`=46547 WHERE `entry`=56473; -- Flying Snow
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=1.5, `movementId`=151, `CreatureDifficultyID`=57032, `VerifiedBuild`=46547 WHERE `entry`=63717; -- Shado-Pan Disciple
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=6, `movementId`=150, `CreatureDifficultyID`=58995, `VerifiedBuild`=46547 WHERE `entry`=65414; -- Ethereal Sha
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46547 WHERE `entry`=56505; -- Shado-pan Referee
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46547 WHERE `entry`=175150; -- Bone Stake
UPDATE `creature_template` SET `HealthModifier`=1.5, `movementId`=151, `CreatureDifficultyID`=25668, `VerifiedBuild`=46547 WHERE `entry`=58198; -- Shado-Pan Disciple
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=7.5, `CreatureDifficultyID`=25658, `VerifiedBuild`=46547 WHERE `entry`=58201; -- Sha Manifestation
UPDATE `creature_template` SET `femaleName`='', `rank`=1, `type_flags2`=128, `HealthModifier`=42.5, `CreatureDifficultyID`=27805, `VerifiedBuild`=46547 WHERE `entry`=56541; -- Master Snowdrift
UPDATE `creature_template` SET `HealthModifier`=0.75, `CreatureDifficultyID`=22356, `VerifiedBuild`=46547 WHERE `entry`=59895; -- Shado-Pan Monk
UPDATE `creature_template` SET `femaleName`='', `IconName`='questinteract', `CreatureDifficultyID`=24625, `VerifiedBuild`=46547 WHERE `entry`=58794; -- Slain Shado-Pan Defender
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=9, `ManaModifier`=47.25400161743164062, `CreatureDifficultyID`=24620, `VerifiedBuild`=46547 WHERE `entry`=58803; -- Residual Hatred
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=12, `CreatureDifficultyID`=24612, `VerifiedBuild`=46547 WHERE `entry`=58807; -- Vestige of Hatred
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=12, `CreatureDifficultyID`=24603, `VerifiedBuild`=46547 WHERE `entry`=58810; -- Fragment of Hatred
UPDATE `creature_template` SET `femaleName`='', `CreatureDifficultyID`=24595, `VerifiedBuild`=46547 WHERE `entry`=58812; -- Hateful Essence
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=30, `CreatureDifficultyID`=57745, `VerifiedBuild`=46547 WHERE `entry`=64387; -- Master Snowdrift
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46547 WHERE `entry`=171348; -- Necrotic Darkhound
UPDATE `creature_template` SET `femaleName`='', `rank`=0, `HealthModifier`=0.5, `CreatureDifficultyID`=60622, `VerifiedBuild`=46547 WHERE `entry`=66652; -- Lesser Volatile Energy
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46547 WHERE `entry`=171368; -- Skeletal Servitor
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.75, `CreatureDifficultyID`=27616, `VerifiedBuild`=46547 WHERE `entry`=56640; -- Ball of Fire
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.75, `CreatureDifficultyID`=27610, `VerifiedBuild`=46547 WHERE `entry`=56641; -- Ball of Fire
UPDATE `creature_template` SET `femaleName`='', `type_flags2`=150, `HealthModifier`=0.75, `CreatureDifficultyID`=61303, `VerifiedBuild`=46547 WHERE `entry`=67229; -- Master Snowdrift
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.75, `CreatureDifficultyID`=27597, `VerifiedBuild`=46547 WHERE `entry`=56646; -- Fire Flower
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.224999994039535522, `CreatureDifficultyID`=22154, `VerifiedBuild`=46547 WHERE `entry`=60005; -- Master Snowdrift
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.224999994039535522, `CreatureDifficultyID`=22148, `VerifiedBuild`=46547 WHERE `entry`=60006; -- Master Snowdrift
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.224999994039535522, `CreatureDifficultyID`=22143, `VerifiedBuild`=46547 WHERE `entry`=60007; -- Master Snowdrift
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46547 WHERE `entry`=62236; -- Ban Bearheart
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46547 WHERE `entry`=64468; -- Sha of Hatred
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.300000011920928955, `VerifiedBuild`=46547 WHERE `entry`=58344; -- Shado-pan Smoke Bomb
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.300000011920928955, `VerifiedBuild`=46547 WHERE `entry`=58345; -- Shado-pan Vanish Bomb
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=6.75, `CreatureDifficultyID`=27530, `VerifiedBuild`=46547 WHERE `entry`=56678; -- Jade Staff
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46547 WHERE `entry`=174224; -- Envy
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.150000005960464477, `CreatureDifficultyID`=27449, `VerifiedBuild`=46547 WHERE `entry`=56713; -- Master Snowdrift
UPDATE `creature_template` SET `femaleName`='', `rank`=1, `type_flags2`=128, `HealthModifier`=55, `CreatureDifficultyID`=27431, `VerifiedBuild`=46547 WHERE `entry`=56719; -- Sha of Violence
UPDATE `creature_template` SET `femaleName`='', `rank`=1, `type_flags2`=128, `HealthModifier`=35, `CreatureDifficultyID`=56456, `VerifiedBuild`=46547 WHERE `entry`=56747; -- Gu Cloudstrike
UPDATE `creature_template` SET `HealthModifier`=9, `CreatureDifficultyID`=57938, `VerifiedBuild`=46547 WHERE `entry`=64549; -- Shado-Pan Ice Archer
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46547 WHERE `entry`=64550; -- Ice Arrow Target
UPDATE `creature_template` SET `femaleName`='', `family`=303, `HealthModifier`=25, `CreatureDifficultyID`=56457, `VerifiedBuild`=46547 WHERE `entry`=56754; -- Azure Serpent
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=6, `CreatureDifficultyID`=57083, `VerifiedBuild`=46547 WHERE `entry`=56763; -- Regenerating Sha
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=7.5, `CreatureDifficultyID`=27331, `VerifiedBuild`=46547 WHERE `entry`=56764; -- Consuming Sha
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=7.5, `CreatureDifficultyID`=27326, `VerifiedBuild`=46547 WHERE `entry`=56765; -- Destroying Sha
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=1.875, `CreatureDifficultyID`=27321, `VerifiedBuild`=46547 WHERE `entry`=56766; -- Volatile Energy
UPDATE `creature_template` SET `HealthModifier`=4, `CreatureDifficultyID`=27315, `VerifiedBuild`=46547 WHERE `entry`=56767; -- Shado-Pan Fire Archer
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46547 WHERE `entry`=56803; -- Static Field Stalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46547 WHERE `entry`=59036; -- Slain Shado-pan Initiate


UPDATE `creature_template_model` SET `VerifiedBuild`=46547 WHERE (`Idx`=1 AND `CreatureID` IN (164360,59804,58812,56678,56395,56505,56397,65407,73400,59741,64550,65257,58198,171368,171318,171140,165363,170779,172479,171740,164544,168269,160888,171956,164273,174225,164713,164711,167359,162816,176400,170456,163414,165025,169129,26125)) OR (`Idx`=0 AND `CreatureID` IN (164360,64468,64387,59804,59764,53006,66920,56884,58812,58810,58803,59036,58807,58794,66652,58201,56767,56641,56640,56713,60007,60006,60005,58344,58345,56541,67229,56472,56678,56473,56646,56395,56870,56765,56763,56766,56764,59895,56505,64549,56397,56803,65407,56719,3527,73400,24207,416,61245,175519,165189,56754,56747,59811,59741,63717,60162,64550,59751,56926,62236,59808,65414,59752,65257,58198,171109,171348,162711,171115,172854,164117,164063,165363,165007,172591,173495,172609,170779,31216,172607,172567,172479,171740,172485,165009,165008,164544,164525,171092,168269,161985,160888,171956,168266,164273,175024,165024,174225,174224,171381,164713,164128,171093,173271,173267,164711,159691,167359,162816,173272,176400,169992,170456,163414,168453,173273,174649,165025,169129,174650,170002,305,21354,65011,55272,32206,18362,18375,18376,18406,18359,18357,18360,14565,14505,9158,73780,28302,304,26125)) OR (`Idx`=3 AND `CreatureID` IN (59741,26125)) OR (`Idx`=2 AND `CreatureID` IN (59741,65257,171140,165363,160888,164713,164711,26125));
UPDATE `creature_template_model` SET `DisplayScale`=1.20000004768371582, `VerifiedBuild`=46547 WHERE (`CreatureID`=171368 AND `Idx`=0); -- Skeletal Servitor
UPDATE `creature_template_model` SET `DisplayScale`=1.049999952316284179, `VerifiedBuild`=46547 WHERE (`CreatureID`=171318 AND `Idx`=0); -- Morbid Ritualist
UPDATE `creature_template_model` SET `DisplayScale`=1.10000002384185791, `VerifiedBuild`=46547 WHERE (`CreatureID`=171140 AND `Idx`=0); -- Forlorn Fungret
UPDATE `creature_template_model` SET `DisplayScale`=1.5, `VerifiedBuild`=46547 WHERE (`CreatureID`=174993 AND `Idx`=0); -- Ritual Circle
UPDATE `creature_template_model` SET `DisplayScale`=0.5, `VerifiedBuild`=46547 WHERE (`CreatureID`=175150 AND `Idx`=0); -- Bone Stake


UPDATE `creature_questitem` SET `VerifiedBuild`=46547 WHERE (`Idx`=1 AND `CreatureEntry`=162711) OR (`Idx`=0 AND `CreatureEntry` IN (162711,165007,165009,165008,168266));

DELETE FROM `gameobject_template` WHERE `entry` IN (339348 /*Cage*/, 352048 /*Edible Redcap*/, 352046 /*Dormouse Ecila*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(339348, 10, 59387, 'Cage', 'questinteract', 'Breaking Lock', '', 1.299999952316284179, 1690, 0, 0, 9000, 0, 0, 0, 0, 0, 0, 312713, 0, 0, 0, 81096, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 745, 46547), -- Cage
(352048, 10, 62485, 'Edible Redcap', '', 'Eating', '', 1, 43, 0, 0, 3000, 0, 1, 0, 0, 0, 0, 327367, 0, 0, 0, 169957, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 745, 46547), -- Edible Redcap
(352046, 10, 50650, 'Dormouse Ecila', '', 'Eating', '', 2, 43, 0, 0, 3000, 0, 1, 0, 0, 0, 0, 327352, 0, 0, 0, 169957, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 837, 46547); -- Dormouse Ecila

UPDATE `gameobject_template` SET `VerifiedBuild`=46547 WHERE `entry` IN (345229, 338622, 353378, 364530, 213457, 212908, 303148, 212899, 212062, 212064, 209311, 212063, 349898, 355424, 348935, 345469, 353633, 340666, 336689, 348526, 358367, 353399, 346019, 351470, 353616, 353601, 349082, 353614, 353602, 353397, 350775, 364865, 353400, 353398);
UPDATE `gameobject_template` SET `Data30`=86023, `VerifiedBuild`=46547 WHERE `entry`=213888; -- Taran Zhu's Personal Stash
UPDATE `gameobject_template` SET `Data30`=86022, `VerifiedBuild`=46547 WHERE `entry`=214519; -- Snowdrift's Possessions
UPDATE `gameobject_template` SET `Data1`=5708792, `VerifiedBuild`=46547 WHERE `entry`=210862; -- Doodad_PA_ShadowpanDoor002
UPDATE `gameobject_template` SET `Data1`=5708792, `VerifiedBuild`=46547 WHERE `entry`=210867; -- Doodad_PA_ShadowpanDoor002
UPDATE `gameobject_template` SET `Data1`=5708792, `VerifiedBuild`=46547 WHERE `entry`=210864; -- Doodad_PA_ShadowpanDoor002
UPDATE `gameobject_template` SET `Data1`=5708792, `VerifiedBuild`=46547 WHERE `entry`=210800; -- Doodad_PA_Shadowpan_BigDojoDoor002
UPDATE `gameobject_template` SET `type`=50, `IconName`='', `Data0`=2859, `Data1`=40326, `Data3`=0, `Data4`=75, `Data5`=75, `Data6`=30, `Data12`=680, `Data13`=1, `Data18`=10, `Data19`=0, `Data23`=0, `Data24`=0, `VerifiedBuild`=46547 WHERE `entry`=209351; -- Snow Lily
UPDATE `gameobject_template` SET `Data1`=5743776, `VerifiedBuild`=46547 WHERE `entry`=213194; -- Doodad_PA_ShadowpanDoor001
UPDATE `gameobject_template` SET `Data1`=5708792, `VerifiedBuild`=46547 WHERE `entry`=210866; -- Doodad_PA_ShadowpanDoor001
UPDATE `gameobject_template` SET `Data1`=5708792, `VerifiedBuild`=46547 WHERE `entry`=210863; -- Doodad_PA_ShadowpanDoor001


UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096


DELETE FROM `quest_poi` WHERE (`QuestID`=62721 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62721 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61060 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=61060 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=61060 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=61060 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=61060 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61060 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61060 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(62721, 0, 1, 32, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 46549), -- Deconstructing The Problem
(62721, 0, 0, 31, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 46549), -- Deconstructing The Problem
(61060, 0, 6, 32, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 46549), -- Spore Losers
(61060, 0, 5, 31, 0, 0, 2222, 1536, 0, 2, 0, 88558, 0, 0, 0, 46549), -- Spore Losers
(61060, 0, 4, 5, 405212, 171368, 2222, 1536, 0, 0, 0, 0, 0, 0, 1, 46549), -- Spore Losers
(61060, 0, 3, 4, 405210, 171348, 2222, 1536, 0, 0, 0, 0, 0, 0, 1, 46549), -- Spore Losers
(61060, 0, 2, 3, 405175, 171140, 2222, 1536, 0, 0, 0, 0, 0, 0, 1, 46549), -- Spore Losers
(61060, 0, 1, 2, 405174, 171318, 2222, 1536, 0, 0, 0, 0, 0, 0, 1, 46549), -- Spore Losers
(61060, 0, 0, 0, 405156, 171115, 2222, 1536, 0, 2, 0, 0, 0, 1992478, 0, 46549); -- Spore Losers

UPDATE `quest_poi` SET `VerifiedBuild`=46549 WHERE (`QuestID`=59703 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59703 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59703 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59703 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59703 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61708 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=61708 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61708 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61708 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62743 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62743 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65033 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65033 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62778 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=62778 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=62778 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=62778 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=62778 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62748 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=62748 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62748 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=62748 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=57249 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=57249 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=57249 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49929 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=45563 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=43341 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=43341 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=42449 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=42449 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=36309 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=62721 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61060 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=61060 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=61060 AND `Idx1`=4 AND `Idx2`=7) OR (`QuestID`=61060 AND `Idx1`=4 AND `Idx2`=6) OR (`QuestID`=61060 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=61060 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=61060 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=61060 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=61060 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=61060 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=61060 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=61060 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=61060 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=61060 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=61060 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61060 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=61060 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=61060 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=61060 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=61060 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=61060 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=61060 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=61060 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=61060 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=61060 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61060 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(62721, 1, 0, 3693, -1382, 0, 46549), -- Deconstructing The Problem
(62721, 0, 11, 3530, -1735, 0, 46549), -- Deconstructing The Problem
(62721, 0, 10, 3402, -1632, 0, 46549), -- Deconstructing The Problem
(62721, 0, 9, 3407, -1408, 0, 46549), -- Deconstructing The Problem
(62721, 0, 8, 3412, -1290, 0, 46549), -- Deconstructing The Problem
(62721, 0, 7, 3637, -1112, 0, 46549), -- Deconstructing The Problem
(62721, 0, 6, 3795, -1261, 0, 46549), -- Deconstructing The Problem
(62721, 0, 5, 3872, -1316, 0, 46549), -- Deconstructing The Problem
(62721, 0, 4, 3953, -1418, 0, 46549), -- Deconstructing The Problem
(62721, 0, 3, 4014, -1546, 0, 46549), -- Deconstructing The Problem
(62721, 0, 2, 3953, -1622, 0, 46549), -- Deconstructing The Problem
(62721, 0, 1, 3846, -1694, 0, 46549), -- Deconstructing The Problem
(62721, 0, 0, 3668, -1745, 0, 46549), -- Deconstructing The Problem
(61060, 6, 0, 2502, -4177, 3394, 46549), -- Spore Losers
(61060, 5, 0, 2511, -4174, 3394, 46549), -- Spore Losers
(61060, 4, 7, 2508, -4110, 3365, 46549), -- Spore Losers
(61060, 4, 6, 2474, -3948, 3342, 46549), -- Spore Losers
(61060, 4, 5, 2515, -3738, 3286, 46549), -- Spore Losers
(61060, 4, 4, 2588, -3711, 3281, 46549), -- Spore Losers
(61060, 4, 3, 2930, -3914, 3358, 46549), -- Spore Losers
(61060, 4, 2, 2998, -3975, 3352, 46549), -- Spore Losers
(61060, 4, 1, 2767, -4091, 3330, 46549), -- Spore Losers
(61060, 4, 0, 2657, -4127, 3344, 46549), -- Spore Losers
(61060, 3, 4, 2467, -3902, 3337, 46549), -- Spore Losers
(61060, 3, 3, 2790, -3875, 3304, 46549), -- Spore Losers
(61060, 3, 2, 2945, -4090, 3351, 46549), -- Spore Losers
(61060, 3, 1, 2928, -4175, 3350, 46549), -- Spore Losers
(61060, 3, 0, 2612, -4175, 3361, 46549), -- Spore Losers
(61060, 2, 8, 2484, -4166, 3394, 46549), -- Spore Losers
(61060, 2, 7, 2446, -4012, 3376, 46549), -- Spore Losers
(61060, 2, 6, 2439, -3973, 3355, 46549), -- Spore Losers
(61060, 2, 5, 2522, -3761, 3291, 46549), -- Spore Losers
(61060, 2, 4, 2557, -3727, 3288, 46549), -- Spore Losers
(61060, 2, 3, 3040, -3982, 3362, 46549), -- Spore Losers
(61060, 2, 2, 3005, -4147, 3360, 46549), -- Spore Losers
(61060, 2, 1, 2926, -4179, 3351, 46549), -- Spore Losers
(61060, 2, 0, 2539, -4205, 3402, 46549), -- Spore Losers
(61060, 1, 11, 2651, -4143, 3345, 46549), -- Spore Losers
(61060, 1, 10, 2546, -4117, 3369, 46549), -- Spore Losers
(61060, 1, 9, 2515, -4088, 3362, 46549), -- Spore Losers
(61060, 1, 8, 2484, -4058, 3360, 46549), -- Spore Losers
(61060, 1, 7, 2448, -4010, 3374, 46549), -- Spore Losers
(61060, 1, 6, 2470, -3901, 3337, 46549), -- Spore Losers
(61060, 1, 5, 2522, -3757, 3291, 46549), -- Spore Losers
(61060, 1, 4, 2602, -3776, 3284, 46549), -- Spore Losers
(61060, 1, 3, 3036, -3981, 3361, 46549), -- Spore Losers
(61060, 1, 2, 3047, -4002, 3362, 46549), -- Spore Losers
(61060, 1, 1, 3049, -4007, 3362, 46549), -- Spore Losers
(61060, 1, 0, 3004, -4150, 3360, 46549), -- Spore Losers
(61060, 0, 0, 2480, -4177, 3394, 46549); -- Spore Losers


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (160952,165583,169863,161249,171141,171109,174993,175150));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(160952, 0, 0, 0, 745, 46549),
(165583, 0, 0, 0, 745, 46549),
(169863, 0, 0, 0, 837, 46549),
(161249, 0, 0, 0, 837, 46549),
(171141, 0, 0, 0, 837, 46549),
(171109, 0, 0, 0, 837, 46549),
(174993, 0, 0, 0, 745, 46549),
(175150, 0, 0, 0, 745, 46549);




UPDATE `creature_model_info` SET `VerifiedBuild`=46549 WHERE `DisplayID` IN (97119, 96437, 95979, 97123, 94146, 94473, 88566, 96931, 94487, 92876, 95327, 94932, 95839, 95817, 98467, 99135, 97176, 96396, 99861, 95577, 95738, 96984, 96211, 96212, 96489, 95739, 95637, 96772, 97353, 97354, 7572, 45887, 7899, 94900, 99905, 96375, 80245, 15983, 62719, 95559, 95112, 94402, 96752, 98461, 94763, 94760, 96946, 26079, 82379, 94594, 94076, 92246, 94384, 98003, 100155, 97894, 97072, 95762, 96185, 95804, 98465, 96876, 96183, 95573, 95787, 99910, 98463, 94405, 98462, 96272, 95781, 99867, 95784, 96821, 94916, 97322, 80021, 80031, 96787, 7571, 95478, 99010, 95768, 95826, 96202, 96597, 97323, 95848, 95996, 97652, 94050, 95793, 94921, 96116, 31124, 97465, 95789, 97653, 99929, 97654, 83604, 94703, 11686, 59546, 97656, 17200, 97655, 97657, 61550, 94867);
UPDATE `creature_model_info` SET `BoundingRadius`=1.795606613159179687, `CombatReach`=2.25, `VerifiedBuild`=46549 WHERE `DisplayID`=95228;
UPDATE `creature_model_info` SET `BoundingRadius`=0.839329779148101806, `CombatReach`=1.5, `VerifiedBuild`=46549 WHERE `DisplayID` IN (96754, 96200);
UPDATE `creature_model_info` SET `BoundingRadius`=1.45022594928741455, `VerifiedBuild`=46549 WHERE `DisplayID`=94490;
UPDATE `creature_model_info` SET `BoundingRadius`=0.770752668380737304, `CombatReach`=3.25, `VerifiedBuild`=46549 WHERE `DisplayID`=96930;
UPDATE `creature_model_info` SET `BoundingRadius`=1.077363967895507812, `CombatReach`=1.349999904632568359, `VerifiedBuild`=46549 WHERE `DisplayID`=95113;
UPDATE `creature_model_info` SET `BoundingRadius`=6.026553630828857421, `CombatReach`=8, `VerifiedBuild`=46549 WHERE `DisplayID`=85632;
UPDATE `creature_model_info` SET `BoundingRadius`=0.561563193798065185, `CombatReach`=0.85000002384185791, `VerifiedBuild`=46549 WHERE `DisplayID` IN (99272, 99248);
UPDATE `creature_model_info` SET `BoundingRadius`=3.062690019607543945, `CombatReach`=3.300000190734863281, `VerifiedBuild`=46549 WHERE `DisplayID`=94075;
UPDATE `creature_model_info` SET `BoundingRadius`=0.652085483074188232, `CombatReach`=1.049999952316284179, `VerifiedBuild`=46549 WHERE `DisplayID`=94761;
UPDATE `creature_model_info` SET `BoundingRadius`=0.733513593673706054, `CombatReach`=1.5, `VerifiedBuild`=46549 WHERE `DisplayID` IN (94053, 95550, 95991, 95990);
UPDATE `creature_model_info` SET `BoundingRadius`=0.655749976634979248, `VerifiedBuild`=46549 WHERE `DisplayID`=99521;
UPDATE `creature_model_info` SET `BoundingRadius`=1.458828449249267578, `CombatReach`=1.25, `VerifiedBuild`=46549 WHERE `DisplayID`=99140;
UPDATE `creature_model_info` SET `BoundingRadius`=0.514313220977783203, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46549 WHERE `DisplayID`=94106;
UPDATE `creature_model_info` SET `BoundingRadius`=0.528530061244964599, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46549 WHERE `DisplayID` IN (94175, 94131);
UPDATE `creature_model_info` SET `BoundingRadius`=0.546457827091217041, `CombatReach`=0.85000002384185791, `VerifiedBuild`=46549 WHERE `DisplayID` IN (99322, 99293);
UPDATE `creature_model_info` SET `BoundingRadius`=0.57705998420715332, `VerifiedBuild`=46549 WHERE `DisplayID`=91896;
UPDATE `creature_model_info` SET `BoundingRadius`=0.769385576248168945, `CombatReach`=1.375, `VerifiedBuild`=46549 WHERE `DisplayID`=96209;
UPDATE `creature_model_info` SET `BoundingRadius`=1.100270390510559082, `CombatReach`=2.25, `VerifiedBuild`=46549 WHERE `DisplayID`=97006;
UPDATE `creature_model_info` SET `BoundingRadius`=0.629891037940979003, `CombatReach`=2, `VerifiedBuild`=46549 WHERE `DisplayID`=96898;
UPDATE `creature_model_info` SET `BoundingRadius`=1.227694869041442871, `CombatReach`=1.60000002384185791, `VerifiedBuild`=46549 WHERE `DisplayID`=97476;
UPDATE `creature_model_info` SET `BoundingRadius`=1.125, `CombatReach`=1.875, `VerifiedBuild`=46549 WHERE `DisplayID`=15963;
UPDATE `creature_model_info` SET `BoundingRadius`=2.138610363006591796, `CombatReach`=2.5, `VerifiedBuild`=46549 WHERE `DisplayID`=94056;
UPDATE `creature_model_info` SET `BoundingRadius`=1.710888266563415527, `CombatReach`=2, `VerifiedBuild`=46549 WHERE `DisplayID`=94227;
UPDATE `creature_model_info` SET `BoundingRadius`=8.218218803405761718, `CombatReach`=8.855000495910644531, `VerifiedBuild`=46549 WHERE `DisplayID`=95475;
UPDATE `creature_model_info` SET `BoundingRadius`=0.93155074119567871, `CombatReach`=1.5, `VerifiedBuild`=46549 WHERE `DisplayID`=94757;
UPDATE `creature_model_info` SET `BoundingRadius`=3.60000014305114746, `CombatReach`=2.880000114440917968, `VerifiedBuild`=46549 WHERE `DisplayID`=97120;
UPDATE `creature_model_info` SET `BoundingRadius`=3.22971343994140625, `CombatReach`=3.375, `VerifiedBuild`=46549 WHERE `DisplayID`=96864;
UPDATE `creature_model_info` SET `BoundingRadius`=9.271669387817382812, `CombatReach`=6, `VerifiedBuild`=46549 WHERE `DisplayID`=94406;
UPDATE `creature_model_info` SET `BoundingRadius`=0.300000011920928955, `CombatReach`=0.75, `VerifiedBuild`=46549 WHERE `DisplayID`=94100;
UPDATE `creature_model_info` SET `BoundingRadius`=0.300000011920928955, `CombatReach`=7.5, `VerifiedBuild`=46549 WHERE `DisplayID`=94116;
UPDATE `creature_model_info` SET `BoundingRadius`=7.649127483367919921, `CombatReach`=4.950000286102294921, `VerifiedBuild`=46549 WHERE `DisplayID`=96755;
UPDATE `creature_model_info` SET `BoundingRadius`=2.757707834243774414, `CombatReach`=4, `VerifiedBuild`=46549 WHERE `DisplayID`=94922;
UPDATE `creature_model_info` SET `BoundingRadius`=0.80686497688293457, `CombatReach`=1.65000009536743164, `VerifiedBuild`=46549 WHERE `DisplayID`=93933;
UPDATE `creature_model_info` SET `BoundingRadius`=0.67146378755569458, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46549 WHERE `DisplayID` IN (96553, 96059);
UPDATE `creature_model_info` SET `BoundingRadius`=1.394999980926513671, `CombatReach`=6.75, `VerifiedBuild`=46549 WHERE `DisplayID`=48061;
UPDATE `creature_model_info` SET `BoundingRadius`=0.551690876483917236, `CombatReach`=0.375, `VerifiedBuild`=46549 WHERE `DisplayID`=95788;
UPDATE `creature_model_info` SET `BoundingRadius`=0.69537520408630371, `CombatReach`=0.450000017881393432, `VerifiedBuild`=46549 WHERE `DisplayID` IN (94407, 94404);
UPDATE `creature_model_info` SET `BoundingRadius`=0.684621036052703857, `CombatReach`=0.649999976158142089, `VerifiedBuild`=46549 WHERE `DisplayID`=96999;
UPDATE `creature_model_info` SET `BoundingRadius`=3.585020065307617187, `CombatReach`=5.199999809265136718, `VerifiedBuild`=46549 WHERE `DisplayID`=94924;
UPDATE `creature_model_info` SET `BoundingRadius`=1.771826744079589843, `CombatReach`=1.5, `VerifiedBuild`=46549 WHERE `DisplayID`=95796;
UPDATE `creature_model_info` SET `BoundingRadius`=0.75, `VerifiedBuild`=46549 WHERE `DisplayID`=95654;
UPDATE `creature_model_info` SET `BoundingRadius`=1.056259632110595703, `CombatReach`=2.160000085830688476, `VerifiedBuild`=46549 WHERE `DisplayID`=95638;
UPDATE `creature_model_info` SET `BoundingRadius`=2.583770751953125, `CombatReach`=2.70000004768371582, `VerifiedBuild`=46549 WHERE `DisplayID`=97964;
UPDATE `creature_model_info` SET `BoundingRadius`=0.442737370729446411, `VerifiedBuild`=46549 WHERE `DisplayID`=100426;
UPDATE `creature_model_info` SET `BoundingRadius`=0.559553146362304687, `CombatReach`=1, `VerifiedBuild`=46549 WHERE `DisplayID`=96187;
UPDATE `creature_model_info` SET `BoundingRadius`=1.613647699356079101, `CombatReach`=4.5, `VerifiedBuild`=46549 WHERE `DisplayID`=83605;
UPDATE `creature_model_info` SET `BoundingRadius`=6, `CombatReach`=0, `VerifiedBuild`=46549 WHERE `DisplayID`=48481;
UPDATE `creature_model_info` SET `BoundingRadius`=4.5, `CombatReach`=7.5, `VerifiedBuild`=46549 WHERE `DisplayID`=99201;
UPDATE `creature_model_info` SET `BoundingRadius`=0.770189225673675537, `CombatReach`=1.574999928474426269, `VerifiedBuild`=46549 WHERE `DisplayID` IN (95993, 94090);
UPDATE `creature_model_info` SET `BoundingRadius`=1.183341622352600097, `CombatReach`=3.300000190734863281, `VerifiedBuild`=46549 WHERE `DisplayID` IN (83597, 83594);
UPDATE `creature_model_info` SET `BoundingRadius`=0.60000002384185791, `CombatReach`=0, `VerifiedBuild`=46549 WHERE `DisplayID`=94709;
UPDATE `creature_model_info` SET `BoundingRadius`=2.153142213821411132, `CombatReach`=2.25, `VerifiedBuild`=46549 WHERE `DisplayID`=96223;
UPDATE `creature_model_info` SET `BoundingRadius`=0.386183589696884155, `CombatReach`=0.262500017881393432, `VerifiedBuild`=46549 WHERE `DisplayID`=96635;


UPDATE `creature_template_spell` SET `VerifiedBuild`=46549 WHERE (`CreatureID`=26125 AND `Index` IN (7,6,5,4,3,2,1,0)) OR (`CreatureID`=171109 AND `Index`=0);


UPDATE `gossip_menu` SET `VerifiedBuild`=46549 WHERE (`MenuID`=25388 AND `TextID`=40054) OR (`MenuID`=24905 AND `TextID`=39240);

UPDATE `gossip_menu_option` SET `OptionText`='Let us begin.', `OptionBroadcastTextId`=20325, `VerifiedBuild`=46549 WHERE (`MenuID`=25388 AND `OptionID`=0); -- OptionBroadcastTextID: 20325 - 20325 - 45689 - 45689 - 54679 - 54679 - 70824 - 70824 - 81958 - 81958 - 93463 - 93463 - 103631 - 103631 - 119506 - 119506 - 126950 - 126950 - 133104 - 133104 - 133313 - 133313 - 136341 - 136341 - 192419 - 215243
UPDATE `gossip_menu_option` SET `OptionText`='<Ride Grimshadow.>', `VerifiedBuild`=46549 WHERE (`MenuID`=24905 AND `OptionID`=0);




UPDATE `creature_template` SET `unit_flags`=16 WHERE `entry`=164783; -- Battlesewn Flesh
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=33556480, `unit_flags3`=0 WHERE `entry`=165766; -- Shambling Guard
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55, `BaseAttackTime`=2000, `RangeAttackTime`=0, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=1, `VehicleId`=6956 WHERE `entry`=160952; -- Kynthia
UPDATE `creature_template` SET `gossip_menu_id`=25388, `npcflag`=1 WHERE `entry`=160272; -- Kynthia
UPDATE `creature_template` SET `unit_flags3`=16785408 WHERE `entry`=169295; -- Boneplated Phalanx
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55, `BaseAttackTime`=2000, `unit_flags`=33554688, `unit_flags2`=2048, `unit_flags3`=17301504 WHERE `entry`=165583; -- Laser Pointer
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=165584; -- Defense Protocol
UPDATE `creature_template` SET  `unit_flags3`=16777217 WHERE `entry`=162559; -- Runestone of Rituals
UPDATE `creature_template` SET  `unit_flags3`=16777217 WHERE `entry`=162584; -- Runestone of Eyes
UPDATE `creature_template` SET `minlevel`=60, `faction`=14, `speed_run`=1, `BaseAttackTime`=1500, `unit_flags2`=2048 WHERE `entry`=169863; -- Lich's Phylactery
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55, `BaseAttackTime`=1837 WHERE `entry`=24207; -- Army of the Dead
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=173045; -- Flayedwing Matriarch
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=159708; -- Marrowbore Feaster
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=159714; -- Marrowbore Creeper
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=159852; -- Web Barrier
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1 WHERE `entry`=159885; -- Intricate Webbing
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62 WHERE `entry`=159886; -- Sister Chelicerae
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55, `speed_run`=1.714285731315612792, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=1, `VehicleId`=6964 WHERE `entry`=161249; -- Grimshadow

UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62 WHERE `entry`=162727; -- Bubbleblood
UPDATE `creature_template` SET `unit_flags`=32832, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=165561; -- Bloated Corpselouse
UPDATE `creature_template` SET `dynamicflags`=128 WHERE `entry`=166186; -- Dead Newcomer
UPDATE `creature_template` SET `speed_run`=1.257142901420593261 WHERE `entry`=169190; -- Vengeful Bonetusk Sow
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=169250; -- Rotsting Worker
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=169249; -- Rotsting Drone

UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55, `faction`=3204, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=171141; -- Furious Fungret
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55, `speed_run`=1, `BaseAttackTime`=2000, `RangeAttackTime`=0, `unit_flags`=32768, `unit_flags2`=2048, `VehicleId`=7282 WHERE `entry`=171109; -- Odd Fungret
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55, `faction`=94, `npcflag`=16777216, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912, `unit_flags3`=16777216 WHERE `entry`=174993; -- Ritual Circle
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55, `faction`=94, `npcflag`=16777216, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912, `unit_flags3`=16777216 WHERE `entry`=175150; -- Bone Stake
UPDATE `creature_template` SET `unit_flags3`=16777217 WHERE `entry`=171295; -- Ritual Obelisk
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55, `BaseAttackTime`=1837 WHERE `entry`=26125; -- Risen Ghoul


DELETE FROM `quest_template` WHERE `ID`=66617;
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestPackageID`, `ContentTuningID`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitGiverModelSceneID`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `QuestSessionBonus`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(66617, 3, 0, 2426, 11462, 111, 0, 0, 5, 1, 0, 0, 0, 342089, 0, 0, 0, 0, 0, 0, 37290304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2410, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 12500, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1623, 8, 0, 0, 'Mortanis', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46549); -- -Unknown-

UPDATE `quest_template` SET `VerifiedBuild`=46549 WHERE `ID` IN (60277, 65735, 63792, 66618, 60533, 61867, 57443, 66696, 61477, 61708, 62235, 60855, 61787, 59578, 59643, 48620, 61949, 59902, 59234, 49099, 49097, 59703, 61883, 59680, 60565, 49096, 43241, 39393, 39274, 39029, 38748, 46736, 46735, 46277, 61060, 65033, 62778, 62748, 57249, 53436, 43341, 42449, 36309);
UPDATE `quest_template` SET `RewardBonusMoney`=10350, `VerifiedBuild`=46549 WHERE `ID`=57245; -- Ani-Matter Animator
UPDATE `quest_template` SET `RewardBonusMoney`=12900, `VerifiedBuild`=46549 WHERE `ID`=59867; -- WANTED: Appraiser Vix
UPDATE `quest_template` SET `RewardBonusMoney`=15500, `VerifiedBuild`=46549 WHERE `ID`=58785; -- Smack and Grab
UPDATE `quest_template` SET `RewardBonusMoney`=15500, `VerifiedBuild`=46549 WHERE `ID`=59430; -- A Plague on Your House
UPDATE `quest_template` SET `RewardBonusMoney`=15500, `VerifiedBuild`=46549 WHERE `ID`=58619; -- Read Between the Lines
UPDATE `quest_template` SET `RewardBonusMoney`=19400, `VerifiedBuild`=46549 WHERE `ID`=59781; -- The Last Guy
UPDATE `quest_template` SET `RewardBonusMoney`=20700, `VerifiedBuild`=46549 WHERE `ID`=60840; -- Wild Hunt Offensive
UPDATE `quest_template` SET `RewardBonusMoney`=20700, `VerifiedBuild`=46549 WHERE `ID`=62741; -- Choice of Action
UPDATE `quest_template` SET `RewardBonusMoney`=20700, `VerifiedBuild`=46549 WHERE `ID`=62721; -- Deconstructing The Problem
UPDATE `quest_template` SET `RewardBonusMoney`=20700, `VerifiedBuild`=46549 WHERE `ID`=62712; -- War of Attrition
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46549 WHERE `ID`=52944; -- Call to Arms: Drustvar
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46549 WHERE `ID`=59018; -- Call to Arms: Vale of Eternal Blossoms
UPDATE `quest_template` SET `RewardBonusMoney`=20700, `VerifiedBuild`=46549 WHERE `ID`=62742; -- Avoid 'Em Like the Plague
UPDATE `quest_template` SET `RewardBonusMoney`=20700, `VerifiedBuild`=46549 WHERE `ID`=62743; -- Decaying Situation
UPDATE `quest_template` SET `RewardBonusMoney`=1300, `VerifiedBuild`=46549 WHERE `ID`=49929; -- The Call for Allies
UPDATE `quest_template` SET `RewardBonusMoney`=10350, `Expansion`=9, `VerifiedBuild`=46549 WHERE `ID`=45563; -- The Shrouded Coin

DELETE FROM `quest_objectives` WHERE `ID`=427329;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
(427329, 66617, 0, 0, 0, 167525, 1, 1, 0, 0, '', 46549); -- 427329

UPDATE `quest_objectives` SET `VerifiedBuild`=46549 WHERE `ID` IN (398105, 423251, 419765, 427331, 405877, 405876, 405875, 405874, 405873, 405872, 405871, 405870, 405869, 405868, 405867, 391973, 397119, 394931, 396450, 396449, 396444, 397186, 396950, 396949, 404831, 404829, 404828, 404827, 404826, 404825, 404795, 408768, 408767, 408503, 408502, 408500, 408499, 408498, 408497, 408496, 408433, 408432, 408431, 408372, 408371, 408772, 408338, 408337, 408336, 408249, 408248, 408247, 408246, 408245, 408244, 408243, 408242, 408241, 408240, 408218, 408217, 408216, 408215, 408214, 408212, 408211, 408210, 408209, 408208, 406765, 392429, 392436, 427561, 405979, 405978, 405977, 405976, 405973, 408487, 405970, 406539, 407808, 406538, 407152, 407513, 408918, 407508, 407507, 407506, 404910, 404909, 406712, 396513, 396512, 396511, 396510, 407593, 396509, 396667, 397818, 340356, 406869, 397201, 409171, 396199, 395348, 396806, 396805, 396804, 396803, 406804, 396797, 396787, 396786, 396785, 396784, 396783, 398896, 398895, 398894, 398893, 398892, 398875, 398876, 408534, 408533, 408399, 408393, 408392, 408391, 285469, 285188, 285107, 285106, 285105, 285104, 285103, 285102, 280217, 280216, 280215, 280214, 280213, 280212, 279406, 279334, 280557, 280096, 279148, 279144, 279143, 285466, 278822, 278821, 278820, 286576, 286575, 286054, 278418, 278401, 278382, 289536, 289535, 289167, 405223, 405212, 405210, 405175, 405174, 405173, 405156, 421938, 421952, 421951, 409271, 408626, 408625, 408624, 408623, 408622, 408620, 408617, 408616, 421954, 421953, 409273, 408430, 408429, 408428, 408427, 408426, 408425, 408424, 408423, 422648, 409280, 409281, 408773, 408631, 408607, 408606, 408605, 408604, 408603, 408602, 408600, 408412, 408411, 341370, 285211, 285210, 285209, 285208, 286697);

DELETE FROM `quest_visual_effect` WHERE (`ID`=427329 AND `Index`=0);
INSERT INTO `quest_visual_effect` (`ID`, `Index`, `VisualEffect`, `VerifiedBuild`) VALUES
(427329, 0, 15965, 46549);

UPDATE `quest_visual_effect` SET `VerifiedBuild`=46549 WHERE (`Index`=0 AND `ID` IN (419765,391973,394931,397186,408371,408338,408240,408208,406765,392429,392436,405979,405978,405977,405976,405973,408487,406539,406538,407152,407507,406712,396513,396512,396511,396510,396509,396667,397818,406869,396199,396806,396805,396804,396803,406804,396797,396787,396786,396785,396784,396783,398896,398895,398894,398893,398892,398875,398876,408391,285188,285107,285106,279406,279334,278820,278418,405156,408411)) OR (`Index`=4 AND `ID` IN (391973,396509,396199,396783,398876)) OR (`Index`=3 AND `ID` IN (391973,408371,392429,396509,396199,396783,398896,398895,398894,398893,398892,398875,398876,278418)) OR (`Index`=2 AND `ID` IN (391973,408371,392429,407507,396509,396199,396783,398896,398895,398894,398893,398892,398875,398876,278418)) OR (`Index`=1 AND `ID` IN (391973,408371,392429,407507,396509,396667,396199,396806,396785,396783,398896,398895,398894,398893,398892,398875,398876,278820,278418,408411)) OR (`Index`=5 AND `ID` IN (396509,396199,398876)) OR (`Index`=10 AND `ID` IN (396199,398876)) OR (`Index`=9 AND `ID` IN (396199,398876)) OR (`Index`=8 AND `ID` IN (396199,398876)) OR (`Index`=7 AND `ID` IN (396199,398876)) OR (`Index`=6 AND `ID` IN (396199,398876)) OR (`Index`=11 AND `ID`=398876);


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=46549 WHERE (`QuestID`=43341 AND `Idx`=0);


UPDATE `creature_template` SET `VerifiedBuild`=46549 WHERE `entry` IN (158752, 176023, 176024, 170456, 14505, 162669, 18406, 159886, 174930, 159893, 164354, 169926, 156558, 159901, 164360, 177731, 168266, 168269, 164928, 159916, 169395, 162711, 174410, 162721, 14565, 162727, 168857, 168859, 171093, 168316, 160522, 169992, 170002, 175021, 160540, 175023, 175024, 55272, 165002, 164446, 165561, 165009, 164458, 160567, 165025, 165583, 165584, 162816, 168946, 169512, 171740, 166728, 21354, 169521, 158387, 166186, 168424, 164525, 173996, 163415, 165644, 161189, 170101, 158405, 170662, 164544, 158977, 174024, 169574, 9158, 167353, 158442, 167354, 167355, 167356, 24207, 73780, 167359, 175162, 176285, 176287, 176288, 172413, 304, 164063, 305, 174649, 174650, 174095, 174652, 174653, 174656, 171318, 174664, 174665, 174668, 165208, 160211, 169129, 160218, 164117, 165232, 161896, 172479, 169698, 169699, 169700, 172485, 175833, 158566, 159683, 166370, 168042, 176400, 159691, 163038, 164711, 164713, 65011, 171956, 159708, 159714, 160272, 169184, 169190, 158053, 159737, 157516, 157517, 157518, 159747, 159748, 159750, 28302, 158642, 161985, 159757, 159759, 32206, 161988, 169234, 168677, 165337, 164783, 162559, 160888, 165349, 169249, 169250, 164798, 160912, 162584, 160916, 26125, 165376, 162593, 164273, 169295, 165397, 173200, 18357, 169863, 18359, 18360, 18362, 157058, 169312, 169870, 18375, 18376, 164312);
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=159885; -- Intricate Webbing
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=174926; -- Steward Prisoner
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46549 WHERE `entry`=173274; -- Gorgemouth
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=174993; -- Ritual Circle
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=171109; -- Odd Fungret
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=171115; -- Fungret Mushroom
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46549 WHERE `entry`=175022; -- Bleak Skitterer
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=165566; -- Deadeye
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=171140; -- Forlorn Fungret
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=171141; -- Furious Fungret
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46549 WHERE `entry`=174533; -- Displaced Arachnid
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=157844; -- Messana
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=161196; -- Arin'gore
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=175150; -- Bone Stake
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.75, `VerifiedBuild`=46549 WHERE `entry`=165684; -- Anima Conduit
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry` IN (161249, 175789, 160917); -- Grimshadow
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=171295; -- Ritual Obelisk
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=165747; -- Champion Shenrak
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=165765; -- Construct Surgeon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=165766; -- Shambling Guard
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=171348; -- Necrotic Darkhound
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=171368; -- Skeletal Servitor
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=173045; -- Flayedwing Matriarch
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=173046; -- Ferocious Nestkeeper
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.800000011920928955, `VerifiedBuild`=46549 WHERE `entry`=175317; -- Animated Corpsehound
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `HealthModifier`=0.200000002980232238, `VerifiedBuild`=46549 WHERE `entry`=174230; -- Lime
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=160905; -- Augmented Soldier
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.5, `VerifiedBuild`=46549 WHERE `entry`=160913; -- Vestigial Animate
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=160927; -- Lumbering Siegebeast
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=160952; -- Kynthia
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=159852; -- Web Barrier


UPDATE `creature_template_model` SET `VerifiedBuild`=46549 WHERE (`Idx`=0 AND `CreatureID` IN (169870,157058,169926,165232,165208,159759,159748,165397,172413,161189,160927,160905,165766,165765,165644,160540,160218,174653,170101,160567,160272,160211,175022,173200,157518,161988,169574,167353,159683,169700,169295,165337,165002,169312,165349,168424,161896,165583,165584,162559,176288,160916,160912,176285,158405,163415,162669,176287,167356,162593,175833,174410,164798,173996,166728,174024,174230,158977,168859,175789,24207,159747,159901,159737,159885,159852,156558,159886,173274,161249,160917,169395,168946,157517,169698,157844,162727,175021,165566,158053,166186,165561,158566,158387,175023,174652,167354,176024,176023,174533,158442,166370,168677,167355,158752,169512,169234,169190,169184,164312,169250,169249,158642,164458,159757,159691,162816,174668,174665,174664,174656,171956,164928,164446,163038,157516,175162,160522,168042,171093,172485,172479,171740,165009,164544,164525,171109,171348,162711,171115,170002,169521,164711,168266,169992,168269,160888,175024,177731,168316,164354,164117,164063,174649,161985,164713,170456,176400,165025,169129,164273,167359,164360,174650,305,21354,65011,55272,32206,18362,18375,18376,18406,18359,18357,18360,14565,14505,9158,73780,28302,304,26125)) OR (`Idx`=1 AND `CreatureID` IN (165232,165208,159759,172413,161189,165766,174930,159683,169700,169295,165337,165583,165584,170662,162721,176288,160916,160912,176285,158405,176287,167356,162593,173996,158977,156558,165561,174652,176024,176023,174533,168677,164312,164458,159757,162816,171956,164928,164446,163038,175162,160522,172479,171740,164544,171141,171368,171318,169521,164711,168269,160888,171140,168316,164354,164713,170456,176400,165025,169129,164273,167359,164360,26125)) OR (`Idx`=3 AND `CreatureID` IN (172413,161189,174930,159683,169700,169295,158977,26125)) OR (`Idx`=2 AND `CreatureID` IN (172413,161189,174930,159683,169700,169295,158977,165561,176024,176023,174533,160522,171141,169521,164711,160888,171140,164713,26125)) OR (`Idx`=7 AND `CreatureID`=161189) OR (`Idx`=6 AND `CreatureID`=161189) OR (`Idx`=5 AND `CreatureID` IN (161189,169295)) OR (`Idx`=4 AND `CreatureID` IN (161189,169700,169295,158977));
UPDATE `creature_template_model` SET `DisplayScale`=1.5, `VerifiedBuild`=46549 WHERE (`CreatureID`=165747 AND `Idx`=0); -- Champion Shenrak
UPDATE `creature_template_model` SET `DisplayScale`=0.899999976158142089, `VerifiedBuild`=46549 WHERE (`CreatureID`=164783 AND `Idx`=0); -- Battlesewn Flesh
UPDATE `creature_template_model` SET `DisplayScale`=15, `VerifiedBuild`=46549 WHERE (`CreatureID`=165684 AND `Idx`=0); -- Anima Conduit
UPDATE `creature_template_model` SET `DisplayScale`=1.399999976158142089, `VerifiedBuild`=46549 WHERE (`CreatureID`=175317 AND `Idx`=0); -- Animated Corpsehound
UPDATE `creature_template_model` SET `DisplayScale`=0.699999988079071044, `VerifiedBuild`=46549 WHERE (`CreatureID`=160913 AND `Idx`=0); -- Vestigial Animate
UPDATE `creature_template_model` SET `DisplayScale`=1.25, `VerifiedBuild`=46549 WHERE (`CreatureID`=160952 AND `Idx`=0); -- Kynthia
UPDATE `creature_template_model` SET `DisplayScale`=0.85000002384185791, `VerifiedBuild`=46549 WHERE (`CreatureID`=174930 AND `Idx`=0); -- Kyrian Prisoner
UPDATE `creature_template_model` SET `DisplayScale`=1.10000002384185791, `VerifiedBuild`=46549 WHERE (`CreatureID`=174926 AND `Idx`=0); -- Steward Prisoner
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=46549 WHERE (`CreatureID`=170662 AND `Idx`=0); -- Tome of War
UPDATE `creature_template_model` SET `DisplayScale`=1.399999976158142089, `Probability`=0, `VerifiedBuild`=46549 WHERE (`CreatureID`=162721 AND `Idx`=0); -- Book - Bunny
UPDATE `creature_template_model` SET `DisplayScale`=2, `VerifiedBuild`=46549 WHERE (`CreatureID`=162584 AND `Idx`=0); -- Runestone of Eyes
UPDATE `creature_template_model` SET `DisplayScale`=1.75, `VerifiedBuild`=46549 WHERE (`CreatureID`=174095 AND `Idx`=0); -- Monstrous Overseer
UPDATE `creature_template_model` SET `DisplayScale`=1.20000004768371582, `VerifiedBuild`=46549 WHERE (`CreatureID`=169863 AND `Idx`=0); -- Lich's Phylactery
UPDATE `creature_template_model` SET `DisplayScale`=1.5, `VerifiedBuild`=46549 WHERE (`CreatureID`=161196 AND `Idx`=0); -- Arin'gore
UPDATE `creature_template_model` SET `DisplayScale`=1.399999976158142089, `VerifiedBuild`=46549 WHERE (`CreatureID`=173045 AND `Idx`=0); -- Flayedwing Matriarch
UPDATE `creature_template_model` SET `DisplayScale`=0.899999976158142089, `VerifiedBuild`=46549 WHERE (`CreatureID`=173046 AND `Idx`=0); -- Ferocious Nestkeeper
UPDATE `creature_template_model` SET `DisplayScale`=4, `VerifiedBuild`=46549 WHERE (`CreatureID`=159916 AND `Idx`=0); -- Boneweave Rampager
UPDATE `creature_template_model` SET `Probability`=10, `VerifiedBuild`=46549 WHERE (`CreatureID`=159750 AND `Idx`=0); -- Marrowbore Nest
UPDATE `creature_template_model` SET `DisplayScale`=0.400000005960464477, `VerifiedBuild`=46549 WHERE (`CreatureID`=159714 AND `Idx`=0); -- Marrowbore Creeper
UPDATE `creature_template_model` SET `DisplayScale`=0.899999976158142089, `VerifiedBuild`=46549 WHERE (`CreatureID`=159708 AND `Idx`=0); -- Marrowbore Feaster
UPDATE `creature_template_model` SET `DisplayScale`=2.5, `VerifiedBuild`=46549 WHERE (`CreatureID`=168857 AND `Idx`=0); -- Stitched-Wing Hauler
UPDATE `creature_template_model` SET `DisplayScale`=1.10000002384185791, `VerifiedBuild`=46549 WHERE (`CreatureID`=159893 AND `Idx`=0); -- Bonesmith Mimm
UPDATE `creature_template_model` SET `DisplayScale`=1.10000002384185791, `VerifiedBuild`=46549 WHERE (`CreatureID`=165376 AND `Idx`=0); -- Bonesmith Tolvar
UPDATE `creature_template_model` SET `DisplayScale`=0.800000011920928955, `VerifiedBuild`=46549 WHERE (`CreatureID`=169699 AND `Idx`=0); -- Scavenger Bajard
UPDATE `creature_template_model` SET `DisplayScale`=1.10000002384185791, `VerifiedBuild`=46549 WHERE (`CreatureID`=171141 AND `Idx`=0); -- Furious Fungret
UPDATE `creature_template_model` SET `DisplayScale`=1.20000004768371582, `VerifiedBuild`=46549 WHERE (`CreatureID`=171368 AND `Idx`=0); -- Skeletal Servitor
UPDATE `creature_template_model` SET `DisplayScale`=1.049999952316284179, `VerifiedBuild`=46549 WHERE (`CreatureID`=171318 AND `Idx`=0); -- Morbid Ritualist
UPDATE `creature_template_model` SET `DisplayScale`=0.5, `VerifiedBuild`=46549 WHERE (`CreatureID`=175150 AND `Idx`=0); -- Bone Stake
UPDATE `creature_template_model` SET `DisplayScale`=1.5, `VerifiedBuild`=46549 WHERE (`CreatureID`=174993 AND `Idx`=0); -- Ritual Circle
UPDATE `creature_template_model` SET `DisplayScale`=1.10000002384185791, `VerifiedBuild`=46549 WHERE (`CreatureID`=171140 AND `Idx`=0); -- Forlorn Fungret
UPDATE `creature_template_model` SET `DisplayScale`=0.60000002384185791, `VerifiedBuild`=46549 WHERE (`CreatureID`=171295 AND `Idx`=0); -- Ritual Obelisk


UPDATE `creature_questitem` SET `VerifiedBuild`=46549 WHERE (`Idx`=1 AND `CreatureEntry` IN (157058,162669,159916,159747,159737,159714,159708,159886,162727,158752,162711)) OR (`Idx`=0 AND `CreatureEntry` IN (157058,164783,165337,162669,164798,173996,166728,158977,159916,159747,159737,159714,159708,159886,162727,158053,165561,158566,158752,158642,165009,162711,168266));

DELETE FROM `gameobject_template` WHERE `entry` IN (364478 /*Flask of Unravelling*/, 339348 /*Cage*/, 352048 /*Edible Redcap*/, 352046 /*Dormouse Ecila*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(364478, 10, 61230, 'Flask of Unravelling', '', '', '', 1.20000004768371582, 0, 0, 0, 3000, 0, 1, 0, 0, 0, 0, 344671, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 837, 46549), -- Flask of Unravelling
(339348, 10, 59387, 'Cage', 'questinteract', 'Breaking Lock', '', 1.299999952316284179, 1690, 0, 0, 9000, 0, 0, 0, 0, 0, 0, 312713, 0, 0, 0, 81096, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 745, 46549), -- Cage
(352048, 10, 62485, 'Edible Redcap', '', 'Eating', '', 1, 43, 0, 0, 3000, 0, 1, 0, 0, 0, 0, 327367, 0, 0, 0, 169957, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 745, 46549), -- Edible Redcap
(352046, 10, 50650, 'Dormouse Ecila', '', 'Eating', '', 2, 43, 0, 0, 3000, 0, 1, 0, 0, 0, 0, 327352, 0, 0, 0, 169957, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 837, 46549); -- Dormouse Ecila

UPDATE `gameobject_template` SET `name`='Translocation Sphere', `VerifiedBuild`=46549 WHERE `entry`=364847; -- Сфера транслокации
UPDATE `gameobject_template` SET `VerifiedBuild`=46549 WHERE `entry` IN (336675, 348935, 358533, 354626, 355868, 348544, 355860, 348670, 363444, 358531, 341345, 288598, 288597, 341359, 341347, 340059, 349082, 341360, 341356, 341364, 341346, 341358, 341407, 340721, 340722, 353615, 341408, 338855, 246280, 364863, 338683, 348535, 348536, 348532, 236184, 353881, 336691, 352110, 349981, 353395, 353396, 353394, 353393, 353883, 348557, 348554, 348553, 351470, 349086, 355424, 353633, 348526, 345469, 353616, 349898, 355872, 345332, 340666, 336689, 346019, 345229, 353601, 353614, 353378, 353602, 364530, 338622, 350775, 364865, 353400, 353398, 353399, 353397);
UPDATE `gameobject_template` SET `Data32`=108, `VerifiedBuild`=46549 WHERE `entry`=355880; -- The Necronom-i-nom
UPDATE `gameobject_template` SET `name`='Roost', `VerifiedBuild`=46549 WHERE `entry`=339836; -- 339836
UPDATE `gameobject_template` SET `name`='Golden Egg', `castBarCaption`='Collecting', `VerifiedBuild`=46549 WHERE `entry`=339750; -- 339750
UPDATE `gameobject_template` SET `name`='Journal of Arin\'gore', `VerifiedBuild`=46549 WHERE `entry`=339411; -- 339411


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46549 WHERE (`Idx`=1 AND `GameObjectEntry` IN (355880,355872)) OR (`Idx`=0 AND `GameObjectEntry` IN (355880,339750,355872));


UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096


DELETE FROM `creature_equip_template` WHERE (`CreatureID`=173943 AND `ID`=3) OR (`CreatureID`=76168 AND `ID`=2);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(173943, 3, 174304, 0, 0, 176722, 0, 0, 0, 0, 0, 46549), -- Chosen Gatewatch
(76168, 2, 155225, 0, 0, 0, 0, 0, 0, 0, 0, 46549); -- Ravager

UPDATE `creature_equip_template` SET `VerifiedBuild`=46549 WHERE (`ID`=1 AND `CreatureID` IN (99541,171787,170640,175082,187734,164803,171822,171821,164079,173388,176067,171796,170557,164596,156698,173330,164686,164685,169634,171547,171549,167273,157671,174898,165366,171546,164667,172696,168947,160424,161018,160415,167483,168972,170931,170582,170962,164880,170891,163824,164879,170553,170994,164845,164913,172398,172397,157682,172674,172675,170580,164864,170908,164882,164830,164836,170956,164877,164848,164860,173948,170583,170954,170967,170966,164885,173944,170901,171358,170892,170890,167817,157654,170993,170573,170562,171169,158794,167747,167743,158453,165182,167737,167741,175008,167642,161676,167640,165335,161613,167832,164273,165008,165007,69791,169861,170474,164737,171675,164266,167493,163862,174802,171656,168627,168886,168365,168578,169696,168572,168574,160522,172589,172557,172590,172596,172601,174679,159757,168226,163041,164507,166400,166540,163084,170095,166564,168518,161695,168522,170099,168440,161757,164588,173003,170542,170496,162873,167535,166437,173018,173026,164831,162650,169295,168322,169574,158798,159759)) OR (`ID`=2 AND `CreatureID` IN (17252,160424,170962,164830,173943,171419,170891,157682,157654,170550,171358,173948,164273,69792,166540,162813)) OR (`ID`=3 AND `CreatureID` IN (164830,164824,171358,170550,173948,167641,162813)) OR (`ID`=4 AND `CreatureID` IN (164824,171358,170493));

DELETE FROM `areatrigger_template` WHERE (`IsServerSide`=0 AND `Id` IN (25851,26093));
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(25851, 0, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 46549),
(26093, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 46549);

UPDATE `areatrigger_template` SET `VerifiedBuild`=46549 WHERE (`IsServerSide`=0 AND `Id` IN (24417,24072,23463,23299,23297,23826,23823,12740,9397,9225,10698,9228,25853,3319,10665,7020,10727,4520,24531,11266,25527,26126,26240,2947,25156,23286,24302,23583,25115,26127,23388,10714,22316,23540,25854,27320,3020,13091,22375,24257,24450));
UPDATE `areatrigger_template` SET `Flags`=1, `VerifiedBuild`=46549 WHERE (`Id`=9397 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=2, `VerifiedBuild`=46549 WHERE (`Id`=9228 AND `IsServerSide`=0);


DELETE FROM `quest_offer_reward` WHERE `ID` IN (64849 /*Tower of the Damned*/, 64846 /*Torghast*/, 63209 /*Furthering the Purpose*/, 62761 /*Return to Oribos*/, 62748 /*Rallying Maldraxxus*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(64849, 669, 0, 0, 0, 0, 0, 0, 0, 'Stay back! \n\nWait... you\'re not one of the Jailer\'s forces.\n\nBox! We have a visitor, play the nice music would you?', 46549), -- Tower of the Damned
(64846, 0, 0, 0, 0, 0, 0, 0, 0, 'Too many have been lost to Torghast. The way in is difficult... but not impossible.', 46549), -- Torghast
(63209, 1, 0, 0, 0, 0, 0, 0, 0, 'May your efforts prove fruitful.', 46549), -- Furthering the Purpose
(62761, 1, 0, 0, 0, 0, 0, 0, 0, 'You have done well in Maldraxxus. Their path forward is clear.', 46549), -- Return to Oribos
(62748, 113, 0, 0, 0, 0, 0, 0, 0, 'All who have reported back to me have said the same--you have brought victory upon victory to the House of the Chosen!\n\nOn behalf of all who serve the Primus, you have my eternal gratitude.', 46549); -- Rallying Maldraxxus


DELETE FROM `quest_poi` WHERE (`QuestID`=62721 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62721 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(62721, 0, 1, 32, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 46549), -- Deconstructing The Problem
(62721, 0, 0, 31, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 46549); -- Deconstructing The Problem

UPDATE `quest_poi` SET `VerifiedBuild`=46549 WHERE (`QuestID`=64850 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=64850 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=64850 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=64850 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64849 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=64849 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=64849 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64846 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63209 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63209 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63209 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62761 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=62761 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62761 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62712 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62712 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62741 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62741 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62742 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62742 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59234 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59234 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=59234 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62743 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62743 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61477 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=61477 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=61477 AND `BlobIndex`=4 AND `Idx1`=4) OR (`QuestID`=61477 AND `BlobIndex`=3 AND `Idx1`=3) OR (`QuestID`=61477 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=61477 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=61477 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61667 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61667 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61667 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65033 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65033 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62778 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=62778 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=62778 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=62778 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=62778 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62748 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=62748 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62748 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=62748 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=57249 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=57249 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=57249 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49929 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=45563 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=43341 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=43341 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=42449 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=42449 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=36309 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=62721 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=62721 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(62721, 1, 0, 3693, -1382, 0, 46549), -- Deconstructing The Problem
(62721, 0, 11, 3530, -1735, 0, 46549), -- Deconstructing The Problem
(62721, 0, 10, 3402, -1632, 0, 46549), -- Deconstructing The Problem
(62721, 0, 9, 3407, -1408, 0, 46549), -- Deconstructing The Problem
(62721, 0, 8, 3412, -1290, 0, 46549), -- Deconstructing The Problem
(62721, 0, 7, 3637, -1112, 0, 46549), -- Deconstructing The Problem
(62721, 0, 6, 3795, -1261, 0, 46549), -- Deconstructing The Problem
(62721, 0, 5, 3872, -1316, 0, 46549), -- Deconstructing The Problem
(62721, 0, 4, 3953, -1418, 0, 46549), -- Deconstructing The Problem
(62721, 0, 3, 4014, -1546, 0, 46549), -- Deconstructing The Problem
(62721, 0, 2, 3953, -1622, 0, 46549), -- Deconstructing The Problem
(62721, 0, 1, 3846, -1694, 0, 46549), -- Deconstructing The Problem
(62721, 0, 0, 3668, -1745, 0, 46549); -- Deconstructing The Problem

UPDATE `quest_poi_points` SET `VerifiedBuild`=46549 WHERE (`QuestID`=64850 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=64850 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=64850 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64849 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=64849 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=64849 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64846 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63209 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63209 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63209 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62761 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62761 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62761 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62712 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62712 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=62712 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=62712 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=62712 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=62712 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=62712 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=62712 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=62712 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=62712 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=62712 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=62712 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=62712 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62741 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62741 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=62741 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=62741 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=62741 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=62741 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=62741 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=62741 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=62741 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=62741 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=62741 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=62741 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=62741 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62742 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62742 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=62742 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=62742 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=62742 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=62742 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=62742 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=62742 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=62742 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=62742 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=62742 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=62742 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=62742 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59234 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59234 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=59234 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=59234 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=59234 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=59234 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=59234 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=59234 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=59234 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=59234 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=59234 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=59234 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=59234 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59234 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62743 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61477 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=61477 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=61477 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=61477 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61477 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61477 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61477 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61667 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61667 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61667 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65033 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65033 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62778 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=62778 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=62778 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62778 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62778 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62748 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=62748 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62748 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62748 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53436 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53436 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=45563 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=43341 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=43341 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=42449 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=42449 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=36309 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (64850 /*Traversing Torghast*/, 64849 /*Tower of the Damned*/, 64846 /*Torghast*/, 63209 /*Furthering the Purpose*/, 62761 /*Return to Oribos*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(64850, 1, 1, 1, 0, 0, 0, 0, 0, 46549), -- Traversing Torghast
(64849, 1, 1, 1, 0, 0, 0, 0, 0, 46549), -- Tower of the Damned
(64846, 0, 0, 0, 0, 0, 0, 0, 0, 46549), -- Torghast
(63209, 1, 1, 0, 0, 0, 0, 0, 0, 46549), -- Furthering the Purpose
(62761, 669, 669, 0, 0, 0, 0, 0, 0, 46549); -- Return to Oribos


DELETE FROM `creature_queststarter` WHERE (`id`=181328 AND `quest`=64850) OR (`id`=159478 AND `quest`=64849);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(181328, 64850, 46549), -- Traversing Torghast offered Ve'nish
(159478, 64849, 46549); -- Tower of the Damned offered Tal-Inara

UPDATE `creature_queststarter` SET `VerifiedBuild`=46549 WHERE (`id`=159478 AND `quest`=63209) OR (`id`=175008 AND `quest`=62761);

DELETE FROM `creature_questender` WHERE (`id`=181328 AND `quest`=64849) OR (`id`=159478 AND `quest`=64846);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(181328, 64849, 46549), -- Tower of the Damned ended by Ve'nish
(159478, 64846, 46549); -- Torghast ended by Tal-Inara


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (181328,181337,172674,172675,170972,175150,174993,76168,169756)) OR (`DifficultyID`=1 AND `Entry` IN (44199,59764,63508,175519,69792,69791,31216,47649,60199));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(181328, 0, 0, 0, 709, 46549),
(181337, 0, 0, 0, 371, 46549),
(172674, 0, 0, 0, 2060, 46549),
(172675, 0, 0, 0, 2060, 46549),
(170972, 0, 0, 0, 837, 46549),
(44199, 1, 0, 0, 482, 46549),
(59764, 1, 0, 0, 482, 46549),
(63508, 1, 0, 0, 482, 46549),
(175519, 1, 0, 0, 2099, 46549),
(69792, 1, 0, 0, 482, 46549),
(69791, 1, 0, 0, 482, 46549),
(175150, 0, 0, 0, 745, 46549),
(174993, 0, 0, 0, 745, 46549),
(31216, 1, 0, 0, 482, 46549),
(47649, 1, 0, 0, 482, 46549),
(60199, 1, 0, 0, 482, 46549),
(76168, 0, 0, 0, 482, 46549),
(169756, 0, 0, 0, 1334, 46549);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46549 WHERE (`DifficultyID`=0 AND `Entry` IN (184047,183179,177282,175127,173668,32639,32638,156681,156686,175211,156687,156689,156692,173571,156691,175083,175209,175210,174922,114665,178792,162918,164096,171787,164095,168011,175213,171790,170640,164579,187734,167591,55370,171821,164079,171795,173386,173388,176067,171299,176065,176368,162896,176066,176064,156791,164098,156504,171589,164099,164684,173369,164100,164078,170310,175216,53884,175036,159478,158259,175212,156664,165796,169524,175067,175080,175066,173370,175081,175082,170607,190148,156663,166312,165654,170256,173353,173356,182864,175215,175035,156768,173355,173354,175214,171822,156758,164596,54638,170557,173352,173357,162928,175222,165657,151780,162929,175019,173318,156769,173305,175208,173350,175018,171796,173330,181681,175016,164353,164686,156688,167881,156734,166307,177829,173301,173348,173367,173325,173304,175207,173302,162666,175218,166061,172702,175020,165403,99541,165405,176545,175017,175206,173118,167880,175087,164352,164803,143622,178804,121541,156735,175042,173364,173327,173300,175327,164123,156698,164685,164173,174358,171549,168677,172591,174024,160883,160884,172609,172607,171546,172933,164678,174357,164679,171547,165822,172696,172567,173266,173265,173264,173263,174237,168947,168950,161018,157029,161016,160958,168951,170582,170994,165960,172397,172398,164913,164878,170908,164882,173414,164880,164877,164847,164848,164845,164824,164836,170964,170967,170965,170966,164885,170558,164879,170892,170890,167817,170954,170955,172505,157682,157683,158809,158490,170993,157662,170551,99773,170580,170563,170891,170996,170573,173943,170929,170963,170562,170962,170550,156208,169864,170956,170931,170923,170553,171169,170583,157665,164860,170893,164864,158794,173948,157654,167747,167743,158453,165182,160424,164667,167737,170971,167741,157514,175008,161677,161679,175144,167642,161668,161676,161675,168045,162093,160415,167640,167639,167641,161673,167638,167637,167636,174002,165335,175398,164797,157803,157843,43499,167948,167949,174963,167923,160060,167935,160048,161613,174813,166373,166358,167804,167770,167821,167832,167563,165008,170002,175024,164711,171140,165007,164544,164525,169521,160888,168269,164273,168266,171093,171092,169992,174664,164928,163038,157516,164446,164063,160522,174665,168042,164713,165025,174435,172601,172596,175022,172589,174679,158474,172557,172590,168267,172556,173200,169249,164458,169250,164312,174649,159757,170456,159691,162761,170191,159856,168226,172423,159824,159827,159825,159696,159822,159689,164507,159828,169751,166552,166562,161710,166400,161559,161585,162588,166545,164492,164508,169795,159830,163084,163824,172425,162816,169830,166540,166370,169984,169964,165473,162727,162732,158053,165561,158566,158642,172427,170493,158752,163415,168192,168403,158387,163043,163041,175833,174650,161695,168518,166728,168388,168522,172430,172429,162813,168440,170159,166564,161757,162872,162474,167274,162615,164588,162617,173259,171383,173258,173257,173260,170099,162589,166375,170095,176024,162477,173003,170542,168310,168969,168574,172335,168572,166480,168298,169201,172336,164255,168314,168315,169450,174877,168580,168153,169843,163882,168578,168155,169218,163915,169696,168965,168361,163931,169141,168365,168364,168968,161712,157540,172441,166567,170496,166565,93008,162853,162873,166424,162880,166421,169452,172581,172422,166423,167335,175097,176023,161881,164997,164996,161890,167535,24207,164381,182105,163119,173026,173018,166129,166437,174654,167395,173944,164831,158040,170901,169184,167435,171419,171358,162258,164829,164830,166908,167483,162535,162478,162498,168216,176288,160407,165366,158405,168972,167273,160474,160479,157671,156591,160996,174898,167271,160095,157669,167356,162650,176285,169129,168946,167359,176287,161105,168324,164833,156558,169055,144929,168331,169636,175021,168342,168322,169634,169121,169574,159710,167355,158798,169341,169295,165337,162259,169700,165644,174930,172130,170051,169825,175023,167353,165084,174652,165002,174653,159674,165232,169926,169870,167354,176400,157058,165747,159748,168424,165208,159759,159683)) OR (`DifficultyID`=1 AND `Entry` IN (165430,164267,173952,174195,173930,163857,169861,166813,170474,164265,165532,137623,168837,164737,164266,171675,173360,173362,166762,170478,168907,173340,170021,173339,171656,174802,171596,167556,165357,169498,168398,164362,73400,172064,168579,62822,62821,167493,168747,170022,163862,169203,168891,164550,164967,169258,168886,168022,163891,164705,168878,163894,168627,169159,163892,168394,168573,169265,168396,168393,168386,171574,171474,171573,171572,168391,172063));
UPDATE `creature_template_scaling` SET `ContentTuningID`=2431, `VerifiedBuild`=46549 WHERE (`Entry`=167525 AND `DifficultyID`=0);

DELETE FROM `creature_model_info` WHERE `DisplayID`=110619;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(110619, 1.5, 2.5, 0, 46549);

UPDATE `creature_model_info` SET `VerifiedBuild`=46549 WHERE `DisplayID` IN (77406, 66223, 77405, 101379, 95276, 98562, 101355, 28282, 28111, 94472, 95325, 93579, 93599, 24103, 93584, 73366, 94613, 94141, 93586, 93593, 93589, 96587, 27153, 96744, 105360, 104818, 93596, 98220, 96754, 95194, 94286, 92900, 90260, 98076, 94665, 99156, 100398, 94655, 99162, 93201, 93581, 93595, 93591, 92385, 92399, 98697, 93577, 94491, 94611, 94021, 74790, 95260, 93151, 98194, 98439, 99478, 98692, 90397, 93601, 99205, 95843, 19283, 86231, 90422, 104785, 97029, 95081, 96714, 94586, 74802, 88012, 92714, 95464, 92345, 88016, 105361, 93585, 95252, 97650, 93588, 95042, 99050, 93582, 96747, 95253, 96637, 97025, 96602, 93598, 94471, 97649, 99054, 96624, 94469, 93597, 93592, 66221, 94449, 95557, 99155, 93580, 96603, 96748, 93587, 97347, 77407, 93600, 93590, 95529, 99382, 96614, 97651, 99519, 96625, 95660, 96642, 99450, 95781, 94422, 97389, 96860, 99117, 96435, 97665, 100181, 60930, 45513, 96441, 38186, 97969, 97977, 95597, 98661, 96610, 96281, 97971, 97970, 97006, 97425, 95986, 38548, 97447, 70086, 97896, 95390, 95948, 96443, 95511, 96469, 98197, 96553, 96893, 96223, 96551, 95571, 96555, 96552, 96543, 95687, 96118, 94812, 96131, 96641, 96132, 94155, 94921, 96239, 95794, 98461, 94145, 13069, 21342, 99470, 99469, 96434, 96475, 95688, 99517, 92725, 96445, 86434, 57899, 106962, 90180, 97939, 90181, 80502, 95575, 42722, 42720, 92628, 96751, 95793, 99929, 95638, 97653, 31124, 97465, 97652, 97464, 96202, 96597, 95826, 83604, 95768, 97657, 96542, 95990, 96886, 64177, 99861, 80021, 95996, 95478, 94867, 7571, 95797, 11094, 96749, 95994, 94089, 96871, 94058, 95967, 94070, 94526, 95222, 97388, 100426, 94834, 97076, 100590, 95083, 96196, 94050, 96876, 88361, 96187, 96272, 96271, 95804, 95818, 96999, 95848, 96787, 95762, 96591, 95784, 99905, 96310, 80031, 94245, 95944, 95962, 96829, 95950, 95545, 94402, 97325, 95949, 95959, 98582, 96875, 94090, 96461, 94905, 95384, 98465, 98462, 96462, 96135, 96133, 94406, 96203, 96060, 96240, 97335, 96919, 96985, 97302, 95225, 97477, 33010, 95475, 96459, 97796, 99464, 75083, 95786, 95579, 23767, 95501, 94407, 2177, 88145, 96752, 92629, 96771, 96945, 96887, 83592, 83621, 96865, 96243, 100527, 96261, 95844, 97997, 92726, 92627, 83589, 97160, 99191, 96200, 83616, 96251, 96989, 99163, 83596, 98002, 63503, 96991, 99157, 83594, 96986, 99380, 96988, 95961, 95769, 9906, 98055, 98581, 95011, 98164, 94927, 95780, 98463, 96444, 94704, 98673, 26079, 56304, 96194, 103064, 40678, 95968, 96212, 96211, 98184, 95943, 96446, 43178, 96447, 97853, 98662, 97852, 97322, 95385, 95590, 94882, 96252, 100389, 94913, 94177, 94240, 95392, 96208, 95965, 95376, 96561, 94283, 95395, 95963, 95964, 94440, 97654, 80245, 96990, 15983, 97655, 97894, 59546, 61550, 62719, 96466, 94450, 96467, 95113, 97079, 95112, 11686, 95783, 97016, 92915, 99867, 95987, 96489, 97066, 96984, 95738, 97893, 95839, 27823, 31844, 99910, 95577, 95787, 97122, 95637, 98467, 95647, 97119, 94473, 97123, 95573, 17200, 96437, 94146, 96772, 94932, 95327, 95979);
UPDATE `creature_model_info` SET `BoundingRadius`=0.417406529188156127, `CombatReach`=0, `VerifiedBuild`=46549 WHERE `DisplayID`=105576;
UPDATE `creature_model_info` SET `BoundingRadius`=0.774677395820617675, `CombatReach`=1.70000004768371582, `VerifiedBuild`=46549 WHERE `DisplayID`=92191;
UPDATE `creature_model_info` SET `BoundingRadius`=0.843031287193298339, `CombatReach`=1.85000002384185791, `VerifiedBuild`=46549 WHERE `DisplayID`=92192;
UPDATE `creature_model_info` SET `BoundingRadius`=0.216121748089790344, `CombatReach`=0.150000005960464477, `VerifiedBuild`=46549 WHERE `DisplayID`=96596;
UPDATE `creature_model_info` SET `BoundingRadius`=0.188000008463859558, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46549 WHERE `DisplayID`=95576;
UPDATE `creature_model_info` SET `BoundingRadius`=1.846103906631469726, `CombatReach`=1.949999928474426269, `VerifiedBuild`=46549 WHERE `DisplayID`=97981;
UPDATE `creature_model_info` SET `BoundingRadius`=0.990243375301361083, `CombatReach`=2.02500009536743164, `VerifiedBuild`=46549 WHERE `DisplayID`=98040;
UPDATE `creature_model_info` SET `BoundingRadius`=1.258994579315185546, `CombatReach`=2.25, `VerifiedBuild`=46549 WHERE `DisplayID`=96225;
UPDATE `creature_model_info` SET `BoundingRadius`=0.733513593673706054, `CombatReach`=1.5, `VerifiedBuild`=46549 WHERE `DisplayID` IN (93933, 94992, 95550, 94053);
UPDATE `creature_model_info` SET `BoundingRadius`=2.033376216888427734, `CombatReach`=4.5, `VerifiedBuild`=46549 WHERE `DisplayID`=96544;
UPDATE `creature_model_info` SET `BoundingRadius`=0.592886686325073242, `CombatReach`=2.5, `VerifiedBuild`=46549 WHERE `DisplayID`=94426;
UPDATE `creature_model_info` SET `BoundingRadius`=0.699441432952880859, `CombatReach`=1.25, `VerifiedBuild`=46549 WHERE `DisplayID` IN (96254, 97424, 96201, 96192);
UPDATE `creature_model_info` SET `BoundingRadius`=0.769385576248168945, `CombatReach`=1.375, `VerifiedBuild`=46549 WHERE `DisplayID`=96253;
UPDATE `creature_model_info` SET `BoundingRadius`=1.420079946517944335, `CombatReach`=1.5, `VerifiedBuild`=46549 WHERE `DisplayID`=95377;
UPDATE `creature_model_info` SET `BoundingRadius`=1.100270390510559082, `CombatReach`=2.25, `VerifiedBuild`=46549 WHERE `DisplayID` IN (96753, 94071);
UPDATE `creature_model_info` SET `BoundingRadius`=1.548884153366088867, `CombatReach`=0.75, `VerifiedBuild`=46549 WHERE `DisplayID`=80030;
UPDATE `creature_model_info` SET `BoundingRadius`=1.468744635581970214, `CombatReach`=4, `VerifiedBuild`=46549 WHERE `DisplayID`=96589;
UPDATE `creature_model_info` SET `BoundingRadius`=0.077500000596046447, `CombatReach`=0.25, `VerifiedBuild`=46549 WHERE `DisplayID`=75044;
UPDATE `creature_model_info` SET `BoundingRadius`=0.347000002861022949, `CombatReach`=1.5, `VerifiedBuild`=46549 WHERE `DisplayID`=53768;
UPDATE `creature_model_info` SET `BoundingRadius`=5.266252040863037109, `CombatReach`=4, `VerifiedBuild`=46549 WHERE `DisplayID`=97999;
UPDATE `creature_model_info` SET `BoundingRadius`=0.75, `VerifiedBuild`=46549 WHERE `DisplayID`=95654;
UPDATE `creature_model_info` SET `BoundingRadius`=4.5, `CombatReach`=7.5, `VerifiedBuild`=46549 WHERE `DisplayID`=99201;
UPDATE `creature_model_info` SET `BoundingRadius`=0.770189225673675537, `CombatReach`=1.574999928474426269, `VerifiedBuild`=46549 WHERE `DisplayID`=95993;
UPDATE `creature_model_info` SET `BoundingRadius`=1.771826744079589843, `CombatReach`=1.5, `VerifiedBuild`=46549 WHERE `DisplayID`=95796;
UPDATE `creature_model_info` SET `BoundingRadius`=1.183341622352600097, `CombatReach`=3.300000190734863281, `VerifiedBuild`=46549 WHERE `DisplayID`=83597;
UPDATE `creature_model_info` SET `BoundingRadius`=0.659916996955871582, `VerifiedBuild`=46549 WHERE `DisplayID`=98199;
UPDATE `creature_model_info` SET `BoundingRadius`=2.583770751953125, `CombatReach`=2.70000004768371582, `VerifiedBuild`=46549 WHERE `DisplayID`=96334;
UPDATE `creature_model_info` SET `BoundingRadius`=3.585020065307617187, `CombatReach`=5.199999809265136718, `VerifiedBuild`=46549 WHERE `DisplayID`=94924;
UPDATE `creature_model_info` SET `BoundingRadius`=1.098554372787475585, `CombatReach`=0.375, `VerifiedBuild`=46549 WHERE `DisplayID`=97656;
UPDATE `creature_model_info` SET `BoundingRadius`=1.5, `CombatReach`=5, `VerifiedBuild`=46549 WHERE `DisplayID`=58978;
UPDATE `creature_model_info` SET `BoundingRadius`=1.136063933372497558, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46549 WHERE `DisplayID` IN (95386, 95546, 95570);
UPDATE `creature_model_info` SET `BoundingRadius`=1.652143120765686035, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46549 WHERE `DisplayID`=92246;
UPDATE `creature_model_info` SET `BoundingRadius`=0.615508496761322021, `CombatReach`=1.10000002384185791, `VerifiedBuild`=46549 WHERE `DisplayID`=96059;
UPDATE `creature_model_info` SET `BoundingRadius`=0.93155074119567871, `CombatReach`=1.5, `VerifiedBuild`=46549 WHERE `DisplayID`=97172;
UPDATE `creature_model_info` SET `BoundingRadius`=1.394999980926513671, `CombatReach`=6.75, `VerifiedBuild`=46549 WHERE `DisplayID`=48061;
UPDATE `creature_model_info` SET `BoundingRadius`=1.710888266563415527, `CombatReach`=2, `VerifiedBuild`=46549 WHERE `DisplayID`=94227;
UPDATE `creature_model_info` SET `BoundingRadius`=0.386183589696884155, `CombatReach`=0.262500017881393432, `VerifiedBuild`=46549 WHERE `DisplayID`=96635;
UPDATE `creature_model_info` SET `BoundingRadius`=2.654331207275390625, `CombatReach`=2.859999895095825195, `VerifiedBuild`=46549 WHERE `DisplayID`=94749;
UPDATE `creature_model_info` SET `BoundingRadius`=0.629891037940979003, `CombatReach`=2, `VerifiedBuild`=46549 WHERE `DisplayID`=96899;
UPDATE `creature_model_info` SET `BoundingRadius`=1.117860913276672363, `CombatReach`=1.80000007152557373, `VerifiedBuild`=46549 WHERE `DisplayID`=94791;
UPDATE `creature_model_info` SET `BoundingRadius`=0.80686497688293457, `CombatReach`=1.65000009536743164, `VerifiedBuild`=46549 WHERE `DisplayID` IN (95991, 94055);
UPDATE `creature_model_info` SET `BoundingRadius`=0.827312409877777099, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46549 WHERE `DisplayID`=94916;
UPDATE `creature_model_info` SET `BoundingRadius`=0.839329779148101806, `CombatReach`=1.5, `VerifiedBuild`=46549 WHERE `DisplayID` IN (96116, 96209);
UPDATE `creature_model_info` SET `BoundingRadius`=3.67793893814086914, `CombatReach`=2.5, `VerifiedBuild`=46549 WHERE `DisplayID`=95789;
UPDATE `creature_model_info` SET `BoundingRadius`=1.379227042198181152, `CombatReach`=0.937499940395355224, `VerifiedBuild`=46549 WHERE `DisplayID`=95785;
UPDATE `creature_model_info` SET `BoundingRadius`=1.902467846870422363, `CombatReach`=3, `VerifiedBuild`=46549 WHERE `DisplayID`=96244;
UPDATE `creature_model_info` SET `BoundingRadius`=9.512338638305664062, `CombatReach`=15, `VerifiedBuild`=46549 WHERE `DisplayID`=97333;
UPDATE `creature_model_info` SET `BoundingRadius`=0.870888948440551757, `CombatReach`=2.925000190734863281, `VerifiedBuild`=46549 WHERE `DisplayID` IN (95946, 97587);
UPDATE `creature_model_info` SET `BoundingRadius`=0.300000011920928955, `CombatReach`=0.5, `VerifiedBuild`=46549 WHERE `DisplayID`=9904;
UPDATE `creature_model_info` SET `BoundingRadius`=0.783800005912780761, `CombatReach`=2.632499933242797851, `VerifiedBuild`=46549 WHERE `DisplayID`=95969;
UPDATE `creature_model_info` SET `BoundingRadius`=0.60962224006652832, `CombatReach`=2.047500133514404296, `VerifiedBuild`=46549 WHERE `DisplayID`=95947;
UPDATE `creature_model_info` SET `BoundingRadius`=1.083690643310546875, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46549 WHERE `DisplayID`=95483;
UPDATE `creature_model_info` SET `BoundingRadius`=1.024705886840820312, `CombatReach`=1.65000009536743164, `VerifiedBuild`=46549 WHERE `DisplayID` IN (94763, 94761);
UPDATE `creature_model_info` SET `BoundingRadius`=2.919764280319213867, `CombatReach`=3.145999908447265625, `VerifiedBuild`=46549 WHERE `DisplayID` IN (94243, 94241);
UPDATE `creature_model_info` SET `BoundingRadius`=1.211015939712524414, `CombatReach`=1.949999928474426269, `VerifiedBuild`=46549 WHERE `DisplayID` IN (95559, 94760);
UPDATE `creature_model_info` SET `BoundingRadius`=1.72378242015838623, `CombatReach`=2.160000085830688476, `VerifiedBuild`=46549 WHERE `DisplayID`=94933;
UPDATE `creature_model_info` SET `BoundingRadius`=0.526631593704223632, `CombatReach`=0.5, `VerifiedBuild`=46549 WHERE `DisplayID`=76383;
UPDATE `creature_model_info` SET `BoundingRadius`=0.57705998420715332, `VerifiedBuild`=46549 WHERE `DisplayID`=96576;
UPDATE `creature_model_info` SET `BoundingRadius`=0.546457827091217041, `CombatReach`=0.85000002384185791, `VerifiedBuild`=46549 WHERE `DisplayID`=99293;
UPDATE `creature_model_info` SET `BoundingRadius`=0.561563193798065185, `CombatReach`=0.85000002384185791, `VerifiedBuild`=46549 WHERE `DisplayID`=99272;
UPDATE `creature_model_info` SET `BoundingRadius`=0.745240628719329833, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46549 WHERE `DisplayID` IN (94764, 94757, 94759, 94833);
UPDATE `creature_model_info` SET `BoundingRadius`=0.755869269371032714, `CombatReach`=2.40000009536743164, `VerifiedBuild`=46549 WHERE `DisplayID`=96898;
UPDATE `creature_model_info` SET `BoundingRadius`=0.551690876483917236, `CombatReach`=0.375, `VerifiedBuild`=46549 WHERE `DisplayID`=95788;
UPDATE `creature_model_info` SET `BoundingRadius`=1.795606613159179687, `CombatReach`=2.25, `VerifiedBuild`=46549 WHERE `DisplayID`=95228;
UPDATE `creature_model_info` SET `BoundingRadius`=0.528530061244964599, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46549 WHERE `DisplayID`=94131;
UPDATE `creature_model_info` SET `BoundingRadius`=0.514313220977783203, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46549 WHERE `DisplayID` IN (94106, 94136);


UPDATE `gossip_menu_option` SET `VerifiedBuild`=46549 WHERE (`OptionID`=0 AND `MenuID` IN (26339,27033)) OR (`OptionID`=1 AND `MenuID`=26284);
UPDATE `gossip_menu_option` SET `OptionText`='What should I do?', `VerifiedBuild`=46549 WHERE (`MenuID`=25466 AND `OptionID`=0);
UPDATE `gossip_menu_option` SET `OptionText`='What is this place?', `OptionBroadcastTextId`=18411, `BoxMoney`=0, `VerifiedBuild`=46549 WHERE (`MenuID`=25466 AND `OptionID`=1); -- OptionBroadcastTextID: 18411 - 18411 - 39050 - 39050 - 53647 - 53647 - 60157 - 60157 - 66591 - 66591 - 94147 - 94147 - 136659 - 136659 - 208743

DELETE FROM `creature_template` WHERE `entry`=181328;
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(181328, 0, 60, 60, 35, 2, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 1, 0, 0, 1); -- Ve'nish



UPDATE `quest_template` SET `VerifiedBuild`=46549 WHERE `ID` IN (64850, 60092, 64508, 57686, 59314, 44663, 32675, 58095, 66648, 66042, 65774, 65763, 65762, 65700, 65259, 62866, 61983, 60390, 60195, 58432, 50562, 50601, 50599, 48642, 42940, 42707, 42421, 42422, 39364, 33137, 57300, 62763, 62658, 54748, 49098, 48620, 49099, 49096, 59578, 59808, 59643, 60855, 66696, 57443, 59234, 61667, 62235, 60565, 61477, 59680, 61947, 61885, 61868, 61784, 43241, 39393, 39274, 39029, 38748, 46736, 46735, 46277, 65033, 62778, 62748, 57249, 53436, 43341, 42449, 36309);
UPDATE `quest_template` SET `RewardBonusMoney`=4000, `VerifiedBuild`=46549 WHERE `ID`=64849; -- Tower of the Damned
UPDATE `quest_template` SET `RewardBonusMoney`=4000, `VerifiedBuild`=46549 WHERE `ID`=64846; -- Torghast
UPDATE `quest_template` SET `RewardBonusMoney`=4000, `VerifiedBuild`=46549 WHERE `ID`=62277; -- Ardenweald
UPDATE `quest_template` SET `RewardBonusMoney`=16100, `VerifiedBuild`=46549 WHERE `ID`=63209; -- Furthering the Purpose
UPDATE `quest_template` SET `RewardBonusMoney`=4000, `VerifiedBuild`=46549 WHERE `ID`=62761; -- Return to Oribos
UPDATE `quest_template` SET `RewardBonusMoney`=2650, `VerifiedBuild`=46549 WHERE `ID`=62739; -- Restoring Balance
UPDATE `quest_template` SET `RewardBonusMoney`=3750, `VerifiedBuild`=46549 WHERE `ID`=44985; -- Hunting Lesson: Stormstruck Beaver
UPDATE `quest_template` SET `RewardBonusMoney`=3750, `VerifiedBuild`=46549 WHERE `ID`=44962; -- Hunting Lesson: Coralback Fiddler
UPDATE `quest_template` SET `RewardBonusMoney`=21050, `Expansion`=9, `VerifiedBuild`=46549 WHERE `ID`=32863; -- What We've Been Training For
UPDATE `quest_template` SET `Expansion`=9, `VerifiedBuild`=46549 WHERE `ID`=31824; -- Level Up!
UPDATE `quest_template` SET `RewardBonusMoney`=31550, `VerifiedBuild`=46549 WHERE `ID`=57554; -- Wicked Gateways
UPDATE `quest_template` SET `RewardBonusMoney`=31550, `VerifiedBuild`=46549 WHERE `ID`=57553; -- On Wounded Wings
UPDATE `quest_template` SET `RewardBonusMoney`=31550, `VerifiedBuild`=46549 WHERE `ID`=57552; -- Warriors of the Void
UPDATE `quest_template` SET `RewardBonusMoney`=2350, `AllowableRaces`=6130900294268439629, `VerifiedBuild`=46549 WHERE `ID`=47099; -- Get Your Bearings
UPDATE `quest_template` SET `RewardBonusMoney`=3350, `VerifiedBuild`=46549 WHERE `ID`=35556; -- The Secrets of Gorgrond
UPDATE `quest_template` SET `RewardBonusMoney`=2900, `Flags`=3670016, `VerifiedBuild`=46549 WHERE `ID`=28741; -- Ascendant Lord Obsidius
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46549 WHERE `ID`=26939; -- The G-Team
UPDATE `quest_template` SET `Expansion`=9, `VerifiedBuild`=46549 WHERE `ID`=29433; -- Test Your Strength
UPDATE `quest_template` SET `RewardBonusMoney`=10350, `VerifiedBuild`=46549 WHERE `ID`=33222; -- Little Tommy Newcomer
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46549 WHERE `ID`=65748; -- You Supply the Effort
UPDATE `quest_template` SET `RewardBonusMoney`=1300, `VerifiedBuild`=46549 WHERE `ID`=65625; -- The Jailer's Gauntlet
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46549 WHERE `ID`=58496; -- An Unwelcome Advisor
UPDATE `quest_template` SET `RewardBonusMoney`=5900, `VerifiedBuild`=46549 WHERE `ID`=52246; -- Lost Shipment
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `VerifiedBuild`=46549 WHERE `ID`=52026; -- Overseas Assassination
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46549 WHERE `ID`=51582; -- Make it Mildenhall
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46549 WHERE `ID`=51552; -- The Days Are Just Packed
UPDATE `quest_template` SET `RewardBonusMoney`=2350, `VerifiedBuild`=46549 WHERE `ID`=50611; -- Storm's Vengeance
UPDATE `quest_template` SET `RewardBonusMoney`=41350, `Expansion`=9, `VerifiedBuild`=46549 WHERE `ID`=47253; -- The Originals
UPDATE `quest_template` SET `RewardBonusMoney`=3750, `VerifiedBuild`=46549 WHERE `ID`=44009; -- A Falling Star
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `VerifiedBuild`=46549 WHERE `ID`=42959; -- Three Is a Lucky Number
UPDATE `quest_template` SET `RewardBonusMoney`=3750, `VerifiedBuild`=46549 WHERE `ID`=42429; -- Memories of Ebonchill
UPDATE `quest_template` SET `RewardBonusMoney`=19400, `VerifiedBuild`=46549 WHERE `ID`=60366; -- WANTED: Darkwing
UPDATE `quest_template` SET `RewardBonusMoney`=41350, `VerifiedBuild`=46549 WHERE `ID`=60215; -- Doomwalkin' Has Come Knockin'
UPDATE `quest_template` SET `RewardBonusMoney`=62050, `VerifiedBuild`=46549 WHERE `ID`=60057; -- Necrotic Wake: A Paragon's Plight
UPDATE `quest_template` SET `RewardBonusMoney`=14950, `VerifiedBuild`=46549 WHERE `ID`=44004; -- Bringer of the Light
UPDATE `quest_template` SET `RewardBonusMoney`=3750, `VerifiedBuild`=46549 WHERE `ID`=42034; -- Grip of Nightmare
UPDATE `quest_template` SET `RewardBonusMoney`=470, `VerifiedBuild`=46549 WHERE `ID`=38035; -- A Royal Summons
UPDATE `quest_template` SET `RewardBonusMoney`=82700, `VerifiedBuild`=46549 WHERE `ID`=62723; -- Bolstering Bastion
UPDATE `quest_template` SET `RewardBonusMoney`=470, `VerifiedBuild`=46549 WHERE `ID`=44720; -- A Call to Action
UPDATE `quest_template` SET `RewardBonusMoney`=3750, `VerifiedBuild`=46549 WHERE `ID`=44161; -- Things Gaardoun Needs
UPDATE `quest_template` SET `RewardBonusMoney`=2800, `VerifiedBuild`=46549 WHERE `ID`=41804; -- Ask and You Shall Receive
UPDATE `quest_template` SET `RewardBonusMoney`=10350, `VerifiedBuild`=46549 WHERE `ID`=57245; -- Ani-Matter Animator
UPDATE `quest_template` SET `RewardBonusMoney`=12900, `VerifiedBuild`=46549 WHERE `ID`=59867; -- WANTED: Appraiser Vix
UPDATE `quest_template` SET `RewardBonusMoney`=15500, `VerifiedBuild`=46549 WHERE `ID`=58785; -- Smack and Grab
UPDATE `quest_template` SET `RewardBonusMoney`=15500, `VerifiedBuild`=46549 WHERE `ID`=59430; -- A Plague on Your House
UPDATE `quest_template` SET `RewardBonusMoney`=15500, `VerifiedBuild`=46549 WHERE `ID`=58619; -- Read Between the Lines
UPDATE `quest_template` SET `RewardBonusMoney`=19400, `VerifiedBuild`=46549 WHERE `ID`=59781; -- The Last Guy
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46549 WHERE `ID`=52944; -- Call to Arms: Drustvar
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46549 WHERE `ID`=59018; -- Call to Arms: Vale of Eternal Blossoms
UPDATE `quest_template` SET `RewardBonusMoney`=20700, `VerifiedBuild`=46549 WHERE `ID`=60840; -- Wild Hunt Offensive
UPDATE `quest_template` SET `RewardBonusMoney`=20700, `VerifiedBuild`=46549 WHERE `ID`=62741; -- Choice of Action
UPDATE `quest_template` SET `RewardBonusMoney`=20700, `VerifiedBuild`=46549 WHERE `ID`=62712; -- War of Attrition
UPDATE `quest_template` SET `RewardBonusMoney`=20700, `VerifiedBuild`=46549 WHERE `ID`=62743; -- Decaying Situation
UPDATE `quest_template` SET `RewardBonusMoney`=20700, `VerifiedBuild`=46549 WHERE `ID`=62742; -- Avoid 'Em Like the Plague
UPDATE `quest_template` SET `RewardBonusMoney`=20700, `VerifiedBuild`=46549 WHERE `ID`=62721; -- Deconstructing The Problem
UPDATE `quest_template` SET `RewardBonusMoney`=1300, `VerifiedBuild`=46549 WHERE `ID`=49929; -- The Call for Allies
UPDATE `quest_template` SET `RewardBonusMoney`=10350, `Expansion`=9, `VerifiedBuild`=46549 WHERE `ID`=45563; -- The Shrouded Coin


UPDATE `quest_objectives` SET `VerifiedBuild`=46549 WHERE `ID` IN (421530, 421534, 397534, 409233, 393173, 287359, 287340, 270529, 392666, 392777, 392664, 291171, 291080, 291079, 291081, 274861, 262767, 263834, 406756, 406755, 286744, 286773, 252968, 270994, 407803, 407802, 407801, 407800, 427705, 427064, 423785, 423784, 423783, 423782, 423781, 423780, 423779, 423778, 423332, 423290, 423289, 423255, 423213, 423172, 422599, 408877, 406976, 398407, 397849, 394362, 394269, 394271, 336202, 340768, 339105, 338543, 337847, 333305, 336214, 336204, 292699, 286220, 286179, 286138, 286103, 284981, 284980, 284979, 284606, 284171, 284172, 279281, 270923, 398279, 397883, 398150, 398149, 392095, 286090, 283491, 280241, 279833, 421956, 421955, 409272, 408422, 408421, 408267, 408266, 408265, 408263, 408260, 408259, 421958, 421957, 409270, 408476, 408475, 408474, 408473, 408464, 408462, 408459, 408458, 282861, 391973, 397119, 394931, 396450, 396449, 396444, 397186, 396950, 396949, 340356, 395348, 396513, 396512, 396511, 396510, 407593, 396509, 397091, 397051, 397009, 396667, 397818, 404910, 404909, 404831, 404829, 404828, 404827, 404826, 404825, 404795, 427561, 392429, 392436, 409171, 396199, 406454, 406456, 406455, 407513, 408918, 407508, 407507, 407506, 398896, 398895, 398894, 398893, 398892, 398875, 398876, 405979, 405978, 405977, 405976, 405973, 408487, 405970, 408768, 408767, 408503, 408502, 408500, 408499, 408498, 408497, 408496, 408433, 408432, 408431, 408372, 408371, 408218, 408217, 408216, 408215, 408214, 408212, 408211, 408210, 408209, 408208, 396797, 396787, 396786, 396785, 396784, 396783, 406867, 406808, 406766, 406710, 422648, 409280, 409281, 408773, 408631, 408607, 408606, 408605, 408604, 408603, 408602, 408600, 408412, 408411, 408534, 408533, 408399, 408393, 408392, 408391, 285469, 285188, 285107, 285106, 285105, 285104, 285103, 285102, 280217, 280216, 280215, 280214, 280213, 280212, 279406, 279334, 280557, 280096, 279148, 279144, 279143, 285466, 278822, 278821, 278820, 286576, 286575, 286054, 278418, 278401, 278382, 289536, 289535, 289167, 408772, 408338, 408337, 408336, 408249, 408248, 408247, 408246, 408245, 408244, 408243, 408242, 408241, 408240, 421938, 421952, 421951, 409271, 408626, 408625, 408624, 408623, 408622, 408620, 408617, 408616, 421954, 421953, 409273, 408430, 408429, 408428, 408427, 408426, 408425, 408424, 408423, 341370, 285211, 285210, 285209, 285208, 286697);
UPDATE `quest_objectives` SET `Description`='Level 3 Pet', `VerifiedBuild`=46549 WHERE `ID`=269063; -- 269063
UPDATE `quest_objectives` SET `Description`='Dragon of Nightmare slain', `VerifiedBuild`=46549 WHERE `ID`=290168; -- 290168
UPDATE `quest_objectives` SET `Description`='Azuregos slain', `VerifiedBuild`=46549 WHERE `ID`=290167; -- 290167
UPDATE `quest_objectives` SET `Description`='Lord Kazzak slain', `VerifiedBuild`=46549 WHERE `ID`=290166; -- 290166
UPDATE `quest_objectives` SET `Description`='\"Oculus Preparations\" missions completed', `VerifiedBuild`=46549 WHERE `ID`=284914; -- 284914
UPDATE `quest_objectives` SET `Description`='Speak to a Reflection of the Council of Tirisfal', `VerifiedBuild`=46549 WHERE `ID`=284194; -- 284194
UPDATE `quest_objectives` SET `Description`='Altar of Malorne investigated', `VerifiedBuild`=46549 WHERE `ID`=283626; -- 283626
UPDATE `quest_objectives` SET `Description`='Sylendra Gladesong saved', `VerifiedBuild`=46549 WHERE `ID`=283489; -- 283489
UPDATE `quest_objectives` SET `Description`='\"Things Gaardoun Needs\" mission completed', `VerifiedBuild`=46549 WHERE `ID`=286323; -- 286323
UPDATE `quest_objectives` SET `Description`='Follow Archmage Khadgar', `VerifiedBuild`=46549 WHERE `ID`=282862; -- 282862


UPDATE `quest_visual_effect` SET `VerifiedBuild`=46549 WHERE (`Index`=0 AND `ID` IN (421530,409233,392666,392777,392664,291171,291080,291079,291081,274861,406756,406755,286744,286773,270994,423779,423255,423213,422599,406976,394362,394271,340768,339105,338543,337847,286103,284914,284194,270923,398279,398150,283626,283489,280241,286323,282861,282862,391973,394931,397186,396513,396512,396511,396510,396509,396667,397818,392429,392436,396199,406456,406455,407507,398896,398895,398894,398893,398892,398875,398876,405979,405978,405977,405976,405973,408487,408371,408208,396797,396787,396786,396785,396784,396783,406867,406808,406766,406710,408411,408391,285188,285107,285106,279406,279334,278820,278418,408338,408240)) OR (`Index`=1 AND `ID` IN (392666,392777,423255,284194,391973,396509,396667,392429,396199,406456,407507,398896,398895,398894,398893,398892,398875,398876,408371,396785,396783,408411,278820,278418)) OR (`Index`=26 AND `ID`=423255) OR (`Index`=25 AND `ID`=423255) OR (`Index`=24 AND `ID`=423255) OR (`Index`=23 AND `ID`=423255) OR (`Index`=22 AND `ID`=423255) OR (`Index`=21 AND `ID`=423255) OR (`Index`=20 AND `ID`=423255) OR (`Index`=19 AND `ID`=423255) OR (`Index`=18 AND `ID`=423255) OR (`Index`=17 AND `ID`=423255) OR (`Index`=16 AND `ID`=423255) OR (`Index`=15 AND `ID`=423255) OR (`Index`=14 AND `ID`=423255) OR (`Index`=13 AND `ID`=423255) OR (`Index`=12 AND `ID`=423255) OR (`Index`=11 AND `ID` IN (423255,398876)) OR (`Index`=10 AND `ID` IN (423255,396199,398876)) OR (`Index`=9 AND `ID` IN (423255,396199,398876)) OR (`Index`=8 AND `ID` IN (423255,396199,398876)) OR (`Index`=7 AND `ID` IN (423255,396199,398876)) OR (`Index`=6 AND `ID` IN (423255,284194,396199,398876)) OR (`Index`=5 AND `ID` IN (423255,284194,396509,396199,398876)) OR (`Index`=4 AND `ID` IN (423255,284194,391973,396509,396199,398876,396783)) OR (`Index`=3 AND `ID` IN (423255,284194,391973,396509,392429,396199,398896,398895,398894,398893,398892,398875,398876,408371,396783,278418)) OR (`Index`=2 AND `ID` IN (423255,284194,391973,396509,392429,396199,407507,398896,398895,398894,398893,398892,398875,398876,408371,396783,278418));


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=46549 WHERE (`Idx`=0 AND `QuestID` IN (57686,43341));

DELETE FROM `creature_template` WHERE `entry`=181328;
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `unit_class`, `WidgetSetID`, `WidgetSetUnitConditionID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `VerifiedBuild`) VALUES
(181328, 0, 0, 'Ve\'nish', '', 'Aquisitions Specialist', NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 205068, 46549); -- Ve'nish

UPDATE `creature_template` SET `VerifiedBuild`=46549 WHERE `entry` IN (156591, 190148, 170021, 170022, 165561, 170051, 161105, 167817, 167832, 156663, 156664, 170095, 172335, 172336, 170099, 156681, 156686, 156687, 156688, 156689, 156691, 156692, 167880, 167881, 165644, 156698, 76168, 163415, 165654, 165657, 65011, 156734, 156735, 170159, 172397, 167923, 172398, 167935, 174649, 174650, 174652, 174653, 156758, 174654, 167948, 172422, 167949, 172423, 172425, 156768, 174664, 172427, 156769, 174665, 170191, 172429, 172430, 62821, 62822, 174679, 156791, 9158, 168011, 170256, 168022, 172505, 165796, 168042, 168045, 165822, 170310, 304, 305, 172556, 172557, 174802, 172567, 174813, 172581, 172589, 172590, 172591, 172596, 172601, 172607, 172609, 159200, 168153, 168155, 174877, 174898, 416, 417, 168192, 165960, 157029, 168216, 174930, 170456, 69791, 69792, 172696, 168226, 172702, 143622, 18357, 170474, 18359, 18360, 170478, 18362, 157058, 174963, 18375, 18376, 170493, 181681, 170496, 168266, 168267, 168269, 161559, 18406, 161585, 175008, 166061, 168298, 163824, 175016, 170542, 175017, 175018, 175019, 161597, 175020, 175021, 168310, 175023, 170550, 175024, 170551, 168314, 168315, 170553, 170557, 170558, 168322, 175035, 161613, 168324, 175036, 170562, 170563, 175042, 163857, 168331, 177282, 170573, 163862, 168342, 170580, 170582, 170583, 114665, 175066, 175067, 163882, 168361, 168364, 168365, 163891, 166129, 163892, 163894, 175080, 175081, 170607, 175082, 175083, 175087, 161668, 161673, 161675, 175097, 168386, 161676, 184047, 161677, 168388, 163915, 161679, 168391, 168393, 168394, 168396, 168398, 170640, 168403, 163931, 161695, 175127, 161710, 161712, 168424, 159478, 175144, 168440, 47649, 172933, 166226, 161757, 175206, 175207, 175208, 175209, 175210, 175211, 175212, 175213, 175214, 175215, 175216, 175218, 175222, 121541, 168518, 168522, 173003, 164063, 170779, 166307, 173018, 170784, 166312, 164078, 173026, 164079, 164095, 164096, 164098, 58959, 168572, 58960, 164099, 168573, 164100, 168574, 168578, 168579, 168580, 161881, 166358, 164123, 161890, 166370, 166373, 166375, 175327, 161905, 161907, 159674, 168627, 159683, 166400, 159689, 159691, 173118, 159696, 164173, 63508, 170890, 170891, 170892, 170893, 166421, 159710, 166423, 166424, 32206, 170901, 170908, 166437, 168677, 182105, 170923, 175398, 170929, 170931, 159748, 157514, 157516, 159757, 159759, 170954, 166480, 170955, 170956, 54638, 170962, 157540, 170963, 173200, 170964, 170965, 170966, 164255, 170967, 170971, 170972, 164265, 164266, 164267, 164273, 168747, 170993, 170994, 170996, 159822, 43499, 159824, 159825, 159827, 159828, 166540, 159830, 166545, 173257, 164312, 173263, 166552, 166562, 166564, 166565, 162093, 166567, 159856, 175519, 164352, 173300, 173301, 164353, 173302, 173304, 173305, 164362, 168837, 157654, 173318, 157662, 157665, 173325, 173327, 157669, 171092, 164381, 173330, 171093, 157671, 14505, 173339, 173340, 157682, 157683, 173348, 173350, 173352, 168878, 173353, 173354, 173355, 177829, 173356, 173357, 173360, 168886, 99541, 173362, 173364, 168891, 173367, 173369, 173370, 166663, 168907, 173386, 173388, 14565, 164446, 164458, 173414, 137623, 168946, 168947, 168950, 168951, 168965, 166728, 164492, 168968, 168969, 162258, 162259, 168972, 164507, 164508, 157803, 160048, 21354, 166762, 164525, 160060, 164544, 173495, 164550, 157843, 160095, 166813, 164579, 169055, 171299, 164588, 93008, 164596, 32638, 32639, 173571, 99773, 171358, 169121, 175833, 169129, 164667, 169141, 166908, 171383, 164678, 164679, 164684, 164685, 169159, 164686, 164705, 171419, 169184, 164711, 162474, 164713, 162477, 162478, 173668, 169201, 169203, 162498, 164737, 169218, 158040, 28302, 171474, 158053, 169249, 169250, 169258, 169265, 164797, 164803, 26125, 169295, 164824, 162588, 162589, 164829, 164830, 164831, 164833, 171546, 171547, 164836, 171549, 176023, 176024, 164845, 164847, 164848, 162615, 162617, 164860, 171572, 171573, 171574, 164864, 169341, 164877, 171589, 164878, 176064, 164879, 176065, 164880, 176066, 176067, 164882, 164885, 171596, 55272, 162650, 160415, 17252, 160424, 162666, 59764, 164913, 164928, 171656, 160474, 160479, 171675, 162727, 164967, 182864, 162732, 158259, 169450, 169452, 173930, 55370, 173943, 173944, 164996, 160522, 44199, 164997, 162761, 173948, 165002, 173952, 165007, 165008, 169498, 165025, 167271, 167273, 167274, 169521, 169524, 162813, 162816, 174002, 144929, 171787, 174024, 171790, 171795, 165084, 171796, 162853, 167335, 158387, 176285, 169574, 176287, 176288, 162872, 171821, 162873, 171822, 167353, 158405, 73400, 167354, 162880, 167355, 167356, 167359, 162896, 24207, 162918, 156208, 167395, 169634, 1860, 169636, 158453, 162928, 162929, 165182, 176368, 158474, 165189, 167435, 158490, 151780, 165208, 176400, 169696, 169700, 165232, 167483, 174195, 167493, 163030, 163032, 163038, 169751, 158566, 169752, 163041, 163043, 169756, 183179, 167525, 167535, 167556, 169795, 163084, 165333, 165335, 165337, 60199, 169825, 172063, 172064, 158642, 167591, 169830, 163119, 160883, 165357, 160884, 78116, 176545, 160888, 187734, 165366, 169843, 178792, 178804, 169861, 169864, 169870, 167636, 167637, 167638, 167639, 165403, 167640, 167641, 165405, 167642, 174357, 174358, 172130, 165430, 160958, 31216, 156504, 169926, 158752, 167701, 160996, 165473, 174435, 161016, 161018, 73780, 167737, 167741, 158794, 167743, 156558, 158798, 167747, 169992, 158809, 170002, 165532);
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=167804; -- Slimed Queen
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `HealthModifier`=0.200000002980232238, `VerifiedBuild`=46549 WHERE `entry`=167821; -- Caustic Jelly
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46549 WHERE `entry`=181337; -- Geordy
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=172441; -- [DNT] Trap Bunny
UPDATE `creature_template` SET `VerifiedBuild`=46549 WHERE `entry`=53884; -- Feline Familiar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=165747; -- Champion Shenrak
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `type`=10, `type_flags`=1024, `HealthModifier`=1.35000002384185791, `VerifiedBuild`=46549 WHERE `entry`=47319; -- Leap Target
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=172674; -- Runespeaker Malcorn
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=172675; -- Runespeaker Jorg
UPDATE `creature_template` SET `VerifiedBuild`=46549 WHERE `entry`=174922; -- Strategist Zo'rak
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=174993; -- Ritual Circle
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46549 WHERE `entry`=175022; -- Bleak Skitterer
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=175150; -- Bone Stake
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46549 WHERE `entry`=173258; -- Bloog
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46549 WHERE `entry`=173259; -- Bone Crusher
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46549 WHERE `entry`=173260; -- Chipper
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46549 WHERE `entry` IN (173264, 173265, 173266); -- Leftovers
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=171140; -- Forlorn Fungret
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=171169; -- Targano Cheev
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=162535; -- Bloody Lump
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=160407; -- Bonearmed Decapitator
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46549 WHERE `entry`=174237; -- Meowmalade
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=167563; -- Toxic Slime
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=169964; -- One-Eyed Joby
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=169984; -- Lalamir
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=167770; -- Slimed Skeleton


UPDATE `creature_template_model` SET `VerifiedBuild`=46549 WHERE (`Idx`=0 AND `CreatureID` IN (184047,181328,177282,175127,183179,173668,32639,32638,159200,156681,156687,156686,156689,175211,156692,173571,156691,181337,175083,58960,175210,175209,178792,174922,114665,162918,417,175213,171790,171787,170640,168011,164096,164095,187734,164579,167591,55370,176368,176067,176066,176065,176064,173388,173386,171821,171795,171299,164079,162896,156791,173369,171589,164684,164100,164099,164098,164078,156504,175036,53884,170310,158259,159478,175216,175212,175082,175081,175080,175067,175066,173370,169524,165796,156664,170607,190148,166312,156663,165654,175215,54638,171822,182864,170256,170557,17252,175214,175035,173356,173355,173354,173353,164596,156768,156758,175222,173357,173352,165657,162928,151780,175019,162929,173318,166663,165403,175208,175016,175020,173304,156688,173305,178804,177829,165405,172702,162666,175042,173325,175018,164173,143622,173350,175207,156735,156734,175087,175327,164803,173367,166307,164123,171796,164352,167880,173348,173364,176545,99541,175017,167881,156769,173300,181681,173301,166061,173330,164685,175206,164353,173302,175218,164686,173327,156698,121541,173118,58959,171549,168677,1860,174024,160884,160883,172591,173495,172609,161597,172607,171546,174358,172933,164678,174357,164679,170779,170784,171547,165822,172696,172567,173266,173265,173264,173263,174237,168947,168950,161018,161016,160958,157029,168951,170582,170994,165960,172397,172398,164913,164878,170908,164882,173414,164880,164877,164848,164847,164845,164836,164824,170964,170967,170965,170966,170558,164885,164879,170892,170890,167817,170955,170954,170972,172505,157683,157682,157662,170993,158809,158490,170551,170580,170996,170891,170563,170573,167525,173943,170963,170929,170562,170962,170550,156208,169864,170956,170931,170923,170553,171169,170583,157665,173948,170893,164864,164860,158794,157654,167747,167743,158453,165182,160424,167737,164667,170971,167741,157514,175008,161677,175144,167642,161679,161676,161668,168045,167641,167640,167639,162093,161675,160415,167638,167637,167636,161673,175398,174002,165335,164797,157843,157803,43499,167949,167948,174963,167923,160060,167935,161613,160048,174813,166373,166358,165333,167832,165008,165430,173952,164267,174195,173930,163857,169861,44199,166813,170474,164265,165532,137623,168837,164737,171675,173362,173360,170478,166762,168907,173340,173339,170021,174802,171656,171596,167556,165357,169498,47319,168398,164362,59764,63508,175519,73400,172064,168579,78116,62822,62821,170002,175024,164711,169521,165007,164544,164525,168269,160888,164273,168266,171093,171092,169992,174664,164928,163038,164446,164063,157516,160522,174665,168042,164713,165025,174435,175022,172601,172596,172589,172590,172557,168267,158474,172556,173200,169250,169249,164458,164312,174649,159757,170456,159691,162761,170191,159856,168226,172423,159827,159825,159824,159822,159696,166226,164507,159828,159689,169751,166562,166552,166400,161710,161559,162588,161585,166545,164492,164508,169795,159830,163084,163824,172425,162816,169830,69791,69792,166540,166370,169984,169964,165473,162727,162732,158053,165561,158566,172427,158642,170493,158752,168403,168192,163415,158387,163043,163041,175833,174650,168518,161695,166728,168522,168388,172430,172429,170159,168440,166564,162813,162872,167274,162474,164588,162615,173259,171383,162617,173260,173258,173257,170099,162589,166375,176024,170095,162477,173003,170542,168747,167493,170022,163862,169203,168891,164550,164967,169258,168886,168022,164705,163891,168878,168627,163894,169159,163892,31216,168394,47649,168573,60199,169265,168396,168393,168386,171574,171573,171572,171474,168391,164266,172063,166480,172336,163882,168965,168315,168314,164255,168310,416,169201,168969,168364,168572,169141,168365,169843,169218,168153,168361,168578,174877,168574,169450,168298,172335,163931,168580,168155,169696,163915,168968,163032,172441,166567,161712,157540,161757,170496,163030,166565,93008,162873,162853,161907,166424,166421,162880,172422,169452,166423,167335,176023,175097,161881,164997,164996,161890,167535,24207,76168,164381,161905,182105,173026,163119,173018,166437,166129,174654,167395,173944,170901,164831,158040,169184,167435,171419,171358,162258,164829,164830,167701,166908,167483,162478,162498,168216,176288,160407,165366,158405,168972,167273,160479,160474,157671,156591,160996,167271,167356,162650,160095,157669,176285,169129,168946,167359,176287,161105,168324,164833,156558,169055,168331,144929,175021,169636,168342,169634,168322,169121,169574,167355,159710,158798,169341,169295,165337,169700,162259,165644,169756,169752,172130,170051,175023,169825,165189,167353,174652,165084,165002,174653,159674,168424,165232,176400,169926,169870,157058,167354,159683,159748,165208,159759,305,21354,65011,55272,32206,18362,18375,18376,18406,18359,18357,18360,14565,14505,9158,73780,28302,304,26125)) OR (`Idx`=5 AND `CreatureID` IN (175211,175216,175222,175208,175016,175018,175207,173300,175206,175218,173118,171549,165335,163041,161757,157671,169295)) OR (`Idx`=4 AND `CreatureID` IN (175211,175216,170607,175215,175222,175208,175016,173304,175042,175018,175207,175017,173300,175206,175218,173118,171549,165335,166400,166540,163041,169265,161757,163030,160474,157671,169295,169700)) OR (`Idx`=3 AND `CreatureID` IN (175211,175216,175067,175066,170607,175215,156758,175222,175208,175016,175020,173304,175042,175018,175207,171796,99541,175017,173300,175206,175218,173118,171549,168951,165335,167949,163857,166226,164507,166400,166540,172427,163041,168518,168522,166564,170542,163862,163892,169265,168315,168314,168310,169218,168153,161757,163030,167395,167701,160474,157671,174898,159710,169295,169700,174930,165084,159683,26125)) OR (`Idx`=2 AND `CreatureID` IN (175211,175209,175213,175216,175082,175067,175066,170607,175215,156758,175222,175208,175016,175020,173304,175042,175018,143622,175207,156734,171796,99541,175017,173300,175206,175218,173118,171549,168951,167817,165335,167949,163857,168837,168579,164711,171140,169521,160888,160522,164713,166226,164507,166400,166540,165561,172427,163043,163041,168518,168522,168440,166564,176024,170542,163862,163892,47649,169265,172063,168315,168314,168310,168365,169218,168153,174877,168968,161757,163030,176023,161881,167395,167701,160474,157671,156591,174898,167271,168331,168322,159710,169295,169700,174930,165084,159683,26125)) OR (`Idx`=1 AND `CreatureID` IN (175211,175209,175213,55370,170310,175216,175082,175067,175066,170607,175215,54638,171822,170256,156758,175222,151780,175019,175208,175016,175020,173304,175042,175018,143622,175207,156734,175087,171796,99541,175017,173300,175206,175218,173118,171549,168677,161597,174358,174357,170779,170784,171547,168951,173414,164824,164879,167817,170580,173943,170963,170929,170962,170550,170931,170923,170553,170583,173948,170893,164864,164860,157654,160424,164667,161679,160415,165335,157803,167949,160048,166373,167832,173952,173930,163857,164265,165532,137623,168837,173362,170478,166762,173340,174802,167556,73400,168579,78116,164711,171140,169521,164544,168269,160888,164273,164928,163038,164446,160522,164713,165025,172601,172596,172589,172557,164458,164312,159757,170456,162761,159856,172423,159825,159822,166226,164507,159828,166400,164492,164508,172425,162816,166540,165561,172427,168192,163043,163041,168518,168522,168440,166564,162813,162617,166375,176024,162477,170542,167493,163862,169258,163892,47649,169265,168386,168391,172063,166480,168315,168314,168310,169201,168365,169218,168153,174877,169450,168155,168968,163032,172441,161757,163030,93008,166424,172422,176023,161881,164381,173026,173018,167395,173944,158040,167435,171419,171358,162258,167701,162535,162498,168216,176288,158405,160479,160474,157671,156591,174898,167271,167356,157669,176285,169129,167359,176287,164833,156558,168331,144929,169636,169634,168322,159710,158798,169341,169295,165337,169700,174930,169756,169752,169825,174652,165084,165232,176400,159683,165208,159759,26125)) OR (`Idx`=11 AND `CreatureID`=163041) OR (`Idx`=10 AND `CreatureID`=163041) OR (`Idx`=9 AND `CreatureID`=163041) OR (`Idx`=8 AND `CreatureID`=163041) OR (`Idx`=7 AND `CreatureID` IN (163041,161757)) OR (`Idx`=6 AND `CreatureID` IN (163041,161757,157671));
UPDATE `creature_template_model` SET `DisplayScale`=0.899999976158142089, `VerifiedBuild`=46549 WHERE (`CreatureID`=172674 AND `Idx`=0); -- Runespeaker Malcorn
UPDATE `creature_template_model` SET `DisplayScale`=1.125, `VerifiedBuild`=46549 WHERE (`CreatureID`=172675 AND `Idx`=0); -- Runespeaker Jorg
UPDATE `creature_template_model` SET `CreatureDisplayID`=110619, `VerifiedBuild`=46549 WHERE (`CreatureID`=99773 AND `Idx`=0); -- Bloodworm
UPDATE `creature_template_model` SET `DisplayScale`=2, `VerifiedBuild`=46549 WHERE (`CreatureID`=167804 AND `Idx`=0); -- Slimed Queen
UPDATE `creature_template_model` SET `DisplayScale`=1.25, `VerifiedBuild`=46549 WHERE (`CreatureID`=167770 AND `Idx`=0); -- Slimed Skeleton
UPDATE `creature_template_model` SET `DisplayScale`=0.150000005960464477, `VerifiedBuild`=46549 WHERE (`CreatureID`=167821 AND `Idx`=0); -- Caustic Jelly
UPDATE `creature_template_model` SET `DisplayScale`=0.5, `VerifiedBuild`=46549 WHERE (`CreatureID`=167563 AND `Idx`=0); -- Toxic Slime
UPDATE `creature_template_model` SET `DisplayScale`=1.10000002384185791, `VerifiedBuild`=46549 WHERE (`CreatureID`=171140 AND `Idx`=0); -- Forlorn Fungret
UPDATE `creature_template_model` SET `DisplayScale`=0.5, `VerifiedBuild`=46549 WHERE (`CreatureID`=175150 AND `Idx`=0); -- Bone Stake
UPDATE `creature_template_model` SET `DisplayScale`=1.5, `VerifiedBuild`=46549 WHERE (`CreatureID`=174993 AND `Idx`=0); -- Ritual Circle
UPDATE `creature_template_model` SET `DisplayScale`=1.10000002384185791, `VerifiedBuild`=46549 WHERE (`CreatureID`=174679 AND `Idx`=0); -- Forgehand Veris
UPDATE `creature_template_model` SET `DisplayScale`=0.60000002384185791, `VerifiedBuild`=46549 WHERE (`CreatureID`=172581 AND `Idx`=0); -- Slimelet
UPDATE `creature_template_model` SET `DisplayScale`=1.399999976158142089, `Probability`=0, `VerifiedBuild`=46549 WHERE (`CreatureID`=162535 AND `Idx`=0); -- Bloody Lump
UPDATE `creature_template_model` SET `DisplayScale`=1.10000002384185791, `VerifiedBuild`=46549 WHERE (`CreatureID`=174898 AND `Idx`=0); -- Injured Vanguard
UPDATE `creature_template_model` SET `DisplayScale`=0.85000002384185791, `VerifiedBuild`=46549 WHERE (`CreatureID`=174930 AND `Idx`=0); -- Kyrian Prisoner
UPDATE `creature_template_model` SET `DisplayScale`=1.5, `VerifiedBuild`=46549 WHERE (`CreatureID`=165747 AND `Idx`=0); -- Champion Shenrak


UPDATE `creature_questitem` SET `VerifiedBuild`=46549 WHERE (`Idx`=0 AND `CreatureEntry` IN (170908,164877,164879,170892,170890,167817,170551,170580,170891,173943,170929,170962,170956,170931,170583,173948,164864,164860,158794,157654,167948,167923,160048,165008,164267,164737,171656,165007,168266,172601,172596,172557,159856,162588,165473,162727,158053,165561,158566,158642,158752,166728,163862,164967,168886,168878,168627,163894,163892,168393,168386,164266,163882,164255,168310,168365,168153,168578,168574,168155,169696,161881,161890,173944,170901,171419,171358,164830,160479,161105,168342,169341,165337,157058)) OR (`Idx`=3 AND `CreatureEntry` IN (167948,167923,160048)) OR (`Idx`=2 AND `CreatureEntry` IN (167948,167923,160048,164267)) OR (`Idx`=1 AND `CreatureEntry` IN (167948,167923,160048,164267,172601,159856,162588,165473,162727,158752,161105,168342,157058));

DELETE FROM `gameobject_template` WHERE `entry` IN (364447 /*Chosen Banner*/, 355926 /*Brazier of Challenge*/, 355930 /*Unlit Brazier of Challenge*/, 355922 /*Roar of the Crowd*/, 361391 /*Construct Supplies*/, 364478 /*Flask of Unravelling*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(364447, 10, 59210, 'Chosen Banner', 'interact', 'Burning', '', 1.20000004768371582, 43, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30602, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 837, 46549), -- Chosen Banner
(355926, 10, 66154, 'Brazier of Challenge', 'questinteract', 'Light Brazier', '', 2, 93, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 336684, 0, 0, 0, 202791, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 837, 46549), -- Brazier of Challenge
(355930, 10, 59448, 'Unlit Brazier of Challenge', 'questinteract', 'Lighting', '', 2, 99, 0, 0, 1, 0, 0, 0, 0, 0, 0, 336442, 0, 0, 0, 28503, 0, 0, 0, 1, 0, 1, 0, 83560, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 837, 46549), -- Unlit Brazier of Challenge
(355922, 5, 5973, 'Roar of the Crowd', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 837, 46549), -- Roar of the Crowd
(361391, 10, 61176, 'Construct Supplies', 'questinteract', 'Destroying', '', 0.800000011920928955, 2668, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24585, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 691, 46549), -- Construct Supplies
(364478, 10, 61230, 'Flask of Unravelling', '', '', '', 1.20000004768371582, 0, 0, 0, 3000, 0, 1, 0, 0, 0, 0, 344671, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 837, 46549); -- Flask of Unravelling

UPDATE `gameobject_template` SET `VerifiedBuild`=46549 WHERE `entry` IN (349559, 326155, 351877, 357638, 364526, 353483, 357578, 357285, 357289, 353490, 353485, 357294, 365154, 377005, 357298, 352745, 377007, 377031, 377001, 345445, 352746, 353489, 353480, 365155, 353481, 367758, 365157, 357340, 357272, 345444, 369526, 369532, 353750, 354921, 364424, 353476, 357316, 353492, 357308, 357324, 353478, 369529, 354681, 357321, 357313, 357305, 354922, 357302, 357262, 357462, 357326, 357318, 357286, 357310, 357278, 353823, 357095, 364423, 369531, 357307, 357299, 357267, 357323, 357315, 353491, 354924, 364419, 369536, 364497, 369528, 365156, 357320, 353488, 357288, 357264, 354680, 369533, 353477, 357277, 357269, 357325, 357301, 369535, 369527, 353822, 369530, 353479, 357266, 364422, 357322, 375407, 357314, 357274, 353482, 353487, 357282, 357306, 357303, 357287, 354923, 355063, 369534, 357327, 357319, 357311, 364499, 357955, 357954, 357946, 357945, 357960, 357957, 357953, 357951, 357948, 357944, 357959, 357958, 357952, 357950, 357949, 357943, 357224, 354683, 351474, 352585, 352584, 352571, 349493, 354684, 357094, 354682, 358579, 357240, 352576, 352569, 357464, 357182, 357183, 357177, 346107, 354197, 357179, 357184, 354196, 357178, 357176, 355941, 236184, 357193, 357192, 357190, 357189, 354199, 354198, 355937, 364525, 355939, 355938, 357195, 354102, 354103, 357194, 354195, 354100, 354101, 365674, 351447, 356599, 364892, 358873, 358872, 358871, 353764, 357089, 355042, 365670, 357465, 357463, 356600, 354969, 334598, 364043, 252245, 357731, 363967, 348526, 345469, 340666, 348553, 348557, 353883, 364530, 357482, 338622, 357478, 357495, 357494, 357481, 357480, 357479, 357476, 357474, 358573, 351729, 358870, 358868, 358855, 326238, 326236, 355923, 354970, 355859, 349082, 355925, 355929, 358382, 344592, 344589, 353400, 353397, 353992, 350085, 353399, 353398, 357352, 357351, 353395, 246280, 355928, 353396, 353394, 353393, 355932, 341721, 341720, 355927, 355931, 356879, 349546, 303148, 252247, 353633, 355424, 353752, 35591, 355924, 364393, 353614, 252145, 364394, 351467, 348935, 358315, 352577, 351478, 349581, 351479, 351475, 363966, 363965, 363964, 363963, 363911, 349575, 353616, 350775, 354927, 364865, 336689, 336691, 334123, 364864, 352574, 350778, 339652, 339646, 353389, 353390, 353392, 353391, 352118, 352070, 350801, 349086, 349898, 351470, 336675, 353378, 349981, 353601, 363444, 355860, 346019, 353602, 353615, 338855, 352110, 364863);
UPDATE `gameobject_template` SET `castBarCaption`='Opening', `Data32`=108, `VerifiedBuild`=46549 WHERE `entry`=356535; -- Runespeaker's Trove
UPDATE `gameobject_template` SET `name`='Scroll of Teleportation', `VerifiedBuild`=46549 WHERE `entry`=351933; -- Свиток телепортации
UPDATE `gameobject_template` SET `type`=10, `IconName`='interact', `castBarCaption`='Burning', `size`=0.800000011920928955, `Data0`=43, `Data3`=1, `Data14`=30602, `Data23`=1, `ContentTuningId`=837, `VerifiedBuild`=46549 WHERE `entry`=364444; -- Chosen Banner
UPDATE `gameobject_template` SET `name`='Bloody Lump', `VerifiedBuild`=46549 WHERE `entry`=341460; -- Кровавый комок
UPDATE `gameobject_template` SET `name`='Rotting Meat', `VerifiedBuild`=46549 WHERE `entry` IN (291145, 291144); -- Гниющее мясо
UPDATE `gameobject_template` SET `Data32`=108, `VerifiedBuild`=46549 WHERE `entry`=353380; -- Halis's Lunch Pail
UPDATE `gameobject_template` SET `name`='Translocation Sphere', `VerifiedBuild`=46549 WHERE `entry`=364847; -- Сфера транслокации


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46549 WHERE (`GameObjectEntry`=357094 AND `Idx`=0) OR (`GameObjectEntry`=356535 AND `Idx` IN (1,0)) OR (`GameObjectEntry`=356879 AND `Idx` IN (11,10,9,8,7,6,5,4,3,2,1,0)) OR (`GameObjectEntry`=352070 AND `Idx`=0) OR (`GameObjectEntry`=353380 AND `Idx` IN (1,0));


UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096


UPDATE `quest_template_addon` SET `PrevQuestID`='30040' WHERE  `ID`=30033;
UPDATE `quest_template_addon` SET `PrevQuestID`='29524', `NextQuestID`='29409' WHERE  `ID`=29408;
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES ('53566', '30039');
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES ('53566', '30039');
UPDATE `quest_template_addon` SET `PrevQuestID`='30039' WHERE  `ID`=30027;
UPDATE `quest_template_addon` SET `PrevQuestID`='30027', `NextQuestID`='29524' WHERE  `ID`=29406;
UPDATE `quest_template_addon` SET `NextQuestID`='29408' WHERE  `ID`=29524;


DELETE FROM `gameobject_template` WHERE `entry`=210020;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (210020, 3, 10721, 'Weapon Rack', '', '', '', 1, 57, 210020, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13364, 0, 0, 0, 0, 0, 0, 0, 0, 128680, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 20886);
DELETE FROM `gameobject_template` WHERE `entry`=210019;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (210019, 3, 10721, 'Weapon Rack', '', '', '', 1, 57, 210019, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13366, 0, 0, 0, 0, 0, 0, 0, 0, 128680, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 20886);
DELETE FROM `gameobject_template` WHERE `entry`=210018;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (210018, 3, 10721, 'Weapon Rack', '', '', '', 1, 57, 210018, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13365, 0, 0, 0, 0, 0, 0, 0, 0, 128680, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 20886);
DELETE FROM `gameobject_template` WHERE `entry`=210017;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (210017, 3, 10721, 'Weapon Rack', '', '', '', 1, 57, 210017, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13363, 0, 0, 0, 0, 0, 0, 0, 0, 128680, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 20886);
DELETE FROM `gameobject_template` WHERE `entry`=210016;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (210016, 3, 10721, 'Weapon Rack', '', '', '', 1, 57, 210016, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13362, 0, 0, 0, 0, 0, 0, 0, 0, 128680, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 20886);
DELETE FROM `gameobject_template` WHERE `entry`=210015;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (210015, 3, 10721, 'Weapon Rack', '', '', '', 1, 57, 210015, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13361, 0, 0, 0, 0, 0, 0, 0, 0, 128680, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 20886);
DELETE FROM `gameobject_template` WHERE `entry`=210005;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (210005, 3, 10721, 'Weapon Rack', '', '', '', 1, 57, 210005, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13360, 0, 0, 0, 0, 0, 0, 0, 0, 128680, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 20886);

DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry`=210020 AND `Idx`=0;
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES (210020, 0, 73210, 0);
DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry`=210019 AND `Idx`=0;
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES (210019, 0, 76391, 0);
DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry`=210019 AND `Idx`=1;
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES (210019, 1, 73213, 0);
DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry`=210018 AND `Idx`=0;
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES (210018, 0, 73208, 0);
DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry`=210018 AND `Idx`=1;
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES (210018, 1, 73212, 0);
DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry`=210017 AND `Idx`=0;
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES (210017, 0, 73207, 0);
DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry`=210017 AND `Idx`=1;
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES (210017, 1, 76393, 0);
DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry`=210016 AND `Idx`=0;
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES (210016, 0, 73211, 0);
DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry`=210015 AND `Idx`=0;
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES (210015, 0, 76392, 0);
DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry`=210015 AND `Idx`=1;
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES (210015, 1, 76390, 0);
DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry`=210005 AND `Idx`=0;
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES (210005, 0, 77279, 22566);
DELETE FROM `gameobject_questitem` WHERE `GameObjectEntry`=210005 AND `Idx`=1;
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES (210005, 1, 77278, 22566);


REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `QuestRequired`) VALUES ('210016', '73211', '1');
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `QuestRequired`) VALUES ('210017', '73207', '1');
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `QuestRequired`) VALUES ('210017', '76393', '1');
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `QuestRequired`) VALUES ('210018', '73212', '1');
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (210018, 73208, 0, 100, 1, 1, 0, 1, 1, NULL);
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `QuestRequired`) VALUES ('210019', '73213', '1');
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `QuestRequired`) VALUES ('210019', '76391', '1');
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `QuestRequired`) VALUES ('210020', '73210', '1');
DELETE FROM `gameobject_loot_template` WHERE `Entry`=210005 AND `Item`=73209;
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (210005, 73209, 0, 100, 1, 1, 0, 1, 1, '');
DELETE FROM `gameobject_loot_template` WHERE `Entry`=210005 AND `Item`=77279;
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (210005, 77279, 0, 30, 0, 1, 0, 1, 1, '');
DELETE FROM `gameobject_loot_template` WHERE `Entry`=210005 AND `Item`=77278;
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (210005, 77278, 0, 30, 0, 1, 0, 1, 1, '');
DELETE FROM `gameobject_loot_template` WHERE `Entry`=210005 AND `Item`=73213;
REPLACE INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (210005, 73213, 0, 30, 0, 1, 0, 1, 1, NULL);

DELETE FROM `creature_equip_template` WHERE (`CreatureID`=170800 AND `ID`=1);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(170800, 1, 110389, 0, 0, 0, 0, 0, 0, 0, 0, 46549); -- Coldheart Ambusher


UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `VerifiedBuild`=46549 WHERE (`IsServerSide`=0 AND `Id` IN (9225,23299,23297,25732));
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=8, `Data1`=8, `VerifiedBuild`=46549 WHERE (`Id`=19401 AND `IsServerSide`=0);



DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=167 AND `Entry` IN (143622,170495,99541,170800,183934,24207)) OR (`DifficultyID`=0 AND `Entry`=181328);
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(143622, 167, 0, 0, 482, 46549),
(170495, 167, 0, 0, 482, 46549),
(99541, 167, 0, 0, 482, 46549),
(170800, 167, 0, 0, 709, 46549),
(183934, 167, 0, 0, 709, 46549),
(24207, 167, 0, 0, 482, 46549),
(181328, 0, 0, 0, 709, 46549);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46549 WHERE (`DifficultyID`=167 AND `Entry` IN (170257,155216,157260,164778,173645,155215,166151,155219,155250,152594,168099,183983,164624,164628,173648,183931,156157,156159,156212,156480,168003,153849,165594,164539,167986,164698,164674,164471,164675,169787,169785,181714,156226,165361,169561,169560,169237,175071,173649,156213,156242,165523,183919,164538,151353,156219)) OR (`DifficultyID`=0 AND `Entry` IN (165799,170724,173236,29238,166663,183179,184047,177282,175127));


UPDATE `creature_model_info` SET `VerifiedBuild`=46549 WHERE `DisplayID` IN (77405, 77406, 66220, 66222, 26918, 66221, 66223, 95054, 95769, 69484, 95935, 26079, 16946, 95505, 96339, 11686, 102448, 96847, 94392, 20577, 101969, 98562, 96840, 96839, 96844, 96846, 92677, 96848, 101970, 95102, 26064, 101355, 23767, 101379, 95276);
UPDATE `creature_model_info` SET `BoundingRadius`=1.919151782989501953, `CombatReach`=2.699999809265136718, `VerifiedBuild`=46549 WHERE `DisplayID` IN (101907, 101906, 101905);
UPDATE `creature_model_info` SET `BoundingRadius`=0.592886686325073242, `CombatReach`=2.5, `VerifiedBuild`=46549 WHERE `DisplayID`=94426;
UPDATE `creature_model_info` SET `BoundingRadius`=0.210000008344650268, `CombatReach`=0.60000002384185791, `VerifiedBuild`=46549 WHERE `DisplayID`=80467;
UPDATE `creature_model_info` SET `BoundingRadius`=0.91011899709701538, `CombatReach`=0.78750002384185791, `VerifiedBuild`=46549 WHERE `DisplayID`=94210;
UPDATE `creature_model_info` SET `BoundingRadius`=5.225210189819335937, `CombatReach`=5, `VerifiedBuild`=46549 WHERE `DisplayID`=94412;
UPDATE `creature_model_info` SET `BoundingRadius`=2.833333492279052734, `CombatReach`=3, `VerifiedBuild`=46549 WHERE `DisplayID`=93583;
UPDATE `creature_model_info` SET `BoundingRadius`=1.507208466529846191, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46549 WHERE `DisplayID`=96828;
UPDATE `creature_model_info` SET `BoundingRadius`=1.331785917282104492, `CombatReach`=1.680000066757202148, `VerifiedBuild`=46549 WHERE `DisplayID`=101972;
UPDATE `creature_model_info` SET `BoundingRadius`=1.444407939910888671, `CombatReach`=1.149999976158142089, `VerifiedBuild`=46549 WHERE `DisplayID`=94398;
UPDATE `creature_model_info` SET `BoundingRadius`=1.256006956100463867, `CombatReach`=1, `VerifiedBuild`=46549 WHERE `DisplayID` IN (94399, 94391);
UPDATE `creature_model_info` SET `BoundingRadius`=1.381607651710510253, `CombatReach`=1.10000002384185791, `VerifiedBuild`=46549 WHERE `DisplayID`=94397;
UPDATE `creature_model_info` SET `BoundingRadius`=5, `CombatReach`=25, `VerifiedBuild`=46549 WHERE `DisplayID`=102241;
UPDATE `creature_model_info` SET `BoundingRadius`=1.695609450340270996, `CombatReach`=1.35000002384185791, `VerifiedBuild`=46549 WHERE `DisplayID`=96827;
UPDATE `creature_model_info` SET `BoundingRadius`=0.100000001490116119, `CombatReach`=1, `VerifiedBuild`=46549 WHERE `DisplayID` IN (96842, 96841, 96843);
UPDATE `creature_model_info` SET `BoundingRadius`=1.150486469268798828, `VerifiedBuild`=46549 WHERE `DisplayID`=101971;
UPDATE `creature_model_info` SET `BoundingRadius`=1.318807244300842285, `CombatReach`=1.049999952316284179, `VerifiedBuild`=46549 WHERE `DisplayID`=96826;
UPDATE `creature_model_info` SET `BoundingRadius`=1.21804666519165039, `CombatReach`=1, `VerifiedBuild`=46549 WHERE `DisplayID`=95749;
UPDATE `creature_model_info` SET `BoundingRadius`=1.13040626049041748, `CombatReach`=0.899999976158142089, `VerifiedBuild`=46549 WHERE `DisplayID`=94396;
UPDATE `creature_model_info` SET `BoundingRadius`=2.313888788223266601, `CombatReach`=1.5, `VerifiedBuild`=46549 WHERE `DisplayID`=94375;
UPDATE `creature_model_info` SET `BoundingRadius`=0.524599969387054443, `VerifiedBuild`=46549 WHERE `DisplayID`=92915;



UPDATE `gossip_menu` SET `VerifiedBuild`=46549 WHERE (`MenuID`=26677 AND `TextID`=42400);
DELETE FROM `gossip_menu_option` WHERE (`MenuID`=26677 AND `OptionID` IN (6,4,5,8,7,9));
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(26677, 6, 0, 'Enter Fracture Chambers', 0, 0, 0, 0, 0, 0, NULL, 0, 46549),
(26677, 4, 0, 'Enter Coldheart Interstitia', 0, 0, 0, 0, 0, 0, NULL, 0, 46549),
(26677, 5, 0, 'Enter Skoldus Hall', 0, 0, 0, 0, 0, 0, NULL, 0, 46549),
(26677, 8, 0, 'Enter the Soulforges', 0, 0, 0, 0, 0, 0, NULL, 0, 46549),
(26677, 7, 0, 'Enter Mort\'regar', 0, 0, 0, 0, 0, 0, NULL, 0, 46549),
(26677, 9, 0, 'Enter the Upper Reaches', 0, 0, 0, 0, 0, 0, NULL, 0, 46549);



DELETE FROM `creature_template` WHERE `entry`=181328;
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(181328, 0, 60, 60, 35, 2, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 1, 0, 0, 1); -- Ve'nish

UPDATE `creature_template` SET `BaseAttackTime`=1603 WHERE `entry`=58965; -- Wrathguard
UPDATE `creature_template` SET `minlevel`=60, `BaseAttackTime`=1603 WHERE `entry`=143622; -- Wild Imp
UPDATE `creature_template` SET `minlevel`=57, `maxlevel`=57, `BaseAttackTime`=1809, `unit_flags2`=2048 WHERE `entry`=170495; -- Magus of the Dead
UPDATE `creature_template` SET `maxlevel`=57, `BaseAttackTime`=1809 WHERE `entry`=99541; -- Risen Skulker
UPDATE `creature_template` SET `faction`=35, `npcflag`=35184372088833, `unit_flags`=294912, `unit_flags2`=2052 WHERE `entry`=166151; -- Moriaz the Red
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `unit_flags`=33587520 WHERE `entry`=155250; -- Decayspeaker
UPDATE `creature_template` SET `minlevel`=61, `maxlevel`=61, `dynamicflags`=4 WHERE `entry`=168099; -- Empowered Coldheart Javelineer
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3218, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=183983; -- Dominated Attendant
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=173648; -- Starting Room
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3218, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=183931; -- Dominated Guardian
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=14, `BaseAttackTime`=2000, `unit_flags`=33587200, `unit_flags2`=33556480, `unit_flags3`=524289 WHERE `entry`=170800; -- Coldheart Ambusher
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048, `unit_flags3`=524288 WHERE `entry`=183934; -- Dominated Core
UPDATE `creature_template` SET `minlevel`=61, `maxlevel`=61, `unit_flags`=32768 WHERE `entry`=168003; -- Empowered Coldheart Ascendant
UPDATE `creature_template` SET `minlevel`=57, `maxlevel`=57, `BaseAttackTime`=1864 WHERE `entry`=24207; -- Army of the Dead
UPDATE `creature_template` SET `unit_flags3`=16777217 WHERE `entry`=164698; -- Ashen Phylactery
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=165361; -- Mawsworn Shadestalker
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=175071; -- Exit Torghast

UPDATE `creature_template` SET `minlevel`=60, `BaseAttackTime`=1812 WHERE `entry`=1860; -- Voidwalker
UPDATE `creature_template` SET `BaseAttackTime`=1708 WHERE `entry`=78116; -- Water Elemental

UPDATE `creature_template` SET `BaseAttackTime`=1502 WHERE `entry`=416; -- Imp
UPDATE `creature_template` SET `minlevel`=57, `maxlevel`=57, `BaseAttackTime`=1864 WHERE `entry`=26125; -- Risen Ghoul



UPDATE `quest_template` SET `VerifiedBuild`=46549 WHERE `ID` IN (57443, 61885, 49091, 59585, 62235, 60855, 49098, 59578, 48620, 61784, 60337, 60659, 59808, 59234, 49099, 61868, 61947, 60565, 66696, 43241, 39393, 39274, 39029, 38748, 46736, 46735, 46277, 65033, 64850, 62778, 57249, 53436, 43341, 42449, 36309);
UPDATE `quest_template` SET `RewardBonusMoney`=2800, `VerifiedBuild`=46549 WHERE `ID`=45839; -- Assault on Stormheim
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46549 WHERE `ID`=52944; -- Call to Arms: Drustvar
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46549 WHERE `ID`=59018; -- Call to Arms: Vale of Eternal Blossoms
UPDATE `quest_template` SET `RewardBonusMoney`=4000, `VerifiedBuild`=46549 WHERE `ID`=49929; -- The Call for Allies
UPDATE `quest_template` SET `RewardBonusMoney`=32150, `Expansion`=9, `VerifiedBuild`=46549 WHERE `ID`=45563; -- The Shrouded Coin


DELETE FROM `creature_template` WHERE `entry`=181328;
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `unit_class`, `WidgetSetID`, `WidgetSetUnitConditionID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `VerifiedBuild`) VALUES
(181328, 0, 0, 'Ve\'nish', '', 'Aquisitions Specialist', NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 205068, 46549); -- Ve'nish

UPDATE `creature_template` SET `VerifiedBuild`=46549 WHERE `entry` IN (173236, 14505, 18406, 164937, 14565, 165523, 183919, 153849, 166663, 183931, 183934, 55272, 181714, 78116, 164471, 177282, 166151, 165594, 183983, 157260, 21354, 1860, 1863, 156157, 156159, 164538, 164539, 175127, 169560, 169561, 184047, 9158, 156212, 156213, 24207, 73780, 156219, 156226, 29238, 170724, 156242, 304, 305, 164624, 164628, 167986, 168003, 170800, 164674, 164675, 155215, 165799, 155216, 170257, 155219, 164698, 99541, 65011, 151353, 416, 173645, 173648, 173649, 168099, 28302, 169785, 32206, 169787, 164778, 169237, 143622, 58965, 183179, 165361, 26125, 156480, 152594, 18357, 18359, 18360, 18362, 18375, 18376);
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `HealthModifier`=0.002391899935901165, `VerifiedBuild`=46549 WHERE `entry`=170495; -- Magus of the Dead
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=175071; -- Exit Torghast
UPDATE `creature_template` SET `KillCredit1`=181376, `VerifiedBuild`=46549 WHERE `entry`=155250; -- Decayspeaker


UPDATE `creature_template_model` SET `VerifiedBuild`=46549 WHERE (`Idx`=0 AND `CreatureID` IN (58965,143622,170257,170495,164937,99541,164778,166151,157260,155216,173645,152594,183983,164628,164624,173648,183931,156159,183934,156480,24207,165594,164539,153849,167986,164698,164675,164674,164471,169787,169785,181714,156226,175071,183919,169561,151353,169560,164538,165523,173649,169237,170724,173236,165799,29238,166663,1860,78116,1863,184047,183179,181328,177282,175127,416,305,21354,65011,55272,32206,18362,18375,18376,18406,18359,18357,18360,14565,14505,9158,73780,28302,304,26125)) OR (`Idx`=2 AND `CreatureID` IN (143622,99541,155219,183983,183931,164698,183919,165523,26125)) OR (`Idx`=1 AND `CreatureID` IN (143622,99541,164778,155219,155216,183983,183931,164539,153849,164698,164471,183919,165361,169561,169560,164538,165523,169237,173236,78116,26125)) OR (`Idx`=3 AND `CreatureID` IN (99541,164698,165523,26125)) OR (`Idx`=6 AND `CreatureID` IN (164698,165523)) OR (`Idx`=5 AND `CreatureID` IN (164698,165523)) OR (`Idx`=4 AND `CreatureID` IN (164698,165523)) OR (`Idx`=7 AND `CreatureID`=165523);
UPDATE `creature_template_model` SET `DisplayScale`=0.60000002384185791, `VerifiedBuild`=46549 WHERE (`CreatureID`=155215 AND `Idx`=0); -- Faeleaf Lasher
UPDATE `creature_template_model` SET `DisplayScale`=1.049999952316284179, `VerifiedBuild`=46549 WHERE (`CreatureID`=155219 AND `Idx`=0); -- Gormling Spitter
UPDATE `creature_template_model` SET `DisplayScale`=0.5, `VerifiedBuild`=46549 WHERE (`CreatureID`=155250 AND `Idx`=0); -- Decayspeaker
UPDATE `creature_template_model` SET `DisplayScale`=1.20000004768371582, `VerifiedBuild`=46549 WHERE (`CreatureID`=168099 AND `Idx`=0); -- Empowered Coldheart Javelineer
UPDATE `creature_template_model` SET `DisplayScale`=1.149999976158142089, `VerifiedBuild`=46549 WHERE (`CreatureID`=156157 AND `Idx`=0); -- Coldheart Ascendant
UPDATE `creature_template_model` SET `DisplayScale`=1.10000002384185791, `VerifiedBuild`=46549 WHERE (`CreatureID`=156212 AND `Idx`=0); -- Coldheart Agent
UPDATE `creature_template_model` SET `DisplayScale`=1.20000004768371582, `VerifiedBuild`=46549 WHERE (`CreatureID`=170800 AND `Idx`=0); -- Coldheart Ambusher
UPDATE `creature_template_model` SET `DisplayScale`=1.35000002384185791, `VerifiedBuild`=46549 WHERE (`CreatureID`=168003 AND `Idx`=0); -- Empowered Coldheart Ascendant
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=46549 WHERE (`CreatureID`=165361 AND `Idx`=0); -- Mawsworn Shadestalker
UPDATE `creature_template_model` SET `DisplayScale`=0.899999976158142089, `VerifiedBuild`=46549 WHERE (`CreatureID`=156219 AND `Idx`=0); -- Coldheart Scout
UPDATE `creature_template_model` SET `DisplayScale`=0.75, `VerifiedBuild`=46549 WHERE (`CreatureID`=156242 AND `Idx`=0); -- Animated Prowler
UPDATE `creature_template_model` SET `DisplayScale`=1.049999952316284179, `VerifiedBuild`=46549 WHERE (`CreatureID`=156213 AND `Idx`=0); -- Coldheart Guardian


DELETE FROM `quest_offer_reward` WHERE `ID` IN (62277 /*Ardenweald*/, 65035 /*Return to Oribos*/, 64850 /*Traversing Torghast*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(62277, 0, 0, 0, 0, 0, 0, 0, 0, 'Ardenweald would be most appreciative of your help.', 46549), -- Ardenweald
(65035, 1, 0, 0, 0, 0, 0, 0, 0, 'You encountered a crazed broker and a... box? \n\nI am relieved you made it back in one piece, Maw Walker.', 46549), -- Return to Oribos
(64850, 1, 0, 0, 0, 0, 0, 0, 0, 'Ah, the place is filled to the brink with all sorts of terrible creatures... and also plenty of powers!\n\nPerfect! Did you hear that, box? We\'ll find plenty in this place... perhaps even more than that coward Ve\'nari out in the Maw.\n\nAhem, thank you, Maw Walker. You\'ve done your part well. I shall have more questions later.', 46549); -- Traversing Torghast



UPDATE `quest_poi` SET `VerifiedBuild`=46549 WHERE (`QuestID`=59581 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=59581 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=59581 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59581 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59581 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=59581 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=59581 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62739 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62739 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62277 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65035 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65035 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65033 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65033 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64850 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=64850 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=64850 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=64850 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62778 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=62778 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=62778 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=62778 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=62778 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=57249 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=57249 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=57249 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49929 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=45563 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=43341 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=43341 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=42449 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=42449 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=36309 AND `BlobIndex`=0 AND `Idx1`=0);

UPDATE `quest_poi_points` SET `VerifiedBuild`=46549 WHERE (`QuestID`=59581 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=59581 AND `Idx1`=5 AND `Idx2`=3) OR (`QuestID`=59581 AND `Idx1`=5 AND `Idx2`=2) OR (`QuestID`=59581 AND `Idx1`=5 AND `Idx2`=1) OR (`QuestID`=59581 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=59581 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=59581 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=59581 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=59581 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=11) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=10) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=9) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59581 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=59581 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=59581 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=59581 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=59581 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=59581 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=59581 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59581 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=59581 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=59581 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=59581 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59581 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=59581 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=59581 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=59581 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=59581 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=59581 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=59581 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62739 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62739 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62277 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65035 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65035 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65033 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65033 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64850 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=64850 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=64850 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=64850 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62778 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=62778 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=62778 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62778 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62778 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53436 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53436 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=45563 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=43341 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=43341 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=42449 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=42449 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=36309 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (62739 /*Restoring Balance*/, 62277 /*Ardenweald*/, 65035 /*Return to Oribos*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(62739, 1, 1, 1, 0, 0, 0, 0, 0, 46549), -- Restoring Balance
(62277, 0, 0, 0, 0, 0, 0, 0, 0, 46549), -- Ardenweald
(65035, 1, 1, 0, 0, 0, 0, 0, 0, 46549); -- Return to Oribos


DELETE FROM `creature_queststarter` WHERE (`id`=181328 AND `quest`=65035);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(181328, 65035, 46549); -- Return to Oribos offered Ve'nish

UPDATE `creature_queststarter` SET `VerifiedBuild`=46549 WHERE (`id`=159478 AND `quest`=62739);

DELETE FROM `creature_questender` WHERE (`id`=159478 AND `quest`=65035) OR (`id`=181328 AND `quest`=64850);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(159478, 65035, 46549), -- Return to Oribos ended by Tal-Inara
(181328, 64850, 46549); -- Traversing Torghast ended by Ve'nish


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (166685,181328));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(166685, 0, 0, 0, 1425, 46549),
(181328, 0, 0, 0, 709, 46549);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46549 WHERE (`DifficultyID`=0 AND `Entry` IN (174599,161642,161646,161610,160281,160351,161611,161612,161630,161629,161633,161644,160478,160286,161626,161628,159766,161627,161624,161625,159727,159729,163149,160289,159730,173488,168157,173170,173168,173169,173173,174994,161274,165041,169707,174754,168932,175850,161490,174750,163675,168224,159398,161247,161258,161488,161195,161191,165039,176003,156544,161207,161621,161211,161206,161448,166669,161480,161482,168909,168858,168215,161309,168214,168213,168796,158443,168212,168918,168296,173555,167908,173556,163624,175436,155589,159732,174640,174647,174646,174645,169411,174116,161015,174034,174032,159676,173765,173137,168707,171375,168122,167420,167890,155654,156284,158797,158796,158795,158799,165565,175544,165767,166543,166541,177554,166432,166542,165783,165563,165706,165723,165609,165576,159678,166005,161419,171149,165989,156540,169845,165256,169198,169197,166042,169171,158336,165253,166636,168734,173506,168676,24207,168722,168679,174844,168703,168678,168702,161879,161343,156081,161221,168732,166621,170950,170984,170988,170980,166070,166718,170953,160973,62167,161551,166068,155682,156413,161545,173094,166048,166047,158526,155704,175526,175525,173545,173548,173610,176186,164736,156777,167738,156668,156685,156732,173351,164685,175042,175216,167880,175208,156688,175206,173325,173305,166284,156664,173304,173364,156758,156663,156769,156768,175215,173301,156791,165796,169524,173318,173302,156735,173369,173354,158259,173356,182864,173357,173355,166312,173370,173353,175067,143622,175066,173300,173352,190148,175218,178792,162918,176368,173118,172702,176065,176064,156734,176067,176066,171822,55370,164684,171821,164579,164099,171790,164100,164098,167591,187734,175036,164079,175016,173386,171299,173388,162896,171787,175035,171589,170256,175083,175020,175080,170607,32642,32641,164078,164096,156733,173367,175017,162666,165657,171795,170310,164123,175087,156670,156692,175222,156689,175081,162928,159478,164095,175209,170640,156687,114665,156686,156504,156691,171796,165654,175210,164596,174922,176545,168011,173571,54638,173327,121541,164803,175211,162929,170557,175019,166061,175018,175082,175214,175213,156698,173330,175212,173668,183179,184047,175127,177282));


UPDATE `creature_model_info` SET `VerifiedBuild`=46549 WHERE `DisplayID` IN (98979, 94011, 93987, 94020, 94014, 94025, 94003, 94002, 94001, 94022, 93991, 96705, 96703, 94621, 94626, 94629, 94627, 94624, 94620, 93983, 93980, 94024, 93982, 98512, 96737, 96702, 96312, 96311, 98231, 94493, 93828, 93856, 93170, 94552, 97111, 94582, 94581, 94728, 94488, 93674, 94549, 93671, 94486, 93672, 94545, 97110, 97009, 94489, 93673, 94578, 94484, 94730, 95362, 92702, 94577, 93162, 93161, 96699, 96700, 96698, 94551, 94572, 94492, 96746, 96758, 96744, 96743, 96745, 94023, 94485, 96697, 96696, 93854, 96756, 98478, 96757, 98479, 97420, 94225, 98999, 98992, 95337, 97008, 93017, 93015, 93511, 93166, 93022, 93021, 95825, 46517, 100332, 92700, 60805, 94868, 95821, 95829, 99888, 95823, 94411, 92382, 92380, 95822, 96997, 95824, 93077, 95711, 99862, 26079, 95580, 65130, 7891, 65129, 93505, 92397, 97067, 51414, 80962, 97442, 93426, 97944, 94281, 94593, 94434, 92729, 96103, 92451, 92728, 99120, 28067, 98189, 92704, 93169, 95707, 93201, 94657, 25439, 25375, 25423, 25420, 93951, 97424, 101418, 94021, 93582, 95532, 95529, 94625, 96603, 77407, 96584, 99050, 94586, 93598, 90397, 92714, 99382, 92345, 93232, 98697, 93595, 93600, 97649, 77406, 88012, 93805, 90422, 104785, 74802, 93581, 99205, 98688, 93585, 86231, 97983, 77405, 93580, 97650, 88016, 93588, 94611, 93590, 97029, 100398, 93597, 99156, 93578, 98076, 99162, 95948, 93601, 96754, 97006, 105360, 93577, 93587, 98220, 104818, 93151, 95194, 97025, 92900, 94665, 90260, 94655, 94141, 96714, 92399, 97879, 98692, 97936, 28118, 28120, 94491, 97651, 95557, 95260, 96281, 96624, 94286, 19283, 96748, 95325, 95253, 96747, 95258, 105361, 98194, 93586, 93589, 27153, 93579, 73366, 93599, 92385, 95286, 95252, 95843, 95511, 96642, 96196, 93596, 94449, 93593, 24103, 11686, 96614, 27823, 97347, 94471, 97425, 96625, 94613, 96591, 95464, 93584, 95660, 96637, 99478, 98562, 23767, 95276, 101355, 101379);
UPDATE `creature_model_info` SET `BoundingRadius`=2.187499761581420898, `CombatReach`=1.049999952316284179, `VerifiedBuild`=46549 WHERE `DisplayID`=94614;
UPDATE `creature_model_info` SET `BoundingRadius`=0.390000015497207641, `CombatReach`=1.299999952316284179, `VerifiedBuild`=46549 WHERE `DisplayID`=100506;
UPDATE `creature_model_info` SET `BoundingRadius`=0.716120362281799316, `CombatReach`=0.5, `VerifiedBuild`=46549 WHERE `DisplayID`=94528;
UPDATE `creature_model_info` SET `BoundingRadius`=2.5, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46549 WHERE `DisplayID` IN (94548, 93774);
UPDATE `creature_model_info` SET `BoundingRadius`=0.532142281532287597, `CombatReach`=1, `VerifiedBuild`=46549 WHERE `DisplayID`=93855;
UPDATE `creature_model_info` SET `BoundingRadius`=1.75, `CombatReach`=7, `VerifiedBuild`=46549 WHERE `DisplayID`=94229;
UPDATE `creature_model_info` SET `BoundingRadius`=0.358060181140899658, `CombatReach`=0.25, `VerifiedBuild`=46549 WHERE `DisplayID`=94280;
UPDATE `creature_model_info` SET `BoundingRadius`=1.497027277946472167, `CombatReach`=1.75, `VerifiedBuild`=46549 WHERE `DisplayID`=94056;
UPDATE `creature_model_info` SET `BoundingRadius`=0.574999988079071044, `CombatReach`=1.149999976158142089, `VerifiedBuild`=46549 WHERE `DisplayID`=96111;
UPDATE `creature_model_info` SET `BoundingRadius`=0.382819831371307373, `CombatReach`=1, `VerifiedBuild`=46549 WHERE `DisplayID`=95920;
UPDATE `creature_model_info` SET `BoundingRadius`=2.429767608642578125, `CombatReach`=2, `VerifiedBuild`=46549 WHERE `DisplayID`=92701;
UPDATE `creature_model_info` SET `BoundingRadius`=0.95922398567199707, `CombatReach`=1.5, `VerifiedBuild`=46549 WHERE `DisplayID`=90426;
UPDATE `creature_model_info` SET `BoundingRadius`=0.629150748252868652, `CombatReach`=1.60000002384185791, `VerifiedBuild`=46549 WHERE `DisplayID`=93807;
UPDATE `creature_model_info` SET `BoundingRadius`=0.649999976158142089, `CombatReach`=1.299999952316284179, `VerifiedBuild`=46549 WHERE `DisplayID`=97444;
UPDATE `creature_model_info` SET `BoundingRadius`=0.889330029487609863, `CombatReach`=3.75, `VerifiedBuild`=46549 WHERE `DisplayID`=94426;
UPDATE `creature_model_info` SET `BoundingRadius`=0.843031287193298339, `CombatReach`=1.85000002384185791, `VerifiedBuild`=46549 WHERE `DisplayID`=92192;
UPDATE `creature_model_info` SET `BoundingRadius`=0.774677395820617675, `CombatReach`=1.70000004768371582, `VerifiedBuild`=46549 WHERE `DisplayID`=92191;



UPDATE `gossip_menu_option` SET `OptionText`='I want to ask something else.', `OptionBroadcastTextId`=61781, `BoxMoney`=0, `VerifiedBuild`=46549 WHERE (`OptionID`=0 AND `MenuID` IN (24930,24932)); -- OptionBroadcastTextID: 61781 - 61781 - 121489 - 121489 - 152386 - 152386 - 157767 - 157767 - 171009 - 171009
UPDATE `gossip_menu_option` SET `VerifiedBuild`=46549 WHERE (`MenuID`=26339 AND `OptionID`=0) OR (`MenuID`=26693 AND `OptionID`=4) OR (`MenuID`=26284 AND `OptionID`=1);
UPDATE `gossip_menu_option` SET `BoxMoney`=0, `VerifiedBuild`=46549 WHERE (`MenuID`=24931 AND `OptionID` IN (0,1));

DELETE FROM `creature_template` WHERE `entry`=181328;
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(181328, 0, 60, 60, 35, 2, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 1, 0, 0, 1); -- Ve'nish



UPDATE `quest_template` SET `RewardBonusMoney`=48200, `VerifiedBuild`=46549 WHERE `ID`=58936; -- Beast Control
UPDATE `quest_template` SET `VerifiedBuild`=46549 WHERE `ID` IN (60277, 60276, 60475, 49096, 60092, 64508, 61303, 59581, 60929, 60653, 61353, 58605, 61540);
UPDATE `quest_template` SET `RewardBonusMoney`=48200, `VerifiedBuild`=46549 WHERE `ID`=60514; -- Hunting Trophies
UPDATE `quest_template` SET `RewardBonusMoney`=48200, `VerifiedBuild`=46549 WHERE `ID`=58272; -- Words Have Power
UPDATE `quest_template` SET `RewardBonusMoney`=48200, `VerifiedBuild`=46549 WHERE `ID`=60467; -- A Rousing Aroma
UPDATE `quest_template` SET `RewardBonusMoney`=48200, `VerifiedBuild`=46549 WHERE `ID`=57531; -- An Unfortunate Situation
UPDATE `quest_template` SET `RewardBonusMoney`=32150, `VerifiedBuild`=46549 WHERE `ID`=60176; -- Bring Out Your Tithe
UPDATE `quest_template` SET `RewardBonusMoney`=40150, `VerifiedBuild`=46549 WHERE `ID`=57920; -- The Proper Souls
UPDATE `quest_template` SET `RewardBonusMoney`=48200, `VerifiedBuild`=46549 WHERE `ID`=60480; -- The Endmire
UPDATE `quest_template` SET `RewardBonusMoney`=4000, `VerifiedBuild`=46549 WHERE `ID`=59710; -- A Curious Invitation
UPDATE `quest_template` SET `RewardBonusMoney`=32150, `VerifiedBuild`=46549 WHERE `ID`=57471; -- It's a Dirty Job
UPDATE `quest_template` SET `RewardBonusMoney`=4000, `VerifiedBuild`=46549 WHERE `ID`=62739; -- Restoring Balance
UPDATE `quest_template` SET `RewardBonusMoney`=4000, `VerifiedBuild`=46549 WHERE `ID`=62277; -- Ardenweald
UPDATE `quest_template` SET `RewardBonusMoney`=64250, `VerifiedBuild`=46549 WHERE `ID`=60840; -- Wild Hunt Offensive
UPDATE `quest_template` SET `RewardBonusMoney`=64250, `VerifiedBuild`=46549 WHERE `ID`=62721; -- Deconstructing The Problem
UPDATE `quest_template` SET `RewardBonusMoney`=4000, `VerifiedBuild`=46549 WHERE `ID`=65035; -- Return to Oribos


UPDATE `quest_objectives` SET `VerifiedBuild`=46549 WHERE `ID` IN (395164, 398105, 398101, 398419, 398418, 398417, 394006, 398302, 392616, 397789, 397876, 397879, 397788, 397787, 393596, 398354, 396821, 396829, 392483, 398341, 398338, 397534, 405569, 405568, 409240, 396527, 396572, 396521, 396520, 396535, 396519, 405027, 405026, 404831, 404829, 404828, 404827, 404826, 404825, 404795, 404355, 404357, 404354, 404353, 409083, 409075, 408963, 408962, 405683, 405682, 405681, 405680, 394456, 408772, 408338, 408337, 408336, 408249, 408248, 408247, 408246, 408245, 408244, 408243, 408242, 408241, 408240, 406354, 406227, 407943);


UPDATE `quest_visual_effect` SET `VerifiedBuild`=46549 WHERE (`Index`=1 AND `ID` IN (398419,398341,405027,394456)) OR (`Index`=0 AND `ID` IN (398419,398418,398417,392616,397789,393596,396821,392483,398341,405569,405568,405027,405026,404357,404354,409083,394456,408338,408240,407943)) OR (`Index`=5 AND `ID` IN (398341,405027,394456)) OR (`Index`=4 AND `ID` IN (398341,405027,394456)) OR (`Index`=3 AND `ID` IN (398341,405027,394456)) OR (`Index`=2 AND `ID` IN (398341,405027,394456));


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=46549 WHERE (`QuestID`=60480 AND `Idx`=0);


UPDATE `creature_template` SET `VerifiedBuild`=46549 WHERE `entry` IN (190148, 165563, 165565, 165576, 165609, 156663, 156664, 156668, 156670, 156685, 156686, 156687, 156688, 156689, 156691, 156692, 167880, 156698, 174599, 167890, 165654, 165657, 161191, 161195, 167908, 161206, 156732, 161207, 156733, 156734, 156735, 161211, 161221, 174646, 165706, 156758, 156768, 156769, 161247, 165723, 156777, 161258, 156791, 161274, 165767, 168011, 170256, 165783, 161309, 165796, 174750, 174754, 161343, 170310, 163624, 168122, 161419, 174844, 163675, 168157, 161448, 161480, 417, 161482, 161488, 161490, 168212, 168213, 168214, 168215, 168224, 165989, 172702, 166005, 161545, 161551, 166042, 174994, 166047, 166048, 168296, 166061, 175016, 166068, 175017, 175018, 166070, 175019, 175020, 170557, 161610, 161611, 161612, 175035, 175036, 175042, 161621, 161624, 161625, 161626, 161627, 161628, 161629, 161630, 161633, 159398, 172825, 161642, 114665, 161644, 175066, 175067, 161646, 175080, 175081, 170607, 175082, 175083, 175087, 170640, 159478, 166206, 175206, 175208, 175209, 175210, 175211, 175212, 175213, 175214, 175215, 175216, 175218, 175222, 121541, 166284, 166312, 164078, 164079, 164095, 164096, 164098, 164099, 164100, 161879, 164123, 177554, 173094, 159676, 159678, 173118, 173137, 166432, 159727, 168676, 159729, 159730, 168678, 168679, 159732, 173168, 173169, 173170, 173173, 168702, 168703, 168707, 170950, 159766, 170953, 168722, 54638, 175436, 168732, 168734, 166541, 166542, 166543, 168796, 175525, 175526, 173300, 173301, 173302, 173304, 173305, 175544, 173318, 173325, 173327, 173330, 168858, 166621, 166636, 173351, 173352, 173353, 173354, 173355, 173356, 173357, 173364, 173367, 173369, 173370, 166669, 168909, 173386, 171149, 173388, 168918, 166685, 168932, 166718, 155589, 173488, 173506, 164579, 171299, 164596, 173545, 173548, 155654, 173571, 32641, 32642, 155682, 155704, 173610, 171375, 175850, 164684, 164685, 169171, 173668, 169197, 169198, 164736, 160281, 160286, 160289, 164803, 173765, 176003, 160351, 171589, 176064, 176065, 176066, 176067, 17252, 162666, 169411, 160478, 182864, 158259, 55370, 176186, 158301, 156081, 165039, 165041, 158336, 169524, 62167, 171787, 171790, 174032, 171795, 171796, 174034, 171821, 171822, 162896, 158443, 162918, 162928, 162929, 174116, 176368, 167420, 165189, 156284, 169707, 158526, 165253, 165256, 167591, 176545, 156413, 187734, 158653, 178792, 169845, 163149, 160973, 156504, 156540, 161015, 156544, 167738, 158795, 158796, 158797, 158799);
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46549 WHERE `entry`=174640; -- Nibbling Creeper
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46549 WHERE `entry`=174645; -- Slimy Creeper
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46549 WHERE `entry`=174647; -- Grimy Creeper
UPDATE `creature_template` SET `VerifiedBuild`=46549 WHERE `entry`=174922; -- Strategist Zo'rak
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=170980; -- Scornful Duelist
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=170984; -- Stoneborn Combatant
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=170988; -- Ash Ghoul Scratcher
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46549 WHERE `entry`=173555; -- Mire Creeper
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46549 WHERE `entry`=173556; -- Withering Creeper


UPDATE `creature_template_model` SET `VerifiedBuild`=46549 WHERE (`Idx`=0 AND `CreatureID` IN (174599,161646,161642,161610,160351,160281,161633,161630,161629,161612,161611,161644,160478,161626,160286,161628,159766,161627,161625,161624,159727,159729,163149,160289,159730,173488,168157,173173,173170,173169,173168,174994,161274,165041,169707,174754,168932,175850,161490,174750,163675,168224,159398,161258,161247,158653,161488,161195,161191,176003,165039,156544,161621,161207,161211,161206,166669,161482,161480,161448,168909,168858,168215,161309,158443,168796,168214,168213,168212,168918,168296,173556,173555,167908,163624,172825,175436,174647,174646,174645,174640,159732,155589,169411,174032,161015,174116,174034,159676,173765,173137,168707,171375,168122,167890,167420,155654,156284,158797,165565,158799,158796,158795,175544,165767,177554,166543,166541,166432,166542,165783,165563,165723,165706,165609,159678,165576,166005,161419,171149,165989,156540,169845,169198,169197,166042,165256,158336,169171,166636,165253,168734,173506,166685,168676,168722,168679,174844,168703,168702,168678,161879,161343,156081,161221,168732,166621,170984,170980,170953,170950,166718,166070,62167,166068,161551,160973,161545,156413,155682,173094,166048,166047,158526,155704,175526,175525,173610,173548,173545,176186,164736,156777,167738,156668,156732,156685,173351,164685,166206,175216,175042,167880,175208,156688,175206,173325,173305,173364,173304,166284,156769,156768,156758,156664,156663,175215,173301,169524,165796,156791,173318,173302,156735,173369,158301,173354,173357,158259,182864,173356,173355,175067,175066,173370,173353,173352,173300,166312,190148,175218,178792,162918,176368,176067,176066,176065,176064,173118,172702,171822,156734,55370,187734,175036,171821,171790,167591,164684,164579,164100,164099,164098,175035,175016,173388,173386,171787,171299,164079,162896,17252,171589,173367,156692,175080,175017,175212,156689,164096,162928,176545,165657,156686,165189,170310,54638,32641,159478,164078,175211,171795,173571,164803,156691,168011,162666,170640,170256,175210,175020,171796,156504,164596,114665,156733,175209,175081,175213,417,165654,173330,170557,162929,174922,166061,175087,156670,175214,175222,121541,170607,175082,175018,156687,173327,32642,164095,175019,175083,164123,156698,173668)) OR (`Idx`=1 AND `CreatureID` IN (160351,160478,159766,159727,159729,163149,160289,159730,168157,174994,161274,168932,161490,159398,161258,161247,161488,161195,161191,161211,161482,161480,161448,168215,158443,168796,168214,168213,168212,168918,167908,174646,159732,173137,168707,167890,167420,155654,158799,177554,166543,166541,166432,166542,165563,165723,165609,159678,165576,169845,169198,169197,165256,169171,156081,161221,170953,170950,62167,156413,155682,175526,175525,173548,173545,173351,175216,175042,175208,175206,173304,156758,175215,175067,175066,173300,175218,173118,171822,156734,55370,175016,175017,170310,54638,175211,170256,175020,171796,175209,175213,175087,175222,170607,175082,175018,175019)) OR (`Idx`=2 AND `CreatureID` IN (160478,159766,159727,159729,163149,160289,159730,168157,161274,168932,161490,161258,161247,161195,161191,161482,161480,161448,168215,168796,168214,168213,168212,168918,167908,173137,167420,158799,177554,166543,166541,166542,165563,165723,165609,165576,169198,169197,165256,169171,170953,170950,175525,173351,175216,175042,175208,175206,173304,156758,175215,175067,175066,173300,175218,173118,156734,175016,175017,175211,175020,171796,175209,175213,175222,170607,175082,175018)) OR (`Idx`=3 AND `CreatureID` IN (159766,159727,163149,160289,168157,161274,161258,161195,161191,161482,161480,161448,168215,168214,168213,168212,167420,158799,177554,166543,166541,166542,165563,165723,165609,169198,169197,165256,169171,170953,170950,173351,175216,175042,175208,175206,173304,156758,175215,175067,175066,173300,175218,173118,175016,175017,175211,175020,171796,175222,170607,175018)) OR (`Idx`=5 AND `CreatureID` IN (159727,161480,161448,175216,175208,175206,173300,175218,173118,175016,175211,175222,175018)) OR (`Idx`=4 AND `CreatureID` IN (159727,168157,161480,161448,168212,165256,175216,175042,175208,175206,173304,175215,173300,175218,173118,175016,175017,175211,175222,170607,175018)) OR (`Idx`=7 AND `CreatureID` IN (161480,161448)) OR (`Idx`=6 AND `CreatureID` IN (161480,161448));
UPDATE `creature_template_model` SET `DisplayScale`=1.60000002384185791, `VerifiedBuild`=46549 WHERE (`CreatureID`=170988 AND `Idx`=0); -- Ash Ghoul Scratcher


UPDATE `creature_questitem` SET `VerifiedBuild`=46549 WHERE (`Idx`=0 AND `CreatureEntry` IN (159766,161624,159727,159729,159730,161274,161488,161195,161191,161621,161480,161448,159676,166005,165989,166042,165253,166206)) OR (`Idx`=4 AND `CreatureEntry` IN (161274,161195,161191)) OR (`Idx`=3 AND `CreatureEntry` IN (161274,161195,161191,161621)) OR (`Idx`=2 AND `CreatureEntry` IN (161274,161195,161191,161621)) OR (`Idx`=1 AND `CreatureEntry` IN (161274,161195,161191,161621,165253));


UPDATE `gameobject_template` SET `VerifiedBuild`=46549 WHERE `entry` IN (336691, 338505, 297481, 297480, 353791, 352016, 342220, 352008, 357162, 339876, 352015, 352010, 352006, 357596, 348632, 352014, 339283, 352013, 352007, 339258, 352012, 349097, 348628, 339241, 353193, 345433, 348639, 352467, 352466, 358299, 351999, 351998, 351997, 351740, 351739, 346021, 340003, 339853, 339841, 339839, 339838, 349088, 340080, 356531, 352473, 352472, 352471, 353176, 351746, 357172, 352743, 352742, 352741, 352513, 352511, 352509, 349303, 336433, 352516, 351885, 357173, 352517, 352512, 350982, 352506, 352505, 352504, 352501, 351884, 352508, 352507, 351730, 349537, 349532, 349484, 349380, 349379, 352834, 352503, 352502, 358292, 352001, 349898, 349385, 365140, 353334, 352522, 352056, 344631, 223034, 349792, 352704, 352575, 357541, 365226, 352610, 352462, 352608, 352463, 349565, 352493, 363827, 363826, 352499, 352492, 352460, 363912, 352500, 352498, 352497, 352494, 349802, 352495, 351471, 333216, 355248, 352485, 349983, 364993, 354658, 353175, 353174, 353378, 352052, 352049, 352053, 352050, 351993, 354846, 352486, 352482, 352470, 352054, 344794, 352051, 352483, 334915, 352484, 352480, 327444, 353406, 357273, 353486, 367759, 358588, 358587, 358586, 358585, 358584, 355972, 357327, 357320, 357316, 357315, 357313, 357325, 357323, 357322, 357321, 357311, 357274, 357324, 357318, 353492, 368955, 357326, 357319, 357314, 357310, 353491, 353482, 353488, 354681, 377005, 357340, 377001, 377007, 357272, 357285, 357298, 357294, 365156, 369536, 369528, 353480, 364419, 354922, 353822, 352745, 369533, 353477, 353485, 364422, 369530, 353490, 377031, 369535, 354924, 369527, 365155, 353479, 375407, 353487, 364499, 364497, 364424, 369532, 353476, 369529, 353823, 353489, 345445, 365157, 353481, 357289, 357095, 369534, 365154, 354923, 352746, 357578, 364423, 369526, 353750, 353478, 369531, 353483, 354921, 345444, 351877);


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46549 WHERE (`Idx`=0 AND `GameObjectEntry` IN (297481,297480,349303,349380,349379,349385,349792,349565)) OR (`Idx`=1 AND `GameObjectEntry` IN (349792,349565));


DELETE FROM `areatrigger_template` WHERE (`IsServerSide`=0 AND `Id` IN (24465,23600,23602,23637));
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(24465, 0, 1, 0, 0.75, 1, 4, 0.75, 1, 4, 0, 0, 46549),
(23600, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 46549),
(23602, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 46549),
(23637, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 46549);


DELETE FROM `quest_poi` WHERE (`QuestID`=60653 AND `BlobIndex`=0 AND `Idx1`=8) OR (`QuestID`=60653 AND `BlobIndex`=2 AND `Idx1`=7) OR (`QuestID`=60653 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=60653 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=60653 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=60653 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=60653 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=60653 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60653 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(60653, 0, 8, 32, 0, 0, 2222, 1525, 0, 2, 0, 0, 0, 0, 0, 46549), -- Mirror Restoration
(60653, 2, 7, 3, 404355, 169880, 2222, 1525, 0, 0, 0, 80994, 0, 1976261, 0, 46549), -- Mirror Restoration
(60653, 1, 6, 3, 404355, 169880, 2222, 1525, 0, 0, 0, 80993, 0, 1976583, 0, 46549), -- Mirror Restoration
(60653, 0, 5, 3, 404355, 169880, 2222, 1525, 0, 0, 0, 80992, 0, 1976322, 0, 46549), -- Mirror Restoration
(60653, 1, 4, 2, 404357, 169883, 2222, 1525, 0, 0, 0, 80991, 0, 1976583, 0, 46549), -- Mirror Restoration
(60653, 0, 3, 2, 404357, 169883, 2222, 1525, 0, 0, 0, 80990, 0, 1976261, 0, 46549), -- Mirror Restoration
(60653, 1, 2, 1, 404354, 169879, 2222, 1525, 0, 0, 0, 80991, 0, 1976583, 0, 46549), -- Mirror Restoration
(60653, 0, 1, 1, 404354, 169879, 2222, 1525, 0, 0, 0, 80990, 0, 1976248, 0, 46549), -- Mirror Restoration
(60653, 0, 0, 0, 404353, 175384, 2222, 1525, 0, 2, 0, 0, 0, 0, 0, 46549); -- Mirror Restoration

UPDATE `quest_poi` SET `VerifiedBuild`=46549 WHERE (`QuestID`=60659 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=60659 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=60659 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60659 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59643 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59643 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59643 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59581 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=59581 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=59581 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59581 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59581 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=59581 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=59581 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62739 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62739 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65033 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65033 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62778 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=62778 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=62778 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=62778 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=62778 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=57249 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=57249 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=57249 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49929 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=45563 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=43341 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=43341 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=42449 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=42449 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=36309 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=60653 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=60653 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=60653 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=60653 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=60653 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=60653 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=60653 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60653 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60653 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=60653 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=60653 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=60653 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=60653 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=60653 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=60653 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=60653 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=60653 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=60653 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(60653, 8, 0, -2353, 8148, 4038, 46549), -- Mirror Restoration
(60653, 7, 0, -2314, 8034, 4016, 46549), -- Mirror Restoration
(60653, 6, 0, -2350, 8022, 4044, 46549), -- Mirror Restoration
(60653, 5, 0, -2042, 7613, 4148, 46549), -- Mirror Restoration
(60653, 4, 0, -2350, 8022, 4044, 46549), -- Mirror Restoration
(60653, 3, 0, -2314, 8034, 4016, 46549), -- Mirror Restoration
(60653, 2, 0, -2350, 8022, 4044, 46549), -- Mirror Restoration
(60653, 1, 0, -2314, 8034, 4016, 46549), -- Mirror Restoration
(60653, 0, 9, -2282, 7940, 4042, 46549), -- Mirror Restoration
(60653, 0, 8, -2379, 7967, 4070, 46549), -- Mirror Restoration
(60653, 0, 7, -2437, 8073, 4070, 46549), -- Mirror Restoration
(60653, 0, 6, -2452, 8200, 4086, 46549), -- Mirror Restoration
(60653, 0, 5, -2415, 8282, 4086, 46549), -- Mirror Restoration
(60653, 0, 4, -2382, 8282, 4086, 46549), -- Mirror Restoration
(60653, 0, 3, -2334, 8286, 4087, 46549), -- Mirror Restoration
(60653, 0, 2, -2256, 8198, 4109, 46549), -- Mirror Restoration
(60653, 0, 1, -2251, 8098, 4040, 46549), -- Mirror Restoration
(60653, 0, 0, -2238, 7990, 4037, 46549); -- Mirror Restoration


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (165463,165524,165455,165437));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(165463, 0, 0, 0, 837, 46549),
(165524, 0, 0, 0, 837, 46549),
(165455, 0, 0, 0, 837, 46549),
(165437, 0, 0, 0, 837, 46549);


UPDATE `creature_model_info` SET `VerifiedBuild`=46549 WHERE `DisplayID` IN (93569, 99409, 95221, 95211, 93561, 96700, 93397, 93555, 93556, 93558, 100002, 93519, 96694, 93364, 96715, 97173, 96711, 93441, 93605, 93606, 96121, 95500, 95499, 96672, 99529, 97956, 97953, 98038, 97951, 93524, 67375, 93525, 94766, 93260, 96117, 99994, 99996, 97952, 99992, 79924, 94768, 80962, 94500, 99986, 95719, 93680, 93675, 93032, 93654, 94538, 94735, 94446, 93526, 93528, 94737, 93262, 93218, 93254, 96547, 95821, 95822, 96111, 92997, 93527, 93562, 100332, 93250, 93047, 93251, 93252, 93256, 93249, 93253, 93255, 97444, 97811, 97808, 95825, 92704, 93028, 93033, 100405, 93169, 100712, 99888, 92998, 95924, 98050, 93694, 93693, 95925, 98051, 95713, 92385, 96594, 92399, 96592, 96593, 93990, 93647, 97990, 94519, 93682, 93034, 92999, 94518, 93030, 95347, 27823, 93856, 93031, 93683, 94516, 95362, 94582, 94578, 94547, 94545, 96706, 96696, 96698, 96699, 96697, 96701, 94730, 97009, 97109, 92397, 93505, 97067, 26079, 94484, 94485, 93162, 93828, 99890, 94486, 95337, 97008, 93170, 28067, 94489, 94491, 93671, 92702, 96312, 93673, 94493, 96311, 98231, 93593, 65129, 93672, 93674, 97111, 51414, 11686, 65130, 94492, 97110, 94488, 93161);
UPDATE `creature_model_info` SET `BoundingRadius`=2.083333253860473632, `CombatReach`=1, `VerifiedBuild`=46549 WHERE `DisplayID`=93557;
UPDATE `creature_model_info` SET `BoundingRadius`=2.0625, `CombatReach`=0.990000009536743164, `VerifiedBuild`=46549 WHERE `DisplayID`=95214;
UPDATE `creature_model_info` SET `BoundingRadius`=1.390750408172607421, `CombatReach`=0.900000035762786865, `VerifiedBuild`=46549 WHERE `DisplayID`=94409;
UPDATE `creature_model_info` SET `BoundingRadius`=2.395833253860473632, `CombatReach`=1.149999976158142089, `VerifiedBuild`=46549 WHERE `DisplayID`=97143;
UPDATE `creature_model_info` SET `BoundingRadius`=1.5, `CombatReach`=0, `VerifiedBuild`=46549 WHERE `DisplayID`=64504;
UPDATE `creature_model_info` SET `BoundingRadius`=1.25, `CombatReach`=1.25, `VerifiedBuild`=46549 WHERE `DisplayID`=97588;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `VerifiedBuild`=46549 WHERE `DisplayID` IN (100711, 98058, 100710);
UPDATE `creature_model_info` SET `BoundingRadius`=0.358060181140899658, `CombatReach`=0.25, `VerifiedBuild`=46549 WHERE `DisplayID`=94280;
UPDATE `creature_model_info` SET `BoundingRadius`=0.550506889820098876, `CombatReach`=1.399999976158142089, `VerifiedBuild`=46549 WHERE `DisplayID`=93259;
UPDATE `creature_model_info` SET `BoundingRadius`=1.018354296684265136, `VerifiedBuild`=46549 WHERE `DisplayID`=79805;
UPDATE `creature_model_info` SET `BoundingRadius`=0.315686762332916259, `CombatReach`=0.524999976158142089, `VerifiedBuild`=46549 WHERE `DisplayID`=95209;
UPDATE `creature_model_info` SET `BoundingRadius`=0.699999988079071044, `CombatReach`=1.399999976158142089, `VerifiedBuild`=46549 WHERE `DisplayID` IN (100441, 100442);
UPDATE `creature_model_info` SET `BoundingRadius`=1.149999976158142089, `CombatReach`=0, `VerifiedBuild`=46549 WHERE `DisplayID`=96515;
UPDATE `creature_model_info` SET `BoundingRadius`=1.25, `VerifiedBuild`=46549 WHERE `DisplayID`=24964;
UPDATE `creature_model_info` SET `BoundingRadius`=0.550000011920928955, `CombatReach`=1.10000002384185791, `VerifiedBuild`=46549 WHERE `DisplayID`=96595;
UPDATE `creature_model_info` SET `BoundingRadius`=2.5, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46549 WHERE `DisplayID` IN (93677, 93002, 93029);
UPDATE `creature_model_info` SET `BoundingRadius`=2.187499761581420898, `CombatReach`=1.049999952316284179, `VerifiedBuild`=46549 WHERE `DisplayID` IN (94613, 94612, 94611);
UPDATE `creature_model_info` SET `BoundingRadius`=0.592886686325073242, `CombatReach`=2.5, `VerifiedBuild`=46549 WHERE `DisplayID`=94426;
UPDATE `creature_model_info` SET `BoundingRadius`=0.716120362281799316, `CombatReach`=0.5, `VerifiedBuild`=46549 WHERE `DisplayID`=94528;
UPDATE `creature_model_info` SET `BoundingRadius`=0.564075291156768798, `CombatReach`=1.724999904632568359, `VerifiedBuild`=46549 WHERE `DisplayID`=93511;
UPDATE `creature_model_info` SET `BoundingRadius`=1.700837254524230957, `CombatReach`=1.399999976158142089, `VerifiedBuild`=46549 WHERE `DisplayID`=92701;
UPDATE `creature_model_info` SET `BoundingRadius`=0.382819831371307373, `CombatReach`=1, `VerifiedBuild`=46549 WHERE `DisplayID`=95920;
UPDATE `creature_model_info` SET `BoundingRadius`=0.532142281532287597, `CombatReach`=1, `VerifiedBuild`=46549 WHERE `DisplayID`=93855;


DELETE FROM `gossip_menu` WHERE (`TextID`=1 AND `MenuID` IN (26262,26267,26265));
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(26262, 1, 46549), -- 173169 (Lucky Ansel)
(26267, 1, 46549), -- 173168 (Chiu Brightcask)
(26265, 1, 46549); -- 173173 (Caretaker Tedo)


UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=175906; -- Fiendish Minion
UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=158479; -- Fiendish Lookout


UPDATE `creature_template` SET `faction`=3181, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2099200, `unit_flags3`=524288 WHERE `entry`=173544; -- Carved Trickster
UPDATE `creature_template` SET `minlevel`=60, `BaseAttackTime`=1848, `unit_flags`=33554688, `unit_flags2`=4196352, `unit_flags3`=524288 WHERE `entry`=171214; -- Light Beam Bunny
UPDATE `creature_template` SET `minlevel`=57, `maxlevel`=57, `speed_run`=1, `BaseAttackTime`=2000, `RangeAttackTime`=0, `unit_flags2`=34816, `unit_flags3`=16777216, `VehicleId`=7291 WHERE `entry`=171353; -- Ornate Mirror
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=173518; -- Explosive Barrel
UPDATE `creature_template` SET `faction`=3181 WHERE `entry`=171386; -- Noble Courtier
UPDATE `creature_template` SET `unit_flags`=2147516736 WHERE `entry`=166710; -- Executioner Aatron
UPDATE `creature_template` SET `minlevel`=58, `BaseAttackTime`=1692 WHERE `entry`=165189; -- Generic Hunter Pet
UPDATE `creature_template` SET `gossip_menu_id`=25585, `faction`=2136 WHERE `entry`=165509; -- Dimrazz

UPDATE `creature_template` SET `BaseAttackTime`=2000, `unit_flags`=33554688, `unit_flags2`=67584 WHERE `entry`=165463; -- Chalice Dredger
UPDATE `creature_template` SET `faction`=2028, `BaseAttackTime`=2000, `unit_flags2`=67584 WHERE `entry`=165524; -- Chalice Dredger
UPDATE `creature_template` SET `minlevel`=57, `maxlevel`=60, `BaseAttackTime`=2000, `RangeAttackTime`=0, `unit_flags2`=67176512, `unit_flags3`=16777216, `VehicleId`=7108 WHERE `entry`=165455; -- Wheelbarrow
UPDATE `creature_template` SET `faction`=2136 WHERE `entry`=173618; -- Dredger Spectator
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=2028, `BaseAttackTime`=2000, `unit_flags2`=71370752, `unit_flags3`=17301504, `VehicleId`=7109 WHERE `entry`=165437; -- Wheelbarrow
UPDATE `creature_template` SET `gossip_menu_id`=25368, `faction`=3179 WHERE `entry`=165419; -- Grand Marshal Mudrag
UPDATE `creature_template` SET `faction`=3176 WHERE `entry`=172537; -- General Draven

UPDATE `creature_template` SET `faction`=190 WHERE `entry`=166682; -- Large Prey
UPDATE `creature_template` SET `minlevel`=57, `maxlevel`=57, `BaseAttackTime`=1864 WHERE `entry`=24207; -- Army of the Dead
UPDATE `creature_template` SET `gossip_menu_id`=26267 WHERE `entry`=173168; -- Chiu Brightcask
UPDATE `creature_template` SET `gossip_menu_id`=26262 WHERE `entry`=173169; -- Lucky Ansel
UPDATE `creature_template` SET `gossip_menu_id`=26265 WHERE `entry`=173173; -- Caretaker Tedo
UPDATE `creature_template` SET `minlevel`=57, `maxlevel`=57, `BaseAttackTime`=1845 WHERE `entry`=26125; -- Risen Ghoul



UPDATE `quest_template` SET `RewardBonusMoney`=48200, `VerifiedBuild`=46549 WHERE `ID`=58936; -- Beast Control
UPDATE `quest_template` SET `VerifiedBuild`=46549 WHERE `ID` IN (60277, 60276, 49098, 45812, 60475, 48620, 49099, 49096, 61303, 59643, 60337, 60929, 60770, 66696, 60653, 61353, 59585, 58605, 59234, 60565, 61540, 60659, 61946, 61866, 61783, 43241, 39393, 39274, 39029, 38748, 46736, 46735, 46277, 59581, 65033, 62778, 57249, 53436, 43341, 42449, 36309);
UPDATE `quest_template` SET `RewardBonusMoney`=48200, `VerifiedBuild`=46549 WHERE `ID`=60514; -- Hunting Trophies
UPDATE `quest_template` SET `RewardBonusMoney`=48200, `VerifiedBuild`=46549 WHERE `ID`=58272; -- Words Have Power
UPDATE `quest_template` SET `RewardBonusMoney`=48200, `VerifiedBuild`=46549 WHERE `ID`=60467; -- A Rousing Aroma
UPDATE `quest_template` SET `RewardBonusMoney`=48200, `VerifiedBuild`=46549 WHERE `ID`=57531; -- An Unfortunate Situation
UPDATE `quest_template` SET `RewardBonusMoney`=32150, `VerifiedBuild`=46549 WHERE `ID`=60176; -- Bring Out Your Tithe
UPDATE `quest_template` SET `RewardBonusMoney`=40150, `VerifiedBuild`=46549 WHERE `ID`=57920; -- The Proper Souls
UPDATE `quest_template` SET `RewardBonusMoney`=48200, `VerifiedBuild`=46549 WHERE `ID`=60480; -- The Endmire
UPDATE `quest_template` SET `RewardBonusMoney`=4000, `VerifiedBuild`=46549 WHERE `ID`=59710; -- A Curious Invitation
UPDATE `quest_template` SET `RewardBonusMoney`=32150, `VerifiedBuild`=46549 WHERE `ID`=57471; -- It's a Dirty Job
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46549 WHERE `ID`=52944; -- Call to Arms: Drustvar
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46549 WHERE `ID`=59018; -- Call to Arms: Vale of Eternal Blossoms
UPDATE `quest_template` SET `RewardBonusMoney`=64250, `VerifiedBuild`=46549 WHERE `ID`=60840; -- Wild Hunt Offensive
UPDATE `quest_template` SET `RewardBonusMoney`=64250, `VerifiedBuild`=46549 WHERE `ID`=62721; -- Deconstructing The Problem
UPDATE `quest_template` SET `RewardBonusMoney`=4000, `VerifiedBuild`=46549 WHERE `ID`=62739; -- Restoring Balance
UPDATE `quest_template` SET `RewardBonusMoney`=4000, `VerifiedBuild`=46549 WHERE `ID`=49929; -- The Call for Allies
UPDATE `quest_template` SET `RewardBonusMoney`=32150, `Expansion`=9, `VerifiedBuild`=46549 WHERE `ID`=45563; -- The Shrouded Coin


UPDATE `quest_objectives` SET `VerifiedBuild`=46549 WHERE `ID` IN (395164, 398105, 398101, 398419, 398418, 398417, 394006, 398302, 392616, 397789, 397876, 397879, 397788, 397787, 393596, 398354, 396821, 396829, 392483, 288711, 288650, 398341, 398338, 340356, 395348, 405569, 405568, 396667, 397818, 398175, 398504, 405027, 405026, 404831, 404829, 404828, 404827, 404826, 404825, 404795, 404568, 404567, 427561, 404355, 404357, 404354, 404353, 409083, 409075, 408963, 408962, 405683, 405682, 405681, 405680, 407664, 396533, 396532, 396528, 394456, 409171, 396199, 398896, 398895, 398894, 398893, 398892, 398875, 398876, 408772, 408338, 408337, 408336, 408249, 408248, 408247, 408246, 408245, 408244, 408243, 408242, 408241, 408240, 406354, 406227, 407943, 408943, 408942, 408941, 405225, 405224, 406865, 406764, 406683, 285469, 285188, 285107, 285106, 285105, 285104, 285103, 285102, 280217, 280216, 280215, 280214, 280213, 280212, 279406, 279334, 280557, 280096, 279148, 279144, 279143, 285466, 278822, 278821, 278820, 286576, 286575, 286054, 278418, 278401, 278382, 289536, 289535, 289167, 409240, 396527, 396572, 396521, 396520, 396535, 396519, 421938, 421952, 421951, 409271, 408626, 408625, 408624, 408623, 408622, 408620, 408617, 408616, 341370, 285211, 285210, 285209, 285208, 286697);


UPDATE `quest_visual_effect` SET `VerifiedBuild`=46549 WHERE (`Index`=1 AND `ID` IN (398419,398341,396667,398175,405027,396532,396528,394456,396199,398896,398895,398894,398893,398892,398875,398876,278820,278418)) OR (`Index`=0 AND `ID` IN (398419,398418,398417,392616,397789,393596,396821,392483,288711,398341,405569,405568,396667,397818,398175,398504,405027,405026,404567,404357,404354,409083,396532,396528,394456,396199,398896,398895,398894,398893,398892,398875,398876,408338,408240,407943,405225,405224,406865,406764,406683,285188,285107,285106,279406,279334,278820,278418)) OR (`Index`=5 AND `ID` IN (398341,405027,394456,396199,398876)) OR (`Index`=4 AND `ID` IN (398341,405027,394456,396199,398876)) OR (`Index`=3 AND `ID` IN (398341,405027,396532,394456,396199,398896,398895,398894,398893,398892,398875,398876,278418)) OR (`Index`=2 AND `ID` IN (398341,405027,396532,396528,394456,396199,398896,398895,398894,398893,398892,398875,398876,278418)) OR (`Index`=10 AND `ID` IN (396199,398876)) OR (`Index`=9 AND `ID` IN (396199,398876)) OR (`Index`=8 AND `ID` IN (396199,398876)) OR (`Index`=7 AND `ID` IN (396199,398876)) OR (`Index`=6 AND `ID` IN (396199,398876)) OR (`Index`=11 AND `ID`=398876);


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=46549 WHERE (`Idx`=0 AND `QuestID` IN (60480,43341));


UPDATE `creature_template` SET `VerifiedBuild`=46549 WHERE `entry` IN (173137, 158617, 158622, 158631, 173168, 173169, 173170, 168702, 168703, 173173, 158653, 166474, 14565, 158663, 158667, 158668, 169840, 169841, 73780, 168732, 157562, 162035, 162044, 158700, 175460, 175469, 169885, 21354, 162109, 156544, 161015, 173315, 164383, 173323, 164390, 175566, 175572, 156600, 170004, 175590, 9158, 65011, 157733, 165554, 168909, 171149, 166682, 165565, 168918, 173387, 167803, 173391, 167815, 167818, 167819, 167822, 166710, 166715, 166722, 304, 305, 171214, 164524, 164533, 164536, 161191, 161195, 172366, 167908, 161206, 161207, 165676, 161211, 161221, 164575, 164576, 28302, 173518, 161237, 161247, 171305, 155668, 173544, 161258, 175782, 161274, 26125, 160169, 160181, 165767, 161299, 171353, 165772, 165774, 161309, 165780, 165781, 160202, 171375, 163559, 175850, 18357, 171386, 161333, 18359, 18360, 18362, 163575, 161343, 161344, 161345, 174750, 161348, 174754, 18375, 18376, 172522, 172537, 18406, 175906, 55272, 158038, 168120, 163675, 161448, 168152, 168165, 168174, 173765, 176003, 161482, 161488, 161490, 168212, 158165, 168224, 166047, 174994, 169411, 24207, 158264, 166089, 161621, 166092, 163861, 159398, 160537, 163893, 157194, 156081, 157199, 165039, 175094, 165041, 158365, 160613, 160614, 174032, 158416, 169590, 158420, 169591, 158424, 32206, 168482, 158439, 158443, 158473, 174116, 158479, 174117, 158480, 165189, 176378, 176379, 156296, 169707, 165265, 165266, 165267, 165270, 14505, 164194);
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=165419; -- Grand Marshal Mudrag
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry` IN (165437, 165455); -- Wheelbarrow
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry` IN (165463, 165524); -- Chalice Dredger
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46549 WHERE `entry`=173320; -- Ash
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46549 WHERE `entry`=173321; -- Fang
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46549 WHERE `entry`=173322; -- Swarm
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=165509; -- Dimrazz
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46549 WHERE `entry`=167820; -- Dutiful Lookout
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46549 WHERE `entry`=173618; -- Dredger Spectator
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46549 WHERE `entry`=72390; -- General Purpose Bunny ZTO


UPDATE `creature_template_model` SET `VerifiedBuild`=46549 WHERE (`Idx`=0 AND `CreatureID` IN (163893,175094,158622,160614,164536,161015,158424,158473,163575,158631,166474,158264,175906,158480,169590,158479,158439,164383,156600,169591,164390,158617,163861,164524,158420,157194,158038,170004,168174,168152,168165,158668,158667,158165,172366,168120,166092,164576,164575,158416,169840,173391,169841,173323,173387,164533,166089,164194,158663,158700,175572,175469,169885,175566,171214,168732,173518,171386,176378,175590,156296,176379,165676,174116,160181,160169,166715,166722,166710,165189,160613,165554,162109,165509,158365,157199,157562,175460,169411,168212,157733,168482,160537,165767,173322,173321,173320,173315,162044,162035,165565,166047,72390,165781,160202,173618,171149,165772,167815,165780,165774,165265,167819,165270,165267,174032,174117,172537,167820,167818,163559,167822,165266,172522,155668,161344,161348,169707,167803,161237,161333,161345,161299,176003,161490,161488,161482,161448,158653,168918,167908,165039,174754,174750,161343,156081,24207,168224,159398,165041,175782,175850,173765,173137,156544,163675,173168,173169,173170,168702,161274,161309,161191,171375,161211,173173,168909,161221,174994,161258,161206,161621,161195,161247,158443,168703,161207,305,21354,65011,55272,32206,18362,18375,18376,18406,18359,18357,18360,14565,14505,9158,73780,28302,304,26125)) OR (`Idx`=4 AND `CreatureID` IN (158622,158424,164533,175572,175469,168212,162044,162035,173618,161344,161333,161345,161448)) OR (`Idx`=3 AND `CreatureID` IN (158622,158424,158439,172366,164533,175572,175469,171386,176378,176379,160169,166722,168212,162044,162035,173618,165265,165270,163559,165266,161344,161333,161345,161482,161448,161274,161191,161258,161195,26125)) OR (`Idx`=2 AND `CreatureID` IN (158622,164536,158424,158473,158631,158480,158439,158617,164524,168174,172366,164533,158663,175572,175469,171386,176378,176379,160181,160169,166722,168212,157733,162044,162035,173618,165265,165270,167820,163559,167822,165266,161344,161333,161345,161299,161490,161482,161448,168918,167908,173137,161274,161191,161258,161195,161247,26125)) OR (`Idx`=1 AND `CreatureID` IN (158622,164536,158424,158473,158631,166474,158480,169590,158439,164383,156600,169591,164390,158617,164524,168174,168152,172366,173391,173323,164533,164194,158663,158700,175572,175469,171214,171386,176378,175590,176379,160181,160169,166722,165554,157562,168212,157733,162044,162035,72390,173618,165780,165265,165270,167820,163559,167822,165266,161344,167803,161237,161333,161345,161299,161490,161488,161482,161448,168918,167908,156081,159398,173137,161274,161191,161211,161221,174994,161258,161195,161247,158443,26125)) OR (`Idx`=7 AND `CreatureID` IN (164533,175572,175469,162044,162035,161344,161333,161345,161448)) OR (`Idx`=6 AND `CreatureID` IN (164533,175572,175469,162044,162035,173618,161344,161333,161345,161448)) OR (`Idx`=5 AND `CreatureID` IN (164533,175572,175469,162044,162035,173618,161344,161333,161345,161448)) OR (`Idx`=15 AND `CreatureID`=175469) OR (`Idx`=14 AND `CreatureID`=175469) OR (`Idx`=13 AND `CreatureID`=175469) OR (`Idx`=12 AND `CreatureID`=175469) OR (`Idx`=11 AND `CreatureID`=175469) OR (`Idx`=10 AND `CreatureID`=175469) OR (`Idx`=9 AND `CreatureID`=175469) OR (`Idx`=8 AND `CreatureID`=175469);
UPDATE `creature_template_model` SET `DisplayScale`=1.25, `VerifiedBuild`=46549 WHERE (`CreatureID`=173544 AND `Idx`=0); -- Carved Trickster
UPDATE `creature_template_model` SET `DisplayScale`=0.25, `VerifiedBuild`=46549 WHERE (`Idx`=0 AND `CreatureID` IN (171353,171305)); -- Ornate Mirror
UPDATE `creature_template_model` SET `DisplayScale`=1.149999976158142089, `VerifiedBuild`=46549 WHERE (`CreatureID`=165455 AND `Idx`=0); -- Wheelbarrow
UPDATE `creature_template_model` SET `DisplayScale`=1.25, `VerifiedBuild`=46549 WHERE (`CreatureID`=165437 AND `Idx`=0); -- Wheelbarrow
UPDATE `creature_template_model` SET `DisplayScale`=1.399999976158142089, `VerifiedBuild`=46549 WHERE (`Idx`=0 AND `CreatureID` IN (165524,165463)); -- Chalice Dredger
UPDATE `creature_template_model` SET `DisplayScale`=1.25, `VerifiedBuild`=46549 WHERE (`CreatureID`=165419 AND `Idx`=0); -- Grand Marshal Mudrag
UPDATE `creature_template_model` SET `DisplayScale`=1.25, `VerifiedBuild`=46549 WHERE (`CreatureID`=166682 AND `Idx`=0); -- Large Prey


UPDATE `creature_questitem` SET `VerifiedBuild`=46549 WHERE (`Idx`=3 AND `CreatureEntry` IN (158622,158473,158439,158617,161274,161191,161621,161195)) OR (`Idx`=2 AND `CreatureEntry` IN (158622,158473,158439,158617,161274,161191,161621,161195)) OR (`Idx`=1 AND `CreatureEntry` IN (158622,158473,163575,158439,158617,163861,166710,160613,161274,161191,161621,161195)) OR (`Idx`=0 AND `CreatureEntry` IN (158622,158473,163575,158439,158617,163861,158165,164533,166710,160613,161488,161448,161274,161191,161621,161195)) OR (`Idx`=4 AND `CreatureEntry` IN (161274,161191,161195));

DELETE FROM `gameobject_template` WHERE `entry` IN (357586 /*Crate*/, 357585 /*Plank*/, 351472 /*Racing Flag*/, 348845 /*Barricade*/, 348843 /*Oil Bubbles*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(357586, 5, 59146, 'Crate', '', '', '', 0.400000005960464477, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46549), -- Crate
(357585, 5, 62456, 'Plank', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46549), -- Plank
(351472, 5, 62181, 'Racing Flag', '', '', '', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46549), -- Racing Flag
(348845, 5, 57930, 'Barricade', '', '', '', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46549), -- Barricade
(348843, 5, 61439, 'Oil Bubbles', '', '', '', 0.300000011920928955, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46549); -- Oil Bubbles

UPDATE `gameobject_template` SET `VerifiedBuild`=46549 WHERE `entry` IN (353245, 353237, 349898, 356531, 345352, 345351, 345349, 345350, 353798, 344792, 358145, 349983, 336094, 358146, 352996, 353335, 353334, 352987, 351969, 351939, 351471, 345356, 345355, 364534, 364533, 351888, 351874, 357358, 357229, 357359, 353240, 357349, 357350, 351948, 357360, 357355, 357347, 367946, 353032, 336436, 357449, 357444, 357448, 357447, 357423, 357356, 357228, 357441, 357428, 357429, 339790, 357427, 357430, 357419, 357422, 357433, 357432, 338515, 352683, 357442, 357440, 357439, 357438, 357437, 357436, 357424, 357416, 357348, 353244, 352692, 352690, 352686, 352622, 352621, 357354, 357691, 357491, 357353, 339841, 352614, 357693, 357699, 357696, 357695, 357694, 357690, 357688, 357687, 357468, 357425, 357357, 353191, 352615, 342258, 339846, 339840, 363819, 363818, 363817, 357692, 357489, 357418, 349592, 355257, 349628, 349627, 349626, 339861, 357700, 334914, 358149, 358290, 345460, 344791, 358289, 365152, 365151, 352011, 349697, 349192, 348930, 342257, 339838, 348940, 352121, 364850, 352108, 349196, 349195, 349194, 358321, 349542, 353042, 353043, 352009, 352013, 352014, 352007, 351716, 339284, 339283, 353176, 352012, 339258, 339241, 353193, 336433, 345433, 351993, 351998, 357596, 349097, 351999, 353175, 353174, 348628, 348632, 339853, 357162, 339876, 353378, 348639, 352610, 352468, 352485, 352052, 352008, 352016, 352505, 352501, 352467, 352469, 352053, 352054, 352499, 352049, 351997, 352050, 357173, 352498, 357172, 352482, 352506, 352608, 352495, 352500, 352516, 352502, 352470, 352522, 352492, 352006, 352010, 352517, 352462, 352463, 352513, 352480, 352494, 352512, 352466, 352509, 352507, 352503, 352508, 352483, 352473, 352051, 352472, 334915, 358299, 352015, 352486, 352511, 352497, 352504, 344794, 352484, 352056, 352493, 352471, 327444);


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46549 WHERE (`Idx`=1 AND `GameObjectEntry` IN (357229,351948,357228)) OR (`Idx`=0 AND `GameObjectEntry` IN (357229,351948,357228,348930,351716));


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

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=34382; -- Chapman
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=34383; -- Catrina
UPDATE `creature_template` SET `gossip_menu_id`=10518 WHERE `entry`=34435; -- Cheerful Human Spirit
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=34770; -- Macabre Marionette
UPDATE `creature_template` SET `gossip_menu_id`=10518, `minlevel`=60, `maxlevel`=60, `unit_flags`=768 WHERE `entry`=35249; -- Ghostly Human Celebrant

DELETE FROM `creature_template_addon` WHERE `entry` IN (34382, 34770);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(34382, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 34382 (Chapman)
(34770, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''); -- 34770 (Macabre Marionette)

UPDATE `creature_template_addon` SET `bytes1`=0, `emote`=10, `auras`='4986 33900' WHERE `entry`=35249; -- 35249 (Ghostly Human Celebrant) - Unseen, Shroud of Death
UPDATE `creature_template_addon` SET `bytes1`=0, `emote`=0, `auras`='4986 33900' WHERE `entry`=34435; -- 34435 (Cheerful Human Spirit) - Unseen, Shroud of Death
UPDATE `creature_template_addon` SET `bytes2`=1, `emote`=10 WHERE `entry`=34383; -- 34383 (Catrina)

-- Gossips
DELETE FROM `gossip_menu` WHERE `MenuID`=34435;

DELETE FROM `gossip_menu` WHERE (`MenuID`=10518 AND `TextID`=14552);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(10518, 14552, 46366); -- 35249 (Ghostly Human Celebrant)

UPDATE `gossip_menu` SET `VerifiedBuild`=46366 WHERE (`MenuID`=10512 AND `TextID`=14543);

-- Scaling
DELETE FROM `creature_template_scaling` WHERE `DifficultyID`=0 AND `Entry` IN (34382, 34383, 34435, 34770, 35249);
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(34382, 0, 0, 0, 414, 46366),
(34383, 0, 0, 0, 414, 46366),
(34435, 0, 0, 0, 414, 46366),
(34770, 0, 0, 0, 371, 46366),
(35249, 0, 0, 0, 414, 46366);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46366 WHERE (`DifficultyID`=0 AND `Entry` IN (176246,176245,176243,176242,176241,176240,176239,176238,176236,176234,176231,176227,176225,176224,176223,176222,173819,172572,133675,112698,112686,111190,51348,50435,50434,49540,44880,42782,42421,32520,29712,20716,15214,6173,5489,5484,4982,4075,1976,1412,1212,721,376,68));

-- Models
UPDATE `creature_template_model` SET `VerifiedBuild`=46366 WHERE (`Idx`=0 AND `CreatureID` IN (176243,34435,5489,165516,176246,4982,176238,176245,5484,4075,50435,176242,1412,376,49540,29712,111190,176222,173819,50434,42782,34383,32520,176225,35249,304,112698,65011,176234,176224,176241,71486,176223,51348,176239,133675,35362,176231,44880,40229,172572,721,14505,1212,20716,68,47654,34382,18362,15214,42421,176227,308,176236,112686,1976,305,6173,176240,64993)) OR (`Idx`=2 AND `CreatureID` IN (4075,49540,29712,112698,68,42421,112686)) OR (`Idx`=1 AND `CreatureID` IN (4075,49540,29712,111190,32520,35249,112698,51348,133675,721,68,15214,42421,112686,1976)) OR (`Idx`=3 AND `CreatureID` IN (29712,112698,68));

UPDATE `creature_model_info` SET `VerifiedBuild`=46366 WHERE `DisplayID` IN (100186, 100185, 100180, 100179, 100178, 100177, 100176, 100175, 100173, 100171, 100169, 100166, 100164, 100163, 100162, 100161, 98599, 98008, 46929, 18890, 18889, 68845, 37311, 37310, 36792, 36791, 2176, 1418, 34160, 1659, 18055, 29226, 29204, 29203, 19732, 4887, 3283, 3282, 262, 99389, 5548, 1495, 5446, 3167, 99391);
UPDATE `creature_model_info` SET `DisplayID_Other_Gender`=0, `VerifiedBuild`=46366 WHERE `DisplayID` IN (29708, 29707);

-- Vendor data
DELETE FROM `npc_vendor` WHERE (`entry`=34382 AND `item`=116890 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=34382 AND `item`=116891 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=34382 AND `item`=116856 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=34382 AND `item`=116889 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=34382 AND `item`=116888 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=34382 AND `item`=188689 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=34382 AND `item`=79048 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(34382, 13, 116890, 0, 0, 1, 0, 0, 46366), -- "Santo's Sun" Contender's Costume
(34382, 12, 116891, 0, 0, 1, 0, 0, 46366), -- "Snowy Owl" Contender's Costume
(34382, 11, 116856, 0, 0, 1, 0, 0, 46366), -- "Blooming Rose" Contender's Costume
(34382, 10, 116889, 0, 0, 1, 0, 0, 46366), -- "Purple Phantom" Contender's Costume
(34382, 9, 116888, 0, 0, 1, 0, 0, 46366), -- "Night Demon" Contender's Costume
(34382, 8, 188689, 0, 0, 1, 0, 0, 46366), -- Marigold Petal Offering Bowl
(34382, 5, 79048, 0, 0, 1, 0, 0, 46366); -- Whimsical Skull Mask

UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=46366 WHERE (`entry`=34382 AND `item`=46861 AND `ExtendedCost`=0 AND `type`=1); -- Bouquet of Orange Marigolds
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=46366 WHERE (`entry`=34382 AND `item`=46710 AND `ExtendedCost`=0 AND `type`=1); -- Recipe: Bread of the Dead
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=46366 WHERE (`entry`=34382 AND `item`=46860 AND `ExtendedCost`=0 AND `type`=1); -- Whimsical Skull Mask
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=46366 WHERE (`entry`=34382 AND `item`=46711 AND `ExtendedCost`=0 AND `type`=1); -- Spirit Candle
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=46366 WHERE (`entry`=34382 AND `item`=46718 AND `ExtendedCost`=0 AND `type`=1); -- Orange Marigold
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=46366 WHERE (`entry`=34382 AND `item`=46690 AND `ExtendedCost`=0 AND `type`=1); -- Candy Skull

-- Gameobject templates
UPDATE `gameobject_template` SET `ContentTuningId`=414, `VerifiedBuild`=46366 WHERE `entry`=195087; -- Ghostly Cooking Fire

UPDATE `gameobject_template_addon` SET `faction`=114 WHERE `entry`=195066; -- Bread of the Dead
UPDATE `gameobject_template_addon` SET `faction`=114 WHERE `entry`=195067; -- Mixed Fruit Bowl
UPDATE `gameobject_template_addon` SET `faction`=114 WHERE `entry`=195068; -- Offering Bowl
UPDATE `gameobject_template_addon` SET `faction`=114 WHERE `entry`=195069; -- Candy Skulls
UPDATE `gameobject_template_addon` SET `faction`=35 WHERE `entry`=195087; -- Ghostly Cooking Fire
UPDATE `gameobject_template_addon` SET `faction`=35 WHERE `entry`=195090; -- Spirit Candle

-- Quests
UPDATE `quest_poi_points` SET `VerifiedBuild`=46366 WHERE (`QuestID`=13952 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13952 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13952 AND `Idx1`=0 AND `Idx2`=0);

UPDATE `quest_details` SET `Emote1`=3, `VerifiedBuild`=46366 WHERE `ID`=13952; -- The Grateful Dead

UPDATE `quest_request_items` SET `EmoteOnIncomplete`=0, `EmoteOnComplete`=0 WHERE `ID`=13952; -- The Grateful Dead

UPDATE `quest_offer_reward` SET `Emote1`=4, `VerifiedBuild`=46366 WHERE `ID`=13952; -- The Grateful Dead

DELETE FROM `creature_queststarter` WHERE (`id`=34435 AND `quest`=13952);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(34435, 13952, 46366); -- The Grateful Dead offered Cheerful Human Spirit

UPDATE `creature_questender` SET `VerifiedBuild`=46366 WHERE (`id`=34435 AND `quest`=13952);

DELETE FROM `game_event_creature_quest` WHERE `id`=34435;

UPDATE `creature_template` SET `ScriptName`='boss_antros' WHERE  `entry`=182466;

DELETE FROM `creature_equip_template` WHERE (`ID`=4 AND `CreatureID`=169476) OR (`ID`=1 AND `CreatureID` IN (165293,165323));
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(169476, 4, 1415, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Highway Serf
(165293, 1, 173890, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Darkwing Rebel
(165323, 1, 175934, 0, 0, 175934, 0, 0, 0, 0, 0, 46597); -- Darkwing Rebel

UPDATE `creature_equip_template` SET `VerifiedBuild`=46597 WHERE (`ID`=1 AND `CreatureID` IN (187734,171787,175082,176067,171822,164079,171821,171796,164803,173388,170557,170640,164596,173330,99541,156698,164685,164686,157726,157731,157729,157784,157740,157577,157576,157579,157504,157493,157464,157463,157444,175480,157405,167908,163977,168918,175058,167876,165414,167615,165529,164562,165415,167611,165515,167612,161968,166653,166677,173137,165253,165255,168652,156256,158908,176109,156255,176112,156264,156909,158928,156260,176114,176104,156911,156910,159027,158897,176125,158893,158894,176119,158927,176121,176116,156916,167902,168170,161052,159729,159727,159766,163149,163376,159961,163450,160009,160007,159981,159883,159880,159971,159977,159965,159976,160004,159966,160011,159960,159980,159986,159970,160006,159998,159987,159884,159964,160002,159898,159999,160012,159973,159982,160008,159967,159958,159968,163979,159997,159882,160005,164184,160003,164243,164049,164021,163476,164029,169006,169090,169089,169111,169086,166082,166255,159114,159601,158992,159104,158988,158985,159407,159106,159112,160317,160322,160641,160456,167822,164533,158617,158473,158439,168093,168390,172999,165326,166654,165834,158796,158813,161931,161180,161178,169876,161179,176122,176120,159152,161689,159151,161474,176111,176108,176101,159154,158910,176110,158902,167488,159156,160297,176107,156261,176105,167430,160296,156918,156919,159157,159001,159025,159024,159010,159659,159153,176132,173703,159730,163161,167755,161625,161624,168796,168213,168214,168212,161195,161258,161247,161274,161191,160393,161333,165270,165265,165267,161344,161345,165266,167818,165301,165286,158667,177637,175572,175369,165291,165302,175620,175466,175458,164931,164900,172605,58965,175441,175459,165271,160169,160181,166710,173391,169885,173323)) OR (`ID`=2 AND `CreatureID` IN (17252,158910,159766,169476,161689,168652,176110)) OR (`ID`=4 AND `CreatureID`=168212) OR (`ID`=3 AND `CreatureID` IN (169476,168212));

DELETE FROM `areatrigger_template` WHERE (`Id`=25317 AND `IsServerSide`=0);
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(25317, 0, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 46597);



UPDATE `areatrigger_template` SET `VerifiedBuild`=46597 WHERE (`IsServerSide`=0 AND `Id` IN (26326,23389,25749,23733,25751,23299,23297,9225,24062,6197,11420,30064,19538,26096,24147,8382,6700,23668,23349,5802,23731,23808,3153,24041,23019,23026,24046,24063,23312,7020,3319,13091,26199,27320,22520,24061,26952,26951,24375,22527,13120,28443,12929,11231,10727));
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=15, `Data1`=15, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0, `VerifiedBuild`=46597 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=15, `Data1`=15, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0, `VerifiedBuild`=46597 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0, `VerifiedBuild`=46597 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0, `VerifiedBuild`=46597 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0, `VerifiedBuild`=46597 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0, `VerifiedBuild`=46597 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=15, `Data1`=15, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0, `VerifiedBuild`=46597 WHERE (`Id`=22070 AND `IsServerSide`=0);

DELETE FROM `conversation_actors` WHERE (`Idx`=0 AND `ConversationId` IN (14319,15013,13782,13783));
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `Idx`, `CreatureId`, `CreatureDisplayInfoId`, `NoActorObject`, `ActivePlayerObject`, `VerifiedBuild`) VALUES
(14319, 64220, 0, 157084, 95061, 0, 0, 46597),
(15013, 51642, 0, 165676, 92399, 0, 0, 46597),
(13782, 51642, 0, 165676, 92399, 0, 0, 46597),
(13783, 51642, 0, 165676, 92399, 0, 0, 46597);

UPDATE `conversation_actors` SET `ConversationActorId`=51642, `CreatureId`=165676, `CreatureDisplayInfoId`=92399, `VerifiedBuild`=46597 WHERE (`ConversationId`=15012 AND `Idx`=0);

DELETE FROM `conversation_line_template` WHERE `Id` IN (35801, 37656, 34319, 34320);
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(35801, 1453, 0, 0, 46597),
(37656, 1550, 0, 0, 46597),
(34319, 1550, 0, 0, 46597),
(34320, 1550, 0, 0, 46597);


DELETE FROM `quest_offer_reward` WHERE `ID` IN (62779 /*Return to Oribos*/, 62778 /*Reinforcing Revendreth*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(62779, 1, 0, 0, 0, 0, 0, 0, 0, 'Revendreth stands stronger for your efforts. The Purpose is clear.', 46597), -- Return to Oribos
(62778, 1, 0, 0, 0, 0, 0, 0, 0, 'You have my sincere gratitude for aiding our cause. Together we will see Denathrius\'s hold on our realm broken, and with it win the freedom of my people.\n\nI cannot offer as much as I would like, but I hope it will suffice until our victory is achieved.', 46597); -- Reinforcing Revendreth



DELETE FROM `quest_details` WHERE `ID`=62779;
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(62779, 1, 1, 0, 0, 0, 0, 0, 0, 46597); -- Return to Oribos


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (86420,31575,166641,176058,168395,166685,171178,171152,171246,165293,165323)) OR (`DifficultyID`=1 AND `Entry` IN (165770,19668,77942,61245,175519,167898,165913,164363,26125,186150,167806,47649,99541));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(86420, 0, 0, 0, 371, 46597),
(31575, 0, 0, 0, 371, 46597),
(166641, 0, 0, 0, 837, 46597),
(165770, 1, 0, 0, 1712, 46597),
(19668, 1, 0, 0, 482, 46597),
(77942, 1, 0, 0, 482, 46597),
(61245, 1, 0, 0, 482, 46597),
(175519, 1, 0, 0, 2099, 46597),
(176058, 0, 0, 0, 837, 46597),
(168395, 0, 0, 0, 1427, 46597),
(167898, 1, 0, 0, 1712, 46597),
(165913, 1, 0, 0, 1712, 46597),
(164363, 1, 0, 0, 1712, 46597),
(26125, 1, 0, 0, 482, 46597),
(186150, 1, 0, 0, 807, 46597),
(167806, 1, 0, 0, 1712, 46597),
(47649, 1, 0, 0, 482, 46597),
(99541, 1, 0, 0, 482, 46597),
(166685, 0, 0, 0, 1425, 46597),
(171178, 0, -1, -1, 837, 46597),
(171152, 0, 0, 0, 837, 46597),
(171246, 0, 0, 0, 371, 46597),
(165293, 0, 0, 0, 837, 46597),
(165323, 0, 0, 0, 837, 46597);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46597 WHERE (`DifficultyID`=0 AND `Entry` IN (32642,32641,178792,162918,164096,168011,114665,174922,187734,171790,171787,175213,164095,167591,176067,176066,176368,164079,164579,171821,156734,171299,164100,170607,173386,173388,162896,171589,171795,176065,176064,165796,175036,170640,170310,159478,164098,175083,164684,173369,164099,164078,169524,175066,175081,175080,173370,175082,175067,156504,175216,173318,175019,165654,190148,170256,182864,171822,54638,175215,175016,166312,156663,170557,156768,173354,175214,156758,162928,173356,164596,173353,173357,165657,173352,175222,173355,175035,173330,173327,162929,175212,175017,181681,167881,167880,175327,165405,164173,164685,173304,173348,173301,176545,173325,173302,164353,156735,172702,156688,175018,162666,173118,166307,173367,142666,142668,178804,173350,171796,156769,177829,165403,173305,164803,175218,175208,175207,175206,173300,173364,164686,166061,164352,164123,175020,175087,156698,121541,174170,175664,175774,132969,160701,158821,157784,157729,157740,164697,164696,173779,157332,173788,175460,175454,162276,175465,162278,157405,176636,175480,157562,157464,157444,165645,157477,157465,157417,157504,157463,157493,165367,168724,168851,156636,163960,164309,161337,164105,168855,163977,168842,164104,163961,168918,174647,174645,175436,173555,174646,163624,174640,155589,166965,162261,168237,156295,175058,175060,167727,167746,169831,158055,175056,174772,173926,156291,156293,167744,168238,156822,165859,174034,172980,159115,161968,168057,168865,169845,169198,169197,166042,169171,166636,165253,165255,165256,168679,168722,158057,168678,168676,173326,173329,173328,173324,161879,174969,160824,157007,176125,156916,167914,170934,161064,169674,169502,160727,163216,159961,160009,160007,159981,159883,159880,159971,159977,159965,159976,160004,159966,160011,159960,159980,159986,159970,160006,159998,159987,159884,159964,160002,159898,159999,160012,159973,159982,163376,160008,159967,159958,159968,163450,163979,159997,159882,160005,160003,173188,171123,164029,164243,164049,164232,164084,164018,163512,169006,163476,169048,164021,164184,169086,169111,169089,169104,169091,169090,166255,166082,166457,169916,166320,166206,175586,175587,159177,158985,159407,158924,172691,172870,172785,159174,172786,159178,159106,159458,159503,159601,159577,158988,159112,158978,158992,159104,159412,159495,159114,159233,158976,160322,160323,160317,158533,160582,159460,160537,159265,160570,160640,160641,165687,160400,160425,160345,160375,160456,160642,157195,168174,178336,158038,168165,180693,175533,164536,158264,164524,157194,158479,158480,158420,175906,158439,158631,158473,158617,157977,168093,164143,163819,159183,164234,163575,163861,163893,166576,170986,170979,170953,163507,170981,170952,170951,171849,166566,160802,176347,173449,168805,168802,168828,157579,175229,168803,158365,157577,160815,160811,157576,160812,160753,168390,157199,168383,168345,168321,156269,155795,168590,168351,156077,168319,156596,168374,172999,165326,165328,169154,165324,165325,163968,165327,162894,156395,163282,163285,162909,163284,165290,163059,160084,168404,168401,168400,168399,160090,168354,160081,164799,166825,166651,166654,165834,166677,169763,163896,166652,166653,165706,158813,167420,168122,165723,158796,158797,165609,158795,158799,165565,166543,177554,166541,166432,166542,165563,175544,165576,161419,165783,185580,166005,156290,165989,175543,155508,156540,167849,167918,156294,161931,173570,161671,161015,168618,165206,158336,160421,165230,165229,157698,160477,160455,159732,160454,156061,173671,173657,173673,164557,165408,165529,174175,165414,165415,164563,164562,165515,166680,161887,161885,161179,169876,161294,161246,161178,161275,161180,169366,169044,176138,176114,173556,168734,159152,161689,155654,159151,161474,169476,158928,176120,168177,156260,156264,176122,156263,167453,160248,168065,173705,159026,159155,159027,176113,176111,163073,159154,175584,176112,168698,161558,158910,168652,176109,176110,156255,159676,159678,167491,156256,167488,163065,163691,160521,160476,156257,158908,176108,159156,168083,176107,156261,167501,176105,158895,166489,167430,163692,160296,160297,167438,168068,176104,159631,156918,176123,159677,156911,176106,158902,158897,156919,176101,156910,167497,156909,156925,159157,176118,176121,158986,160116,171153,161417,173772,158893,159025,159024,159010,159153,158417,175585,173703,174122,158998,167018,158979,159001,167017,167016,167010,167015,158892,167120,176116,158927,167590,176117,173718,176119,161052,176132,156284,158894,175979,160719,169464,159459,159659,161591,161592,173782,173794,163208,160716,168170,167902,156259,167451,158517,158259,173331,173332,160100,167801,163163,163162,163161,163164,167755,168121,163165,167754,173488,169420,159729,161625,169688,161624,168796,159766,173506,168296,163149,159727,167908,159730,160289,168214,168213,168212,168702,168732,173170,173168,173169,173173,161309,167889,161247,165039,159398,168224,174754,163675,160393,161274,161211,161621,161207,161206,174750,156544,161191,161343,161221,156081,161258,161195,161237,169707,167803,161348,161344,161333,161345,167819,161299,167818,198489,157732,157733,157731,157726,158416,167813,166047,162146,158667,158668,166092,166084,160613,166078,166076,168120,175767,175769,175775,175757,174183,175624,175623,172366,175762,174036,156600,175369,164837,174709,165291,164739,164269,165302,171190,175407,175659,175660,175595,158713,175655,175406,175580,175593,174714,159000,162702,174038,175408,174994,175625,175620,175622,161977,175452,164738,164741,174045,175453,175455,174710,177628,177637,161979,178601,175466,164931,164900,143622,172605,175772,55626,175441,175458,175467,166160,172649,175456,175470,158653,175451,175450,173942,175448,166048,175462,175449,162704,175459,165772,165419,167815,167822,176003,24207,165271,165301,62167,165270,165267,165265,165286,173765,173137,176378,175590,174117,168909,165266,160169,160181,163559,166722,166715,166710,169411,156296,175566,171149,171375,174032,173387,169840,174116,175850,175572,158663,173391,175469,169841,164533,158700,169885,173323,164194,166089,158443,168703,165767)) OR (`DifficultyID`=1 AND `Entry` IN (167489,55370,167717,92870,175577,167876,167892,167615,165737,166497,166034,164218,165410,167612,167611,167610,148196,164185,167607));
UPDATE `creature_template_scaling` SET `ContentTuningID`=2060, `VerifiedBuild`=46597 WHERE (`Entry`=159575 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `ContentTuningID`=2043, `VerifiedBuild`=46597 WHERE (`DifficultyID`=0 AND `Entry` IN (175922,166137));


UPDATE `creature_model_info` SET `VerifiedBuild`=46597 WHERE `DisplayID` IN (28118, 28120, 93578, 73366, 93596, 104818, 94141, 93584, 93586, 96747, 98220, 98076, 100398, 95194, 105360, 98692, 95948, 96754, 97936, 94665, 93601, 95260, 92900, 90260, 94655, 94286, 99156, 93151, 27153, 98194, 97006, 95252, 93577, 98688, 96281, 96196, 96591, 97983, 97425, 95843, 19283, 104785, 94586, 95511, 97025, 99205, 95557, 92714, 88012, 95464, 59577, 92345, 105361, 90422, 86231, 88016, 74802, 96714, 97879, 96637, 96614, 99478, 66221, 93232, 96602, 96603, 99519, 95258, 99450, 94449, 93598, 99159, 97649, 93590, 93597, 96624, 97651, 77687, 77690, 93600, 93582, 97650, 95253, 93585, 99744, 93592, 97347, 95325, 96584, 94471, 99050, 93580, 99382, 96642, 93587, 96625, 98697, 96748, 95660, 100727, 27627, 99533, 93955, 68512, 93255, 93256, 100002, 93252, 93253, 93262, 94847, 96938, 20577, 96547, 93004, 93108, 94443, 93010, 94446, 94578, 95851, 92997, 92995, 8014, 82382, 336, 99671, 1082, 92383, 95329, 98992, 97420, 98478, 98999, 21342, 94800, 99055, 96005, 96944, 96491, 92381, 16925, 39541, 24992, 24993, 54195, 106962, 27710, 94572, 96750, 92783, 95971, 90425, 98183, 90428, 96949, 96950, 96947, 96654, 96948, 96342, 96997, 93077, 94744, 92382, 94743, 97433, 100713, 99192, 100082, 93040, 93661, 93979, 93999, 94007, 94015, 94621, 94014, 94010, 94017, 94020, 94016, 94626, 94618, 94019, 94011, 93998, 94003, 93991, 93992, 94021, 94008, 94627, 94617, 97471, 99924, 91610, 93007, 94948, 94951, 96696, 96737, 96707, 96758, 96757, 96207, 97446, 98017, 96992, 98021, 98037, 98025, 97240, 98773, 98028, 94496, 96176, 98027, 97432, 98026, 97437, 98024, 98032, 98023, 98031, 98054, 97434, 96095, 96094, 97438, 96090, 94410, 94408, 93068, 92018, 93364, 96711, 101798, 93528, 93527, 93397, 96694, 96700, 93556, 93555, 93562, 93561, 96701, 93558, 93519, 96669, 22452, 93509, 91611, 93773, 97436, 97439, 95209, 96313, 27824, 96937, 96655, 94223, 96939, 94856, 94388, 94851, 94857, 94858, 96936, 94854, 94852, 94225, 94853, 94855, 96941, 93218, 94387, 98174, 94716, 93858, 88709, 93076, 3916, 4959, 98165, 96823, 96822, 96824, 96825, 93588, 94152, 95711, 95346, 96343, 96346, 96341, 95936, 96344, 96340, 92451, 93166, 95825, 92700, 95829, 60805, 87563, 94411, 96599, 96612, 96954, 94630, 97766, 95344, 97010, 94173, 93070, 93071, 93072, 97002, 96853, 96296, 95103, 94724, 24994, 89910, 96260, 66222, 97003, 94571, 93681, 97004, 93813, 94573, 98764, 94570, 93682, 93163, 93034, 97001, 97131, 97129, 97132, 94090, 95993, 93688, 36357, 93659, 93658, 98479, 92384, 92386, 94845, 94850, 94844, 94848, 93863, 96443, 93660, 93663, 96657, 98572, 93051, 93709, 95076, 93097, 93847, 92991, 93707, 92988, 96929, 93050, 93048, 93704, 93043, 95214, 95211, 93705, 93706, 93030, 93046, 95070, 93102, 93845, 96492, 93047, 93101, 96474, 94497, 93002, 96479, 96478, 93049, 93096, 93648, 93045, 93095, 93008, 93052, 93098, 93100, 92985, 93844, 92984, 93766, 100413, 94980, 94949, 94846, 94978, 94953, 94982, 94950, 94955, 94968, 94972, 93054, 94974, 94971, 94843, 93767, 94973, 94969, 92989, 92987, 93024, 93650, 93014, 93015, 93023, 93651, 93016, 93653, 92990, 92986, 93022, 94230, 93017, 94441, 93021, 100079, 93649, 93907, 93652, 94604, 7891, 46517, 96697, 94024, 96699, 92754, 94760, 95824, 95363, 93042, 93814, 96569, 96568, 96673, 96562, 93982, 96111, 98512, 98780, 93980, 94620, 93978, 95821, 94624, 96698, 94025, 99862, 93854, 93983, 96756, 93981, 94022, 94023, 95823, 95822, 80962, 96312, 96311, 98231, 97109, 97111, 94730, 94485, 94493, 51414, 93161, 94484, 94488, 92702, 93505, 65129, 93035, 94491, 94492, 94486, 97067, 94489, 93028, 93001, 93856, 93033, 92996, 93678, 98051, 94518, 96593, 96592, 96594, 110117, 93683, 94538, 93526, 93254, 28067, 93605, 93606, 96121, 79805, 96611, 96672, 93215, 93305, 94434, 95720, 96159, 77407, 94153, 98732, 99976, 100716, 99531, 100982, 98210, 95361, 99681, 100331, 98188, 93103, 95349, 95534, 92398, 92397, 99939, 99990, 99989, 99624, 99991, 96439, 99998, 93111, 99985, 97585, 95733, 99627, 99941, 96004, 95347, 99056, 93768, 93169, 95348, 99999, 97945, 93162, 97954, 94498, 94964, 99995, 100715, 92399, 100000, 95535, 95536, 94442, 99670, 99676, 100981, 99162, 99997, 99987, 92380, 93223, 106907, 99680, 94448, 95622, 97947, 97946, 93210, 77406, 98014, 96830, 94447, 99675, 95734, 94183, 99993, 97697, 93815, 97958, 99679, 94910, 97948, 97692, 98189, 97694, 93750, 92704, 97695, 97691, 97955, 94539, 95924, 98050, 96595, 95362, 97008, 26079, 96723, 96719, 93693, 96702, 93990, 96722, 95713, 93694, 93654, 93700, 96724, 94611, 95337, 97009, 99986, 94500, 93680, 93671, 93647, 93032, 93673, 93674, 93675, 93672, 94445, 94735, 94737, 95719, 79924, 99888, 93249, 93593, 99996, 93511, 99992, 97951, 67375, 93260, 93524, 92385, 97953, 93170, 97952, 93525, 98038, 99994, 93250, 27823, 97143, 94766, 96117, 11686, 65130, 100332);
UPDATE `creature_model_info` SET `BoundingRadius`=0.774677395820617675, `CombatReach`=1.70000004768371582, `VerifiedBuild`=46597 WHERE `DisplayID`=92191;
UPDATE `creature_model_info` SET `BoundingRadius`=0.843031287193298339, `CombatReach`=1.85000002384185791, `VerifiedBuild`=46597 WHERE `DisplayID`=92192;
UPDATE `creature_model_info` SET `BoundingRadius`=0.186000004410743713, `CombatReach`=0.60000002384185791, `VerifiedBuild`=46597 WHERE `DisplayID`=18724;
UPDATE `creature_model_info` SET `BoundingRadius`=1.18104565143585205, `CombatReach`=3.75, `VerifiedBuild`=46597 WHERE `DisplayID`=99148;
UPDATE `creature_model_info` SET `BoundingRadius`=2.5, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46597 WHERE `DisplayID` IN (93003, 94002, 95727, 93686, 93687, 93107, 93104, 93041, 93029, 97957, 93679);
UPDATE `creature_model_info` SET `CombatReach`=0, `VerifiedBuild`=46597 WHERE `DisplayID`=19071;
UPDATE `creature_model_info` SET `BoundingRadius`=4.010736465454101562, `CombatReach`=10, `VerifiedBuild`=46597 WHERE `DisplayID`=97071;
UPDATE `creature_model_info` SET `BoundingRadius`=2.083333253860473632, `VerifiedBuild`=46597 WHERE `DisplayID` IN (94000, 94619, 100183, 93657, 93099);
UPDATE `creature_model_info` SET `BoundingRadius`=1.319784760475158691, `CombatReach`=2.799999952316284179, `VerifiedBuild`=46597 WHERE `DisplayID`=93165;
UPDATE `creature_model_info` SET `BoundingRadius`=6.110219478607177734, `CombatReach`=7.200000286102294921, `VerifiedBuild`=46597 WHERE `DisplayID` IN (98018, 95587);
UPDATE `creature_model_info` SET `BoundingRadius`=1.460671782493591308, `VerifiedBuild`=46597 WHERE `DisplayID`=98020;
UPDATE `creature_model_info` SET `BoundingRadius`=1.655428051948547363, `CombatReach`=0, `VerifiedBuild`=46597 WHERE `DisplayID`=98019;
UPDATE `creature_model_info` SET `BoundingRadius`=1.521534562110900878, `CombatReach`=3.75, `VerifiedBuild`=46597 WHERE `DisplayID`=69223;
UPDATE `creature_model_info` SET `BoundingRadius`=0.400000005960464477, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46597 WHERE `DisplayID`=91955;
UPDATE `creature_model_info` SET `BoundingRadius`=0.649999976158142089, `CombatReach`=1.299999952316284179, `VerifiedBuild`=46597 WHERE `DisplayID`=97444;
UPDATE `creature_model_info` SET `BoundingRadius`=2, `CombatReach`=0.960000038146972656, `VerifiedBuild`=46597 WHERE `DisplayID` IN (94549, 94551, 94547, 94550, 94552);
UPDATE `creature_model_info` SET `BoundingRadius`=8.778665542602539062, `CombatReach`=0, `VerifiedBuild`=46597 WHERE `DisplayID`=95726;
UPDATE `creature_model_info` SET `BoundingRadius`=5.091849327087402343, `CombatReach`=6, `VerifiedBuild`=46597 WHERE `DisplayID`=95586;
UPDATE `creature_model_info` SET `BoundingRadius`=4.252093315124511718, `CombatReach`=3.5, `VerifiedBuild`=46597 WHERE `DisplayID`=92703;
UPDATE `creature_model_info` SET `BoundingRadius`=2.721253156661987304, `CombatReach`=2.75, `VerifiedBuild`=46597 WHERE `DisplayID`=93853;
UPDATE `creature_model_info` SET `BoundingRadius`=1.75, `CombatReach`=7, `VerifiedBuild`=46597 WHERE `DisplayID`=94229;
UPDATE `creature_model_info` SET `BoundingRadius`=1.438835978507995605, `CombatReach`=2.25, `VerifiedBuild`=46597 WHERE `DisplayID`=99386;
UPDATE `creature_model_info` SET `BoundingRadius`=3.125, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID` IN (94503, 93073, 93864, 96450, 94967, 94233);
UPDATE `creature_model_info` SET `BoundingRadius`=2.670772314071655273, `CombatReach`=2.309999942779541015, `VerifiedBuild`=46597 WHERE `DisplayID`=93829;
UPDATE `creature_model_info` SET `BoundingRadius`=4.59174346923828125, `CombatReach`=3.375, `VerifiedBuild`=46597 WHERE `DisplayID`=95707;
UPDATE `creature_model_info` SET `BoundingRadius`=4.081549644470214843, `CombatReach`=3, `VerifiedBuild`=46597 WHERE `DisplayID`=95706;
UPDATE `creature_model_info` SET `BoundingRadius`=1.036973834037780761, `CombatReach`=2.20000004768371582, `VerifiedBuild`=46597 WHERE `DisplayID` IN (93160, 97124);
UPDATE `creature_model_info` SET `BoundingRadius`=2.083333253860473632, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID` IN (97134, 97140, 97125, 97135);
UPDATE `creature_model_info` SET `CombatReach`=3, `VerifiedBuild`=46597 WHERE `DisplayID` IN (94699, 94698);
UPDATE `creature_model_info` SET `BoundingRadius`=1, `CombatReach`=5, `VerifiedBuild`=46597 WHERE `DisplayID`=94144;
UPDATE `creature_model_info` SET `BoundingRadius`=0.889330029487609863, `CombatReach`=3.75, `VerifiedBuild`=46597 WHERE `DisplayID`=96158;
UPDATE `creature_model_info` SET `BoundingRadius`=2.138610363006591796, `CombatReach`=2.5, `VerifiedBuild`=46597 WHERE `DisplayID`=94227;
UPDATE `creature_model_info` SET `BoundingRadius`=1.497027277946472167, `CombatReach`=1.75, `VerifiedBuild`=46597 WHERE `DisplayID`=94056;
UPDATE `creature_model_info` SET `BoundingRadius`=1.002568483352661132, `CombatReach`=0.699999988079071044, `VerifiedBuild`=46597 WHERE `DisplayID`=94281;
UPDATE `creature_model_info` SET `BoundingRadius`=1.263865828514099121, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=94279;
UPDATE `creature_model_info` SET `BoundingRadius`=0.320049822330474853, `CombatReach`=0.85000002384185791, `VerifiedBuild`=46597 WHERE `DisplayID`=95580;
UPDATE `creature_model_info` SET `BoundingRadius`=0.95922398567199707, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=90426;
UPDATE `creature_model_info` SET `BoundingRadius`=0.358060181140899658, `CombatReach`=0.25, `VerifiedBuild`=46597 WHERE `DisplayID` IN (94278, 94280);
UPDATE `creature_model_info` SET `BoundingRadius`=2.857102870941162109, `CombatReach`=4, `VerifiedBuild`=46597 WHERE `DisplayID`=94868;
UPDATE `creature_model_info` SET `BoundingRadius`=2.187499761581420898, `CombatReach`=1.049999952316284179, `VerifiedBuild`=46597 WHERE `DisplayID` IN (94613, 94612, 94614);
UPDATE `creature_model_info` SET `BoundingRadius`=0.592886686325073242, `CombatReach`=2.5, `VerifiedBuild`=46597 WHERE `DisplayID` IN (94426, 92622);
UPDATE `creature_model_info` SET `BoundingRadius`=0.716120362281799316, `CombatReach`=0.5, `VerifiedBuild`=46597 WHERE `DisplayID`=94528;
UPDATE `creature_model_info` SET `BoundingRadius`=0.532142281532287597, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID`=93855;
UPDATE `creature_model_info` SET `BoundingRadius`=1.700837254524230957, `CombatReach`=1.399999976158142089, `VerifiedBuild`=46597 WHERE `DisplayID`=92701;
UPDATE `creature_model_info` SET `BoundingRadius`=0.550506889820098876, `CombatReach`=1.399999976158142089, `VerifiedBuild`=46597 WHERE `DisplayID`=93259;
UPDATE `creature_model_info` SET `BoundingRadius`=0.480000019073486328, `CombatReach`=0.960000038146972656, `VerifiedBuild`=46597 WHERE `DisplayID`=94516;
UPDATE `creature_model_info` SET `BoundingRadius`=0.691784918308258056, `CombatReach`=1.299999952316284179, `VerifiedBuild`=46597 WHERE `DisplayID`=94765;
UPDATE `creature_model_info` SET `BoundingRadius`=0.956504881381988525, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46597 WHERE `DisplayID`=98203;
UPDATE `creature_model_info` SET `BoundingRadius`=0.382819831371307373, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID`=95920;
UPDATE `creature_model_info` SET `BoundingRadius`=1.390750408172607421, `CombatReach`=0.900000035762786865, `VerifiedBuild`=46597 WHERE `DisplayID`=94409;



UPDATE `gossip_menu` SET `VerifiedBuild`=46597 WHERE (`TextID`=43773 AND `MenuID`=26284) OR (`TextID`=40493 AND `MenuID` IN (26197,25658)) OR (`TextID`=42523 AND `MenuID`=26737) OR (`TextID`=38529 AND `MenuID`=24544) OR (`TextID`=40228 AND `MenuID`=25486) OR (`TextID`=41777 AND `MenuID`=26321) OR (`TextID`=39079 AND `MenuID`=24815) OR (`TextID`=39076 AND `MenuID`=24814) OR (`TextID`=41928 AND `MenuID`=26437) OR (`TextID`=40686 AND `MenuID`=25753);

UPDATE `gossip_menu_option` SET `OptionText`='Tell me more.', `OptionBroadcastTextId`=3293, `BoxMoney`=0, `VerifiedBuild`=46597 WHERE (`MenuID`=24814 AND `OptionID`=0); -- OptionBroadcastTextID: 3293 - 3293 - 6657 - 6657 - 7646 - 7646 - 160046 - 160046
UPDATE `gossip_menu_option` SET `VerifiedBuild`=46597 WHERE (`OptionID`=1 AND `MenuID`=24544) OR (`OptionID`=0 AND `MenuID` IN (26197,26321,26737));


UPDATE `quest_template` SET `VerifiedBuild`=46597 WHERE `ID` IN (53028, 64508, 59314, 57566, 57564, 63944, 50605, 50601, 50562, 66649, 64597, 64106, 63949, 62719, 62458, 62054, 48642, 42422, 42170, 64783, 62763, 62748, 37284, 10279, 66648, 66042, 65774, 65735, 65259, 64963, 62866, 61983, 60423, 60416, 45159, 62658, 45838, 48620, 49099, 49097, 49096, 60277, 60276, 60657, 59578, 59599, 60770, 66696, 57205, 61411, 61060, 59234, 60565, 62451, 61477, 61708, 62258, 61946, 61866, 61783, 39274, 46736, 46735, 46277, 65033, 62778, 57249, 53436, 43341, 42449, 36309);
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46597 WHERE `ID`=46727; -- Battle for Azeroth: Tides of War
UPDATE `quest_template` SET `RewardBonusMoney`=6900, `VerifiedBuild`=46597 WHERE `ID`=62779; -- Return to Oribos
UPDATE `quest_template` SET `RewardBonusMoney`=5450, `VerifiedBuild`=46597 WHERE `ID`=60274; -- Trading Favors
UPDATE `quest_template` SET `RewardBonusMoney`=43600, `Expansion`=9, `VerifiedBuild`=46597 WHERE `ID`=29445; -- An Intriguing Grimoire
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=64830; -- Enlisting the Enlightened
UPDATE `quest_template` SET `RewardBonusMoney`=348800, `VerifiedBuild`=46597 WHERE `ID`=62723; -- Bolstering Bastion
UPDATE `quest_template` SET `RewardBonusMoney`=261600, `VerifiedBuild`=46597 WHERE `ID`=60057; -- Necrotic Wake: A Paragon's Plight
UPDATE `quest_template` SET `RewardBonusMoney`=54500, `VerifiedBuild`=46597 WHERE `ID`=60517; -- The Toll of the Road
UPDATE `quest_template` SET `RewardBonusMoney`=61750, `VerifiedBuild`=46597 WHERE `ID`=65768; -- Our Forward Scouts
UPDATE `quest_template` SET `RewardBonusMoney`=61750, `VerifiedBuild`=46597 WHERE `ID`=65772; -- Necessary Harvest
UPDATE `quest_template` SET `RewardBonusMoney`=261600, `VerifiedBuild`=46597 WHERE `ID`=60500; -- Halls of Atonement: Medallion of Pride
UPDATE `quest_template` SET `RewardBonusMoney`=61750, `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=65771; -- Favor of the First Ones
UPDATE `quest_template` SET `RewardBonusMoney`=65400, `VerifiedBuild`=46597 WHERE `ID`=59994; -- Trust Fall
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46597 WHERE `ID`=53847; -- On Whispered Winds
UPDATE `quest_template` SET `RewardBonusMoney`=370, `VerifiedBuild`=46597 WHERE `ID`=30098; -- The Well of Eternity
UPDATE `quest_template` SET `RewardBonusMoney`=2900, `Flags`=8, `VerifiedBuild`=46597 WHERE `ID`=28760; -- Vengeance for Orsis
UPDATE `quest_template` SET `RewardBonusMoney`=5450, `VerifiedBuild`=46597 WHERE `ID`=62707; -- The Elysian Fields
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=52944; -- Call to Arms: Drustvar
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=59018; -- Call to Arms: Vale of Eternal Blossoms
UPDATE `quest_template` SET `RewardBonusMoney`=48200, `VerifiedBuild`=46597 WHERE `ID`=58936; -- Beast Control
UPDATE `quest_template` SET `RewardBonusMoney`=48200, `VerifiedBuild`=46597 WHERE `ID`=60514; -- Hunting Trophies
UPDATE `quest_template` SET `RewardBonusMoney`=48200, `VerifiedBuild`=46597 WHERE `ID`=58272; -- Words Have Power
UPDATE `quest_template` SET `RewardBonusMoney`=48200, `VerifiedBuild`=46597 WHERE `ID`=60467; -- A Rousing Aroma
UPDATE `quest_template` SET `RewardBonusMoney`=48200, `VerifiedBuild`=46597 WHERE `ID`=57531; -- An Unfortunate Situation
UPDATE `quest_template` SET `RewardBonusMoney`=32150, `VerifiedBuild`=46597 WHERE `ID`=60176; -- Bring Out Your Tithe
UPDATE `quest_template` SET `RewardBonusMoney`=40150, `VerifiedBuild`=46597 WHERE `ID`=57920; -- The Proper Souls
UPDATE `quest_template` SET `RewardBonusMoney`=48200, `VerifiedBuild`=46597 WHERE `ID`=60480; -- The Endmire
UPDATE `quest_template` SET `RewardBonusMoney`=4000, `VerifiedBuild`=46597 WHERE `ID`=59710; -- A Curious Invitation
UPDATE `quest_template` SET `RewardBonusMoney`=32150, `VerifiedBuild`=46597 WHERE `ID`=57471; -- It's a Dirty Job
UPDATE `quest_template` SET `RewardBonusMoney`=64250, `VerifiedBuild`=46597 WHERE `ID`=60840; -- Wild Hunt Offensive
UPDATE `quest_template` SET `RewardBonusMoney`=64250, `VerifiedBuild`=46597 WHERE `ID`=62721; -- Deconstructing The Problem
UPDATE `quest_template` SET `RewardBonusMoney`=4000, `VerifiedBuild`=46597 WHERE `ID`=62739; -- Restoring Balance
UPDATE `quest_template` SET `RewardBonusMoney`=4000, `VerifiedBuild`=46597 WHERE `ID`=49929; -- The Call for Allies
UPDATE `quest_template` SET `RewardBonusMoney`=32150, `Expansion`=9, `VerifiedBuild`=46597 WHERE `ID`=45563; -- The Shrouded Coin


UPDATE `quest_objectives` SET `VerifiedBuild`=46597 WHERE `ID` IN (337818, 337817, 406756, 406755, 253462, 422757, 422154, 422093, 421956, 421955, 409272, 408422, 408421, 408267, 408266, 408265, 408263, 408260, 408259, 398150, 398149, 336308, 336214, 336202, 423309, 423306, 423304, 423322, 427706, 421201, 420622, 421948, 421947, 421946, 421945, 421944, 421943, 421942, 421941, 421940, 421939, 420917, 421394, 420319, 421393, 420374, 420373, 421171, 420320, 420318, 408884, 408359, 408227, 407094, 398387, 423324, 397412, 397411, 292699, 284172, 283830, 254160, 421425, 421424, 421423, 421422, 421421, 421420, 421419, 421417, 421958, 421957, 409270, 408476, 408475, 408474, 408473, 408464, 408462, 408459, 408458, 421954, 421953, 409273, 408430, 408429, 408428, 408427, 408426, 408425, 408424, 408423, 427705, 427064, 423785, 423784, 423783, 423782, 423781, 423780, 423779, 423778, 423332, 423251, 422599, 408877, 406976, 398590, 398589, 398588, 398587, 398586, 398545, 398470, 289066, 289018, 340356, 395348, 395164, 398105, 398101, 398419, 398418, 398417, 394006, 398302, 392616, 397789, 397876, 397879, 397788, 397787, 393596, 398354, 396821, 396829, 392483, 405171, 396513, 396512, 396511, 396510, 407593, 396509, 396615, 396614, 396583, 396582, 404831, 404829, 404828, 404827, 404826, 404825, 404795, 404568, 404567, 427561, 391901, 405834, 405887, 405886, 405885, 405884, 405883, 405882, 405881, 405880, 405879, 405833, 405832, 405831, 405830, 405223, 405212, 405210, 405175, 405174, 405173, 405156, 409171, 396199, 398896, 398895, 398894, 398893, 398892, 398875, 398876, 407764, 407763, 407762, 407761, 407760, 407759, 407758, 407757, 407756, 407755, 407754, 407753, 405979, 405978, 405977, 405976, 405973, 408487, 405970, 406539, 407808, 406538, 407152, 408772, 408338, 408337, 408336, 408249, 408248, 408247, 408246, 408245, 408244, 408243, 408242, 408241, 408240, 407577, 407572, 407571, 407592, 407591, 406865, 406764, 406683, 280557, 280096, 279148, 279144, 279143, 289536, 289535, 289167, 421938, 421952, 421951, 409271, 408626, 408625, 408624, 408623, 408622, 408620, 408617, 408616, 341370, 285211, 285210, 285209, 285208, 286697);
UPDATE `quest_objectives` SET `Description`='Get Dingy Iron Coins', `VerifiedBuild`=46597 WHERE `ID`=276070; -- 276070
UPDATE `quest_objectives` SET `Flags`=0, `VerifiedBuild`=46597 WHERE `ID`=398544; -- 398544


UPDATE `quest_visual_effect` SET `VerifiedBuild`=46597 WHERE (`Index`=0 AND `ID` IN (337818,406756,406755,422757,422154,422093,398150,423309,423306,423304,421171,423779,422599,406976,289066,398419,398418,398417,392616,397789,393596,396821,392483,405171,396513,396512,396511,396510,396509,396582,404567,405834,405887,405886,405885,405884,405883,405882,405881,405880,405879,405833,405832,405830,405156,396199,398896,398895,398894,398893,398892,398875,398876,407764,407763,407762,407754,407753,405979,405978,405977,405976,405973,408487,406539,406538,407152,408338,408240,407572,407571,407591,406865,406764,406683)) OR (`Index`=1 AND `ID` IN (398419,396509,396582,405832,396199,398896,398895,398894,398893,398892,398875,398876,407754)) OR (`Index`=5 AND `ID` IN (396509,405832,396199,398876,407754)) OR (`Index`=4 AND `ID` IN (396509,405832,396199,398876,407754)) OR (`Index`=3 AND `ID` IN (396509,396582,405832,396199,398896,398895,398894,398893,398892,398875,398876,407754)) OR (`Index`=2 AND `ID` IN (396509,396582,405832,396199,398896,398895,398894,398893,398892,398875,398876,407754)) OR (`Index`=9 AND `ID` IN (405832,396199,398876)) OR (`Index`=8 AND `ID` IN (405832,396199,398876)) OR (`Index`=7 AND `ID` IN (405832,396199,398876)) OR (`Index`=6 AND `ID` IN (405832,396199,398876)) OR (`Index`=10 AND `ID` IN (396199,398876)) OR (`Index`=11 AND `ID`=398876);


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `QuestID` IN (62719,53847,64963,60480,43341));


UPDATE `creature_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (175369, 159732, 173137, 161968, 158617, 157504, 168676, 165326, 168678, 165327, 168679, 165328, 161977, 161979, 156395, 158631, 164218, 166457, 177628, 168698, 164232, 173168, 173169, 177637, 164234, 159766, 168702, 173170, 168703, 175406, 173173, 175407, 175408, 158653, 167590, 167591, 164243, 14565, 132969, 169831, 158663, 170951, 165367, 170952, 170953, 173188, 158667, 158668, 168722, 166489, 169840, 168724, 167607, 169841, 73780, 176545, 167610, 169845, 167611, 167612, 166497, 157562, 167615, 168732, 175436, 168734, 163149, 164269, 178792, 175441, 187734, 170979, 157576, 163161, 175448, 170981, 157577, 163162, 175449, 163163, 175450, 157579, 163164, 175451, 163165, 175452, 178804, 175453, 175454, 170986, 158700, 175455, 165403, 175456, 165405, 175458, 175459, 175460, 165408, 169876, 175462, 165410, 175465, 175466, 165414, 175467, 165415, 158713, 175469, 175470, 169885, 166541, 166542, 164309, 166543, 175480, 156504, 163208, 99541, 168796, 21354, 169916, 166566, 163216, 168802, 168803, 168805, 166576, 176636, 175519, 159882, 159883, 164352, 164353, 185580, 92870, 156540, 168828, 175533, 164363, 156544, 173300, 173301, 173302, 167717, 161015, 173304, 173305, 175543, 168842, 175544, 167727, 158795, 162146, 158796, 173318, 158797, 168851, 158799, 168855, 173323, 173324, 173325, 173326, 173327, 173328, 167744, 173329, 173330, 167746, 173331, 173332, 175566, 168865, 158813, 165515, 163282, 157698, 163284, 166636, 163285, 175572, 161052, 167754, 167755, 158821, 175577, 175580, 173348, 165529, 173350, 175584, 156596, 175585, 173352, 173353, 166651, 173354, 166652, 173355, 166653, 156600, 173356, 166654, 175590, 173357, 9158, 175593, 65011, 177829, 175595, 159958, 173364, 159960, 157726, 159961, 173367, 157729, 159964, 173369, 157731, 173370, 159966, 157732, 159967, 157733, 159968, 159970, 159971, 159973, 168909, 157740, 166677, 155508, 159977, 165563, 32641, 171149, 32642, 165565, 159981, 173386, 168918, 159982, 167801, 175620, 166685, 173387, 173388, 167803, 175622, 175623, 175624, 156636, 159987, 167806, 175625, 173391, 190148, 165576, 167813, 167815, 159997, 159998, 167818, 167819, 160003, 167822, 160004, 160005, 160006, 160008, 166710, 160009, 158892, 158893, 160011, 158894, 166715, 156663, 158897, 175655, 157784, 158902, 171190, 166722, 175659, 175660, 165609, 163376, 158908, 175664, 162261, 158910, 167849, 304, 305, 156688, 158924, 162276, 162278, 158927, 173449, 158928, 156698, 164524, 155589, 167876, 165645, 167880, 161178, 167881, 161179, 161180, 164533, 164536, 165654, 169006, 167889, 165657, 167892, 161191, 161195, 167898, 172366, 172367, 160081, 167902, 160084, 173488, 156734, 156735, 164557, 167908, 161206, 160090, 161207, 165676, 158976, 161211, 167914, 158978, 164563, 158979, 163450, 167918, 160100, 158985, 165687, 173506, 158986, 173508, 161221, 158988, 169044, 28302, 156758, 158992, 164579, 169048, 158998, 160116, 159000, 159001, 156768, 175757, 156769, 161237, 165706, 155654, 166825, 175762, 174646, 163476, 159010, 164596, 171299, 175767, 161247, 175769, 175772, 175774, 175775, 165723, 159024, 161258, 159025, 159026, 159027, 416, 417, 169086, 165737, 169089, 161270, 169090, 169091, 163507, 161274, 163512, 26125, 173570, 169104, 160169, 156822, 169111, 32842, 160181, 161299, 165767, 165770, 165772, 174709, 174710, 168011, 161309, 174714, 165783, 170256, 171375, 163559, 165796, 157977, 175850, 164684, 161333, 18357, 164685, 164686, 169154, 18359, 18360, 161337, 159104, 18362, 159106, 163575, 161343, 161344, 164696, 17252, 161345, 164697, 174750, 159114, 161348, 159115, 174754, 18375, 169171, 18376, 168057, 168065, 160248, 165834, 174772, 173657, 170310, 178131, 156909, 178132, 169197, 156910, 169198, 156911, 166965, 155795, 168083, 18406, 156916, 173671, 175906, 159151, 173673, 159152, 156918, 156919, 159153, 164738, 55272, 159154, 164739, 158038, 159155, 163624, 159156, 164741, 165859, 168093, 159157, 156925, 175922, 158055, 160289, 158057, 159174, 159177, 159178, 160296, 160297, 173703, 159183, 161417, 173705, 168120, 161419, 168121, 168122, 167010, 167015, 167016, 173718, 167017, 167018, 160317, 172605, 160322, 160323, 163675, 165913, 164799, 164803, 163691, 163692, 175979, 160345, 168165, 159233, 168170, 168174, 161474, 157007, 173765, 172649, 176003, 55370, 173772, 164837, 173779, 160375, 143622, 173782, 159265, 173788, 173794, 168212, 160393, 168213, 168214, 160400, 172691, 165989, 168224, 19668, 172702, 168237, 167120, 171589, 168238, 176058, 166005, 160421, 160425, 176064, 176065, 176066, 176067, 169366, 162666, 164900, 157084, 161558, 174969, 166034, 55455, 160454, 160455, 160456, 166042, 181681, 186150, 114665, 166047, 176101, 62167, 166048, 164931, 178336, 47649, 176104, 176105, 163819, 176106, 162702, 176107, 176108, 162704, 176109, 176110, 174994, 1860, 176112, 161591, 176113, 161592, 169411, 166061, 176114, 160476, 160477, 168296, 176116, 176117, 176118, 176119, 24207, 176120, 148196, 176121, 176122, 169420, 176125, 166076, 158259, 166078, 176132, 175016, 175017, 175018, 166082, 175019, 172785, 158264, 175020, 172786, 166084, 168319, 176138, 168321, 170557, 161621, 166089, 161624, 166092, 161625, 163861, 198489, 175035, 175036, 159398, 160521, 182864, 159407, 172812, 168345, 169464, 159412, 156061, 168351, 168354, 160537, 142666, 173942, 142668, 169476, 163893, 175066, 157194, 156077, 163896, 175067, 157195, 156081, 157199, 166137, 170607, 161671, 168374, 34337, 175080, 175081, 175082, 175083, 168383, 175087, 169502, 160570, 158336, 168390, 165039, 161689, 159458, 166160, 168395, 159459, 159460, 168399, 168400, 160582, 168401, 172870, 168404, 170640, 180693, 169524, 159478, 158365, 163960, 163961, 159495, 58965, 160613, 160614, 171787, 163968, 171790, 159503, 166206, 55626, 171795, 171796, 163977, 163979, 174032, 174034, 174036, 174038, 121541, 160640, 160641, 174045, 160642, 158416, 171821, 158417, 171822, 158420, 61245, 162894, 32206, 162896, 164018, 164021, 166255, 158439, 162909, 158443, 164029, 171849, 157332, 162918, 175206, 175207, 175208, 175212, 175213, 159575, 175214, 172980, 175215, 162928, 159577, 175216, 162929, 175218, 164049, 175222, 160701, 158473, 175229, 176347, 172999, 174116, 158479, 174117, 158480, 160716, 159601, 167420, 174122, 160719, 165189, 166307, 156255, 156256, 156257, 164078, 166312, 156259, 164079, 156260, 156261, 178601, 176368, 156263, 156264, 164084, 167438, 156269, 165206, 176378, 164095, 164096, 164098, 164099, 159631, 164100, 167451, 167453, 158517, 156284, 169688, 54638, 164104, 160753, 164105, 157405, 156290, 156291, 156293, 165229, 161879, 156294, 165230, 156295, 156296, 174170, 158533, 157417, 168590, 174175, 169707, 164123, 78116, 159659, 174183, 165253, 167488, 167489, 165255, 165256, 167491, 164143, 159676, 159677, 157444, 159678, 167497, 165265, 165266, 177554, 168618, 167501, 165267, 160802, 165270, 165271, 175327, 160811, 160812, 157463, 161931, 157464, 160815, 157465, 165286, 164173, 165290, 165291, 160824, 163059, 169763, 157477, 173118, 163065, 14505, 164184, 168652, 165301, 164185, 165302, 163073, 164194, 157493, 159727, 159729, 166432, 159730);
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry` IN (165323, 165293); -- Darkwing Rebel
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=165324; -- Dredterror Ballista
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=165325; -- Muckborn Craftsman
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=170934; -- Bunny - Balthazar Delivery Spot
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=165419; -- Grand Marshal Mudrag
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=159880; -- Chancellor Zelma
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=159884; -- Chancellor Ladris
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=159898; -- Duchess Lacrima
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=166641; -- Ashen Cylcone
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=161064; -- Confined Soul
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=175586; -- Raven
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=175587; -- Curious Rat
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=171123; -- Lost Soul
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=159965; -- Lord Sorin
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=159976; -- Duke Simion
UPDATE `creature_template` SET `femaleName`='', `type_flags`=72, `VerifiedBuild`=46597 WHERE `entry`=166680; -- Greedy Soul
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=159980; -- Madame Lenuta
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry` IN (171152, 171153); -- Darkwing Legionnaire
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=159986; -- Sir Vali
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=159999; -- Madame Miriana
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=160002; -- Lord Vasile
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=160007; -- Duchess Silviana
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.200000002980232238, `VerifiedBuild`=46597 WHERE `entry`=171178; -- Stone Fiend Supplier
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=160012; -- Sir Luca
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.200000002980232238, `VerifiedBuild`=46597 WHERE `entry`=158895; -- Carved Assessor
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=31575; -- Giant Sewer Rat
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=171246; -- Rocky
UPDATE `creature_template` SET `type_flags`=2097224, `VerifiedBuild`=46597 WHERE `entry`=164562; -- Depraved Houndmaster
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=174640; -- Nibbling Creeper
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=174645; -- Slimy Creeper
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=174647; -- Grimy Creeper
UPDATE `creature_template` SET `femaleName`='', `type_flags`=2147483720, `VerifiedBuild`=46597 WHERE `entry`=161246; -- Heftor
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=86420; -- Ancient Nest Guardian
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=173555; -- Mire Creeper
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=173556; -- Withering Creeper
UPDATE `creature_template` SET `femaleName`='', `type_flags2`=6, `VerifiedBuild`=46597 WHERE `entry`=161275; -- Maldraxxi Anima Crystal
UPDATE `creature_template` SET `femaleName`='', `type_flags`=66049, `HealthModifier`=0.60000002384185791, `VerifiedBuild`=46597 WHERE `entry`=161294; -- Carved Sniffer
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=159086; -- Humbled Soul
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=159112; -- Second Talon Eviscera
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=168068; -- Carved Cataloger
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=168177; -- Expectant Soul
UPDATE `creature_template` SET `VerifiedBuild`=46597 WHERE `entry`=174922; -- Strategist Zo'rak
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.899999976158142089, `VerifiedBuild`=46597 WHERE `entry`=176111; -- Depraved Cryptkeeper
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=176123; -- Stoneborn Executor
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=173926; -- Dredger Attendant
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=175056; -- Prince Renathal
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=175058; -- General Draven
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=175060; -- Wing Commander Vulpek
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `movementId`=0, `VerifiedBuild`=46597 WHERE `entry`=77942; -- Primal Storm Elemental
UPDATE `creature_template` SET `HealthModifier`=0.5, `VerifiedBuild`=46597 WHERE `entry`=160727; -- Lingering Malaise
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=167430; -- Avowed Confessor
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.800000011920928955, `VerifiedBuild`=46597 WHERE `entry`=166320; -- Bog Dredger
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=169674; -- Catacombs Cage
UPDATE `creature_template` SET `femaleName`='', `type_flags2`=6, `VerifiedBuild`=46597 WHERE `entry` IN (161885, 161887); -- Mortegore Sigil


UPDATE `creature_template_model` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `CreatureID` IN (32642,32641,178792,162918,174922,168011,164096,114665,1860,187734,175213,171790,171787,164095,176368,176067,176066,171821,171299,167591,164579,164079,156734,416,176065,176064,173388,173386,171795,171589,170607,164100,162896,175036,170310,159478,164099,164684,170640,175083,165796,173369,164098,164078,175082,175081,175080,175067,175066,173370,169524,175216,156504,175019,173318,165654,175215,171822,54638,190148,182864,170256,86420,417,170557,156663,166312,175016,156758,173354,175214,156768,175222,175035,173357,173356,173355,173353,173352,165657,164596,162928,32842,173330,78116,175212,173327,162929,175020,175208,176545,165405,173348,164685,164353,167881,173301,175218,164686,173302,156735,172702,178804,173364,173300,167880,156688,175017,142666,177829,164173,181681,156769,162666,175018,173325,121541,173305,166061,175206,173350,175087,175327,156698,173118,173367,165403,164803,142668,175207,164123,164352,173304,166307,171796,174170,31575,172367,175664,175774,132969,160701,160614,158821,157784,157729,157740,164697,164696,173779,157332,173788,175460,175454,175465,162278,162276,157405,175480,176636,157562,157444,157464,165645,157504,157477,157465,157417,157463,165367,157493,168851,168724,168855,168842,164309,164105,163977,163960,161337,156636,164104,163961,168918,175436,174647,174646,174645,173555,163624,174640,172812,155589,166965,162261,168237,156295,165189,169831,175060,175058,167746,167727,158055,175056,174772,173926,156293,156291,167489,55370,167717,165770,19668,77942,61245,175519,92870,167744,174034,168238,165859,156822,172980,161968,159115,168865,168057,169845,169198,169197,166042,169171,166636,165253,165256,165255,168679,168722,158057,168678,168676,173326,161879,173329,173328,173324,174969,160824,176058,17252,159086,157084,157007,176125,156916,167914,169674,169502,161064,163216,160009,159961,160007,159981,159977,159976,159971,159965,159883,159880,160004,160011,159966,159986,159980,159960,160006,159998,159987,159970,159964,159884,160012,160002,159999,159973,159898,163376,160008,159982,159967,159958,163979,163450,159968,160005,159997,159882,160003,173188,171123,164029,164243,164232,164084,164049,164018,163512,169006,163476,169048,164184,164021,169111,169086,169089,169104,169091,169090,166457,166255,166082,169916,166320,166206,175586,175587,159177,158985,172870,172691,159407,158924,172785,159174,172786,159178,159458,159106,159601,159577,159575,158988,158978,159412,159104,158992,159495,159233,159114,158976,160322,160323,160317,158533,160582,160537,159460,159265,160570,160640,160641,165687,160425,160400,160375,160345,160642,160456,168174,157195,178336,158038,168165,180693,175533,164536,164524,158264,157194,158479,175906,158480,158420,158439,158631,158617,158473,157977,168093,164143,164234,163819,159183,163575,163861,163893,166576,170986,170979,170953,163507,170981,170952,170951,173508,171849,166566,176347,160802,173449,168805,168802,168828,157579,175229,168803,158365,157577,160815,160811,157576,160812,160753,168395,168390,157199,168383,168345,168321,156269,155795,168590,168351,168319,156077,156596,168374,172999,165328,165326,169154,165324,165327,165325,163968,162894,156395,163285,163284,163282,162909,165290,163059,168404,168401,168400,168399,160084,168354,160090,160081,164799,166825,166651,166654,169763,166677,165834,163896,166652,34337,166653,168122,167420,165723,158813,165706,165609,158797,158796,158795,165565,158799,166543,177554,166541,166542,166432,165563,175544,165783,165576,161419,185580,175543,166005,165989,156290,155508,156540,167918,167849,156294,173570,161931,161671,161015,168618,165206,158336,165230,165229,160421,157698,160477,160455,160454,159732,156061,173673,173671,173657,175577,167898,167892,167876,165913,167615,164363,165737,166497,166034,164218,165410,167612,167611,167610,186150,167806,47649,148196,164185,167607,99541,165408,174175,164557,165529,165415,164563,165414,165515,164562,166685,166680,161887,161885,161179,169876,161294,161246,161178,161275,161180,169366,176138,169044,176114,173556,168734,159152,161689,155654,161474,169476,158928,168177,156260,176122,156264,167453,156263,160248,173705,168065,159026,159155,159027,176113,176111,163073,176112,175584,168698,159154,161558,158910,176109,168652,176110,156255,159678,159676,167491,167488,163691,163065,160521,160476,156256,156257,158908,176108,159156,168083,176107,176105,167501,156261,167430,166489,163692,158895,160296,160297,167438,168068,176104,159631,176123,159677,156911,176106,158902,158897,176101,156919,167497,156910,156909,156925,159157,176118,176120,176121,171152,173772,171153,161417,160116,159025,159024,159010,158986,158893,175585,174122,173703,159153,158417,167018,158998,158979,167017,167016,167015,167010,159001,158892,167120,167590,176117,176116,173718,158927,176132,176119,161052,158894,156284,175979,169464,160719,161591,159659,159459,161592,173794,173782,168170,167902,163208,160716,156259,167451,161270,158259,158517,173332,173331,160100,168121,167801,167755,163164,163163,163162,163161,167754,163165,173488,169420,159729,161625,169688,168796,161624,159766,173506,168296,167908,163149,159727,160289,159730,168214,168213,168702,168212,168732,173173,173170,173169,173168,161309,167889,165039,161247,168224,159398,174754,163675,160393,161274,161621,161211,161207,161206,174750,161343,161221,161191,156544,156081,161258,161195,161237,169707,167803,161348,161344,161333,167819,161345,161299,167818,198489,157733,157732,157731,157726,166076,158416,166084,166078,158667,168120,167813,160613,162146,166047,158668,166092,175767,175769,55455,175775,178132,175757,174183,172366,175623,175624,175922,175762,174036,156600,175369,164837,174709,165291,164739,164269,171190,165302,175407,175660,175659,175595,158713,166137,175655,175593,175580,175408,175406,174038,159000,162702,174714,175622,161977,174994,175625,175620,178601,175453,175452,174045,178131,161979,177628,177637,164741,175455,164738,175466,174710,58965,175772,175458,175441,172605,164931,164900,143622,55626,172649,175470,175456,175451,175450,175448,173942,166160,166048,171246,175467,175449,162704,175462,175459,158653,165772,167815,167822,176003,24207,165293,165323,165271,62167,165301,165270,165267,165286,165265,173765,176378,175590,173137,174117,168909,165266,163559,160181,160169,165676,166722,166715,166710,175566,169411,156296,171149,166089,174032,169840,175850,173323,158663,174116,169841,158443,175572,173391,164533,175469,169885,164194,171375,168703,173387,158700,165767,26125,305,21354,65011,55272,32206,18362,18375,18376,18406,18359,18357,18360,14565,14505,9158,73780,28302,304)) OR (`Idx`=2 AND `CreatureID` IN (175213,156734,170607,175082,175067,175066,175216,175215,175016,156758,175222,32842,175020,175208,175218,173300,175017,175018,175206,173118,175207,173304,171796,172367,160701,157784,157729,157464,165645,157417,157463,157493,168918,173926,167717,167744,159115,168865,169198,169197,169171,165256,165255,176125,163376,163979,163450,169006,169048,164184,169111,169086,169089,169091,169090,166457,166082,166320,159177,159174,159106,159104,159495,159114,160317,159265,160641,160375,168174,164536,164524,158480,158439,158631,158617,158473,170953,170952,170951,157579,157577,157576,168351,165328,165325,166677,166653,167420,165723,158813,165609,158799,166543,177554,166541,166542,165563,165576,167615,47649,99541,165529,165415,165414,165515,164562,161179,169876,161178,176114,161689,169476,158928,156260,176122,156264,159027,176111,176112,158910,176109,168652,176110,156255,167488,156256,158908,176108,176107,176105,156261,166489,160296,160297,176104,159631,156911,158902,158897,176101,156910,156909,176118,176120,176121,161417,159025,159024,159010,158893,167018,159001,158892,176116,158927,176132,176119,161052,158894,159659,168170,167902,163208,167755,159729,169688,168796,159766,167908,163149,159727,160289,159730,168214,168213,168212,161247,161274,161191,161258,161195,161344,161333,161345,161299,157733,157731,157726,172366,175593,175580,174038,175620,175466,175458,175441,143622,175470,175448,175459,167822,165271,165270,165265,176378,173137,165266,163559,160181,160169,166722,158663,175572,164533,175469,26125)) OR (`Idx`=1 AND `CreatureID` IN (175213,156734,170607,170310,175082,175067,175066,175216,175019,175215,171822,54638,170256,175016,156758,175222,32842,78116,175020,175208,175218,173300,175017,175018,175206,175087,173118,175207,173304,171796,172367,160701,157784,157729,173779,173788,175465,176636,157562,157464,165645,157417,157463,157493,164105,163977,168918,174646,166965,169831,173926,55370,167717,165770,167744,159115,168865,169845,169198,169197,169171,165256,165255,157007,176125,167914,170934,163216,163376,163979,163450,163512,169006,169048,164184,169111,169086,169089,169104,169091,169090,166457,166082,166320,159177,158985,159174,159106,159601,159577,159575,158988,158978,159104,158992,159495,159114,158976,160317,159265,160641,160375,168174,157195,178336,164536,164524,158480,158439,158631,158617,158473,157977,170953,170952,170951,176347,160802,168828,157579,175229,157577,157576,168590,168351,165328,165325,168354,166825,166651,166654,166677,163896,166652,166653,167420,165723,158813,165609,158799,166543,177554,166541,166542,166432,165563,165576,165230,159732,167615,166497,167610,47649,99541,165529,165415,164563,165414,165515,164562,161179,169876,161178,161180,169044,176114,161689,155654,169476,158928,156260,176122,156264,167453,156263,159027,176111,176112,175584,158910,176109,168652,176110,156255,159678,167488,156256,156257,158908,176108,176107,176105,156261,166489,158895,160296,160297,176104,159631,176123,156911,176106,158902,158897,176101,167497,156910,156909,156925,176118,176120,176121,161417,159025,159024,159010,158893,175585,167018,158979,159001,158892,167120,167590,176117,176116,158927,176132,176119,161052,158894,159659,161592,168170,167902,163208,167801,167755,159729,169688,168796,159766,167908,163149,159727,160289,159730,168214,168213,168212,161247,159398,161274,161211,161221,161191,156081,161258,161195,161237,167803,161344,161333,161345,161299,157733,157731,157726,167813,162146,55455,172366,174036,156600,175369,164837,175595,175593,175580,174038,174994,175620,174045,175466,175458,175441,143622,55626,175470,175448,175459,167822,165271,62167,165270,165265,176378,175590,173137,165266,163559,160181,160169,166722,173323,158663,158443,175572,173391,164533,175469,164194,158700,26125)) OR (`Idx`=4 AND `CreatureID` IN (170607,175216,175215,175016,175222,175208,175218,173300,175017,175018,175206,173118,175207,173304,157784,157729,157464,165645,157417,157463,165256,176125,163376,169111,157579,157577,157576,166677,158813,161179,169876,161178,176114,169476,158928,156260,176122,156264,159027,176112,176109,156255,167488,156256,158908,176108,176107,176105,156261,160296,160297,176104,156911,158902,158897,176101,156910,156909,176120,176121,161417,159025,159024,159010,158893,159001,176116,158927,176132,176119,161052,158894,159659,169688,159727,168212,161344,161333,161345,157731,157726,175580,175620,175466,175458,175441,175470,175459,175572,164533,175469)) OR (`Idx`=3 AND `CreatureID` IN (170607,175067,175066,175216,175215,175016,156758,175222,32842,175020,175208,175218,173300,175017,175018,175206,173118,175207,173304,171796,172367,157784,157729,157464,165645,157417,157463,173926,167717,167744,168865,169198,169197,169171,165256,165255,176125,163376,163979,169006,169048,164184,169111,169086,166457,166082,159495,159114,160317,160641,158439,170953,170952,170951,157579,157577,157576,168351,166677,167420,165723,158813,165609,158799,166543,177554,166541,166542,165563,167615,99541,165529,165414,165515,164562,161179,169876,161178,176114,169476,158928,156260,176122,156264,159027,176111,176112,158910,176109,168652,176110,156255,167488,156256,158908,176108,176107,176105,156261,166489,160296,160297,176104,159631,156911,158902,158897,176101,156910,156909,176118,176120,176121,161417,159025,159024,159010,158893,167018,159001,158892,176116,158927,176132,176119,161052,158894,159659,167902,163208,167755,169688,159766,163149,159727,160289,168214,168213,168212,161274,161191,161258,161195,161344,161333,161345,157731,157726,172366,175593,175580,175620,175466,175458,175441,175470,175448,175459,165270,165265,176378,165266,163559,160169,166722,175572,164533,175469,26125)) OR (`Idx`=5 AND `CreatureID` IN (175216,175016,175222,175208,175218,173300,175018,175206,173118,175207,157784,157729,157464,165645,157417,157463,176125,163376,157579,157577,157576,166677,158813,161179,169876,161178,176114,158928,156260,176122,156264,159027,176112,176109,156255,167488,156256,158908,176108,176107,176105,156261,160296,160297,176104,156911,158902,158897,176101,156910,156909,176120,176121,161417,159025,159024,159010,158893,159001,176116,158927,176132,176119,161052,158894,159659,159727,161344,161333,161345,157731,157726,175580,175620,175466,175441,175470,175459,175572,164533,175469)) OR (`Idx`=7 AND `CreatureID` IN (157784,157729,176125,157579,157576,161179,169876,161178,176114,158928,156260,176122,156264,159027,176112,176109,156255,167488,156256,158908,176108,176107,176105,156261,160296,160297,176104,156911,158902,158897,176101,156910,156909,176120,176121,161417,159025,159024,159010,158893,159001,176116,158927,176132,176119,158894,159659,161344,161333,161345,157731,157726,175620,175466,175441,175470,175459,175572,164533,175469)) OR (`Idx`=6 AND `CreatureID` IN (157784,157729,176125,157579,157577,157576,161179,169876,161178,176114,158928,156260,176122,156264,159027,176112,176109,156255,167488,156256,158908,176108,176107,176105,156261,160296,160297,176104,156911,158902,158897,176101,156910,156909,176120,176121,161417,159025,159024,159010,158893,159001,176116,158927,176132,176119,158894,159659,161344,161333,161345,157731,157726,175620,175466,175441,175470,175459,175572,164533,175469)) OR (`Idx`=15 AND `CreatureID`=175469) OR (`Idx`=14 AND `CreatureID`=175469) OR (`Idx`=13 AND `CreatureID`=175469) OR (`Idx`=12 AND `CreatureID`=175469) OR (`Idx`=11 AND `CreatureID`=175469) OR (`Idx`=10 AND `CreatureID`=175469) OR (`Idx`=9 AND `CreatureID`=175469) OR (`Idx`=8 AND `CreatureID`=175469);
UPDATE `creature_template_model` SET `DisplayScale`=1.25, `VerifiedBuild`=46597 WHERE (`CreatureID`=166641 AND `Idx`=0); -- Ashen Cylcone
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=46597 WHERE (`CreatureID`=170934 AND `Idx`=0); -- Bunny - Balthazar Delivery Spot
UPDATE `creature_template_model` SET `DisplayScale`=0.699999988079071044, `VerifiedBuild`=46597 WHERE (`CreatureID`=160727 AND `Idx`=0); -- Lingering Malaise
UPDATE `creature_template_model` SET `DisplayScale`=1.20000004768371582, `VerifiedBuild`=46597 WHERE (`CreatureID`=159503 AND `Idx`=0); -- Stonefist
UPDATE `creature_template_model` SET `DisplayScale`=1.70000004768371582, `VerifiedBuild`=46597 WHERE (`CreatureID`=159112 AND `Idx`=0); -- Second Talon Eviscera
UPDATE `creature_template_model` SET `DisplayScale`=1.10000002384185791, `VerifiedBuild`=46597 WHERE (`CreatureID`=159151 AND `Idx`=0); -- Inquisitor Traian
UPDATE `creature_template_model` SET `DisplayScale`=1.10000002384185791, `VerifiedBuild`=46597 WHERE (`CreatureID`=156918 AND `Idx`=0); -- Inquisitor Otilia
UPDATE `creature_template_model` SET `DisplayScale`=2, `VerifiedBuild`=46597 WHERE (`CreatureID`=171178 AND `Idx`=0); -- Stone Fiend Supplier
UPDATE `creature_template_model` SET `DisplayScale`=1.25, `VerifiedBuild`=46597 WHERE (`CreatureID`=165419 AND `Idx`=0); -- Grand Marshal Mudrag


UPDATE `creature_questitem` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `CreatureEntry` IN (157784,157740,157332,168724,168855,156636,163961,166042,165253,166206,159503,160640,160375,160345,158439,158617,158473,163575,163861,166576,157579,157577,160811,157576,160812,156596,169154,156395,163282,165290,166005,165989,165206,160421,160454,156061,164218,176111,176112,158910,176109,168652,176110,156255,159676,156256,156257,158908,176108,176121,158893,176116,158927,176132,176119,158894,159659,160716,159729,161624,159766,159727,159730,160393,161274,161621,161191,161195,157731,157726,160613,166710,164533)) OR (`Idx`=1 AND `CreatureEntry` IN (165253,159503,160640,158439,158617,158473,163575,163861,166576,165290,165206,164218,176121,158893,176116,158927,176132,176119,158894,159659,160716,160393,161274,161621,161191,161195,160613,166710)) OR (`Idx`=3 AND `CreatureEntry` IN (158439,158617,158473,176121,158893,176116,158927,176132,176119,158894,159659,160716,161274,161621,161191,161195)) OR (`Idx`=2 AND `CreatureEntry` IN (158439,158617,158473,164218,176121,158893,176116,158927,176132,176119,158894,159659,160716,161274,161621,161191,161195)) OR (`Idx`=4 AND `CreatureEntry` IN (160716,161274,161191,161195));

DELETE FROM `gameobject_template` WHERE `entry`=349111;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(349111, 5, 60638, 'Absolution Reliquary', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46597); -- Absolution Reliquary

UPDATE `gameobject_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (357578, 357285, 357289, 353483, 353485, 365154, 353490, 377005, 357298, 357294, 352745, 377031, 345445, 377007, 377001, 352746, 353489, 353480, 365155, 353481, 367758, 345444, 357272, 365157, 357340, 357264, 365156, 354680, 357320, 353488, 369535, 354922, 369533, 353477, 369527, 357301, 357277, 357269, 357325, 369530, 357306, 353822, 357282, 353479, 364422, 357266, 357322, 375407, 357314, 357274, 353487, 353482, 364419, 357303, 357287, 354924, 355063, 357327, 357319, 357311, 364499, 369532, 353476, 364497, 364424, 357308, 369534, 357324, 357316, 353492, 369529, 369526, 357305, 354681, 357321, 357313, 353750, 353478, 357302, 354923, 357462, 357286, 357278, 357262, 357326, 357318, 357310, 353823, 369531, 357095, 357307, 357299, 364423, 357267, 357323, 357315, 353491, 369536, 354921, 369528, 357288, 357471, 334869, 339503, 334872, 339504, 334870, 334875, 346046, 346051, 346050, 346049, 334954, 346045, 348940, 364523, 349795, 333214, 344601, 355557, 348528, 349797, 349088, 349794, 363822, 357526, 351889, 358292, 223034, 365140, 344631, 352704, 349792, 352490, 349793, 339508, 351911, 351895, 351894, 351892, 351891, 340069, 338227, 352694, 342374, 341810, 338513, 341881, 363443, 352005, 349687, 349602, 353791, 353947, 349082, 349516, 358290, 356562, 356561, 358288, 353041, 358291, 356563, 356560, 352489, 339287, 358148, 349193, 344792, 364534, 364533, 336094, 345460, 344791, 358145, 358146, 334933, 334931, 352461, 357467, 339493, 339346, 352477, 339498, 339497, 333211, 352087, 352095, 358144, 352002, 358313, 353799, 352000, 348551, 348550, 343580, 338226, 348556, 351740, 346021, 346099, 348552, 346097, 349862, 352743, 351746, 351885, 349381, 350982, 352575, 351884, 349537, 349484, 349380, 351730, 349532, 352834, 349379, 349385, 364993, 355945, 352453, 351759, 355943, 363821, 363820, 355944, 334830, 365226, 348631, 348630, 357584, 339785, 357524, 355589, 355590, 349098, 349099, 352524, 355592, 353304, 353280, 349936, 353301, 353277, 353269, 353261, 349933, 353178, 353298, 353290, 353274, 252245, 353783, 355591, 349935, 349295, 353287, 353271, 353300, 353180, 353284, 353276, 353297, 353049, 355593, 353782, 349294, 353302, 353286, 353262, 353291, 353179, 353275, 349931, 353056, 353048, 357541, 350084, 349983, 358300, 349899, 339788, 334926, 339233, 334925, 334924, 334923, 272724, 350883, 357593, 339230, 334939, 354846, 358273, 352001, 339232, 340003, 345418, 345383, 349624, 342064, 342063, 342062, 342061, 342060, 341948, 341947, 353061, 351600, 344755, 358270, 344757, 337226, 358279, 353312, 365679, 364936, 358277, 339994, 358276, 358275, 358272, 358282, 358269, 351431, 339724, 337242, 357708, 350887, 340071, 340065, 358280, 349898, 340068, 358278, 358271, 340080, 358274, 358281, 350981, 345384, 342220, 336433, 351887, 351886, 341813, 341812, 341811, 297481, 297480, 352016, 352010, 352008, 357162, 352006, 352015, 348632, 357596, 351997, 339876, 339853, 351993, 334915, 348628, 339241, 358299, 339258, 339284, 339283, 351716, 351998, 351999, 353043, 353042, 352054, 352051, 352052, 336691, 339499, 334871, 353033, 351888, 356880, 353034, 353044, 357229, 351874, 355409, 355397, 355391, 355412, 342370, 364861, 357986, 358398, 364860, 357350, 355410, 355408, 355400, 355396, 353334, 355404, 355388, 355415, 355407, 355406, 355402, 355393, 355390, 364813, 364859, 368347, 355384, 364858, 355417, 355414, 355411, 355392, 355405, 359073, 359276, 356589, 349495, 364855, 349077, 351449, 351893, 364852, 355395, 364851, 355401, 364853, 359074, 355399, 364856, 364854, 356609, 355394, 353211, 351940, 359107, 359108, 356394, 356531, 359106, 358869, 359109, 356605, 364894, 359110, 356396, 355486, 355484, 355482, 355464, 355462, 355385, 355487, 355478, 355476, 355465, 355386, 353951, 351956, 351953, 351952, 351951, 351950, 351949, 364524, 355489, 355398, 355403, 352053, 352049, 352050, 353193, 357590, 349087, 349097, 358289, 365152, 365151, 349697, 352011, 352013, 352012, 349192, 352007, 352009, 352014, 351471, 352508, 352507, 352506, 352504, 352502, 357228, 345433, 357353, 342257, 357430, 357347, 351948, 357348, 357432, 349627, 355257, 357349, 334914, 342258, 339861, 353191, 357447, 357355, 357423, 336436, 352108, 352692, 357428, 357416, 357433, 349628, 357422, 357354, 339790, 339838, 357695, 352683, 357439, 357468, 339840, 357444, 357448, 353240, 357700, 357436, 357356, 353244, 357440, 357688, 357424, 357360, 357692, 352621, 357696, 357441, 357429, 357357, 357449, 357437, 353378, 364850, 357438, 357693, 357489, 352686, 352622, 357358, 339841, 357425, 357690, 357442, 352690, 357694, 352614, 339846, 357418, 357699, 352615, 357359, 357687, 357427, 357691, 338515, 349626, 357491, 357419, 352473, 352480, 352497, 353176, 353032, 352470, 352493, 352485, 352462, 352505, 352501, 358149, 363817, 352512, 352471, 344794, 353174, 352472, 349542, 352467, 363818, 367946, 352498, 352056, 352610, 352499, 352608, 352494, 357173, 352495, 352486, 352522, 352500, 352483, 352517, 352463, 357172, 352503, 353175, 363819, 352482, 352513, 352492, 352466, 352484, 352516, 352509, 352511, 327444);
UPDATE `gameobject_template` SET `name`='Platter', `VerifiedBuild`=46597 WHERE `entry`=353105; -- 353105
UPDATE `gameobject_template` SET `name`='Servant\'s Basic Kit', `castBarCaption`='Changing', `VerifiedBuild`=46597 WHERE `entry`=353017; -- 353017
UPDATE `gameobject_template` SET `name`='Stowed Crystal', `VerifiedBuild`=46597 WHERE `entry` IN (339845, 339844); -- ÐŸÐ¾Ð³Ñ€ÑƒÐ¶ÐµÐ½Ð½Ñ‹Ð¹ ÐºÑ€Ð¸ÑÑ‚Ð°Ð»Ð»
UPDATE `gameobject_template` SET `Data32`=108, `VerifiedBuild`=46597 WHERE `entry`=349796; -- Gilded Plum Chest
UPDATE `gameobject_template` SET `name`='Empowered Chest', `castBarCaption`='Opening', `VerifiedBuild`=46597 WHERE `entry`=357345; -- Ð£ÑÐ¸Ð»ÐµÐ½Ð½Ñ‹Ð¹ ÑÑƒÐ½Ð´ÑƒÐº
UPDATE `gameobject_template` SET `name`='Charged Crystal', `VerifiedBuild`=46597 WHERE `entry`=340663; -- Ð—Ð°Ñ€ÑÐ¶ÐµÐ½Ð½Ñ‹Ð¹ ÐºÑ€Ð¸ÑÑ‚Ð°Ð»Ð»
UPDATE `gameobject_template` SET `name`='Necrotic Staff', `castBarCaption`='Collecting', `VerifiedBuild`=46597 WHERE `entry`=339789; -- ÐÐµÐºÑ€Ð¾Ñ‚Ð¸Ñ‡ÐµÑÐºÐ¸Ð¹ Ð¿Ð¾ÑÐ¾Ñ…
UPDATE `gameobject_template` SET `name`='Weapon Rack', `VerifiedBuild`=46597 WHERE `entry`=339787; -- ÐžÑ€ÑƒÐ¶ÐµÐ¹Ð½Ð°Ñ ÑÑ‚Ð¾Ð¹ÐºÐ°
UPDATE `gameobject_template` SET `type`=5, `name`='Obscured Mirror', `size`=0.899999976158142089, `Data1`=1, `Data2`=0, `VerifiedBuild`=46597 WHERE `entry`=339238; -- Halls Of Atonement
UPDATE `gameobject_template` SET `name`='Meeting Stone', `VerifiedBuild`=46597 WHERE `entry`=358548; -- ÐšÐ°Ð¼ÐµÐ½ÑŒ Ð²ÑÑ‚Ñ€ÐµÑ‡
UPDATE `gameobject_template` SET `castBarCaption`='Reading', `VerifiedBuild`=46597 WHERE `entry`=357598; -- Theolen Krastinov
UPDATE `gameobject_template` SET `name`='Candelabra', `VerifiedBuild`=46597 WHERE `entry`=351916; -- ÐšÐ°Ð½Ð´ÐµÐ»ÑÐ±Ñ€
UPDATE `gameobject_template` SET `name`='Monument Base', `VerifiedBuild`=46597 WHERE `entry`=351915; -- ÐžÑÐ½Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð¿Ð°Ð¼ÑÑ‚Ð½Ð¸ÐºÐ°
UPDATE `gameobject_template` SET `name`='Vampire Scroll 01', `VerifiedBuild`=46597 WHERE `entry`=339863; -- Ð¡Ð²Ð¸Ñ‚Ð¾Ðº Ð²Ð°Ð¼Ð¿Ð¸Ñ€Ð° 01
UPDATE `gameobject_template` SET `name`='Ciborium', `VerifiedBuild`=46597 WHERE `entry`=334922; -- Ð‘Ð°Ð»Ð´Ð°Ñ…Ð¸Ð½
UPDATE `gameobject_template` SET `castBarCaption`='Reading', `VerifiedBuild`=46597 WHERE `entry`=357591; -- Devin
UPDATE `gameobject_template` SET `name`='Barrel', `VerifiedBuild`=46597 WHERE `entry`=334928; -- Ð‘Ð¾Ñ‡ÐºÐ°
UPDATE `gameobject_template` SET `name`='Anima Container', `VerifiedBuild`=46597 WHERE `entry`=350995; -- ÐšÐ¾Ð½Ñ‚ÐµÐ¹Ð½ÐµÑ€ Ñ Ð°Ð½Ð¸Ð¼Ð¾Ð¹
UPDATE `gameobject_template` SET `name`='Sinstone', `VerifiedBuild`=46597 WHERE `entry` IN (350977, 351914, 351913); -- ÐšÐ°Ð¼ÐµÐ½ÑŒ Ð³Ñ€ÐµÑ…Ð¾Ð²
UPDATE `gameobject_template` SET `name`='Anima Container', `castBarCaption`='Collecting', `VerifiedBuild`=46597 WHERE `entry`=348740; -- 348740
UPDATE `gameobject_template` SET `name`='Anima Container', `castBarCaption`='Collecting', `VerifiedBuild`=46597 WHERE `entry`=348741; -- 348741


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `GameObjectEntry` IN (334869,339503,334872,339504,334870,334875,349795,349797,349794,349792,349793,339508,349381,349380,349379,349385,355945,355943,355944,357584,349796,357345,297481,297480,351716,334871,356880,357229,357228,351948)) OR (`Idx`=1 AND `GameObjectEntry` IN (339503,349795,349797,349794,349792,349793,357584,349796,356880,357229,357228,351948)) OR (`Idx`=13 AND `GameObjectEntry`=356880) OR (`Idx`=12 AND `GameObjectEntry`=356880) OR (`Idx`=11 AND `GameObjectEntry`=356880) OR (`Idx`=10 AND `GameObjectEntry`=356880) OR (`Idx`=9 AND `GameObjectEntry`=356880) OR (`Idx`=8 AND `GameObjectEntry`=356880) OR (`Idx`=7 AND `GameObjectEntry`=356880) OR (`Idx`=6 AND `GameObjectEntry`=356880) OR (`Idx`=5 AND `GameObjectEntry`=356880) OR (`Idx`=4 AND `GameObjectEntry`=356880) OR (`Idx`=3 AND `GameObjectEntry`=356880) OR (`Idx`=2 AND `GameObjectEntry`=356880);


UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096

