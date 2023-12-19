DELETE FROM `creature_equip_template` WHERE (`ID`=3 AND `CreatureID` IN (54959,56591,56585,56592));
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(54959, 3, 34291, 0, 0, 0, 0, 0, 0, 0, 0, 45745), -- Pearlfin Aqualyte
(56591, 3, 79832, 0, 0, 0, 0, 0, 0, 0, 0, 45745), -- Pearlfin Aqualyte
(56585, 3, 79831, 0, 0, 0, 0, 0, 0, 0, 0, 45745), -- Pearlfin Aqualyte
(56592, 3, 24034, 0, 0, 24034, 0, 0, 0, 0, 0, 45745); -- Pearlfin Aqualyte

UPDATE `creature_equip_template` SET `VerifiedBuild`=45745 WHERE (`ID`=1 AND `CreatureID` IN (3296,51346,149270,74228,71100,4311,161711,161709,161708,161707,161706,56771,61861,65127,56774,56775,66306,56776,59173,56777,56778,56705,59387,65601,50808,55195,56701,55110,60971,56385,54960,59364,56725,56727,61760,55461,56726,59363,59362,59361,50782,56693,56591,56592,54959,56264,55589,56585,59159,59348,56227,56222,59060)) OR (`ID`=2 AND `CreatureID` IN (55110,59348));

DELETE FROM `areatrigger_template` WHERE (`Id`=3575 AND `IsServerSide`=0);
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(3575, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 45745);


DELETE FROM `areatrigger_create_properties` WHERE `Id`=473;
INSERT INTO `areatrigger_create_properties` (`Id`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `Shape`, `ShapeData0`, `ShapeData1`, `ShapeData2`, `ShapeData3`, `ShapeData4`, `ShapeData5`, `ShapeData6`, `ShapeData7`, `VerifiedBuild`) VALUES
(473, 3575, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 45745); -- SpellId : 131234



UPDATE `conversation_actors` SET `VerifiedBuild`=45745 WHERE (`ConversationId`=13254 AND `Idx` IN (1,0));


UPDATE `conversation_line_template` SET `VerifiedBuild`=45745 WHERE `Id` IN (32926, 32919, 32918, 32917, 32916, 32915);


UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=13254;

DELETE FROM `playercreateinfo_action` WHERE (`race`=35 AND `class`=6 AND `button`=59) OR (`race`=35 AND `class`=6 AND `button`=49) OR (`race`=35 AND `class`=6 AND `button`=48) OR (`race`=35 AND `class`=6 AND `button`=36) OR (`race`=35 AND `class`=6 AND `button`=6) OR (`race`=35 AND `class`=6 AND `button`=131) OR (`race`=35 AND `class`=6 AND `button`=128) OR (`race`=35 AND `class`=6 AND `button`=127) OR (`race`=35 AND `class`=6 AND `button`=121) OR (`race`=35 AND `class`=6 AND `button`=120) OR (`race`=35 AND `class`=6 AND `button`=119) OR (`race`=35 AND `class`=6 AND `button`=117) OR (`race`=35 AND `class`=6 AND `button`=116) OR (`race`=35 AND `class`=6 AND `button`=115) OR (`race`=35 AND `class`=6 AND `button`=114) OR (`race`=35 AND `class`=6 AND `button`=113) OR (`race`=35 AND `class`=6 AND `button`=111) OR (`race`=35 AND `class`=6 AND `button`=110) OR (`race`=35 AND `class`=6 AND `button`=109) OR (`race`=35 AND `class`=6 AND `button`=107) OR (`race`=35 AND `class`=6 AND `button`=99) OR (`race`=35 AND `class`=6 AND `button`=97) OR (`race`=35 AND `class`=6 AND `button`=95) OR (`race`=35 AND `class`=6 AND `button`=90) OR (`race`=35 AND `class`=6 AND `button`=89) OR (`race`=35 AND `class`=6 AND `button`=87) OR (`race`=35 AND `class`=6 AND `button`=86) OR (`race`=35 AND `class`=6 AND `button`=85) OR (`race`=35 AND `class`=6 AND `button`=84) OR (`race`=35 AND `class`=6 AND `button`=83) OR (`race`=35 AND `class`=6 AND `button`=80) OR (`race`=35 AND `class`=6 AND `button`=79) OR (`race`=35 AND `class`=6 AND `button`=72) OR (`race`=35 AND `class`=6 AND `button`=71) OR (`race`=35 AND `class`=6 AND `button`=69) OR (`race`=35 AND `class`=6 AND `button`=68) OR (`race`=35 AND `class`=6 AND `button`=67) OR (`race`=35 AND `class`=6 AND `button`=66) OR (`race`=35 AND `class`=6 AND `button`=65) OR (`race`=35 AND `class`=6 AND `button`=64) OR (`race`=35 AND `class`=6 AND `button`=57) OR (`race`=35 AND `class`=6 AND `button`=55) OR (`race`=35 AND `class`=6 AND `button`=52) OR (`race`=35 AND `class`=6 AND `button`=34) OR (`race`=35 AND `class`=6 AND `button`=32) OR (`race`=35 AND `class`=6 AND `button`=31) OR (`race`=35 AND `class`=6 AND `button`=29) OR (`race`=35 AND `class`=6 AND `button`=28) OR (`race`=35 AND `class`=6 AND `button`=27) OR (`race`=35 AND `class`=6 AND `button`=22) OR (`race`=35 AND `class`=6 AND `button`=19) OR (`race`=35 AND `class`=6 AND `button`=15);
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES
(35, 6, 59, 312411, 0), -- Bag of Tricks
(35, 6, 49, 50977, 0), -- Death Gate
(35, 6, 48, 53428, 0), -- Runeforging
(35, 6, 36, 47528, 0), -- Mind Freeze
(35, 6, 6, 316239, 0), -- Rune Strike
(35, 6, 131, 77935200, 0), -- 77935200
(35, 6, 128, 1455, 0), -- 1455
(35, 6, 127, 251, 0), -- 251
(35, 6, 121, 497, 0), -- 497
(35, 6, 120, 134148609, 0), -- 134148609
(35, 6, 119, 102275195, 0), -- 102275195
(35, 6, 117, 1455, 0), -- 1455
(35, 6, 116, 8, 0), -- 8
(35, 6, 115, 5, 0), -- Death Touch
(35, 6, 114, 16, 0), -- 16
(35, 6, 113, 128428512, 0), -- 128428512
(35, 6, 111, 128428512, 0), -- 128428512
(35, 6, 110, 1488, 0), -- 1488
(35, 6, 109, 83544201, 0), -- 83544201
(35, 6, 107, 1701277281, 0), -- 1701277281
(35, 6, 99, 108331599, 0), -- 108331599
(35, 6, 97, 326419, 0), -- Winds of Wisdom
(35, 6, 95, 326419, 0), -- Winds of Wisdom
(35, 6, 90, 135984603, 0), -- 135984603
(35, 6, 89, 93754881, 0), -- 93754881
(35, 6, 87, 135984603, 0), -- 135984603
(35, 6, 86, 64, 0), -- 64
(35, 6, 85, 4294967290, 0), -- -6
(35, 6, 84, 135984603, 0), -- 135984603
(35, 6, 83, 48, 0), -- 48
(35, 6, 80, 38, 0), -- 38
(35, 6, 79, 98411324, 0), -- 98411324
(35, 6, 72, 902333376, 0), -- 902333376
(35, 6, 71, 93754881, 0), -- 93754881
(35, 6, 69, 135984603, 0), -- 135984603
(35, 6, 68, 112, 0), -- Reflect Magic (TEST)
(35, 6, 67, 4294967290, 0), -- -6
(35, 6, 66, 135984603, 0), -- 135984603
(35, 6, 65, 96, 0), -- Dismember
(35, 6, 64, 132, 0), -- 132
(35, 6, 57, 94342423, 0), -- 94342423
(35, 6, 55, 98409778, 0), -- 98409778
(35, 6, 52, 588, 0), -- 588
(35, 6, 34, 33, 0), -- Teleport Westfall
(35, 6, 32, 155329136, 0), -- 155329136
(35, 6, 31, 98419010, 0), -- 98419010
(35, 6, 29, 98418176, 0), -- 98418176
(35, 6, 28, 22, 0), -- 22
(35, 6, 27, 19, 0), -- 19
(35, 6, 22, 156101624, 0), -- 156101624
(35, 6, 19, 5, 0), -- Death Touch
(35, 6, 15, 78623745, 0); -- 78623745

UPDATE `playercreateinfo_action` SET `action`=316239 WHERE (`race`=35 AND `class`=6 AND `button`=4); -- Rune Strike
UPDATE `playercreateinfo_action` SET `action`=49576 WHERE (`race`=35 AND `class`=6 AND `button`=0); -- Death Grip
UPDATE `playercreateinfo_action` SET `action`=95704626 WHERE (`race`=35 AND `class`=6 AND `button`=9); -- 95704626
UPDATE `playercreateinfo_action` SET `action`=93703526 WHERE (`race`=35 AND `class`=6 AND `button`=5); -- 93703526
UPDATE `playercreateinfo_action` SET `action`=78236402 WHERE (`race`=35 AND `class`=6 AND `button`=3); -- 78236402
UPDATE `playercreateinfo_action` SET `action`=5 WHERE (`race`=35 AND `class`=6 AND `button`=0); -- Death Touch

UPDATE `playercreateinfo` SET `orientation`=0 WHERE (`race`=35 AND `class`=6);


UPDATE `quest_offer_reward` SET `RewardText`='I accept your pledge. Serve us well.\n\nTo that end, new weapons worthy of a Knight of the Ebon Blade have been forged.\n\nChoose, my champion.', `VerifiedBuild`=45745 WHERE `ID`=58877; -- Death's Power Grows
UPDATE `quest_offer_reward` SET `VerifiedBuild`=45745 WHERE `ID` IN (31230, 29922, 29901, 29900, 29899, 29898, 29890, 29891, 29892, 29893, 31130, 29889, 29888, 29906, 29905, 29904, 29903, 29727, 29726);


UPDATE `quest_poi` SET `VerifiedBuild`=45745 WHERE (`QuestID`=58903 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=58903 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=58903 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=58903 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58903 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=58877 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=58877 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58877 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29866 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29866 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29866 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=31486 AND `BlobIndex`=5 AND `Idx1`=6) OR (`QuestID`=31486 AND `BlobIndex`=4 AND `Idx1`=5) OR (`QuestID`=31486 AND `BlobIndex`=3 AND `Idx1`=4) OR (`QuestID`=31486 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=31486 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=31486 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=31486 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29865 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29865 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29865 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=31230 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=31230 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=31230 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=31230 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=31230 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=31254 AND `BlobIndex`=5 AND `Idx1`=8) OR (`QuestID`=31254 AND `BlobIndex`=4 AND `Idx1`=7) OR (`QuestID`=31254 AND `BlobIndex`=3 AND `Idx1`=6) OR (`QuestID`=31254 AND `BlobIndex`=2 AND `Idx1`=5) OR (`QuestID`=31254 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=31254 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=31254 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=31254 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=31254 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=31392 AND `BlobIndex`=7 AND `Idx1`=8) OR (`QuestID`=31392 AND `BlobIndex`=6 AND `Idx1`=7) OR (`QuestID`=31392 AND `BlobIndex`=5 AND `Idx1`=6) OR (`QuestID`=31392 AND `BlobIndex`=4 AND `Idx1`=5) OR (`QuestID`=31392 AND `BlobIndex`=3 AND `Idx1`=4) OR (`QuestID`=31392 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=31392 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=31392 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=31392 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=31015 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=31015 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=31015 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=31015 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=31015 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=31015 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29922 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29922 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29922 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29901 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29901 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29901 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29900 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=29900 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29900 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29900 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29899 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29899 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29899 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29898 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=29898 AND `BlobIndex`=3 AND `Idx1`=4) OR (`QuestID`=29898 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=29898 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=29898 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29898 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29890 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29890 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29890 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29893 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29893 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29893 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29892 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=29892 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=29892 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29892 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29891 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29891 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29891 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=31130 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=31130 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29889 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=29889 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29889 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=29889 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29906 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29906 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29906 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29905 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29905 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29905 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29904 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29904 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29904 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29888 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29888 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29903 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29903 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29903 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29727 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=29727 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=29727 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29727 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29726 AND `BlobIndex`=0 AND `Idx1`=9) OR (`QuestID`=29726 AND `BlobIndex`=1 AND `Idx1`=8) OR (`QuestID`=29726 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=29726 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=29726 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=29726 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=29726 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=29726 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=29726 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29726 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29608 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=29608 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29608 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=27133 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=27133 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=27131 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=27131 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=27129 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=27129 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=26728 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=26728 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=12794 AND `BlobIndex`=4 AND `Idx1`=5) OR (`QuestID`=12794 AND `BlobIndex`=3 AND `Idx1`=4) OR (`QuestID`=12794 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=12794 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=12794 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=12794 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=11448 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=11448 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=11426 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=11426 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=11426 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=11290 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=11290 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=11290 AND `BlobIndex`=0 AND `Idx1`=0);

UPDATE `quest_poi_points` SET `VerifiedBuild`=45745 WHERE (`QuestID`=58903 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=58903 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=58903 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=58903 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58903 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=58877 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=58877 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58877 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29866 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29866 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=29866 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=29866 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=29866 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=29866 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=29866 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=29866 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=29866 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=29866 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29866 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=31486 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=31486 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=31486 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=31486 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=31486 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=31486 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=31486 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29865 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29865 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=29865 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=29865 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=29865 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=29865 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=29865 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=29865 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29865 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=31230 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=31230 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=31230 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=31230 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=31230 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=31254 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=31254 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=31254 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=31254 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=31254 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=31254 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=31254 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=31254 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=31254 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=31392 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=31392 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=31392 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=31392 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=31392 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=31392 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=31392 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=31392 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=31392 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=31015 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=31015 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=31015 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=31015 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=31015 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=31015 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29922 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29922 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29922 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29901 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29901 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29901 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29900 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=29900 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29900 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29900 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29899 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29899 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=29899 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=29899 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=29899 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=29899 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=29899 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=29899 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29899 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29898 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=29898 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=29898 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=29898 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29898 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29898 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29890 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29890 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29890 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29893 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29893 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=29893 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=29893 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=29893 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=29893 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=29893 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=29893 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=29893 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=29893 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=29893 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=29893 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=29893 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29893 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29892 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=29892 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=29892 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=29892 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=29892 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=29892 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=29892 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=29892 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=29892 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=29892 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29892 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=29892 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=29892 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29892 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29891 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29891 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=29891 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=29891 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=29891 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=29891 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=29891 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=29891 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=29891 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29891 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=31130 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=31130 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29889 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=29889 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29889 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29889 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29906 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29906 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29906 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29905 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29905 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=29905 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=29905 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=29905 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=29905 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=29905 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=29905 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=29905 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=29905 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=29905 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29905 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29904 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29904 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=29904 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=29904 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=29904 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=29904 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=29904 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=29904 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=29904 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=29904 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=29904 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=29904 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=29904 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29904 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29888 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29888 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29903 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29903 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=29903 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=29903 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=29903 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=29903 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=29903 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=29903 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=29903 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=29903 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=29903 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=29903 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=29903 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29903 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29727 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=29727 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29727 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29727 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29726 AND `Idx1`=9 AND `Idx2`=0) OR (`QuestID`=29726 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=29726 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=29726 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=29726 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=29726 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=29726 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=29726 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=29726 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=29726 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=29726 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=29726 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29726 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29726 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29608 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29608 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29608 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=27133 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=27133 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=27131 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=27131 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=27129 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=27129 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=26728 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=26728 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=12794 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=12794 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=12794 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=12794 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=12794 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=12794 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=11448 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=11448 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=11426 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=11426 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=11426 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=11426 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=11426 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=11426 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=11426 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=11290 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=11290 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=11290 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (58903 /*Defender of Azeroth*/, 32806 /*The King and the Council*/, 31015 /*Your Private Collection*/, 29922 /*In Search of Wisdom*/, 29901 /*Anduin's Decision*/, 29900 /*An Ancient Legend*/, 29899 /*Rest in Peace*/, 29898 /*Sacred Waters*/, 29890 /*Finding Your Center*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(58903, 0, 0, 0, 0, 0, 0, 0, 0, 45745), -- Defender of Azeroth
(32806, 1, 0, 0, 0, 0, 0, 0, 0, 45745), -- The King and the Council
(31015, 0, 0, 0, 0, 0, 0, 0, 0, 45745), -- Your Private Collection
(29922, 0, 0, 0, 0, 0, 0, 0, 0, 45745), -- In Search of Wisdom
(29901, 0, 0, 0, 0, 0, 0, 0, 0, 45745), -- Anduin's Decision
(29900, 0, 0, 0, 0, 0, 0, 0, 0, 45745), -- An Ancient Legend
(29899, 0, 0, 0, 0, 0, 0, 0, 0, 45745), -- Rest in Peace
(29898, 0, 0, 0, 0, 0, 0, 0, 0, 45745), -- Sacred Waters
(29890, 0, 0, 0, 0, 0, 0, 0, 0, 45745); -- Finding Your Center

UPDATE `quest_details` SET `VerifiedBuild`=45745 WHERE `ID` IN (58877, 29866, 31486, 29865, 31392, 31230, 32018, 31254, 29893, 29892, 29891, 31130, 29889, 29906, 29905, 29904, 29888, 29903, 29727);


UPDATE `quest_request_items` SET `VerifiedBuild`=45745 WHERE `ID`=29898;

DELETE FROM `creature_queststarter` WHERE (`id`=63577 AND `quest` IN (32806,31015));
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(63577, 32806, 45745), -- The King and the Council offered Lorewalker Cho
(63577, 31015, 45745); -- Your Private Collection offered Lorewalker Cho

UPDATE `creature_queststarter` SET `VerifiedBuild`=45745 WHERE (`id`=163016 AND `quest` IN (58903,58877)) OR (`id`=59178 AND `quest`=29866) OR (`id`=56707 AND `quest`=31486) OR (`id`=56062 AND `quest`=29865) OR (`id`=55809 AND `quest`=31392) OR (`id`=56348 AND `quest`=31230) OR (`id`=56774 AND `quest`=32018) OR (`id`=63778 AND `quest`=31254) OR (`id`=54960 AND `quest`=29922) OR (`id`=56433 AND `quest`=29900) OR (`id`=56432 AND `quest`=29899) OR (`id`=56434 AND `quest`=29898) OR (`id`=56287 AND `quest`=29890) OR (`id`=61218 AND `quest` IN (29893,29892,29891)) OR (`id`=54961 AND `quest`=31130) OR (`id`=60970 AND `quest` IN (29906,29905,29904,29903)) OR (`id`=56222 AND `quest`=29888) OR (`id`=55283 AND `quest`=29727);


UPDATE `creature_questender` SET `VerifiedBuild`=45745 WHERE (`id`=163016 AND `quest`=58877) OR (`id`=56348 AND `quest`=31230) OR (`id`=63577 AND `quest`=29922) OR (`id`=60970 AND `quest` IN (29901,29904,29903)) OR (`id`=56432 AND `quest` IN (29900,29899)) OR (`id`=56433 AND `quest`=29898) OR (`id`=56434 AND `quest`=29890) OR (`id`=56287 AND `quest` IN (29891,29892,29893)) OR (`id`=61218 AND `quest`=31130) OR (`id`=54961 AND `quest`=29889) OR (`id`=54960 AND `quest` IN (29906,29905)) OR (`id`=55283 AND `quest`=29727) OR (`id`=55284 AND `quest`=29726);


UPDATE `gameobject_queststarter` SET `VerifiedBuild`=45745 WHERE (`id`=209845 AND `quest`=29889);


UPDATE `gameobject_questender` SET `VerifiedBuild`=45745 WHERE (`id`=209845 AND `quest`=29888);

DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (66730,66710,66711,66709,59401,59767,59786,59667,50808,66622,56434,56432,56433,56441,66617,56267,56287,54868,56727,56726,56725,61760,59361,59363,59362,55461,59364,50782,66803,56653,64272)) OR (`DifficultyID`=1 AND `Entry` IN (54960,61599,59357,55284,55282,55283,56227,56222,55333,56737,59058,56585,60970,59666,54959,59084,56592,59159,59060,56701,61611,59085,59169,62994,59348,54557));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(66730, 0, 0, 0, 181, 45745),
(66710, 0, 24, 24, 371, 45745),
(66711, 0, 24, 24, 371, 45745),
(66709, 0, 24, 24, 371, 45745),
(59401, 0, 0, 0, 57, 45745),
(59767, 0, 0, 0, 57, 45745),
(59786, 0, 0, 0, 57, 45745),
(59667, 0, 0, 0, 57, 45745),
(50808, 0, 0, 0, 57, 45745),
(66622, 0, 0, 0, 57, 45745),
(56434, 0, 0, 0, 57, 45745),
(56432, 0, 0, 0, 57, 45745),
(56433, 0, 0, 0, 57, 45745),
(56441, 0, 0, 0, 57, 45745),
(66617, 0, 0, 0, 57, 45745),
(56267, 0, 0, 0, 57, 45745),
(56287, 0, 0, 0, 57, 45745),
(54868, 0, 0, 0, 57, 45745),
(56727, 0, 0, 0, 57, 45745),
(56726, 0, 0, 0, 57, 45745),
(56725, 0, 0, 0, 57, 45745),
(61760, 0, 0, 0, 57, 45745),
(59361, 0, 0, 0, 57, 45745),
(59363, 0, 0, 0, 57, 45745),
(59362, 0, 0, 0, 57, 45745),
(55461, 0, 0, 0, 57, 45745),
(59364, 0, 0, 0, 57, 45745),
(50782, 0, 0, 0, 57, 45745),
(66803, 0, 0, 0, 57, 45745),
(56653, 0, 0, 0, 57, 45745),
(64272, 0, 0, 0, 57, 45745),
(54960, 1, 0, 0, 57, 45745),
(61599, 1, 0, 0, 57, 45745),
(59357, 1, 0, 0, 81, 45745),
(55284, 1, 0, 0, 57, 45745),
(55282, 1, 0, 0, 57, 45745),
(55283, 1, 0, 0, 57, 45745),
(56227, 1, 0, 0, 57, 45745),
(56222, 1, 0, 0, 57, 45745),
(55333, 1, 0, 0, 57, 45745),
(56737, 1, 0, 0, 881, 45745),
(59058, 1, 0, 0, 57, 45745),
(56585, 1, 0, 0, 57, 45745),
(60970, 1, 0, 0, 57, 45745),
(59666, 1, 0, 0, 81, 45745),
(54959, 1, 0, 0, 57, 45745),
(59084, 1, 0, 0, 57, 45745),
(56592, 1, 0, 0, 57, 45745),
(59159, 1, 0, 0, 57, 45745),
(59060, 1, 0, 0, 57, 45745),
(56701, 1, 0, 0, 57, 45745),
(61611, 1, 0, 0, 57, 45745),
(59085, 1, 0, 0, 81, 45745),
(59169, 1, 0, 0, 57, 45745),
(62994, 1, 0, 0, 371, 45745),
(59348, 1, 0, 0, 57, 45745),
(54557, 1, 0, 0, 57, 45745);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=45745 WHERE (`DifficultyID`=0 AND `Entry` IN (149409,161709,161708,161707,161706,163016,161711,64522,63900,63899,59160,61861,65127,55809,66241,56774,66293,63778,56775,55233,59383,63577,66306,56348,56062,59178,56776,55234,63609,63601,59311,59105,59173,56777,59186,56778,56707,56705,56768,56771,56070,59774,59744,59743,59745,59400,59397,59392,59387,65601,65600,59391,59388,59386,59665,59782,59115,56444,59356,59351,62991,55110,60971,54961,64295,64261,55376,63137,64287,56304,54558,63152,67156,54559,61602,56385,55195,56650,56683,56655,56654,62992,56693,62998,56690,59059,61598,61596,56687,56286,58996,56264,56315,55406,55407,66305,59015,58895,56509,56396,61605,55760,55451,55380,55378,55507,55236,59772,55368,55439,55267,56931,56689,56591,61747,61614,55589,55350,55351,63003,64774,55355,55349,59766,63919,59110,55565,62997,68555,55343,59668,64776,63715,59312,56032,64761,63004,59757,59754,64775,59753));


UPDATE `creature_model_info` SET `VerifiedBuild`=45745 WHERE `DisplayID` IN (16816, 90319, 90258, 16812, 90314, 90257, 90303, 46132, 71257, 70807, 63575, 63577, 70436, 94657, 63576, 43566, 16359, 40611, 42288, 44386, 39969, 44904, 43708, 43220, 39632, 39964, 40761, 44493, 44983, 39962, 39597, 40623, 39963, 40680, 39728, 39965, 39961, 40628, 41741, 39598, 39608, 34167, 10828, 27677, 45746, 45315, 45749, 42291, 42290, 40772, 40770, 40769, 42289, 40768, 39725, 17714, 39726, 40932, 39936, 23985, 44486, 14702, 19408, 18722, 41069, 42122, 45422, 43496, 42837, 43497, 40847, 40977, 32813, 44413, 32673, 44980, 44978, 44979, 41041, 42124, 42123, 42226, 45458, 39723, 40718, 42224, 45853, 44165, 45852, 42136, 42143, 44587, 42174, 41931, 25204, 42175, 40335, 40332, 45087, 40106, 2955, 39477, 43557, 39047, 39209, 39179, 45412, 43256, 39957, 41744, 45673, 42225, 40333, 39476, 43311, 38873, 30765, 6296, 30302, 30256, 35802, 46862, 40821, 36578, 41332, 43199, 10830, 43324, 40093, 40848, 41743, 42158, 40558, 38872, 38876, 38870, 42142, 42162, 40820, 41747, 42148, 41739, 45672, 42161, 41736, 45671, 42163, 40585, 45674, 41500, 41738, 42149, 45678, 42160, 40584, 45676, 45679, 27883, 45677, 46050);
UPDATE `creature_model_info` SET `BoundingRadius`=0.351899981498718261, `CombatReach`=1.724999904632568359, `VerifiedBuild`=45745 WHERE `DisplayID`=72265;
UPDATE `creature_model_info` SET `BoundingRadius`=0.347222000360488891, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID` IN (94660, 94663, 94653, 94664, 94661, 40620, 39627, 39621, 45322, 40781, 40652, 41767, 41918, 43501);
UPDATE `creature_model_info` SET `BoundingRadius`=0.236000001430511474, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID`=72255;
UPDATE `creature_model_info` SET `BoundingRadius`=0.382999986410140991, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID` IN (72258, 72261);
UPDATE `creature_model_info` SET `BoundingRadius`=0.347000002861022949, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID` IN (94649, 94648, 72257);
UPDATE `creature_model_info` SET `BoundingRadius`=0.722000002861022949, `CombatReach`=3, `VerifiedBuild`=45745 WHERE `DisplayID`=94651;
UPDATE `creature_model_info` SET `BoundingRadius`=0.421299993991851806, `CombatReach`=1.65000009536743164, `VerifiedBuild`=45745 WHERE `DisplayID`=72259;
UPDATE `creature_model_info` SET `BoundingRadius`=0.305999994277954101, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID` IN (94667, 94647);
UPDATE `creature_model_info` SET `BoundingRadius`=0.44044998288154602, `CombatReach`=1.724999904632568359, `VerifiedBuild`=45745 WHERE `DisplayID`=72260;
UPDATE `creature_model_info` SET `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID`=94654;
UPDATE `creature_model_info` SET `BoundingRadius`=0.372000008821487426, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID`=94656;
UPDATE `creature_model_info` SET `BoundingRadius`=0.706999957561492919, `CombatReach`=0, `VerifiedBuild`=45745 WHERE `DisplayID`=95187;
UPDATE `creature_model_info` SET `BoundingRadius`=0.447349995374679565, `CombatReach`=1.724999904632568359, `VerifiedBuild`=45745 WHERE `DisplayID`=72264;
UPDATE `creature_model_info` SET `BoundingRadius`=0.336600005626678466, `CombatReach`=1.65000009536743164, `VerifiedBuild`=45745 WHERE `DisplayID` IN (72256, 72262);
UPDATE `creature_model_info` SET `BoundingRadius`=0.4375, `CombatReach`=0.625, `VerifiedBuild`=45745 WHERE `DisplayID`=45649;
UPDATE `creature_model_info` SET `BoundingRadius`=0.077500000596046447, `CombatReach`=0.25, `VerifiedBuild`=45745 WHERE `DisplayID`=45617;
UPDATE `creature_model_info` SET `BoundingRadius`=1.156227827072143554, `VerifiedBuild`=45745 WHERE `DisplayID`=45077;
UPDATE `creature_model_info` SET `BoundingRadius`=0.139200001955032348, `CombatReach`=0.200000002980232238, `VerifiedBuild`=45745 WHERE `DisplayID`=39933;
UPDATE `creature_model_info` SET `BoundingRadius`=0.520833015441894531, `CombatReach`=2.25, `VerifiedBuild`=45745 WHERE `DisplayID`=44362;
UPDATE `creature_model_info` SET `BoundingRadius`=1.788750052452087402, `CombatReach`=3.375, `VerifiedBuild`=45745 WHERE `DisplayID`=43104;
UPDATE `creature_model_info` SET `BoundingRadius`=0.270000010728836059, `CombatReach`=1.349999904632568359, `VerifiedBuild`=45745 WHERE `DisplayID`=44414;
UPDATE `creature_model_info` SET `BoundingRadius`=3, `CombatReach`=3, `VerifiedBuild`=45745 WHERE `DisplayID`=19329;
UPDATE `creature_model_info` SET `BoundingRadius`=0.534159481525421142, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID` IN (41749, 42153);
UPDATE `creature_model_info` SET `BoundingRadius`=0.48074352741241455, `CombatReach`=1.349999904632568359, `VerifiedBuild`=45745 WHERE `DisplayID`=42144;
UPDATE `creature_model_info` SET `BoundingRadius`=1.335313320159912109, `CombatReach`=1.65000009536743164, `VerifiedBuild`=45745 WHERE `DisplayID`=41070;
UPDATE `creature_model_info` SET `BoundingRadius`=1.61399996280670166, `CombatReach`=4.40000009536743164, `VerifiedBuild`=45745 WHERE `DisplayID`=44255;
UPDATE `creature_model_info` SET `BoundingRadius`=0.890208840370178222, `VerifiedBuild`=45745 WHERE `DisplayID`=39479;
UPDATE `creature_model_info` SET `BoundingRadius`=0.349999994039535522, `CombatReach`=1, `VerifiedBuild`=45745 WHERE `DisplayID`=41001;
UPDATE `creature_model_info` SET `BoundingRadius`=0.75, `CombatReach`=0.75, `VerifiedBuild`=45745 WHERE `DisplayID`=43194;
UPDATE `creature_model_info` SET `BoundingRadius`=0.716146051883697509, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID`=42233;

DELETE FROM `creature_template_spell` WHERE (`CreatureID`=56268 AND `Index`=0);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(56268, 0, 105115, 45745); -- Meditating

UPDATE `gossip_menu_option` SET `VerifiedBuild`=45745 WHERE (`OptionID`=0 AND `MenuID` IN (13538,13271,13272,13128,14280,13274,13254,13273,13265)) OR (`OptionID`=1 AND `MenuID` IN (13283,13273,13531,13271,13374,13272,13274,13538)) OR (`OptionID`=2 AND `MenuID` IN (13531,14280,13273,13271,13274,13272)) OR (`OptionID`=3 AND `MenuID` IN (13274,13272,13271,13273,14280));
UPDATE `gossip_menu_option` SET `OptionText`='Reporting for duty.', `OptionBroadcastTextId`=79334, `VerifiedBuild`=45745 WHERE (`MenuID`=25082 AND `OptionID`=0); -- OptionBroadcastTextID: 79334 - 79334 - 166790 - 166790 - 179257 - 179257 - 187262 - 187262 - 190672 - 190672
UPDATE `gossip_menu_option` SET `ActionMenuID`=13232, `VerifiedBuild`=45745 WHERE (`MenuID`=13531 AND `OptionID`=3); -- OptionBroadcastTextID: 54862 - 54862
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2583, `VerifiedBuild`=45745 WHERE (`MenuID`=13283 AND `OptionID`=0) OR (`MenuID`=13374 AND `OptionID`=2); -- OptionBroadcastTextID: 2583 - 2583 - 6399 - 6399 - 7142 - 7142 - 9992 - 9992 - 14967 - 14967
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=54399, `VerifiedBuild`=45745 WHERE (`MenuID`=13531 AND `OptionID`=0); -- OptionBroadcastTextID: 54399 - 54399 - 54859 - 54859


UPDATE `creature_template` SET `npcflag`=81 WHERE `entry`=65127; -- Lai the Spellpaw
UPDATE `creature_template` SET `gossip_menu_id`=13374 WHERE `entry`=55809; -- Peiji Goldendraft
UPDATE `creature_template` SET `gossip_menu_id`=13299 WHERE `entry`=56774; -- Bolo
UPDATE `creature_template` SET `gossip_menu_id`=13298 WHERE `entry`=56775; -- Lee
UPDATE `creature_template` SET `gossip_menu_id`=14309 WHERE `entry`=63577; -- Lorewalker Cho
UPDATE `creature_template` SET `unit_flags`=2097152 WHERE `entry`=66306; -- Blacktalon Agent
UPDATE `creature_template` SET `npcflag`=1 WHERE `entry`=56348; -- Toya

UPDATE `creature_template` SET `unit_flags3`=1048576 WHERE `entry`=55234; -- An Windfur
UPDATE `creature_template` SET `minlevel`=35 WHERE `entry`=59105; -- Wandering Greenback
UPDATE `creature_template` SET `gossip_menu_id`=13283 WHERE `entry`=56707; -- Chin
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags3`=8388608 WHERE `entry`=56771; -- Guardian of the Dawn
UPDATE `creature_template` SET `minlevel`=35 WHERE `entry`=56070; -- Silkwood Stalker
UPDATE `creature_template` SET  `minlevel`=60 WHERE `entry`=66730; -- Hyuna of the Shrines
UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=66710; -- Fangor
UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=66711; -- Skyshaper
UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=66709; -- Dor the Wall
UPDATE `creature_template` SET `minlevel`=35 WHERE `entry`=59401; -- Surveyor Sawa
UPDATE `creature_template` SET `minlevel`=35 WHERE `entry`=59400; -- Kitemaster Inga
UPDATE `creature_template` SET `minlevel`=35 WHERE `entry`=59397; -- Taskmaster Emi
UPDATE `creature_template` SET `minlevel`=35 WHERE `entry`=59392; -- Kitemaster Shoku
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=59767; -- Hollow Bloom
UPDATE `creature_template` SET `faction`=2156 WHERE `entry`=59786; -- Lotus Crane
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=190 WHERE `entry`=59667; -- Painted Carp
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=1500, `unit_flags`=32832, `unit_flags2`=2099200 WHERE `entry`=50808; -- Urobi the Walker
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=66622; -- Rakira
UPDATE `creature_template` SET `gossip_menu_id`=13254, `minlevel`=35, `faction`=12, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=56434; -- Anduin Wrynn
UPDATE `creature_template` SET `gossip_menu_id`=13255, `minlevel`=35, `npcflag`=3, `unit_flags`=33536, `unit_flags2`=34816 WHERE `entry`=56432; -- Ren Whitepaw
UPDATE `creature_template` SET `gossip_menu_id`=13256, `minlevel`=35, `maxlevel`=35, `npcflag`=3, `unit_flags`=33024, `unit_flags2`=34816 WHERE `entry`=56433; -- Lina Whitepaw
UPDATE `creature_template` SET `minlevel`=35 WHERE `entry`=56441; -- Shade of Ling Heartfist
UPDATE `creature_template` SET `faction`=16, `BaseAttackTime`=2000, `unit_flags`=67141696, `unit_flags2`=2048, `unit_flags3`=131072 WHERE `entry`=66617; -- Ro'shen
UPDATE `creature_template` SET `minlevel`=35 WHERE `entry`=56444; -- Tortured Spirit
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=59351; -- Emerald Fenfly
UPDATE `creature_template` SET `minlevel`=35 WHERE `entry`=55110; -- Slingtail Stickypaw
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags`=32784, `unit_flags3`=8388608 WHERE `entry`=60971; -- Furious Pearlfin Poolwatcher
UPDATE `creature_template` SET `minlevel`=35, `npcflag`=3, `unit_flags`=33024, `unit_flags2`=34816 WHERE `entry`=56267; -- Lorewalker Cho
UPDATE `creature_template` SET `gossip_menu_id`=14402, `minlevel`=35, `maxlevel`=35, `npcflag`=3, `unit_flags`=33024, `unit_flags2`=2048 WHERE `entry`=56287; -- Lorewalker Cho
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=54961; -- Lorewalker Cho
UPDATE `creature_template` SET `minlevel`=35, `unit_flags`=32768 WHERE `entry`=56304; -- Mist Creeper
UPDATE `creature_template` SET `minlevel`=35, `unit_flags`=67141632, `dynamicflags`=64 WHERE `entry`=54558; -- Bog Crocolisk
UPDATE `creature_template` SET `minlevel`=35 WHERE `entry`=54559; -- Glittering Amberfly
UPDATE `creature_template` SET `unit_flags3`=1 WHERE `entry`=56385; -- Skyfire Marine
UPDATE `creature_template` SET `minlevel`=35, `faction`=2559, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=54868; -- Chief Gukgut
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=56727; -- Pearlfin Tidestriker
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=2393, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry` IN (56726, 59363); -- Pearlfin Mystic
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=2393, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry` IN (56725, 59361); -- Pearlfin Watershaper
UPDATE `creature_template` SET `minlevel`=35, `faction`=2559, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=61760; -- Slingtail Recruit
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=2393, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=59362; -- Pearlfin Tidestriker
UPDATE `creature_template` SET `minlevel`=35, `faction`=2381, `speed_walk`=0.5, `speed_run`=0.571428596973419189, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=55461; -- Grookin Reinforcement
UPDATE `creature_template` SET `minlevel`=35 WHERE `entry`=55195; -- Slingtail Fishripper
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=2393, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=59364; -- Pearlfin Waveguard
UPDATE `creature_template` SET `BaseAttackTime`=1500, `unit_flags`=32832, `unit_flags2`=2099200 WHERE `entry`=50782; -- Sarnak
UPDATE `creature_template` SET `BaseAttackTime`=2000, `unit_flags2`=34816, `unit_flags3`=16777217 WHERE `entry`=66803; -- Ruukti Shadow Stalker
UPDATE `creature_template` SET `minlevel`=35, `faction`=16, `speed_run`=1.142857193946838378, `unit_flags`=67141632, `unit_flags3`=131072 WHERE `entry`=56653; -- Wild Prowler
UPDATE `creature_template` SET `minlevel`=35 WHERE `entry`=56650; -- Stoneskin Basilisk
UPDATE `creature_template` SET `minlevel`=35, `unit_flags`=67141632, `unit_flags3`=131072 WHERE `entry`=56683; -- Wild Stalker
UPDATE `creature_template` SET `minlevel`=35 WHERE `entry`=56655; -- Wild Huntress
UPDATE `creature_template` SET `minlevel`=35 WHERE `entry`=56654; -- Wild Stalker

UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=33556480, `unit_flags3`=0 WHERE `entry`=56264; -- Grookin Whomper
UPDATE `creature_template` SET `unit_flags2`=2048 WHERE `entry`=56315; -- Jinyu Captive
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=66305; -- Generic Bunny - PRK (Gigantic AOI)
UPDATE `creature_template` SET `minlevel`=35 WHERE `entry`=56396; -- Hungry Bloodtalon
UPDATE `creature_template` SET `gossip_menu_id`=14399, `npcflag`=1, `unit_flags`=294912, `unit_flags2`=2048 WHERE `entry`=64272; -- Jade Warrior Statue
UPDATE `creature_template` SET `minlevel`=35, `unit_flags`=32768 WHERE `entry`=55236; -- Jade Guardian
UPDATE `creature_template` SET `minlevel`=35 WHERE `entry`=59772; -- Smoky Porcupine
UPDATE `creature_template` SET `faction`=35, `npcflag`=1 WHERE `entry`=55368; -- Widow Greenpaw
UPDATE `creature_template` SET `minlevel`=35 WHERE `entry`=55439; -- Jade Statue
UPDATE `creature_template` SET `npcflag`=1, `unit_flags3`=1048576 WHERE `entry` IN (56591, 56592); -- Pearlfin Aqualyte
UPDATE `creature_template` SET `minlevel`=35 WHERE `entry`=61747; -- Jeweled Macaw
UPDATE `creature_template` SET `minlevel`=35, `unit_flags2`=1 WHERE `entry`=55589; -- Ambushing Hozen
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=55350; -- Sully SW Credit
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=55351; -- Sully N Credit
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=55355; -- Rell Nightwind
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=55349; -- Sully SE Credit
UPDATE `creature_template` SET  `minlevel`=35 WHERE `entry`=55343; -- Amber Kearnen
UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=54960; -- Elder Lusshan
UPDATE `creature_template` SET `gossip_menu_id`=13122 WHERE `entry`=55284; -- Little Lu
UPDATE `creature_template` SET `gossip_menu_id`=13265 WHERE `entry`=56227; -- Mishka
UPDATE `creature_template` SET `gossip_menu_id`=13116 WHERE `entry`=55333; -- Rell Nightwind
UPDATE `creature_template` SET `gossip_menu_id`=13538, `minlevel`=60, `maxlevel`=60 WHERE `entry`=56737; -- Ut-Nam

UPDATE `creature_template` SET `minlevel`=35, `npcflag`=1, `unit_flags3`=1048576 WHERE `entry`=56585; -- Pearlfin Aqualyte
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=60970; -- Admiral Taylor
UPDATE `creature_template` SET `unit_flags3`=1048576 WHERE `entry`=54959; -- Pearlfin Aqualyte
UPDATE `creature_template` SET `minlevel`=35, `unit_flags`=32768 WHERE `entry`=59084; -- Pearly Tortoise
UPDATE `creature_template` SET `unit_flags`=33024 WHERE `entry`=59159; -- Pearlfin Mystic
UPDATE `creature_template` SET `unit_flags3`=1048576 WHERE `entry`=56701; -- Pearlfin Poolwatcher
UPDATE `creature_template` SET `gossip_menu_id`=13541, `unit_flags`=32768 WHERE `entry`=59348; -- Pearlfin Villager
UPDATE `creature_template` SET `minlevel`=35 WHERE `entry`=54557; -- Amberglass Crab


UPDATE `quest_template` SET `VerifiedBuild`=45745 WHERE `ID` IN (58903, 58877);
UPDATE `quest_template` SET `RewardBonusMoney`=180, `VerifiedBuild`=45745 WHERE `ID`=49918; -- Gorilla Gorge
UPDATE `quest_template` SET `RewardBonusMoney`=180, `VerifiedBuild`=45745 WHERE `ID`=49315; -- Dreadpearl Collusion
UPDATE `quest_template` SET `RewardBonusMoney`=180, `VerifiedBuild`=45745 WHERE `ID`=50178; -- Trouble in the Rootway
UPDATE `quest_template` SET `RewardBonusMoney`=180 WHERE `ID` IN (43241, 39371, 38372, 37779, 37466);
UPDATE `quest_template` SET `RewardBonusMoney`=390, `VerifiedBuild`=45745 WHERE `ID`=29881; -- The Perfect Color
UPDATE `quest_template` SET `RewardBonusMoney`=390, `VerifiedBuild`=45745 WHERE `ID`=29866; -- The Threads that Stick
UPDATE `quest_template` SET `RewardBonusMoney`=50, `VerifiedBuild`=45745 WHERE `ID`=31486; -- Everything I Know About Cooking
UPDATE `quest_template` SET `RewardBonusMoney`=390, `VerifiedBuild`=45745 WHERE `ID`=29865; -- The Silkwood Road
UPDATE `quest_template` SET `RewardBonusMoney`=390 WHERE `ID`=30814;
UPDATE `quest_template` SET `RewardBonusMoney`=390, `VerifiedBuild`=45745 WHERE `ID`=31230; -- Welcome to Dawn's Blossom
UPDATE `quest_template` SET `RewardBonusMoney`=50, `VerifiedBuild`=45745 WHERE `ID`=32018; -- His Name Was... Stormstout
UPDATE `quest_template` SET `RewardBonusMoney`=50, `VerifiedBuild`=45745 WHERE `ID`=31254; -- The Road to Kun-Lai
UPDATE `quest_template` SET `RewardBonusMoney`=290, `VerifiedBuild`=45745 WHERE `ID`=31392; -- Temple of the White Tiger
UPDATE `quest_template` SET `RewardBonusMoney`=390, `VerifiedBuild`=45745 WHERE `ID`=31001; -- Falling Down
UPDATE `quest_template` SET `RewardBonusMoney`=775, `VerifiedBuild`=45745 WHERE `ID`=32806; -- The King and the Council
UPDATE `quest_template` SET `RewardBonusMoney`=50, `VerifiedBuild`=45745 WHERE `ID`=31015; -- Your Private Collection
UPDATE `quest_template` SET `RewardBonusMoney`=200, `VerifiedBuild`=45745 WHERE `ID`=29922; -- In Search of Wisdom
UPDATE `quest_template` SET `RewardBonusMoney`=390, `VerifiedBuild`=45745 WHERE `ID`=29901; -- Anduin's Decision
UPDATE `quest_template` SET `RewardBonusMoney`=380, `Flags`=3145736, `VerifiedBuild`=45745 WHERE `ID`=29900; -- An Ancient Legend
UPDATE `quest_template` SET `RewardBonusMoney`=380, `VerifiedBuild`=45745 WHERE `ID`=29899; -- Rest in Peace
UPDATE `quest_template` SET `RewardBonusMoney`=380, `VerifiedBuild`=45745 WHERE `ID`=29898; -- Sacred Waters
UPDATE `quest_template` SET `RewardBonusMoney`=380, `VerifiedBuild`=45745 WHERE `ID`=29890; -- Finding Your Center
UPDATE `quest_template` SET `RewardBonusMoney`=370, `VerifiedBuild`=45745 WHERE `ID`=29893; -- Hue
UPDATE `quest_template` SET `RewardBonusMoney`=370, `VerifiedBuild`=45745 WHERE `ID`=29892; -- Body
UPDATE `quest_template` SET `RewardBonusMoney`=370, `VerifiedBuild`=45745 WHERE `ID`=29891; -- Potency
UPDATE `quest_template` SET `RewardBonusMoney`=280, `VerifiedBuild`=45745 WHERE `ID`=31130; -- A Visit with Lorewalker Cho
UPDATE `quest_template` SET `RewardBonusMoney`=180, `VerifiedBuild`=45745 WHERE `ID`=29889; -- Borrowed Brew
UPDATE `quest_template` SET `RewardBonusMoney`=450, `Flags`=7340040, `VerifiedBuild`=45745 WHERE `ID`=29906; -- Carp Diem
UPDATE `quest_template` SET `RewardBonusMoney`=450, `VerifiedBuild`=45745 WHERE `ID`=29905; -- Let Them Burn
UPDATE `quest_template` SET `RewardBonusMoney`=360, `VerifiedBuild`=45745 WHERE `ID`=29904; -- Bigger Fish to Fry
UPDATE `quest_template` SET `RewardBonusMoney`=180, `VerifiedBuild`=45745 WHERE `ID`=29888; -- Seek Out the Lorewalker
UPDATE `quest_template` SET `RewardBonusMoney`=360, `VerifiedBuild`=45745 WHERE `ID`=29903; -- A Perfect Match
UPDATE `quest_template` SET `RewardBonusMoney`=525, `VerifiedBuild`=45745 WHERE `ID`=29727; -- SI:7 Report: Take No Prisoners


UPDATE `quest_objectives` SET `Description`='', `VerifiedBuild`=45745 WHERE `ID`=395091; -- 395091
UPDATE `quest_objectives` SET `VerifiedBuild`=45745 WHERE `ID` IN (395160, 395089, 395159, 395060, 296278, 296277, 296249, 296248, 295615, 338798, 312157, 312156, 294232, 294231, 294230, 294229, 294228, 294227, 296333, 296331, 296329, 296327, 296326, 296325, 253330, 264624, 268634, 264685, 268351, 268350, 268349, 268406, 267926, 268047, 267869, 253317, 253316, 253315, 253314, 252946, 252980, 253027, 253026, 268151, 268150, 268149, 253726, 264495);
UPDATE `quest_objectives` SET `Description`='Speak with Brewmaster Boof', `VerifiedBuild`=45745 WHERE `ID`=269370; -- 269370
UPDATE `quest_objectives` SET `Description`='Speak with the Highroad Grummle', `VerifiedBuild`=45745 WHERE `ID`=269369; -- 269369
UPDATE `quest_objectives` SET `Description`='\"Blood in the Snow\" scenario complete', `VerifiedBuild`=45745 WHERE `ID`=270442; -- 270442
UPDATE `quest_objectives` SET `Description`='Speak to Kitemaster Ut-Nam', `VerifiedBuild`=45745 WHERE `ID`=254213; -- 254213
UPDATE `quest_objectives` SET `Description`='Speak to Anduin', `VerifiedBuild`=45745 WHERE `ID`=253525; -- 253525
UPDATE `quest_objectives` SET `Description`='Waters of Restorative Mind', `VerifiedBuild`=45745 WHERE `ID`=253313; -- 253313
UPDATE `quest_objectives` SET `Description`='Waters of Restorative Body', `VerifiedBuild`=45745 WHERE `ID`=253312; -- 253312
UPDATE `quest_objectives` SET `Description`='Meditated at the pagoda', `VerifiedBuild`=45745 WHERE `ID`=252925; -- 252925
UPDATE `quest_objectives` SET `Description`='Tasted the mouthwatering brew', `VerifiedBuild`=45745 WHERE `ID`=252936; -- 252936
UPDATE `quest_objectives` SET `Description`='Grookin Reinforcement or Slingtail Recruit', `VerifiedBuild`=45745 WHERE `ID`=253724; -- 253724
UPDATE `quest_objectives` SET `Description`='Bamboo Wilds wildlife', `VerifiedBuild`=45745 WHERE `ID`=253666; -- 253666
UPDATE `quest_objectives` SET `Description`='Pearlfin Aqualytes equipped', `VerifiedBuild`=45745 WHERE `ID`=253665; -- 253665


UPDATE `quest_visual_effect` SET `VerifiedBuild`=45745 WHERE (`Index`=0 AND `ID` IN (395091,395159,294231,268351,268350,268349,269370,269369,267926,270442,268047,254213,253525,267869,253315,253314,253313,253312,252946,268151,268150,268149,252936,253665)) OR (`Index`=1 AND `ID` IN (267926,268151,268150,268149,253665)) OR (`Index`=3 AND `ID`=253665) OR (`Index`=2 AND `ID`=253665);


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=45745 WHERE (`QuestID`=58903 AND `Idx`=0);


UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (63676, 54961, 56267, 56269, 56287, 64492, 61218, 63577); -- Lorewalker Cho
UPDATE `creature_template` SET `VerifiedBuild`=45745 WHERE `entry` IN (14539, 14540, 14541, 14558, 63778, 20222, 59386, 59387, 32640, 63919, 39379, 19280, 171246, 356, 358, 42859, 62992, 63003, 6075, 18363, 18364, 18365, 18377, 74228, 18378, 18379, 18380, 55267, 56385, 35169, 31852, 95577, 34155, 55378, 40891, 55439, 149270, 34238, 71100, 149296, 149371, 65600, 65601, 56672, 56674, 149404, 149408, 149409, 161706, 161707, 161708, 161709, 161711, 56768, 4271, 56771, 4272, 32205, 51195, 32207, 46754, 46755, 4311, 149522, 7707, 55760, 20029, 20030, 163016, 32336, 3296, 51346, 11154, 11156, 64774);
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=14542; -- Great White Kodo
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=14543; -- Swift Olive Raptor
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=14544; -- Swift Orange Raptor
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=14545; -- Swift Blue Raptor
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=14549; -- Great Brown Kodo
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=14550; -- Great Gray Kodo
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (63719, 56348); -- Toya
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59311; -- Veridian Carp
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=20217; -- Purple Hawkstrider
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=20223; -- Swift Purple Hawkstrider
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=20224; -- Swift Green Hawkstrider
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=54868; -- Chief Gukgut
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=67156; -- Grain Gears Bunny
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (59361, 56725); -- Pearlfin Watershaper
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (59362, 56727); -- Pearlfin Tidestriker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (59363, 56726); -- Pearlfin Mystic
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (59364, 56728); -- Pearlfin Waveguard
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=61602; -- Glasseye Turtle
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=61614; -- Bubblemaker Ashji
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59383; -- Old Man Misteye
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56032; -- General Rik-Rik Jr
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.699999988079071044, `VerifiedBuild`=45745 WHERE `entry`=59388; -- Jade Cart
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59391; -- Foreman Raike
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59392; -- Kitemaster Shoku
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59397; -- Taskmaster Emi
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59400; -- Kitemaster Inga
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59401; -- Surveyor Sawa
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56062; -- Tzu the Ironbelly
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56070; -- Silkwood Stalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=14744; -- Frost Wolf Howler
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=63899; -- Widing Toortle
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=63900; -- Toortle Wider
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=39380; -- Shin Stonepillar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=19281; -- Swift Pink Hawkstrider
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.800000011920928955, `VerifiedBuild`=45745 WHERE `entry`=61760; -- Slingtail Recruit
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=66241; -- Hong the Kindly
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=65127; -- Lai the Spellpaw
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=66293; -- Albino Riding Crane
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=66305; -- Generic Bunny - PRK (Gigantic AOI)
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=66306; -- Blacktalon Agent
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (56264, 55411, 55473, 55482, 55484, 55485, 55496, 55505); -- Grookin Whomper
UPDATE `creature_template` SET `femaleName`='', `IconName`='wildpet', `movementId`=100, `VerifiedBuild`=45745 WHERE `entry`=68555; -- Ka'wi the Gorger
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56268; -- Meditating
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56270; -- Beam Target Bunny
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=61861; -- Eyan Gerdzu
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56286; -- Enthralled Forest Prowler
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (62997, 59668); -- Jungle Darter
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56304; -- Mist Creeper
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56310; -- Mist Horror
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59665; -- Crested Bandit Crane
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56315; -- Jinyu Captive
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59667; -- Painted Carp
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=55233; -- Lin Windfur
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=55234; -- An Windfur
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=55236; -- Jade Guardian
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59743; -- Silverhorn Stag
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.800000011920928955, `VerifiedBuild`=45745 WHERE `entry`=59744; -- Silverhorn Yearling
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.60000002384185791, `VerifiedBuild`=45745 WHERE `entry`=59745; -- Silverhorn Calf
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56396; -- Hungry Bloodtalon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=32944; -- Red Dragonhawk
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59753; -- Golden Tiger
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.5, `VerifiedBuild`=45745 WHERE `entry`=59754; -- Mottled Caterpillar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (55286, 55337, 56488, 55374); -- Sully "The Pickle" McLeary
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59757; -- Duskstalker
UPDATE `creature_template` SET `femaleName`='', `type`=4, `VerifiedBuild`=45745 WHERE `entry` IN (59766, 59767); -- Hollow Bloom
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.119047999382019042, `VerifiedBuild`=45745 WHERE `entry`=55299; -- Raccoon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59772; -- Smoky Porcupine
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59774; -- Ivory Starling
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=65360; -- Dream Brew Bunny
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=31854; -- Ice Mammoth
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=31857; -- Grand Ice Mammoth
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59782; -- Cypress Condor
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (56432, 56486); -- Ren Whitepaw
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (56433, 56487); -- Lina Whitepaw
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (56434, 56461, 56485); -- Anduin Wrynn
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=63137; -- Tree Trimming Effects Bunny
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59786; -- Lotus Crane
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (56441, 56442); -- Shade of Ling Heartfist
UPDATE `creature_template` SET `femaleName`='', `type_flags`=0, `VerifiedBuild`=45745 WHERE `entry` IN (64261, 64262); -- Exotic Pet Crane
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=63152; -- Painting Effects Bunny
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (55335, 55355, 55373, 55407); -- Rell Nightwind
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=64272; -- Jade Warrior Statue
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (55338, 55354, 55371, 55406); -- Little Lu
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (55343, 55353, 55372, 55405, 54620); -- Amber Kearnen
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (55344, 55589); -- Ambushing Hozen
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56463; -- Freed Spirit
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=64285; -- Lorewalker Cho's Favorite Gong
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=55349; -- Sully SE Credit
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=55350; -- Sully SW Credit
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=64287; -- Summer
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=55351; -- Sully N Credit
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=64295; -- Autumn
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (55368, 55381); -- Widow Greenpaw
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=55376; -- Alchemy Bunny
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=34156; -- Venomhide Ravasaur
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=55380; -- Suspicious Jade Statue
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56509; -- Alliance Camp
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=15, `VerifiedBuild`=45745 WHERE `entry`=55408; -- Sully "The Pickle" McLeary
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=55410; -- Sully's Bomb Barrel
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=66617; -- Ro'shen
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=55451; -- Shin
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=66622; -- Rakira
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=55454; -- General Rik-Rik
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=55461; -- Grookin Reinforcement
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (55498, 55499, 55501); -- Hellscream's Vanguard
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.200000002980232238, `VerifiedBuild`=45745 WHERE `entry`=55507; -- Animated Statuette
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56650; -- Stoneskin Basilisk
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56653; -- Wild Prowler
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (56654, 56683); -- Wild Stalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56655; -- Wild Huntress
UPDATE `creature_template` SET `femaleName`='', `movementId`=121, `VerifiedBuild`=45745 WHERE `entry`=66709; -- Dor the Wall
UPDATE `creature_template` SET `femaleName`='', `movementId`=121, `VerifiedBuild`=45745 WHERE `entry`=66710; -- Fangor
UPDATE `creature_template` SET `femaleName`='', `movementId`=121, `VerifiedBuild`=45745 WHERE `entry`=66711; -- Skyshaper
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=58895; -- Sungraze Behemoth
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=55550; -- Lurking Tiger
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56670; -- Watershaper Adept
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56673; -- Waveguard Adept
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=66730; -- Hyuna of the Shrines
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=55565; -- Crane Hunter
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=64522; -- Nik Gi
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56705; -- Singegruff
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56707; -- Chin
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.119047999382019042, `VerifiedBuild`=45745 WHERE `entry`=55611; -- Socks
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=66803; -- Ruukti Shadow Stalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=58996; -- Flies in Fort Grookin
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56774; -- Bolo
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56775; -- Lee
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56776; -- Pan
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=14331; -- Red Skeletal Warhorse
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56777; -- Ni Gentlepaw
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56778; -- Yol
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59015; -- Dynamite Fishing Bunny ZTO/JLR
UPDATE `creature_template` SET `femaleName`='', `movementId`=140, `VerifiedBuild`=45745 WHERE `entry`=71313; -- Armored Red Dragonhawk
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=54558; -- Bog Crocolisk
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=12149; -- Gray Kodo
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=7708; -- Violet Raptor
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59105; -- Wandering Greenback
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.100000001490116119, `VerifiedBuild`=45745 WHERE `entry`=59110; -- Fox Pup
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (63601, 63609); -- Curious Cub
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59160; -- Master Windfur
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=55809; -- Peiji Goldendraft
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=56931; -- Bamboo Tree Branch
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=60286; -- Sha's Corruption
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59173; -- Kai Wanderbrew
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59178; -- Lo Wanderbrew
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=11153; -- Red Skeletal Horse
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=11155; -- Brown Skeletal Horse
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=59186; -- Keg Runner Lee
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=64775; -- Masked Tanuki
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=64776; -- Masked Tanuki Pup


UPDATE `creature_template_model` SET `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `CreatureID` IN (171246,149409,161707,161709,163016,161706,161711,161708,31852,31854,32207,32205,32336,32640,31857,32944,34155,356,34156,34238,35169,20223,20224,20217,19280,20029,20030,19281,18379,18380,18378,18377,18365,18364,18363,71313,14541,14540,14549,14550,14542,14558,14544,14543,14545,14744,14331,12149,11156,11155,11154,11153,7708,7707,6075,4272,4271,20222,358,64522,63899,63900,59160,65127,61861,55809,63778,55233,66293,66241,56775,56774,63719,63676,59383,66306,63609,63601,63577,59178,56776,56348,56062,55234,59311,59105,59186,59173,56778,56777,56768,56707,56705,56771,56070,66730,66711,66710,66709,59774,59745,59744,59743,59401,59400,59397,59392,65601,65600,59387,59391,59388,59386,59665,59767,59786,59667,50808,66622,59782,56488,54620,56487,56486,56485,56442,60286,56463,56461,56434,56433,56432,56441,66617,64285,56268,56270,56269,56267,64492,56287,56310,64262,61218,54961,65360,64295,64261,63137,55376,64287,56304,54558,67156,63152,61602,56385,95577,61760,59364,59363,59362,59361,55461,56728,56727,56726,56725,54868,50782,56670,66803,56673,56653,56674,56650,56683,56655,56654,56672,62992,58996,56315,56286,56264,55498,55505,55501,55499,55482,55473,55410,55496,55485,55484,55411,55408,66305,55407,55406,55405,58895,56396,59015,56509,55381,55760,55451,55380,55378,55371,55611,55374,55373,55372,64272,59772,55507,55368,55267,56931,55439,55236,61614,55589,55350,55299,55351,55550,64774,63003,55355,55349,55286,55354,55353,59110,55565,63919,59766,55454,55344,62997,68555,55343,55335,55338,55337,56032,59754,64775,64776,59757,59668,59753)) OR (`Idx`=3 AND `CreatureID` IN (149409,161711,59767,56463,56385,59766)) OR (`Idx`=2 AND `CreatureID` IN (149409,161711,59767,59667,56463,56385,56264,55505,55473,55485,55484,55411,55760,55439,59766)) OR (`Idx`=1 AND `CreatureID` IN (149409,161711,66306,59311,56768,56771,59744,65601,65600,59387,59386,59767,59667,60286,56463,56268,56270,64262,65360,64261,63137,55376,67156,63152,56385,66803,62992,58996,56315,56264,55505,55499,55482,55473,55496,55485,55484,55411,66305,59015,56509,55760,55378,59772,55267,56931,55439,64774,63919,59766,59753)) OR (`Idx`=37 AND `CreatureID`=161711) OR (`Idx`=36 AND `CreatureID`=161711) OR (`Idx`=35 AND `CreatureID`=161711) OR (`Idx`=34 AND `CreatureID`=161711) OR (`Idx`=33 AND `CreatureID`=161711) OR (`Idx`=32 AND `CreatureID`=161711) OR (`Idx`=31 AND `CreatureID`=161711) OR (`Idx`=30 AND `CreatureID`=161711) OR (`Idx`=29 AND `CreatureID`=161711) OR (`Idx`=28 AND `CreatureID`=161711) OR (`Idx`=27 AND `CreatureID`=161711) OR (`Idx`=26 AND `CreatureID`=161711) OR (`Idx`=25 AND `CreatureID`=161711) OR (`Idx`=24 AND `CreatureID`=161711) OR (`Idx`=23 AND `CreatureID`=161711) OR (`Idx`=22 AND `CreatureID`=161711) OR (`Idx`=21 AND `CreatureID`=161711) OR (`Idx`=20 AND `CreatureID`=161711) OR (`Idx`=19 AND `CreatureID`=161711) OR (`Idx`=18 AND `CreatureID`=161711) OR (`Idx`=17 AND `CreatureID`=161711) OR (`Idx`=16 AND `CreatureID`=161711) OR (`Idx`=15 AND `CreatureID`=161711) OR (`Idx`=14 AND `CreatureID`=161711) OR (`Idx`=13 AND `CreatureID`=161711) OR (`Idx`=12 AND `CreatureID`=161711) OR (`Idx`=11 AND `CreatureID`=161711) OR (`Idx`=10 AND `CreatureID`=161711) OR (`Idx`=9 AND `CreatureID`=161711) OR (`Idx`=8 AND `CreatureID`=161711) OR (`Idx`=7 AND `CreatureID`=161711) OR (`Idx`=6 AND `CreatureID`=161711) OR (`Idx`=5 AND `CreatureID`=161711) OR (`Idx`=4 AND `CreatureID`=161711);


UPDATE `creature_questitem` SET `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `CreatureEntry` IN (42859,56310,54558,56396));


UPDATE `gameobject_template` SET `VerifiedBuild`=45745 WHERE `entry` IN (204657, 204656, 204193, 204665, 203471, 204179, 204188, 204186, 204184, 206737, 204176, 204189, 204177, 152614, 281340, 341833, 202143, 202144, 202141, 202142, 202190, 202189, 202188, 212620, 212619, 212618, 212617, 212616, 212615, 214414, 214570, 216302, 214569, 214416, 214425, 214410, 214411, 212570, 212561, 212592, 212589, 212579, 212578, 212576, 212572, 212571, 212569, 212563, 212562, 212560, 212559, 212593, 212591, 212590, 212588, 212586, 212585, 212584, 212583, 212568, 212567, 212566, 212565, 212564, 278492, 210953, 215799, 210941, 210940, 210939, 209951, 209833, 213446, 213841, 213840, 213839, 213838, 211964, 210883, 210882, 209887, 213190, 211660, 209847, 212169, 214565, 214564, 210859, 209845, 211661, 211659, 213191, 209853, 209852, 209851, 209850, 210892, 175544, 210674, 211795, 210891, 209586, 209857, 211797, 214421, 214419, 214418, 212284, 212283, 209621, 212404, 209903, 209870, 209328, 211476, 210806);
UPDATE `gameobject_template` SET `name`='The Lich King', `VerifiedBuild`=45745 WHERE `entry`=341816; -- El Rey Exánime
UPDATE `gameobject_template` SET `name`='Kitchen Table', `VerifiedBuild`=45745 WHERE `entry`=212614; -- Table
UPDATE `gameobject_template` SET `type`=8, `Data0`=5705760, `Data2`=5614196, `Data4`=5705884, `VerifiedBuild`=45745 WHERE `entry`=212582; -- Fireplace
UPDATE `gameobject_template` SET `type`=8, `Data0`=5705760, `Data2`=5614196, `Data4`=5705884, `VerifiedBuild`=45745 WHERE `entry`=212594; -- Stove
UPDATE `gameobject_template` SET `type`=8, `Data0`=5705760, `Data2`=5614196, `Data4`=5705884, `VerifiedBuild`=45745 WHERE `entry`=212587; -- Table
UPDATE `gameobject_template` SET `type`=8, `Data0`=5705760, `Data2`=5614196, `Data4`=5705884, `VerifiedBuild`=45745 WHERE `entry`=212595; -- Stove
UPDATE `gameobject_template` SET `ContentTuningId`=173, `VerifiedBuild`=45745 WHERE `entry`=212526; -- An empty bookshelf
UPDATE `gameobject_template` SET `type`=7, `Data0`=1, `Data1`=1, `VerifiedBuild`=45745 WHERE `entry`=212581; -- Bench
UPDATE `gameobject_template` SET `type`=7, `Data0`=1, `Data1`=1, `VerifiedBuild`=45745 WHERE `entry`=212580; -- Bench
UPDATE `gameobject_template` SET `castBarCaption`='Grabbing', `Data0`=43, `Data7`=209833, `Data8`=29866, `Data14`=37379, `VerifiedBuild`=45745 WHERE `entry`=209826; -- Silk Patch
UPDATE `gameobject_template` SET `displayId`=10981, `size`=4, `Data0`=1691, `ContentTuningId`=57, `VerifiedBuild`=45745 WHERE `entry`=209582; -- Scroll of Sorrow
UPDATE `gameobject_template` SET `ContentTuningId`=57, `VerifiedBuild`=45745 WHERE `entry`=209889; -- Restorative Spirit
UPDATE `gameobject_template` SET `ContentTuningId`=57, `VerifiedBuild`=45745 WHERE `entry`=209888; -- Restorative Mind
UPDATE `gameobject_template` SET `ContentTuningId`=57, `VerifiedBuild`=45745 WHERE `entry`=209885; -- Restorative Body
UPDATE `gameobject_template` SET `ContentTuningId`=57, `VerifiedBuild`=45745 WHERE `entry`=209890; -- Restorative Heart
UPDATE `gameobject_template` SET `ContentTuningId`=57, `VerifiedBuild`=45745 WHERE `entry`=213754; -- Potent Dream Brew
UPDATE `gameobject_template` SET `ContentTuningId`=860, `VerifiedBuild`=45745 WHERE `entry`=215404; -- Shroud of Mist
UPDATE `gameobject_template` SET `castBarCaption`='Reading', `VerifiedBuild`=45745 WHERE `entry`=209615; -- STAY OUT - NO VISITORS
UPDATE `gameobject_template` SET `Data19`=2, `Data26`=0, `ContentTuningId`=57, `VerifiedBuild`=45745 WHERE `entry`=213741; -- Ancient Jinyu Staff
UPDATE `gameobject_template` SET `IconName`='', `VerifiedBuild`=45745 WHERE `entry`=209353; -- Rain Poppy
UPDATE `gameobject_template` SET `IconName`='', `VerifiedBuild`=45745 WHERE `entry`=209349; -- Green Tea Leaf

DELETE FROM `gameobject_questitem` WHERE (`GameObjectEntry`=209582 AND `Idx`=0);
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(209582, 0, 79875, 45745); -- Scroll of Sorrow

UPDATE `gameobject_questitem` SET `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `GameObjectEntry` IN (209951,209826,209903));

DELETE FROM `gossip_menu_option` WHERE `MenuID`=0;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=106780;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=26355;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=16592;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=56922;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=4538;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=4076;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=42772;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=42838;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=46070;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=48317;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=33912;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=35506;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=46067;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=53308;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=52357;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=52356;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=48182;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=48191;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=48192;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=48155;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=45509;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=41783;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=41920;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=43983;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=42285;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=42213;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=41647;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=42234;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=42846;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=48841;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=48833;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=42143;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=44525;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=44519;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=51384;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=49894;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=49684;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=37703;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=35084;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=35083;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=35080;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=34970;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=34975;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=33595;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=33587;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=33594;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=33599;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=33759;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=33698;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=33843;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=15733;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=15300;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=15119;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=21096;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=22065;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=15797;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=15810;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=20782;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=22124;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=28230;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=27290;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=26854;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=26859;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=26858;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=26186;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=23771;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=35016;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=33211;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=30848;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=27544;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=26778;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=26573;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=26574;

DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10246 AND `SourceEntry`=9680 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=1 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10246 AND `SourceEntry`=9686 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=2 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10246 AND `SourceEntry`=9688 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=7 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10246 AND `SourceEntry`=11958 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=12 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10246 AND `SourceEntry`=12134 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=24 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10246 AND `SourceEntry`=13044 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=50 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10246 AND `SourceEntry`=14229 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=9 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10246 AND `SourceEntry`=14544 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=51 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10246 AND `SourceEntry`=14637 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=26 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10247 AND `SourceEntry`=9680 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=1 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10247 AND `SourceEntry`=9715 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=7 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10247 AND `SourceEntry`=9717 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=2 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10247 AND `SourceEntry`=11959 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=12 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10247 AND `SourceEntry`=12134 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=24 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10247 AND `SourceEntry`=13044 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=50 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10247 AND `SourceEntry`=14230 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=9 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10247 AND `SourceEntry`=14544 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=51 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10247 AND `SourceEntry`=14638 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=26 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10248 AND `SourceEntry`=8139 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=2 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10248 AND `SourceEntry`=9680 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=1 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10248 AND `SourceEntry`=9964 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=7 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10248 AND `SourceEntry`=11960 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=12 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10248 AND `SourceEntry`=12134 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=24 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10248 AND `SourceEntry`=13044 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=50 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10248 AND `SourceEntry`=14231 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=9 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10248 AND `SourceEntry`=14544 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=51 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10248 AND `SourceEntry`=14639 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=26 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10249 AND `SourceEntry`=9626 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=2 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10249 AND `SourceEntry`=9662 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=7 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10249 AND `SourceEntry`=9662 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=22 AND `ConditionTarget`=1 AND `ConditionValue1`=0 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10249 AND `SourceEntry`=9680 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=1 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10249 AND `SourceEntry`=9696 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=7 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10249 AND `SourceEntry`=9696 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=22 AND `ConditionTarget`=1 AND `ConditionValue1`=571 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10249 AND `SourceEntry`=11961 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=12 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10249 AND `SourceEntry`=12134 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=24 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10249 AND `SourceEntry`=13044 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=50 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10249 AND `SourceEntry`=14232 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=9 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10249 AND `SourceEntry`=14544 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=51 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10249 AND `SourceEntry`=14640 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=26 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10250 AND `SourceEntry`=9680 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=1 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10250 AND `SourceEntry`=9692 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=7 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10250 AND `SourceEntry`=9694 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=2 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10250 AND `SourceEntry`=11962 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=12 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10250 AND `SourceEntry`=12134 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=24 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10250 AND `SourceEntry`=13044 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=50 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10250 AND `SourceEntry`=14233 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=9 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10250 AND `SourceEntry`=14544 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=51 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10250 AND `SourceEntry`=14641 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=26 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10251 AND `SourceEntry`=9680 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=1 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10251 AND `SourceEntry`=9702 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=2 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10251 AND `SourceEntry`=9704 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=7 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10251 AND `SourceEntry`=11963 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=12 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10251 AND `SourceEntry`=12134 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=24 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10251 AND `SourceEntry`=13044 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=50 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10251 AND `SourceEntry`=14234 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=9 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10251 AND `SourceEntry`=14544 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=51 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10251 AND `SourceEntry`=14642 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=26 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10252 AND `SourceEntry`=9680 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=1 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10252 AND `SourceEntry`=9706 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=2 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10252 AND `SourceEntry`=9708 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=7 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10252 AND `SourceEntry`=11964 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=12 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10252 AND `SourceEntry`=12134 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=24 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10252 AND `SourceEntry`=13044 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=50 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10252 AND `SourceEntry`=14235 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=9 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10252 AND `SourceEntry`=14544 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=51 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10252 AND `SourceEntry`=14643 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=26 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10253 AND `SourceEntry`=9680 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=1 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10253 AND `SourceEntry`=9716 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=7 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10253 AND `SourceEntry`=9718 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=2 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10253 AND `SourceEntry`=11965 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=12 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10253 AND `SourceEntry`=12134 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=24 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10253 AND `SourceEntry`=13044 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=50 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10253 AND `SourceEntry`=14236 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=9 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10253 AND `SourceEntry`=14544 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=51 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10253 AND `SourceEntry`=14644 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=26 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10254 AND `SourceEntry`=9680 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=1 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10254 AND `SourceEntry`=9710 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=2 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10254 AND `SourceEntry`=9712 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=7 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10254 AND `SourceEntry`=11966 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=12 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10254 AND `SourceEntry`=12134 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=24 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10254 AND `SourceEntry`=13044 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=50 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10254 AND `SourceEntry`=14237 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=9 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10254 AND `SourceEntry`=14544 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=51 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10254 AND `SourceEntry`=14645 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=26 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10254 AND `SourceEntry`=9680 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=1 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10254 AND `SourceEntry`=9710 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=2 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10254 AND `SourceEntry`=9712 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=7 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10254 AND `SourceEntry`=11966 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=12 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10254 AND `SourceEntry`=12134 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=24 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10254 AND `SourceEntry`=13044 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=50 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10254 AND `SourceEntry`=14237 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=9 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10254 AND `SourceEntry`=14544 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=51 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=14 AND `SourceGroup`=10254 AND `SourceEntry`=14645 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=12 AND `ConditionTarget`=0 AND `ConditionValue1`=26 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=105 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2672 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=105 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2672 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=106 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2673 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=107 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2763 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=108 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2659 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=109 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2660 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=110 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2661 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=111 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2762 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=112 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2662 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=113 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2663 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=114 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2664 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=115 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2761 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=116 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2667 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=117 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2665 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=118 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2666 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=119 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2760 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=120 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2670 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=121 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2668 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=122 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2669 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=123 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2672 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=124 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2673 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=125 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2647 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=126 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2648 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=33 AND `SourceGroup`=0 AND `SourceEntry`=127 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=11 AND `ConditionTarget`=0 AND `ConditionValue1`=2649 AND `ConditionValue2`=1 AND `ConditionValue3`=0;

UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=4436;
REPLACE INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `ContentTuningID`, `VerifiedBuild`) VALUES ('4436', '1', '213', '39617');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=4435;
REPLACE INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `ContentTuningID`, `VerifiedBuild`) VALUES ('4435', '1', '213', '39617');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=4520;
REPLACE INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `ContentTuningID`) VALUES ('4520', '1', '213');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=4528;
REPLACE INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `ContentTuningID`, `VerifiedBuild`) VALUES ('4528', '1', '213', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=4442;
REPLACE INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `ContentTuningID`, `VerifiedBuild`) VALUES ('4442', '1', '213', '39617');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=4532;
REPLACE INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `ContentTuningID`, `VerifiedBuild`) VALUES ('4532', '1', '213', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=4534;
REPLACE INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `ContentTuningID`, `VerifiedBuild`) VALUES ('4534', '1', '213', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=4523;
REPLACE INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `ContentTuningID`, `VerifiedBuild`) VALUES ('4523', '1', '213', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=4522;
REPLACE INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `ContentTuningID`, `VerifiedBuild`) VALUES ('4522', '1', '213', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=4515;
REPLACE INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `ContentTuningID`, `VerifiedBuild`) VALUES ('4515', '1', '213', '39617');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=4623;
REPLACE INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `ContentTuningID`, `VerifiedBuild`) VALUES ('5623', '1', '213', '39617');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=6035;
REPLACE INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6035', '1', '213', '40120');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=6021;
REPLACE INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `ContentTuningID`, `VerifiedBuild`) VALUES ('6021', '1', '213', '39653');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=75001;
REPLACE INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `ContentTuningID`, `VerifiedBuild`) VALUES ('75001', '1', '213', '33095');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=4440;
REPLACE INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `ContentTuningID`, `VerifiedBuild`) VALUES ('4440', '1', '213', '39617');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=4438;
REPLACE INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `ContentTuningID`, `VerifiedBuild`) VALUES ('4438', '1', '213', '39617');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=74462;
REPLACE INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `ContentTuningID`, `VerifiedBuild`) VALUES ('74462', '1', '213', '38134');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=4428;
REPLACE INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `ContentTuningID`, `VerifiedBuild`) VALUES ('4428', '1', '213', '39617');
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=74948;
REPLACE INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `ContentTuningID`, `VerifiedBuild`) VALUES ('74948', '1', '213', '33095');

REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('97765', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('100410', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('78254', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('100992', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101348', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105498', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105466', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105499', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105475', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105583', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105378', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105374', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('98856', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('98794', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105410', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105140', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105139', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105138', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('104905', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('104903', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('104826', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105453', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101989', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('103257', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('98520', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('98807', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('104547', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('103485', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101122', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES (102634, 1, 1, 0, 0);
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('104321', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('98802', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('100984', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('98971', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('104729', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('99847', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('106429', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('106493', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('106022', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105796', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('106045', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105955', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105743', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105713', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('106040', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('106370', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('106043', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105915', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('100913', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('91268', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('100821', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101897', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101893', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101852', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('96845', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('83622', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101487', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101321', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101526', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101483', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101358', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101378', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101377', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101370', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101368', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('77056', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101467', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101275', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101554', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101297', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101230', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('102024', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101035', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105214', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105217', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('78245', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105467', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105584', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105411', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('98805', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('98801', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('103755', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('100370', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('98914', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('98817', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('98848', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('98871', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('99884', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105797', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('106046', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105744', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105724', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('106041', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('106371', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('105916', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('100711', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101894', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('83598', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101359', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('85173', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('101231', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('102025', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('94710', '1', '1');
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=164025;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=165124;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=167851;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=164026;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=164873;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=164022;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=171342;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=163370;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=160855;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=159708;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=155572;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=155733;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=163188;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=161585;
UPDATE `creature_template` SET `KillCredit2`='0' WHERE  `entry`=164238;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=171184;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=171455;
UPDATE `creature_template` SET `dynamicflags`='0' WHERE  `entry`=176172;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `RewardSpell`=81040;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=30065;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=29070;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=15475;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=14847;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=14841;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=14833;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=35604;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=16483;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=16620;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=17845;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=18744;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=17202;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=17373;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=17467;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=17216;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=20674;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=16723;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=18896;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=16705;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=16736;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=16733;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=18350;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=21971;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=17179;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=17087;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=1412;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=2615;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=44367;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=44614;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=44906;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=44954;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=44966;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=44987;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=39380;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=38493;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=37205;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=37538;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=37542;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=37108;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=35475;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=35477;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=35602;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=35071;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=35061;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=35060;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=35008;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=34915;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=34519;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=34047;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=33705;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=33457;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=33455;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=33439;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=33087;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=33051;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=33011;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=33010;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=32841;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=32740;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=32738;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=32406;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=32372;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=32371;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=32369;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=31327;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=31326;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=31261;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=31259;

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (31159, 0, 0, 'I\\\'ve been waiting.', 14, 0, 100, 0, 0, 0, 0, 31855, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (31159, 1, 0, 'Don\\\'t stop now, I\\\'ve almost broken a sweat.', 14, 0, 100, 0, 0, 0, 0, 31860, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (31159, 2, 0, 'I know no death. I will... be back... for you...', 14, 0, 100, 0, 0, 0, 0, 31861, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (31159, 3, 0, 'Your blood tastes sweet.', 14, 0, 100, 0, 0, 0, 0, 31862, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (31159, 3, 1, 'Another trophy for my collection.', 14, 0, 100, 0, 0, 0, 0, 31863, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (31159, 3, 2, 'Your blood is now mine.', 14, 0, 100, 0, 0, 0, 0, 31864, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (31159, 3, 3, 'Fragile thing.', 14, 0, 100, 0, 0, 0, 0, 31865, 0, '');

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (31160, 0, 0, 'No shining army? No righteous words? It seems your \\\'honor\\\' suits you no longer.', 14, 0, 100, 0, 0, 0, 0, 31866, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (31160, 1, 0, 'Such noble boasts, but in the end, we\\\'ve brought you down to reality.', 14, 0, 100, 0, 0, 0, 0, 31867, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (31160, 2, 0, 'You too shall serve the Lich King.... your time comes.', 14, 0, 100, 0, 0, 0, 0, 31868, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (31160, 3, 0, 'Your blood tastes sweet.', 14, 0, 100, 0, 0, 0, 0, 31862, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (31160, 3, 1, 'Another trophy for my collection.', 14, 0, 100, 0, 0, 0, 0, 31863, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (31160, 3, 2, 'Your blood is now mine.', 14, 0, 100, 0, 0, 0, 0, 31864, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (31160, 3, 3, 'Fragile thing.', 14, 0, 100, 0, 0, 0, 0, 31865, 0, '');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=31028;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=31027;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=31023;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=31021;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=31019;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=30990;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=30714;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=30669;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=30571;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=30570;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=30547;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=30302;

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30954, 0, 0, 'No shining army? No righteous words? It seems your \\\'honor\\\' suits you no longer.', 14, 0, 100, 0, 0, 0, 0, 31866, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30954, 1, 0, 'Such noble boasts, but in the end, we\\\'ve brought you down to reality.', 14, 0, 100, 0, 0, 0, 0, 31867, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30954, 2, 0, 'You too shall serve the Lich King.... your time comes.', 14, 0, 100, 0, 0, 0, 0, 31868, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30954, 3, 0, 'Your blood tastes sweet.', 14, 0, 100, 0, 0, 0, 0, 31862, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30954, 3, 1, 'Another trophy for my collection.', 14, 0, 100, 0, 0, 0, 0, 31863, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30954, 3, 2, 'Your blood is now mine.', 14, 0, 100, 0, 0, 0, 0, 31864, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30954, 3, 3, 'Fragile thing.', 14, 0, 100, 0, 0, 0, 0, 31865, 0, '');

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30953, 0, 0, 'I\\\'ve been waiting.', 14, 0, 100, 0, 0, 0, 0, 31855, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30953, 1, 0, 'Don\\\'t stop now, I\\\'ve almost broken a sweat.', 14, 0, 100, 0, 0, 0, 0, 31860, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30953, 2, 0, 'I know no death. I will... be back... for you...', 14, 0, 100, 0, 0, 0, 0, 31861, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30953, 3, 0, 'Your blood tastes sweet.', 14, 0, 100, 0, 0, 0, 0, 31862, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30953, 3, 1, 'Another trophy for my collection.', 14, 0, 100, 0, 0, 0, 0, 31863, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30953, 3, 2, 'Your blood is now mine.', 14, 0, 100, 0, 0, 0, 0, 31864, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30953, 3, 3, 'Fragile thing.', 14, 0, 100, 0, 0, 0, 0, 31865, 0, '');

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30894, 0, 0, 'The Lithe Stalker is weakened by the assault.', 16, 0, 100, 0, 0, 0, 0, 34580, 0, '');

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 0, 0, 'Haraak foln!', 12, 0, 100, 0, 0, 13541, 0, 30506, 0, 'combat Say');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 0, 1, 'I\\\'ll eat your heart!', 12, 0, 100, 0, 0, 13542, 0, 30508, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 0, 2, 'I will take pleasure in gutting you!', 12, 0, 100, 0, 0, 13533, 0, 30498, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 0, 3, 'Die, maggot!', 12, 0, 100, 0, 0, 13536, 0, 30501, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 0, 4, 'Your entrails will make a fine necklace.', 12, 0, 100, 0, 0, 13535, 0, 30500, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 0, 5, 'I will feed you to the dogs!', 12, 0, 100, 0, 0, 13534, 0, 30499, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 0, 6, 'Ugglin oo bjorr!', 12, 0, 100, 0, 0, 13540, 0, 30505, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 1, 0, 'You\\\'re weak, old woman!', 12, 0, 100, 14, 0, 0, 0, 30635, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 1, 1, 'Hela take you!', 12, 0, 100, 14, 0, 0, 0, 30636, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 1, 2, 'I will feast in the halls of Ymirheim tonight and you will pour my mead, cur.', 12, 0, 100, 14, 0, 0, 0, 30637, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 1, 3, 'The runes foretold victory for me today!', 12, 0, 100, 14, 0, 0, 0, 30638, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 1, 4, 'Getting tired? Hahahahaha!', 12, 0, 100, 14, 0, 0, 0, 30639, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 1, 5, 'You\\\'ll sleep in the underworld tonight!', 12, 0, 100, 14, 0, 0, 0, 30640, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 1, 6, 'You\\\'ll wish you\\\'d never been awakened, boy.', 12, 0, 100, 14, 0, 0, 0, 30641, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 1, 7, 'You complain much, like a shield-maiden!', 12, 0, 100, 14, 0, 0, 0, 30642, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 2, 0, 'You think you can challenge me, little $r?', 12, 0, 100, 0, 0, 0, 0, 30690, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 2, 1, 'Your race has no honor. But come anyway... you\\\'ll die like all the others!', 12, 0, 100, 0, 0, 0, 0, 30691, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 2, 2, 'By Thorim\\\'s beard, this should be good sport!', 12, 0, 100, 0, 0, 0, 0, 30692, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 2, 3, 'Come then, $r $c, I do not have all day!', 12, 0, 100, 0, 0, 0, 0, 30693, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 2, 4, 'It will not get me any closer to proving myself at Valhalas to kill you, but it should be entertaining!', 12, 0, 100, 0, 0, 0, 0, 30694, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 2, 5, 'If you seek death, you have found it!', 12, 0, 100, 0, 0, 0, 0, 30695, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 2, 6, 'A quick trip to the underworld for you, and a laugh for me. Sounds like a fair trade!', 12, 0, 100, 0, 0, 0, 0, 30696, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (30037, 2, 7, 'A Drakkari, one of the so-called Scarlet Onslaught, a gnome, a Hyldnir shield-maiden, and now you? Is this a joke?', 12, 0, 100, 0, 0, 0, 0, 30697, 0, '');

