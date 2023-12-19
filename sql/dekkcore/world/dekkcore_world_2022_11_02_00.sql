UPDATE `creature_template` SET `unit_flags`='0', `unit_flags2`='32768', `unit_flags3`='0', `AIName`='SmartAI' WHERE  `entry`=63517;
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('63517', '123806', '1');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (63517, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 62, 870, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 1735.03, 292.12, 475.53, 1.4, 'Link - Tele invoker');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (63517, 0, 0, 1, 73, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 63517, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'On gossip select - Give credit');
DELETE FROM `creature_template_addon` WHERE  `entry`=63517;

DELETE FROM `world_quest` WHERE `id` IN (52463 /*52463*/, 66696 /*66696*/, 51039 /*51039*/, 66615 /*66615*/, 66618 /*66618*/, 54011 /*54011*/, 54137 /*54137*/, 66619 /*66619*/, 54681 /*54681*/, 41158 /*41158*/, 64018 /*64018*/, 63790 /*63790*/, 50744 /*50744*/, 65256 /*65256*/, 63786 /*63786*/, 60400 /*60400*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(52463, 86400, 15763, 1), -- 52463
(66696, 604800, 21925, 1), -- 66696
(51039, 86400, 16095, 4), -- 51039
(66615, 604800, 19923, 4), -- 66615
(66618, 604800, 21107, 1), -- 66618
(54011, 25200, 16290, 1), -- 54011
(54137, 25200, 16290, 1), -- 54137
(66619, 604800, 21222, 1), -- 66619
(54681, 25200, 16290, 1), -- 54681
(41158, 1209600, 11371, 5), -- 41158
(64018, 86400, 20766, 1), -- 64018
(63790, 86400, 20770, 1), -- 63790
(50744, 86400, 14922, 1), -- 50744
(65256, 86400, 21380, 1), -- 65256
(63786, 86400, 20766, 1), -- 63786
(60400, 259200, 19323, 1); -- 60400


UPDATE `quest_offer_reward` SET `VerifiedBuild`=46340 WHERE `ID` IN (28672, 24961, 26801, 25089, 24960);
UPDATE `quest_offer_reward` SET `Emote1`=6, `VerifiedBuild`=46340 WHERE `ID`=28651; -- Novice Elreth
UPDATE `quest_offer_reward` SET `RewardText`='Great work $n.  I knew you weren\'t useless.$b$bHere, take one of these.  We deathguards have piles of these things just sitting around.', `VerifiedBuild`=46340 WHERE `ID`=26800; -- Recruitment
UPDATE `quest_offer_reward` SET `RewardText`='Not even the power of the val\'kyr was enough to save these creatures.  They were doomed from the beginning.$b$bI have obtained some equipment for you, $n.  It\'s not much, but it will help.', `VerifiedBuild`=46340 WHERE `ID`=26799; -- Those That Couldn't Be Saved
UPDATE `quest_offer_reward` SET `RewardText`='Exactly what I needed.  You\'ll be an asset to the Forsaken, $n.$b$bYou know, word has it that you were quite the $c in your previous life.  Perhaps I should assign you to a more exciting task.', `VerifiedBuild`=46340 WHERE `ID`=28608; -- The Shadow Grave
UPDATE `quest_offer_reward` SET `RewardText`='Hello there.  You must be... $n?', `VerifiedBuild`=46340 WHERE `ID`=24959; -- Fresh out of the Grave


UPDATE `quest_poi` SET `VerifiedBuild`=46340 WHERE (`QuestID`=26802 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=26802 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=26802 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=26802 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=26802 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=26802 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=28672 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=28672 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24961 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=24961 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=24961 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=28651 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=28651 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=26800 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=26800 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=26800 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=26801 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=26801 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=26801 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=25089 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=25089 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24960 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=24960 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=24960 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=24960 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=24960 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=26799 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=26799 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=26799 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=28608 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=28608 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=28608 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=28608 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=24959 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=24959 AND `BlobIndex`=0 AND `Idx1`=0);

UPDATE `quest_poi_points` SET `VerifiedBuild`=46340 WHERE (`QuestID`=26802 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=26802 AND `Idx1`=4 AND `Idx2`=8) OR (`QuestID`=26802 AND `Idx1`=4 AND `Idx2`=7) OR (`QuestID`=26802 AND `Idx1`=4 AND `Idx2`=6) OR (`QuestID`=26802 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=26802 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=26802 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=26802 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=26802 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=26802 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=26802 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=26802 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=26802 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=26802 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=26802 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=26802 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=26802 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=26802 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=26802 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=26802 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=26802 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=26802 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=26802 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=26802 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=26802 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=26802 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=26802 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=26802 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=26802 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=26802 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=26802 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=26802 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=28672 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=28672 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24961 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=24961 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24961 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=28651 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=28651 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=26800 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=26800 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=26800 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=26800 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=26800 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=26800 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=26800 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=26800 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=26800 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=26800 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=26800 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=26801 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=26801 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=26801 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=26801 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=26801 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=26801 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=26801 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=26801 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=26801 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=26801 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=26801 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=26801 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=26801 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=26801 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=25089 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=25089 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24960 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=24960 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=24960 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=24960 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24960 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=26799 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=26799 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=26799 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=26799 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=26799 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=26799 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=26799 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=26799 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=26799 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=26799 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=28608 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=28608 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=28608 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=28608 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=24959 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=24959 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID`=28651;
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(28651, 1, 1, 1, 0, 0, 0, 0, 0, 46340); -- Novice Elreth

UPDATE `quest_details` SET `VerifiedBuild`=46340 WHERE `ID` IN (26802, 28672, 24961, 26800, 26801, 25089, 24960, 26799, 28608, 24959);


UPDATE `quest_request_items` SET `VerifiedBuild`=46340 WHERE `ID`=28608;


UPDATE `creature_queststarter` SET `VerifiedBuild`=46340 WHERE (`id`=1570 AND `quest`=26802) OR (`id`=1661 AND `quest` IN (28672,24961)) OR (`id`=1569 AND `quest` IN (28651,26801)) OR (`id`=1740 AND `quest`=26800) OR (`id`=2307 AND `quest` IN (25089,24960)) OR (`id`=1568 AND `quest` IN (26799,28608)) OR (`id`=49044 AND `quest`=24959);


UPDATE `creature_questender` SET `VerifiedBuild`=46340 WHERE (`id`=1570 AND `quest`=28672) OR (`id`=1661 AND `quest` IN (24961,28651)) OR (`id`=1569 AND `quest`=26801) OR (`id`=1740 AND `quest` IN (26800,25089)) OR (`id`=2307 AND `quest`=24960) OR (`id`=1568 AND `quest` IN (26799,28608,24959));


DELETE FROM `areatrigger_template` WHERE (`IsServerSide`=0 AND `Id` IN (27840,27677,27681));
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(27840, 0, 1, 16, 3, 3, 0, 0, 0, 0, 0, 0, 46366),
(27677, 0, 1, 0, 6, 6, 0, 0, 0, -0, 0, 0, 46366),
(27681, 0, 1, 0, 6, 6, 0, 0, 0, -0, 0, 0, 46366);


UPDATE `areatrigger_template` SET `Type`=1, `VerifiedBuild`=46366 WHERE (`IsServerSide`=0 AND `Id` IN (8352,12929,22375,9228,10727,3153));
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=2064, `Data0`=0, `Data1`=0, `Data2`=838942720, `Data3`=88746232, `Data5`=840000960, `VerifiedBuild`=46366 WHERE (`Id`=27637 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=2064, `Data0`=0, `Data1`=0, `Data2`=6745620480, `Data3`=34295020421772052602, `Data5`=6753562112, `VerifiedBuild`=46366 WHERE (`Id`=27637 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=2064, `Data0`=0, `Data1`=0, `Data2`=-1076156485948749099, `Data3`=9458999577710428160, `Data5`=-1077587123185385643, `VerifiedBuild`=46366 WHERE (`Id`=27637 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=16, `Data0`=0, `Data2`=3, `VerifiedBuild`=46366 WHERE (`Id`=27635 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=16, `Data0`=0, `Data2`=3, `VerifiedBuild`=46366 WHERE (`Id`=27635 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=16, `Data0`=0, `Data2`=3, `VerifiedBuild`=46366 WHERE (`Id`=27635 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=16, `Data0`=0, `Data2`=3, `VerifiedBuild`=46366 WHERE (`Id`=27635 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=0, `Data0`=2, `Data1`=2, `VerifiedBuild`=46366 WHERE (`Id`=27583 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=0, `Data0`=2, `Data1`=2, `VerifiedBuild`=46366 WHERE (`Id`=27583 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=0, `Data0`=2, `Data1`=2, `VerifiedBuild`=46366 WHERE (`Id`=27583 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=2072, `Data0`=0, `Data1`=0, `Data2`=-181501022961664, `Data3`=-613708564120207360, `Data5`=-181718321463296, `VerifiedBuild`=46366 WHERE (`Id`=12740 AND `IsServerSide`=0);


DELETE FROM `quest_offer_reward` WHERE `ID` IN (63959 /*Observational Records*/, 63786 /*Sweep the Windswept Aerie*/, 64018 /*The Weight of Stone*/, 63157 /*Box of Torments*/, 64541 /*The Cost of Death*/, 61104 /*Grathalax, the Extractor*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(63959, 0, 0, 0, 0, 0, 0, 0, 0, 'The devourers have destroyed much of what might have been useful at the Sanctuary of Guidance. But this information will still prove valuable.\n\nAnd here is your reward, as promised.', 46366), -- Observational Records
(63786, 0, 0, 0, 0, 0, 0, 0, 0, 'Excellent work, Maw Walker. With the Windswept Aerie under control, our flyers stand a chance of ruling the skies.', 46366), -- Sweep the Windswept Aerie
(64018, 0, 0, 0, 0, 0, 0, 0, 0, 'You did it!', 46366), -- The Weight of Stone
(63157, 1, 0, 0, 0, 0, 0, 0, 0, 'How soothing.\n\n<Ve\'nari takes a closer look at the item in her hands.>\n\nI wonder...\n\n<Ve\'nari presses a diamond shaped etching on the side of the box. It clicks into place, then opens to reveal a secret compartment containing a small piece of rolled up parchment.>\n\nNothing is what it seems, Maw Walker.', 46366), -- Box of Torments
(64541, 0, 0, 0, 0, 0, 0, 0, 0, 'With so many more interlopers in the Maw I need to secure my Stygia supply. Your efforts to keep me supplied will not go unnoticed and you always know where to find me.', 46366), -- The Cost of Death
(61104, 0, 0, 0, 0, 0, 0, 0, 0, 'The end of Grathalax will deal a great blow to the Jailer\'s infrastructure. Well done.', 46366); -- Grathalax; the Extractor

UPDATE `quest_offer_reward` SET `VerifiedBuild`=46366 WHERE `ID` IN (63734, 63733, 63763, 64101, 63784, 63762, 63760, 63761, 60281);
UPDATE `quest_offer_reward` SET `RewardText`='Justice for Teldrassil. Peace for the kaldorei.', `VerifiedBuild`=46366 WHERE `ID`=65297; -- Penance and Renewal
UPDATE `quest_offer_reward` SET `RewardText`='How could I possibly pass judgment to Tyrande\'s satisfaction when she and her people were the ones most wronged by the Banshee Queen?', `VerifiedBuild`=46366 WHERE `ID`=65263; -- The Fate of Sylvanas
UPDATE `quest_offer_reward` SET `RewardText`='Thank you for joining us, my friend. \n\nI felt it important that you be here to witness this moment.', `VerifiedBuild`=46366 WHERE `ID`=65260; -- A Long Walk
UPDATE `quest_offer_reward` SET `RewardText`='Word of Sylvanas\'s arrival has spread throughout the Shadowlands. Many wish to see her pay for her crimes.', `VerifiedBuild`=46366 WHERE `ID`=65250; -- Prisoner of Interest

DELETE FROM `quest_poi` WHERE (`QuestID`=61346 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(61346, 0, 0, 0, 405657, 168693, 2222, 1543, 0, 0, 0, 0, 0, 1960887, 0, 46366); -- Cyrixia the Willbreaker

UPDATE `quest_poi` SET `VerifiedBuild`=46366 WHERE (`QuestID`=63740 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=63740 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=63740 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=63740 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63740 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63740 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63736 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63736 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63736 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63734 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=63734 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=63734 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63734 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63734 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63733 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63733 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63733 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63763 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63763 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63763 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63762 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63762 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63762 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63761 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63760 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=63760 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=63760 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63760 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63760 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63784 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63784 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63784 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64101 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=64101 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=64101 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64018 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=64018 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=64018 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=64018 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63786 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63786 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63786 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63959 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63959 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63959 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63949 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63949 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63157 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61104 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=61104 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61104 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61104 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63543 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=63543 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=63543 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=63543 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=63543 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=63543 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63543 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63543 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65297 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=65297 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=65297 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=65297 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=65297 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65297 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65263 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65263 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65263 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65260 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=65260 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=65260 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65260 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65260 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=65260 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66648 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=66648 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=66648 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65250 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65250 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66042 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66042 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66042 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=56120 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=56120 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50603 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65748 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65748 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65748 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64783 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=64783 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63903 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63903 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63903 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60281 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=60281 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60281 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60281 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53435 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53435 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50606 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=61346 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(61346, 0, 0, 5042, 7481, 4744, 46366); -- Cyrixia the Willbreaker

UPDATE `quest_poi_points` SET `VerifiedBuild`=46366 WHERE (`QuestID`=63740 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=63740 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=63740 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=63740 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63740 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63740 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63736 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63736 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=63736 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=63736 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=63736 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=63736 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=63736 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=63736 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=63736 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=63736 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=63736 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63736 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63734 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=63734 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=63734 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63734 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63734 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63733 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63733 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=63733 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=63733 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=63733 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=63733 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=63733 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=63733 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=63733 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=63733 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=63733 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63733 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63763 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63763 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63763 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63762 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63762 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63762 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63761 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=63761 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=63761 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=63761 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=63761 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=63761 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=63761 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=63761 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=63761 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=63761 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=63761 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=63761 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63760 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=63760 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=63760 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63760 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63760 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63784 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63784 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=63784 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=63784 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=63784 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=63784 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=63784 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=63784 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63784 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64101 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=64101 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=64101 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=64101 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=64101 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=64101 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=64101 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=64101 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=64101 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64018 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=64018 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=64018 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=64018 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=64018 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=64018 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=64018 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=64018 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=64018 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=64018 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=64018 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=64018 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=64018 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=64018 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=64018 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63786 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63786 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=63786 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=63786 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=63786 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=63786 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=63786 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=63786 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63786 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63959 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63959 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=63959 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=63959 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=63959 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=63959 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=63959 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=63959 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=63959 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63959 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63949 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63949 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63157 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61104 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61104 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61104 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=61104 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=61104 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61104 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63543 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=63543 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=63543 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=63543 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=63543 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=63543 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63543 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=63543 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=63543 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=63543 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=63543 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=63543 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=63543 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=63543 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=63543 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=63543 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=63543 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=63543 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63543 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65297 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=65297 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=65297 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65297 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65297 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65297 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65263 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65263 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65263 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65260 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=65260 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=65260 AND `Idx1`=3 AND `Idx2`=11) OR (`QuestID`=65260 AND `Idx1`=3 AND `Idx2`=10) OR (`QuestID`=65260 AND `Idx1`=3 AND `Idx2`=9) OR (`QuestID`=65260 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=65260 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=65260 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=65260 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=65260 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=65260 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=65260 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=65260 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=65260 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65260 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65260 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65260 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65250 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65250 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66042 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66042 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66042 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=56120 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=56120 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50603 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65748 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65748 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64783 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=64783 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63903 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63903 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63903 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60281 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=60281 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60281 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60281 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53435 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53435 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50606 AND `Idx1`=0 AND `Idx2`=0);


UPDATE `quest_greeting` SET `VerifiedBuild`=46366 WHERE (`ID`=177928 AND `Type`=0);

DELETE FROM `quest_details` WHERE `ID` IN (64018 /*The Weight of Stone*/, 63786 /*Sweep the Windswept Aerie*/, 63157 /*Box of Torments*/, 61104 /*Grathalax, the Extractor*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(64018, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- The Weight of Stone
(63786, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Sweep the Windswept Aerie
(63157, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Box of Torments
(61104, 0, 0, 0, 0, 0, 0, 0, 0, 46366); -- Grathalax; the Extractor

UPDATE `quest_details` SET `VerifiedBuild`=46366 WHERE `ID` IN (63740, 63736, 63734, 63733, 63763, 63762, 63761, 63760, 63784, 64101, 63959, 63949, 65297, 65263, 65260);

DELETE FROM `quest_request_items` WHERE `ID`=63959;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(63959, 0, 0, 0, 0, 'Have you retrieved the observational records from the Sanctuary of Guidance?', 0); -- Observational Records


DELETE FROM `creature_queststarter` WHERE (`id`=177928 AND `quest` IN (63740,63736)) OR (`id`=178713 AND `quest`=63734) OR (`id`=177610 AND `quest`=63762) OR (`id`=177850 AND `quest`=63761) OR (`id`=178790 AND `quest`=64101) OR (`id`=178794 AND `quest` IN (64018,63786)) OR (`id`=178844 AND `quest`=63959);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(177928, 63740, 46366), -- Consulting the Experts offered Archivist Roh-Senara
(177928, 63736, 46366), -- An Infusion of Anima offered Archivist Roh-Senara
(178713, 63734, 46366), -- The Sundered Staff offered Archivist Roh-Senara
(177610, 63762, 46366), -- Under the Illusion offered Caretaker Kah-Than
(177850, 63761, 46366), -- Revenge Delayed offered Protector Rih-Mat
(178790, 64101, 46366), -- The Proper Procedures offered The Accuser
(178794, 64018, 46366), -- The Weight of Stone offered General Draven
(178794, 63786, 46366), -- Sweep the Windswept Aerie offered General Draven
(178844, 63959, 46366); -- Observational Records offered Ta'nasi

UPDATE `creature_queststarter` SET `VerifiedBuild`=46366 WHERE (`id`=178713 AND `quest`=63733) OR (`id`=177610 AND `quest`=63760) OR (`id`=179221 AND `quest`=63784) OR (`id`=177927 AND `quest`=63949) OR (`id`=162804 AND `quest`=61104) OR (`id`=183830 AND `quest` IN (65297,65263)) OR (`id`=183822 AND `quest`=65260);
UPDATE `creature_queststarter` SET `VerifiedBuild`=46340 WHERE (`id`=1570 AND `quest`=26802) OR (`id`=1661 AND `quest` IN (28672,24961)) OR (`id`=1569 AND `quest` IN (28651,26801)) OR (`id`=1740 AND `quest`=26800) OR (`id`=2307 AND `quest` IN (25089,24960)) OR (`id`=1568 AND `quest` IN (26799,28608)) OR (`id`=49044 AND `quest`=24959);

DELETE FROM `creature_questender` WHERE (`id`=177928 AND `quest` IN (63734,63733)) OR (`id`=178844 AND `quest`=63959) OR (`id`=177228 AND `quest`=63763) OR (`id`=178794 AND `quest` IN (63786,64018)) OR (`id`=178790 AND `quest`=64101) OR (`id`=177610 AND `quest`=63760) OR (`id`=162804 AND `quest`=64541);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(177928, 63734, 46366), -- The Sundered Staff ended by Archivist Roh-Senara
(177928, 63733, 46366), -- Carving Out a Path ended by Archivist Roh-Senara
(178844, 63959, 46366), -- Observational Records ended by Ta'nasi
(177228, 63763, 46366), -- They Could Be Anyone ended by Highlord Bolvar Fordragon
(178794, 63786, 46366), -- Sweep the Windswept Aerie ended by General Draven
(178794, 64018, 46366), -- The Weight of Stone ended by General Draven
(178790, 64101, 46366), -- The Proper Procedures ended by The Accuser
(177610, 63760, 46366), -- Echoes of Fate ended by Caretaker Kah-Than
(162804, 64541, 46366); -- The Cost of Death ended by Ve'nari

UPDATE `creature_questender` SET `VerifiedBuild`=46366 WHERE (`id`=179221 AND `quest`=63784) OR (`id`=162804 AND `quest` IN (63157,61104,60281)) OR (`id`=183857 AND `quest`=65297) OR (`id`=183830 AND `quest` IN (65263,65260)) OR (`id`=183822 AND `quest`=65250);
UPDATE `creature_questender` SET `VerifiedBuild`=46340 WHERE (`id`=1570 AND `quest`=28672) OR (`id`=1661 AND `quest` IN (24961,28651)) OR (`id`=1569 AND `quest`=26801) OR (`id`=1740 AND `quest` IN (26800,25089)) OR (`id`=2307 AND `quest`=24960) OR (`id`=1568 AND `quest` IN (26799,28608,24959));

DELETE FROM `creature_template_spell` WHERE (`CreatureID`=180125 AND `Index`=0);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(180125, 0, 356546, 46366); -- Darkwing Legionnaire


DELETE FROM `world_quest` WHERE `id` IN (63047 /*63047*/, 66615 /*66615*/, 64785 /*64785*/, 66618 /*66618*/, 66619 /*66619*/, 60407 /*60407*/, 50786 /*50786*/, 41158 /*41158*/, 51037 /*51037*/, 64101 /*64101*/, 64018 /*64018*/, 63786 /*63786*/, 61104 /*61104*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(63047, 86400, 20309, 1), -- 63047
(66615, 604800, 19923, 4), -- 66615
(64785, 86400, 21241, 2), -- 64785
(66618, 604800, 21107, 1), -- 66618
(66619, 604800, 21222, 1), -- 66619
(60407, 259200, 19326, 1), -- 60407
(50786, 86400, 14830, 2), -- 50786
(41158, 1209600, 11371, 5), -- 41158
(51037, 86400, 16095, 2), -- 51037
(64101, 86400, 20793, 1), -- 64101
(64018, 86400, 20766, 1), -- 64018
(63786, 86400, 20766, 1), -- 63786
(61104, 86400, 19687, 1); -- 61104

UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099


UPDATE `areatrigger_template` SET `Type`=1, `VerifiedBuild`=46340 WHERE (`IsServerSide`=0 AND `Id` IN (12929,8352,27682,10727,26358,27608,27585,27564,22375,28443));
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=2049, `Data0`=0, `Data1`=0, `Data4`=19867862895476716006, `VerifiedBuild`=46340 WHERE (`Id`=26442 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=2049, `Data0`=0, `Data1`=0, `Data2`=-1057333370787739624, `Data4`=2117815356096512, `Data5`=-105846492641952735, `VerifiedBuild`=46340 WHERE (`Id`=26442 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46340 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46340 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46340 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46340 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=2048, `Data0`=0, `Data1`=0, `Data2`=652.453125, `Data3`=-2146275572054933766, `Data5`=655.009033203125, `VerifiedBuild`=46340 WHERE (`Id`=10698 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=2048, `Data0`=0, `Data1`=0, `Data2`=0.02186441421508789, `Data5`=0.021880876272916793, `VerifiedBuild`=46340 WHERE (`Id`=10698 AND `IsServerSide`=0);


DELETE FROM `world_quest` WHERE `id` IN (52463 /*52463*/, 66696 /*66696*/, 51039 /*51039*/, 66615 /*66615*/, 66618 /*66618*/, 54011 /*54011*/, 54137 /*54137*/, 66619 /*66619*/, 54681 /*54681*/, 41158 /*41158*/, 64018 /*64018*/, 63790 /*63790*/, 50744 /*50744*/, 65256 /*65256*/, 63786 /*63786*/, 60400 /*60400*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(52463, 86400, 15763, 1), -- 52463
(66696, 604800, 21925, 1), -- 66696
(51039, 86400, 16095, 4), -- 51039
(66615, 604800, 19923, 4), -- 66615
(66618, 604800, 21107, 1), -- 66618
(54011, 25200, 16290, 1), -- 54011
(54137, 25200, 16290, 1), -- 54137
(66619, 604800, 21222, 1), -- 66619
(54681, 25200, 16290, 1), -- 54681
(41158, 1209600, 11371, 5), -- 41158
(64018, 86400, 20766, 1), -- 64018
(63790, 86400, 20770, 1), -- 63790
(50744, 86400, 14922, 1), -- 50744
(65256, 86400, 21380, 1), -- 65256
(63786, 86400, 20766, 1), -- 63786
(60400, 259200, 19323, 1); -- 60400

UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091


DELETE FROM `scene_template` WHERE `SceneId`=2875;
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`, `Encrypted`) VALUES
(2875, 17, 3398, 0);


DELETE FROM `quest_details` WHERE `ID` IN (60435 /*Challenges in Revendreth*/, 66648 /*Crossing Fate*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(60435, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Challenges in Revendreth
(66648, 0, 0, 0, 0, 0, 0, 0, 0, 46313); -- Crossing Fate

UPDATE `quest_details` SET `VerifiedBuild`=46313 WHERE `ID` IN (62860, 61984, 60385);

DELETE FROM `quest_request_items` WHERE `ID`=61984;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(61984, 0, 0, 0, 0, 'Have you come to dedicate anima to our sacred purpose?', 46313); -- Replenish the Reservoir


DELETE FROM `world_quest` WHERE `id` IN (66696 /*66696*/, 64101 /*64101*/, 66615 /*66615*/, 66618 /*66618*/, 54346 /*54346*/, 60419 /*60419*/, 54339 /*54339*/, 60435 /*60435*/, 60385 /*60385*/, 60250 /*60250*/, 54348 /*54348*/, 43473 /*43473*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(66696, 604800, 21925, 1), -- 66696
(64101, 86400, 20793, 1), -- 64101
(66615, 604800, 19923, 4), -- 66615
(66618, 604800, 21107, 1), -- 66618
(54346, 86400, 16717, 2), -- 54346
(60419, 259200, 19331, 1), -- 60419
(54339, 86400, 16751, 1), -- 54339
(60435, 259200, 19336, 1), -- 60435
(60385, 259200, 19327, 1), -- 60385
(60250, 604800, 19256, 1), -- 60250
(54348, 86400, 16781, 1), -- 54348
(43473, 86400, 12220, 1); -- 43473

UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099


UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `VerifiedBuild`=46366 WHERE (`IsServerSide`=0 AND `Id` IN (10714,24310,10727,8352,12929,28170,28732));
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=5, `VerifiedBuild`=46366 WHERE (`IsServerSide`=0 AND `Id` IN (5972,3678));


DELETE FROM `quest_offer_reward` WHERE `ID` IN (65774 /*The Catalyst Awakens*/, 65070 /*Je peux le garder ?*/, 65069 /*Culling the Maelstrom*/, 65068 /*Cascades of Magnitude*/, 65067 /*Broker Beaker*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(65774, 0, 0, 0, 0, 0, 0, 0, 0, 'The power of creation itself is in your hands.', 46366), -- The Catalyst Awakens
(65070, 669, 0, 0, 0, 0, 0, 0, 0, 'It worked! I cannot thank you enough for your help. And now, he is yours. Take good care of him.\n\nGoodbye, E\'rnee.', 46366), -- Je peux le garder ?
(65069, 669, 0, 0, 0, 0, 0, 0, 0, 'Oh my... what happened to you?', 46366), -- Culling the Maelstrom
(65068, 669, 0, 0, 0, 0, 0, 0, 0, 'That was unexpected.', 46366), -- Cascades of Magnitude
(65067, 669, 0, 0, 0, 0, 0, 0, 0, 'Ah. This will certainly be useful.', 46366); -- Broker Beaker



UPDATE `quest_poi` SET `VerifiedBuild`=46366 WHERE (`QuestID`=66648 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=66648 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=66648 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66696 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=66696 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=66696 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65070 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65070 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65070 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65069 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65069 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65069 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65068 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=65068 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=65068 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65068 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65068 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65068 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65081 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65081 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65250 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65250 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66042 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66042 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66042 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=56120 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=56120 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50603 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65774 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65774 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=65774 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65748 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65748 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65748 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65067 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65067 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65067 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64783 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=64783 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63903 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63903 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63903 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60281 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=60281 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60281 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60281 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53435 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53435 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50606 AND `BlobIndex`=0 AND `Idx1`=0);

UPDATE `quest_poi_points` SET `VerifiedBuild`=46366 WHERE (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=66648 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=66648 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=66648 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66696 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66696 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66696 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65070 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65070 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65070 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65069 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65069 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=65069 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=65069 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=65069 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=65069 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=65069 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=65069 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=65069 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=65069 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=65069 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=65069 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=65069 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65069 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65068 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=65068 AND `Idx1`=4 AND `Idx2`=11) OR (`QuestID`=65068 AND `Idx1`=4 AND `Idx2`=10) OR (`QuestID`=65068 AND `Idx1`=4 AND `Idx2`=9) OR (`QuestID`=65068 AND `Idx1`=4 AND `Idx2`=8) OR (`QuestID`=65068 AND `Idx1`=4 AND `Idx2`=7) OR (`QuestID`=65068 AND `Idx1`=4 AND `Idx2`=6) OR (`QuestID`=65068 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=65068 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=65068 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=65068 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=65068 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=65068 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=65068 AND `Idx1`=3 AND `Idx2`=11) OR (`QuestID`=65068 AND `Idx1`=3 AND `Idx2`=10) OR (`QuestID`=65068 AND `Idx1`=3 AND `Idx2`=9) OR (`QuestID`=65068 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=65068 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=65068 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=65068 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=65068 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=65068 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=65068 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=65068 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=65068 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65068 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=65068 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=65068 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=65068 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=65068 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65068 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=65068 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=65068 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=65068 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=65068 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=65068 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=65068 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=65068 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=65068 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=65068 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=65068 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=65068 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65068 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65081 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65081 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=65081 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=65081 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=65081 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=65081 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=65081 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=65081 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=65081 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=65081 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=65081 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=65081 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=65081 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65250 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65250 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66042 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66042 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66042 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=56120 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=56120 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50603 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65774 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=65774 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=65774 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=65774 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=65774 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=65774 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=65774 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=65774 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=65774 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=65774 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=65774 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=65774 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65774 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65774 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65748 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=65748 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65748 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65067 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65067 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=65067 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=65067 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=65067 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=65067 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=65067 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=65067 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=65067 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65067 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64783 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=64783 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63903 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63903 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63903 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60281 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=60281 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60281 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60281 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53435 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53435 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50606 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (66648 /*Crossing Fate*/, 65070 /*Je peux le garder ?*/, 65069 /*Culling the Maelstrom*/, 65068 /*Cascades of Magnitude*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(66648, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Crossing Fate
(65070, 669, 0, 0, 0, 0, 0, 0, 0, 46366), -- Je peux le garder ?
(65069, 669, 0, 0, 0, 0, 0, 0, 0, 46366), -- Culling the Maelstrom
(65068, 669, 0, 0, 0, 0, 0, 0, 0, 46366); -- Cascades of Magnitude

UPDATE `quest_details` SET `VerifiedBuild`=46366 WHERE `ID` IN (65259, 65250, 66042);

DELETE FROM `quest_request_items` WHERE `ID` IN (65067 /*Broker Beaker*/, 61984 /*Replenish the Reservoir*/, 65725 /*The Burrowed Bufonid*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(65067, 0, 0, 0, 0, 'Be careful with those carnivorous cervids--they bite!', 0), -- Broker Beaker
(61984, 0, 0, 0, 0, 'Have you come to dedicate anima to our sacred purpose?', 46366), -- Replenish the Reservoir
(65725, 0, 6, 0, 0, 'The large bufonid beneath the mud remains still.\n\nThere must be something it fancies. Have you some meats we can use to lure it out?', 0); -- The Burrowed Bufonid


DELETE FROM `creature_queststarter` WHERE (`id`=182346 AND `quest` IN (65070,65069,65068));
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(182346, 65070, 46366), -- Je peux le garder ? offered Tamra
(182346, 65069, 46366), -- Culling the Maelstrom offered Tamra
(182346, 65068, 46366); -- Cascades of Magnitude offered Tamra

UPDATE `creature_queststarter` SET `VerifiedBuild`=46366 WHERE (`id`=181183 AND `quest` IN (65259,65250,66042));
UPDATE `creature_queststarter` SET `VerifiedBuild`=46313 WHERE (`id`=167206 AND `quest`=60435) OR (`id`=158553 AND `quest`=62860) OR (`id`=167196 AND `quest`=61984) OR (`id`=158544 AND `quest`=60385);

DELETE FROM `creature_questender` WHERE (`id`=180950 AND `quest`=65725) OR (`id`=182257 AND `quest`=65774) OR (`id`=182346 AND `quest` IN (65070,65069,65068,65067));
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(180950, 65725, 46366), -- The Burrowed Bufonid ended by Avna
(182257, 65774, 46366), -- The Catalyst Awakens ended by Vilo
(182346, 65070, 46366), -- Je peux le garder ? ended by Tamra
(182346, 65069, 46366), -- Culling the Maelstrom ended by Tamra
(182346, 65068, 46366), -- Cascades of Magnitude ended by Tamra
(182346, 65067, 46366); -- Broker Beaker ended by Tamra


DELETE FROM `world_quest` WHERE `id` IN (63047 /*63047*/, 64101 /*64101*/, 66615 /*66615*/, 64785 /*64785*/, 66618 /*66618*/, 66619 /*66619*/, 61104 /*61104*/, 60407 /*60407*/, 50786 /*50786*/, 41158 /*41158*/, 64018 /*64018*/, 51037 /*51037*/, 63786 /*63786*/, 66696 /*66696*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(63047, 86400, 20309, 1), -- 63047
(64101, 86400, 20793, 1), -- 64101
(66615, 604800, 19923, 4), -- 66615
(64785, 86400, 21241, 2), -- 64785
(66618, 604800, 21107, 1), -- 66618
(66619, 604800, 21222, 1), -- 66619
(61104, 86400, 19687, 1), -- 61104
(60407, 259200, 19326, 1), -- 60407
(50786, 86400, 14830, 2), -- 50786
(41158, 1209600, 11371, 5), -- 41158
(64018, 86400, 20766, 1), -- 64018
(51037, 86400, 16095, 2), -- 51037
(63786, 86400, 20766, 1), -- 63786
(66696, 604800, 21925, 1); -- 66696

UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982


DELETE FROM `creature_queststarter` WHERE (`id`=182346 AND `quest` IN (65070,65069,65068));
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(182346, 65070, 46366), -- Je peux le garder ? offered Tamra
(182346, 65069, 46366), -- Culling the Maelstrom offered Tamra
(182346, 65068, 46366); -- Cascades of Magnitude offered Tamra

DELETE FROM `creature_questender` WHERE (`id`=180950 AND `quest`=65725) OR (`id`=182257 AND `quest`=65774) OR (`id`=182346 AND `quest` IN (65070,65069,65068,65067));
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(180950, 65725, 46366), -- The Burrowed Bufonid ended by Avna
(182257, 65774, 46366), -- The Catalyst Awakens ended by Vilo
(182346, 65070, 46366), -- Je peux le garder ? ended by Tamra
(182346, 65069, 46366), -- Culling the Maelstrom ended by Tamra
(182346, 65068, 46366), -- Cascades of Magnitude ended by Tamra
(182346, 65067, 46366); -- Broker Beaker ended by Tamra


DELETE FROM `world_quest` WHERE `id` IN (52463 /*52463*/, 66696 /*66696*/, 51039 /*51039*/, 66615 /*66615*/, 66618 /*66618*/, 54011 /*54011*/, 54137 /*54137*/, 66619 /*66619*/, 54681 /*54681*/, 41158 /*41158*/, 64018 /*64018*/, 63790 /*63790*/, 50744 /*50744*/, 65256 /*65256*/, 63786 /*63786*/, 60400 /*60400*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(52463, 86400, 15763, 1), -- 52463
(66696, 604800, 21925, 1), -- 66696
(51039, 86400, 16095, 4), -- 51039
(66615, 604800, 19923, 4), -- 66615
(66618, 604800, 21107, 1), -- 66618
(54011, 25200, 16290, 1), -- 54011
(54137, 25200, 16290, 1), -- 54137
(66619, 604800, 21222, 1), -- 66619
(54681, 25200, 16290, 1), -- 54681
(41158, 1209600, 11371, 5), -- 41158
(64018, 86400, 20766, 1), -- 64018
(63790, 86400, 20770, 1), -- 63790
(50744, 86400, 14922, 1), -- 50744
(65256, 86400, 21380, 1), -- 65256
(63786, 86400, 20766, 1), -- 63786
(60400, 259200, 19323, 1); -- 60400

UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14245 WHERE `id`=49091; -- 49091

DELETE FROM `areatrigger_template` WHERE (`IsServerSide`=0 AND `Id` IN (26479,27065,27052,29927,27593,26413,26432,26281,27857,29014,28721));
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(26479, 0, 5, 4, 4, 4, 8, 8, 4, 4, 0, 0, 46366),
(27065, 0, 1, 0, 120, 120, 0, 0, 0, -0, 0, 0, 46366),
(27052, 0, 5, 2048, 0, 0, 74899545546783813795, 0.000000000012350415, -0.0000000035909482, 74989724499822373765, 0.000000000012350415, -0.0000000035909482, 46366),
(29927, 0, 1, 0, 5, 5, 0, 0, 0, -0, 0, 0, 46366),
(27593, 0, 1, 0, 3, 3, 0, 0, 0, -0, 0, 0, 46366),
(26413, 0, 1, 0, 3.5, 3.5, 0, 0, 0, -0, 0, 0, 46366),
(26432, 0, 1, 0, 5.5, 5.5, 0, 0, 0, -0, 0, 0, 46366),
(26281, 0, 1, 0, 3, 3, 0, 0, 0, -0, 0, 0, 46366),
(27857, 0, 1, 2048, 0, 0, 0, -0.19118131697177886, -1958711339063128842, 0, 0, 0, 46366),
(29014, 0, 1, 0, 6, 6, 0, 0, 0, -0, 0, 0, 46366),
(28721, 0, 1, 4, 10, 10, 0, 0, 0, -0, 0, 0, 46366);


UPDATE `areatrigger_template` SET `Type`=1, `VerifiedBuild`=46366 WHERE (`IsServerSide`=0 AND `Id` IN (27585,12929,25548,8352,22375,12515,3153,22573,10727,25253,24351,27415,3983));
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=2049, `Data0`=0, `Data1`=0, `Data2`=-2287466381027518311, `Data4`=228346016, `Data5`=-2289729492291093765, `VerifiedBuild`=46366 WHERE (`Id`=26442 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=2049, `Data0`=0, `Data1`=0, `Data4`=-3576657549925758404, `VerifiedBuild`=46366 WHERE (`Id`=26442 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=2049, `Data0`=0, `Data1`=0, `Data2`=-1562589287720690532, `Data4`=532189504, `Data5`=-156400373226042519, `VerifiedBuild`=46366 WHERE (`Id`=26442 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=5, `VerifiedBuild`=46366 WHERE (`Id`=26199 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=4, `Data1`=4, `VerifiedBuild`=46366 WHERE (`Id`=10665 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=2072, `Data0`=0, `Data1`=0, `Data2`=-4866561609838886912, `Data3`=-2645672844460805251, `Data5`=-4873688644210130944, `VerifiedBuild`=46366 WHERE (`Id`=9110 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=2064, `Data0`=0, `Data1`=0, `VerifiedBuild`=46366 WHERE (`Id`=6700 AND `IsServerSide`=0);


DELETE FROM `scene_template` WHERE `SceneId` IN (2904, 2890);
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`, `Encrypted`) VALUES
(2904, 27, 3437, 0),
(2890, 27, 3434, 0);


DELETE FROM `quest_offer_reward` WHERE `ID` IN (63985 /*The Veiled Market*/, 63984 /*Coins for the Ferryman*/, 63983 /*Dead Drop*/, 63982 /*Above My Station*/, 63980 /*Seeking Smugglers*/, 65788 /*A Walk with Ghosts*/, 66091 /*Path of the Dark Rangers*/, 65668 /*The Desolate Council*/, 65667 /*The Remedy of Lordaeron*/, 65666 /*Return to Brill*/, 65665 /*Embodiment*/, 65664 /*Essence of Plague*/, 65663 /*Feed the Eater*/, 65662 /*House of Plagues*/, 65661 /*Consulting Our Allies*/, 65660 /*Walk of Faith*/, 65659 /*The Blight Congress*/, 65658 /*This Land is Ours*/, 65657 /*Assemble the Forsaken*/, 65656 /*Call to Lordaeron*/, 66170 /*Silent Vigil*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(63985, 1, 0, 0, 0, 0, 0, 0, 0, 'No worries! I have another plan.', 46366), -- The Veiled Market
(63984, 1, 0, 0, 0, 0, 0, 0, 0, 'Maw Walker! What can humble Ta\'meri do for you?', 46366), -- Coins for the Ferryman
(63983, 1, 0, 0, 0, 0, 0, 0, 0, 'Perfect! This will put us back on schedule.', 46366), -- Dead Drop
(63982, 6, 0, 0, 0, 0, 0, 0, 0, 'Need something hunted down?', 46366), -- Above My Station
(63980, 1, 0, 0, 0, 0, 0, 0, 0, 'You seek information?\n\nThat requires a transaction.', 46366), -- Seeking Smugglers
(65788, 1, 1, 0, 0, 0, 0, 0, 0, 'Thank you, $n. You have helped so much. \n\nFrom here, I believe the Forsaken will rebuild and solidify their identity. Not just as former denizens of Lordaeron, but as their own people. A people I am proud to be one of.', 46366), -- A Walk with Ghosts
(66091, 66, 0, 0, 0, 0, 0, 0, 0, 'For years, we dark rangers worked as agents of the Banshee Queen. Now, under the leadership of the new Forsaken council, we serve a greater cause: shaping our people\'s future.\n\nWe cannot be certain what lies ahead. But I vow that the dark rangers will do everything in our power to defend this kingdom.\n\nYour aid was crucial in helping us cleanse the ruins of Lordaeron. Take this, with our thanks.', 46366), -- Path of the Dark Rangers
(65668, 1, 1, 0, 0, 0, 0, 0, 0, 'I am greatly honored that they have accepted me as part of the new leadership of the Forsaken. \n\nI swear that I will do my best to protect and preserve the people, no matter where they come from, or what form of undeath has created them.', 46366), -- The Desolate Council
(65667, 1, 1, 0, 0, 0, 0, 0, 0, 'We did it. By working together, we\'ve cleared the surface level of the deadly plague cloud.\n\nIt will take more time to clean up the lower reaches of the Undercity, but it\'s a fine start.', 46366), -- The Remedy of Lordaeron
(65666, 1, 1, 0, 0, 0, 0, 0, 0, 'Wonderful! Not only did you manage not to lose my plague eater, you brought it back stronger than ever!\n\nNow, witness the genius and rapidity of my machines. There will be more than enough plague eaters to spread across the surface of the Undercity.', 46366), -- Return to Brill
(65665, 1, 0, 0, 0, 0, 0, 0, 0, 'Despite all the trouble that sample gave us, I think I actually have a little bit of hope now.', 46366), -- Embodiment
(65664, 6, 1, 0, 0, 0, 0, 0, 0, 'Did you see that? What a fearsome plague sample you brought me!\n\nIt hit me in the head and quite nearly killed your friends, apprentice. Marvelous!', 46366), -- Essence of Plague
(65663, 1, 0, 0, 0, 0, 0, 0, 0, 'The Plague Eater is looking so much stronger already. I think Master Apothecary Faranell would be pleased.', 46366), -- Feed the Eater
(65662, 6, 0, 0, 0, 0, 0, 0, 0, 'Hello, my favorite apprentice! \n\nSay, you look a tad wan. Are you certain you\'re getting enough sleep?', 46366), -- House of Plagues
(65661, 0, 0, 0, 0, 0, 0, 0, 0, 'You carry a rather nasty example of the unchecked and unfettered ambition of a plague-maker.\n\nI trust the creator of this monstrosity has already been purged. What would you ask of the houses of Maldraxxus?', 46366), -- Consulting Our Allies
(65660, 1, 0, 0, 0, 0, 0, 0, 0, 'That\'s something you don\'t see every day.', 46366), -- Walk of Faith
(65659, 1, 1, 0, 0, 0, 0, 0, 0, 'I expected that my presence might cause friction. But I\'m grateful to Lilian for her mediation, and for giving me the chance to show that I am committed to helping the Forsaken people.\n\nBut now, I must prove it.', 46366), -- The Blight Congress
(65658, 0, 0, 0, 0, 0, 0, 0, 0, 'That should give our guards some breathing room. Metaphorically speaking, of course.\n\nThank you for the help, $n.', 46366), -- This Land is Ours
(65657, 1, 1, 0, 0, 0, 0, 0, 0, 'Looks like we\'re ready to get started.\n\nI don\'t think there have been this many Forsaken in one place since... well, Darkshore.\n\nBut we are in our own lands now, and it\'s time we take care of our own.', 46366), -- Assemble the Forsaken
(65656, 1, 0, 0, 0, 0, 0, 0, 0, 'I was always fond of Brill.\n\nMuch remains to be done, but it is heartening to see the progress made in rebuilding here.', 46366), -- Call to Lordaeron
(66170, 0, 0, 0, 0, 0, 0, 0, 0, '<Dori\'thur blinks knowingly.>', 46366); -- Silent Vigil

UPDATE `quest_offer_reward` SET `VerifiedBuild`=46366 WHERE `ID` IN (63977, 63979, 63976, 64506, 64438, 64290, 64289, 63738, 63737, 63739, 63740, 63736);
UPDATE `quest_offer_reward` SET `RewardText`='Ah, you must have been sent by Ta\'rela. We have need of your services.\n\nTrust me, we will make it more than worth your while.', `VerifiedBuild`=46366 WHERE `ID`=60274; -- Trading Favors
UPDATE `quest_offer_reward` SET `RewardText`='Yes, yes. This is it. Magnificent, do you not agree?\n\n<The damp codex catches The Archivist by surprise. He gently runs his hand along the binding, muttering an incantation in a soft, enigmatic tone.>\n\nThat should help preserve it for now, but the incantation will not last. We must get to work.', `VerifiedBuild`=46366 WHERE `ID`=63861; -- Beginning the Collection

DELETE FROM `quest_poi` WHERE (`QuestID`=65658 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=65658 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=65658 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65658 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65658 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(65658, 0, 4, 32, 0, 0, 2532, 2070, 0, 0, 0, 0, 0, 2169479, 0, 46366), -- This Land is Ours
(65658, 1, 3, 0, 423267, 185790, 2532, 2070, 0, 0, 0, 0, 0, 0, 0, 46366), -- This Land is Ours
(65658, 0, 2, 0, 423267, 185790, 0, 18, 0, 2, 0, 0, 0, 0, 0, 46366), -- This Land is Ours
(65658, 0, 1, -1, 0, 0, 2532, 2070, 0, 0, 0, 0, 0, 2169489, 0, 46366), -- This Land is Ours
(65658, 0, 0, -1, 0, 0, 2532, 2070, 0, 0, 0, 0, 0, 2169479, 0, 46366); -- This Land is Ours

UPDATE `quest_poi` SET `VerifiedBuild`=46366 WHERE (`QuestID`=63986 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63986 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63985 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=63985 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=63985 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63985 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=63985 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63984 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63984 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63983 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=63983 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=63983 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63983 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63983 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63982 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63982 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63982 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63980 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63980 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60245 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60245 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63977 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=63977 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=63977 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=63977 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=63977 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63977 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=63977 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63979 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=63979 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63979 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=63979 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63976 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63976 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60274 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60274 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65788 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65788 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=65788 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65788 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65668 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65668 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=65668 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65668 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65667 AND `BlobIndex`=0 AND `Idx1`=9) OR (`QuestID`=65667 AND `BlobIndex`=2 AND `Idx1`=8) OR (`QuestID`=65667 AND `BlobIndex`=1 AND `Idx1`=7) OR (`QuestID`=65667 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=65667 AND `BlobIndex`=2 AND `Idx1`=5) OR (`QuestID`=65667 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=65667 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65667 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=65667 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65667 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65666 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65666 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=65666 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65666 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65665 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65665 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65665 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65663 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65663 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65663 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65664 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=65664 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65664 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65664 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65664 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65662 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65662 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65661 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65661 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65660 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=65660 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=65660 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=65660 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=65660 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65660 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=65660 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65660 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65659 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=65659 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=65659 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=65659 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=65659 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65659 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=65659 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65659 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65657 AND `BlobIndex`=1 AND `Idx1`=9) OR (`QuestID`=65657 AND `BlobIndex`=0 AND `Idx1`=8) OR (`QuestID`=65657 AND `BlobIndex`=1 AND `Idx1`=7) OR (`QuestID`=65657 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=65657 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=65657 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=65657 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=65657 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65657 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=65657 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65656 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65656 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65656 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=65656 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66170 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66170 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66170 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64506 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=64506 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=64506 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=64506 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64438 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=64438 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=64438 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64290 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=64290 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=64290 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63861 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=63861 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=63861 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=63861 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63861 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64289 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=64289 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63738 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63738 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63737 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=63737 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63737 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63737 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63739 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63739 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63740 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=63740 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=63740 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=63740 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63740 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63740 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63736 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63736 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63736 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63949 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63949 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=56120 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=56120 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50603 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63903 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63903 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63903 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53435 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53435 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50606 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=65658 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=65658 AND `Idx1`=3 AND `Idx2`=11) OR (`QuestID`=65658 AND `Idx1`=3 AND `Idx2`=10) OR (`QuestID`=65658 AND `Idx1`=3 AND `Idx2`=9) OR (`QuestID`=65658 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=65658 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=65658 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=65658 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=65658 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=65658 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=65658 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=65658 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=65658 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65658 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=65658 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=65658 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=65658 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=65658 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=65658 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=65658 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=65658 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=65658 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=65658 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=65658 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=65658 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65658 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65658 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(65658, 4, 0, 2316, 233, 30, 46366), -- This Land is Ours
(65658, 3, 11, 2133, 30, 40, 46366), -- This Land is Ours
(65658, 3, 10, 2136, 312, 33, 46366), -- This Land is Ours
(65658, 3, 9, 2169, 446, 67, 46366), -- This Land is Ours
(65658, 3, 8, 2292, 563, 34, 46366), -- This Land is Ours
(65658, 3, 7, 2315, 576, 25, 46366), -- This Land is Ours
(65658, 3, 6, 2350, 580, 31, 46366), -- This Land is Ours
(65658, 3, 5, 2838, 370, 26, 46366), -- This Land is Ours
(65658, 3, 4, 2887, 298, 30, 46366), -- This Land is Ours
(65658, 3, 3, 2939, 189, 4, 46366), -- This Land is Ours
(65658, 3, 2, 2947, 11, 8, 46366), -- This Land is Ours
(65658, 3, 1, 2941, -84, 23, 46366), -- This Land is Ours
(65658, 3, 0, 2876, -119, 31, 46366), -- This Land is Ours
(65658, 2, 11, 2862, -146, 31, 46366), -- This Land is Ours
(65658, 2, 10, 2131, 38, 31, 46366), -- This Land is Ours
(65658, 2, 9, 2140, 307, 31, 46366), -- This Land is Ours
(65658, 2, 8, 2193, 440, 31, 46366), -- This Land is Ours
(65658, 2, 7, 2290, 528, 31, 46366), -- This Land is Ours
(65658, 2, 6, 2316, 554, 31, 46366), -- This Land is Ours
(65658, 2, 5, 2361, 566, 31, 46366), -- This Land is Ours
(65658, 2, 4, 2826, 372, 31, 46366), -- This Land is Ours
(65658, 2, 3, 2884, 294, 31, 46366), -- This Land is Ours
(65658, 2, 2, 2934, 180, 31, 46366), -- This Land is Ours
(65658, 2, 1, 2949, 5, 31, 46366), -- This Land is Ours
(65658, 2, 0, 2924, -101, 31, 46366), -- This Land is Ours
(65658, 1, 0, 2284, 286, 33, 46366), -- This Land is Ours
(65658, 0, 0, 2316, 233, 30, 46366); -- This Land is Ours

UPDATE `quest_poi_points` SET `VerifiedBuild`=46366 WHERE (`QuestID`=63986 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63986 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63985 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=63985 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=63985 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63985 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63985 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63984 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63984 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63983 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=63983 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=63983 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63983 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63983 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63982 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63982 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63982 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63980 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63980 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60245 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60245 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63977 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=63977 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=63977 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=63977 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=63977 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63977 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63977 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63979 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=63979 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63979 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63979 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63976 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63976 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60274 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60274 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65788 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65788 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65788 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65788 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65668 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65668 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65668 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65668 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65667 AND `Idx1`=9 AND `Idx2`=0) OR (`QuestID`=65667 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=65667 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=65667 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=65667 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=65667 AND `Idx1`=4 AND `Idx2`=11) OR (`QuestID`=65667 AND `Idx1`=4 AND `Idx2`=10) OR (`QuestID`=65667 AND `Idx1`=4 AND `Idx2`=9) OR (`QuestID`=65667 AND `Idx1`=4 AND `Idx2`=8) OR (`QuestID`=65667 AND `Idx1`=4 AND `Idx2`=7) OR (`QuestID`=65667 AND `Idx1`=4 AND `Idx2`=6) OR (`QuestID`=65667 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=65667 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=65667 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=65667 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=65667 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=65667 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=65667 AND `Idx1`=3 AND `Idx2`=11) OR (`QuestID`=65667 AND `Idx1`=3 AND `Idx2`=10) OR (`QuestID`=65667 AND `Idx1`=3 AND `Idx2`=9) OR (`QuestID`=65667 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=65667 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=65667 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=65667 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=65667 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=65667 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=65667 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=65667 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=65667 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65667 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65667 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65667 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65666 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65666 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65666 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65666 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65665 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65665 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65665 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65663 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65663 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=65663 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=65663 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=65663 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=65663 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=65663 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=65663 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65663 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65664 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=65664 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65664 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65664 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65664 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65662 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65662 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65661 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65661 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65660 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=65660 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=65660 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=65660 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=65660 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65660 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65660 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65660 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65659 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=65659 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=65659 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=65659 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=65659 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65659 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65659 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65659 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65657 AND `Idx1`=9 AND `Idx2`=0) OR (`QuestID`=65657 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=65657 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=65657 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=65657 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=65657 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=65657 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65657 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65657 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65657 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65656 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65656 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65656 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65656 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66170 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66170 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66170 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64506 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=64506 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=64506 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=64506 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=64506 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=64506 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=64506 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=64506 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64438 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=64438 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=64438 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64290 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=64290 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=64290 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63861 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=63861 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=63861 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63861 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63861 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64289 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=64289 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63738 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63738 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63737 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=63737 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63737 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63737 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63739 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63739 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63740 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=63740 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=63740 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=63740 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63740 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63740 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63736 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63736 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=63736 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=63736 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=63736 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=63736 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=63736 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=63736 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=63736 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=63736 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=63736 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63736 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63949 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63949 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=56120 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=56120 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50603 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63903 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63903 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63903 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53435 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53435 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50606 AND `Idx1`=0 AND `Idx2`=0);


UPDATE `quest_greeting` SET `VerifiedBuild`=46366 WHERE (`Type`=0 AND `ID` IN (178908,174922,177928));

DELETE FROM `quest_details` WHERE `ID` IN (63986 /*Tazavesh: Raiders of the Lost Artifact*/, 63985 /*The Veiled Market*/, 63984 /*Coins for the Ferryman*/, 63983 /*Dead Drop*/, 63982 /*Above My Station*/, 60245 /*Trading Favors: De Other Side*/, 65788 /*A Walk with Ghosts*/, 65668 /*The Desolate Council*/, 65667 /*The Remedy of Lordaeron*/, 65666 /*Return to Brill*/, 65665 /*Embodiment*/, 65663 /*Feed the Eater*/, 65664 /*Essence of Plague*/, 65662 /*House of Plagues*/, 65661 /*Consulting Our Allies*/, 65660 /*Walk of Faith*/, 65659 /*The Blight Congress*/, 65658 /*This Land is Ours*/, 65657 /*Assemble the Forsaken*/, 65656 /*Call to Lordaeron*/, 66170 /*Silent Vigil*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(63986, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Tazavesh: Raiders of the Lost Artifact
(63985, 1, 1, 0, 0, 0, 0, 0, 0, 46366), -- The Veiled Market
(63984, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- Coins for the Ferryman
(63983, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- Dead Drop
(63982, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- Above My Station
(60245, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Trading Favors: De Other Side
(65788, 1, 1, 0, 0, 0, 0, 0, 0, 46366), -- A Walk with Ghosts
(65668, 1, 1, 0, 0, 0, 0, 0, 0, 46366), -- The Desolate Council
(65667, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- The Remedy of Lordaeron
(65666, 669, 669, 0, 0, 0, 0, 0, 0, 46366), -- Return to Brill
(65665, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Embodiment
(65663, 1, 1, 0, 0, 0, 0, 0, 0, 46366), -- Feed the Eater
(65664, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Essence of Plague
(65662, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- House of Plagues
(65661, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Consulting Our Allies
(65660, 1, 1, 0, 0, 0, 0, 0, 0, 46366), -- Walk of Faith
(65659, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- The Blight Congress
(65658, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- This Land is Ours
(65657, 1, 1, 0, 0, 0, 0, 0, 0, 46366), -- Assemble the Forsaken
(65656, 1, 1, 0, 0, 0, 0, 0, 0, 46366), -- Call to Lordaeron
(66170, 0, 0, 0, 0, 0, 0, 0, 0, 46366); -- Silent Vigil

UPDATE `quest_details` SET `VerifiedBuild`=46366 WHERE `ID` IN (60057, 63980, 63977, 63979, 63976, 60274, 64506, 64438, 64290, 63861, 64289, 63738, 63737, 63739);

DELETE FROM `quest_request_items` WHERE `ID`=65668;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(65668, 0, 0, 0, 0, 'Hope, and fresh air, have been restored.', 46366); -- The Desolate Council

UPDATE `quest_request_items` SET `VerifiedBuild`=46366 WHERE `ID` IN (63979, 63977);
UPDATE `quest_request_items` SET `CompletionText`='Have you found the codex? I hope we are not too late.' WHERE `ID`=63861;

DELETE FROM `creature_queststarter` WHERE (`id`=178908 AND `quest`=63986) OR (`id`=178792 AND `quest`=63985) OR (`id`=158890 AND `quest` IN (63984,63983)) OR (`id`=160090 AND `quest`=63982) OR (`id`=156688 AND `quest`=60274) OR (`id`=185852 AND `quest` IN (65788,65668)) OR (`id`=185839 AND `quest`=65667) OR (`id`=185829 AND `quest`=65666) OR (`id`=185825 AND `quest`=65665) OR (`id`=185803 AND `quest`=65663) OR (`id`=185517 AND `quest`=65664) OR (`id`=177782 AND `quest`=65662) OR (`id`=185513 AND `quest` IN (65661,65659)) OR (`id`=185797 AND `quest`=65660) OR (`id`=185514 AND `quest`=65658) OR (`id`=185512 AND `quest`=65657) OR (`id`=173386 AND `quest`=65656) OR (`id`=187436 AND `quest`=66170) OR (`id`=178257 AND `quest` IN (64506,64438,64290,63861,64289)) OR (`id`=178992 AND `quest`=63738) OR (`id`=178991 AND `quest`=63737) OR (`id`=177928 AND `quest`=63739);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(178908, 63986, 46366), -- Tazavesh: Raiders of the Lost Artifact offered Al'dalil
(178792, 63985, 46366), -- The Veiled Market offered Ta'meri
(158890, 63984, 46366), -- Coins for the Ferryman offered Bounty Hunter Ta'oku
(158890, 63983, 46366), -- Dead Drop offered Bounty Hunter Ta'oku
(160090, 63982, 46366), -- Above My Station offered Ta'nla the Identifier
(156688, 60274, 46366), -- Trading Favors offered Host Ta'rela
(185852, 65788, 46366), -- A Walk with Ghosts offered Lilian Voss
(185852, 65668, 46366), -- The Desolate Council offered Lilian Voss
(185839, 65667, 46366), -- The Remedy of Lordaeron offered Calia Menethil
(185829, 65666, 46366), -- Return to Brill offered Lilian Voss
(185825, 65665, 46366), -- Embodiment offered Plague Deviser Marileth
(185803, 65663, 46366), -- Feed the Eater offered Calia Menethil
(185517, 65664, 46366), -- Essence of Plague offered Plague Deviser Marileth
(177782, 65662, 46366), -- House of Plagues offered Margrave Sin'dane
(185513, 65661, 46366), -- Consulting Our Allies offered Lilian Voss
(185797, 65660, 46366), -- Walk of Faith offered Calia Menethil
(185513, 65659, 46366), -- The Blight Congress offered Lilian Voss
(185514, 65658, 46366), -- This Land is Ours offered Dark Ranger Velonara
(185512, 65657, 46366), -- Assemble the Forsaken offered Calia Menethil
(173386, 65656, 46366), -- Call to Lordaeron offered Calia Menethil
(187436, 66170, 46366), -- Silent Vigil offered Dori'thur
(178257, 64506, 46366), -- What Must Be Found offered Archivist Roh-Suir
(178257, 64438, 46366), -- Empowering Equipment offered Archivist Roh-Suir
(178257, 64290, 46366), -- Collecting Research offered Archivist Roh-Suir
(178257, 63861, 46366), -- Beginning the Collection offered Archivist Roh-Suir
(178257, 64289, 46366), -- Picking Up the Pieces offered Archivist Roh-Suir
(178992, 63738, 46366), -- Establishing the Archive offered Scholar Roh-Suir
(178991, 63737, 46366), -- Finding One's True Purpose offered Archivist Roh-Senara
(177928, 63739, 46366); -- Hope Ascending offered Archivist Roh-Senara

UPDATE `creature_queststarter` SET `VerifiedBuild`=46366 WHERE (`id`=167584 AND `quest`=60057) OR (`id`=178908 AND `quest` IN (63980,63977,63979)) OR (`id`=167880 AND `quest`=60245) OR (`id`=156688 AND `quest`=63976);

DELETE FROM `creature_questender` WHERE (`id`=178908 AND `quest`=63985) OR (`id`=178792 AND `quest`=63984) OR (`id`=158890 AND `quest` IN (63983,63982)) OR (`id`=185893 AND `quest`=65788) OR (`id`=185851 AND `quest`=66091) OR (`id`=185848 AND `quest`=65668) OR (`id`=185852 AND `quest`=65667) OR (`id`=185831 AND `quest`=65666) OR (`id`=185829 AND `quest`=65665) OR (`id`=185825 AND `quest`=65664) OR (`id`=185826 AND `quest`=65663) OR (`id`=185517 AND `quest`=65662) OR (`id`=177782 AND `quest`=65661) OR (`id`=185513 AND `quest` IN (65660,65657)) OR (`id`=185797 AND `quest`=65659) OR (`id`=185792 AND `quest`=65658) OR (`id`=185512 AND `quest`=65656) OR (`id`=187436 AND `quest`=66170) OR (`id`=178257 AND `quest` IN (64506,63861,64438,64290,64289)) OR (`id`=178313 AND `quest`=63738) OR (`id`=178992 AND `quest`=63737) OR (`id`=178991 AND `quest`=63739) OR (`id`=177928 AND `quest` IN (63740,63736));
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(178908, 63985, 46366), -- The Veiled Market ended by Al'dalil
(178792, 63984, 46366), -- Coins for the Ferryman ended by Ta'meri
(158890, 63983, 46366), -- Dead Drop ended by Bounty Hunter Ta'oku
(158890, 63982, 46366), -- Above My Station ended by Bounty Hunter Ta'oku
(185893, 65788, 46366), -- A Walk with Ghosts ended by Calia Menethil
(185851, 66091, 46366), -- Path of the Dark Rangers ended by Dark Ranger Velonara
(185848, 65668, 46366), -- The Desolate Council ended by Calia Menethil
(185852, 65667, 46366), -- The Remedy of Lordaeron ended by Lilian Voss
(185831, 65666, 46366), -- Return to Brill ended by Master Apothecary Faranell
(185829, 65665, 46366), -- Embodiment ended by Lilian Voss
(185825, 65664, 46366), -- Essence of Plague ended by Plague Deviser Marileth
(185826, 65663, 46366), -- Feed the Eater ended by Calia Menethil
(185517, 65662, 46366), -- House of Plagues ended by Plague Deviser Marileth
(177782, 65661, 46366), -- Consulting Our Allies ended by Margrave Sin'dane
(185513, 65660, 46366), -- Walk of Faith ended by Lilian Voss
(185797, 65659, 46366), -- The Blight Congress ended by Calia Menethil
(185792, 65658, 46366), -- This Land is Ours ended by Dark Ranger Velonara
(185513, 65657, 46366), -- Assemble the Forsaken ended by Lilian Voss
(185512, 65656, 46366), -- Call to Lordaeron ended by Calia Menethil
(187436, 66170, 46366), -- Silent Vigil ended by Dori'thur
(178257, 64506, 46366), -- What Must Be Found ended by Archivist Roh-Suir
(178257, 63861, 46366), -- Beginning the Collection ended by Archivist Roh-Suir
(178257, 64438, 46366), -- Empowering Equipment ended by Archivist Roh-Suir
(178257, 64290, 46366), -- Collecting Research ended by Archivist Roh-Suir
(178257, 64289, 46366), -- Picking Up the Pieces ended by Archivist Roh-Suir
(178313, 63738, 46366), -- Establishing the Archive ended by Scholar Roh-Suir
(178992, 63737, 46366), -- Finding One's True Purpose ended by Scholar Roh-Suir
(178991, 63739, 46366), -- Hope Ascending ended by Archivist Roh-Senara
(177928, 63740, 46366), -- Consulting the Experts ended by Archivist Roh-Senara
(177928, 63736, 46366); -- An Infusion of Anima ended by Archivist Roh-Senara

UPDATE `creature_questender` SET `VerifiedBuild`=46366 WHERE (`id`=160090 AND `quest`=63980) OR (`id`=178908 AND `quest` IN (63977,63979,63976)) OR (`id`=167880 AND `quest`=60274);

DELETE FROM `creature_template_spell` WHERE (`CreatureID`=178942 AND `Index` IN (1,0)) OR (`CreatureID`=185838 AND `Index` IN (3,2,1,0));
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(178942, 1, 353092, 46366), -- Prototype Aquilon
(178942, 0, 353090, 46366), -- Prototype Aquilon
(185838, 3, 370136, 46366), -- Shadowbat
(185838, 2, 368930, 46366), -- Shadowbat
(185838, 1, 368823, 46366), -- Shadowbat
(185838, 0, 369111, 46366); -- Shadowbat



DELETE FROM `gossip_menu` WHERE (`MenuID`=27738 AND `TextID`=1);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(27738, 1, 46366); -- 185852 (Lilian Voss)

UPDATE `gossip_menu` SET `VerifiedBuild`=46366 WHERE (`MenuID`=24815 AND `TextID`=39079) OR (`MenuID`=25287 AND `TextID`=39872) OR (`MenuID`=27137 AND `TextID`=43280) OR (`MenuID`=27135 AND `TextID`=43278) OR (`MenuID`=27132 AND `TextID`=43276) OR (`MenuID`=27138 AND `TextID`=43281) OR (`MenuID`=27136 AND `TextID`=43279) OR (`MenuID`=26947 AND `TextID`=42940);

DELETE FROM `gossip_menu_addon` WHERE `MenuID`=26991;
INSERT INTO `gossip_menu_addon` (`MenuID`, `FriendshipFactionID`, `VerifiedBuild`) VALUES
(26991, 2472, 46366); -- 178257 (Archivist Roh-Suir)



DELETE FROM `world_quest` WHERE `id` IN (54664 /*54664*/, 63047 /*63047*/, 66615 /*66615*/, 64785 /*64785*/, 66618 /*66618*/, 66619 /*66619*/, 60407 /*60407*/, 60250 /*60250*/, 50735 /*50735*/, 50786 /*50786*/, 41158 /*41158*/, 54503 /*54503*/, 51037 /*51037*/, 54697 /*54697*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(54664, 25200, 16925, 1), -- 54664
(63047, 86400, 20309, 1), -- 63047
(66615, 604800, 19923, 4), -- 66615
(64785, 86400, 21241, 2), -- 64785
(66618, 604800, 21107, 1), -- 66618
(66619, 604800, 21222, 1), -- 66619
(60407, 259200, 19326, 1), -- 60407
(60250, 604800, 19256, 1), -- 60250
(50735, 86400, 14850, 1), -- 50735
(50786, 86400, 14830, 2), -- 50786
(41158, 1209600, 11371, 5), -- 41158
(54503, 25200, 16292, 1), -- 54503
(51037, 86400, 16095, 2), -- 51037
(54697, 25200, 16948, 1); -- 54697

UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `variable`=14247 WHERE `id`=49096; -- 49096


UPDATE `areatrigger_template` SET `Type`=1, `VerifiedBuild`=46366 WHERE (`IsServerSide`=0 AND `Id` IN (24355,8352,10727,12929,11203,7020,27767,24351,22375,27881,26358,27608,12515));
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=0, `Data3`=3558.578125, `Data4`=-749.3975830078125, `Data5`=115.3365325927734375, `VerifiedBuild`=46366 WHERE (`Id`=27757 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=0, `Data3`=3567.6337890625, `Data4`=-749.248291015625, `Data5`=111.8652572631835937, `VerifiedBuild`=46366 WHERE (`Id`=27757 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=0, `Data3`=3577.240478515625, `Data4`=-748.8524169921875, `Data5`=114.8227005004882812, `VerifiedBuild`=46366 WHERE (`Id`=27757 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Flags`=2049, `Data0`=0, `Data1`=0, `VerifiedBuild`=46366 WHERE (`Id`=26442 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=1, `Data0`=1, `Data1`=1, `VerifiedBuild`=46366 WHERE (`Id`=6197 AND `IsServerSide`=0);


DELETE FROM `quest_offer_reward` WHERE `ID`=63986;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(63986, 0, 0, 0, 0, 0, 0, 0, 0, '<So\'leah has been defeated. Now, for the artifact she was using...>', 46366); -- Tazavesh: Raiders of the Lost Artifact


DELETE FROM `creature_questender` WHERE (`id`=162804 AND `quest`=64541);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(162804, 64541, 46366); -- The Cost of Death ended by Ve'nari


DELETE FROM `gossip_menu` WHERE (`MenuID`=26805 AND `TextID`=1);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(26805, 1, 46366); -- 160390 (Kleia)

UPDATE `gossip_menu` SET `VerifiedBuild`=46366 WHERE (`MenuID`=26122 AND `TextID`=41481);

DELETE FROM `gossip_menu_addon` WHERE `MenuID`=26991;
INSERT INTO `gossip_menu_addon` (`MenuID`, `FriendshipFactionID`, `VerifiedBuild`) VALUES
(26991, 2472, 46366); -- 178257 (Archivist Roh-Suir)


DELETE FROM `world_quest` WHERE `id` IN (52064 /*52064*/, 66696 /*66696*/, 65407 /*65407*/, 64785 /*64785*/, 66614 /*66614*/, 50864 /*50864*/, 54589 /*54589*/, 66619 /*66619*/, 60407 /*60407*/, 64103 /*64103*/, 50735 /*50735*/, 63960 /*63960*/, 54132 /*54132*/, 54403 /*54403*/, 53707 /*53707*/, 54437 /*54437*/, 41177 /*41177*/, 66618 /*66618*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(52064, 86400, 15629, 1), -- 52064
(66696, 604800, 21925, 1), -- 66696
(65407, 86400, 21461, 2), -- 65407
(64785, 86400, 21241, 2), -- 64785
(66614, 604800, 19923, 1), -- 66614
(50864, 86400, 14953, 1), -- 50864
(54589, 86400, 16888, 1), -- 54589
(66619, 604800, 21222, 1), -- 66619
(60407, 259200, 19326, 1), -- 60407
(64103, 86400, 20784, 1), -- 64103
(50735, 86400, 14850, 1), -- 50735
(63960, 86400, 20815, 1), -- 63960
(54132, 25200, 16289, 1), -- 54132
(54403, 25200, 16289, 1), -- 54403
(53707, 25200, 16289, 1), -- 53707
(54437, 25200, 16289, 1), -- 54437
(41177, 1209600, 11371, 6), -- 41177
(66618, 604800, 21107, 1); -- 66618

UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14061 WHERE `id`=48982; -- 48982

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES ('508394', '63754', '870', '5841', '6095', '2109.01', '1473.51', '487.969', '5.6556', '60');
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `curhealth`) VALUES ('572368', '63754', '870', '5841', '6415', '2259.23', '1156.81', '495.726', '4.91416', '60', '214985');

UPDATE `creature_template` SET `gossip_menu_id`='14855', `unit_flags2`='0', `AIName`='SmartAI' WHERE  `entry`=63754;

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (63754, 0, 0, 1, 62, 0, 100, 0, 14855, 0, 0, 0, 0, '', 33, 63754, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Farmhand Bo');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (63754, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Farmhand Bo');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (63754, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Farmhand Bo');

REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `Emote`) VALUES ('63754', 'I don\'t know about this "Alliance", but you look trustworthy. I\'ll gather everyone up and meet you when we\'re ready to rebuild!', '12', '100', '1');

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (572362, 63542, 870, 5841, 6415, '0', 0, '', 0, -1, 0, 0, 2096.63, 1313.24, 472.948, 5.05602, 60, 0, 0, 214985, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (508451, 63542, 870, 5841, 6095, '0', 0, '', 0, -1, 0, 0, 2137.44, 1450, 488.278, 5.19101, 60, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (572363, 63542, 870, 5841, 6095, '0', 0, '', 0, -1, 0, 0, 2104.64, 1417.31, 484.731, 4.59027, 60, 0, 0, 214985, 0, 0, 0, 0, 0, 0, 0, '', 0);

UPDATE `creature_template` SET `gossip_menu_id`='14868', `unit_flags2`='0', `AIName`='SmartAI' WHERE  `entry`=63542;

REPLACE INTO `creature_text` (`CreatureID`, `Text`, `Type`, `Probability`, `Emote`) VALUES ('63542', 'Someone has come to save us? Perhaps all is not lost...', '12', '100', '1');

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (63542, 0, 0, 1, 62, 0, 100, 0, 14868, 0, 0, 0, 0, '', 33, 63542, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Elder Tsulan');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (63542, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Elder Tsulan');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (63542, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Elder Tsulan');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (63542, 0, 3, 0, 20, 0, 100, 0, 30514, 0, 0, 0, 0, '', 80, 6354200, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Elder Tsulan');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (6354200, 9, 0, 0, 0, 0, 100, 0, 1, 1, 0, 0, 0, '', 62, 870, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 2158.15, 1466.71, 487.886, 0.537512, 'Elder Tsulan');

