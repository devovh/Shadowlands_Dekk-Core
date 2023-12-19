
DELETE FROM `creature_equip_template` WHERE (`ID`=2 AND `CreatureID` IN (32858,33071));
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(32858, 2, 19874, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Shatterspear Champion
(33071, 2, 0, 0, 0, 0, 0, 0, 5870, 0, 0, 46313); -- Shatterspear Raider


DELETE FROM `quest_offer_reward` WHERE `ID` IN (28951 /*Candy Bucket*/, 26383 /*Breaking Waves of Change*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(28951, 0, 0, 0, 0, 0, 0, 0, 0, 'Candy buckets like this are located in inns throughout the realms. Go ahead... take some!', 46313), -- Candy Bucket
(26383, 6, 0, 0, 0, 0, 0, 0, 0, 'Did the sentinels send you? Thank Elune. We need everyone we can get.', 46313); -- Breaking Waves of Change

UPDATE `quest_offer_reward` SET `VerifiedBuild`=46313 WHERE `ID` IN (13896, 13544, 13881, 13948, 13526, 13892, 13525, 13902, 13588, 13940, 13587, 13586, 13581, 13585, 13580, 13576, 13575, 13584, 13579, 13583, 13582, 13578, 13577, 13573, 13558, 13543, 13547, 13605, 13542, 13601, 13596, 13519, 13523, 13570, 13591, 13514, 13515, 13590, 13844, 13513, 13512, 13509, 13511, 13507, 13508, 13505, 13506, 13504, 13589, 13560, 13599, 13569, 13597, 13566, 13565, 13598, 13562, 13563, 13564, 13561, 13554, 13831, 13557, 13529, 13528, 13520, 13527, 13521, 13518, 13522);

DELETE FROM `quest_poi` WHERE (`QuestID`=13881 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13881 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13881 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13881 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13892 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13892 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13584 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13584 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13584 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13573 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13573 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13507 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13507 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13507 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13507 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13562 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13562 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13529 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13529 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13529 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13518 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=13518 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=13518 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13518 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13518 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13518 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(13881, 0, 3, 32, 0, 0, 1, 62, 0, 0, 0, 0, 0, 293859, 0, 46313), -- Consumed
(13881, 0, 2, 1, 266217, -1, 1, 62, 0, 1, 0, 0, 0, 0, 0, 46313), -- Consumed
(13881, 0, 1, 0, 266216, 34302, 1, 62, 0, 1, 0, 0, 0, 0, 0, 46313), -- Consumed
(13881, 0, 0, -1, 0, 0, 1, 62, 0, 1, 0, 0, 0, 0, 0, 46313), -- Consumed
(13892, 0, 1, 32, 0, 0, 1, 62, 0, 0, 0, 0, 0, 296289, 0, 46313), -- Leave No Tracks
(13892, 0, 0, 0, 266852, 34410, 1, 62, 0, 7, 0, 0, 0, 0, 0, 46313), -- Leave No Tracks
(13584, 0, 2, 32, 0, 0, 1, 62, 0, 0, 0, 0, 0, 281805, 0, 46313), -- Calming the Earth
(13584, 0, 1, 0, 263710, 33083, 1, 62, 0, 0, 0, 0, 0, 0, 0, 46313), -- Calming the Earth
(13584, 0, 0, -1, 0, 0, 1, 62, 0, 0, 0, 0, 0, 0, 0, 46313), -- Calming the Earth
(13573, 0, 1, 32, 0, 0, 1, 62, 0, 0, 0, 0, 0, 278456, 0, 46313), -- Malfurion's Return
(13573, 0, 0, -1, 0, 0, 1, 62, 0, 1, 0, 0, 0, 0, 0, 46313), -- Malfurion's Return
(13507, 0, 3, 32, 0, 0, 1, 62, 0, 0, 0, 0, 0, 278233, 0, 46313), -- Denying Manpower
(13507, 0, 2, 1, 253228, 34248, 1, 62, 0, 1, 0, 0, 0, 0, 0, 46313), -- Denying Manpower
(13507, 0, 1, 0, 253227, 32859, 1, 62, 0, 1, 0, 0, 0, 0, 0, 46313), -- Denying Manpower
(13507, 0, 0, -1, 0, 0, 1, 62, 0, 1, 0, 0, 0, 0, 0, 46313), -- Denying Manpower
(13562, 0, 2, 32, 0, 0, 1, 62, 0, 0, 0, 0, 0, 293564, 0, 46313), -- The Final Flame of Bashal'Aran
(13562, 0, 1, 30, 0, 0, 1, 62, 0, 2, 0, 0, 0, 0, 0, 46313), -- The Final Flame of Bashal'Aran
(13529, 0, 3, 32, 0, 0, 1, 62, 0, 0, 0, 0, 0, 279465, 0, 46313), -- The Corruption's Source
(13529, 0, 2, 1, 266621, 33021, 1, 62, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Corruption's Source
(13529, 0, 1, 0, 266620, 33020, 1, 62, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Corruption's Source
(13518, 0, 5, 32, 0, 0, 1, 62, 0, 2, 0, 0, 0, 0, 0, 46313), -- The Last Wave of Survivors
(13518, 0, 4, 3, 267130, 33094, 1, 62, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Last Wave of Survivors
(13518, 0, 3, 2, 267129, 33095, 1, 62, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Last Wave of Survivors
(13518, 0, 2, 1, 267128, 32911, 1, 62, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Last Wave of Survivors
(13518, 0, 1, 0, 267127, 33093, 1, 62, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Last Wave of Survivors
(13518, 0, 0, -1, 0, 0, 1, 62, 0, 2, 0, 0, 0, 0, 0, 46313); -- The Last Wave of Survivors

UPDATE `quest_poi` SET `VerifiedBuild`=46313 WHERE (`QuestID`=13912 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13912 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13912 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13907 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13907 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13907 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13911 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13911 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13911 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13893 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13893 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13572 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13572 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13572 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13545 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13545 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13545 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13882 AND `BlobIndex`=0 AND `Idx1`=8) OR (`QuestID`=13882 AND `BlobIndex`=2 AND `Idx1`=7) OR (`QuestID`=13882 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=13882 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=13882 AND `BlobIndex`=2 AND `Idx1`=4) OR (`QuestID`=13882 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=13882 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13882 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13882 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13896 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13896 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13544 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13544 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13544 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13544 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13948 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13948 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13948 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13526 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13526 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13526 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13525 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13525 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13902 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=13902 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13902 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13588 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13588 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13588 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13588 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13940 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13940 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13587 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13587 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13587 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13586 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13586 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13581 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13581 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13580 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13580 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13580 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13576 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13576 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13576 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13585 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13585 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13583 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13583 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13582 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13582 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13582 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13578 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13578 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13578 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13575 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13575 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13579 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13579 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13577 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13577 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13558 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13558 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13558 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13605 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13605 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=13605 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13605 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13547 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=13547 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=13547 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=13547 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13547 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13547 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=13547 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13543 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=13543 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13543 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13543 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13543 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13542 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13542 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13542 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13542 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13601 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13601 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13523 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13523 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13523 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13519 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13519 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13519 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13519 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13596 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13596 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13596 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13591 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13591 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13515 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13515 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13515 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13514 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13514 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13514 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13514 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13590 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13590 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13844 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13844 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13844 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13844 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13513 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13513 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=13513 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13513 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13512 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13512 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13512 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13512 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13511 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13511 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13511 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13509 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13509 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13509 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13508 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13508 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13506 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13504 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13504 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13504 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13505 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13505 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13505 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13560 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13560 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13560 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13589 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13589 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13599 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13599 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13569 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13569 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13569 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13565 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13565 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13565 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13565 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13598 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13598 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13598 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13566 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=13566 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13566 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13566 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13566 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13563 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=13563 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13563 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13563 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13563 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13561 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13561 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13561 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13561 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13564 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13564 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13564 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13831 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13831 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13557 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13557 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13557 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13554 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13554 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13554 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13528 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13528 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13528 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13527 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13527 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13527 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13521 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13521 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13521 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13520 AND `BlobIndex`=3 AND `Idx1`=5) OR (`QuestID`=13520 AND `BlobIndex`=2 AND `Idx1`=4) OR (`QuestID`=13520 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=13520 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13520 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13520 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13522 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13522 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13522 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=26383 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=26383 AND `BlobIndex`=0 AND `Idx1`=0);
UPDATE `quest_poi` SET `UiMapID`=62, `Flags`=2, `WorldEffectID`=0, `VerifiedBuild`=46313 WHERE (`QuestID`=13562 AND `BlobIndex`=0 AND `Idx1`=0); -- The Final Flame of Bashal'Aran
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `UiMapID`=62, `Flags`=0, `VerifiedBuild`=46313 WHERE (`QuestID`=13529 AND `BlobIndex`=0 AND `Idx1`=0); -- The Corruption's Source
DELETE FROM `quest_poi_points` WHERE (`QuestID`=13881 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13881 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13881 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13881 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13881 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13881 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13881 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13881 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13881 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13881 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13881 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13881 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13881 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13892 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13892 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13584 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13584 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13584 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13584 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13584 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13584 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13584 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13584 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13584 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13573 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13573 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13507 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13507 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=13507 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=13507 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13507 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13507 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13507 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13507 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13507 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13507 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13507 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13507 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13507 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13507 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13507 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13562 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13529 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13529 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=13529 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=13529 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=13529 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=13529 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13529 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13529 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13518 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=13518 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=13518 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13518 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13518 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13518 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(13881, 3, 0, 5007, 95, 53, 46313), -- Consumed
(13881, 2, 3, 4739, 104, 45, 46313), -- Consumed
(13881, 2, 2, 4806, 171, 45, 46313), -- Consumed
(13881, 2, 1, 4873, 104, 45, 46313), -- Consumed
(13881, 2, 0, 4806, 37, 45, 46313), -- Consumed
(13881, 1, 6, 4709, 37, 52, 46313), -- Consumed
(13881, 1, 5, 4763, 130, 52, 46313), -- Consumed
(13881, 1, 4, 4898, 342, 52, 46313), -- Consumed
(13881, 1, 3, 4940, 320, 52, 46313), -- Consumed
(13881, 1, 2, 4911, 170, 52, 46313), -- Consumed
(13881, 1, 1, 4891, 85, 52, 46313), -- Consumed
(13881, 1, 0, 4845, 21, 52, 46313), -- Consumed
(13881, 0, 0, 5007, 95, 53, 46313), -- Consumed
(13892, 1, 0, 4984, 88, 53, 46313), -- Leave No Tracks
(13892, 0, 0, 4567, 406, 18, 46313), -- Leave No Tracks
(13584, 2, 0, 5776, 144, 63, 46313), -- Calming the Earth
(13584, 1, 6, 5552, 152, 15, 46313), -- Calming the Earth
(13584, 1, 5, 5583, 216, 22, 46313), -- Calming the Earth
(13584, 1, 4, 5613, 277, 20, 46313), -- Calming the Earth
(13584, 1, 3, 5811, 220, 28, 46313), -- Calming the Earth
(13584, 1, 2, 5851, 111, 24, 46313), -- Calming the Earth
(13584, 1, 1, 5858, 79, 21, 46313), -- Calming the Earth
(13584, 1, 0, 5645, 73, 15, 46313), -- Calming the Earth
(13584, 0, 0, 5776, 144, 63, 46313), -- Calming the Earth
(13573, 1, 0, 6277, 258, 18, 46313), -- Malfurion's Return
(13573, 0, 0, 5919, 194, 64, 46313), -- Malfurion's Return
(13507, 3, 0, 7386, -791, 9, 46313), -- Denying Manpower
(13507, 2, 5, 7727, -1028, 36, 46313), -- Denying Manpower
(13507, 2, 4, 7827, -936, 42, 46313), -- Denying Manpower
(13507, 2, 3, 7875, -950, 8, 46313), -- Denying Manpower
(13507, 2, 2, 7954, -1050, 39, 46313), -- Denying Manpower
(13507, 2, 1, 7918, -1116, 37, 46313), -- Denying Manpower
(13507, 2, 0, 7869, -1124, 40, 46313), -- Denying Manpower
(13507, 1, 6, 7715, -1046, 38, 46313), -- Denying Manpower
(13507, 1, 5, 7703, -957, 27, 46313), -- Denying Manpower
(13507, 1, 4, 7743, -894, 20, 46313), -- Denying Manpower
(13507, 1, 3, 7915, -901, 5, 46313), -- Denying Manpower
(13507, 1, 2, 7910, -1033, 33, 46313), -- Denying Manpower
(13507, 1, 1, 7884, -1073, 31, 46313), -- Denying Manpower
(13507, 1, 0, 7760, -1087, 21, 46313), -- Denying Manpower
(13507, 0, 0, 7386, -791, 9, 46313), -- Denying Manpower
(13562, 2, 0, 7372, -259, 6, 46313), -- The Final Flame of Bashal'Aran
(13529, 3, 0, 6926, -654, 6, 46313), -- The Corruption's Source
(13529, 2, 7, 6806, -776, 69, 46313), -- The Corruption's Source
(13529, 2, 6, 6719, -692, 70, 46313), -- The Corruption's Source
(13529, 2, 5, 6717, -646, 70, 46313), -- The Corruption's Source
(13529, 2, 4, 6739, -639, 69, 46313), -- The Corruption's Source
(13529, 2, 3, 6874, -634, 88, 46313), -- The Corruption's Source
(13529, 2, 2, 6898, -636, 87, 46313), -- The Corruption's Source
(13529, 2, 1, 6876, -767, 61, 46313), -- The Corruption's Source
(13518, 5, 0, 7447, -328, 8, 46313), -- The Last Wave of Survivors
(13518, 4, 0, 7439, 106, 0, 46313), -- The Last Wave of Survivors
(13518, 3, 0, 7296, 243, 2, 46313), -- The Last Wave of Survivors
(13518, 2, 0, 7456, 164, 3, 46313), -- The Last Wave of Survivors
(13518, 1, 0, 7366, 135, 12, 46313), -- The Last Wave of Survivors
(13518, 0, 0, 7420, -283, 8, 46313); -- The Last Wave of Survivors

UPDATE `quest_poi_points` SET `VerifiedBuild`=46313 WHERE (`QuestID`=13912 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13912 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13912 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13907 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13907 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13907 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13907 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13907 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13907 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13907 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13907 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13907 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13911 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13911 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13911 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13911 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13911 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13911 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13893 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13893 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13572 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13572 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13545 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13545 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13882 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=13882 AND `Idx1`=7 AND `Idx2`=2) OR (`QuestID`=13882 AND `Idx1`=7 AND `Idx2`=1) OR (`QuestID`=13882 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=13882 AND `Idx1`=6 AND `Idx2`=6) OR (`QuestID`=13882 AND `Idx1`=6 AND `Idx2`=5) OR (`QuestID`=13882 AND `Idx1`=6 AND `Idx2`=4) OR (`QuestID`=13882 AND `Idx1`=6 AND `Idx2`=3) OR (`QuestID`=13882 AND `Idx1`=6 AND `Idx2`=2) OR (`QuestID`=13882 AND `Idx1`=6 AND `Idx2`=1) OR (`QuestID`=13882 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=13882 AND `Idx1`=5 AND `Idx2`=3) OR (`QuestID`=13882 AND `Idx1`=5 AND `Idx2`=2) OR (`QuestID`=13882 AND `Idx1`=5 AND `Idx2`=1) OR (`QuestID`=13882 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=13882 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=13882 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=13882 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=13882 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=13882 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=13882 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=13882 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=13882 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=13882 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=13882 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13882 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=13882 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13882 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13882 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13882 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13882 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13882 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13896 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13896 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13544 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13544 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13544 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13544 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13948 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13948 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13948 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13526 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13526 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=13526 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13526 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13526 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13526 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13526 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13526 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13526 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13526 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13526 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13526 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13526 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13525 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13525 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13902 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13902 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13902 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13588 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13588 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=13588 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=13588 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13588 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13588 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13588 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13588 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13588 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13940 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13940 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13587 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13587 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13587 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13586 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13586 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13581 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13581 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13580 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13580 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13580 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13576 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13576 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=13576 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13576 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13576 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13576 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13576 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13576 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13576 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13576 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13576 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13576 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13576 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13585 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13585 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13583 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13583 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13582 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13582 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13582 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13578 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13578 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13578 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13578 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13578 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13578 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13578 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13578 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13578 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13578 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13578 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13578 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13575 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13575 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13579 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13579 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13577 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13577 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13558 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13558 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13558 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13605 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13605 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13605 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13605 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13605 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13605 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13605 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13547 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=13547 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=13547 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=13547 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13547 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13547 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13547 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13543 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=13543 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13543 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13543 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13543 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13542 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13542 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=13542 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=13542 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=13542 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=13542 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=13542 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=13542 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=13542 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=13542 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13542 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13542 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13542 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13542 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13542 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13601 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13601 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13523 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13523 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13523 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13523 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13523 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13523 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13523 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13523 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13523 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13519 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13519 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=13519 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=13519 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=13519 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=13519 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=13519 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=13519 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=13519 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=13519 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13519 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13519 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13519 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13519 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13519 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13596 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13596 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13596 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13596 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13596 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13596 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13596 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13596 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13596 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13596 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13596 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13596 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13591 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13591 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13515 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13515 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13515 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13514 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13514 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=13514 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=13514 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=13514 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=13514 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=13514 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=13514 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=13514 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=13514 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13514 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13514 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13514 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13514 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13514 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13514 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13514 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13514 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13514 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13514 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13514 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13514 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13514 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13514 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13590 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13590 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13844 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13844 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13844 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13844 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13513 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13513 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=13513 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=13513 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=13513 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13513 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13513 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13513 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13513 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13513 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13513 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13513 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13513 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13513 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13512 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13512 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13512 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13512 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13511 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13511 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13511 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13509 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13509 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13509 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13509 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13509 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13509 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13509 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13509 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13508 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13508 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13506 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13504 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13504 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=13504 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13504 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13504 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13504 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13504 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13504 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13504 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13504 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13504 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13504 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13504 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13505 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13505 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=13505 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=13505 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13505 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13505 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13505 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13505 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13505 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13505 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13505 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13505 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13505 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13505 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13560 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13560 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13560 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13589 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13589 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13599 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13599 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13569 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13569 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13569 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13565 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13565 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=13565 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=13565 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=13565 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=13565 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=13565 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=13565 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=13565 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=13565 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13565 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13565 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13565 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13565 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13565 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13598 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13598 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13598 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13598 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13598 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13598 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13598 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13598 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13598 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13598 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13566 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=13566 AND `Idx1`=3 AND `Idx2`=11) OR (`QuestID`=13566 AND `Idx1`=3 AND `Idx2`=10) OR (`QuestID`=13566 AND `Idx1`=3 AND `Idx2`=9) OR (`QuestID`=13566 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=13566 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=13566 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=13566 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=13566 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=13566 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=13566 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=13566 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=13566 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13566 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=13566 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=13566 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=13566 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=13566 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=13566 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=13566 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=13566 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=13566 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13566 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13566 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13566 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13566 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=13566 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=13566 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13566 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13566 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13566 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13566 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13566 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13566 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13566 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13566 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13566 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13566 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13563 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=13563 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13563 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13563 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13563 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13562 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13561 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13561 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=13561 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=13561 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=13561 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=13561 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13561 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13561 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13561 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13561 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13561 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13561 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13561 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13561 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13561 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13561 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13564 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13564 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13564 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13564 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13564 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13564 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13831 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13831 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13557 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13557 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13557 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13557 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13557 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13557 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13557 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13557 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13557 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13557 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13557 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13554 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13554 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13554 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13554 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13554 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13554 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13554 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13554 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13554 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13554 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13554 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13528 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13528 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13528 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13528 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13528 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13528 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13528 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13528 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13528 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13528 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13527 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13527 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13527 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13521 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13521 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13521 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13521 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13521 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13521 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13521 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13521 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13521 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13520 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=13520 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=13520 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13520 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13520 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13520 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13522 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13522 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=13522 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=13522 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13522 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13522 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13522 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13522 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13522 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13522 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13522 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13522 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13522 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13522 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=26383 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=26383 AND `Idx1`=0 AND `Idx2`=0);
UPDATE `quest_poi_points` SET `Z`=6, `VerifiedBuild`=46313 WHERE (`QuestID`=13562 AND `Idx1`=0 AND `Idx2`=0); -- The Final Flame of Bashal'Aran
UPDATE `quest_poi_points` SET `X`=6858, `Y`=-796, `Z`=63, `VerifiedBuild`=46313 WHERE (`QuestID`=13529 AND `Idx1`=2 AND `Idx2`=0); -- The Corruption's Source
UPDATE `quest_poi_points` SET `X`=6798, `Y`=-747, `Z`=70, `VerifiedBuild`=46313 WHERE (`QuestID`=13529 AND `Idx1`=1 AND `Idx2`=0); -- The Corruption's Source
UPDATE `quest_poi_points` SET `X`=7373, `Y`=-288, `Z`=6, `VerifiedBuild`=46313 WHERE (`QuestID`=13529 AND `Idx1`=0 AND `Idx2`=0); -- The Corruption's Source

DELETE FROM `quest_details` WHERE `ID` IN (13912 /*Swamped Secrets*/, 13907 /*Sweeping Clean the Ruins*/, 13911 /*The Absent-Minded Prospector*/, 13893 /*Soggoth and Kronn*/, 13572 /*Jadefire Braziers*/, 13545 /*Cleansing the Afflicted*/, 13882 /*The Seeds of Life*/, 13896 /*Unearthed Knowledge*/, 13544 /*The Bear's Blessing*/, 13948 /*Stepping Up Surveillance*/, 13881 /*Consumed*/, 13892 /*Leave No Tracks*/, 13902 /*Mounting the Offensive*/, 13588 /*The Eye of All Storms*/, 13940 /*Leaving the Dream*/, 13587 /*The Waking Nightmare*/, 13586 /*The Emerald Dream*/, 13581 /*The Blackwood Pledge*/, 13580 /*Soothing the Elements*/, 13576 /*Mutual Aid*/, 13585 /*Sworn to Protect*/, 13584 /*Calming the Earth*/, 13583 /*The Wildkin's Oath*/, 13582 /*Elune's Fire*/, 13578 /*Aroom's Farewell*/, 13575 /*The Land Is in Their Blood*/, 13579 /*Protector of Ameth'Aran*/, 13577 /*The Last Wildkin*/, 13558 /*Call Down the Thunder*/, 13605 /*The Last Refugee*/, 13547 /*Coaxing the Spirits*/, 13573 /*Malfurion's Return*/, 13543 /*Three Hammers to Break*/, 13542 /*Against the Wind*/, 13601 /*In Aid of the Refugees*/, 13519 /*The Twilight's Hammer*/, 13596 /*Twilight Plans*/, 13591 /*Disturbing Connections*/, 13515 /*Ending the Threat*/, 13514 /*The Ancients' Ire*/, 13590 /*The Front Line*/, 13844 /*The Looting of Althalaxx*/, 13513 /*On the Brink*/, 13512 /*Strategic Strikes*/, 13511 /*One Bitter Wish*/, 13507 /*Denying Manpower*/, 13509 /*War Supplies*/, 13508 /*Swift Response*/, 13506 /*Reason to Worry*/, 13504 /*Shatterspear Laborers*/, 13505 /*Remnants of the Highborne*/, 13560 /*An Ocean Not So Deep*/, 13589 /*The Shatterspear Invaders*/, 13599 /*Grimclaw's Return*/, 13569 /*The Ritual Bond*/, 13565 /*Twice Removed*/, 13598 /*Unsavory Remedies*/, 13566 /*Ritual Materials*/, 13563 /*A Love Eternal*/, 13564 /*A Lost Companion*/, 13562 /*The Final Flame of Bashal'Aran*/, 13831 /*A Troubling Prescription*/, 13557 /*Bearer of Good Fortune*/, 13529 /*The Corruption's Source*/, 13554 /*A Cure In The Dark*/, 13528 /*Buzzbox 723*/, 13527 /*No Accounting for Taste*/, 13521 /*Buzzbox 413*/, 13520 /*The Boon of the Seas*/, 13522 /*Threat from the Water*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(13912, 1, 273, 6, 0, 50, 500, 600, 0, 46313), -- Swamped Secrets
(13907, 1, 5, 0, 0, 0, 500, 0, 0, 46313), -- Sweeping Clean the Ruins
(13911, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Absent-Minded Prospector
(13893, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Soggoth and Kronn
(13572, 1, 1, 0, 0, 0, 0, 0, 0, 46313), -- Jadefire Braziers
(13545, 1, 1, 0, 0, 0, 0, 0, 0, 46313), -- Cleansing the Afflicted
(13882, 1, 0, 0, 0, 50, 0, 0, 0, 46313), -- The Seeds of Life
(13896, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Unearthed Knowledge
(13544, 1, 1, 0, 0, 0, 0, 0, 0, 46313), -- The Bear's Blessing
(13948, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Stepping Up Surveillance
(13881, 1, 6, 0, 0, 50, 800, 0, 0, 46313), -- Consumed
(13892, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Leave No Tracks
(13902, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Mounting the Offensive
(13588, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Eye of All Storms
(13940, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Leaving the Dream
(13587, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Waking Nightmare
(13586, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Emerald Dream
(13581, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Blackwood Pledge
(13580, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- Soothing the Elements
(13576, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Mutual Aid
(13585, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- Sworn to Protect
(13584, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Calming the Earth
(13583, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Wildkin's Oath
(13582, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Elune's Fire
(13578, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Aroom's Farewell
(13575, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Land Is in Their Blood
(13579, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- Protector of Ameth'Aran
(13577, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Last Wildkin
(13558, 1, 1, 25, 0, 0, 0, 0, 0, 46313), -- Call Down the Thunder
(13605, 1, 5, 25, 0, 0, 0, 0, 0, 46313), -- The Last Refugee
(13547, 1, 1, 0, 0, 0, 0, 0, 0, 46313), -- Coaxing the Spirits
(13573, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Malfurion's Return
(13543, 1, 25, 0, 0, 0, 0, 0, 0, 46313), -- Three Hammers to Break
(13542, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- Against the Wind
(13601, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- In Aid of the Refugees
(13519, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Twilight's Hammer
(13596, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Twilight Plans
(13591, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Disturbing Connections
(13515, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- Ending the Threat
(13514, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Ancients' Ire
(13590, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Front Line
(13844, 3, 396, 273, 0, 100, 800, 500, 0, 46313), -- The Looting of Althalaxx
(13513, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- On the Brink
(13512, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- Strategic Strikes
(13511, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- One Bitter Wish
(13507, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- Denying Manpower
(13509, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- War Supplies
(13508, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- Swift Response
(13506, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Reason to Worry
(13504, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- Shatterspear Laborers
(13505, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Remnants of the Highborne
(13560, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- An Ocean Not So Deep
(13589, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Shatterspear Invaders
(13599, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- Grimclaw's Return
(13569, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Ritual Bond
(13565, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- Twice Removed
(13598, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Unsavory Remedies
(13566, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- Ritual Materials
(13563, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- A Love Eternal
(13564, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- A Lost Companion
(13562, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Final Flame of Bashal'Aran
(13831, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- A Troubling Prescription
(13557, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Bearer of Good Fortune
(13529, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Corruption's Source
(13554, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- A Cure In The Dark
(13528, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- Buzzbox 723
(13527, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- No Accounting for Taste
(13521, 5, 0, 0, 0, 0, 0, 0, 0, 46313), -- Buzzbox 413
(13520, 2, 1, 0, 0, 0, 60, 0, 0, 46313), -- The Boon of the Seas
(13522, 1, 0, 0, 0, 0, 0, 0, 0, 46313); -- Threat from the Water

UPDATE `quest_details` SET `VerifiedBuild`=46313 WHERE `ID` IN (13526, 13525, 13523, 13561, 13518);

DELETE FROM `quest_request_items` WHERE `ID`=13512;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(13512, 0, 1, 0, 0, 'It\'s good to see you back.', 46313); -- Strategic Strikes

UPDATE `quest_request_items` SET `EmoteOnIncomplete`=6, `VerifiedBuild`=46313 WHERE `ID`=13505; -- Remnants of the Highborne
UPDATE `quest_request_items` SET `VerifiedBuild`=46313 WHERE `ID` IN (13587, 13578, 13569);


UPDATE `creature_queststarter` SET `VerifiedBuild`=46313 WHERE (`id`=34342 AND `quest`=13912) OR (`id`=34340 AND `quest` IN (13907,13893)) OR (`id`=34343 AND `quest`=13911) OR (`id`=32968 AND `quest`=13572) OR (`id`=32967 AND `quest` IN (13545,13544,13526)) OR (`id`=34301 AND `quest` IN (13882,13881)) OR (`id`=34404 AND `quest`=13896) OR (`id`=33250 AND `quest`=13525) OR (`id`=34402 AND `quest`=13892) OR (`id`=33091 AND `quest` IN (13902,13588,13586,13575,13579,13577)) OR (`id`=33166 AND `quest` IN (13940,13587)) OR (`id`=33117 AND `quest` IN (13581,13580,13576)) OR (`id`=33112 AND `quest` IN (13585,13584)) OR (`id`=33119 AND `quest` IN (13583,13582,13578)) OR (`id`=6887 AND `quest` IN (13558,13547)) OR (`id`=33232 AND `quest`=13605) OR (`id`=32987 AND `quest` IN (13573,13543)) OR (`id`=3694 AND `quest`=13542) OR (`id`=32912 AND `quest` IN (13601,13519,13596)) OR (`id`=32932 AND `quest`=13523) OR (`id`=33178 AND `quest`=13515) OR (`id`=33176 AND `quest`=13514) OR (`id`=32963 AND `quest` IN (13590,13512,13509,13508)) OR (`id`=34041 AND `quest`=13844) OR (`id`=32966 AND `quest` IN (13513,13505)) OR (`id`=33055 AND `quest`=13511) OR (`id`=32965 AND `quest` IN (13507,13504)) OR (`id`=32979 AND `quest`=13560) OR (`id`=32971 AND `quest` IN (13589,13562,13522)) OR (`id`=33048 AND `quest` IN (13599,13569,13598,13566)) OR (`id`=33126 AND `quest`=13565) OR (`id`=33177 AND `quest`=13561) OR (`id`=32959 AND `quest`=13563) OR (`id`=32960 AND `quest`=13564) OR (`id`=32978 AND `quest`=13529) OR (`id`=32977 AND `quest` IN (13528,13521)) OR (`id`=32972 AND `quest`=13520) OR (`id`=32973 AND `quest`=13518);


UPDATE `creature_questender` SET `VerifiedBuild`=46313 WHERE (`id`=34340 AND `quest`=13896) OR (`id`=32967 AND `quest` IN (13544,13526,13525)) OR (`id`=34301 AND `quest`=13881) OR (`id`=34402 AND `quest` IN (13948,13902)) OR (`id`=33091 AND `quest` IN (13588,13940,13581,13585,13583,13573)) OR (`id`=33166 AND `quest` IN (13587,13586)) OR (`id`=33117 AND `quest` IN (13580,13576,13575)) OR (`id`=33112 AND `quest` IN (13584,13579)) OR (`id`=33119 AND `quest` IN (13582,13578,13577)) OR (`id`=32987 AND `quest` IN (13558,13543)) OR (`id`=6887 AND `quest`=13547) OR (`id`=33231 AND `quest`=13605) OR (`id`=3694 AND `quest`=13542) OR (`id`=33107 AND `quest`=13601) OR (`id`=32912 AND `quest` IN (13596,13519)) OR (`id`=32932 AND `quest`=13523) OR (`id`=32959 AND `quest` IN (13570,13563)) OR (`id`=32971 AND `quest` IN (13591,13562,13522)) OR (`id`=33176 AND `quest`=13514) OR (`id`=33178 AND `quest` IN (13515,13590)) OR (`id`=34041 AND `quest`=13844) OR (`id`=32966 AND `quest` IN (13513,13505)) OR (`id`=32963 AND `quest` IN (13512,13509,13511,13506,13589)) OR (`id`=32965 AND `quest` IN (13507,13504)) OR (`id`=33055 AND `quest`=13508) OR (`id`=32979 AND `quest`=13560) OR (`id`=32972 AND `quest` IN (13599,13520)) OR (`id`=33048 AND `quest` IN (13569,13566,13598,13564)) OR (`id`=33132 AND `quest`=13597) OR (`id`=33126 AND `quest`=13565) OR (`id`=33177 AND `quest`=13561) OR (`id`=32977 AND `quest` IN (13554,13527)) OR (`id`=32978 AND `quest` IN (13831,13557,13529)) OR (`id`=32973 AND `quest` IN (13518,26383));


UPDATE `gameobject_queststarter` SET `VerifiedBuild`=46313 WHERE (`id`=194714 AND `quest`=13831) OR (`id`=194122 AND `quest`=13554) OR (`id`=194105 AND `quest`=13527);


UPDATE `gameobject_questender` SET `VerifiedBuild`=46313 WHERE (`id`=194122 AND `quest`=13528) OR (`id`=194105 AND `quest`=13521) OR (`id`=208115 AND `quest`=28951);



DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (6017,117341,43440));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(6017, 0, 0, 0, 5, 46313),
(117341, 0, 0, 0, 371, 46313),
(43440, 0, 0, 0, 2108, 46313);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46313 WHERE (`DifficultyID`=0 AND `Entry` IN (34342,34343,34340,34350,34356,34369,2206,2233,32996,33000,2207,34339,40271,175154,2192,34326,34427,34405,34406,34413,33044,32968,32967,33043,34417,32997,34334,2165,62250,34302,34392,33253,34403,34402,33250,33072,34404,34301,43425,34446,34498,34306,34396,34318,2184,34243,34401,34400,33166,34398,34399,33057,33058,34370,34368,34367,3560,2071,2070,2237,24042,33117,33084,32999,33112,34299,34388,33119,34385,33083,34316,33091,34282,34293,33078,33077,33076,33075,33046,33034,33038,33002,32990,33001,33036,33045,33041,33047,33037,33039,32989,33111,33232,6887,33035,32986,33040,33033,32988,32985,34304,33231,32987,33107,4194,4190,33106,3694,32937,32899,20455,32862,33178,32851,33913,32855,33176,32858,43742,34309,34321,34033,32964,32970,33055,34248,33056,32859,32869,34231,32965,32963,32863,34041,43419,32966,32861,34103,33071,34205,34207,32890,32932,33133,33132,33131,34009,7016,33207,34315,33127,33053,33126,33048,33296,32888,33206,33978,33181,33179,33177,33180,61080,33020,33997,33980,33981,2191,33022,33024,33023,33021,48648,48650,34030,34046,32868,32860,33905,33903,32959,32962,32960,32961,33884,33009,32975,33277,33262,33359,62246,33095,33103,33100,33099,33101,32911,33098,33096,33102,33097,33094,33093,61081,33311,32928,64375,33313,43436,43428,63083,33864,49942,49940,49927,32912,51997,11037,32971,1412,3841,49939,32977,49923,33175,33115,32972,43439,43431,43429,32936,43424,43420,10085,6145,32979,32973,4187,34056,49968,32978,49963,32974,32935,32969));
UPDATE `creature_template_scaling` SET `ContentTuningID`=5, `VerifiedBuild`=46313 WHERE (`Entry`=22895 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `LevelScalingDeltaMin`=0, `LevelScalingDeltaMax`=0, `VerifiedBuild`=46313 WHERE (`Entry`=63084 AND `DifficultyID`=0);


UPDATE `creature_model_info` SET `VerifiedBuild`=46313 WHERE `DisplayID` IN (29188, 1277, 29186, 12349, 979, 5772, 29221, 29222, 28002, 5510, 1283, 28016, 29206, 33205, 29214, 29213, 13409, 1455, 29215, 29172, 33366, 5774, 29211, 32711, 18083, 19634, 4607, 2030, 3031, 11450, 1070, 28505, 5927, 12234, 29180, 35095, 29179, 17607, 21302, 1825, 4589, 28427, 1770, 12432, 14501, 18657, 28425, 15880, 1286, 5745, 4405, 28454, 17612, 2529, 28424, 29177, 5022, 28423, 28453, 28452, 28451, 4409, 4399, 28455, 28422, 28367, 28341, 28473, 28323, 28322, 28321, 10858, 28328, 28325, 1421, 29061, 11663, 28414, 4487, 29143, 29144, 29134, 29141, 29142, 29135, 29137, 29136, 28348, 28336, 28343, 28339, 28338, 1750, 28340, 28436, 28342, 29063, 33360, 2530, 28337, 29084, 28326, 28327, 26300, 28574, 5561, 28394, 29027, 20604, 321, 7618, 28356, 28357, 1937, 985, 28472, 982, 4341, 28335, 29067, 28333, 28347, 28334, 1757, 8229, 1899, 4402, 22175, 1006, 14316, 28391, 28388, 28385, 1956, 28386, 28392, 28384, 28382, 28387, 28383, 28390, 28389, 42408, 42409, 42407, 33370, 33367, 36682, 36681, 36672, 28373, 37705, 10575, 2865, 1932, 36680, 4474, 36667, 32722, 28415, 33376, 33369, 33368, 5560, 33363, 33361, 9294, 4878, 5023, 28416, 4407, 2429, 36798, 4485, 36799, 9549);
UPDATE `creature_model_info` SET `BoundingRadius`=0.310000002384185791, `CombatReach`=3, `VerifiedBuild`=46313 WHERE `DisplayID`=32264;
UPDATE `creature_model_info` SET `BoundingRadius`=1.243913531303405761, `VerifiedBuild`=46313 WHERE `DisplayID`=9573;
UPDATE `creature_model_info` SET `BoundingRadius`=0.450000017881393432, `CombatReach`=0, `VerifiedBuild`=46313 WHERE `DisplayID`=652;
UPDATE `creature_model_info` SET `CombatReach`=0, `VerifiedBuild`=46313 WHERE `DisplayID` IN (2007, 4920, 2013, 478);
UPDATE `creature_model_info` SET `BoundingRadius`=0.79957592487335205, `CombatReach`=2, `VerifiedBuild`=46313 WHERE `DisplayID`=1132;
UPDATE `creature_model_info` SET `DisplayID_Other_Gender`=0, `VerifiedBuild`=46313 WHERE `DisplayID` IN (2870, 2872, 2871, 2869, 4217, 20484, 4220, 4412, 4847, 4846, 4848, 4845);
UPDATE `creature_model_info` SET `BoundingRadius`=1.003674507141113281, `VerifiedBuild`=46313 WHERE `DisplayID` IN (6822, 5773, 6802, 936);
UPDATE `creature_model_info` SET `BoundingRadius`=1.087314009666442871, `VerifiedBuild`=46313 WHERE `DisplayID`=1996;
UPDATE `creature_model_info` SET `BoundingRadius`=1.119720697402954101, `CombatReach`=2.299999952316284179, `VerifiedBuild`=46313 WHERE `DisplayID`=26940;
UPDATE `creature_model_info` SET `BoundingRadius`=0.090000003576278686, `VerifiedBuild`=46313 WHERE `DisplayID`=42412;
UPDATE `creature_model_info` SET `BoundingRadius`=1.265771150588989257, `CombatReach`=2.599999904632568359, `VerifiedBuild`=46313 WHERE `DisplayID`=9276;
UPDATE `creature_model_info` SET `BoundingRadius`=1.643068432807922363, `CombatReach`=0, `VerifiedBuild`=46313 WHERE `DisplayID`=12350;
UPDATE `creature_model_info` SET `BoundingRadius`=0.60000002384185791, `CombatReach`=6, `VerifiedBuild`=46313 WHERE `DisplayID` IN (29212, 29210);
UPDATE `creature_model_info` SET `BoundingRadius`=0.310000002384185791, `VerifiedBuild`=46313 WHERE `DisplayID`=24905;
UPDATE `creature_model_info` SET `BoundingRadius`=0.725234746932983398, `CombatReach`=1.368367433547973632, `VerifiedBuild`=46313 WHERE `DisplayID`=11449;
UPDATE `creature_model_info` SET `BoundingRadius`=0.920034945011138916, `VerifiedBuild`=46313 WHERE `DisplayID`=6821;
UPDATE `creature_model_info` SET `BoundingRadius`=1.479015827178955078, `VerifiedBuild`=46313 WHERE `DisplayID`=4766;
UPDATE `creature_model_info` SET `BoundingRadius`=22.86397933959960937, `VerifiedBuild`=46313 WHERE `DisplayID`=31938;
UPDATE `creature_model_info` SET `BoundingRadius`=1.70000004768371582, `CombatReach`=1.5, `VerifiedBuild`=46313 WHERE `DisplayID`=479;
UPDATE `creature_model_info` SET `CombatReach`=1.25, `VerifiedBuild`=46313 WHERE `DisplayID`=5187;
UPDATE `creature_model_info` SET `BoundingRadius`=1.405355453491210937, `VerifiedBuild`=46313 WHERE `DisplayID`=15221;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `CombatReach`=0.5, `VerifiedBuild`=46313 WHERE `DisplayID`=74514;
UPDATE `creature_model_info` SET `BoundingRadius`=1.266595959663391113, `VerifiedBuild`=46313 WHERE `DisplayID`=29029;
UPDATE `creature_model_info` SET `BoundingRadius`=1.947340369224548339, `CombatReach`=4, `VerifiedBuild`=46313 WHERE `DisplayID`=29028;
UPDATE `creature_model_info` SET `CombatReach`=1.149999976158142089, `VerifiedBuild`=46313 WHERE `DisplayID`=4982;
UPDATE `creature_model_info` SET `BoundingRadius`=0.973670184612274169, `CombatReach`=2, `VerifiedBuild`=46313 WHERE `DisplayID`=913;
UPDATE `creature_model_info` SET `BoundingRadius`=0.542176127433776855, `VerifiedBuild`=46313 WHERE `DisplayID`=2722;
UPDATE `creature_model_info` SET `BoundingRadius`=1.099327802658081054, `VerifiedBuild`=46313 WHERE `DisplayID`=4762;
UPDATE `creature_model_info` SET `BoundingRadius`=1.2405242919921875, `VerifiedBuild`=46313 WHERE `DisplayID`=5430;
UPDATE `creature_model_info` SET `BoundingRadius`=1.219684958457946777, `VerifiedBuild`=46313 WHERE `DisplayID`=2161;
UPDATE `creature_model_info` SET `BoundingRadius`=0.89665764570236206, `CombatReach`=0, `VerifiedBuild`=46313 WHERE `DisplayID`=2017;
UPDATE `creature_model_info` SET `BoundingRadius`=0.386561989784240722, `CombatReach`=0, `VerifiedBuild`=46313 WHERE `DisplayID`=62616;
UPDATE `creature_model_info` SET `BoundingRadius`=1.159902095794677734, `VerifiedBuild`=46313 WHERE `DisplayID`=37531;
UPDATE `creature_model_info` SET `BoundingRadius`=0.889258325099945068, `VerifiedBuild`=46313 WHERE `DisplayID`=1015;
UPDATE `creature_model_info` SET `BoundingRadius`=0.773268103599548339, `VerifiedBuild`=46313 WHERE `DisplayID`=911;
UPDATE `creature_model_info` SET `BoundingRadius`=0.251020431518554687, `CombatReach`=0, `VerifiedBuild`=46313 WHERE `DisplayID`=30059;
UPDATE `creature_model_info` SET `BoundingRadius`=1.07895207405090332, `VerifiedBuild`=46313 WHERE `DisplayID`=8013;
UPDATE `creature_model_info` SET `BoundingRadius`=0.312734246253967285, `VerifiedBuild`=46313 WHERE `DisplayID`=30159;
UPDATE `creature_model_info` SET `BoundingRadius`=0.521223723888397216, `VerifiedBuild`=46313 WHERE `DisplayID`=30160;
UPDATE `creature_model_info` SET `BoundingRadius`=0.769829750061035156, `CombatReach`=0, `VerifiedBuild`=46313 WHERE `DisplayID`=42863;
UPDATE `creature_model_info` SET `BoundingRadius`=0.347222000360488891, `CombatReach`=1.5, `VerifiedBuild`=46313 WHERE `DisplayID`=33673;
UPDATE `creature_model_info` SET `BoundingRadius`=3.274714231491088867, `VerifiedBuild`=46313 WHERE `DisplayID`=14514;
UPDATE `creature_model_info` SET `BoundingRadius`=1.066211700439453125, `CombatReach`=1.392857074737548828, `VerifiedBuild`=46313 WHERE `DisplayID`=1938;

DELETE FROM `creature_template_spell` WHERE (`CreatureID`=32851 AND `Index`=0);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(32851, 0, 63996, 46313); -- Vengeful Protector

UPDATE `creature_template_spell` SET `Spell`=65579, `VerifiedBuild`=46313 WHERE (`CreatureID`=34243 AND `Index`=0); -- Thessera


UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46313 WHERE `ID`=13912; -- Swamped Secrets
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46313 WHERE `ID`=13911; -- The Absent-Minded Prospector
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46313 WHERE `ID`=13893; -- Soggoth and Kronn
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46313 WHERE `ID`=13907; -- Sweeping Clean the Ruins
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46313 WHERE `ID`=25317; -- Protect the World Tree
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46313 WHERE `ID`=13572; -- Jadefire Braziers
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46313 WHERE `ID`=13545; -- Cleansing the Afflicted
UPDATE `quest_template` SET `RewardBonusMoney`=2400, `VerifiedBuild`=46313 WHERE `ID`=13882; -- The Seeds of Life
UPDATE `quest_template` SET `RewardBonusMoney`=1200, `VerifiedBuild`=46313 WHERE `ID`=13896; -- Unearthed Knowledge
UPDATE `quest_template` SET `RewardBonusMoney`=2400, `VerifiedBuild`=46313 WHERE `ID`=13544; -- The Bear's Blessing
UPDATE `quest_template` SET `RewardBonusMoney`=1800, `VerifiedBuild`=46313 WHERE `ID`=13948; -- Stepping Up Surveillance
UPDATE `quest_template` SET `RewardBonusMoney`=2400, `VerifiedBuild`=46313 WHERE `ID`=13526; -- The Bear's Paw
UPDATE `quest_template` SET `RewardBonusMoney`=2400, `VerifiedBuild`=46313 WHERE `ID`=13881; -- Consumed
UPDATE `quest_template` SET `RewardBonusMoney`=300, `VerifiedBuild`=46313 WHERE `ID`=13525; -- What's Happening to the Blackwood Furbolg?
UPDATE `quest_template` SET `RewardBonusMoney`=2400, `VerifiedBuild`=46313 WHERE `ID`=13892; -- Leave No Tracks
UPDATE `quest_template` SET `RewardBonusMoney`=300, `VerifiedBuild`=46313 WHERE `ID`=13902; -- Mounting the Offensive
UPDATE `quest_template` SET `RewardBonusMoney`=2280, `VerifiedBuild`=46313 WHERE `ID`=13588; -- The Eye of All Storms
UPDATE `quest_template` SET `RewardBonusMoney`=1140, `VerifiedBuild`=46313 WHERE `ID`=13940; -- Leaving the Dream
UPDATE `quest_template` SET `RewardBonusMoney`=1140, `VerifiedBuild`=46313 WHERE `ID`=13587; -- The Waking Nightmare
UPDATE `quest_template` SET `RewardBonusMoney`=2280, `VerifiedBuild`=46313 WHERE `ID`=13586; -- The Emerald Dream
UPDATE `quest_template` SET `RewardBonusMoney`=570, `VerifiedBuild`=46313 WHERE `ID`=13581; -- The Blackwood Pledge
UPDATE `quest_template` SET `RewardBonusMoney`=2280, `VerifiedBuild`=46313 WHERE `ID`=13580; -- Soothing the Elements
UPDATE `quest_template` SET `RewardBonusMoney`=2280, `VerifiedBuild`=46313 WHERE `ID`=13576; -- Mutual Aid
UPDATE `quest_template` SET `RewardBonusMoney`=300, `VerifiedBuild`=46313 WHERE `ID`=13585; -- Sworn to Protect
UPDATE `quest_template` SET `RewardBonusMoney`=2220, `VerifiedBuild`=46313 WHERE `ID`=13584; -- Calming the Earth
UPDATE `quest_template` SET `RewardBonusMoney`=1140, `VerifiedBuild`=46313 WHERE `ID`=13583; -- The Wildkin's Oath
UPDATE `quest_template` SET `RewardBonusMoney`=2220, `VerifiedBuild`=46313 WHERE `ID`=13582; -- Elune's Fire
UPDATE `quest_template` SET `RewardBonusMoney`=2220, `VerifiedBuild`=46313 WHERE `ID`=13578; -- Aroom's Farewell
UPDATE `quest_template` SET `RewardBonusMoney`=270, `VerifiedBuild`=46313 WHERE `ID`=13579; -- Protector of Ameth'Aran
UPDATE `quest_template` SET `RewardBonusMoney`=1140, `VerifiedBuild`=46313 WHERE `ID`=13577; -- The Last Wildkin
UPDATE `quest_template` SET `RewardBonusMoney`=2700, `Flags`=8, `VerifiedBuild`=46313 WHERE `ID`=13558; -- Call Down the Thunder
UPDATE `quest_template` SET `RewardBonusMoney`=2700, `VerifiedBuild`=46313 WHERE `ID`=13605; -- The Last Refugee
UPDATE `quest_template` SET `RewardBonusMoney`=2160, `VerifiedBuild`=46313 WHERE `ID`=13547; -- Coaxing the Spirits
UPDATE `quest_template` SET `RewardBonusMoney`=270, `VerifiedBuild`=46313 WHERE `ID`=13573; -- Malfurion's Return
UPDATE `quest_template` SET `RewardBonusMoney`=2160, `VerifiedBuild`=46313 WHERE `ID`=13543; -- Three Hammers to Break
UPDATE `quest_template` SET `RewardBonusMoney`=2160, `VerifiedBuild`=46313 WHERE `ID`=13542; -- Against the Wind
UPDATE `quest_template` SET `RewardBonusMoney`=540, `VerifiedBuild`=46313 WHERE `ID`=13601; -- In Aid of the Refugees
UPDATE `quest_template` SET `RewardBonusMoney`=2040, `VerifiedBuild`=46313 WHERE `ID`=13523; -- Power Over the Tides
UPDATE `quest_template` SET `RewardBonusMoney`=510, `VerifiedBuild`=46313 WHERE `ID`=13575; -- The Land Is in Their Blood
UPDATE `quest_template` SET `RewardBonusMoney`=2040, `VerifiedBuild`=46313 WHERE `ID`=13596; -- Twilight Plans
UPDATE `quest_template` SET `RewardBonusMoney`=2040, `Flags`=8, `VerifiedBuild`=46313 WHERE `ID`=13519; -- The Twilight's Hammer
UPDATE `quest_template` SET `RewardBonusMoney`=2040, `VerifiedBuild`=46313 WHERE `ID`=13570; -- Remembrance of Auberdine
UPDATE `quest_template` SET `RewardBonusMoney`=270, `VerifiedBuild`=46313 WHERE `ID`=13036; -- Honor Above All Else
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46313 WHERE `ID`=13591; -- Disturbing Connections
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `Flags`=8, `VerifiedBuild`=46313 WHERE `ID`=13515; -- Ending the Threat
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46313 WHERE `ID`=13514; -- The Ancients' Ire
UPDATE `quest_template` SET `RewardBonusMoney`=1980, `VerifiedBuild`=46313 WHERE `ID`=13590; -- The Front Line
UPDATE `quest_template` SET `RewardBonusMoney`=1920, `Flags`=8, `VerifiedBuild`=46313 WHERE `ID`=13844; -- The Looting of Althalaxx
UPDATE `quest_template` SET `RewardBonusMoney`=1920, `VerifiedBuild`=46313 WHERE `ID`=13513; -- On the Brink
UPDATE `quest_template` SET `RewardBonusMoney`=1920, `VerifiedBuild`=46313 WHERE `ID`=13512; -- Strategic Strikes
UPDATE `quest_template` SET `RewardBonusMoney`=1920, `VerifiedBuild`=46313 WHERE `ID`=13511; -- One Bitter Wish
UPDATE `quest_template` SET `RewardBonusMoney`=1800, `VerifiedBuild`=46313 WHERE `ID`=13507; -- Denying Manpower
UPDATE `quest_template` SET `RewardBonusMoney`=1800, `VerifiedBuild`=46313 WHERE `ID`=13509; -- War Supplies
UPDATE `quest_template` SET `RewardBonusMoney`=1800, `VerifiedBuild`=46313 WHERE `ID`=13508; -- Swift Response
UPDATE `quest_template` SET `RewardBonusMoney`=1800, `VerifiedBuild`=46313 WHERE `ID`=13506; -- Reason to Worry
UPDATE `quest_template` SET `RewardBonusMoney`=1800, `VerifiedBuild`=46313 WHERE `ID`=13504; -- Shatterspear Laborers
UPDATE `quest_template` SET `RewardBonusMoney`=1800, `VerifiedBuild`=46313 WHERE `ID`=13505; -- Remnants of the Highborne
UPDATE `quest_template` SET `RewardBonusMoney`=1740, `VerifiedBuild`=46313 WHERE `ID`=13560; -- An Ocean Not So Deep
UPDATE `quest_template` SET `RewardBonusMoney`=1320, `VerifiedBuild`=46313 WHERE `ID`=13589; -- The Shatterspear Invaders
UPDATE `quest_template` SET `RewardBonusMoney`=1320, `VerifiedBuild`=46313 WHERE `ID`=13599; -- Grimclaw's Return
UPDATE `quest_template` SET `VerifiedBuild`=46313 WHERE `ID`=13597;
UPDATE `quest_template` SET `RewardBonusMoney`=1740, `VerifiedBuild`=46313 WHERE `ID`=13569; -- The Ritual Bond
UPDATE `quest_template` SET `RewardBonusMoney`=16500, `Flags`=8, `VerifiedBuild`=46313 WHERE `ID`=13565; -- Twice Removed
UPDATE `quest_template` SET `RewardBonusMoney`=16500, `VerifiedBuild`=46313 WHERE `ID`=13598; -- Unsavory Remedies
UPDATE `quest_template` SET `RewardBonusMoney`=16500, `VerifiedBuild`=46313 WHERE `ID`=13566; -- Ritual Materials
UPDATE `quest_template` SET `RewardBonusMoney`=15900, `VerifiedBuild`=46313 WHERE `ID`=13561; -- Solace for the Highborne
UPDATE `quest_template` SET `RewardBonusMoney`=15900, `Flags`=8, `VerifiedBuild`=46313 WHERE `ID`=13563; -- A Love Eternal
UPDATE `quest_template` SET `RewardBonusMoney`=15900, `VerifiedBuild`=46313 WHERE `ID`=13564; -- A Lost Companion
UPDATE `quest_template` SET `RewardBonusMoney`=15900, `VerifiedBuild`=46313 WHERE `ID`=13562; -- The Final Flame of Bashal'Aran
UPDATE `quest_template` SET `RewardBonusMoney`=12000, `VerifiedBuild`=46313 WHERE `ID`=13831; -- A Troubling Prescription
UPDATE `quest_template` SET `RewardBonusMoney`=12000, `VerifiedBuild`=46313 WHERE `ID`=13557; -- Bearer of Good Fortune
UPDATE `quest_template` SET `RewardBonusMoney`=12000, `Flags`=8, `VerifiedBuild`=46313 WHERE `ID`=13529; -- The Corruption's Source
UPDATE `quest_template` SET `RewardBonusMoney`=12000, `VerifiedBuild`=46313 WHERE `ID`=13554; -- A Cure In The Dark
UPDATE `quest_template` SET `RewardBonusMoney`=8400, `VerifiedBuild`=46313 WHERE `ID`=13528; -- Buzzbox 723
UPDATE `quest_template` SET `RewardBonusMoney`=8400, `VerifiedBuild`=46313 WHERE `ID`=13527; -- No Accounting for Taste
UPDATE `quest_template` SET `RewardBonusMoney`=8400, `VerifiedBuild`=46313 WHERE `ID`=13521; -- Buzzbox 413
UPDATE `quest_template` SET `RewardBonusMoney`=8400, `VerifiedBuild`=46313 WHERE `ID`=13520; -- The Boon of the Seas
UPDATE `quest_template` SET `RewardBonusMoney`=2700, `Expansion`=9, `VerifiedBuild`=46313 WHERE `ID`=28951; -- Candy Bucket
UPDATE `quest_template` SET `RewardBonusMoney`=5400, `VerifiedBuild`=46313 WHERE `ID`=13518; -- The Last Wave of Survivors


UPDATE `quest_objectives` SET `VerifiedBuild`=46313 WHERE `ID` IN (267171, 267505, 267514, 267513, 267512, 267315, 252342, 266217, 266216, 267269, 267268, 253558, 263710, 266121, 257798, 267388, 254169, 254168, 254167, 253259, 264751, 264750, 266049, 253530, 267435, 264536, 264535, 251687, 262505, 262504, 267491, 253228, 253227, 253325, 265676, 267309, 266153, 252950, 266473, 266472, 266471, 266016, 266015, 265958, 265957, 267649, 256013, 256239, 266621, 266620, 257477, 266022, 256073, 266042, 253095);
UPDATE `quest_objectives` SET `Description`='Murloc Squatters Killed', `VerifiedBuild`=46313 WHERE `ID`=267359; -- 267359
UPDATE `quest_objectives` SET `Description`='Blackwood Furbolg Cleansed', `VerifiedBuild`=46313 WHERE `ID`=264908; -- 264908
UPDATE `quest_objectives` SET `Description`='Master\'s Glaive surveillance', `VerifiedBuild`=46313 WHERE `ID`=264781; -- 264781
UPDATE `quest_objectives` SET `Description`='Twilight\'s Hammer surveillance', `VerifiedBuild`=46313 WHERE `ID`=266852; -- 266852
UPDATE `quest_objectives` SET `Description`='Ritual of Soothing complete', `VerifiedBuild`=46313 WHERE `ID`=263989; -- 263989
UPDATE `quest_objectives` SET `Description`='Unbound Fire Elemental absorbed', `VerifiedBuild`=46313 WHERE `ID`=263993; -- 263993
UPDATE `quest_objectives` SET `Description`='Caylais Moonfeather\'s spirit coaxed', `VerifiedBuild`=46313 WHERE `ID`=266057; -- 266057
UPDATE `quest_objectives` SET `Description`='Taldan\'s spirit coaxed', `VerifiedBuild`=46313 WHERE `ID`=266056; -- 266056
UPDATE `quest_objectives` SET `Description`='Sentinel Elissa Starbreeze\'s spirit coaxed', `VerifiedBuild`=46313 WHERE `ID`=266055; -- 266055
UPDATE `quest_objectives` SET `Description`='Thundris Windweaver\'s spirit coaxed', `VerifiedBuild`=46313 WHERE `ID`=266054; -- 266054
UPDATE `quest_objectives` SET `Description`='Frenzied Cyclone bracers destroyed', `VerifiedBuild`=46313 WHERE `ID`=252588; -- 252588
UPDATE `quest_objectives` SET `Description`='Tidal Spirit Soothed', `VerifiedBuild`=46313 WHERE `ID`=267522; -- 267522
UPDATE `quest_objectives` SET `Description`='Shatterspear Structures destroyed', `VerifiedBuild`=46313 WHERE `ID`=266598; -- 266598
UPDATE `quest_objectives` SET `Description`='Shatterspear Vale Trolls killed', `VerifiedBuild`=46313 WHERE `ID`=266597; -- 266597
UPDATE `quest_objectives` SET `Description`='Shatterspear Armaments burned', `VerifiedBuild`=46313 WHERE `ID`=267385; -- 267385
UPDATE `quest_objectives` SET `Description`='Scavenging Greymist Murlocs', `VerifiedBuild`=46313 WHERE `ID`=256718; -- 256718
UPDATE `quest_objectives` SET `Description`='Withered Ents called', `VerifiedBuild`=46313 WHERE `ID`=266154; -- 266154
UPDATE `quest_objectives` SET `Description`='Uncorrupted animals freed', `VerifiedBuild`=46313 WHERE `ID`=256238; -- 256238
UPDATE `quest_objectives` SET `Description`='Volcor rescued', `VerifiedBuild`=46313 WHERE `ID`=267130; -- 267130
UPDATE `quest_objectives` SET `Description`='Shaldyn rescued', `VerifiedBuild`=46313 WHERE `ID`=267129; -- 267129
UPDATE `quest_objectives` SET `Description`='Gershala Nightwhisper rescued', `VerifiedBuild`=46313 WHERE `ID`=267128; -- 267128
UPDATE `quest_objectives` SET `Description`='Cerellean Whiteclaw rescued', `VerifiedBuild`=46313 WHERE `ID`=267127; -- 267127


UPDATE `quest_visual_effect` SET `VerifiedBuild`=46313 WHERE (`ID`=264536 AND `Index`=0);

DELETE FROM `creature_template` WHERE `entry`=194105;
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `unit_class`, `WidgetSetID`, `WidgetSetUnitConditionID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `VerifiedBuild`) VALUES
(194105, 0, 0, 'Elusive Elder Armoredon', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 156, 1, 1, 0, 5, 1, 0, 0, 222334, 46313); -- Elusive Elder Armoredon

UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2237; -- Moonstalker Sire
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=117341; -- Naxxy
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `HealthModifier`=0.25, `VerifiedBuild`=46313 WHERE `entry`=40271; -- Tamed Crawler
UPDATE `creature_template` SET `VerifiedBuild`=46313 WHERE `entry`=88403; -- Blacksmithing Follower - Alliance
UPDATE `creature_template` SET `femaleName`='', `type`=4, `VerifiedBuild`=46313 WHERE `entry` IN (43742, 32851); -- Vengeful Protector
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=6887; -- Yalda
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=3560; -- Healing Ward
UPDATE `creature_template` SET `VerifiedBuild`=46313 WHERE `entry` IN (7016, 32861, 32888, 34030, 34046, 33057, 33106, 34248, 34282, 34293, 34315, 34405, 2184, 2191, 2192);
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3694; -- Sentinel Selarin
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=1, `VerifiedBuild`=46313 WHERE `entry`=20455; -- Terror Totem
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.5, `VerifiedBuild`=46313 WHERE `entry`=33884; -- Corrupted Duskrat
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.200000002980232238, `VerifiedBuild`=46313 WHERE `entry`=33903; -- Thistle Bear Cub
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33905; -- Corrupted Thistle Bear Matriarch
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33913; -- Shatterspear Hut Fire Bunny
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `HealthModifier`=0.050000000745058059, `VerifiedBuild`=46313 WHERE `entry`=6017; -- Lava Spout Totem
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32855; -- Shatterspear Priestess
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32858; -- Shatterspear Champion
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32859; -- Horde Enforcer
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32860; -- Shatterspear Shaman
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33978; -- Hungry Thistle Bear
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32862; -- Jor'kil the Soulripper
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33980; -- Apothecary Furrows
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32863; -- Shatterspear Overseer
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33981; -- Greef
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32868; -- Lorenth Thundercall
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32869; -- Sheya Stormweaver
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33997; -- Cliffspring Falls Workbench
UPDATE `creature_template` SET `KillCredit2`=0, `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32890; -- Enraged Tidal Spirit
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34009; -- Withered Ent
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32899; -- High Cultist Azerynn
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry` IN (32911, 32962); -- Gershala Nightwhisper
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34033; -- Teegan Holloway
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34041; -- Mathas Wildwood
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32932; -- Moon Priestess Tharill
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32937; -- Tranquil Tidal Spirit
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=22895; -- Summoned Searing Totem
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry` IN (32959, 33093); -- Cerellean Whiteclaw
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry` IN (32960, 33094); -- Volcor
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry` IN (32961, 33095); -- Shaldyn
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32963; -- Lieutenant Morra Starbreeze
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32964; -- Sentinel Aynasha
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32965; -- Sentinel Tysha Moonblade
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32966; -- Balthule Shadowstrike
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32967; -- Elder Brolg
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32968; -- Gren Tornfur
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32970; -- Rit'ko
UPDATE `creature_template` SET `femaleName`='', `type_flags`=128, `VerifiedBuild`=46313 WHERE `entry`=32975; -- Decomposing Thistle Bear
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=24042; -- Generic Trigger LAB - OLD
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32985; -- Frenzied Cyclone
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34103; -- Keynira Owlwing
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32986; -- Frenzied Cyclone Bracers Kill Credit Bunny
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32987; -- Corvine Moonrise
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32988; -- Cloudtamer Wildmane
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32989; -- Windmaster Tzu-Tzu
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32990; -- Skylord Braax
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32996; -- Sharax the Defiler
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32997; -- Fleetfoot
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32999; -- Unbound Fire Elemental
UPDATE `creature_template` SET `femaleName`='', `type`=15, `VerifiedBuild`=46313 WHERE `entry`=33000; -- Spirit of Corruption
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33001; -- Thundris Windweaver
UPDATE `creature_template` SET `femaleName`='', `type`=6, `VerifiedBuild`=46313 WHERE `entry` IN (33002, 33078); -- Thundris Windweaver's Spirit
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33009; -- Corrupted Thistle Bear
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=48648; -- Whirlpool Camera Bunny
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=0, `VerifiedBuild`=46313 WHERE `entry`=48650; -- Whrilpool Controller Bunny (CSA)
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33020; -- Zenn Foulhoof
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33021; -- Vile Grell
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33022; -- Vile Corruptor
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.5, `VerifiedBuild`=46313 WHERE `entry`=33023; -- Uncorrupted Duskrat
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33024; -- Uncorrupted Thistle Bear
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33033; -- Sentinel Elissa Starbreeze
UPDATE `creature_template` SET `femaleName`='', `type`=6, `VerifiedBuild`=46313 WHERE `entry` IN (33034, 33076); -- Sentinel Elissa Starbreeze's Spirit
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33035; -- Taldan
UPDATE `creature_template` SET `femaleName`='', `type`=6, `VerifiedBuild`=46313 WHERE `entry` IN (33036, 33077); -- Taldan's Spirit
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=0, `VerifiedBuild`=46313 WHERE `entry`=33037; -- Caylais Moonfeather
UPDATE `creature_template` SET `femaleName`='', `type`=6, `VerifiedBuild`=46313 WHERE `entry`=33038; -- Caylais Moonfeather's Spirit
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=0, `family`=160, `VerifiedBuild`=46313 WHERE `entry`=33039; -- Enraged Hippogryph
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33040; -- Frenzied Cyclone Transform
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33041; -- Aetherion
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33042; -- Weakened Aetherion
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33043; -- Maddened Blackwood
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33044; -- Corrupted Blackwood
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=33045; -- ELM General Purpose Bunny Large (scale x5)
UPDATE `creature_template` SET `femaleName`='', `type`=6, `VerifiedBuild`=46313 WHERE `entry`=33046; -- Yalda's Spirit
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33047; -- Aetherion Vortex Bunny
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33048; -- Keeper Karithus
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33053; -- Grimclaw
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33055; -- Alanndarian Nightsong
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33056; -- Shatterspear Supplies Credit Bunny
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33058; -- Enthralled Earth Elemental
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry` IN (33071, 34309); -- Shatterspear Raider
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33072; -- Onu
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=0, `type`=6, `VerifiedBuild`=46313 WHERE `entry`=33075; -- Caylais Moonfeather's Spirit
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33083; -- Enraged Earth Elemental
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33084; -- Blackwood Furbolg
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34205; -- Gary
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34207; -- Foolhardy Adventurer
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=0, `VerifiedBuild`=46313 WHERE `entry`=33091; -- Malfurion Stormrage
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33096; -- Barithras Moonshade
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33097; -- Dalmond
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33098; -- Grondal Moonbreeze
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33099; -- Terenthis
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33100; -- Valdaron
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33101; -- Allyndia
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33102; -- Gwennyth Bly'Leggonde
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33103; -- Mavralyn
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33107; -- Priestess Alinya
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=33111; -- ELM General Purpose Bunny (scale x3) Large
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33112; -- Selenn
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34231; -- Shatterspear Water Cyclone Bunny
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33117; -- Elder Brownpaw
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33119; -- Aroom
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry` IN (34243, 33166, 34400, 34401); -- Thessera
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33126; -- Seraphine
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33127; -- Moonstalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33131; -- Great Moonstalker Spirit
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33132; -- Great Thistle Bear Spirit
UPDATE `creature_template` SET `femaleName`='', `family`=151, `VerifiedBuild`=46313 WHERE `entry`=33133; -- Great Stag Spirit
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=61080; -- Rabbit
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=61081; -- Squirrel
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=34278; -- Withers
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33176; -- Kerlonian Evershade
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33177; -- Arya Autumnlight
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33178; -- Huntress Sandrya Moonfall
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33179; -- Cursed Highborne
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33180; -- Writhing Highborne
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33181; -- Anaya Dawnrunner
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34299; -- Earth Elemental Remains
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34301; -- Kathrena Winterwisp
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34302; -- Consumed Thistle Bear
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34304; -- Wildkin Spirit
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34306; -- Darkshore Wisp
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34316; -- Twilight Portal
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34318; -- Whitetail Stag
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `movementId`=873, `VerifiedBuild`=46313 WHERE `entry`=62246; -- Shimmershell Snail
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34321; -- Shatterspear Pass Fire Bunny
UPDATE `creature_template` SET `KillCredit2`=0, `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33206; -- Darkscale Scout
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33207; -- Lady Janira
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `HealthModifier`=0.009999999776482582, `movementId`=100, `VerifiedBuild`=46313 WHERE `entry`=62250; -- Darkshore Cub
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34326; -- Doomspeaker Trevellion
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34334; -- Bubble Bunny
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34339; -- Greymist Refugee
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34340; -- Archaeologist Groff
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34342; -- Jr. Archaeologist Ferd
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34343; -- Prospector Remtravel
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33231; -- Elisa Steelhand
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33232; -- Archaeologist Hollee
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=4190; -- Kyndri
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34350; -- Dangerfish
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=4194; -- Ullanna
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34356; -- Buried Treasure Bunny
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33250; -- Foriel Broadleaf
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34367; -- Energized Soothing Totem
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.300000011920928955, `VerifiedBuild`=46313 WHERE `entry`=34368; -- Fire Elemental Remnant
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34369; -- Hermit Tide Crawler
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=33253; -- Delanea
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34370; -- Fire Elemental Rager
UPDATE `creature_template` SET `KillCredit2`=0, `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33262; -- Greymist Tidehunter
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34385; -- Horoo the Flamekeeper
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34388; -- Tranquil Wildkin Spirit
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34392; -- Orseus
UPDATE `creature_template` SET `KillCredit2`=0, `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33277; -- Greymist Warrior
UPDATE `creature_template` SET `femaleName`='', `family`=151, `VerifiedBuild`=46313 WHERE `entry`=34396; -- Whitetail Doe
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34398; -- Nightmare Guardian
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34399; -- Nightmare Spawn
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34402; -- Balren of the Claw
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34403; -- Felros
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34404; -- Larien
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34406; -- Foreman Balsoth
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.5, `VerifiedBuild`=46313 WHERE `entry`=175154; -- Voidwalker Minion
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34413; -- Faceless One
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33296; -- Ritual Bond Bunny
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34417; -- Young Grizzled Thistle Bear
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34427; -- Thalya the Voidcaller
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33311; -- Darkshore Stag
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34446; -- Aros
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.200000002980232238, `VerifiedBuild`=46313 WHERE `entry`=2070; -- Moonstalker Runt
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2071; -- Moonstalker Matriarch
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=43419; -- Rembar Bellanne
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=43425; -- Syleath Fairglade
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34498; -- Darkscale Assassin
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=43440; -- Lor'danel Sentinel
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2165; -- Grizzled Thistle Bear
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2206; -- Greymist Hunter
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2207; -- Greymist Oracle
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2233; -- Encrusted Tide Crawler

DELETE FROM `creature_template_model` WHERE (`CreatureID`=194105 AND `Idx` IN (2,1,0));
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(194105, 2, 107071, 1, 1, 46313), -- Elusive Elder Armoredon
(194105, 1, 107072, 1, 1, 46313), -- Elusive Elder Armoredon
(194105, 0, 107074, 1, 1, 46313); -- Elusive Elder Armoredon

UPDATE `creature_template_model` SET `VerifiedBuild`=46313 WHERE (`Idx`=0 AND `CreatureID` IN (34343,34342,34340,34350,34356,34369,2206,2233,32996,33000,2207,40271,34339,175154,34427,34326,2192,34406,34405,34413,33044,33043,32968,32967,34417,34334,32997,62250,2165,34302,34392,33253,34403,34402,33250,34404,33072,43425,34301,34446,34498,34306,34396,34318,2184,34243,34401,34400,34399,34398,33166,33057,33058,34370,34368,34367,3560,2071,2070,2237,24042,33117,33084,32999,33112,34299,34388,33119,34385,33083,34316,33091,34282,34293,33042,33078,33077,33076,33075,33046,33034,33038,22895,33002,33001,33036,33047,33045,33041,33037,33039,34278,33111,33232,33035,6887,33040,32986,33033,32985,32990,32989,32988,34304,33231,33107,33106,32987,4194,4190,3694,32937,32899,20455,32862,33178,32851,33913,32855,33176,32858,43742,34309,34321,6017,34033,32964,32970,33055,33056,34248,32859,34231,32869,117341,43419,34041,32966,32965,32963,32863,32861,34103,33071,34207,34205,32890,32932,33133,33132,33131,34009,7016,33207,34315,33127,33053,33126,33048,33296,32888,33206,33978,33179,33177,33180,61080,33181,33997,33980,33981,2191,33022,33020,33024,33023,33021,48648,48650,34046,34030,32868,32860,33905,33903,32959,32962,32960,32961,33884,33009,32975,33277,33262,88403,62246,33095,33103,33100,33099,33101,32911,33098,33096,33102,33097,33094,33093,61081,33311,43440)) OR (`Idx`=1 AND `CreatureID` IN (34356,34405,34334,34302,34318,33057,24042,34293,33047,33045,33111,32986,32985,33106,33913,32855,32858,34309,34321,33056,34248,32859,34231,32863,32861,33071,34315,33296,32888,33978,61080,33997,33024,33021,48648,48650,34046,34030,32860,33905,33009,62246,33311,43440)) OR (`Idx`=3 AND `CreatureID` IN (34405,33106,32858,34309,34248,32859,32861,33071,32860,43440)) OR (`Idx`=2 AND `CreatureID` IN (34405,33106,32855,32858,34309,34248,32859,32861,33071,34030,32860,62246,43440));


UPDATE `creature_questitem` SET `VerifiedBuild`=46313 WHERE (`Idx`=0 AND `CreatureEntry` IN (2206,2233,2207,32997,2165,34398,2071,2070,2237,34385,33041,32985,33181,33022,33020,33021,32860,33905,33009)) OR (`Idx`=2 AND `CreatureEntry`=2233) OR (`Idx`=1 AND `CreatureEntry` IN (2233,2071,2237));

DELETE FROM `gameobject_template` WHERE `entry` IN (310508 /*Campfire*/, 310463 /*Campfire*/, 310488 /*Bonfire*/, 310490 /*Campfire*/, 310489 /*Campfire*/, 310475 /*Bonfire*/, 310458 /*Campfire*/, 310497 /*Campfire*/, 310484 /*Ancient Flame*/, 319201 /*Anvil*/, 311291 /*Cauldron*/, 311309 /*Bonfire*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(310508, 8, 192, 'Campfire', '', '', '', 1, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Campfire
(310463, 8, 192, 'Campfire', '', '', '', 1, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Campfire
(310488, 8, 6411, 'Bonfire', '', '', '', 1, 4, 10, 2066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Bonfire
(310490, 8, 192, 'Campfire', '', '', '', 1, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Campfire
(310489, 8, 192, 'Campfire', '', '', '', 1, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Campfire
(310475, 8, 200, 'Bonfire', '', '', '', 1.85000002384185791, 4, 20, 2066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Bonfire
(310458, 8, 192, 'Campfire', '', '', '', 1, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Campfire
(310497, 8, 192, 'Campfire', '', '', '', 1.080000042915344238, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Campfire
(310484, 10, 54664, 'Ancient Flame', '', '', '', 1, 80, 957, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5, 46313), -- Ancient Flame
(319201, 8, 273, 'Anvil', '', '', '', 1, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Anvil
(311291, 8, 216, 'Cauldron', '', '', '', 1, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Cauldron
(311309, 8, 14512, 'Bonfire', '', '', '', 1.149413943290710449, 4, 10, 2066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46313); -- Bonfire

UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=27250, `VerifiedBuild`=46313 WHERE `entry`=195054; -- Mud-Crusted Ancient Disc
UPDATE `gameobject_template` SET `VerifiedBuild`=46313 WHERE `entry` IN (310498, 195058, 195080, 195021, 195042, 310457, 1926, 1732, 194144, 1923, 194140, 194142, 194141, 61929, 1921, 194150, 194139, 310478, 17185, 195057, 194114, 194106, 180475, 180474, 195071, 180473, 180480, 180477, 180476, 180479, 180478, 310507, 176190, 195059, 195070, 195007, 284630, 284613, 92490, 92489, 194113, 284646, 17182, 284597, 103687, 194211, 194112, 284522, 208296, 284572, 17183, 195014, 175984, 311297, 311288, 284603, 284545, 176291, 176289, 13873, 194102, 284501, 204130, 194104, 194103, 194090, 194089, 194088, 13359, 195006, 235892, 231268, 194145, 194771, 194204, 194179, 194209, 194208, 284612, 91737, 194714, 194130, 194131, 194122, 311299, 284631, 176196, 194105);
UPDATE `gameobject_template` SET `IconName`='GatherHerbs', `VerifiedBuild`=46313 WHERE `entry`=194100; -- Bear's Paw
UPDATE `gameobject_template` SET `Data26`=1, `VerifiedBuild`=46313 WHERE `entry`=16393; -- Ancient Flame
UPDATE `gameobject_template` SET `Data18`=683, `VerifiedBuild`=46313 WHERE `entry`=207521; -- Maplewood Treasure Chest
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=27011, `VerifiedBuild`=46313 WHERE `entry`=194787; -- Charred Book
UPDATE `gameobject_template` SET `Data3`=0, `VerifiedBuild`=46313 WHERE `entry`=194101; -- Shatterspear Cage
UPDATE `gameobject_template` SET `type`=50, `IconName`='', `Data0`=2850, `Data3`=0, `Data4`=110, `Data5`=160, `Data6`=30, `Data12`=683, `Data13`=1, `Data18`=10, `Data19`=0, `VerifiedBuild`=46313 WHERE `entry`=2045; -- Stranglekelp
UPDATE `gameobject_template` SET `Data1`=17521, `VerifiedBuild`=46313 WHERE `entry`=180683; -- Firefin Snapper School
UPDATE `gameobject_template` SET `Data18`=683, `VerifiedBuild`=46313 WHERE `entry`=207533; -- Runestone Treasure Chest
UPDATE `gameobject_template` SET `Data26`=1, `VerifiedBuild`=46313 WHERE `entry`=194124; -- Secure Bear Cage
UPDATE `gameobject_template` SET `Data2`=0, `Data26`=1, `VerifiedBuild`=46313 WHERE `entry`=194133; -- Secure Duskrat Cage


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46313 WHERE (`Idx`=0 AND `GameObjectEntry` IN (195054,195080,195021,195042,194100,195007,194787,194090,194089,194088,194204,194209,194208));


DELETE FROM `quest_details` WHERE `ID`=13918;
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(13918, 1, 25, 273, 0, 0, 1000, 300, 0, 46340); -- The Titans' Terminal


UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46340 WHERE `ID`=13918; -- The Titans' Terminal
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46340 WHERE `ID`=25317; -- Protect the World Tree
UPDATE `quest_template` SET `RewardBonusMoney`=300, `VerifiedBuild`=46340 WHERE `ID`=13036; -- Honor Above All Else
UPDATE `quest_template` SET `VerifiedBuild`=46340 WHERE `ID`=28460;
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46340 WHERE `ID`=28148; -- Culling the Corrupted
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46340 WHERE `ID`=13912; -- Swamped Secrets
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46340 WHERE `ID`=13911; -- The Absent-Minded Prospector
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46340 WHERE `ID`=13907; -- Sweeping Clean the Ruins
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46340 WHERE `ID`=13893; -- Soggoth and Kronn
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46340 WHERE `ID`=13882; -- The Seeds of Life
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46340 WHERE `ID`=13572; -- Jadefire Braziers
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46340 WHERE `ID`=13545; -- Cleansing the Afflicted


UPDATE `quest_objectives` SET `VerifiedBuild`=46340 WHERE `ID` IN (267081, 267080, 252186, 267171, 267514, 267513, 267512, 267505);
UPDATE `quest_objectives` SET `Description`='Winterfall Furbolg slain', `VerifiedBuild`=46340 WHERE `ID`=262057; -- 262057
UPDATE `quest_objectives` SET `Description`='Murloc Squatters Killed', `VerifiedBuild`=46340 WHERE `ID`=267359; -- 267359
UPDATE `quest_objectives` SET `Description`='Blackwood Furbolg Cleansed', `VerifiedBuild`=46340 WHERE `ID`=264908; -- 264908


UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=284; -- Brown Horse
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34356; -- Buried Treasure Bunny
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=29929; -- Mechano-Hog
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=2233; -- Encrusted Tide Crawler
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34369; -- Hermit Tide Crawler
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=307; -- Pinto
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=308; -- Black Stallion
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=63766; -- Thundering Jade Cloud Serpent
UPDATE `creature_template` SET `VerifiedBuild`=46340 WHERE `entry` IN (34405, 31694, 31698, 31778);
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=33892; -- Ironbound Proto-Drake
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `HealthModifier`=0.25, `VerifiedBuild`=46340 WHERE `entry`=40271; -- Tamed Crawler
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=33904; -- Rusted Proto-Drake
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=64375; -- Shimmershell Snail
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=4269; -- Chestnut Mare
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14555; -- Swift Mistsaber
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14556; -- Swift Frostsaber
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=15666; -- Blue Qiraji Battle Tank
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14559; -- Swift Palomino
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14560; -- Swift White Steed
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14561; -- Swift Brown Steed
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=40624; -- Celestial Dragon
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=38695; -- Icebound Frostbrood Vanquisher
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=47841; -- Dark Phoenix
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `movementId`=873, `VerifiedBuild`=46340 WHERE `entry`=62246; -- Shimmershell Snail
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14602; -- Swift Stormsaber
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=15714; -- Yellow Qiraji Battle Tank
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=15715; -- Green Qiraji Battle Tank
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=29582; -- Winged Steed of the Ebon Blade
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=35168; -- Striped Dawnsaber
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=2207; -- Greymist Oracle
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34339; -- Greymist Refugee
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34340; -- Archaeologist Groff
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34342; -- Jr. Archaeologist Ferd
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34343; -- Prospector Remtravel
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=36837; -- Onyxian Drake
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=34346; -- Dave's Industrial Light and Magic Bunny


UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags3`=524288 WHERE `entry`=34369; -- Hermit Tide Crawler
UPDATE `creature_template` SET `npcflag`=1073741824, `speed_walk`=0.159999996423721313, `speed_run`=0.057142857462167739, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=62246; -- Shimmershell Snail
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=2233; -- Encrusted Tide Crawler
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34405; -- Twilight Worker
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `faction`=10, `npcflag`=0 WHERE `entry`=34343; -- Prospector Remtravel
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34342; -- Jr. Archaeologist Ferd
UPDATE `creature_template` SET `minlevel`=32, `maxlevel`=32, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=40624; -- Celestial Dragon
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34340; -- Archaeologist Groff
UPDATE `creature_template` SET `minlevel`=1, `maxlevel`=1 WHERE `entry`=64375; -- Shimmershell Snail
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34339; -- Greymist Refugee
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=40271; -- Tamed Crawler
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=2207; -- Greymist Oracle
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34356; -- Buried Treasure Bunny


DELETE FROM `creature_template_scaling` WHERE (`Entry`=40624 AND `DifficultyID`=0);
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(40624, 0, 0, 0, 371, 46340);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46340 WHERE (`DifficultyID`=0 AND `Entry` IN (34369,34346,62246,2233,34405,34343,34342,34340,64375,34339,40271,2207,34356));


UPDATE `creature_model_info` SET `BoundingRadius`=1.243913531303405761, `VerifiedBuild`=46340 WHERE `DisplayID`=9573;
UPDATE `creature_model_info` SET `VerifiedBuild`=46340 WHERE `DisplayID` IN (20024, 42408, 1277, 42409, 29188, 31956, 29186, 42407, 979);
UPDATE `creature_model_info` SET `DisplayID_Other_Gender`=0, `VerifiedBuild`=46340 WHERE `DisplayID`=2871;
UPDATE `creature_model_info` SET `CombatReach`=0, `VerifiedBuild`=46340 WHERE `DisplayID` IN (478, 4920);


DELETE FROM `quest_poi` WHERE (`QuestID`=13925 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13925 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=13925 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13925 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(13925, 0, 3, 32, 0, 0, 1, 62, 0, 0, 0, 0, 0, 293859, 0, 46340), -- An Ounce of Prevention
(13925, 1, 2, 0, 266616, 34373, 1, 62, 0, 3, 0, 0, 0, 0, 0, 46340), -- An Ounce of Prevention
(13925, 0, 1, 0, 266616, 34373, 1, 62, 0, 3, 0, 0, 0, 0, 0, 46340), -- An Ounce of Prevention
(13925, 0, 0, -1, 0, 0, 1, 62, 0, 1, 0, 0, 0, 0, 0, 46340); -- An Ounce of Prevention

UPDATE `quest_poi` SET `VerifiedBuild`=46340 WHERE (`QuestID`=13900 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13900 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13891 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13891 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13891 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13885 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=13885 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=13885 AND `BlobIndex`=2 AND `Idx1`=4) OR (`QuestID`=13885 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=13885 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13885 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13885 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13898 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13898 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13898 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13899 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13899 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13953 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13953 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13895 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13895 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13546 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13546 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13546 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13910 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13910 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13910 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13909 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13909 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13909 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13911 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13911 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13911 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13918 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=13918 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13918 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13918 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13907 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13907 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13907 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13893 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13893 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13882 AND `BlobIndex`=0 AND `Idx1`=8) OR (`QuestID`=13882 AND `BlobIndex`=2 AND `Idx1`=7) OR (`QuestID`=13882 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=13882 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=13882 AND `BlobIndex`=2 AND `Idx1`=4) OR (`QuestID`=13882 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=13882 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13882 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13882 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13572 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13572 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13572 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13545 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13545 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13545 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=13925 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13925 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=13925 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=13925 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=13925 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=13925 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=13925 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=13925 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=13925 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=13925 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13925 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13925 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13925 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13925 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13925 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13925 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13925 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13925 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13925 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(13925, 3, 0, 5007, 95, 53, 46340), -- An Ounce of Prevention
(13925, 2, 11, 4762, 170, 50, 46340), -- An Ounce of Prevention
(13925, 2, 10, 4688, 355, 50, 46340), -- An Ounce of Prevention
(13925, 2, 9, 4736, 466, 50, 46340), -- An Ounce of Prevention
(13925, 2, 8, 4822, 539, 50, 46340), -- An Ounce of Prevention
(13925, 2, 7, 5032, 563, 50, 46340), -- An Ounce of Prevention
(13925, 2, 6, 5147, 487, 50, 46340), -- An Ounce of Prevention
(13925, 2, 5, 5340, 487, 50, 46340), -- An Ounce of Prevention
(13925, 2, 4, 5398, 466, 50, 46340), -- An Ounce of Prevention
(13925, 2, 3, 5472, 346, 50, 46340), -- An Ounce of Prevention
(13925, 2, 2, 5513, 269, 50, 46340), -- An Ounce of Prevention
(13925, 2, 1, 5464, 136, 50, 46340), -- An Ounce of Prevention
(13925, 2, 0, 5327, 36, 50, 46340), -- An Ounce of Prevention
(13925, 1, 4, 4358, 432, 50, 46340), -- An Ounce of Prevention
(13925, 1, 3, 4445, 382, 50, 46340), -- An Ounce of Prevention
(13925, 1, 2, 4497, 202, 50, 46340), -- An Ounce of Prevention
(13925, 1, 1, 4436, 108, 50, 46340), -- An Ounce of Prevention
(13925, 1, 0, 4318, 124, 50, 46340), -- An Ounce of Prevention
(13925, 0, 0, 5007, 95, 53, 46340); -- An Ounce of Prevention

UPDATE `quest_poi_points` SET `VerifiedBuild`=46340 WHERE (`QuestID`=13900 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13900 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13891 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13891 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13891 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13885 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=13885 AND `Idx1`=5 AND `Idx2`=7) OR (`QuestID`=13885 AND `Idx1`=5 AND `Idx2`=6) OR (`QuestID`=13885 AND `Idx1`=5 AND `Idx2`=5) OR (`QuestID`=13885 AND `Idx1`=5 AND `Idx2`=4) OR (`QuestID`=13885 AND `Idx1`=5 AND `Idx2`=3) OR (`QuestID`=13885 AND `Idx1`=5 AND `Idx2`=2) OR (`QuestID`=13885 AND `Idx1`=5 AND `Idx2`=1) OR (`QuestID`=13885 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=13885 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=13885 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=13885 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=13885 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=13885 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=13885 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=13885 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=13885 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=13885 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=13885 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13885 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13885 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13885 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13885 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13885 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13885 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13885 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13885 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13885 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13885 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13885 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13885 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13885 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13898 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13898 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13898 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13898 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13898 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13898 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13898 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13898 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13898 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13898 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13898 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13899 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13899 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13953 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13953 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13895 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13895 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13546 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13546 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13546 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13910 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13910 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13910 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13909 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13909 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13909 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13909 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13909 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13909 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13909 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13909 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13911 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13911 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13911 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13911 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13911 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13911 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13918 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13918 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=13918 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=13918 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=13918 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=13918 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=13918 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=13918 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=13918 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=13918 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13918 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13918 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13918 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13918 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=13918 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=13918 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13918 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13918 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13918 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13918 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13918 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13918 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13918 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13918 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13918 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13918 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13907 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13907 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13907 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13907 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13907 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13907 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13907 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13907 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13907 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13893 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13893 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13882 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=13882 AND `Idx1`=7 AND `Idx2`=2) OR (`QuestID`=13882 AND `Idx1`=7 AND `Idx2`=1) OR (`QuestID`=13882 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=13882 AND `Idx1`=6 AND `Idx2`=6) OR (`QuestID`=13882 AND `Idx1`=6 AND `Idx2`=5) OR (`QuestID`=13882 AND `Idx1`=6 AND `Idx2`=4) OR (`QuestID`=13882 AND `Idx1`=6 AND `Idx2`=3) OR (`QuestID`=13882 AND `Idx1`=6 AND `Idx2`=2) OR (`QuestID`=13882 AND `Idx1`=6 AND `Idx2`=1) OR (`QuestID`=13882 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=13882 AND `Idx1`=5 AND `Idx2`=3) OR (`QuestID`=13882 AND `Idx1`=5 AND `Idx2`=2) OR (`QuestID`=13882 AND `Idx1`=5 AND `Idx2`=1) OR (`QuestID`=13882 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=13882 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=13882 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=13882 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=13882 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=13882 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=13882 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=13882 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=13882 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=13882 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=13882 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=13882 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=13882 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=13882 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=13882 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=13882 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13882 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13882 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13572 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13572 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13572 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13545 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13545 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13545 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (13900 /*The Offering to Azshara*/, 13891 /*The Devourer of Darkshore*/, 13885 /*In Defense of Darkshore*/, 13898 /*The Tides Turn Against Us*/, 13899 /*The Darkscale Warlord*/, 13953 /*Naga In Our Midst*/, 13925 /*An Ounce of Prevention*/, 13895 /*The Slumbering Ancients*/, 13546 /*The Defiler*/, 13910 /*A New Home*/, 13909 /*Got Some Flotsam?*/, 13911 /*The Absent-Minded Prospector*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(13900, 0, 0, 0, 0, 0, 0, 0, 0, 46340), -- The Offering to Azshara
(13891, 274, 5, 0, 0, 200, 800, 0, 0, 46340), -- The Devourer of Darkshore
(13885, 1, 397, 0, 0, 0, 1200, 0, 0, 46340), -- In Defense of Darkshore
(13898, 0, 0, 0, 0, 0, 0, 0, 0, 46340), -- The Tides Turn Against Us
(13899, 0, 0, 0, 0, 0, 0, 0, 0, 46340), -- The Darkscale Warlord
(13953, 0, 0, 0, 0, 0, 0, 0, 0, 46340), -- Naga In Our Midst
(13925, 1, 6, 0, 0, 0, 900, 0, 0, 46340), -- An Ounce of Prevention
(13895, 0, 0, 0, 0, 0, 0, 0, 0, 46340), -- The Slumbering Ancients
(13546, 1, 1, 0, 0, 0, 0, 0, 0, 46340), -- The Defiler
(13910, 25, 274, 0, 0, 0, 600, 0, 0, 46340), -- A New Home
(13909, 6, 1, 0, 0, 0, 600, 0, 0, 46340), -- Got Some Flotsam?
(13911, 0, 0, 0, 0, 0, 0, 0, 0, 46340); -- The Absent-Minded Prospector


DELETE FROM `quest_request_items` WHERE `ID`=13546;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(13546, 0, 0, 0, 0, 'Have you defeated the satyr who poisons our lands?', 46340); -- The Defiler


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (34351,40624));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(34351, 0, 0, 0, 5, 46340),
(40624, 0, 0, 0, 371, 46340);


UPDATE `creature_model_info` SET `VerifiedBuild`=46340 WHERE `DisplayID` IN (33361, 4485, 4474, 36798, 10575, 4407, 28373, 36672, 36667, 33376, 33370, 33368, 33369, 36682, 1757, 33367, 2429, 36681, 36680, 9294, 33363, 37705, 28416, 32722, 28415, 36799, 2865, 1932, 5023, 4878, 29180, 28505, 29211, 5927, 28357, 2030, 29179, 35095, 45943, 28628, 1070, 3031, 11450, 4973, 27849, 33366, 1455, 29215, 29214, 29213, 13409, 29206, 33205, 1283, 5510, 12349, 28016, 12432, 28356, 5772, 14316, 4972, 15393, 15398, 3619, 29222, 29221, 29172, 28002, 61764, 20024, 42407, 29188, 29186, 42408, 31956, 1277, 979, 42409);
UPDATE `creature_model_info` SET `BoundingRadius`=3.274714231491088867, `VerifiedBuild`=46340 WHERE `DisplayID`=14514;
UPDATE `creature_model_info` SET `DisplayID_Other_Gender`=0, `VerifiedBuild`=46340 WHERE `DisplayID` IN (4845, 4846, 4847, 4848, 2872, 2869, 2870, 2871);
UPDATE `creature_model_info` SET `BoundingRadius`=0.973670184612274169, `CombatReach`=2, `VerifiedBuild`=46340 WHERE `DisplayID`=913;
UPDATE `creature_model_info` SET `BoundingRadius`=0.769829750061035156, `CombatReach`=0, `VerifiedBuild`=46340 WHERE `DisplayID`=42863;
UPDATE `creature_model_info` SET `BoundingRadius`=0.347222000360488891, `CombatReach`=1.5, `VerifiedBuild`=46340 WHERE `DisplayID`=33673;
UPDATE `creature_model_info` SET `BoundingRadius`=1.066211700439453125, `CombatReach`=1.392857074737548828, `VerifiedBuild`=46340 WHERE `DisplayID`=1938;
UPDATE `creature_model_info` SET `BoundingRadius`=0.310000002384185791, `CombatReach`=3, `VerifiedBuild`=46340 WHERE `DisplayID` IN (32263, 32264);
UPDATE `creature_model_info` SET `BoundingRadius`=1.003674507141113281, `VerifiedBuild`=46340 WHERE `DisplayID` IN (936, 5773, 6822, 6802);
UPDATE `creature_model_info` SET `BoundingRadius`=0.920034945011138916, `VerifiedBuild`=46340 WHERE `DisplayID`=6821;
UPDATE `creature_model_info` SET `BoundingRadius`=3.004086256027221679, `CombatReach`=3, `VerifiedBuild`=46340 WHERE `DisplayID`=20748;
UPDATE `creature_model_info` SET `BoundingRadius`=0.450000017881393432, `CombatReach`=0, `VerifiedBuild`=46340 WHERE `DisplayID`=652;
UPDATE `creature_model_info` SET `BoundingRadius`=1.479015827178955078, `VerifiedBuild`=46340 WHERE `DisplayID`=4766;
UPDATE `creature_model_info` SET `BoundingRadius`=0.725234746932983398, `CombatReach`=1.368367433547973632, `VerifiedBuild`=46340 WHERE `DisplayID`=11449;
UPDATE `creature_model_info` SET `BoundingRadius`=1.22632765769958496, `CombatReach`=1.5, `VerifiedBuild`=46340 WHERE `DisplayID`=29219;
UPDATE `creature_model_info` SET `BoundingRadius`=1.219684958457946777, `VerifiedBuild`=46340 WHERE `DisplayID`=2161;
UPDATE `creature_model_info` SET `BoundingRadius`=1.643068432807922363, `CombatReach`=0, `VerifiedBuild`=46340 WHERE `DisplayID`=12350;
UPDATE `creature_model_info` SET `BoundingRadius`=1.07895207405090332, `VerifiedBuild`=46340 WHERE `DisplayID`=8013;
UPDATE `creature_model_info` SET `BoundingRadius`=1.087314009666442871, `VerifiedBuild`=46340 WHERE `DisplayID`=1996;
UPDATE `creature_model_info` SET `BoundingRadius`=1.265771150588989257, `CombatReach`=2.599999904632568359, `VerifiedBuild`=46340 WHERE `DisplayID`=9276;
UPDATE `creature_model_info` SET `BoundingRadius`=1.119720697402954101, `CombatReach`=2.299999952316284179, `VerifiedBuild`=46340 WHERE `DisplayID`=26940;
UPDATE `creature_model_info` SET `CombatReach`=0, `VerifiedBuild`=46340 WHERE `DisplayID` IN (2007, 22473, 4920, 478);
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `CombatReach`=1.25, `VerifiedBuild`=46340 WHERE `DisplayID`=29195;
UPDATE `creature_model_info` SET `BoundingRadius`=0.225000008940696716, `CombatReach`=0, `VerifiedBuild`=46340 WHERE `DisplayID`=852;
UPDATE `creature_model_info` SET `BoundingRadius`=1.648991703987121582, `CombatReach`=2.25, `VerifiedBuild`=46340 WHERE `DisplayID`=31547;
UPDATE `creature_model_info` SET `BoundingRadius`=1.099327802658081054, `VerifiedBuild`=46340 WHERE `DisplayID`=4762;
UPDATE `creature_model_info` SET `BoundingRadius`=0.090000003576278686, `VerifiedBuild`=46340 WHERE `DisplayID`=42412;
UPDATE `creature_model_info` SET `BoundingRadius`=0.79957592487335205, `CombatReach`=2, `VerifiedBuild`=46340 WHERE `DisplayID`=1132;
UPDATE `creature_model_info` SET `BoundingRadius`=1.243913531303405761, `VerifiedBuild`=46340 WHERE `DisplayID`=9573;


UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=43420; -- Innkeeper Kyteran
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=32978; -- Tharnariun Treetender
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=32977; -- Wizbang Cranktoggle
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=49968; -- Lareth Beld
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=11037; -- Jenna Lemkenilli
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=4187; -- Harlon Thornguard
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags3`=8388608 WHERE `entry`=32912; -- Sentinel Lendra
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=49927; -- Lanla Bowleaf
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=33864; -- Vile Terror
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=49923; -- Sentinel Moonwing
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=43439; -- Nyrisse
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=43436; -- Ceriale Duskwhisper
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `npcflag`=81 WHERE `entry`=43429; -- Taryel Firestrike
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=43431; -- Periale
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=49942; -- Dular
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=32959; -- Cerellean Whiteclaw
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=43428; -- Faeyrin Willowmoon
UPDATE `creature_template` SET `minlevel`=30, `unit_flags3`=8388608 WHERE `entry`=34056; -- Vigilant Protector
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=49940; -- Irlara Morninglight
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=49939; -- Kenral Nightwind
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=10085; -- Jaelysia
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=43424; -- Ayriala
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=51997; -- Stephanie Krutsick
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=32973; -- Dentaria Silverglade
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=33175; -- Johnathan Staats
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=32972; -- Serendia Oakwhisper
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=49963; -- Laera Dubois
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=32971; -- Ranger Glynda Nal'Shea
UPDATE `creature_template` SET `minlevel`=30, `unit_flags`=33536 WHERE `entry`=33115; -- Lor'danel Sentinel
UPDATE `creature_template` SET `maxlevel`=30, `unit_flags3`=8388608 WHERE `entry`=32969; -- Lor'danel Sentinel
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=33053; -- Grimclaw
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=63084; -- Poe
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=3841; -- Teldira Moonfeather
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=32935; -- Corrupted Tide Crawler
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=32979; -- Gorbold Steelhand
UPDATE `creature_template` SET `minlevel`=1, `maxlevel`=1 WHERE `entry`=6145; -- School of Fish
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `speed_run`=1.142857193946838378 WHERE `entry`=34351; -- Fiendishfish
UPDATE `creature_template` SET `minlevel`=30, `unit_flags2`=0, `unit_flags3`=1 WHERE `entry`=34316; -- Twilight Portal

UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `npcflag`=0, `unit_flags`=768, `unit_flags2`=2099200, `HoverHeight`=6 WHERE `entry`=34401; -- Thessera
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `speed_run`=1.142857193946838378 WHERE `entry`=33091; -- Malfurion Stormrage
UPDATE `creature_template` SET `minlevel`=30, `npcflag`=0 WHERE `entry`=33119; -- Aroom
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags2`=0 WHERE `entry`=3560; -- Healing Ward
UPDATE `creature_template` SET `minlevel`=30, `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=33117; -- Elder Brownpaw
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=33084; -- Blackwood Furbolg
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags2`=2099200 WHERE `entry`=34293; -- Twilight Rider (Humanoid)
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `npcflag`=0, `unit_flags2`=2099200 WHERE `entry`=34282; -- Twilight Rider
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `faction`=74, `unit_flags`=33024 WHERE `entry`=34416; -- Queen Azshara
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `faction`=80, `unit_flags`=33024 WHERE `entry`=34422; -- Malfurion Stormrage
UPDATE `creature_template` SET `minlevel`=30, `speed_run`=1.142857193946838378, `unit_flags3`=524288 WHERE `entry`=34331; -- Yoth'al the Devourer
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=2206; -- Greymist Hunter
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=32999; -- Unbound Fire Elemental
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `speed_walk`=1, `unit_flags`=0 WHERE `entry`=33083; -- Enraged Earth Elemental
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=2071; -- Moonstalker Matriarch
UPDATE `creature_template` SET `minlevel`=27, `speed_run`=1.428571462631225585, `BaseAttackTime`=1300, `unit_flags`=16 WHERE `entry`=2070; -- Moonstalker Runt
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=2237; -- Moonstalker Sire
UPDATE `creature_template` SET `minlevel`=30, `unit_flags`=537166096, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=34423; -- Warlord Wrathspine
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=40350; -- Generic Trigger LAB
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=34415; -- Darkscale Priestess
UPDATE `creature_template` SET `minlevel`=30, `speed_run`=1.142857193946838378, `unit_flags`=33536, `unit_flags3`=524288 WHERE `entry`=34328; -- Devouring Presence
UPDATE `creature_template` SET `unit_flags`=16 WHERE `entry`=34396; -- Whitetail Doe
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `speed_walk`=1, `unit_flags`=537166080, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=34446; -- Aros
UPDATE `creature_template` SET `minlevel`=30, `unit_flags`=537165824, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=34498; -- Darkscale Assassin
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=34318; -- Whitetail Stag
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags`=0 WHERE `entry`=34301; -- Kathrena Winterwisp
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=43425; -- Syleath Fairglade
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=33072; -- Onu
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34404; -- Larien
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags`=33024 WHERE `entry`=34403; -- Felros
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags`=33024 WHERE `entry`=34402; -- Balren of the Claw
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=33250; -- Foriel Broadleaf
UPDATE `creature_template` SET `minlevel`=30, `unit_flags`=0 WHERE `entry`=34392; -- Orseus
UPDATE `creature_template` SET `minlevel`=60, `unit_flags`=768 WHERE `entry`=33253; -- Delanea
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `speed_walk`=1, `unit_flags`=0 WHERE `entry`=32997; -- Fleetfoot
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=34417; -- Young Grizzled Thistle Bear
UPDATE `creature_template` SET `minlevel`=30, `unit_flags3`=524288 WHERE `entry`=33000; -- Spirit of Corruption
UPDATE `creature_template` SET `minlevel`=30, `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=32968; -- Gren Tornfur
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=32967; -- Elder Brolg
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34334; -- Bubble Bunny
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags`=32768 WHERE `entry`=34302; -- Consumed Thistle Bear
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=32996; -- Sharax the Defiler
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `speed_walk`=1, `speed_run`=1.142857193946838378, `unit_flags`=0 WHERE `entry`=33044; -- Corrupted Blackwood
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=33043; -- Maddened Blackwood
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `npcflag`=0 WHERE `entry`=34306; -- Darkshore Wisp
UPDATE `creature_template` SET `minlevel`=30, `faction`=16 WHERE `entry`=2192; -- Firecaller Radison
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=2165; -- Grizzled Thistle Bear
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `speed_walk`=1, `unit_flags`=768 WHERE `entry`=34357; -- Aman
UPDATE `creature_template` SET `minlevel`=30, `dynamicflags`=4 WHERE `entry`=34414; -- Darkscale Siren
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `speed_run`=1.142857193946838378 WHERE `entry`=34348; -- Happy Greymist Orphan
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34347; -- Happy Greymist Murloc
UPDATE `creature_template` SET `minlevel`=30, `faction`=74 WHERE `entry`=7017; -- Lord Sinslayer
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=33079; -- Darkscale Myrmidon
UPDATE `creature_template` SET `minlevel`=30, `speed_run`=1.142857193946838378 WHERE `entry`=34350; -- Dangerfish
UPDATE `creature_template` SET `npcflag`=1073741824, `speed_run`=0.857142865657806396, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=62250; -- Darkshore Cub
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=34427; -- Thalya the Voidcaller
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `faction`=74, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=175154; -- Voidwalker Minion
UPDATE `creature_template` SET `unit_flags`=256 WHERE `entry`=34376; -- Kathrena Winterwisp
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `npcflag`=0, `speed_run`=1.385714292526245117, `unit_flags`=33554432, `unit_flags3`=524288, `VehicleId`=410 WHERE `entry`=34375; -- Grove Hippogryph
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34405; -- Twilight Worker
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34413; -- Faceless One
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34342; -- Jr. Archaeologist Ferd
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34340; -- Archaeologist Groff
UPDATE `creature_template` SET `npcflag`=1073741824, `speed_walk`=0.159999996423721313, `speed_run`=0.057142857462167739, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=62246; -- Shimmershell Snail
UPDATE `creature_template` SET `minlevel`=32, `maxlevel`=32, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=40624; -- Celestial Dragon
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `dynamicflags`=4 WHERE `entry`=2207; -- Greymist Oracle
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34343; -- Prospector Remtravel
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=40271; -- Tamed Crawler
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=2233; -- Encrusted Tide Crawler
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags`=16, `unit_flags3`=524288 WHERE `entry`=34369; -- Hermit Tide Crawler
UPDATE `creature_template` SET `minlevel`=1, `maxlevel`=1 WHERE `entry`=64375; -- Shimmershell Snail
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34356; -- Buried Treasure Bunny
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34339; -- Greymist Refugee


UPDATE `quest_template` SET `RewardBonusMoney`=3150, `VerifiedBuild`=46340 WHERE `ID`=13891; -- The Devourer of Darkshore
UPDATE `quest_template` SET `RewardBonusMoney`=3750, `VerifiedBuild`=46340 WHERE `ID`=13900; -- The Offering to Azshara
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46340 WHERE `ID`=13885; -- In Defense of Darkshore
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46340 WHERE `ID`=13898; -- The Tides Turn Against Us
UPDATE `quest_template` SET `VerifiedBuild`=46340 WHERE `ID` IN (13899, 13895, 28460);
UPDATE `quest_template` SET `RewardBonusMoney`=1260, `VerifiedBuild`=46340 WHERE `ID`=13953; -- Naga In Our Midst
UPDATE `quest_template` SET `RewardBonusMoney`=1860, `VerifiedBuild`=46340 WHERE `ID`=13925; -- An Ounce of Prevention
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46340 WHERE `ID`=13546; -- The Defiler
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46340 WHERE `ID`=13910; -- A New Home
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46340 WHERE `ID`=25317; -- Protect the World Tree
UPDATE `quest_template` SET `RewardBonusMoney`=300, `VerifiedBuild`=46340 WHERE `ID`=13036; -- Honor Above All Else
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46340 WHERE `ID`=28148; -- Culling the Corrupted
UPDATE `quest_template` SET `RewardBonusMoney`=1260, `VerifiedBuild`=46340 WHERE `ID`=13909; -- Got Some Flotsam?
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46340 WHERE `ID`=13911; -- The Absent-Minded Prospector
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46340 WHERE `ID`=13918; -- The Titans' Terminal
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46340 WHERE `ID`=13907; -- Sweeping Clean the Ruins
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46340 WHERE `ID`=13893; -- Soggoth and Kronn
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46340 WHERE `ID`=13882; -- The Seeds of Life
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46340 WHERE `ID`=13572; -- Jadefire Braziers
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46340 WHERE `ID`=13545; -- Cleansing the Afflicted


UPDATE `quest_objectives` SET `VerifiedBuild`=46340 WHERE `ID` IN (266615, 264976, 266617, 267419, 263713, 252186, 265849, 267081, 267080, 267514, 267513, 267512, 267505);
UPDATE `quest_objectives` SET `Description`='Devouring Artifact Destroyed', `VerifiedBuild`=46340 WHERE `ID`=266614; -- 266614
UPDATE `quest_objectives` SET `Description`='Offering to Azshara prevented', `VerifiedBuild`=46340 WHERE `ID`=264115; -- 264115
UPDATE `quest_objectives` SET `Description`='Whitetail Deer Protected', `VerifiedBuild`=46340 WHERE `ID`=267644; -- 267644
UPDATE `quest_objectives` SET `Description`='Moonstalker Protected', `VerifiedBuild`=46340 WHERE `ID`=267643; -- 267643
UPDATE `quest_objectives` SET `Description`='Grizzled Thistle Bear Protected', `VerifiedBuild`=46340 WHERE `ID`=267642; -- 267642
UPDATE `quest_objectives` SET `Description`='Lifebringer Sapling Tested', `VerifiedBuild`=46340 WHERE `ID`=266616; -- 266616
UPDATE `quest_objectives` SET `Description`='Greymist Murloc Home Built', `VerifiedBuild`=46340 WHERE `ID`=263712; -- 263712
UPDATE `quest_objectives` SET `Description`='Winterfall Furbolg slain', `VerifiedBuild`=46340 WHERE `ID`=262057; -- 262057
UPDATE `quest_objectives` SET `Description`='Murloc Squatters Killed', `VerifiedBuild`=46340 WHERE `ID`=267359; -- 267359
UPDATE `quest_objectives` SET `Description`='Blackwood Furbolg Cleansed', `VerifiedBuild`=46340 WHERE `ID`=264908; -- 264908


UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34348; -- Happy Greymist Orphan
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34350; -- Dangerfish
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34351; -- Fiendishfish
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=32967; -- Elder Brolg
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=32968; -- Gren Tornfur
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=32969; -- Lor'danel Sentinel
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=284; -- Brown Horse
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=32971; -- Ranger Glynda Nal'Shea
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34356; -- Buried Treasure Bunny
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=32972; -- Serendia Oakwhisper
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34357; -- Aman
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=32973; -- Dentaria Silverglade
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=33250; -- Foriel Broadleaf
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=33253; -- Delanea
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=29929; -- Mechano-Hog
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=32977; -- Wizbang Cranktoggle
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=32978; -- Tharnariun Treetender
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=32979; -- Gorbold Steelhand
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=2233; -- Encrusted Tide Crawler
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=2237; -- Moonstalker Sire
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34369; -- Hermit Tide Crawler
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry` IN (1412, 61081); -- Squirrel
UPDATE `creature_template` SET `femaleName`='', `family`=160, `VerifiedBuild`=46340 WHERE `entry`=34375; -- Grove Hippogryph
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry` IN (34376, 34301); -- Kathrena Winterwisp
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=307; -- Pinto
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=308; -- Black Stallion
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=4187; -- Harlon Thornguard
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=32996; -- Sharax the Defiler
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=32997; -- Fleetfoot
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=32999; -- Unbound Fire Elemental
UPDATE `creature_template` SET `femaleName`='', `type`=15, `VerifiedBuild`=46340 WHERE `entry`=33000; -- Spirit of Corruption
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34392; -- Orseus
UPDATE `creature_template` SET `femaleName`='', `family`=151, `VerifiedBuild`=46340 WHERE `entry`=34396; -- Whitetail Doe
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `HealthModifier`=0.200000002980232238, `VerifiedBuild`=46340 WHERE `entry`=6145; -- School of Fish
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34401; -- Thessera
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34402; -- Balren of the Claw
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34403; -- Felros
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34404; -- Larien
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=63766; -- Thundering Jade Cloud Serpent
UPDATE `creature_template` SET `VerifiedBuild`=46340 WHERE `entry` IN (34405, 7017, 31694, 31698, 31778, 34282, 34293, 2192);
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34406; -- Foreman Balsoth
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=49923; -- Sentinel Moonwing
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34413; -- Faceless One
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34414; -- Darkscale Siren
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=49927; -- Lanla Bowleaf
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34415; -- Darkscale Priestess
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34416; -- Queen Azshara
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34417; -- Young Grizzled Thistle Bear
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=33864; -- Vile Terror
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=0, `VerifiedBuild`=46340 WHERE `entry` IN (34422, 33091); -- Malfurion Stormrage
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34423; -- Warlord Wrathspine
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=49939; -- Kenral Nightwind
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34427; -- Thalya the Voidcaller
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=49940; -- Irlara Morninglight
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=33043; -- Maddened Blackwood
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=33044; -- Corrupted Blackwood
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=49942; -- Dular
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=33053; -- Grimclaw
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.5, `VerifiedBuild`=46340 WHERE `entry`=175154; -- Voidwalker Minion
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34446; -- Aros
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=33892; -- Ironbound Proto-Drake
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=49963; -- Laera Dubois
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `HealthModifier`=0.25, `VerifiedBuild`=46340 WHERE `entry`=40271; -- Tamed Crawler
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=49968; -- Lareth Beld
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=33072; -- Onu
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=33904; -- Rusted Proto-Drake
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=64375; -- Shimmershell Snail
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=10085; -- Jaelysia
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=4269; -- Chestnut Mare
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=33079; -- Darkscale Myrmidon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=33083; -- Enraged Earth Elemental
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=33084; -- Blackwood Furbolg
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.200000002980232238, `VerifiedBuild`=46340 WHERE `entry`=2070; -- Moonstalker Runt
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=2071; -- Moonstalker Matriarch
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=61080; -- Rabbit
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=33112; -- Selenn
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34498; -- Darkscale Assassin
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14555; -- Swift Mistsaber
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=33115; -- Lor'danel Sentinel
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14556; -- Swift Frostsaber
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=33117; -- Elder Brownpaw
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=15666; -- Blue Qiraji Battle Tank
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14559; -- Swift Palomino
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=33119; -- Aroom
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14560; -- Swift White Steed
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14561; -- Swift Brown Steed
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=40624; -- Celestial Dragon
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=40350; -- Generic Trigger LAB
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=38695; -- Icebound Frostbrood Vanquisher
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=47841; -- Dark Phoenix
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=51997; -- Stephanie Krutsick
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `movementId`=873, `VerifiedBuild`=46340 WHERE `entry`=62246; -- Shimmershell Snail
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14602; -- Swift Stormsaber
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `HealthModifier`=0.009999999776482582, `movementId`=100, `VerifiedBuild`=46340 WHERE `entry`=62250; -- Darkshore Cub
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=15714; -- Yellow Qiraji Battle Tank
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=15715; -- Green Qiraji Battle Tank
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=0, `VerifiedBuild`=46340 WHERE `entry`=63083; -- Will Larsons
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `HealthModifier`=0.009999999776482582, `VerifiedBuild`=46340 WHERE `entry`=63084; -- Poe
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=34278; -- Withers
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=43420; -- Innkeeper Kyteran
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=33175; -- Johnathan Staats
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=43424; -- Ayriala
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=43425; -- Syleath Fairglade
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=43428; -- Faeyrin Willowmoon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=43429; -- Taryel Firestrike
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=43431; -- Periale
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=24042; -- Generic Trigger LAB - OLD
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=29582; -- Winged Steed of the Ebon Blade
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=43436; -- Ceriale Duskwhisper
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=32912; -- Sentinel Lendra
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=2165; -- Grizzled Thistle Bear
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=43439; -- Nyrisse
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34302; -- Consumed Thistle Bear
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=11037; -- Jenna Lemkenilli
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34306; -- Darkshore Wisp
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=3560; -- Healing Ward
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=3841; -- Teldira Moonfeather
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=89715; -- Franklin Martin
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34316; -- Twilight Portal
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34318; -- Whitetail Stag
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=32935; -- Corrupted Tide Crawler
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34326; -- Doomspeaker Trevellion
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34328; -- Devouring Presence
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34331; -- Yoth'al the Devourer
UPDATE `creature_template` SET `femaleName`='', `type`=4, `VerifiedBuild`=46340 WHERE `entry`=34056; -- Vigilant Protector
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34334; -- Bubble Bunny
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=35168; -- Striped Dawnsaber
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=2206; -- Greymist Hunter
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=2207; -- Greymist Oracle
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34339; -- Greymist Refugee
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34340; -- Archaeologist Groff
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34342; -- Jr. Archaeologist Ferd
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34343; -- Prospector Remtravel
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=32959; -- Cerellean Whiteclaw
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=36837; -- Onyxian Drake
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=34346; -- Dave's Industrial Light and Magic Bunny
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=34347; -- Happy Greymist Murloc


UPDATE `creature_template_model` SET `VerifiedBuild`=46340 WHERE (`Idx`=0 AND `CreatureID` IN (43439,43431,32979,63084,49940,32972,43436,43428,43420,32912,32977,51997,43429,33115,63083,49963,49942,49939,33864,4187,32959,49923,33175,49968,43424,34056,33053,3841,32973,10085,11037,32969,32978,49927,32971,32935,6145,34351,34316,33112,34401,33119,33091,3560,33117,33084,34282,34293,34422,34416,34278,34331,2206,32999,33083,2071,2070,2237,61081,34423,40350,34415,34328,34396,34498,34446,34318,43425,34301,33072,34404,34403,34402,34392,33250,33253,32997,34417,33000,32968,32967,34334,34302,32996,61080,33044,33043,1412,34306,34406,2192,2165,34357,34414,34348,34347,7017,33079,34350,62250,175154,34427,34326,24042,34375,34376,34405,34413,89715,34346,64375,34369,2207,62246,34342,34340,34339,40624,40271,34343,34356,2233,29929,63766,47841,38695,36837,35168,33904,33892,31778,31698,31694,29582,15715,15714,15666,14602,14561,14560,14559,14556,14555,4269,307,308,284)) OR (`Idx`=3 AND `CreatureID` IN (33115,32969,34405)) OR (`Idx`=2 AND `CreatureID` IN (33115,32969,34347,34405,64375,62246)) OR (`Idx`=1 AND `CreatureID` IN (33115,32969,34293,40350,34318,34334,34302,61080,34348,34347,24042,34405,34346,64375,62246,34356));


UPDATE `creature_questitem` SET `VerifiedBuild`=46340 WHERE (`Idx`=0 AND `CreatureEntry` IN (32935,2206,2071,2070,2237,32997,2165,2207,2233)) OR (`Idx`=1 AND `CreatureEntry` IN (2071,2237,2233)) OR (`Idx`=2 AND `CreatureEntry`=2233);

DELETE FROM `gameobject_template` WHERE `entry` IN (310484 /*Ancient Flame*/, 310497 /*Campfire*/, 310488 /*Bonfire*/, 310463 /*Campfire*/, 310508 /*Campfire*/, 310491 /*Campfire*/, 310490 /*Campfire*/, 310489 /*Campfire*/, 310475 /*Bonfire*/, 310458 /*Campfire*/, 310479 /*Beached Sea Creature*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(310484, 10, 54664, 'Ancient Flame', '', '', '', 1, 80, 957, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5, 46340), -- Ancient Flame
(310497, 8, 192, 'Campfire', '', '', '', 1.080000042915344238, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46340), -- Campfire
(310488, 8, 6411, 'Bonfire', '', '', '', 1, 4, 10, 2066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46340), -- Bonfire
(310463, 8, 192, 'Campfire', '', '', '', 1, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46340), -- Campfire
(310508, 8, 192, 'Campfire', '', '', '', 1, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46340), -- Campfire
(310491, 8, 192, 'Campfire', '', '', '', 1, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46340), -- Campfire
(310490, 8, 192, 'Campfire', '', '', '', 1, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46340), -- Campfire
(310489, 8, 192, 'Campfire', '', '', '', 1, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46340), -- Campfire
(310475, 8, 200, 'Bonfire', '', '', '', 1.85000002384185791, 4, 20, 2066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46340), -- Bonfire
(310458, 8, 192, 'Campfire', '', '', '', 1, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46340), -- Campfire
(310479, 2, 3533, 'Beached Sea Creature', '', '', '', 1, 259, 3873, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 46340); -- Beached Sea Creature

UPDATE `gameobject_template` SET `VerifiedBuild`=46340 WHERE `entry` IN (204132, 284492, 180407, 180411, 180472, 180425, 204774, 284502, 180405, 195014, 204131, 278574, 180408, 180410, 284503, 180406, 177278, 194107, 311731, 204228, 195078, 194114, 194106, 310478, 17185, 194139, 195057, 194140, 1923, 310457, 1926, 1732, 194144, 194143, 194142, 194141, 61929, 1921, 195056, 195045, 195044, 232560, 232554, 195080, 195043, 195055, 194150, 195042, 195021, 1731, 310498, 195058);
UPDATE `gameobject_template` SET `ContentTuningId`=425, `VerifiedBuild`=46340 WHERE `entry`=208115; -- Candy Bucket
UPDATE `gameobject_template` SET `name`='Bat02', `VerifiedBuild`=46340 WHERE `entry`=180427; -- 180427
UPDATE `gameobject_template` SET `name`='CandleBlack01', `VerifiedBuild`=46340 WHERE `entry`=180415; -- 180415
UPDATE `gameobject_template` SET `name`='Bat01', `VerifiedBuild`=46340 WHERE `entry`=180426; -- 180426
UPDATE `gameobject_template` SET `type`=50, `IconName`='', `Data0`=2850, `Data3`=0, `Data4`=110, `Data5`=160, `Data6`=30, `Data12`=683, `Data13`=1, `Data18`=10, `Data19`=0, `VerifiedBuild`=46340 WHERE `entry`=2045; -- Stranglekelp
UPDATE `gameobject_template` SET `Data26`=1, `VerifiedBuild`=46340 WHERE `entry`=16393; -- Ancient Flame
UPDATE `gameobject_template` SET `IconName`='GatherHerbs', `VerifiedBuild`=46340 WHERE `entry`=194100; -- Bear's Paw
UPDATE `gameobject_template` SET `Data18`=683, `VerifiedBuild`=46340 WHERE `entry`=207521; -- Maplewood Treasure Chest
UPDATE `gameobject_template` SET `ContentTuningId`=5, `VerifiedBuild`=46340 WHERE `entry`=175227; -- Beached Sea Creature
UPDATE `gameobject_template` SET `name`='Open Crate', `VerifiedBuild`=46340 WHERE `entry`=235311; -- Caisse ouverte
UPDATE `gameobject_template` SET `Data1`=17520, `VerifiedBuild`=46340 WHERE `entry`=180682; -- Oily Blackmouth School
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=27250, `VerifiedBuild`=46340 WHERE `entry`=195054; -- Mud-Crusted Ancient Disc


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46340 WHERE (`Idx`=0 AND `GameObjectEntry` IN (194107,194100,195080,195055,195042,195021,195054));


DELETE FROM `conversation_line_template` WHERE `Id` IN (42138, 42137, 42136, 42135, 42134, 42133, 42132, 42131);
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(42138, 0, 0, 0, 46340),
(42137, 0, 0, 0, 46340),
(42136, 0, 0, 0, 46340),
(42135, 0, 0, 0, 46340),
(42134, 0, 0, 0, 46340),
(42133, 0, 0, 0, 46340),
(42132, 0, 0, 0, 46340),
(42131, 0, 0, 0, 46340);


DELETE FROM `conversation_template` WHERE `Id`=16715;
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `TextureKitId`, `VerifiedBuild`) VALUES
(16715, 42131, 0, 46340);


DELETE FROM `quest_offer_reward` WHERE `ID` IN (32669 /*Learn To Ride*/, 25133 /*Report to Sen'jin Village*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(32669, 0, 0, 0, 0, 0, 0, 0, 0, 'Don\'t forget to buy your mount while you are here! You can buy one from Ogunaro over there.', 46340), -- Learn To Ride
(25133, 1, 0, 0, 0, 0, 0, 0, 0, 'Hmm... your report comes at a bad time. The Burning Blade is no longer seen here in Sen\'jin, but we will be vigilant in our efforts to prevent their return to the area.\n\nThe orcs are friends of the Darkspear Trolls. Honorable friends. We want to help the orcs, but... we need help too.', 46340); -- Report to Sen'jin Village

UPDATE `quest_offer_reward` SET `VerifiedBuild`=46340 WHERE `ID` IN (25263, 835, 834, 25262, 25259, 25258, 25257, 25256, 25261, 25260, 25236, 25206, 25205, 25196, 25232, 25188, 25193, 25195, 25194, 25192, 25190, 25187, 25227, 25179, 25177, 25178, 25176, 25173, 25171, 25168, 25169, 25165, 25167, 25170, 25135, 25132, 25131, 25130, 25127, 37446, 25129, 25172, 25126, 25152);
UPDATE `quest_offer_reward` SET `Emote1`=1, `RewardText`='Hah!  I guess she liked it!  Nothing brings red to a lady\'s cheeks like a big, juicy steak!$B$BThank you, $n.  You\'ve done me a great service.  Here is some money for your trouble, and don\'t be surprised if I invite you to my wedding!', `VerifiedBuild`=46340 WHERE `ID`=6386; -- Return to Razor Hill
UPDATE `quest_offer_reward` SET `Emote1`=1, `RewardText`='You have to get this to Razor Hill in Durotar?  Yes, I can get you there...', `VerifiedBuild`=46340 WHERE `ID`=6385; -- Doras the Wind Rider Master
UPDATE `quest_offer_reward` SET `Emote1`=1, `RewardText`='Oh, wonderful!  Those are fine cuts!  These are from Grimtak, are they?  That orc sure knows his way into a lady\'s heart...$B$BOh, I can\'t wait to cook it.  But not too much!  Meat is best served rare, don\'t you think?', `VerifiedBuild`=46340 WHERE `ID`=6384; -- Ride to Orgrimmar
UPDATE `quest_offer_reward` SET `Emote1`=1, `RewardText`='You have to get this meat to Orgrimmar?  That is no problem.  For a small fee, my wind rider can take you there.', `VerifiedBuild`=46340 WHERE `ID`=6365; -- Meats to Orgrimmar
UPDATE `quest_offer_reward` SET `Emote2`=-1, `Emote3`=-1, `Emote4`=-1, `VerifiedBuild`=46340 WHERE `ID`=25136; -- Galgar's Cactus Apple Surprise

DELETE FROM `quest_poi` WHERE (`QuestID`=835 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=835 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=835 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=32669 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25178 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25178 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25178 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25167 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=25167 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25167 AND `BlobIndex`=0 AND `Idx1`=1);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(835, 0, 2, 32, 0, 0, 1, 1, 0, 0, 0, 0, 0, 52497, 0, 46340), -- Securing the Lines
(835, 0, 1, 0, 253951, 41007, 1, 1, 0, 1, 0, 0, 0, 0, 0, 46340), -- Securing the Lines
(835, 0, 0, -1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 46340), -- Securing the Lines
(32669, 0, 0, -1, 0, 0, 1, 85, 0, 0, 0, 0, 0, 0, 0, 46340), -- Learn To Ride
(25178, 0, 2, 32, 0, 0, 1, 1, 0, 0, 0, 0, 0, 359744, 0, 46340), -- Shipwreck Searching
(25178, 0, 1, 0, 265301, 4863, 1, 1, 0, 0, 0, 0, 0, 0, 0, 46340), -- Shipwreck Searching
(25178, 0, 0, -1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 46340), -- Shipwreck Searching
(25167, 0, 3, 32, 0, 0, 1, 463, 0, 0, 0, 0, 0, 52200, 0, 46340), -- Breaking the Chain
(25167, 0, 2, 1, 266186, 39245, 1, 1, 0, 7, 0, 0, 0, 0, 0, 46340), -- Breaking the Chain
(25167, 0, 1, 0, 266185, 39251, 1, 1, 0, 7, 0, 0, 0, 0, 0, 46340); -- Breaking the Chain

UPDATE `quest_poi` SET `VerifiedBuild`=46340 WHERE (`QuestID`=25264 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=25264 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25264 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=834 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=834 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=834 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=834 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25263 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25263 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25259 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25259 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25259 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25258 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25258 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25258 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25257 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25257 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25257 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25262 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25262 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25262 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25256 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25256 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25648 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25648 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25261 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25261 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25206 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25206 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25206 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25205 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25205 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25205 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25236 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25236 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25236 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25260 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25260 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25260 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25196 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25196 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25193 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25193 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25193 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25195 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25195 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25195 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25194 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=25194 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=25194 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25194 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25192 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=25192 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=25192 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=25192 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=25192 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25192 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25190 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=25190 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25190 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25190 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25188 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=25188 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=25188 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25188 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25188 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25187 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=25187 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=25187 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=25187 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25187 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25187 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25227 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=25227 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25227 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25179 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25179 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25179 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25177 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25177 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25177 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=6386 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=6386 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=6386 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=6385 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=6385 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=6385 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=6385 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=6384 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=6384 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=6384 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=6365 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=6365 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=6365 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=840 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=840 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=840 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25176 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25176 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25176 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25173 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=25173 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=25173 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25173 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25173 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25232 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25232 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25232 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25171 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25171 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25169 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=25169 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=25169 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25169 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25169 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25168 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25168 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25168 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25165 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=25165 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=25165 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25165 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25170 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25170 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25170 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25133 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25133 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25135 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=25135 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=25135 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25135 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25132 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=25132 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=25132 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=25132 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=25132 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25132 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25131 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25131 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25131 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25130 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25130 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25129 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25129 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25129 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=37446 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=37446 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=37446 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25127 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25127 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25127 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25136 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25136 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25136 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25172 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25172 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25172 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25126 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=25126 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25126 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25152 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25152 AND `BlobIndex`=0 AND `Idx1`=0);
UPDATE `quest_poi` SET `UiMapID`=1, `VerifiedBuild`=46340 WHERE (`QuestID`=25167 AND `BlobIndex`=0 AND `Idx1`=0); -- Breaking the Chain
DELETE FROM `quest_poi_points` WHERE (`QuestID`=835 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=835 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=835 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=835 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=835 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=835 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=835 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=835 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=835 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=835 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=32669 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25178 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25178 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=25178 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25178 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25178 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25178 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25178 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25178 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25178 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25178 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25167 AND `Idx1`=3 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(835, 2, 0, 1000, -4414, 14, 46340), -- Securing the Lines
(835, 1, 7, 828, -4817, 22, 46340), -- Securing the Lines
(835, 1, 6, 966, -4703, 20, 46340), -- Securing the Lines
(835, 1, 5, 1070, -4683, 20, 46340), -- Securing the Lines
(835, 1, 4, 1076, -4718, 19, 46340), -- Securing the Lines
(835, 1, 3, 1038, -4804, 17, 46340), -- Securing the Lines
(835, 1, 2, 1008, -4813, 18, 46340), -- Securing the Lines
(835, 1, 1, 984, -4817, 18, 46340), -- Securing the Lines
(835, 1, 0, 847, -4819, 16, 46340), -- Securing the Lines
(835, 0, 0, 1000, -4414, 14, 46340), -- Securing the Lines
(32669, 0, 0, 2085, -4573, 49, 46340), -- Learn To Ride
(25178, 2, 0, 288, -4771, 12, 46340), -- Shipwreck Searching
(25178, 1, 7, 161, -5159, 0, 46340), -- Shipwreck Searching
(25178, 1, 6, 45, -5056, 19, 46340), -- Shipwreck Searching
(25178, 1, 5, -27, -4960, 28, 46340), -- Shipwreck Searching
(25178, 1, 4, 89, -4970, 15, 46340), -- Shipwreck Searching
(25178, 1, 3, 233, -4991, 15, 46340), -- Shipwreck Searching
(25178, 1, 2, 326, -5014, 15, 46340), -- Shipwreck Searching
(25178, 1, 1, 351, -5048, -8, 46340), -- Shipwreck Searching
(25178, 1, 0, 428, -5167, -1, 46340), -- Shipwreck Searching
(25178, 0, 0, 288, -4771, 12, 46340), -- Shipwreck Searching
(25167, 3, 0, -826, -4921, 19, 46340); -- Breaking the Chain

UPDATE `quest_poi_points` SET `VerifiedBuild`=46340 WHERE (`QuestID`=25264 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25264 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25264 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=834 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=834 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=834 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=834 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=834 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=834 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=834 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=834 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=834 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=834 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25263 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25263 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25259 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25259 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25259 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25258 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25258 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25258 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25257 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25257 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25257 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25262 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25262 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=25262 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=25262 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=25262 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=25262 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25262 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25262 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25262 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25262 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25262 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25262 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25262 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25256 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25256 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25648 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25648 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25261 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25261 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25206 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25206 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25206 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25206 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25206 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25206 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25206 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25206 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25206 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25205 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25205 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25205 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25205 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25205 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25205 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25205 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25205 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25205 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25236 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25236 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25236 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25236 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25236 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25236 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25236 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25236 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25236 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25260 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25260 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25260 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25196 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25196 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25193 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25193 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25193 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25193 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25193 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25193 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25193 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25193 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25193 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25195 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25195 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25195 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25194 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=25194 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=25194 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=25194 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=25194 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=25194 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=25194 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25194 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25194 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25194 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25194 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25194 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25194 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25192 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=25192 AND `Idx1`=4 AND `Idx2`=7) OR (`QuestID`=25192 AND `Idx1`=4 AND `Idx2`=6) OR (`QuestID`=25192 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=25192 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=25192 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=25192 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=25192 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=25192 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=25192 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=25192 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=25192 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=25192 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=25192 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=25192 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=25192 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=25192 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=25192 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=25192 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=25192 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=25192 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=25192 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=25192 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=25192 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25192 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25192 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25192 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25192 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25192 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25192 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25192 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25192 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25190 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=25190 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=25190 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=25190 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=25190 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=25190 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=25190 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=25190 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=25190 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25190 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=25190 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25190 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25190 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25190 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25190 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25190 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25190 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25190 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25188 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=25188 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=25188 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25188 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25188 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25187 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=25187 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=25187 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=25187 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25187 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25187 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25227 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25227 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25227 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25179 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25179 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25179 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25179 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25179 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25179 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25179 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25179 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25179 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25177 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25177 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=25177 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25177 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25177 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25177 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25177 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25177 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25177 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25177 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=6386 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=6386 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=6386 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=6385 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=6385 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=6385 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=6385 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=6384 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=6384 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=6384 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=6365 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=6365 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=6365 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=840 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=840 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=840 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25176 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25176 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=25176 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=25176 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25176 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25176 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25176 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25176 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25176 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25176 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25176 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25173 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=25173 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=25173 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=25173 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=25173 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=25173 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=25173 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=25173 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=25173 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=25173 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25173 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=25173 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25173 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25173 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25173 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25173 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25173 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25173 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25173 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25232 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25232 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=25232 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=25232 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25232 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25232 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25232 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25232 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25232 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25232 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25232 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25171 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25171 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25169 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=25169 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=25169 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25169 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25169 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25168 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25168 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=25168 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=25168 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25168 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25168 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25168 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25168 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25168 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25168 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25168 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25165 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=25165 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=25165 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=25165 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=25165 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=25165 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=25165 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=25165 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=25165 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=25165 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=25165 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=25165 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=25165 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25165 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25165 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25165 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25165 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25165 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25165 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25165 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25165 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25170 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25170 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=25170 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=25170 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25170 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25170 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25170 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25170 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25170 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25170 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25170 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25133 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25133 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25135 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=25135 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25135 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25135 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25132 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=25132 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=25132 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=25132 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=25132 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=25132 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=25132 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=25132 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=25132 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=25132 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25132 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25132 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25131 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25131 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=25131 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=25131 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=25131 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=25131 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25131 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25131 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25131 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25131 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25131 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25131 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25131 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25130 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25130 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25129 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25129 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25129 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=37446 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=37446 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=37446 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=37446 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=37446 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=37446 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=37446 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=37446 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=37446 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=37446 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=37446 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=37446 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=37446 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25127 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25127 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=25127 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25127 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25127 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25127 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25127 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25127 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25127 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25127 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25136 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25136 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=25136 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=25136 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=25136 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=25136 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=25136 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25136 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25136 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25136 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25136 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25136 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25136 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25136 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25172 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25172 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25172 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25172 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25172 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25172 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25172 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25172 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25172 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25126 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25126 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=25126 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=25126 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25126 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25126 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25126 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25126 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25126 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25126 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25126 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25152 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25152 AND `Idx1`=0 AND `Idx2`=0);
UPDATE `quest_poi_points` SET `Z`=10, `VerifiedBuild`=46340 WHERE (`QuestID`=25167 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=25167 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=25167 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=25167 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=25167 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=25167 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=25167 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=25167 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=25167 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=25167 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=25167 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=25167 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=25167 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=25167 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=25167 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=25167 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=25167 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=25167 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=25167 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=25167 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=25167 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=25167 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=25167 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=25167 AND `Idx1`=1 AND `Idx2`=0); -- Breaking the Chain
UPDATE `quest_poi_points` SET `Z`=20, `VerifiedBuild`=46340 WHERE (`QuestID`=25167 AND `Idx1`=0 AND `Idx2`=0); -- Breaking the Chain


UPDATE `quest_greeting` SET `VerifiedBuild`=46340 WHERE (`ID`=3143 AND `Type`=0);

DELETE FROM `quest_details` WHERE `ID` IN (25648 /*Beyond Durotar*/, 32669 /*Learn To Ride*/, 6386 /*Return to Razor Hill*/, 6385 /*Doras the Wind Rider Master*/, 6384 /*Ride to Orgrimmar*/, 6365 /*Meats to Orgrimmar*/, 25170 /*Cleaning Up the Coastline*/, 25167 /*Breaking the Chain*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(25648, 1, 274, 1, 0, 0, 0, 0, 0, 46340), -- Beyond Durotar
(32669, 1, 0, 0, 0, 0, 0, 0, 0, 46340), -- Learn To Ride
(6386, 1, 0, 0, 0, 0, 0, 0, 0, 46340), -- Return to Razor Hill
(6385, 1, 0, 0, 0, 0, 0, 0, 0, 46340), -- Doras the Wind Rider Master
(6384, 1, 0, 0, 0, 0, 0, 0, 0, 46340), -- Ride to Orgrimmar
(6365, 1, 0, 0, 0, 0, 0, 0, 0, 46340), -- Meats to Orgrimmar
(25170, 94, 94, 94, 0, 0, 0, 0, 0, 46340), -- Cleaning Up the Coastline
(25167, 0, 0, 0, 0, 0, 0, 0, 0, 46340); -- Breaking the Chain

UPDATE `quest_details` SET `VerifiedBuild`=46340 WHERE `ID` IN (25264, 834, 835, 25263, 25259, 25258, 25257, 25262, 25256, 25261, 25206, 25205, 25236, 25260, 25196, 25193, 25195, 25194, 25192, 25190, 25188, 25187, 25227, 25179, 25178, 25177, 840, 25176, 25173, 25232, 25171, 25169, 25168, 25165, 25133, 25135, 25132, 25131, 25130, 25129, 37446, 25127, 25136, 25172, 25126, 25152);


UPDATE `quest_request_items` SET `EmoteOnComplete`=6, `CompletionText`='Have you returned from Orgrimmar?  Did Gryshka like the meat I sent her?' WHERE `ID`=6386; -- Return to Razor Hill
UPDATE `quest_request_items` SET `EmoteOnComplete`=0 WHERE `ID`=6385;
UPDATE `quest_request_items` SET `EmoteOnComplete`=6, `CompletionText`='Something smells good!  You don\'t have raw meat on you, do you?' WHERE `ID`=6384; -- Ride to Orgrimmar
UPDATE `quest_request_items` SET `VerifiedBuild`=46340 WHERE `ID` IN (25131, 25129);
UPDATE `quest_request_items` SET `EmoteOnComplete`=6, `CompletionText`='You need to get somewhere fast?  Then you\'re talking to the right orc!' WHERE `ID`=6365; -- Meats to Orgrimmar



DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (112015,131644,97174,161980,162001,161974,171565,188169,17252,171124,68660,175165,180701,39465,39365,99403,39347,39346,39345,39320,175156,21055,42776,151780,32841,175551,122033,112144,10682,39239,39236,39319,39318,39244));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(112015, 0, 0, 0, 371, 46340),
(131644, 0, 0, 0, 371, 46340),
(97174, 0, 0, 0, 371, 46340),
(161980, 0, 0, 0, 482, 46340),
(162001, 0, 0, 0, 482, 46340),
(161974, 0, 0, 0, 482, 46340),
(171565, 0, 0, 0, 371, 46340),
(188169, 0, 0, 0, 866, 46340),
(17252, 0, 0, 0, 482, 46340),
(171124, 0, 0, 0, 371, 46340),
(68660, 0, 0, 0, 371, 46340),
(175165, 0, 0, 0, 70, 46340),
(180701, 0, 0, 0, 2078, 46340),
(39465, 0, 0, 0, 70, 46340),
(39365, 0, 0, 0, 70, 46340),
(99403, 0, 0, 0, 371, 46340),
(39347, 0, 0, 0, 70, 46340),
(39346, 0, 0, 0, 70, 46340),
(39345, 0, 0, 0, 70, 46340),
(39320, 0, 0, 0, 70, 46340),
(175156, 0, 0, 0, 70, 46340),
(21055, 0, 0, 0, 371, 46340),
(42776, 0, 0, 0, 70, 46340),
(151780, 0, 0, 0, 371, 46340),
(32841, 0, 0, 0, 371, 46340),
(175551, 0, 0, 0, 746, 46340),
(122033, 0, 0, 0, 371, 46340),
(112144, 0, 0, 0, 371, 46340),
(10682, 0, 0, 0, 70, 46340),
(39239, 0, 0, 0, 70, 46340),
(39236, 0, 0, 0, 70, 46340),
(39319, 0, 0, 0, 70, 46340),
(39318, 0, 0, 0, 70, 46340),
(39244, 0, 0, 0, 70, 46340);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46340 WHERE (`DifficultyID`=0 AND `Entry` IN (73967,356,12351,64105,3362,14541,14540,168540,47808,47809,12353,4752,5195,47764,14539,31768,31757,47771,31756,47767,47818,47817,47788,3352,47815,114840,50482,57922,3358,3357,46675,31769,31758,31755,171689,168553,46640,46639,46638,46637,168628,168621,65065,65060,65058,5029,169166,2756,65063,65061,5034,65074,70301,16869,16868,62445,47663,69333,68869,46642,66022,65076,65008,65071,7951,42638,15186,65078,43239,35845,3333,3332,46620,46622,46618,46619,16076,16069,46621,62193,158789,3359,180684,161203,160452,31146,54004,54113,44723,176012,176095,176094,11046,50088,8659,3347,3348,153285,3351,3350,6986,6987,46741,62197,62196,3225,3316,7088,3365,3366,5811,3321,2855,3317,3364,3363,3367,3315,23635,103159,160527,3204,3197,3198,160528,3108,160529,160526,53966,160530,41621,3107,39352,39351,39353,39590,39519,39604,3208,3203,3425,39596,39595,40948,40949,39364,149408,149296,149409,6491,3118,3117,3199,3196,3195,39603,39464,43331,2620,39385,3244,3110,5900,3100,5826,39337,39324,3123,66145,66144,66126,3193,39325,39452,61367,3113,3114,39323,6027,6145,5809,39272,39270,37912,39269,39267,39268,37911,3129,23543,44854,44877,51195,46357,3370,5188,3319,46358,37072,73151,12796,46359,46512,3334,44160,34765,46181,4953,3345,3346,44735,44725,25081,25080,24935,24934,24931,24924,133271,24929,24930,24927,24926,10880,44852,44853,44876,25075,31727,31726,31725,31724,31723,31720,44851,46572,197771,197770,197767,187758,188656,188655,49750,3314,89830,4047,27489,45339,49622,46142,175135,58155,3312,35068,3144,46555,135201,46556,17098,45337,23128,52034,47571,3323,46140,187775,3328,47233,3189,3327,26537,3331,11066,3335,3330,20490,20489,5816,45230,5909,44948,46742,5875,47248,47254,20491,88706,88704,20486,52810,141310,44918,47247,88705,52812,52809,47246,20493,20488,53977,9564,141528,44919,12136,130911,20492,44158,11017,2857,14451,42548,3329,5639,3412,3216,3413,52032,50488,50477,3371,3310,46716,19177,43062,50323,46718,3372,7010,14498,14499,62200,62199,63626,14881,15476,3369,3368,46709,46708,62198,54473,49131,49737,68979,42506,62194,14376,54472,57801,44338,72559,72654,14375,19175,3342,44871,44872,44868,44867,44866,44865,14377,88703,40435,188157,44856,44878,5611,88702,5614,137762,5613,6929,135202,5609,5606,88701,5610,6466,74228,62195,14392,168459,5817,3313,32520,28960,38821,148250,148242,150131,149290,148768,133186,149616,149279,149404,3296,149270,145714,148265,151937,149626,149371,51346,47253,148795,149523,148770,149522,149258,149297,155739,148263,36871,10685,42504,3122,3116,3115,40970,40971,3172,3294,45015,3175,3191,3174,75687,3881,3167,3163,11943,11025,6787,3166,5943,3164,3173,3165,3169,6928,3706,23973,63061,23971,3168,47418,5880,9987,44380,3336,111421,3620,3171,3170,3142,3139,39423,23537,75686,41140,75685,12430,3111,39261,39260,39251,39249,39245,39255,5942,3106,5941,6408,50011,49997,10578,3187,3185,12350,12346,71333,10369,3188,50002,50001,49998,14544,7953,7952,3186,14545,14543,3194,3140,12349,3304,51913,3184,50015,50004,41142,3933,3297,10676,40222,62115,3125,3126,3099,39326,3112,3183,3281,3287,3102,3101,61325,39215,39408,3124,39400,39399,3098,3156,3882,3158,61751,10556,9796,39317,12776,3161,3157,3153,3160,3159,3155,3145,3143,10176,44820,63296,5887,11378,39206,39214,5952,3293,3127,49837,49743,62114,62116,71100,4311,42859,5951,3300,39380,39379,40891));

DELETE FROM `creature_model_info` WHERE `DisplayID`=105247;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(105247, 0.5, 1, 0, 46340);

UPDATE `creature_model_info` SET `VerifiedBuild`=46340 WHERE `DisplayID` IN (90254, 2327, 44604, 1384, 14574, 14573, 35843, 35844, 247, 4464, 2328, 35816, 14575, 23516, 4768, 35819, 23519, 2729, 35818, 6807, 342, 35827, 1373, 11414, 73494, 37088, 39910, 1380, 1379, 35218, 23517, 802, 1037, 72325, 35195, 35194, 35193, 43721, 43718, 43717, 45320, 46093, 43720, 43719, 43669, 43724, 47982, 45319, 45170, 39637, 99822, 47465, 45865, 46986, 35198, 44740, 45864, 43722, 15352, 32982, 15369, 43726, 35301, 1333, 1332, 35185, 35187, 35183, 35184, 15988, 15984, 35186, 42384, 101799, 85697, 27510, 38631, 34045, 10578, 99820, 1368, 99821, 28048, 1372, 99819, 5769, 99810, 42388, 42387, 744, 1316, 5846, 1387, 1388, 99817, 99816, 99813, 99811, 1315, 46924, 68067, 90315, 10950, 240, 4192, 4190, 999, 92324, 91373, 93309, 32529, 31418, 31419, 31473, 31483, 3752, 7128, 5561, 31425, 46126, 31424, 90319, 90256, 90249, 90313, 16812, 30757, 5233, 4195, 4186, 4189, 4188, 31485, 33312, 1072, 1250, 4537, 1042, 31422, 1959, 45563, 3750, 31420, 1035, 2954, 1139, 4878, 20026, 33165, 1862, 31393, 3734, 15294, 31396, 31394, 3735, 1860, 48525, 34143, 1320, 37138, 35051, 1392, 3128, 1319, 35052, 4382, 51098, 12678, 35053, 35133, 1334, 29396, 34932, 2956, 1366, 99823, 34047, 22750, 22746, 22739, 22744, 22745, 22743, 22740, 10186, 34139, 34141, 1318, 22873, 4602, 27687, 27685, 27684, 27686, 34136, 35148, 73093, 79383, 109709, 106345, 106382, 36615, 1314, 24980, 7117, 4514, 22493, 34412, 36559, 24079, 40012, 1312, 29569, 82115, 35141, 35140, 16850, 34406, 21264, 37724, 35695, 1323, 99462, 89802, 2588, 1328, 99460, 99459, 1327, 24164, 99458, 10589, 9391, 99454, 1330, 17721, 32938, 17720, 99457, 8572, 4545, 30413, 35244, 99461, 32936, 35500, 17719, 99455, 61026, 17700, 86393, 34184, 35499, 61027, 33303, 38047, 17701, 17699, 15349, 33699, 8848, 64307, 34185, 12229, 81476, 33698, 17722, 33700, 22378, 10472, 4386, 14499, 32937, 1329, 99456, 99818, 99449, 7136, 99809, 37020, 31760, 1393, 1311, 35241, 22379, 4368, 37437, 35242, 1394, 6839, 99815, 20545, 44816, 5905, 15469, 99814, 1390, 35237, 99808, 42389, 38804, 31988, 1381, 47231, 99807, 42386, 14414, 38800, 39809, 49770, 99507, 22374, 14413, 22375, 1358, 9133, 8000, 34157, 34156, 34155, 34154, 14415, 8001, 31851, 106383, 34144, 1310, 3606, 61024, 38646, 3609, 3608, 5706, 15391, 3605, 3604, 61023, 7137, 5205, 42385, 51613, 4356, 1313, 99453, 82770, 90317, 99451, 90304, 90301, 10015, 1960, 1225, 32226, 1973, 1654, 48527, 3751, 49781, 11901, 5730, 4611, 14616, 31737, 5705, 1897, 22499, 14589, 10171, 33829, 3884, 31840, 71826, 1877, 3736, 31446, 31738, 32324, 68845, 12477, 10010, 207, 31403, 31399, 31400, 31402, 31378, 31404, 31405, 17345, 4610, 4609, 5370, 36793, 36789, 9911, 4087, 4085, 6473, 4806, 48810, 9768, 4072, 36806, 36858, 36861, 4083, 7040, 7037, 4089, 14344, 4074, 4070, 6472, 4086, 4071, 36859, 36860, 31726, 4082, 4084, 10009, 31725, 2486, 2487, 381, 31421, 1876, 6068, 2025, 7511, 1185, 36583, 36598, 15467, 31447, 2485, 31438, 503, 1884, 3753, 1879, 10038, 9151, 31371, 14371, 1885, 1878, 1880, 1881, 1883, 1886, 1875, 1653, 9470, 4532, 12089, 31365, 31370, 7129, 2732, 8971, 1987, 193, 46940, 32171, 46130, 32172, 4515, 32173, 3027, 1560, 4366, 19017, 32170);
UPDATE `creature_model_info` SET `BoundingRadius`=0.332249850034713745, `VerifiedBuild`=46340 WHERE `DisplayID`=71945;
UPDATE `creature_model_info` SET `BoundingRadius`=0.220475867390632629, `CombatReach`=0.33000001311302185, `VerifiedBuild`=46340 WHERE `DisplayID`=81984;
UPDATE `creature_model_info` SET `BoundingRadius`=0.236000001430511474, `CombatReach`=1.5, `VerifiedBuild`=46340 WHERE `DisplayID` IN (96883, 4728, 35611);
UPDATE `creature_model_info` SET `BoundingRadius`=0.698000013828277587, `CombatReach`=3, `VerifiedBuild`=46340 WHERE `DisplayID` IN (96885, 34049, 82820);
UPDATE `creature_model_info` SET `BoundingRadius`=0.336600005626678466, `CombatReach`=1.65000009536743164, `VerifiedBuild`=46340 WHERE `DisplayID`=35192;
UPDATE `creature_model_info` SET `BoundingRadius`=0.722000002861022949, `CombatReach`=3, `VerifiedBuild`=46340 WHERE `DisplayID` IN (96916, 100150);
UPDATE `creature_model_info` SET `BoundingRadius`=0.382999986410140991, `CombatReach`=1.5, `VerifiedBuild`=46340 WHERE `DisplayID` IN (96913, 38648);
UPDATE `creature_model_info` SET `BoundingRadius`=0.211455374956130981, `VerifiedBuild`=46340 WHERE `DisplayID`=65113;
UPDATE `creature_model_info` SET `BoundingRadius`=0.305999994277954101, `CombatReach`=1.5, `VerifiedBuild`=46340 WHERE `DisplayID` IN (96364, 93637, 44805, 9262);
UPDATE `creature_model_info` SET `BoundingRadius`=1.60000002384185791, `CombatReach`=2.40000009536743164, `VerifiedBuild`=46340 WHERE `DisplayID`=43725;
UPDATE `creature_model_info` SET `BoundingRadius`=0.800000011920928955, `CombatReach`=0, `VerifiedBuild`=46340 WHERE `DisplayID`=79390;
UPDATE `creature_model_info` SET `BoundingRadius`=0.300000011920928955, `CombatReach`=0, `VerifiedBuild`=46340 WHERE `DisplayID`=94717;
UPDATE `creature_model_info` SET `BoundingRadius`=0.39679846167564392, `CombatReach`=0, `VerifiedBuild`=46340 WHERE `DisplayID`=99899;
UPDATE `creature_model_info` SET `BoundingRadius`=0.505400002002716064, `CombatReach`=2.099999904632568359, `VerifiedBuild`=46340 WHERE `DisplayID`=100158;
UPDATE `creature_model_info` SET `BoundingRadius`=0.577600002288818359, `CombatReach`=2.40000009536743164, `VerifiedBuild`=46340 WHERE `DisplayID`=100157;
UPDATE `creature_model_info` SET `BoundingRadius`=0.372000008821487426, `CombatReach`=1.5, `VerifiedBuild`=46340 WHERE `DisplayID` IN (5770, 4384, 1386, 99812, 3745, 3748, 3747, 3755, 3742, 3738, 10570, 3740, 3737, 3739, 3743, 3746, 3741, 4296, 3744, 3749);
UPDATE `creature_model_info` SET `BoundingRadius`=0.517066359519958496, `CombatReach`=0.800847411155700683, `VerifiedBuild`=46340 WHERE `DisplayID`=64802;
UPDATE `creature_model_info` SET `BoundingRadius`=0.4296722412109375, `CombatReach`=0.300000011920928955, `VerifiedBuild`=46340 WHERE `DisplayID`=99876;
UPDATE `creature_model_info` SET `BoundingRadius`=2.559763431549072265, `CombatReach`=1.75, `VerifiedBuild`=46340 WHERE `DisplayID`=91243;
UPDATE `creature_model_info` SET `DisplayID_Other_Gender`=0, `VerifiedBuild`=46340 WHERE `DisplayID` IN (4191, 4193, 4187, 4194, 9801, 9800, 9799, 9798, 9794, 9796, 9797);
UPDATE `creature_model_info` SET `BoundingRadius`=0.425779640674591064, `CombatReach`=0.5, `VerifiedBuild`=46340 WHERE `DisplayID`=92325;
UPDATE `creature_model_info` SET `BoundingRadius`=1.305013895034790039, `VerifiedBuild`=46340 WHERE `DisplayID`=171;
UPDATE `creature_model_info` SET `BoundingRadius`=0.162988871335983276, `VerifiedBuild`=46340 WHERE `DisplayID`=20546;
UPDATE `creature_model_info` SET `BoundingRadius`=0.194208160042762756, `VerifiedBuild`=46340 WHERE `DisplayID`=66157;
UPDATE `creature_model_info` SET `BoundingRadius`=0.582511007785797119, `VerifiedBuild`=46340 WHERE `DisplayID` IN (1237, 2166, 6815);
UPDATE `creature_model_info` SET `BoundingRadius`=2.885575294494628906, `VerifiedBuild`=46340 WHERE `DisplayID`=2179;
UPDATE `creature_model_info` SET `BoundingRadius`=1.072999954223632812, `CombatReach`=1.5, `VerifiedBuild`=46340 WHERE `DisplayID`=1337;
UPDATE `creature_model_info` SET `BoundingRadius`=0.850260376930236816, `CombatReach`=1.5, `VerifiedBuild`=46340 WHERE `DisplayID`=178;
UPDATE `creature_model_info` SET `BoundingRadius`=1.278324246406555175, `CombatReach`=1.80000007152557373, `VerifiedBuild`=46340 WHERE `DisplayID`=6093;
UPDATE `creature_model_info` SET `BoundingRadius`=0.342625141143798828, `VerifiedBuild`=46340 WHERE `DisplayID`=45564;
UPDATE `creature_model_info` SET `BoundingRadius`=1.065270185470581054, `VerifiedBuild`=46340 WHERE `DisplayID`=6096;
UPDATE `creature_model_info` SET `BoundingRadius`=1.065270185470581054, `CombatReach`=1.5, `VerifiedBuild`=46340 WHERE `DisplayID` IN (4658, 1963);
UPDATE `creature_model_info` SET `BoundingRadius`=0.79957592487335205, `CombatReach`=2, `VerifiedBuild`=46340 WHERE `DisplayID`=1132;
UPDATE `creature_model_info` SET `BoundingRadius`=1.369425892829895019, `VerifiedBuild`=46340 WHERE `DisplayID`=5562;
UPDATE `creature_model_info` SET `BoundingRadius`=0.216121748089790344, `CombatReach`=0.150000005960464477, `VerifiedBuild`=46340 WHERE `DisplayID`=91268;
UPDATE `creature_model_info` SET `BoundingRadius`=0.268089085817337036, `CombatReach`=0.300000011920928955, `VerifiedBuild`=46340 WHERE `DisplayID`=16189;
UPDATE `creature_model_info` SET `BoundingRadius`=0.22349250316619873, `VerifiedBuild`=46340 WHERE `DisplayID`=76595;
UPDATE `creature_model_info` SET `CombatReach`=0, `VerifiedBuild`=46340 WHERE `DisplayID`=30761;
UPDATE `creature_model_info` SET `BoundingRadius`=1.066211700439453125, `CombatReach`=1.392857074737548828, `VerifiedBuild`=46340 WHERE `DisplayID`=1938;
UPDATE `creature_model_info` SET `BoundingRadius`=1.586357951164245605, `VerifiedBuild`=46340 WHERE `DisplayID` IN (14342, 14339);
UPDATE `creature_model_info` SET `BoundingRadius`=0.852216184139251708, `VerifiedBuild`=46340 WHERE `DisplayID`=1967;
UPDATE `creature_model_info` SET `BoundingRadius`=0.609339833259582519, `CombatReach`=0.75, `VerifiedBuild`=46340 WHERE `DisplayID`=850;
UPDATE `creature_model_info` SET `BoundingRadius`=0.347222000360488891, `CombatReach`=1.5, `VerifiedBuild`=46340 WHERE `DisplayID`=42925;


UPDATE `trainer` SET `VerifiedBuild`=46340 WHERE `Id` IN (46, 91, 386);


UPDATE `trainer_spell` SET `MoneyCost`=475000, `VerifiedBuild`=46340 WHERE (`TrainerId`=46 AND `SpellId`=33392); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=9500, `VerifiedBuild`=46340 WHERE (`TrainerId`=46 AND `SpellId`=33389); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `VerifiedBuild`=46340 WHERE (`TrainerId`=91 AND `SpellId` IN (265844,74537,84038,74530,74529,265838,2659,3304,2658,3569,3308,3307,10098,16153,10097,70524));
UPDATE `trainer_spell` SET `MoneyCost`=45000000, `VerifiedBuild`=46340 WHERE (`TrainerId`=386 AND `SpellId`=90266); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=9000, `VerifiedBuild`=46340 WHERE (`TrainerId`=386 AND `SpellId`=33389); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=450000, `VerifiedBuild`=46340 WHERE (`TrainerId`=386 AND `SpellId`=33392); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=2250000, `VerifiedBuild`=46340 WHERE (`TrainerId`=386 AND `SpellId`=34092); -- No Faction found! MoneyCost not recalculated!



DELETE FROM `creature_template` WHERE `entry`=180701;
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(180701, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 100665344, 1, 0, 0, 1); -- (Bunny) Sessile

UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=10, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=112015; -- Nightmare Whelpling
UPDATE `creature_template` SET `minlevel`=52, `maxlevel`=52, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=131644; -- Dart
UPDATE `creature_template` SET `BaseAttackTime`=1830 WHERE `entry`=73967; -- Niuzao
UPDATE `creature_template` SET `npcflag`=131 WHERE `entry`=3362; -- Ogunaro Wolfrunner
UPDATE `creature_template` SET `faction`=29 WHERE `entry` IN (31768, 31757, 31756, 31769, 31758, 31755); -- Stabled Hunter Pet
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags3`=8388609 WHERE `entry`=114840; -- PvP Training Dummy
UPDATE `creature_template` SET `npcflag`=81 WHERE `entry`=3357; -- Makaru
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=97174; -- Extinguished Eye
UPDATE `creature_template` SET `minlevel`=10 WHERE `entry`=169166; -- Provisioner Jin'hake
UPDATE `creature_template` SET `faction`=1604 WHERE `entry` IN (54170, 54146); -- Delian Sunshade
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=47663; -- Scout Obrok


UPDATE `creature_template` SET `npcflag`=1 WHERE `entry`=66022; -- Turtlemaster Odai

UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=16076; -- Tharl Stonebleeder
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=1375, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=67635200, `unit_flags3`=17301504 WHERE `entry`=161980; -- Campfire
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67143680, `unit_flags3`=17301504 WHERE `entry`=162001; -- Caravaneer's Pack
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=1375, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=67635200, `unit_flags3`=17301504 WHERE `entry`=161974; -- Tent
UPDATE `creature_template` SET `minlevel`=39, `maxlevel`=39, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=171565; -- Golden Cloudfeather
UPDATE `creature_template` SET `npcflag`=83 WHERE `entry`=3347; -- Yelmak
UPDATE `creature_template` SET `speed_walk`=0.5, `speed_run`=0.5, `unit_flags3`=8388609 WHERE `entry`=153285; -- Training Dummy
UPDATE `creature_template` SET `npcflag`=81 WHERE `entry`=46741; -- Muraga
UPDATE `creature_template` SET `npcflag`=80 WHERE `entry`=7088; -- Thuwd
UPDATE `creature_template` SET `npcflag`=81 WHERE `entry`=3365; -- Karolek
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=29, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `dynamicflags`=128 WHERE `entry`=188169; -- Worker
UPDATE `creature_template` SET `npcflag`=81 WHERE `entry`=3363; -- Magar
UPDATE `creature_template` SET `minlevel`=31, `maxlevel`=31, `BaseAttackTime`=1805 WHERE `entry`=78116; -- Water Elemental
UPDATE `creature_template` SET `speed_run`=0.857142865657806396, `BaseAttackTime`=869 WHERE `entry`=63508; -- Xuen
UPDATE `creature_template` SET `minlevel`=7, `maxlevel`=12 WHERE `entry`=181575; -- Drakks
UPDATE `creature_template` SET `minlevel`=12, `maxlevel`=12, `BaseAttackTime`=1985 WHERE `entry`=17252; -- Felguard
UPDATE `creature_template` SET `minlevel`=2, `maxlevel`=2, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=171124; -- Raw Emotion
UPDATE `creature_template` SET `BaseAttackTime`=1703 WHERE `entry`=26125; -- Risen Ghoul
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=68660; -- Viscidus Globule
UPDATE `creature_template` SET `minlevel`=56, `maxlevel`=56, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=103159; -- Baby Winston
UPDATE `creature_template` SET `minlevel`=49, `maxlevel`=49 WHERE `entry`=60561; -- Earthgrab Totem
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `faction`=16, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=175165; -- Felhunter Minion
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=3204; -- Gazz'uz
UPDATE `creature_template` SET `unit_flags`=33554688, `unit_flags2`=2099200 WHERE `entry`=53966; -- Spider Summoner (Ship)
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=41621; -- Commander Thorak
UPDATE `creature_template` SET  `minlevel`=30 WHERE `entry`=39352; -- Gaur Icehorn
UPDATE `creature_template` SET  `minlevel`=30 WHERE `entry`=39351; -- Ghislania
UPDATE `creature_template` SET  `minlevel`=30 WHERE `entry`=39353; -- Griswold Hanniston
UPDATE `creature_template` SET  `minlevel`=30 WHERE `entry`=39590; -- Spiketooth
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=39519; -- Cosmetic Trigger - PRK
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=39604; -- Vek'nag
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=3208; -- Margoz
UPDATE `creature_template` SET  `minlevel`=30, `unit_flags`=536903680, `unit_flags3`=8192 WHERE `entry`=3203; -- Fizzle Darkclaw
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags3`=524288 WHERE `entry`=39465; -- Hulking Orcish Laborer
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857193946838378, `BaseAttackTime`=1400, `unit_flags`=0 WHERE `entry`=3425; -- Savannah Prowler
UPDATE `creature_template` SET `speed_run`=1.142857193946838378, `unit_flags2`=0 WHERE `entry`=39596; -- Teeming Waterguard
UPDATE `creature_template` SET `speed_walk`=1, `unit_flags2`=0 WHERE `entry`=39595; -- Furious Earthguard
UPDATE `creature_template` SET `minlevel`=1, `maxlevel`=1, `speed_run`=1.142857193946838378, `unit_flags`=33536 WHERE `entry`=40949; -- Kraka
UPDATE `creature_template` SET `minlevel`=13, `maxlevel`=13, `faction`=35, `BaseAttackTime`=2000, `unit_flags2`=2049, `unit_flags3`=8192, `VehicleId`=690 WHERE `entry`=39364; -- The Wolf
UPDATE `creature_template` SET `BaseAttackTime`=1789 WHERE `entry`=180016; -- Spectral Feline
UPDATE `creature_template` SET `BaseAttackTime`=1696 WHERE `entry`=58960; -- Voidlord
UPDATE `creature_template` SET `minlevel`=11, `maxlevel`=11, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=99403; -- Risen Saber Kitten
UPDATE `creature_template` SET `minlevel`=19, `maxlevel`=19 WHERE `entry`=113136; -- Benax
UPDATE `creature_template` SET `minlevel`=6, `maxlevel`=6 WHERE `entry`=2630; -- Earthbind Totem
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3118; -- Dustwind Storm Witch
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=3117; -- Dustwind Savage
UPDATE `creature_template` SET `minlevel`=14 WHERE `entry`=43499; -- Consecration
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=39603; -- Swollen Voidwalker
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `faction`=35, `npcflag`=0, `unit_flags`=0, `unit_flags3`=8192 WHERE `entry`=39464; -- Drowned Thunder Lizard
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `speed_run`=1.142857193946838378 WHERE `entry`=43331; -- Golden Stonefish
UPDATE `creature_template` SET `minlevel`=30, `unit_flags`=67108864 WHERE `entry`=39385; -- Screamslash
UPDATE `creature_template` SET `faction`=189, `speed_walk`=1, `unit_flags`=0 WHERE `entry`=3244; -- Greater Plainstrider
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=3110; -- Dreadmaw Crocolisk
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=5900; -- Telf Joolam
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=5826; -- Geolord Mottle
UPDATE `creature_template` SET `faction`=190, `speed_walk`=1, `unit_flags`=32768 WHERE `entry`=39337; -- Wayward Plainstrider
UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=39324; -- Zen'Taji
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=10, `unit_flags`=33554944, `unit_flags3`=16777216 WHERE `entry`=39347; -- Durotar Watershed Telescope 04 (Zen'Taji)
UPDATE `creature_template` SET `speed_run`=0.857142865657806396, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=66145; -- Spike
UPDATE `creature_template` SET `speed_run`=0.857142865657806396, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=66144; -- Mumtar
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `BaseAttackTime`=1500, `unit_flags2`=2048 WHERE `entry`=66126; -- Zunta
UPDATE `creature_template` SET `minlevel`=30, `npcflag`=2 WHERE `entry`=3193; -- Misha Tor'kren
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=10, `unit_flags`=33554944, `unit_flags3`=16777216 WHERE `entry`=39346; -- Durotar Watershed Telescope 03 (Misha)
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `npcflag`=2, `unit_flags`=32768 WHERE `entry`=39325; -- Grandmatron Tekla
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=39452; -- Dreadmaw Toothgnasher
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=10, `unit_flags`=33554944, `unit_flags3`=16777216 WHERE `entry`=39345; -- Durotar Watershed Telescope 02 (Tekla)

UPDATE `creature_template` SET `minlevel`=9, `maxlevel`=10, `unit_flags`=33554944, `unit_flags3`=16777216 WHERE `entry`=39320; -- Durotar Watershed Telescope 01 (Raggaran)
UPDATE `creature_template` SET  `unit_flags`=33536 WHERE `entry`=39323; -- Thonk

UPDATE `creature_template` SET `faction`=29, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=175156; -- Voidwalker Minion
UPDATE `creature_template` SET `minlevel`=1, `maxlevel`=1 WHERE `entry`=6145; -- School of Fish
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=21055; -- Golden Dragonhawk Hatchling
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=5809; -- Sergeant Curtis
UPDATE `creature_template` SET `npcflag`=0, `unit_flags`=32768, `unit_flags2`=0, `unit_flags3`=0 WHERE `entry`=39270; -- Injured Razor Hill Grunt
UPDATE `creature_template` SET `unit_flags`=570720256, `unit_flags2`=2049 WHERE `entry`=37912; -- Drowned Kul Tiras Marine
UPDATE `creature_template` SET `minlevel`=12, `maxlevel`=12, `speed_run`=1.285714268684387207, `BaseAttackTime`=2000 WHERE `entry`=98035; -- Dreadstalker
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `faction`=1077, `unit_flags`=33554432, `unit_flags3`=1 WHERE `entry`=42776; -- Ticking Time Bomb
UPDATE `creature_template` SET `unit_flags`=570720256, `unit_flags2`=2049 WHERE `entry`=37911; -- Drowned Kul Tiras Sailor
UPDATE `creature_template` SET `minlevel`=8, `maxlevel`=10, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=151780; -- Jingles
UPDATE `creature_template` SET `speed_walk`=2.40000009536743164, `speed_run`=1.714285731315612792, `unit_flags2`=2097152 WHERE `entry`=23543; -- Shade of the Horseman
UPDATE `creature_template` SET `npcflag`=83 WHERE `entry`=3345; -- Godan
UPDATE `creature_template` SET `minlevel`=22, `maxlevel`=22, `unit_flags`=768 WHERE `entry`=32841; -- Baby Blizzard Bear
UPDATE `creature_template` SET `minlevel`=53, `maxlevel`=53, `BaseAttackTime`=1763 WHERE `entry`=417; -- Felhunter
UPDATE `creature_template` SET `npcflag`=281474976710659 WHERE `entry`=49750; -- Warchief's Herald
UPDATE `creature_template` SET  `npcflag`=1 WHERE `entry`=89830; -- Brew Vendor

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=29, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `dynamicflags`=128 WHERE `entry`=187775; -- Kanyaku
UPDATE `creature_template` SET  `faction`=68, `npcflag`=1, `unit_flags`=33280 WHERE `entry`=53977; -- Darkcaller Yanka
UPDATE `creature_template` SET `npcflag`=0 WHERE `entry`=44158; -- Orgrimmar Skyway Peon
UPDATE `creature_template` SET `npcflag`=83 WHERE `entry`=11017; -- Roxxik

UPDATE `creature_template` SET `npcflag`=80 WHERE `entry`=46716; -- Nerog
UPDATE `creature_template` SET  `npcflag`=2 WHERE `entry`=19177; -- Troll Commoner

UPDATE `creature_template` SET `unit_flags`=33024 WHERE `entry`=14881; -- Spider
UPDATE `creature_template` SET  `minlevel`=60, `maxlevel`=60 WHERE `entry`=54473; -- Warpweaver Dushar
UPDATE `creature_template` SET `npcflag`=1, `unit_flags`=33587456, `unit_flags3`=8388609 WHERE `entry`=72559; -- Thunder Bluff Protector
UPDATE `creature_template` SET  `npcflag`=3 WHERE `entry`=19175; -- Orc Commoner

UPDATE `creature_template` SET `dynamicflags`=128 WHERE `entry`=188157; -- Worker
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=115919; -- Dutiful Gruntling

UPDATE `creature_template` SET  `npcflag`=131 WHERE `entry`=15354; -- Rachelle Gothena
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=100665344, `unit_flags3`=524289 WHERE `entry`=175551; -- Stonewrought Sentry

UPDATE `creature_template` SET `minlevel`=12, `maxlevel`=12 WHERE `entry`=97207; -- Emmigosa
UPDATE `creature_template` SET `minlevel`=17, `maxlevel`=17, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=122033; -- Twilight

UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=145714; -- Use the Portal to Zuldazar

UPDATE `creature_template` SET `minlevel`=8, `BaseAttackTime`=1914 WHERE `entry`=416; -- Imp
UPDATE `creature_template` SET `minlevel`=1, `maxlevel`=15 WHERE `entry`=36871; -- Core Hound Pup
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=42504; -- Mature Swine
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=3122; -- Bloodtalon Taillasher
UPDATE `creature_template` SET `speed_walk`=1, `unit_flags`=0 WHERE `entry`=3116; -- Dustwind Pillager
UPDATE `creature_template` SET `speed_walk`=1, `unit_flags`=0 WHERE `entry`=3115; -- Dustwind Harpy
UPDATE `creature_template` SET  `npcflag`=1 WHERE `entry`=3172; -- Dhugru Gorelust
UPDATE `creature_template` SET `unit_flags`=32784 WHERE `entry`=45015; -- Darkspear Headhunter

UPDATE `creature_template` SET  `npcflag`=81 WHERE `entry`=11025; -- Mukdrak

UPDATE `creature_template` SET  `npcflag`=3 WHERE `entry`=3173; -- Swart
UPDATE `creature_template` SET  `npcflag`=3 WHERE `entry`=3169; -- Tarshaw Jaggedscar
UPDATE `creature_template` SET  `minlevel`=30 WHERE `entry`=6928; -- Innkeeper Grosk
UPDATE `creature_template` SET  `npcflag`=3 WHERE `entry`=3706; -- Tai'jin
UPDATE `creature_template` SET  `faction`=1735 WHERE `entry`=23973; -- Masked Orphan Matron

UPDATE `creature_template` SET  `unit_flags`=768 WHERE `entry`=23971; -- Traveling Orphan
UPDATE `creature_template` SET  `npcflag`=65 WHERE `entry`=47418; -- Runda

UPDATE `creature_template` SET  `minlevel`=30, `maxlevel`=30 WHERE `entry`=9987; -- Shoja'my

UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=3336; -- Takrin Pathseeker
UPDATE `creature_template` SET `minlevel`=7, `maxlevel`=10, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=111421; -- Lurking Owl Kitten

UPDATE `creature_template` SET `faction`=14, `unit_flags`=33554432, `unit_flags2`=0, `unit_flags3`=1 WHERE `entry`=23537; -- Headless Horseman - Fire (DND)

UPDATE `creature_template` SET `npcflag`=8195, `unit_flags`=0 WHERE `entry`=41140; -- Burok
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=10, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=112144; -- Corgnelius
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags3`=524288 WHERE `entry`=10682; -- Raider Kerr
UPDATE `creature_template` SET `minlevel`=8, `maxlevel`=8, `speed_walk`=8, `speed_run`=2.857142925262451171, `unit_flags`=33280 WHERE `entry`=39239; -- Durotar Riding Wolf
UPDATE `creature_template` SET `speed_run`=1, `unit_flags2`=0 WHERE `entry`=39236; -- Poison Extraction Totem
UPDATE `creature_template` SET `dynamicflags`=4 WHERE `entry`=39260; -- Northwatch Infantryman
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags3`=17301504 WHERE `entry`=39319; -- Northwatch Caravan C
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags3`=17301504 WHERE `entry`=39318; -- Northwatch Caravan B
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags3`=17301504 WHERE `entry`=39244; -- Northwatch Caravan A
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=39255; -- Northwatch Caravan Spawner A

UPDATE `creature_template` SET  `unit_flags3`=1048576 WHERE `entry`=50011; -- Cona
UPDATE `creature_template` SET  `unit_flags3`=1048576 WHERE `entry`=49997; -- Den'chulu
UPDATE `creature_template` SET  `minlevel`=30, `maxlevel`=30 WHERE `entry`=10578; -- Bom'bay
UPDATE `creature_template` SET `unit_flags`=0, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=12350; -- Violet Riding Raptor
UPDATE `creature_template` SET `unit_flags`=0, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=12346; -- Emerald Riding Raptor
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=2663, `unit_flags`=768, `unit_flags2`=18432 WHERE `entry`=71333; -- Ki'ta Arrowtusk
UPDATE `creature_template` SET  `unit_flags3`=1048576 WHERE `entry`=50002; -- Bomsanchu
UPDATE `creature_template` SET `unit_flags3`=1048576 WHERE `entry`=50001; -- Parata
UPDATE `creature_template` SET  `unit_flags3`=1048576 WHERE `entry`=49998; -- Gusini

UPDATE `creature_template` SET `unit_flags`=0, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=14543; -- Swift Olive Raptor
UPDATE `creature_template` SET `unit_flags`=0, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=12349; -- Turquoise Riding Raptor
UPDATE `creature_template` SET `minlevel`=30, `unit_flags`=32768 WHERE `entry`=51913; -- Sen'jin Guardian
UPDATE `creature_template` SET  `unit_flags3`=1048576 WHERE `entry`=50015; -- Munalti
UPDATE `creature_template` SET  `unit_flags3`=1048576 WHERE `entry`=50004; -- Jamai
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=41142; -- Handler Marnlek
UPDATE `creature_template` SET  `npcflag`=3, `unit_flags`=0 WHERE `entry`=10676; -- Raider Jhash
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=40222; -- Scout Bat
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=3125; -- Clattering Scorpid
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=3126; -- Armored Scorpid
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=3099; -- Dire Mottled Boar

UPDATE `creature_template` SET `speed_run`=0.857142865657806396 WHERE `entry`=3281; -- Sarkoth
UPDATE `creature_template` SET  `unit_flags`=768 WHERE `entry`=3287; -- Hana'zua
UPDATE `creature_template` SET `npcflag`=0, `unit_flags`=0 WHERE `entry`=3102; -- Felstalker
UPDATE `creature_template` SET `npcflag`=0 WHERE `entry`=3101; -- Vile Familiar
UPDATE `creature_template` SET `minlevel`=10, `BaseAttackTime`=2000 WHERE `entry`=1860; -- Voidwalker
UPDATE `creature_template` SET `unit_flags`=256 WHERE `entry`=39400; -- Farmer Krella
UPDATE `creature_template` SET `unit_flags`=256 WHERE `entry`=39399; -- Farmer Lok'lub
UPDATE `creature_template` SET `faction`=189, `unit_flags`=0, `unit_flags3`=16 WHERE `entry`=3098; -- Mottled Boar
UPDATE `creature_template` SET  `npcflag`=3, `unit_flags`=768 WHERE `entry`=3156; -- Nartok
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=3882; -- Zlagk
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=3158; -- Duokna
UPDATE `creature_template` SET  `unit_flags3`=16 WHERE `entry`=10556; -- Lazy Peon
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=9796; -- Galgar
UPDATE `creature_template` SET `faction`=29 WHERE `entry`=12922; -- Imp Minion
UPDATE `creature_template` SET  `unit_flags`=768 WHERE `entry`=12776; -- Hraug
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=3161; -- Rarc
UPDATE `creature_template` SET  `npcflag`=3, `unit_flags`=768 WHERE `entry`=3157; -- Shikrik
UPDATE `creature_template` SET  `npcflag`=3, `unit_flags`=768 WHERE `entry`=3153; -- Frang
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=3160; -- Huklah
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=3159; -- Kzan Thornslash
UPDATE `creature_template` SET  `npcflag`=3, `unit_flags`=768 WHERE `entry`=3155; -- Rwag
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=3145; -- Zureetha Fargaze
UPDATE `creature_template` SET  `npcflag`=2, `unit_flags`=768 WHERE `entry`=3143; -- Gornek
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=10176; -- Kaltunk
UPDATE `creature_template` SET  `npcflag`=3, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=63296; -- Gato
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=5887; -- Canaga Earthcaller
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=11378; -- Foreman Thazz'ril
UPDATE `creature_template` SET  `npcflag`=3, `unit_flags`=768 WHERE `entry`=39206; -- Acrypha
UPDATE `creature_template` SET  `npcflag`=3, `unit_flags`=768 WHERE `entry`=39214; -- Karranisha

UPDATE `creature_template` SET `minlevel`=5, `BaseAttackTime`=1670 WHERE `entry`=165189; -- Generic Hunter Pet


UPDATE `quest_template` SET `RewardBonusMoney`=180, `VerifiedBuild`=46340 WHERE `ID`=25264; -- Ak'Zeloth
UPDATE `quest_template` SET `RewardBonusMoney`=1260, `VerifiedBuild`=46340 WHERE `ID`=835; -- Securing the Lines
UPDATE `quest_template` SET `RewardBonusMoney`=1260, `VerifiedBuild`=46340 WHERE `ID`=834; -- Winds in the Desert
UPDATE `quest_template` SET `RewardBonusMoney`=150, `VerifiedBuild`=46340 WHERE `ID`=25263; -- Arnak Fireblade
UPDATE `quest_template` SET `RewardBonusMoney`=1260, `VerifiedBuild`=46340 WHERE `ID`=14129; -- Runaway Shredder!
UPDATE `quest_template` SET `RewardBonusMoney`=1440, `Flags`=33554440, `VerifiedBuild`=46340 WHERE `ID`=47706; -- Hunt for King K'tal
UPDATE `quest_template` SET `RewardBonusMoney`=1440, `VerifiedBuild`=46340 WHERE `ID`=25259; -- Gaur Icehorn
UPDATE `quest_template` SET `RewardBonusMoney`=1200, `VerifiedBuild`=46340 WHERE `ID`=25258; -- Griswold Hanniston
UPDATE `quest_template` SET `RewardBonusMoney`=900, `VerifiedBuild`=46340 WHERE `ID`=25257; -- Ghislania
UPDATE `quest_template` SET `RewardBonusMoney`=1200, `VerifiedBuild`=46340 WHERE `ID`=25262; -- Skull Rock
UPDATE `quest_template` SET `RewardBonusMoney`=150, `VerifiedBuild`=46340 WHERE `ID`=25256; -- Sent for Help
UPDATE `quest_template` SET `RewardBonusMoney`=150, `VerifiedBuild`=46340 WHERE `ID`=25261; -- Margoz
UPDATE `quest_template` SET `RewardBonusMoney`=150, `VerifiedBuild`=46340 WHERE `ID`=25648; -- Beyond Durotar
UPDATE `quest_template` SET `RewardBonusMoney`=1080, `VerifiedBuild`=46340 WHERE `ID`=25206; -- Ignoring the Warnings
UPDATE `quest_template` SET `RewardBonusMoney`=1080, `VerifiedBuild`=46340 WHERE `ID`=25205; -- The Wolf and The Kodo
UPDATE `quest_template` SET `RewardBonusMoney`=1080, `Flags`=8, `VerifiedBuild`=46340 WHERE `ID`=25260; -- Fizzled
UPDATE `quest_template` SET `RewardBonusMoney`=510, `Expansion`=9, `VerifiedBuild`=46340 WHERE `ID`=12361; -- Candy Bucket
UPDATE `quest_template` SET `RewardBonusMoney`=240, `VerifiedBuild`=46340 WHERE `ID`=25196; -- The Dranosh'ar Blockade
UPDATE `quest_template` SET `RewardBonusMoney`=960, `VerifiedBuild`=46340 WHERE `ID`=25193; -- Lost But Not Forgotten
UPDATE `quest_template` SET `RewardBonusMoney`=1140, `Flags`=8, `VerifiedBuild`=46340 WHERE `ID`=25195; -- That's the End of That Raptor
UPDATE `quest_template` SET `RewardBonusMoney`=450, `VerifiedBuild`=46340 WHERE `ID`=25194; -- Unbidden Visitors
UPDATE `quest_template` SET `RewardBonusMoney`=840, `VerifiedBuild`=46340 WHERE `ID`=25192; -- Raggaran's Fury
UPDATE `quest_template` SET `RewardBonusMoney`=2100, `VerifiedBuild`=46340 WHERE `ID`=50446; -- Witchrending
UPDATE `quest_template` SET `RewardBonusMoney`=840, `VerifiedBuild`=46340 WHERE `ID`=25190; -- Raggaran's Rage
UPDATE `quest_template` SET `AllowableRaces`=12261800583900083122, `VerifiedBuild`=46340 WHERE `ID`=51443; -- Battle for Azeroth: Mission Statement
UPDATE `quest_template` SET `VerifiedBuild`=46340 WHERE `ID`=44701;
UPDATE `quest_template` SET `RewardBonusMoney`=1080, `VerifiedBuild`=46340 WHERE `ID`=25188; -- Watershed Patrol
UPDATE `quest_template` SET `RewardBonusMoney`=840, `VerifiedBuild`=46340 WHERE `ID`=2; -- Sharptalon's Claw
UPDATE `quest_template` SET `Flags`=524288, `Expansion`=9, `VerifiedBuild`=46340 WHERE `ID`=32669; -- Learn To Ride
UPDATE `quest_template` SET `RewardBonusMoney`=570, `VerifiedBuild`=46340 WHERE `ID`=25187; -- Lost in the Floods
UPDATE `quest_template` SET `RewardBonusMoney`=90, `VerifiedBuild`=46340 WHERE `ID`=25227; -- Thonk
UPDATE `quest_template` SET `RewardBonusMoney`=780, `VerifiedBuild`=46340 WHERE `ID`=25179; -- Loss Reduction
UPDATE `quest_template` SET `RewardBonusMoney`=570, `VerifiedBuild`=46340 WHERE `ID`=25178; -- Shipwreck Searching
UPDATE `quest_template` SET `RewardBonusMoney`=780, `VerifiedBuild`=46340 WHERE `ID`=25177; -- Storming the Beaches
UPDATE `quest_template` SET `RewardBonusMoney`=660, `VerifiedBuild`=46340 WHERE `ID`=6386; -- Return to Razor Hill
UPDATE `quest_template` SET `RewardBonusMoney`=180, `VerifiedBuild`=46340 WHERE `ID`=6385; -- Doras the Wind Rider Master
UPDATE `quest_template` SET `RewardBonusMoney`=330, `VerifiedBuild`=46340 WHERE `ID`=6384; -- Ride to Orgrimmar
UPDATE `quest_template` SET `RewardBonusMoney`=180, `VerifiedBuild`=46340 WHERE `ID`=6365; -- Meats to Orgrimmar
UPDATE `quest_template` SET `RewardBonusMoney`=330, `VerifiedBuild`=46340 WHERE `ID`=840; -- Conscript of the Horde
UPDATE `quest_template` SET `RewardBonusMoney`=510, `VerifiedBuild`=46340 WHERE `ID`=25176; -- Exploiting the Situation
UPDATE `quest_template` SET `RewardBonusMoney`=660, `VerifiedBuild`=46340 WHERE `ID`=25173; -- From Bad to Worse
UPDATE `quest_template` SET `RewardBonusMoney`=660, `VerifiedBuild`=46340 WHERE `ID`=25232; -- The Burning Blade
UPDATE `quest_template` SET `RewardBonusMoney`=90, `VerifiedBuild`=46340 WHERE `ID`=25171; -- Riding On
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46340 WHERE `ID`=25169; -- The War of Northwatch Aggression
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46340 WHERE `ID`=25168; -- Purge the Valley
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46340 WHERE `ID`=25165; -- Never Trust a Big Barb and a Smile
UPDATE `quest_template` SET `RewardBonusMoney`=510, `VerifiedBuild`=46340 WHERE `ID`=25167; -- Breaking the Chain
UPDATE `quest_template` SET `RewardBonusMoney`=270, `VerifiedBuild`=46340 WHERE `ID`=25133; -- Report to Sen'jin Village
UPDATE `quest_template` SET `RewardBonusMoney`=450, `VerifiedBuild`=46340 WHERE `ID`=14438; -- Sharing the Land
UPDATE `quest_template` SET `RewardBonusMoney`=450, `VerifiedBuild`=46340 WHERE `ID`=59926; -- Warming Up
UPDATE `quest_template` SET `RewardBonusMoney`=450, `VerifiedBuild`=46340 WHERE `ID`=25236; -- Thunder Down Under
UPDATE `quest_template` SET `RewardBonusMoney`=540, `VerifiedBuild`=46340 WHERE `ID`=25135; -- Thazz'ril's Pick
UPDATE `quest_template` SET `RewardBonusMoney`=660, `VerifiedBuild`=46340 WHERE `ID`=25132; -- Burning Blade Medallion
UPDATE `quest_template` SET `RewardBonusMoney`=660, `VerifiedBuild`=46340 WHERE `ID`=25131; -- Vile Familiars
UPDATE `quest_template` SET `RewardBonusMoney`=60, `VerifiedBuild`=46340 WHERE `ID`=25130; -- Back to the Den
UPDATE `quest_template` SET `RewardBonusMoney`=270, `Flags`=524288, `VerifiedBuild`=46340 WHERE `ID`=25129; -- Sarkoth
UPDATE `quest_template` SET `RewardBonusMoney`=210, `VerifiedBuild`=46340 WHERE `ID`=25170; -- Cleaning Up the Coastline
UPDATE `quest_template` SET `RewardBonusMoney`=360, `VerifiedBuild`=46340 WHERE `ID`=37446; -- Lazy Peons
UPDATE `quest_template` SET `RewardBonusMoney`=270, `VerifiedBuild`=46340 WHERE `ID`=25127; -- Sting of the Scorpid
UPDATE `quest_template` SET `RewardBonusMoney`=300, `VerifiedBuild`=46340 WHERE `ID`=25136; -- Galgar's Cactus Apple Surprise
UPDATE `quest_template` SET `RewardBonusMoney`=210, `VerifiedBuild`=46340 WHERE `ID`=25172; -- Invaders in Our Home
UPDATE `quest_template` SET `RewardBonusMoney`=60, `VerifiedBuild`=46340 WHERE `ID`=25152; -- Your Place In The World

DELETE FROM `quest_objectives` WHERE `ID`=276230;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
(276230, 37446, 1, 1, 1, 16114, 1, 0, 1, 0, '', 46340); -- 276230

UPDATE `quest_objectives` SET `VerifiedBuild`=46340 WHERE `ID` IN (253951, 254197, 264995, 266900, 290785, 265055, 265268, 265883, 265809, 256323, 256322, 312588, 312587, 312586, 256630, 256629, 335884, 335883, 252046, 265301, 254741, 258831, 258527, 258756, 257191, 254125, 266287, 265351, 265350, 265349, 266072, 265286, 265101, 266186, 264756, 397237, 265224, 265589, 265588, 265233, 265539, 265175, 265013, 256783);
UPDATE `quest_objectives` SET `Description`='Gaur defeated', `VerifiedBuild`=46340 WHERE `ID`=265311; -- 265311
UPDATE `quest_objectives` SET `Description`='Griswold defeated', `VerifiedBuild`=46340 WHERE `ID`=265270; -- 265270
UPDATE `quest_objectives` SET `Description`='Ghislania defeated', `VerifiedBuild`=46340 WHERE `ID`=266751; -- 266751
UPDATE `quest_objectives` SET `Description`='Warring Elemental slain', `VerifiedBuild`=46340 WHERE `ID`=265790; -- 265790
UPDATE `quest_objectives` SET `Description`='Listen to the shaman\'s fable', `VerifiedBuild`=46340 WHERE `ID`=265242; -- 265242
UPDATE `quest_objectives` SET `Description`='Wayward Plainstrider Returned', `VerifiedBuild`=46340 WHERE `ID`=265326; -- 265326
UPDATE `quest_objectives` SET `Description`='Help Zen\'Taji', `VerifiedBuild`=46340 WHERE `ID`=256509; -- 256509
UPDATE `quest_objectives` SET `Description`='Help Misha Tor\'kren', `VerifiedBuild`=46340 WHERE `ID`=256508; -- 256508
UPDATE `quest_objectives` SET `Description`='Help Raggaran', `VerifiedBuild`=46340 WHERE `ID`=256507; -- 256507
UPDATE `quest_objectives` SET `Description`='Find Zen\'Taji', `VerifiedBuild`=46340 WHERE `ID`=256160; -- 256160
UPDATE `quest_objectives` SET `Description`='Find Misha', `VerifiedBuild`=46340 WHERE `ID`=256159; -- 256159
UPDATE `quest_objectives` SET `Description`='Find flooded hut', `VerifiedBuild`=46340 WHERE `ID`=256158; -- 256158
UPDATE `quest_objectives` SET `Description`='Find Raggaran', `VerifiedBuild`=46340 WHERE `ID`=256157; -- 256157
UPDATE `quest_objectives` SET `Description`='Injured Razor Hill Grunt Rescued', `VerifiedBuild`=46340 WHERE `ID`=256780; -- 256780
UPDATE `quest_objectives` SET `Description`='Attack Plan: Orgrimmar burned', `VerifiedBuild`=46340 WHERE `ID`=265410; -- 265410
UPDATE `quest_objectives` SET `Description`='Attack Plan: Sen\'jin Village burned', `VerifiedBuild`=46340 WHERE `ID`=265409; -- 265409
UPDATE `quest_objectives` SET `Description`='Attack Plan: Valley of Trials burned', `VerifiedBuild`=46340 WHERE `ID`=265408; -- 265408
UPDATE `quest_objectives` SET `Description`='Northwatch Supply Crates destroyed', `VerifiedBuild`=46340 WHERE `ID`=266185; -- 266185
UPDATE `quest_objectives` SET `Description`='Drowned Thunder Lizard removed', `VerifiedBuild`=46340 WHERE `ID`=265482; -- 265482
UPDATE `quest_objectives` SET `Flags`=0, `VerifiedBuild`=46340 WHERE `ID`=264980; -- 264980
UPDATE `quest_objectives` SET `Description`='Sleeping Lazy Peons awakened', `VerifiedBuild`=46340 WHERE `ID`=276229; -- 276229

DELETE FROM `quest_visual_effect` WHERE (`Index`=0 AND `ID` IN (264980,276229));
INSERT INTO `quest_visual_effect` (`ID`, `Index`, `VisualEffect`, `VerifiedBuild`) VALUES
(264980, 0, 16990, 46340),
(276229, 0, 2100, 46340);

UPDATE `quest_visual_effect` SET `VerifiedBuild`=46340 WHERE (`Index`=2 AND `ID`=335884) OR (`Index`=1 AND `ID`=335884) OR (`Index`=0 AND `ID` IN (335884,335883,265410,265409,265408,397237));

DELETE FROM `creature_template` WHERE `entry` IN (180701 /*(Bunny) Sessile*/, 190064 /*Primalist Target [DNT]*/, 190069 /*Rumbling Proto-Dragon*/);
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `unit_class`, `WidgetSetID`, `WidgetSetUnitConditionID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `VerifiedBuild`) VALUES
(180701, 0, 0, '(Bunny) Sessile', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1073742848, 0, 1, 1, 0, 0, 204367, 46340), -- (Bunny) Sessile
(190064, 0, 0, 'Primalist Target [DNT]', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1073742848, 0, 1, 1, 0, 0, 216753, 46340), -- Primalist Target [DNT]
(190069, 189618, 189865, 'Rumbling Proto-Dragon', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 10, 1, 0, 0, 216758, 46340); -- Rumbling Proto-Dragon

UPDATE `creature_template` SET `VerifiedBuild`=46340 WHERE `entry` IN (42504, 150131, 145714, 42859, 148242, 148250, 148263, 148265, 40891, 3100, 3116, 3123, 3126, 3127, 3129, 3139, 3195, 3196, 3197, 3198, 3199, 135201, 135202, 3293, 3297, 3300, 175551, 3319, 148768, 148770, 148795, 133186, 34765, 39260, 39261, 39267, 39270, 23635, 37072, 137762, 39364, 5809, 39379, 39380, 5826, 52810, 52812, 155739, 73151, 12796, 149258, 46357, 46358, 46359, 149290, 149296, 149297, 62116, 149371, 10685, 71100, 149404, 149408, 149409, 46512, 62194, 57801, 149616, 149626, 4311, 37911, 37912);
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=42506; -- Marogg
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=6787; -- Yelnagi Blackarm
UPDATE `creature_template` SET `femaleName`='', `type_flags2`=8192, `VerifiedBuild`=46340 WHERE `entry`=44820; -- Training Dummy
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=44851; -- Mezlik
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=44852; -- Rilgiz
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=44853; -- Branzlit
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=44854; -- Kixa
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=44856; -- Perixa
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=44865; -- Auctioneer Fazdran
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=44866; -- Auctioneer Drezmit
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=44867; -- Auctioneer Ralinza
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=44868; -- Auctioneer Xifa
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=44871; -- Grunt Grimful
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=44872; -- Grunt Wabang
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=42638; -- Herezegor Flametusk
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=44876; -- Grunt Koma
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=44877; -- Grunt Soran
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=44878; -- Grunt Karus
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=112015; -- Nightmare Whelpling
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=40435; -- Headless Ghost
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=11378; -- Foreman Thazz'ril
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=6928; -- Innkeeper Grosk
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=6929; -- Innkeeper Gryshka
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry` IN (188157, 188169, 188655, 188656); -- Worker
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=103159; -- Baby Winston
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=42776; -- Ticking Time Bomb
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=45015; -- Darkspear Headhunter
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=53966; -- Spider Summoner (Ship)
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=112144; -- Corgnelius
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=89830; -- Brew Vendor
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=2620; -- Prairie Dog
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=49622; -- Shok Narnes
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=63061; -- Narzak
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `HealthModifier`=0.009999999776482582, `VerifiedBuild`=46340 WHERE `entry`=63063; -- Shifty
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=47418; -- Runda
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `HealthModifier`=0.009999999776482582, `VerifiedBuild`=46340 WHERE `entry`=22816; -- Black Cat
UPDATE `creature_template` SET `femaleName`='', `unit_class`=2, `VerifiedBuild`=46340 WHERE `entry`=54141; -- Edgar Goodwin
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=51913; -- Sen'jin Guardian
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=54170; -- Delian Sunshade
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=49737; -- Shazdar
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=52034; -- Togar
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=47571; -- Belloc Brightblade
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=45337; -- Tyelis
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=45339; -- Dark Cleric Cecille
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=2855; -- Snang
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=27489; -- Ray'ma
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=175135; -- Rokhan
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=63296; -- Gato
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.5, `VerifiedBuild`=46340 WHERE `entry`=175156; -- Voidwalker Minion
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.400000005960464477, `VerifiedBuild`=46340 WHERE `entry`=175165; -- Felhunter Minion
UPDATE `creature_template` SET `HealthScalingExpansion`=0, `VerifiedBuild`=46340 WHERE `entry`=40948; -- Dranosh'ar Farmer
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=40949; -- Kraka
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=168459; -- Orgrimmar Grunt
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=0, `VerifiedBuild`=46340 WHERE `entry`=40970; -- Tednug
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=0, `VerifiedBuild`=46340 WHERE `entry`=40971; -- Scratchfever
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=5188; -- Garyl
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=41007; -- Durotar Harpy
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=23128; -- Master Pyreanor
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=11943; -- Magga
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=168553; -- Telotha Pinegrove
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=49997; -- Den'chulu
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=54472; -- Vaultkeeper Jazra
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=49998; -- Gusini
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=54473; -- Warpweaver Dushar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=50001; -- Parata
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=50002; -- Bomsanchu
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=50004; -- Jamai
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=50011; -- Cona
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=50015; -- Munalti
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `type`=1, `VerifiedBuild`=46340 WHERE `entry`=43331; -- Golden Stonefish
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=168621; -- Martin Goodchilde
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=9796; -- Galgar
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=168628; -- Hretar Riverspeaker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3098; -- Mottled Boar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3099; -- Dire Mottled Boar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3101; -- Vile Familiar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3102; -- Felstalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3106; -- Surf Crawler
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3107; -- Mature Surf Crawler
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3108; -- Encrusted Surf Crawler
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3110; -- Dreadmaw Crocolisk
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=41140; -- Burok
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3111; -- Razormane Quilboar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3112; -- Razormane Scout
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=41142; -- Handler Marnlek
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3113; -- Razormane Dustrunner
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3114; -- Razormane Battleguard
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3115; -- Dustwind Harpy
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3117; -- Dustwind Savage
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3118; -- Dustwind Storm Witch
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3122; -- Bloodtalon Taillasher
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3124; -- Scorpid Worker
UPDATE `creature_template` SET `KillCredit2`=0, `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3125; -- Clattering Scorpid
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=153016; -- Gadar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3140; -- Lar Prowltusk
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3142; -- Orgnil Soulscar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3143; -- Gornek
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=3144; -- Eitrigg
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3145; -- Zureetha Fargaze
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=161974; -- Tent
UPDATE `creature_template` SET `name`='Aetheil', `HealthScalingExpansion`=6, `unit_class`=8, `type`=7, `CreatureDifficultyID`=226125, `VerifiedBuild`=46340 WHERE `entry`=197767; -- 0
UPDATE `creature_template` SET `name`='Rips', `IconName`='openhandglow', `HealthScalingExpansion`=6, `unit_class`=1, `family`=52, `type`=1, `movementId`=62, `CreatureDifficultyID`=226128, `VerifiedBuild`=46340 WHERE `entry`=197770; -- 0
UPDATE `creature_template` SET `name`='Yuyu', `IconName`='openhandglow', `HealthScalingExpansion`=6, `unit_class`=1, `family`=52, `type`=1, `movementId`=62, `CreatureDifficultyID`=226129, `VerifiedBuild`=46340 WHERE `entry`=197771; -- 0
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=161980; -- Campfire
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3153; -- Frang
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3155; -- Rwag
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3156; -- Nartok
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3157; -- Shikrik
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3158; -- Duokna
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `movementId`=121, `VerifiedBuild`=46340 WHERE `entry`=21055; -- Golden Dragonhawk Hatchling
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3159; -- Kzan Thornslash
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3160; -- Huklah
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3161; -- Rarc
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=61325; -- Adder
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3163; -- Uhgar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3164; -- Jark
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3165; -- Ghrawt
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3166; -- Cutac
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3167; -- Wuark
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3168; -- Flakk
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3169; -- Tarshaw Jaggedscar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3170; -- Kaplak
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3171; -- Thotar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3172; -- Dhugru Gorelust
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3173; -- Swart
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=162001; -- Caravaneer's Pack
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3174; -- Dwukk
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3175; -- Krunn
UPDATE `creature_template` SET `femaleName`='', `type_flags`=2147483720, `HealthModifier`=2, `VerifiedBuild`=46340 WHERE `entry`=3183; -- Yarrog Baneshadow
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3184; -- Miao'zan
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3185; -- Mishiki
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3186; -- K'waii
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3187; -- Tai'tasi
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3188; -- Master Gadrin
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14375; -- Scout Stronghand
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14376; -- Scout Manslayer
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3191; -- Cook Torka
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3193; -- Misha Tor'kren
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3194; -- Vel'rin Fang
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3203; -- Fizzle Darkclaw
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3204; -- Gazz'uz
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=61367; -- Water Snake
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14392; -- Overlord Natoj
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3208; -- Margoz
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=99403; -- Risen Saber Kitten
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=97174; -- Extinguished Eye
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3244; -- Greater Plainstrider
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14451; -- Orphan Matron Battlewail
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=9987; -- Shoja'my
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3281; -- Sarkoth
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3287; -- Hana'zua
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3294; -- Ophek
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3304; -- Master Vornal
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=3312; -- Olvia
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14498; -- Tosamina
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=3313; -- Trak'gen
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14499; -- Horde Orphan
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=3314; -- Urtharo
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=3315; -- Tor'phan
UPDATE `creature_template` SET `VerifiedBuild`=46340 WHERE `entry`=36871; -- Core Hound Pup
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=3317; -- Ollanus
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=3323; -- Horthus
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3336; -- Takrin Pathseeker
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=3342; -- Shan'ti
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `HealthModifier`=0.200000002980232238, `VerifiedBuild`=46340 WHERE `entry`=171124; -- Raw Emotion
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14543; -- Swift Olive Raptor
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14544; -- Swift Orange Raptor
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=14545; -- Swift Blue Raptor
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=3363; -- Magar
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=3364; -- Borya
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=3368; -- Borstan
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=5606; -- Goma
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=3369; -- Gotri
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=3370; -- Urtrun Clanbringer
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=5609; -- Zazo
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=5610; -- Kozish
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=5611; -- Barkeep Morag
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=5613; -- Doyo'da
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=5614; -- Sarok
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=12346; -- Emerald Riding Raptor
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=12349; -- Turquoise Riding Raptor
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=12350; -- Violet Riding Raptor
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=23537; -- Headless Horseman - Fire (DND)
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `type`=6, `VerifiedBuild`=46340 WHERE `entry`=23543; -- Shade of the Horseman
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39206; -- Acrypha
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39214; -- Karranisha
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39215; -- Captured Northwatch Scout
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3425; -- Savannah Prowler
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39236; -- Poison Extraction Totem
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39239; -- Durotar Riding Wolf
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39244; -- Northwatch Caravan A
UPDATE `creature_template` SET `femaleName`='', `rank`=6, `HealthModifier`=0.100000001490116119, `VerifiedBuild`=46340 WHERE `entry` IN (39245, 39249); -- Northwatch Lug
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.119047999382019042, `VerifiedBuild`=46340 WHERE `entry`=39251; -- Northwatch Supply Crate
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39255; -- Northwatch Caravan Spawner A
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=10176; -- Kaltunk
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39262; -- Northwatch Troop
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=122033; -- Twilight
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39268; -- Northwatch Sharpshooter
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39269; -- Lieutenant Palliter
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=7952; -- Zjolnir
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=7953; -- Xar'Ti
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39272; -- Foaming Sea Elemental
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=12430; -- Grunt Kor'ja
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=66126; -- Zunta
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `movementId`=121, `VerifiedBuild`=46340 WHERE `entry`=66144; -- Mumtar
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `movementId`=121, `VerifiedBuild`=46340 WHERE `entry`=66145; -- Spike
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=19175; -- Orc Commoner
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39317; -- Northwatch Scout
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39318; -- Northwatch Caravan B
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39319; -- Northwatch Caravan C
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39320; -- Durotar Watershed Telescope 01 (Raggaran)
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39323; -- Thonk
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39324; -- Zen'Taji
UPDATE `creature_template` SET `femaleName`='', `type_flags`=0, `VerifiedBuild`=46340 WHERE `entry`=39325; -- Grandmatron Tekla
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39326; -- Raggaran
UPDATE `creature_template` SET `KillCredit2`=0, `femaleName`='', `family`=12, `type_flags`=1, `VerifiedBuild`=46340 WHERE `entry`=39337; -- Wayward Plainstrider
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39345; -- Durotar Watershed Telescope 02 (Tekla)
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39346; -- Durotar Watershed Telescope 03 (Misha)
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39347; -- Durotar Watershed Telescope 04 (Zen'Taji)
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=2, `VerifiedBuild`=46340 WHERE `entry`=39351; -- Ghislania
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39352; -- Gaur Icehorn
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39353; -- Griswold Hanniston
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39365; -- The Kodo
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=5817; -- Shimra
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry` IN (61751, 5951); -- Hare
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=41621; -- Commander Thorak
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=2, `VerifiedBuild`=46340 WHERE `entry`=39385; -- Screamslash
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=52809; -- Blax Bottlerocket
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39399; -- Farmer Lok'lub
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39400; -- Farmer Krella
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39408; -- Durotar Farmhand
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3620; -- Harruk
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=169166; -- Provisioner Jin'hake
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39423; -- Gail Nozzywig
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=46140; -- Silvermoon Delegation Guardian
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=46142; -- Forsaken Delegation Deathguard
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=5880; -- Un'Thuwa
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=5887; -- Canaga Earthcaller
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=10369; -- Trayexir
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39452; -- Dreadmaw Toothgnasher
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=5900; -- Telf Joolam
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39464; -- Drowned Thunder Lizard
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39465; -- Hulking Orcish Laborer
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=17098; -- Ambassador Dawnsinger
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=88701; -- Grunt Meena
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=88702; -- Grunt Nolo
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=88703; -- Grunt Arhung
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=5941; -- Lau'Tiki
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=5942; -- Zansoa
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=5943; -- Rawrk
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3706; -- Tai'jin
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=5952; -- Den Grunt
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry` IN (5953, 75685); -- Razor Hill Grunt
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=0, `VerifiedBuild`=46340 WHERE `entry`=39519; -- Cosmetic Trigger - PRK
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=35068; -- Gotura Fourwinds
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=32841; -- Baby Blizzard Bear
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=68660; -- Viscidus Globule
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=171565; -- Golden Cloudfeather
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=6027; -- Kitha
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39590; -- Spiketooth
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39595; -- Furious Earthguard
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39596; -- Teeming Waterguard
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39603; -- Swollen Voidwalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=39604; -- Vek'nag
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=12776; -- Hraug
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=23971; -- Traveling Orphan
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=23973; -- Masked Orphan Matron
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=10556; -- Lazy Peon
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=149270; -- Orgrimmar Guardian Mage
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=10578; -- Bom'bay
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=149279; -- Stoki Wonderwand
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3881; -- Grimtak
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3882; -- Zlagk
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `HealthModifier`=0.200000002980232238, `VerifiedBuild`=46340 WHERE `entry`=6145; -- School of Fish
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=171689; -- Nathoka Bloodfang
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=3933; -- Hai'zan
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=160526; -- Neri Sharpfin
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=160527; -- Mak
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=160528; -- Poen Gillbrack
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=160529; -- Vim Brineheart
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=160530; -- Friend Pronk
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=10676; -- Raider Jhash
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=10682; -- Raider Kerr
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=62195; -- Shang'gok
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=62199; -- Gogu
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=62200; -- Sasi
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=111421; -- Lurking Owl Kitten
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=4047; -- Zor Lonetree
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=46555; -- Gunra
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=46556; -- Jamus'Vaz
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=46572; -- Goram
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=44338; -- White Chicken
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=75686; -- Darkspear Guardian
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=75687; -- Thunder Bluff Protector
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=68979; -- Voidbinder Zorlan
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=44380; -- Jabul
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=46618; -- Fibi
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=46619; -- Binzella
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=46620; -- Vink
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=149522; -- Orgrimmar Peon
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=46621; -- Pank
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=149523; -- Zan'chi
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=46622; -- Vuvanzi
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=131644; -- Dart
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=151780; -- Jingles
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=46642; -- Innkeeper Nufa
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=15354; -- Rachelle Gothena
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=6408; -- Ula'elek
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=46708; -- Suja
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=46709; -- Arugi
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=51195; -- Kor'kron Annihilator
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=71333; -- Ki'ta Arrowtusk
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=6466; -- Gamon
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=6491; -- Spirit Healer
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=151937; -- Portal Controller
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=11025; -- Mukdrak
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=187758; -- Zaa'je
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46340 WHERE `entry`=40222; -- Scout Bat
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46340 WHERE `entry`=58155; -- Rugok

DELETE FROM `creature_template_model` WHERE (`Idx`=1 AND `CreatureID` IN (180701,190064)) OR (`Idx`=0 AND `CreatureID` IN (180701,197771,197770,197767,190069,190064));
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(180701, 1, 105247, 1, 1, 46340), -- (Bunny) Sessile
(180701, 0, 101845, 1, 0, 46340), -- (Bunny) Sessile
(197771, 0, 73093, 0.60000002384185791, 1, 46340), -- 0
(197770, 0, 79383, 0.75, 1, 46340), -- 0
(197767, 0, 109709, 1, 1, 46340), -- 0
(190069, 0, 103250, 1, 1, 46340), -- Rumbling Proto-Dragon
(190064, 1, 27823, 3, 1, 46340), -- Primalist Target [DNT]
(190064, 0, 328, 1, 0, 46340); -- Primalist Target [DNT]

UPDATE `creature_template_model` SET `VerifiedBuild`=46340 WHERE (`Idx`=0 AND `CreatureID` IN (112015,131644,171689,168621,168628,168553,97174,169166,54170,46642,42638,46622,46620,46619,46618,46621,162001,161980,161974,171565,188169,3364,3317,2855,3363,3315,23635,171124,68660,103159,22816,41007,175165,3204,3197,3198,160528,160526,53966,3108,41621,3107,39352,39351,39590,39519,39353,39604,3208,3203,39465,3425,39596,39595,40948,40949,39365,39364,149408,149296,99403,149409,153016,6491,3118,3117,3199,3196,3195,39603,39464,43331,2620,39385,3244,3110,5900,3100,5826,39337,39324,3123,39347,66145,66144,66126,3193,39346,39325,39452,61367,3113,3114,39345,5953,39320,39323,175156,6027,6145,21055,5809,39272,39270,37912,42776,37911,3129,151780,23543,44854,44877,51195,46357,5188,3370,46358,3319,46512,46359,37072,73151,12796,34765,32841,44876,44853,44852,44851,46572,188656,187758,188655,3314,89830,49622,46142,45339,27489,4047,175135,58155,46555,35068,3312,3144,135201,46556,52034,45337,23128,17098,47571,46140,3323,52809,52812,52810,14451,62200,62199,14499,14498,46709,46708,3369,3368,68979,54473,49737,42506,62194,57801,54472,44338,14376,19175,14375,3342,44872,44871,44868,44867,44866,44865,188157,88703,40435,44878,44856,54141,15354,5611,5614,5613,137762,135202,88702,6929,175551,88701,6466,5610,5609,5606,5817,3313,62195,168459,14392,122033,150131,148250,148242,151937,149616,149404,149290,149279,149270,148768,148265,145714,133186,149626,149371,155739,149523,149522,149297,149258,148795,148770,148263,36871,42504,10685,3122,3116,3115,40970,40971,3172,45015,3294,39269,39268,39267,11025,3191,3175,3174,3163,75687,11943,6787,3881,3167,3166,5943,3164,3173,3165,3169,63063,63061,23973,23971,6928,3706,44380,47418,9987,5880,3168,3336,111421,39423,23537,3620,3171,3170,3142,3139,112144,75686,41140,75685,12430,3111,10682,39239,39236,39262,39261,39260,39319,39318,39251,39249,39244,39255,5942,3106,5941,39245,50011,49997,10578,6408,71333,12350,12346,10369,3187,3185,50002,50001,49998,14544,7953,7952,3188,14545,14543,3186,51913,12349,3304,3194,3140,50015,50004,41142,10676,3933,3297,3184,40222,3125,3126,3099,39326,3112,3183,3281,3287,3102,3101,61325,39215,39408,3124,39400,39399,3098,3882,3158,61751,3156,10556,9796,39317,63296,44820,39214,39206,12776,11378,10176,5952,5887,3161,3160,3159,3157,3155,3153,3145,3143,3293,3127,62116,71100,42859,40891,39380,39379,5951,4311,3300)) OR (`Idx`=1 AND `CreatureID` IN (3197,3198,39519,40948,149408,149296,149409,3199,3196,3195,39337,61367,5953,39270,37912,37911,3129,151780,89830,46142,46140,52810,14499,19175,168459,149616,149404,149290,149270,148768,148265,133186,149626,149371,155739,149522,149297,149258,148795,148770,148263,42504,45015,39268,39267,75687,23971,23537,75686,75685,39239,39261,39260,39249,39255,39245,51913,3297,61325,39215,39317,5952,71100,42859,40891,3300)) OR (`Idx`=3 AND `CreatureID` IN (40948,149408,149296,149409,61367,5953,39270,89830,46142,46140,14499,168459,149616,149404,149290,133186,149371,149297,45015,75686,75685,39239,5952,71100,40891)) OR (`Idx`=2 AND `CreatureID` IN (40948,149408,149296,149409,61367,5953,39270,89830,46142,46140,14499,168459,149616,149404,149290,133186,149371,149297,42504,45015,75686,75685,39239,39249,61325,5952,71100,42859,40891,3300)) OR (`Idx`=7 AND `CreatureID`=46140) OR (`Idx`=6 AND `CreatureID`=46140) OR (`Idx`=5 AND `CreatureID`=46140) OR (`Idx`=4 AND `CreatureID`=46140);
UPDATE `creature_template_model` SET `DisplayScale`=1.399999976158142089, `VerifiedBuild`=46340 WHERE (`CreatureID`=160527 AND `Idx`=0); -- Mak
UPDATE `creature_template_model` SET `DisplayScale`=1.20000004768371582, `VerifiedBuild`=46340 WHERE (`CreatureID`=160529 AND `Idx`=0); -- Vim Brineheart
UPDATE `creature_template_model` SET `DisplayScale`=0.899999976158142089, `VerifiedBuild`=46340 WHERE (`CreatureID`=160530 AND `Idx`=0); -- Friend Pronk


UPDATE `creature_questitem` SET `VerifiedBuild`=46340 WHERE (`Idx`=1 AND `CreatureEntry` IN (3197,3198,3199,3196,3195,3244,3281)) OR (`Idx`=0 AND `CreatureEntry` IN (3197,3198,3108,3107,3203,3425,3199,3196,3195,43331,3244,3110,39452,5809,3129,42504,3106,3183,3281,3102,3101,3124,3127,42859)) OR (`Idx`=2 AND `CreatureEntry`=3199);


UPDATE `gameobject_template` SET `VerifiedBuild`=46340 WHERE `entry` IN (209867, 207641, 204704, 349788, 204682, 207637, 204638, 202805, 202804, 202803, 202802, 204360, 204170, 204169, 204168, 204167, 20694, 187267, 187265, 185899, 204183, 204182, 204181, 126051, 126050, 204172, 204173, 204185, 204178, 204657, 204180, 20808, 101748, 63674, 31410, 31409, 31580, 31407, 203850, 175742, 21680, 204179, 204656, 204655, 202590, 204724, 206735, 204709, 204639, 204628, 204622, 204621, 204611, 204198, 204194, 204725, 204640, 204197, 206736, 197257, 206741, 205109, 204208, 204207, 204199, 204605, 204604, 204600, 180007, 204602, 204603, 206995, 204609, 204606, 175787, 204610, 175788, 204191, 204608, 204607, 204681, 207633, 204939, 204938, 204696, 204695, 186722, 207630, 204205, 202801, 202800, 202799, 202798, 210058, 208534, 204693, 204200, 259114, 210059, 207646, 206725, 204210, 204209, 204601, 204214, 180408, 376514, 206727, 206726, 204215, 204201, 205142, 205108, 204211, 204662, 204213, 204212, 204202, 180414, 204163, 204664, 204663, 204651, 355229, 204650, 323854, 323850, 204647, 323855, 332214, 323853, 323852, 323851, 323849, 204646, 204174, 203854, 203853, 3290, 203852, 203851, 31573, 186727, 186720, 106336, 51703, 51702, 50983, 18079, 149038, 106327, 106326, 31574, 31572, 18075, 174859, 3848, 3847, 186615, 186614, 106335, 106325, 18076, 3849, 180523, 3851, 278457, 207207, 31575, 3850, 143981, 31577, 31579, 31578, 221519, 221518, 221517, 221516, 55250, 203849, 203848, 203847, 203839, 203846, 203112, 202618, 204135, 207206, 31411, 18077, 202834, 202833, 203840, 203841, 203857, 203856, 202839, 202835, 203843, 31408, 165751, 165743, 165741, 165744, 165742, 203844, 203845, 202580, 165745, 165749, 165748, 165747, 272677, 55615, 203855, 206575, 204190, 204164, 252071, 206574, 204187, 204166, 204165, 204665, 204658, 204645, 206737, 204193, 204666, 204189, 204188, 204186, 204184, 204177, 204176, 204175, 175784, 171938, 165746, 165740, 165750, 18083, 3084, 203842, 202587, 12665);
UPDATE `gameobject_template` SET `name`='Chair', `VerifiedBuild`=46340 WHERE `entry`=351923; -- 351923
UPDATE `gameobject_template` SET `name`='Chair', `VerifiedBuild`=46340 WHERE `entry`=351922; -- 351922
UPDATE `gameobject_template` SET `name`='Doodad_WinterOrc_Small_Brazier_02_2', `VerifiedBuild`=46340 WHERE `entry`=349789; -- 349789
UPDATE `gameobject_template` SET `ContentTuningId`=70, `VerifiedBuild`=46340 WHERE `entry`=61934; -- Brazier of the Dormant Flame
UPDATE `gameobject_template` SET `Data1`=0, `Data12`=1, `Data30`=39335, `ContentTuningId`=72, `VerifiedBuild`=46340 WHERE `entry`=207484; -- Sturdy Treasure Chest
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=2510, `ContentTuningId`=683, `VerifiedBuild`=46340 WHERE `entry`=3719; -- Food Crate
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=28425, `ContentTuningId`=70, `VerifiedBuild`=46340 WHERE `entry`=202648; -- Kul Tiras Treasure
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=2422, `ContentTuningId`=70, `VerifiedBuild`=46340 WHERE `entry`=3236; -- Gnomish Toolbox
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=2502, `ContentTuningId`=683, `VerifiedBuild`=46340 WHERE `entry`=3658; -- Water Barrel
UPDATE `gameobject_template` SET `ContentTuningId`=70, `VerifiedBuild`=46340 WHERE `entry`=3192; -- Attack Plan: Orgrimmar
UPDATE `gameobject_template` SET `ContentTuningId`=70, `VerifiedBuild`=46340 WHERE `entry`=3190; -- Attack Plan: Sen'jin Village
UPDATE `gameobject_template` SET `ContentTuningId`=70, `VerifiedBuild`=46340 WHERE `entry`=3189; -- Attack Plan: Valley of Trials
UPDATE `gameobject_template` SET `ContentTuningId`=70, `VerifiedBuild`=46340 WHERE `entry`=104555; -- Anvil
UPDATE `gameobject_template` SET `Data10`=42336, `Data13`=1, `Data20`=1, `Data22`=41321, `Data23`=1, `Data26`=1, `VerifiedBuild`=46340 WHERE `entry`=186234; -- Water Barrel
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=14980, `VerifiedBuild`=46340 WHERE `entry`=178087; -- Thazz'ril's Pick


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46340 WHERE (`Idx`=0 AND `GameObjectEntry` IN (204360,202648,3236,3290,178087,171938));
