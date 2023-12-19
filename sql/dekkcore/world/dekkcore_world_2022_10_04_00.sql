
UPDATE `creature_equip_template` SET `VerifiedBuild`=45745 WHERE (`ID`=1 AND `CreatureID` IN (144378,139088,128630,120922,31792,31791,26548,120590,52654,53352,29152,29088,29016,176241,10782,141030,141079,50307,1649,5515,165396,44239,44243,44238,44241,165395,120594,165393,1750,1751,1439,4960,175138,1752,61840,61839,47688,5482,340,173706,155011,1327,6090,5483,176203,6089,164957,164939,164955,6946,164948,164940,164960,164953,164947,164945,164942,164956,164950,164946,164943,1326,164961,164941,164962,164952,164949,175435,8383,1325,51998,13283,163007,43694,918,73190,146633,12786,12785,12784,1328,69975,1323,12783,19848,12779,12787,12780,54660,12781,28355,28347,69974,186180,65153,154169,140022,4959,140146,156961,163963,156825,156821,156814,157300,161350,153582,153581,153239,153583,156941,156807,163533,156986,154300,156891,161666)) OR (`ID`=2 AND `CreatureID` IN (29016,176192,42218)) OR (`ID`=3 AND `CreatureID`=29016) OR (`ID`=6 AND `CreatureID`=18927);


UPDATE `areatrigger_template` SET `VerifiedBuild`=45745 WHERE (`Id`=22171 AND `IsServerSide`=0);


UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=45745 WHERE `Id`=18034;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=45745 WHERE `Id`=18034;

DELETE FROM `areatrigger_create_properties_spline_point` WHERE (`AreaTriggerCreatePropertiesId`=18034 AND `Idx` IN (30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0));
INSERT INTO `areatrigger_create_properties_spline_point` (`AreaTriggerCreatePropertiesId`, `Idx`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(18034, 30, 75, 0.000059519268688745, -34.8717498779296875, 45745), -- SpellId : 308455
(18034, 29, 75, 0.000059519268688745, -34.8717498779296875, 45745), -- SpellId : 308455
(18034, 28, 72.3213958740234375, 0.000020962499547749, -34.8717498779296875, 45745), -- SpellId : 308455
(18034, 27, 69.642852783203125, -0.00000777743662183, -34.8717498779296875, 45745), -- SpellId : 308455
(18034, 26, 66.96430206298828125, -0.00003651737279142, -34.8979644775390625, 45745), -- SpellId : 308455
(18034, 25, 64.28568267822265625, 0.00004540689769783, -34.8979644775390625, 45745), -- SpellId : 308455
(18034, 24, 61.60713577270507812, 0.000016666961528244, -34.8979644775390625, 45745), -- SpellId : 308455
(18034, 23, 58.9285888671875, -0.00001207297464134, -28.0876617431640625, 45745), -- SpellId : 308455
(18034, 22, 56.2499847412109375, -0.00005062974378233, -17.3090972900390625, 45745), -- SpellId : 308455
(18034, 21, 53.57141876220703125, 0.000041111357859335, -15.7542877197265625, 45745), -- SpellId : 308455
(18034, 20, 50.89287567138671875, 0.000012371422599244, -15.5229644775390625, 45745), -- SpellId : 308455
(18034, 19, 48.21427154541015625, -0.00002618534563225, -15.5229644775390625, 45745), -- SpellId : 308455
(18034, 18, 45.53572463989257812, -0.00005492527998285, -15.5229644775390625, 45745), -- SpellId : 308455
(18034, 17, 42.85715866088867187, 0.000036815821658819, -15.5229644775390625, 45745), -- SpellId : 308455
(18034, 16, 39.84090805053710937, -0.37226581573486328, 0.5091094970703125, 45745), -- SpellId : 308455
(18034, 15, 37.50001144409179687, -0.00003048088365176, 0.4331207275390625, 45745), -- SpellId : 308455
(18034, 14, 34.82144546508789062, 0.000061260216170921, -0.0000152587890625, 45745), -- SpellId : 308455
(18034, 13, 32.14284133911132812, 0.000022703448848915, -0.0000152587890625, 45745), -- SpellId : 308455
(18034, 12, 29.46429443359375, -0.00000603648732067, -0.0000152587890625, 45745), -- SpellId : 308455
(18034, 11, 26.78574943542480468, -0.00003477642167126, -0.0000152587890625, 45745), -- SpellId : 308455
(18034, 10, 24.10712432861328125, 0.000047147845180006, -0.0000152587890625, 45745), -- SpellId : 308455
(18034, 9, 21.42857933044433593, 0.000018407910829409, 0, 45745), -- SpellId : 308455
(18034, 8, 18.74997520446777343, -0.00002014885831158, 0, 45745), -- SpellId : 308455
(18034, 7, 16.07143020629882812, -0.00004888879266218, 0, 45745), -- SpellId : 308455
(18034, 6, 13.39286518096923828, 0.00004285230897949, 0, 45745), -- SpellId : 308455
(18034, 5, 10.71426010131835937, 0.000004295538474252, 0, 45745), -- SpellId : 308455
(18034, 4, 8.035715103149414062, -0.00002444439633109, 0, 45745), -- SpellId : 308455
(18034, 3, 5.35717010498046875, -0.00005318433250067, 0, 45745), -- SpellId : 308455
(18034, 2, 2.678544998168945312, 0.000028739936169586, 0, 45745), -- SpellId : 308455
(18034, 1, -0, -0, 0, 45745), -- SpellId : 308455
(18034, 0, -0, -0, 0, 45745); -- SpellId : 308455


DELETE FROM `quest_offer_reward` WHERE `ID` IN (59587 /*What's Your Specialty?*/, 59354 /*The Best Way to Use Sheep*/, 59352 /*A Mage's Knowledge*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(59587, 0, 0, 0, 0, 0, 0, 0, 0, 'Excellent choice of specialization, $n.\n\nFeel free to test out your new abilities on the training dummies outside.', 45745), -- What's Your Specialty?
(59354, 21, 0, 0, 0, 0, 0, 0, 0, 'I think ye got the hang o\' it. Cast Polymorph if ye get yerself in over yer head.', 45745), -- The Best Way to Use Sheep
(59352, 4, 6, 1, 0, 0, 0, 0, 0, 'Perfect! Let\'s see... ah, the page for Polymorph is fine! \n\nWell, it\'s missin\' a few words, but once ye know the magic ye can skip over most o\' this.\n\nHere, I\'ll teach it tae ye... and I\'ll show ye how it works!', 45745); -- A Mage's Knowledge

UPDATE `quest_offer_reward` SET `RewardText`='Home again, after all this time.', `VerifiedBuild`=45745 WHERE `ID`=59641; -- The Nation of Kul Tiras
UPDATE `quest_offer_reward` SET `RewardText`='The Horde have forced our hand yet again.\n\nThis cannot stand.', `VerifiedBuild`=45745 WHERE `ID`=58983; -- Battle for Azeroth: Tides of War
UPDATE `quest_offer_reward` SET `RewardText`='Excellent, you\'re here. King Wrynn and the others have been awaiting your arrival.', `VerifiedBuild`=45745 WHERE `ID`=58912; -- An Urgent Meeting
UPDATE `quest_offer_reward` SET `RewardText`='As long as the Pig and Whistle Tavern is your home, we\'ll keep the fire going for you while you\'re away!', `VerifiedBuild`=45745 WHERE `ID`=58911; -- Home Is Where the Hearth Is
UPDATE `quest_offer_reward` SET `RewardText`='Now that you\'ve learned the basics, feel free to return any time you want to advance your riding skills or purchase additional mounts!', `VerifiedBuild`=45745 WHERE `ID`=58909; -- License to Ride
UPDATE `quest_offer_reward` SET `RewardText`='So you\'re the newcomer that I\'ve been hearing so much about?\n\nMy name\'s Curly. It\'s a pleasure to meet you, $n!', `VerifiedBuild`=45745 WHERE `ID`=58908; -- Finding Your Way
UPDATE `quest_offer_reward` SET `RewardText`='Hey, $n! It\'s good to see you!\n\nCaptain Garrick asked me to show you around the city. I\'m so excited!', `VerifiedBuild`=45745 WHERE `ID`=59583; -- Welcome to Stormwind
UPDATE `quest_offer_reward` SET `VerifiedBuild`=45745 WHERE `ID` IN (55991, 55992, 55990, 55988, 55989, 55981, 56344, 56839, 55764, 55763, 55881, 55196, 55965);
UPDATE `quest_offer_reward` SET `RewardText`='I\'m relieved you rescued Meredy. That\'s one more life saved and one fewer sacrificed.\n\nAnd I\'m glad to see you helped Henry get back to his old self.\n\nWe\'ll work with Meredy to figure out a plan of action.', `VerifiedBuild`=45745 WHERE `ID`=55882; -- Message to Base
UPDATE `quest_offer_reward` SET `RewardText`='You have my thanks, $n. I must leave this world, but I wish you luck. \n\nTake my blessing. May it aid you against these monsters.', `VerifiedBuild`=45745 WHERE `ID`=54933; -- Freeing the Light
UPDATE `quest_offer_reward` SET `RewardText`='Ralia Dreamchaser is a druid of the Cenarion Circle, an order dedicated to protecting the wilds of Azeroth.\n\nThank you for rescuing her. Her aid is sure to be of use against the ogres.', `VerifiedBuild`=45745 WHERE `ID`=55639; -- Who Lurks in the Pit
UPDATE `quest_offer_reward` SET `RewardText`='All stocked up? That\'s great.\n\nPrivate Cole and Quartermaster Richter also found this bag in the nearby ruins. They thought you might make good use of it.', `VerifiedBuild`=45745 WHERE `ID`=55194; -- Stocking Up on Supplies

DELETE FROM `quest_poi` WHERE (`QuestID`=59641 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59641 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59641 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59641 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59641 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(59641, 0, 4, 32, 0, 0, 0, 84, 0, 0, 0, 0, 0, 1925526, 0, 45745), -- The Nation of Kul Tiras
(59641, 0, 3, 2, 396654, 120590, 0, 84, 0, 0, 0, 0, 0, 1472635, 0, 45745), -- The Nation of Kul Tiras
(59641, 0, 2, 1, 396679, 165517, 0, 84, 0, 0, 0, 0, 0, 1926190, 0, 45745), -- The Nation of Kul Tiras
(59641, 0, 1, 0, 397007, 166251, 0, 84, 0, 0, 0, 0, 0, 1925525, 0, 45745), -- The Nation of Kul Tiras
(59641, 0, 0, -1, 0, 0, 1643, 1161, 0, 0, 0, 0, 0, 1499377, 0, 45745); -- The Nation of Kul Tiras

UPDATE `quest_poi` SET `VerifiedBuild`=45745 WHERE (`QuestID`=58983 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=58983 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58983 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=58912 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=58912 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58912 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=58911 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=58911 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58911 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59587 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59587 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59587 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59587 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=58909 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=58909 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58909 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=58908 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=58908 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=58908 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=58908 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58908 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59583 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59583 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=55991 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=55991 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=55991 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=55992 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=55992 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=55992 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=55992 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=55992 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=55992 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=55992 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=55988 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=55988 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=55988 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=55989 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=55989 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=55989 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=55990 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=55990 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=55990 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=55990 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=55990 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=55990 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=55990 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=55990 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=55981 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=55981 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=55981 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=55981 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=55981 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=55981 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=55981 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=55981 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=56839 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=56839 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=56839 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=56344 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=56344 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59354 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59354 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59352 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59352 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59352 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=55882 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=55882 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=55764 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=55764 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=55764 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=55881 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=55881 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=55881 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=55763 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=55763 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=55763 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=54933 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=54933 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=54933 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=54933 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=54933 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=55196 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=55196 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=55196 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=55639 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=55639 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=55639 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=55639 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=55639 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=55965 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=55965 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=55194 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=55194 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=55194 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=55194 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=59641 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=59641 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59641 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59641 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59641 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(59641, 4, 0, -8361, 230, 155, 45745), -- The Nation of Kul Tiras
(59641, 3, 0, -8282, 1327, 5, 45745), -- The Nation of Kul Tiras
(59641, 2, 0, -8451, 373, 134, 45745), -- The Nation of Kul Tiras
(59641, 1, 0, -8367, 242, 155, 45745), -- The Nation of Kul Tiras
(59641, 0, 0, 727, -443, 5, 45745); -- The Nation of Kul Tiras

UPDATE `quest_poi_points` SET `VerifiedBuild`=45745 WHERE (`QuestID`=58983 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=58983 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58983 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=58912 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=58912 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58912 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=58911 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=58911 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58911 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59587 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59587 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59587 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59587 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=58909 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=58909 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58909 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=58908 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=58908 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=58908 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=58908 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58908 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59583 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59583 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=55991 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=55991 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55991 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=55992 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=55992 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=55992 AND `Idx1`=4 AND `Idx2`=11) OR (`QuestID`=55992 AND `Idx1`=4 AND `Idx2`=10) OR (`QuestID`=55992 AND `Idx1`=4 AND `Idx2`=9) OR (`QuestID`=55992 AND `Idx1`=4 AND `Idx2`=8) OR (`QuestID`=55992 AND `Idx1`=4 AND `Idx2`=7) OR (`QuestID`=55992 AND `Idx1`=4 AND `Idx2`=6) OR (`QuestID`=55992 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=55992 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=55992 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=55992 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=55992 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=55992 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=55992 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=55992 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=55992 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55992 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=55988 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=55988 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=55988 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=55988 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=55988 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=55988 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=55988 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=55988 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55988 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=55989 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=55989 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=55989 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=55989 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=55989 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=55989 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55989 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=55990 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=55990 AND `Idx1`=6 AND `Idx2`=2) OR (`QuestID`=55990 AND `Idx1`=6 AND `Idx2`=1) OR (`QuestID`=55990 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=55990 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=55990 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=55990 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=55990 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=55990 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55990 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=55981 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=55981 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=55981 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=55981 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=55981 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=55981 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=55981 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=55981 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=55981 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=55981 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=55981 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=55981 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=55981 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=55981 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55981 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=56839 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=56839 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=56839 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=56344 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=56344 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59354 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59354 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59352 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59352 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59352 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=55882 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55882 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=55764 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=55764 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=55764 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=55764 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=55764 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55764 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=55881 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=55881 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=55881 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=55881 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=55881 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55881 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=55763 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=55763 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55763 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=54933 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=54933 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=54933 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=54933 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=54933 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=55196 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=55196 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55196 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=55639 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=55639 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=55639 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=55639 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=55639 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=55639 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=55639 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=55639 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55639 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=55965 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55965 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=55194 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=55194 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=55194 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55194 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (59587 /*What's Your Specialty?*/, 59354 /*The Best Way to Use Sheep*/, 59352 /*A Mage's Knowledge*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(59587, 1, 0, 0, 0, 0, 0, 0, 0, 45745), -- What's Your Specialty?
(59354, 274, 25, 1, 0, 0, 0, 0, 0, 45745), -- The Best Way to Use Sheep
(59352, 11, 25, 274, 1, 0, 0, 0, 0, 45745); -- A Mage's Knowledge

UPDATE `quest_details` SET `VerifiedBuild`=45745 WHERE `ID` IN (51341, 59641, 58983, 58912, 58911, 58909, 58908, 59583, 55991, 55992, 55988, 55989, 55990, 55981, 56839, 56344, 55882, 55764, 55881, 55763, 54933, 55196, 55639, 55965, 55194);

DELETE FROM `quest_request_items` WHERE `ID`=59352;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(59352, 0, 0, 0, 0, 'I hope me book isn\'t too damaged after sittin\' at the bottom o\' the lake.', 0); -- A Mage's Knowledge



DELETE FROM `creature_queststarter` WHERE (`id`=156886 AND `quest` IN (59354,59352)) OR (`id`=156833 AND `quest`=55196);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(156886, 59354, 45745), -- The Best Way to Use Sheep offered Meredy Huntswell
(156886, 59352, 45745), -- A Mage's Knowledge offered Meredy Huntswell
(156833, 55196, 45745); -- The Harpy Problem offered Henry Garrick

UPDATE `creature_queststarter` SET `VerifiedBuild`=45745 WHERE (`id`=120922 AND `quest`=51341) OR (`id`=165395 AND `quest`=59641) OR (`id`=163219 AND `quest`=58983) OR (`id`=163211 AND `quest`=58912) OR (`id`=163097 AND `quest` IN (58911,59587)) OR (`id`=163007 AND `quest`=58909) OR (`id`=163095 AND `quest`=58908) OR (`id`=154169 AND `quest`=59583) OR (`id`=156961 AND `quest` IN (55991,55990)) OR (`id`=156965 AND `quest`=55992) OR (`id`=156942 AND `quest`=55988) OR (`id`=156960 AND `quest`=55989) OR (`id`=156941 AND `quest`=55981) OR (`id`=156807 AND `quest` IN (56344,55194)) OR (`id`=156859 AND `quest` IN (55882,55881,55763)) OR (`id`=156860 AND `quest`=55764) OR (`id`=157114 AND `quest`=54933) OR (`id`=156803 AND `quest`=55639) OR (`id`=154300 AND `quest`=55965);

DELETE FROM `creature_questender` WHERE (`id`=156961 AND `quest` IN (55992,55981));
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(156961, 55992, 45745), -- Dungeon: Darkmaul Citadel ended by Captain Garrick
(156961, 55981, 45745); -- Right Beneath Their Eyes ended by Captain Garrick

UPDATE `creature_questender` SET `VerifiedBuild`=45745 WHERE (`id`=120922 AND `quest`=59641) OR (`id`=165395 AND `quest`=58983) OR (`id`=163219 AND `quest`=58912) OR (`id`=44237 AND `quest`=58911) OR (`id`=164955 AND `quest`=59587) OR (`id`=163007 AND `quest` IN (58909,58908)) OR (`id`=163095 AND `quest`=59583) OR (`id`=154169 AND `quest`=55991) OR (`id`=156965 AND `quest`=55990) OR (`id`=156942 AND `quest`=55988) OR (`id`=156960 AND `quest`=55989) OR (`id`=156941 AND `quest`=56344) OR (`id`=155733 AND `quest`=56839) OR (`id`=156886 AND `quest` IN (59354,59352)) OR (`id`=156807 AND `quest` IN (55882,55639,55194)) OR (`id`=156860 AND `quest`=55764) OR (`id`=156882 AND `quest`=55763) OR (`id`=156859 AND `quest` IN (55881,55196)) OR (`id`=157114 AND `quest`=54933) OR (`id`=156891 AND `quest`=55965);


UPDATE `gameobject_queststarter` SET `VerifiedBuild`=45745 WHERE (`id`=330627 AND `quest`=56839);


DELETE FROM `spell_target_position` WHERE (`ID`=269865 AND `EffectIndex`=0);
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES
(269865, 0, 1643, 727.8599853515625, -445.70001220703125, 19.32999992370605468, 45745); -- Spell: 269865 (Teleport to Jaina) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)

UPDATE `spell_target_position` SET `VerifiedBuild`=45745 WHERE (`EffectIndex`=0 AND `ID` IN (240876,101260,327496,319030,312548));


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (31792,31791));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(31792, 0, 0, 0, 966, 45745),
(31791, 0, 0, 0, 966, 45745);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=45745 WHERE (`DifficultyID`=0 AND `Entry` IN (2198,142956,135520,128630,120922,139088,135521,158512,158589,158488,26548,149374,120590,43102,144378,151187,104549,36799,52654,53352,52806,188374,29154,44749,29019,29088,29152,29016,176241,176227,176238,176236,176234,176231,176225,176224,176223,176245,176240,50434,176246,176243,176222,133494,10782,133458,1646,35168,141054,141030,141020,141036,12360,14555,4753,12359,12358,14602,14556,4730,50307,50305,4423,141079,3681,140403,140253,140407,44239,44243,44238,44241,165395,165396,165394,165393,163219,1750,1751,120594,17103,2285,51938,1439,4960,175138,1752,165505,61840,61839,2331,2330,3504,47688,163211,5482,340,173706,155011,1327,3629,6090,5483,176220,176203,6089,164957,164939,62954,164955,6946,164948,164940,164960,164954,164953,164947,164945,164942,164956,164950,164946,164943,1326,164961,164941,167429,164962,164952,164949,35845,175435,62913,7208,7207,8383,1325,14561,14559,51998,13283,14560,44252,114832,43693,163007,43694,308,4269,918,284,31146,153292,73190,146633,1324,12786,12785,12784,1341,44245,1328,44237,52029,69975,1323,12783,176192,19848,12779,58154,12787,12780,54660,12781,44246,175051,52030,28355,28347,69974,176230,176233,176229,2533,2532,61081,62822,62821,1433,18375,18360,352,18362,18359,43769,18357,61896,61895,14394,14721,186180,65153,163095,17804,42218,61080,4959,154169,140146,140022,163963,154155,168255,156828,156814,168740,157300,161350,156825,156501,156821,157328,168738,161504,156965,153581,174530,174529,174523,174528,174527,174525,153583,153582,156961,156960,156954,161306,154103,153580,154146,154147,154145,153238,153242,153239,156944,156943,156941,156942,164927,155733,172026,165711,161006,163040,165730,172027,171997,165727,89715,163533,163039,156885,156887,156886,156882,153964,155197,155199,169162,155192,172029,153211,156986,152998,152571,164025,163069,164022,157104,164026,152843,156859,156860,172028,155572,157114,162954,156932,160451,156929,156902,161224,156900,156716,156891,160394,160433,156833,156803,156801,150245,161265,153266,161666,174977,154300,156808,156800,156807,165758,156804,165757,164827,154268,168382)) OR (`DifficultyID`=150 AND `Entry` IN (156913,166262,165198));


UPDATE `creature_model_info` SET `VerifiedBuild`=45745 WHERE `DisplayID` IN (2264, 2256, 1525, 88295, 77039, 76547, 88604, 88614, 76515, 80051, 88612, 88615, 27716, 27715, 24135, 82070, 82069, 32939, 82089, 68632, 30320, 38008, 31839, 70765, 31737, 31842, 106445, 88847, 5003, 99503, 25943, 34115, 99501, 88841, 99505, 25847, 25899, 5008, 25848, 100178, 100166, 100175, 100173, 100171, 100169, 100164, 100163, 100162, 100185, 100177, 36791, 100186, 100180, 100161, 82973, 83113, 10131, 82932, 1357, 2203, 86657, 37113, 28416, 86659, 37111, 20873, 69890, 37114, 29755, 3534, 84992, 87023, 69892, 10624, 1460, 17200, 37109, 6448, 14332, 5070, 6444, 6080, 14632, 86654, 14331, 2788, 37015, 37014, 2451, 37121, 86661, 2306, 29961, 83232, 10045, 4399, 2272, 2248, 86655, 99397, 5441, 37116, 37124, 4409, 1717, 37122, 37110, 4181, 37123, 86664, 37120, 37119, 2269, 4271, 32776, 33746, 33748, 33745, 33747, 82047, 62093, 5077, 75856, 16854, 99949, 5075, 99947, 31174, 1758, 2961, 78345, 18931, 95808, 42278, 42277, 99197, 99196, 99500, 99950, 3281, 5728, 98571, 92198, 1516, 1696, 5000, 3288, 100003, 100004, 4996, 95600, 95629, 95603, 7613, 95611, 95628, 95599, 95605, 95606, 95616, 95619, 95626, 95602, 95609, 95617, 95621, 1523, 95627, 95608, 95610, 42782, 6446, 7673, 1513, 14583, 14582, 37706, 13171, 14338, 99667, 73494, 33470, 2402, 2405, 1507, 2404, 27510, 51166, 89374, 1512, 12920, 12925, 12921, 1518, 33750, 1521, 33743, 37719, 12917, 1515, 12922, 100159, 19216, 12910, 40013, 12919, 12924, 21512, 12669, 33751, 99375, 37720, 25336, 25319, 31953, 100168, 100170, 100167, 42722, 42720, 5550, 17703, 17697, 5128, 17717, 17696, 33507, 17694, 14431, 12923, 46026, 98730, 17250, 32729, 328, 4469, 87372, 97267, 137, 4960, 92823, 80910, 56491, 80362, 85966, 87543, 77694, 78416, 87544, 91853, 91854, 91851, 52656, 91777, 91776, 91775, 64328, 88786, 88787, 91781, 64331, 91782, 91780, 95920, 64330, 61764, 64922, 97228, 63597, 63605, 1157, 283);
UPDATE `creature_model_info` SET `BoundingRadius`=0.435065627098083496, `CombatReach`=0, `VerifiedBuild`=45745 WHERE `DisplayID`=87893;
UPDATE `creature_model_info` SET `BoundingRadius`=0.25, `VerifiedBuild`=45745 WHERE `DisplayID`=79382;
UPDATE `creature_model_info` SET `BoundingRadius`=0.321299970149993896, `CombatReach`=1.574999928474426269, `VerifiedBuild`=45745 WHERE `DisplayID`=93533;
UPDATE `creature_model_info` SET `BoundingRadius`=0.60000002384185791, `CombatReach`=0, `VerifiedBuild`=45745 WHERE `DisplayID`=76043;
UPDATE `creature_model_info` SET `BoundingRadius`=0.208000004291534423, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID` IN (93532, 5565, 33469, 96136);
UPDATE `creature_model_info` SET `DisplayID_Other_Gender`=0, `VerifiedBuild`=45745 WHERE `DisplayID`=14614;
UPDATE `creature_model_info` SET `BoundingRadius`=0.435065627098083496, `CombatReach`=1.20000004768371582, `VerifiedBuild`=45745 WHERE `DisplayID`=87892;
UPDATE `creature_model_info` SET `BoundingRadius`=0.367200016975402832, `CombatReach`=1.80000007152557373, `VerifiedBuild`=45745 WHERE `DisplayID`=72253;
UPDATE `creature_model_info` SET `BoundingRadius`=0.305999994277954101, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID` IN (101796, 95596, 99666, 95041, 87371, 97229, 91010);
UPDATE `creature_model_info` SET `BoundingRadius`=0.388999998569488525, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID`=95595;
UPDATE `creature_model_info` SET `BoundingRadius`=0.525000035762786865, `CombatReach`=1.75, `VerifiedBuild`=45745 WHERE `DisplayID`=28048;
UPDATE `creature_model_info` SET `BoundingRadius`=0.872651159763336181, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID` IN (1065, 987);
UPDATE `creature_model_info` SET `BoundingRadius`=3.041802883148193359, `CombatReach`=6.299999713897705078, `VerifiedBuild`=45745 WHERE `DisplayID`=97213;
UPDATE `creature_model_info` SET `BoundingRadius`=2.161906719207763671, `CombatReach`=3.779999971389770507, `VerifiedBuild`=45745 WHERE `DisplayID`=58433;
UPDATE `creature_model_info` SET `BoundingRadius`=11.64418411254882812, `CombatReach`=12, `VerifiedBuild`=45745 WHERE `DisplayID`=98013;
UPDATE `creature_model_info` SET `BoundingRadius`=2.144748687744140625, `CombatReach`=3.750000238418579101, `VerifiedBuild`=45745 WHERE `DisplayID`=92822;
UPDATE `creature_model_info` SET `BoundingRadius`=2.144748687744140625, `CombatReach`=3.75, `VerifiedBuild`=45745 WHERE `DisplayID`=86404;
UPDATE `creature_model_info` SET `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID` IN (92825, 95075);
UPDATE `creature_model_info` SET `BoundingRadius`=2.69066929817199707, `CombatReach`=5.25, `VerifiedBuild`=45745 WHERE `DisplayID`=96778;
UPDATE `creature_model_info` SET `BoundingRadius`=0.882957339286804199, `CombatReach`=0, `VerifiedBuild`=45745 WHERE `DisplayID`=84585;
UPDATE `creature_model_info` SET `BoundingRadius`=0.426489889621734619, `VerifiedBuild`=45745 WHERE `DisplayID`=89266;
UPDATE `creature_model_info` SET `BoundingRadius`=1.71579897403717041, `CombatReach`=3, `VerifiedBuild`=45745 WHERE `DisplayID` IN (91779, 92831);
UPDATE `creature_model_info` SET `BoundingRadius`=0.729166150093078613, `CombatReach`=3.149999856948852539, `VerifiedBuild`=45745 WHERE `DisplayID`=95204;
UPDATE `creature_model_info` SET `BoundingRadius`=0.347000002861022949, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID`=92795;
UPDATE `creature_model_info` SET `BoundingRadius`=0.444560199975967407, `CombatReach`=1.132652997970581054, `VerifiedBuild`=45745 WHERE `DisplayID` IN (70178, 70179);
UPDATE `creature_model_info` SET `BoundingRadius`=1.156236171722412109, `CombatReach`=0.699999988079071044, `VerifiedBuild`=45745 WHERE `DisplayID`=73350;
UPDATE `creature_model_info` SET `BoundingRadius`=0.928183615207672119, `CombatReach`=0.655102074146270751, `VerifiedBuild`=45745 WHERE `DisplayID`=1088;


UPDATE `trainer` SET `VerifiedBuild`=45745 WHERE `Id` IN (148, 386);


UPDATE `trainer_spell` SET `VerifiedBuild`=45745 WHERE (`TrainerId`=148 AND `SpellId` IN (344597,344587,281403,281400,224869,224871,176248,176246,132621,132620,88342,88345,33690,53140,53142,33691));
UPDATE `trainer_spell` SET `ReqLevel`=21, `VerifiedBuild`=45745 WHERE (`TrainerId`=148 AND `SpellId` IN (3562,3565,3561,49359,32271)); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `ReqLevel`=24, `VerifiedBuild`=45745 WHERE (`TrainerId`=148 AND `SpellId` IN (49360,32266,11416,11419,10059)); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=950, `VerifiedBuild`=45745 WHERE (`TrainerId`=386 AND `SpellId`=33389); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=47500000, `VerifiedBuild`=45745 WHERE (`TrainerId`=386 AND `SpellId`=90266); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=475000, `VerifiedBuild`=45745 WHERE (`TrainerId`=386 AND `SpellId`=33392); -- No Faction found! MoneyCost not recalculated!
UPDATE `trainer_spell` SET `MoneyCost`=2375000, `VerifiedBuild`=45745 WHERE (`TrainerId`=386 AND `SpellId`=34092); -- No Faction found! MoneyCost not recalculated!


UPDATE `npc_vendor` SET `slot`=7, `VerifiedBuild`=45745 WHERE (`entry`=43694 AND `item`=18776 AND `ExtendedCost`=0 AND `type`=1); -- Swift Palomino
UPDATE `npc_vendor` SET `slot`=6, `VerifiedBuild`=45745 WHERE (`entry`=43694 AND `item`=18778 AND `ExtendedCost`=0 AND `type`=1); -- Swift White Steed
UPDATE `npc_vendor` SET `slot`=5, `VerifiedBuild`=45745 WHERE (`entry`=43694 AND `item`=18777 AND `ExtendedCost`=0 AND `type`=1); -- Swift Brown Steed
UPDATE `npc_vendor` SET `slot`=4, `VerifiedBuild`=45745 WHERE (`entry`=43694 AND `item`=5656 AND `ExtendedCost`=0 AND `type`=1); -- Brown Horse Bridle
UPDATE `npc_vendor` SET `slot`=3, `VerifiedBuild`=45745 WHERE (`entry`=43694 AND `item`=5655 AND `ExtendedCost`=0 AND `type`=1); -- Chestnut Mare Bridle
UPDATE `npc_vendor` SET `slot`=2, `VerifiedBuild`=45745 WHERE (`entry`=43694 AND `item`=2414 AND `ExtendedCost`=0 AND `type`=1); -- Pinto Bridle
UPDATE `npc_vendor` SET `slot`=1, `VerifiedBuild`=45745 WHERE (`entry`=43694 AND `item`=2411 AND `ExtendedCost`=0 AND `type`=1); -- Black Stallion Bridle
UPDATE `npc_vendor` SET `VerifiedBuild`=45745 WHERE (`entry`=156800 AND `item`=168100 AND `ExtendedCost`=0 AND `type`=1);
UPDATE `npc_vendor` SET `IgnoreFiltering`=1, `VerifiedBuild`=45745 WHERE (`entry`=156800 AND `item`=117 AND `ExtendedCost`=0 AND `type`=1); -- Tough Jerky


UPDATE `points_of_interest` SET `Flags`=99, `Name`='Stormwind Stable Master', `VerifiedBuild`=45745 WHERE `ID`=2418;


UPDATE `creature_template` SET `npcflag`=1 WHERE `entry`=139088; -- Boralus Guard
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags`=768 WHERE `entry`=31792; -- Sailor Picardo
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `unit_flags`=768 WHERE `entry`=31791; -- Sailor Dawning
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=12, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `dynamicflags`=128 WHERE `entry`=188374; -- Millbert
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=133494; -- Dewil
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=133458; -- Rauvir
UPDATE `creature_template` SET `npcflag`=17 WHERE `entry`=133394; -- Elestrae Dawnshard
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=141036; -- Pumpkin Stalker
UPDATE `creature_template` SET `npcflag`=17 WHERE `entry`=133363; -- Aevedos
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`=4730; -- Lelanai
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`=44395; -- Celestine of the Harvest
UPDATE `creature_template` SET `npcflag`=4241 WHERE `entry`=55684; -- Jordan Smith
UPDATE `creature_template` SET `minlevel`=50, `maxlevel`=50 WHERE `entry`=165395; -- Anduin Wrynn
UPDATE `creature_template` SET `minlevel`=53, `maxlevel`=53 WHERE `entry`=165396; -- Lady Jaina Proudmoore
UPDATE `creature_template` SET `minlevel`=50, `maxlevel`=50 WHERE `entry`=165394; -- Genn Greymane
UPDATE `creature_template` SET `minlevel`=50, `maxlevel`=50 WHERE `entry`=120594; -- Lion's Guard
UPDATE `creature_template` SET `gossip_menu_id`=25369 WHERE `entry`=165505; -- Loretta Banks
UPDATE `creature_template` SET `gossip_menu_id`=25355 WHERE `entry`=164955; -- Frazzle Frostfingers
UPDATE `creature_template` SET `gossip_menu_id`=4004 WHERE `entry`=43694; -- Katie Stokx
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `speed_run`=1.385714292526245117, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=4269; -- Chestnut Mare
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=12786; -- Guard Quine
UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=12785; -- Sergeant Major Clate
UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=12784; -- Lieutenant Jackspring
UPDATE `creature_template` SET `gossip_menu_id`=25134 WHERE `entry`=44237; -- Maegan Tillman

UPDATE `creature_template` SET `npcflag`=17 WHERE `entry`=5564; -- Simon Tanner

UPDATE `creature_template` SET `minlevel`=60, `unit_flags`=768 WHERE `entry`=54334; -- Darkmoon Faire Mystic Mage
UPDATE `creature_template` SET `npcflag`=1 WHERE `entry`=18927; -- Human Commoner
UPDATE `creature_template` SET `gossip_menu_id`=435, `minlevel`=60, `maxlevel`=60, `faction`=11, `npcflag`=1, `speed_run`=1.428571462631225585, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=186180; -- Stormwind City Guard

UPDATE `creature_template` SET `gossip_menu_id`=25373, `minlevel`=10 WHERE `entry`=163095; -- Lindie Springstock
UPDATE `creature_template` SET `minlevel`=10 WHERE `entry` IN (154169, 156961, 156941, 156807); -- Captain Garrick
UPDATE `creature_template` SET `minlevel`=50, `maxlevel`=50 WHERE `entry`=140022; -- Stormwind Infantry
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=10 WHERE `entry`=168255; -- Alliance Gryphon
UPDATE `creature_template` SET `minlevel`=8, `maxlevel`=8 WHERE `entry` IN (156913, 166262); -- Decaying Corpse
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry` IN (165198, 164927, 163040, 163039, 162954); -- InvisBunny
UPDATE `creature_template` SET `minlevel`=12, `maxlevel`=12, `unit_flags2`=2099200 WHERE `entry`=156814; -- Gor'groth
UPDATE `creature_template` SET `minlevel`=12, `maxlevel`=12 WHERE `entry`=157300; -- Tunk
UPDATE `creature_template` SET `npcflag`=1 WHERE `entry`=161350; -- Captain Garrick
UPDATE `creature_template` SET `minlevel`=11, `maxlevel`=11 WHERE `entry`=156825; -- Darkmaul Centurion
UPDATE `creature_template` SET `minlevel`=12, `maxlevel`=12 WHERE `entry`=156501; -- Ravnyr
UPDATE `creature_template` SET `minlevel`=11, `maxlevel`=11 WHERE `entry`=156821; -- Darkmaul Shadowcaller
UPDATE `creature_template` SET `minlevel`=11, `maxlevel`=11 WHERE `entry`=157328; -- Darkmaul Channeler
UPDATE `creature_template` SET `minlevel`=10 WHERE `entry` IN (156965, 156954); -- Captain Kelra
UPDATE `creature_template` SET `speed_walk`=0.5, `speed_run`=0.571428596973419189 WHERE `entry`=153581; -- Grunk
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=10 WHERE `entry`=156960; -- Meredy Huntswell
UPDATE `creature_template` SET `minlevel`=10, `unit_flags3`=16777216 WHERE `entry` IN (161306, 157104); -- Invisible Stalker
UPDATE `creature_template` SET `minlevel`=10 WHERE `entry` IN (153242, 161006); -- Ogre Shadowcaster
UPDATE `creature_template` SET `minlevel`=10 WHERE `entry`=153239; -- Ogre Brute
UPDATE `creature_template` SET `minlevel`=10 WHERE `entry` IN (156944, 156932); -- Ralia Dreamchaser
UPDATE `creature_template` SET `npcflag`=1 WHERE `entry`=156943; -- Meredy Huntswell
UPDATE `creature_template` SET `minlevel`=10 WHERE `entry` IN (156942, 156887, 156859, 156833); -- Henry Garrick
UPDATE `creature_template` SET `unit_flags3`=16777216, `dynamicflags`=128 WHERE `entry`=155733; -- Hidden Treasure Chest
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=165730; -- Plains Stag
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=165727; -- Plains Doe
UPDATE `creature_template` SET `minlevel`=10 WHERE `entry`=163533; -- Hjalmar the Undying
UPDATE `creature_template` SET `minlevel`=10 WHERE `entry` IN (156885, 155199, 156860, 156804); -- Kee-La
UPDATE `creature_template` SET `gossip_menu_id`=25321 WHERE `entry`=156886; -- Meredy Huntswell
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=10 WHERE `entry`=155197; -- Henry Garrick
UPDATE `creature_template` SET `minlevel`=10 WHERE `entry`=169162; -- Hunting Worg
UPDATE `creature_template` SET `minlevel`=10 WHERE `entry`=155192; -- Harpy Ambusher
UPDATE `creature_template` SET `npcflag`=0 WHERE `entry`=153211; -- Meredy Huntswell
UPDATE `creature_template` SET `minlevel`=10, `unit_flags`=32768 WHERE `entry`=152998; -- Hunting Worg
UPDATE `creature_template` SET `minlevel`=10 WHERE `entry`=152571; -- Harpy Snatcher
UPDATE `creature_template` SET `faction`=14, `unit_flags3`=16777216, `dynamicflags`=128 WHERE `entry` IN (164025, 164022, 164026, 155572); -- InvisBunny
UPDATE `creature_template` SET `minlevel`=10 WHERE `entry`=163069; -- Yorah
UPDATE `creature_template` SET `minlevel`=10 WHERE `entry`=152843; -- Harpy Boltcaller
UPDATE `creature_template` SET `minlevel`=10 WHERE `entry`=157114; -- Lightspawn
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=160451; -- Hrun the Exiled
UPDATE `creature_template` SET `minlevel`=10, `npcflag`=0, `speed_walk`=1, `speed_run`=1.142857193946838378, `unit_flags`=768, `VehicleId`=0 WHERE `entry`=156929; -- Ralia Dreamchaser
UPDATE `creature_template` SET `unit_flags`=33587968 WHERE `entry`=156900; -- Hrun the Exiled
UPDATE `creature_template` SET `minlevel`=10, `npcflag`=0 WHERE `entry`=156891; -- Bjorn Stouthands
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=10 WHERE `entry`=160394; -- Barrow Spider
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=10 WHERE `entry`=160433; -- Barrow Spiderling
UPDATE `creature_template` SET `minlevel`=10 WHERE `entry`=156803; -- Alaria
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=10 WHERE `entry`=156801; -- Private Cole
UPDATE `creature_template` SET `minlevel`=10 WHERE `entry`=150245; -- Lindie Springstock
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=153266; -- Killclaw the Terrible
UPDATE `creature_template` SET `minlevel`=10, `maxlevel`=10 WHERE `entry`=161666; -- Austin Huxworth
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry` IN (174977, 168382); -- Spar Point Advertisement
UPDATE `creature_template` SET `minlevel`=10 WHERE `entry`=154300; -- Bjorn Stouthands
UPDATE `creature_template` SET `minlevel`=10 WHERE `entry`=156808; -- Small Boar
UPDATE `creature_template` SET `gossip_menu_id`=24885, `minlevel`=10, `maxlevel`=10 WHERE `entry`=156800; -- Quartermaster Richter
UPDATE `creature_template` SET `minlevel`=9 WHERE `entry`=154268; -- Hungry Vulture


UPDATE `quest_template` SET `RewardBonusMoney`=90, `AllowableRaces`=6130900294268439629, `VerifiedBuild`=45745 WHERE `ID`=51341; -- Daughter of the Sea
UPDATE `quest_template` SET `RewardBonusMoney`=90, `VerifiedBuild`=45745 WHERE `ID`=59641; -- The Nation of Kul Tiras
UPDATE `quest_template` SET `RewardBonusMoney`=0, `VerifiedBuild`=45745 WHERE `ID`=58983; -- Battle for Azeroth: Tides of War
UPDATE `quest_template` SET `RewardBonusMoney`=0, `VerifiedBuild`=45745 WHERE `ID`=58912; -- An Urgent Meeting
UPDATE `quest_template` SET `RewardBonusMoney`=60, `VerifiedBuild`=45745 WHERE `ID`=58911; -- Home Is Where the Hearth Is
UPDATE `quest_template` SET `RewardBonusMoney`=60, `VerifiedBuild`=45745 WHERE `ID`=59587; -- What's Your Specialty?
UPDATE `quest_template` SET `RewardBonusMoney`=60, `VerifiedBuild`=45745 WHERE `ID`=58909; -- License to Ride
UPDATE `quest_template` SET `RewardBonusMoney`=60, `VerifiedBuild`=45745 WHERE `ID`=58908; -- Finding Your Way
UPDATE `quest_template` SET `RewardBonusMoney`=60, `VerifiedBuild`=45745 WHERE `ID`=59583; -- Welcome to Stormwind
UPDATE `quest_template` SET `RewardBonusMoney`=90, `VerifiedBuild`=45745 WHERE `ID`=55991; -- An End to Beginnings
UPDATE `quest_template` SET `RewardBonusMoney`=90, `VerifiedBuild`=45745 WHERE `ID`=55988; -- Like Ogres to the Slaughter
UPDATE `quest_template` SET `RewardBonusMoney`=90, `VerifiedBuild`=45745 WHERE `ID`=55989; -- Catapult Destruction
UPDATE `quest_template` SET `RewardBonusMoney`=90, `VerifiedBuild`=45745 WHERE `ID`=55990; -- Controlling their Stones
UPDATE `quest_template` SET `RewardBonusMoney`=90, `VerifiedBuild`=45745 WHERE `ID`=55981; -- Right Beneath Their Eyes
UPDATE `quest_template` SET `RewardBonusMoney`=120, `Flags`=36700160, `VerifiedBuild`=45745 WHERE `ID`=56839; -- Killclaw the Terrible
UPDATE `quest_template` SET `RewardBonusMoney`=30, `VerifiedBuild`=45745 WHERE `ID`=56344; -- To Darkmaul Citadel
UPDATE `quest_template` SET `RewardBonusMoney`=90, `VerifiedBuild`=45745 WHERE `ID`=59354; -- The Best Way to Use Sheep
UPDATE `quest_template` SET `RewardBonusMoney`=90, `VerifiedBuild`=45745 WHERE `ID`=59352; -- A Mage's Knowledge
UPDATE `quest_template` SET `RewardBonusMoney`=30, `VerifiedBuild`=45745 WHERE `ID`=55882; -- Message to Base
UPDATE `quest_template` SET `RewardBonusMoney`=60, `VerifiedBuild`=45745 WHERE `ID`=55764; -- Harpy Culling
UPDATE `quest_template` SET `RewardBonusMoney`=60, `VerifiedBuild`=45745 WHERE `ID`=55881; -- Purge the Totems
UPDATE `quest_template` SET `RewardBonusMoney`=60, `VerifiedBuild`=45745 WHERE `ID`=55763; -- The Rescue of Meredy Huntswell
UPDATE `quest_template` SET `RewardBonusMoney`=0, `VerifiedBuild`=45745 WHERE `ID`=54933; -- Freeing the Light
UPDATE `quest_template` SET `RewardBonusMoney`=30, `VerifiedBuild`=45745 WHERE `ID`=55196; -- The Harpy Problem
UPDATE `quest_template` SET `RewardBonusMoney`=60, `VerifiedBuild`=45745 WHERE `ID`=55639; -- Who Lurks in the Pit
UPDATE `quest_template` SET `RewardBonusMoney`=30, `VerifiedBuild`=45745 WHERE `ID`=55965; -- Westward Bound
UPDATE `quest_template` SET `RewardBonusMoney`=30, `VerifiedBuild`=45745 WHERE `ID`=55194; -- Stocking Up on Supplies


UPDATE `quest_objectives` SET `VerifiedBuild`=45745 WHERE `ID` IN (335474, 396654, 396679, 397007, 395252, 407901, 396988, 395225, 396543, 396542, 395145, 396686, 396685, 395099, 389997, 389990, 389991, 389970, 389973, 389972, 389971, 390205, 390204, 390131, 391409, 396405, 396406, 396396, 389603, 389809, 389775, 390025, 390024, 390023, 390022, 393740, 391940, 391939, 396763, 388875);
UPDATE `quest_objectives` SET `Order`=4, `Flags`=2, `VerifiedBuild`=45745 WHERE `ID`=394292; -- 394292
UPDATE `quest_objectives` SET `Order`=3, `Amount`=3, `Flags`=24, `Description`='', `VerifiedBuild`=45745 WHERE `ID`=394291; -- 394291
UPDATE `quest_objectives` SET `Flags`=0, `VerifiedBuild`=45745 WHERE `ID`=389996; -- 389996
UPDATE `quest_objectives` SET `Flags`=0, `VerifiedBuild`=45745 WHERE `ID`=389995; -- 389995
UPDATE `quest_objectives` SET `Flags`=0, `VerifiedBuild`=45745 WHERE `ID`=389994; -- 389994


UPDATE `quest_visual_effect` SET `VerifiedBuild`=45745 WHERE (`Index`=0 AND `ID` IN (396654,396679,397007,407901,396988,395225,396542,395145,396686,396685,395099,389996,389995,389994,389971,390131,391409,396396,389775,393740,391940,391939,396763,388875));


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `QuestID` IN (59352,54933));


UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (154146, 153582); -- Wug
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (154147, 153583); -- Jugnug
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.200000002980232238, `VerifiedBuild`=45745 WHERE `entry`=172026; -- Cockroach
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.200000002980232238, `VerifiedBuild`=45745 WHERE `entry`=172027; -- Nibbling Scavenger
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (154155, 168255); -- Alliance Gryphon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=172028; -- Mountain Roamer
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=172029; -- Prickly Porcupine
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (163095, 163097, 165548); -- Lindie Springstock
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (154169, 163219, 161350, 153566, 156941, 156961); -- Captain Garrick
UPDATE `creature_template` SET `VerifiedBuild`=45745 WHERE `entry` IN (97207, 29088, 2285, 58154, 2330, 2331, 35845, 29152, 29154, 160964, 43690, 99541, 3504, 52654, 50434, 128630, 165505, 14721, 1323, 43769, 1324, 1327, 1328, 62821, 62822, 3629, 144378, 120922, 141030, 2532, 2533, 52806, 308, 1439, 340, 17103, 89715, 135520, 135521, 65153, 151187, 62954, 61839, 61840, 417, 28347, 28355, 26125, 61895, 61896, 4960, 12780, 12781, 12783, 12787, 6089, 6090, 156900, 140146, 1646, 51938, 173706, 139088, 181575, 140253, 1750, 1751, 1752, 52030, 43102, 44237, 44238, 44239, 44241, 44243, 44246, 77789, 188374, 69974, 10782, 1860, 186180, 61080, 61081, 47688, 140403, 140407, 175051, 149374, 176192, 176203, 176220, 53352, 176222, 176223, 176224, 176225, 176227, 173994, 176229, 176230, 176231, 176233, 176234, 155011, 176236, 176238, 176240, 176241, 176243, 176245, 176246, 175138, 42218, 31146, 14394, 165189, 61324, 5482, 5483, 78116, 54660, 36799, 120594, 2198, 29016, 29019, 142956);
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=14555; -- Swift Mistsaber
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=14556; -- Swift Frostsaber
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (165352, 156902, 156929, 156932, 156944, 156947); -- Ralia Dreamchaser
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=50305; -- Moon Priestess Lasara
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=50307; -- Lord Candren
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=175435; -- Jared
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=44749; -- Supply Sergeant Graves
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=12358; -- Riding Striped Frostsaber
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.200000002980232238, `VerifiedBuild`=45745 WHERE `entry`=168738; -- Citadel Rat
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=12359; -- Riding Spotted Frostsaber
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=12360; -- Riding Striped Nightsaber
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.200000002980232238, `VerifiedBuild`=45745 WHERE `entry`=168740; -- Citadel Recluse
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=165393; -- Master Mathias Shaw
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=165394; -- Genn Greymane
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=165395; -- Anduin Wrynn
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (165396, 120590); -- Lady Jaina Proudmoore
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=14602; -- Swift Stormsaber



UPDATE `creature_template` SET `femaleName`='', `CreatureDifficultyID`=186220, `VerifiedBuild`=45745 WHERE `entry`=156501; -- Ravnyr
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (163211, 156859, 156887, 153565, 156942, 161504, 155197); -- Henry Garrick
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=43693; -- Darlene Stokx
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=43694; -- Katie Stokx
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (161006, 153242); -- Ogre Shadowcaster
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (153211, 156882, 156943, 156948, 156960, 164970); -- Meredy Huntswell
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=165516; -- Stormwind Gryphon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=1325; -- Jasper Fel
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=1326; -- Sloan McCoy
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.400000005960464477, `VerifiedBuild`=45745 WHERE `entry`=153238; -- Tamed Boar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=153239; -- Ogre Brute
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=1341; -- Wilhelm Strang
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=6946; -- Renzik "The Shiv"
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=4730; -- Lelanai
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=153292; -- Training Dummy
UPDATE `creature_template` SET `VerifiedBuild`=45745 WHERE `entry`=53884; -- Feline Familiar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=174523; -- Tiang
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=174525; -- Kee
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=174527; -- Trem
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=174528; -- Zink
UPDATE `creature_template` SET `VerifiedBuild`=45745 WHERE `entry`=62829; -- Fishy
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=174529; -- Jard
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=141020; -- Ancient of Lore
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=174530; -- Pem
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=4753; -- Jartsam
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=141036; -- Pumpkin Stalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=146633; -- Knight-Captain Jessica
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (155572, 164927, 164022, 164025, 164026, 162954, 165198, 163039, 163040); -- InvisBunny
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=141054; -- Volunteer Farmhand
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=1433; -- Corbett Schneider
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=3681; -- Wisp
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=141079; -- Darnassus Sentinel
UPDATE `creature_template` SET `VerifiedBuild`=45745 WHERE `entry`=352; -- Dungar Longdrink
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=62913; -- Dave the Quick
UPDATE `creature_template` SET `HealthModifier`=1, `VerifiedBuild`=45745 WHERE `entry`=140022; -- Stormwind Infantry
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=7, `CreatureDifficultyID`=186219, `VerifiedBuild`=45745 WHERE `entry`=156814; -- Gor'groth
UPDATE `creature_template` SET `femaleName`='', `CreatureDifficultyID`=186222, `VerifiedBuild`=45745 WHERE `entry`=156821; -- Darkmaul Shadowcaller
UPDATE `creature_template` SET `femaleName`='', `CreatureDifficultyID`=186221, `VerifiedBuild`=45745 WHERE `entry`=156825; -- Darkmaul Centurion
UPDATE `creature_template` SET `femaleName`='', `CreatureDifficultyID`=186223, `VerifiedBuild`=45745 WHERE `entry`=156828; -- Shadowy Orb
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=163533; -- Hjalmar the Undying
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (161306, 157104); -- Invisible Stalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=155733; -- Hidden Treasure Chest
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (156860, 156885, 155199); -- Kee-La
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=4959; -- Jorgen
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=12779; -- Archmage Gaiman
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.300000011920928955, `VerifiedBuild`=45745 WHERE `entry` IN (169162, 152998); -- Hunting Worg
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=12784; -- Lieutenant Jackspring
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=12785; -- Sergeant Major Clate
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=12786; -- Guard Quine
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=7207; -- Doc Mixilpixil
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=7208; -- Noarm
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=156891; -- Bjorn Stouthands
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=31791; -- Sailor Dawning
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=31792; -- Sailor Picardo
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.25, `CreatureDifficultyID`=186225, `VerifiedBuild`=45745 WHERE `entry`=156913; -- Decaying Corpse
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=133458; -- Rauvir
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=35168; -- Striped Dawnsaber
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=153580; -- Gor'groth
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (153581, 154145); -- Grunk
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=8383; -- Master Wood
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=133494; -- Dewil
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry` IN (156954, 156965); -- Captain Kelra
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=73190; -- Necrolord Sipe
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=156986; -- Ogre Taskmaster
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=51998; -- Arthur Huwe
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=52029; -- Edlan Halsing
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=152571; -- Harpy Snatcher
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=160394; -- Barrow Spider
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=104549; -- Todd Borden
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=44245; -- Faldren Tillsdale
UPDATE `creature_template` SET `VerifiedBuild`=45745 WHERE `entry`=29726; -- Mr. Chilly
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=44252; -- Karin
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.300000011920928955, `VerifiedBuild`=45745 WHERE `entry`=160433; -- Barrow Spiderling
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=160451; -- Hrun the Exiled
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=69975; -- Captain Dirgehammer
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164939; -- Signilda Hardforge
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164940; -- Kualiang Thunderfist
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164941; -- Laphandrus Voidheart
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164942; -- Evelyn Thorn
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164943; -- Remaari
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164945; -- Mulric Boldrock
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164946; -- Veruca Darkstream
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164947; -- Gerald Black
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164948; -- Elton Campbell
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164949; -- Patrice Lancaster
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164950; -- Gilda Silvershield
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164952; -- Ezul'aan
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164953; -- Katrina Long
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164954; -- Juisheng Halfclaw
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164955; -- Frazzle Frostfingers
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164956; -- Azunla
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164957; -- Camille Taylor
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164960; -- Dalgrun Steelpine
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164961; -- Amaria Wildthorn
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164962; -- Mithlos Falconbriar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=164971; -- Private Cole
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=128159; -- Grasping Manifestation
UPDATE `creature_template` SET `VerifiedBuild`=45745 WHERE `entry`=44395; -- Celestine of the Harvest
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=26548; -- Leesha Tannerby
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=19848; -- Harbinger Ennarth
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=163963; -- Brunston Hammersmith
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.000012999999853491, `VerifiedBuild`=45745 WHERE `entry`=114832; -- PvP Training Dummy
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=918; -- Osborne the Night Man
UPDATE `creature_template` SET `femaleName`='', `CreatureDifficultyID`=186224, `VerifiedBuild`=45745 WHERE `entry`=157300; -- Tunk
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=152843; -- Harpy Boltcaller
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=5, `VerifiedBuild`=45745 WHERE `entry`=153964; -- Bloodbeak
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.25, `CreatureDifficultyID`=186954, `VerifiedBuild`=45745 WHERE `entry`=166262; -- Decaying Corpse
UPDATE `creature_template` SET `femaleName`='', `CreatureDifficultyID`=186217, `VerifiedBuild`=45745 WHERE `entry`=157328; -- Darkmaul Channeler
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=158488; -- Ty Julian
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=167429; -- Quartermaster Richter
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=13283; -- Lord Tony Romano
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=158512; -- Daniel Julian
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=163007; -- Curly
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.75, `VerifiedBuild`=45745 WHERE `entry`=155192; -- Harpy Ambusher
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=17804; -- Squire Rowe
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=4423; -- Darnassian Protector
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=154103; -- Ogre Chef
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=158589; -- Eisley
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=171997; -- Woodlands Watcher
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=163069; -- Yorah


UPDATE `creature_template_model` SET `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `CreatureID` IN (62829,2198,135521,128630,120922,142956,139088,135520,31792,31791,26548,149374,120590,43102,144378,52654,36799,151187,104549,53352,52806,188374,44749,29154,29019,29152,29088,29016,176241,176227,176246,176245,176236,176222,176243,176240,176238,176234,176231,176225,176224,176223,50434,133458,133494,10782,1646,165516,141054,141030,35168,141020,141036,12360,12358,12359,14602,4753,14555,50307,50305,14556,4730,4423,141079,44395,53884,3681,43690,140407,140403,140253,44243,44241,44239,44238,165396,165395,165394,165393,163219,120594,1751,1750,17103,51938,2285,1439,175138,4960,1752,165505,61840,61839,3504,2331,2330,47688,163211,1327,173706,176203,176220,155011,6090,5483,5482,3629,340,6089,163097,164957,164939,62954,164960,164955,164954,164953,164948,164940,6946,164956,164950,164947,164946,164945,164943,164942,1326,167429,164962,164961,164952,164949,164941,175435,62913,35845,7208,7207,8383,1325,78116,51998,13283,114832,44252,43693,163007,43694,153292,31146,918,308,73190,146633,69975,52029,44245,44237,12786,12785,12784,1341,1328,1324,1323,176192,12783,12779,19848,58154,12787,44246,12780,175051,12781,54660,52030,69974,28355,28347,176233,176230,176229,2533,2532,29726,181575,61081,417,99541,26125,77789,62822,62821,173994,128159,61324,1433,97207,352,165548,43769,61896,61895,186180,65153,14721,14394,165189,163095,61080,42218,17804,4959,140146,154169,140022,168255,163963,154155,156913,166262,161504,161350,156965,153581,174530,174529,174528,174523,174527,174525,153583,153582,156961,156960,156954,154103,154146,153580,154147,154145,153238,153242,153239,156948,156947,153566,153565,156944,156943,156942,156941,155733,172026,172027,171997,164971,164970,89715,1860,156885,156887,156882,153964,155197,155199,172029,153211,152998,152571,163069,156860,156859,152843,156932,156929,165352,156902,160964,156891,160394)) OR (`Idx`=3 AND `CreatureID` IN (135521,128630,142956,139088,135520,43102,144378,52806,29088,29016,141054,141030,141079,140403,140253,99541,26125,186180,153242,153239,161006,160964)) OR (`Idx`=2 AND `CreatureID` IN (135521,128630,142956,139088,135520,43102,144378,52806,29152,29088,29016,141054,141030,141079,140403,140253,62954,99541,26125,186180,156913,166262,156821,168738,153242,153239,172026,161006,171997,160964,160433,160394)) OR (`Idx`=1 AND `CreatureID` IN (135521,128630,142956,139088,135520,149374,43102,144378,151187,52806,29019,29152,29088,29016,141054,141030,141036,141079,140407,140403,140253,120594,62954,35845,78116,99541,26125,186180,61080,140146,140022,156913,166262,165198,156821,156828,168738,156825,161306,153242,153239,164927,172026,161006,163040,172027,171997,163039,169162,172029,152998,164025,164022,164026,157104,155572,162954,160451,160964,160433,160394)) OR (`Idx`=5 AND `CreatureID` IN (142956,139088,135520,140403,140253)) OR (`Idx`=4 AND `CreatureID` IN (142956,139088,135520,29016,141054,140403,140253)) OR (`Idx`=11 AND `CreatureID` IN (139088,140403,140253)) OR (`Idx`=10 AND `CreatureID` IN (139088,140403,140253)) OR (`Idx`=9 AND `CreatureID` IN (139088,140403,140253)) OR (`Idx`=8 AND `CreatureID` IN (139088,140403,140253)) OR (`Idx`=7 AND `CreatureID` IN (139088,140403,140253)) OR (`Idx`=6 AND `CreatureID` IN (139088,140403,140253)) OR (`Idx`=15 AND `CreatureID` IN (140403,140253)) OR (`Idx`=14 AND `CreatureID` IN (140403,140253)) OR (`Idx`=13 AND `CreatureID` IN (140403,140253)) OR (`Idx`=12 AND `CreatureID` IN (140403,140253)) OR (`Idx`=51 AND `CreatureID`=140253) OR (`Idx`=50 AND `CreatureID`=140253) OR (`Idx`=49 AND `CreatureID`=140253) OR (`Idx`=48 AND `CreatureID`=140253) OR (`Idx`=47 AND `CreatureID`=140253) OR (`Idx`=46 AND `CreatureID`=140253) OR (`Idx`=45 AND `CreatureID`=140253) OR (`Idx`=44 AND `CreatureID`=140253) OR (`Idx`=43 AND `CreatureID`=140253) OR (`Idx`=42 AND `CreatureID`=140253) OR (`Idx`=41 AND `CreatureID`=140253) OR (`Idx`=40 AND `CreatureID`=140253) OR (`Idx`=39 AND `CreatureID`=140253) OR (`Idx`=38 AND `CreatureID`=140253) OR (`Idx`=37 AND `CreatureID`=140253) OR (`Idx`=36 AND `CreatureID`=140253) OR (`Idx`=35 AND `CreatureID`=140253) OR (`Idx`=34 AND `CreatureID`=140253) OR (`Idx`=33 AND `CreatureID`=140253) OR (`Idx`=32 AND `CreatureID`=140253) OR (`Idx`=31 AND `CreatureID`=140253) OR (`Idx`=30 AND `CreatureID`=140253) OR (`Idx`=29 AND `CreatureID`=140253) OR (`Idx`=28 AND `CreatureID`=140253) OR (`Idx`=27 AND `CreatureID`=140253) OR (`Idx`=26 AND `CreatureID`=140253) OR (`Idx`=25 AND `CreatureID`=140253) OR (`Idx`=24 AND `CreatureID`=140253) OR (`Idx`=23 AND `CreatureID`=140253) OR (`Idx`=22 AND `CreatureID`=140253) OR (`Idx`=21 AND `CreatureID`=140253) OR (`Idx`=20 AND `CreatureID`=140253) OR (`Idx`=19 AND `CreatureID`=140253) OR (`Idx`=18 AND `CreatureID`=140253) OR (`Idx`=17 AND `CreatureID`=140253) OR (`Idx`=16 AND `CreatureID`=140253);
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=45745 WHERE (`CreatureID`=158512 AND `Idx`=0); -- Daniel Julian
UPDATE `creature_template_model` SET `DisplayScale`=0.5, `VerifiedBuild`=45745 WHERE (`CreatureID`=158589 AND `Idx`=0); -- Eisley
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=45745 WHERE (`CreatureID`=158488 AND `Idx`=0); -- Ty Julian
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `CreatureID` IN (165198,164927,163040,163039,164025,164022,164026,155572,162954)); -- InvisBunny
UPDATE `creature_template_model` SET `DisplayScale`=0.699999988079071044, `VerifiedBuild`=45745 WHERE (`CreatureID`=157300 AND `Idx`=0); -- Tunk
UPDATE `creature_template_model` SET `DisplayScale`=3, `VerifiedBuild`=45745 WHERE (`CreatureID`=156814 AND `Idx`=0); -- Gor'groth
UPDATE `creature_template_model` SET `DisplayScale`=2.5, `VerifiedBuild`=45745 WHERE (`CreatureID`=156821 AND `Idx`=0); -- Darkmaul Shadowcaller
UPDATE `creature_template_model` SET `DisplayScale`=0.800000011920928955, `VerifiedBuild`=45745 WHERE (`CreatureID`=156501 AND `Idx`=0); -- Ravnyr
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=45745 WHERE (`CreatureID`=156828 AND `Idx`=0); -- Shadowy Orb
UPDATE `creature_template_model` SET `Probability`=5, `VerifiedBuild`=45745 WHERE (`CreatureID`=168740 AND `Idx`=0); -- Citadel Recluse
UPDATE `creature_template_model` SET `DisplayScale`=2.5, `VerifiedBuild`=45745 WHERE (`CreatureID`=157328 AND `Idx`=0); -- Darkmaul Channeler
UPDATE `creature_template_model` SET `Probability`=5, `VerifiedBuild`=45745 WHERE (`CreatureID`=168738 AND `Idx`=0); -- Citadel Rat
UPDATE `creature_template_model` SET `DisplayScale`=1.399999976158142089, `VerifiedBuild`=45745 WHERE (`CreatureID`=156825 AND `Idx`=0); -- Darkmaul Centurion
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `CreatureID` IN (161306,157104)); -- Invisible Stalker
UPDATE `creature_template_model` SET `DisplayScale`=2, `VerifiedBuild`=45745 WHERE (`CreatureID`=161006 AND `Idx`=0); -- Ogre Shadowcaster
UPDATE `creature_template_model` SET `DisplayScale`=2.099999904632568359, `VerifiedBuild`=45745 WHERE (`CreatureID`=163533 AND `Idx`=0); -- Hjalmar the Undying
UPDATE `creature_template_model` SET `DisplayScale`=0.5, `VerifiedBuild`=45745 WHERE (`CreatureID`=169162 AND `Idx`=0); -- Hunting Worg
UPDATE `creature_template_model` SET `DisplayScale`=0.75, `VerifiedBuild`=45745 WHERE (`CreatureID`=155192 AND `Idx`=0); -- Harpy Ambusher
UPDATE `creature_template_model` SET `DisplayScale`=2, `VerifiedBuild`=45745 WHERE (`CreatureID`=156986 AND `Idx`=0); -- Ogre Taskmaster
UPDATE `creature_template_model` SET `DisplayScale`=0.75, `VerifiedBuild`=45745 WHERE (`CreatureID`=172028 AND `Idx`=0); -- Mountain Roamer
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=45745 WHERE (`CreatureID`=160451 AND `Idx`=0); -- Hrun the Exiled
UPDATE `creature_template_model` SET `DisplayScale`=2, `VerifiedBuild`=45745 WHERE (`CreatureID`=156900 AND `Idx`=0); -- Hrun the Exiled
UPDATE `creature_template_model` SET `DisplayScale`=0.25, `VerifiedBuild`=45745 WHERE (`CreatureID`=160433 AND `Idx`=0); -- Barrow Spiderling


UPDATE `creature_questitem` SET `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `CreatureEntry` IN (153581,153583,153582));

DELETE FROM `gameobject_template` WHERE `entry`=329732;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(329732, 5, 42981, 'Disco Ball', '', '', '', 1.20000004768371582, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45745); -- Disco Ball

UPDATE `gameobject_template` SET `VerifiedBuild`=45745 WHERE `entry` IN (303145, 297937, 281609, 292913, 303057, 303045, 303061, 303053, 303049, 303041, 294833, 279594, 279586, 303042, 299286, 292547, 294834, 294830, 302842, 303067, 303059, 279587, 303055, 303047, 303043, 299287, 299279, 294935, 294831, 303060, 35591, 292912, 303040, 303056, 303052, 299288, 294832, 247015, 204284, 208438, 248410, 208437, 248412, 195467, 201619, 205144, 203988, 203987, 203955, 203953, 203952, 203950, 203949, 203948, 203954, 203951, 203946, 203940, 203939, 203936, 203935, 203933, 203932, 203931, 203927, 203926, 203925, 203924, 203947, 203945, 203942, 203938, 203937, 203934, 203944, 203943, 203941, 203930, 203929, 203928, 202062, 202061, 201981, 202021, 202020, 202019, 202018, 202014, 202013, 202036, 202035, 202034, 202033, 202032, 202031, 202030, 202029, 202022, 202017, 202016, 202015, 202012, 206623, 202008, 293320, 293316, 293325, 293324, 194282, 293422, 292776, 292769, 281874, 293696, 344604, 340002, 201668, 201667, 201666, 201650, 201690, 201689, 201688, 201685, 201682, 201678, 201677, 201675, 201672, 201694, 201693, 201692, 201691, 201687, 201684, 201683, 201681, 201686, 201679, 201680, 201674, 201676, 201673, 201544, 201528, 201535, 201527, 201543, 201524, 201536, 201534, 201533, 201532, 201531, 201529, 201526, 201525, 201542, 201541, 201540, 201539, 201538, 201537, 201530, 200317, 364436, 364427, 200316, 124374, 205190, 200314, 200313, 200310, 200307, 200306, 200315, 200312, 200311, 200309, 200308, 201520, 201516, 201560, 201556, 201553, 201552, 201551, 201558, 201557, 201518, 201547, 179706, 201546, 201559, 201504, 201545, 201499, 201519, 201521, 201507, 201510, 201505, 201555, 201554, 201550, 201549, 201548, 201515, 201502, 201498, 197145, 197143, 197142, 292549, 186717, 336441, 334502, 336442, 334578, 252247, 327407, 339643, 339865, 326651, 346113, 341951, 330627, 329919, 326718, 326716, 342131);
UPDATE `gameobject_template` SET `name`='Chair', `VerifiedBuild`=45745 WHERE `entry` IN (364435, 364432, 364430, 364437, 364433, 364431, 364428, 364426, 364439, 364438, 364434, 364429, 351981); -- Cadeira
UPDATE `gameobject_template` SET `displayId`=57170, `size`=0.5, `VerifiedBuild`=45745 WHERE `entry`=186737; -- Brewfest Wagon Loaded
UPDATE `gameobject_template` SET `name`='Danath Trollbane', `VerifiedBuild`=45745 WHERE `entry`=197144; -- Danath Aterratrols
UPDATE `gameobject_template` SET `name`='Kurdran Wildhammer', `VerifiedBuild`=45745 WHERE `entry`=197141; -- Kurdran Martillo Salvaje
UPDATE `gameobject_template` SET `IconName`='questinteract', `castBarCaption`='Retrieving', `Data0`=1691, `Data1`=0, `Data2`=1, `Data8`=59352, `Data14`=23645, `Data30`=101440, `Data31`=1, `ContentTuningId`=741, `VerifiedBuild`=45745 WHERE `entry`=346273; -- Meredy's Spellbook
UPDATE `gameobject_template` SET `castBarCaption`='Placing', `VerifiedBuild`=45745 WHERE `entry` IN (326717, 326719); -- Ritual Pedestal
UPDATE `gameobject_template` SET `IconName`='questinteract', `castBarCaption`='Freeing', `VerifiedBuild`=45745 WHERE `entry`=339568; -- Thick Cocoon

DELETE FROM `gameobject_questitem` WHERE (`GameObjectEntry`=346273 AND `Idx`=0);
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(346273, 0, 175975, 45745); -- Meredy's Spellbook

UPDATE `gameobject_questitem` SET `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `GameObjectEntry` IN (204284,205144,344604,341951));

REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES (13969, 0, 0, -1, 0, 0, 1, 11, 0, 1, 0, 0, 0, 0, 0, 0);
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES (13969, 0, 0, -77, -3131, 0, 45114);

UPDATE `creature_template` SET `minlevel`='10' WHERE  `entry`=3269;
UPDATE `creature_template_scaling` SET `ContentTuningID`='2' WHERE  `Entry`=3269 AND `DifficultyID`=0;
UPDATE `creature_template` SET `minlevel`='10' WHERE  `entry`=34545;
UPDATE `creature_template_scaling` SET `DifficultyID`='0', `ContentTuningID`='2' WHERE  `Entry`=34545 AND `DifficultyID`=1;
UPDATE `creature_template` SET `minlevel`='10', `maxlevel`='30' WHERE  `entry`=3939;
REPLACE INTO `creature_template_scaling` (`Entry`, `ContentTuningID`, `VerifiedBuild`) VALUES ('3939', '2', '43345');

UPDATE `creature_template` SET `npcflag`='3', `AIName`='SmartAI' WHERE  `entry`=34547;
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `MountCreatureID`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (34547, 0, 0, 0, 0, 257, 0, 0, 0, 0, 0, NULL);
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (34547, 0, 0, 'The revitalized Kodo rises to its feet,shaking off the durst.', 16, 0, 0, 0, 0, 0, 0, 34760, 0, '');

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (34547, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, '', 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spawn');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (34547, 0, 1, 2, 21, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 29266, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Reached Home');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (34547, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 47, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Set Visible');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (34547, 0, 3, 0, 19, 0, 100, 0, 13971, 0, 0, 0, 0, '', 80, 3454700, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest Accept-Actionlist');

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3454700, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'emote Speech');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3454700, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 0, '', 28, 29266, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove Feign Death');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3454700, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 0, '', 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 113.764, -3133.42, 94.81, 0, 'Move Toward Position');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3454700, 9, 3, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 0, '', 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Invisble to prep to reset');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3454700, 9, 4, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 0, '', 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, -76.9618, -3131.09, 91.75, 0, 'Move toward Position');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (3454700, 9, 5, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 0, '', 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Evade Reset');

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry` IN (54608, 53566); -- Master Shang Xi
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=61801; -- Amberleaf Troublemaker
UPDATE `creature_template` SET `gossip_menu_id`=13037, `minlevel`=20, `maxlevel`=20 WHERE `entry`=59642; -- Aysa Cloudsinger
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry` IN (54785, 54855); -- Min Dimwind
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry` IN (57132, 65472); -- Wu-Song Villager

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=57617; -- Lee Sunspark
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=20, `maxlevel`=20 WHERE `entry`=54568; -- Ji Firepaw
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=57164; -- Fe-Feng Leaper
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=56739; -- Hozen Hanging Bunny
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry` IN (57205, 54131); -- Fe-Feng Hozen

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20, `BaseAttackTime`=667 WHERE `entry`=56730; -- Fe-Feng Brewthief
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=54567; -- Aysa Cloudsinger
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=59649; -- Tushui Monk
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=54943; -- Merchant Lorvo
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry` IN (57797, 53704); -- Corsac Fox

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=54611; -- Jaomin Ro
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=60183; -- Trainee Nim
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=60244; -- Trainee Guang
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=64929; -- Lamplighter Deng
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65471; -- Tushui Trainee

UPDATE `creature_template` SET `unit_flags` =32768 WHERE `entry` IN (54587, 65471, 65470, 54586);

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=54587; -- Tushui Trainee
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=61411; -- Instructor Zhi
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=54586; -- Huojin Trainee
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65470; -- Huojin Trainee

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=54130; -- Amberleaf Scamp
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=57753; -- Ironfist Zhou
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=57752; -- Quiet Lam
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=20, `maxlevel`=20 WHERE `entry`=57754; -- Instructor Mossthorn

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry` IN (53565, 65469); -- Aspiring Trainee
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=57748; -- Instructor Qun
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20, `unit_flags3`=8388608 WHERE `entry`=57873; -- Training Target
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20, `unit_flags3`=8388624 WHERE `entry`=53714; -- Training Target

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=57769; -- Shen-zin Su
UPDATE `creature_template` SET `type_flags`=1611661316 WHERE `entry`=57769;
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=66298; -- Green Dragon Turtle
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=20, `maxlevel`=20 WHERE `entry`=57619; -- Cheng Dawnscrive
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=20, `maxlevel`=20 WHERE `entry`=54786; -- Master Shang Xi

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=68986; -- Li the Tamer
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=57414; -- Temple Guard
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65094; -- Priestess of the Dawn
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=56479; -- Legacy of Liu Lang

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=55022; -- Steam Fiend
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=57709; -- Nourished Yak
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=57712; -- Delivery Cart Tender
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=57710; -- Delivery Cart
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=57621; -- Teamaster Ren

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=55020; -- Old Man Liang
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20, `unit_flags`=67141632 WHERE `entry`=55292; -- Fang-she
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20, `HoverHeight`=1 WHERE `entry`=54976; -- Barbed Ray
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20, `dynamicflags`=0 WHERE `entry`=60411; -- Water Pincer
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=60454; -- Vision of Shu
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=60457; -- Vision of Young Liang

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=54975; -- Aysa Cloudsinger
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65467; -- Excited Onlooker
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=55021; -- Jojo Ironbrow
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=56394; -- Mesmerized Child
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20, `npcflag`=4305 WHERE `entry`=57620; -- Whittler Dewei

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=57626; -- Exit Pole
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry` IN (55083, 54993, 57431); -- Balance Pole
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=56869; -- Balance Pole Landing Bunny
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20, `faction`=2263, `unit_flags`=32768 WHERE `entry` IN (65468, 55019); -- Tushui Monk
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=55015; -- Whitefeather Crane

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=55123; -- Cursed Pool Transform Controller
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65049; -- Er
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65035; -- Summer Lily
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65055; -- Hanshi One-Eye
UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=20, `maxlevel`=20 WHERE `entry`=65046; -- Lao Ma Liang

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65057; -- Fan Slowplow
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65087; -- Trader Feng
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65075; -- Hyacinth
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65056; -- Longbeard the Liar
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65086; -- Da Na

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65085; -- Jin
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65248; -- Kaydee Threesong
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65070; -- Gokan Sharphoe
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65053; -- Bai Hua
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65050; -- San

UPDATE `creature_template` SET `gossip_menu_id`=0, `minlevel`=20, `maxlevel`=20 WHERE `entry`=65043; -- Elder Oakpaw
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65067; -- Steepmaster Tira
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=57622; -- Lien-Hua Thunderhammer
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65064; -- Ki-Ro the Contemplative
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65059; -- Jing Stoutgut

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65039; -- Eng Dirtplow
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65052; -- Shi
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65047; -- Yi
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65062; -- Shao-Li Ironbelly
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65084; -- Crimson Butterfly

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65044; -- Gan Darkcask
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65045; -- Gao Longwagon
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65093; -- Seeress Weng Wu
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65088; -- Groundskeeper Shen
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65146; -- Zach Chow

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65147; -- Azunyan
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=65089; -- Old Yang
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=56622; -- Brazier
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry` IN (54787, 57779); -- Huo
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=54734; -- Master Li Fei

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=54902; -- Brazier Bunny, Blue
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=54900; -- Brazier Bunny, Red
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=54901; -- Brazier Bunny, Purple
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35 WHERE `entry`=57625; -- Generic Sparkle Bunny (CSA)
UPDATE `creature_template` SET `gossip_menu_id`=13050, `minlevel`=20, `maxlevel`=20 WHERE `entry`=54135; -- Master Li Fei

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=54609; -- Master Shang Xi
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=54635; -- Shrine of Air
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=60176; -- Huojin Monk
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=59626; -- Flame Spout
UPDATE `creature_template` SET `gossip_menu_id`=13038 WHERE `entry`=54568; -- Ji Firepaw

UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=60245; -- Brewer Zhen
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=60253; -- Brewer Lin
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20 WHERE `entry`=60248; -- Chia-hui Autumnleaf
UPDATE `creature_template` SET `gossip_menu_id`=13346 WHERE `entry`=57754; -- Instructor Mossthorn
UPDATE `creature_template` SET `gossip_menu_id`=14616 WHERE `entry`=64929; -- Lamplighter Deng

UPDATE `creature_template` SET `gossip_menu_id`=14674 WHERE `entry`=57619; -- Cheng Dawnscrive
UPDATE `creature_template` SET `gossip_menu_id`=9821 WHERE `entry`=68986; -- Li the Tamer
UPDATE `creature_template` SET `type_flags`=1611661328 WHERE `entry`=56479;

DELETE FROM `conversation_actors` WHERE `ConversationId`=13254 AND `Idx`=1;
INSERT INTO `conversation_actors` (`ConversationId`,`ConversationActorId`,`ConversationActorGuid`,`Idx`,`CreatureId`,`CreatureDisplayInfoId`,`NoActorObject`,`ActivePlayerObject`,`VerifiedBuild`) VALUES
(13254, 0, 0, 1, 0, 0, 0, 1, 40120);

DELETE FROM `conversation_actors` WHERE `ConversationId`=16722 AND `Idx`=0;
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `ConversationActorGuid`, `Idx`, `CreatureId`, `CreatureDisplayInfoId`, `NoActorObject`,`ActivePlayerObject`, `VerifiedBuild`) VALUES
(16722, 0, 0, 0, 0, 0, 1, 0, 42010); -- Full: 0x0

DELETE FROM `conversation_line_template` WHERE `Id` IN (42193, 42194, 42195, 42196, 42197, 42198);
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(42193, 0, 0, 0, 42010),
(42194, 0, 0, 0, 42010),
(42195, 0, 0, 0, 42010),
(42196, 0, 0, 0, 42010),
(42197, 0, 0, 0, 42010),
(42198, 0, 0, 0, 42010);

DELETE FROM `conversation_template` WHERE `Id`=16722;
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `TextureKitId`, `VerifiedBuild`) VALUES
(16722, 42193, 0, 42010);

DELETE FROM `creature_text` WHERE `CreatureID` IN (53565, 54586, 54587, 60183, 60244, 65469, 65470, 65471);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(53565, 0, 0, 'I must train harder so I can be like you.', 12, 0, 100, 509, 0, 33645, 0, 0, 'Aspiring Trainee to Training Target'),
(53565, 0, 1, 'Such skill for a new trainee.', 12, 0, 100, 507, 0, 33643, 0, 0, 'Aspiring Trainee to Training Target'),
(53565, 0, 2, 'One day you will have to teach me your secrets.', 12, 0, 100, 509, 0, 33645, 0, 0, 'Aspiring Trainee to Training Target'),
(53565, 0, 3, 'I hope the instructors saw that!', 12, 0, 100, 0, 0, 33645, 0, 0, 'Aspiring Trainee to Training Target'),
(53565, 0, 4, 'Your form is impeccable.', 12, 0, 100, 509, 0, 33645, 0, 0, 'Aspiring Trainee to Training Target'),
(53565, 0, 5, 'That target didn´t stand a chance.', 12, 0, 100, 511, 0, 33643, 0, 0, 'Aspiring Trainee to Training Target'),
(53565, 0, 6, 'You are bound for a great things, trainee.', 12, 0, 100, 508, 0, 33645, 0, 0, 'Aspiring Trainee to Training Target'),
(53565, 0, 7, 'I must work as hard as you.', 12, 0, 100, 1, 0, 33646, 0, 0, 'Aspiring Trainee to Training Target'),
(53565, 7, 0, 'Four coppers on Zhou.', 12, 0, 100, 511, 0, 33646, 56427, 0, 'Aspiring Trainee'),
(53565, 2, 0, 'His stamina is nothing against Lam\'s strength.', 12, 0, 100, 507, 0, 33646, 56423, 0, 'Aspiring Trainee'),
(53565, 3, 0, 'He has the legs of an ox! Have you ever been kicked by him in training?', 12, 0, 100, 1, 0, 33643, 56424, 0, 'Aspiring Trainee'),
(53565, 4, 0, 'Raise you a keg of Stormstout Gold. It\'ll be your loss.', 12, 0, 100, 0, 0, 33643, 56428, 0, 'Aspiring Trainee'),
(53565, 1, 0, 'My money\'s on Lam. Did you see him take down Chu during training last week?', 12, 0, 100, 509, 0, 33645, 56420, 0, 'Aspiring Trainee'),
(53565, 5, 0, 'That\'s where you\'re mistaken, friend. Zhou is as sturdy as an oak.', 12, 0, 100, 543, 0, 33643, 56421, 0, 'Aspiring Trainee'),
(53565, 6, 0, 'Zhou has the stamina of three men, so he can out-stay most opponents.', 12, 0, 100, 543, 0, 33646, 56422, 0, 'Aspiring Trainee'),
(54586, 0, 0, 'You are an honorable opponent.', 12, 0, 100, 543, 0, 33643, 56438, 0, 'Huojin Trainee'),
(54586, 0, 1, 'That was a good match. Thank you.', 12, 0, 100, 509, 0, 33645, 56444, 0, 'Huojin Trainee'),
(54586, 0, 2, 'You fought well. I must learn more from you in the future.', 12, 0, 100, 509, 0, 33645, 56443, 0, 'Huojin Trainee'),
(54586, 0, 3, 'You fight honorably, friend.', 12, 0, 100, 543, 0, 33643, 56437, 0, 'Huojin Trainee'),
(54587, 0, 0, 'Your skills are too great. I yield.', 12, 0, 100, 1, 0, 33646, 56442, 0, 'Tushui Trainee'),
(54587, 1, 0, 'You fought well. I must learn more from you in the future.', 12, 0, 100, 1, 0, 33643, 56443, 0, 'Tushui Trainee'),
(54587, 2, 0, 'You fight honorably, friend.', 12, 0, 100, 508, 0, 33645, 56440, 0, 'Tushui Trainee'),
(54587, 3, 0, 'Thank you for reminding me that I must train more diligently.', 12, 0, 100, 1, 0, 33645, 56439, 0, 'Tushui Trainee'),
(54587, 4, 0, 'I have never seen a trainee with skills such as yours. I must tell the others.', 12, 0, 100, 1, 0, 33645, 0, 0, 'Tushui Trainee'),
(60183, 0, 0, 'I hope you\'re ready, $p. Jaomin Ro awaits you just over the bridge.', 12, 0, 100, 113, 0, 33643, 59710, 0, 'Trainee Nim to Player'),
(60244, 0, 0, 'You\'re departing so soon?  I am envious of your prowess, $c. Good luck to you.', 12, 0, 100, 2, 0, 33643, 59711, 0, 'Trainee Guang to Player'),
(65469, 0, 1, 'I must work as hard as you.', 12, 0, 100, 507, 0, 33643, 0, 0, 'Aspiring Trainee to Training Target'),
(65469, 0, 2, 'I must train harder so I can be like you.', 12, 0, 100, 507, 0, 33643, 0, 0, 'Aspiring Trainee to Training Target'),
(65469, 0, 3, 'Your form is impeccable.', 12, 0, 100, 543, 0, 33643, 0, 0, 'Aspiring Trainee to Training Target'),
(65469, 0, 4, 'One day you will have to teach me your secrets.', 12, 0, 100, 507, 0, 33643, 0, 0, 'Aspiring Trainee to Training Target'),
(65470, 0, 0, 'I have never seen a trainee with skills such as yours. I must tell the others.', 12, 0, 100, 509, 0, 33643, 0, 0, 'Huojin Trainee'),
(65471, 1, 0, 'You are an honorable opponent.', 12, 0, 100, 1, 0, 33646, 0, 0, 'Huojin Trainee'),
(65471, 2, 0, 'My skills are no match for yours. I admit defeat.', 12, 0, 100, 1, 0, 33646, 0, 0, 'Huojin Trainee'),
(65471, 3, 0, 'Thank you for reminding me that I must train more diligently.', 12, 0, 100, 1, 0, 33645, 0, 0, 'Huojin Trainee'),
(65471, 4, 0, 'That was a good match. Thank you.', 12, 0, 100, 509, 0, 33645, 0, 0, 'Huojin Trainee'),
(65471, 5, 0, 'Your skills are too great. I yield.', 12, 0, 100, 508, 0, 33644, 0, 0, 'Huojin Trainee'),
(65471, 6, 0, 'I have never seen a trainee with skills such as yours. I must tell the others.', 12, 0, 100, 509, 0, 33643, 0, 0, 'Huojin Trainee');

DELETE FROM `gameobject_loot_template` WHERE `Entry` IN (210005, 210015, 210016, 210017, 210018, 210019, 210020, 40856, 40859, 40860, 40861, 40862, 40863, 40864);
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(40859, 76390, 0, 100, 1, 1, 0, 1, 1, 'Trainee`s Spellblade'), -- Mage
(40859, 76392, 0, 100, 1, 1, 0, 1, 1, 'Trainee`s Hand Fan'), -- Mage
(40856, 73209, 0, 100, 1, 1, 0, 1, 1, 'Trainee`s Staff'), -- Monk
(40863, 76391, 0, 100, 1, 1, 0, 1, 1, 'Trainee`s Axe'), -- Shaman
(40863, 73213, 0, 100, 1, 1, 0, 1, 1, 'Trainee`s Shield'), -- Shaman
(40861, 73207, 0, 100, 1, 1, 0, 1, 1, 'Trainee`s Mace'), -- Priest
(40861, 76393, 0, 100, 1, 1, 0, 1, 1, 'Trainee`s Book of Prayers'), -- Priest
(40862, 73208, 0, 100, 1, 1, 0, 1, 1, 'Trainee`s Dagger'), -- Rogue
(40862, 73212, 0, 100, 1, 1, 0, 1, 1, 'Second Trainee`s Dagger'), -- Rogue
(40860, 73211, 0, 100, 1, 1, 0, 1, 1, 'Trainee`s Crossbow'), -- Hunter
(40864, 76391, 0, 100, 1, 1, 0, 1, 1, 'Trainee`s Axe'), -- Warrior
(40864, 73213, 0, 100, 1, 1, 0, 1, 1, 'Trainee`s Shield'); -- Warrior

UPDATE `gameobject_template` SET `VerifiedBuild`=42010 WHERE `entry` IN (214568, 214564, 216301, 214565, 210102, 209989, 209988, 210101, 209973, 209972, 209971, 214353, 209900, 209466, 214409, 209363, 210987, 210124, 210126, 211337, 209078, 209970, 210127, 213439, 213532, 210125, 214413, 211336, 210122);
UPDATE `gameobject_template` SET `ContentTuningId`=80, `VerifiedBuild`=42010 WHERE `entry`=209364; -- The Dimming Flame
UPDATE `gameobject_template` SET `ContentTuningId`=80, `VerifiedBuild`=42010 WHERE `entry`=209608; -- Training Bell
UPDATE `gameobject_template` SET `ContentTuningId`=80, `VerifiedBuild`=42010 WHERE `entry`=210051; -- To Be A Pandaren
UPDATE `gameobject_template` SET `ContentTuningId`=80, `Data0`=57, `Data1`=40856, `Data17`=13360, `Data26`=128680, `Data30`=40856, `VerifiedBuild`=42010 WHERE `entry`=210005; -- Weapon Rack - Monk - Data 1 manualy rewrited - default 0
UPDATE `gameobject_template` SET `ContentTuningId`=80, `Data0`=57, `Data1`=40859, `Data17`=13361, `Data26`=128680, `Data30`=40859, `VerifiedBuild`=42010 WHERE `entry`=210015; -- Weapon Rack - Mag - Data 1 manualy rewrited - default 0
UPDATE `gameobject_template` SET `ContentTuningId`=80, `Data0`=57, `Data1`=40860, `Data17`=13362, `Data26`=128680, `Data30`=40860, `VerifiedBuild`=42010 WHERE `entry`=210016; -- Weapon Rack - Hunter - Data 1 manualy rewrited - default 0
UPDATE `gameobject_template` SET `ContentTuningId`=80, `Data0`=57, `Data1`=40861, `Data17`=13363, `Data26`=128680, `Data30`=40861, `VerifiedBuild`=42010 WHERE `entry`=210017; -- Weapon Rack - Priest - Data 1 manualy rewrited - default 0
UPDATE `gameobject_template` SET `ContentTuningId`=80, `Data0`=57, `Data1`=40862, `Data17`=13365, `Data26`=128680, `Data30`=40862, `VerifiedBuild`=42010 WHERE `entry`=210018; -- Weapon Rack - Rogue - Data 1 manualy rewrited - default 0
UPDATE `gameobject_template` SET `ContentTuningId`=80, `Data0`=57, `Data1`=40863, `Data17`=13366, `Data26`=128680, `Data30`=40863, `VerifiedBuild`=42010 WHERE `entry`=210019; -- Weapon Rack - Shaman - Data 1 manualy rewrited - default 0
UPDATE `gameobject_template` SET `ContentTuningId`=80, `Data0`=57, `Data1`=40864, `Data17`=13364, `Data26`=128680, `Data30`=40864, `VerifiedBuild`=42010 WHERE `entry`=210020; -- Weapon Rack - Warrior - Data 1 manualy rewrited - default 0

DELETE FROM `gameobject_questitem` WHERE (`Idx`=0 AND `GameObjectEntry` IN (210005, 210015, 210016, 210017, 210018, 210019, 210020)) OR (`Idx`=1 AND `GameObjectEntry` IN (210015, 210017, 210018, 210019, 210020));
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(210005, 0, 73209, 42010), -- Monk
(210015, 0, 76390, 42010), -- Mage
(210015, 1, 76392, 42010),
(210016, 0, 73211, 42010), -- Hunter
(210017, 0, 73207, 42010), -- Priest
(210017, 1, 76393, 42010),
(210018, 0, 73208, 42010), -- Rogue
(210018, 1, 73212, 42010),
(210019, 0, 76391, 42010), -- Shaman
(210019, 1, 73213, 42010),
(210020, 0, 76391, 42010), -- Warrior
(210020, 1, 73213, 42010);

DELETE FROM `creature_queststarter` WHERE `id` IN (53566, 55020, 54975, 54786, 54787, 54135, 54609, 54568, 55021, 54608, 54567, 54943);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
-- Introductory training
(53566, 30033), -- Mage only
(53566, 30027), -- Monk only - The Lesson of the Iron Bough offered Master Shang Xi
(53566, 30038), -- Warrior only
(53566, 30034), -- Hunter only
(53566, 30035), -- Priest only
(53566, 30036), -- Rogue only
(53566, 30037), -- Shaman only
(55020, 29678), -- Shu, the Spirit of Water offered Old Man Liang
(55020, 29666), -- The Sting of Learning offered Old Man Liang
(55020, 29677), -- The Sun Pearl offered Old Man Liang
(54975, 29676), -- Finding an Old Friend offered Aysa Cloudsinger
(55021, 29662), -- Stronger Than Reeds offered Jojo Ironbrow
(54975, 29663), -- The Lesson of the Balanced Rock offered Aysa Cloudsinger
(54975, 29661), -- The Lesson of Dry Fur offered Aysa Cloudsinger
(54786, 29521), -- The Singing Pools offered Master Shang Xi
(54787, 29423), -- The Passion of Shen-zin Su offered Huo
(54135, 29422), -- Huo, the Spirit of Fire offered Master Li Fei
(54135, 29421), -- Only the Worthy Shall Pass offered Master Li Fei
(54135, 29664), -- The Challenger's Fires offered Master Li Fei
(54609, 29420), -- The Spirit's Guardian offered Master Shang Xi
(54568, 29523), -- Fanning the Flames offered Ji Firepaw
(54568, 29418), -- Kindling the Fire offered Ji Firepaw
(54568, 29417), -- The Way of the Huojin offered Ji Firepaw
(54608, 29522), -- Ji of the Huojin offered Master Shang Xi
(54567, 29414), -- The Way of the Tushui offered Aysa Cloudsinger
(54943, 29424), -- Items of Utmost Importance offered Merchant Lorvo
(54943, 29419), -- The Missing Driver offered Merchant Lorvo
(53566, 29410), -- Aysa of the Tushui offered Master Shang Xi
(53566, 29409), -- The Disciple's Challenge offered Master Shang Xi
(53566, 29408), -- The Lesson of the Burning Scroll offered Master Shang Xi
(53566, 29524), -- The Lesson of Stifled Pride offered Master Shang Xi
(53566, 29406); -- The Lesson of the Sandy Fist offered Master Shang Xi

DELETE FROM `creature_questender` WHERE `id` IN (53566, 54943, 54608);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
-- Introductory training
(53566, 30033), -- Mage only
(53566, 30027), -- Monk only
(53566, 30038), -- Warrior only
(53566, 30034), -- Hunter only
(53566, 30035), -- Priest only
(53566, 30036), -- Rogue only
(53566, 30037), -- Shaman only
(54608, 29414), -- 29414 ended by 54608
(54943, 29424), -- 29424 ended by 54943
(54943, 29419), -- 29419 ended by 54943
(54943, 29410), -- 29410 ended by 54943
(53566, 29409), -- 29409 ended by 53566
(53566, 29408), -- 29408 ended by 53566
(53566, 29524), -- 29524 ended by 53566
(53566, 29406); -- 29406 ended by 53566

DELETE FROM `quest_request_items` WHERE `ID`=29424;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(29424, 1, 0, 0, 0, 'You needn\'t worry about hurting the sprites. They\'re really just living plants when it comes down to it - they\'ll resprout later.', 0); -- Items of Utmost Importance

DELETE FROM `quest_offer_reward` WHERE `ID` IN (29409, 29408, 29424, 29410, 29524, 29406, 30027, 30033, 30034, 30035, 30036, 30037, 30038, 29414, 29419);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(29409, 1, 0, 0, 0, 0, 0, 0, 0, 'You truly impress, $n. It seems certain that the path of the $c is indeed the path for you.', 42010), -- The Disciple's Challenge
(29408, 1, 0, 0, 0, 0, 0, 0, 0, 'The fact that you were able to snatch the flame so easily is no small feat.$B$BThe Edict of Temperance is a scroll of wisdom passed down from my elders\' elders. Wisdom from a more peaceful time.$B$BEvery lesson has its time and place, and with darkness on the horizon, the time for this particular wisdom has passed.$B$BThe burning of the scroll is an acceptance of tidings to come and a promise to action. Your hand carried the flame, and I suspect that it will continue to do so in the future.', 42010), -- The Lesson of the Burning Scroll
(29524, 1, 0, 0, 0, 0, 0, 0, 0, 'Intriguing, my young pupil.$B$BMost of the other trainees have been here for quite some time, but you are able to match them even within this first hour.$B$BThis speaks well of you, but there are yet other lessons I would see you learn.', 42010), -- The Lesson of Stifled Pride
(29406, 1, 0, 0, 0, 0, 0, 0, 0, 'Not bad, $n. You may indeed have chosen the proper path.$B$BGood. Let us continue.', 42010), -- The Lesson of the Sandy Fist
(30027, 1, 0, 0, 0, 0, 0, 0, 0, 'A fine weapon. It should suit your needs well.$B$BNow let\'s put it to use.', 42010), -- The Lesson of the Iron Bough
(30033, 1, 0, 0, 0, 0, 0, 0, 0, 'A fine weapon. It should suit your needs well.$B$BNow let\'s put it to use.', 42010), -- The Lesson of the Iron Bough
(30034, 1, 0, 0, 0, 0, 0, 0, 0, 'A fine weapon. It should suit your needs well.$B$BNow let\'s put it to use.', 42010), -- The Lesson of the Iron Bough
(30035, 1, 0, 0, 0, 0, 0, 0, 0, 'A fine weapon. It should suit your needs well.$B$BNow let\'s put it to use.', 42010), -- The Lesson of the Iron Bough
(30036, 1, 0, 0, 0, 0, 0, 0, 0, 'A fine weapon. It should suit your needs well.$B$BNow let\'s put it to use.', 42010), -- The Lesson of the Iron Bough
(30037, 1, 0, 0, 0, 0, 0, 0, 0, 'A fine weapon. It should suit your needs well.$B$BNow let\'s put it to use.', 42010), -- The Lesson of the Iron Bough
(30038, 1, 0, 0, 0, 0, 0, 0, 0, 'A fine weapon. It should suit your needs well.$B$BNow let\'s put it to use.', 42010), -- The Lesson of the Iron Bough
(29424, 1, 0, 0, 0, 0, 0, 0, 0, 'Thank you! You\'re an honorable $c. They\'ve taught you well.', 42010), -- Items of Utmost Importance
(29410, 1, 0, 0, 0, 0, 0, 0, 0, 'You came for Aysa? You... you really shouldn\'t interrupt her until she finishes her exercises. She doesn\'t speak to anyone until her routine is done.$B$BIn the meantime, could you maybe help me? I had some bad luck with forest sprites.', 42010), -- Aysa of the Tushui
(29414, 1, 0, 0, 0, 0, 0, 0, 0, 'Your path is set before you. You will be the one to rekindle the spirit of fire and bring it to the safety of the temple.$B$BThis will not be the only time you and Aysa work together. She is strong and wise. You can trust in her.', 42010), -- The Way of the Tushui
(29419, 1, 0, 0, 0, 0, 0, 0, 0, 'You are too kind, $c.', 42010); -- The Missing Driver

DELETE FROM `quest_poi` WHERE  (`QuestID`=29523 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29523 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29523 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29677 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29677 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29677 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29666 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29666 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29666 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29524 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29524 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29524 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29408 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=29408 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29408 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29408 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29410 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29410 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29524 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29524 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29524 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29406 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29406 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29406 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=30027 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=30027 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=30027 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=30027 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29409 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29409 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29409 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=30037 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=30037 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=30037 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=30037 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=30037 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=30037 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29522 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29522 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29414 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29414 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29414 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29424 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=29424 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=29424 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29424 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=29419 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=29419 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=29419 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(29408, 0, 3, 32, 0, 0, 860, 378, 0, 0, 0, 0, 0, 599603, 0, 42010), -- 29408
(29408, 0, 2, 1, 252345, 59570, 860, 378, 0, 2, 0, 0, 0, 0, 0, 42010), -- 29408
(29408, 0, 1, 0, 252344, 59591, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29408
(29408, 0, 0, -1, 0, 0, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29408
(29410, 0, 1, 32, 0, 0, 860, 378, 0, 0, 0, 0, 0, 602713, 0, 42010), -- 29410
(29410, 0, 0, -1, 0, 0, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29410
(29424, 0, 3, 32, 0, 0, 860, 378, 0, 0, 0, 0, 0, 604127, 0, 42010), -- Items of Utmost Importance
(29424, 1, 2, 0, 252015, 72071, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- Items of Utmost Importance
(29424, 0, 1, 0, 252015, 72071, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- Items of Utmost Importance
(29424, 0, 0, -1, 0, 0, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- Items of Utmost Importance
(29406, 0, 2, 32, 0, 0, 860, 378, 0, 0, 0, 0, 0, 596210, 0, 42010), -- 29406
(29406, 0, 1, 0, 252339, 53714, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29406
(29406, 0, 0, -1, 0, 0, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29406
(30027, 0, 3, 32, 0, 0, 860, 378, 0, 0, 0, 0, 0, 596210, 0, 42010), -- 30027
(30027, 0, 2, 29, 0, 0, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- 30027
(30027, 0, 1, 0, 253214, 54139, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- 30027
(30027, 0, 0, -1, 0, 0, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- 30027
(29409, 0, 2, 32, 0, 0, 860, 378, 0, 0, 0, 0, 0, 599603, 0, 42010), -- 29409
(29409, 0, 1, 0, 252375, 54611, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29409
(29409, 0, 0, -1, 0, 0, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29409
(30037, 0, 5, 32, 0, 0, 860, 378, 0, 0, 0, 0, 0, 596210, 0, 42010), -- 30037
(30037, 0, 4, 29, 0, 0, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- 30037
(30037, 0, 3, 28, 0, 0, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- 30037
(30037, 0, 2, 1, 253783, 57849, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- 30037
(30037, 0, 1, 0, 253782, 54139, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- 30037
(30037, 0, 0, -1, 0, 0, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- 30037
(29522, 0, 1, 32, 0, 0, 860, 378, 0, 0, 0, 0, 0, 603282, 0, 42010), -- 29522
(29522, 0, 0, -1, 0, 0, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29522
(29414, 0, 2, 32, 0, 0, 860, 378, 0, 0, 0, 0, 0, 602126, 0, 42010), -- 29414
(29414, 0, 1, 0, 252376, 54856, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29414
(29414, 0, 0, -1, 0, 0, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29414
(29419, 0, 2, 32, 0, 0, 860, 378, 0, 0, 0, 0, 0, 604128, 0, 42010), -- 29419
(29419, 0, 1, 0, 252090, 54855, 860, 378, 0, 2, 0, 0, 0, 0, 0, 42010), -- 29419
(29419, 0, 0, -1, 0, 0, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29419
(29677, 0, 2, 32, 0, 0, 860, 378, 0, 0, 0, 0, 0, 604666, 0, 42010), -- The Sun Pearl
(29677, 0, 1, 0, 251732, 73184, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- The Sun Pearl
(29677, 0, 0, -1, 0, 0, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- The Sun Pearl
(29666, 0, 2, 32, 0, 0, 860, 378, 0, 0, 0, 0, 0, 605468, 0, 42010), -- The Sting of Learning
(29666, 0, 1, 0, 258382, 60411, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- The Sting of Learning
(29666, 0, 0, -1, 0, 0, 860, 378, 0, 2, 0, 0, 0, 0, 0, 42010), -- The Sting of Learning
(29523, 0, 2, 32, 0, 0, 860, 378, 0, 0, 0, 0, 0, 602127, 0, 42010), -- Fanning the Flames
(29523, 0, 1, 0, 252231, 72112, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- Fanning the Flames
(29523, 0, 0, -1, 0, 0, 860, 378, 0, 1, 0, 0, 0, 0, 0, 42010), -- Fanning the Flames
(29524, 0, 2, 32, 0, 0, 860, 378, 0, 0, 0, 0, 0, 599603, 0, 42010), -- The Lesson of Stifled Pride
(29524, 0, 1, 0, 254896, 54586, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010), -- The Lesson of Stifled Pride
(29524, 0, 0, -1, 0, 0, 860, 378, 0, 0, 0, 0, 0, 0, 0, 42010); -- The Lesson of Stifled Pride

DELETE FROM `quest_poi_points` WHERE (`QuestID`=29666 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29666 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=29666 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=29666 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=29666 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=29666 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=29666 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=29666 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=29666 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=29666 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=29666 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=29666 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=29666 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29666 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29677 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29677 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29677 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29523 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29523 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29523 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29424 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=29424 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=29424 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=29424 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=29424 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29424 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=29424 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=29424 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=29424 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=29424 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=29424 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=29424 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=29424 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29424 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29410 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29410 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29409 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29409 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29409 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29408 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=29408 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29408 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29408 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29524 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29524 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=29524 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=29524 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=29524 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=29524 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=29524 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=29524 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=29524 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=29524 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=29524 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=29524 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=29524 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29524 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=29406 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=29406 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=29406 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=29406 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=29406 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=29406 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=29406 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=29406 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=29406 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=29406 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=29406 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=29406 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=29406 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=29406 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=30027 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=30027 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=30027 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=30027 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=30027 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=30027 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=30027 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=30027 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=30027 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=30027 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=30027 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=30027 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=30027 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=30027 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=30027 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=30027 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=30027 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=30027 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=30027 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=30027 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=30037 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=30037 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=30037 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=30037 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=30037 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=30037 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=30037 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=30037 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=30037 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=30037 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=30037 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=30037 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=30037 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=30037 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=30037 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=30037 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=30037 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=30037 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=30037 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=30037 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=30037 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=30037 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=30037 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=30037 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=30037 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=30037 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=30037 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=30037 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=30037 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=30037 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=30037 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=30037 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=30037 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=30037 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=30037 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=30037 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=30037 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=30037 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(29666, 2, 0, 1023, 2883, 145, 42010), -- The Sting of Learning
(29666, 1, 11, 849, 2810, 0, 42010), -- The Sting of Learning
(29666, 1, 10, 824, 2865, 97, 42010), -- The Sting of Learning
(29666, 1, 9, 834, 2950, 97, 42010), -- The Sting of Learning
(29666, 1, 8, 846, 3043, 97, 42010), -- The Sting of Learning
(29666, 1, 7, 849, 3107, 97, 42010), -- The Sting of Learning
(29666, 1, 6, 946, 3105, 98, 42010), -- The Sting of Learning
(29666, 1, 5, 1054, 3082, 98, 42010), -- The Sting of Learning
(29666, 1, 4, 1100, 3040, 98, 42010), -- The Sting of Learning
(29666, 1, 3, 1119, 3004, 99, 42010), -- The Sting of Learning
(29666, 1, 2, 1131, 2964, 98, 42010), -- The Sting of Learning
(29666, 1, 1, 1010, 2884, 98, 42010), -- The Sting of Learning
(29666, 1, 0, 956, 2804, 98, 42010), -- The Sting of Learning
(29666, 0, 0, 1023, 2883, 145, 42010), -- The Sting of Learning
(29677, 2, 0, 1096, 3093, 145, 42010), -- The Sun Pearl
(29677, 1, 0, 946, 2942, 78, 42010), -- The Sun Pearl
(29677, 0, 0, 1023, 2883, 145, 42010), -- The Sun Pearl
(29523, 2, 0, 1407, 3637, 83, 42010), -- Fanning the Flames
(29523, 1, 0, 1226, 3716, 94, 42010), -- Fanning the Flames
(29523, 0, 0, 1410, 3639, 83, 42010), -- Fanning the Flames
(29424, 3, 0, 1201, 3508, 86, 42010), -- Items of Utmost Importance
(29424, 2, 3, 1172, 3564, 88, 42010), -- Items of Utmost Importance
(29424, 2, 2, 1244, 3591, 87, 42010), -- Items of Utmost Importance
(29424, 2, 1, 1249, 3565, 89, 42010), -- Items of Utmost Importance
(29424, 2, 0, 1158, 3526, 125, 42010), -- Items of Utmost Importance
(29424, 1, 7, 1336, 3451, 99, 42010), -- Items of Utmost Importance
(29424, 1, 6, 1336, 3504, 99, 42010), -- Items of Utmost Importance
(29424, 1, 5, 1353, 3562, 87, 42010), -- Items of Utmost Importance
(29424, 1, 4, 1361, 3575, 86, 42010), -- Items of Utmost Importance
(29424, 1, 3, 1415, 3573, 88, 42010), -- Items of Utmost Importance
(29424, 1, 2, 1479, 3536, 87, 42010), -- Items of Utmost Importance
(29424, 1, 1, 1506, 3506, 89, 42010), -- Items of Utmost Importance
(29424, 1, 0, 1357, 3423, 125, 42010), -- Items of Utmost Importance
(29424, 0, 0, 1201, 3508, 86, 42010), -- Items of Utmost Importance
(29410, 1, 0, 1380, 3217, 84, 42010), -- 29410
(29410, 0, 0, 1201, 3508, 86, 42010), -- 29410
(29409, 2, 0, 1445, 3385, 84, 42010), -- 29409
(29409, 1, 0, 1381, 3169, 137, 42010), -- 29409
(29409, 0, 0, 1380, 3217, 181, 42010), -- 29409
(29408, 3, 0, 1445, 3385, 84, 42010), -- 29408
(29408, 2, 0, 1422, 3377, 192, 42010), -- 29408
(29408, 1, 0, 1442, 3388, 181, 42010), -- 29408
(29408, 0, 0, 1445, 3385, 180, 42010), -- 29408
(29524, 2, 0, 1445, 3385, 84, 42010), -- 29524
(29524, 1, 11, 1336, 3277, 136, 42010), -- 29524
(29524, 1, 10, 1334, 3279, 135, 42010), -- 29524
(29524, 1, 9, 1306, 3353, 134, 42010), -- 29524
(29524, 1, 8, 1362, 3399, 128, 42010), -- 29524
(29524, 1, 7, 1436, 3389, 184, 42010), -- 29524
(29524, 1, 6, 1439, 3388, 184, 42010), -- 29524
(29524, 1, 5, 1457, 3381, 184, 42010), -- 29524
(29524, 1, 4, 1458, 3378, 184, 42010), -- 29524
(29524, 1, 3, 1462, 3294, 139, 42010), -- 29524
(29524, 1, 2, 1442, 3246, 136, 42010), -- 29524
(29524, 1, 1, 1427, 3229, 134, 42010), -- 29524
(29524, 1, 0, 1424, 3228, 134, 42010), -- 29524
(29524, 0, 0, 1445, 3385, 181, 42010), -- 29524
(29406, 2, 0, 1462, 3466, 84, 42010), -- 29406
(29406, 1, 11, 1439, 3413, 171, 42010), -- 29406
(29406, 1, 10, 1434, 3421, 171, 42010), -- 29406
(29406, 1, 9, 1433, 3423, 171, 42010), -- 29406
(29406, 1, 8, 1481, 3448, 171, 42010), -- 29406
(29406, 1, 7, 1484, 3448, 171, 42010), -- 29406
(29406, 1, 6, 1491, 3445, 171, 42010), -- 29406
(29406, 1, 5, 1494, 3439, 171, 42010), -- 29406
(29406, 1, 4, 1496, 3429, 171, 42010), -- 29406
(29406, 1, 3, 1494, 3419, 171, 42010), -- 29406
(29406, 1, 2, 1493, 3416, 171, 42010), -- 29406
(29406, 1, 1, 1471, 3400, 171, 42010), -- 29406
(29406, 1, 0, 1468, 3400, 171, 42010), -- 29406
(29406, 0, 0, 1463, 3468, 181, 42010), -- 29406
(30027, 3, 0, 1462, 3466, 84, 42010), -- 30027
(30027, 2, 5, 1430, 3429, 170, 42010), -- 30027
(30027, 2, 4, 1421, 3457, 170, 42010), -- 30027
(30027, 2, 3, 1436, 3461, 170, 42010), -- 30027
(30027, 2, 2, 1488, 3450, 170, 42010), -- 30027
(30027, 2, 1, 1495, 3412, 170, 42010), -- 30027
(30027, 2, 0, 1478, 3398, 170, 42010), -- 30027
(30027, 1, 11, 1447, 3415, 170, 42010), -- 30027
(30027, 1, 10, 1429, 3426, 170, 42010), -- 30027
(30027, 1, 9, 1423, 3439, 170, 42010), -- 30027
(30027, 1, 8, 1425, 3457, 170, 42010), -- 30027
(30027, 1, 7, 1440, 3461, 170, 42010), -- 30027
(30027, 1, 6, 1451, 3461, 170, 42010), -- 30027
(30027, 1, 5, 1467, 3457, 170, 42010), -- 30027
(30027, 1, 4, 1478, 3450, 170, 42010), -- 30027
(30027, 1, 3, 1489, 3437, 170, 42010), -- 30027
(30027, 1, 2, 1489, 3417, 170, 42010), -- 30027
(30027, 1, 1, 1482, 3410, 170, 42010), -- 30027
(30027, 1, 0, 1462, 3408, 170, 42010), -- 30027
(30027, 0, 0, 1463, 3468, 181, 42010), -- 30027
(30037, 5, 0, 1462, 3466, 84, 42010), -- 30037
(30037, 4, 5, 1430, 3429, 170, 42010), -- 30037
(30037, 4, 4, 1421, 3457, 170, 42010), -- 30037
(30037, 4, 3, 1436, 3461, 170, 42010), -- 30037
(30037, 4, 2, 1488, 3450, 170, 42010), -- 30037
(30037, 4, 1, 1495, 3412, 170, 42010), -- 30037
(30037, 4, 0, 1478, 3398, 170, 42010), -- 30037
(30037, 3, 5, 1430, 3429, 170, 42010), -- 30037
(30037, 3, 4, 1421, 3457, 170, 42010), -- 30037
(30037, 3, 3, 1436, 3461, 170, 42010), -- 30037
(30037, 3, 2, 1488, 3450, 170, 42010), -- 30037
(30037, 3, 1, 1495, 3412, 170, 42010), -- 30037
(30037, 3, 0, 1478, 3398, 170, 42010), -- 30037
(30037, 2, 11, 1451, 3408, 170, 42010), -- 30037
(30037, 2, 10, 1436, 3419, 170, 42010), -- 30037
(30037, 2, 9, 1423, 3432, 170, 42010), -- 30037
(30037, 2, 8, 1423, 3443, 170, 42010), -- 30037
(30037, 2, 7, 1429, 3459, 170, 42010), -- 30037
(30037, 2, 6, 1443, 3461, 170, 42010), -- 30037
(30037, 2, 5, 1464, 3461, 170, 42010), -- 30037
(30037, 2, 4, 1473, 3457, 170, 42010), -- 30037
(30037, 2, 3, 1486, 3443, 170, 42010), -- 30037
(30037, 2, 2, 1491, 3424, 170, 42010), -- 30037
(30037, 2, 1, 1489, 3410, 170, 42010), -- 30037
(30037, 2, 0, 1467, 3404, 170, 42010), -- 30037
(30037, 1, 11, 1460, 3417, 170, 42010), -- 30037
(30037, 1, 10, 1434, 3435, 170, 42010), -- 30037
(30037, 1, 9, 1423, 3443, 170, 42010), -- 30037
(30037, 1, 8, 1429, 3459, 170, 42010), -- 30037
(30037, 1, 7, 1438, 3461, 170, 42010), -- 30037
(30037, 1, 6, 1451, 3461, 170, 42010), -- 30037
(30037, 1, 5, 1464, 3461, 170, 42010), -- 30037
(30037, 1, 4, 1478, 3448, 170, 42010), -- 30037
(30037, 1, 3, 1489, 3437, 170, 42010), -- 30037
(30037, 1, 2, 1493, 3428, 170, 42010), -- 30037
(30037, 1, 1, 1489, 3415, 170, 42010), -- 30037
(30037, 1, 0, 1473, 3410, 170, 42010), -- 30037
(30037, 0, 0, 1463, 3468, 181, 42010); -- 30037

DELETE FROM `quest_details` WHERE `ID` IN (29410, 29414, 29424, 29409, 29408, 29406, 30027, 30033, 30034, 30035, 30036, 30037, 30038, 29524, 29522, 29419, 29678, 29666, 29677, 29676, 29662, 29663, 29661, 29521, 29423, 29422, 29421, 29664, 29420, 29523, 29418, 29417);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(29410, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29410 - Aysa of the Tushui
(29409, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29409 - The Disciple's Challenge
(29408, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29408 - The Lesson Burning Scroll
(29406, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29406 - The Lesson of the Sandy Fist
(30027, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- 30027 - The Lesson of the Iron Bough
(30033, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- 30033
(30034, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- 30034
(30035, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- 30035
(30036, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- 30036
(30037, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- 30037
(30038, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- 30038
(29524, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29524 - The Lesson of Stifled Pride
(29522, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29522 - Ji of the Huojin
(29414, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29414 - The Way of the Tushui
(29424, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29424 - Items of Utmost Importance
(29419, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- 29419 - The Missing Driver
(29678, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- Shu, the Spirit of Water
(29666, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- The Sting of Learning
(29677, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- The Sun Pearl
(29676, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- Finding an Old Friend
(29662, 0, 0, 0, 0, 0, 0, 0, 0, 42010), -- Stronger Than Reeds
(29663, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- The Lesson of the Balanced Rock
(29661, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- The Lesson of Dry Fur
(29521, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- The Singing Pools
(29423, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- The Passion of Shen-zin Su
(29422, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- Huo, the Spirit of Fire
(29421, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- Only the Worthy Shall Pass
(29664, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- The Challenger's Fires
(29420, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- The Spirit's Guardian
(29523, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- Fanning the Flames
(29418, 1, 0, 0, 0, 0, 0, 0, 0, 42010), -- Kindling the Fire
(29417, 1, 0, 0, 0, 0, 0, 0, 0, 42010); -- The Way of the Huojin

DELETE FROM `quest_template` WHERE `ID` IN (30037, 29410, 29409, 29408, 29524, 29406, 30027, 29522, 29414, 29424, 29419, 46736, 46735, 46277);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestPackageID`, `ContentTuningID`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitGiverModelSceneID`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `QuestSessionBonus`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(29410, 2, 0, 80, 5736, 0, 0, 0, 2, 1, 2, 1, 0, 0, 0, 0, 0, 0, 1, 0, 18350080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1216, 0, 0, 0, 0, 2, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 58720256, 0, 4, 0, 0, 'Aysa of the Tushui', 'Speak to Merchant Lorvo by Fu\'s Pond.', 'In such a short time, you\'ve shown me that you have the potential to be a great $c. The training grounds are behind you, but now you must prove yourself by facing a far greater challenge, one that none of my students have accomplished.$B$BI want you to return Huo, the spirit of fire, to the Temple of Five Dawns.$B$BMy two other most gifted students will help you in this task. The first is Aysa Cloudsinger. Seek her out at the pool to the west.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 42010), -- 29410
(29409, 2, 70, 80, 5736, 21, 0, 29410, 7, 1, 7, 1, 60, 0, 0, 0, 0, 0, 1, 0, 135790592, 0, 0, 0, 0, 39755, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1216, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 58720256, 0, 4, 0, 0, 'The Disciple\'s Challenge', 'Defeat Jaomin Ro.', '$n, I see great strength and great courage in you, and an unsurpassed purity of soul.$B$BThe hour is young, but I think you may be ready to face a greater challenge.$B$BGo to the bottom of the stairs, and cross the bridge. There, you will find Jaomin Ro, one of our eldest students. Challenge and defeat him in honorable combat, and this first phase of your training will be complete.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', 'Jaomin Ro', '', '', 890, 878, 42010), -- 29409
(29408, 2, 0, 80, 5736, 21, 0, 29409, 5, 1, 5, 1, 30, 0, 0, 0, 80212, 0, 1, 0, 1572864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80212, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1216, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 58720256, 0, 4, 0, 0, 'The Lesson of the Burning Scroll', 'Snatch the flame from Master Shang Xi\'s palm, then burn the Edict of Temperance.', 'Every wisdom has a time and place, and times are changing for those of us living here on Shen-zin Su. For this lesson, I would ask two things of you.$B$BFor the first, I hold a flame in my hand. Gather your wits, and when you think you are ready, attempt to snatch the flame.$B$BShould you succeed, I want you to then climb to the top of this temple and burn the Edict of Temperance that you find there.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 42010), -- 29408
(29524, 2, 69, 80, 5736, 21, 0, 29408, 7, 1, 7, 1, 30, 93425, 0, 0, 0, 0, 1, 0, 3670016, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1216, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 58720256, 0, 4, 0, 0, 'The Lesson of Stifled Pride', 'Defeat 6 Huojin Trainees or Tushui Trainees.', 'Facing a living opponent is a very different thing from the stationary targets in the yard. Living opponents strike back. There is the very real fear of failure, and sometimes, even death.$B$BYou must have the courage to overcome those fears.$B$BChallenge the other trainees within the temple or down the steps below, and defeat them.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 42010), -- 29524
(29406, 2, 63, 80, 5736, 21, 0, 29524, 7, 1, 7, 1, 30, 107032, 0, 0, 0, 0, 1, 0, 2621440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1216, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 58720256, 0, 4, 0, 0, 'The Lesson of the Sandy Fist', 'Destroy 5 Training Targets.', 'I\'d like to observe you putting your new weapon to use, my young student. This will aid me in determining what degree of training will be best suited to your talents.$B$BWe have many training targets in the training grounds below. Practice your attacks upon them, and return to me once you\'re feeling comfortable with your new weapon.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 42010), -- 29406
(30037, 2, 0, 80, 5736, 21, 0, 29406, 5, 1, 5, 1, 0, 0, 0, 0, 0, 0, 1, 0, 524288, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73213, 76391, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1216, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 58720256, 0, 4, 0, 0, 'The Lesson of the Iron Bough', 'Retrieve and equip a Trainee\'s Axe and a Trainee\'s Shield.', 'First, you will need weapons suited to your talents. Retrieve an axe and a shield from one of the weapon racks below, bring them to me, and show me that you know how to hold them properly.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 42010), -- 30037
(30027, 2, 0, 80, 5736, 21, 0, 29406, 5, 1, 5, 1, 0, 0, 0, 0, 0, 0, 1, 0, 524288, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73209, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1216, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 58720256, 0, 4, 0, 0, 'The Lesson of the Iron Bough', 'Retrieve and equip a Trainee\'s Staff.', 'First, you will need a weapon suited to your talents. Retrieve a staff from one of the weapon racks below, bring it to me, and show me that you know how to equip it properly.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 42010), -- 30027
(29522, 2, 0, 80, 5736, 0, 0, 29417, 2, 1, 2, 1, 0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1216, 0, 0, 0, 0, 2, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 58720256, 0, 4, 0, 0, 'Ji of the Huojin', 'Speak to Ji Firepaw in Wu-Song Village.', 'Another of my most talented students is awaiting you in Wu-Song Village to the northwest. He is of a different mind than Aysa, but in their differences, they bring balance to each other.$B$BJi Firepaw will instruct you on gathering the offerings for the spirit of fire. Trust in his wisdom.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 42010), -- 29522
(29414, 2, 72, 80, 5736, 0, 0, 29522, 5, 1, 5, 1, 30, 0, 0, 0, 0, 0, 1, 0, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1216, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 58720256, 0, 4, 0, 0, 'The Way of the Tushui', 'Protect Aysa while she meditates.', 'It\'s a pleasure to meet you, $c. I am Aysa, of the Tushui.$B$BI\'ve spent much time in thought since Master Shang told me we would be searching for Huo, the spirit of fire. I know where he resides, but not how to reach him. The answers are close, however.$B$BCome with me to the Cave of Meditation nearby. It is a place of great wisdom. I will meditate there, open my mind, and the path shall find us.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 42010), -- 29414
(29419, 2, 0, 80, 5736, 0, 0, 0, 5, 1, 5, 1, 30, 0, 0, 0, 0, 0, 1, 0, 524288, 0, 0, 0, 0, 0, 0, 0, 0, 73223, 73241, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1216, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 58720256, 0, 4, 0, 0, 'The Missing Driver', 'Rescue the Cart Driver.', 'My driver went running off after the sprites just after they attacked. I don\'t think they\'ll really do him any harm, but I need him back to help me clean up the mess by the cart.$B$BHe chased them off towards the cliffs to the north. If you head that direction, you should find him quickly.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 42010), -- 29419
(29424, 2, 0, 80, 5736, 0, 0, 0, 5, 1, 5, 1, 30, 0, 0, 0, 0, 0, 1, 0, 524288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1216, 0, 0, 0, 0, 5, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 58720256, 0, 4, 0, 0, 'Items of Utmost Importance', 'Recover 6 Training Supplies from Amberleaf Scamps.', 'Amberleaf scamps swarmed my cart and stole most of the training supplies I was bringing up to the training grounds. They\'ve always been troublemakers, but they\'ve never been this aggressive before. I don\'t know what happened.$B$BPlease, help me recover my supplies.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 42010), -- 29424
(46736, 0, 0, 336, 0, 143, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 100728840, 33554432, 0, 0, 0, 0, 0, 0, 0, 152654, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2045, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 6, 0, 0, 'Contribute to Nether Disruptor', '', '', '', '', 1226, 0, 0, 0, 75, 0, 0, 0, '', '', '', '', 0, 0, 42010), -- 46736
(46735, 0, 0, 336, 0, 143, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 100728840, 33554432, 0, 0, 0, 0, 0, 0, 0, 152654, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2045, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 6, 0, 0, 'Contribute to Command Center', '', '', '', '', 1226, 0, 0, 0, 75, 0, 0, 0, '', '', '', '', 0, 0, 42010), -- 46735
(46277, 0, 0, 336, 0, 143, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 100729096, 33554432, 0, 0, 0, 0, 0, 0, 0, 152654, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2045, 0, 0, 0, 0, 4, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 6, 0, 0, 'Contribute to Mage Tower', '', '', '', '', 1226, 0, 0, 0, 75, 0, 0, 0, '', '', '', '', 0, 0, 42010); -- 46277

UPDATE `quest_template` SET `RewardBonusMoney`=90, `VerifiedBuild`=43206 WHERE `ID`=29410; -- Aysa of the Tushui
UPDATE `quest_template` SET `RewardBonusMoney`=420, `Flags`=1572864, `VerifiedBuild`=43206 WHERE `ID`=29409; -- The Disciple's Challenge
UPDATE `quest_template` SET `RewardBonusMoney`=270, `VerifiedBuild`=43206 WHERE `ID`=29408; -- The Lesson of the Burning Scroll
UPDATE `quest_template` SET `RewardBonusMoney`=300, `VerifiedBuild`=43206 WHERE `ID`=29524; -- The Lesson of Stifled Pride
UPDATE `quest_template` SET `RewardBonusMoney`=180, `VerifiedBuild`=43206 WHERE `ID`=29406; -- The Lesson of the Sandy Fist
UPDATE `quest_template` SET `RewardBonusMoney`=120, `VerifiedBuild`=43206 WHERE `ID`=30027; -- The Lesson of the Iron Bough
UPDATE `quest_template` SET `VerifiedBuild`=43206 WHERE `ID` IN (46736, 46735, 46277);

DELETE FROM `quest_objectives` WHERE `ID` IN (252015, 252376, 252090, 253782, 253783, 252375 /*252375*/, 252345 /*252345*/, 252344 /*252344*/, 254896 /*254896*/, 252339 /*252339*/, 253214 /*253214*/, 289536 /*289536*/, 289535 /*289535*/, 289167 /*289167*/);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
(252375, 29409, 0, 0, 0, 54611, 1, 1, 0, 0, 'Defeat Jaomin Ro', 42010), -- 252375
(252345, 29408, 0, 1, 1, 59570, 1, 0, 0, 0, 'Burn the Edict of Temperance', 42010), -- 252345
(252344, 29408, 0, 0, 0, 59591, 1, 0, 0, 0, 'Snatch the Master\'s Flame', 42010), -- 252344
(254896, 29524, 0, 0, 0, 54586, 6, 0, 0, 0, 'Sparring Trainees defeated', 42010), -- 254896
(252339, 29406, 0, 0, 0, 53714, 5, 0, 0, 0, 'Training Targets destroyed', 42010), -- 252339
(253214, 30027, 0, 0, 0, 54139, 1, 0, 0, 0, 'Loot and Equip a Trainee\'s Staff', 42010), -- 253214
(253783, 30037, 0, 1, 1, 57849, 1, 0, 0, 0, 'Loot and Equip a Trainee\'s Shield', 42010), -- 253783
(253782, 30037, 0, 0, 0, 54139, 1, 0, 0, 0, 'Loot and Equip a Trainee\'s Axe', 42010), -- 253782
(289536, 46736, 4, 0, -1, 1342, 100, 0, 0, 0, '', 42010), -- 289536
(289535, 46735, 4, 0, -1, 1342, 100, 0, 0, 0, '', 42010), -- 289535
(289167, 46277, 4, 0, -1, 1342, 100, 0, 0, 0, '', 42010), -- 289167
(252376, 29414, 0, 0, 0, 54856, 1, 0, 0, 0, 'Protect Aysa while she meditates', 42010), -- 252376
(252090, 29419, 0, 0, 0, 54855, 1, 0, 0, 0, 'Rescue the Cart Driver', 42010), -- 252090
(252015, 29424, 1, 0, 0, 72071, 6, 0, 1, 0, '', 42010); -- 252015

DELETE FROM `quest_objectives` WHERE `ID`=286629; -- Quest 30027 - 2 line is not actualy - DELETED /Text : Loot and Equip a second Trainee's Handwrap /

DELETE FROM `quest_visual_effect` WHERE (`Index`=0 AND `ID` IN (252375, 252345, 252344, 254896, 252090, 252376));
INSERT INTO `quest_visual_effect` (`ID`, `Index`, `VisualEffect`, `VerifiedBuild`) VALUES
(252375, 0, 658, 42010),
(252345, 0, 946, 42010),
(252344, 0, 1119, 42010),
(252090, 0, 569, 42010),
(254896, 0, 1052, 42010),
(252376, 0, 1192, 42010);

DELETE FROM `quest_template_addon` WHERE `ID` IN (29406, 29408, 29409, 29410, 29524, 30027, 30033, 30034, 30035, 30036, 30037, 30038, 29406);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`, `ScriptName`) VALUES
(30027, 0, 512, 0, 0, 29406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- The Lesson of the Iron Bough - Monk
(30033, 0, 128, 0, 0, 29406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- The Lesson of the Iron Bough - Mage
(30034, 0, 4, 0, 0, 29406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- The Lesson of the Iron Bough - Hunter
(30035, 0, 16, 0, 0, 29406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- The Lesson of the Iron Bough - Priest
(30036, 0, 8, 0, 0, 29406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- The Lesson of the Iron Bough - Rogue
(30037, 0, 64, 0, 0, 29406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- The Lesson of the Iron Bough - Shaman
(30038, 0, 1, 0, 0, 29406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- The Lesson of the Iron Bough - Warrior
(29406, 0, 0, 0, 0, 29524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- The Lesson of the Sandy Fist
(29524, 0, 0, 0, 29406, 29408, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- The Lesson of Stifled Pride
(29408, 0, 0, 0, 29524, 29409, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, ''), -- The Lesson of the Burning Scroll
(29409, 0, 0, 0, 29408, 29410, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- The Disciple's Challenge
(29410, 0, 0, 0, 29409, 29424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''); -- Aysa of the Tushui

DELETE FROM `page_text` WHERE `ID` IN (4610 /*4610*/, 4605 /*4605*/);
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`, `PlayerConditionID`, `Flags`, `VerifiedBuild`) VALUES
(4610, '\'Always challenge. Always question. In the pursuit of a greater good, inaction is the only wrong.\' -Master Zurong$b$bThe path of the Huojin is marked by practical and decisive action. Followers of this discipline believe that morals and ideals are not absolute, but change with circumstances.$b$bAs such, a Huojin Master must remain flexible in his or her thinking, always evaluating the greater good.', 0, 0, 0, 42010), -- 4610
(4605, '\'Discipline is not a war that is won. It is a battle, constantly fought.\' -Master Feng$b$bThe way of the Tushui is one of a principled life. Followers of this discipline  believe there is a moral certainty to the world: one correct path of right and wrong.$b$bThese values are immutable, and must be preserved no matter what the cost, even if it means self-sacrifice, or painful losses in the pursuit of a higher ideal.', 0, 0, 0, 42010); -- 4605

UPDATE `npc_text` SET `VerifiedBuild`=42010 WHERE `ID` IN (18715, 18310, 18927, 18340, 20778);

DELETE FROM `playercreateinfo_action` WHERE (`race`=24 AND `class`=10 AND `button`=9);
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES
(24, 10, 9, 107079, 0); -- Quaking Palm

DELETE FROM `gossip_menu` WHERE (`MenuID`=13037 AND `TextID`=18310) OR (`MenuID`=13060 AND `TextID` IN (18715,18927,18340)) OR (`MenuID`=14672 AND `TextID`=20778) OR (`MenuID`=14491 AND `TextID` IN (20491,20490)) OR (`MenuID`=13102 AND `TextID`=18401) OR (`MenuID`=15125 AND `TextID`=17125) OR (`MenuID`=14674 AND `TextID`=20787) OR (`MenuID`=13050 AND `TextID`=18327) OR (`MenuID`=13038 AND `TextID`=18311) OR (`MenuID`=14616 AND `TextID`=20677) OR (`MenuID`=13346 AND `TextID`=18919);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(13037, 18310, 42010), -- 54567 (Aysa Cloudsinger)
(13060, 18715, 42010), -- 54943 (Merchant Lorvo)
(13060, 18927, 42010), -- 54943 (Merchant Lorvo)
(13060, 18340, 42010), -- 54943 (Merchant Lorvo)
(14672, 20778, 42010), -- 54567 (Aysa Cloudsinger)
(14491, 20491, 42010), -- 54975 (Aysa Cloudsinger)
(13102, 18401, 42010), -- 55020 (Old Man Liang)
(14491, 20490, 42010), -- 54975 (Aysa Cloudsinger)
(15125, 17125, 42010), -- 57620 (Whittler Dewei)
(14674, 20787, 42010), -- 57619 (Cheng Dawnscrive)
(13050, 18327, 42010), -- 54135 (Master Li Fei)
(13038, 18311, 42010), -- 54568 (Ji Firepaw)
(14616, 20677, 42010), -- 64929 (Lamplighter Deng)
(13346, 18919, 42010); -- 57754 (Instructor Mossthorn)

UPDATE `gossip_menu_option` SET `VerifiedBuild`=42010 WHERE (`MenuID`=12186 AND `OptionID` IN (13,15,12,16,17,18,14)) OR (`MenuID`=12188 AND `OptionID` IN (14,15,13,12)) OR (`MenuID`=12191 AND `OptionID` IN (15,14,12,13)) OR (`MenuID`=12185 AND `OptionID` IN (12,13));
UPDATE `gossip_menu_option` SET `VerifiedBuild`=42010 WHERE (`MenuID`=12185 AND `OptionID` IN (11,14)) OR (`MenuID`=12186 AND `OptionID` IN (11,19)) OR (`MenuID`=9821 AND `OptionID`=1);


DELETE FROM `creature_addon` WHERE `guid` IN (450220, 450266, 450267, 563382, 563383);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `MountCreatureID`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(450220, 0, 0, 0, 65536, 1, 0, 0, 0, 0, 0, '108900 49414 115865'), -- Master Shang Xi - 108900 - Master Shang Xi's Staff, 49414 - Generic Quest Invisibility 1, 115865 - Cosmetic - Sit Chair High (Lower/Upper Body - High/Low Priority) (Anim Kit)
(450266, 0, 0, 0, 65536, 1, 0, 0, 0, 0, 0, '108900 60921 114600 126160'), -- Master Shang Xi - 108900 - Master Shang Xi's Staff, 60921 - Generic Quest Invisibility 3, 114600 - Master Shang Xi's Offering, 126160 - Master Shang Xi's Staff
(450267, 0, 0, 0, 65536, 1, 0, 0, 0, 0, 0, '108900 82343 126160'), -- Master Shang Xi - 108900 - Master Shang Xi's Staff, 82343 - Generic Quest Invisibility 4; 126160 - Master Shang Xi's Staff
(563382, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''),
(563383, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 108967;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 108967, 0, 0, 31, 0, 3, 53714, 0, 0, 0, 0, '', 'Jab target only Training Target'),
(13, 1, 108967, 0, 1, 31, 0, 3, 57873, 0, 0, 0, 0, '', 'Jab target only Training Target');

-- Quiet Lam
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = 57752;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 57752 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(57752, 0, 0, 1, 1, 0, 100, 0, 0, 0, 5000, 5000, 10, 507, 509, 511, 543, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Quiet Lam - OOC - Play Random Emote (507, 509, 511, 543)'),
(57752, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 115, 33643, 33645, 33646, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'Quiet Lam - Play Random Sound (33643, 33645, 33646)');

-- Ironfist Zhou
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = 57753;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 57753 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(57753, 0, 0, 1, 1, 0, 100, 0, 0, 0, 5000, 5000, 10, 507, 509, 511, 543, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ironfist Zhou - OOC - Play Random Emote (507, 509, 511, 543)'),
(57753, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 115, 33643, 33645, 33646, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'Ironfist Zhou - Play Random Sound (33643, 33645, 33646)');

-- Instructor Zhi smart ai
SET @ENTRY := 61411;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 1, 0, 100, 0, 4000, 4000, 19000, 19000, 5, 509, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Every 19 seconds (4s initially) (OOC) - Self: Play emote 509'),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 54587, 0, 15, 0, 0, 0, 0, 'Every 19 seconds (4s initially) (OOC) - Creature Tushui Trainee (54587) in 0 - 15 yards: Set creature data #1 to 1'),
(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 65471, 0, 15, 0, 0, 0, 0, 'Every 19 seconds (4s initially) (OOC) - Creature Tushui Trainee (65471) in 0 - 15 yards: Set creature data #1 to 1'),
(@ENTRY, 0, 3, 4, 1, 0, 100, 0, 9000, 9000, 19000, 19000, 5, 543, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Every 19 seconds (9s initially) (OOC) - Self: Play emote 543'),
(@ENTRY, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 2, 0, 0, 0, 0, 9, 54587, 0, 15, 0, 0, 0, 0, 'Every 19 seconds (9s initially) (OOC) - Creature Tushui Trainee (54587) in 0 - 15 yards: Set creature data #1 to 2'),
(@ENTRY, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 2, 0, 0, 0, 0, 9, 65471, 0, 15, 0, 0, 0, 0, 'Every 19 seconds (9s initially) (OOC) - Creature Tushui Trainee (65471) in 0 - 15 yards: Set creature data #1 to 2'),
(@ENTRY, 0, 6, 7, 1, 0, 100, 0, 14000, 14000, 19000, 19000, 5, 511, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Every 19 seconds (14s initially) (OOC) - Self: Play emote 511'),
(@ENTRY, 0, 7, 8, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 3, 0, 0, 0, 0, 9, 54587, 0, 15, 0, 0, 0, 0, 'Every 19 seconds (14s initially) (OOC) - Creature Tushui Trainee (54587) in 0 - 15 yards: Set creature data #1 to 3'),
(@ENTRY, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 3, 0, 0, 0, 0, 9, 65471, 0, 15, 0, 0, 0, 0, 'Every 19 seconds (14s initially) (OOC) - Creature Tushui Trainee (65471) in 0 - 15 yards: Set creature data #1 to 3'),
(@ENTRY, 0, 9, 10, 1, 0, 100, 0, 19000, 19000, 19000, 19000, 5, 507, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Every 19 seconds (OOC) - Self: Play emote 507'),
(@ENTRY, 0, 10, 11, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 4, 0, 0, 0, 0, 9, 54587, 0, 15, 0, 0, 0, 0, 'Every 19 seconds (OOC) - Creature Tushui Trainee (54587) in 0 - 15 yards: Set creature data #1 to 4'),
(@ENTRY, 0, 11, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 4, 0, 0, 0, 0, 9, 65471, 0, 15, 0, 0, 0, 0, 'Every 19 seconds (OOC) - Creature Tushui Trainee (65471) in 0 - 15 yards: Set creature data #1 to 4');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 61411 AND `SourceId` = 0;

-- Instructor Qun smart ai
SET @ENTRY := 57748;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type` = 9 AND `entryOrGuid` IN (5774800);
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 1, 0, 100, 0, 19000, 19000, 19000, 20000, 80, 5774800, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Every 19 - 20 seconds (19 - 19s initially) (OOC) - Self: Start timed action list id #5774800 (update out of combat) // -inline'),
(@ENTRY * 100, 9, 0, 0, 0, 0, 100, 0, 1000, 3000, 0, 0, 5, 509, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 1 - 3 seconds - Self: Play emote 509'),
(@ENTRY * 100, 9, 1, 0, 0, 0, 100, 0, 1000, 2000, 0, 0, 5, 509, 0, 0, 0, 0, 0, 11, 53565, 15, 0, 0, 0, 0, 0, 'After 1 - 2 seconds - Creature Aspiring Trainee (53565) in 15 yd: Play emote 509'),
(@ENTRY * 100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 509, 0, 0, 0, 0, 0, 11, 65469, 15, 0, 0, 0, 0, 0, 'After 0 seconds - Creature Aspiring Trainee (65469) in 15 yd: Play emote 509'),
(@ENTRY * 100, 9, 3, 0, 0, 0, 100, 0, 100, 100, 0, 0, 115, 33646, 33645, 33646, 33646, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 0.1 seconds - Self: Play random direct sound one of: 33646, 33645, 33646, 33646 of all'),
(@ENTRY * 100, 9, 4, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 5, 543, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 6 seconds - Self: Play emote 543'),
(@ENTRY * 100, 9, 5, 0, 0, 0, 100, 0, 1000, 2000, 0, 0, 5, 543, 0, 0, 0, 0, 0, 11, 53565, 15, 0, 0, 0, 0, 0, 'After 1 - 2 seconds - Creature Aspiring Trainee (53565) in 15 yd: Play emote 543'),
(@ENTRY * 100, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 543, 0, 0, 0, 0, 0, 11, 65469, 15, 0, 0, 0, 0, 0, 'After 0 seconds - Creature Aspiring Trainee (65469) in 15 yd: Play emote 543'),
(@ENTRY * 100, 9, 7, 0, 0, 0, 100, 0, 100, 100, 0, 0, 115, 33646, 33643, 33646, 33646, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 0.1 seconds - Self: Play random direct sound one of: 33646, 33643, 33646, 33646 of all'),
(@ENTRY * 100, 9, 8, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 5, 511, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 6 seconds - Self: Play emote 511'),
(@ENTRY * 100, 9, 9, 0, 0, 0, 100, 0, 1000, 2000, 0, 0, 5, 511, 0, 0, 0, 0, 0, 11, 53565, 15, 0, 0, 0, 0, 0, 'After 1 - 2 seconds - Creature Aspiring Trainee (53565) in 15 yd: Play emote 511'),
(@ENTRY * 100, 9, 10, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 511, 0, 0, 0, 0, 0, 11, 65469, 15, 0, 0, 0, 0, 0, 'After 0 seconds - Creature Aspiring Trainee (65469) in 15 yd: Play emote 511'),
(@ENTRY * 100, 9, 11, 0, 0, 0, 100, 0, 100, 100, 0, 0, 115, 33646, 33645, 33646, 33646, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 0.1 seconds - Self: Play random direct sound one of: 33646, 33645, 33646, 33646 of all'),
(@ENTRY * 100, 9, 12, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 5, 507, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 6 seconds - Self: Play emote 507'),
(@ENTRY * 100, 9, 13, 0, 0, 0, 100, 0, 1000, 2000, 0, 0, 5, 507, 0, 0, 0, 0, 0, 11, 53565, 15, 0, 0, 0, 0, 0, 'After 1 - 2 seconds - Creature Aspiring Trainee (53565) in 15 yd: Play emote 507'),
(@ENTRY * 100, 9, 14, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 507, 0, 0, 0, 0, 0, 11, 65469, 15, 0, 0, 0, 0, 0, 'After 0 seconds - Creature Aspiring Trainee (65469) in 15 yd: Play emote 507'),
(@ENTRY * 100, 9, 15, 0, 0, 0, 100, 0, 100, 100, 0, 0, 115, 33646, 33646, 33643, 33646, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 0.1 seconds - Self: Play random direct sound one of: 33646, 33646, 33643, 33646 of all');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 57748 AND `SourceId` = 0;


-- Aspiring Trainee with guid 450192 smart ai
SET @ENTRY := -450192;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type` = 9 AND `entryOrGuid` IN (45019200);
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = 53565;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 1, 0, 100, 0, 85000, 95000, 85000, 95000, 1, 1, 0, 0, 0, 0, 0, 19, 53565, 3, 0, 0, 0, 0, 0, 'Every 85 - 95 seconds (OOC) - Closest alive creature Aspiring Trainee (53565) in 3 yards: Talk My money\'s on Lam. Did you see him take down Chu during trai... (1) to invoker'),
(@ENTRY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 45019200, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Every 85 - 95 seconds (OOC) - Self: Start timed action list id #45019200 (update out of combat) // -inline'),
(45019200, 9, 0, 0, 0, 0, 100, 0, 2000, 3000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 19, 53565, 3, 0, 0, 0, 0, 0, 'After 2 - 3 seconds - Closest alive creature Aspiring Trainee (53565) in 3 yards: Talk His stamina is nothing against Lam\'s strength. (2) to invoker'),
(45019200, 9, 1, 0, 0, 0, 100, 0, 4000, 5000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 19, 53565, 3, 0, 0, 0, 0, 0, 'After 4 - 5 seconds - Closest alive creature Aspiring Trainee (53565) in 3 yards: Talk He has the legs of an ox! Have you ever been kicked by him i... (3) to invoker'),
(45019200, 9, 2, 0, 0, 0, 100, 0, 1000, 2000, 0, 0, 1, 4, 0, 1, 0, 0, 0, 19, 53565, 3, 0, 0, 0, 0, 0, 'After 1 - 2 seconds - Self: Talk 4 to Closest alive creature Aspiring Trainee (53565) in 3 yards'),
(45019200, 9, 3, 0, 0, 0, 100, 0, 5000, 6000, 0, 0, 1, 5, 0, 0, 0, 0, 0, 19, 53565, 3, 0, 0, 0, 0, 0, 'After 5 - 6 seconds - Closest alive creature Aspiring Trainee (53565) in 3 yards: Talk That\'s where you\'re mistaken, friend. Zhou is as sturdy as an oak. (5) to invoker'),
(45019200, 9, 4, 0, 0, 0, 100, 0, 7000, 8000, 0, 0, 1, 6, 0, 1, 0, 0, 0, 19, 53565, 3, 0, 0, 0, 0, 0, 'After 7 - 8 seconds - Self: Talk 6 to Closest alive creature Aspiring Trainee (53565) in 3 yards'),
(45019200, 9, 5, 0, 0, 0, 100, 0, 8000, 9000, 0, 0, 1, 7, 0, 1, 0, 0, 0, 19, 53565, 3, 0, 0, 0, 0, 0, 'After 8 - 9 seconds - Self: Talk 7 to Closest alive creature Aspiring Trainee (53565) in 3 yards');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = -450192 AND `SourceId` = 0;

-- Huojin Trainee smart ai
SET @ENTRY := 54586;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = @ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 1, 0, 100, 0, 5000, 5000, 6000, 7000, 10, 509, 543, 511, 507, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Every 6 - 7 seconds (5 - 5s initially) (OOC) - Self: Play random emote: 509, 543, 511, 507,'),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 10, 509, 543, 511, 507, 0, 0, 19, 65470, 300, 0, 0, 0, 0, 0, 'Every 6 - 7 seconds (5 - 5s initially) (OOC) - Closest alive creature Huojin Trainee (65470) in 300 yards: Play random emote: 509, 543, 511, 507,'),
(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 115, 33646, 33643, 33645, 33646, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Every 6 - 7 seconds (5 - 5s initially) (OOC) - Self: Play random direct sound one of: 33646, 33643, 33645, 33646 of all');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 54586 AND `SourceId` = 0;

-- Huojin Trainee with guid 450130 smart ai
SET @ENTRY := -450130;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = 65470;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 1, 0, 100, 0, 5000, 5000, 5000, 6000, 10, 509, 543, 511, 507, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Every 5 - 6 seconds (5 - 5s initially) (OOC) - Self: Play random emote: 509, 543, 511, 507,'),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 10, 509, 543, 511, 507, 0, 0, 11, 65470, 300, 0, 0, 0, 0, 0, 'Every 5 - 6 seconds (5 - 5s initially) (OOC) - Creature Huojin Trainee (65470) in 2 yd: Play random emote: 509, 543, 511, 507,'),
(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 115, 33646, 33643, 33645, 33643, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Every 5 - 6 seconds (5 - 5s initially) (OOC) - Self: Play random direct sound one of: 33646, 33643, 33645, 33643 of all');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = -450130 AND `SourceId` = 0;

-- Huojin Trainee with guid 450137 smart ai
SET @ENTRY := -450137;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = 65470;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 1, 1, 0, 100, 0, 5000, 5000, 6000, 7000, 10, 509, 543, 511, 507, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Every 6 - 7 seconds (5 - 5s initially) (OOC) - Self: Play random emote: 509, 543, 511, 507,'),
(@ENTRY, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 10, 509, 543, 511, 507, 0, 0, 11, 65470, 300, 0, 0, 0, 0, 0, 'Every 6 - 7 seconds (5 - 5s initially) (OOC) - Creature Huojin Trainee (65470) in 2 yd: Play random emote: 509, 543, 511, 507,'),
(@ENTRY, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 115, 33646, 33643, 33645, 33643, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Every 6 - 7 seconds (5 - 5s initially) (OOC) - Self: Play random direct sound one of: 33646, 33643, 33645, 33643 of all');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = -450137 AND `SourceId` = 0;

-- Tushui Trainee with guid 450123 smart ai
SET @ENTRY := -450123;
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryOrGuid` = @ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type` = 9 AND `entryOrGuid` IN (45012300);
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` = 54587;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 0, 0, 1, 0, 100, 0, 6000, 7000, 6000, 7000, 80, 45012300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Every 6 - 7 seconds (OOC) - Self: Start timed action list id #45012300 (update out of combat) // -inline'),
(45012300, 9, 0, 0, 0, 0, 100, 0, 3000, 5000, 0, 0, 5, 509, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 3 - 5 seconds - Self: Play emote 509'),
(45012300, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 509, 0, 0, 0, 0, 0, 9, 54587, 0, 10, 0, 0, 0, 0, 'After 0 seconds - Creature Tushui Trainee (54587) in 0 - 10 yards: Play emote 509'),
(45012300, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 509, 0, 0, 0, 0, 0, 9, 65471, 0, 10, 0, 0, 0, 0, 'After 0 seconds - Creature Tushui Trainee (65471) in 0 - 10 yards: Play emote 509'),
(45012300, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 4, 33646, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 0 seconds - Self: Play direct sound 33646 to Self'),
(45012300, 9, 4, 0, 0, 0, 100, 0, 3000, 5000, 0, 0, 5, 543, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 3 - 5 seconds - Self: Play emote 543'),
(45012300, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 543, 0, 0, 0, 0, 0, 11, 54587, 10, 0, 0, 0, 0, 0, 'After 0 seconds - Creature Tushui Trainee (54587) in 10 yd: Play emote 543'),
(45012300, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 543, 0, 0, 0, 0, 0, 11, 65471, 10, 0, 0, 0, 0, 0, 'After 0 seconds - Creature Tushui Trainee (65471) in 10 yd: Play emote 543'),
(45012300, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 4, 33645, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 0 seconds - Self: Play direct sound 33645 to Self'),
(45012300, 9, 8, 0, 0, 0, 100, 0, 3000, 5000, 0, 0, 5, 511, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 3 - 5 seconds - Self: Play emote 511'),
(45012300, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 511, 0, 0, 0, 0, 0, 11, 54587, 10, 0, 0, 0, 0, 0, 'After 0 seconds - Creature Tushui Trainee (54587) in 10 yd: Play emote 511'),
(45012300, 9, 10, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 511, 0, 0, 0, 0, 0, 11, 65471, 10, 0, 0, 0, 0, 0, 'After 0 seconds - Creature Tushui Trainee (65471) in 10 yd: Play emote 511'),
(45012300, 9, 11, 0, 0, 0, 100, 0, 0, 0, 0, 0, 4, 33643, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 0 seconds - Self: Play direct sound 33643 to Self'),
(45012300, 9, 12, 0, 0, 0, 100, 0, 3000, 5000, 0, 0, 5, 507, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 3 - 5 seconds - Self: Play emote 507'),
(45012300, 9, 13, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 507, 0, 0, 0, 0, 0, 11, 54587, 10, 0, 0, 0, 0, 0, 'After 0 seconds - Creature Tushui Trainee (54587) in 10 yd: Play emote 507'),
(45012300, 9, 14, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 507, 0, 0, 0, 0, 0, 11, 65471, 10, 0, 0, 0, 0, 0, 'After 0 seconds - Creature Tushui Trainee (65471) in 10 yd: Play emote 507'),
(45012300, 9, 15, 0, 0, 0, 100, 0, 0, 0, 0, 0, 4, 33646, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'After 0 seconds - Self: Play direct sound 33646 to Self');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = -450123 AND `SourceId` = 0;

DELETE FROM `vehicle_template_accessory` WHERE `entry` =56739; 
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(56739, 54131, 0, 0, 'Hozen Hanging Bunny - Fe-Feng Hozen', 0, 0); -- Hozen Hanging Bunny - Fe-Feng Hozen

UPDATE `playercreateinfo` SET `orientation` = 2.87962 WHERE `race` = 24;

UPDATE `quest_offer_reward` SET `VerifiedBuild`=43345 WHERE `ID` IN (29419, 29424, 29410, 29409, 29408, 29524, 29406, 30027);
UPDATE `quest_details` SET `VerifiedBuild`=43345 WHERE `ID` IN (29414, 29419, 29424, 29410, 29409, 29408, 29524, 29406, 30027);

DELETE FROM `quest_request_items` WHERE `ID` IN (29409 /*The Disciple's Challenge*/, 29408 /*The Lesson of the Burning Scroll*/, 30027 /*The Lesson of the Iron Bough*/, 29406 /*The Lesson of the Sandy Fist*/, 29524 /*The Lesson of Stifled Pride*/, 29419 /*The Missing Driver*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(29409, 0, 1, 0, 0, 'Our greatest glory is not in never falling, but in getting up every time we do. Jaomin Ro knows this. He finds strength in every defeat.$B$BYou may yet learn that lesson.', 43345), -- The Disciple's Challenge
(29408, 0, 1, 0, 0, 'There will come time when you must trust your instincts and simply act.', 43345), -- The Lesson of the Burning Scroll
(30027, 0, 1, 0, 0, 'Picking up your first weapon is also a symbolic gesture. Every $c that leaves these training grounds must be ready to take up arms in defense of their fellow pandaren.', 43345), -- The Lesson of the Iron Bough
(29406, 0, 1, 0, 0, 'The training targets are just down the hill. Come back to me once you\'re finished.', 43345), -- The Lesson of the Sandy Fist
(29524, 0, 1, 0, 0, 'There is a time for meditation and contemplation, and there is a time for action. Diving the balance between the two is one of the greatest wisdoms we seek.', 43345), -- The Lesson of Stifled Pride
(29419, 0, 0, 0, 0, 'I should have been more careful. ', 43345); -- The Missing Driver

UPDATE `quest_request_items` SET `EmoteOnIncomplete`=1, `VerifiedBuild`=43345 WHERE `ID`=29424; -- Items of Utmost Importance


UPDATE `creature_queststarter` SET `VerifiedBuild`=43345 WHERE (`id`=54567 AND `quest`=29414) OR (`id`=54943 AND `quest` IN (29419,29424)) OR (`id`=53566 AND `quest` IN (29410,29409,29408,29524,29406,30027));
UPDATE `creature_questender` SET `VerifiedBuild`=43345 WHERE (`id`=54943 AND `quest` IN (29419,29424,29410)) OR (`id`=53566 AND `quest` IN (29409,29408,29524,29406,30027));

UPDATE `quest_template` SET `VerifiedBuild`=43345 WHERE `ID` IN (29414, 29419, 29424, 46736, 46735, 46277);
UPDATE `quest_template` SET `RewardBonusMoney`=0, `VerifiedBuild`=43345 WHERE `ID`=29410; -- Aysa of the Tushui
UPDATE `quest_template` SET `RewardBonusMoney`=60, `VerifiedBuild`=43345 WHERE `ID`=29409; -- The Disciple's Challenge
UPDATE `quest_template` SET `RewardBonusMoney`=30, `VerifiedBuild`=43345 WHERE `ID`=29408; -- The Lesson of the Burning Scroll
UPDATE `quest_template` SET `RewardBonusMoney`=30, `VerifiedBuild`=43345 WHERE `ID`=29524; -- The Lesson of Stifled Pride
UPDATE `quest_template` SET `RewardBonusMoney`=30, `VerifiedBuild`=43345 WHERE `ID`=29406; -- The Lesson of the Sandy Fist
UPDATE `quest_template` SET `RewardBonusMoney`=0, `VerifiedBuild`=43345 WHERE `ID`=30027; -- The Lesson of the Iron Bough

UPDATE `quest_objectives` SET `VerifiedBuild`=43345 WHERE `ID` IN (252376, 252090, 252015, 252375, 252345, 252344, 254896, 252339, 253214, 289536, 289535, 289167);
UPDATE `quest_visual_effect` SET `VerifiedBuild`=43345 WHERE (`Index`=0 AND `ID` IN (252376,252090,252375,252345,252344,254896));

UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=56739; -- Hozen Hanging Bunny
UPDATE `creature_template` SET `unit_flags`=33587472 WHERE `entry`=65471; -- Tushui Trainee
UPDATE `creature_template` SET `gossip_menu_id`=13036 WHERE `entry`=53566; -- Master Shang Xi
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=56479; -- Legacy of Liu Lang
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=57769; -- Shen-zin Su
UPDATE `creature_template` SET `type_flags`=1610612740, `VerifiedBuild`=43345 WHERE `entry`=57769; -- Shen-zin Su
UPDATE `creature_template` SET `type_flags`=1610612752, `VerifiedBuild`=43345 WHERE `entry`=56479; -- Legacy of Liu Lang

DELETE FROM `creature_template_movement` WHERE `CreatureId`=54567;
INSERT INTO `creature_template_movement` (`CreatureId`, `Flight`, `Rooted`) VALUES
(54567, 1, 1);

--
UPDATE `spell_script_names` SET `ScriptName` = 'spell_borean_tundra_nerubar_web_random_unit_not_on_quest' WHERE `ScriptName` = 'spell_nerubar_web_random_unit_not_on_quest';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_borean_tundra_nerubar_web_random_unit_not_on_quest_dummy' WHERE `ScriptName` = 'spell_nerubar_web_random_unit_not_on_quest_dummy';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_borean_tundra_nerubar_web_random_unit_on_quest_dummy' WHERE `ScriptName` = 'spell_nerubar_web_random_unit_on_quest_dummy';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_borean_tundra_dispel_freed_soldier_debuff' WHERE `ScriptName` = 'spell_dispel_freed_soldier_debuff';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_borean_tundra_deliver_kodo' WHERE `ScriptName` = 'spell_deliver_kodo';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_borean_tundra_kodo_delivered' WHERE `ScriptName` = 'spell_kodo_delivered';

UPDATE `spell_script_names` SET `ScriptName` = 'spell_dragonblight_warsong_battle_standard' WHERE `ScriptName` = 'spell_warsong_battle_standard';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_dragonblight_moti_mirror_image_script_effect' WHERE `ScriptName` = 'spell_moti_mirror_image_script_effect';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_dragonblight_moti_hourglass_cast_see_invis_on_master' WHERE `ScriptName` = 'spell_moti_hourglass_cast_see_invis_on_master';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_dragonblight_call_out_injured_soldier' WHERE `ScriptName` = 'spell_call_out_injured_soldier';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_dragonblight_high_executor_branding_iron' WHERE `ScriptName` = 'spell_high_executor_branding_iron';

UPDATE `spell_script_names` SET `ScriptName` = 'spell_icecrown_the_ocular_on_death' WHERE `ScriptName` = 'spell_the_ocular_on_death';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_icecrown_summon_tualiq_proxy' WHERE `ScriptName` = 'spell_summon_tualiq_proxy';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_icecrown_pound_drum' WHERE `ScriptName` = 'spell_q14076_14092_pound_drum';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_icecrown_chum_the_water' WHERE `ScriptName` = 'spell_q14112_14145_chum_the_water';

UPDATE `spell_script_names` SET `ScriptName` = 'spell_storm_peaks_remove_collapsing_cave_aura' WHERE `ScriptName` = 'spell_q12823_remove_collapsing_cave_aura';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_storm_peaks_read_pronouncement' WHERE `ScriptName` = 'spell_read_pronouncement';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_storm_peaks_bear_flank_master' WHERE `ScriptName` = 'spell_bear_flank_master';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_storm_peaks_bear_flank_fail' WHERE `ScriptName` = 'spell_bear_flank_fail';

UPDATE `spell_script_names` SET `ScriptName` = 'spell_zuldrak_scourge_disguise' WHERE `ScriptName` = 'spell_scourge_disguise';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_zuldrak_scourge_disguise_instability' WHERE `ScriptName` = 'spell_scourge_disguise_instability';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_zuldrak_scourge_disguise_expiring' WHERE `ScriptName` = 'spell_scourge_disguise_expiring';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_zuldrak_drop_disguise' WHERE `ScriptName` = 'spell_drop_disguise';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_zuldrak_cocooned_not_on_quest' WHERE `ScriptName` = 'spell_cocooned_not_on_quest';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_zuldrak_cocooned_on_quest' WHERE `ScriptName` = 'spell_cocooned_on_quest';


-- The Perfect Dissemblance (12260)
-- Priest
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_dragonblight_cancel_banshees_magic_mirror';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(48692,'spell_dragonblight_cancel_banshees_magic_mirror');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 27202 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (/*2720200,*/2720201) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27202,0,0,0,4,0,30,0,0,0,0,0,0,1,1,0,1,0,0,0,7,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Aggro - Say Line 1"),
(27202,0,1,0,8,0,100,1,48268,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Spellhit 'Container of Rats' - Despawn (No Repeat)"),
(27202,0,2,0,8,0,100,1,48679,0,0,0,0,80,2720201,2,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Spellhit 'Banshee's Magic Mirror' - Run Script (No Repeat)"),
(27202,0,3,0,0,0,100,0,0,0,3400,4800,0,11,50740,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - In Combat CMC - Cast 'Raven Flock'"),
(27202,0,4,0,2,0,100,0,0,30,14000,18000,0,11,50750,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - Between 0-30% Health - Cast 'Raven Heal'"),

(2720201,9,0,0,0,0,100,0,0,0,0,0,0,11,48654,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Cast 'The Perfect Dissemblance: Summon Priest's Footman'"),
(2720201,9,1,0,0,0,100,0,0,0,0,0,0,11,48648,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Cast 'Banshee's Magic Mirror'"),
-- Hack, 48648 above should be enough, but force-cast of that spell doesn't work always for unknown reason
-- Sadly, yes, if it works, player summons two footmen instead of one
(2720201,9,2,0,0,0,100,0,0,0,0,0,0,85,48655,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Self Cast 'The Perfect Dissemblance: Summon Player's Footman & Credit Credit'"),
(2720201,9,3,0,0,0,100,0,0,0,0,0,0,1,2,0,1,0,0,0,7,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Say Line 2");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 27202 AND `SourceId` = 0;

DELETE FROM `creature_text` WHERE `CreatureID` = 27202;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(27202,0,0,"I've heard whisperings of intruders.  Be wary.",12,0,100,0,0,0,26254,0,"Onslaught Raven Priest"),
(27202,0,1,"I sense the taint of this land in you, footman.  Report to the Bishop before the start of your next shift.",12,0,100,0,0,0,26256,0,"Onslaught Raven Priest"),
(27202,0,2,"You stink.  Take a shower.",12,0,100,0,0,0,26257,0,"Onslaught Raven Priest"),
(27202,0,3,"Your protection is strong, child.  Continue your work.",12,0,100,0,0,0,26390,0,"Onslaught Raven Priest"),
(27202,0,4,"You require the Bishop's blessing.  Go to him soon.",12,0,100,0,0,0,26391,0,"Onslaught Raven Priest"),
(27202,0,5,"Remain on the pure path.  The Light will protect you.",12,0,100,0,0,0,26392,0,"Onslaught Raven Priest"),
(27202,0,6,"The Grand Admiral himself has come to see to our dedication.  If I see you slacking on your post again, I will gut you myself.",12,0,100,0,0,0,26655,0,"Onslaught Raven Priest"),

(27202,1,0,"You are impure!",12,0,100,0,0,0,26393,0,"Onslaught Raven Priest"),
(27202,1,1,"Die, cur!",12,0,100,0,0,0,26394,0,"Onslaught Raven Priest"),
(27202,1,2,"Be washed from my sight!",12,0,100,0,0,0,26395,0,"Onslaught Raven Priest"),
(27202,1,3,"By the Light!",12,0,100,0,0,0,26396,0,"Onslaught Raven Priest"),
(27202,1,4,"Wretch!",12,0,100,0,0,0,26397,0,"Onslaught Raven Priest"),
(27202,1,5,"Defiler!",12,0,100,0,0,0,26398,0,"Onslaught Raven Priest"),
(27202,1,6,"Abbendis will see you purged!",12,0,100,0,0,0,26399,0,"Onslaught Raven Priest"),

(27202,2,0,"HELP! HELP! THIS $g MAN : WOMAN; HAS STOLEN MY IMAGE!",12,0,100,0,0,0,26543,0,"Onslaught Raven Priest"),

(27202,3,0,"Gah! What are you doing?",12,0,100,0,0,0,26637,0,"Onslaught Raven Priest"),
(27202,4,0,"A member of the priesthood whom I've never seen before.",12,0,100,0,0,0,26638,0,"Onslaught Raven Priest");

-- Footmen, yes, it's intended when one attacks player and another attacks priest, they even talk about that
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (27405,27406) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2740500,2740600) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27405,0,0,0,11,0,100,0,0,0,0,0,0,80,2740500,2,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Footman - On Spawn - Run Script"),
(27405,0,1,0,0,0,100,0,0,10000,30000,40000,0,11,50714,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Footman - In Combat - Cast 'Unrelenting Onslaught'"),

(27406,0,0,0,11,0,100,0,0,0,0,0,0,80,2740600,2,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Footman - On Spawn - Run Script"),
(27406,0,1,0,0,0,100,0,0,10000,30000,40000,0,11,50714,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Footman - In Combat - Cast 'Unrelenting Onslaught'"),

(2740500,9,0,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Onslaught Footman - On Script - Start Attack Summoner"),
(2740500,9,1,0,0,0,100,0,0,0,0,0,0,1,0,0,1,0,0,0,23,0,0,0,0,0,0,0,0,"Onslaught Footman - On Script - Say Line 0"),

(2740600,9,0,0,0,0,100,0,0,0,0,0,0,49,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Onslaught Footman - On Script - Start Attack Summoner"),
(2740600,9,1,0,0,0,100,0,3000,3000,0,0,0,1,0,0,1,0,0,0,23,0,0,0,0,0,0,0,0,"Onslaught Footman - On Script - Say Line 0");


-- A Fall From Grace (12274)
-- Disguise stuff
-- Shouldn't be here, cancels disguise everytime, not a real solution but still
DELETE FROM `spell_area` WHERE `spell` = 48358 AND `area` = 4180;

DELETE FROM `spell_script_names` WHERE `ScriptName` IN ('spell_dragonblight_scarlet_raven_priest_image_master','spell_dragonblight_cancel_scarlet_raven_priest_image');
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(48762,'spell_dragonblight_scarlet_raven_priest_image_master'),
(48769,'spell_dragonblight_cancel_scarlet_raven_priest_image');

UPDATE `quest_template_addon` SET `SourceSpellID` = 0 WHERE `ID` = 12274;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 27350 AND `SourceId` = 0;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 27350 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27350,0,0,0,19,0,100,0,12274,0,0,0,0,11,48774,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Agent Skully - On Quest 'A Fall From Grace' Taken - Cast 'A Fall from Grace: Quest Accept'"),
(27350,0,1,0,62,0,100,0,9501,0,0,0,0,11,48774,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Agent Skully - On Gossip Option 0 Selected - Cast 'A Fall from Grace: Quest Accept'");

-- Bell stuff
DELETE FROM `smart_scripts` WHERE `entryorguid` = 188713 AND `source_type` = 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(188713,1,0,1,70,0,100,0,2,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Abbey Bell Rope - On State Changed - Store Targetlist"),
(188713,1,1,2,61,0,100,0,0,0,0,0,0,100,1,0,0,0,0,0,10,102082,27202,0,0,0,0,0,0,"Abbey Bell Rope - On State Changed - Send Target 1 (Onslaught Raven Priest)"),
(188713,1,2,3,61,0,100,0,0,0,0,0,0,45,1,1,0,0,0,0,10,100277,24110,0,0,0,0,0,0,"Abbey Bell Rope - On State Changed - Set Data 1 1 (ELM General Purpose Bunny Large)"),
(188713,1,3,4,61,0,100,0,0,0,0,0,0,45,1,1,0,0,0,0,10,102082,27202,0,0,0,0,0,0,"Abbey Bell Rope - On State Changed - Set Data 1 1 (Onslaught Raven Priest)"),
(188713,1,4,5,61,0,100,0,0,0,0,0,0,45,1,1,0,0,0,0,10,105877,27245,0,0,0,0,0,0,"Abbey Bell Rope - On State Changed - Set Data 1 1 (High Abbot Landgren)"),
(188713,1,5,0,61,0,100,0,0,0,0,0,0,45,1,1,0,0,0,0,10,106200,27247,0,0,0,0,0,0,"Abbey Bell Rope - On State Changed - Set Data 1 1 (Devout Bodyguard)");

DELETE FROM `smart_scripts` WHERE `entryorguid` = -100277 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2411000 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-100277,0,0,0,38,0,100,0,1,1,0,0,0,80,2411000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"ELM General Purpose Bunny Large - On Data Set 1 1 - Run Script"),

(2411000,9,0,0,0,0,100,0,0,0,0,0,0,4,7256,0,1,0,0,0,1,0,0,0,0,0,0,0,0,"ELM General Purpose Bunny Large - On Script - Play Sound 7256"),
(2411000,9,1,0,0,0,100,0,3000,3000,0,0,0,4,7256,0,1,0,0,0,1,0,0,0,0,0,0,0,0,"ELM General Purpose Bunny Large - On Script - Play Sound 7256"),
(2411000,9,2,0,0,0,100,0,3000,3000,0,0,0,4,7256,0,1,0,0,0,1,0,0,0,0,0,0,0,0,"ELM General Purpose Bunny Large - On Script - Play Sound 7256");

DELETE FROM `smart_scripts` WHERE `entryorguid` = -102082 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2720202,2720203) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-102082,0,0,0,4,0,30,0,0,0,0,0,0,1,1,0,1,0,0,0,7,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Aggro - Say Line 1"),
(-102082,0,1,0,8,0,100,1,48268,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Spellhit 'Container of Rats' - Despawn (No Repeat)"),
(-102082,0,2,0,8,0,100,1,48679,0,0,0,0,80,2720201,2,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Spellhit 'Banshee's Magic Mirror' - Run Script (No Repeat)"),
(-102082,0,3,0,0,0,100,0,0,0,3400,4800,0,11,50740,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - In Combat CMC - Cast 'Raven Flock'"),
(-102082,0,4,0,2,0,100,0,0,30,14000,18000,0,11,50750,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - Between 0-30% Health - Cast 'Raven Heal'"),
(-102082,0,5,0,38,0,100,0,1,1,0,0,0,80,2720202,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Data Set 1 1 - Run Script"),
(-102082,0,6,0,38,0,100,0,1,2,0,0,0,80,2720203,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Data Set 1 2 - Run Script"),

(2720202,9,0,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,12,1,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Set Orientation Stored Target 1"),
(2720202,9,1,0,0,0,100,0,0,0,0,0,0,5,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Play Emote 5"),
(2720202,9,2,0,0,0,100,0,0,0,0,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Say Line 3"),
(2720202,9,3,0,0,0,100,0,0,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Remove Flag Standstate Kneel"),
(2720202,9,4,0,0,0,100,0,3000,3000,0,0,0,5,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Play Emote 6"),
(2720202,9,5,0,0,0,100,0,10000,10000,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.944444179534912109,"Onslaught Raven Priest - On Script - Set Orientation"),
(2720202,9,6,0,0,0,100,0,1000,1000,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Set Flag Standstate Kneel"),

(2720203,9,0,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Set Orientation Invoker"),
(2720203,9,1,0,0,0,100,0,0,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Remove Flag Standstate Kneel"),
(2720203,9,2,0,0,0,100,0,2000,2000,0,0,0,5,6,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Play Emote 6"),
(2720203,9,3,0,0,0,100,0,0,0,0,0,0,1,4,0,1,0,0,0,7,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Say Line 4"),
(2720203,9,4,0,0,0,100,0,11000,11000,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.944444179534912109,"Onslaught Raven Priest - On Script - Set Orientation"),
(2720203,9,5,0,0,0,100,0,1000,1000,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Priest - On Script - Set Flag Standstate Kneel");

DELETE FROM `smart_scripts` WHERE `entryorguid` = 27245 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27245,0,0,0,38,0,100,0,1,1,60000,60000,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Data Set 1 1 - Say Line 0"),
(27245,0,1,0,62,0,100,0,9536,0,0,0,0,11,48756,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Gossip Option 0 Selected - Cast 'A Fall from Grace: Ring Kissed Dummy Aura'");

DELETE FROM `creature_text` WHERE `CreatureID` = 27245;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(27245,0,0,"Boys, go see who's doing that.",12,0,100,1,0,0,26608,0,"High Abbot Landgren");

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-106200,-106201) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2724700,2724701) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-106200,0,0,0,38,0,100,1,1,1,0,0,0,80,2724700,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - On Data Set 1 1 - Run Script (No Repeat)"),
(-106200,0,1,0,58,0,100,0,0,0,0,0,0,80,2724701,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - On Waypoint Finished - Run Script"),
(-106200,0,2,0,0,0,100,0,5000,10000,10000,15000,0,11,38256,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - In Combat - Cast 'Piercing Howl'"),

(-106201,0,0,0,0,0,100,0,5000,10000,10000,15000,0,11,38256,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - In Combat - Cast 'Piercing Howl'"),

(2724700,9,0,0,0,0,100,0,3000,3000,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - On Script - Say Line 0"),
(2724700,9,1,0,0,0,100,0,3000,3000,0,0,0,53,1,27247,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - On Script - Start Waypoint"),

(2724701,9,0,0,0,0,100,0,1000,1000,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - On Script - Say Line 1"),
(2724701,9,1,0,0,0,100,0,0,0,0,0,0,45,1,2,0,0,0,0,10,102082,27202,0,0,0,0,0,0,"Devout Bodyguard - On Script - Set Data 1 2 (Onslaught Raven Priest)"),
(2724701,9,2,0,0,0,100,0,4000,4000,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - On Script - Say Line 2"),
(2724701,9,3,0,0,0,100,0,20000,20000,0,0,0,41,0,0,0,0,0,0,10,106201,27247,0,0,0,0,0,0,"Devout Bodyguard - On Script - Despawn (Devout Bodyguard)"),
(2724701,9,4,0,0,0,100,0,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Devout Bodyguard - On Script - Despawn");

DELETE FROM `creature_text` WHERE `CreatureID` = 27247;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(27247,0,0,"Yes, your eminence. Come on!",12,0,100,2,0,0,26609,0,"Devout Bodyguard"),
(27247,1,0,"Hey, who rang the bell?",12,0,100,6,0,0,26610,0,"Devout Bodyguard"),
(27247,2,0,"The bodyguard grunts.",16,0,100,0,0,0,26611,0,"Devout Bodyguard");

DELETE FROM `waypoints` WHERE `entry` IN (27247,2724700,2724701);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(27247,1,2800.5461,-479.0516,119.616455,"Devout Bodyguard"),
(27247,2,2807.7734,-471.9484,119.61645,"Devout Bodyguard"),
(27247,3,2814.5222,-465.90128,119.6147,"Devout Bodyguard"),
(27247,4,2821.4888,-471.29794,123.11067,"Devout Bodyguard"),
(27247,5,2827.7585,-472.69525,128.75671,"Devout Bodyguard"),
(27247,6,2833.6016,-470.6969,134.06349,"Devout Bodyguard"),
(27247,7,2839.7278,-464.88617,135.3624,"Devout Bodyguard"),
(27247,8,2837.8572,-452.8187,135.36316,"Devout Bodyguard"),
(27247,9,2827.6262,-447.17468,135.36287,"Devout Bodyguard"),
(27247,10,2816.3098,-452.6234,135.36247,"Devout Bodyguard"),
(27247,11,2814.4758,-463.5507,135.36266,"Devout Bodyguard"),
(27247,12,2819.273,-470.78683,136.68086,"Devout Bodyguard"),
(27247,13,2827.964,-473.3304,144.91586,"Devout Bodyguard"),
(27247,14,2834.3506,-470.6176,150.68944,"Devout Bodyguard"),
(27247,15,2837.8606,-466.93002,150.83655,"Devout Bodyguard"),
(27247,16,2833.3555,-463.5104,150.8349,"Devout Bodyguard");

DELETE FROM `creature_formations` WHERE `memberGUID` IN (106200,106201);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES
(106200,106200,0,0,515,0,0),
(106200,106201,2,0,515,0,0);

UPDATE `creature` SET `spawntimesecs` = 30 WHERE `id` = 27247;

-- AT
DELETE FROM `areatrigger_involvedrelation` WHERE `id` = 4987;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4987 AND `source_type` = 2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(4987,2,0,1,46,0,100,0,4987,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Areatrigger (New Hearthglen) - On Trigger - Store Targetlist"),
(4987,2,1,2,61,0,100,0,0,0,0,0,0,100,1,0,0,0,0,0,10,98593,23837,0,0,0,0,0,0,"Areatrigger (New Hearthglen) - On Link - Send Target 1 (ELM General Purpose Bunny)"),
(4987,2,2,0,61,0,100,0,0,0,0,0,0,45,0,1,0,0,0,0,10,98593,23837,0,0,0,0,0,0,"Areatrigger (New Hearthglen) - On Link - Set Data 0 1 (ELM General Purpose Bunny)");

DELETE FROM `smart_scripts` WHERE `entryorguid` = -98593 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Hack, bunny here should cast 48759 on player but that works only if player does not move (if player teleports to creature)
-- It works with similar spells, for example 40917
(-98593,0,0,0,38,0,100,0,0,1,0,0,0,85,48757,0,0,0,0,0,12,1,0,0,0,0,0,0,0,"ELM General Purpose Bunny - On Data Set 0 1 - Self Cast 'A Fall from Grace: Summon High Abbot Landgren'"),
-- That aura indeed is removed and that gives us possibility to prevent double-summoning no matter how we handle summon
(-98593,0,1,0,38,0,100,0,0,1,0,0,0,28,48756,0,0,0,0,0,12,1,0,0,0,0,0,0,0,"ELM General Purpose Bunny - On Data Set 0 1 - Remove Aura 'A Fall from Grace: Ring Kissed Dummy Aura'");

-- Final part (no, he doesn't use vehicle for jump)
UPDATE `creature_template` SET `speed_walk` = 2 WHERE `entry` = 27439;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 27439 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2743900,2743901) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27439,0,0,0,11,0,100,0,0,0,0,0,0,80,2743900,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Spawn - Run Script"),
(27439,0,1,0,58,0,100,0,0,0,0,0,0,80,2743901,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Waypoint Finished - Run Script"),

-- Hack, at this moment personal spawns can attack any creature, that completely breaks script
(2743900,9,0,0,0,0,100,0,0,0,0,0,0,145,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Set ImmuneNPC"),
(2743900,9,1,0,0,0,100,0,1000,1000,0,0,0,66,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Set Orientation Summoner"),
(2743900,9,2,0,0,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Say Line 0"),
(2743900,9,3,0,0,0,100,0,5000,5000,0,0,0,53,0,27439,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Start Waypoint"),

(2743901,9,0,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Set Orientation Summoner"),
(2743901,9,1,0,0,0,100,0,1000,1000,0,0,0,1,1,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Say Line 1"),
(2743901,9,2,0,0,0,100,0,6000,6000,0,0,0,66,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Set Orientation Summoner"),
(2743901,9,3,0,0,0,100,0,0,0,0,0,0,1,2,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Say Line 2"),
(2743901,9,4,0,0,0,100,0,5000,5000,0,0,0,66,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Set Orientation Summoner"),
(2743901,9,5,0,0,0,100,0,0,0,0,0,0,1,3,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Say Line 3"),
(2743901,9,6,0,0,0,100,0,3000,3000,0,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Play Emote 1"),
(2743901,9,7,0,0,0,100,0,5000,5000,0,0,0,66,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Set Orientation Summoner"),
(2743901,9,8,0,0,0,100,0,0,0,0,0,0,1,4,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Say Line 4"),
(2743901,9,9,0,0,0,100,0,3000,3000,0,0,0,11,48771,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Cast 'A Fall from Grace: Kill Credit'"),
-- No idea why it's still needed
(2743901,9,10,0,0,0,100,0,0,0,0,0,0,15,12274,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Quest Credit 'A Fall from Grace'"),
(2743901,9,11,0,0,0,100,0,0,0,0,0,0,1,5,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Say Line 5"),
(2743901,9,12,0,0,0,100,0,0,0,0,0,0,17,427,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Set Emote State 427"),
(2743901,9,13,0,0,0,100,0,0,0,0,0,0,97,25,32,0,0,0,0,1,0,0,0,0,2715.55,-560.343,10.6656,0,"High Abbot Landgren - On Script - Jump To Pos"),
(2743901,9,14,0,0,0,100,0,4000,4000,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"High Abbot Landgren - On Script - Despawn");

DELETE FROM `waypoints` WHERE `entry` = 27439;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(27439,1,2827.0466,-412.4136,118.283745,"High Abbot Landgren"),
(27439,2,2810.891,-412.49506,118.283745,"High Abbot Landgren"),
(27439,3,2786.2637,-436.96738,118.26536,"High Abbot Landgren"),
(27439,4,2776.9878,-464.75424,116.191505,"High Abbot Landgren"),
(27439,5,2765.8164,-488.21484,114.05323,"High Abbot Landgren"),
(27439,6,2737.89,-524.4745,103.4476,"High Abbot Landgren");


-- Bombard the Ballistae (12232)
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_dragonblight_bombard_the_ballistae_fx_master';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(48347,'spell_dragonblight_bombard_the_ballistae_fx_master');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 27331 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2733100 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27331,0,0,0,8,0,100,0,48345,0,0,0,0,80,2733100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Bombard the Ballistae Kill Credit Bunny - On Spellhit 'Siegesmith Bombs' - Run Script"),

(2733100,9,0,0,0,0,100,0,0,0,0,0,0,33,27331,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Bombard the Ballistae Kill Credit Bunny - On Script - Quest Credit 'Bombard the Ballistae'"),
(2733100,9,1,0,0,0,100,0,0,0,0,0,0,11,48347,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Bombard the Ballistae Kill Credit Bunny - On Script - Cast 'Bombard the Ballistae: FX Master'"),
(2733100,9,2,0,0,0,100,0,5000,5000,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Bombard the Ballistae Kill Credit Bunny - On Script - Despawn");


-- Without a Prayer (12254)
DELETE FROM `smart_scripts` WHERE `entryorguid` = 27246 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2724600 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(27246,0,0,0,38,0,100,0,0,1,60000,60000,0,80,2724600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Bishop Street - On Data Set 0 1 - Run Script"),
(27246,0,1,0,4,0,100,0,0,0,0,0,0,1,2,0,1,0,0,0,7,0,0,0,0,0,0,0,0,"Bishop Street - On Aggro - Say Line 2"),
(27246,0,2,0,0,0,100,0,0,0,3400,4800,0,11,20820,64,0,0,0,0,2,0,0,0,0,0,0,0,0,"Bishop Street - In Combat CMC - Cast 'Holy Smite'"),
(27246,0,3,0,0,0,100,0,12000,16000,45000,55000,0,11,11974,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Bishop Street - In Combat - Cast 'Power Word: Shield'"),

(2724600,9,0,0,0,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Bishop Street - On Script - Say Line 0"),
(2724600,9,1,0,0,0,100,0,4000,4000,0,0,0,11,48183,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Bishop Street - On Script - Cast 'Blessing of the Light'"),
(2724600,9,2,0,0,0,100,0,4000,4000,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Bishop Street - On Script - Say Line 1");

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4984 AND `source_type` = 2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(4984,2,0,0,46,0,100,0,4984,0,0,0,0,45,0,1,0,0,0,0,19,27246,0,0,0,0,0,0,0,"Areatrigger (New Hearthglen) - On Trigger - Set Data 0 1 (Bishop Street)");

DELETE FROM `areatrigger_scripts` WHERE `entry` = 4984;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(4984,"SmartTrigger");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 4984 AND `SourceId` = 2;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,4984,2,0,9,0,12254,0,0,0,0,0,"","Group 0: Execute Event 0 if player has taken quest 'Without a Prayer'");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 48183;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,48183,0,0,31,0,3,27203,0,0,0,0,"","Group 0: Spell 'Blessing of the Light' (Effect 0) targets creature 'Onslaught Footman'");


SET @CGUID := 61000000001349554;
SET @OGUID := 4000000032555;

-- Creature
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+49;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@CGUID+0, 77617, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1863.574462890625, 239.36871337890625, 76.9240264892578125, 1.253607988357543945, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Lunarfall Worker (Area: -Unknown- - Difficulty: 1)
(@CGUID+1, 77376, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1903.1875, 207.1041717529296875, 77.0313568115234375, 2.775068521499633789, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Lunarfall Woodcutter (Area: -Unknown- - Difficulty: 1)
(@CGUID+2, 77370, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1891.2288818359375, 270.200958251953125, 76.68341827392578125, 1.196875929832458496, 7200, 0, 0, 4926, 0, 0, 0, 0, 0, 44232), -- Lunarfall Footman (Area: -Unknown- - Difficulty: 1) (Auras: 178343 - Garrison Combat Throttle)
(@CGUID+3, 79894, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1764.6614990234375, 214.78472900390625, 73.1560211181640625, 0.582970201969146728, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Dinah (Area: -Unknown- - Difficulty: 1)
(@CGUID+4, 81152, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1843.7691650390625, 227.9739532470703125, 75.750274658203125, 5.611456871032714843, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Scout Valdez (Area: -Unknown- - Difficulty: 1) (Auras: 133464 - Read Scroll)
(@CGUID+5, 82401, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1752.2535400390625, 212.5520782470703125, 73.29390716552734375, 3.912691831588745117, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Grinhilda Quartzhammer (Area: -Unknown- - Difficulty: 1)
(@CGUID+6, 79603, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1913.439208984375, 203.53472900390625, 76.96572113037109375, 5.886557579040527343, 7200, 0, 0, 2463, 1283, 0, 0, 0, 0, 44232), -- Emote Bunny (Area: -Unknown- - Difficulty: 1)
(@CGUID+7, 77370, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1874.1868896484375, 229.013916015625, 76.6002044677734375, 4.278137683868408203, 7200, 0, 0, 4926, 0, 0, 0, 0, 0, 44232), -- Lunarfall Footman (Area: -Unknown- - Difficulty: 1) (Auras: 178343 - Garrison Combat Throttle)
(@CGUID+8, 77376, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1843.564208984375, 239.529510498046875, 76.6606903076171875, 1.213001728057861328, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Lunarfall Woodcutter (Area: -Unknown- - Difficulty: 1)
(@CGUID+9, 77376, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1852.0831298828125, 229.473876953125, 76.2227020263671875, 0.49644559621810913, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Lunarfall Woodcutter (Area: -Unknown- - Difficulty: 1)
(@CGUID+10, 77617, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1845.015625, 236.9809112548828125, 76.65052032470703125, 6.04756784439086914, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Lunarfall Worker (Area: -Unknown- - Difficulty: 1)
(@CGUID+11, 85312, 1158, 7078, 7085, '1', 2559, 0, 0, 2, 1730.00146484375, 134.2320404052734375, 75.98162078857421875, 2.155446052551269531, 7200, 0, 0, 4926, 0, 0, 0, 0, 0, 44232), -- Lunarfall Rifleman (Area: -Unknown- - Difficulty: 1) (Auras: 178343 - Garrison Combat Throttle)
(@CGUID+12, 77370, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1873.5172119140625, 238.067657470703125, 76.54178619384765625, 0.773609936237335205, 7200, 0, 0, 4926, 0, 0, 0, 0, 0, 44232), -- Lunarfall Footman (Area: -Unknown- - Difficulty: 1) (Auras: 178343 - Garrison Combat Throttle)
(@CGUID+13, 79893, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1764.7708740234375, 215.888885498046875, 73.15350341796875, 5.127016544342041015, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Barbar (Area: -Unknown- - Difficulty: 1)
(@CGUID+14, 77376, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1870.8076171875, 236.1163177490234375, 76.614105224609375, 6.2650299072265625, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Lunarfall Woodcutter (Area: -Unknown- - Difficulty: 1)
(@CGUID+15, 82177, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1809.958984375, 209.224365234375, 70.49425506591796875, 3.639954090118408203, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Pippers (Area: -Unknown- - Difficulty: 1) (possible waypoints or random movement)
(@CGUID+16, 77370, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1879.670654296875, 227.8454437255859375, 76.97821044921875, 2.775372028350830078, 7200, 0, 0, 4926, 0, 0, 0, 0, 0, 44232), -- Lunarfall Footman (Area: -Unknown- - Difficulty: 1) (Auras: 178343 - Garrison Combat Throttle)
(@CGUID+17, 77376, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1845.5989990234375, 240.6197967529296875, 76.6505584716796875, 3.141592741012573242, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Lunarfall Woodcutter (Area: -Unknown- - Difficulty: 1)
(@CGUID+18, 84267, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1804.6947021484375, 207.896759033203125, 70.38645172119140625, 0.318970650434494018, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Jongan Haphurst (Area: -Unknown- - Difficulty: 1) (possible waypoints or random movement)
(@CGUID+19, 77376, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1844.2535400390625, 242.47222900390625, 76.65673065185546875, 4.345870018005371093, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Lunarfall Woodcutter (Area: -Unknown- - Difficulty: 1)
(@CGUID+20, 79891, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1765.5972900390625, 215.1788177490234375, 73.13166046142578125, 3.042136430740356445, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Jenny Larson (Area: -Unknown- - Difficulty: 1)
(@CGUID+21, 77370, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1860.870849609375, 222.1271209716796875, 76.66330718994140625, 0.142052844166755676, 7200, 0, 0, 4926, 0, 0, 0, 0, 0, 44232), -- Lunarfall Footman (Area: -Unknown- - Difficulty: 1) (Auras: 178343 - Garrison Combat Throttle)
(@CGUID+22, 77376, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1770.808349609375, 183.357940673828125, 72.00939178466796875, 3.099249601364135742, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Lunarfall Woodcutter (Area: -Unknown- - Difficulty: 1)
(@CGUID+23, 85312, 1158, 7078, 7085, '1', 2559, 0, 0, 2, 1881.5758056640625, 273.88836669921875, 76.83173370361328125, 1.397160768508911132, 7200, 0, 0, 4926, 0, 0, 0, 0, 0, 44232), -- Lunarfall Rifleman (Area: -Unknown- - Difficulty: 1) (Auras: 178343 - Garrison Combat Throttle)
(@CGUID+24, 80026, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1854.1441650390625, 248.1041717529296875, 77.2621917724609375, 5.35130167007446289, 7200, 0, 0, 25, 0, 0, 0, 0, 0, 44232), -- Debug - Garrison - Bunny - Boss Emotes (Area: -Unknown- - Difficulty: 1)
(@CGUID+25, 77376, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1847.5035400390625, 235.484375, 76.65570831298828125, 2.286378860473632812, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Lunarfall Woodcutter (Area: -Unknown- - Difficulty: 1)
(@CGUID+26, 81347, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1848.4232177734375, 225.498565673828125, 75.89154815673828125, 3.775115966796875, 7200, 0, 0, 12315, 0, 0, 0, 0, 0, 44232), -- Sammy Schrimsher (Area: -Unknown- - Difficulty: 1) (possible waypoints or random movement)
(@CGUID+27, 81103, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1864.329833984375, 217.810760498046875, 76.74493408203125, 0.744948446750640869, 7200, 0, 0, 47164, 0, 0, 0, 0, 0, 44232), -- Dungar Longdrink (Area: -Unknown- - Difficulty: 1)
(@CGUID+28, 84455, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1847.3802490234375, 239.7118072509765625, 76.74977874755859375, 3.707327127456665039, 7200, 0, 0, 2463, 1283, 0, 0, 0, 0, 44232), -- Assistant Brightstone (Area: -Unknown- - Difficulty: 1)
(@CGUID+29, 86470, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1837.7100830078125, 257.5069580078125, 86.13414764404296875, 5.813615322113037109, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Pepe (Area: -Unknown- - Difficulty: 1)
(@CGUID+30, 81348, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1872.2603759765625, 206.2256927490234375, 77.152740478515625, 1.729609131813049316, 7200, 0, 0, 12315, 0, 0, 0, 0, 0, 44232), -- Rachelle Black (Area: -Unknown- - Difficulty: 1)
(@CGUID+31, 84776, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1841.57470703125, 252.08160400390625, 77.747314453125, 6.109762191772460937, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Aerun (Area: -Unknown- - Difficulty: 1)
(@CGUID+32, 81346, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1877.8109130859375, 209.3693695068359375, 77.10321044921875, 0.756071746349334716, 7200, 0, 0, 12315, 0, 0, 0, 0, 0, 44232), -- Provisioner Hanfa (Area: -Unknown- - Difficulty: 1) (possible waypoints or random movement)
(@CGUID+33, 81369, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1868.4149169921875, 265.095489501953125, 77.25528717041015625, 4.233183860778808593, 7200, 0, 0, 3325, 0, 0, 0, 0, 0, 44232), -- Architect Table (Area: -Unknown- - Difficulty: 1)
(@CGUID+34, 82386, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1870.91845703125, 264.37152099609375, 77.2551422119140625, 4.611006736755371093, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Elisa Vanning (Area: -Unknown- - Difficulty: 1)
(@CGUID+35, 82466, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1883.939208984375, 220.0885467529296875, 77.14704132080078125, 0.912091672420501708, 7200, 0, 0, 1971, 3191, 0, 0, 0, 0, 44232), -- Aenir (Area: -Unknown- - Difficulty: 1)
(@CGUID+36, 80163, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1899.013916015625, 211.189239501953125, 77.14711761474609375, 5.213381767272949218, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Ken Loggin (Area: -Unknown- - Difficulty: 1)
(@CGUID+37, 83491, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1899.4427490234375, 203.5625, 77.3191680908203125, 1.650651216506958007, 7200, 0, 0, 1971, 3191, 0, 0, 0, 0, 44232), -- Eileese Shadowsong (Area: -Unknown- - Difficulty: 1)
(@CGUID+38, 84246, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1902.9722900390625, 205.361114501953125, 77.21971893310546875, 2.593440532684326171, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Ashley Zerep (Area: -Unknown- - Difficulty: 1)
(@CGUID+39, 78564, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1886.2291259765625, 256.329864501953125, 76.6546173095703125, 3.549987316131591796, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Sergeant Crowler (Area: -Unknown- - Difficulty: 1) (Auras: 178343 - Garrison Combat Throttle)
(@CGUID+40, 81546, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1847.421875, 269.993072509765625, 78.397552490234375, 4.957489013671875, 7200, 0, 0, 3325, 0, 0, 0, 0, 0, 44232), -- Command Table (Area: -Unknown- - Difficulty: 1)
(@CGUID+41, 79953, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1847.0728759765625, 270.6632080078125, 78.397552490234375, 5.164353847503662109, 7200, 0, 0, 4926, 0, 0, 0, 0, 0, 44232), -- Lieutenant Thorn (Area: -Unknown- - Difficulty: 1)
(@CGUID+42, 82776, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1854.30908203125, 258.286468505859375, 78.29833221435546875, 5.053887844085693359, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Deedree (Area: -Unknown- - Difficulty: 1)
(@CGUID+43, 77209, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1866.704833984375, 264.140625, 77.25528717041015625, 0.603618264198303222, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Baros Alexston (Area: -Unknown- - Difficulty: 1)
(@CGUID+44, 80645, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1889.6632080078125, 246.6041717529296875, 76.666259765625, 3.509580850601196289, 7200, 0, 0, 49260, 100, 0, 0, 0, 0, 44232), -- Cordana Felsong (Area: -Unknown- - Difficulty: 1)
(@CGUID+45, 81492, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1941.7257080078125, 330.435760498046875, 89.04918670654296875, 1.760889530181884765, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Bodrick Grey (Area: -Unknown- - Difficulty: 1)
(@CGUID+46, 80159, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1904.376708984375, 211.1813812255859375, 77.13956451416015625, 0.233182504773139953, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Arsenio Zerep (Area: -Unknown- - Difficulty: 1)
(@CGUID+47, 81491, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1942.296875, 332.107635498046875, 89.04918670654296875, 4.148911952972412109, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232), -- Amber Kearnen (Area: -Unknown- - Difficulty: 1)
(@CGUID+48, 81935, 1158, 7078, 7085, '1', 2559, 0, 0, 0, 1948.35400390625, 119.0615615844726562, 81.442291259765625, 3.915964841842651367, 7200, 0, 0, 2463, 1283, 0, 0, 0, 0, 44232), -- Scrap Sparkfuse (Area: -Unknown- - Difficulty: 1) (possible waypoints or random movement)
(@CGUID+49, 77730, 1158, 7078, 7085, '1', 2559, 0, 0, 1, 1892.7569580078125, 97.4774322509765625, 84.222900390625, 0.058659851551055908, 7200, 0, 0, 2463, 0, 0, 0, 0, 0, 44232); -- Timothy Leens (Area: -Unknown- - Difficulty: 1)

UPDATE `creature` SET `terrainSwapMap` = 1158 WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+49;

-- Creature Addon
DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+49;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(@CGUID+25, 0, 0, 5, 1, 0, 0, 0, 0, 4, ''), -- Lunarfall Woodcutter
(@CGUID+10, 0, 0, 5, 1, 0, 0, 0, 0, 4, ''), -- Lunarfall Woodcutter
(@CGUID+8, 0, 0, 5, 1, 0, 0, 0, 0, 4, ''), -- Lunarfall Woodcutter
(@CGUID+17, 0, 0, 5, 1, 0, 0, 0, 0, 4, ''), -- Lunarfall Woodcutter
(@CGUID+19, 0, 0, 5, 1, 0, 0, 0, 0, 4, ''), -- Lunarfall Woodcutter
(@CGUID+1, 0, 0, 5, 1, 0, 0, 0, 0, 4, ''), -- Lunarfall Woodcutter
(@CGUID+46, 0, 0, 0, 257, 69, 0, 0, 0, 0, ''), -- Arsenio Zerep
(@CGUID+41, 0, 0, 0, 257, 415, 0, 0, 0, 0, ''); -- Lieutenant Thorn

-- Creature Addon Template
DELETE FROM `creature_template_addon` WHERE `entry` IN (80159 /*80159 (Arsenio Zerep)*/, 81492 /*81492 (Bodrick Grey)*/, 77209 /*77209 (Baros Alexston)*/, 82776 /*82776 (Deedree)*/, 79953 /*79953 (Lieutenant Thorn)*/, 78564 /*78564 (Sergeant Crowler) - Garrison Combat Throttle*/, 84246 /*84246 (Ashley Zerep)*/, 83491 /*83491 (Eileese Shadowsong)*/, 82386 /*82386 (Elisa Vanning)*/, 81346 /*81346 (Provisioner Hanfa)*/, 84776 /*84776 (Aerun)*/, 81348 /*81348 (Rachelle Black)*/, 86470 /*86470 (Pepe)*/, 81347 /*81347 (Sammy Schrimsher)*/, 80026 /*80026 (Debug - Garrison - Bunny - Boss Emotes)*/, 79891 /*79891 (Jenny Larson)*/, 79893 /*79893 (Barbar)*/, 85312 /*85312 (Lunarfall Rifleman) - Garrison Combat Throttle*/, 79603 /*79603 (Emote Bunny)*/, 82401 /*82401 (Grinhilda Quartzhammer)*/, 81152 /*81152 (Scout Valdez) - Read Scroll*/, 79894 /*79894 (Dinah)*/, 77370 /*77370 (Lunarfall Footman) - Garrison Combat Throttle*/, 77376 /*77376 (Lunarfall Woodcutter)*/, 77617 /*77617 (Lunarfall Worker)*/);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(80159, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 80159 (Arsenio Zerep)
(81492, 0, 0, 0, 1, 0, 0, 0, 0, 3, ''), -- 81492 (Bodrick Grey)
(77209, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 77209 (Baros Alexston)
(82776, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 82776 (Deedree)
(79953, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 79953 (Lieutenant Thorn)
(78564, 0, 0, 0, 0, 0, 0, 0, 0, 0, '178343'), -- 78564 (Sergeant Crowler) - Garrison Combat Throttle
(84246, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 84246 (Ashley Zerep)
(83491, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 83491 (Eileese Shadowsong)
(82386, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 82386 (Elisa Vanning)
(81346, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 81346 (Provisioner Hanfa)
(84776, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- 84776 (Aerun)
(81348, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 81348 (Rachelle Black)
(86470, 0, 0, 50331648, 1, 0, 0, 0, 0, 0, ''), -- 86470 (Pepe)
(81347, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 81347 (Sammy Schrimsher)
(80026, 0, 0, 0, 1, 0, 0, 0, 0, 5, ''), -- 80026 (Debug - Garrison - Bunny - Boss Emotes)
(79891, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- 79891 (Jenny Larson)
(79893, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- 79893 (Barbar)
(85312, 0, 0, 0, 0, 0, 0, 0, 0, 4, '178343'), -- 85312 (Lunarfall Rifleman) - Garrison Combat Throttle
(79603, 0, 0, 50331648, 1, 0, 0, 0, 0, 4, ''), -- 79603 (Emote Bunny)
(82401, 0, 0, 0, 257, 0, 0, 0, 0, 0, ''), -- 82401 (Grinhilda Quartzhammer)
(81152, 0, 0, 0, 1, 0, 0, 0, 0, 0, '133464'), -- 81152 (Scout Valdez) - Read Scroll
(79894, 0, 0, 3, 1, 0, 0, 0, 0, 0, ''), -- 79894 (Dinah)
(77370, 0, 0, 0, 0, 0, 0, 0, 0, 4, '178343'), -- 77370 (Lunarfall Footman) - Garrison Combat Throttle
(77376, 0, 0, 0, 1, 0, 0, 0, 0, 4, ''), -- 77376 (Lunarfall Woodcutter)
(77617, 0, 0, 0, 256, 0, 0, 0, 0, 4, ''); -- 77617 (Lunarfall Worker)

-- Creature Template
UPDATE `creature_template` SET `unit_flags3`=1048608 WHERE `entry`=77730; -- Timothy Leens
UPDATE `creature_template` SET `gossip_menu_id`=16464 WHERE `entry`=80159; -- Arsenio Zerep
UPDATE `creature_template` SET `minlevel`=40, `maxlevel`=40 WHERE `entry`=80645; -- Cordana Felsong
UPDATE `creature_template` SET `gossip_menu_id`=16998 WHERE `entry`=82776; -- Deedree
UPDATE `creature_template` SET `gossip_menu_id`=16811 WHERE `entry`=79953; -- Lieutenant Thorn
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=81546; -- Command Table
UPDATE `creature_template` SET `gossip_menu_id`=16916 WHERE `entry`=78564; -- Sergeant Crowler
UPDATE `creature_template` SET `gossip_menu_id`=16750 WHERE `entry`=83491; -- Eileese Shadowsong
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=81369; -- Architect Table
UPDATE `creature_template` SET `gossip_menu_id`=16905 WHERE `entry`=84776; -- Aerun
UPDATE `creature_template` SET `gossip_menu_id`=17199 WHERE `entry`=81348; -- Rachelle Black
UPDATE `creature_template` SET `npcflag`=17179869185, `unit_flags3`=32, `gossip_menu_id`=16613 WHERE `entry`=84455; -- Assistant Brightstone
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=81103; -- Dungar Longdrink
UPDATE `creature_template` SET `unit_flags3`=16777217 WHERE `entry`=80026; -- Debug - Garrison - Bunny - Boss Emotes
UPDATE `creature_template` SET `unit_flags3`=1048608 WHERE `entry`=85312; -- Lunarfall Rifleman
UPDATE `creature_template` SET `gossip_menu_id`=16670 WHERE `entry`=81152; -- Scout Valdez
UPDATE `creature_template` SET `unit_flags3`=1048608 WHERE `entry`=77370; -- Lunarfall Footman

-- Scaling & ModelInfo
DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=1 AND `Entry` IN (81491,80159,81492,80645,77209,82776,79953,81546,78564,84246,83491,80163,82386,81369,81346,84776,81348,84455,81103,81347,82177,85312,81152,77370,77376,77617));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(81491, 1, 0, 0, 302, 44232),
(80159, 1, 0, 0, 63, 44232),
(81492, 1, 0, 0, 302, 44232),
(80645, 1, 0, 0, 63, 44232),
(77209, 1, 0, 0, 63, 44232),
(82776, 1, 0, 0, 63, 44232),
(79953, 1, 0, 0, 302, 44232),
(81546, 1, 0, 0, 63, 44232),
(78564, 1, 0, 0, 302, 44232),
(84246, 1, 0, 0, 302, 44232),
(83491, 1, 0, 0, 302, 44232),
(80163, 1, 0, 0, 63, 44232),
(82386, 1, 0, 0, 302, 44232),
(81369, 1, 0, 0, 63, 44232),
(81346, 1, 0, 0, 63, 44232),
(84776, 1, 0, 0, 302, 44232),
(81348, 1, 0, 0, 63, 44232),
(84455, 1, 0, 0, 302, 44232),
(81103, 1, 0, 0, 881, 44232),
(81347, 1, 0, 0, 63, 44232),
(82177, 1, 0, 0, 63, 44232),
(85312, 1, 0, 0, 302, 44232),
(81152, 1, 0, 0, 302, 44232),
(77370, 1, 0, 0, 302, 44232),
(77376, 1, 0, 0, 302, 44232),
(77617, 1, 0, 0, 302, 44232);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=44232 WHERE (`DifficultyID`=1 AND `Entry` IN (77730,81935,82466,86470,80026,79891,84267,79893,79603,82401,79894));

UPDATE `creature_model_info` SET `VerifiedBuild`=44232 WHERE `DisplayID` IN (54034, 56734, 38876, 55537, 56418, 50650, 1357, 57351, 58063, 56503, 61187, 58224, 57739, 59657, 56648, 53823, 59292, 56600, 58492, 56607, 59624, 58062, 5128, 56606, 23767, 56615, 55321, 33285, 44820, 51407, 61417, 54616, 58226, 53835, 11686, 53826, 56245, 53840, 53841, 54615);
UPDATE `creature_model_info` SET `BoundingRadius`=0.282464146614074707, `CombatReach`=1.018367290496826171, `VerifiedBuild`=44232 WHERE `DisplayID`=51414;

-- GameObjects
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+48;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 229769, 1158, 7078, 7085, '1', 2559, 0, 1781.18408203125, 178.329864501953125, 71.8646240234375, 2.225293636322021484, 0, 0, 0.896872520446777343, 0.442289173603057861, 7200, 255, 1, 44232), -- Chair (Area: -Unknown- - Difficulty: 1)
(@OGUID+1, 233162, 1158, 7078, 7085, '1', 2559, 0, 1730.43408203125, 133.7135467529296875, 75.9589996337890625, 2.268925428390502929, 0, 0, 0.906307220458984375, 0.422619491815567016, 7200, 255, 1, 44232), -- Stool (Area: -Unknown- - Difficulty: 1)
(@OGUID+2, 229501, 1158, 7078, 7085, '1', 2559, 0, 1829.8958740234375, 197.55035400390625, 72.02127838134765625, 1.884953022003173828, 0, 0, 0.809016227722167968, 0.587786316871643066, 7200, 255, 1, 44232), -- Small Plot (Area: -Unknown- - Difficulty: 1)
(@OGUID+3, 229498, 1158, 7078, 7085, '1', 2559, 0, 1797.720458984375, 206.20660400390625, 70.17173004150390625, 3.490667104721069335, 0, 0, -0.98480701446533203, 0.173652306199073791, 7200, 255, 0, 44232), -- Front Gate (Area: -Unknown- - Difficulty: 1)
(@OGUID+4, 232143, 1158, 7078, 7085, '1', 2559, 0, 1911.5504150390625, 232.9791717529296875, 76.63956451416015625, 2.792518377304077148, 0, 0, 0.984807014465332031, 0.173652306199073791, 7200, 255, 1, 44232), -- Large Plot (Area: -Unknown- - Difficulty: 1)
(@OGUID+5, 233141, 1158, 7078, 7085, '1', 2559, 0, 1773.9375, 177.095489501953125, 71.88083648681640625, 0, 0, 0, 0, 1, 7200, 255, 1, 44232), -- Garrison - Delivery for Pickup (Area: -Unknown- - Difficulty: 1)
(@OGUID+6, 232252, 1158, 7078, 7085, '1', 2559, 0, 1740.94970703125, 210.09722900390625, 73.3454742431640625, 1.271273255348205566, 0, 0, 0.593689918518066406, 0.804693877696990966, 7200, 255, 1, 44232), -- Pippers' Buried Supplies (Area: -Unknown- - Difficulty: 1)
(@OGUID+7, 232528, 1158, 7078, 7085, '1', 2559, 0, 1751.7396240234375, 211.84722900390625, 73.25347137451171875, 4.379182815551757812, 0, 0, -0.81457805633544921, 0.580053985118865966, 7200, 255, 1, 44232), -- Telescope - Garrison Surveying (Area: -Unknown- - Difficulty: 1)
(@OGUID+8, 232249, 1158, 7078, 7085, '1', 2559, 0, 1740.751708984375, 209.6145782470703125, 73.5001068115234375, 2.809833765029907226, 0.039116859436035156, 0.018984794616699218, 0.985487937927246093, 0.164082303643226623, 7200, 255, 1, 44232), -- Bone (Area: -Unknown- - Difficulty: 1)
(@OGUID+9, 232249, 1158, 7078, 7085, '1', 2559, 0, 1740.7413330078125, 209.5381927490234375, 73.5086822509765625, 3.850808143615722656, 0.031193256378173828, 0.016252517700195312, -0.9371490478515625, 0.347151994705200195, 7200, 255, 1, 44232), -- Bone (Area: -Unknown- - Difficulty: 1)
(@OGUID+10, 232250, 1158, 7078, 7085, '1', 2559, 0, 1870.810791015625, 199.904510498046875, 77.2488861083984375, 1.281599760055541992, -0.03142213821411132, 0.04563140869140625, 0.596825599670410156, 0.800455927848815917, 7200, 255, 1, 44232), -- Pippers' Buried Supplies (Area: -Unknown- - Difficulty: 1)
(@OGUID+11, 232249, 1158, 7078, 7085, '1', 2559, 0, 1843.59033203125, 256.369781494140625, 78.230438232421875, 3.850808143615722656, 0.031193256378173828, 0.016252517700195312, -0.9371490478515625, 0.347151994705200195, 7200, 255, 1, 44232), -- Bone (Area: -Unknown- - Difficulty: 1)
(@OGUID+12, 229755, 1158, 7078, 7085, '1', 2559, 0, 1847.5035400390625, 235.484375, 76.65570831298828125, 2.286378860473632812, 0, 0, 0.909960746765136718, 0.414694398641586303, 7200, 255, 1, 44232), -- Chair (Area: -Unknown- - Difficulty: 1)
(@OGUID+13, 232248, 1158, 7078, 7085, '1', 2559, 0, 1843.5, 256.102447509765625, 78.0385894775390625, 1.393552780151367187, 0.035747051239013671, -0.04434585571289062, 0.640661239624023437, 0.765708029270172119, 7200, 255, 1, 44232), -- Pippers' Buried Supplies (Area: -Unknown- - Difficulty: 1)
(@OGUID+14, 232249, 1158, 7078, 7085, '1', 2559, 0, 1871.0399169921875, 199.4947967529296875, 77.39774322509765625, 3.850808143615722656, 0.031193256378173828, 0.016252517700195312, -0.9371490478515625, 0.347151994705200195, 7200, 255, 1, 44232), -- Bone (Area: -Unknown- - Difficulty: 1)
(@OGUID+15, 232249, 1158, 7078, 7085, '1', 2559, 0, 1843.6007080078125, 256.447906494140625, 78.23628997802734375, 2.809833765029907226, 0.039116859436035156, 0.018984794616699218, 0.985487937927246093, 0.164082303643226623, 7200, 255, 1, 44232), -- Bone (Area: -Unknown- - Difficulty: 1)
(@OGUID+16, 229760, 1158, 7078, 7085, '1', 2559, 0, 1845.5989990234375, 240.6197967529296875, 76.6505584716796875, 3.141592741012573242, 0, 0, -1, 0, 7200, 255, 1, 44232), -- Chair (Area: -Unknown- - Difficulty: 1)
(@OGUID+17, 229758, 1158, 7078, 7085, '1', 2559, 0, 1843.564208984375, 239.529510498046875, 76.6606903076171875, 1.213001728057861328, 0, 0, 0.569995880126953125, 0.821647584438323974, 7200, 255, 1, 44232), -- Chair (Area: -Unknown- - Difficulty: 1)
(@OGUID+18, 232249, 1158, 7078, 7085, '1', 2559, 0, 1871.0504150390625, 199.5711822509765625, 77.38889312744140625, 2.809833765029907226, 0.039116859436035156, 0.018984794616699218, 0.985487937927246093, 0.164082303643226623, 7200, 255, 1, 44232), -- Bone (Area: -Unknown- - Difficulty: 1)
(@OGUID+19, 229759, 1158, 7078, 7085, '1', 2559, 0, 1844.2535400390625, 242.47222900390625, 76.65673065185546875, 4.345870018005371093, 0, 0, -0.82412624359130859, 0.566406130790710449, 7200, 255, 1, 44232), -- Chair (Area: -Unknown- - Difficulty: 1)
(@OGUID+20, 229756, 1158, 7078, 7085, '1', 2559, 0, 1845.015625, 236.9809112548828125, 76.65052032470703125, 6.04756784439086914, 0, 0, -0.11753654479980468, 0.993068516254425048, 7200, 255, 1, 44232), -- Chair (Area: -Unknown- - Difficulty: 1)
(@OGUID+21, 223034, 1158, 7078, 7085, '1', 2559, 0, 1846.29345703125, 236.234375, 77.50846099853515625, 5.794659614562988281, 0, 0, -0.24184131622314453, 0.970315814018249511, 7200, 255, 1, 44232), -- Hearthstone Gameboard (Area: -Unknown- - Difficulty: 1)
(@OGUID+22, 229757, 1158, 7078, 7085, '1', 2559, 0, 1847.0989990234375, 237.6180572509765625, 76.65557861328125, 3.935721635818481445, 0, 0, -0.92220020294189453, 0.386712819337844848, 7200, 255, 1, 44232), -- Chair (Area: -Unknown- - Difficulty: 1)
(@OGUID+23, 207320, 1158, 7078, 7085, '1', 2559, 0, 1889.439208984375, 252.7309112548828125, 76.573150634765625, 3.43830275535583496, 0, 0, -0.98901557922363281, 0.147811368107795715, 7200, 255, 1, 44232), -- Hero's Call Board (Area: -Unknown- - Difficulty: 1)
(@OGUID+24, 239178, 1158, 7078, 7085, '1', 2559, 0, 1847.421875, 269.993072509765625, 78.31421661376953125, 4.957489967346191406, 0, 0, -0.61536407470703125, 0.788242995738983154, 7200, 255, 1, 44232), -- Command Table Collision (Area: -Unknown- - Difficulty: 1)
(@OGUID+25, 232234, 1158, 7078, 7085, '1', 2559, 0, 1845.1904296875, 264.559234619140625, 78.19712066650390625, 0.310090214014053344, 0, 0, 0.154424667358398437, 0.988004565238952636, 7200, 255, 1, 44232), -- Woodbench (Area: -Unknown- - Difficulty: 1)
(@OGUID+26, 232235, 1158, 7078, 7085, '1', 2559, 0, 1848.7646484375, 267.178924560546875, 78.19712066650390625, 3.354323625564575195, 0, 0, -0.99434852600097656, 0.10616496205329895, 7200, 255, 1, 44232), -- Woodbench (Area: -Unknown- - Difficulty: 1)
(@OGUID+27, 239184, 1158, 7078, 7085, '1', 2559, 0, 1868.4149169921875, 265.095489501953125, 77.1719512939453125, 4.233184814453125, 0, 0, -0.85471439361572265, 0.519098520278930664, 7200, 255, 1, 44232), -- Architect Table Collision (Area: -Unknown- - Difficulty: 1)
(@OGUID+28, 229752, 1158, 7078, 7085, '1', 2559, 0, 1896.8472900390625, 207.421875, 77.0021820068359375, 0.392699003219604492, 0, 0, 0.195090293884277343, 0.980785250663757324, 7200, 255, 1, 44232), -- Chair (Area: -Unknown- - Difficulty: 1)
(@OGUID+29, 232224, 1158, 7078, 7085, '1', 2559, 0, 1850.1099853515625, 262.955780029296875, 78.19712066650390625, 3.40511488914489746, 0, 0, -0.99133205413818359, 0.131380096077919006, 7200, 255, 1, 44232), -- Woodbench (Area: -Unknown- - Difficulty: 1)
(@OGUID+30, 229753, 1158, 7078, 7085, '1', 2559, 0, 1898.5, 205.3958282470703125, 77.02211761474609375, 0.759216904640197753, 0, 0, 0.370556831359863281, 0.928809821605682373, 7200, 255, 1, 44232), -- Chair (Area: -Unknown- - Difficulty: 1)
(@OGUID+31, 236356, 1158, 7078, 7085, '1', 2559, 0, 1853.07470703125, 258.055572509765625, 78.40399169921875, 4.956737518310546875, 0, 0, -0.61566066741943359, 0.788011372089385986, 7200, 255, 1, 44232), -- Mailbox (Area: -Unknown- - Difficulty: 1)
(@OGUID+32, 232156, 1158, 7078, 7085, '1', 2559, 0, 1901.4461669921875, 204.267364501953125, 76.91858673095703125, 3.516837835311889648, 0, 0, -0.98245048522949218, 0.186523601412773132, 7200, 255, 1, 44232), -- Braddock's Braggot (Area: -Unknown- - Difficulty: 1)
(@OGUID+33, 232225, 1158, 7078, 7085, '1', 2559, 0, 1845.90576171875, 260.8704833984375, 78.19712066650390625, 0.31016746163368225, 0, 0, 0.154462814331054687, 0.987998604774475097, 7200, 255, 1, 44232), -- Woodbench (Area: -Unknown- - Difficulty: 1)
(@OGUID+34, 229750, 1158, 7078, 7085, '1', 2559, 0, 1900.248291015625, 208.203125, 77.056396484375, 2.67034769058227539, 0, 0, 0.972369194030761718, 0.233448356389999389, 7200, 255, 1, 44232), -- Campfire (Area: -Unknown- - Difficulty: 1)
(@OGUID+35, 232507, 1158, 7078, 7085, '1', 2559, 0, 1892.998291015625, 204.1840362548828125, 78.48502349853515625, 4.484727859497070312, -0.25537300109863281, 0.099481582641601562, -0.77355861663818359, 0.57139754295349121, 7200, 255, 1, 44232), -- Lunarfall Egg (Area: -Unknown- - Difficulty: 1)
(@OGUID+36, 230865, 1158, 7078, 7085, '1', 2559, 0, 1905.140625, 214.46875, 78.4273529052734375, 3.478188514709472656, 0, 0, -0.9858713150024414, 0.167504489421844482, 7200, 255, 1, 44232), -- List of Ingredients (Area: -Unknown- - Difficulty: 1)
(@OGUID+37, 181144, 1158, 7078, 7085, '1', 2559, 0, 1906.4322509765625, 211.2291717529296875, 78.7294158935546875, 4.4648895263671875, 0, 0, -0.78898048400878906, 0.614418268203735351, 7200, 255, 1, 44232), -- Bowl of Fruit (Area: -Unknown- - Difficulty: 1)
(@OGUID+38, 181143, 1158, 7078, 7085, '1', 2559, 0, 1906.078125, 210.5225677490234375, 78.73334503173828125, 1.596973419189453125, 0, 0, 0.71630096435546875, 0.697791457176208496, 7200, 255, 1, 44232), -- Fish of the Day (Area: -Unknown- - Difficulty: 1)
(@OGUID+39, 229751, 1158, 7078, 7085, '1', 2559, 0, 1903.1875, 207.1041717529296875, 77.0313568115234375, 2.775068521499633789, 0, 0, 0.983254432678222656, 0.182238012552261352, 7200, 255, 1, 44232), -- Chair (Area: -Unknown- - Difficulty: 1)
(@OGUID+40, 236821, 1158, 7078, 7085, '1', 2559, 0, 1906.3646240234375, 212.0989532470703125, 78.68111419677734375, 3.971838951110839843, 0, 0, -0.91506671905517578, 0.403302490711212158, 7200, 255, 1, 44232), -- Crab Pot (Area: -Unknown- - Difficulty: 1)
(@OGUID+41, 233141, 1158, 7078, 7085, '1', 2559, 0, 1892.9566650390625, 272.453125, 76.6080322265625, 0, 0, 0, 0, 1, 7200, 255, 1, 44232), -- Garrison - Delivery for Pickup (Area: -Unknown- - Difficulty: 1)
(@OGUID+42, 233163, 1158, 7078, 7085, '1', 2559, 0, 1895.6788330078125, 271.255218505859375, 76.60886383056640625, 2.766347646713256835, 0, 0, 0.982450485229492187, 0.186523601412773132, 7200, 255, 1, 44232), -- Stool (Area: -Unknown- - Difficulty: 1)
(@OGUID+43, 230298, 1158, 7078, 7085, '1', 2559, 0, 1915.2117919921875, 202.765625, 76.761474609375, 0.91629725694656372, 0, 0, 0.442288398742675781, 0.896872878074645996, 7200, 255, 1, 44232), -- Outhouse (Area: -Unknown- - Difficulty: 1)
(@OGUID+44, 233141, 1158, 7078, 7085, '1', 2559, 0, 1922.1944580078125, 327.102447509765625, 89.6670379638671875, 0, 0, 0, 0, 1, 7200, 255, 1, 44232), -- Garrison - Delivery for Pickup (Area: -Unknown- - Difficulty: 1)
(@OGUID+45, 232249, 1158, 7078, 7085, '1', 2559, 0, 1965.3629150390625, 334.036468505859375, 88.95493316650390625, 2.809833765029907226, 0.039116859436035156, 0.018984794616699218, 0.985487937927246093, 0.164082303643226623, 7200, 255, 1, 44232), -- Bone (Area: -Unknown- - Difficulty: 1)
(@OGUID+46, 232251, 1158, 7078, 7085, '1', 2559, 0, 1965.49658203125, 333.354156494140625, 88.87424468994140625, 1.355357766151428222, 0, 0, 0.626986503601074218, 0.779030144214630126, 7200, 255, 1, 44232), -- Pippers' Buried Supplies (Area: -Unknown- - Difficulty: 1)
(@OGUID+47, 232249, 1158, 7078, 7085, '1', 2559, 0, 1965.3524169921875, 333.9600830078125, 88.95555877685546875, 3.850808143615722656, 0.031193256378173828, 0.016252517700195312, -0.9371490478515625, 0.347151994705200195, 7200, 255, 1, 44232), -- Bone (Area: -Unknown- - Difficulty: 1)
(@OGUID+48, 233141, 1158, 7078, 7085, '1', 2559, 0, 1973.079833984375, 89.84375, 85.37319183349609375, 0, 0, 0, 0, 1, 7200, 255, 1, 44232); -- Garrison - Delivery for Pickup (Area: -Unknown- - Difficulty: 1)

DELETE FROM `gameobject_addon` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+48;
INSERT INTO `gameobject_addon` (`guid`, `parent_rotation0`, `parent_rotation1`, `parent_rotation2`, `parent_rotation3`, `WorldEffectID`, `AIAnimKitID`) VALUES
(@OGUID+6, 0, 0, 0, 1, 2437, 0), -- Pippers' Buried Supplies
(@OGUID+10, 0, 0, 0, 1, 2437, 0), -- Pippers' Buried Supplies
(@OGUID+13, 0, 0, 0, 1, 2437, 0), -- Pippers' Buried Supplies
(@OGUID+23, 0, 0, 0, 1, 8830, 0), -- Hero's Call Board
(@OGUID+25, 0, 0, -0.60181492567062377, 0.798635601997375488, 0, 0), -- Woodbench
(@OGUID+26, 0, 0, -0.60181492567062377, 0.798635601997375488, 0, 0), -- Woodbench
(@OGUID+29, 0, 0, -0.60181492567062377, 0.798635601997375488, 0, 0), -- Woodbench
(@OGUID+33, 0, 0, -0.60181492567062377, 0.798635601997375488, 0, 0), -- Woodbench
(@OGUID+35, 0, 0, 0, 1, 2437, 0), -- Lunarfall Egg
(@OGUID+46, 0, 0, 0, 1, 2437, 0); -- Pippers' Buried Supplies

UPDATE `gameobject_template_addon` SET `WorldEffectID`=2437 WHERE `entry` IN (232251, 232250, 232252, 232248); -- Pippers' Buried Supplies
UPDATE `gameobject_template_addon` SET `flags`=262144, `WorldEffectID`=8830 WHERE `entry`=207320; -- Hero's Call Board
UPDATE `gameobject_template_addon` SET `flags`=1048608 WHERE `entry`=232143; -- Large Plot
UPDATE `gameobject_template_addon` SET `flags`=1048608 WHERE `entry`=229501; -- Small Plot
UPDATE `gameobject_template_addon` SET `flags`=48 WHERE `entry`=229498; -- Front Gate
UPDATE `gameobject_template_addon` SET `faction`=12 WHERE `entry`=236356; -- Mailbox
UPDATE `gameobject_template_addon` SET `WorldEffectID`=2437 WHERE `entry`=232507; -- Lunarfall Egg
UPDATE `gameobject_template_addon` SET `faction`=114 WHERE `entry`=239184; -- Architect Table Collision

-- Vendor Data
DELETE FROM `npc_vendor` WHERE (`entry`=81347 AND `item`=183950 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=180733 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=183951 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=183952 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=183953 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=183954 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=183955 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=64670 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=117445 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=90146 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=38682 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=115351 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81347 AND `item`=117452 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=183950 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=180733 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=183951 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=183952 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=183953 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=183954 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=183955 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=64670 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=117445 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=90146 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=38682 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=115351 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82386 AND `item`=117452 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82776 AND `item`=183950 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82776 AND `item`=180733 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82776 AND `item`=183951 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82776 AND `item`=183952 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82776 AND `item`=183953 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82776 AND `item`=183954 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=82776 AND `item`=183955 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81348 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81348 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81348 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81348 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81348 AND `item`=180733 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81348 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81348 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=183950 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=180733 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=183951 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=183952 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=183953 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=183954 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=183955 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=64670 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=117445 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=90146 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=38682 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=3371 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=39354 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=115351 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=81346 AND `item`=117452 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=84246 AND `item`=111556 AND `ExtendedCost`=5498 AND `type`=1) OR (`entry`=84246 AND `item`=110611 AND `ExtendedCost`=5498 AND `type`=1) OR (`entry`=84246 AND `item`=115524 AND `ExtendedCost`=5498 AND `type`=1) OR (`entry`=84246 AND `item`=112377 AND `ExtendedCost`=5498 AND `type`=1) OR (`entry`=84246 AND `item`=111366 AND `ExtendedCost`=5498 AND `type`=1) OR (`entry`=84246 AND `item`=108257 AND `ExtendedCost`=5498 AND `type`=1) OR (`entry`=84246 AND `item`=108996 AND `ExtendedCost`=5498 AND `type`=1) OR (`entry`=84246 AND `item`=127759 AND `ExtendedCost`=5502 AND `type`=1) OR (`entry`=84246 AND `item`=118472 AND `ExtendedCost`=5502 AND `type`=1) OR (`entry`=84246 AND `item`=113262 AND `ExtendedCost`=5500 AND `type`=1) OR (`entry`=84246 AND `item`=113261 AND `ExtendedCost`=5500 AND `type`=1) OR (`entry`=84246 AND `item`=113263 AND `ExtendedCost`=5500 AND `type`=1) OR (`entry`=84246 AND `item`=113264 AND `ExtendedCost`=5500 AND `type`=1) OR (`entry`=80159 AND `item`=115354 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=80159 AND `item`=117474 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=80159 AND `item`=117473 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=80159 AND `item`=117472 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=80159 AND `item`=117452 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=80159 AND `item`=2678 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=80159 AND `item`=30817 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=80159 AND `item`=159 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=80159 AND `item`=122560 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=80159 AND `item`=122555 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=80159 AND `item`=122559 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=80159 AND `item`=122558 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=80159 AND `item`=122557 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=80159 AND `item`=122556 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=78564 AND `item`=141642 AND `ExtendedCost`=5827 AND `type`=1) OR (`entry`=78564 AND `item`=120349 AND `ExtendedCost`=5488 AND `type`=1) OR (`entry`=78564 AND `item`=120348 AND `ExtendedCost`=5488 AND `type`=1) OR (`entry`=78564 AND `item`=120347 AND `ExtendedCost`=5488 AND `type`=1) OR (`entry`=78564 AND `item`=122406 AND `ExtendedCost`=5809 AND `type`=1) OR (`entry`=78564 AND `item`=122399 AND `ExtendedCost`=5809 AND `type`=1) OR (`entry`=78564 AND `item`=122401 AND `ExtendedCost`=5809 AND `type`=1) OR (`entry`=78564 AND `item`=122404 AND `ExtendedCost`=5809 AND `type`=1) OR (`entry`=78564 AND `item`=122407 AND `ExtendedCost`=5809 AND `type`=1) OR (`entry`=78564 AND `item`=122409 AND `ExtendedCost`=5809 AND `type`=1) OR (`entry`=78564 AND `item`=122410 AND `ExtendedCost`=5809 AND `type`=1) OR (`entry`=78564 AND `item`=122414 AND `ExtendedCost`=5809 AND `type`=1) OR (`entry`=78564 AND `item`=122415 AND `ExtendedCost`=5809 AND `type`=1) OR (`entry`=78564 AND `item`=122417 AND `ExtendedCost`=5809 AND `type`=1) OR (`entry`=78564 AND `item`=122422 AND `ExtendedCost`=5809 AND `type`=1) OR (`entry`=78564 AND `item`=122423 AND `ExtendedCost`=5809 AND `type`=1) OR (`entry`=78564 AND `item`=133883 AND `ExtendedCost`=5809 AND `type`=1) OR (`entry`=78564 AND `item`=133878 AND `ExtendedCost`=5809 AND `type`=1) OR (`entry`=78564 AND `item`=122500 AND `ExtendedCost`=5805 AND `type`=1) OR (`entry`=78564 AND `item`=122490 AND `ExtendedCost`=5805 AND `type`=1) OR (`entry`=78564 AND `item`=122487 AND `ExtendedCost`=5805 AND `type`=1) OR (`entry`=78564 AND `item`=122307 AND `ExtendedCost`=5805 AND `type`=1) OR (`entry`=78564 AND `item`=122503 AND `ExtendedCost`=5806 AND `type`=1) OR (`entry`=78564 AND `item`=122497 AND `ExtendedCost`=5806 AND `type`=1) OR (`entry`=78564 AND `item`=128373 AND `ExtendedCost`=5543 AND `type`=1) OR (`entry`=78564 AND `item`=122272 AND `ExtendedCost`=5807 AND `type`=1) OR (`entry`=78564 AND `item`=122273 AND `ExtendedCost`=5808 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(81347, 24, 183950, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(81347, 23, 180733, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(81347, 22, 183951, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(81347, 21, 183952, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(81347, 20, 183953, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(81347, 19, 183954, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(81347, 18, 183955, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(81347, 17, 64670, 0, 0, 1, 0, 0, 44232), -- Vanishing Powder
(81347, 16, 39505, 0, 0, 1, 0, 0, 44232), -- Virtuoso Inking Set
(81347, 15, 20815, 0, 0, 1, 0, 0, 44232), -- Jeweler's Kit
(81347, 14, 5956, 0, 0, 1, 0, 0, 44232), -- Blacksmith Hammer
(81347, 13, 6217, 0, 0, 1, 0, 0, 44232), -- Copper Rod
(81347, 12, 6256, 0, 0, 1, 0, 0, 44232), -- Fishing Pole
(81347, 11, 85663, 0, 0, 1, 0, 0, 44232), -- Herbalist's Spade
(81347, 10, 7005, 0, 0, 1, 0, 0, 44232), -- Skinning Knife
(81347, 9, 2901, 0, 0, 1, 0, 0, 44232), -- Mining Pick
(81347, 8, 117445, 0, 0, 1, 0, 0, 44232), -- Clefthoof Hide Satchel
(81347, 7, 90146, 0, 0, 1, 0, 0, 44232), -- Tinker's Kit
(81347, 6, 4470, 0, 0, 1, 0, 0, 44232), -- Simple Wood
(81347, 5, 38682, 0, 0, 1, 0, 0, 44232), -- Enchanting Vellum
(81347, 4, 3371, 0, 0, 1, 0, 0, 44232), -- Crystal Vial
(81347, 3, 39354, 0, 0, 1, 0, 0, 44232), -- Light Parchment
(81347, 2, 115351, 0, 0, 1, 0, 0, 44232), -- "Rylak Claws"
(81347, 1, 117452, 0, 0, 1, 0, 0, 44232), -- Gorgrond Mineral Water
(82386, 24, 183950, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(82386, 23, 180733, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(82386, 22, 183951, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(82386, 21, 183952, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(82386, 20, 183953, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(82386, 19, 183954, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(82386, 18, 183955, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(82386, 17, 64670, 0, 0, 1, 0, 0, 44232), -- Vanishing Powder
(82386, 16, 39505, 0, 0, 1, 0, 0, 44232), -- Virtuoso Inking Set
(82386, 15, 20815, 0, 0, 1, 0, 0, 44232), -- Jeweler's Kit
(82386, 14, 5956, 0, 0, 1, 0, 0, 44232), -- Blacksmith Hammer
(82386, 13, 6217, 0, 0, 1, 0, 0, 44232), -- Copper Rod
(82386, 12, 6256, 0, 0, 1, 0, 0, 44232), -- Fishing Pole
(82386, 11, 85663, 0, 0, 1, 0, 0, 44232), -- Herbalist's Spade
(82386, 10, 7005, 0, 0, 1, 0, 0, 44232), -- Skinning Knife
(82386, 9, 2901, 0, 0, 1, 0, 0, 44232), -- Mining Pick
(82386, 8, 117445, 0, 0, 1, 0, 0, 44232), -- Clefthoof Hide Satchel
(82386, 7, 90146, 0, 0, 1, 0, 0, 44232), -- Tinker's Kit
(82386, 6, 4470, 0, 0, 1, 0, 0, 44232), -- Simple Wood
(82386, 5, 38682, 0, 0, 1, 0, 0, 44232), -- Enchanting Vellum
(82386, 4, 3371, 0, 0, 1, 0, 0, 44232), -- Crystal Vial
(82386, 3, 39354, 0, 0, 1, 0, 0, 44232), -- Light Parchment
(82386, 2, 115351, 0, 0, 1, 0, 0, 44232), -- "Rylak Claws"
(82386, 1, 117452, 0, 0, 1, 0, 0, 44232), -- Gorgrond Mineral Water
(82776, 28, 183950, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(82776, 27, 180733, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(82776, 26, 183951, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(82776, 25, 183952, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(82776, 24, 183953, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(82776, 23, 183954, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(82776, 22, 183955, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(81348, 7, 3857, 0, 0, 1, 0, 0, 44232), -- Coal
(81348, 6, 18567, 0, 0, 1, 0, 0, 44232), -- Elemental Flux
(81348, 5, 3466, 0, 0, 1, 0, 0, 44232), -- Strong Flux
(81348, 4, 2880, 0, 0, 1, 0, 0, 44232), -- Weak Flux
(81348, 3, 180733, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(81348, 2, 5956, 0, 0, 1, 0, 0, 44232), -- Blacksmith Hammer
(81348, 1, 2901, 0, 0, 1, 0, 0, 44232), -- Mining Pick
(81346, 24, 183950, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(81346, 23, 180733, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(81346, 22, 183951, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(81346, 21, 183952, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(81346, 20, 183953, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(81346, 19, 183954, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(81346, 18, 183955, 0, 0, 1, 0, 0, 44232), -- -Unknown-
(81346, 17, 64670, 0, 0, 1, 0, 0, 44232), -- Vanishing Powder
(81346, 16, 39505, 0, 0, 1, 0, 0, 44232), -- Virtuoso Inking Set
(81346, 15, 20815, 0, 0, 1, 0, 0, 44232), -- Jeweler's Kit
(81346, 14, 5956, 0, 0, 1, 0, 0, 44232), -- Blacksmith Hammer
(81346, 13, 6217, 0, 0, 1, 0, 0, 44232), -- Copper Rod
(81346, 12, 6256, 0, 0, 1, 0, 0, 44232), -- Fishing Pole
(81346, 11, 85663, 0, 0, 1, 0, 0, 44232), -- Herbalist's Spade
(81346, 10, 7005, 0, 0, 1, 0, 0, 44232), -- Skinning Knife
(81346, 9, 2901, 0, 0, 1, 0, 0, 44232), -- Mining Pick
(81346, 8, 117445, 0, 0, 1, 0, 0, 44232), -- Clefthoof Hide Satchel
(81346, 7, 90146, 0, 0, 1, 0, 0, 44232), -- Tinker's Kit
(81346, 6, 4470, 0, 0, 1, 0, 0, 44232), -- Simple Wood
(81346, 5, 38682, 0, 0, 1, 0, 0, 44232), -- Enchanting Vellum
(81346, 4, 3371, 0, 0, 1, 0, 0, 44232), -- Crystal Vial
(81346, 3, 39354, 0, 0, 1, 0, 0, 44232), -- Light Parchment
(81346, 2, 115351, 0, 0, 1, 0, 0, 44232), -- "Rylak Claws"
(81346, 1, 117452, 0, 0, 1, 0, 0, 44232), -- Gorgrond Mineral Water
(84246, 13, 111556, 0, 5498, 1, 0, 0, 44232), -- Hexweave Cloth
(84246, 12, 110611, 0, 5498, 1, 0, 0, 44232), -- Burnished Leather
(84246, 11, 115524, 0, 5498, 1, 0, 0, 44232), -- Taladite Crystal
(84246, 10, 112377, 0, 5498, 1, 0, 0, 44232), -- War Paints
(84246, 9, 111366, 0, 5498, 1, 0, 0, 44232), -- Gearspring Parts
(84246, 8, 108257, 0, 5498, 1, 0, 0, 44232), -- Truesteel Ingot
(84246, 7, 108996, 0, 5498, 1, 0, 0, 44232), -- Alchemical Catalyst
(84246, 6, 127759, 0, 5502, 1, 0, 0, 44232), -- Felblight
(84246, 5, 118472, 0, 5502, 1, 0, 0, 44232), -- Savage Blood
(84246, 4, 113262, 0, 5500, 1, 0, 0, 44232), -- Sorcerous Water
(84246, 3, 113261, 0, 5500, 1, 0, 0, 44232), -- Sorcerous Fire
(84246, 2, 113263, 0, 5500, 1, 0, 0, 44232), -- Sorcerous Earth
(84246, 1, 113264, 0, 5500, 1, 0, 0, 44232), -- Sorcerous Air
(80159, 15, 115354, 0, 0, 1, 0, 0, 44232), -- Sliced Zangar Buttons
(80159, 14, 117474, 0, 0, 1, 0, 0, 44232), -- Rylak Sausages
(80159, 13, 117473, 0, 0, 1, 0, 0, 44232), -- Pickled Elekk Hooves
(80159, 12, 117472, 0, 0, 1, 0, 0, 44232), -- Grilled Gorgrond Surprise
(80159, 11, 117452, 0, 0, 1, 0, 0, 44232), -- Gorgrond Mineral Water
(80159, 9, 2678, 0, 0, 1, 0, 0, 44232), -- Mild Spices
(80159, 8, 30817, 0, 0, 1, 0, 0, 44232), -- Simple Flour
(80159, 7, 159, 0, 0, 1, 0, 0, 44232), -- Refreshing Spring Water
(80159, 6, 122560, 0, 0, 1, 0, 0, 44232), -- Recipe: Whiptail Fillet
(80159, 5, 122555, 0, 0, 1, 0, 0, 44232), -- Recipe: Sleeper Sushi
(80159, 4, 122559, 0, 0, 1, 0, 0, 44232), -- Recipe: Salty Squid Roll
(80159, 3, 122558, 0, 0, 1, 0, 0, 44232), -- Recipe: Pickled Eel
(80159, 2, 122557, 0, 0, 1, 0, 0, 44232), -- Recipe: Jumbo Sea Dog
(80159, 1, 122556, 0, 0, 1, 0, 0, 44232), -- Recipe: Buttered Sturgeon
(78564, 27, 141642, 0, 5827, 1, 0, 0, 44232), -- Technique: Tome of the Clear Mind
(78564, 26, 120349, 0, 5488, 1, 0, 0, 44232), -- Enduring Vial of Swiftness
(78564, 25, 120348, 0, 5488, 1, 0, 0, 44232), -- Enchanted Crystal of Freezing
(78564, 24, 120347, 0, 5488, 1, 0, 0, 44232), -- Enchanted Crystal of Replenishment
(78564, 23, 122406, 0, 5809, 1, 0, 0, 44232), -- Scouting Missive: Iron Siegeworks
(78564, 22, 122399, 0, 5809, 1, 0, 0, 44232), -- Scouting Missive: Magnarok
(78564, 21, 122401, 0, 5809, 1, 0, 0, 44232), -- Scouting Missive: Stonefury Cliffs
(78564, 20, 122404, 0, 5809, 1, 0, 0, 44232), -- Scouting Missive: Everbloom Wilds
(78564, 19, 122407, 0, 5809, 1, 0, 0, 44232), -- Scouting Missive: Skettis
(78564, 18, 122409, 0, 5809, 1, 0, 0, 44232), -- Scouting Missive: Pillars of Fate
(78564, 17, 122410, 0, 5809, 1, 0, 0, 44232), -- Scouting Missive: Shattrath Harbor
(78564, 16, 122414, 0, 5809, 1, 0, 0, 44232), -- Scouting Missive: Lost Veil Anzu
(78564, 15, 122415, 0, 5809, 1, 0, 0, 44232), -- Scouting Missive: Socrethar's Rise
(78564, 14, 122417, 0, 5809, 1, 0, 0, 44232), -- Scouting Missive: Darktide Roost
(78564, 13, 122422, 0, 5809, 1, 0, 0, 44232), -- Scouting Missive: Mok'gol Watchpost
(78564, 12, 122423, 0, 5809, 1, 0, 0, 44232), -- Scouting Missive: Broken Precipice
(78564, 11, 133883, 0, 5809, 1, 0, 0, 44232), -- Scouting Missive: The Heart of Shattrath
(78564, 10, 133878, 0, 5809, 1, 0, 0, 44232), -- Scouting Missive: The Pit
(78564, 9, 122500, 0, 5805, 1, 0, 0, 44232), -- Rush Order: Gnomish Gearworks
(78564, 8, 122490, 0, 5805, 1, 0, 0, 44232), -- Rush Order: Dwarven Bunker
(78564, 7, 122487, 0, 5805, 1, 0, 0, 44232), -- Rush Order: Gladiator's Sanctum
(78564, 6, 122307, 0, 5805, 1, 0, 0, 44232), -- Rush Order: Barn
(78564, 5, 122503, 0, 5806, 1, 0, 0, 44232), -- Rush Order: Mine Shipment
(78564, 4, 122497, 0, 5806, 1, 0, 0, 44232), -- Rush Order: Garden Shipment
(78564, 3, 128373, 0, 5543, 1, 0, 0, 44232), -- Rush Order: Shipyard
(78564, 2, 122272, 0, 5807, 1, 0, 0, 44232), -- Follower Ability Retraining Manual
(78564, 1, 122273, 0, 5808, 1, 0, 0, 44232); -- Follower Trait Retraining Guide

-- Phasing
DELETE FROM `phase_area` WHERE (`AreaId` = 7085 AND `PhaseId` = 2559);
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(7085, 2559, 'Cosmetic - [PH] SMV - Alliance Garrison V1');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 26 AND `SourceGroup` = 2559 AND `SourceEntry` = 7085);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 2559, 7085, 0, 0, 47, 0, 34586, 66, 0, 0, 'Apply Phase 2559 If Quest 34586 IS complete/rewarded');

