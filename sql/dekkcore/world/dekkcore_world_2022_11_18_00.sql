
DELETE FROM `creature_equip_template` WHERE (`ID`=2 AND `CreatureID` IN (66905,59820));
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(66905, 2, 0, 0, 0, 0, 0, 0, 74588, 0, 0, 46597), -- Pandaren Cannoneer
(59820, 2, 0, 0, 0, 0, 0, 0, 74588, 0, 0, 46597); -- Pandaren Cannoneer

UPDATE `creature_equip_template` SET `VerifiedBuild`=46597 WHERE (`ID`=1 AND `CreatureID` IN (171979,164853,164856,64467,59835,60447,59800,59801,56636,59778,56589,56484,58146,58108,66419,56876,56875,58824,58844,56890,58202,172368,175766,157785,166626,157727,163970,156225,168944,156384,168945,162891,155682,187441,177929,176013,173138,171626,177909,177918,170157,177915,175346,178645,177899,177506,175882,183173,157824,178646,179692,178643,177508,178353,178356,176170,178227,178450,177900,175658,162035,162044,161448,161490,161480,161488,161469,161511,168215,164576,164575,158165)) OR (`ID`=5 AND `CreatureID`=168212);

DELETE FROM `areatrigger_template` WHERE (`IsServerSide`=0 AND `Id` IN (3329,17291));
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(3329, 0, 1, 4, 2, 2, 7.5, 2, 2, 7.5, 0, 0, 46597),
(17291, 0, 0, 0, 8, 8, 0, 0, 0, 0, 0, 0, 46597);



UPDATE `areatrigger_template` SET `VerifiedBuild`=46597 WHERE (`IsServerSide`=0 AND `Id` IN (25548,6870,10466,26242,27753,24064));
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=15, `Data1`=15, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=15, `Data1`=15, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=10, `Data1`=15 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=10, `Data1`=15 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=15, `Data1`=15, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=15, `Data1`=15, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=15, `Data1`=15, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=10, `Data1`=15 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=15, `Data1`=15, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0 WHERE (`Id`=9228 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=10, `Data1`=15 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=15, `Data1`=15, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=10, `Data1`=15 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=15, `Data1`=15, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);


UPDATE `gameobject_template_addon` SET `faction`=114, `flags`=32 WHERE `entry`=214252; -- Corde
UPDATE `gameobject_template_addon` SET `faction`=35 WHERE `entry`=211284; -- Lever
UPDATE `gameobject_template_addon` SET `flags`=48 WHERE `entry`=211129; -- Flamme de signalement
UPDATE `gameobject_template_addon` SET `faction`=114, `flags`=32 WHERE `entry`=213507; -- Feu de signal
UPDATE `gameobject_template_addon` SET `faction`=114, `flags`=32, `AIAnimKitID`=1256 WHERE `entry`=211246; -- Doodad_VEB_greatDoorPhase_003
UPDATE `gameobject_template_addon` SET `faction`=114, `flags`=32, `AIAnimKitID`=2213 WHERE `entry`=211245; -- Doodad_VEB_greatDoorPhase_001
UPDATE `gameobject_template_addon` SET `faction`=114, `flags`=34 WHERE `entry`=214888; -- Doodad_GreatWall_Door_020
UPDATE `gameobject_template_addon` SET `faction`=114, `flags`=34 WHERE `entry`=214887; -- Doodad_GreatWall_Door_019
UPDATE `gameobject_template_addon` SET `faction`=1375 WHERE `entry`=214629; -- Great Wall - Demolition Crew - Boss Wall
UPDATE `gameobject_template_addon` SET `faction`=114, `flags`=32 WHERE `entry`=212986; -- Doodad_GreatWall_Door_014
UPDATE `gameobject_template_addon` SET `faction`=114, `flags`=32 WHERE `entry`=212984; -- Doodad_GreatWall_Door_004
UPDATE `gameobject_template_addon` SET `faction`=114, `flags`=32 WHERE `entry`=212985; -- Doodad_GreatWall_Door_005
UPDATE `gameobject_template_addon` SET `faction`=114, `flags`=32 WHERE `entry`=212982; -- Doodad_GreatWall_Door_001
UPDATE `gameobject_template_addon` SET `faction`=114, `flags`=32 WHERE `entry`=212983; -- Doodad_GreatWall_Door_002
UPDATE `gameobject_template_addon` SET `flags`=32 WHERE `entry`=215380; -- Doodad_GreatWall_Door_002
UPDATE `gameobject_template_addon` SET `flags`=32 WHERE `entry`=215379; -- Doodad_GreatWall_Door_001
UPDATE `gameobject_template_addon` SET `faction`=114, `flags`=1048608 WHERE `entry`=213198; -- Morceau du coin C
UPDATE `gameobject_template_addon` SET `faction`=114, `flags`=1048608 WHERE `entry`=213199; -- Coin de mur B
UPDATE `gameobject_template_addon` SET `faction`=114, `flags`=1048608 WHERE `entry`=213200; -- Coin A
UPDATE `gameobject_template_addon` SET `faction`=1375, `flags`=32 WHERE `entry`=214261; -- Herse de la cour
UPDATE `gameobject_template_addon` SET `WorldEffectID`=2437 WHERE `entry`=346045; -- Hollow Rock
UPDATE `gameobject_template_addon` SET `flags`=293634048 WHERE `entry`=358456; -- Stygic Magma
UPDATE `gameobject_template_addon` SET `flags`=2113540 WHERE `entry`=368253; -- Soulsteel Ember
UPDATE `gameobject_template_addon` SET `flags`=278528 WHERE `entry`=368218; -- Trueheart Spear
UPDATE `gameobject_template_addon` SET `flags`=2113536 WHERE `entry`=358398; -- Lost Journal
UPDATE `gameobject_template_addon` SET `flags`=278528 WHERE `entry`=336433; -- Widowbloom
UPDATE `gameobject_template_addon` SET `flags`=2375680 WHERE `entry`=349898; -- Laestrite Deposit
UPDATE `gameobject_template_addon` SET `flags`=2113540 WHERE `entry`=334871; -- Scorched Crate
UPDATE `gameobject_template_addon` SET `flags`=278528 WHERE `entry`=349983; -- Sinvyr Deposit
UPDATE `gameobject_template_addon` SET `flags`=278528 WHERE `entry`=351471; -- Death Blossom
UPDATE `gameobject_template_addon` SET `flags`=48 WHERE `entry`=352493; -- Door


DELETE FROM `scene_template` WHERE `SceneId`=95;
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`, `Encrypted`) VALUES
(95, 0, 148, 0);


DELETE FROM `quest_offer_reward` WHERE `ID`=63133;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(63133, 1, 0, 0, 0, 0, 0, 0, 0, 'Ah, I have not seen these runes used in quite some time. An ancient broker method of encryption.\n\nThis will be useful should I ever intercept cartel communications.', 46597); -- Shifting Cryptogram

UPDATE `quest_offer_reward` SET `VerifiedBuild`=46597 WHERE `ID` IN (62921, 62920, 62919, 62918, 62915, 62914, 62870, 62837, 60289, 61355, 60287, 62882, 62905, 62904, 62903, 62902, 62691, 62189);

DELETE FROM `quest_poi` WHERE (`QuestID`=59850 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=59850 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=59850 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=59850 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=59850 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59850 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=59850 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59850 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(59850, 0, 7, 32, 0, 0, 2222, 1525, 0, 2, 0, 0, 0, 0, 0, 46597), -- Tea Tales: Vulca
(59850, 1, 6, 3, 397110, 166479, 2222, 1525, 0, 0, 0, 79128, 0, 1938141, 0, 46597), -- Tea Tales: Vulca
(59850, 0, 5, 3, 397110, 166479, 2222, 1525, 0, 0, 0, 78861, 0, 1937981, 0, 46597), -- Tea Tales: Vulca
(59850, 1, 4, 2, 397128, 160744, 2222, 1525, 0, 0, 0, 79128, 0, 1938141, 0, 46597), -- Tea Tales: Vulca
(59850, 0, 3, 2, 397128, 160744, 2222, 1525, 0, 0, 0, 78861, 0, 0, 0, 46597), -- Tea Tales: Vulca
(59850, 1, 2, 1, 397127, 166504, 2222, 1525, 0, 0, 0, 79128, 0, 1938141, 0, 46597), -- Tea Tales: Vulca
(59850, 0, 1, 1, 397127, 166504, 2222, 1525, 0, 0, 0, 78861, 0, 1939755, 0, 46597), -- Tea Tales: Vulca
(59850, 0, 0, 0, 397109, 166478, 2222, 1525, 0, 0, 0, 0, 0, 1938141, 0, 46597); -- Tea Tales: Vulca

UPDATE `quest_poi` SET `VerifiedBuild`=46597 WHERE (`QuestID`=61981 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61981 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61981 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60431 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=60431 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60431 AND `BlobIndex`=1 AND `Idx1`=0) OR (`QuestID`=63033 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63033 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62921 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62921 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62920 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=62920 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62920 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62920 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62919 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62919 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62919 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62918 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62918 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62918 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62915 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62915 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62915 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62635 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62914 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62914 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62870 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62870 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62837 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62837 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60289 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=60289 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=60289 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=60289 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60289 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60289 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61355 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61355 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61355 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63133 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60287 AND `BlobIndex`=1 AND `Idx1`=21) OR (`QuestID`=60287 AND `BlobIndex`=0 AND `Idx1`=20) OR (`QuestID`=60287 AND `BlobIndex`=0 AND `Idx1`=19) OR (`QuestID`=60287 AND `BlobIndex`=11 AND `Idx1`=18) OR (`QuestID`=60287 AND `BlobIndex`=10 AND `Idx1`=17) OR (`QuestID`=60287 AND `BlobIndex`=9 AND `Idx1`=16) OR (`QuestID`=60287 AND `BlobIndex`=8 AND `Idx1`=15) OR (`QuestID`=60287 AND `BlobIndex`=7 AND `Idx1`=14) OR (`QuestID`=60287 AND `BlobIndex`=6 AND `Idx1`=13) OR (`QuestID`=60287 AND `BlobIndex`=5 AND `Idx1`=12) OR (`QuestID`=60287 AND `BlobIndex`=4 AND `Idx1`=11) OR (`QuestID`=60287 AND `BlobIndex`=3 AND `Idx1`=10) OR (`QuestID`=60287 AND `BlobIndex`=2 AND `Idx1`=9) OR (`QuestID`=60287 AND `BlobIndex`=1 AND `Idx1`=8) OR (`QuestID`=60287 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=60287 AND `BlobIndex`=5 AND `Idx1`=6) OR (`QuestID`=60287 AND `BlobIndex`=4 AND `Idx1`=5) OR (`QuestID`=60287 AND `BlobIndex`=3 AND `Idx1`=4) OR (`QuestID`=60287 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=60287 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=60287 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60287 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62882 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62882 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62882 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62905 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62905 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62904 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62904 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62903 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62903 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62903 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62902 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62902 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59718 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59718 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=59718 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59718 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59808 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59808 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59808 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62189 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62691 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62691 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62691 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=59850 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=59850 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=59850 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=59850 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=59850 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=59850 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=59850 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=59850 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=59850 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=59850 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=59850 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=59850 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=59850 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59850 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59850 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59850 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(59850, 7, 0, -2486, 7665, 3985, 46597), -- Tea Tales: Vulca
(59850, 6, 0, -2504, 7662, 3986, 46597), -- Tea Tales: Vulca
(59850, 5, 0, -2499, 7662, 3986, 46597), -- Tea Tales: Vulca
(59850, 4, 0, -2504, 7662, 3986, 46597), -- Tea Tales: Vulca
(59850, 3, 8, -2664, 7308, 4024, 46597), -- Tea Tales: Vulca
(59850, 3, 7, -2667, 7344, 3996, 46597), -- Tea Tales: Vulca
(59850, 3, 6, -2664, 7378, 4007, 46597), -- Tea Tales: Vulca
(59850, 3, 5, -2644, 7445, 4004, 46597), -- Tea Tales: Vulca
(59850, 3, 4, -2493, 7668, 4014, 46597), -- Tea Tales: Vulca
(59850, 3, 3, -2407, 7604, 3998, 46597), -- Tea Tales: Vulca
(59850, 3, 2, -2258, 7466, 3999, 46597), -- Tea Tales: Vulca
(59850, 3, 1, -2275, 7333, 4027, 46597), -- Tea Tales: Vulca
(59850, 3, 0, -2439, 7233, 4083, 46597), -- Tea Tales: Vulca
(59850, 2, 0, -2504, 7662, 3986, 46597), -- Tea Tales: Vulca
(59850, 1, 0, -2609, 7431, 3999, 46597), -- Tea Tales: Vulca
(59850, 0, 0, -2504, 7662, 3986, 46597); -- Tea Tales: Vulca

UPDATE `quest_poi_points` SET `VerifiedBuild`=46597 WHERE (`QuestID`=61981 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61981 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61981 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60431 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60431 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60431 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63033 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63033 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62921 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62921 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62920 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=62920 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62920 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62920 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62919 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62919 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62919 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62918 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62918 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62918 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62915 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62915 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62915 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62635 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62914 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62914 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62870 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62870 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62837 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62837 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60289 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=60289 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=60289 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=60289 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60289 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60289 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61355 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61355 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=61355 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=61355 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=61355 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61355 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63133 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=21 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=20 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=19 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=18 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=17 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=16 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=15 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=14 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=13 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=12 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=11 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=10 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=9 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=6 AND `Idx2`=11) OR (`QuestID`=60287 AND `Idx1`=6 AND `Idx2`=10) OR (`QuestID`=60287 AND `Idx1`=6 AND `Idx2`=9) OR (`QuestID`=60287 AND `Idx1`=6 AND `Idx2`=8) OR (`QuestID`=60287 AND `Idx1`=6 AND `Idx2`=7) OR (`QuestID`=60287 AND `Idx1`=6 AND `Idx2`=6) OR (`QuestID`=60287 AND `Idx1`=6 AND `Idx2`=5) OR (`QuestID`=60287 AND `Idx1`=6 AND `Idx2`=4) OR (`QuestID`=60287 AND `Idx1`=6 AND `Idx2`=3) OR (`QuestID`=60287 AND `Idx1`=6 AND `Idx2`=2) OR (`QuestID`=60287 AND `Idx1`=6 AND `Idx2`=1) OR (`QuestID`=60287 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=5 AND `Idx2`=11) OR (`QuestID`=60287 AND `Idx1`=5 AND `Idx2`=10) OR (`QuestID`=60287 AND `Idx1`=5 AND `Idx2`=9) OR (`QuestID`=60287 AND `Idx1`=5 AND `Idx2`=8) OR (`QuestID`=60287 AND `Idx1`=5 AND `Idx2`=7) OR (`QuestID`=60287 AND `Idx1`=5 AND `Idx2`=6) OR (`QuestID`=60287 AND `Idx1`=5 AND `Idx2`=5) OR (`QuestID`=60287 AND `Idx1`=5 AND `Idx2`=4) OR (`QuestID`=60287 AND `Idx1`=5 AND `Idx2`=3) OR (`QuestID`=60287 AND `Idx1`=5 AND `Idx2`=2) OR (`QuestID`=60287 AND `Idx1`=5 AND `Idx2`=1) OR (`QuestID`=60287 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=4 AND `Idx2`=11) OR (`QuestID`=60287 AND `Idx1`=4 AND `Idx2`=10) OR (`QuestID`=60287 AND `Idx1`=4 AND `Idx2`=9) OR (`QuestID`=60287 AND `Idx1`=4 AND `Idx2`=8) OR (`QuestID`=60287 AND `Idx1`=4 AND `Idx2`=7) OR (`QuestID`=60287 AND `Idx1`=4 AND `Idx2`=6) OR (`QuestID`=60287 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=60287 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=60287 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=60287 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=60287 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=60287 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=3 AND `Idx2`=11) OR (`QuestID`=60287 AND `Idx1`=3 AND `Idx2`=10) OR (`QuestID`=60287 AND `Idx1`=3 AND `Idx2`=9) OR (`QuestID`=60287 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=60287 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=60287 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=60287 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=60287 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=60287 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=60287 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=60287 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=60287 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=60287 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=60287 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=60287 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=60287 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=60287 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=60287 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=60287 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=60287 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=60287 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=60287 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=60287 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=60287 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=60287 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=60287 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=60287 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=60287 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=60287 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=60287 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=60287 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=60287 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=60287 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=60287 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60287 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62882 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62882 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62882 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62905 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62905 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62904 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62904 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62903 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62903 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62903 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62902 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62902 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59718 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59718 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59718 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59718 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59808 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59808 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=59808 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=59808 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=59808 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=59808 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=59808 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=59808 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=59808 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=59808 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=59808 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=59808 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=59808 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59808 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=59808 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=59808 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=59808 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=59808 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=59808 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=59808 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=59808 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=59808 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=59808 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=59808 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=59808 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62189 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62691 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62691 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62691 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (60431 /*A Call to Maldraxxus*/, 31363 /*Lighting the Way*/, 63133 /*Shifting Cryptogram*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(60431, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- A Call to Maldraxxus
(31363, 5, 0, 0, 0, 0, 0, 0, 0, 46597), -- Lighting the Way
(63133, 0, 0, 0, 0, 0, 0, 0, 0, 46597); -- Shifting Cryptogram

UPDATE `quest_details` SET `VerifiedBuild`=46597 WHERE `ID` IN (61981, 63033, 62921, 62920, 62919, 62918, 62915, 62635, 62914, 62870, 62837, 60289, 61355, 60287, 62882, 62905, 62904, 62903, 62902, 62189);

DELETE FROM `quest_request_items` WHERE `ID`=60287;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(60287, 0, 6, 0, 0, 'I will gladly assist you in the acquisition of survival tools... provided you bring me the stygia.', 46597); -- Rule 1: Have an Escape Plan



DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (176449,65111,56876,59721,61177,59800,59801,59723,58108,56906,56889,60415,58109,56875,64467,63992,63991,59885,56501,65337,59820,56706,58844,63192,59819,59886,56890,56484,66904,59892,58824,58202,56799,56502,58146,176453,99425,166285,166292)) OR (`DifficultyID`=2 AND `Entry` IN (63508,58835,56929,56928,56912,64710,66905,61213,60502,60447,64740,56883,59835,56895,59836,56877,56636,59778,59813,59794,65555,64553,59955,59954,59834,56709,56822,56742,56743,56825,56745,59750,56823,60421,56913,56824,56932,56589,65537,59792,59793,63848,66419,95577,59208,59206,59207,59205,56917,166949,98035,55659,56911,56920,56918,56919,56896,65400,65401,56879,56880));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(176449, 0, 0, 0, 482, 46597),
(63508, 2, 0, 0, 482, 46597),
(58835, 2, 0, 0, 2565, 46597),
(56929, 2, 0, 0, 2565, 46597),
(56928, 2, 0, 0, 2565, 46597),
(56912, 2, 0, 0, 2565, 46597),
(64710, 2, 0, 0, 2565, 46597),
(66905, 2, 0, 0, 2565, 46597),
(61213, 2, 2, 2, 2565, 46597),
(60502, 2, 0, 0, 2565, 46597),
(60447, 2, -1, -1, 2565, 46597),
(64740, 2, 0, 0, 2565, 46597),
(56883, 2, -2, -2, 2565, 46597),
(59835, 2, 0, 0, 2565, 46597),
(56895, 2, 2, 2, 2565, 46597),
(59836, 2, -1, -1, 2565, 46597),
(56877, 2, 2, 2, 2565, 46597),
(56636, 2, 2, 2, 2565, 46597),
(59778, 2, -1, -1, 2565, 46597),
(59813, 2, -2, -2, 2565, 46597),
(59794, 2, -1, -1, 2565, 46597),
(65555, 2, -2, -2, 2565, 46597),
(64553, 2, 0, 0, 2565, 46597),
(59955, 2, 0, 0, 2565, 46597),
(59954, 2, 0, 0, 2565, 46597),
(59834, 2, -2, -2, 2565, 46597),
(56709, 2, -2, -2, 2565, 46597),
(56822, 2, -2, -2, 2565, 46597),
(56742, 2, 0, 0, 2565, 46597),
(56743, 2, 0, 0, 2565, 46597),
(56825, 2, -2, -2, 2565, 46597),
(56745, 2, 0, 0, 2565, 46597),
(59750, 2, 0, 0, 2565, 46597),
(56823, 2, -2, -2, 2565, 46597),
(60421, 2, -2, -2, 2565, 46597),
(56913, 2, -2, -2, 2565, 46597),
(56824, 2, -2, -2, 2565, 46597),
(56932, 2, -2, -2, 2565, 46597),
(56589, 2, 2, 2, 2565, 46597),
(65537, 2, 0, 0, 2565, 46597),
(59792, 2, -2, -2, 2565, 46597),
(59793, 2, -2, -2, 2565, 46597),
(63848, 2, -2, -2, 2565, 46597),
(66419, 2, 0, 0, 2565, 46597),
(95577, 2, 0, 0, 977, 46597),
(59208, 2, 2, 2, 2565, 46597),
(59206, 2, 2, 2, 2565, 46597),
(59207, 2, 2, 2, 2565, 46597),
(59205, 2, 2, 2, 2565, 46597),
(56917, 2, 2, 2, 2565, 46597),
(166949, 2, 0, 0, 482, 46597),
(98035, 2, 0, 0, 482, 46597),
(55659, 2, 0, 0, 482, 46597),
(56911, 2, 0, 0, 2565, 46597),
(56920, 2, 0, 0, 2565, 46597),
(56918, 2, 0, 0, 2565, 46597),
(56919, 2, 0, 0, 2565, 46597),
(56896, 2, 0, 0, 2565, 46597),
(65400, 2, 0, 0, 2565, 46597),
(65401, 2, 0, 0, 2565, 46597),
(56879, 2, 0, 0, 2565, 46597),
(56880, 2, 0, 0, 2565, 46597),
(65111, 0, 0, 0, 2565, 46597),
(56876, 0, 0, 0, 2565, 46597),
(59721, 0, -2, -2, 2565, 46597),
(61177, 0, 1, 1, 2565, 46597),
(59800, 0, 0, 0, 2565, 46597),
(59801, 0, 0, 0, 2565, 46597),
(59723, 0, -2, -2, 2565, 46597),
(58108, 0, 1, 1, 2565, 46597),
(56906, 0, 2, 2, 2565, 46597),
(56889, 0, 0, 0, 2565, 46597),
(60415, 0, -4, -4, 2565, 46597),
(58109, 0, -2, -2, 2565, 46597),
(56875, 0, 0, 0, 2565, 46597),
(64467, 0, 0, 0, 2565, 46597),
(63992, 0, -2, -2, 2565, 46597),
(63991, 0, -2, -2, 2565, 46597),
(59885, 0, 0, 0, 2565, 46597),
(56501, 0, -2, -2, 2565, 46597),
(65337, 0, 0, 0, 2565, 46597),
(59820, 0, 0, 0, 2565, 46597),
(56706, 0, 0, 0, 2565, 46597),
(58844, 0, 0, 0, 2565, 46597),
(63192, 0, 0, 0, 2565, 46597),
(59819, 0, 0, 0, 2565, 46597),
(59886, 0, -2, -2, 2565, 46597),
(56890, 0, 0, 0, 2565, 46597),
(56484, 0, 0, 0, 2565, 46597),
(66904, 0, 0, 0, 2565, 46597),
(59892, 0, 0, 0, 2565, 46597),
(58824, 0, 0, 0, 2565, 46597),
(58202, 0, 0, 0, 2565, 46597),
(56799, 0, 0, 0, 2565, 46597),
(56502, 0, 0, 0, 2565, 46597),
(58146, 0, 0, 0, 2565, 46597),
(176453, 0, 0, 0, 482, 46597),
(99425, 0, 0, 0, 371, 46597),
(166285, 0, 0, 0, 837, 46597),
(166292, 0, 0, 0, 837, 46597);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46597 WHERE (`DifficultyID`=0 AND `Entry` IN (171979,164853,171950,172368,164856,175766,166551,166626,166300,165151,165152,187719,187441,102199,176018,176013,173138,177427,171626,177527,177453,179376,170208,174601,171598,177170,173811,175346,99773,169605,176068,169780,176027,172207,176149,176002,170157,179163,178643,178645,179692,179373,171977,179114,178359,178353,177899,178354,178357,178376,178356,180440,178138,163144,177508,177175,183173,175012,175951,157824,175698,176316,113329,179148,180633,179073,179068,176172,179377,178033,176319,178646,179106,177918,177909,174182,178227,176145,179146,177226,178011,178007,178005,178055,114590,178127,178091,175940,170824,175289,170826,170825,172925,162804,177938,173640,176308,180723,70528,170827,170819,180730,177915,175882,177900,180724,172146,179973,180358,180347,178387,177506,175961,178450,177525,179145,176170,177929,99541,175771,171934,168483,168482,168484,173322,173320,173315,173321,162035,162044,173786,173785,173838,165056,161490,161469,161488,161482,161512,161448,166669,161511,161480,168215,167717,173027,165876,165848,165877,165833,165858,165845,168858,166679,166682,155641,165104,172298,173416,157785,166553,166556,166555,166558,166557,166533,166538,164576,164575,158165));


UPDATE `creature_model_info` SET `VerifiedBuild`=46597 WHERE `DisplayID` IN (87422, 43282, 39903, 44078, 44080, 44081, 39633, 42635, 41796, 41794, 39956, 39715, 41793, 66220, 97802, 96350, 96289, 93611, 105558, 104817, 38615, 100298, 101592, 98814, 101286, 97107, 98598, 110619, 20323, 37926, 100296, 97235, 100270, 100288, 100297, 101337, 100302, 101294, 94101, 100712, 100015, 100033, 100066, 100290, 100188, 101288, 98529, 97186, 98176, 101336, 96174, 97086, 96175, 98159, 95004, 98538, 100403, 97386, 92415, 93645, 99662, 95479, 46268, 96173, 99534, 93031, 93000, 92998, 94519, 98590, 94545, 94574, 94559, 94558, 94581, 94582, 94579, 94561, 94546, 94728, 94576, 96139, 94548, 94585, 94577, 96743, 96745, 95937, 95952, 97110, 93306, 96359, 95500, 95499, 93441);
UPDATE `creature_model_info` SET `BoundingRadius`=1.5, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID` IN (44190, 43116, 43129, 43117);
UPDATE `creature_model_info` SET `BoundingRadius`=2, `CombatReach`=4, `VerifiedBuild`=46597 WHERE `DisplayID` IN (43636, 39527);
UPDATE `creature_model_info` SET `BoundingRadius`=0.381944209337234497, `CombatReach`=1.65000009536743164, `VerifiedBuild`=46597 WHERE `DisplayID` IN (41916, 41795);
UPDATE `creature_model_info` SET `BoundingRadius`=4, `CombatReach`=4, `VerifiedBuild`=46597 WHERE `DisplayID`=43139;
UPDATE `creature_model_info` SET `BoundingRadius`=0.800000011920928955, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46597 WHERE `DisplayID`=43289;
UPDATE `creature_model_info` SET `BoundingRadius`=12, `CombatReach`=22.68000030517578125, `VerifiedBuild`=46597 WHERE `DisplayID` IN (39525, 39519);
UPDATE `creature_model_info` SET `BoundingRadius`=3, `CombatReach`=3, `VerifiedBuild`=46597 WHERE `DisplayID` IN (43286, 43275);
UPDATE `creature_model_info` SET `BoundingRadius`=1, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID` IN (43278, 43132, 43914, 43130, 43131, 43133);
UPDATE `creature_model_info` SET `BoundingRadius`=0.347222000360488891, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID` IN (39652, 41800, 43912, 42354, 46068, 46065, 46066, 46067);
UPDATE `creature_model_info` SET `BoundingRadius`=0.364583075046539306, `CombatReach`=1.574999928474426269, `VerifiedBuild`=46597 WHERE `DisplayID`=41799;
UPDATE `creature_model_info` SET `BoundingRadius`=0.329860895872116088, `CombatReach`=1.424999952316284179, `VerifiedBuild`=46597 WHERE `DisplayID`=41798;
UPDATE `creature_model_info` SET `BoundingRadius`=2.25, `VerifiedBuild`=46597 WHERE `DisplayID`=43841;
UPDATE `creature_model_info` SET `BoundingRadius`=2, `VerifiedBuild`=46597 WHERE `DisplayID`=43124;
UPDATE `creature_model_info` SET `BoundingRadius`=2, `CombatReach`=2, `VerifiedBuild`=46597 WHERE `DisplayID` IN (43115, 43891);
UPDATE `creature_model_info` SET `BoundingRadius`=1.25, `CombatReach`=1.25, `VerifiedBuild`=46597 WHERE `DisplayID`=43114;
UPDATE `creature_model_info` SET `BoundingRadius`=2.5, `CombatReach`=2.5, `VerifiedBuild`=46597 WHERE `DisplayID`=43122;
UPDATE `creature_model_info` SET `BoundingRadius`=0.310000002384185791, `CombatReach`=3, `VerifiedBuild`=46597 WHERE `DisplayID`=41403;
UPDATE `creature_model_info` SET `BoundingRadius`=2.20000004768371582, `CombatReach`=2.20000004768371582, `VerifiedBuild`=46597 WHERE `DisplayID`=43113;
UPDATE `creature_model_info` SET `BoundingRadius`=0.520833015441894531, `CombatReach`=2.25, `VerifiedBuild`=46597 WHERE `DisplayID`=39951;
UPDATE `creature_model_info` SET `BoundingRadius`=0.486110806465148925, `CombatReach`=2.099999904632568359, `VerifiedBuild`=46597 WHERE `DisplayID`=40177;
UPDATE `creature_model_info` SET `BoundingRadius`=1.240000009536743164, `CombatReach`=12, `VerifiedBuild`=46597 WHERE `DisplayID`=41105;
UPDATE `creature_model_info` SET `BoundingRadius`=0.186000004410743713, `CombatReach`=0.60000002384185791 WHERE `DisplayID`=18724;
UPDATE `creature_model_info` SET `BoundingRadius`=0.699519932270050048, `CombatReach`=1.65000009536743164, `VerifiedBuild`=46597 WHERE `DisplayID`=100020;
UPDATE `creature_model_info` SET `BoundingRadius`=1.256006956100463867, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID` IN (94390, 94396);
UPDATE `creature_model_info` SET `BoundingRadius`=1.507208466529846191, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46597 WHERE `DisplayID`=98015;
UPDATE `creature_model_info` SET `BoundingRadius`=3.229940414428710937, `CombatReach`=5, `VerifiedBuild`=46597 WHERE `DisplayID`=97052;
UPDATE `creature_model_info` SET `BoundingRadius`=1.262747049331665039, `CombatReach`=2.099999904632568359, `VerifiedBuild`=46597 WHERE `DisplayID`=35372;
UPDATE `creature_model_info` SET `BoundingRadius`=0.959136605262756347, `CombatReach`=1.25, `VerifiedBuild`=46597 WHERE `DisplayID`=92780;
UPDATE `creature_model_info` SET `BoundingRadius`=0.859344482421875, `CombatReach`=0.60000002384185791 WHERE `DisplayID`=94278;
UPDATE `creature_model_info` SET `BoundingRadius`=0.813735127449035644, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46597 WHERE `DisplayID`=92416;
UPDATE `creature_model_info` SET `BoundingRadius`=1.739405274391174316, `CombatReach`=2.40000009536743164, `VerifiedBuild`=46597 WHERE `DisplayID`=92676;
UPDATE `creature_model_info` SET `BoundingRadius`=1.34749603271484375, `CombatReach`=2.612499952316284179, `VerifiedBuild`=46597 WHERE `DisplayID`=100494;
UPDATE `creature_model_info` SET `BoundingRadius`=1.167062759399414062, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID` IN (93241, 95630);
UPDATE `creature_model_info` SET `BoundingRadius`=0.911385178565979003, `CombatReach`=2 WHERE `DisplayID`=92191;
UPDATE `creature_model_info` SET `BoundingRadius`=0.57705998420715332, `VerifiedBuild`=46597 WHERE `DisplayID`=96348;
UPDATE `creature_model_info` SET `BoundingRadius`=0.983263254165649414, `CombatReach`=1.45000004768371582, `VerifiedBuild`=46597 WHERE `DisplayID`=92410;
UPDATE `creature_model_info` SET `BoundingRadius`=0.528530061244964599, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46597 WHERE `DisplayID`=99208;
UPDATE `creature_model_info` SET `BoundingRadius`=0.687459588050842285, `VerifiedBuild`=46597 WHERE `DisplayID` IN (93751, 93747);
UPDATE `creature_model_info` SET `BoundingRadius`=1.045915484428405761, `CombatReach`=1.320000052452087402, `VerifiedBuild`=46597 WHERE `DisplayID`=98550;
UPDATE `creature_model_info` SET `BoundingRadius`=1.417982339859008789, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46597 WHERE `DisplayID`=99134;
UPDATE `creature_model_info` SET `BoundingRadius`=0.961840033531188964, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID`=92627;
UPDATE `creature_model_info` SET `BoundingRadius`=1.181651949882507324, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID`=93631;
UPDATE `creature_model_info` SET `BoundingRadius`=1.140998721122741699, `CombatReach`=1.440000057220458984, `VerifiedBuild`=46597 WHERE `DisplayID`=98547;
UPDATE `creature_model_info` SET `BoundingRadius`=2.159066200256347656, `CombatReach`=1.85000002384185791, `VerifiedBuild`=46597 WHERE `DisplayID`=95012;
UPDATE `creature_model_info` SET `BoundingRadius`=1.266006827354431152, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=92534;
UPDATE `creature_model_info` SET `BoundingRadius`=1.570008754730224609, `CombatReach`=1.25, `VerifiedBuild`=46597 WHERE `DisplayID`=96827;
UPDATE `creature_model_info` SET `BoundingRadius`=1.8840104341506958, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=94398;
UPDATE `creature_model_info` SET `BoundingRadius`=0.559414207935333251, `CombatReach`=0.400000005960464477, `VerifiedBuild`=46597 WHERE `DisplayID`=74484;
UPDATE `creature_model_info` SET `BoundingRadius`=0.592886686325073242, `CombatReach`=2.5 WHERE `DisplayID` IN (92622, 94426);
UPDATE `creature_model_info` SET `BoundingRadius`=2.75, `CombatReach`=1.320000052452087402 WHERE `DisplayID`=93002;
UPDATE `creature_model_info` SET `BoundingRadius`=2.187499761581420898, `CombatReach`=1.049999952316284179 WHERE `DisplayID`=94612;
UPDATE `creature_model_info` SET `BoundingRadius`=2.5, `CombatReach`=1.20000004768371582 WHERE `DisplayID` IN (94551, 94550, 94549, 94547);
UPDATE `creature_model_info` SET `BoundingRadius`=1.002568483352661132, `CombatReach`=0.699999988079071044 WHERE `DisplayID`=94281;
UPDATE `creature_model_info` SET `BoundingRadius`=2.352471351623535156, `CombatReach`=2.75 WHERE `DisplayID`=94056;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `CombatReach`=1 WHERE `DisplayID`=96111;
UPDATE `creature_model_info` SET `BoundingRadius`=2.828110218048095703, `CombatReach`=6, `VerifiedBuild`=46597 WHERE `DisplayID`=95369;
UPDATE `creature_model_info` SET `BoundingRadius`=0.716120362281799316, `CombatReach`=0.5 WHERE `DisplayID`=94528;
UPDATE `creature_model_info` SET `BoundingRadius`=1.700837254524230957, `CombatReach`=1.399999976158142089 WHERE `DisplayID`=92701;
UPDATE `creature_model_info` SET `BoundingRadius`=2.083333253860473632, `CombatReach`=1 WHERE `DisplayID`=94611;
UPDATE `creature_model_info` SET `BoundingRadius`=3.333333253860473632, `CombatReach`=1.60000002384185791 WHERE `DisplayID`=93845;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `VerifiedBuild`=46597 WHERE `DisplayID` IN (96232, 96234, 96233, 97932);
UPDATE `creature_model_info` SET `BoundingRadius`=1.014649510383605957, `CombatReach`=1.60000002384185791, `VerifiedBuild`=46597 WHERE `DisplayID`=96261;
UPDATE `creature_model_info` SET `BoundingRadius`=1.94381415843963623, `CombatReach`=1.60000002384185791 WHERE `DisplayID`=92702;
UPDATE `creature_model_info` SET `BoundingRadius`=0.315686762332916259, `CombatReach`=0.524999976158142089 WHERE `DisplayID`=95209;



DELETE FROM `gossip_menu` WHERE (`MenuID`=14493 AND `TextID`=1);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(14493, 1, 46597); -- 64467 (Bowmistress Li)

DELETE FROM `gossip_menu_addon` WHERE `MenuID`=26692;
INSERT INTO `gossip_menu_addon` (`MenuID`, `FriendshipFactionID`, `VerifiedBuild`) VALUES
(26692, 2432, 46597); -- 162804 (Ve'nari)

UPDATE `gossip_menu_addon` SET `VerifiedBuild`=46597 WHERE `MenuID`=25278;
DELETE FROM `gossip_menu_option` WHERE (`MenuID`=25540 AND `OptionID`=6) OR (`MenuID`=25278 AND `OptionID`=3);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(25540, 6, 0, '<Stay awhile and listen.>', 137786, 0, 0, 0, 0, 0, NULL, 0, 46597), -- OptionBroadcastTextID: 137786 - 137786 - 144263 - 144263 - 160761 - 160761 - 160763 - 160763 - 160765 - 160765 - 160768 - 160768 - 167552 - 167552 - 173473 - 173473 - 176737 - 176737 - 188459 - 188459 - 202026 - 202026 - 205118 - 205118 - 205774 - 205774
(25278, 3, 1, 'What do you have to trade?', 0, 0, 0, 0, 0, 0, NULL, 0, 46597);

UPDATE `gossip_menu_option` SET `VerifiedBuild`=46597 WHERE (`OptionID`=0 AND `MenuID` IN (26895,26692,25652));
UPDATE `gossip_menu_option` SET `ActionMenuID`=25267, `VerifiedBuild`=46597 WHERE (`MenuID`=25266 AND `OptionID`=0);
UPDATE `gossip_menu_option` SET `OptionNpc`=0, `OptionText`='What are your ground rules for working together?', `ActionMenuID`=26692, `VerifiedBuild`=46597 WHERE (`MenuID`=25278 AND `OptionID`=5);


UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `speed_walk`=4.800000190734863281, `speed_run`=1.714285731315612792, `BaseAttackTime`=1857, `unit_flags2`=2048 WHERE `entry`=176449; -- Beast
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=171950; -- The Accuser
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `BaseAttackTime`=807 WHERE `entry`=63508; -- Xuen
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=16, `speed_walk`=2, `speed_run`=0.714285731315612792, `unit_flags`=33554432, `unit_flags2`=2099200, `unit_flags3`=524289 WHERE `entry`=58835; -- Tar
UPDATE `creature_template` SET `unit_flags2`=4194304, `unit_flags3`=524288 WHERE `entry`=56929; -- Krik'thik Protectorate
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=16, `speed_walk`=2, `speed_run`=0.714285731315612792, `unit_flags`=33554432, `unit_flags2`=2099200, `unit_flags3`=524289 WHERE `entry`=56928; -- Engulfing Winds
UPDATE `creature_template` SET `unit_flags2`=4196352, `unit_flags3`=524289 WHERE `entry`=56912; -- Krik'thik Engulfer
UPDATE `creature_template` SET `npcflag`=16777216, `unit_flags2`=2099200, `unit_flags3`=1 WHERE `entry`=64710; -- Rope
UPDATE `creature_template` SET `unit_flags2`=4196352, `unit_flags3`=1 WHERE `entry`=66905; -- Pandaren Cannoneer
UPDATE `creature_template` SET `speed_run`=1.142857193946838378, `unit_flags2`=4196352 WHERE `entry`=61213; -- Krik'thik Conscript
UPDATE `creature_template` SET `faction`=2244, `unit_flags2`=37750784 WHERE `entry`=60502; -- Pandaren Disciple
UPDATE `creature_template` SET `faction`=1771, `speed_run`=1.142857193946838378, `unit_flags2`=2048, `unit_flags3`=524288 WHERE `entry`=60447; -- Krik'thik Saboteur
UPDATE `creature_template` SET `unit_flags2`=2099200, `unit_flags3`=16777217 WHERE `entry`=64740; -- Rope Seat
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=524289 WHERE `entry`=56883; -- Viscos Fluid Stalker
UPDATE `creature_template` SET `faction`=1771, `speed_run`=1.142857193946838378, `unit_flags2`=2048, `unit_flags3`=524288 WHERE `entry`=59835; -- Krik'thik Swarmer
UPDATE `creature_template` SET `faction`=2137, `unit_flags`=32768, `unit_flags2`=6324224, `unit_flags3`=1 WHERE `entry`=56895; -- Weak Spot
UPDATE `creature_template` SET `minlevel`=34, `maxlevel`=34, `faction`=2137, `unit_flags`=33587200, `unit_flags2`=6324224, `unit_flags3`=1, `VehicleId`=2087 WHERE `entry`=59836; -- Panda Seat
UPDATE `creature_template` SET `maxlevel`=37, `faction`=1771, `unit_flags`=32832, `unit_flags2`=6293504 WHERE `entry`=56877; -- Raigonn
UPDATE `creature_template` SET `minlevel`=37, `unit_flags2`=2099200 WHERE `entry`=56636; -- Commander Ri'mok
UPDATE `creature_template` SET `minlevel`=34, `maxlevel`=34, `faction`=1771, `unit_flags2`=4196352 WHERE `entry`=59778; -- Krik'thik Striker
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=524289 WHERE `entry`=59813; -- Boss 2 Encounter Acid Bomb Stalker
UPDATE `creature_template` SET `faction`=1771, `unit_flags2`=4196352 WHERE `entry`=59794; -- Krik'thik Disruptor
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=65555; -- Bonfire Teleport Stalker
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags2`=2048, `unit_flags3`=16777216 WHERE `entry`=64553; -- "Lighting the Way" Kill Credit
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=1771, `unit_flags`=256, `unit_flags2`=4196352, `unit_flags3`=1, `VehicleId`=2095 WHERE `entry`=59955; -- Krik'thik Glider
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=1771, `unit_flags`=256, `unit_flags2`=4196352, `unit_flags3`=1, `VehicleId`=2093 WHERE `entry`=59954; -- Krik'thik Glider
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=59834; -- Boss 3 Encounter Add Generator
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=56709; -- Flying Mantid Bombing Stalker
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=56822; -- Boss 2 North Stalker
UPDATE `creature_template` SET `faction`=2482, `unit_flags2`=2048 WHERE `entry` IN (56742, 56743); -- Serpent's Spine Defender
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=56825; -- Boss 2 East Stalker
UPDATE `creature_template` SET `faction`=2244, `unit_flags2`=2048 WHERE `entry`=56745; -- Serpent's Spine Trainee
UPDATE `creature_template` SET `faction`=2482, `unit_flags2`=2048 WHERE `entry` IN (59750, 65537); -- Serpent's Spine Cannoneer
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=56823; -- Boss 2 West Stalker
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=2099200, `unit_flags3`=1 WHERE `entry`=60421; -- Flak Cannon Target Stalker
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=56913; -- Boss 2 West/East Strafe Stalkers
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `faction`=16, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=56824; -- Boss 2 South Stalker
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=56932; -- Boss 2 North/South Strafe Stalkers
UPDATE `creature_template` SET `minlevel`=37, `maxlevel`=37, `unit_flags2`=2099200 WHERE `entry`=56589; -- Striker Ga'dok
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=4196352, `unit_flags3`=1 WHERE `entry`=59792; -- Great Wall Bonfire Caster Stalker
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=4196352, `unit_flags3`=1 WHERE `entry`=59793; -- Great Wall Bonfire Target Stalker 1
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=4196352, `unit_flags3`=1 WHERE `entry`=63848; -- Great Wall Bonfire Target Stalker 2
UPDATE `creature_template` SET `unit_flags2`=2049, `unit_flags3`=8193 WHERE `entry`=66419; -- Serpent's Spine Marksman
UPDATE `creature_template` SET `speed_run`=1, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=95577; -- Void Tendril
UPDATE `creature_template` SET `minlevel`=37, `maxlevel`=37, `speed_run`=1.142857193946838378, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=524289 WHERE `entry` IN (59208, 59206, 59207, 59205); -- Mantid Munitions
UPDATE `creature_template` SET `minlevel`=37, `maxlevel`=37, `faction`=1771, `speed_run`=1, `unit_flags`=256, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=56917; -- Stable Munitions
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_run`=0.857142865657806396, `BaseAttackTime`=1296, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=166949; -- Chi-Ji
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `BaseAttackTime`=1821, `unit_flags`=16 WHERE `entry`=98035; -- Dreadstalker
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `BaseAttackTime`=1821 WHERE `entry`=55659; -- Wild Imp
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_run`=1.142857193946838378, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=524289 WHERE `entry` IN (56911, 56920, 56918, 56919); -- Mantid Munitions
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `speed_run`=1, `unit_flags`=256, `unit_flags2`=2048, `unit_flags3`=524289 WHERE `entry`=56896; -- Volatile Munitions
UPDATE `creature_template` SET `faction`=1771, `speed_run`=1.142857193946838378, `unit_flags`=256, `unit_flags2`=4196352, `unit_flags3`=1 WHERE `entry` IN (65400, 65401, 56879, 56880); -- Krik'thik Glider
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `unit_flags`=16, `unit_flags2`=37748736 WHERE `entry`=65111; -- Serpent's Spine Defender
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=16, `speed_run`=1.142857193946838378, `unit_flags2`=4196352 WHERE `entry`=56876; -- Krik'thik Sapper
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=1077938176, `unit_flags3`=1 WHERE `entry`=59721; -- Great Wall Explosion Target Stalker 2
UPDATE `creature_template` SET `faction`=1771, `speed_run`=1.714285731315612792, `BaseAttackTime`=1500, `unit_flags`=32768, `unit_flags2`=1073743872, `unit_flags3`=1, `VehicleId`=2303 WHERE `entry`=61177; -- Raigonn
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=1771, `speed_run`=1.142857193946838378, `unit_flags2`=37750784 WHERE `entry`=59800; -- Krik'thik Rager
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=1771, `speed_run`=1.142857193946838378, `unit_flags2`=37750784 WHERE `entry`=59801; -- Krik'thik Wind Shaper
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=1077938176, `unit_flags3`=1 WHERE `entry`=59723; -- Great Wall Explosion Caster Stalker
UPDATE `creature_template` SET `minlevel`=36, `maxlevel`=36, `faction`=1771, `speed_walk`=0.5, `speed_run`=0.571428596973419189, `unit_flags2`=37750784 WHERE `entry`=58108; -- Krik'thik Infiltrator
UPDATE `creature_template` SET `minlevel`=37, `maxlevel`=37, `faction`=1771, `speed_run`=1.142857193946838378, `unit_flags`=32832, `unit_flags2`=2099200 WHERE `entry`=56906; -- Saboteur Kip'tilak
UPDATE `creature_template` SET `unit_flags`=16, `unit_flags2`=37748736 WHERE `entry`=56889; -- Serpent's Spine Defender
UPDATE `creature_template` SET `minlevel`=31, `maxlevel`=31, `unit_flags2`=71337984 WHERE `entry`=60415; -- Flak Cannon
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=58109; -- Mantid Infiltrator Rope Stalker
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=16, `speed_run`=1.142857193946838378, `unit_flags2`=4196352 WHERE `entry`=56875; -- Krik'thik Demolisher
UPDATE `creature_template` SET `gossip_menu_id`=14493, `faction`=2244, `unit_flags2`=37750784, `unit_flags3`=1048577 WHERE `entry`=64467; -- Bowmistress Li
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=1077938176, `unit_flags3`=1 WHERE `entry`=63992; -- Great Wall Explosion Target Stalker 1
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=1077938176, `unit_flags3`=1 WHERE `entry`=63991; -- Great Wall Explosion Target Stalker 3
UPDATE `creature_template` SET `faction`=1771, `speed_run`=1.142857193946838378, `unit_flags`=256, `unit_flags2`=4196352, `unit_flags3`=524289 WHERE `entry`=59885; -- Krik'thik Glider
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=2099200, `unit_flags3`=1 WHERE `entry`=56501; -- Panda Archer Target Stalker
UPDATE `creature_template` SET `faction`=2564, `unit_flags2`=37748736 WHERE `entry`=65337; -- Serpent's Spine Defender
UPDATE `creature_template` SET `unit_flags`=33554432, `unit_flags2`=4196352, `unit_flags3`=1 WHERE `entry`=59820; -- Pandaren Cannoneer
UPDATE `creature_template` SET `faction`=1771, `unit_flags2`=4196352 WHERE `entry` IN (56706, 56799); -- Krik'thik Bombardier
UPDATE `creature_template` SET `unit_flags2`=4196352 WHERE `entry`=58844; -- Panda Tar Tosser
UPDATE `creature_template` SET `unit_flags`=33554432, `unit_flags2`=2099200, `unit_flags3`=1 WHERE `entry`=63192; -- Cosmetic Client Stalker
UPDATE `creature_template` SET `unit_flags`=33554432, `unit_flags2`=4196352, `unit_flags3`=1 WHERE `entry` IN (59819, 66904); -- Artillery
UPDATE `creature_template` SET `minlevel`=33, `maxlevel`=33, `unit_flags`=33554432, `unit_flags2`=4196352, `unit_flags3`=1 WHERE `entry`=59886; -- Great Wall Panda Archer Target Spawner
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=2102, `speed_run`=1.142857193946838378, `unit_flags`=0, `unit_flags2`=33556480 WHERE `entry`=56890; -- Krik'thik Infiltrator
UPDATE `creature_template` SET `faction`=2482, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=56484; -- Serpent's Spine Marksman
UPDATE `creature_template` SET `faction`=16, `speed_run`=1.142857193946838378, `unit_flags2`=4196352 WHERE `entry`=59892; -- Krik'thik Invader
UPDATE `creature_template` SET `faction`=2244, `unit_flags2`=4196352 WHERE `entry`=58824; -- Courtyard Defender
UPDATE `creature_template` SET `faction`=2482, `unit_flags2`=33556480 WHERE `entry`=58202; -- Serpent's Spine Defender
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction`=16, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=56502; -- Panda Archer Target Gate Stalker
UPDATE `creature_template` SET `faction`=2482, `speed_walk`=0.5, `speed_run`=0.571428596973419189, `unit_flags2`=37750784 WHERE `entry`=58146; -- Serpent's Spine Defender
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags`=33536 WHERE `entry`=31575; -- Giant Sewer Rat
UPDATE `creature_template` SET `minlevel`=52, `maxlevel`=52, `unit_flags`=0 WHERE `entry`=166551; -- Outcast Venthyr
UPDATE `creature_template` SET `speed_run`=1.485714197158813476, `BaseAttackTime`=1612 WHERE `entry`=17252; -- Felguard


UPDATE `quest_template` SET `VerifiedBuild`=46597 WHERE `ID` IN (61981, 60431, 63033, 64210, 63980, 62700, 60501, 60459, 60429, 56491, 56119, 65010, 62860, 60457, 60420, 59179, 57661, 45383, 45382, 45381, 44663, 2945, 62635, 35316, 61355, 61136, 61125, 60991, 61346, 62209, 63044, 60992, 60990, 61728, 62210, 61140, 59230, 58918, 61124, 62539, 61565, 59183, 62211, 59441, 62618, 60287, 62882, 62905, 64974, 45812, 59600, 61189, 59585, 59743, 61337, 60656, 61967, 59718);
UPDATE `quest_template` SET `RewardBonusMoney`=92600, `Flags`=38797320, `VerifiedBuild`=46597 WHERE `ID`=62921; -- Our True Purpose
UPDATE `quest_template` SET `RewardBonusMoney`=30900, `VerifiedBuild`=46597 WHERE `ID`=62920; -- A Conduit For Change
UPDATE `quest_template` SET `RewardBonusMoney`=30900, `VerifiedBuild`=46597 WHERE `ID`=62919; -- Strengthening the Bond
UPDATE `quest_template` SET `RewardBonusMoney`=30900, `VerifiedBuild`=46597 WHERE `ID`=62918; -- Binding Power
UPDATE `quest_template` SET `RewardBonusMoney`=2900, `Flags`=8, `VerifiedBuild`=46597 WHERE `ID`=31364; -- That's a Big Bug!
UPDATE `quest_template` SET `RewardBonusMoney`=2900, `VerifiedBuild`=46597 WHERE `ID`=31363; -- Lighting the Way
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=65625; -- The Jailer's Gauntlet
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `Expansion`=9, `VerifiedBuild`=46597 WHERE `ID`=63494; -- The Anvil-Thane's Designs
UPDATE `quest_template` SET `RewardBonusMoney`=493800 WHERE `ID`=62723;
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=58665; -- Rebellious Souls
UPDATE `quest_template` SET `RewardBonusMoney`=2350, `AllowableRaces`=6130900294268439629, `VerifiedBuild`=46597 WHERE `ID`=46728; -- The Nation of Kul Tiras
UPDATE `quest_template` SET `RewardBonusMoney`=9400, `VerifiedBuild`=46597 WHERE `ID`=54185; -- Gnomeregan's New Guardians
UPDATE `quest_template` SET `RewardBonusMoney`=825, `VerifiedBuild`=46597 WHERE `ID`=37031; -- Sigil of the Black Hand (Mythic)
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46597 WHERE `ID`=29830; -- Containment
UPDATE `quest_template` SET `RewardBonusMoney`=30900, `VerifiedBuild`=46597 WHERE `ID`=62915; -- Home Improvement
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=62914; -- A Coalition of the Willing
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=62870; -- Souls for Sinfall
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=62837; -- Hopeful News
UPDATE `quest_template` SET `RewardBonusMoney`=77150, `VerifiedBuild`=46597 WHERE `ID`=60289; -- Rule 3: Trust is Earned
UPDATE `quest_template` SET `RewardBonusMoney`=61750, `VerifiedBuild`=46597 WHERE `ID`=63133; -- Shifting Cryptogram
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=62904; -- The Souls Plight
UPDATE `quest_template` SET `RewardBonusMoney`=30900, `VerifiedBuild`=46597 WHERE `ID`=62903; -- Into the Reservoir
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=62902; -- Anima is Power
UPDATE `quest_template` SET `RewardBonusMoney`=77150, `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=62189; -- Parasol Components


UPDATE `quest_objectives` SET `VerifiedBuild`=46597 WHERE `ID` IN (406892, 398635, 398634, 398633, 398632, 398631, 398557, 398556, 408940, 408939, 408933, 408930, 268573, 420752, 423172, 408183, 398459, 398630, 398629, 398628, 398627, 398626, 398559, 394737, 289829, 391056, 391055, 386419, 386418, 390274, 408871, 398461, 398620, 398619, 398618, 398617, 398616, 398563, 398562, 405330, 287893, 287892, 287890, 275541, 275540, 275539, 286744, 286773, 262645, 256434, 256433, 408089, 408923, 405412, 405384, 405356, 408881, 398086, 405800, 405249, 405228, 405227, 405657, 407425, 409050, 405143, 406321, 406588, 407428, 405251, 396185, 395108, 405226, 407909, 406320, 396133, 407429, 396453, 408059, 405294, 408989, 408965, 405406, 408857, 408896, 408916, 408960, 421855, 421868, 421864, 421863, 421862, 421865, 421860, 421853, 421852, 421851, 421850, 288711, 288650, 405938, 396596, 396595, 396594, 396593, 396592, 396591, 405385, 405386, 407664, 396533, 396532, 396528, 396874, 396873, 396872, 396871, 405718, 405715, 405714, 405713, 405712, 405711, 405710, 405611, 404613, 404746, 404745, 404744, 404612, 404579, 404741, 404611, 404609, 404608, 404610, 407051, 407047, 407041, 406887, 396826, 396827);
UPDATE `quest_objectives` SET `Description`='Light the Signal Flame', `VerifiedBuild`=46597 WHERE `ID`=268572; -- 268572
UPDATE `quest_objectives` SET `Flags`=0, `VerifiedBuild`=46597 WHERE `ID`=398558; -- 398558


UPDATE `quest_visual_effect` SET `VerifiedBuild`=46597 WHERE (`Index`=0 AND `ID` IN (406892,408940,408939,408933,408930,268572,289829,391055,386418,286744,286773,408923,398086,405249,405228,405227,407425,409050,405143,406588,407428,405251,396185,395108,405226,396133,407429,396453,408059,405294,408965,408857,408896,408916,421855,421864,421863,421862,421860,421853,421852,421851,288711,396591,405385,405386,396532,396528,396874,396873,396872,396871,405611,404613,404612,404579,407051,407047,407041,406887,396826,396827)) OR (`Index`=12 AND `ID`=408965) OR (`Index`=11 AND `ID`=408965) OR (`Index`=10 AND `ID`=408965) OR (`Index`=9 AND `ID`=408965) OR (`Index`=8 AND `ID`=408965) OR (`Index`=7 AND `ID`=408965) OR (`Index`=6 AND `ID` IN (408965,405611)) OR (`Index`=5 AND `ID` IN (408965,405611)) OR (`Index`=4 AND `ID` IN (408965,396591,405611)) OR (`Index`=3 AND `ID` IN (408965,396591,405385,396532,405611)) OR (`Index`=2 AND `ID` IN (408965,396591,405385,396532,396528,405611,404612,404579)) OR (`Index`=1 AND `ID` IN (408965,408857,396591,405385,396532,396528,396871,405611,404612,404579,407051,406887));


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `QuestID` IN (62918,56491,54185,37031));


UPDATE `creature_template` SET `HealthModifier`=30, `CreatureDifficultyID`=58815, `VerifiedBuild`=46597 WHERE `entry`=58202; -- Serpent's Spine Defender
UPDATE `creature_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (179106, 170157, 179114, 179145, 179146, 179148, 170208, 179163, 165833, 165845, 165848, 165858, 165876, 165877, 161448, 179373, 179376, 179377, 161469, 161480, 161482, 161488, 161490, 161511, 161512, 175012, 179692, 166292, 166300, 175289, 170819, 170824, 170825, 170826, 170827, 175346, 58959, 162035, 162044, 166533, 166538, 179973, 166551, 166553, 166555, 166556, 166557, 166558, 157640, 166626, 166669, 166679, 166682, 157785, 175698, 157824, 175766, 175771, 180347, 180358, 175882, 99773, 166949, 175940, 175951, 175961, 180440, 176002, 113329, 176013, 176018, 176027, 176068, 158165, 171598, 171626, 176145, 176149, 59750, 180633, 95577, 176170, 176172, 162804, 180723, 180724, 180730, 176308, 176316, 176319, 171950, 171977, 171979, 163144, 172146, 172207, 172368, 60502, 163497, 172538, 168215, 177170, 177175, 177226, 114590, 172825, 56484, 172925, 177427, 168482, 168483, 168484, 177453, 65537, 173027, 177506, 177508, 177525, 177527, 173138, 56742, 56743, 173315, 173320, 173321, 173322, 168858, 173416, 177899, 177900, 177909, 177912, 177915, 177918, 177929, 177938, 70528, 178005, 164575, 178007, 164576, 178011, 178033, 178055, 178091, 173640, 178127, 178138, 178227, 173785, 173786, 164853, 164856, 173811, 102199, 173838, 66419, 178353, 178354, 178356, 178357, 178359, 178376, 178387, 178450, 187441, 165056, 165104, 169605, 165151, 165152, 178643, 178645, 178646, 174182, 183173, 169780, 187719, 66905, 58146, 179068, 179073);
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=63192; -- Cosmetic Client Stalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=58824; -- Courtyard Defender
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=58835; -- Tar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=166285; -- Bog Dredger
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=58844; -- Panda Tar Tosser
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=99425; -- Alarm-o-Bot
UPDATE `creature_template` SET `femaleName`='', `CreatureDifficultyID`=23833, `VerifiedBuild`=46597 WHERE `entry`=59205; -- Mantid Munitions
UPDATE `creature_template` SET `femaleName`='', `CreatureDifficultyID`=23828, `VerifiedBuild`=46597 WHERE `entry`=59206; -- Mantid Munitions
UPDATE `creature_template` SET `femaleName`='', `CreatureDifficultyID`=23823, `VerifiedBuild`=46597 WHERE `entry`=59207; -- Mantid Munitions
UPDATE `creature_template` SET `femaleName`='', `CreatureDifficultyID`=23816, `VerifiedBuild`=46597 WHERE `entry`=59208; -- Mantid Munitions
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=166702; -- Vulca
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=63848; -- Great Wall Bonfire Target Stalker 2
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=63991; -- Great Wall Explosion Target Stalker 3
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=63992; -- Great Wall Explosion Target Stalker 1
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=59721; -- Great Wall Explosion Target Stalker 2
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=59723; -- Great Wall Explosion Caster Stalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=59778; -- Krik'thik Striker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=59792; -- Great Wall Bonfire Caster Stalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=59793; -- Great Wall Bonfire Target Stalker 1
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=59794; -- Krik'thik Disruptor
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=9, `CreatureDifficultyID`=66548, `VerifiedBuild`=46597 WHERE `entry`=59800; -- Krik'thik Rager
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=6.75, `CreatureDifficultyID`=66547, `VerifiedBuild`=46597 WHERE `entry`=59801; -- Krik'thik Wind Shaper
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=59813; -- Boss 2 Encounter Acid Bomb Stalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry` IN (59819, 66904); -- Artillery
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=59820; -- Pandaren Cannoneer
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=59834; -- Boss 3 Encounter Add Generator
UPDATE `creature_template` SET `femaleName`='', `rank`=6, `HealthModifier`=0.5, `CreatureDifficultyID`=66551, `VerifiedBuild`=46597 WHERE `entry`=59835; -- Krik'thik Swarmer
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=59836; -- Panda Seat
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry` IN (59885, 59954, 59955, 65400, 65401, 56879, 56880); -- Krik'thik Glider
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=59886; -- Great Wall Panda Archer Target Spawner
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=59892; -- Krik'thik Invader
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=64467; -- Bowmistress Li
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=176449; -- Beast
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=176453; -- Beast
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=64553; -- "Lighting the Way" Kill Credit
UPDATE `creature_template` SET `femaleName`='', `IconName`='questinteract', `VerifiedBuild`=46597 WHERE `entry`=64710; -- Rope
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=64740; -- Rope Seat
UPDATE `creature_template` SET `femaleName`='', `type_flags`=4096, `VerifiedBuild`=46597 WHERE `entry`=172298; -- Gobbers
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=60415; -- Flak Cannon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=60421; -- Flak Cannon Target Stalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=60447; -- Krik'thik Saboteur
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=3.75, `CreatureDifficultyID`=58510, `VerifiedBuild`=46597 WHERE `entry`=65111; -- Serpent's Spine Defender
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=3.75, `CreatureDifficultyID`=58843, `VerifiedBuild`=46597 WHERE `entry`=65337; -- Serpent's Spine Defender
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=56501; -- Panda Archer Target Stalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=56502; -- Panda Archer Target Gate Stalker
UPDATE `creature_template` SET `femaleName`='', `rank`=1, `type_flags2`=128, `HealthModifier`=45, `CreatureDifficultyID`=66549, `VerifiedBuild`=46597 WHERE `entry`=56589; -- Striker Ga'dok
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=65555; -- Bonfire Teleport Stalker
UPDATE `creature_template` SET `femaleName`='', `rank`=1, `HealthModifier`=45, `CreatureDifficultyID`=66550, `VerifiedBuild`=46597 WHERE `entry`=56636; -- Commander Ri'mok
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=61177; -- Raigonn
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry` IN (56706, 56799); -- Krik'thik Bombardier
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=56709; -- Flying Mantid Bombing Stalker
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=9, `CreatureDifficultyID`=66552, `VerifiedBuild`=46597 WHERE `entry`=61213; -- Krik'thik Conscript
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=56745; -- Serpent's Spine Trainee
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=56822; -- Boss 2 North Stalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=56823; -- Boss 2 West Stalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=56824; -- Boss 2 South Stalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=56825; -- Boss 2 East Stalker
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=9, `CreatureDifficultyID`=27065, `VerifiedBuild`=46597 WHERE `entry`=56875; -- Krik'thik Demolisher
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=9, `CreatureDifficultyID`=27060, `VerifiedBuild`=46597 WHERE `entry`=56876; -- Krik'thik Sapper
UPDATE `creature_template` SET `femaleName`='', `rank`=1, `type_flags2`=128, `HealthModifier`=62.5, `CreatureDifficultyID`=66553, `VerifiedBuild`=46597 WHERE `entry`=56877; -- Raigonn
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=56883; -- Viscos Fluid Stalker
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=3.75, `CreatureDifficultyID`=27036, `VerifiedBuild`=46597 WHERE `entry`=56889; -- Serpent's Spine Defender
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=6.75, `CreatureDifficultyID`=27031, `VerifiedBuild`=46597 WHERE `entry`=56890; -- Krik'thik Infiltrator
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=8, `CreatureDifficultyID`=66554, `VerifiedBuild`=46597 WHERE `entry`=56895; -- Weak Spot
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=7.5, `CreatureDifficultyID`=27015, `VerifiedBuild`=46597 WHERE `entry`=56896; -- Volatile Munitions
UPDATE `creature_template` SET `femaleName`='', `rank`=1, `type_flags2`=128, `HealthModifier`=45, `CreatureDifficultyID`=27006, `VerifiedBuild`=46597 WHERE `entry`=56906; -- Saboteur Kip'tilak
UPDATE `creature_template` SET `femaleName`='', `CreatureDifficultyID`=26998, `VerifiedBuild`=46597 WHERE `entry`=56911; -- Mantid Munitions
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.375, `CreatureDifficultyID`=66557, `VerifiedBuild`=46597 WHERE `entry`=56912; -- Krik'thik Engulfer
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=56913; -- Boss 2 West/East Strafe Stalkers
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=7.5, `CreatureDifficultyID`=26980, `VerifiedBuild`=46597 WHERE `entry`=56917; -- Stable Munitions
UPDATE `creature_template` SET `femaleName`='', `CreatureDifficultyID`=26974, `VerifiedBuild`=46597 WHERE `entry`=56918; -- Mantid Munitions
UPDATE `creature_template` SET `femaleName`='', `CreatureDifficultyID`=26969, `VerifiedBuild`=46597 WHERE `entry`=56919; -- Mantid Munitions
UPDATE `creature_template` SET `femaleName`='', `CreatureDifficultyID`=26964, `VerifiedBuild`=46597 WHERE `entry`=56920; -- Mantid Munitions
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=56928; -- Engulfing Winds
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.75, `CreatureDifficultyID`=66556, `VerifiedBuild`=46597 WHERE `entry`=56929; -- Krik'thik Protectorate
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=56932; -- Boss 2 North/South Strafe Stalkers
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=155641; -- Azeroith Mini
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=6.75, `CreatureDifficultyID`=66546, `VerifiedBuild`=46597 WHERE `entry`=58108; -- Krik'thik Infiltrator
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=58109; -- Mantid Infiltrator Rope Stalker
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=174601; -- Grathalax Entry Stalker


UPDATE `creature_template_model` SET `VerifiedBuild`=46597 WHERE (`Idx`=3 AND `CreatureID` IN (176449,66905,60502,59750,65537,59820,58844,56484,58824,58146,172368,176453,176018,176068,176027,177508,175698,178450,162035,162044,161469,161482,161480,161448,168215,157785)) OR (`Idx`=2 AND `CreatureID` IN (176449,66905,60502,59750,65537,59820,59892,58844,56484,58824,58146,172368,166626,176453,176018,176068,176027,177508,175698,179106,177912,177909,177506,178450,162035,162044,161490,161469,161482,161480,161448,168215,165877,166285,157785)) OR (`Idx`=1 AND `CreatureID` IN (176449,172538,58835,56928,64710,66905,60502,64740,56883,59836,56895,59813,65555,64553,59834,56709,56822,56825,59750,56823,60421,56913,56932,56824,65537,63848,59793,59792,59208,59207,59206,59205,56920,56919,56918,56911,59721,59820,63992,56501,59886,59892,58844,59723,63192,56484,58109,63991,58824,58146,56502,172368,166626,176453,102199,176018,174601,177170,176068,176027,179163,171977,179114,177508,163144,175698,176316,113329,180633,179148,179073,176319,179106,177912,177909,179146,114590,175961,180723,180730,177506,70528,178450,176308,177525,180358,180347,179145,162035,162044,173785,161490,161469,161488,161482,161480,161448,168215,165877,165858,166285,165104,157785)) OR (`Idx`=0 AND `CreatureID` IN (176449,171979,164853,172538,171950,58835,56929,56928,56912,64710,66905,61213,60502,60447,64740,56883,59835,59836,56895,56877,56636,59778,59813,59794,65555,64553,59955,59954,59834,56709,56822,56825,56743,56742,56745,59750,56823,60421,56913,56932,56824,56589,65537,63848,59793,59792,66419,95577,59208,59207,59206,59205,56917,166949,56920,56919,56918,56911,56896,56880,56879,65401,65400,56890,61177,59721,65111,56799,58108,59820,65337,59801,56889,63992,56501,59886,59892,58844,59723,56876,59819,64467,66904,59885,59800,63192,56484,58109,56706,63991,58824,58146,56906,60415,56502,56875,58202,172368,164856,175766,166551,166626,166300,165151,165152,187719,187441,102199,176018,176013,173138,171626,177453,179376,174601,170208,171598,177170,173811,175346,99773,163497,169605,176068,176027,169780,172207,176149,176002,170157,179163,178643,178645,179692,179373,171977,179114,178359,178354,178353,177899,178376,178357,178356,180440,178138,177508,177175,163144,183173,175012,175951,157824,175698,176316,113329,180633,179148,179073,179068,179377,176172,178033,176319,178646,179106,177912,177918,177909,179146,178227,178011,178007,178005,177226,176145,174182,178055,178127,178091,175940,114590,170824,175289,172925,170826,170825,162804,173640,177938,175961,180723,170827,170819,180730,177506,180724,178387,179973,70528,176170,178450,176308,172146,177525,177929,180358,177915,175882,180347,179145,177900,58959,175771,99425,168484,168483,168482,173322,173321,173320,173315,162035,162044,173786,173838,173785,165056,161490,161469,161488,166669,161512,161511,161482,161480,161448,168215,172825,173027,165877,165876,165833,165848,165858,165845,168858,166682,155641,166285,165104,172298,173416,166553,157785,166702,166556,166555,166558,166557,166538,166533,157640,164575,158165,164576)) OR (`Idx`=19 AND `CreatureID` IN (176018,176068,176027,175698)) OR (`Idx`=18 AND `CreatureID` IN (176018,176068,176027,175698)) OR (`Idx`=17 AND `CreatureID` IN (176018,176068,176027,175698)) OR (`Idx`=16 AND `CreatureID` IN (176018,176068,176027,175698)) OR (`Idx`=15 AND `CreatureID` IN (176018,176068,176027,175698)) OR (`Idx`=14 AND `CreatureID` IN (176018,176068,176027,175698)) OR (`Idx`=13 AND `CreatureID` IN (176018,176068,176027,175698)) OR (`Idx`=12 AND `CreatureID` IN (176018,176068,176027,175698)) OR (`Idx`=11 AND `CreatureID` IN (176018,176068,176027,175698)) OR (`Idx`=10 AND `CreatureID` IN (176018,176068,176027,175698)) OR (`Idx`=9 AND `CreatureID` IN (176018,176068,176027,175698)) OR (`Idx`=8 AND `CreatureID` IN (176018,176068,176027,175698)) OR (`Idx`=7 AND `CreatureID` IN (176018,176068,176027,175698,162035,162044,161469,161480,161448,157785)) OR (`Idx`=6 AND `CreatureID` IN (176018,176068,176027,175698,162035,162044,161469,161480,161448,157785)) OR (`Idx`=5 AND `CreatureID` IN (176018,176068,176027,175698,162035,162044,161469,161480,161448,157785)) OR (`Idx`=4 AND `CreatureID` IN (176018,176068,176027,175698,162035,162044,161469,161480,161448,157785)) OR (`Idx`=32 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=31 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=30 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=29 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=28 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=27 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=26 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=25 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=24 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=23 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=22 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=21 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=20 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=34 AND `CreatureID`=175698) OR (`Idx`=33 AND `CreatureID`=175698);
UPDATE `creature_template_model` SET `DisplayScale`=0.649999976158142089, `Probability`=99, `VerifiedBuild`=46597 WHERE (`CreatureID`=176453 AND `Idx`=0); -- Beast
UPDATE `creature_template_model` SET `DisplayScale`=3, `VerifiedBuild`=46597 WHERE (`CreatureID`=177427 AND `Idx`=0); -- The Mass of Souls
UPDATE `creature_template_model` SET `DisplayScale`=2, `VerifiedBuild`=46597 WHERE (`CreatureID`=177527 AND `Idx`=0); -- Soulrot Apparition
UPDATE `creature_template_model` SET `DisplayScale`=1.5, `VerifiedBuild`=46597 WHERE (`CreatureID`=166679 AND `Idx`=0); -- Hopecrusher
UPDATE `creature_template_model` SET `DisplayScale`=1.60000002384185791, `VerifiedBuild`=46597 WHERE (`CreatureID`=166292 AND `Idx`=0); -- Bog Beast


UPDATE `creature_questitem` SET `VerifiedBuild`=46597 WHERE (`Idx`=1 AND `CreatureEntry` IN (165152,169780,170157,161511,166679,166292)) OR (`Idx`=0 AND `CreatureEntry` IN (165152,170208,169605,169780,172207,170157,157824,177918,178055,176170,161469,161488,161511,161480,161448,166679,166292,157785,158165)) OR (`Idx`=2 AND `CreatureEntry`=170157);

DELETE FROM `gameobject_template` WHERE `entry`=349808;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(349808, 10, 14519, 'Vulca\'s Glazier Toolkit', 'questinteract', '', '', 1, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 324715, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 56965, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 46597); -- Vulca's Glazier Toolkit

UPDATE `gameobject_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (352520, 212899, 214629, 364498, 349900, 368259, 361390, 358456, 367761, 364943, 367966, 368237, 368288, 355960, 364883, 345442, 368238, 368253, 352083, 369879, 361389, 353635, 339728, 364888, 349373, 357977, 338498, 349374, 353815, 368218, 353816, 364374, 357978, 344767, 352121, 352120, 352119, 358298, 358150, 358147, 357936, 351739, 339839, 364338, 349544, 349952, 352558, 349698, 349696, 334955, 364488, 349616, 349699, 349621, 351939, 349630, 349629, 349625, 349623, 349622, 349620, 349389, 349278);
UPDATE `gameobject_template` SET `name`='Rope', `VerifiedBuild`=46597 WHERE `entry`=214252; -- Corde
UPDATE `gameobject_template` SET `ContentTuningId`=263, `VerifiedBuild`=46597 WHERE `entry`=211284; -- Lever
UPDATE `gameobject_template` SET `name`='Signal Fire', `VerifiedBuild`=46597 WHERE `entry`=213507; -- Feu de signal
UPDATE `gameobject_template` SET `name`='Signal Flame', `VerifiedBuild`=46597 WHERE `entry`=211129; -- Flamme de signalement
UPDATE `gameobject_template` SET `Data1`=5743776, `VerifiedBuild`=46597 WHERE `entry`=212985; -- Doodad_GreatWall_Door_005
UPDATE `gameobject_template` SET `name`='Corner Piece C', `Data0`=0, `Data3`=0, `Data4`=0, `Data9`=0, `Data10`=0, `Data11`=0, `Data14`=0, `Data22`=0, `VerifiedBuild`=46597 WHERE `entry`=213198; -- Morceau du coin C
UPDATE `gameobject_template` SET `Data1`=5743776, `VerifiedBuild`=46597 WHERE `entry`=212982; -- Doodad_GreatWall_Door_001
UPDATE `gameobject_template` SET `Data1`=5701192, `VerifiedBuild`=46597 WHERE `entry`=211246; -- Doodad_VEB_greatDoorPhase_003
UPDATE `gameobject_template` SET `Data1`=5756548, `VerifiedBuild`=46597 WHERE `entry`=215379; -- Doodad_GreatWall_Door_001
UPDATE `gameobject_template` SET `name`='Corner A', `VerifiedBuild`=46597 WHERE `entry`=213200; -- Coin A
UPDATE `gameobject_template` SET `size`=1.10000002384185791, `Data1`=5756548, `VerifiedBuild`=46597 WHERE `entry`=214888; -- Doodad_GreatWall_Door_020
UPDATE `gameobject_template` SET `Data1`=5743776, `VerifiedBuild`=46597 WHERE `entry`=212984; -- Doodad_GreatWall_Door_004
UPDATE `gameobject_template` SET `name`='Courtyard Portcullis', `size`=1.484641551971435546, `Data1`=5749660, `VerifiedBuild`=46597 WHERE `entry`=214261; -- Herse de la cour
UPDATE `gameobject_template` SET `Data1`=5701192, `VerifiedBuild`=46597 WHERE `entry`=211245; -- Doodad_VEB_greatDoorPhase_001
UPDATE `gameobject_template` SET `Data1`=5743776, `VerifiedBuild`=46597 WHERE `entry`=212986; -- Doodad_GreatWall_Door_014
UPDATE `gameobject_template` SET `name`='Wall Corner B', `VerifiedBuild`=46597 WHERE `entry`=213199; -- Coin de mur B
UPDATE `gameobject_template` SET `Data1`=5756548, `VerifiedBuild`=46597 WHERE `entry`=214887; -- Doodad_GreatWall_Door_019
UPDATE `gameobject_template` SET `Data1`=5743776, `VerifiedBuild`=46597 WHERE `entry`=212983; -- Doodad_GreatWall_Door_002
UPDATE `gameobject_template` SET `Data1`=5756548, `VerifiedBuild`=46597 WHERE `entry`=215380; -- Doodad_GreatWall_Door_002
UPDATE `gameobject_template` SET `type`=6, `name`='Mantid Bomb', `Data6`=0, `Data7`=0, `Data15`=5793, `ContentTuningId`=263, `VerifiedBuild`=46597 WHERE `entry`=215757; -- Bombe mantide
UPDATE `gameobject_template` SET `Data5`=-1, `VerifiedBuild`=46597 WHERE `entry`=211291; -- Doodad_VEB_greatwall_elevator_003
UPDATE `gameobject_template` SET `Data5`=-1, `VerifiedBuild`=46597 WHERE `entry`=211013; -- Doodad_VEB_greatwall_elevator_002
UPDATE `gameobject_template` SET `name`='Crate', `VerifiedBuild`=46597 WHERE `entry`=349547; -- Ð¯Ñ‰Ð¸Ðº


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `GameObjectEntry` IN (364498,368253,358298)) OR (`Idx`=1 AND `GameObjectEntry`=358298);


UPDATE `world_quest` SET `value`=1 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `value`=1 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `value`=1 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `value`=1 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `value`=1 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `value`=1 WHERE `id`=59850; -- 59850


DELETE FROM `creature_equip_template` WHERE (`CreatureID`=156499 AND `ID`=1);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(156499, 1, 173724, 0, 0, 0, 0, 0, 0, 0, 0, 46597); -- Honored Hopebreaker

UPDATE `creature_equip_template` SET `VerifiedBuild`=46597 WHERE (`ID`=1 AND `CreatureID` IN (175766,157727,163970,156225,168944,156384,168945,162891,155682,176332,175714,176267,185406,185405,178646,177909,177915,173138,170157,157824,178643,177929,177918,177506,177899,178450,183173,164047,176198,162845,162829,61398,61433,61451,61338,61340,61337,61339,61243,61239,61392,65402,61389,61240,61216,61242,64243,61444,61947,61946,61445,61442,61884,61431,168980,167323,168680,157964,162849,175701,162844,176252,170774,58722,58875,59220,59467,58822,58823,59080,58757,59368,59614,59200,59184,178645,177508,178353,178356,176170,178227,175882,177900,177420,177131,177413,177134,177586,177404,177168,173717,177129,177135,173111,172523,172521,176001,176259,179692,177292,177450,180408,177228,187441,187696,178997,176169,176165,156671,178290,177136,178234,175912,178415,175664,172368)) OR (`ID`=2 AND `CreatureID`=177589);

DELETE FROM `areatrigger_template` WHERE (`IsServerSide`=0 AND `Id` IN (3051,21480,29928));
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(3051, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 46597),
(21480, 0, 0, 4, 20, 20, 0, 0, 0, 0, 0, 0, 46597),
(29928, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 46597);


UPDATE `areatrigger_template` SET `Type`=0, `Data0`=15, `Data1`=15, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=15, `Data1`=15, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=10, `Data1`=15 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=10, `Data1`=15 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=15, `Data1`=15, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=15, `Data1`=15, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `VerifiedBuild`=46597 WHERE (`IsServerSide`=0 AND `Id` IN (3020,27753,25068,25067,23820,3282,21554,3983,25065,25066,26070,29927,6870,25548,23556,27669,4744,27479,27690,27454,24455));


DELETE FROM `quest_offer_reward` WHERE `ID` IN (62869 /*Return Lost Souls*/, 63944 /*Korthia Awaits*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(62869, 0, 0, 0, 0, 0, 0, 0, 0, 'A very good collection of souls. Not too broken, not too drained, and not too innocent.\n\nNever fear. Their fate is better in our hands than the Jailer\'s.', 46597), -- Return Lost Souls
(63944, 1, 0, 0, 0, 0, 0, 0, 0, 'Ah, yes. Your anima is rather familiar.\n\nWe were wondering when you would arrive.', 46597); -- Korthia Awaits

UPDATE `quest_offer_reward` SET `VerifiedBuild`=46597 WHERE `ID` IN (63135, 63033);


UPDATE `quest_poi` SET `VerifiedBuild`=46597 WHERE (`QuestID`=60397 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60397 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60397 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61492 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=61492 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=61492 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61492 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61492 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59701 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59701 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59701 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60500 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60500 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60500 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63051 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63051 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63135 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61136 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66618 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66618 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63949 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63949 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63944 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63944 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63576 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63576 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63576 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60406 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=60406 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60406 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60406 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60460 AND `BlobIndex`=0 AND `Idx1`=8) OR (`QuestID`=60460 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=60460 AND `BlobIndex`=5 AND `Idx1`=6) OR (`QuestID`=60460 AND `BlobIndex`=4 AND `Idx1`=5) OR (`QuestID`=60460 AND `BlobIndex`=3 AND `Idx1`=4) OR (`QuestID`=60460 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=60460 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=60460 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60460 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62869 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62869 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61981 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61981 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61981 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60431 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=60431 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60431 AND `BlobIndex`=1 AND `Idx1`=0) OR (`QuestID`=63033 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63033 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62635 AND `BlobIndex`=0 AND `Idx1`=0);

UPDATE `quest_poi_points` SET `VerifiedBuild`=46597 WHERE (`QuestID`=60397 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60397 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60397 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61492 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=61492 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61492 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=61492 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=61492 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=61492 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=61492 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=61492 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=61492 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=61492 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61492 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61492 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59701 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59701 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60500 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60500 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60500 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63051 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63135 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61136 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66618 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66618 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63949 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63949 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63944 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63944 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63576 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63576 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63576 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60406 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=60406 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60406 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60406 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60460 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=60460 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=60460 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=60460 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=60460 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=60460 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=60460 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60460 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60460 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62869 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62869 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61981 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61981 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61981 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60431 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60431 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60431 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63033 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63033 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62635 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (60397 /*Aiding Maldraxxus*/, 31357 /*Relics of the Four Kings*/, 60406 /*Training in Bastion*/, 60460 /*Anima Salvage*/, 62869 /*Return Lost Souls*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(60397, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Aiding Maldraxxus
(31357, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Relics of the Four Kings
(60406, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Training in Bastion
(60460, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Anima Salvage
(62869, 1, 0, 0, 0, 0, 0, 0, 0, 46597); -- Return Lost Souls

UPDATE `quest_details` SET `VerifiedBuild`=46597 WHERE `ID` IN (61492, 59701, 60500, 63051, 63135, 63949, 63944, 63576);

DELETE FROM `quest_request_items` WHERE `ID` IN (63576 /*The First Move*/, 60460 /*Anima Salvage*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(63576, 0, 0, 0, 0, 'We will continue to fight.', 46597), -- The First Move
(60460, 0, 0, 0, 0, 'Have you brought the Anima Embers to us?', 0); -- Anima Salvage


DELETE FROM `creature_queststarter` WHERE (`id`=164738 AND `quest`=62869);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(164738, 62869, 46597); -- Return Lost Souls offered Tenaval

UPDATE `creature_queststarter` SET `VerifiedBuild`=46597 WHERE (`id`=165302 AND `quest`=60397) OR (`id`=161977 AND `quest`=61492) OR (`id`=158653 AND `quest`=59701) OR (`id`=168432 AND `quest`=63051) OR (`id`=64432 AND `quest`=31357) OR (`id`=177927 AND `quest`=63949) OR (`id`=164079 AND `quest`=63944) OR (`id`=164741 AND `quest`=60406) OR (`id`=164738 AND `quest`=60460);

DELETE FROM `creature_questender` WHERE (`id`=164738 AND `quest`=62869) OR (`id`=177927 AND `quest`=63944);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(164738, 62869, 46597), -- Return Lost Souls ended by Tenaval
(177927, 63944, 46597); -- Korthia Awaits ended by Tal-Galan


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (156499,179325,180947,172153,168432,73011,169425,175704,61946,64432,61947,61945,61432,63091,61431,61415,175347,64563,59480,59980,59213,179189,179192,177586,177589,179234,180251,180252,179072,180700)) OR (`DifficultyID`=2 AND `Entry` IN (61499,61398,61387,63092,38463,113831,101462,63808,61239,61679,61433,61451,61340,61337,61240,61338,61339,61216,63739,61242,64250,64243,61626,65402,61243,61392,61389,61550,61247,61449,61478,67231,61455,61447,61450,61444,61551,61549,64548,64547,61453,61445,61442,61884,63093,59316,59242,59220,58753,59711,58640));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(156499, 0, 0, 0, 1427, 46597),
(179325, 0, 0, 0, 181, 46597),
(180947, 0, 0, 0, 181, 46597),
(172153, 0, 0, 0, 371, 46597),
(168432, 0, 0, 0, 742, 46597),
(73011, 0, 0, 0, 371, 46597),
(169425, 0, 0, 0, 482, 46597),
(175704, 0, 1, 1, 2125, 46597),
(61499, 2, 3, 3, 2565, 46597),
(61398, 2, 2, 2, 2565, 46597),
(61387, 2, 0, 0, 2565, 46597),
(63092, 2, 0, 0, 2565, 46597),
(38463, 2, 0, 0, 1023, 46597),
(113831, 2, 0, 0, 354, 46597),
(101462, 2, 0, 0, 354, 46597),
(63808, 2, -2, -2, 2565, 46597),
(61239, 2, 1, 1, 2565, 46597),
(61679, 2, 0, 0, 2565, 46597),
(61433, 2, 3, 3, 2565, 46597),
(61451, 2, 3, 3, 2565, 46597),
(61340, 2, 1, 1, 2565, 46597),
(61337, 2, 1, 1, 2565, 46597),
(61240, 2, 1, 1, 2565, 46597),
(61338, 2, 1, 1, 2565, 46597),
(61339, 2, 1, 1, 2565, 46597),
(61216, 2, 1, 1, 2565, 46597),
(63739, 2, 0, 0, 2565, 46597),
(61242, 2, 1, 1, 2565, 46597),
(64250, 2, 3, 3, 2565, 46597),
(64243, 2, 0, 0, 2565, 46597),
(61626, 2, 2, 2, 2565, 46597),
(65402, 2, 0, 0, 2565, 46597),
(61243, 2, 2, 2, 2565, 46597),
(61392, 2, 0, 0, 2565, 46597),
(61389, 2, 0, 0, 2565, 46597),
(61550, 2, 0, 0, 2565, 46597),
(61247, 2, 0, 0, 2565, 46597),
(61449, 2, 0, 0, 2565, 46597),
(61478, 2, 3, 3, 2565, 46597),
(67231, 2, 2, 2, 2565, 46597),
(61455, 2, 0, 0, 2565, 46597),
(61447, 2, 0, 0, 2565, 46597),
(61450, 2, 0, 0, 2565, 46597),
(61444, 2, 2, 2, 2565, 46597),
(61551, 2, 0, 0, 2565, 46597),
(61549, 2, 0, 0, 2565, 46597),
(64548, 2, 0, 0, 2565, 46597),
(64547, 2, 0, 0, 2565, 46597),
(61453, 2, 1, 1, 2565, 46597),
(61445, 2, 2, 2, 2565, 46597),
(61442, 2, 2, 2, 2565, 46597),
(61884, 2, 2, 2, 2565, 46597),
(63093, 2, 3, 3, 2565, 46597),
(61946, 0, 0, 0, 2565, 46597),
(64432, 0, 3, 3, 2565, 46597),
(61947, 0, 0, 0, 2565, 46597),
(61945, 0, 0, 0, 2565, 46597),
(61432, 0, 0, 0, 2565, 46597),
(63091, 0, 0, 0, 2565, 46597),
(61431, 0, 0, 0, 2565, 46597),
(61415, 0, 0, 0, 2565, 46597),
(175347, 0, 0, 0, 742, 46597),
(59316, 2, 2, 2, 1187, 46597),
(59242, 2, 0, 0, 1187, 46597),
(59220, 2, 2, 2, 1187, 46597),
(58753, 2, 0, 0, 1187, 46597),
(59711, 2, 0, 0, 1187, 46597),
(58640, 2, 0, 0, 1187, 46597),
(64563, 0, 0, 0, 1187, 46597),
(59480, 0, 0, 0, 1187, 46597),
(59980, 0, 0, 0, 1187, 46597),
(59213, 0, 0, 0, 1187, 46597),
(179189, 0, 0, 0, 2043, 46597),
(179192, 0, 0, 0, 2043, 46597),
(177586, 0, 0, 0, 2043, 46597),
(177589, 0, 0, 0, 2043, 46597),
(179234, 0, 0, 0, 2432, 46597),
(180251, 0, 0, 0, 2043, 46597),
(180252, 0, 0, 0, 2043, 46597),
(179072, 0, 0, 0, 2043, 46597),
(180700, 0, 0, 0, 2043, 46597);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46597 WHERE (`DifficultyID`=0 AND `Entry` IN (175766,175770,61029,153897,173439,173390,115149,166553,165858,165845,165151,165152,175714,68845,176267,185406,185405,176197,175734,178643,174601,173149,173139,168980,173841,175857,175801,169656,116633,175804,163153,166077,172577,168978,162965,167323,174967,175425,174712,168680,168673,168602,179376,178212,179183,157964,174968,171272,58917,58662,59613,30298,58823,59481,58822,58664,54020,59982,59360,58875,59200,59193,58633,59929,59304,59359,59184,59375,50485,59503,45979,59614,59368,58757,171273,162844,177170,162849,175701,176103,167531,170774,154330,170305,171179,176198,176175,170864,168975,179402,162845,170306,176131,175821,169040,164047,175811,176252,175897,168977,162829,176027,169780,176068,178572,169605,169708,175713,179378,163373,169102,173811,170208,174962,170157,178646,176172,176145,178033,113329,157824,175698,179163,170824,44199,178251,178263,177443,178205,177422,177444,179219,177404,178211,177420,177413,177418,178270,179377,175705,174439,175722,178259,178202,173717,177681,177133,179207,177129,177135,179229,177130,179371,177137,177132,171896,177131,160785,177134,173111,173559,177168,171525,172523,176314,175818,173461,174158,176687,174182,173480,172814,175819,173460,160763,172846,172521,180208,159951,180483,180293,180182,180181,165343,179372,175910,175812,175890,175792,175790,175980,175999,176001,175849,173138,183173,175699,179226,175961,176259,175851,171977,170513,178645,176002,179114,179692,175882,180633,176316,177918,177909,179146,178359,176319,178353,178357,178138,163144,177508,178227,177175,178376,180440,178354,178356,178055,177226,179073,179148,177899,179068,179106,59262,114590,178127,178091,176149,178011,175940,178007,178005,175951,170826,172925,178823,162804,170825,173640,176308,180723,70528,170827,170819,177525,180730,177900,179373,177915,180724,179973,177938,177506,175012,178450,177929,179145,176170,178387,59271,178842,177179,177180,178802,177152,177158,177157,177156,179930,180413,177292,177293,178036,177951,180678,179693,180416,180350,177409,178120,177228,177155,177291,177927,180410,179029,180347,178845,178844,179929,178119,180358,177176,179321,177450,176673,59394,173931,180256,180408,187719,187441,156672,187696,178997,165379,176169,176165,156669,168353,156671,156696,156690,164367,164368,156667,156666,156694,156683,184055,173351,156681,175911,178290,177136,177141,178234,177138,176332,170153,175912,178415,178414,172368,175771)) OR (`DifficultyID`=2 AND `Entry` IN (73967,59167,59099,59100,58722,59153,66240,59230,59707,58635,59227,59080,59501,62731,59467));
UPDATE `creature_template_scaling` SET `ContentTuningID`=2432, `VerifiedBuild`=46597 WHERE (`DifficultyID`=0 AND `Entry` IN (180549,178958,179820,178959,179215));


UPDATE `creature_model_info` SET `VerifiedBuild`=46597 WHERE `DisplayID` IN (97802, 59802, 92505, 97148, 79406, 73706, 96351, 95952, 93611, 96086, 40006, 47635, 100265, 105325, 105324, 82235, 100024, 100305, 20317, 100301, 39810, 41233, 35408, 42197, 42195, 15880, 41921, 41919, 41917, 41922, 18657, 43546, 41920, 41984, 41982, 41923, 25204, 42059, 42061, 42060, 42058, 42065, 42062, 43544, 42063, 42448, 42054, 42868, 42053, 37916, 37923, 96148, 37928, 100307, 37925, 100071, 96293, 100295, 96839, 101341, 96840, 21072, 100069, 100068, 101286, 100309, 100289, 100300, 20320, 44918, 44919, 44922, 44920, 1200, 2676, 40824, 40308, 40272, 43162, 40307, 40309, 40707, 40635, 40233, 40322, 1418, 40256, 40634, 23257, 40678, 31171, 40762, 40753, 32183, 1141, 43884, 43885, 40743, 40271, 31379, 100313, 20316, 37914, 98436, 100292, 100310, 100308, 100304, 97075, 100312, 96337, 20322, 20323, 101324, 100298, 96145, 37920, 100311, 37913, 100035, 101411, 96558, 96556, 96152, 96557, 96146, 37927, 96150, 100299, 100293, 96151, 37921, 96147, 37915, 100303, 37924, 92726, 98598, 99189, 100270, 100288, 100297, 98529, 100188, 97186, 100290, 100302, 96861, 53291, 31304, 101346, 96210, 101900, 101740, 100772, 100771, 101288, 46710, 100844, 96862, 94391, 96899, 101291, 95546, 97837, 94392, 95949, 94390, 98511, 97077, 100296, 97068, 98490, 101552, 95749, 101285, 93213, 100020, 98070, 97314, 100012, 101292, 46268, 97315, 97326, 101337, 100712, 101336, 98176, 92415, 40657, 96174, 97086, 96175, 100066, 98159, 95004, 100403, 97386, 101294, 93645, 98538, 95479, 100033, 96173, 40658, 95686, 101767, 101768, 99773, 101497, 95528, 98534, 96604, 101182, 100572, 96666, 102164, 99771, 96007, 100735, 96006, 99065, 101765, 101158, 101157, 101186, 98158, 97421, 97029, 28039, 97423, 101766, 96580, 97422, 105558, 104817, 68476, 100886, 100263, 100264, 93594, 96422, 93576, 96328, 96331, 96326, 81646, 96332, 97487, 96423, 94101, 96329, 96084, 80015, 91636, 94122);
UPDATE `creature_model_info` SET `BoundingRadius`=0.186000004410743713, `CombatReach`=0.60000002384185791 WHERE `DisplayID`=18724;
UPDATE `creature_model_info` SET `BoundingRadius`=1.151068806648254394, `CombatReach`=1.80000007152557373 WHERE `DisplayID`=90426;
UPDATE `creature_model_info` SET `BoundingRadius`=0.300000011920928955, `CombatReach`=0, `VerifiedBuild`=46597 WHERE `DisplayID`=101290;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `CombatReach`=0, `VerifiedBuild`=46597 WHERE `DisplayID`=102004;
UPDATE `creature_model_info` SET `BoundingRadius`=0.372620314359664916, `CombatReach`=0.60000002384185791, `VerifiedBuild`=46597 WHERE `DisplayID`=99921;
UPDATE `creature_model_info` SET `CombatReach`=0, `VerifiedBuild`=46597 WHERE `DisplayID` IN (49289, 71859, 42955);
UPDATE `creature_model_info` SET `BoundingRadius`=1.218679666519165039, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=100524;
UPDATE `creature_model_info` SET `BoundingRadius`=4, `CombatReach`=10, `VerifiedBuild`=46597 WHERE `DisplayID`=43202;
UPDATE `creature_model_info` SET `BoundingRadius`=3, `CombatReach`=7.5, `VerifiedBuild`=46597 WHERE `DisplayID`=42064;
UPDATE `creature_model_info` SET `BoundingRadius`=2.768604040145874023, `CombatReach`=6, `VerifiedBuild`=46597 WHERE `DisplayID`=41987;
UPDATE `creature_model_info` SET `BoundingRadius`=0.195857137441635131, `CombatReach`=0.839387774467468261, `VerifiedBuild`=46597 WHERE `DisplayID`=4735;
UPDATE `creature_model_info` SET `BoundingRadius`=0.881546318531036376, `CombatReach`=1.299999952316284179, `VerifiedBuild`=46597 WHERE `DisplayID` IN (92412, 92411);
UPDATE `creature_model_info` SET `BoundingRadius`=0.100000001490116119, `VerifiedBuild`=46597 WHERE `DisplayID` IN (36542, 24001);
UPDATE `creature_model_info` SET `BoundingRadius`=0.411315023899078369, `CombatReach`=0.100000001490116119, `VerifiedBuild`=46597 WHERE `DisplayID`=92603;
UPDATE `creature_model_info` SET `BoundingRadius`=0.075000002980232238, `CombatReach`=0.75, `VerifiedBuild`=46597 WHERE `DisplayID`=96841;
UPDATE `creature_model_info` SET `BoundingRadius`=1.261326074600219726, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID`=98486;
UPDATE `creature_model_info` SET `BoundingRadius`=0.050000000745058059, `CombatReach`=0.5, `VerifiedBuild`=46597 WHERE `DisplayID` IN (96842, 96843);
UPDATE `creature_model_info` SET `BoundingRadius`=0.889330029487609863, `CombatReach`=3.75 WHERE `DisplayID`=96312;
UPDATE `creature_model_info` SET `BoundingRadius`=1.837084889411926269, `VerifiedBuild`=46597 WHERE `DisplayID`=31092;
UPDATE `creature_model_info` SET `BoundingRadius`=0.312000006437301635, `CombatReach`=2.25, `VerifiedBuild`=46597 WHERE `DisplayID` IN (42888, 42887, 42885);
UPDATE `creature_model_info` SET `BoundingRadius`=0.48639535903930664, `CombatReach`=0, `VerifiedBuild`=46597 WHERE `DisplayID`=44900;
UPDATE `creature_model_info` SET `BoundingRadius`=0.769475936889648437, `CombatReach`=0, `VerifiedBuild`=46597 WHERE `DisplayID`=44897;
UPDATE `creature_model_info` SET `BoundingRadius`=0.652419567108154296, `VerifiedBuild`=46597 WHERE `DisplayID`=10975;
UPDATE `creature_model_info` SET `BoundingRadius`=1.654032468795776367, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=3942;
UPDATE `creature_model_info` SET `BoundingRadius`=0.535499989986419677, `CombatReach`=2.625, `VerifiedBuild`=46597 WHERE `DisplayID`=43616;
UPDATE `creature_model_info` SET `BoundingRadius`=0.458999991416931152, `CombatReach`=2.25, `VerifiedBuild`=46597 WHERE `DisplayID` IN (43886, 100555);
UPDATE `creature_model_info` SET `BoundingRadius`=2, `CombatReach`=4, `VerifiedBuild`=46597 WHERE `DisplayID`=40301;
UPDATE `creature_model_info` SET `BoundingRadius`=2.888721942901611328, `VerifiedBuild`=46597 WHERE `DisplayID`=41167;
UPDATE `creature_model_info` SET `BoundingRadius`=0.25, `CombatReach`=0.5, `VerifiedBuild`=46597 WHERE `DisplayID`=43460;
UPDATE `creature_model_info` SET `BoundingRadius`=0.173611000180244445, `CombatReach`=0.75, `VerifiedBuild`=46597 WHERE `DisplayID`=40638;
UPDATE `creature_model_info` SET `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=9785;
UPDATE `creature_model_info` SET `BoundingRadius`=1.695281386375427246, `CombatReach`=2.5, `VerifiedBuild`=46597 WHERE `DisplayID`=100462;
UPDATE `creature_model_info` SET `BoundingRadius`=1.534618616104125976, `CombatReach`=2, `VerifiedBuild`=46597 WHERE `DisplayID`=92779;
UPDATE `creature_model_info` SET `BoundingRadius`=0.920771181583404541, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46597 WHERE `DisplayID`=92781;
UPDATE `creature_model_info` SET `BoundingRadius`=0.859344482421875, `CombatReach`=0.60000002384185791 WHERE `DisplayID`=94278;
UPDATE `creature_model_info` SET `BoundingRadius`=0.951351284980773925, `CombatReach`=2, `VerifiedBuild`=46597 WHERE `DisplayID`=93157;
UPDATE `creature_model_info` SET `BoundingRadius`=0.622908353805541992, `CombatReach`=0, `VerifiedBuild`=46597 WHERE `DisplayID`=100917;
UPDATE `creature_model_info` SET `BoundingRadius`=1.46945047378540039, `CombatReach`=0, `VerifiedBuild`=46597 WHERE `DisplayID`=101267;
UPDATE `creature_model_info` SET `BoundingRadius`=0.199750006198883056, `CombatReach`=0.85000002384185791, `VerifiedBuild`=46597 WHERE `DisplayID`=95579;
UPDATE `creature_model_info` SET `BoundingRadius`=4.045803070068359375, `CombatReach`=3.60000014305114746, `VerifiedBuild`=46597 WHERE `DisplayID`=97472;
UPDATE `creature_model_info` SET `BoundingRadius`=1.262747049331665039, `CombatReach`=2.099999904632568359, `VerifiedBuild`=46597 WHERE `DisplayID`=35372;
UPDATE `creature_model_info` SET `BoundingRadius`=0.983263254165649414, `CombatReach`=1.45000004768371582, `VerifiedBuild`=46597 WHERE `DisplayID`=92410;
UPDATE `creature_model_info` SET `BoundingRadius`=0.524599969387054443, `VerifiedBuild`=46597 WHERE `DisplayID`=91896;
UPDATE `creature_model_info` SET `BoundingRadius`=5.504601478576660156, `CombatReach`=0.300000011920928955, `VerifiedBuild`=46597 WHERE `DisplayID`=96113;
UPDATE `creature_model_info` SET `BoundingRadius`=0.513360023498535156, `CombatReach`=2.069999933242797851, `VerifiedBuild`=46597 WHERE `DisplayID`=56037;
UPDATE `creature_model_info` SET `BoundingRadius`=1.574368715286254882, `CombatReach`=7.5, `VerifiedBuild`=46597 WHERE `DisplayID`=100016;
UPDATE `creature_model_info` SET `BoundingRadius`=4.421457290649414062, `CombatReach`=7.200000286102294921, `VerifiedBuild`=46597 WHERE `DisplayID`=70087;
UPDATE `creature_model_info` SET `BoundingRadius`=7.3690948486328125, `CombatReach`=12, `VerifiedBuild`=46597 WHERE `DisplayID`=96790;
UPDATE `creature_model_info` SET `BoundingRadius`=4.844910621643066406, `CombatReach`=7.5, `VerifiedBuild`=46597 WHERE `DisplayID`=97777;
UPDATE `creature_model_info` SET `BoundingRadius`=1.256006956100463867, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID`=94397;
UPDATE `creature_model_info` SET `BoundingRadius`=0.839329779148101806, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=96225;
UPDATE `creature_model_info` SET `BoundingRadius`=3.348558902740478515, `VerifiedBuild`=46597 WHERE `DisplayID`=66495;
UPDATE `creature_model_info` SET `BoundingRadius`=1.5, `CombatReach`=6 WHERE `DisplayID`=94223;
UPDATE `creature_model_info` SET `BoundingRadius`=0.629891037940979003, `CombatReach`=2, `VerifiedBuild`=46597 WHERE `DisplayID`=96898;
UPDATE `creature_model_info` SET `BoundingRadius`=3.333333253860473632, `CombatReach`=0.880000054836273193, `VerifiedBuild`=46597 WHERE `DisplayID`=97275;
UPDATE `creature_model_info` SET `BoundingRadius`=1.250391960144042968, `CombatReach`=1.299999952316284179, `VerifiedBuild`=46597 WHERE `DisplayID`=92628;
UPDATE `creature_model_info` SET `BoundingRadius`=1.276655912399291992, `CombatReach`=1.049999952316284179, `VerifiedBuild`=46597 WHERE `DisplayID` IN (97087, 97084);
UPDATE `creature_model_info` SET `BoundingRadius`=1.507208466529846191, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46597 WHERE `DisplayID`=94399;
UPDATE `creature_model_info` SET `BoundingRadius`=1.356225132942199707, `CombatReach`=2, `VerifiedBuild`=46597 WHERE `DisplayID`=92416;
UPDATE `creature_model_info` SET `BoundingRadius`=1.399999976158142089, `VerifiedBuild`=46597 WHERE `DisplayID`=43178;
UPDATE `creature_model_info` SET `BoundingRadius`=0.376326769590377807, `VerifiedBuild`=46597 WHERE `DisplayID`=100426;
UPDATE `creature_model_info` SET `BoundingRadius`=1.150964021682739257, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=92780;
UPDATE `creature_model_info` SET `BoundingRadius`=2.629771947860717773, `CombatReach`=2.340000152587890625, `VerifiedBuild`=46597 WHERE `DisplayID`=96336;
UPDATE `creature_model_info` SET `BoundingRadius`=1.8840104341506958, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID` IN (96828, 94398);
UPDATE `creature_model_info` SET `BoundingRadius`=0.678112566471099853, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID` IN (92414, 92413);
UPDATE `creature_model_info` SET `BoundingRadius`=1.045915484428405761, `CombatReach`=1.320000052452087402, `VerifiedBuild`=46597 WHERE `DisplayID`=98550;
UPDATE `creature_model_info` SET `BoundingRadius`=1.417982339859008789, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46597 WHERE `DisplayID`=99134;
UPDATE `creature_model_info` SET `BoundingRadius`=0.57705998420715332, `VerifiedBuild`=46597 WHERE `DisplayID`=96348;
UPDATE `creature_model_info` SET `BoundingRadius`=1.34749603271484375, `CombatReach`=2.612499952316284179, `VerifiedBuild`=46597 WHERE `DisplayID`=100494;
UPDATE `creature_model_info` SET `BoundingRadius`=1.739405274391174316, `CombatReach`=2.40000009536743164, `VerifiedBuild`=46597 WHERE `DisplayID`=92676;
UPDATE `creature_model_info` SET `BoundingRadius`=1.167062759399414062, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID` IN (93241, 95630);
UPDATE `creature_model_info` SET `BoundingRadius`=0.528530061244964599, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46597 WHERE `DisplayID`=99208;
UPDATE `creature_model_info` SET `BoundingRadius`=0.687459588050842285, `VerifiedBuild`=46597 WHERE `DisplayID` IN (93747, 93751);
UPDATE `creature_model_info` SET `BoundingRadius`=0.592886686325073242, `CombatReach`=2.5 WHERE `DisplayID`=94426;
UPDATE `creature_model_info` SET `BoundingRadius`=0.550000011920928955, `CombatReach`=1.10000002384185791 WHERE `DisplayID`=93305;
UPDATE `creature_model_info` SET `BoundingRadius`=0.550000011920928955, `CombatReach`=1.10000002384185791, `VerifiedBuild`=46597 WHERE `DisplayID`=93306;
UPDATE `creature_model_info` SET `BoundingRadius`=0.274983853101730346, `VerifiedBuild`=46597 WHERE `DisplayID`=93753;
UPDATE `creature_model_info` SET `BoundingRadius`=0.961840033531188964, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID`=92627;
UPDATE `creature_model_info` SET `BoundingRadius`=1.181651949882507324, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID`=93631;
UPDATE `creature_model_info` SET `BoundingRadius`=2.159066200256347656, `CombatReach`=1.85000002384185791, `VerifiedBuild`=46597 WHERE `DisplayID`=95012;
UPDATE `creature_model_info` SET `BoundingRadius`=1.570008754730224609, `CombatReach`=1.25, `VerifiedBuild`=46597 WHERE `DisplayID`=96827;
UPDATE `creature_model_info` SET `BoundingRadius`=1.266006827354431152, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=92534;
UPDATE `creature_model_info` SET `BoundingRadius`=1.024705886840820312, `CombatReach`=1.65000009536743164, `VerifiedBuild`=46597 WHERE `DisplayID`=94757;
UPDATE `creature_model_info` SET `BoundingRadius`=1.02530837059020996, `CombatReach`=2.25, `VerifiedBuild`=46597 WHERE `DisplayID`=96505;
UPDATE `creature_model_info` SET `BoundingRadius`=0.873729169368743896, `CombatReach`=1.60000002384185791, `VerifiedBuild`=46597 WHERE `DisplayID`=100363;
UPDATE `creature_model_info` SET `BoundingRadius`=1.140998721122741699, `CombatReach`=1.440000057220458984, `VerifiedBuild`=46597 WHERE `DisplayID`=98547;
UPDATE `creature_model_info` SET `BoundingRadius`=0.398678779602050781, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46597 WHERE `DisplayID`=100015;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `CombatReach`=1 WHERE `DisplayID`=94282;
UPDATE `creature_model_info` SET `BoundingRadius`=1.049162149429321289, `CombatReach`=1.875, `VerifiedBuild`=46597 WHERE `DisplayID`=101843;


DELETE FROM `gossip_menu` WHERE (`MenuID`=14490 AND `TextID`=1);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(14490, 1, 46597); -- 64432 (Sinan the Dreamer)

UPDATE `gossip_menu` SET `VerifiedBuild`=46597 WHERE (`MenuID`=25447 AND `TextID`=40157) OR (`MenuID`=26193 AND `TextID`=41573) OR (`MenuID`=26186 AND `TextID`=41566) OR (`MenuID`=26736 AND `TextID`=42519) OR (`MenuID`=26735 AND `TextID`=42518) OR (`MenuID`=26734 AND `TextID`=42517) OR (`MenuID`=26733 AND `TextID`=42516) OR (`MenuID`=25278 AND `TextID`=40584) OR (`MenuID`=26895 AND `TextID`=38847) OR (`MenuID`=14564 AND `TextID`=20587) OR (`MenuID`=27074 AND `TextID`=43180) OR (`MenuID`=27174 AND `TextID`=43331) OR (`MenuID`=25540 AND `TextID`=42393);


UPDATE `gossip_menu_addon` SET `VerifiedBuild`=46597 WHERE `MenuID`=25278;
DELETE FROM `gossip_menu_option` WHERE (`MenuID`=25540 AND `OptionID` IN (3,6,2)) OR (`MenuID`=25278 AND `OptionID`=3);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(25540, 3, 0, 'I have heard this tale before. |cFFFF0000<Skip ahead to Korthia.>|r', 0, 0, 0, 0, 0, 0, 'Are you sure? This action cannot be undone.', 206987, 46597), -- BoxBroadcastTextID: 206987 - 206987
(25540, 6, 0, '<Stay awhile and listen.>', 137786, 0, 0, 0, 0, 0, NULL, 0, 46597), -- OptionBroadcastTextID: 137786 - 137786 - 144263 - 144263 - 160761 - 160761 - 160763 - 160763 - 160765 - 160765 - 160768 - 160768 - 167552 - 167552 - 173473 - 173473 - 176737 - 176737 - 188459 - 188459 - 202026 - 202026 - 205118 - 205118 - 205774 - 205774
(25540, 2, 0, 'I have been to Torghast before and met the Runecarver. |cFFFF0000<Skip ahead to finish the Torghast chapter and have Torghast, Ve\'nari, and the Runecarver unlocked.>|r', 0, 0, 0, 0, 0, 0, 'Are you sure? This action cannot be undone.', 206987, 46597), -- BoxBroadcastTextID: 206987 - 206987
(25278, 3, 1, 'What do you have to trade?', 0, 0, 0, 0, 0, 0, NULL, 0, 46597);


UPDATE `gossip_menu_option` SET `ActionMenuID`=0, `VerifiedBuild`=46597 WHERE (`MenuID`=26734 AND `OptionID`=1);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=46597 WHERE (`MenuID`=26736 AND `OptionID`=0) OR (`MenuID`=25540 AND `OptionID` IN (5,4)) OR (`MenuID`=26734 AND `OptionID` IN (3,2)) OR (`MenuID`=26895 AND `OptionID`=0) OR (`MenuID`=27074 AND `OptionID`=0);
UPDATE `gossip_menu_option` SET `VerifiedBuild`=46597 WHERE (`OptionID`=0 AND `MenuID` IN (26734,26735,26733));


UPDATE `quest_template` SET `VerifiedBuild`=46597 WHERE `ID` IN (65105, 61492, 65349, 64771, 65064, 63135, 60397, 59601, 63793, 63789, 65232, 63950, 61791, 65265, 61870, 65255, 61879, 43474, 58144, 61948, 53159, 59703, 59852, 33137, 32175, 42597, 33228, 33161, 31809, 31824, 66243, 65661, 60430, 49135, 49076, 47727, 35321, 59007, 65024, 27448, 40329, 61984, 26943, 10277, 65674, 65353, 65350, 64969, 60275, 58787, 57918, 56119, 35595, 66618, 64541, 59701, 63791, 63934, 63935, 64376, 64274, 63576, 62869, 61136, 61125, 60991, 61346, 64974, 62209, 63044, 60992, 60990, 61728, 62210, 45812, 61140, 59230, 58918, 61124, 62539, 61565, 59183, 62211, 59441, 59600, 61189, 59585, 59743, 61337, 60656, 61967, 60460, 60406, 61981, 60431, 63033, 62635);
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=63066; -- Sanctum Upgrade: Anima Conductor
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=63064; -- Sanctum Upgrade: Command Table
UPDATE `quest_template` SET `RewardBonusMoney`=370350 WHERE `ID`=60500;
UPDATE `quest_template` SET `RewardBonusMoney`=77150, `VerifiedBuild`=46597 WHERE `ID`=65749; -- The Necessity Of Equipment
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=63056; -- Sanctum Upgrade: Mirror Network
UPDATE `quest_template` SET `RewardBonusMoney`=30900, `VerifiedBuild`=46597 WHERE `ID`=63051; -- Trust Issues
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=63166; -- A Shadowed Fate
UPDATE `quest_template` SET `ContentTuningID`=290, `RewardCurrencyID1`=0, `RewardCurrencyQty1`=0, `VerifiedBuild`=46597 WHERE `ID`=53363; -- Arathi Donations: Drums of the Maelstrom
UPDATE `quest_template` SET `RewardCurrencyID1`=0, `RewardCurrencyQty1`=0, `VerifiedBuild`=46597 WHERE `ID`=53265; -- Arathi Donations: Gold
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=61103; -- Disrupting the Cycle
UPDATE `quest_template` SET `RewardBonusMoney`=2900, `Flags`=8, `VerifiedBuild`=46597 WHERE `ID`=31360; -- A New Lesson for the Master
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46597 WHERE `ID`=9802; -- Plants of Zangarmarsh
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46597 WHERE `ID`=9747; -- The Umbrafen Tribe
UPDATE `quest_template` SET `RewardBonusMoney`=3150, `VerifiedBuild`=46597 WHERE `ID`=9728; -- A Warm Welcome
UPDATE `quest_template` SET `RewardBonusMoney`=3150, `VerifiedBuild`=46597 WHERE `ID`=9730; -- Leader of the Darkcrest
UPDATE `quest_template` SET `RewardBonusMoney`=3150, `VerifiedBuild`=46597 WHERE `ID`=9817; -- Leader of the Bloodscale
UPDATE `quest_template` SET `RewardBonusMoney`=61750, `VerifiedBuild`=46597 WHERE `ID`=33222; -- Little Tommy Newcomer
UPDATE `quest_template` SET `RewardBonusMoney`=7700 WHERE `ID`=62738;
UPDATE `quest_template` SET `RewardBonusMoney`=825, `VerifiedBuild`=46597 WHERE `ID`=39581; -- Demonslayer of Tanaan
UPDATE `quest_template` SET `RewardBonusMoney`=2900, `VerifiedBuild`=46597 WHERE `ID`=31356; -- Deep Doubts, Deep Wisdom
UPDATE `quest_template` SET `RewardBonusMoney`=2900, `VerifiedBuild`=46597 WHERE `ID`=31355; -- Restoring Jade's Purity
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=62238; -- Soul Led Astray
UPDATE `quest_template` SET `RewardBonusMoney`=61750, `VerifiedBuild`=46597 WHERE `ID`=58856; -- Who Are You Fooling?
UPDATE `quest_template` SET `RewardBonusMoney`=92600, `VerifiedBuild`=46597 WHERE `ID`=58079; -- Favor: Pristine Dredbat Fang
UPDATE `quest_template` SET `RewardBonusMoney`=61750, `VerifiedBuild`=46597 WHERE `ID`=31902; -- Battle Pet Tamers: Eastern Kingdoms
UPDATE `quest_template` SET `Expansion`=9, `VerifiedBuild`=46597 WHERE `ID`=31889; -- Battle Pet Tamers: Kalimdor
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=65649; -- A New Deal
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=65625; -- The Jailer's Gauntlet
UPDATE `quest_template` SET `RewardBonusMoney`=61750, `Expansion`=9, `VerifiedBuild`=46597 WHERE `ID`=31728; -- Bill Buckler
UPDATE `quest_template` SET `RewardBonusMoney`=246900, `VerifiedBuild`=46597 WHERE `ID`=47253; -- The Originals
UPDATE `quest_template` SET `RewardBonusMoney`=300, `VerifiedBuild`=46597 WHERE `ID`=10296; -- The Black Morass
UPDATE `quest_template` SET `RewardBonusMoney`=246900, `VerifiedBuild`=46597 WHERE `ID`=60215; -- Doomwalkin' Has Come Knockin'
UPDATE `quest_template` SET `RewardBonusMoney`=61750, `VerifiedBuild`=46597 WHERE `ID`=31891; -- Battle Pet Tamers: Kalimdor
UPDATE `quest_template` SET `RewardBonusMoney`=493800 WHERE `ID`=62723;
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=62714; -- A Gift for an Acolyte
UPDATE `quest_template` SET `RewardBonusMoney`=3750, `VerifiedBuild`=46597 WHERE `ID`=38515; -- Nature Provides
UPDATE `quest_template` SET `RewardBonusMoney`=2900, `VerifiedBuild`=46597 WHERE `ID`=31357; -- Relics of the Four Kings
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46597 WHERE `ID`=29839; -- One of a Kind
UPDATE `quest_template` SET `RewardSpell`=368273, `VerifiedBuild`=46597 WHERE `ID`=65727; -- The Burrowed Bufonid
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `VerifiedBuild`=46597 WHERE `ID`=54922; -- The Nuts and Bolts of It
UPDATE `quest_template` SET `RewardBonusMoney`=92600, `VerifiedBuild`=46597 WHERE `ID`=62308; -- Mantle of Mastery
UPDATE `quest_template` SET `RewardBonusMoney`=115700, `VerifiedBuild`=46597 WHERE `ID`=60316; -- WANTED: Altered Sentinel
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=63179; -- Drowned and Torn Asunder
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=61079; -- The Jailer's Share
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=62917; -- Shared Souls
UPDATE `quest_template` SET `RewardBonusMoney`=30900, `VerifiedBuild`=46597 WHERE `ID`=60136; -- Into Torghast

DELETE FROM `quest_objectives` WHERE `ID` IN (397108 /*397108*/, 397129 /*397129*/, 397107 /*397107*/);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
(397108, 59852, 0, 2, 1, 166479, 1, 2, 0, 0, 'Get to the tea party on time!', 46597), -- 397108
(397129, 59852, 0, 1, 2, 166504, 1, 2, 0, 0, 'Lost teapot found', 46597), -- 397129
(397107, 59852, 0, 0, 0, 166478, 1, 0, 0, 0, 'Ask Gubbins and Tubbins to tell their story', 46597); -- 397107

UPDATE `quest_objectives` SET `VerifiedBuild`=46597 WHERE `ID` IN (422111, 406075, 406073, 409158, 423112, 421428, 421427, 421426, 421396, 423264, 422130, 422131, 423066, 422168, 422150, 409136, 409112, 398424, 396666, 396665, 396664, 396655, 396590, 419767, 420431, 420430, 420429, 419760, 420927, 420194, 422444, 420245, 406713, 409177, 422647, 406768, 422514, 422616, 422513, 422512, 422511, 422510, 406790, 341293, 393734, 393733, 393784, 341016, 406868, 340868, 396806, 396805, 396804, 396803, 405198, 405197, 268570, 256713, 260817, 260816, 260815, 260814, 261302, 260818, 261771, 270994, 270923, 269476, 270999, 270998, 270997, 270992, 270991, 270990, 270989, 270988, 270987, 268559, 268558, 268557, 268556, 269044, 269063, 424134, 407516, 398625, 398624, 398623, 398622, 398621, 398561, 398560, 396824, 396426, 396427, 269180, 269179, 269178, 269177, 269176, 293812, 293682, 290853, 269150, 269149, 269148, 269147, 269145, 395325, 280702, 423183, 423172, 407018, 290168, 290167, 290166, 397883, 269155, 269154, 269153, 269152, 269151, 408219, 268563, 268562, 268561, 268560, 258245, 423238, 422839, 422817, 422814, 423188, 423189, 423071, 423182, 423080, 422936, 398112, 389595, 390274, 407709, 407642, 398169, 427331, 409196, 421060, 405182, 396813, 419763, 420210, 420212, 420920, 420842, 420841, 419996, 405322, 408880, 405249, 405228, 405227, 405657, 421855, 421868, 421864, 421863, 421862, 421865, 421860, 421853, 421852, 421851, 421850, 407425, 409050, 405143, 406321, 406588, 407428, 288711, 288650, 405251, 396185, 395108, 405226, 407909, 406320, 396133, 407429, 396453, 405938, 396596, 396595, 396594, 396593, 396592, 396591, 405385, 405386, 407664, 396533, 396532, 396528, 396874, 396873, 396872, 396871, 405718, 405715, 405714, 405713, 405712, 405711, 405710, 405611, 404613, 404746, 404745, 404744, 404612, 404579, 404741, 404611, 404609, 404608, 404610, 407051, 407047, 407041, 406887, 398458, 398438, 406892, 398635, 398634, 398633, 398632, 398631, 398557, 398556, 408089);
UPDATE `quest_objectives` SET `Description`='Command Table activated', `VerifiedBuild`=46597 WHERE `ID`=409155; -- 409155
UPDATE `quest_objectives` SET `Description`='Demons Slain', `VerifiedBuild`=46597 WHERE `ID`=279696; -- 279696
UPDATE `quest_objectives` SET `Description`='Ride in Fiona\'s Caravan', `VerifiedBuild`=46597 WHERE `ID`=265709; -- 265709
UPDATE `quest_objectives` SET `Description`='Defeat Bill Buckler', `VerifiedBuild`=46597 WHERE `ID`=268953; -- 268953
UPDATE `quest_objectives` SET `Description`='Collect Foxflower', `VerifiedBuild`=46597 WHERE `ID`=278344; -- 278344

DELETE FROM `quest_visual_effect` WHERE (`ID`=397108 AND `Index` IN (1,0)) OR (`ID`=397129 AND `Index` IN (2,1,0)) OR (`ID`=397107 AND `Index` IN (1,0));
INSERT INTO `quest_visual_effect` (`ID`, `Index`, `VisualEffect`, `VerifiedBuild`) VALUES
(397108, 1, 15931, 46597),
(397108, 0, 14431, 46597),
(397129, 2, 15931, 46597),
(397129, 1, 15794, 46597),
(397129, 0, 14431, 46597),
(397107, 1, 15931, 46597),
(397107, 0, 14431, 46597);

UPDATE `quest_visual_effect` SET `VerifiedBuild`=46597 WHERE (`Index`=0 AND `ID` IN (406073,409158,409155,421428,421427,421426,421396,422131,423066,409136,409112,396665,396664,396655,396590,419767,422444,420245,406713,409177,422647,406768,422514,406790,393734,393733,393784,406868,396806,396805,396804,396803,270994,270923,269476,270999,270998,407516,396427,269180,269179,269178,269177,269176,269150,269149,269148,269147,269145,395325,407018,268953,269155,269154,269153,269152,269151,423071,407642,409196,405182,419763,420210,420212,419996,405322,405249,405228,405227,421855,421864,421863,421862,421860,421853,421852,421851,407425,409050,405143,406588,407428,288711,405251,396185,395108,405226,396133,407429,396453,396591,405385,405386,396532,396528,396874,396873,396872,396871,405611,404613,404612,404579,407051,407047,407041,406887,406892)) OR (`Index`=2 AND `ID` IN (396590,420245,396591,405385,396532,396528,405611,404612,404579)) OR (`Index`=1 AND `ID` IN (396590,420245,422647,393733,396806,396427,423071,396591,405385,396532,396528,396871,405611,404612,404579,407051,406887)) OR (`Index`=4 AND `ID` IN (396591,405611)) OR (`Index`=3 AND `ID` IN (396591,405385,396532,405611)) OR (`Index`=6 AND `ID`=405611) OR (`Index`=5 AND `ID`=405611);


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `QuestID` IN (65674,60136));


UPDATE `creature_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (156696, 179106, 170157, 179114, 179145, 179146, 179148, 170208, 179163, 179183, 179189, 174712, 179192, 179207, 179215, 179219, 179226, 179229, 179234, 170306, 165845, 165858, 116633, 179321, 179371, 179372, 179373, 179376, 179377, 179378, 179402, 174962, 174968, 170513, 175012, 166077, 184055, 179692, 179693, 170774, 170819, 170824, 170825, 170826, 170827, 170864, 179820, 175347, 175425, 179929, 179930, 179973, 166553, 171179, 59262, 59271, 175698, 175699, 175701, 180181, 175704, 180182, 175705, 175713, 175714, 175722, 180208, 157824, 175734, 171272, 171273, 175766, 175770, 175771, 180251, 180252, 180256, 175790, 175792, 59394, 175801, 175804, 175811, 175812, 45979, 180293, 175818, 175819, 175821, 175849, 175851, 175857, 180347, 157964, 180350, 180358, 175882, 175890, 175897, 175910, 175911, 175912, 180408, 180410, 180413, 180416, 175940, 175951, 175961, 180440, 175999, 176001, 176002, 171525, 180483, 113329, 176027, 176068, 180549, 176131, 176145, 176149, 180633, 176165, 176169, 176170, 176172, 176175, 176197, 176198, 180678, 180700, 162804, 180723, 180724, 180730, 176259, 162829, 176267, 162844, 162845, 167323, 162849, 153897, 176308, 176314, 176316, 176319, 176332, 171896, 162965, 185405, 185406, 171977, 1863, 167531, 113831, 163144, 163153, 176673, 176687, 154330, 163373, 172368, 73967, 172521, 172523, 172577, 177129, 177130, 177131, 177132, 177133, 177134, 177135, 177136, 177137, 177138, 177141, 177152, 177155, 177156, 177157, 177158, 177168, 177170, 177175, 177176, 177179, 177180, 177226, 177228, 114590, 177291, 172814, 177292, 177293, 168353, 172846, 168432, 181870, 172925, 177404, 177409, 177413, 177418, 177420, 177422, 61029, 177443, 177444, 177450, 164047, 177506, 177508, 177525, 168602, 101462, 177586, 173111, 177589, 173138, 173139, 173149, 168673, 168680, 177681, 164367, 164368, 115149, 173351, 159951, 173390, 177899, 177900, 177909, 177911, 177912, 177915, 173439, 177918, 177927, 177929, 168975, 168977, 168978, 168980, 173460, 177938, 173461, 177951, 173480, 70528, 182466, 169040, 178005, 178007, 178011, 178033, 178036, 173559, 178055, 169102, 178091, 173640, 178119, 178120, 178127, 178138, 173717, 178202, 178205, 178211, 178212, 178227, 178234, 178251, 178259, 178263, 178270, 173811, 178290, 173841, 178353, 178354, 178356, 178357, 178359, 178376, 178387, 173931, 178414, 178415, 178450, 187441, 44199, 169605, 178572, 165151, 165152, 169656, 174158, 178643, 178645, 178646, 174182, 169708, 160763, 160785, 183173, 169780, 187696, 187719, 165343, 178802, 165379, 178823, 178842, 178844, 178845, 156499, 174439, 178958, 178959, 178997, 179029, 156666, 156667, 156669, 156671, 156672, 156681, 179068, 156683, 179072, 179073, 156690, 156694);
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=170153; -- Lady Jaina Proudmoore
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=196283, `VerifiedBuild`=46597 WHERE `entry`=62731; -- Ice Wall
UPDATE `creature_template` SET `femaleName`='', `type_flags2`=150, `HealthModifier`=0.75, `CreatureDifficultyID`=61308, `VerifiedBuild`=46597 WHERE `entry`=67231; -- Trial of the King
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `type_flags`=2097224, `VerifiedBuild`=46597 WHERE `entry`=170305; -- Controller
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry` IN (179325, 180947); -- Doomwalker Trophy Stand
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=54020; -- General Purpose Bunny JMF (Look 2 - Flying, Huge AOI)
UPDATE `creature_template` SET `femaleName`='', `type_flags2`=117440518, `HealthModifier`=0.300000011920928955, `VerifiedBuild`=46597 WHERE `entry`=174967; -- Chaotic Riftstone
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `VerifiedBuild`=46597 WHERE `entry` IN (63091, 63092); -- Jade Quilen
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=63093; -- Jade Quilen Referee
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `unit_class`=8, `rank`=1, `type_flags2`=128, `HealthModifier`=20, `CreatureDifficultyID`=24947, `VerifiedBuild`=46597 WHERE `entry`=58633; -- Instructor Chillheart
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=24940, `VerifiedBuild`=46597 WHERE `entry`=58635; -- Antonidas' Self Help Guide to Standing in Fire
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=196281, `VerifiedBuild`=46597 WHERE `entry`=58640; -- Frigid Grasp
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `unit_class`=8, `CreatureDifficultyID`=196284, `VerifiedBuild`=46597 WHERE `entry`=58662; -- Instructor Chillheart's Phylactery Vehicle
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `unit_class`=8, `type_flags2`=128, `HealthModifier`=15, `CreatureDifficultyID`=24886, `VerifiedBuild`=46597 WHERE `entry`=58664; -- Instructor Chillheart's Phylactery
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `unit_class`=2, `type_flags2`=128, `HealthModifier`=30, `CreatureDifficultyID`=24771, `VerifiedBuild`=46597 WHERE `entry`=58722; -- Lilian Voss
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=196279, `VerifiedBuild`=46597 WHERE `entry`=58753; -- Arcane Bomb
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `unit_class`=8, `HealthModifier`=5, `CreatureDifficultyID`=24698, `VerifiedBuild`=46597 WHERE `entry`=58757; -- Scholomance Acolyte
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `HealthModifier`=8, `CreatureDifficultyID`=24568, `VerifiedBuild`=46597 WHERE `entry`=58822; -- Risen Guard
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `unit_class`=8, `HealthModifier`=3, `CreatureDifficultyID`=24561, `VerifiedBuild`=46597 WHERE `entry`=58823; -- Scholomance Neophyte
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `unit_class`=2, `CreatureDifficultyID`=24475, `VerifiedBuild`=46597 WHERE `entry`=58875; -- Darkmaster Gandling
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=196280, `VerifiedBuild`=46597 WHERE `entry`=58917; -- Book Spawn Target
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `unit_class`=2, `type_flags`=2147483752, `type_flags2`=128, `HealthModifier`=35, `CreatureDifficultyID`=24078, `VerifiedBuild`=46597 WHERE `entry`=59080; -- Darkmaster Gandling
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `CreatureDifficultyID`=24054, `VerifiedBuild`=46597 WHERE `entry`=59099; -- Fresh Test Subject
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `type_flags2`=128, `HealthModifier`=0.24115300178527832, `CreatureDifficultyID`=24048, `VerifiedBuild`=46597 WHERE `entry`=59100; -- Expired Test Subject
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `rank`=1, `type_flags2`=128, `HealthModifier`=30, `CreatureDifficultyID`=23945, `VerifiedBuild`=46597 WHERE `entry`=59153; -- Rattlegore
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=196275, `VerifiedBuild`=46597 WHERE `entry`=59167; -- Teleport Location
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `unit_class`=2, `rank`=1, `type_flags2`=128, `HealthModifier`=25, `CreatureDifficultyID`=23876, `VerifiedBuild`=46597 WHERE `entry`=59184; -- Jandice Barov
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `unit_class`=2, `HealthModifier`=4, `CreatureDifficultyID`=23856, `VerifiedBuild`=46597 WHERE `entry`=59193; -- Boneweaver
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `unit_class`=2, `rank`=1, `HealthModifier`=40, `CreatureDifficultyID`=23845, `VerifiedBuild`=46597 WHERE `entry`=59200; -- Lilian Voss
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=23802, `VerifiedBuild`=46597 WHERE `entry`=59213; -- Woven Boneguard
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `unit_class`=2, `HealthModifier`=0.699999988079071044, `CreatureDifficultyID`=23784, `VerifiedBuild`=46597 WHERE `entry`=59220; -- Jandice Barov
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=23761, `VerifiedBuild`=46597 WHERE `entry`=59227; -- Wander's Colossal Book of Shadow Puppets
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=23753, `VerifiedBuild`=46597 WHERE `entry`=59230; -- The Anarchist Arcanist
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=23718, `VerifiedBuild`=46597 WHERE `entry`=59242; -- Woven Boneguard
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=9, `CreatureDifficultyID`=57055, `VerifiedBuild`=46597 WHERE `entry`=63739; -- Quilen Statue
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=196364, `VerifiedBuild`=46597 WHERE `entry`=59304; -- Bone Pile
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=23588, `VerifiedBuild`=46597 WHERE `entry`=59316; -- Soulflame
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=63808; -- Faintly Glowing Gem
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `HealthModifier`=100, `CreatureDifficultyID`=23526, `VerifiedBuild`=46597 WHERE `entry`=59359; -- Flesh Horror
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=23521, `VerifiedBuild`=46597 WHERE `entry`=59360; -- Meat Graft
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `HealthModifier`=5, `CreatureDifficultyID`=23505, `VerifiedBuild`=46597 WHERE `entry`=59368; -- Krastinovian Carver
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=59375; -- Cosmetic Meat Pile
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `HealthModifier`=0.009999999776482582, `VerifiedBuild`=46597 WHERE `entry`=50485; -- Carrion Rat
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `unit_class`=2, `HealthModifier`=5, `ManaModifier`=9.293299674987792968, `CreatureDifficultyID`=23282, `VerifiedBuild`=46597 WHERE `entry`=59467; -- Candlestick Mage
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `HealthModifier`=0.5, `CreatureDifficultyID`=23263, `VerifiedBuild`=46597 WHERE `entry`=59480; -- Brittle Skeleton
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=59481; -- World Trigger
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=23216, `VerifiedBuild`=46597 WHERE `entry`=59501; -- Reanimated Corpse
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `HealthModifier`=0.5, `CreatureDifficultyID`=23211, `VerifiedBuild`=46597 WHERE `entry`=59503; -- Brittle Skeleton
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.800000011920928955, `VerifiedBuild`=46597 WHERE `entry`=175980; -- Cartel Ve Pathfinder
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=73011; -- Lil' Bling
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `unit_class`=2, `HealthModifier`=16.5, `movementId`=144, `CreatureDifficultyID`=22947, `VerifiedBuild`=46597 WHERE `entry`=59613; -- Professor Slate
UPDATE `creature_template` SET `HealthScalingExpansion`=4, `unit_class`=2, `HealthModifier`=4, `CreatureDifficultyID`=22942, `VerifiedBuild`=46597 WHERE `entry`=59614; -- Bored Student
UPDATE `creature_template` SET `femaleName`='', `type_flags2`=6, `VerifiedBuild`=46597 WHERE `entry`=176103; -- Wrath Controller
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=22754, `VerifiedBuild`=46597 WHERE `entry`=59707; -- The Anarchist Arcanist
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=196278, `VerifiedBuild`=46597 WHERE `entry`=59711; -- Arcane Bomb Chase
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.75, `movementId`=144, `CreatureDifficultyID`=57587, `VerifiedBuild`=46597 WHERE `entry`=64243; -- Glintrok Scout
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=64250; -- Beacon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=176252; -- Crucible Overseer
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=68845; -- Nexus Whelpling
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=196282, `VerifiedBuild`=46597 WHERE `entry`=59929; -- Ice Steps
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=64432; -- Sinan the Dreamer
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=22201, `VerifiedBuild`=46597 WHERE `entry`=59980; -- Meat Graft
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=22192, `VerifiedBuild`=46597 WHERE `entry`=59982; -- Meat Graft
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.75, `CreatureDifficultyID`=57934, `VerifiedBuild`=46597 WHERE `entry`=64547; -- Gurthan Scrapper
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.75, `CreatureDifficultyID`=57936, `VerifiedBuild`=46597 WHERE `entry`=64548; -- Kargesh Grunt
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=196274, `VerifiedBuild`=46597 WHERE `entry`=64563; -- Talking Skull
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=196273, `VerifiedBuild`=46597 WHERE `entry`=64683; -- Spirit of Lord Alexei Barov
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=172153; -- Mu'dud
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=38463; -- Empowering Orb Visual Stalker
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=6.75, `CreatureDifficultyID`=58955, `VerifiedBuild`=46597 WHERE `entry`=65402; -- Gurthan Swiftblade
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=13.5, `ManaModifier`=9.450799942016601562, `CreatureDifficultyID`=56177, `VerifiedBuild`=46597 WHERE `entry`=61216; -- Glintrok Hexxer
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=13.5, `ManaModifier`=9.450799942016601562, `CreatureDifficultyID`=56176, `VerifiedBuild`=46597 WHERE `entry`=61239; -- Glintrok Oracle
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=15.75, `CreatureDifficultyID`=56175, `VerifiedBuild`=46597 WHERE `entry`=61240; -- Glintrok Skulker
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=18, `CreatureDifficultyID`=56174, `VerifiedBuild`=46597 WHERE `entry`=61242; -- Glintrok Ironhide
UPDATE `creature_template` SET `femaleName`='', `rank`=1, `type_flags2`=128, `HealthModifier`=45, `CreatureDifficultyID`=56173, `VerifiedBuild`=46597 WHERE `entry`=61243; -- Gekkan
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.375, `CreatureDifficultyID`=56171, `VerifiedBuild`=46597 WHERE `entry`=61247; -- Glintrok Greenhorn
UPDATE `creature_template` SET `femaleName`='', `type_flags2`=128, `HealthModifier`=18, `CreatureDifficultyID`=56170, `VerifiedBuild`=46597 WHERE `entry`=61337; -- Glintrok Ironhide
UPDATE `creature_template` SET `femaleName`='', `type_flags2`=128, `HealthModifier`=15.75, `CreatureDifficultyID`=56169, `VerifiedBuild`=46597 WHERE `entry`=61338; -- Glintrok Skulker
UPDATE `creature_template` SET `femaleName`='', `type_flags2`=128, `HealthModifier`=13.5, `ManaModifier`=9.450799942016601562, `CreatureDifficultyID`=56168, `VerifiedBuild`=46597 WHERE `entry`=61339; -- Glintrok Oracle
UPDATE `creature_template` SET `femaleName`='', `type_flags2`=128, `HealthModifier`=13.5, `ManaModifier`=9.450799942016601562, `CreatureDifficultyID`=56167, `VerifiedBuild`=46597 WHERE `entry`=61340; -- Glintrok Hexxer
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=9, `CreatureDifficultyID`=56568, `VerifiedBuild`=46597 WHERE `entry`=61387; -- Quilen Guardian
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=12, `CreatureDifficultyID`=56566, `VerifiedBuild`=46597 WHERE `entry`=61389; -- Kargesh Highguard
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=6, `CreatureDifficultyID`=56567, `VerifiedBuild`=46597 WHERE `entry`=61392; -- Harthak Flameseeker
UPDATE `creature_template` SET `femaleName`='', `rank`=1, `type_flags2`=128, `HealthModifier`=50, `CreatureDifficultyID`=56565, `VerifiedBuild`=46597 WHERE `entry`=61398; -- Xin the Weaponmaster
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.75, `CreatureDifficultyID`=56165, `VerifiedBuild`=46597 WHERE `entry`=61415; -- Giant Cave Bat
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.75, `CreatureDifficultyID`=56164, `VerifiedBuild`=46597 WHERE `entry`=61431; -- Glintrok Scout
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.75, `CreatureDifficultyID`=56163, `VerifiedBuild`=46597 WHERE `entry`=61432; -- Glintrok Pillager
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=61433; -- Animated Staff
UPDATE `creature_template` SET `femaleName`='', `rank`=1, `type_flags2`=128, `HealthModifier`=30, `CreatureDifficultyID`=55832, `VerifiedBuild`=46597 WHERE `entry`=61442; -- Kuai the Brute
UPDATE `creature_template` SET `femaleName`='', `rank`=1, `type_flags2`=128, `HealthModifier`=33.75, `CreatureDifficultyID`=55833, `VerifiedBuild`=46597 WHERE `entry`=61444; -- Ming the Cunning
UPDATE `creature_template` SET `femaleName`='', `rank`=1, `type_flags2`=128, `HealthModifier`=33.75, `CreatureDifficultyID`=55834, `VerifiedBuild`=46597 WHERE `entry`=61445; -- Haiyan the Unstoppable
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=2.25, `CreatureDifficultyID`=55835, `VerifiedBuild`=46597 WHERE `entry`=61447; -- Gurthan Scrapper
UPDATE `creature_template` SET `HealthModifier`=2.25, `CreatureDifficultyID`=55836, `VerifiedBuild`=46597 WHERE `entry`=61449; -- Harthak Adept
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=2.25, `CreatureDifficultyID`=55837, `VerifiedBuild`=46597 WHERE `entry`=61450; -- Kargesh Grunt
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=61451; -- Animated Axe
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=15, `CreatureDifficultyID`=55838, `VerifiedBuild`=46597 WHERE `entry`=61453; -- Mu'Shiba
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.75, `CreatureDifficultyID`=55839, `VerifiedBuild`=46597 WHERE `entry`=61455; -- Gurthan Quilen
UPDATE `creature_template` SET `femaleName`='', `type_flags2`=134, `VerifiedBuild`=46597 WHERE `entry`=61478; -- Referee
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=61499; -- Ring of Fire
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.75, `CreatureDifficultyID`=55840, `VerifiedBuild`=46597 WHERE `entry`=61549; -- Gurthan Scrapper
UPDATE `creature_template` SET `HealthModifier`=0.75, `CreatureDifficultyID`=55841, `VerifiedBuild`=46597 WHERE `entry`=61550; -- Harthak Adept
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.75, `CreatureDifficultyID`=55842, `VerifiedBuild`=46597 WHERE `entry`=61551; -- Kargesh Grunt
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=61626; -- Whilring Dervish
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=30298; -- Invisible Stalker (Float, Uninteractible, LargeAOI)
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=6.75, `CreatureDifficultyID`=56564, `VerifiedBuild`=46597 WHERE `entry`=61679; -- Crossbow
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `CreatureDifficultyID`=60132, `VerifiedBuild`=46597 WHERE `entry`=66240; -- Antonidas' Self Help Guide to Standing in Fire
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=75, `CreatureDifficultyID`=55843, `VerifiedBuild`=46597 WHERE `entry`=61884; -- Xin the Weaponmaster
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=6, `CreatureDifficultyID`=55844, `VerifiedBuild`=46597 WHERE `entry`=61945; -- Gurthan Iron Maw
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=6.75, `CreatureDifficultyID`=55845, `VerifiedBuild`=46597 WHERE `entry`=61946; -- Harthak Stormcaller
UPDATE `creature_template` SET `femaleName`='', `type_flags`=2097224, `HealthModifier`=6.75, `CreatureDifficultyID`=55846, `VerifiedBuild`=46597 WHERE `entry`=61947; -- Kargesh Ribcrusher
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=174601; -- Grathalax Entry Stalker


UPDATE `creature_template_model` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `CreatureID` IN (175766,175770,61029,153897,173439,173390,115149,181870,182466,166553,165858,165845,156499,165151,165152,180947,179325,175714,172153,168432,68845,1863,73011,176267,185406,176197,185405,175734,178643,174601,175704,61499,61398,61387,63092,38463,113831,101462,63808,61679,61239,61451,61433,61340,61337,61240,61339,61338,63739,61216,61242,64250,64243,61626,65402,73967,61243,61392,61389,61550,61247,61449,61478,67231,61455,61447,61450,61551,61549,61444,64548,64547,61453,61445,61442,61884,63093,61946,61947,64432,61432,61945,61431,61415,63091,173149,173139,168980,173841,175857,175801,169656,116633,175804,163153,166077,172577,168978,167323,175425,174712,168680,168673,168602,179376,178212,179183,157964,171272,64683,59167,59099,59100,58722,59316,59153,59242,59220,58753,59711,66240,58635,59707,59230,59227,58640,59080,62731,59501,59467,59613,30298,54020,58917,59614,58757,59359,58875,45979,58664,59304,59980,59360,58633,59481,59929,59193,58822,58662,59982,59503,64563,59480,58823,59184,59200,59368,50485,59375,59213,171273,177170,175701,167531,154330,171179,176198,176175,170864,179402,168975,170306,162845,176131,175821,169040,164047,175811,175897,168977,162829,178572,176068,176027,169780,169605,169708,175713,179189,179192,179378,163373,169102,173811,170208,174962,170157,178646,176172,176145,178033,113329,175698,157824,179163,170824,44199,178251,178263,178205,177443,180549,177586,177589,179820,179234,178959,179215,177422,177444,179219,177404,178211,177420,177418,177413,178270,179377,175705,175722,174439,178259,178202,173717,177681,177133,179207,177135,177129,179229,177130,179371,177137,177132,177134,177131,171896,160785,173111,177168,173559,171525,172523,176314,175818,176687,175819,174182,174158,173480,173461,172814,173460,172846,160763,180252,180251,172521,180182,180181,180483,180293,180208,159951,179372,165343,175910,175890,175812,175792,175790,176001,175999,175980,175849,173138,183173,179226,175699,175961,176259,175851,171977,170513,178645,176002,179114,179692,175882,178958,176316,180633,177912,179146,178359,177918,177909,176319,163144,179148,178376,178354,178353,178138,177508,177175,180440,179073,179068,178357,178356,178227,178055,177899,177226,179106,178127,178091,178011,178007,178005,176149,175940,114590,59262,175951,178823,172925,170826,162804,170825,173640,59271,177938,177915,180723,170827,170819,180730,177506,180724,177525,179973,70528,175012,179373,176170,179072,178450,176308,177929,178387,179145,177900,178036,177951,177293,177292,180678,180413,179930,179693,178842,178802,177180,177179,177158,177157,177156,177152,180416,180350,177409,177911,180347,177228,177291,177176,179321,176673,178845,180408,180410,177450,59394,173931,179029,177155,177927,178120,180700,178844,179929,180256,180358,178119,187719,187441,187696,178997,176169,176165,165379,156672,164367,156696,168353,156690,156669,156671,164368,184055,156694,156683,156667,156666,173351,156681,178415,178414,178290,178234,177141,177138,177136,176332,175912,175911,170153,172368,175771)) OR (`Idx`=1 AND `CreatureID` IN (173439,165858,174601,61499,38463,63808,61679,61433,64250,61478,61455,63093,61945,169656,116633,168602,171272,59167,59099,59100,59220,58753,59711,58635,58640,62731,59501,59613,30298,54020,58917,59614,58757,45979,59980,59360,59481,59929,59193,58662,59982,58823,50485,59375,171273,177170,176103,170305,170306,175811,176068,176027,163373,113329,175698,179163,177420,177413,177133,179207,177135,177130,177134,177131,171525,176687,180483,180293,175890,175812,175961,171977,179114,176316,180633,177912,179146,177909,176319,163144,179148,177508,179073,179106,114590,180723,180730,177506,177525,70528,178450,176308,179145,180413,179693,180416,180350,177409,180347,177176,176673,180408,180410,177450,59394,173931,178120,180358,187696,184055,173351,177138,176332,172368)) OR (`Idx`=2 AND `CreatureID` IN (61455,61945,169656,171272,59099,59220,59614,59481,59193,58823,59375,171273,175811,176068,176027,175698,171525,177912,177909,177508,179106,177506,178450,180413,180416,180350,177409,177176,180408,173931,173351,177138,176332,172368)) OR (`Idx`=4 AND `CreatureID` IN (169656,176068,176027,175698,171525,180413,180350,177176,176332)) OR (`Idx`=3 AND `CreatureID` IN (169656,59099,59220,59193,59375,175811,176068,176027,175698,171525,177508,178450,180413,180416,180350,177409,177176,180408,173931,173351,177138,176332,172368)) OR (`Idx`=32 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=31 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=30 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=29 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=28 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=27 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=26 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=25 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=24 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=23 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=22 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=21 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=20 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=19 AND `CreatureID` IN (176068,176027,175698)) OR (`Idx`=18 AND `CreatureID` IN (176068,176027,175698,180413)) OR (`Idx`=17 AND `CreatureID` IN (176068,176027,175698,180413)) OR (`Idx`=16 AND `CreatureID` IN (176068,176027,175698,180413)) OR (`Idx`=15 AND `CreatureID` IN (176068,176027,175698,180413)) OR (`Idx`=14 AND `CreatureID` IN (176068,176027,175698,180413)) OR (`Idx`=13 AND `CreatureID` IN (176068,176027,175698,180413)) OR (`Idx`=12 AND `CreatureID` IN (176068,176027,175698,180413)) OR (`Idx`=11 AND `CreatureID` IN (176068,176027,175698,180413,176332)) OR (`Idx`=10 AND `CreatureID` IN (176068,176027,175698,180413,176332)) OR (`Idx`=9 AND `CreatureID` IN (176068,176027,175698,180413,176332)) OR (`Idx`=8 AND `CreatureID` IN (176068,176027,175698,180413,176332)) OR (`Idx`=7 AND `CreatureID` IN (176068,176027,175698,180413,176332)) OR (`Idx`=6 AND `CreatureID` IN (176068,176027,175698,180413,176332)) OR (`Idx`=5 AND `CreatureID` IN (176068,176027,175698,180413,177176,176332)) OR (`Idx`=34 AND `CreatureID`=175698) OR (`Idx`=33 AND `CreatureID`=175698);
UPDATE `creature_template_model` SET `DisplayScale`=0.100000001490116119, `VerifiedBuild`=46597 WHERE (`CreatureID`=175347 AND `Idx`=0); -- Calcification
UPDATE `creature_template_model` SET `DisplayScale`=1.5, `VerifiedBuild`=46597 WHERE (`CreatureID`=162965 AND `Idx`=0); -- Huwerath
UPDATE `creature_template_model` SET `DisplayScale`=0.75, `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `CreatureID` IN (174967,174968)); -- Chaotic Riftstone
UPDATE `creature_template_model` SET `DisplayScale`=2.5, `VerifiedBuild`=46597 WHERE (`CreatureID`=162844 AND `Idx`=0); -- Dath Rezara
UPDATE `creature_template_model` SET `DisplayScale`=2.5, `VerifiedBuild`=46597 WHERE (`CreatureID`=162849 AND `Idx`=0); -- Morguliax
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=46597 WHERE (`CreatureID`=176103 AND `Idx`=0); -- Wrath Controller
UPDATE `creature_template_model` SET `DisplayScale`=1.5, `VerifiedBuild`=46597 WHERE (`CreatureID`=170774 AND `Idx`=0); -- Eketra
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=46597 WHERE (`CreatureID`=170305 AND `Idx`=0); -- Controller
UPDATE `creature_template_model` SET `DisplayScale`=1.5, `VerifiedBuild`=46597 WHERE (`CreatureID`=176252 AND `Idx`=0); -- Crucible Overseer


UPDATE `creature_questitem` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `CreatureEntry` IN (182466,165152,167323,175425,168680,168673,171179,176198,176131,164047,178572,169780,169605,170208,170157,157824,173717,177133,177135,177129,177137,177134,177131,177918,178055,176170,177293,177292,177291,178997)) OR (`Idx`=1 AND `CreatureEntry` IN (165152,169780,170157)) OR (`Idx`=2 AND `CreatureEntry`=170157);

DELETE FROM `gameobject_template` WHERE `entry`=356555;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(356555, 10, 66265, 'Eurydea\'s Necklace', '', '', '', 1, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 337150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73557, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46597); -- Eurydea's Necklace

UPDATE `gameobject_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (357233, 357234, 357235, 214795, 212095, 214827, 214826, 214825, 214824, 214813, 214520, 213810, 214669, 214660, 214656, 214652, 214665, 214648, 214661, 214671, 214657, 214653, 214670, 214667, 214649, 214666, 214663, 214662, 214658, 214654, 214659, 214650, 214655, 214885, 214651, 214668, 214664, 369602, 248887, 212899, 175747, 364560, 354854, 368372, 368259, 361390, 364883, 358456, 369216, 253126, 369145, 368328, 369138, 369135, 369134, 369133, 369132, 369144, 368326, 350082, 352083, 356537, 364987, 365062, 367761, 368218, 349900, 364943, 355960, 368288, 367966, 368237, 345442, 369879, 368253, 368238, 361389, 353635, 339728, 364888, 349373, 357977, 338498, 349374, 353815, 353816, 364374, 357978, 344767, 368923, 369379, 368924, 368731, 368236, 353956, 368926, 368925, 368216, 368772, 370138, 357275, 357270, 353493, 368638, 353494, 367754, 352520);
UPDATE `gameobject_template` SET `Data1`=5749660, `VerifiedBuild`=46597 WHERE `entry`=213596; -- Doodad_PA_RoyalDoor_004
UPDATE `gameobject_template` SET `Data1`=5749660, `VerifiedBuild`=46597 WHERE `entry`=213594; -- Doodad_PA_RoyalDoor_002
UPDATE `gameobject_template` SET `Data1`=5749660, `VerifiedBuild`=46597 WHERE `entry`=213665; -- Doodad_PA_RoyalDoor_006
UPDATE `gameobject_template` SET `Data1`=5749660, `VerifiedBuild`=46597 WHERE `entry`=213593; -- Doodad_PA_RoyalDoor_001
UPDATE `gameobject_template` SET `Data1`=5749660, `VerifiedBuild`=46597 WHERE `entry`=213666; -- Doodad_PA_RoyalDoor_007
UPDATE `gameobject_template` SET `Data1`=5749660, `VerifiedBuild`=46597 WHERE `entry`=213597; -- Doodad_PA_RoyalDoor_005
UPDATE `gameobject_template` SET `Data1`=5749660, `VerifiedBuild`=46597 WHERE `entry`=213595; -- Doodad_PA_RoyalDoor_003
UPDATE `gameobject_template` SET `name`='Mogu Elevator', `VerifiedBuild`=46597 WHERE `entry`=212162; -- Ascenseur mogu
UPDATE `gameobject_template` SET `name`='Polyformic Acid Potion Highlight', `VerifiedBuild`=46597 WHERE `entry`=211670; -- Surbrillance de la potion d
UPDATE `gameobject_template` SET `castBarCaption`='Destroying', `Data3`=0, `VerifiedBuild`=46597 WHERE `entry`=214278; -- Kel'Thuzad's Deep Knowledge
UPDATE `gameobject_template` SET `name`='Polyformic Acid Potion', `IconName`='questinteract', `VerifiedBuild`=46597 WHERE `entry`=211669; -- Potion d
UPDATE `gameobject_template` SET `name`='Alchemy Bottle Blue', `VerifiedBuild`=46597 WHERE `entry`=211649; -- Bouteille d
UPDATE `gameobject_template` SET `type`=8, `Data0`=5708584, `Data2`=5622444, `Data4`=5708708, `VerifiedBuild`=46597 WHERE `entry`=210792; -- Doodad_UndeadCampFire30
UPDATE `gameobject_template` SET `name`='Iron Gate', `VerifiedBuild`=46597 WHERE `entry` IN (211261, 211262, 211259, 211256, 211260, 211257); -- Porte de fer
UPDATE `gameobject_template` SET `name`='Vault of Souls', `VerifiedBuild`=46597 WHERE `entry`=210781; -- Caveau des 
UPDATE `gameobject_template` SET `Data11`=1, `Data12`=0, `Data30`=86019, `VerifiedBuild`=46597 WHERE `entry`=211277; -- Coffer of Forgotten Souls
UPDATE `gameobject_template` SET `Data1`=5701192, `VerifiedBuild`=46597 WHERE `entry`=211258; -- ChillheartToJandice
UPDATE `gameobject_template` SET `type`=8, `Data0`=5708584, `Data2`=5622444, `Data4`=5708708, `VerifiedBuild`=46597 WHERE `entry`=210794; -- Doodad_UndeadCampFire32
UPDATE `gameobject_template` SET `type`=8, `Data0`=5708584, `Data2`=5622444, `Data4`=5708708, `VerifiedBuild`=46597 WHERE `entry`=210791; -- Doodad_UndeadCampFire29
UPDATE `gameobject_template` SET `castBarCaption`='Destroying', `Data3`=0, `VerifiedBuild`=46597 WHERE `entry`=214279; -- In the Shadow of the Light
UPDATE `gameobject_template` SET `Data1`=5708792, `VerifiedBuild`=46597 WHERE `entry`=210788; -- doodad_Vaultgate_bottom04
UPDATE `gameobject_template` SET `Data1`=5708792, `VerifiedBuild`=46597 WHERE `entry`=210785; -- doodad_Vaultgate_top01
UPDATE `gameobject_template` SET `castBarCaption`='Destroying', `Data3`=0, `VerifiedBuild`=46597 WHERE `entry`=214280; -- Forbidden Rites and other Rituals Necromantic
UPDATE `gameobject_template` SET `name`='Alchemy Bottle White', `VerifiedBuild`=46597 WHERE `entry`=211647; -- Bouteille d
UPDATE `gameobject_template` SET `Data1`=5708792, `VerifiedBuild`=46597 WHERE `entry`=210789; -- Doodad_Portcullis_to_TeleportBossroom
UPDATE `gameobject_template` SET `castBarCaption`='Destroying', `Data3`=0, `VerifiedBuild`=46597 WHERE `entry`=214277; -- The Dark Grimoire
UPDATE `gameobject_template` SET `Data1`=5708792, `VerifiedBuild`=46597 WHERE `entry`=210786; -- doodad_Vaultgate_top02
UPDATE `gameobject_template` SET `name`='Grandmaster Architect Holmberg', `VerifiedBuild`=46597 WHERE `entry`=214178; -- Grand ma
UPDATE `gameobject_template` SET `Data1`=5708792, `VerifiedBuild`=46597 WHERE `entry`=210783; -- doodad_Vaultgate_bottom05
UPDATE `gameobject_template` SET `type`=8, `Data0`=5708584, `Data2`=5622444, `Data4`=5708708, `VerifiedBuild`=46597 WHERE `entry`=210793; -- Doodad_UndeadCampFire31
UPDATE `gameobject_template` SET `Data1`=5708792, `VerifiedBuild`=46597 WHERE `entry`=210787; -- doodad_Vaultgate_top03
UPDATE `gameobject_template` SET `name`='Reinforced Wooden Door', `VerifiedBuild`=46597 WHERE `entry`=210771; -- Porte en bois renforc
UPDATE `gameobject_template` SET `Data1`=5708792, `VerifiedBuild`=46597 WHERE `entry`=210784; -- doodad_Vaultgate_bottom06
UPDATE `gameobject_template` SET `name`='Alchemy Bottle Green', `VerifiedBuild`=46597 WHERE `entry`=211648; -- Bouteille d
UPDATE `gameobject_template` SET `castBarCaption`='Collecting', `VerifiedBuild`=46597 WHERE `entry`=364992; -- Torn Page
UPDATE `gameobject_template` SET `castBarCaption`='Collecting', `VerifiedBuild`=46597 WHERE `entry`=364991; -- Torn Pages


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46597 WHERE (`Idx`=1 AND `GameObjectEntry` IN (357233,357234,357235)) OR (`Idx`=0 AND `GameObjectEntry` IN (357233,357234,357235,214827,214826,214825,214824,248887,364992,364991,368253));

DELETE FROM `page_text` WHERE `ID` IN (8136 /*8136*/, 8137 /*8137*/, 8147 /*8147*/, 8145 /*8145*/, 8133 /*8133*/, 8143 /*8143*/, 8141 /*8141*/);
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`, `PlayerConditionID`, `Flags`, `VerifiedBuild`) VALUES
(8136, 'This medallion was recovered by the Maw Walker and the Accuser while I was still trapped within the Maw. \n\nHow they overcame the might of the Fearstalker is a story worth hearing. Just do not have the Accuser tell it.', 0, 0, 0, 46597), -- 8136
(8137, 'Dominion.\n\nIt is a truth that for every one of those raised to venthyr, every soul that has expunged their past deeds and faced their burdens, there is a chance of remission. \n\nTo watch the watchers, to grant dominion over the dominating, there is the Medallion of Dominion. \n\nMay this medallion grant authority over venthyr who have succumbed to the very corruption they serve to exsanguinate.', 0, 0, 0, 46597), -- 8137
(8147, 'Wrath.\n\nThere is an energy to those souls fraught with wrath, rage, anger, and hate. This power goes beyond just the intensity of the anima that we cultivate, but gives a will to that power.\n\nAnd so shall be the Medallion of Wrath. Let this artifact grant authority over my Military Ward, where stone is made flesh and trained for battle. Where weapons might be forged to contain the ingenuity and anger of the souls that shall power them. \n\nLet us harness this sin so that it might allow us to carry out our noble purpose elsewhere.', 0, 0, 0, 46597), -- 8147
(8145, 'Desire.\n\nVenthyr are mostly loyal servants but they function best when properly motivated. Why choose this eternity if it does not come with appropriate rewards?\n\nAnd so I name the Medallion of Desire to grant authority to a venthyr to manage my court and their needs. \n\nAs well as collect a savory number of special souls that my most elite and trusted of children might enjoy. May this medallion allow this Harvester to grow the Castle Ward and the aspirations of its venthyr ever higher.', 0, 0, 0, 46597), -- 8145
(8133, 'Avarice.\n\nThis medallion bestows the wielder authority over the Catacombs Ward. There let those afflicted with this burden be sealed away until long after the time they believed they would be remembered. \n\nLet them fade away to be forgotten, the memory of their \"great deeds\" be measured against the unending weight of eternity.', 0, 0, 0, 46597), -- 8133
(8143, 'Pride.\n\nOf all the sins a soul can be burdened with, Pride is the most... delicious.\n\nIt presents the greatest challenge when trying to exsanguinate this burden from the souls that are sent to us. It takes time, ceremony, dedication.\n\nTo this end may the Medallion of Pride be forever upon the neck of only our most skillful and patient venthyr. \n\nMay it grant them authority over the Ceremony Ward so that they can use its vast power as an instrument to strip these souls of their burdens and fulfill our noble purpose.', 0, 0, 0, 46597), -- 8143
(8141, 'Envy.\n\nGreed, the festering need for what others possess. Such souls burdened with this must be forced to confront their needs and overcome it. May they exist in squalor and desperation until their need is shattered.\n\nSo shall there be the Village Ward. May the Medallion of Envy grant its Harvester authority over this dark Ward, forever in the shadow of Castle Nathria, forever within view of something greater that can never be achieved.', 0, 0, 0, 46597); -- 8141



UPDATE `scenario_poi` SET `VerifiedBuild`=46597 WHERE (`CriteriaTreeID`=36976 AND `BlobIndex`=0 AND `Idx1`=0);

DELETE FROM `world_quest` WHERE `id` IN (59852 /*59852*/, 60431 /*60431*/, 65265 /*65265*/, 65255 /*65255*/, 60397 /*60397*/, 60460 /*60460*/, 53363 /*53363*/, 43474 /*43474*/, 53265 /*53265*/, 63789 /*63789*/, 63791 /*63791*/, 60406 /*60406*/, 63179 /*63179*/, 61079 /*61079*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(59852, 86400, 19139, 1), -- 59852
(60431, 259200, 19333, 1), -- 60431
(65265, 86400, 21393, 1), -- 65265
(65255, 86400, 21403, 1), -- 65255
(60397, 259200, 19322, 1), -- 60397
(60460, 259200, 19339, 1), -- 60460
(53363, 86400, 16742, 1), -- 53363
(43474, 86400, 12221, 1), -- 43474
(53265, 86400, 16717, 1), -- 53265
(63789, 86400, 20769, 1), -- 63789
(63791, 86400, 20771, 1), -- 63791
(60406, 259200, 19325, 1), -- 60406
(63179, 86400, 20304, 2), -- 63179
(61079, 86400, 19681, 2); -- 61079

UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091

DELETE FROM `world_quest` WHERE `id` IN (63962 /*63962*/, 54329 /*54329*/, 54331 /*54331*/, 63785 /*63785*/, 63787 /*63787*/, 52958 /*52958*/, 54344 /*54344*/, 64080 /*64080*/, 64977 /*64977*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(63962, 86400, 20817, 1), -- 63962
(54329, 86400, 16717, 1), -- 54329
(54331, 86400, 16766, 1), -- 54331
(63785, 86400, 20788, 1), -- 63785
(63787, 86400, 20767, 1), -- 63787
(52958, 604800, 16007, 4), -- 52958
(54344, 86400, 16767, 1), -- 54344
(64080, 86400, 20788, 1), -- 64080
(64977, 86400, 21352, 1); -- 64977

UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091


UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=64617, `VerifiedBuild`=43345 WHERE (`MenuID`=25502 AND `OptionID`=8); -- OptionBroadcastTextID: 64617 - 64617
UPDATE `gossip_menu_option` SET `VerifiedBuild`=43345 WHERE (`MenuID`=25502 AND `OptionID` IN (0,19,3));
UPDATE `gossip_menu_option` SET `ActionMenuID`=26713, `VerifiedBuild`=43345 WHERE (`MenuID`=25502 AND `OptionID`=1);



DELETE FROM `world_quest` WHERE `id` IN (51051 /*51051*/, 53883 /*53883*/, 51009 /*51009*/, 52236 /*52236*/, 53335 /*53335*/, 53250 /*53250*/, 51765 /*51765*/, 51957 /*51957*/, 53253 /*53253*/, 51970 /*51970*/, 54016 /*54016*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(51051, 86400, 16098, 2), -- 51051
(53883, 25200, 16291, 1), -- 53883
(51009, 86400, 15966, 2), -- 51009
(52236, 86400, 15612, 2), -- 52236
(53335, 86400, 16717, 2), -- 53335
(53250, 86400, 16738, 1), -- 53250
(51765, 86400, 15492, 1), -- 51765
(51957, 86400, 15587, 1), -- 51957
(53253, 86400, 16725, 1), -- 53253
(51970, 86400, 15591, 1), -- 51970
(54016, 25200, 16291, 1); -- 54016


DELETE FROM `creature_equip_template` WHERE (`CreatureID`=27893 AND `ID`=2) OR (`CreatureID`=62171 AND `ID` IN (3,2,1)) OR (`CreatureID`=172539 AND `ID`=1);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(27893, 2, 53298, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Rune Weapon
(62171, 3, 89895, 0, 0, 89895, 0, 0, 0, 0, 0, 46597), -- Serpent Warrior
(62171, 2, 89901, 0, 0, 89901, 0, 0, 0, 0, 0, 46597), -- Serpent Warrior
(62171, 1, 89898, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Serpent Warrior
(172539, 1, 173725, 0, 0, 173725, 0, 0, 0, 0, 0, 46597); -- Darkwing Rebel

UPDATE `creature_equip_template` SET `VerifiedBuild`=46597 WHERE (`ID`=1 AND `CreatureID` IN (175766,175764,158165,164576,164575,162044,162035,166087,173243,165818,155682,162891,156225,168944,156384,168945,163970,56448,60578,64399,160351,161642,161648,161643,160277,159974,165651,159879,159978,160001,160010,159959,159972,159988,159881,160000,159963,159979,161618,160384,161619,161606,160282,161620,161623,160388,161605,161647,161609,161664,160281,161607,161645,161638,161636,161634,161635,163579,165940,165943,165941,165866,158989,165731,161448,172522,157727,172368));

DELETE FROM `areatrigger_template` WHERE (`IsServerSide`=0 AND `Id` IN (3152,30623));
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(3152, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 46597),
(30623, 0, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 46597);

UPDATE `areatrigger_template` SET `Type`=0, `Data0`=15, `Data1`=15, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=15, `Data1`=15, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `VerifiedBuild`=46597 WHERE (`IsServerSide`=0 AND `Id` IN (23979,25488,10133));
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=15, `Data1`=15, `Data2`=0, `Data3`=0, `Data4`=0, `Data5`=0 WHERE (`Id`=22070 AND `IsServerSide`=0);



DELETE FROM `conversation_line_template` WHERE `Id` IN (39248, 39247, 39633, 30177, 33896, 33895, 30176, 34655, 30173, 30172, 30171, 30189, 30188, 34953, 34952, 34951, 34647, 30404, 30403, 30180, 30179, 33897, 34780, 34779, 30183, 30182, 30181);
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(39248, 0, 0, 0, 46597),
(39247, 0, 0, 0, 46597),
(39633, 1462, 0, 0, 46597),
(30177, 0, 0, 0, 46597),
(33896, 0, 0, 0, 46597),
(33895, 0, 0, 0, 46597),
(30176, 0, 0, 0, 46597),
(34655, 0, 0, 0, 46597),
(30173, 0, 0, 0, 46597),
(30172, 0, 0, 0, 46597),
(30171, 0, 0, 0, 46597),
(30189, 0, 0, 0, 46597),
(30188, 0, 0, 0, 46597),
(34953, 0, 0, 0, 46597),
(34952, 0, 1, 0, 46597),
(34951, 0, 0, 0, 46597),
(34647, 1550, 0, 0, 46597),
(30404, 0, 1, 0, 46597),
(30403, 0, 0, 0, 46597),
(30180, 0, 0, 0, 46597),
(30179, 0, 0, 0, 46597),
(33897, 0, 0, 0, 46597),
(34780, 0, 0, 0, 46597),
(34779, 0, 0, 0, 46597),
(30183, 0, 0, 0, 46597),
(30182, 0, 0, 0, 46597),
(30181, 0, 0, 0, 46597);


DELETE FROM `quest_offer_reward` WHERE `ID`=60051;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(60051, 1, 0, 0, 0, 0, 0, 0, 0, 'Please do excuse my appearance. I assure you, this is not my normal attire.', 46597); -- A Master of Their Craft



DELETE FROM `quest_request_items` WHERE `ID`=59607;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(59607, 0, 0, 0, 0, 'Bad bat gon\' get smashed! Need ammo! Ammo in Dredhollow!', 0); -- Takin' Down the Beast



DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (115787,59726,56732,59552,59553,59149,56448,65317,56843,57109,56882,56874,56872,56871,56861,60578,56586,56873,59051,59555,59546,59547,59544,57080,59545,65362,59891,59598,62358,62249,56542,62171,59873,62231,58319,62229,65393,64399,56574,165889,172539,169330)) OR (`DifficultyID`=2 AND `Entry` IN (56792,56893,56762,56835,56816,56789,56439,26125,59262,59271,95072,78001,62360,56511,56658,27893));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(115787, 0, 0, 0, 371, 46597),
(56792, 2, 0, 0, 2565, 46597),
(56893, 2, 0, 0, 2565, 46597),
(56762, 2, 2, 2, 2565, 46597),
(56835, 2, 0, 0, 2565, 46597),
(56816, 2, 0, 0, 2565, 46597),
(56789, 2, 0, 0, 2565, 46597),
(56439, 2, 2, 2, 2565, 46597),
(26125, 2, 0, 0, 482, 46597),
(59262, 2, 0, 0, 482, 46597),
(59271, 2, 0, 0, 482, 46597),
(95072, 2, 0, 0, 482, 46597),
(78001, 2, 0, 0, 482, 46597),
(62360, 2, 0, 0, 2565, 46597),
(56511, 2, 0, 0, 2565, 46597),
(56658, 2, 0, 0, 2565, 46597),
(27893, 2, 0, 0, 482, 46597),
(59726, 0, 2, 2, 2565, 46597),
(56732, 0, 2, 2, 2565, 46597),
(59552, 0, 0, 0, 2565, 46597),
(59553, 0, 0, 0, 2565, 46597),
(59149, 0, 0, 0, 2565, 46597),
(56448, 0, 0, 0, 2565, 46597),
(65317, 0, 0, 0, 2565, 46597),
(56843, 0, 0, 0, 2565, 46597),
(57109, 0, 0, 0, 2565, 46597),
(56882, 0, 0, 0, 2565, 46597),
(56874, 0, 0, 0, 2565, 46597),
(56872, 0, 0, 0, 2565, 46597),
(56871, 0, 0, 0, 2565, 46597),
(56861, 0, 0, 0, 2565, 46597),
(60578, 0, 3, 3, 2565, 46597),
(56586, 0, 0, 0, 2565, 46597),
(56873, 0, 0, 0, 2565, 46597),
(59051, 0, 2, 2, 2565, 46597),
(59555, 0, 0, 0, 2565, 46597),
(59546, 0, 0, 0, 2565, 46597),
(59547, 0, 0, 0, 2565, 46597),
(59544, 0, 0, 0, 2565, 46597),
(57080, 0, 0, 0, 2565, 46597),
(59545, 0, 0, 0, 2565, 46597),
(65362, 0, 0, 0, 2565, 46597),
(59891, 0, 0, 0, 2565, 46597),
(59598, 0, 0, 0, 2565, 46597),
(62358, 0, 0, 0, 2565, 46597),
(62249, 0, 0, 0, 2565, 46597),
(56542, 0, 0, 0, 2565, 46597),
(62171, 0, 0, 0, 2565, 46597),
(59873, 0, 0, 0, 2565, 46597),
(62231, 0, 1, 1, 2565, 46597),
(58319, 0, 0, 0, 2565, 46597),
(62229, 0, 0, 0, 2565, 46597),
(65393, 0, 0, 0, 2565, 46597),
(64399, 0, 0, 0, 2565, 46597),
(56574, 0, 0, 0, 2565, 46597),
(165889, 0, 0, 0, 837, 46597),
(172539, 0, 0, 0, 1429, 46597),
(169330, 0, 0, 0, 746, 46597);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46597 WHERE (`DifficultyID`=0 AND `Entry` IN (175766,172046,172042,175764,158088,158424,158205,158228,169590,164390,164388,169591,170004,158165,164576,164575,165589,168483,173618,165509,165554,162109,165152,165151,165820,174228,166087,166132,166069,165821,158193,165830,165831,172092,157847,157846,173241,157869,173243,173242,165818,165817,173092,174844,166070,177555,169061,156275,165858,165845,170974,63420,164048,175782,161646,161642,174599,161648,161643,160277,174751,159974,159694,169608,169615,169613,169607,169610,169589,159695,169519,169609,159879,169611,169606,169576,165662,159978,160001,160010,159959,159972,159988,159881,160000,162294,159963,159979,161618,165651,160351,161619,161606,160282,161916,161620,161623,160388,165660,165658,161605,161647,161609,165165,161664,160281,161607,160384,160478,161645,161638,161636,161634,160348,161635,163674,163579,164242,164223,159441,165941,165940,165866,158989,165942,165943,165922,165865,165661,165732,165731,175471,161448,161482,172522,161235,165774,165780,173322,173321,173320,173315,160202,168482,168484,162044,162035,165781,160712,173439,173390,166143,172368)) OR (`DifficultyID`=2 AND `Entry` IN (53006,59764,73400));
UPDATE `creature_template_scaling` SET `ContentTuningID`=837 WHERE (`Entry`=161299 AND `DifficultyID`=0);

DELETE FROM `creature_model_info` WHERE `DisplayID`=90786;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(90786, 0.305999994277954101, 1.50000011920928955, 0, 46597);

UPDATE `creature_model_info` SET `VerifiedBuild`=46597 WHERE `DisplayID` IN (97802, 93363, 93557, 97173, 93446, 95500, 95499, 97811, 97808, 100710, 100712, 100711, 98058, 93611, 95220, 96127, 95218, 96126, 97443, 97664, 97944, 96974, 96345, 96952, 96173, 95952, 75083, 49242, 24995, 40657, 40658, 14511, 73371, 42031, 96323, 39065, 41677, 40884, 93006, 99890, 93987, 98979, 93696, 93664, 96128, 93994, 94987, 96676, 94001, 94004, 94623, 94629, 94012, 94616, 96703, 96704, 94009, 93988, 93997, 96026, 96044, 94321, 98036, 98033, 96046, 96045, 92999, 93000, 97990, 93031, 92998, 95925, 94519, 93677, 100405, 93616, 97148, 79406, 99938, 94444, 96007, 96508, 97693, 94959, 95732);
UPDATE `creature_model_info` SET `BoundingRadius`=0.162390187382698059, `CombatReach`=0.125, `VerifiedBuild`=46597 WHERE `DisplayID`=70068;
UPDATE `creature_model_info` SET `BoundingRadius`=2.282301902770996093, `CombatReach`=5.625 WHERE `DisplayID`=69223;
UPDATE `creature_model_info` SET `BoundingRadius`=0.733513593673706054, `CombatReach`=1.5 WHERE `DisplayID` IN (94090, 95993);
UPDATE `creature_model_info` SET `BoundingRadius`=3.125, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=97514;
UPDATE `creature_model_info` SET `BoundingRadius`=2.5, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46597 WHERE `DisplayID` IN (93105, 96125, 96122, 96123);
UPDATE `creature_model_info` SET `BoundingRadius`=6.632518291473388671, `CombatReach`=4.875, `VerifiedBuild`=46597 WHERE `DisplayID`=95710;
UPDATE `creature_model_info` SET `BoundingRadius`=2.70000004768371582, `CombatReach`=10.80000019073486328, `VerifiedBuild`=46597 WHERE `DisplayID`=94228;
UPDATE `creature_model_info` SET `BoundingRadius`=0.208027213811874389, `VerifiedBuild`=46597 WHERE `DisplayID`=40905;
UPDATE `creature_model_info` SET `BoundingRadius`=0.224034875631332397, `CombatReach`=0.595000028610229492 WHERE `DisplayID`=95580;
UPDATE `creature_model_info` SET `BoundingRadius`=1.18104565143585205, `CombatReach`=3.75 WHERE `DisplayID`=99148;
UPDATE `creature_model_info` SET `CombatReach`=0, `VerifiedBuild`=46597 WHERE `DisplayID`=30736;
UPDATE `creature_model_info` SET `BoundingRadius`=11.44631576538085937, `CombatReach`=11, `VerifiedBuild`=46597 WHERE `DisplayID`=39494;
UPDATE `creature_model_info` SET `BoundingRadius`=0.75, `CombatReach`=7.5, `VerifiedBuild`=46597 WHERE `DisplayID`=45980;
UPDATE `creature_model_info` SET `BoundingRadius`=1, `VerifiedBuild`=46597 WHERE `DisplayID`=30755;
UPDATE `creature_model_info` SET `BoundingRadius`=0.520833015441894531, `CombatReach`=2.25, `VerifiedBuild`=46597 WHERE `DisplayID` IN (39487, 39506, 42168, 42431);
UPDATE `creature_model_info` SET `BoundingRadius`=1.157271504402160644, `VerifiedBuild`=46597 WHERE `DisplayID`=39483;
UPDATE `creature_model_info` SET `BoundingRadius`=1.13999330997467041, `CombatReach`=2.25, `VerifiedBuild`=46597 WHERE `DisplayID`=40856;
UPDATE `creature_model_info` SET `BoundingRadius`=5.723157882690429687, `CombatReach`=5, `VerifiedBuild`=46597 WHERE `DisplayID`=40596;
UPDATE `creature_model_info` SET `BoundingRadius`=0.347222000360488891, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID` IN (42038, 40033, 40036, 41494, 40034, 42029, 42039, 45552, 42040, 40032, 45553, 42030, 43541);
UPDATE `creature_model_info` SET `BoundingRadius`=2, `CombatReach`=8, `VerifiedBuild`=46597 WHERE `DisplayID`=41125;
UPDATE `creature_model_info` SET `BoundingRadius`=1.511902809143066406, `CombatReach`=1.125, `VerifiedBuild`=46597 WHERE `DisplayID`=42170;
UPDATE `creature_model_info` SET `BoundingRadius`=2, `CombatReach`=2, `VerifiedBuild`=46597 WHERE `DisplayID`=39520;
UPDATE `creature_model_info` SET `BoundingRadius`=1.20000004768371582, `CombatReach`=0.5, `VerifiedBuild`=46597 WHERE `DisplayID`=39518;
UPDATE `creature_model_info` SET `BoundingRadius`=0.611119985580444335, `CombatReach`=2, `VerifiedBuild`=46597 WHERE `DisplayID`=40609;
UPDATE `creature_model_info` SET `BoundingRadius`=2.015870332717895507, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=40594;
UPDATE `creature_model_info` SET `BoundingRadius`=0.625, `CombatReach`=1.25, `VerifiedBuild`=46597 WHERE `DisplayID`=40907;
UPDATE `creature_model_info` SET `BoundingRadius`=0.556800007820129394, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46597 WHERE `DisplayID`=40855;
UPDATE `creature_model_info` SET `BoundingRadius`=1.71312570571899414, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=31460;
UPDATE `creature_model_info` SET `BoundingRadius`=0.312499791383743286, `CombatReach`=1.349999904632568359, `VerifiedBuild`=46597 WHERE `DisplayID` IN (40035, 42002);
UPDATE `creature_model_info` SET `BoundingRadius`=0.534159481525421142, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=40330;
UPDATE `creature_model_info` SET `BoundingRadius`=0.186000004410743713, `CombatReach`=0.60000002384185791, `VerifiedBuild`=46597 WHERE `DisplayID`=39442;
UPDATE `creature_model_info` SET `BoundingRadius`=1.786207795143127441, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=43999;
UPDATE `creature_model_info` SET `BoundingRadius`=1.151068806648254394, `CombatReach`=1.80000007152557373 WHERE `DisplayID`=90426;
UPDATE `creature_model_info` SET `BoundingRadius`=2.083333253860473632, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID`=94985;
UPDATE `creature_model_info` SET `BoundingRadius`=2.09375, `CombatReach`=1.004999995231628417, `VerifiedBuild`=46597 WHERE `DisplayID`=93085;
UPDATE `creature_model_info` SET `BoundingRadius`=2.291666746139526367, `CombatReach`=1.10000002384185791, `VerifiedBuild`=46597 WHERE `DisplayID`=93110;
UPDATE `creature_model_info` SET `BoundingRadius`=2.083333253860473632, `CombatReach`=1 WHERE `DisplayID` IN (94002, 94611);
UPDATE `creature_model_info` SET `BoundingRadius`=1.168537497520446777, `CombatReach`=0, `VerifiedBuild`=46597 WHERE `DisplayID`=94377;
UPDATE `creature_model_info` SET `BoundingRadius`=2.395833253860473632, `CombatReach`=1.149999976158142089 WHERE `DisplayID`=94621;
UPDATE `creature_model_info` SET `BoundingRadius`=0.592886686325073242, `CombatReach`=2.5 WHERE `DisplayID`=92622;
UPDATE `creature_model_info` SET `BoundingRadius`=0.60000002384185791, `CombatReach`=1.20000004768371582 WHERE `DisplayID` IN (97444, 96595);
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `CombatReach`=1 WHERE `DisplayID` IN (97436, 96111);
UPDATE `creature_model_info` SET `BoundingRadius`=2.073947668075561523, `CombatReach`=4.40000009536743164 WHERE `DisplayID`=93165;
UPDATE `creature_model_info` SET `BoundingRadius`=1.696866154670715332, `CombatReach`=3.599999904632568359 WHERE `DisplayID`=93160;
UPDATE `creature_model_info` SET `BoundingRadius`=3.285668134689331054, `CombatReach`=4.599999904632568359 WHERE `DisplayID`=94868;
UPDATE `creature_model_info` SET `CombatReach`=2 WHERE `DisplayID`=98038;
UPDATE `creature_model_info` SET `BoundingRadius`=5.101937294006347656, `CombatReach`=3.75 WHERE `DisplayID`=95706;
UPDATE `creature_model_info` SET `BoundingRadius`=3.333333253860473632, `CombatReach`=1.60000002384185791 WHERE `DisplayID`=93845;
UPDATE `creature_model_info` SET `BoundingRadius`=2.5, `CombatReach`=1.20000004768371582 WHERE `DisplayID`=94552;
UPDATE `creature_model_info` SET `BoundingRadius`=1.530753612518310546, `CombatReach`=1.259999990463256835 WHERE `DisplayID`=92702;
UPDATE `creature_model_info` SET `BoundingRadius`=1.700837254524230957, `CombatReach`=1.399999976158142089 WHERE `DisplayID`=92701;
UPDATE `creature_model_info` SET `BoundingRadius`=1.168537497520446777, `VerifiedBuild`=46597 WHERE `DisplayID`=97987;
UPDATE `creature_model_info` SET `BoundingRadius`=0.400000005960464477, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46597 WHERE `DisplayID` IN (97014, 94520);
UPDATE `creature_model_info` SET `BoundingRadius`=0.625, `CombatReach`=1.25 WHERE `DisplayID`=93672;
UPDATE `creature_model_info` SET `BoundingRadius`=0.613125324249267578, `CombatReach`=1.875 WHERE `DisplayID`=93511;
UPDATE `creature_model_info` SET `BoundingRadius`=0.315686762332916259, `CombatReach`=0.524999976158142089 WHERE `DisplayID`=95209;
UPDATE `creature_model_info` SET `BoundingRadius`=1.115922331809997558, `CombatReach`=1.399999976158142089 WHERE `DisplayID`=98203;


UPDATE `gossip_menu` SET `VerifiedBuild`=46597 WHERE (`MenuID`=25440 AND `TextID`=27251) OR (`MenuID`=25399 AND `TextID`=40083) OR (`MenuID`=6944 AND `TextID`=7778) OR (`MenuID`=25407 AND `TextID`=40092) OR (`MenuID`=25381 AND `TextID`=40034) OR (`MenuID`=25382 AND `TextID`=40035) OR (`MenuID`=25406 AND `TextID`=40091);
DELETE FROM `gossip_menu_option` WHERE (`MenuID`=25753 AND `OptionID`=0);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(25753, 0, 0, 'Collect Party Favors', 0, 0, 0, 0, 0, 0, NULL, 0, 46597);

UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=95541, `VerifiedBuild`=46597 WHERE (`MenuID`=25440 AND `OptionID`=0); -- OptionBroadcastTextID: 95541 - 95541 - 96633 - 96633 - 98823 - 98823
UPDATE `gossip_menu_option` SET `VerifiedBuild`=46597 WHERE (`OptionID`=0 AND `MenuID` IN (25382,6944,25406));


UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=181575; -- Drakks
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=115787; -- Bloodgazer Hatchling



UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=57880; -- An Estate Within the Old Gate
UPDATE `quest_template` SET `RewardBonusMoney`=92600, `VerifiedBuild`=46597 WHERE `ID`=57533; -- Light Punishment
UPDATE `quest_template` SET `RewardBonusMoney`=92600, `VerifiedBuild`=46597 WHERE `ID`=57571; -- Moving Mirrors
UPDATE `quest_template` SET `RewardBonusMoney`=92600, `VerifiedBuild`=46597 WHERE `ID`=57532; -- Foraging for Fragments
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=59343; -- Kindred Spirits
UPDATE `quest_template` SET `RewardBonusMoney`=30900, `VerifiedBuild`=46597 WHERE `ID`=60904; -- Medallion of Desire
UPDATE `quest_template` SET `RewardBonusMoney`=30900, `VerifiedBuild`=46597 WHERE `ID`=59719; -- The Court
UPDATE `quest_template` SET `RewardBonusMoney`=61750, `VerifiedBuild`=46597 WHERE `ID`=59711; -- Harvester of Envy
UPDATE `quest_template` SET `VerifiedBuild`=46597 WHERE `ID` IN (59607, 58374, 47606, 47594, 28068, 27919, 27471, 27470, 26943, 26761, 26353, 42421, 56119, 56499, 56087, 55081, 35327, 60092, 61125, 60991, 61346, 61791, 62209, 63044, 65265, 61870, 60992, 60990, 59643, 59789, 61728, 62210, 62241, 61140, 65255, 59230, 58918, 61124, 61879, 62539, 61565, 59601, 63793, 43474, 58144, 61948, 63789, 65232, 53159, 59703, 59183, 60574, 62211, 59680, 59441, 63950, 62635, 61981, 61492, 60460, 60431, 60397, 59701);
UPDATE `quest_template` SET `Expansion`=9, `VerifiedBuild`=46597 WHERE `ID`=63953; -- Korrak's Revenge
UPDATE `quest_template` SET `RewardBonusMoney`=30900, `VerifiedBuild`=46597 WHERE `ID`=60152; -- The Eternal City
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `VerifiedBuild`=46597 WHERE `ID`=56575; -- Once More Into Kor'vess
UPDATE `quest_template` SET `RewardBonusMoney`=470, `VerifiedBuild`=46597 WHERE `ID`=44034; -- Another Worthy Blade
UPDATE `quest_template` SET `RewardBonusMoney`=3750, `VerifiedBuild`=46597 WHERE `ID`=39953; -- Halls of Valor: Vision of Valor
UPDATE `quest_template` SET `RewardBonusMoney`=493800 WHERE `ID`=62723;
UPDATE `quest_template` SET `Expansion`=9, `VerifiedBuild`=46597 WHERE `ID`=31897; -- Grand Master Trixxy
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=63036; -- Restoring Balance
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46597 WHERE `ID`=29811; -- The Gatewatcher's Talisman
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46597 WHERE `ID`=29808; -- Don't Forget the Eggs!
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `Flags`=8, `VerifiedBuild`=46597 WHERE `ID`=29807; -- Death to the Traitor King
UPDATE `quest_template` SET `RewardBonusMoney`=246900, `VerifiedBuild`=46597 WHERE `ID`=47253; -- The Originals
UPDATE `quest_template` SET `RewardBonusMoney`=246900, `VerifiedBuild`=46597 WHERE `ID`=60215; -- Doomwalkin' Has Come Knockin'
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `VerifiedBuild`=46597 WHERE `ID`=58638; -- A Deeper Dive
UPDATE `quest_template` SET `RewardBonusMoney`=2350, `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=57873; -- Word from Orsis
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46597 WHERE `ID`=56574; -- Reflections in Amber
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46597 WHERE `ID`=56043; -- Send the Fleet
UPDATE `quest_template` SET `RewardBonusMoney`=2350, `VerifiedBuild`=46597 WHERE `ID`=53074; -- Reinforcements
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `VerifiedBuild`=46597 WHERE `ID`=51201; -- The Troll's Tale
UPDATE `quest_template` SET `RewardBonusMoney`=61750, `VerifiedBuild`=46597 WHERE `ID`=59676; -- Harvester of Desire
UPDATE `quest_template` SET `RewardBonusMoney`=61750, `VerifiedBuild`=46597 WHERE `ID`=59720; -- Harvester of Wrath
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=59708; -- Invitation for the Stonewright
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=59707; -- Invitation for the Tithelord
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=59706; -- Invitation for the Countess
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=62917; -- Shared Souls
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=63166; -- A Shadowed Fate
UPDATE `quest_template` SET `ContentTuningID`=290, `RewardCurrencyID1`=0, `RewardCurrencyQty1`=0, `VerifiedBuild`=46597 WHERE `ID`=53363; -- Arathi Donations: Drums of the Maelstrom
UPDATE `quest_template` SET `RewardCurrencyID1`=0, `RewardCurrencyQty1`=0, `VerifiedBuild`=46597 WHERE `ID`=53265; -- Arathi Donations: Gold
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=61103; -- Disrupting the Cycle
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=60051; -- A Master of Their Craft
UPDATE `quest_template` SET `RewardBonusMoney`=30900, `VerifiedBuild`=46597 WHERE `ID`=63051; -- Trust Issues
UPDATE `quest_template` SET `RewardBonusMoney`=370350 WHERE `ID`=60500;


UPDATE `quest_objectives` SET `VerifiedBuild`=46597 WHERE `ID` IN (393260, 392805, 392804, 392803, 392802, 392801, 392800, 396142, 392637, 392630, 392627, 392629, 392625, 392628, 392624, 405116, 396816, 396815, 396602, 420945, 397712, 407951, 397708, 397710, 397709, 397711, 395143, 395142, 394159, 391194, 391193, 391192, 291213, 290861, 290772, 280787, 269167, 262472, 262415, 284171, 290168, 290167, 290166, 397883, 390274, 394606, 393244, 393254, 394348, 393243, 391088, 391087, 391086, 390110, 340669, 335151, 396765, 396764, 396838, 397534, 405228, 405227, 405657, 406713, 409177, 407425, 409050, 422647, 406768, 405143, 406321, 396667, 397818, 396978, 396977, 396959, 396960, 396976, 406588, 407428, 407546, 407545, 407536, 407522, 407556, 407555, 407554, 407553, 407521, 405251, 422514, 422616, 422513, 422512, 422511, 422510, 396185, 395108, 405226, 406790, 407909, 406320, 396666, 396665, 396664, 396655, 396590, 419767, 341293, 393734, 393733, 393784, 341016, 406868, 420431, 420430, 420429, 419760, 420927, 420194, 422444, 340868, 396806, 396805, 396804, 396803, 396133, 398917, 398916, 407429, 405198, 405197, 396797, 396787, 396786, 396785, 396784, 396783, 396453, 420245, 409112, 408089, 406892, 406075, 406073, 398458, 398635, 398634, 398633, 398632, 398631, 398557, 398556, 398424, 396813);
UPDATE `quest_objectives` SET `Description`='Choose a second artifact to pursue', `VerifiedBuild`=46597 WHERE `ID`=286147; -- 286147
UPDATE `quest_objectives` SET `Description`='Odyn Defeated', `VerifiedBuild`=46597 WHERE `ID`=284242; -- 284242
UPDATE `quest_objectives` SET `Description`='Nerubian Scourge Eggs Destroyed', `VerifiedBuild`=46597 WHERE `ID`=262425; -- 262425


UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=165651; -- Stone Legion Security
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=165658; -- Cudgelface
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=165660; -- Darkhaven Carriage
UPDATE `creature_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (165661, 161235, 165731, 165732, 165774, 165780, 165781, 174751, 165817, 165818, 165821, 165830, 165831, 165845, 165858, 165865, 165866, 165889, 174844, 165922, 161448, 165940, 165941, 165942, 165943, 161482, 166069, 166070, 161605, 161606, 161607, 161609, 166087, 161618, 161619, 161620, 161623, 161634, 161635, 161636, 161638, 161642, 161643, 161645, 161646, 161647, 161648, 166132, 161664, 166143, 166196, 63420, 161916, 170974, 162035, 175471, 162044, 162109, 27893, 95072, 59262, 59271, 162277, 162294, 157846, 157847, 175766, 157869, 175782, 158088, 158165, 158205, 158227, 158228, 59764, 158424, 73400, 78001, 172368, 158989, 172499, 172522, 163579, 172539, 163674, 47319, 159441, 168482, 168483, 168484, 164048, 177555, 159694, 159695, 164223, 164242, 173241, 173242, 173243, 159879, 159881, 173315, 173320, 173321, 173322, 164383, 164388, 164390, 173390, 159959, 159963, 159972, 159974, 159978, 159979, 159988, 160000, 160001, 173439, 160010, 164575, 164576, 169061, 155668, 173618, 160202, 160277, 160281, 160282, 160348, 160351, 169330, 160384, 160388, 53006, 160478, 169519, 169576, 169589, 169590, 169591, 169606, 169607, 169608, 169609, 169610, 169611, 169613, 169615, 165151, 165152, 165165, 160712, 62229, 62231, 62249, 156275, 165509, 170004, 165554, 165589, 174599);
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=165662; -- The Countess
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=2.8125, `CreatureDifficultyID`=25497, `VerifiedBuild`=46597 WHERE `entry`=58319; -- Lesser Sha
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=161302; -- Darkwall Captive
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=165820; -- The Tithelord
UPDATE `creature_template` SET `femaleName`='', `type_flags2`=128, `HealthModifier`=25, `CreatureDifficultyID`=24148, `VerifiedBuild`=46597 WHERE `entry`=59051; -- Strife
UPDATE `creature_template` SET `femaleName`='', `family`=303, `VerifiedBuild`=46597 WHERE `entry`=59149; -- Wise Dragon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=175764; -- Chelra the Bladewall
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=5.625, `CreatureDifficultyID`=23112, `VerifiedBuild`=46597 WHERE `entry`=59544; -- The Nodding Tiger
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=6.75, `CreatureDifficultyID`=23106, `VerifiedBuild`=46597 WHERE `entry`=59545; -- The Golden Beetle
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=15, `ManaModifier`=7, `CreatureDifficultyID`=23101, `VerifiedBuild`=46597 WHERE `entry`=59546; -- The Talking Fish
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=6.75, `CreatureDifficultyID`=23096, `VerifiedBuild`=46597 WHERE `entry`=59547; -- Jiang
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=6.75, `CreatureDifficultyID`=23081, `VerifiedBuild`=46597 WHERE `entry`=59552; -- The Crybaby Hozen
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=6.75, `CreatureDifficultyID`=23076, `VerifiedBuild`=46597 WHERE `entry`=59553; -- The Songbird Queen
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=9.375, `CreatureDifficultyID`=23068, `VerifiedBuild`=46597 WHERE `entry`=59555; -- Haunting Sha
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=2.25, `CreatureDifficultyID`=22984, `VerifiedBuild`=46597 WHERE `entry`=59598; -- Lesser Sha
UPDATE `creature_template` SET `HealthModifier`=0.75, `VerifiedBuild`=46597 WHERE `entry`=158193; -- Manor Servant
UPDATE `creature_template` SET `femaleName`='', `type_flags2`=128, `HealthModifier`=25, `CreatureDifficultyID`=22712, `VerifiedBuild`=46597 WHERE `entry`=59726; -- Peril
UPDATE `creature_template` SET `femaleName`='', `type_flags`=2097160, `HealthModifier`=9.375, `CreatureDifficultyID`=22416, `VerifiedBuild`=46597 WHERE `entry`=59873; -- Corrupt Living Water
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=1.875, `CreatureDifficultyID`=22372, `VerifiedBuild`=46597 WHERE `entry`=59891; -- Fallen Jin'yu
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=64399; -- Master Windstrong
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry` IN (172042, 172046); -- Theotar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=172092; -- Messenger Eater
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=60578; -- Priestess Summerpetal
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=6.75, `CreatureDifficultyID`=58821, `VerifiedBuild`=46597 WHERE `entry`=65317; -- Xiang
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `HealthModifier`=15, `CreatureDifficultyID`=58888, `VerifiedBuild`=46597 WHERE `entry`=65362; -- Minion of Doubt
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=65393; -- East Temple - Corrupted Waters Stalker - MW
UPDATE `creature_template` SET `femaleName`='', `rank`=1, `type_flags2`=128, `HealthModifier`=50, `CreatureDifficultyID`=27983, `VerifiedBuild`=46597 WHERE `entry`=56439; -- Sha of Doubt
UPDATE `creature_template` SET `femaleName`='', `rank`=1, `type_flags`=2149580904, `type_flags2`=128, `HealthModifier`=37.5, `CreatureDifficultyID`=27966, `VerifiedBuild`=46597 WHERE `entry`=56448; -- Wise Mari
UPDATE `creature_template` SET `femaleName`='', `type_flags`=2097160, `HealthModifier`=9.375, `CreatureDifficultyID`=27851, `VerifiedBuild`=46597 WHERE `entry`=56511; -- Corrupt Living Water
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.75, `CreatureDifficultyID`=27800, `VerifiedBuild`=46597 WHERE `entry`=56542; -- Splash Stalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=56574; -- Firehose Target
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=56586; -- Fountain Stalker
UPDATE `creature_template` SET `femaleName`='', `type_flags`=2097160, `HealthModifier`=1.5, `CreatureDifficultyID`=27574, `VerifiedBuild`=46597 WHERE `entry`=56658; -- Corrupt Droplet
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `HealthModifier`=0.200000002980232238, `VerifiedBuild`=46597 WHERE `entry`=173092; -- Momo
UPDATE `creature_template` SET `femaleName`='', `rank`=1, `type_flags2`=128, `HealthModifier`=37.5, `CreatureDifficultyID`=27389, `VerifiedBuild`=46597 WHERE `entry`=56732; -- Liu Flameheart
UPDATE `creature_template` SET `femaleName`='', `family`=303, `type_flags2`=128, `HealthModifier`=37.5, `CreatureDifficultyID`=27339, `VerifiedBuild`=46597 WHERE `entry`=56762; -- Yu'lon
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `VerifiedBuild`=46597 WHERE `entry`=56789; -- Dragon Wave
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=1.875, `CreatureDifficultyID`=27259, `VerifiedBuild`=46597 WHERE `entry`=56792; -- Figment of Doubt
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `VerifiedBuild`=46597 WHERE `entry`=56816; -- Dragon Wave Summoner
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `VerifiedBuild`=46597 WHERE `entry`=56835; -- Jade Dragon Wave Summoner
UPDATE `creature_template` SET `femaleName`='', `rank`=1, `VerifiedBuild`=46597 WHERE `entry`=56843; -- Lorewalker Stonestep
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=56861; -- Eagle
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=56871; -- Strife
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=56872; -- Osong
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=56873; -- Heroine
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=56874; -- Moon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=56882; -- Well
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `VerifiedBuild`=46597 WHERE `entry`=56893; -- Jade Fire
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.75, `CreatureDifficultyID`=26915, `VerifiedBuild`=46597 WHERE `entry`=57080; -- Corrupted Scroll
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=15, `CreatureDifficultyID`=26895, `VerifiedBuild`=46597 WHERE `entry`=57109; -- Minion of Doubt
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=115787; -- Bloodgazer Hatchling
UPDATE `creature_template` SET `HealthModifier`=2.25, `CreatureDifficultyID`=18540, `VerifiedBuild`=46597 WHERE `entry`=62171; -- Serpent Warrior
UPDATE `creature_template` SET `femaleName`='', `type_flags`=1024, `VerifiedBuild`=46597 WHERE `entry`=174228; -- Spell Bunny
UPDATE `creature_template` SET `femaleName`='', `type_flags`=2097160, `HealthModifier`=1.5, `CreatureDifficultyID`=18246, `VerifiedBuild`=46597 WHERE `entry`=62358; -- Corrupt Droplet
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=4, `type_flags`=2097160, `HealthModifier`=1.5, `CreatureDifficultyID`=18241, `VerifiedBuild`=46597 WHERE `entry`=62360; -- Corrupt Droplet


UPDATE `creature_template_model` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `CreatureID` IN (175766,115787,172046,172042,175764,158088,158424,158228,158205,158227,169590,164390,164383,169591,170004,164576,164575,158165,165589,168483,173618,165509,165554,162109,165152,165151,165820,174228,166087,166132,166069,165821,158193,172092,157847,173241,157869,157846,173243,173242,165818,165817,173092,174844,166070,177555,169061,156275,165858,165845,170974,53006,56792,56893,56762,56835,56816,56789,56439,47319,59764,59271,59262,95072,73400,78001,62360,56511,56658,27893,56882,56574,56874,56586,65362,59873,59553,64399,59545,56732,63420,56873,65393,59891,62249,56871,59555,59547,56542,65317,56843,59149,62171,62231,59726,56448,59552,59051,59544,56861,57080,56872,62358,58319,60578,62229,59598,57109,59546,164048,175782,161646,174599,161642,161648,161643,160277,174751,159974,159694,169615,169613,169610,169608,169607,169589,169519,159695,169609,169611,169606,169576,165662,159879,160010,160001,159978,159959,159988,159972,159881,160000,162294,159979,159963,161618,160351,161916,161623,161620,161619,160388,161606,160282,165658,161605,161647,165165,161609,161664,161607,160478,160384,160281,161645,161638,161636,161635,161634,160348,163674,163579,164242,164223,159441,165941,165940,165866,158989,165943,165942,165922,162277,165889,165865,165732,165731,165661,175471,161448,161482,172499,172539,172522,161235,169330,165774,161302,165780,155668,173322,173321,173320,173315,168484,168482,160202,162044,165781,162035,160712,173439,173390,165831,166196,165830,166143,172368)) OR (`Idx`=4 AND `CreatureID` IN (158424,173618,166087,165821,161448,162044,162035)) OR (`Idx`=3 AND `CreatureID` IN (158424,173618,166087,166132,165821,177555,62249,62231,62229,169576,160384,163579,175471,161448,161482,162044,162035,172368)) OR (`Idx`=2 AND `CreatureID` IN (158424,173618,166087,166132,165821,177555,62249,62231,62229,169576,160478,160384,163579,175471,161448,161482,162044,162035,172368)) OR (`Idx`=1 AND `CreatureID` IN (158424,169590,164390,164383,169591,173618,165554,174228,166087,166132,165821,177555,165858,56893,56835,56816,56789,73400,27893,56574,56586,63420,65393,62249,62171,62231,62229,159695,169576,162294,160351,161916,165165,160478,160384,160348,163579,158989,165943,175471,161448,161482,161235,165780,162044,162035,160712,173439,165831,172368)) OR (`Idx`=6 AND `CreatureID` IN (173618,161448,162044,162035)) OR (`Idx`=5 AND `CreatureID` IN (173618,166087,165821,161448,162044,162035)) OR (`Idx`=7 AND `CreatureID` IN (161448,162044,162035));
UPDATE `creature_template_model` SET `DisplayScale`=2.25, `VerifiedBuild`=46597 WHERE (`CreatureID`=164388 AND `Idx`=0); -- Amalgamation of Light
UPDATE `creature_template_model` SET `DisplayScale`=1.20000004768371582, `VerifiedBuild`=46597 WHERE (`CreatureID`=165651 AND `Idx`=0); -- Stone Legion Security
UPDATE `creature_template_model` SET `DisplayScale`=1.25, `VerifiedBuild`=46597 WHERE (`CreatureID`=165660 AND `Idx`=0); -- Darkhaven Carriage


UPDATE `creature_questitem` SET `VerifiedBuild`=46597 WHERE (`Idx`=1 AND `CreatureEntry` IN (164388,165152)) OR (`Idx`=0 AND `CreatureEntry` IN (164388,158165,165152,161448));

DELETE FROM `gameobject_template` WHERE `entry` IN (350776 /*Anima Conductor*/, 349280 /*Letter from Prince Renathal*/, 349089 /*Servant's Basic Kit*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(350776, 58, 61959, 'Anima Conductor', '', '', '', 1, 1738, 348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Anima Conductor
(349280, 5, 61306, 'Letter from Prince Renathal', '', '', '', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Letter from Prince Renathal
(349089, 10, 59146, 'Servant\'s Basic Kit', 'questinteract', 'Changing', '', 0.5, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 322906, 0, 0, 0, 112373, 0, 0, 0, 0, 0, 1, 0, 78460, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 746, 46597); -- Servant's Basic Kit

UPDATE `gameobject_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (355483, 368945, 355490, 355463, 345351, 345349, 335624, 335623, 335622, 352996, 345356, 353335, 352987, 351969, 351939, 345355, 352119, 357586, 348930, 351870, 351869, 349492, 365145, 365144, 365143, 365142, 365141, 357565, 235827, 233050, 352460, 363827, 213183, 191083, 221413, 215824, 215816, 215829, 214565, 215826, 215802, 215815, 214564, 215825, 215830, 209349, 212899, 215819, 215803, 338643, 338642, 338639, 338516, 338674, 338505, 357597, 352518, 357585, 340019, 358321, 349194, 349196, 349195, 351472, 352121, 352120, 349133, 357233, 357235, 357234, 364867);
UPDATE `gameobject_template` SET `IconName`='inspect', `size`=0.5, `Data0`=8146, `Data2`=1, `VerifiedBuild`=46597 WHERE `entry`=355488; -- Renathal's Notes
UPDATE `gameobject_template` SET `IconName`='quest', `size`=0.75, `Data1`=24080, `Data9`=1, `ContentTuningId`=837, `VerifiedBuild`=46597 WHERE `entry`=353948; -- Medallion of Desire
UPDATE `gameobject_template` SET `castBarCaption`='Opening', `VerifiedBuild`=46597 WHERE `entry`=353792; -- Village Strongbox
UPDATE `gameobject_template` SET `name`='Door to Courtyard', `Data1`=5749660, `VerifiedBuild`=46597 WHERE `entry`=213544; -- Porte vers la cour
UPDATE `gameobject_template` SET `displayId`=10791, `VerifiedBuild`=46597 WHERE `entry` IN (215808, 215800, 215821, 215805, 215818, 215810, 215823, 215807, 215828, 215820, 215812, 215804, 215809, 215817, 215801, 215822, 215814, 215806, 215827, 215811); -- Brazier
UPDATE `gameobject_template` SET `name`='Scrollkeeper\'s Sanctum Exit', `Data1`=5749660, `VerifiedBuild`=46597 WHERE `entry`=213549; -- Sortie du sanctum du Gardien des parchemins
UPDATE `gameobject_template` SET `name`='Front Door 2', `Data1`=5749660, `VerifiedBuild`=46597 WHERE `entry`=213903; -- Porte d'entr
UPDATE `gameobject_template` SET `name`='Door to Sha of Doubt', `Data1`=5749660, `VerifiedBuild`=46597 WHERE `entry`=213548; -- Porte vers le sha du doute
UPDATE `gameobject_template` SET `name`='Door to Scrollkeeper\'s Sanctum', `Data1`=5749660, `VerifiedBuild`=46597 WHERE `entry`=213545; -- Porte vers le sanctum du Gardien des parchemins
UPDATE `gameobject_template` SET `name`='Door to Fountain of Everseeing', `Data1`=5749660, `VerifiedBuild`=46597 WHERE `entry`=213547; -- Porte vers la fontaine des Temoins 
UPDATE `gameobject_template` SET `name`='Fountain of Everseeing Exit', `Data1`=5749660, `VerifiedBuild`=46597 WHERE `entry`=213550; -- Sortie de la fontaine des T
UPDATE `gameobject_template` SET `name`='Watery Door', `VerifiedBuild`=46597 WHERE `entry`=211280; -- Porte aqueuse
UPDATE `gameobject_template` SET `castBarCaption`='Opening', `VerifiedBuild`=46597 WHERE `entry`=353797; -- Stone Legion Supplies


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `GameObjectEntry` IN (335624,335623,335622,348930,357233,357235,357234)) OR (`Idx`=1 AND `GameObjectEntry` IN (357233,357235,357234));

DELETE FROM `page_text` WHERE `ID`=8062;
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`, `PlayerConditionID`, `Flags`, `VerifiedBuild`) VALUES
(8062, 'Bogdan, dear sir, I have escaped exile thanks to my new ally who stands before you. \n\nI do regret not being able to deliver this note in person, but you understand that I cannot risk being seen once again within the city. \n\n$p will assume my role. Please ensure that they have full access to the estate. \n\nWarm regards, \n\nDuke Theotar', 0, 0, 0, 46597); -- 8062


DELETE FROM `world_quest` WHERE `id` IN (60431 /*60431*/, 65265 /*65265*/, 65255 /*65255*/, 60397 /*60397*/, 60460 /*60460*/, 53363 /*53363*/, 43474 /*43474*/, 53265 /*53265*/, 63789 /*63789*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(60431, 259200, 19333, 1), -- 60431
(65265, 86400, 21393, 1), -- 65265
(65255, 86400, 21403, 1), -- 65255
(60397, 259200, 19322, 1), -- 60397
(60460, 259200, 19339, 1), -- 60460
(53363, 86400, 16742, 1), -- 53363
(43474, 86400, 12221, 1), -- 43474
(53265, 86400, 16717, 1), -- 53265
(63789, 86400, 20769, 1); -- 63789

UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096


DELETE FROM `gameobject_template_addon` WHERE `entry` IN (328304 /*Anima Conductor*/, 364984 /*Scroll of Dark Empowerment*/, 364983 /*Scroll of Dark Empowerment*/, 364950 /*Scroll of Dark Empowerment*/);
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `WorldEffectID`, `AIAnimKitID`) VALUES
(328304, 0, 32, 0, 0), -- Anima Conductor
(364984, 0, 262144, 0, 0), -- Scroll of Dark Empowerment
(364983, 0, 262144, 0, 0), -- Scroll of Dark Empowerment
(364950, 0, 262144, 0, 0); -- Scroll of Dark Empowerment


DELETE FROM `scene_template` WHERE `SceneId` IN (2675, 2666, 2673);
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`, `Encrypted`) VALUES
(2675, 27, 3151, 0),
(2666, 27, 3150, 0),
(2673, 27, 3149, 0);


DELETE FROM `quest_offer_reward` WHERE `ID` IN (63056 /*Sanctum Upgrade: Mirror Network*/, 60721 /*The Anima Must Flow*/, 63066 /*Sanctum Upgrade: Anima Conductor*/, 64469 /*Adventurer: Lucia*/, 64468 /*Adventurer: Madame Iza*/, 64467 /*Adventurer: Chachi the Artiste*/, 61792 /*Adventurer: Bogdan*/, 61790 /*Adventurer: Vulca*/, 61789 /*Adventurer: Lost Sybille*/, 61788 /*Adventurer: Simone*/, 61786 /*Adventurer: Stonehead*/, 61729 /*Adventurer: Rahel*/, 59319 /*Advancing Our Efforts*/, 63064 /*Sanctum Upgrade: Command Table*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(63056, 1, 0, 0, 0, 0, 0, 0, 0, 'A network of mirrors to translocate throughout the realm will prove invaluable.\n\nRumor suggests of the former mirror maker of the Master was lost in the Ember Ward rather recently. \n\nYou have proven to have a talent for convincing people to join our side.', 46597), -- Sanctum Upgrade: Mirror Network
(60721, 1, 0, 0, 0, 0, 0, 0, 0, 'Anima is flowing to a ward once more. You will want to return to the device periodically and channel more.\n\nAs you gather anima and channel it into Revendreth, the flows will grow stronger. Though they will not last for long right now, eventually you will be able to reinforce the channel, making a permanent connection.\n\nWith anima flowing into our lands once again, it is only a matter of time until we unite all of Revendreth under our banner.', 46597), -- The Anima Must Flow
(63066, 1, 0, 0, 0, 0, 0, 0, 0, 'It is time to begin restoring anima to the Shadowlands.', 46597), -- Sanctum Upgrade: Anima Conductor
(64469, 0, 0, 0, 0, 0, 0, 0, 0, 'Lucia wishes to bring her wealth of skills to our cause $p.\n\nShe\'s been restless to punish those who have turned on Revendreth.\n\nUse her well.', 46597), -- Adventurer: Lucia
(64468, 0, 0, 0, 0, 0, 0, 0, 0, 'Madame Iza has decided to enter the fray in service of Revendreth.\n\nIsn\'t that exciting, $p?\n\nHer remarks aren\'t the only thing that is cutting, so do not underestimate her in a fight.', 46597), -- Adventurer: Madame Iza
(64467, 0, 0, 0, 0, 0, 0, 0, 0, 'Exquisite news, $p.\n\nChachi the Artiste has decided to lend his exquisite taste in service to Revendreth.\n\nBe sure to make good use of his skills.', 46597), -- Adventurer: Chachi the Artiste
(61792, 0, 0, 0, 0, 0, 0, 0, 0, 'Your loyalty to Revendreth is unquestionable, $p.\n\nBogdan has offered to take a leave of absence from Theotar\'s service, and will assist you however he can.', 46597), -- Adventurer: Bogdan
(61790, 0, 0, 0, 0, 0, 0, 0, 0, 'Anyone that survives in the Ember Ward as long as Vulca did is tough as stone.\n\nShe\'ll have an unexpected trick or two to help us take down the enemy.', 46597), -- Adventurer: Vulca
(61789, 0, 0, 0, 0, 0, 0, 0, 0, 'Lost Sybille comes highly recommended by Theotar.\n\nPlus, she dropped a bag of Stone Legion heads and two canisters of anima on our doorstep when she arrived. So I guess she\'s fighting for us already.\n\nLet\'s see what she can do with some allies.', 46597), -- Adventurer: Lost Sybille
(61788, 0, 0, 0, 0, 0, 0, 0, 0, 'Your actions on behalf of Revendreth are garnering quite a lot of attention, $p.\n\nSimone has offered to lend her expertise with the mirrors of the Ember Ward to the cause.', 46597), -- Adventurer: Simone
(61786, 0, 0, 0, 0, 0, 0, 0, 0, 'Your \"good bud\" Stonehead insists on fighting for the cause, $p.\n\nI\'m sure we can find a use for his skills. Nothing too complicated, of course.', 46597), -- Adventurer: Stonehead
(61729, 0, 0, 0, 0, 0, 0, 0, 0, 'Rahel has arrived from Darkhaven to assist us with, and I quote, \"killing anybody.\" She is quite eager to enter the fray.\n\nShe seemed rather upbeat at the prospect of working with you again, $p.', 46597), -- Adventurer: Rahel
(59319, 1, 0, 0, 0, 0, 0, 0, 0, 'The mission will be a complete success, I have no doubt.', 46597), -- Advancing Our Efforts
(63064, 1, 0, 0, 0, 0, 0, 0, 0, 'We have much to accomplish, and as resourceful as you are, you are not able to be in all places at once.', 46597); -- Sanctum Upgrade: Command Table



UPDATE `quest_poi` SET `VerifiedBuild`=46597 WHERE (`QuestID`=60051 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60051 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60721 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60721 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59319 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59319 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63066 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63066 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63066 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63064 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63064 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63064 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63056 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63056 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63056 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63949 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63949 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63051 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63051 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62635 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61981 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61981 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61981 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61492 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=61492 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=61492 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61492 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61492 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60500 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60500 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60500 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60460 AND `BlobIndex`=0 AND `Idx1`=8) OR (`QuestID`=60460 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=60460 AND `BlobIndex`=5 AND `Idx1`=6) OR (`QuestID`=60460 AND `BlobIndex`=4 AND `Idx1`=5) OR (`QuestID`=60460 AND `BlobIndex`=3 AND `Idx1`=4) OR (`QuestID`=60460 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=60460 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=60460 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60460 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60431 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=60431 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60431 AND `BlobIndex`=1 AND `Idx1`=0) OR (`QuestID`=60397 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60397 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60397 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59701 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59701 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59701 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66042 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66042 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66042 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=56120 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=56120 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53435 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53435 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50602 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50598 AND `BlobIndex`=0 AND `Idx1`=0);

UPDATE `quest_poi_points` SET `VerifiedBuild`=46597 WHERE (`QuestID`=60051 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60051 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60721 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60721 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59319 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59319 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63066 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63066 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63066 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63064 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63064 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63064 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63056 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63056 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63056 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63949 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63949 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=63051 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63051 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62635 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61981 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61981 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61981 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61492 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=61492 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61492 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=61492 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=61492 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=61492 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=61492 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=61492 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=61492 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=61492 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61492 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61492 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60500 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60500 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60500 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60460 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=60460 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=60460 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=60460 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=60460 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=60460 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=60460 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60460 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60460 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60431 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60431 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60431 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60397 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60397 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60397 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59701 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=59701 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59701 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66042 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66042 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66042 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=56120 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=56120 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53435 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53435 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50602 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50598 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_greeting` WHERE (`ID`=164741 AND `Type`=0);
INSERT INTO `quest_greeting` (`ID`, `Type`, `GreetEmoteType`, `GreetEmoteDelay`, `Greeting`, `VerifiedBuild`) VALUES
(164741, 0, 1, 0, 'We will fight to see Revendreth return to its true purpose.', 46597); -- 164741


DELETE FROM `quest_details` WHERE `ID` IN (60051 /*A Master of Their Craft*/, 60721 /*The Anima Must Flow*/, 59319 /*Advancing Our Efforts*/, 63066 /*Sanctum Upgrade: Anima Conductor*/, 63064 /*Sanctum Upgrade: Command Table*/, 63056 /*Sanctum Upgrade: Mirror Network*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(60051, 1, 0, 0, 0, 0, 0, 0, 0, 46597), -- A Master of Their Craft
(60721, 1, 1, 0, 0, 0, 0, 0, 0, 46597), -- The Anima Must Flow
(59319, 1, 1, 0, 0, 0, 0, 0, 0, 46597), -- Advancing Our Efforts
(63066, 1, 1, 0, 0, 0, 0, 0, 0, 46597), -- Sanctum Upgrade: Anima Conductor
(63064, 1, 1, 0, 0, 0, 0, 0, 0, 46597), -- Sanctum Upgrade: Command Table
(63056, 1, 1, 0, 0, 0, 0, 0, 0, 46597); -- Sanctum Upgrade: Mirror Network


DELETE FROM `quest_request_items` WHERE `ID`=59607;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(59607, 0, 0, 0, 0, 'Bad bat gon\' get smashed! Need ammo! Ammo in Dredhollow!', 0); -- Takin' Down the Beast

UPDATE `quest_request_items` SET `VerifiedBuild`=46597 WHERE `ID`=61492;


UPDATE `creature_queststarter` SET `VerifiedBuild`=46597 WHERE (`id`=158653 AND `quest`=60051) OR (`id`=164739 AND `quest`=60721) OR (`id`=164741 AND `quest`=59319) OR (`id`=172605 AND `quest` IN (63066,63064,63056)) OR (`id`=161979 AND `quest` IN (59343,57880)) OR (`id`=158088 AND `quest`=57533) OR (`id`=158205 AND `quest`=57571) OR (`id`=158038 AND `quest` IN (57532,57531)) OR (`id`=165661 AND `quest` IN (59719,59708,59707,59706)) OR (`id`=165818 AND `quest`=59711) OR (`id`=165658 AND `quest`=59676) OR (`id`=165865 AND `quest`=59720);

DELETE FROM `creature_questender` WHERE (`id`=164741 AND `quest` IN (64469,64468,64467,61792));
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(164741, 64469, 46597), -- Adventurer: Lucia ended by Tactician Sakaa
(164741, 64468, 46597), -- Adventurer: Madame Iza ended by Tactician Sakaa
(164741, 64467, 46597), -- Adventurer: Chachi the Artiste ended by Tactician Sakaa
(164741, 61792, 46597); -- Adventurer: Bogdan ended by Tactician Sakaa


DELETE FROM `creature_template_scaling` WHERE (`Entry`=37865 AND `DifficultyID`=0);
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(37865, 0, 0, 0, 371, 46597);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46597 WHERE (`DifficultyID`=0 AND `Entry` IN (175766,175773,166143,175589,172368,175770,14375,14376,4047,46572,46359,45339,135202,46358,135201,158637,46357,5614,44854,3342,137762,5613,44853,51195,5609,197771,44852,197770,168459,3323,46142,3319,5606,47571,197767,45337,35068,32520,188656,89830,6929,3313,46555,44877,49750,44878,23128,14377,88703,28960,3370,58155,44872,97542,44338,145424,62114,52034,133333,49622,3144,44856,37072,46556,38821,3312,44851,44876,72559,46140,188655,188167,188073,5817,62195,3314,188166,44871,187758,14392,17098,74228,27489,49743,5188,49837,145529,145528,46512,3296,51346));


UPDATE `creature_model_info` SET `VerifiedBuild`=46597 WHERE `DisplayID` IN (97802, 96508, 99938, 96007, 96119, 94959, 94444, 95732, 97693, 93306, 31174, 14413, 14414, 4514, 35148, 35053, 34412, 35052, 93574, 35051, 3609, 34143, 1358, 3608, 34141, 36585, 37138, 3605, 73093, 34139, 89803, 4602, 1323, 7117, 1319, 3604, 35695, 109709, 34406, 29569, 24982, 5706, 1313, 35141, 1320, 36615, 1310, 4601, 21264, 14415, 8001, 99453, 1392, 40012, 37329, 8000, 15467, 63674, 304, 30272, 36584, 37724, 36559, 99451, 82115, 34144, 31738, 4382, 35140, 8971, 21072, 1312, 31737, 34136, 1318, 49781, 89800, 99507, 37328, 4259, 106383, 4356, 42385, 1314, 106382, 9133, 106345, 51613, 16850, 99462, 22493, 15468, 3128, 4260, 36598, 37330, 88594, 35133, 99452, 37331);
UPDATE `creature_model_info` SET `BoundingRadius`=0.592886686325073242, `CombatReach`=2.5 WHERE `DisplayID`=92622;
UPDATE `creature_model_info` SET `BoundingRadius`=0.800000011920928955 WHERE `DisplayID`=79383;

DELETE FROM `gossip_menu` WHERE (`MenuID`=27894 AND `TextID`=1);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(27894, 1, 46597); -- 187758 (Zaa'je)

UPDATE `gossip_menu` SET `VerifiedBuild`=46597 WHERE (`MenuID`=25440 AND `TextID`=27251);

UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=95541, `VerifiedBuild`=46597 WHERE (`MenuID`=25440 AND `OptionID`=0); -- OptionBroadcastTextID: 95541 - 95541 - 96633 - 96633 - 98823 - 98823


UPDATE `creature_template` SET `BaseAttackTime`=1723 WHERE `entry`=58965; -- Wrathguard

UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=166143; -- Command Table
UPDATE `creature_template` SET `gossip_menu_id`=25753 WHERE `entry`=161979; -- Theotar
UPDATE `creature_template` SET `BaseAttackTime`=1756, `unit_flags`=262144 WHERE `entry`=26125; -- Risen Ghoul
UPDATE `creature_template` SET `minlevel`=12, `maxlevel`=12, `speed_walk`=1, `unit_flags`=768 WHERE `entry`=37865; -- Perky Pug

UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`=49750; -- Warchief's Herald
UPDATE `creature_template` SET `minlevel`=60, `BaseAttackTime`=1651 WHERE `entry`=143622; -- Wild Imp
UPDATE `creature_template` SET `minlevel`=42, `maxlevel`=42, `npcflag`=0, `unit_flags`=768 WHERE `entry`=97542; -- Slithering Brownscale

UPDATE `creature_template` SET `minlevel`=25, `BaseAttackTime`=1833 WHERE `entry`=165189; -- Generic Hunter Pet
UPDATE `creature_template` SET `npcflag`=0, `unit_flags`=32768, `unit_flags3`=8388608 WHERE `entry`=72559; -- Thunder Bluff Protector
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=29, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry` IN (188167, 188073, 188166); -- Worker
UPDATE `creature_template` SET `gossip_menu_id`=27894 WHERE `entry`=187758; -- Zaa'je


UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=60051; -- A Master of Their Craft
UPDATE `quest_template` SET `VerifiedBuild`=46597 WHERE `ID` IN (60601, 64469, 64468, 64467, 61792, 61790, 61789, 61788, 61786, 61729, 60092, 61125, 60991, 61346, 61791, 62209, 63044, 65265, 61870, 60992, 60990, 59643, 59789, 61728, 62210, 62241, 61140, 65255, 59230, 58918, 61124, 61879, 62539, 61565, 59601, 63793, 43474, 58144, 61948, 63789, 65232, 53159, 59703, 59183, 60574, 62211, 59680, 59441, 63950, 62635, 61981, 61492, 60460, 60431, 60397, 59701, 51584, 51612, 53773, 51625, 55301, 52862, 51185, 51064, 55344, 55303, 51629, 52832, 37779, 37466, 44765, 59926, 53831, 53870, 53466, 29611, 26293, 25924, 13618, 60458, 60395, 60430, 56120, 53435, 50602, 50598);
UPDATE `quest_template` SET `RewardBonusMoney`=30900, `VerifiedBuild`=46597 WHERE `ID`=60721; -- The Anima Must Flow
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=59319; -- Advancing Our Efforts
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=63066; -- Sanctum Upgrade: Anima Conductor
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=63064; -- Sanctum Upgrade: Command Table
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID`=63056; -- Sanctum Upgrade: Mirror Network
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=63166; -- A Shadowed Fate
UPDATE `quest_template` SET `ContentTuningID`=290, `RewardCurrencyID1`=0, `RewardCurrencyQty1`=0, `VerifiedBuild`=46597 WHERE `ID`=53363; -- Arathi Donations: Drums of the Maelstrom
UPDATE `quest_template` SET `RewardCurrencyID1`=0, `RewardCurrencyQty1`=0, `VerifiedBuild`=46597 WHERE `ID`=53265; -- Arathi Donations: Gold
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=61103; -- Disrupting the Cycle
UPDATE `quest_template` SET `RewardBonusMoney`=30900, `VerifiedBuild`=46597 WHERE `ID`=63051; -- Trust Issues
UPDATE `quest_template` SET `RewardBonusMoney`=370350 WHERE `ID`=60500;
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=51512; -- Bilefang Mother
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=51529; -- Talon
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=51652; -- Barman Bill
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=51656; -- Saurolisk Tamer Mugg
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=51737; -- Bruin Potions
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=51745; -- A Smelly Solution
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=51434; -- Stone Golem
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=51905; -- Reinforced Hullbreaker
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=51921; -- Slickspill
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=52889; -- Sandscour
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=51216; -- Waycrest Manor: Something to Crow About
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=52124; -- Losers Weepers
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=52757; -- Grimestone Crimes
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=52163; -- The Winged Typhoon
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=52126; -- This Little Piggy Has Sharp Tusks
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=52278; -- Rogue Azerite
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=52239; -- Loose Change
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=51156; -- Fangcaller Xorreth
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=51792; -- Erupting Totem Testing
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=51238; -- Abandoned in the Burrows
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=51124; -- Relic Hunter Hazaak
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=51105; -- Ak'tar
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=51198; -- Fertilizer Duty
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=50872; -- Warcrawler Karkithiss
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=50863; -- Avatar of Xolotal
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=50847; -- Twisted Child of Rezan
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=50652; -- Biting the Hand that Feeds Them
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=50689; -- It's the Pits
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=50577; -- Unaccounted For
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=50568; -- Chag's Challenge
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=50490; -- Uroku the Bound
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=50474; -- The Other Side
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=51043; -- Supplies Needed: Storm Silver Ore
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=49444; -- Underfoot
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=52892; -- Critters are Friends, Not Food
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=52420; -- Work Order: Shimmerscale Diving Suit
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=50619; -- What Goes Up
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=52803; -- Accidental Dread
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=52295; -- The MOTHERLODE!!: Elementals on the Payroll
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=54615; -- The League Will Lose
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=54617; -- Sins of the Syndicate
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=54568; -- Branchlord Aldrus
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=54549; -- Kovork
UPDATE `quest_template` SET `RewardFactionOverride1`=7500, `VerifiedBuild`=46597 WHERE `ID`=54543; -- Man-Hunter Rog


UPDATE `quest_objectives` SET `VerifiedBuild`=46597 WHERE `ID` IN (399018, 399017, 399015, 399014, 399013, 399027, 404387, 397534, 396393, 409158, 409136, 405228, 405227, 405657, 406713, 409177, 407425, 409050, 422647, 406768, 405143, 406321, 396667, 397818, 396978, 396977, 396959, 396960, 396976, 406588, 407428, 407546, 407545, 407536, 407522, 407556, 407555, 407554, 407553, 407521, 405251, 422514, 422616, 422513, 422512, 422511, 422510, 396185, 395108, 405226, 406790, 407909, 406320, 396666, 396665, 396664, 396655, 396590, 419767, 341293, 393734, 393733, 393784, 341016, 406868, 420431, 420430, 420429, 419760, 420927, 420194, 422444, 340868, 396806, 396805, 396804, 396803, 396133, 398917, 398916, 407429, 405198, 405197, 396797, 396787, 396786, 396785, 396784, 396783, 396453, 420245, 409112, 408089, 406892, 406075, 406073, 398458, 398635, 398634, 398633, 398632, 398631, 398557, 398556, 398424, 396813, 341880, 341879, 341878, 341877, 336377, 336376, 336375, 336374, 336373, 336052, 336067, 336462, 352808, 352807, 352806, 352715, 352711, 352707, 342280, 336628, 336636, 336960, 336959, 336958, 341820, 336544, 337009, 389000, 388999, 335868, 337497, 337524, 340227, 335169, 335165, 338046, 338038, 338037, 340118, 339722, 339721, 339720, 339719, 339718, 339717, 338312, 338042, 338609, 338492, 338491, 334881, 338091, 338090, 338089, 338088, 338087, 337177, 337073, 335223, 334799, 334759, 335104, 335060, 334622, 334142, 334126, 334088, 333479, 333544, 333543, 333169, 333159, 333108, 332866, 332859, 322746, 389035, 389034, 389004, 389003, 334581, 341826, 336552, 294614, 340233, 338924, 340045, 333367, 339987, 338692, 338668, 276885, 276884, 276880, 276871, 276869, 276870, 276859, 276858, 277677, 277667, 277606, 277605, 277604, 277603, 276298, 387768, 387772, 286940, 387631, 387591, 387579, 397237, 388427, 353017, 254560, 266797, 398460, 398426, 398625, 398624, 398623, 398622, 398621, 398561, 398560, 390280, 341368, 337022, 336162);
UPDATE `quest_objectives` SET `Flags`=2, `VerifiedBuild`=46597 WHERE `ID`=399012; -- 399012
UPDATE `quest_objectives` SET `Description`='Command Table activated', `VerifiedBuild`=46597 WHERE `ID`=409155; -- 409155


UPDATE `quest_visual_effect` SET `VerifiedBuild`=46597 WHERE (`Index`=7 AND `ID` IN (399012,399027)) OR (`Index`=6 AND `ID` IN (399012,399027)) OR (`Index`=5 AND `ID` IN (399012,399027,332859)) OR (`Index`=4 AND `ID` IN (399012,399027,396783,332859)) OR (`Index`=3 AND `ID` IN (399012,399027,396783,336373,332859,387768,387772)) OR (`Index`=2 AND `ID` IN (399012,399027,396590,396783,420245,336373,332859,387768,387772)) OR (`Index`=1 AND `ID` IN (399012,399027,422647,396667,396590,393733,396806,396785,396783,420245,336373,332859,387768,387772)) OR (`Index`=0 AND `ID` IN (399012,399027,404387,396393,409158,409155,409136,405228,405227,406713,409177,407425,409050,422647,406768,405143,396667,397818,406588,407428,407546,407556,407521,405251,422514,396185,395108,405226,406790,396665,396664,396655,396590,419767,393734,393733,393784,406868,422444,396806,396805,396804,396803,396133,407429,396797,396787,396786,396785,396784,396783,396453,420245,409112,406892,406073,336374,336373,336462,336959,336544,389000,388999,335169,335165,340118,338312,338609,338492,335223,335104,335060,334088,333169,333159,332859,322746,389034,389004,389003,336552,294614,340233,340045,333367,339987,338692,338668,276858,387768,387772,397237,388427,353017));


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `QuestID` IN (64469,64468,64467,61792,61790,61789,61788,61786,61729));


UPDATE `creature_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (3370, 5606, 158637, 5609, 5613, 5614, 135201, 135202, 197767, 197770, 197771, 58155, 187758, 32520, 44851, 44852, 44853, 44854, 44856, 44871, 44872, 44876, 44877, 44878, 37072, 145424, 175589, 6929, 5817, 145528, 145529, 46140, 17098, 46142, 172368, 137762, 175766, 175770, 133333, 188073, 35068, 88703, 89830, 49622, 18363, 18364, 18365, 18377, 18378, 74228, 18379, 18380, 188166, 188167, 165830, 165831, 46357, 46358, 46359, 49743, 49750, 52034, 47571, 45337, 45339, 62114, 27489, 49837, 4047, 46512, 5188, 46555, 46556, 62195, 46572, 44338, 23128, 166143, 38821, 166196, 168459, 3144, 51195, 32207, 46754, 14375, 14376, 14377, 14392, 188655, 188656, 28960, 20029, 20030, 3296, 72559, 3312, 3313, 3314, 51346, 3319, 3323, 3342);
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=97542; -- Slithering Brownscale
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=37865; -- Perky Pug


UPDATE `creature_template_model` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `CreatureID` IN (175766,165831,166196,165830,166143,175589,175770,172368,37865,14375,14376,5609,6929,89830,49622,49750,5606,44878,158637,197770,3370,46142,188167,62195,44851,197767,3319,51195,14392,88703,14377,28960,37072,5613,135201,97542,3313,46357,44853,17098,3314,187758,72559,3342,197771,46555,3323,168459,145528,44856,46556,46572,74228,46512,27489,133333,5817,44871,5614,46358,52034,137762,135202,44854,58155,44872,188655,47571,32520,3144,3312,44877,38821,188073,45337,145529,44338,49743,51346,188166,4047,46359,45339,46140,35068,44876,145424,49837,188656,62114,44852,5188,3296,23128,46754,32207,20029,20030,18379,18380,18378,18377,18365,18364,18363)) OR (`Idx`=1 AND `CreatureID` IN (165831,175589,172368,89830,46142,28960,72559,168459,74228,133333,32520,38821,49743,51346,46140,49837,62114,3296)) OR (`Idx`=2 AND `CreatureID` IN (175589,172368,89830,46142,168459,74228,49743,51346,46140,49837,62114,3296)) OR (`Idx`=3 AND `CreatureID` IN (172368,89830,46142,168459,74228,49743,51346,46140,49837,62114,3296)) OR (`Idx`=7 AND `CreatureID`=46140) OR (`Idx`=6 AND `CreatureID`=46140) OR (`Idx`=5 AND `CreatureID` IN (46140,3296)) OR (`Idx`=4 AND `CreatureID` IN (46140,3296));

DELETE FROM `gameobject_template` WHERE `entry` IN (350776 /*Anima Conductor*/, 328304 /*Anima Conductor*/, 364984 /*Scroll of Dark Empowerment*/, 364983 /*Scroll of Dark Empowerment*/, 364950 /*Scroll of Dark Empowerment*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(350776, 58, 61959, 'Anima Conductor', '', '', '', 1, 1738, 348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Anima Conductor
(328304, 5, 61959, 'Anima Conductor', '', '', '', 1, 0, 0, 0, 1, 0, 0, 5793, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Anima Conductor
(364984, 10, 61306, 'Scroll of Dark Empowerment', 'questinteract', 'Activating', '', 1, 93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27700, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Scroll of Dark Empowerment
(364983, 10, 61306, 'Scroll of Dark Empowerment', 'questinteract', 'Activating', '', 1, 93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27700, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Scroll of Dark Empowerment
(364950, 10, 61306, 'Scroll of Dark Empowerment', 'questinteract', 'Activating', '', 1, 93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27700, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46597); -- Scroll of Dark Empowerment

UPDATE `gameobject_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (364867, 190549, 204639, 204608, 204607, 204606, 204197, 175080, 186238, 266354, 180007, 206110, 203969, 175787, 205142, 259114, 332595, 175788, 281340, 179881, 204610, 204194, 204210, 204202, 204605, 204199, 206727, 204207, 204215, 206725, 204604, 205108, 204212, 204609, 204601, 204201, 204209, 223814, 204198, 202590, 206726, 204214, 223739, 206995, 204603, 204611, 204211, 204213, 204600, 204208, 205109, 206608, 206609, 206610, 204602);


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46597 WHERE (`GameObjectEntry`=203969 AND `Idx`=0);

DELETE FROM `world_quest` WHERE `id` IN (60431 /*60431*/, 65265 /*65265*/, 65255 /*65255*/, 60397 /*60397*/, 60460 /*60460*/, 53363 /*53363*/, 43474 /*43474*/, 53265 /*53265*/, 63789 /*63789*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(60431, 259200, 19333, 1), -- 60431
(65265, 86400, 21393, 1), -- 65265
(65255, 86400, 21403, 1), -- 65255
(60397, 259200, 19322, 1), -- 60397
(60460, 259200, 19339, 1), -- 60460
(53363, 86400, 16742, 1), -- 53363
(43474, 86400, 12221, 1), -- 43474
(53265, 86400, 16717, 1), -- 53265
(63789, 86400, 20769, 1); -- 63789

UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14244 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096

UPDATE `creature_template` SET `ScriptName`='npc_agitated_earth_spirit', `AIName`='' WHERE `entry`=36845;
DELETE FROM `smart_scripts` WHERE `entryorguid`=36845;

