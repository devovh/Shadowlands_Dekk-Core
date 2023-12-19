

UPDATE `areatrigger_template` SET `Type`=1, `VerifiedBuild`=46366 WHERE (`IsServerSide`=0 AND `Id` IN (8352,12929,10727,22375,12515));
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=2064, `Data0`=0, `Data1`=0, `Data3`=94560420889924666537, `Data4`=-110.88330078125, `VerifiedBuild`=46366 WHERE (`Id`=27637 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=2064, `Data0`=0, `Data1`=0, `Data3`=4165312433881088, `VerifiedBuild`=46366 WHERE (`Id`=27637 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=2064, `Data0`=0, `Data1`=0, `Data3`=-371030404951441408, `VerifiedBuild`=46366 WHERE (`Id`=27637 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=2064, `Data0`=0, `Data1`=0, `Data2`=-8049327781329211053, `Data5`=-8072791201657810437, `VerifiedBuild`=46366 WHERE (`Id`=27637 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);

DELETE FROM `scene_template` WHERE `SceneId` IN (2802, 2859, 2857);
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`, `Encrypted`) VALUES
(2802, 81, 3324, 0),
(2859, 81, 3402, 0),
(2857, 81, 3401, 0);


DELETE FROM `quest_offer_reward` WHERE `ID` IN (65466 /*Your First Fugueal Protolock*/, 65461 /*Your First Mezzonic Protolock*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(65466, 0, 0, 0, 0, 0, 0, 0, 0, 'Well done, Maw Walker. That was truly an impressive effort.\n\nRemember, that if you do struggle with these protolocks, your companion can help you overcome them if they have enough energy.\n\nNow take your expanded knowledge out into the field.', 46366), -- Your First Fugueal Protolock
(65461, 0, 0, 0, 0, 0, 0, 0, 0, 'Use this knowledge and collect more data from the field, Maw Walker.\n\nThere is still one more Cache of Creation that I must instruct you on.', 46366); -- Your First Mezzonic Protolock


DELETE FROM `quest_details` WHERE `ID` IN (65466 /*Your First Fugueal Protolock*/, 65461 /*Your First Mezzonic Protolock*/, 64785 /*Overgrown Story*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(65466, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Your First Fugueal Protolock
(65461, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Your First Mezzonic Protolock
(64785, 1, 1, 0, 0, 0, 300, 0, 0, 46366); -- Overgrown Story



DELETE FROM `quest_request_items` WHERE `ID` IN (64785 /*Overgrown Story*/, 65725 /*The Burrowed Bufonid*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(64785, 0, 0, 0, 0, 'Have you completed the research?', 46366), -- Overgrown Story
(65725, 0, 6, 0, 0, 'The large bufonid beneath the mud remains still.\n\nThere must be something it fancies. Have you some meats we can use to lure it out?', 0); -- The Burrowed Bufonid


DELETE FROM `creature_queststarter` WHERE (`id`=177958 AND `quest` IN (65466,65461,64785));
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(177958, 65466, 46366), -- Your First Fugueal Protolock offered Firim
(177958, 65461, 46366), -- Your First Mezzonic Protolock offered Firim
(177958, 64785, 46366); -- Overgrown Story offered Firim

UPDATE `creature_queststarter` SET `VerifiedBuild`=46366 WHERE (`id`=181397 AND `quest`=65432) OR (`id`=181183 AND `quest`=66042);

DELETE FROM `creature_questender` WHERE (`id`=177958 AND `quest` IN (65466,64785,65461)) OR (`id`=180950 AND `quest`=65725);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(177958, 65466, 46366), -- Your First Fugueal Protolock ended by Firim
(177958, 64785, 46366), -- Overgrown Story ended by Firim
(177958, 65461, 46366), -- Your First Mezzonic Protolock ended by Firim
(180950, 65725, 46366); -- The Burrowed Bufonid ended by Avna


DELETE FROM `gossip_menu` WHERE (`TextID`=1 AND `MenuID` IN (27545,27307));
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(27545, 1, 46366), -- 181589 (Koh Tissa)
(27307, 1, 46366); -- 181223 (Gaiagantic)


DELETE FROM `world_quest` WHERE `id` IN (52064 /*52064*/, 66696 /*66696*/, 64785 /*64785*/, 66614 /*66614*/, 50864 /*50864*/, 54589 /*54589*/, 54415 /*54415*/, 66619 /*66619*/, 54253 /*54253*/, 54646 /*54646*/, 60407 /*60407*/, 64103 /*64103*/, 63960 /*63960*/, 54246 /*54246*/, 54644 /*54644*/, 41177 /*41177*/, 53885 /*53885*/, 65407 /*65407*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(52064, 86400, 15629, 1), -- 52064
(66696, 604800, 21925, 1), -- 66696
(64785, 86400, 21241, 2), -- 64785
(66614, 604800, 19923, 1), -- 66614
(50864, 86400, 14953, 1), -- 50864
(54589, 86400, 16888, 1), -- 54589
(54415, 25200, 16293, 1), -- 54415
(66619, 604800, 21222, 1), -- 66619
(54253, 25200, 16293, 1), -- 54253
(54646, 25200, 16905, 1), -- 54646
(60407, 259200, 19326, 1), -- 60407
(64103, 86400, 20784, 1), -- 64103
(63960, 86400, 20815, 1), -- 63960
(54246, 25200, 16293, 1), -- 54246
(54644, 25200, 16902, 1), -- 54644
(41177, 1209600, 11371, 6), -- 41177
(53885, 25200, 16293, 1), -- 53885
(65407, 86400, 21461, 2); -- 65407

UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848


DELETE FROM `quest_offer_reward` WHERE `ID` IN (65032 /*Battleground Observers*/, 65031 /*Battlegrounds*/, 62000 /*Choosing Your Purpose*/, 62716 /*Re-Introductions*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(65032, 669, 0, 0, 0, 0, 0, 0, 0, 'Cartel Zo is a reliable partner. You have chosen well.', 46366), -- Battleground Observers
(65031, 0, 0, 0, 0, 0, 0, 0, 0, 'The brokers of Cartel Zo will certainly be pleased by your choice.', 46366), -- Battlegrounds
(62000, 1, 0, 0, 0, 0, 0, 0, 0, 'All is as expected. Trust always in the Arbiter\'s wisdom.', 46366), -- Choosing Your Purpose
(62716, 0, 0, 0, 0, 0, 0, 0, 0, 'Ah, $n. I was wondering when you were going to appear. Your aid is needed.', 46366); -- Re-Introductions

UPDATE `quest_offer_reward` SET `RewardText`='Your choice is made. The Purpose will guide you forward.', `VerifiedBuild`=46366 WHERE `ID`=62704; -- The Threads of Fate
UPDATE `quest_offer_reward` SET `VerifiedBuild`=46366 WHERE `ID` IN (59770, 59767, 60644, 59766, 59765, 59762, 59776, 59760, 59761, 59759, 59915, 59758, 59757, 59756, 59755, 59754, 59914, 59907, 59753);

DELETE FROM `quest_poi` WHERE (`QuestID`=65031 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(65031, 0, 0, -1, 0, 0, 2222, 1670, 0, 0, 0, 0, 0, 1850485, 0, 46366); -- Battlegrounds

UPDATE `quest_poi` SET `VerifiedBuild`=46366 WHERE (`QuestID`=65033 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65033 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65032 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62159 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62159 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62159 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62000 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=62000 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=62000 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=62000 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=62000 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62000 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62000 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62716 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62716 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62704 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62704 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59770 AND `BlobIndex`=2 AND `Idx1`=6) OR (`QuestID`=59770 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=59770 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59770 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=59770 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59770 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59770 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59767 AND `BlobIndex`=2 AND `Idx1`=11) OR (`QuestID`=59767 AND `BlobIndex`=1 AND `Idx1`=10) OR (`QuestID`=59767 AND `BlobIndex`=0 AND `Idx1`=9) OR (`QuestID`=59767 AND `BlobIndex`=1 AND `Idx1`=8) OR (`QuestID`=59767 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=59767 AND `BlobIndex`=4 AND `Idx1`=6) OR (`QuestID`=59767 AND `BlobIndex`=3 AND `Idx1`=5) OR (`QuestID`=59767 AND `BlobIndex`=2 AND `Idx1`=4) OR (`QuestID`=59767 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=59767 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59767 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59767 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60644 AND `BlobIndex`=2 AND `Idx1`=7) OR (`QuestID`=60644 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=60644 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=60644 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=60644 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=60644 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60644 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60644 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59766 AND `BlobIndex`=2 AND `Idx1`=6) OR (`QuestID`=59766 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=59766 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59766 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=59766 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59766 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59766 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59765 AND `BlobIndex`=2 AND `Idx1`=6) OR (`QuestID`=59765 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=59765 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59765 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=59765 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59765 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59765 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59762 AND `BlobIndex`=2 AND `Idx1`=7) OR (`QuestID`=59762 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=59762 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=59762 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=59762 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59762 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59762 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59762 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59776 AND `BlobIndex`=2 AND `Idx1`=6) OR (`QuestID`=59776 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=59776 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59776 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=59776 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59776 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59776 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59761 AND `BlobIndex`=2 AND `Idx1`=7) OR (`QuestID`=59761 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=59761 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=59761 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=59761 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59761 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59761 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=59761 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59760 AND `BlobIndex`=2 AND `Idx1`=10) OR (`QuestID`=59760 AND `BlobIndex`=1 AND `Idx1`=9) OR (`QuestID`=59760 AND `BlobIndex`=0 AND `Idx1`=8) OR (`QuestID`=59760 AND `BlobIndex`=1 AND `Idx1`=7) OR (`QuestID`=59760 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=59760 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=59760 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59760 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59760 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=59760 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59760 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59759 AND `BlobIndex`=2 AND `Idx1`=8) OR (`QuestID`=59759 AND `BlobIndex`=1 AND `Idx1`=7) OR (`QuestID`=59759 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=59759 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=59759 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59759 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59759 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59759 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59759 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59915 AND `BlobIndex`=2 AND `Idx1`=5) OR (`QuestID`=59915 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=59915 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59915 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=59915 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59915 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59758 AND `BlobIndex`=2 AND `Idx1`=6) OR (`QuestID`=59758 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=59758 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59758 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=59758 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59758 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59758 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59757 AND `BlobIndex`=2 AND `Idx1`=6) OR (`QuestID`=59757 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=59757 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59757 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=59757 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59757 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59757 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59756 AND `BlobIndex`=2 AND `Idx1`=6) OR (`QuestID`=59756 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=59756 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59756 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=59756 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59756 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59756 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59755 AND `BlobIndex`=2 AND `Idx1`=10) OR (`QuestID`=59755 AND `BlobIndex`=1 AND `Idx1`=9) OR (`QuestID`=59755 AND `BlobIndex`=0 AND `Idx1`=8) OR (`QuestID`=59755 AND `BlobIndex`=1 AND `Idx1`=7) OR (`QuestID`=59755 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=59755 AND `BlobIndex`=4 AND `Idx1`=5) OR (`QuestID`=59755 AND `BlobIndex`=3 AND `Idx1`=4) OR (`QuestID`=59755 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=59755 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=59755 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59755 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59754 AND `BlobIndex`=2 AND `Idx1`=7) OR (`QuestID`=59754 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=59754 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=59754 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=59754 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59754 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59754 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59754 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59914 AND `BlobIndex`=2 AND `Idx1`=9) OR (`QuestID`=59914 AND `BlobIndex`=1 AND `Idx1`=8) OR (`QuestID`=59914 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=59914 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=59914 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=59914 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59914 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59914 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59914 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59914 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59907 AND `BlobIndex`=3 AND `Idx1`=7) OR (`QuestID`=59907 AND `BlobIndex`=2 AND `Idx1`=6) OR (`QuestID`=59907 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=59907 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59907 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=59907 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59907 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59907 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59753 AND `BlobIndex`=2 AND `Idx1`=7) OR (`QuestID`=59753 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=59753 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=59753 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=59753 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59753 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59753 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59753 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49929 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=43341 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=43341 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=42449 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=42449 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=36309 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=65031 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(65031, 0, 0, -1941, 1391, 5270, 46366); -- Battlegrounds


DELETE FROM `quest_details` WHERE `ID` IN (65033 /*Observing Victory*/, 65032 /*Battleground Observers*/, 65031 /*Battlegrounds*/, 62159 /*Aiding the Shadowlands*/, 62000 /*Choosing Your Purpose*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(65033, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- Observing Victory
(65032, 1, 1, 1, 0, 0, 0, 0, 0, 46366), -- Battleground Observers
(65031, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Battlegrounds
(62159, 1, 1, 0, 0, 0, 0, 0, 0, 46366), -- Aiding the Shadowlands
(62000, 1, 1, 0, 0, 0, 0, 0, 0, 46366); -- Choosing Your Purpose


DELETE FROM `quest_request_items` WHERE `ID` IN (64785 /*Overgrown Story*/, 65725 /*The Burrowed Bufonid*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(64785, 0, 0, 0, 0, 'Have you completed the research?', 46366), -- Overgrown Story
(65725, 0, 6, 0, 0, 'The large bufonid beneath the mud remains still.\n\nThere must be something it fancies. Have you some meats we can use to lure it out?', 0); -- The Burrowed Bufonid


DELETE FROM `creature_queststarter` WHERE (`id`=174922 AND `quest`=65033) OR (`id`=159478 AND `quest`=65032) OR (`id`=177958 AND `quest` IN (65466,65461,64785));
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(174922, 65033, 46366), -- Observing Victory offered Strategist Zo'rak
(159478, 65032, 46366), -- Battleground Observers offered Tal-Inara
(177958, 65466, 46366), -- Your First Fugueal Protolock offered Firim
(177958, 65461, 46366), -- Your First Mezzonic Protolock offered Firim
(177958, 64785, 46366); -- Overgrown Story offered Firim


DELETE FROM `creature_questender` WHERE (`id`=174922 AND `quest`=65032) OR (`id`=159478 AND `quest`=65031) OR (`id`=177958 AND `quest` IN (65466,64785,65461)) OR (`id`=180950 AND `quest`=65725);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(174922, 65032, 46366), -- Battleground Observers ended by Strategist Zo'rak
(159478, 65031, 46366), -- Battlegrounds ended by Tal-Inara
(177958, 65466, 46366), -- Your First Fugueal Protolock ended by Firim
(177958, 64785, 46366), -- Overgrown Story ended by Firim
(177958, 65461, 46366), -- Your First Mezzonic Protolock ended by Firim
(180950, 65725, 46366); -- The Burrowed Bufonid ended by Avna


DELETE FROM `creature_queststarter` WHERE `id`=106881 AND `quest`=37659;
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(106881, 37659, 46366);

DELETE FROM `creature_questender` WHERE `id`=106881 AND `quest`=37654;
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(106881, 37654, 46366);

DELETE FROM `creature_template` WHERE `entry`=59577;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_class`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES (59577, 0, 0, 0, 0, 0, 'Farmstead Slave', '', '', NULL, '', 0, 35, 35, 4, 0, 0, 35, 1, 1, 1.14286, 1, 0, 0, 2000, 2000, 1, 1, 1, 768, 2048, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 23026, 0, 0, 1, 0, 0, 0, '', 45114);


REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (59577, 0, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 59577, 0, 0, 0, 0, 0, 18, 25, 0, 0, 0, 0, 0, 0, 0, 'SetData - Kill Credit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (59577, 0, 1, 2, 61, 0, 100, 1, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - Say Random Text');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (59577, 0, 2, 3, 61, 0, 100, 1, 0, 0, 0, 0, 0, '', 41, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - Despawn');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (59577, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 89, 15, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - Random Move');

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (59577, 0, 0, 'Our hero!', 12, 0, 100, 0, 0, 0, 0, 58876, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (59577, 0, 1, 'Death to the yaungol!', 12, 0, 100, 0, 0, 0, 0, 58875, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (59577, 0, 2, 'Thank you!', 12, 0, 100, 0, 0, 0, 0, 131553, 0, '');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=96652;

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (96652, 0, 0, 1, 62, 0, 100, 0, 18823, 0, 0, 0, 0, '', 33, 96652, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'At gossip select Q39516');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (96652, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'DH Start Loc');


DELETE FROM `quest_offer_reward` WHERE `ID` IN (64325 /*Sinfall Veteran*/, 64083 /*Sinfall Tactician*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(64325, 1, 0, 0, 0, 0, 0, 0, 0, 'Ah, $n. I have heard many stories of your prowess on the battlefield. \n\nI have interest in keeping great combatants like yourself well equipped. Zo\'dash is authorized to further upgrade your armor and weapons.', 46366), -- Sinfall Veteran
(64083, 1, 0, 0, 0, 0, 0, 0, 0, 'I see your skills in combat have improved even further. I trust you have made good use of our previous offer? \n\nZo\'dash is now instructed to offer the full suite of his services to you. I look forward to seeing their impact on your performance.', 46366); -- Sinfall Tactician


DELETE FROM `quest_details` WHERE `ID`=62723;
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(62723, 669, 669, 0, 0, 0, 0, 0, 0, 46366); -- Bolstering Bastion

UPDATE `quest_details` SET `VerifiedBuild`=46366 WHERE `ID`=58037;

DELETE FROM `quest_request_items` WHERE `ID`=62723;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(62723, 0, 669, 0, 0, 'How goes your time in the Archon\'s realm?', 46366); -- Bolstering Bastion



UPDATE `creature_queststarter` SET `VerifiedBuild`=46366 WHERE (`id`=157696 AND `quest`=58037);

DELETE FROM `creature_questender` WHERE (`id`=168011 AND `quest` IN (64325,64083));
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(168011, 64325, 46366), -- Sinfall Veteran ended by Zo'sorg
(168011, 64083, 46366); -- Sinfall Tactician ended by Zo'sorg


UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098


DELETE FROM `quest_offer_reward` WHERE `ID`=57919;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(57919, 1, 0, 0, 0, 0, 0, 0, 0, 'That soul is now lost forever. Such wasted potential...\n\nThe Lord Chamberlain will answer for this offense.', 46366); -- An Abuse of Power


DELETE FROM `quest_poi` WHERE (`QuestID`=61885 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61885 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(61885, 0, 1, 32, 0, 0, 2222, 1525, 0, 2, 0, 0, 0, 0, 0, 46366), -- Eyegor's Special Friends
(61885, 0, 0, 0, 406808, 173324, 2222, 1525, 0, 0, 0, 0, 0, 2014737, 0, 46366); -- Eyegor's Special Friends

UPDATE `quest_poi` SET `VerifiedBuild`=46366 WHERE (`QuestID`=64325 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=64325 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64083 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=64083 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59848 AND `BlobIndex`=0 AND `Idx1`=9) OR (`QuestID`=59848 AND `BlobIndex`=1 AND `Idx1`=8) OR (`QuestID`=59848 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=59848 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=59848 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=59848 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=59848 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59848 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=59848 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59848 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62781 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62781 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59902 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59902 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62783 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=62783 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=62783 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=62783 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62783 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62783 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62782 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62782 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59581 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=59581 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=59581 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59581 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59581 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=59581 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=59581 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=57919 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=57919 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=57919 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=57919 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62784 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62784 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62780 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62780 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=57471 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=57471 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=57471 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62778 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=62778 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=62778 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=62778 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=62778 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65033 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65033 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49929 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=43341 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=43341 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=42449 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=42449 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=36309 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=61885 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61885 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(61885, 1, 0, -2810, 5617, 0, 46366), -- Eyegor's Special Friends
(61885, 0, 0, -2820, 5609, 4099, 46366); -- Eyegor's Special Friends

UPDATE `quest_poi_points` SET `VerifiedBuild`=46366 WHERE (`QuestID`=64325 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=64325 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64083 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=64083 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59848 AND `Idx1`=9 AND `Idx2`=0) OR (`QuestID`=59848 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=59848 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=59848 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=59848 AND `Idx1`=5 AND `Idx2`=8) OR (`QuestID`=59848 AND `Idx1`=5 AND `Idx2`=7) OR (`QuestID`=59848 AND `Idx1`=5 AND `Idx2`=6) OR (`QuestID`=59848 AND `Idx1`=5 AND `Idx2`=5) OR (`QuestID`=59848 AND `Idx1`=5 AND `Idx2`=4) OR (`QuestID`=59848 AND `Idx1`=5 AND `Idx2`=3) OR (`QuestID`=59848 AND `Idx1`=5 AND `Idx2`=2) OR (`QuestID`=59848 AND `Idx1`=5 AND `Idx2`=1) OR (`QuestID`=59848 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=59848 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=59848 AND `Idx1`=3 AND `Idx2`=9) OR (`QuestID`=59848 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=59848 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=59848 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=59848 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=59848 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=59848 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=59848 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=59848 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=59848 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59848 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59848 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59848 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62781 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62781 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=62781 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=62781 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=62781 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=62781 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=62781 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=62781 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=62781 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=62781 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=62781 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59902 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59902 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=59902 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=59902 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=59902 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=59902 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=59902 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=59902 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=59902 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=59902 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=59902 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=59902 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=59902 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62783 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=62783 AND `Idx1`=4 AND `Idx2`=7) OR (`QuestID`=62783 AND `Idx1`=4 AND `Idx2`=6) OR (`QuestID`=62783 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=62783 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=62783 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=62783 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=62783 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=62783 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=62783 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=62783 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=62783 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=62783 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=62783 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=62783 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=62783 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=62783 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=62783 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=62783 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=62783 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=62783 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62783 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=62783 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=62783 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=62783 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=62783 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=62783 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=62783 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=62783 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=62783 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=62783 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62783 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=62783 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=62783 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=62783 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=62783 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=62783 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=62783 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=62783 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=62783 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=62783 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=62783 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62782 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62782 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=62782 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=62782 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=62782 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=62782 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=62782 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=62782 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=62782 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=62782 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=62782 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=62782 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59581 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=59581 AND `Idx1`=5 AND `Idx2`=3) OR (`QuestID`=59581 AND `Idx1`=5 AND `Idx2`=2) OR (`QuestID`=59581 AND `Idx1`=5 AND `Idx2`=1) OR (`QuestID`=59581 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=59581 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=59581 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=59581 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=59581 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=11) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=10) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=9) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=59581 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59581 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=59581 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=59581 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=59581 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=59581 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=59581 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=59581 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59581 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=59581 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=59581 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=59581 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59581 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=59581 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=59581 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=59581 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=59581 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=59581 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=59581 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=57919 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=57919 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=57919 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=57919 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62784 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62784 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=62784 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=62784 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=62784 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=62784 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=62784 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=62784 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=62784 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=62784 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=62784 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=62784 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=62784 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62780 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62780 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=62780 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=62780 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=62780 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=62780 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=62780 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=62780 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=62780 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=62780 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=62780 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=62780 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=62780 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=57471 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=57471 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=57471 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=57471 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=57471 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=57471 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=57471 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=57471 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=57471 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=57471 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=57471 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62778 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=62778 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=62778 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62778 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62778 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65033 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65033 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53436 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53436 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=43341 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=43341 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=42449 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=42449 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=36309 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (64325 /*Sinfall Veteran*/, 64083 /*Sinfall Tactician*/, 57922 /*The Proper Punishment*/, 57920 /*The Proper Souls*/, 58093 /*Our Forgotten Purpose*/, 62778 /*Reinforcing Revendreth*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(64325, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- Sinfall Veteran
(64083, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- Sinfall Tactician
(57922, 1, 1, 0, 0, 0, 0, 0, 0, 46366), -- The Proper Punishment
(57920, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- The Proper Souls
(58093, 1, 1, 0, 0, 0, 0, 0, 0, 46366), -- Our Forgotten Purpose
(62778, 1, 1, 1, 0, 0, 0, 0, 0, 46366); -- Reinforcing Revendreth

UPDATE `quest_details` SET `VerifiedBuild`=46366 WHERE `ID` IN (57919, 57471);

DELETE FROM `quest_request_items` WHERE `ID`=62778;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(62778, 0, 6, 0, 0, 'How goes the fight?', 46366); -- Reinforcing Revendreth


DELETE FROM `creature_queststarter` WHERE (`id`=175772 AND `quest` IN (64325,64083));
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(175772, 64325, 46366), -- Sinfall Veteran offered Rahel
(175772, 64083, 46366); -- Sinfall Tactician offered Rahel


UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `value`=1 WHERE `id`=59848; -- 59848

