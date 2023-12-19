UPDATE `smart_scripts` SET `event_type`='8', `event_param2`='0', `event_param3`='0', `event_param4`='0', `action_type`='64', `action_param1`='1', `target_type`='7', `comment`='Spell Hit - Store Invoker Target 1' WHERE  `entryorguid`=38937 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `link`='2', `event_type`='23', `event_flags`='1', `event_param1`='73133', `event_param2`='3', `target_type`='12', `target_param1`='1', `comment`='Aura Stacks - Credit Target 1' WHERE  `entryorguid`=38937 AND `source_type`=0 AND `id`=1 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38937, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 29266, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link - Collapse with feign death');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38937, 0, 4, 0, 1, 0, 100, 0, 0, 0, 1000, 1000, 0, '', 86, 68561, 6, 18, 10, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'OOC - Nearby Players Invoke cast Dummy Trigger to Self');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38937, 0, 5, 0, 8, 0, 100, 0, 68561, 0, 0, 0, 0, '', 85, 73134, 6, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Spell Hit Dummy Trigger - Invoke Tadpole Fear Aura (condition)');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38937, 0, 6, 0, 1, 0, 100, 0, 0, 0, 1000, 1000, 0, '', 86, 56685, 6, 18, 80, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'OOC - Nearby Players Invoke cast Dummy Trigger to Self');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38937, 0, 7, 0, 8, 0, 100, 0, 56685, 0, 0, 0, 0, '', 28, 73134, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Spell Hit Dummy Trigger - Remove Tadpole Fear Aura (condition)');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (38937, 0, 8, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, '', 18, 770, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spawn - Set Unattackable');

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 6, 38937, 0, 1, 9, 0, 24999, 0, 0, 0, 0, '', '(AND)SAI only if invoker has active/taken quest');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (22, 8, 38937, 0, 1, 9, 0, 24999, 0, 0, 1, 0, '', '(OR)SAI only if invoker quest not taken (completed\rewarded)');

REPLACE INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, event_param5, event_param_string, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_param4, target_x, target_y, target_z, target_o, comment) VALUES (57779, 0, 0, 1, 8, 0, 100, 0, 109109, 0, 0, 0, 0, '', 44, 632, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Huo - On Spellhit - Add Phase');
REPLACE INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, event_param5, event_param_string, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_param4, target_x, target_y, target_z, target_o, comment) VALUES (57779, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 80, 5777900, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Huo - On Spellhit - Run Script');

DELETE FROM `quest_offer_reward` WHERE `ID`=32664;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(32664, 0, 0, 0, 0, 0, 0, 0, 0, 'Don\'t forget to buy your mount while you are here! You can buy one from Lelanai right here.', 46313); -- Learn To Ride

UPDATE `quest_offer_reward` SET `RewardText`='It sounds like she loved it. Thank you for bringing the book to Sister Aquinne, $n. One of these days, I intend to take her up on her invitation to visit her in Darnassus.', `VerifiedBuild`=46313 WHERE `ID`=6343; -- Return to Nyoma
UPDATE `quest_offer_reward` SET `VerifiedBuild`=46313 WHERE `ID` IN (6342, 6341, 14039, 935, 14005, 933, 7383, 937, 922, 12331, 932, 13946, 487, 489, 483, 13945, 929, 476, 475, 6344, 28731, 2159, 488);
UPDATE `quest_offer_reward` SET `RewardText`='I knew you were more than capable of ridding the lake of that horrible beast.$B$BIt is a distressing situation; Oakenscowl was once a grand leader amongst his kind... but corruption does not discriminate between the lowly and the noble.$B$BThe size of this tumor is quite disturbing, but I must study it to learn more about the disease that upsets the timberling population.$B$BThank you, $n.', `VerifiedBuild`=46313 WHERE `ID`=2499; -- Oakenscowl
UPDATE `quest_offer_reward` SET `RewardText`='Where did you get this?  I haven\'t seen a plant like this since a sojourn I made to the Swamp of Sorrows... decades ago!  It\'s amazing that a specimen made its way to Teldrassil.  And it\'s grown to such a size!$B$BThank you, $n.  Forgive my shortness of words, but there is a test I would like to perform on this frond...', `VerifiedBuild`=46313 WHERE `ID`=931; -- The Shimmering Frond
UPDATE `quest_offer_reward` SET `RewardText`='Well done! These tumors are the symptom of the timberling\'s disease. They are filled with a poison that we must cleanse from our new land.$B$BI will dispose of these tumors. Thank you, $n.', `VerifiedBuild`=46313 WHERE `ID`=923; -- Mossy Tumors
UPDATE `quest_offer_reward` SET `RewardText`='The forest mourns for Lady Sathrah, but it was something that had to be done. I hope now that she can rest in peace.$B$BThank you, $n.', `VerifiedBuild`=46313 WHERE `ID`=2518; -- Tears of the Moon
UPDATE `quest_offer_reward` SET `Emote1`=1, `Emote2`=2, `RewardText`='That\'s a lot!  I\'m afraid they\'re spreading at a dangerous rate.  I hope I can solve the riddle of what is tainting them.$B$BThank you for your help, $n.  The land is a cleaner place from your efforts.', `VerifiedBuild`=46313 WHERE `ID`=919; -- Timberling Sprouts
UPDATE `quest_offer_reward` SET `Emote1`=2, `VerifiedBuild`=46313 WHERE `ID`=918; -- Timberling Seeds
UPDATE `quest_offer_reward` SET `RewardText`='You found this on Teldrassil?  Intriguing... this fruit is exotic.  Perhaps its seeds were brought here from far off.  Perhaps even as far as Azeroth!  And there\'s something about this fruit... it seems to have reacted very strangely with the soil of Teldrassil.$B$BThank you, $n.  Now if you\'ll excuse me, I must study this further...', `VerifiedBuild`=46313 WHERE `ID`=930; -- The Glowing Fruit
UPDATE `quest_offer_reward` SET `RewardText`='Ah, it\'s here!  I have waited for this rare earth for quite some time.  I hope it\'s still fresh...$B$BThank you for bringing it to me, $n.  You are a $r who is generous with $ghis:her; time.', `VerifiedBuild`=46313 WHERE `ID`=997; -- Denalan's Earth
UPDATE `quest_offer_reward` SET `RewardText`='$n you have proven yourself a most worthy and able $c.  A $r who follows the path of honor as sure as you do is certain to find great glory in this world.$b$bUrsal\'s death brings safety to our once slumbering druids, but the source of his corruption yet remains within our forests. With time, I trust that you will find this evil and cleanse it for the sake of all of our people. You are destined for great things, young $c.', `VerifiedBuild`=46313 WHERE `ID`=486; -- Ursal the Mauler
UPDATE `quest_offer_reward` SET `Emote1`=1, `RewardText`='I am finally free of the control of the Gnarlpine. Thank you, $n.$B$BMy spirit may now rest peacefully forever in the Emerald Dream.$B$BPerhaps one day we may meet again, young $c. But, for now, please accept this reward as a symbol of my gratitude.', `VerifiedBuild`=46313 WHERE `ID`=2561; -- Druid of the Claw
UPDATE `quest_offer_reward` SET `RewardText`='Thank you, $n.$B$BWhat an odd trinket this is... I can sense the vile aura emanating from it; this is a very powerful enchantment.', `VerifiedBuild`=46313 WHERE `ID`=2541; -- The Sleeping Druid
UPDATE `quest_offer_reward` SET `RewardText`='Now I can repair my dreamcatcher.  Thank you, $n.', `VerifiedBuild`=46313 WHERE `ID`=2459; -- Ferocitas the Dream Eater
UPDATE `quest_offer_reward` SET `RewardText`='My emerald dreamcatcher is of great importance to me. It is a gift only given to few. Thank you for returning it, $n.', `VerifiedBuild`=46313 WHERE `ID`=2438; -- The Emerald Dreamcatcher

DELETE FROM `quest_poi` WHERE (`QuestID`=2518 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=2518 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=923 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=923 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=483 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=483 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=483 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=483 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=483 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=483 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=28731 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=28731 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(2518, 0, 2, 32, 0, 0, 1, 57, 0, 0, 0, 0, 0, 81740, 0, 46313), -- Tears of the Moon
(2518, 0, 1, 0, 256358, 8344, 1, 57, 0, 1, 0, 0, 0, 0, 0, 46313), -- Tears of the Moon
(923, 0, 2, 32, 0, 0, 1, 57, 0, 0, 0, 0, 0, 57232, 0, 46313), -- Mossy Tumors
(923, 0, 1, 0, 254706, 5170, 1, 57, 0, 1, 0, 0, 0, 0, 0, 46313), -- Mossy Tumors
(483, 0, 5, 32, 0, 0, 1, 57, 0, 0, 0, 0, 0, 38704, 0, 46313), -- The Relics of Wakening
(483, 0, 4, 3, 253875, 3408, 1, 61, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Relics of Wakening
(483, 0, 3, 2, 253874, 3407, 1, 61, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Relics of Wakening
(483, 0, 2, 1, 253873, 3406, 1, 61, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Relics of Wakening
(483, 0, 1, 0, 253872, 3405, 1, 61, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Relics of Wakening
(483, 0, 0, -1, 0, 0, 1, 57, 0, 0, 0, 0, 0, 38704, 0, 46313), -- The Relics of Wakening
(28731, 0, 1, 32, 0, 0, 1, 460, 0, 0, 0, 0, 0, 57227, 0, 46313), -- Teldrassil: Passing Awareness
(28731, 0, 0, -1, 0, 0, 1, 57, 0, 1, 0, 0, 0, 0, 0, 46313); -- Teldrassil: Passing Awareness

UPDATE `quest_poi` SET `VerifiedBuild`=46313 WHERE (`QuestID`=6343 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=6343 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=6342 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=6342 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14039 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=14039 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=935 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=935 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=14005 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=14005 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=14005 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=931 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=931 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=931 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=933 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=933 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=933 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=2499 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=2499 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=2499 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=937 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=937 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=937 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=7383 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=7383 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=7383 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=922 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=922 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=930 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=930 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=918 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=918 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=918 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=919 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=919 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=919 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=32664 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=932 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=932 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=932 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13946 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13946 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13946 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=997 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=997 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=487 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=487 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=487 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=486 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=486 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=486 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=2561 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=2561 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=2561 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=2541 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=2541 AND `BlobIndex`=5 AND `Idx1`=6) OR (`QuestID`=2541 AND `BlobIndex`=4 AND `Idx1`=5) OR (`QuestID`=2541 AND `BlobIndex`=3 AND `Idx1`=4) OR (`QuestID`=2541 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=2541 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=2541 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=2541 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=2459 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=2459 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=2459 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=2459 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=13945 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=13945 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=13945 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=476 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=476 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=6341 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=6341 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=6344 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=6344 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=929 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=929 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=929 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=929 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=475 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=475 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=2438 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=2438 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=2438 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=489 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=489 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=489 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=488 AND `BlobIndex`=0 AND `Idx1`=11) OR (`QuestID`=488 AND `BlobIndex`=2 AND `Idx1`=10) OR (`QuestID`=488 AND `BlobIndex`=1 AND `Idx1`=9) OR (`QuestID`=488 AND `BlobIndex`=0 AND `Idx1`=8) OR (`QuestID`=488 AND `BlobIndex`=2 AND `Idx1`=7) OR (`QuestID`=488 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=488 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=488 AND `BlobIndex`=3 AND `Idx1`=4) OR (`QuestID`=488 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=488 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=488 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=488 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=2159 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=2159 AND `BlobIndex`=0 AND `Idx1`=0);
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `UiMapID`=57, `VerifiedBuild`=46313 WHERE (`QuestID`=2518 AND `BlobIndex`=0 AND `Idx1`=0); -- Tears of the Moon
UPDATE `quest_poi` SET `ObjectiveIndex`=-1, `QuestObjectiveID`=0, `QuestObjectID`=0, `UiMapID`=57, `VerifiedBuild`=46313 WHERE (`QuestID`=923 AND `BlobIndex`=0 AND `Idx1`=0); -- Mossy Tumors
DELETE FROM `quest_poi_points` WHERE (`QuestID`=2518 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=923 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=923 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=923 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=923 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=923 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=923 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=923 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=923 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=923 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=483 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=483 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=483 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=483 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=483 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=483 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=28731 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=28731 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(2518, 2, 0, 10677, 1934, 1336, 46313), -- Tears of the Moon
(923, 2, 0, 10118, 1653, 1324, 46313), -- Mossy Tumors
(923, 1, 8, 10383, 1582, 1291, 46313), -- Mossy Tumors
(923, 1, 7, 10380, 1651, 1292, 46313), -- Mossy Tumors
(923, 1, 6, 10415, 1685, 1294, 46313), -- Mossy Tumors
(923, 1, 5, 10683, 1685, 1290, 46313), -- Mossy Tumors
(923, 1, 4, 10852, 1649, 1278, 46313), -- Mossy Tumors
(923, 1, 3, 10948, 1615, 1271, 46313), -- Mossy Tumors
(923, 1, 2, 10951, 1580, 1271, 46313), -- Mossy Tumors
(923, 1, 1, 10949, 1549, 1272, 46313), -- Mossy Tumors
(483, 5, 0, 9811, 964, 1309, 46313), -- The Relics of Wakening
(483, 4, 0, 9741, 1527, 1460, 46313), -- The Relics of Wakening
(483, 3, 0, 9839, 1546, 1344, 46313), -- The Relics of Wakening
(483, 2, 0, 9713, 1538, 1461, 46313), -- The Relics of Wakening
(483, 1, 0, 9882, 1490, 1356, 46313), -- The Relics of Wakening
(483, 0, 0, 9811, 964, 1309, 46313), -- The Relics of Wakening
(28731, 1, 0, 10493, 807, 1397, 46313), -- Teldrassil: Passing Awareness
(28731, 0, 0, 9737, 956, 1327, 46313); -- Teldrassil: Passing Awareness

UPDATE `quest_poi_points` SET `VerifiedBuild`=46313 WHERE (`QuestID`=6343 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=6343 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=6342 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=6342 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14039 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14039 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=935 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=935 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=14005 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=14005 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=14005 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=931 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=931 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=931 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=933 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=933 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=933 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=2499 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=2499 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=2499 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=937 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=937 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=937 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=937 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=937 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=937 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=937 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=937 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=937 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=937 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=937 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=937 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=937 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=7383 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=7383 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=7383 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=922 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=922 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=930 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=930 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=918 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=918 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=918 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=918 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=918 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=918 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=918 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=918 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=918 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=918 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=918 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=918 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=918 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=918 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=919 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=919 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=919 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=919 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=919 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=919 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=919 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=919 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=919 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=919 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=919 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=919 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=919 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=919 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=32664 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=932 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=932 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=932 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13946 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13946 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13946 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13946 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13946 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13946 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13946 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13946 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=997 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=997 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=487 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=487 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=487 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=487 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=487 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=487 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=487 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=487 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=487 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=486 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=486 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=486 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=2561 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=2561 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=2561 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=2541 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=2541 AND `Idx1`=6 AND `Idx2`=3) OR (`QuestID`=2541 AND `Idx1`=6 AND `Idx2`=2) OR (`QuestID`=2541 AND `Idx1`=6 AND `Idx2`=1) OR (`QuestID`=2541 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=2541 AND `Idx1`=5 AND `Idx2`=9) OR (`QuestID`=2541 AND `Idx1`=5 AND `Idx2`=8) OR (`QuestID`=2541 AND `Idx1`=5 AND `Idx2`=7) OR (`QuestID`=2541 AND `Idx1`=5 AND `Idx2`=6) OR (`QuestID`=2541 AND `Idx1`=5 AND `Idx2`=5) OR (`QuestID`=2541 AND `Idx1`=5 AND `Idx2`=4) OR (`QuestID`=2541 AND `Idx1`=5 AND `Idx2`=3) OR (`QuestID`=2541 AND `Idx1`=5 AND `Idx2`=2) OR (`QuestID`=2541 AND `Idx1`=5 AND `Idx2`=1) OR (`QuestID`=2541 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=2541 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=2541 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=2541 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=2541 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=2541 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=2541 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=2541 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=2541 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=2541 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=2541 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=2541 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=2541 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=2541 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=2541 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=2541 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=2541 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=2541 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=2541 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=2541 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=2541 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=2541 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=2541 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=2541 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=2459 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=2459 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=2459 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=2459 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=2459 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=2459 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=2459 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=2459 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=2459 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=13945 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=13945 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=13945 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=13945 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=13945 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=13945 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=13945 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=13945 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=13945 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=13945 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=13945 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=13945 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=13945 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=476 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=476 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=6341 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=6341 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=6344 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=6344 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=929 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=929 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=929 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=929 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=475 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=475 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=2438 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=2438 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=2438 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=489 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=489 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=489 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=489 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=489 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=489 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=489 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=489 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=489 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=489 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=489 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=489 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=488 AND `Idx1`=11 AND `Idx2`=0) OR (`QuestID`=488 AND `Idx1`=10 AND `Idx2`=5) OR (`QuestID`=488 AND `Idx1`=10 AND `Idx2`=4) OR (`QuestID`=488 AND `Idx1`=10 AND `Idx2`=3) OR (`QuestID`=488 AND `Idx1`=10 AND `Idx2`=2) OR (`QuestID`=488 AND `Idx1`=10 AND `Idx2`=1) OR (`QuestID`=488 AND `Idx1`=10 AND `Idx2`=0) OR (`QuestID`=488 AND `Idx1`=9 AND `Idx2`=8) OR (`QuestID`=488 AND `Idx1`=9 AND `Idx2`=7) OR (`QuestID`=488 AND `Idx1`=9 AND `Idx2`=6) OR (`QuestID`=488 AND `Idx1`=9 AND `Idx2`=5) OR (`QuestID`=488 AND `Idx1`=9 AND `Idx2`=4) OR (`QuestID`=488 AND `Idx1`=9 AND `Idx2`=3) OR (`QuestID`=488 AND `Idx1`=9 AND `Idx2`=2) OR (`QuestID`=488 AND `Idx1`=9 AND `Idx2`=1) OR (`QuestID`=488 AND `Idx1`=9 AND `Idx2`=0) OR (`QuestID`=488 AND `Idx1`=8 AND `Idx2`=7) OR (`QuestID`=488 AND `Idx1`=8 AND `Idx2`=6) OR (`QuestID`=488 AND `Idx1`=8 AND `Idx2`=5) OR (`QuestID`=488 AND `Idx1`=8 AND `Idx2`=4) OR (`QuestID`=488 AND `Idx1`=8 AND `Idx2`=3) OR (`QuestID`=488 AND `Idx1`=8 AND `Idx2`=2) OR (`QuestID`=488 AND `Idx1`=8 AND `Idx2`=1) OR (`QuestID`=488 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=488 AND `Idx1`=7 AND `Idx2`=5) OR (`QuestID`=488 AND `Idx1`=7 AND `Idx2`=4) OR (`QuestID`=488 AND `Idx1`=7 AND `Idx2`=3) OR (`QuestID`=488 AND `Idx1`=7 AND `Idx2`=2) OR (`QuestID`=488 AND `Idx1`=7 AND `Idx2`=1) OR (`QuestID`=488 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=488 AND `Idx1`=6 AND `Idx2`=4) OR (`QuestID`=488 AND `Idx1`=6 AND `Idx2`=3) OR (`QuestID`=488 AND `Idx1`=6 AND `Idx2`=2) OR (`QuestID`=488 AND `Idx1`=6 AND `Idx2`=1) OR (`QuestID`=488 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=488 AND `Idx1`=5 AND `Idx2`=4) OR (`QuestID`=488 AND `Idx1`=5 AND `Idx2`=3) OR (`QuestID`=488 AND `Idx1`=5 AND `Idx2`=2) OR (`QuestID`=488 AND `Idx1`=5 AND `Idx2`=1) OR (`QuestID`=488 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=488 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=488 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=488 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=488 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=488 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=488 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=488 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=488 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=488 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=488 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=488 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=488 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=488 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=488 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=488 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=488 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=488 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=488 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=488 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=488 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=488 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=488 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=488 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=488 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=488 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=488 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=2159 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=2159 AND `Idx1`=0 AND `Idx2`=0);
UPDATE `quest_poi_points` SET `X`=10977, `Y`=1841, `Z`=1333, `VerifiedBuild`=46313 WHERE (`QuestID`=2518 AND `Idx1`=1 AND `Idx2`=0); -- Tears of the Moon
UPDATE `quest_poi_points` SET `X`=10677, `Y`=1934, `Z`=1336, `VerifiedBuild`=46313 WHERE (`QuestID`=2518 AND `Idx1`=0 AND `Idx2`=0); -- Tears of the Moon
UPDATE `quest_poi_points` SET `X`=10930, `Y`=1522, `Z`=1278, `VerifiedBuild`=46313 WHERE (`QuestID`=923 AND `Idx1`=1 AND `Idx2`=0); -- Mossy Tumors
UPDATE `quest_poi_points` SET `X`=10118, `Y`=1653, `Z`=1324, `VerifiedBuild`=46313 WHERE (`QuestID`=923 AND `Idx1`=0 AND `Idx2`=0); -- Mossy Tumors

DELETE FROM `quest_greeting` WHERE (`ID`=2083 AND `Type`=0);
INSERT INTO `quest_greeting` (`ID`, `Type`, `GreetEmoteType`, `GreetEmoteDelay`, `Greeting`, `VerifiedBuild`) VALUES
(2083, 0, 0, 0, 'Like Teldrassil itself, Dolanaar embraces those who embrace the land.', 46313); -- 2083

UPDATE `quest_greeting` SET `VerifiedBuild`=46313 WHERE (`ID`=2080 AND `Type`=0);

DELETE FROM `quest_details` WHERE `ID` IN (7383 /*Teldrassil: The Burden of the Kaldorei*/, 922 /*Rellian Greenspyre*/, 918 /*Timberling Seeds*/, 919 /*Timberling Sprouts*/, 32664 /*Learn To Ride*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(7383, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- Teldrassil: The Burden of the Kaldorei
(922, 1, 2, 0, 0, 0, 0, 0, 0, 46313), -- Rellian Greenspyre
(918, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- Timberling Seeds
(919, 1, 0, 0, 0, 0, 0, 0, 0, 46313), -- Timberling Sprouts
(32664, 1, 0, 0, 0, 0, 0, 0, 0, 46313); -- Learn To Ride

UPDATE `quest_details` SET `VerifiedBuild`=46313 WHERE `ID` IN (6343, 6342, 26383, 29074, 11356, 46727, 14039, 935, 14005, 931, 933, 2499, 2518, 937, 923, 930, 932, 13946, 997, 487, 486, 2561, 2541, 2459, 13945, 483, 476, 6341, 6344, 929, 475, 2438, 489, 488, 2159);


UPDATE `quest_request_items` SET `EmoteOnComplete`=1 WHERE `ID` IN (7383, 28731);
UPDATE `quest_request_items` SET `CompletionText`='Did you kill Lord Melenas yet? It is vital that he be taken care of quickly and quietly, $n. His continued existence is an embarrassment to us all.' WHERE `ID`=932; -- Twisted Hatred
UPDATE `quest_request_items` SET `CompletionText`='Please move swiftly. I can only hope that my emerald dreamcatcher has been unharmed by the furbolg.$B$BHave you recovered it yet, $n?' WHERE `ID`=2438; -- The Emerald Dreamcatcher
UPDATE `quest_request_items` SET `EmoteOnComplete`=0 WHERE `ID`=931;
UPDATE `quest_request_items` SET `EmoteOnComplete`=0, `CompletionText`='$n, you look like you have something to tell me.  Do you have news concerning the timberlings?' WHERE `ID`=930; -- The Glowing Fruit
UPDATE `quest_request_items` SET `EmoteOnComplete`=3, `CompletionText`='Have you been to Wellspring Lake, $n?  Have you been hunting the timberlings there?' WHERE `ID`=923; -- Mossy Tumors
UPDATE `quest_request_items` SET `EmoteOnComplete`=2 WHERE `ID`=922;
UPDATE `quest_request_items` SET `EmoteOnComplete`=6, `CompletionText`='Hello, $n.  Have you found any sprouts near the waters?' WHERE `ID`=919; -- Timberling Sprouts
UPDATE `quest_request_items` SET `EmoteOnComplete`=6 WHERE `ID` IN (918, 14039, 6342, 2499);
UPDATE `quest_request_items` SET `EmoteOnComplete`=0, `CompletionText`='$n, be wary when approaching my physical form; the enchantment it is under is quite powerful.', `VerifiedBuild`=46313 WHERE `ID`=2561; -- Druid of the Claw
UPDATE `quest_request_items` SET `EmoteOnComplete`=0, `CompletionText`='What do you have for me, $n?  A lovely snack I presume?' WHERE `ID`=489; -- Seek Redemption!
UPDATE `quest_request_items` SET `EmoteOnComplete`=1, `CompletionText`='Have you been a busy little bee, $n?  I\'ve been waiting for you to bring me what I need.' WHERE `ID`=488; -- Zenn's Bidding
UPDATE `quest_request_items` SET `EmoteOnIncomplete`=1, `VerifiedBuild`=46313 WHERE `ID`=2541; -- The Sleeping Druid
UPDATE `quest_request_items` SET `EmoteOnIncomplete`=1, `CompletionText`='$n, the kidnapped Druids of the Talon will be forever trapped in the Emerald Dream if we cannot retrieve the Relics of Wakening from the Ban\'ethil Barrow Den to the west.$b$bFor every minute we delay their fate comes one step closer to eternal doom.', `VerifiedBuild`=46313 WHERE `ID`=483; -- The Relics of Wakening
UPDATE `quest_request_items` SET `EmoteOnComplete`=18, `EmoteOnCompleteDelay`=100 WHERE `ID`=2518; -- Tears of the Moon
UPDATE `quest_request_items` SET `EmoteOnComplete`=6, `CompletionText`='$n, you\'re back from Darnassus?' WHERE `ID`=6343; -- Return to Nyoma




DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (2162,34585,7411,34584,34506,34249,171119,34583,34586));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(2162, 0, 0, 0, 72, 46313),
(34585, 0, 0, 0, 72, 46313),
(7411, 0, 0, 0, 72, 46313),
(34584, 0, 0, 0, 72, 46313),
(34506, 0, 0, 0, 861, 46313),
(34249, 0, 0, 0, 72, 46313),
(171119, 0, 0, 0, 371, 46313),
(34583, 0, 0, 0, 72, 46313),
(34586, 0, 0, 0, 72, 46313);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46313 WHERE (`DifficultyID`=0 AND `Entry` IN (53522,10118,3607,7916,7907,3838,42970,42968,52642,4213,11070,47584,30715,30731,4228,11050,11083,11081,6292,4168,6034,4225,4212,4229,4159,6735,5047,51504,4161,5191,11041,4160,11042,4786,4784,4783,4226,40552,50307,50305,7316,11700,50714,50715,2912,4092,50690,36506,47569,8396,7740,11401,4165,4091,43845,52292,35281,17105,42936,4204,4156,7999,4221,4222,62450,9047,4138,4243,4219,4218,7296,4244,4220,4217,4205,4146,10089,10056,3561,2796,14602,4210,4753,35168,4223,4730,12360,12359,12358,14556,14555,4163,4215,4214,4423,14378,5782,4155,4209,4208,19173,14380,8669,15679,15678,8723,14379,4088,4087,34989,4203,7315,4164,34988,52641,52640,6142,4230,4170,8026,51371,4089,3469,7555,8665,4181,118905,4241,118917,118919,118920,118891,118916,118900,118899,118921,118918,3681,4262,34521,34642,34517,34522,34524,2021,2020,2166,7319,2019,2034,2001,3606,44030,7313,3519,2029,2027,2017,2018,2015,1997,2033,3605,6287,44027,3517,7553,3569,2080,14432,2038,2004,2005,2003,2002,2000,2852,2039,2152,10604,2151,10606,1993,7317,7318,2011,2155,1992,34530,34525,1996,2043,1999,6128,2010,2009,2025,2022,7234,7235,61757,2107,12429,3603,6286,3602,3515,4265,2041,6094,6736,3611,6781,4266,3600,63070,3614,3608,3599,2081,2078,34761,3567,3610,40553,3612,3609,47420,3613,3598,43005,3571,2083,3604,10051,3306,11942,3601,2008,2006,2007,34575,2150,2042,1998,49778,1995,6780,2082,3592,43006,2077,3596,3595,3593,3594,44617,3590,8583,63331,1984,12160,62242,2079,2031,44614,48624,48623));
UPDATE `creature_template_scaling` SET `LevelScalingDeltaMin`=0, `LevelScalingDeltaMax`=0, `VerifiedBuild`=46313 WHERE (`Entry`=65097 AND `DifficultyID`=0);


UPDATE `creature_model_info` SET `VerifiedBuild`=46313 WHERE `DisplayID` IN (47931, 47928, 9344, 1718, 7026, 7025, 1931, 37377, 29301, 37998, 2266, 10592, 35708, 27263, 27296, 2274, 10582, 10615, 10616, 4985, 2214, 5186, 2265, 2270, 2264, 2213, 5439, 3001, 37402, 3131, 10573, 10624, 10574, 5225, 5084, 5226, 2272, 37015, 37014, 6349, 11664, 36943, 36942, 1665, 2202, 36875, 30156, 35693, 7602, 6840, 11048, 7669, 2201, 37822, 29735, 16856, 2253, 2211, 39620, 2267, 2276, 8354, 2205, 2255, 2250, 6063, 2247, 2261, 2251, 2206, 9339, 9275, 2233, 2232, 14632, 2242, 5070, 29755, 2788, 6448, 6444, 6080, 14331, 14332, 2231, 2243, 2252, 2451, 14417, 4271, 2210, 2256, 2259, 14419, 7997, 7996, 14418, 2197, 2196, 29511, 2221, 6071, 2199, 29510, 37997, 37996, 5083, 2277, 2218, 7275, 2198, 6299, 7934, 2230, 2262, 8151, 19455, 1717, 33630, 6348, 1543, 10830, 3030, 1719, 4990, 33629, 5071, 1081, 2484, 904, 892, 1192, 4246, 9937, 1681, 9938, 6230, 6231, 2866, 14318, 2015, 1854, 12476, 1702, 4989, 1706, 1528, 4236, 4862, 5440, 1701, 5749, 4235, 1708, 1711, 1700, 1704, 1682, 1896, 29139, 2686, 1705, 1714, 1712, 35613, 1710, 1707, 33171, 2459, 1709, 9270, 12729, 11900, 1703, 6805, 10832, 5748, 34003, 2458, 1722, 35614, 4237, 1723, 1733, 1721, 1725, 34000, 1727, 7895, 1285, 11454, 12769);
UPDATE `creature_model_info` SET `BoundingRadius`=0.305999994277954101, `CombatReach`=1.5, `VerifiedBuild`=46313 WHERE `DisplayID` IN (2216, 22372, 74955, 74953, 74960, 74961, 74950, 74941, 74952, 74951, 74962, 29138, 29140, 29381);
UPDATE `creature_model_info` SET `BoundingRadius`=0.388999998569488525, `CombatReach`=1.5, `VerifiedBuild`=46313 WHERE `DisplayID` IN (22373, 74958, 74946, 74947, 74956, 74948, 74949, 74959, 29272);
UPDATE `creature_model_info` SET `BoundingRadius`=7.20965576171875, `VerifiedBuild`=46313 WHERE `DisplayID`=14383;
UPDATE `creature_model_info` SET `BoundingRadius`=1.510940074920654296, `VerifiedBuild`=46313 WHERE `DisplayID`=2567;
UPDATE `creature_model_info` SET `BoundingRadius`=3.127784252166748046, `VerifiedBuild`=46313 WHERE `DisplayID` IN (6213, 6214);
UPDATE `creature_model_info` SET `BoundingRadius`=0.669887661933898925, `VerifiedBuild`=46313 WHERE `DisplayID`=3022;
UPDATE `creature_model_info` SET `BoundingRadius`=1.313861012458801269, `VerifiedBuild`=46313 WHERE `DisplayID` IN (863, 3034);
UPDATE `creature_model_info` SET `BoundingRadius`=0.4951343834400177, `VerifiedBuild`=46313 WHERE `DisplayID`=6812;
UPDATE `creature_model_info` SET `BoundingRadius`=0.582511007785797119, `VerifiedBuild`=46313 WHERE `DisplayID` IN (2296, 3021);
UPDATE `creature_model_info` SET `CombatReach`=0, `VerifiedBuild`=46313 WHERE `DisplayID`=1013;
UPDATE `creature_model_info` SET `BoundingRadius`=0.889258265495300292, `VerifiedBuild`=46313 WHERE `DisplayID` IN (568, 6811);
UPDATE `creature_model_info` SET `BoundingRadius`=0.773268103599548339, `VerifiedBuild`=46313 WHERE `DisplayID` IN (6809, 3023);
UPDATE `creature_model_info` SET `BoundingRadius`=1.003674507141113281, `VerifiedBuild`=46313 WHERE `DisplayID`=6819;
UPDATE `creature_model_info` SET `BoundingRadius`=0.83639538288116455, `VerifiedBuild`=46313 WHERE `DisplayID` IN (3024, 897, 6800);
UPDATE `creature_model_info` SET `BoundingRadius`=0.650611400604248046, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46313 WHERE `DisplayID`=10034;
UPDATE `creature_model_info` SET `BoundingRadius`=0.920034945011138916, `VerifiedBuild`=46313 WHERE `DisplayID`=6801;
UPDATE `creature_model_info` SET `BoundingRadius`=1.116781949996948242, `VerifiedBuild`=46313 WHERE `DisplayID`=6817;
UPDATE `creature_model_info` SET `BoundingRadius`=0.919702708721160888, `VerifiedBuild`=46313 WHERE `DisplayID`=3033;
UPDATE `creature_model_info` SET `BoundingRadius`=0.355024725198745727, `CombatReach`=0.875, `VerifiedBuild`=46313 WHERE `DisplayID`=99873;
UPDATE `creature_model_info` SET `BoundingRadius`=0.669116318225860595, `VerifiedBuild`=46313 WHERE `DisplayID`=6804;
UPDATE `creature_model_info` SET `DisplayID_Other_Gender`=0, `VerifiedBuild`=46313 WHERE `DisplayID`=4849;
UPDATE `creature_model_info` SET `BoundingRadius`=0.752755820751190185, `VerifiedBuild`=46313 WHERE `DisplayID` IN (6798, 6799);
UPDATE `creature_model_info` SET `BoundingRadius`=0.347222000360488891, `CombatReach`=1.5, `VerifiedBuild`=46313 WHERE `DisplayID`=42946;
UPDATE `creature_model_info` SET `BoundingRadius`=0.08749999850988388, `CombatReach`=0.375, `VerifiedBuild`=46313 WHERE `DisplayID`=6300;


UPDATE `gossip_menu_option` SET `OptionText`='Where is the Rune of Nesting?', `OptionBroadcastTextId`=34642, `VerifiedBuild`=46313 WHERE (`MenuID`=10517 AND `OptionID`=5); -- OptionBroadcastTextID: 34642 - 34642
UPDATE `gossip_menu_option` SET `OptionText`='Where is the Raven Claw Talisman?', `OptionBroadcastTextId`=34645, `VerifiedBuild`=46313 WHERE (`MenuID`=10517 AND `OptionID`=2); -- OptionBroadcastTextID: 34645 - 34645
UPDATE `gossip_menu_option` SET `OptionText`='Can you lead me to the exit?', `OptionBroadcastTextId`=34670, `VerifiedBuild`=46313 WHERE (`MenuID`=10517 AND `OptionID`=0); -- OptionBroadcastTextID: 34670 - 34670
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=20225, `VerifiedBuild`=46313 WHERE (`MenuID`=11778 AND `OptionID`=0); -- OptionBroadcastTextID: 20225 - 20225 - 20232 - 20232 - 21280 - 21280 - 21294 - 21294 - 29959 - 29959 - 160603 - 160603
UPDATE `gossip_menu_option` SET `OptionText`='Where is the Sapphire of Sky?', `OptionBroadcastTextId`=34643, `VerifiedBuild`=46313 WHERE (`MenuID`=10517 AND `OptionID`=4); -- OptionBroadcastTextID: 34643 - 34643
UPDATE `gossip_menu_option` SET `VerifiedBuild`=46313 WHERE (`MenuID`=1293 AND `OptionID` IN (1,2)) OR (`MenuID`=4302 AND `OptionID`=0);
UPDATE `gossip_menu_option` SET `OptionText`='Where is the Black Feather Quill?', `OptionBroadcastTextId`=34644, `VerifiedBuild`=46313 WHERE (`MenuID`=10517 AND `OptionID`=3); -- OptionBroadcastTextID: 34644 - 34644
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=4308, `VerifiedBuild`=46313 WHERE (`MenuID`=1293 AND `OptionID`=0); -- OptionBroadcastTextID: 4308 - 4308


UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags3`=16777216 WHERE `entry`=32936; -- Tide Crawler Hatchling
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=32974; -- Laird
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=32928; -- Vile Spray

UPDATE `creature_template` SET `unit_flags`=33555200 WHERE `entry`=15384; -- OLDWorld Trigger (DO NOT DELETE)

UPDATE `creature_template` SET `npcflag`=80 WHERE `entry`=30715; -- Feyden Darkin
UPDATE `creature_template` SET `npcflag`=80 WHERE `entry`=6292; -- Eladriel

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=5047; -- Ellaercia
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=51504; -- Velia Moonbow
UPDATE `creature_template` SET `minlevel`=8, `maxlevel`=8, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=61160; -- Tiny Harvester
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `speed_walk`=1 WHERE `entry`=2162; -- Agal

UPDATE `creature_template` SET `unit_flags`=0, `unit_flags3`=0 WHERE `entry`=50307; -- Lord Candren
UPDATE `creature_template` SET `unit_flags`=0, `unit_flags3`=0 WHERE `entry`=50305; -- Moon Priestess Lasara
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=50714; -- Dyrhara
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=50715; -- Maelir
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=2912; -- Chief Archaeologist Greywhisker

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=50690; -- Tarelvir
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `npcflag`=0, `unit_flags`=768 WHERE `entry`=36506; -- Daros Moonlance
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=47569; -- Hammon the Jaded
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=8396; -- Sentinel Dalia Sunblade
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=7740; -- Gracina Spiritmights
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=4091; -- Jandria
UPDATE `creature_template` SET `minlevel`=63, `maxlevel`=63, `npcflag`=0, `unit_flags`=33088 WHERE `entry`=43845; -- Malfurion Stormrage
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=35281; -- Rukua

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=42936; -- Sentinel Cordressa Briarbow
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=4204; -- Firodren Mooncaller
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=4156; -- Astaia
UPDATE `creature_template` SET `minlevel`=63, `maxlevel`=63 WHERE `entry`=7999; -- Tyrande Whisperwind
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=4221; -- Talaelar
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=4222; -- Voloren
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`=4217; -- Mathrengyl Bearwalker
UPDATE `creature_template` SET `npcflag`=131 WHERE `entry`=4730; -- Lelanai
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags3`=0 WHERE `entry`=4423; -- Darnassian Protector
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=14378; -- Huntress Skymane
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`=19173; -- Night Elf Commoner

UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=14380; -- Huntress Leafrunner
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=14379; -- Huntress Ravenoak
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62 WHERE `entry`=4088; -- Elanaria
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=51371; -- Darnassus Hippogryph Rider
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1 WHERE `entry`=153285; -- Training Dummy
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=3469; -- Ancient of War
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=7555; -- Hawk Owl

UPDATE `creature_template` SET `faction`=124, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=118920; -- Priestess Allysa
UPDATE `creature_template` SET `faction`=124, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=118916; -- Priest Ellandras
UPDATE `creature_template` SET `faction`=124, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=118921; -- Priestess Selveria
UPDATE `creature_template` SET `faction`=124, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=118918; -- Priest Sal'shanan
UPDATE `creature_template` SET `unit_flags`=0, `unit_flags3`=0 WHERE `entry`=3681; -- Wisp
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34521; -- Bough of Corruption
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34642; -- Army of Corruption Controller
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags`=32768 WHERE `entry`=34517; -- Ally of Nature
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34522; -- Corrupted Servant
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=34524; -- Corrupted Minion
UPDATE `creature_template` SET `minlevel`=14, `maxlevel`=14, `unit_flags`=33536 WHERE `entry`=34585; -- Shade of the Kaldorei
UPDATE `creature_template` SET `minlevel`=30, `speed_walk`=1 WHERE `entry`=2021; -- Bloodfeather Matriarch
UPDATE `creature_template` SET `minlevel`=30, `speed_walk`=1 WHERE `entry`=2020; -- Bloodfeather Wind Witch
UPDATE `creature_template` SET `minlevel`=30, `speed_walk`=1, `unit_flags`=67108864 WHERE `entry`=2166; -- Oakenscowl
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=7411; -- Spirit of Sathrah
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags`=0 WHERE `entry`=7319; -- Lady Sathrah
UPDATE `creature_template` SET `minlevel`=30, `speed_walk`=1 WHERE `entry`=2019; -- Bloodfeather Fury
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `speed_run`=1.428571462631225585, `BaseAttackTime`=1500, `unit_flags`=16 WHERE `entry`=2034; -- Feral Nightsaber
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=2001; -- Giant Webwood Spider
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=3606; -- Alanna Raveneye
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=44030; -- Draelan
UPDATE `creature_template` SET `minlevel`=12, `maxlevel`=12, `unit_flags`=33536 WHERE `entry`=34584; -- Shade of the Kaldorei
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=7313; -- Priestess A'moora
UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=3519; -- Sentinel Arynia Cloudsbreak
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `speed_walk`=1, `unit_flags`=67108864 WHERE `entry`=2029; -- Timberling Mire Beast
UPDATE `creature_template` SET `minlevel`=30, `speed_walk`=1 WHERE `entry`=2027; -- Timberling Trampler
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `speed_walk`=1, `unit_flags`=16 WHERE `entry`=2017; -- Bloodfeather Rogue
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `speed_walk`=1 WHERE `entry`=2018; -- Bloodfeather Sorceress
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `speed_walk`=1, `unit_flags`=16 WHERE `entry`=2015; -- Bloodfeather Harpy
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=1997; -- Strigid Hunter
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=2033; -- Elder Nightsaber
UPDATE `creature_template` SET  `minlevel`=30, `maxlevel`=30 WHERE `entry`=3605; -- Nadyia Maneweaver
UPDATE `creature_template` SET `maxlevel`=20, `unit_flags`=768 WHERE `entry`=7553; -- Great Horned Owl
UPDATE `creature_template` SET `minlevel`=30, `speed_walk`=1 WHERE `entry`=3569; -- Bogling
UPDATE `creature_template` SET `unit_flags`=512 WHERE `entry`=2080; -- Denalan
UPDATE `creature_template` SET `BaseAttackTime`=2000 WHERE `entry`=2038; -- Lord Melenas
UPDATE `creature_template` SET `unit_flags`=8388608 WHERE `entry`=2003; -- Shadow Sprite
UPDATE `creature_template` SET `dynamicflags`=4 WHERE `entry`=2002; -- Rascal Sprite
UPDATE `creature_template` SET `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=0 WHERE `entry`=2000; -- Webwood Silkspinner
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=2852; -- Enslaved Druid of the Talon
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=2039; -- Ursal the Mauler
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2152; -- Gnarlpine Ambusher
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=1993; -- Greenpaw
UPDATE `creature_template` SET `minlevel`=8, `maxlevel`=8, `unit_flags`=33555200 WHERE `entry`=34506; -- Guiding Mist
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=7317; -- Oben Rageclaw
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2011; -- Gnarlpine Augur
UPDATE `creature_template` SET `minlevel`=6, `maxlevel`=9, `unit_flags`=32768, `unit_flags3`=1048576 WHERE `entry`=34249; -- Sentinel Huntress
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=2155; -- Sentinel Shayla Nightbreeze
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=1992; -- Tarindrella
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=34525; -- Corrupted Gnarlpine
UPDATE `creature_template` SET `speed_run`=1.428571462631225585, `BaseAttackTime`=2000, `unit_flags`=0 WHERE `entry`=1996; -- Strigid Screecher
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=2043; -- Nightsaber Stalker
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=1999; -- Webwood Venomfang
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30 WHERE `entry`=6128; -- Vorlus Vilehoof
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2010; -- Gnarlpine Defender
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2009; -- Gnarlpine Shaman
UPDATE `creature_template` SET `minlevel`=1, `maxlevel`=1, `npcflag`=1073741824, `unit_flags`=512 WHERE `entry`=61071; -- Small Frog
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2025; -- Timberling Bark Ripper
UPDATE `creature_template` SET `speed_walk`=1, `unit_flags`=0 WHERE `entry`=2022; -- Timberling
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=6, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=171119; -- Bound Lightspawn
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857193946838378 WHERE `entry`=7234; -- Ferocitas the Dream Eater
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=7235; -- Gnarlpine Mystic
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=2107; -- Gaerolas Talvethren
UPDATE `creature_template` SET `minlevel`=6, `maxlevel`=6, `unit_flags`=33536 WHERE `entry` IN (34583, 34586); -- Shade of the Kaldorei
UPDATE `creature_template` SET `npcflag`=80 WHERE `entry`=3603; -- Cyndra Kindwhisper

UPDATE `creature_template` SET `npcflag`=131 WHERE `entry`=4265; -- Nyoma

UPDATE `creature_template` SET `minlevel`=30 WHERE `entry`=6736; -- Innkeeper Keldamyr
UPDATE `creature_template` SET `minlevel`=60, `speed_run`=0.857142865657806396, `unit_flags2`=2048 WHERE `entry`=65097; -- Hoo
UPDATE `creature_template` SET  `npcflag`=3 WHERE `entry`=3600; -- Laurna Morninglight
UPDATE `creature_template` SET `faction`=80, `unit_flags2`=2048 WHERE `entry`=63070; -- Valeena
UPDATE `creature_template` SET  `npcflag`=3 WHERE `entry`=3599; -- Jannok Breezesong

UPDATE `creature_template` SET `minlevel`=60, `npcflag`=8195, `unit_flags`=512 WHERE `entry`=40553; -- Fidelio
UPDATE `creature_template` SET `npcflag`=65 WHERE `entry`=47420; -- Iranis Shadebloom
UPDATE `creature_template` SET  `npcflag`=3 WHERE `entry`=3598; -- Kyra Windblade


UPDATE `creature_template` SET `npcflag`=80 WHERE `entry`=3604; -- Malorne Bladeleaf
UPDATE `creature_template` SET  `minlevel`=30, `maxlevel`=30, `npcflag`=4194433 WHERE `entry`=10051; -- Seriadne

UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=11942; -- Orenthil Whisperwind
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`=3601; -- Dazalar
UPDATE `creature_template` SET `speed_walk`=1, `unit_flags`=0 WHERE `entry`=2008; -- Gnarlpine Warrior
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2006; -- Gnarlpine Ursa
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=2007; -- Gnarlpine Gardener
UPDATE `creature_template` SET `npcflag`=0, `unit_flags`=768 WHERE `entry`=2150; -- Zenn Foulhoof
UPDATE `creature_template` SET `speed_run`=1.142857193946838378, `BaseAttackTime`=1400, `unit_flags`=16 WHERE `entry`=2042; -- Nightsaber
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=1998; -- Webwood Lurker
UPDATE `creature_template` SET `faction`=15, `speed_run`=1.428571462631225585, `HoverHeight`=1 WHERE `entry`=1995; -- Strigid Owl
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=6780; -- Porthannius
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=2082; -- Gilshalan Windwalker
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=3592; -- Andiss
UPDATE `creature_template` SET `npcflag`=3, `unit_flags`=768 WHERE `entry`=43006; -- Rhyanda
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=2077; -- Melithar Staghelm
UPDATE `creature_template` SET `npcflag`=3, `unit_flags`=768 WHERE `entry`=3596; -- Ayanna Everstride
UPDATE `creature_template` SET `npcflag`=3, `unit_flags`=768 WHERE `entry`=3595; -- Shanda
UPDATE `creature_template` SET `npcflag`=3, `unit_flags`=768 WHERE `entry`=3593; -- Alyissia
UPDATE `creature_template` SET `npcflag`=3, `unit_flags`=768 WHERE `entry`=3594; -- Frahun Shadewhisper
UPDATE `creature_template` SET `minlevel`=30, `maxlevel`=30, `unit_flags2`=0 WHERE `entry`=44617; -- Wounded Sentinel
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=3590; -- Janna Brightmoon
UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=8583; -- Dirania Silvershine
UPDATE `creature_template` SET `faction`=1732, `npcflag`=3, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=63331; -- Laoxi
UPDATE `creature_template` SET `minlevel`=63, `maxlevel`=63 WHERE `entry`=12160; -- Shadowglen Sentinel
UPDATE `creature_template` SET `npcflag`=1073741824, `speed_run`=0.857142865657806396, `unit_flags`=512, `unit_flags2`=2048 WHERE `entry`=62242; -- Crested Owl
UPDATE `creature_template` SET `faction`=7, `unit_flags3`=16 WHERE `entry`=2031; -- Young Nightsaber
UPDATE `creature_template` SET `unit_flags3`=8388625 WHERE `entry`=44614; -- Training Dummy
UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry` IN (48624, 48623); -- Wisp
UPDATE `creature_template` SET `minlevel`=5, `maxlevel`=13, `BaseAttackTime`=1892 WHERE `entry`=165189; -- Generic Hunter Pet


UPDATE `quest_template` SET `RewardBonusMoney`=2520, `VerifiedBuild`=46313 WHERE `ID`=6343; -- Return to Nyoma
UPDATE `quest_template` SET `RewardBonusMoney`=1260, `VerifiedBuild`=46313 WHERE `ID`=6342; -- An Unexpected Gift
UPDATE `quest_template` SET `RewardBonusMoney`=2520, `VerifiedBuild`=46313 WHERE `ID`=13522; -- Threat from the Water
UPDATE `quest_template` SET `RewardBonusMoney`=660, `VerifiedBuild`=46313 WHERE `ID`=26383; -- Breaking Waves of Change
UPDATE `quest_template` SET `RewardBonusMoney`=2520, `VerifiedBuild`=46313 WHERE `ID`=14039; -- Home of the Kaldorei
UPDATE `quest_template` SET `RewardBonusMoney`=2520, `VerifiedBuild`=46313 WHERE `ID`=935; -- The Waters of Teldrassil
UPDATE `quest_template` SET `RewardBonusMoney`=1440, `Flags`=2097152, `VerifiedBuild`=46313 WHERE `ID`=14005; -- The Vengeance of Elune
UPDATE `quest_template` SET `RewardBonusMoney`=1080, `VerifiedBuild`=46313 WHERE `ID`=931; -- The Shimmering Frond
UPDATE `quest_template` SET `RewardBonusMoney`=1080, `VerifiedBuild`=46313 WHERE `ID`=933; -- Teldrassil: The Coming Dawn
UPDATE `quest_template` SET `RewardBonusMoney`=1080, `Flags`=8, `VerifiedBuild`=46313 WHERE `ID`=2499; -- Oakenscowl
UPDATE `quest_template` SET `RewardBonusMoney`=1260, `Flags`=8, `VerifiedBuild`=46313 WHERE `ID`=2518; -- Tears of the Moon
UPDATE `quest_template` SET `RewardBonusMoney`=1020, `VerifiedBuild`=46313 WHERE `ID`=937; -- The Enchanted Glade
UPDATE `quest_template` SET `RewardBonusMoney`=1260, `VerifiedBuild`=46313 WHERE `ID`=923; -- Mossy Tumors
UPDATE `quest_template` SET `RewardBonusMoney`=1020, `VerifiedBuild`=46313 WHERE `ID`=7383; -- Teldrassil: The Burden of the Kaldorei
UPDATE `quest_template` SET `RewardBonusMoney`=720, `VerifiedBuild`=46313 WHERE `ID`=922; -- Rellian Greenspyre
UPDATE `quest_template` SET `RewardBonusMoney`=840, `VerifiedBuild`=46313 WHERE `ID`=930; -- The Glowing Fruit
UPDATE `quest_template` SET `RewardBonusMoney`=1080, `VerifiedBuild`=46313 WHERE `ID`=919; -- Timberling Sprouts
UPDATE `quest_template` SET `RewardBonusMoney`=840, `VerifiedBuild`=46313 WHERE `ID`=918; -- Timberling Seeds
UPDATE `quest_template` SET `Expansion`=9, `VerifiedBuild`=46313 WHERE `ID`=12331; -- Candy Bucket
UPDATE `quest_template` SET `Flags`=524288, `Expansion`=9, `VerifiedBuild`=46313 WHERE `ID`=32664; -- Learn To Ride
UPDATE `quest_template` SET `RewardBonusMoney`=780, `Flags`=8, `VerifiedBuild`=46313 WHERE `ID`=932; -- Twisted Hatred
UPDATE `quest_template` SET `RewardBonusMoney`=780, `VerifiedBuild`=46313 WHERE `ID`=13946; -- Nature's Reprisal
UPDATE `quest_template` SET `RewardBonusMoney`=390, `VerifiedBuild`=46313 WHERE `ID`=997; -- Denalan's Earth
UPDATE `quest_template` SET `RewardBonusMoney`=780, `VerifiedBuild`=46313 WHERE `ID`=487; -- The Road to Darnassus
UPDATE `quest_template` SET `RewardBonusMoney`=960, `Flags`=8, `VerifiedBuild`=46313 WHERE `ID`=486; -- Ursal the Mauler
UPDATE `quest_template` SET `RewardBonusMoney`=840, `Flags`=10, `VerifiedBuild`=46313 WHERE `ID`=2561; -- Druid of the Claw
UPDATE `quest_template` SET `RewardBonusMoney`=660, `VerifiedBuild`=46313 WHERE `ID`=2541; -- The Sleeping Druid
UPDATE `quest_template` SET `RewardBonusMoney`=780, `Flags`=8, `VerifiedBuild`=46313 WHERE `ID`=2459; -- Ferocitas the Dream Eater
UPDATE `quest_template` SET `RewardBonusMoney`=780, `VerifiedBuild`=46313 WHERE `ID`=13945; -- Resident Danger
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46313 WHERE `ID`=483; -- The Relics of Wakening
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46313 WHERE `ID`=476; -- Gnarlpine Corruption
UPDATE `quest_template` SET `RewardBonusMoney`=120, `VerifiedBuild`=46313 WHERE `ID`=6341; -- To Darnassus
UPDATE `quest_template` SET `RewardBonusMoney`=120, `VerifiedBuild`=46313 WHERE `ID`=6344; -- Reminders of Home
UPDATE `quest_template` SET `RewardBonusMoney`=510, `VerifiedBuild`=46313 WHERE `ID`=929; -- Teldrassil: The Refusal of the Aspects
UPDATE `quest_template` SET `RewardBonusMoney`=270, `VerifiedBuild`=46313 WHERE `ID`=475; -- A Troubling Breeze
UPDATE `quest_template` SET `RewardBonusMoney`=390, `Flags`=8, `VerifiedBuild`=46313 WHERE `ID`=2438; -- The Emerald Dreamcatcher
UPDATE `quest_template` SET `RewardBonusMoney`=510, `VerifiedBuild`=46313 WHERE `ID`=489; -- Seek Redemption!
UPDATE `quest_template` SET `RewardBonusMoney`=510, `VerifiedBuild`=46313 WHERE `ID`=488; -- Zenn's Bidding
UPDATE `quest_template` SET `RewardBonusMoney`=120, `VerifiedBuild`=46313 WHERE `ID`=2159; -- Dolanaar Delivery
UPDATE `quest_template` SET `RewardBonusMoney`=510, `VerifiedBuild`=46313 WHERE `ID`=28731; -- Teldrassil: Passing Awareness


UPDATE `quest_objectives` SET `VerifiedBuild`=46313 WHERE `ID` IN (259136, 259865, 254184, 264930, 254544, 264759, 254268, 254262, 256285, 256358, 255333, 254706, 262341, 254515, 252663, 254533, 254123, 255128, 254868, 253890, 254069, 255888, 256737, 256736, 253875, 253874, 253873, 253872, 266578, 266685, 254621, 256746, 255406, 253738, 253737, 253736, 256647, 267468);
UPDATE `quest_objectives` SET `Description`='Fel Rock grellkin killed with Ireroot Seeds', `VerifiedBuild`=46313 WHERE `ID`=265120; -- 265120
UPDATE `quest_objectives` SET `Description`='Ban\'ethil Gnarlpine slain', `VerifiedBuild`=46313 WHERE `ID`=252951; -- 252951

DELETE FROM `creature_template` WHERE `entry`=190034;
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `unit_class`, `WidgetSetID`, `WidgetSetUnitConditionID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `VerifiedBuild`) VALUES
(190034, 0, 0, 'Blazebound Destroyer', '', NULL, NULL, NULL, 0, 0, 5438, 2, 0, 0, 1, 0, 4, 2097224, 0, 8.5, 1, 0, 0, 216723, 46313); -- Blazebound Destroyer

UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=15678; -- Auctioneer Silva'las
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=15679; -- Auctioneer Cazarez
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=6735; -- Innkeeper Saelienne
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=6736; -- Innkeeper Keldamyr
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=51504; -- Velia Moonbow
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=6780; -- Porthannius
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=6781; -- Melarith
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=9047; -- Jenal
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=11401; -- Priestess Alathea
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `HealthModifier`=0.009999999776482582, `VerifiedBuild`=46313 WHERE `entry`=65097; -- Hoo
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4730; -- Lelanai
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4753; -- Jartsam
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=40552; -- Leora
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=40553; -- Fidelio
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4783; -- Dawnwatcher Selgorm
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4784; -- Argent Guard Manados
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4786; -- Dawnwatcher Shaedlass
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=118891; -- Taylenne Sweetsong
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=118899; -- Darnassus Dilettante
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=118900; -- Darnassian Dignitary
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=118905; -- Huntress Duskrunner
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=6, `rank`=1, `type`=7, `HealthModifier`=4, `ManaModifier`=0.000375158997485414, `VerifiedBuild`=46313 WHERE `entry`=118916; -- Priest Ellandras
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=118917; -- Priest Iridil
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=6, `rank`=1, `type`=7, `HealthModifier`=4, `ManaModifier`=0.000375158997485414, `VerifiedBuild`=46313 WHERE `entry`=118918; -- Priest Sal'shanan
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=118919; -- Priestess Celentria
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=6, `rank`=1, `type`=7, `HealthModifier`=4, `ManaModifier`=0.000375158997485414, `VerifiedBuild`=46313 WHERE `entry`=118920; -- Priestess Allysa
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=6, `rank`=1, `type`=7, `HealthModifier`=4, `ManaModifier`=0.000375158997485414, `VerifiedBuild`=46313 WHERE `entry`=118921; -- Priestess Selveria
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=42936; -- Sentinel Cordressa Briarbow
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=0, `VerifiedBuild`=46313 WHERE `entry`=63070; -- Valeena
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=47420; -- Iranis Shadebloom
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=42968; -- Krennan Aranas
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=42970; -- Gilneas Refugee
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=43005; -- Irriende
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=43006; -- Rhyanda
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=11700; -- Sarin Starlight
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=2, `VerifiedBuild`=46313 WHERE `entry`=7234; -- Ferocitas the Dream Eater
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=7235; -- Gnarlpine Mystic
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=2796; -- Faelyssa
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry` IN (49778, 61757); -- Red-Tailed Chipmunk
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=5047; -- Ellaercia
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=7296; -- Corand
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=47569; -- Hammon the Jaded
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=7313; -- Priestess A'moora
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=7315; -- Darnath Bladesinger
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=7316; -- Sister Aquinne
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=7317; -- Oben Rageclaw
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=47584; -- Aladrel Whitespire
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=2, `VerifiedBuild`=46313 WHERE `entry`=7318; -- Rageclaw
UPDATE `creature_template` SET `femaleName`='', `unit_class`=2, `HealthModifier`=2, `VerifiedBuild`=46313 WHERE `entry`=7319; -- Lady Sathrah
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2852; -- Enslaved Druid of the Talon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2853; -- Freed Druid of the Talon
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=2912; -- Chief Archaeologist Greywhisker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34249; -- Sentinel Huntress
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=63331; -- Laoxi
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=7411; -- Spirit of Sathrah
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=36506; -- Daros Moonlance
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=5191; -- Shalumon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=11942; -- Orenthil Whisperwind
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=52292; -- Droha
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=7553; -- Great Horned Owl
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=7555; -- Hawk Owl
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34506; -- Guiding Mist
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=14378; -- Huntress Skymane
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=14379; -- Huntress Ravenoak
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=14380; -- Huntress Leafrunner
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34517; -- Ally of Nature
UPDATE `creature_template` SET `femaleName`='', `type`=4, `VerifiedBuild`=46313 WHERE `entry`=34521; -- Bough of Corruption
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34522; -- Corrupted Servant
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34524; -- Corrupted Minion
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34525; -- Corrupted Gnarlpine
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34530; -- Ancient Teldrassil Protector
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=12160; -- Shadowglen Sentinel
UPDATE `creature_template` SET `VerifiedBuild`=46313 WHERE `entry` IN (14432, 3681, 2162, 4423);
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34575; -- Moonwell Bunny
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry` IN (34583, 34584, 34585, 34586); -- Shade of the Kaldorei
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=7740; -- Gracina Spiritmight
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3306; -- Keldas
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34642; -- Army of Corruption Controller
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=50305; -- Moon Priestess Lasara
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=50307; -- Lord Candren
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=10051; -- Seriadne
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=171119; -- Bound Lightspawn
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=10056; -- Alassin
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=10089; -- Silvaria
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=10118; -- Nessa Shadowsong
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=12358; -- Riding Striped Frostsaber
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=12359; -- Riding Spotted Frostsaber
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=12360; -- Riding Striped Nightsaber
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=52640; -- Rolf Karner
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=52641; -- Layna Karner
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=52642; -- Foreman Pernic
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=7907; -- Daryn Lightwind
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=7916; -- Erelas Ambersky
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=34761; -- Citarre Mapleheart
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=3469; -- Ancient of War
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=12429; -- Sentinel Shaya
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=19173; -- Night Elf Commoner
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3515; -- Corithras Moonrage
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=3517; -- Rellian Greenspyre
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3519; -- Sentinel Arynia Cloudsbreak
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=7999; -- Tyrande Whisperwind
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=5782; -- Crildor
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=8026; -- Thyn'tel Bladeweaver
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=3561; -- Kyrai
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3567; -- Tallonkai Swiftroot
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.5, `VerifiedBuild`=46313 WHERE `entry`=3569; -- Bogling
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=3571; -- Teldrassil Sentinel
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `ManaModifier`=1, `VerifiedBuild`=46313 WHERE `entry`=43845; -- Malfurion Stormrage
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3590; -- Janna Brightmoon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3592; -- Andiss
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3593; -- Alyissia
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3594; -- Frahun Shadewhisper
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3595; -- Shanda
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3596; -- Ayanna Everstride
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3598; -- Kyra Windblade
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3599; -- Jannok Breezesong
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3600; -- Laurna Morninglight
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3601; -- Dazalar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3602; -- Kal
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3603; -- Cyndra Kindwhisper
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3604; -- Malorne Bladeleaf
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3605; -- Nadyia Maneweaver
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3606; -- Alanna Raveneye
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3607; -- Androl Oakhand
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3608; -- Aldia
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3609; -- Shalomon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3610; -- Jeena Featherbow
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3611; -- Brannol Eaglemoon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3612; -- Sinda
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3613; -- Meri Ironweave
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=3614; -- Narret Shadowgrove
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=34988; -- Landuen Moonclaw
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=34989; -- Rissa Shadeleaf
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=17105; -- Emissary Valustraa
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=50690; -- Tarelvir
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=50714; -- Dyrhara
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=50715; -- Maelir
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=44027; -- Ardan Softmoon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=44030; -- Draelan
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=6034; -- Lotherias
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=3838; -- Vesprystus
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32928; -- Vile Spray
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.5, `VerifiedBuild`=46313 WHERE `entry`=32936; -- Tide Crawler Hatchling
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=6094; -- Byancie
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=30715; -- Feyden Darkin
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry` IN (48623, 48624); -- Wisp
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=30731; -- Illianna Moonscribe
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=6128; -- Vorlus Vilehoof
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=32974; -- Laird
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=10604; -- Huntress Nhemai
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=10606; -- Huntress Yaeliura
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=6142; -- Mathiel
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=8396; -- Sentinel Dalia Sunblade
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=35281; -- Rukua
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=6286; -- Zarrin
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=6287; -- Radnaal Maneweaver
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=6292; -- Eladriel
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=62242; -- Crested Owl
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4087; -- Arias'ta Bladesinger
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4088; -- Elanaria
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4089; -- Sildanair
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4091; -- Jandria
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4092; -- Lariia
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=8583; -- Dirania Silvershine
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4138; -- Jeen'ra Nightrunner
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4146; -- Jocaste
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4155; -- Idriana
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4156; -- Astaia
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4159; -- Me'lynn
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4160; -- Ainethil
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4161; -- Lysheana
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4163; -- Syurna
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4164; -- Cylania
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4165; -- Elissa Dumas
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4168; -- Elynna
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4170; -- Ellandrieth
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4181; -- Fyrenna
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=8665; -- Shylenai
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=8669; -- Auctioneer Tolon
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4203; -- Ariyell Skyshadow
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4204; -- Firodren Mooncaller
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4205; -- Dorion
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4208; -- Lairn
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4209; -- Garryeth
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4210; -- Alegorn
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4212; -- Telonis
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4213; -- Taladan
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4214; -- Erion Shadewhisper
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4215; -- Anishar
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4217; -- Mathrengyl Bearwalker
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4218; -- Denatharion
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4219; -- Fylerian Nightwing
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4220; -- Cyroen
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4221; -- Talaelar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=1984; -- Young Thistle Boar
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4222; -- Voloren
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4223; -- Fyldan
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4225; -- Saenorion
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4226; -- Ulthir
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4228; -- Vaean
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4229; -- Mythrin'dir
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=1992; -- Tarindrella
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4230; -- Yldan
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=1993; -- Greenpaw
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.200000002980232238, `VerifiedBuild`=46313 WHERE `entry`=33313; -- Mottled Doe
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=1995; -- Strigid Owl
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=1996; -- Strigid Screecher
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=1997; -- Strigid Hunter
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=1998; -- Webwood Lurker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=1999; -- Webwood Venomfang
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2000; -- Webwood Silkspinner
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2001; -- Giant Webwood Spider
UPDATE `creature_template` SET `KillCredit1`=0, `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2002; -- Rascal Sprite
UPDATE `creature_template` SET `KillCredit1`=0, `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2003; -- Shadow Sprite
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4241; -- Mydrannul
UPDATE `creature_template` SET `KillCredit1`=0, `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2004; -- Dark Sprite
UPDATE `creature_template` SET `KillCredit1`=0, `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2005; -- Vicious Grell
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4243; -- Nightshade
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2006; -- Gnarlpine Ursa
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4244; -- Shadow
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2007; -- Gnarlpine Gardener
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2008; -- Gnarlpine Warrior
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2009; -- Gnarlpine Shaman
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2010; -- Gnarlpine Defender
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2011; -- Gnarlpine Augur
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=8723; -- Auctioneer Golothas
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2015; -- Bloodfeather Harpy
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2017; -- Bloodfeather Rogue
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2018; -- Bloodfeather Sorceress
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2019; -- Bloodfeather Fury
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2020; -- Bloodfeather Wind Witch
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2021; -- Bloodfeather Matriarch
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2022; -- Timberling
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=4262; -- Darnassus Sentinel
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2025; -- Timberling Bark Ripper
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2027; -- Timberling Trampler
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=4265; -- Nyoma
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=4266; -- Danlyia
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2029; -- Timberling Mire Beast
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2031; -- Young Nightsaber
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2033; -- Elder Nightsaber
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2034; -- Feral Nightsaber
UPDATE `creature_template` SET `femaleName`='', `type_flags`=2147483648, `VerifiedBuild`=46313 WHERE `entry`=2038; -- Lord Melenas
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=2, `VerifiedBuild`=46313 WHERE `entry`=2039; -- Ursal the Mauler
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=33359; -- Nightsaber Rider
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2041; -- Ancient Protector
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2042; -- Nightsaber
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2043; -- Nightsaber Stalker
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=62450; -- Lanfen, Brewer of Fine Teas
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=53522; -- Baby Octopus
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2077; -- Melithar Staghelm
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2078; -- Athridas Bearmantle
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2079; -- Ilthalaine
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2080; -- Denalan
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2081; -- Sentinel Kyra Starsong
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2082; -- Gilshalan Windwalker
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2083; -- Syral Bladeleaf
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=11041; -- Milla Fairancora
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=11042; -- Sylvanna Forestmoon
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=11050; -- Trianna
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2107; -- Gaerolas Talvethren
UPDATE `creature_template` SET `femaleName`='', `type_flags2`=8192, `VerifiedBuild`=46313 WHERE `entry`=44614; -- Training Dummy
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=44617; -- Wounded Sentinel
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=11070; -- Lalina Summermoon
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=11081; -- Faldron
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=11083; -- Darianna
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2150; -- Zenn Foulhoof
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2151; -- Moon Priestess Amara
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=2152; -- Gnarlpine Ambusher
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46313 WHERE `entry`=2155; -- Sentinel Shayla Nightbreeze
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46313 WHERE `entry`=51371; -- Darnassus Hippogryph Rider
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=2, `VerifiedBuild`=46313 WHERE `entry`=2166; -- Oakenscowl

DELETE FROM `creature_template_model` WHERE (`CreatureID`=190034 AND `Idx`=0);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(190034, 0, 102505, 1.799999952316284179, 1, 46313); -- Blazebound Destroyer

UPDATE `creature_template_model` SET `VerifiedBuild`=46313 WHERE (`Idx`=0 AND `CreatureID` IN (32936,32974,33359,33313,32928,53522,10118,3838,7907,42968,42970,3607,7916,52642,47584,11070,4213,30731,30715,4228,4229,11083,11081,11050,6292,6034,4225,4212,4168,4159,6735,5047,51504,2162,5191,4161,11042,11041,4160,4786,4784,4783,4226,50307,50305,40552,7316,11700,50714,50715,50690,47569,36506,8396,4092,2912,7740,11401,52292,43845,35281,4165,4091,17105,42936,4204,7999,4156,4221,4222,62450,9047,4243,4138,7296,4244,4219,4218,4220,4217,4205,10089,4146,10056,3561,2796,4210,12360,12359,12358,4753,4730,4223,4215,4163,4423,4214,14378,5782,4209,4208,4155,19173,14380,15679,15678,8723,8669,14379,4088,34989,7315,4203,4087,52641,52640,34988,6142,4164,4230,4170,51371,8026,4089,3469,8665,7555,4181,118905,4241,118917,118919,118921,118920,118916,118900,118899,118891,118918,3681,4262,34642,34517,34524,34522,34521,34585,2021,2020,2166,7411,7319,2019,2034,2001,44030,3606,34584,7313,3519,2029,2027,2017,2018,2015,2033,1997,3605,44027,6287,3517,7553,3569,2080,14432,2038,2004,2005,2003,2002,2853,2000,2852,2152,10604,2039,10606,2151,1993,34506,7317,7318,34249,2011,2155,1992,34530,34525,1996,2043,1999,6128,2010,2009,2025,2022,171119,7234,7235,61757,2107,34583,34586,12429,3603,6286,4265,3602,3515,2041,6736,6094,65097,63070,6781,4266,3614,3611,3600,3608,3599,2081,2078,40553,34761,3610,3567,47420,3613,3612,3609,3598,43005,10051,3604,3571,2083,11942,3601,3306,2008,2006,2007,34575,2150,2042,49778,1998,1995,6780,2082,43006,3594,3590,3595,62242,2079,8583,63331,3596,48623,3592,12160,3593,1984,2031,44614,48624,44617,2077)) OR (`Idx`=3 AND `CreatureID` IN (33359,51371,118900,118899,4262,34517,34249,3571,12160,44617)) OR (`Idx`=2 AND `CreatureID` IN (33359,51371,118900,118899,4262,34517,34249,3571,12160,44617)) OR (`Idx`=1 AND `CreatureID` IN (33359,32928,53522,19173,51371,118900,118899,4262,34642,34517,34506,34249,3571,34575,12160,44617));


UPDATE `creature_questitem` SET `VerifiedBuild`=46313 WHERE (`Idx`=0 AND `CreatureEntry` IN (2021,2020,2166,7319,2019,2034,2001,2029,2027,2017,2018,2015,2033,1997,2038,2000,2152,2011,1996,2043,1999,6128,2010,2009,2025,2022,7234,7235,2008,2006,2007,2042,1998,1995)) OR (`Idx`=1 AND `CreatureEntry` IN (2166,2029,2027,2009));


UPDATE `gameobject_template` SET `VerifiedBuild`=46313 WHERE `entry` IN (208831, 175727, 92538, 92525, 92530, 92526, 92529, 92536, 92535, 148423, 188123, 92700, 92699, 208825, 92524, 92534, 92533, 175725, 91672, 138498, 208824, 208819, 208818, 208817, 207995, 195141, 91673, 187337, 187296, 142110, 195530, 92528, 92527, 208830, 92694, 92693, 208829, 208815, 208814, 195175, 195174, 195177, 195176, 195178, 1992, 6752, 6751, 7923, 267843, 267842, 267840, 267838, 267841, 267839, 1986, 1997, 1988, 1987, 177272, 32880, 142109, 1989, 1990, 208046, 1673, 32879, 195112, 202592);
UPDATE `gameobject_template` SET `type`=10, `VerifiedBuild`=46313 WHERE `entry`=207321; -- Hero's Call Board
UPDATE `gameobject_template` SET `Data14`=1, `VerifiedBuild`=46313 WHERE `entry`=1685; -- Forge
UPDATE `gameobject_template` SET `Data14`=1, `VerifiedBuild`=46313 WHERE `entry`=1684; -- Blacksmith's Anvil
UPDATE `gameobject_template` SET `ContentTuningId`=72, `VerifiedBuild`=46313 WHERE `entry`=19552; -- Oracle Glade Moonwell
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=2237, `VerifiedBuild`=46313 WHERE `entry`=2739; -- Chest of the Black Feather
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=2240, `VerifiedBuild`=46313 WHERE `entry`=2742; -- Chest of Nesting
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=2239, `VerifiedBuild`=46313 WHERE `entry`=2741; -- Chest of the Sky
UPDATE `gameobject_template` SET `Data1`=0, `Data2`=1, `Data30`=2238, `VerifiedBuild`=46313 WHERE `entry`=2740; -- Chest of the Raven Claw
UPDATE `gameobject_template` SET `ContentTuningId`=72, `VerifiedBuild`=46313 WHERE `entry`=19551; -- Pools of Arlithrien Moonwell
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=5213, `ContentTuningId`=72, `VerifiedBuild`=46313 WHERE `entry`=126158; -- Tallonkai's Dresser
UPDATE `gameobject_template` SET `Data1`=0, `Data30`=2712, `ContentTuningId`=72, `VerifiedBuild`=46313 WHERE `entry`=4608; -- Timberling Sprout
UPDATE `gameobject_template` SET `ContentTuningId`=425, `VerifiedBuild`=46313 WHERE `entry`=190034; -- Candy Bucket
UPDATE `gameobject_template` SET `ContentTuningId`=72, `VerifiedBuild`=46313 WHERE `entry`=19550; -- Starbreeze Moonwell
UPDATE `gameobject_template` SET `Data1`=0, `Data12`=1, `Data18`=683, `Data30`=39334, `ContentTuningId`=73, `VerifiedBuild`=46313 WHERE `entry`=207472; -- Silverbound Treasure Chest


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46313 WHERE (`Idx`=0 AND `GameObjectEntry` IN (208831,208819,208818,208814,2739,2742,2741,2740,126158,4608,1673));


DELETE FROM `areatrigger_template` WHERE (`Id`=27633 AND `IsServerSide`=0);
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(27633, 0, 0, 2, 3, 3, 0, 0, 0, 0, 0, 0, 46702);


UPDATE `quest_poi` SET `VerifiedBuild`=46702 WHERE (`QuestID`=48639 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=48639 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=48639 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=42234 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66042 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66042 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66042 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65674 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65640 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65512 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64963 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64521 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63949 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63949 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63731 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62432 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=62432 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58060 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58060 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=57249 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=57249 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=57249 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53435 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53435 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53028 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=53028 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53028 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49293 AND `BlobIndex`=1 AND `Idx1`=17) OR (`QuestID`=49293 AND `BlobIndex`=0 AND `Idx1`=16) OR (`QuestID`=49293 AND `BlobIndex`=11 AND `Idx1`=15) OR (`QuestID`=49293 AND `BlobIndex`=10 AND `Idx1`=14) OR (`QuestID`=49293 AND `BlobIndex`=9 AND `Idx1`=13) OR (`QuestID`=49293 AND `BlobIndex`=8 AND `Idx1`=12) OR (`QuestID`=49293 AND `BlobIndex`=7 AND `Idx1`=11) OR (`QuestID`=49293 AND `BlobIndex`=6 AND `Idx1`=10) OR (`QuestID`=49293 AND `BlobIndex`=5 AND `Idx1`=9) OR (`QuestID`=49293 AND `BlobIndex`=4 AND `Idx1`=8) OR (`QuestID`=49293 AND `BlobIndex`=3 AND `Idx1`=7) OR (`QuestID`=49293 AND `BlobIndex`=2 AND `Idx1`=6) OR (`QuestID`=49293 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=49293 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=49293 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=49293 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=49293 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49293 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49135 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49076 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=47727 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=47727 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=47654 AND `BlobIndex`=2 AND `Idx1`=9) OR (`QuestID`=47654 AND `BlobIndex`=1 AND `Idx1`=8) OR (`QuestID`=47654 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=47654 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=47654 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=47654 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=47654 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=47654 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=47654 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=47654 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=45088 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=45088 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=45088 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=44285 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=42170 AND `BlobIndex`=0 AND `Idx1`=0);
UPDATE `quest_poi` SET `UiMapID`=1701, `VerifiedBuild`=46702 WHERE (`QuestID`=62432 AND `BlobIndex`=0 AND `Idx1`=0); -- Owlcat Soul

UPDATE `quest_poi_points` SET `VerifiedBuild`=46702 WHERE (`QuestID`=48639 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=48639 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=48639 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=42234 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66042 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66042 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66042 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65674 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65640 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65512 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64963 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64521 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63949 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63949 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63731 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62432 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62432 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58060 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58060 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=57249 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53435 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53435 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53028 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=53028 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53028 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49293 AND `Idx1`=17 AND `Idx2`=0) OR (`QuestID`=49293 AND `Idx1`=16 AND `Idx2`=0) OR (`QuestID`=49293 AND `Idx1`=15 AND `Idx2`=0) OR (`QuestID`=49293 AND `Idx1`=14 AND `Idx2`=0) OR (`QuestID`=49293 AND `Idx1`=13 AND `Idx2`=0) OR (`QuestID`=49293 AND `Idx1`=12 AND `Idx2`=0) OR (`QuestID`=49293 AND `Idx1`=11 AND `Idx2`=0) OR (`QuestID`=49293 AND `Idx1`=10 AND `Idx2`=0) OR (`QuestID`=49293 AND `Idx1`=9 AND `Idx2`=0) OR (`QuestID`=49293 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=49293 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=49293 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=49293 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=49293 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=49293 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=49293 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=49293 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=49293 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49135 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49076 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=47727 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=47727 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=47654 AND `Idx1`=9 AND `Idx2`=0) OR (`QuestID`=47654 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=47654 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=47654 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=47654 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=47654 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=47654 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=47654 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=47654 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=47654 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=45088 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=45088 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=45088 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=44285 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=42170 AND `Idx1`=0 AND `Idx2`=0);
UPDATE `quest_poi_points` SET `Y`=1086, `VerifiedBuild`=46702 WHERE (`QuestID`=62432 AND `Idx1`=0 AND `Idx2`=0); -- Owlcat Soul


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (60849,118791));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(60849, 0, 0, 0, 482, 46702),
(118791, 0, 0, 0, 378, 46702);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46702 WHERE (`DifficultyID`=0 AND `Entry` IN (183291,182107,180641,178093,180916,183143,185702,184934,182257,178895,182768,184460,180936,181183,181003,185798,184239,180956,180927,180926,172538,182681,185630,180948,177486,180918,178936,181059,178015,142666,183903,185713,180931,142668,182234,180933,182245,180961,180950,180920,177476,185807,180923,180052,182218,180715,181006,178196,182116,182113,178913,184071,183963,55455,181362,181490,185282,185291,185285,178909,178098,185488,177432,178094,183378,180650,181361,185457,175217,162662,176146,156669,156672,187905,175066,174564,176137,156479,168353,164368,156690,165379,156667,175207,171822,156671,184055,164367,156696,175042,156694,156683,156666,156681,178601,169429,164098,164099,164100,164684,164579,175036,55370,175035,167591,173386,186199,164079,162896,184097,184096,171589,89713,175222,165657,184094,184117,167738,162929,171299,164078,170256,162928,170310,187436,164596,121541,181535,175080,156734,90202,175083,175218,65310,156691,32642,166312,32641,171795,164096,168011,170607,173571,171787,173302,173367,164736,156777,175212,173351,184088,156685,156668,184584,183830,114665,175081,175018,175087,175017,173305,184098,62822,173304,175019,175216,62821,54638,172854,175016,175020,183720,175211,156733,173330,175210,156732,175209,184100,175214,173301,171790,175213,156689,172702,156670,162918,176332,173118,176545,156692,164095,164123,174170,171796,173327,184052,156687,156686,159478,156504,162666,166061,164803,170640,187734,174922,175082,170557,156698,173300));

DELETE FROM `creature_model_info` WHERE `DisplayID`=98312;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(98312, 0.300000011920928955, 0.60000002384185791, 0, 46702);

UPDATE `creature_model_info` SET `VerifiedBuild`=46702 WHERE `DisplayID` IN (105627, 100976, 105063, 98828, 105234, 104965, 98508, 86964, 101775, 92398, 98897, 100379, 101990, 103087, 101478, 105519, 104976, 102043, 100733, 104014, 104562, 105237, 101215, 104867, 104964, 105034, 104868, 77687, 105245, 77690, 100377, 101214, 105459, 100732, 105236, 105239, 105460, 100995, 100731, 98829, 105242, 100381, 104973, 101054, 100994, 101985, 98835, 98968, 104860, 103751, 101048, 98838, 98816, 105286, 98836, 104896, 105126, 105241, 101984, 101986, 103756, 61527, 93232, 97006, 93580, 45097, 100187, 95668, 1544, 99744, 95948, 95081, 96422, 96331, 95529, 93594, 96712, 97879, 96748, 106907, 100519, 93577, 93587, 105360, 93151, 93578, 96714, 98220, 92900, 37647, 95557, 98697, 94655, 28222, 104963, 92399, 61763, 42449, 93598, 95325, 95258, 96329, 95194, 101418, 94665, 94491, 105361, 19283, 96591, 96642, 96196, 27823, 102298, 94469, 39421, 94611, 28118, 94625, 99205, 28120, 94286, 93593, 93591, 94472, 24103, 95252, 94141, 93951, 99478, 62093, 93584, 96332, 96327, 97649, 96326, 104815, 104789, 73366, 97425, 96744, 94586, 93588, 97025, 81646, 42722, 97424, 94021, 42720, 11686, 96587, 98692, 95286, 96637, 95511, 96086, 17122, 95464, 97651, 93597, 96423, 97650, 94449, 93589, 93586, 100727, 95260, 96614, 105302, 93579, 93599, 98194, 92385, 96624, 96625, 97347, 27153, 104818, 93596, 96281, 95660, 93590);
UPDATE `creature_model_info` SET `BoundingRadius`=1.186721682548522949, `CombatReach`=1.10000002384185791, `VerifiedBuild`=46702 WHERE `DisplayID` IN (98506, 98509);
UPDATE `creature_model_info` SET `BoundingRadius`=0.612324118614196777, `VerifiedBuild`=46702 WHERE `DisplayID`=98818;
UPDATE `creature_model_info` SET `BoundingRadius`=20.58552360534667968, `VerifiedBuild`=46702 WHERE `DisplayID`=101783;
UPDATE `creature_model_info` SET `BoundingRadius`=2, `CombatReach`=2, `VerifiedBuild`=46702 WHERE `DisplayID`=74892;
UPDATE `creature_model_info` SET `BoundingRadius`=2.269287347793579101, `VerifiedBuild`=46702 WHERE `DisplayID`=90230;
UPDATE `creature_model_info` SET `CombatReach`=0.75, `VerifiedBuild`=46702 WHERE `DisplayID`=61888;
UPDATE `creature_model_info` SET `BoundingRadius`=2.083333253860473632, `CombatReach`=1, `VerifiedBuild`=46702 WHERE `DisplayID` IN (94612, 94613);
UPDATE `creature_model_info` SET `BoundingRadius`=0.774677395820617675, `CombatReach`=1.70000004768371582, `VerifiedBuild`=46702 WHERE `DisplayID`=92191;


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (66984,175203,182088,182084));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(66984, 0, 0, 0, 371, 46702),
(175203, 0, 0, 0, 371, 46702),
(182088, 0, 0, 0, 2057, 46702),
(182084, 0, 0, 0, 2057, 46702);


DELETE FROM `creature_model_info` WHERE `DisplayID`=105059;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(105059, 0.460573583841323852, 0, 0, 46702);

UPDATE `creature_model_info` SET `VerifiedBuild`=46702 WHERE `DisplayID` IN (105627, 94493, 96602, 93582, 82235, 95286, 96326, 99155, 96423, 93588, 45097, 98697, 99382, 93600, 104785, 90422, 74802, 88012, 88016, 97983, 93580, 96084, 86231, 96325, 97649, 41853, 62093, 104789, 96591, 28118, 28120, 93585, 99205, 96327, 93590, 99162, 100398, 98076, 99156, 92192, 96331, 96332, 95252, 96754, 105360, 95948, 73366, 27153, 94141, 93577, 96587, 98220, 93151, 93587, 93596, 93593, 93232, 98692, 92900, 94614, 94655, 37643, 94665, 92399, 94491, 94469, 92385, 93591, 28282, 28111, 94286, 93201, 98688, 96748, 97879, 97425, 24103, 101418, 96330, 95532, 94472, 93595, 96086, 100187, 93592, 93584, 96747, 1544, 94471, 95325, 81646, 17122, 104815, 98194, 95260, 95258, 28222, 104963, 95042, 96329, 105361, 99478, 96637, 96614, 93578, 19283, 93581, 93597, 97347, 94611, 93598, 96281, 93579, 27823, 96642, 93599, 96714, 93589, 95511, 97650, 96744, 95668, 95557, 97025, 97651, 95464, 93586, 96196, 95529, 93594, 105302, 96625, 94449, 95660, 98790, 98836, 24698, 98838, 105286, 98835, 105126, 103756, 61527, 105241, 103751, 104896, 98828, 104964, 101215, 102043, 100733, 102001, 105034, 104867, 105234, 104818, 103087, 100381, 98508, 86964, 101214, 95194, 101775, 101478, 104014, 104860, 104562, 105459, 77407, 92398, 101986, 105242, 104868, 105519, 100732, 105237, 77687, 105236, 98968, 105245, 77690, 77405, 104973, 105239, 98897, 99774, 101048, 100379, 11686, 101054, 101990, 101984, 101985, 100377, 105460, 100994, 100995, 100731, 42722, 42720);
UPDATE `creature_model_info` SET `BoundingRadius`=0.075000002980232238, `CombatReach`=0.25, `VerifiedBuild`=46702 WHERE `DisplayID`=45527;
UPDATE `creature_model_info` SET `BoundingRadius`=0.825202822685241699, `CombatReach`=1.6875, `VerifiedBuild`=46702 WHERE `DisplayID`=97006;
UPDATE `creature_model_info` SET `BoundingRadius`=0.774677395820617675, `CombatReach`=1.70000004768371582, `VerifiedBuild`=46702 WHERE `DisplayID`=92191;
UPDATE `creature_model_info` SET `BoundingRadius`=0.25, `CombatReach`=0.5, `VerifiedBuild`=46702 WHERE `DisplayID`=99476;
UPDATE `creature_model_info` SET `BoundingRadius`=2.083333253860473632, `CombatReach`=1, `VerifiedBuild`=46702 WHERE `DisplayID`=94613;
UPDATE `creature_model_info` SET `BoundingRadius`=2.269287347793579101, `VerifiedBuild`=46702 WHERE `DisplayID`=90230;
UPDATE `creature_model_info` SET `BoundingRadius`=1.06494307518005371, `CombatReach`=2, `VerifiedBuild`=46702 WHERE `DisplayID`=103059;
UPDATE `creature_model_info` SET `BoundingRadius`=1.888888955116271972, `CombatReach`=2, `VerifiedBuild`=46702 WHERE `DisplayID`=103060;
UPDATE `creature_model_info` SET `BoundingRadius`=1.186721682548522949, `CombatReach`=1.10000002384185791, `VerifiedBuild`=46702 WHERE `DisplayID` IN (98506, 98509);
UPDATE `creature_model_info` SET `BoundingRadius`=0.612324118614196777, `VerifiedBuild`=46702 WHERE `DisplayID` IN (98818, 98816);
UPDATE `creature_model_info` SET `BoundingRadius`=4.535793304443359375, `VerifiedBuild`=46702 WHERE `DisplayID`=101783;


DELETE FROM `areatrigger_template` WHERE (`IsServerSide`=0 AND `Id` IN (27633,28313,29741));
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(27633, 0, 0, 2, 3, 3, 0, 0, 0, 0, 0, 0, 46702),
(28313, 0, 0, 4, 7, 7, 0, 0, 0, 0, 0, 0, 46702),
(29741, 0, 0, 24, 10, 10, 0, 0, 0, 0, 0, 0, 46702);


DELETE FROM `world_quest` WHERE `id` IN (53362 /*53362*/, 65364 /*65364*/, 44185 /*44185*/, 46161 /*46161*/, 66616 /*66616*/, 52930 /*52930*/, 54351 /*54351*/, 53246 /*53246*/, 60387 /*60387*/, 46168 /*46168*/, 44293 /*44293*/, 63955 /*63955*/, 54360 /*54360*/, 48724 /*48724*/, 42784 /*42784*/, 60437 /*60437*/, 43346 /*43346*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(53362, 86400, 16724, 1), -- 53362
(65364, 86400, 21457, 1), -- 65364
(44185, 64800, 11984, 3), -- 44185
(46161, 21600, 13085, 1), -- 46161
(66616, 604800, 19923, 3), -- 66616
(52930, 86400, 16717, 1), -- 52930
(54351, 86400, 16779, 1), -- 54351
(53246, 86400, 16721, 1), -- 53246
(60387, 259200, 19325, 1), -- 60387
(46168, 21600, 13092, 1), -- 46168
(44293, 86400, 11406, 3), -- 44293
(63955, 86400, 20810, 1), -- 63955
(54360, 86400, 16756, 1), -- 54360
(48724, 86400, 14174, 1), -- 48724
(42784, 345600, 11959, 5), -- 42784
(60437, 259200, 19334, 1), -- 60437
(43346, 259200, 12196, 1); -- 43346

UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097

DELETE FROM `creature_model_info` WHERE `DisplayID`=105059;
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(105059, 0.460573583841323852, 0, 0, 46702);


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (182084,182088,88225));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(182084, 0, 0, 0, 2057, 46702),
(182088, 0, 0, 0, 2057, 46702),
(88225, 0, 0, 0, 371, 46702);

DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (88225,66984,10598));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(88225, 0, 0, 0, 371, 46702),
(66984, 0, 0, 0, 371, 46702),
(10598, 0, 0, 0, 371, 46702);

UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=111254 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='29', `event_param1`='0', `event_param2`='0', `event_param3`='0', `event_param4`='0' WHERE  `entryorguid`=91522 AND `source_type`=0 AND `id`=6 AND `link`=7;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=46385 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=46377 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=46343 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='61' WHERE  `entryorguid`=46251 AND `source_type`=0 AND `id`=1 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=46202 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=46040 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='0' WHERE  `entryorguid`=44680 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `creature_template` SET `npcflag`='1' WHERE  `entry`=44614;
UPDATE `smart_scripts` SET `event_type`='62', `event_param1`='44614' WHERE  `entryorguid`=44614 AND `source_type`=0 AND `id`=6 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='4', `event_flags`='1', `event_param3`='0', `event_param4`='0' WHERE  `entryorguid`=4050 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='9', `event_param3`='12000', `event_param4`='15000', `action_param1`='12161', `target_type`='2' WHERE  `entryorguid`=4050 AND `source_type`=0 AND `id`=1 AND `link`=0;

DELETE FROM `smart_scripts` WHERE  `entryorguid`=4050 AND `source_type`=0 AND `id`=2 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=4050 AND `source_type`=0 AND `id`=3 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=4050 AND `source_type`=0 AND `id`=4 AND `link`=0;
UPDATE `smart_scripts` SET `event_type`='4', `event_flags`='1', `event_param2`='0', `event_param3`='0', `event_param4`='0', `action_type`='21', `action_param1`='1' WHERE  `entryorguid`=4051 AND `source_type`=0 AND `id`=1 AND `link`=0;

DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1802 AND `SourceEntry`=13354 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=13370 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1836 AND `SourceEntry`=12707 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=1852 AND `SourceEntry`=13354 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=13370 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=2338 AND `SourceEntry`=5352 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=6 AND `ConditionTarget`=0 AND `ConditionValue1`=469 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=2339 AND `SourceEntry`=5352 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=6 AND `ConditionTarget`=0 AND `ConditionValue1`=469 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=3473 AND `SourceEntry`=5102 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=6 AND `ConditionTarget`=0 AND `ConditionValue1`=67 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=3474 AND `SourceEntry`=5099 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=6 AND `ConditionTarget`=0 AND `ConditionValue1`=67 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=4364 AND `SourceEntry`=12714 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=4366 AND `SourceEntry`=12706 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=7 AND `ConditionTarget`=0 AND `ConditionValue1`=164 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=4421 AND `SourceEntry`=49205 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=6 AND `ConditionTarget`=0 AND `ConditionValue1`=67 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=4472 AND `SourceEntry`=13354 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=13370 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=4474 AND `SourceEntry`=13356 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=13370 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=4475 AND `SourceEntry`=13356 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=13370 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=5296 AND `SourceEntry`=18969 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=6 AND `ConditionTarget`=0 AND `ConditionValue1`=469 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=5296 AND `SourceEntry`=18972 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=6 AND `ConditionTarget`=0 AND `ConditionValue1`=67 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=5297 AND `SourceEntry`=18969 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=6 AND `ConditionTarget`=0 AND `ConditionValue1`=469 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=5297 AND `SourceEntry`=18972 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=6 AND `ConditionTarget`=0 AND `ConditionValue1`=67 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=5299 AND `SourceEntry`=18969 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=6 AND `ConditionTarget`=0 AND `ConditionValue1`=469 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=5299 AND `SourceEntry`=18972 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=6 AND `ConditionTarget`=0 AND `ConditionValue1`=67 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=5833 AND `SourceEntry`=10000 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=6 AND `ConditionTarget`=0 AND `ConditionValue1`=469 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=6846 AND `SourceEntry`=1972 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=6 AND `ConditionTarget`=0 AND `ConditionValue1`=469 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=6866 AND `SourceEntry`=1972 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=6 AND `ConditionTarget`=0 AND `ConditionValue1`=469 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=6927 AND `SourceEntry`=1972 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=6 AND `ConditionTarget`=0 AND `ConditionValue1`=469 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7097 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7100 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7101 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7104 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7105 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7106 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7107 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7108 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7109 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7110 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7111 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7112 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7113 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7114 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7115 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7118 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7120 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7125 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=11 AND `SourceGroup`=7125 AND `SourceEntry`=11512 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=11 AND `SourceGroup`=7126 AND `SourceEntry`=11512 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7126 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7132 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7135 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7136 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7137 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7138 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7139 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7149 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7153 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7154 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7428 AND `SourceEntry`=12436 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=12384 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7429 AND `SourceEntry`=12436 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=12384 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7430 AND `SourceEntry`=12430 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=12384 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7431 AND `SourceEntry`=12430 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=12384 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7434 AND `SourceEntry`=12430 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=12384 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7438 AND `SourceEntry`=12431 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=12384 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7439 AND `SourceEntry`=12431 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=12384 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7440 AND `SourceEntry`=12431 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=12384 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7441 AND `SourceEntry`=12431 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=12384 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7442 AND `SourceEntry`=12431 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=12384 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7446 AND `SourceEntry`=12432 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=12384 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7452 AND `SourceEntry`=12558 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=6 AND `ConditionTarget`=0 AND `ConditionValue1`=67 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7453 AND `SourceEntry`=12558 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=6 AND `ConditionTarget`=0 AND `ConditionValue1`=67 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7454 AND `SourceEntry`=12558 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=6 AND `ConditionTarget`=0 AND `ConditionValue1`=67 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7457 AND `SourceEntry`=12435 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=12384 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7459 AND `SourceEntry`=12435 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=12384 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7848 AND `SourceEntry`=18969 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=6 AND `ConditionTarget`=0 AND `ConditionValue1`=469 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=7848 AND `SourceEntry`=18972 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=6 AND `ConditionTarget`=0 AND `ConditionValue1`=67 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=9454 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=9516 AND `SourceEntry`=11515 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=2 AND `ConditionTarget`=0 AND `ConditionValue1`=11511 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10411 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=10580 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8540 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8543 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8547 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8548 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8551 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8555 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8556 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8557 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8524 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8525 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8526 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8527 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8530 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8531 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8534 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8535 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=8538 AND `SourceEntry`=12840 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionTarget`=0 AND `ConditionValue1`=17670 AND `ConditionValue2`=0 AND `ConditionValue3`=0;

