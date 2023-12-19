DELETE FROM `quest_offer_reward` WHERE `ID`=29020;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(29020, 0, 0, 0, 0, 0, 0, 0, 0, 'Candy buckets like this are located in inns throughout the realms. Go ahead... take some!', 46366); -- Candy Bucket

UPDATE `gameobject_template_addon` SET `faction`=1735 WHERE `entry`=208181; -- Candy Bucket
UPDATE `gameobject_template_addon` SET `faction`=1732 WHERE `entry`=208183; -- Candy Bucket

UPDATE `quest_offer_reward` SET `VerifiedBuild`=46366 WHERE `ID`=29019;

DELETE FROM `gameobject_queststarter` WHERE `id` IN (208181, 208183);
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(208181, 29019, 46366),
(208183, 29020, 46366);

UPDATE `gameobject_questender` SET `VerifiedBuild`=46366 WHERE (`id`=208181 AND `quest`=29019);
UPDATE `gameobject_questender` SET `VerifiedBuild`=46366 WHERE (`id`=208183 AND `quest`=29020);

DELETE FROM `game_event_gameobject_quest` WHERE `id` IN (208181, 208183);

UPDATE `quest_offer_reward` SET `VerifiedBuild`=46366 WHERE `ID`=29019;

DELETE FROM `gameobject_queststarter` WHERE `id` IN (208181, 208183);
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(208181, 29019, 46366),
(208183, 29020, 46366);

UPDATE `gameobject_questender` SET `VerifiedBuild`=46366 WHERE (`id`=208181 AND `quest`=29019);
UPDATE `gameobject_questender` SET `VerifiedBuild`=46366 WHERE (`id`=208183 AND `quest`=29020);

DELETE FROM `game_event_gameobject_quest` WHERE `id` IN (208181, 208183);


UPDATE `creature_template` SET `faction`='2482', `npcflag`='0', `unit_flags2`='33554432', `AIName`='SmartAI' WHERE  `entry`=61692;
REPLACE INTO `creature_template_addon` (`entry`, `bytes2`, `auras`) VALUES ('61692', '1', '120151 120152');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (61692, 0, 0, 0, 8, 0, 100, 0, 120573, 0, 0, 0, 0, '', 33, 61692, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'SpellHit - KillCredit - Inv');

UPDATE `creature_template` SET `faction`='2564', `unit_flags`='32768', `unit_flags2`='33556480' WHERE  `entry`=61082;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (61083, 0, 0, 0, 1, 0, 100, 0, 30000, 60000, 30000, 75000, 0, '', 87, 6108300, 6108301, 6108302, 6108303, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Time Agro - Run Random Script');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (61083, 0, 1, 0, 1, 0, 100, 0, 0, 0, 1000, 2000, 0, '', 5, 36, 0, 0, 0, 0, 0, 11, 61181, 5, 0, 0, 0, 0, 0, 0, 'Battle emote');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (6108303, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Text Id 3');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (6108302, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Text Id 2');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (6108301, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Text Id 1');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (6108300, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Text Id 0');

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (61083, 0, 0, 'Die, insect!', 12, 0, 100, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (61083, 1, 0, 'Maybe it be in dis urn over here. Stand back!', 12, 0, 100, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (61083, 2, 0, 'Thank you for you help.', 12, 0, 100, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (61083, 3, 0, 'This is great!', 12, 0, 100, 0, 0, 0, 0, 0, 0, '');


REPLACE INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param4`, `action_type`, `action_param1`, `target_type`, `target_param1`, `target_param2`, `comment`) VALUES ('61181', '1', '1', '2000', '5', '36', '11', '61082', '4', 'Battle Aggro');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=61082;


REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (61082, 0, 0, 0, 1, 0, 100, 0, 30000, 60000, 30000, 75000, 0, '', 87, 6108200, 6108201, 6108202, 6108203, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Time Agro - Run Random Script');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (61082, 0, 1, 0, 1, 0, 100, 0, 0, 0, 1000, 2000, 0, '', 5, 36, 0, 0, 0, 0, 0, 11, 61181, 5, 0, 0, 0, 0, 0, 0, 'Battle emote');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (6108203, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Text Id 3');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (6108202, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Text Id 2');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (6108201, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Text Id 1');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (6108200, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Text Id 0');

REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (61082, 0, 0, 'Die, insect!', 12, 0, 100, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (61082, 1, 0, 'Maybe it be in dis urn over here. Stand back!', 12, 0, 100, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (61082, 2, 0, 'Thank you for you help.', 12, 0, 100, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundPlayType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES (61082, 3, 0, 'This is great!', 12, 0, 100, 0, 0, 0, 0, 0, 0, '');


DELETE FROM `creature_equip_template` WHERE (`ID`=3 AND `CreatureID` IN (44299,144318));
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(44299, 3, 46733, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Beathan Firebrew
(144318, 3, 107735, 0, 0, 0, 0, 0, 0, 0, 0, 46366); -- Mag'har Warrior


DELETE FROM `conversation_line_template` WHERE `Id` IN (42130, 42129, 42128, 42127, 42126, 42125, 42124, 42123, 42122, 42121, 42120);
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(42130, 0, 0, 0, 46366),
(42129, 0, 0, 0, 46366),
(42128, 0, 0, 0, 46366),
(42127, 0, 0, 0, 46366),
(42126, 0, 0, 0, 46366),
(42125, 0, 0, 0, 46366),
(42124, 0, 0, 0, 46366),
(42123, 0, 0, 0, 46366),
(42122, 0, 0, 0, 46366),
(42121, 0, 0, 0, 46366),
(42120, 0, 0, 0, 46366);

UPDATE `conversation_line_template` SET `VerifiedBuild`=46366 WHERE `Id`=36066;

DELETE FROM `conversation_template` WHERE `Id`=16714;
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `TextureKitId`, `VerifiedBuild`) VALUES
(16714, 42120, 0, 46366);


DELETE FROM `quest_greeting` WHERE (`Type`=0 AND `ID` IN (37024,36644));
INSERT INTO `quest_greeting` (`ID`, `Type`, `GreetEmoteType`, `GreetEmoteDelay`, `Greeting`, `VerifiedBuild`) VALUES
(37024, 0, 0, 0, '', 46366), -- 37024
(36644, 0, 396, 0, 'Baine Bluthuf, unser Oberhäuptling, stand einstmals an jenem Fleck und wachte über dieses Dorf, das nach seinem Stamm benannt war.', 46366); -- 36644


DELETE FROM `quest_details` WHERE `ID` IN (24543 /*A Family Divided*/, 24542 /*A Curious Bloom*/, 24534 /*Speaking Their Language*/, 24519 /*Stalling the Survey*/, 24518 /*The Low Road*/, 24514 /*Raptor Scraps*/, 24515 /*Signals in the Sky*/, 24513 /*Eye for an Eye*/, 24512 /*Warriors' Redemption*/, 25284 /*Feeding the Fear*/, 24505 /*Holdout at Hunter's Hill*/, 24504 /*Clear the High Road*/, 28549 /*Warchief's Command: Southern Barrens!*/, 60887 /*Cataclysm: Onward to Adventure in Kalimdor*/, 62568 /*Adventurers Wanted: Chromie's Call*/, 27397 /*Hretar's Task*/, 26397 /*Walk With The Earth Mother*/, 6364 /*Return to Varg*/, 31036 /*Enemies Below*/, 24540 /*War Dance*/, 27280 /*The Riverspeaker Calls*/, 6363 /*Tal the Wind Rider Master*/, 24550 /*Journey into Thunder Bluff*/, 24524 /*Wildmane Cleansing*/, 773 /*Rite of Wisdom*/, 24523 /*Wildmane Totem*/, 20441 /*Rite of Vision*/, 32670 /*Learn To Ride*/, 24457 /*Rite of Vision*/, 24456 /*Thunderhorn Cleansing*/, 26179 /*The Venture Co.*/, 26180 /*Supervisor Fizsprocket*/, 751 /*The Ravaged Caravan*/, 24441 /*Thunderhorn Totem*/, 14491 /*The Restless Earth*/, 24440 /*Winterhoof Cleansing*/, 20440 /*Poison Water*/, 6362 /*Ride to Thunder Bluff*/, 6361 /*A Bundle of Hides*/, 26188 /*Mazzranache*/, 14438 /*Sharing the Land*/, 24459 /*Morin Cloudstalker*/, 24215 /*Rite of the Winds*/, 14456 /*Rite of Courage*/, 14455 /*Stop the Thorncallers*/, 14458 /*Go to Adana*/, 24852 /*Our Tribe, Imprisoned*/, 14452 /*Rite of Strength*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(24543, 1, 5, 0, 0, 0, 0, 0, 0, 46366), -- A Family Divided
(24542, 1, 5, 273, 0, 0, 0, 0, 0, 46366), -- A Curious Bloom
(24534, 1, 25, 5, 0, 0, 0, 0, 0, 46366), -- Speaking Their Language
(24519, 6, 1, 0, 0, 0, 0, 0, 0, 46366), -- Stalling the Survey
(24518, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- The Low Road
(24514, 1, 273, 0, 0, 0, 0, 0, 0, 46366), -- Raptor Scraps
(24515, 1, 6, 0, 0, 0, 0, 0, 0, 46366), -- Signals in the Sky
(24513, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- Eye for an Eye
(24512, 25, 1, 274, 0, 0, 0, 0, 0, 46366), -- Warriors' Redemption
(25284, 1, 273, 0, 0, 0, 0, 0, 0, 46366), -- Feeding the Fear
(24505, 1, 273, 0, 0, 0, 0, 0, 0, 46366), -- Holdout at Hunter's Hill
(24504, 1, 66, 0, 0, 0, 0, 0, 0, 46366), -- Clear the High Road
(28549, 1, 1, 1, 0, 0, 0, 0, 0, 46366), -- Warchief's Command: Southern Barrens!
(60887, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Cataclysm: Onward to Adventure in Kalimdor
(62568, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Adventurers Wanted: Chromie's Call
(27397, 1, 1, 0, 0, 0, 0, 0, 0, 46366), -- Hretar's Task
(26397, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Walk With The Earth Mother
(6364, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- Return to Varg
(31036, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Enemies Below
(24540, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- War Dance
(27280, 1, 1, 0, 0, 0, 0, 0, 0, 46366), -- The Riverspeaker Calls
(6363, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- Tal the Wind Rider Master
(24550, 29, 0, 0, 0, 0, 0, 0, 0, 46366), -- Journey into Thunder Bluff
(24524, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Wildmane Cleansing
(773, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- Rite of Wisdom
(24523, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Wildmane Totem
(20441, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- Rite of Vision
(32670, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- Learn To Ride
(24457, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- Rite of Vision
(24456, 50, 50, 50, 1, 0, 0, 0, 0, 46366), -- Thunderhorn Cleansing
(26179, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- The Venture Co.
(26180, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- Supervisor Fizsprocket
(751, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- The Ravaged Caravan
(24441, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Thunderhorn Totem
(14491, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- The Restless Earth
(24440, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Winterhoof Cleansing
(20440, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- Poison Water
(6362, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- Ride to Thunder Bluff
(6361, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- A Bundle of Hides
(26188, 1, 0, 0, 0, 0, 0, 0, 0, 46366), -- Mazzranache
(14438, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Sharing the Land
(24459, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Morin Cloudstalker
(24215, 25, 0, 0, 0, 0, 0, 0, 0, 46366), -- Rite of the Winds
(14456, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Rite of Courage
(14455, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Stop the Thorncallers
(14458, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Go to Adana
(24852, 0, 0, 0, 0, 0, 0, 0, 0, 46366), -- Our Tribe, Imprisoned
(14452, 0, 0, 0, 0, 0, 0, 0, 0, 46366); -- Rite of Strength

UPDATE `quest_details` SET `VerifiedBuild`=46366 WHERE `ID` IN (24571, 24570, 24565, 24539, 24525, 24529, 24517, 51443, 23733, 24861, 14460, 14459, 14461, 14449);
UPDATE `quest_details` SET `Emote1`=0, `VerifiedBuild`=46366 WHERE `ID`=744; -- Preparation for Ceremony
UPDATE `quest_details` SET `Emote1`=1, `Emote2`=5, `EmoteDelay2`=2000, `EmoteDelay3`=1000, `VerifiedBuild`=46366 WHERE `ID`=833; -- A Sacred Burial
UPDATE `quest_details` SET `Emote1`=5, `Emote2`=1, `Emote3`=1, `Emote4`=1, `VerifiedBuild`=46366 WHERE `ID`=11129; -- Kyle's Gone Missing!
UPDATE `quest_details` SET `Emote1`=2, `Emote2`=1, `Emote3`=1, `VerifiedBuild`=46366 WHERE `ID`=743; -- Dangers of the Windfury
UPDATE `quest_details` SET `Emote1`=0, `VerifiedBuild`=46366 WHERE `ID`=749; -- The Ravaged Caravan
UPDATE `quest_details` SET `Emote1`=0, `VerifiedBuild`=46366 WHERE `ID`=761; -- Swoop Hunting


DELETE FROM `creature_queststarter` WHERE (`id`=168628 AND `quest`=27397) OR (`id`=36648 AND `quest`=31036) OR (`id`=3233 AND `quest`=773);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(168628, 27397, 46366), -- Hretar's Task offered Hretar Riverspeaker
(36648, 31036, 46366), -- Enemies Below offered Baine Bloodhoof
(3233, 773, 46366); -- Rite of Wisdom offered Lorekeeper Raintotem

UPDATE `creature_queststarter` SET `VerifiedBuild`=46366 WHERE (`id`=38314 AND `quest` IN (24571,24570)) OR (`id`=37570 AND `quest`=24565) OR (`id`=37516 AND `quest`=24543) OR (`id`=37515 AND `quest` IN (24542,24539)) OR (`id`=11857 AND `quest` IN (24534,24525,24529)) OR (`id`=37154 AND `quest` IN (24519,24517)) OR (`id`=37138 AND `quest` IN (24514,24515)) OR (`id`=37136 AND `quest`=24513) OR (`id`=37153 AND `quest` IN (24512,25284)) OR (`id`=37137 AND `quest`=24505) OR (`id`=37135 AND `quest`=24504) OR (`id`=49750 AND `quest`=51443) OR (`id`=36648 AND `quest` IN (26397,24540)) OR (`id`=2995 AND `quest`=6364) OR (`id`=51639 AND `quest`=27280) OR (`id`=8359 AND `quest`=6363) OR (`id`=37024 AND `quest` IN (24550,24524,24523)) OR (`id`=2987 AND `quest`=744) OR (`id`=3233 AND `quest`=833) OR (`id`=3054 AND `quest`=20441) OR (`id`=2948 AND `quest` IN (24457,24456,24441,24440,20440)) OR (`id`=23618 AND `quest`=11129) OR (`id`=2988 AND `quest` IN (26179,26180,749)) OR (`id`=2985 AND `quest`=743) OR (`id`=36644 AND `quest` IN (14491,14438,24459)) OR (`id`=2947 AND `quest`=761) OR (`id`=40809 AND `quest`=6362) OR (`id`=3079 AND `quest`=6361) OR (`id`=3055 AND `quest`=26188) OR (`id`=36803 AND `quest`=24215) OR (`id`=2981 AND `quest` IN (23733,24861,14449)) OR (`id`=36694 AND `quest` IN (14460,14459,14461,14456,14455)) OR (`id`=2980 AND `quest` IN (14458,24852,14452));

DELETE FROM `creature_questender` WHERE (`id`=168628 AND `quest`=27280) OR (`id`=2994 AND `quest`=773);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(168628, 27280, 46366), -- The Riverspeaker Calls ended by Hretar Riverspeaker
(2994, 773, 46366); -- Rite of Wisdom ended by Ancestral Spirit


UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3426; -- 3426 (Zhevra Charger)
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=11858; -- 11858 (Grundig Darkcloud)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=11912; -- 11912 (Grimtotem Brute)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=11913; -- 11913 (Grimtotem Sorcerer)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=4008; -- 4008 (Cliff Stormer)
UPDATE `creature_template_addon` SET `auras`='19514' WHERE `entry`=11910; -- 11910 (Grimtotem Ruffian) - Lightning Shield
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=5774; -- 5774 (Riding Wolf)
UPDATE `creature_template_addon` SET `bytes2`=1, `auras`='166615' WHERE `entry`=3939; -- 3939 (Razormane Wolf) - Pet Active
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3265; -- 3265 (Razormane Hunter)
UPDATE `creature_template_addon` SET `bytes1`=0, `bytes2`=1 WHERE `entry`=25081; -- 25081 (Grunt Ounda)
UPDATE `creature_template_addon` SET `visibilityDistanceType`=3 WHERE `entry`=54870; -- 54870 (General Nazgrim) - Generic Quest Invisibility 17
UPDATE `creature_template_addon` SET `visibilityDistanceType`=3 WHERE `entry`=14720; -- 14720 (High Overlord Saurfang)
UPDATE `creature_template_addon` SET `visibilityDistanceType`=3 WHERE `entry`=134711; -- 134711 (Lady Sylvanas Windrunner)
UPDATE `creature_template_addon` SET `bytes1`=1 WHERE `entry`=88701; -- 88701 (Grunt Meena)
UPDATE `creature_template_addon` SET `auras`='79849 56384' WHERE `entry`=168626; -- 168626 (Feenix Arcshine) - Molten Armor, Arcane Momentum
UPDATE `creature_template_addon` SET `bytes2`=256 WHERE `entry`=46667; -- 46667 (Blademaster Ronakada) - Horde Banner
UPDATE `creature_template_addon` SET `bytes1`=0 WHERE `entry`=65060; -- 65060 (Blue Dragon Turtle)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=12922; -- 12922 (Imp Minion)
UPDATE `creature_template_addon` SET `bytes1`=0 WHERE `entry`=65058; -- 65058 (Black Dragon Turtle)
UPDATE `creature_template_addon` SET `bytes1`=0 WHERE `entry`=65061; -- 65061 (Brown Dragon Turtle)
UPDATE `creature_template_addon` SET `bytes1`=50331648 WHERE `entry`=65065; -- 65065 (Red Dragon Turtle)
UPDATE `creature_template_addon` SET `bytes1`=1 WHERE `entry`=68869; -- 68869 (Luo Luo)
UPDATE `creature_template_addon` SET `bytes1`=50331648 WHERE `entry`=65071; -- 65071 (Great Green Dragon Turtle)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=144318; -- 144318 (Mag'har Warrior)
UPDATE `creature_template_addon` SET `bytes1`=0, `bytes2`=1 WHERE `entry`=25080; -- 25080 (Grunt Umgor)
UPDATE `creature_template_addon` SET `visibilityDistanceType`=3 WHERE `entry`=52810; -- 52810 (Toy Cart Bunny) - Ride Vehicle Hardcoded, Toy Cart Contents, Freeze Anim, Handle State
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=44158; -- 44158 (Orgrimmar Skyway Peon)
UPDATE `creature_template_addon` SET `emote`=0 WHERE `entry`=133114; -- 133114 (Uros Hardhoof)
UPDATE `creature_template_addon` SET `emote`=0 WHERE `entry`=133236; -- 133236 (Layla Stonebreaker)
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=29929; -- 29929 (Mechano-Hog)
UPDATE `creature_template_addon` SET `bytes1`=0 WHERE `entry`=7311; -- 7311 (Uthel'nay)
UPDATE `creature_template_addon` SET `bytes1`=3, `auras`='55474' WHERE `entry`=44978; -- 44978 (Sesebi) - Cosmetic - Sleep Zzz
UPDATE `creature_template_addon` SET `bytes1`=0 WHERE `entry`=45029; -- 45029 (Witch Doctor Umbu)
UPDATE `creature_template_addon` SET `aiAnimKit`=1551 WHERE `entry`=133276; -- 133276 (Bristle Whisker Catfish) - Carp Area Check, Carp
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3110; -- 3110 (Dreadmaw Crocolisk)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3245; -- 3245 (Ornery Plainstrider)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3282; -- 3282 (Venture Co. Mercenary)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3255; -- 3255 (Sunscale Screecher)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3234; -- 3234 (Lost Barrens Kodo)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=4127; -- 4127 (Hecklefang Hyena)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3244; -- 3244 (Greater Plainstrider)
UPDATE `creature_template_addon` SET `bytes1`=262144, `bytes2`=1, `auras`='119073' WHERE `entry`=3248; -- 3248 (Barrens Giraffe) - Permanent Feign Death (Stun, Untrackable)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3236; -- 3236 (Barrens Kodo)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3242; -- 3242 (Zhevra Runner)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=3246; -- 3246 (Fleeting Plainstrider)
UPDATE `creature_template_addon` SET `bytes1`=3, `bytes2`=1 WHERE `entry`=3425; -- 3425 (Savannah Prowler)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=37170; -- 37170 (Hunter Hill Scout)
UPDATE `creature_template_addon` SET `auras`='79976' WHERE `entry`=51143; -- 51143 (Sunwalker Jo'hsu) - Retribution Aura
UPDATE `creature_template_addon` SET `auras`='79962' WHERE `entry`=43001; -- 43001 (Sunwalker Reha) - Seal of Righteousness
UPDATE `creature_template_addon` SET `auras`='98892 61573' WHERE `entry`=31146; -- 31146 (Raider's Training Dummy) - Training Dummy Marker, Banner of the Alliance
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=133218; -- 133218 (Highmountain Brave)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=36648; -- 36648 (Baine Bloodhoof)
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=25075; -- 25075 (Zeppelin Controls)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=2965; -- 2965 (Windfury Matriarch)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=2964; -- 2964 (Windfury Sorceress)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=10636; -- 10636 (Pack Kodo)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=2971; -- 2971 (Taloned Swoop)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=2960; -- 2960 (Prairie Wolf Alpha)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=2972; -- 2972 (Kodo Calf)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=2974; -- 2974 (Kodo Matriarch)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=2973; -- 2973 (Kodo Bull)
UPDATE `creature_template_addon` SET `bytes2`=1, `auras`='5680' WHERE `entry`=2977; -- 2977 (Venture Co. Taskmaster) - Torch Burn
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=2976; -- 2976 (Venture Co. Laborer)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=2963; -- 2963 (Windfury Wind Witch)
UPDATE `creature_template_addon` SET `bytes2`=1, `auras`='19514' WHERE `entry`=2962; -- 2962 (Windfury Harpy) - Lightning Shield
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=5786; -- 5786 (Snagglespear)
UPDATE `creature_template_addon` SET `bytes2`=2 WHERE `entry`=2951; -- 2951 (Palemane Poacher)
UPDATE `creature_template_addon` SET `bytes1`=1 WHERE `entry`=10600; -- 10600 (Thontek Rumblehoof)
UPDATE `creature_template_addon` SET `bytes1`=1 WHERE `entry`=10599; -- 10599 (Hulfnar Stonetotem)
UPDATE `creature_template_addon` SET `bytes1`=0, `bytes2`=257 WHERE `entry`=10721; -- 10721 (Novice Warrior)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=2949; -- 2949 (Palemane Tanner)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=7975; -- 7975 (Camp Narache Brave) - Invisibility and Stealth Detection
UPDATE `creature_template_addon` SET `auras`='42345' WHERE `entry`=37156; -- 37156 (Third Trough) - Cosmetic - Flame Patch
UPDATE `creature_template_addon` SET `auras`='42345' WHERE `entry`=37155; -- 37155 (Second Trough) - Cosmetic - Flame Patch
UPDATE `creature_template_addon` SET `auras`='42345' WHERE `entry`=36727; -- 36727 (First Trough) - Cosmetic - Flame Patch
UPDATE `creature_template_addon` SET `bytes1`=0 WHERE `entry`=38345; -- 38345 (Captured Brave)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=2966; -- 2966 (Young Battleboar)
UPDATE `creature_template_addon` SET `bytes2`=1 WHERE `entry`=2955; -- 2955 (Plainstrider)
UPDATE `creature_template_addon` SET `bytes1`=8 WHERE `entry`=37724; -- 37724 (Seer Ravenfeather)
UPDATE `creature_template_addon` SET `bytes1`=8 WHERE `entry`=37737; -- 37737 (Sunwalker Helaku)
UPDATE `creature_template_addon` SET `bytes1`=8 WHERE `entry`=3060; -- 3060 (Gart Mistrunner)
UPDATE `creature_template_addon` SET `bytes1`=8 WHERE `entry`=3059; -- 3059 (Harutt Thunderhorn)
UPDATE `creature_template_addon` SET `bytes1`=8 WHERE `entry`=3061; -- 3061 (Lanka Farshot)


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (37536,9983,44286,7714,11857,3705,37515,44296,37516,37517,37220,51859,37171,37135,172387,37062,36834,197261,197248,36790));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(37536, 0, 0, 0, 16, 46366),
(9983, 0, 0, 0, 16, 46366),
(44286, 0, 0, 0, 16, 46366),
(7714, 0, 0, 0, 16, 46366),
(11857, 0, 0, 0, 16, 46366),
(3705, 0, 0, 0, 16, 46366),
(37515, 0, 0, 0, 16, 46366),
(44296, 0, 0, 0, 16, 46366),
(37516, 0, 0, 0, 16, 46366),
(37517, 0, 0, 0, 16, 46366),
(37220, 0, 0, 0, 2108, 46366),
(51859, 0, 0, 0, 2108, 46366),
(37171, 0, 0, 0, 16, 46366),
(37135, 0, 0, 0, 16, 46366),
(172387, 0, 0, 0, 824, 46366),
(37062, 0, 0, 0, 71, 46366),
(36834, 0, 0, 0, 71, 46366),
(197261, 0, 0, 0, 71, 46366),
(197248, 0, 0, 0, 872, 46366),
(36790, 0, 0, 0, 71, 46366);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46366 WHERE (`DifficultyID`=0 AND `Entry` IN (37570,38314,37529,37513,44265,37103,37082,5863,37207,3240,62130,37511,37088,3261,37212,38554,37092,37093,37091,3426,37090,37548,37487,44299,39210,44219,44346,38383,38379,37224,62127,37738,44294,37166,37165,49725,37084,37086,44297,44285,37138,39340,37154,4049,44349,44270,44277,37136,37157,37167,34848,37180,3411,12816,4197,42023,3995,35139,41870,11858,11912,11913,61677,41370,41360,4008,11910,50825,34886,49779,11911,34894,38385,38378,37085,38384,3273,3272,5865,3428,3483,3488,3477,5774,3479,3478,34545,3939,3265,3271,3269,34504,14873,44167,116079,116078,116077,50870,115286,3256,24930,24926,25081,133108,133153,42637,54870,14720,135205,134711,3347,3358,3357,5812,4043,7231,3409,7793,7792,3360,7230,7790,3361,61367,168619,168598,174164,171691,168551,168626,13842,168623,3354,3353,34955,49573,144322,5029,46985,2756,46667,65063,65060,65058,35364,168553,168628,168597,168596,5034,144321,169166,16869,16868,65061,171689,65065,69333,168621,66022,68869,70301,65074,65008,62445,175084,65071,42709,65076,176261,143845,42638,15186,65078,7951,144320,46642,43239,3332,3333,144318,46619,46620,46618,46622,16076,16069,46621,3359,62193,145418,144315,158789,180684,163635,163634,160452,161203,3348,25080,3350,3351,24927,24924,46742,46741,6986,24931,6987,24929,3345,11066,5875,88705,88704,141528,130911,12136,175135,23635,133114,133236,133270,144319,45211,3400,11814,53081,7567,7565,7562,16926,16909,30706,9988,30723,7311,3405,3404,44978,45095,45093,3399,45086,45082,45081,44975,45029,45023,45094,45139,45025,133228,45138,45137,133276,8404,45008,5640,3110,3286,3283,43982,43957,43953,43945,40558,34698,34674,3442,3245,6606,5835,52357,5836,3445,52356,52171,3284,3282,3255,3234,4127,71005,71006,34503,71000,44166,71002,52386,52338,3244,52526,52460,52456,34261,3501,34259,52457,52448,52227,52207,71010,3248,3236,73590,60736,71012,3242,9990,3389,3415,3246,34641,34640,3425,62131,62129,37083,37216,37161,37170,37160,34855,37153,37137,37204,37159,43795,6393,51143,8664,43001,5599,3441,34978,10086,34976,4943,37058,36931,37185,37175,37178,12383,8401,3018,118512,15164,43881,3048,43883,5957,3047,43892,51639,3044,62462,51638,3419,51640,34766,5906,3046,30724,30709,2798,3049,3045,3447,5543,10881,14440,133218,3020,3019,3021,8398,4721,8356,2996,3028,3083,3029,3027,3026,3024,3023,3025,36648,3022,3014,3016,3009,11047,3013,3010,96470,133271,3068,43976,43975,43974,43973,3056,36832,2994,3232,40995,2965,2964,3233,2987,10636,37024,3052,5807,3566,2971,2960,2972,2974,36845,36870,36869,36828,36827,3220,63607,63067,23618,3219,2973,3051,2979,2977,2976,2978,2969,3218,2963,2962,53561,2988,5786,36825,2951,3217,5938,5940,3065,3688,6290,3067,3069,3215,3079,3081,3077,3076,3080,3055,3078,47419,3224,3054,3212,3222,11407,14550,12355,12354,34155,3690,40809,3685,14549,14542,5939,11944,51637,10050,6776,43015,6747,36644,43013,23616,3064,2947,10600,2985,2948,3884,10599,10721,3063,3223,3221,2950,2949,3211,2970,2956,2958,149084,127802,36803,7975,3214,36712,43599,89713,43720,37156,37155,36727,36696,36708,44927,36694,106,36697,2952,38345,2966,2980,37162,3209,3210,3213,2955,2981,37724,63327,3075,3074,36942,37737,3062,3060,3059,45199,3883,38438,3073,3072,36943,44848,3061,62176,4166,2959,8358,10054,8357,6746,8362,5189,8363,2997,8364,5054,51503,3035,3004,7089,3015,3011,3008,3005,47589,3978,11071,11051,14441,3050,3017,3012,2957,3007,3095,3093,3092,11084,52657,52658,52651,6410,3003,3002,3001,2998,8360,8674,51372,10278,14442,52655,8359,2999,8361,2995,50483,8722));
UPDATE `creature_template_scaling` SET `ContentTuningID`=866, `VerifiedBuild`=46366 WHERE (`Entry`=72934 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `ContentTuningID`=866 WHERE (`Entry`=12922 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `LevelScalingDeltaMin`=0, `LevelScalingDeltaMax`=0, `VerifiedBuild`=46366 WHERE (`Entry`=63068 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `ContentTuningID`=71, `VerifiedBuild`=46366 WHERE (`Entry`=43677 AND `DifficultyID`=0);

DELETE FROM `creature_model_info` WHERE `DisplayID`=109480;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(109480, 0.722000002861022949, 3, 0, 46366);

UPDATE `creature_model_info` SET `VerifiedBuild`=46366 WHERE `DisplayID` IN (31838, 1941, 4647, 6104, 4270, 6100, 1977, 1538, 45896, 1342, 4434, 30512, 18315, 30613, 3843, 23783, 8149, 16870, 30614, 31000, 2187, 2956, 19736, 30165, 30612, 33781, 32451, 33731, 33796, 31079, 31076, 2955, 33773, 30552, 30553, 30551, 788, 1534, 33779, 33775, 30527, 33211, 30544, 3897, 33801, 33764, 29357, 33769, 29355, 29356, 4839, 30525, 30545, 30555, 30554, 30556, 29358, 1858, 30546, 4357, 12709, 4105, 32651, 4104, 32554, 32555, 37202, 32556, 11880, 11877, 11887, 11883, 11874, 11881, 32432, 11875, 32430, 11791, 11886, 11876, 11888, 32433, 11884, 32439, 11878, 32431, 1537, 11882, 11879, 46987, 22255, 22318, 11885, 94287, 32603, 30573, 30559, 1283, 31080, 9443, 9442, 4092, 3872, 1866, 3866, 2328, 3869, 3865, 1253, 6093, 4261, 4263, 8649, 74037, 74036, 74038, 74039, 74035, 4442, 22745, 22740, 82725, 70260, 32981, 42562, 14732, 66644, 81857, 1368, 1380, 1379, 4351, 4612, 6006, 4363, 6854, 6843, 1382, 6005, 6873, 1383, 13843, 1374, 29496, 36545, 86328, 45320, 46093, 35216, 43720, 43718, 43717, 29795, 96885, 96916, 43669, 96364, 45319, 45170, 43719, 72325, 43721, 47465, 96913, 44740, 46986, 47982, 45862, 43724, 45863, 43722, 33032, 43725, 32982, 15369, 43726, 15352, 35198, 35301, 1332, 1333, 35184, 35185, 35183, 35187, 15988, 15984, 35186, 42384, 86327, 93637, 101799, 85697, 79390, 99821, 99819, 1372, 22743, 22739, 35244, 99810, 5769, 22746, 5770, 22744, 1366, 10589, 99461, 61027, 61026, 64307, 81476, 12229, 33699, 38419, 24079, 89803, 24982, 7117, 82732, 82816, 82819, 86335, 93434, 93432, 93422, 2735, 11734, 38008, 81306, 81307, 27252, 32997, 9261, 99511, 6060, 99509, 4358, 34204, 34247, 34245, 2734, 34243, 34242, 34241, 34203, 34222, 34219, 34246, 48528, 34268, 34220, 66298, 34266, 99510, 64304, 48525, 99508, 34206, 3759, 1250, 4473, 7234, 7238, 3910, 37699, 33590, 33587, 33582, 29351, 29336, 7054, 3912, 3918, 6076, 7047, 4593, 4098, 7049, 7035, 37798, 7233, 3919, 7237, 1747, 48620, 48622, 2710, 48592, 48865, 48589, 48590, 48621, 48545, 48547, 48546, 1343, 48544, 48591, 29287, 4198, 4199, 178, 36174, 29806, 11858, 11860, 4264, 4262, 23873, 37911, 29224, 37808, 48641, 48643, 2193, 1453, 48640, 48642, 48631, 48630, 48629, 48632, 6087, 9574, 3847, 1284, 1043, 42362, 2570, 30558, 4840, 30557, 30574, 30572, 30560, 59358, 30550, 30549, 59359, 59356, 30568, 30543, 30526, 30569, 30548, 29249, 5371, 37013, 7936, 33524, 3550, 4520, 29503, 9337, 29502, 2951, 30876, 7629, 2086, 74863, 83225, 33542, 6058, 33544, 4665, 2134, 33550, 37563, 2139, 42497, 37562, 1814, 37564, 29398, 4542, 2137, 27289, 27257, 2131, 2135, 2138, 4383, 3371, 10188, 14494, 83226, 2085, 2084, 2089, 10689, 2738, 7621, 2104, 2088, 2140, 2120, 2095, 2107, 2097, 2125, 2111, 2124, 2119, 2099, 2108, 10577, 2091, 2116, 64916, 82820, 82821, 83228, 1961, 720, 30875, 3824, 32244, 3817, 4516, 7933, 30466, 3823, 1973, 1056, 1451, 10918, 3785, 3787, 549, 3788, 3786, 30394, 30395, 30393, 3782, 45900, 3867, 21641, 3781, 7134, 7245, 3909, 7246, 3903, 1122, 7247, 355, 3779, 1351, 10877, 1624, 2237, 30392, 488, 30399, 3780, 4604, 4608, 3811, 4299, 4992, 3795, 3796, 3777, 10182, 3806, 3802, 3800, 3804, 1678, 3803, 35612, 10181, 3814, 3775, 4265, 11054, 14579, 12246, 11641, 12241, 4298, 32080, 4300, 14578, 14349, 4605, 11902, 37561, 9269, 5507, 33509, 5486, 30271, 33510, 3820, 3821, 9935, 3822, 10052, 10049, 3826, 3807, 9936, 10050, 3794, 3784, 3783, 3774, 1229, 1220, 7116, 1100, 10153, 90192, 30322, 7115, 3778, 61763, 26685, 1274, 34188, 31081, 179, 6090, 30625, 8869, 3808, 33412, 3770, 3771, 1547, 30575, 3776, 1042, 34148, 33413, 34146, 3809, 30729, 42945, 34147, 3801, 3798, 30626, 30447, 10180, 3819, 3793, 34145, 3812, 3799, 3797, 1967, 3019, 3810, 45958, 43948, 7622, 9272, 7620, 5487, 7626, 3129, 7628, 2110, 7627, 3002, 1059, 2126, 5847, 2114, 2101, 2094, 2093, 35712, 4518, 37343, 10614, 10586, 14495, 4517, 2117, 2118, 1221, 2127, 2132, 2129, 2133, 10617, 37344, 9391, 38010, 38011, 38006, 5372, 2109, 2092, 2083, 2090, 9392, 7624, 7999, 37342, 9742, 14496, 38009, 7623, 2100, 7625, 2098, 37022, 7998);
UPDATE `creature_model_info` SET `BoundingRadius`=0.459251970052719116, `CombatReach`=0.836734712123870849, `VerifiedBuild`=46366 WHERE `DisplayID`=377;
UPDATE `creature_model_info` SET `BoundingRadius`=0.190674349665641784, `CombatReach`=0.100000001490116119, `VerifiedBuild`=46366 WHERE `DisplayID`=30988;
UPDATE `creature_model_info` SET `BoundingRadius`=0.698000013828277587, `CombatReach`=3, `VerifiedBuild`=46366 WHERE `DisplayID` IN (30595, 30623, 33777, 30624, 30596, 30524, 37400);
UPDATE `creature_model_info` SET `BoundingRadius`=0.722000002861022949, `CombatReach`=3, `VerifiedBuild`=46366 WHERE `DisplayID` IN (9256, 30593, 33776, 6550, 30594, 11790, 2141);
UPDATE `creature_model_info` SET `BoundingRadius`=0.372000008821487426, `CombatReach`=1.5, `VerifiedBuild`=46366 WHERE `DisplayID` IN (30561, 96914, 1375, 96903, 86341, 100444, 86324, 86334);
UPDATE `creature_model_info` SET `BoundingRadius`=0.347222000360488891, `CombatReach`=1.5, `VerifiedBuild`=46366 WHERE `DisplayID`=96910;
UPDATE `creature_model_info` SET `BoundingRadius`=0.236000001430511474, `CombatReach`=1.5, `VerifiedBuild`=46366 WHERE `DisplayID`=96906;
UPDATE `creature_model_info` SET `BoundingRadius`=0.382999986410140991, `CombatReach`=1.5, `VerifiedBuild`=46366 WHERE `DisplayID` IN (98725, 96905);
UPDATE `creature_model_info` SET `BoundingRadius`=0.402149975299835205, `CombatReach`=1.574999928474426269, `VerifiedBuild`=46366 WHERE `DisplayID`=97757;
UPDATE `creature_model_info` SET `BoundingRadius`=0.305999994277954101, `CombatReach`=1.5, `VerifiedBuild`=46366 WHERE `DisplayID` IN (96884, 96915, 99385, 94597, 7244);
UPDATE `creature_model_info` SET `BoundingRadius`=3.124989748001098632, `CombatReach`=2, `VerifiedBuild`=46366 WHERE `DisplayID`=52707;
UPDATE `creature_model_info` SET `BoundingRadius`=0.271400004625320434, `CombatReach`=1.724999904632568359, `VerifiedBuild`=46366 WHERE `DisplayID`=85555;
UPDATE `creature_model_info` SET `BoundingRadius`=0.367200016975402832, `CombatReach`=1.80000007152557373, `VerifiedBuild`=46366 WHERE `DisplayID` IN (94596, 94598);
UPDATE `creature_model_info` SET `DisplayID_Other_Gender`=0, `VerifiedBuild`=46366 WHERE `DisplayID` IN (3913, 3904);
UPDATE `creature_model_info` SET `BoundingRadius`=0.465000003576278686, `CombatReach`=1.875, `VerifiedBuild`=46366 WHERE `DisplayID`=48623;
UPDATE `creature_model_info` SET `BoundingRadius`=0.866400063037872314, `CombatReach`=3.60000014305114746, `VerifiedBuild`=46366 WHERE `DisplayID`=30411;
UPDATE `creature_model_info` SET `BoundingRadius`=2.416985750198364257, `CombatReach`=2.849999904632568359, `VerifiedBuild`=46366 WHERE `DisplayID`=30562;
UPDATE `creature_model_info` SET `BoundingRadius`=0.29759112000465393, `CombatReach`=0.524999976158142089, `VerifiedBuild`=46366 WHERE `DisplayID`=28502;
UPDATE `creature_model_info` SET `BoundingRadius`=0.669887661933898925, `VerifiedBuild`=46366 WHERE `DisplayID`=10869;
UPDATE `creature_model_info` SET `BoundingRadius`=0.582511007785797119, `VerifiedBuild`=46366 WHERE `DisplayID`=1255;
UPDATE `creature_model_info` SET `BoundingRadius`=0.340000003576278686, `CombatReach`=2.125, `VerifiedBuild`=46366 WHERE `DisplayID`=1454;
UPDATE `creature_model_info` SET `BoundingRadius`=0.347999989986419677, `CombatReach`=1, `VerifiedBuild`=46366 WHERE `DisplayID`=30162;
UPDATE `creature_model_info` SET `BoundingRadius`=0.620783627033233642, `VerifiedBuild`=46366 WHERE `DisplayID`=1217;
UPDATE `creature_model_info` SET `BoundingRadius`=0.200000002980232238, `CombatReach`=1.25, `VerifiedBuild`=46366 WHERE `DisplayID`=1230;
UPDATE `creature_model_info` SET `BoundingRadius`=1.790546894073486328, `CombatReach`=2, `VerifiedBuild`=46366 WHERE `DisplayID`=26566;
UPDATE `creature_model_info` SET `BoundingRadius`=1.597905278205871582, `CombatReach`=2.25, `VerifiedBuild`=46366 WHERE `DisplayID`=4747;
UPDATE `creature_model_info` SET `BoundingRadius`=1.331587791442871093, `VerifiedBuild`=46366 WHERE `DisplayID`=6109;
UPDATE `creature_model_info` SET `BoundingRadius`=0.852216184139251708, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46366 WHERE `DisplayID`=52724;
UPDATE `creature_model_info` SET `BoundingRadius`=1.316326498985290527, `CombatReach`=1.096938729286193847 WHERE `DisplayID`=643;


DELETE FROM `creature_template` WHERE `entry` IN (197261 /*Kodohirte*/, 197248 /*Ungehobeltes Kodokalb*/);
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(197261, 0, 30, 30, 104, 0, 1, 1.142857193946838378, 2000, 0, 768, 2048, 0, 0, 0, 1), -- Kodohirte
(197248, 0, 60, 60, 35, 0, 1, 0.857142865657806396, 2000, 0, 262912, 2048, 0, 0, 0, 1); -- Ungehobeltes Kodokalb


DELETE FROM `creature_template` WHERE `entry` IN (197248 /*Ungehobeltes Kodokalb*/, 197261 /*Kodohirte*/);
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `unit_class`, `WidgetSetID`, `WidgetSetUnitConditionID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `VerifiedBuild`) VALUES
(197248, 0, 0, 'Ungehobeltes Kodokalb', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 100, 225580, 46366), -- Ungehobeltes Kodokalb
(197261, 0, 0, 'Kodohirte', '', NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 225593, 46366); -- Kodohirte


DELETE FROM `creature_template_model` WHERE (`Idx`=0 AND `CreatureID` IN (197261,197248));
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(197261, 0, 109480, 1, 1, 46366), -- Kodohirte
(197248, 0, 1230, 0.5, 1, 46366); -- Ungehobeltes Kodokalb

UPDATE `creature_template_model` SET `VerifiedBuild`=46366 WHERE (`Idx`=0 AND `CreatureID` IN (38314,37570,37536,37529,44265,37513,37103,37082,37207,5863,3240,62130,37511,37088,3261,37212,38554,37092,44286,9983,7714,11857,44296,37517,37516,37515,3705,37220,37093,37091,3426,37090,37548,37487,44299,51859,44219,39210,44346,38383,38379,37224,62127,37738,44294,37166,37165,49725,37084,37086,44297,44285,39340,37138,37154,4049,44349,44270,37171,44277,37157,37136,37167,37180,34848,37135,3411,12816,4197,42023,3995,41870,35139,11858,11913,11912,61677,41370,4008,41360,11910,50825,49779,34886,11911,34894,38385,38378,37085,38384,3273,3272,5865,3428,5774,3488,3483,3479,3477,3478,34545,3939,3271,3265,3269,34504,14873,44167,116079,116078,116077,115286,50870,3256,25081,24930,24926,172387,133108,133153,149404,54870,42637,14720,135205,134711,3347,5812,3358,3357,7793,7792,7231,4043,3409,7790,7230,3360,3361,168619,61367,174164,171691,168598,144322,35364,46985,3353,5029,168626,46667,72934,34955,13842,168551,2756,49573,168623,3354,171689,169166,168628,168597,168596,168553,144321,16869,16868,5034,168621,70301,69333,68869,66022,65008,62445,176261,175084,42709,144320,143845,46642,42638,15186,7951,43239,3333,3332,144318,46622,46620,46619,46618,46621,16076,16069,62193,3359,180684,163635,163634,160452,158789,145418,144315,161203,3348,25080,24927,24924,3351,3350,46742,46741,24931,6986,24929,6987,11066,3345,5875,88705,88704,141528,130911,12136,175135,23635,133236,133114,133270,144319,3399,44975,7311,9988,45081,45095,7567,45211,8404,45139,30723,45086,45094,53081,133276,45029,3405,16926,7562,11814,45023,3400,3404,45025,45093,16909,7565,45137,45082,44978,45138,30706,133228,45008,5640,3110,3286,3283,43982,43957,43953,43945,40558,34698,34674,3442,3245,6606,5835,52357,5836,52356,3445,52171,3284,3282,3255,3234,71005,4127,71006,71002,71000,44166,34503,52386,52338,3244,52526,52460,52456,34261,34259,3501,52457,52448,52227,52207,71010,3248,3236,73590,60736,71012,3242,9990,3389,3415,3246,34641,34640,3425,62131,62129,37083,37216,37170,37161,37160,34855,37153,37137,37204,37159,43795,51143,43001,8664,6393,5599,3441,34978,10086,34976,4943,37062,37058,37185,37178,37175,36931,12383,8401,118512,15164,3018,43881,43892,43883,5957,3048,3047,62462,51639,3044,51638,51640,34766,3419,30724,30709,5906,3049,3046,3045,2798,5543,3447,10881,14440,133218,3020,3019,8398,8356,4721,3021,2996,3083,3029,3028,3027,3026,3024,3023,3025,36648,3022,96470,11047,3016,3014,3013,3010,3009,133271,3068,43976,43975,43974,43973,3056,36832,2994,40995,2965,2964,3232,3233,37024,10636,3052,2987,5807,3566,2971,2960,2972,2974,36834,36870,36845,36869,36828,36827,3220,63607,63068,63067,23618,23622,3219,2973,3051,2979,2977,2976,2978,2969,3218,2963,2962,53561,2988,43677,5786,36825,2951,3217,5938,5940,3065,6290,3688,3069,3067,3215,47419,3081,3080,3079,3078,3077,3076,3055,3224,3054,3212,11407,3222,40809,12355,12354,3690,3685,51637,43015,11944,10050,6776,6747,5939,43013,36644,23616,3064,2947,10600,2985,3884,2948,10721,10599,3063,3223,3221,2950,2949,3211,2970,2956,36790,2958,149084,127802,36803,7975,3214,36712,43599,89713,43720,37156,37155,36727,36696,36708,44927,36694,106,36697,38345,2966,2952,37162,2980,3209,3210,2955,3213,36942,63327,45199,44848,38438,37737,37724,36943,3883,3075,3074,3073,3072,3062,3061,3060,3059,2981,62176,4166,2959,10054,8358,8357,6746,51503,8364,8363,8362,5189,5054,2997,3035,47589,14441,11084,11071,3012,3011,3007,2957,3008,3093,7089,3017,3978,3092,11051,3095,3050,3005,3004,3015,8722,2995,52658,50483,8674,52657,51372,3003,3002,2998,2999,8361,14442,52655,52651,10278,8360,8359,6410,3001,33030,76084,71486,67437,66177,66176,66150,66062,66063,66060,65078,65076,65074,65072,65071,65065,65063,65061,65060,65058,65018,65017,65009,65007,65006,64977,63553,63552,62809,62106,61809,61201,60941,59101,53276,52672,50269,49488,47653,47652,47352,38778,35445,35148,34187,34156,356,34155,33414,32944,32640,32562,32336,32205,32158,32157,31902,31854,31852,31850,31697,31717,31695,29596,27707,26131,24653,24654,24488,24368,23459,23457,23458,23460,23456,23455,22978,22977,22975,22976,22958,22514,22513,22512,22510,20225,20223,20224,20222,20220,20217,20150,20152,20151,20072,19280,19281,14744,14541,14539,14540,14549,14550,14542,14544,14543,14545,14329,14331,14330,14333,11689,12149,11155,11154,7708,7707,6075,4272,4271,39209,31857,358)) OR (`Idx`=1 AND `CreatureID` IN (37529,38554,37220,37093,37487,37224,37738,37166,37167,34848,41870,11913,11912,41360,11910,11911,34894,38385,5774,149404,61367,144322,46985,72934,144321,65008,144320,144318,144315,144319,3286,3283,52357,52356,3284,3282,71006,71002,71000,52386,52338,52526,34261,3501,52457,71010,3248,73590,60736,71012,34641,37216,37170,37161,37160,34855,37204,37159,37175,133218,133271,2972,36870,36869,36827,2979,2977,2976,2978,43677,36825,10721,127802,7975,37156,37155,36727,38345,37162,36942,45199,38438,4166,51372)) OR (`Idx`=2 AND `CreatureID` IN (38554,37220,37093,37487,37738,37167,34848,41870,11913,11912,41360,11910,11911,5774,149404,61367,65008,3286,3283,52357,52356,3284,3282,71006,71002,71000,52386,52338,34261,3501,71010,3248,73590,71012,37170,37161,34855,37175,133218,133271,2979,2977,2976,2978,10721,7975,38345,36942,45199,4166,51372)) OR (`Idx`=3 AND `CreatureID` IN (37220,34848,11913,11912,41360,11910,11911,5774,149404,61367,65008,3283,52356,3284,71006,71002,71000,34261,3501,71010,73590,71012,37170,37175,133218,133271,2979,2977,2976,2978,10721,7975,36942,45199,51372));

DELETE FROM `creature_questitem` WHERE (`CreatureEntry`=37171 AND `Idx`=0);
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(37171, 0, 192493, 46366); -- Escaped Stonetalon Prisoner


DELETE FROM `creature_queststarter` WHERE (`id`=168628 AND `quest`=27397) OR (`id`=36648 AND `quest`=31036) OR (`id`=3233 AND `quest`=773);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(168628, 27397, 46366), -- Hretar's Task offered Hretar Riverspeaker
(36648, 31036, 46366), -- Enemies Below offered Baine Bloodhoof
(3233, 773, 46366); -- Rite of Wisdom offered Lorekeeper Raintotem

UPDATE `creature_queststarter` SET `VerifiedBuild`=46366 WHERE (`id`=38314 AND `quest` IN (24571,24570)) OR (`id`=37570 AND `quest`=24565) OR (`id`=37516 AND `quest`=24543) OR (`id`=37515 AND `quest` IN (24542,24539)) OR (`id`=11857 AND `quest` IN (24534,24525,24529)) OR (`id`=37154 AND `quest` IN (24519,24517)) OR (`id`=37138 AND `quest` IN (24514,24515)) OR (`id`=37136 AND `quest`=24513) OR (`id`=37153 AND `quest` IN (24512,25284)) OR (`id`=37137 AND `quest`=24505) OR (`id`=37135 AND `quest`=24504) OR (`id`=49750 AND `quest`=51443) OR (`id`=36648 AND `quest` IN (26397,24540)) OR (`id`=2995 AND `quest`=6364) OR (`id`=51639 AND `quest`=27280) OR (`id`=8359 AND `quest`=6363) OR (`id`=37024 AND `quest` IN (24550,24524,24523)) OR (`id`=2987 AND `quest`=744) OR (`id`=3233 AND `quest`=833) OR (`id`=3054 AND `quest`=20441) OR (`id`=2948 AND `quest` IN (24457,24456,24441,24440,20440)) OR (`id`=23618 AND `quest`=11129) OR (`id`=2988 AND `quest` IN (26179,26180,749)) OR (`id`=2985 AND `quest`=743) OR (`id`=36644 AND `quest` IN (14491,14438,24459)) OR (`id`=2947 AND `quest`=761) OR (`id`=40809 AND `quest`=6362) OR (`id`=3079 AND `quest`=6361) OR (`id`=3055 AND `quest`=26188) OR (`id`=36803 AND `quest`=24215) OR (`id`=2981 AND `quest` IN (23733,24861,14449)) OR (`id`=36694 AND `quest` IN (14460,14459,14461,14456,14455)) OR (`id`=2980 AND `quest` IN (14458,24852,14452));

DELETE FROM `creature_questender` WHERE (`id`=168628 AND `quest`=27280) OR (`id`=2994 AND `quest`=773);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(168628, 27280, 46366), -- The Riverspeaker Calls ended by Hretar Riverspeaker
(2994, 773, 46366); -- Rite of Wisdom ended by Ancestral Spirit


DELETE FROM `creature_equip_template` WHERE (`ID`=1 AND `CreatureID` IN (170474,167535));
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(170474, 1, 178492, 0, 0, 178121, 0, 0, 0, 0, 0, 46455), -- Brood Assassin
(167535, 1, 105037, 0, 0, 105037, 0, 0, 0, 0, 0, 46455); -- Chosen Scrapper

UPDATE `creature_equip_template` SET `VerifiedBuild`=46455 WHERE (`ID`=1 AND `CreatureID` IN (163414,169861,164737,164266,171675,163862,167493,174802,171656,168627,168886,168365,168572,168578,169696,168574,159757,171547,171549,164507,168226,163041,168440,175394,166564,170542,163032,161757,162873,166226,168147,169697,161733,166570,175393,166568,170496,173003,161696,173018,173026,172696,171546,164667,164830,169634,166437,157671,167743,160415,167747,167273,161397,161388,160424,167737,167741,175008,167642,161676,165335,167640,175391,171112,165034)) OR (`ID`=2 AND `CreatureID` IN (162813,161398,157671,167641)) OR (`ID`=7 AND `CreatureID`=157671);

DELETE FROM `areatrigger_template` WHERE (`IsServerSide`=0 AND `Id` IN (26127,25667));
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(26127, 0, 0, 4, 15, 15, 0, 0, 0, 0, 0, 0, 46455),
(25667, 0, 0, 2, 20, 20, 0, 0, 0, 0, 0, 0, 46455);



UPDATE `areatrigger_template` SET `VerifiedBuild`=46455 WHERE (`IsServerSide`=0 AND `Id` IN (25853,27318,6212,24531,25527,26126,25156,24302,23286,25115,23583,25854,24450,24257,23388,23736,25319,16552,26196,24072,24417,23453));
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0 WHERE (`Id`=9228 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `VerifiedBuild`=46455 WHERE (`Id`=6212 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Flags`=0, `Data0`=0, `Data1`=0, `Data2`=0, `Data3`=0, `VerifiedBuild`=46455 WHERE (`Id`=4520 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=15, `Data1`=15, `VerifiedBuild`=46455 WHERE (`Id`=25847 AND `IsServerSide`=0);


DELETE FROM `quest_poi` WHERE (`QuestID`=62743 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62743 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(62743, 0, 1, 32, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 46455), -- Decaying Situation
(62743, 0, 0, 31, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 46455); -- Decaying Situation

UPDATE `quest_poi` SET `VerifiedBuild`=46455 WHERE (`QuestID`=58605 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58605 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59836 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59836 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59836 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61667 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61667 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61667 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=57249 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=57249 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=57249 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=58505 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=58505 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=58505 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58505 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=62743 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=62743 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(62743, 1, 0, 2707, -3754, 0, 46455), -- Decaying Situation
(62743, 0, 11, 2623, -4144, 0, 46455), -- Decaying Situation
(62743, 0, 10, 2455, -4011, 0, 46455), -- Decaying Situation
(62743, 0, 9, 2361, -3719, 0, 46455), -- Decaying Situation
(62743, 0, 8, 2414, -3503, 0, 46455), -- Decaying Situation
(62743, 0, 7, 2588, -3265, 0, 46455), -- Decaying Situation
(62743, 0, 6, 2741, -3204, 0, 46455), -- Decaying Situation
(62743, 0, 5, 2826, -3308, 0, 46455), -- Decaying Situation
(62743, 0, 4, 2836, -3569, 0, 46455), -- Decaying Situation
(62743, 0, 3, 2871, -3841, 0, 46455), -- Decaying Situation
(62743, 0, 2, 2941, -3926, 0, 46455), -- Decaying Situation
(62743, 0, 1, 2943, -4069, 0, 46455), -- Decaying Situation
(62743, 0, 0, 2827, -4166, 0, 46455); -- Decaying Situation

UPDATE `quest_poi_points` SET `VerifiedBuild`=46455 WHERE (`QuestID`=58605 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58605 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59836 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59836 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=59836 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61667 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61667 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61667 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=58505 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=58505 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=58505 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=58505 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=58505 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=58505 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=58505 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=58505 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=58505 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=58505 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=58505 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=58505 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=58505 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=58505 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=58505 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=58505 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=58505 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=58505 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=58505 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58505 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=58505 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=58505 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=58505 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=58505 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=58505 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=58505 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=58505 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=58505 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID`=57249;
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(57249, 0, 0, 0, 0, 0, 0, 0, 0, 46455); -- A Timely Invitation


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=1 AND `Entry` IN (166813,170474,168837,168747,165357,169498,170927,164550,168394,164362,168398,172064,168579,43499,168573,169265)) OR (`DifficultyID`=0 AND `Entry` IN (169141,95061,185584,173734,167535,164381,111101));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(166813, 1, 0, 0, 1710, 46455),
(170474, 1, 0, 0, 1710, 46455),
(168837, 1, 0, 0, 1710, 46455),
(168747, 1, 0, 0, 1710, 46455),
(165357, 1, 0, 0, 1710, 46455),
(169498, 1, 0, 0, 1710, 46455),
(170927, 1, 0, 0, 1710, 46455),
(164550, 1, 0, 0, 1710, 46455),
(168394, 1, 0, 0, 1710, 46455),
(164362, 1, 0, 0, 1710, 46455),
(168398, 1, 0, 0, 1710, 46455),
(172064, 1, 0, 0, 1710, 46455),
(168579, 1, 0, 0, 1710, 46455),
(43499, 1, 0, 0, 482, 46455),
(168573, 1, 0, 0, 1710, 46455),
(169265, 1, 0, 0, 1710, 46455),
(169141, 0, 0, 0, 1710, 46455),
(95061, 0, 0, 0, 482, 46455),
(185584, 0, 0, 0, 482, 46455),
(173734, 0, 0, 0, 837, 46455),
(167535, 0, 0, 0, 1325, 46455),
(164381, 0, 0, 0, 837, 46455),
(111101, 0, 0, 0, 633, 46455);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46455 WHERE (`DifficultyID`=1 AND `Entry` IN (165430,164267,173952,174195,173930,163857,169861,164265,165532,164737,164266,171675,173360,173362,170478,166762,168907,173339,173340,170021,171656,174802,171596,167556,32639,32638,170022,167493,163862,164967,169203,168891,169258,163894,163891,168886,164705,168627,168878,163892,169159,168022,171474,168393,168396,168386,171574,171572,171573,168391,172063)) OR (`DifficultyID`=0 AND `Entry` IN (163414,168453,164711,168042,176285,173273,173271,173272,173267,175024,167359,159757,174649,169992,174650,170002,166370,159691,165025,168388,171245,169129,158566,158387,165561,162816,166559,162761,174358,158752,171549,165473,169795,169830,164508,162588,174652,159696,168226,164492,159822,168216,164507,159856,170191,169751,175394,172608,172591,89,163043,159830,162873,158642,172656,163224,166226,166253,162899,163032,163030,163041,161599,161757,161597,166420,168147,158071,162874,169697,162872,161702,161733,166570,175393,166568,170496,170542,162813,173003,161696,161697,166564,157540,166567,166565,161712,162853,166421,168148,161508,161537,115149,172696,171546,172933,164678,174357,164679,171547,165822,168946,169184,168677,162589,162477,166424,168440,174653,169055,167335,175095,175097,174223,176023,182105,163119,164829,164830,173026,174654,158040,166437,173018,166129,167395,167353,164996,164997,167743,167747,164751,161397,167435,162259,161398,166908,172630,172607,172609,162258,175021,172567,169634,161881,161376,161890,167737,160424,164667,166423,161399,157514,170971,167741,161390,167355,175008,167642,167273,161676,160415,167641,167639,161395,161668,164833,161679,175144,168045,167638,175398,167636,157671,93008,156558,161396,167640,161673,167637,161675,161388,174002,175391,162093,164797,165335,161677,157803,157843,167354,157515,172141,165017,171133,171130,157226,176400,165049,167358,174963,167356,165032,161841,171135,165034,170456,167935,167949,171112));
UPDATE `creature_template_scaling` SET `ContentTuningID`=500, `VerifiedBuild`=46455 WHERE (`Entry`=137623 AND `DifficultyID`=1);
UPDATE `creature_template_scaling` SET `ContentTuningID`=1710, `VerifiedBuild`=46455 WHERE (`DifficultyID`=0 AND `Entry` IN (168969,168315,163882,168965,168310,169201,166480,168314,172335,169218,168298,172336,168578,168364,168574,168153,168572,168361,168365,169843,168968,168580,163931,164255,169696,163915,168155,174877,169450));

DELETE FROM `creature_model_info` WHERE `DisplayID`=110568;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(110568, 1.256021499633789062, 1.399999976158142089, 0, 46455);



UPDATE `creature_model_info` SET `BoundingRadius`=0.951233863830566406, `CombatReach`=1.5, `VerifiedBuild`=46455 WHERE `DisplayID`=96239;
UPDATE `creature_model_info` SET `VerifiedBuild`=46455 WHERE `DisplayID` IN (95794, 96434, 96475, 95688, 99517, 92725, 28282, 28111, 96202, 96203, 96919, 96240, 97796, 95225, 97477, 96985, 33010, 96459, 99464, 97302, 80502, 96772, 98000, 99191, 98002, 96771, 97997, 96752, 83589, 97335, 96865, 100527, 83616, 99380, 96887, 96989, 96945, 83621, 63503, 83592, 96986, 97160, 96988, 96991, 83596, 99163, 92726, 94090, 38189, 62719, 88004, 73697, 97399, 98244, 99929, 97654, 95789, 95793, 96272, 7571, 97657, 97325, 97655, 97076, 96999, 80031, 95818, 96310, 96984, 95784, 96489, 96271, 88361, 95967, 96749, 11094, 95797, 92246, 95959, 87778, 95385, 95944, 100590, 98581, 96787, 95394, 95815, 98584, 96188, 98583, 98582, 95379, 94055, 96133, 95961, 98055, 99075, 96134, 73706, 95327, 95769, 96860, 99117, 96435, 97665, 97322, 96821, 95781, 94905, 96461, 96116, 95011, 98465, 98462, 98467, 97079, 94927, 99414, 95780, 98461, 98463, 96445, 96444, 103064, 97894, 96447, 97852, 43178, 98184, 96446, 98673, 95570, 97351, 95949, 97066, 94283, 94882, 100181, 94763, 96871, 97968);
UPDATE `creature_model_info` SET `BoundingRadius`=1.390750408172607421, `CombatReach`=0.900000035762786865, `VerifiedBuild`=46455 WHERE `DisplayID` IN (99469, 99470);
UPDATE `creature_model_info` SET `BoundingRadius`=2.317917346954345703, `CombatReach`=1.5 WHERE `DisplayID`=94406;
UPDATE `creature_model_info` SET `BoundingRadius`=3.52209329605102539, `CombatReach`=3.795000076293945312, `VerifiedBuild`=46455 WHERE `DisplayID`=95475;
UPDATE `creature_model_info` SET `BoundingRadius`=1.239107370376586914, `CombatReach`=0.60000002384185791, `VerifiedBuild`=46455 WHERE `DisplayID` IN (90181, 90180);
UPDATE `creature_model_info` SET `BoundingRadius`=1.83896946907043457, `CombatReach`=1.25 WHERE `DisplayID`=95786;
UPDATE `creature_model_info` SET `BoundingRadius`=0.255399584770202636, `CombatReach`=0.375, `VerifiedBuild`=46455 WHERE `DisplayID`=97939;
UPDATE `creature_model_info` SET `BoundingRadius`=0.568566083908081054 WHERE `DisplayID`=95575;
UPDATE `creature_model_info` SET `BoundingRadius`=0.511787891387939453, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46455 WHERE `DisplayID`=2177;
UPDATE `creature_model_info` SET `BoundingRadius`=3, `CombatReach`=0, `VerifiedBuild`=46455 WHERE `DisplayID`=95501;
UPDATE `creature_model_info` SET `BoundingRadius`=1.458558559417724609, `CombatReach`=2.299999952316284179, `VerifiedBuild`=46455 WHERE `DisplayID`=97333;
UPDATE `creature_model_info` SET `BoundingRadius`=0.579479336738586425, `CombatReach`=0.375, `VerifiedBuild`=46455 WHERE `DisplayID`=94407;
UPDATE `creature_model_info` SET `BoundingRadius`=0.1875, `CombatReach`=0.3125, `VerifiedBuild`=46455 WHERE `DisplayID`=88145;
UPDATE `creature_model_info` SET `BoundingRadius`=9.512338638305664062, `CombatReach`=15, `VerifiedBuild`=46455 WHERE `DisplayID` IN (96243, 96261);
UPDATE `creature_model_info` SET `BoundingRadius`=0.480919986963272094, `CombatReach`=0.5, `VerifiedBuild`=46455 WHERE `DisplayID` IN (92627, 92629, 92628);
UPDATE `creature_model_info` SET `BoundingRadius`=0.753035604953765869, `CombatReach`=2.099999904632568359, `VerifiedBuild`=46455 WHERE `DisplayID`=83594;
UPDATE `creature_model_info` SET `BoundingRadius`=0.161364778876304626, `CombatReach`=0.450000017881393432, `VerifiedBuild`=46455 WHERE `DisplayID`=99157;
UPDATE `creature_model_info` SET `BoundingRadius`=3.660829067230224609, `CombatReach`=4.6875, `VerifiedBuild`=46455 WHERE `DisplayID`=95844;
UPDATE `creature_model_info` SET `BoundingRadius`=0.733513593673706054, `CombatReach`=1.5, `VerifiedBuild`=46455 WHERE `DisplayID`=95993;
UPDATE `creature_model_info` SET `BoundingRadius`=1.075765132904052734, `CombatReach`=3, `VerifiedBuild`=46455 WHERE `DisplayID`=83597;
UPDATE `creature_model_info` SET `BoundingRadius`=4.394217491149902343, `CombatReach`=1.5, `VerifiedBuild`=46455 WHERE `DisplayID`=97656;
UPDATE `creature_model_info` SET `BoundingRadius`=3.316092491149902343, `CombatReach`=5.399999618530273437, `VerifiedBuild`=46455 WHERE `DisplayID`=96790;
UPDATE `creature_model_info` SET `BoundingRadius`=1.125, `CombatReach`=3.75, `VerifiedBuild`=46455 WHERE `DisplayID`=58978;
UPDATE `creature_model_info` SET `BoundingRadius`=0.551690876483917236, `CombatReach`=0.375 WHERE `DisplayID`=95787;
UPDATE `creature_model_info` SET `BoundingRadius`=0.93155074119567871, `CombatReach`=1.5 WHERE `DisplayID` IN (94834, 94791, 94761);
UPDATE `creature_model_info` SET `BoundingRadius`=4.963873863220214843, `CombatReach`=7.199999809265136718 WHERE `DisplayID`=94913;
UPDATE `creature_model_info` SET `BoundingRadius`=1.022457480430603027, `CombatReach`=1.079999923706054687, `VerifiedBuild`=46455 WHERE `DisplayID`=95386;
UPDATE `creature_model_info` SET `BoundingRadius`=1.197071075439453125, `CombatReach`=1.5 WHERE `DisplayID`=95227;
UPDATE `creature_model_info` SET `BoundingRadius`=1, `CombatReach`=2, `VerifiedBuild`=46455 WHERE `DisplayID`=59800;
UPDATE `creature_model_info` SET `BoundingRadius`=3.185197830200195312, `CombatReach`=3.432000160217285156, `VerifiedBuild`=46455 WHERE `DisplayID`=94241;
UPDATE `creature_model_info` SET `BoundingRadius`=2.654331207275390625, `CombatReach`=2.859999895095825195, `VerifiedBuild`=46455 WHERE `DisplayID` IN (94245, 94243);
UPDATE `creature_model_info` SET `BoundingRadius`=0.305999994277954101, `CombatReach`=1.5, `VerifiedBuild`=46455 WHERE `DisplayID`=53291;
UPDATE `creature_model_info` SET `BoundingRadius`=0.880216360092163085, `CombatReach`=1.80000007152557373, `VerifiedBuild`=46455 WHERE `DisplayID`=94145;
UPDATE `creature_model_info` SET `BoundingRadius`=2.942351102828979492, `CombatReach`=2 WHERE `DisplayID`=95792;
UPDATE `creature_model_info` SET `BoundingRadius`=0.919484734535217285, `CombatReach`=0.625 WHERE `DisplayID`=95788;
UPDATE `creature_model_info` SET `BoundingRadius`=1.007195711135864257, `CombatReach`=1.80000007152557373 WHERE `DisplayID`=96135;
UPDATE `creature_model_info` SET `BoundingRadius`=1.117860913276672363, `CombatReach`=1.80000007152557373 WHERE `DisplayID`=94757;
UPDATE `creature_model_info` SET `BoundingRadius`=0.870888948440551757, `CombatReach`=2.925000190734863281, `VerifiedBuild`=46455 WHERE `DisplayID`=97412;
UPDATE `creature_model_info` SET `BoundingRadius`=0.699441432952880859, `CombatReach`=1.25, `VerifiedBuild`=46455 WHERE `DisplayID`=96194;
UPDATE `creature_model_info` SET `BoundingRadius`=0.200000002980232238, `CombatReach`=2, `VerifiedBuild`=46455 WHERE `DisplayID`=40678;
UPDATE `creature_model_info` SET `BoundingRadius`=0.696711182594299316, `CombatReach`=2.340000152587890625, `VerifiedBuild`=46455 WHERE `DisplayID`=95968;
UPDATE `creature_model_info` SET `BoundingRadius`=1.846103906631469726, `CombatReach`=1.949999928474426269, `VerifiedBuild`=46455 WHERE `DisplayID`=95943;
UPDATE `creature_model_info` SET `BoundingRadius`=0.164499998092651367, `CombatReach`=0.699999988079071044 WHERE `DisplayID`=95577;
UPDATE `creature_model_info` SET `BoundingRadius`=1.917107939720153808, `CombatReach`=2.02500009536743164, `VerifiedBuild`=46455 WHERE `DisplayID`=95387;
UPDATE `creature_model_info` SET `BoundingRadius`=1.136063933372497558, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46455 WHERE `DisplayID`=95545;
UPDATE `creature_model_info` SET `BoundingRadius`=0.372000008821487426, `CombatReach`=1.5, `VerifiedBuild`=46455 WHERE `DisplayID`=71719;
UPDATE `creature_model_info` SET `BoundingRadius`=0.619832336902618408, `VerifiedBuild`=46455 WHERE `DisplayID`=64471;
UPDATE `creature_model_info` SET `BoundingRadius`=0.839329779148101806, `CombatReach`=1.5 WHERE `DisplayID`=96555;
UPDATE `creature_model_info` SET `BoundingRadius`=2.022901535034179687, `CombatReach`=1.80000007152557373, `VerifiedBuild`=46455 WHERE `DisplayID`=97853;
UPDATE `creature_model_info` SET `BoundingRadius`=0.150000005960464477, `CombatReach`=0.25, `VerifiedBuild`=46455 WHERE `DisplayID`=9904;
UPDATE `creature_model_info` SET `BoundingRadius`=0.699441432952880859, `CombatReach`=1.25 WHERE `DisplayID` IN (96209, 96208);
UPDATE `creature_model_info` SET `BoundingRadius`=0.615508496761322021, `CombatReach`=1.10000002384185791 WHERE `DisplayID`=96131;
UPDATE `creature_model_info` SET `BoundingRadius`=0.660162210464477539, `CombatReach`=1.349999904632568359 WHERE `DisplayID`=94053;


UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=54, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=33554944, `unit_flags2`=2048, `unit_flags3`=16777216 WHERE `entry`=166813; -- Shadowclone Stalker
UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=54, `faction`=16, `speed_walk`=0.028000000864267349, `speed_run`=0.019999999552965164, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=524288 WHERE `entry`=170474; -- Brood Assassin
UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=54, `faction`=14, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=6293504, `unit_flags3`=524288 WHERE `entry`=168837; -- Stealthling
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=164737; -- Brood Ambusher
UPDATE `creature_template` SET `unit_flags2`=2048 WHERE `entry`=167493; -- Venomous Sniper
UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=54, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=168747; -- Venomfang
UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=54, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=2, `BaseAttackTime`=1500, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=524288 WHERE `entry`=165357; -- Pestilence Slime
UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=54, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=2, `BaseAttackTime`=2000, `unit_flags`=33554496, `unit_flags2`=4229120, `unit_flags3`=524288 WHERE `entry`=169498; -- Plague Bomb
UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=54, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2080, `unit_flags3`=524289 WHERE `entry`=170927; -- Erupting Ooze
UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=54, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2080, `unit_flags3`=524288 WHERE `entry`=164550; -- Slithering Ooze
UPDATE `creature_template` SET `unit_flags`=32848 WHERE `entry`=164967; -- Doctor Ickus
UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=54, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=2.857142925262451171, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=2621441 WHERE `entry` IN (168394, 168398); -- Slimy Morsel
UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=54, `faction`=16, `speed_walk`=2.799999952316284179, `speed_run`=2, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=2621440 WHERE `entry`=164362; -- Slimy Morsel
UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=54, `faction`=16, `BaseAttackTime`=1500, `unit_flags3`=524288 WHERE `entry`=172064; -- Unstable Larva
UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=54, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32784, `unit_flags2`=2048, `unit_flags3`=524288 WHERE `entry`=168579; -- Fen Hatchling
UPDATE `creature_template` SET `minlevel`=56, `maxlevel`=56 WHERE `entry`=43499; -- Consecration
UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=54, `faction`=16, `BaseAttackTime`=1500, `unit_flags`=33554432, `unit_flags2`=2048, `unit_flags3`=524288 WHERE `entry`=168573; -- Doom Shroom
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=169265; -- Creepy Crawler
UPDATE `creature_template` SET `unit_flags`=67142208 WHERE `entry`=168310; -- Plagueroc
UPDATE `creature_template` SET `unit_flags`=67141696 WHERE `entry`=168153; -- Plagueroc
UPDATE `creature_template` SET `unit_flags`=33587200, `unit_flags3`=1 WHERE `entry`=168365; -- Fungret Shroomtender
UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=54, `faction`=188, `speed_walk`=0.400000005960464477, `speed_run`=0.142857149243354797, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=67110912, `unit_flags3`=17301505 WHERE `entry`=169141; -- Mire Fertilizer
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=169696; -- Mire Soldier
UPDATE `creature_template` SET `unit_flags`=537166592 WHERE `entry`=168155; -- Plaguebound
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry` IN (174358, 174357); -- Invisible Stalker
UPDATE `creature_template` SET `unit_flags`=32768, `dynamicflags`=0 WHERE `entry`=158752; -- Predatory Bloodtusk

UPDATE `creature_template` SET `speed_run`=1.142857193946838378, `BaseAttackTime`=1708 WHERE `entry`=89; -- Infernal
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55, `faction`=35, `speed_walk`=2, `speed_run`=2.142857074737548828, `BaseAttackTime`=1189, `unit_flags2`=2048 WHERE `entry`=95061; -- Greater Fire Elemental
UPDATE `creature_template` SET `BaseAttackTime`=1533 WHERE `entry`=31216; -- Mirror Image
UPDATE `creature_template` SET `minlevel`=60, `BaseAttackTime`=1843 WHERE `entry`=416; -- Imp
UPDATE `creature_template` SET `BaseAttackTime`=1843 WHERE `entry`=185584; -- Blasphemy
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=14, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=34816, `unit_flags3`=524289 WHERE `entry`=173734; -- Gladiator's Warbanner
UPDATE `creature_template` SET `BaseAttackTime`=1533 WHERE `entry`=171396; -- Kyrian Goliath
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=1533 WHERE `entry`=78116; -- Water Elemental
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=168147; -- Sabriel the Bonecleaver
UPDATE `creature_template` SET `unit_flags`=32768, `HoverHeight`=15 WHERE `entry`=162872; -- Xantuth the Blighted

UPDATE `creature_template` SET `BaseAttackTime`=1333, `unit_flags`=32784 WHERE `entry`=162853; -- Unbreakable Urtz
UPDATE `creature_template` SET `unit_flags`=67141696 WHERE `entry`=168148; -- Drolkrad
UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=54 WHERE `entry`=115149; -- Soulbroken Whelpling
UPDATE `creature_template` SET `minlevel`=53, `maxlevel`=53, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480, `unit_flags3`=1048576 WHERE `entry`=167535; -- Chosen Scrapper
UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=54, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=164381; -- Reformed Skeleton
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags2`=34816 WHERE `entry`=182105; -- Mysterious Trashpile
UPDATE `creature_template` SET `unit_flags`=33587472, `unit_flags3`=16777216 WHERE `entry`=163119; -- Assorted Remains
UPDATE `creature_template` SET `minlevel`=57, `BaseAttackTime`=1394 WHERE `entry`=1860; -- Voidwalker
UPDATE `creature_template` SET `unit_flags3`=0 WHERE `entry`=164829; -- Chosen Flayedwing
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=173026; -- Chosen Infantry
UPDATE `creature_template` SET `unit_flags3`=16785409 WHERE `entry`=164996; -- Chosen Recruit
UPDATE `creature_template` SET `unit_flags`=67141632 WHERE `entry`=162259; -- Galescreamer Pup
UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=54, `BaseAttackTime`=1824, `unit_flags2`=2048 WHERE `entry`=111101; -- Army of the Dead
UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=54, `BaseAttackTime`=1824 WHERE `entry`=24207; -- Army of the Dead

UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=167273; -- Boneplated Sharpshooter
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags3`=8388608 WHERE `entry`=160415; -- Boneplated Sentry
UPDATE `creature_template` SET `unit_flags`=32832 WHERE `entry`=161395; -- Stalwart Death Elemental
UPDATE `creature_template` SET `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=164833; -- Pack Tauralus
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=175398; -- Mantaraganak
UPDATE `creature_template` SET `unit_flags`=32832 WHERE `entry`=161396; -- Tyrannizer Leprutis
UPDATE `creature_template` SET `unit_flags3`=16777217 WHERE `entry`=157803; -- Summoning Visectus

UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=174963; -- Plague Refuse
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=167935; -- Contagious Droplet
UPDATE `creature_template` SET `minlevel`=54, `maxlevel`=59, `BaseAttackTime`=1806, `unit_flags`=262144 WHERE `entry`=26125; -- Risen Ghoul


UPDATE `quest_template` SET `RewardBonusMoney`=7600, `VerifiedBuild`=46455 WHERE `ID`=59750; -- How to Get a Head
UPDATE `quest_template` SET `RewardBonusMoney`=625, `VerifiedBuild`=46455 WHERE `ID`=62776; -- Return to Oribos
UPDATE `quest_template` SET `RewardBonusMoney`=625, `VerifiedBuild`=46455 WHERE `ID`=58161; -- Forest Disappearances
UPDATE `quest_template` SET `RewardBonusMoney`=1900, `VerifiedBuild`=46455 WHERE `ID`=57551; -- Agthia's Path
UPDATE `quest_template` SET `RewardBonusMoney`=7600, `VerifiedBuild`=46455 WHERE `ID`=57547; -- A Test of Courage
UPDATE `quest_template` SET `VerifiedBuild`=46455 WHERE `ID` IN (53476, 53028, 26728, 26371, 26137, 60278, 60280, 63986, 42421, 49134, 49133, 49032, 46805, 46253, 27111, 54748, 43476, 60337, 61667, 61948, 61879, 61870, 61791);
UPDATE `quest_template` SET `RewardBonusMoney`=625, `VerifiedBuild`=46455 WHERE `ID`=61051; -- The Absent-Minded Artisan
UPDATE `quest_template` SET `RewardBonusMoney`=7600, `VerifiedBuild`=46455 WHERE `ID`=58265; -- Blooming Villains
UPDATE `quest_template` SET `RewardBonusMoney`=625, `VerifiedBuild`=46455 WHERE `ID`=62739; -- Restoring Balance
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `VerifiedBuild`=46455 WHERE `ID`=52544; -- The War Cache
UPDATE `quest_template` SET `RewardBonusMoney`=7050, `Flags`=33554440, `VerifiedBuild`=46455 WHERE `ID`=51384; -- WANTED: Quartermaster Ssylis
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46455 WHERE `ID`=51151; -- A Letter to the League
UPDATE `quest_template` SET `RewardBonusMoney`=1200, `VerifiedBuild`=46455 WHERE `ID`=51144; -- A Bundle of Furs
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `VerifiedBuild`=46455 WHERE `ID`=49394; -- Hold Still
UPDATE `quest_template` SET `RewardBonusMoney`=5900, `Flags`=33554440, `VerifiedBuild`=46455 WHERE `ID`=49299; -- Enemy Within
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `VerifiedBuild`=46455 WHERE `ID`=48616; -- Bolas and Birds
UPDATE `quest_template` SET `RewardBonusMoney`=5900, `Flags`=39845896, `VerifiedBuild`=46455 WHERE `ID`=48365; -- The Young Lord Stormsong
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `VerifiedBuild`=46455 WHERE `ID`=48009; -- Betrayal of the Guard
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `VerifiedBuild`=46455 WHERE `ID`=48008; -- Dangerous Cargo
UPDATE `quest_template` SET `Flags`=36700424, `VerifiedBuild`=46455 WHERE `ID`=47690; -- The Defiler's Legacy
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46455 WHERE `ID`=47485; -- The Ashvane Trading Company
UPDATE `quest_template` SET `RewardBonusMoney`=1850, `VerifiedBuild`=46455 WHERE `ID`=46832; -- Aalgen Point
UPDATE `quest_template` SET `RewardBonusMoney`=5100, `Expansion`=9, `VerifiedBuild`=46455 WHERE `ID`=31902; -- Battle Pet Tamers: Eastern Kingdoms
UPDATE `quest_template` SET `RewardBonusMoney`=1850, `VerifiedBuild`=46455 WHERE `ID`=42193; -- The Gjallarhorn
UPDATE `quest_template` SET `RewardBonusMoney`=3350, `VerifiedBuild`=46455 WHERE `ID`=35166; -- Ship Salvage
UPDATE `quest_template` SET `Flags`=524288, `Expansion`=9, `VerifiedBuild`=46455 WHERE `ID`=32663; -- Learn To Ride
UPDATE `quest_template` SET `RewardBonusMoney`=840, `VerifiedBuild`=46455 WHERE `ID`=26285; -- Get Me Explosives Back!
UPDATE `quest_template` SET `RewardBonusMoney`=840, `VerifiedBuild`=46455 WHERE `ID`=26284; -- Missing in Action
UPDATE `quest_template` SET `RewardBonusMoney`=40600 WHERE `ID`=62723;
UPDATE `quest_template` SET `Expansion`=9, `VerifiedBuild`=46455 WHERE `ID`=57300; -- Soldier of Time
UPDATE `quest_template` SET `RewardBonusMoney`=20300, `Expansion`=9, `VerifiedBuild`=46455 WHERE `ID`=60215; -- Doomwalkin' Has Come Knockin'
UPDATE `quest_template` SET `RewardBonusMoney`=625, `VerifiedBuild`=46455 WHERE `ID`=62785; -- I Could Be A Contender
UPDATE `quest_template` SET `Expansion`=9, `VerifiedBuild`=46455 WHERE `ID`=57249; -- A Timely Invitation
UPDATE `quest_template` SET `RewardBonusMoney`=2800, `VerifiedBuild`=46455 WHERE `ID`=45812; -- Assault on Val'sharah
UPDATE `quest_template` SET `RewardFactionOverride1`=7500 WHERE `ID`=59019;
UPDATE `quest_template` SET `RewardFactionOverride1`=7500 WHERE `ID`=52951;
UPDATE `quest_template` SET `RewardBonusMoney`=10150 WHERE `ID`=60840;


UPDATE `quest_objectives` SET `VerifiedBuild`=46455 WHERE `ID` IN (396941, 396921, 392612, 392621, 404561, 341495, 398094, 398093, 420901, 405133, 393977, 284171, 339252, 335639, 334838, 294454, 294201, 293809, 293808, 293548, 292705, 292005, 291479, 294317, 333675, 289632, 289626, 289625, 289283, 269180, 269179, 269178, 269177, 269176, 273525, 265699, 392095, 397883, 288711, 288650, 398175, 398504, 406454, 406456, 406455, 406868, 406790, 406768, 406713);
UPDATE `quest_objectives` SET `Description`='Sigil of Awakening', `VerifiedBuild`=46455 WHERE `ID`=291144; -- 291144
UPDATE `quest_objectives` SET `Description`='Archimonde defeated', `VerifiedBuild`=46455 WHERE `ID`=290962; -- 290962
UPDATE `quest_objectives` SET `Description`='Skyjump to Stormheim', `VerifiedBuild`=46455 WHERE `ID`=419459; -- 419459
UPDATE `quest_objectives` SET `Description`='Captured Demolitionists rescued', `VerifiedBuild`=46455 WHERE `ID`=266073; -- 266073


UPDATE `quest_visual_effect` SET `VerifiedBuild`=46455 WHERE (`Index`=0 AND `ID` IN (396941,396921,392612,392621,420901,294454,294201,292705,291144,290962,333675,269180,269179,269178,269177,269176,419459,273525,288711,398175,398504,405027,405026,397059,397121,406456,406455,406868,406790,406768,406713)) OR (`Index`=1 AND `ID` IN (396921,292705,398175,405027,397121,406456)) OR (`Index`=5 AND `ID`=405027) OR (`Index`=4 AND `ID`=405027) OR (`Index`=3 AND `ID`=405027) OR (`Index`=2 AND `ID` IN (405027,397121));


UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46455 WHERE `entry`=166437; -- Nasho
UPDATE `creature_template` SET `VerifiedBuild`=46455 WHERE `entry` IN (167556, 168677, 169795, 175393, 175394, 170927, 159757, 158642, 182105, 165357, 157540, 172063, 169830, 166480, 164255, 169843, 164265, 164266, 164267, 169861, 168747, 89, 159822, 115149, 159830, 174357, 174358, 165430, 95061, 159856, 95072, 166564, 173267, 166565, 166567, 166568, 173271, 173272, 166570, 173273, 158752, 163224, 165473, 185584, 164362, 168837, 173339, 173340, 169992, 168878, 165532, 170002, 168886, 168891, 173360, 173362, 137623, 170021, 170022, 168907, 32638, 165561, 32639, 168946, 164492, 162258, 168965, 168968, 168969, 164507, 164508, 172335, 172336, 166762, 163414, 171245, 173495, 166813, 169055, 174649, 174650, 174652, 174653, 174654, 170191, 169129, 168022, 169141, 164678, 164679, 169159, 168042, 164705, 165822, 164711, 162477, 169184, 161376, 169201, 169203, 164737, 161388, 161390, 158040, 161395, 161396, 172567, 161397, 174802, 161398, 169218, 161399, 164751, 171474, 172591, 158071, 172607, 172608, 169258, 172609, 168147, 169265, 168148, 173734, 168153, 168155, 172630, 162588, 162589, 174877, 164829, 164830, 172656, 171546, 171547, 171549, 176023, 168216, 171572, 171573, 171574, 168226, 172696, 161537, 170474, 170478, 171596, 161559, 170496, 168298, 161597, 161599, 171656, 170542, 168310, 168314, 168315, 164967, 175024, 171675, 163857, 163862, 169450, 173930, 162761, 164996, 164997, 163882, 163891, 163892, 168361, 163894, 166129, 168364, 168365, 173952, 165025, 169498, 163915, 168386, 168388, 168391, 168393, 175095, 168394, 175097, 168396, 168398, 162813, 161696, 163931, 161697, 162816, 161702, 161712, 161733, 162853, 158387, 168440, 167335, 168453, 162872, 162873, 161757, 162874, 166226, 172933, 176285, 61245, 162899, 166253, 167395, 173003, 170779, 173018, 170784, 167435, 173026, 168572, 168574, 168578, 168579, 169696, 168580, 169697, 78116, 166370, 161905, 161907, 174195, 167493, 163030, 163032, 158566, 163041, 168627, 159691, 163043, 159696, 169751, 174223, 167535, 166420, 166421, 166424);
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.5, `VerifiedBuild`=46455 WHERE `entry`=163119; -- Assorted Remains
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.5, `VerifiedBuild`=46455 WHERE `entry`=172064; -- Unstable Larva
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46455 WHERE `entry`=166559; -- Ol' Big Head
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.5, `VerifiedBuild`=46455 WHERE `entry`=164381; -- Reformed Skeleton
UPDATE `creature_template` SET `HealthModifier`=0.25, `VerifiedBuild`=46455 WHERE `entry`=164550; -- Slithering Ooze
UPDATE `creature_template` SET `femaleName`='', `rank`=6, `HealthModifier`=0.30126500129699707, `VerifiedBuild`=46455 WHERE `entry`=111101; -- Army of the Dead
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46455 WHERE `entry`=159240; -- Gas Bag
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46455 WHERE `entry`=161508; -- Amico
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=167353; -- Chittering Claw
UPDATE `creature_template` SET `HealthModifier`=0.5, `VerifiedBuild`=46455 WHERE `entry`=168573; -- Doom Shroom


UPDATE `creature_template_model` SET `VerifiedBuild`=46455 WHERE (`Idx`=0 AND `CreatureID` IN (165430,173952,164267,174195,173930,163857,169861,166813,170474,168837,164265,137623,165532,164737,171675,173362,173360,170478,166762,168907,173340,173339,170021,174802,171656,171596,167556,32639,32638,170022,168747,167493,165357,169498,170927,163862,164967,169203,168891,169258,163894,163891,168886,169159,168878,168627,164705,163892,168022,168394,164362,168398,168579,171474,168396,168393,168386,171574,171573,171572,168391,169265,164266,172063,169201,169843,169141,168310,172336,166480,168364,172335,169696,168580,168572,168153,168969,168361,168965,174877,163882,168365,168298,164255,168315,168314,169218,169450,168574,168578,163915,168968,168155,163931,163414,168453,164711,168042,176285,173273,173272,173271,173267,175024,174649,159757,174650,170002,169992,166370,159691,168388,165025,171245,169129,158566,158387,165561,162816,166559,162761,171549,165473,169795,174652,169830,164508,162588,168226,159822,159696,168216,164507,159856,170191,169751,175394,158752,172608,89,95061,163043,159830,162873,185584,158642,173734,172656,163224,162899,166253,163041,161599,161757,169697,168147,166420,162874,161733,161702,158071,175393,173003,170542,170496,166570,166568,162813,161697,161696,166226,166564,157540,166567,166565,162853,161712,166421,78116,168148,161537,161508,115149,172696,171546,174358,172933,164678,174357,164679,171547,165822,168946,169184,168677,162589,162477,166424,174653,169055,167335,175095,175097,174223,176023,163032,164381,161905,182105,163119,164829,173026,164830,174654,158040,173018,167395,166129,167353,164997,164996,167535,161559,95072,61245,164751,170779,161397,167435,163030,161398,111101,172630,162872,170784,168440,172607,172591,161597,173495,164492,172609,162258,172567,161376,161399,161390,161395,159240,161396,161388,161907)) OR (`Idx`=1 AND `CreatureID` IN (173952,173930,163857,168837,164265,137623,165532,173362,170478,166762,173340,174802,167556,167493,163862,169258,163892,168579,168386,168391,169265,172063,169201,168310,166480,168153,174877,168365,168315,168314,169218,169450,168968,168155,163414,164711,176285,159757,165025,171245,169129,165561,162816,162761,171549,174652,164508,159822,168216,164507,159856,163043,172656,163224,163041,161757,170542,162813,166226,166564,78116,174358,174357,171547,168677,162477,166424,176023,163032,164381,173026,158040,173018,167395,170779,167435,163030,161398,172630,170784,168440,161597,164492,162258,161376,161399,161388)) OR (`Idx`=3 AND `CreatureID` IN (163857,163862,163892,169265,168310,168153,168315,168314,169218,171549,164507,163041,161757,170542,166226,166564,167395,163030,161376,161399)) OR (`Idx`=2 AND `CreatureID` IN (163857,168837,163862,163892,168579,169265,172063,168310,168153,174877,168365,168315,168314,169218,168968,164711,171245,165561,171549,164507,163043,163041,161757,170542,166226,166564,176023,167395,163030,168440,161376,161399)) OR (`Idx`=4 AND `CreatureID` IN (169265,171549,163041,161757,163030,161399)) OR (`Idx`=5 AND `CreatureID` IN (171549,163041,161757)) OR (`Idx`=11 AND `CreatureID`=163041) OR (`Idx`=10 AND `CreatureID`=163041) OR (`Idx`=9 AND `CreatureID`=163041) OR (`Idx`=8 AND `CreatureID`=163041) OR (`Idx`=7 AND `CreatureID` IN (163041,161757)) OR (`Idx`=6 AND `CreatureID` IN (163041,161757));
UPDATE `creature_template_model` SET `DisplayScale`=0.5, `VerifiedBuild`=46455 WHERE (`CreatureID`=164550 AND `Idx`=0); -- Slithering Ooze
UPDATE `creature_template_model` SET `DisplayScale`=0.300000011920928955, `Probability`=0, `VerifiedBuild`=46455 WHERE (`CreatureID`=172064 AND `Idx`=0); -- Unstable Larva
UPDATE `creature_template_model` SET `DisplayScale`=3, `VerifiedBuild`=46455 WHERE (`CreatureID`=168573 AND `Idx`=0); -- Doom Shroom
UPDATE `creature_template_model` SET `DisplayScale`=1.299999952316284179, `VerifiedBuild`=46455 WHERE (`CreatureID`=166437 AND `Idx`=0); -- Nasho


UPDATE `creature_questitem` SET `VerifiedBuild`=46455 WHERE (`Idx`=2 AND `CreatureEntry`=164267) OR (`Idx`=1 AND `CreatureEntry` IN (164267,165473,162588,159856,158752,168147,168148)) OR (`Idx`=0 AND `CreatureEntry` IN (164267,164737,171656,163862,164967,163894,168886,168878,168627,163892,168393,168386,164266,168310,169696,168153,163882,168365,164255,168574,168578,168155,158566,165561,165473,162588,159856,158752,158642,168147,168148,164830,161397,161398,172630,161376,161390,161395,161396,161388));

DELETE FROM `gameobject_template` WHERE `entry`=364940;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(364940, 10, 66072, 'Banner of Remembrance', 'questinteract', 'Present', '', 2, 93, 59836, 0, 3000, 0, 0, 0, 0, 0, 0, 346494, 0, 0, 0, 200578, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 837, 46455); -- Banner of Remembrance

UPDATE `gameobject_template` SET `VerifiedBuild`=46455 WHERE `entry` IN (357731, 363967, 353752, 348526, 358870, 358868, 358855, 326238, 326236, 357956, 357955, 357954, 357947, 357946, 357945, 357960, 357957, 357953, 357951, 357948, 357944, 357959, 357958, 357952, 357950, 357949, 357943, 357224, 354683, 353400, 353397, 353398, 354970, 353395, 353399, 353396, 353394, 353393, 349509, 340074, 354128, 340072, 340073, 355447, 353882, 348537, 356879, 349546, 348534, 348533, 35591, 349086, 349493, 354684, 357094, 354682, 357240, 351479, 351474, 353615, 336689, 252145, 355505, 351467, 364394, 364393, 352110, 353602, 351470, 348935, 351478, 351475, 358315, 347444, 349575, 349981);
UPDATE `gameobject_template` SET `type`=10, `IconName`='questinteract', `castBarCaption`='Present', `size`=2, `Data0`=93, `Data1`=59836, `Data3`=3000, `Data10`=324477, `Data14`=200578, `Data20`=1, `Data23`=1, `ContentTuningId`=837, `VerifiedBuild`=46455 WHERE `entry`=349593; -- Banner of Remembrance
UPDATE `gameobject_template` SET `name`='Anvil', `VerifiedBuild`=46455 WHERE `entry`=349581; -- Наковальня
UPDATE `gameobject_template` SET `type`=9, `size`=2, `Data0`=6335, `Data2`=1, `ContentTuningId`=642, `VerifiedBuild`=46455 WHERE `entry`=252302; -- Professor Putricide's Lost Journal


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46455 WHERE (`GameObjectEntry`=349509 AND `Idx`=0) OR (`GameObjectEntry`=340074 AND `Idx`=0) OR (`GameObjectEntry`=340072 AND `Idx`=0) OR (`GameObjectEntry`=340073 AND `Idx`=0) OR (`GameObjectEntry`=356879 AND `Idx` IN (11,10,9,8,7,6,5,4,3,2,1,0)) OR (`GameObjectEntry`=357094 AND `Idx`=0) OR (`GameObjectEntry`=347444 AND `Idx` IN (1,0));

DELETE FROM `page_text` WHERE `ID`=6335;
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`, `PlayerConditionID`, `Flags`, `VerifiedBuild`) VALUES
(6335, 'Good news, everyone! No one will ever find my masterpiece!\n\nStitchwork is nearly complete. Just a few more pieces and some elbow grease, perhaps some ooze and/or gas...\n\nSuch imbeciles! They never think to look for trap doors in my lab. Well, there was that one adventurer, but now she\'s part of Stitchwork.\n\nNow, where did I leave my... Oh, delightful! Why am I still writing this down?', 0, 0, 0, 46455); -- 6335



UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `value`=2 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14065 WHERE `id`=49097; -- 49097

UPDATE `creature_template` SET `ScriptName`='npc_tal_galan_177227' WHERE  `entry`=177227;
UPDATE `gameobject_template` SET `ScriptName`='go_waystone_to_oribos_368216' WHERE  `entry`=368216;
UPDATE `creature_template` SET `ScriptName`='npc_tal_galan_177927' WHERE  `entry`=177927;
UPDATE `creature_template` SET `ScriptName`='npc_highlord_bolvar_fordragon_177228' WHERE  `entry`=177228;
UPDATE `creature_template` SET `ScriptName`='npc_surveyer_mnemis_180525' WHERE  `entry`=180525;

REPLACE INTO `item_script_names` (`Id`, `ScriptName`) VALUES 
('187504', 'item_restorative_contraption');

UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45 WHERE `entry`=90578; -- Stellagosa Chain Bunny - All Phases
UPDATE `creature_template` SET `VerifiedBuild`=46366 WHERE `entry`=90578; -- Stellagosa Chain Bunny - All Phases

UPDATE `creature_template` SET `minlevel`=45, `maxlevel`=45, `faction`=190, `speed_run`=2.857142925262451171, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2099200, `HoverHeight`=5.849999904632568359 WHERE `entry`=90546; -- Stellagosa
UPDATE `creature_template` SET `VerifiedBuild`=46366 WHERE `entry`=90546; -- Stellagosa

UPDATE `quest_template` SET `VerifiedBuild`=46366 WHERE `ID`=37450; -- Saving Stellagosa

UPDATE `quest_poi` SET `VerifiedBuild`=46366 WHERE (`QuestID`=37450 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=37450 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=37450 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=37450 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=37450 AND `BlobIndex`=0 AND `Idx1`=0);
UPDATE `quest_poi_points` SET `VerifiedBuild`=46366 WHERE (`QuestID`=37450 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=37450 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=37450 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=37450 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=37450 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=37450 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=37450 AND `Idx1`=0 AND `Idx2`=0);
UPDATE `quest_details` SET `VerifiedBuild`=46366 WHERE `ID` = 37450;

DELETE FROM `creature_queststarter` WHERE `id`= 90474 AND `quest` = 37450;
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(90474, 37450, 46366); -- Saving Stellagosa offered Demon Hunter

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (90546, 90578);
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`, `InteractionPauseTimer`) VALUES
(90546, 0, 0, 1, 0, 0, 0, NULL), -- Stellagosa
(90578, 0, 0, 1, 0, 0, 0, NULL); -- Stellagosa Chain Bunny - All Phases


DELETE FROM `creature_template_addon` WHERE `entry` = 89978;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(89978, 0, 0, 0, 1, 0, 0, 0, 0, 3, ''); -- 89978 (Projection of Senegos)

UPDATE `creature_template` SET `gossip_menu_id`= 18195, `minlevel`=45, `maxlevel`=45, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2131968, `VerifiedBuild`=46366 WHERE `entry`=89978; -- Projection of Senegos

UPDATE `creature_questender` SET `VerifiedBuild`=46366 WHERE `id`=89978 AND `quest`=37855;

DELETE FROM `creature_queststarter` WHERE (`id`=90916 AND `quest`=37856) OR (`id`=89975 AND `quest` = 37855);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(89975, 37855, 46366); -- The Last of the Last offered Senegos

UPDATE `quest_details` SET `VerifiedBuild`=46366 WHERE `ID` = 37855;

UPDATE `quest_poi_points` SET `VerifiedBuild`=46366 WHERE (`QuestID`=37855 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=37855 AND `Idx1`=0 AND `Idx2`=0);

UPDATE `quest_template` SET `VerifiedBuild`=46366 WHERE `ID`=37855; -- The Last of the Last

UPDATE `quest_offer_reward` SET `VerifiedBuild`=46366 WHERE `ID` = 37855;

UPDATE `quest_poi` SET `VerifiedBuild`=46366 WHERE (`QuestID`=37855 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=37855 AND `BlobIndex`=0 AND `Idx1`=0);

