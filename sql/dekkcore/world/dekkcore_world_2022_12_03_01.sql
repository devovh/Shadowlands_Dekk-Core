DELETE FROM `smart_scripts` WHERE `entryorguid`=57779 AND `source_type`=0 AND `id`=1 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (57779, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 80, 5777900, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Huo - On Spellhit - Run Script');
DELETE FROM `smart_scripts` WHERE `entryorguid`=57779 AND `source_type`=0 AND `id`=0 AND `link`=1;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (57779, 0, 0, 1, 8, 0, 100, 0, 102522, 0, 0, 0, 0, '', 44, 632, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Huo - On Spellhit - Add Phase');

DELETE FROM `smart_scripts` WHERE `entryorguid`=5777900 AND `source_type`=9 AND `id`=1 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5777900, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 54787, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Kill Credit');
DELETE FROM `smart_scripts` WHERE `entryorguid`=5777900 AND `source_type`=9 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5777900, 9, 0, 0, 0, 0, 100, 0, 500, 500, 0, 0, 0, '', 44, 631, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Huo - Remove Phase');

DELETE FROM `creature_equip_template` WHERE (`ID`=1 AND `CreatureID` IN (190116,189734,197341,191597,186915,186919,186892,197340,186897,187908,189587,189604,186451,189643,191525,187602,191876,191940,183186,191476,186634,186483,193967,189557,186511,186638,191524,189610,186239,186109,191835,187466,187538,186326,188444,186331,192165,186312,186314,186430,186447,186757,196995,186493,198876,189507,187189,187187,186452,191014,191021,191042,191044,191015,191038,186765,189713,181016,189461,187115,187419,187119,187097,187117,187145,187102)) OR (`ID`=2 AND `CreatureID` IN (186483,186239,186314,187187,186765)) OR (`ID`=3 AND `CreatureID`=186239);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(190116, 1, 192045, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Qalashi Skullhauler
(189734, 1, 192122, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Qalashi Boltthrower
(197341, 1, 108925, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Blacktalon Avenger
(191597, 1, 112097, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Qalashi Crustshaper
(186915, 1, 192109, 0, 0, 192142, 0, 0, 0, 0, 0, 46879), -- Qalashi Gatecrasher
(186919, 1, 56912, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Obsidian Soldier
(186892, 1, 192049, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Qalashi Necksnapper
(197340, 1, 108925, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Blacktalon Avenger
(186897, 1, 108925, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Blacktalon Avenger
(187908, 1, 192073, 0, 0, 192073, 0, 0, 0, 0, 0, 46879), -- Qalashi Scaleripper
(189587, 1, 152426, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Fao the Relentless
(189604, 1, 152426, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Provisioner Ojito
(186451, 1, 108925, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Blacktalon Avenger
(189643, 1, 112097, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Qalashi Crustshaper
(191525, 1, 108970, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Qalashi Wallcrasher
(186483, 2, 189701, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Qalashi Steelcrafter
(187602, 1, 192069, 0, 0, 192069, 0, 0, 0, 0, 0, 46879), -- Qalashi Scaleripper
(191876, 1, 192105, 0, 0, 192138, 0, 0, 0, 0, 0, 46879), -- Goruk Steelwall
(191940, 1, 192118, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Qalashi Necksnapper
(183186, 1, 107134, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Qalashi Wingrider
(191476, 1, 81357, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Searing Flame Harchek
(186239, 3, 113606, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Qalashi Skullhauler
(186634, 1, 5278, 0, 0, 5278, 0, 0, 0, 0, 0, 46879), -- Blacktalon Assassin
(186483, 1, 163608, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Qalashi Steelcrafter
(193967, 1, 192113, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Dragonbane Wingshredder
(189557, 1, 192045, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Qalashi Boltthrower
(186511, 1, 192120, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Piercer Gigra
(186638, 1, 197819, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Qalashi Crustshaper
(191524, 1, 192049, 0, 0, 192138, 0, 0, 0, 0, 0, 46879), -- Qalashi Ironskin
(186239, 2, 192045, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Qalashi Skullhauler
(189610, 1, 152426, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Blacktalon Assassin
(186239, 1, 163608, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Qalashi Skullhauler
(186109, 1, 192049, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Qalashi Necksnapper
(186314, 2, 1493, 0, 0, 0, 0, 0, 76351, 0, 0, 46879), -- Right
(191835, 1, 31302, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Blacktalon Scout
(187466, 1, 133303, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Archivist Edress
(187538, 1, 88846, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Champion Ugi
(186326, 1, 152426, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Blacktalon Strategist
(188444, 1, 94830, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Do-Yeon Shadowrider
(186331, 1, 152426, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Fao the Relentless
(192165, 1, 169155, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Winnie Fingerspring
(186312, 1, 1493, 0, 0, 0, 0, 0, 76351, 0, 0, 46879), -- Left
(187187, 2, 189533, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Blacktalon Avenger
(186314, 1, 5278, 0, 0, 0, 0, 0, 76351, 0, 0, 46879), -- Right
(186430, 1, 45123, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Horace "Scalding" Stern
(186447, 1, 12298, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Kaplak
(186757, 1, 1265, 0, 0, 0, 0, 0, 155818, 0, 0, 46879), -- Hades Prescott
(196995, 1, 152426, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Talonstalker Gazi
(186493, 1, 189688, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Forgemaster Bazentus
(198876, 1, 94827, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Obsidian Protector
(189507, 1, 152426, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Talonstalker Kavia
(187189, 1, 152426, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Blacktalon Assassin
(187187, 1, 108925, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Blacktalon Avenger
(186452, 1, 152426, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Blacktalon Assassin
(191014, 1, 152426, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Becca Black
(191021, 1, 152426, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Shiv Fizzlescheme
(191042, 1, 180868, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Snitch Eagersnipe
(191044, 1, 73448, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Whimsy Cogtattler
(191015, 1, 52951, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Maddoc Stitchneedle
(191038, 1, 168955, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Cranky Wrenchriddle
(186765, 2, 152426, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Blacktalon Provisioner
(186765, 1, 1906, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Blacktalon Provisioner
(189713, 1, 108925, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Blacktalon Avenger
(181016, 1, 192163, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Blacktalon Sentry
(189461, 1, 56912, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Obsidian Watcher
(187115, 1, 189547, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Alexstrasza the Life-Binder
(187419, 1, 89897, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Firellon
(187119, 1, 192151, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Commander Lethanak
(187097, 1, 89897, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Ruby Watcher
(187117, 1, 111703, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Ruby Culler
(187145, 1, 89897, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Kildrumeh
(187102, 1, 110405, 0, 0, 107348, 0, 0, 0, 0, 0, 46879); -- Ruby Commander


DELETE FROM `areatrigger_template` WHERE (`IsServerSide`=0 AND `Id` IN (30352,31083,31081,29904));
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(30352, 0, 0, 4, 300, 300, 0, 0, 0, 0, 0, 0, 46879),
(31083, 0, 0, 0, 18, 18, 0, 0, 0, 0, 0, 0, 46879),
(31081, 0, 0, 0, 60, 60, 0, 0, 0, 0, 0, 0, 46879),
(29904, 0, 0, 4, 6, 6, 0, 0, 0, 0, 0, 0, 46879);


DELETE FROM `scene_template` WHERE `SceneId` IN (2915, 2911, 2910, 2924, 2923, 2996, 2951);
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`, `Encrypted`) VALUES
(2915, 16, 3456, 0),
(2911, 16, 3454, 0),
(2910, 25, 3578, 0),
(2924, 16, 3466, 0),
(2923, 16, 3465, 0),
(2996, 27, 3575, 0),
(2951, 17, 3596, 0);


DELETE FROM `quest_offer_reward` WHERE `ID` IN (65957 /*-Unknown-*/, 65956 /*-Unknown-*/, 66078 /*-Unknown-*/, 66048 /*-Unknown-*/, 72241 /*-Unknown-*/, 66079 /*-Unknown-*/, 66124 /*-Unknown-*/, 66123 /*-Unknown-*/, 66121 /*-Unknown-*/, 66122 /*-Unknown-*/, 66118 /*-Unknown-*/, 66116 /*-Unknown-*/, 67564 /*Artisan's Courier*/, 66931 /*Who Brought the Ruckus?*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(65957, 1, 0, 0, 0, 0, 0, 0, 0, 'You\'ve proven yourself the true hero of the day, $n.', 46879), -- -Unknown-
(65956, 1, 0, 0, 0, 0, 0, 0, 0, 'Our advance is pushing them back! All that remains is to breach the gates.', 46879), -- -Unknown-
(66078, 1, 1, 5, 0, 0, 0, 0, 0, 'I believe the Blacktalon are prepared for anything.', 46879), -- -Unknown-
(66048, 1, 1, 5, 0, 0, 0, 0, 0, 'I see. I shall consider your evaluation carefully, of course.', 46879), -- -Unknown-
(72241, 1, 0, 0, 0, 0, 0, 0, 0, 'th, $p.\n\nThe past is the past. Now we must look out for one another. For all dracthyr.Lessons From Our PastNow you know the truth.\n\nT', 46879), -- -Unknown-
(66079, 1, 1, 5, 0, 0, 0, 0, 0, 'Ah, champion--your arrival is most fortuitous. With you here now, my plan will certainly succeed.', 46879), -- -Unknown-
(66124, 1, 0, 0, 0, 0, 0, 0, 0, 'I could not rest until the eggs were safe... this is a relief.\n\nThank you, $p.', 46879), -- -Unknown-
(66123, 1, 0, 0, 0, 0, 0, 0, 0, 'Our queen!', 46879), -- -Unknown-
(66121, 1, 0, 0, 0, 0, 0, 0, 0, 'Nearly done.', 46879), -- -Unknown-
(66122, 1, 0, 0, 0, 0, 0, 0, 0, 'They may have been our kin, and perhaps we could have approached them as our brethren... but their cruelty leaves no mercy in my heart.', 46879), -- -Unknown-
(66118, 1, 0, 0, 0, 0, 0, 0, 0, 'The Lifeshrine stands strong.', 46879), -- -Unknown-
(66116, 1, 0, 0, 0, 0, 0, 0, 0, 'I will use every weapon in my arsenal to stop these foes.', 46879), -- -Unknown-
(67564, 1, 0, 0, 0, 0, 0, 0, 0, 'Oh, excellent! I\'ve been meaning to fetch this from Haephesta. Thanks, $p.', 46879), -- Artisan's Courier
(66931, 0, 0, 0, 0, 0, 0, 0, 0, 'I--\n\nAs much as I wish to follow my queen into battle, I must prove worthy of her trust and protect the Lifeshrine.', 46879); -- Who Brought the Ruckus?


DELETE FROM `quest_poi` WHERE (`QuestID`=65939 AND `BlobIndex`=5 AND `Idx1`=14) OR (`QuestID`=65939 AND `BlobIndex`=4 AND `Idx1`=13) OR (`QuestID`=65939 AND `BlobIndex`=3 AND `Idx1`=12) OR (`QuestID`=65939 AND `BlobIndex`=2 AND `Idx1`=11) OR (`QuestID`=65939 AND `BlobIndex`=1 AND `Idx1`=10) OR (`QuestID`=65939 AND `BlobIndex`=0 AND `Idx1`=9) OR (`QuestID`=65939 AND `BlobIndex`=0 AND `Idx1`=8) OR (`QuestID`=65939 AND `BlobIndex`=1 AND `Idx1`=7) OR (`QuestID`=65939 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=65939 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=65939 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=65939 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65939 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65939 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65939 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65957 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=65957 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65957 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65957 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65957 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65956 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65956 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65956 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66078 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66078 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66078 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66048 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=66048 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=66048 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=66048 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66048 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66048 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=72241 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=72241 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=72241 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66079 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66079 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66963 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66963 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66124 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66124 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66124 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66123 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66123 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66123 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66117 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66117 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66117 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66960 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66119 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=66119 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=66119 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=66119 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=66119 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66119 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66121 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=66121 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=66121 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=66121 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66121 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66121 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66122 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=66122 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66122 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66122 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66118 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66118 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66118 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=67100 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=67100 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=67100 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=67100 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66116 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66116 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66116 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(65939, 5, 14, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2178937, 0, 46879), -- -Unknown-
(65939, 4, 13, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2178948, 0, 46879), -- -Unknown-
(65939, 3, 12, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2199252, 0, 46879), -- -Unknown-
(65939, 2, 11, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2178446, 0, 46879), -- -Unknown-
(65939, 1, 10, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2176469, 0, 46879), -- -Unknown-
(65939, 0, 9, 32, 0, 0, 2444, 2022, 0, 2, 0, 0, 0, 2176469, 0, 46879), -- -Unknown-
(65939, 0, 8, 3, 423988, 191596, 2444, 2022, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(65939, 1, 7, 2, 423791, 193788, 2444, 2022, 0, 2, 0, 101444, 0, 0, 0, 46879), -- -Unknown-
(65939, 0, 6, 2, 423791, 193788, 2444, 2022, 0, 2, 0, 101443, 0, 0, 0, 46879), -- -Unknown-
(65939, 0, 5, 0, 423594, 189679, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(65939, 0, 4, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2178446, 0, 46879), -- -Unknown-
(65939, 0, 3, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2178948, 0, 46879), -- -Unknown-
(65939, 0, 2, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2178486, 0, 46879), -- -Unknown-
(65939, 0, 1, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2178487, 0, 46879), -- -Unknown-
(65939, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2199252, 0, 46879), -- -Unknown-
(65957, 0, 4, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2173812, 0, 46879), -- -Unknown-
(65957, 0, 3, 2, 423629, 181875, 2444, 2022, 0, 0, 0, 0, 0, 2175403, 0, 46879), -- -Unknown-
(65957, 0, 2, 1, 423627, 186509, 2444, 2022, 0, 0, 0, 0, 0, 2175493, 0, 46879), -- -Unknown-
(65957, 0, 1, 0, 423628, 186511, 2444, 2022, 0, 0, 0, 0, 0, 2175495, 0, 46879), -- -Unknown-
(65957, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2176469, 0, 46879), -- -Unknown-
(65956, 0, 2, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2173812, 0, 46879), -- -Unknown-
(65956, 0, 1, 1, 423625, 186614, 2444, 2022, 0, 2, 0, 0, 0, 0, 1, 46879), -- -Unknown-
(65956, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2176469, 0, 46879), -- -Unknown-
(66078, 0, 2, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2173812, 0, 46879), -- -Unknown-
(66078, 0, 1, 0, 423893, 187158, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66078, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2173812, 0, 46879), -- -Unknown-
(66048, 0, 5, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2129299, 0, 46879), -- -Unknown-
(66048, 0, 4, 5, 427167, 186493, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66048, 0, 3, 4, 427170, 189507, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66048, 0, 2, 2, 427168, 187466, 2444, 2022, 0, 0, 0, 0, 0, 2186728, 0, 46879), -- -Unknown-
(66048, 0, 1, 1, 427169, 186331, 2444, 2022, 0, 0, 0, 0, 0, 2174123, 0, 46879), -- -Unknown-
(66048, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2173812, 0, 46879), -- -Unknown-
(72241, 0, 2, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2129299, 0, 46879), -- -Unknown-
(72241, 0, 1, 0, 431793, 193938, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(72241, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2129299, 0, 46879), -- -Unknown-
(66079, 0, 1, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2179504, 0, 46879), -- -Unknown-
(66079, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2173812, 0, 46879), -- -Unknown-
(66963, 0, 1, 32, 0, 0, 2444, 2022, 0, 8192, 0, 0, 0, 2211707, 0, 46879), -- -Unknown-
(66963, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2184207, 0, 46879), -- -Unknown-
(66124, 0, 2, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2212979, 0, 46879), -- -Unknown-
(66124, 0, 1, 1, 427395, 187278, 2444, 2022, 0, 0, 0, 0, 0, 2180513, 0, 46879), -- -Unknown-
(66124, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2180513, 0, 46879), -- -Unknown-
(66123, 0, 2, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2212979, 0, 46879), -- -Unknown-
(66123, 0, 1, 0, 427121, 188447, 2444, 2022, 0, 0, 0, 0, 0, 2189262, 0, 46879), -- -Unknown-
(66123, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2212979, 0, 46879), -- -Unknown-
(66117, 0, 2, 32, 0, 0, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66117, 0, 1, 3, 427344, 189865, 2444, 2022, 0, 0, 0, 0, 0, 0, 1, 46879), -- -Unknown-
(66117, 0, 0, 2, 427343, 189864, 2444, 2022, 0, 0, 0, 0, 0, 0, 1, 46879), -- -Unknown-
(66960, 0, 0, 0, 428602, 187209, 2444, 2022, 0, 0, 0, 0, 0, 2180334, 0, 46879), -- -Unknown-
(66119, 0, 5, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2179955, 0, 46879), -- -Unknown-
(66119, 1, 4, 1, 429994, 190485, 2521, 2094, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66119, 0, 3, 1, 429994, 190485, 2444, 2022, 0, 2, 0, 105341, 0, 2179955, 0, 46879), -- -Unknown-
(66119, 1, 2, 0, 429993, 190484, 2521, 2094, 0, 2, 0, 0, 0, 2225283, 0, 46879), -- -Unknown-
(66119, 0, 1, 0, 429993, 190484, 2444, 2022, 0, 2, 0, 105341, 0, 2179955, 0, 46879), -- -Unknown-
(66119, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2179955, 0, 46879), -- -Unknown-
(66121, 0, 5, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2179743, 0, 46879), -- -Unknown-
(66121, 0, 4, 3, 427548, 190127, 2444, 2022, 0, 0, 0, 0, 0, 2180375, 0, 46879), -- -Unknown-
(66121, 0, 3, 2, 427243, 190124, 2444, 2022, 0, 0, 0, 0, 0, 2180391, 0, 46879), -- -Unknown-
(66121, 0, 2, 1, 427242, 190149, 2444, 2022, 0, 0, 0, 0, 0, 2180331, 0, 46879), -- -Unknown-
(66121, 0, 1, 0, 427241, 190131, 2444, 2022, 0, 0, 0, 0, 0, 2180374, 0, 46879), -- -Unknown-
(66121, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2212979, 0, 46879), -- -Unknown-
(66122, 0, 3, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2179591, 0, 46879), -- -Unknown-
(66122, 0, 2, 1, 423938, 189618, 2444, 2022, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66122, 0, 1, -1, 0, 0, 2444, 2022, 0, 2, 0, 103052, 0, 2212979, 0, 46879), -- -Unknown-
(66122, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 97583, 0, 2179743, 0, 46879), -- -Unknown-
(66118, 0, 2, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2179591, 0, 46879), -- -Unknown-
(66118, 0, 1, 0, 427633, 187090, 2444, 2022, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66118, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2179591, 0, 46879), -- -Unknown-
(67100, 0, 3, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2220946, 0, 46879), -- -Unknown-
(67100, 0, 2, 1, 429088, 194729, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(67100, 0, 1, 0, 429053, 192586, 2444, 2022, 0, 0, 0, 0, 0, 2220946, 0, 46879), -- -Unknown-
(67100, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2220946, 0, 46879), -- -Unknown-
(66116, 0, 2, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2199967, 0, 46879), -- -Unknown-
(66116, 0, 1, 1, 427111, 187119, 2444, 2022, 0, 0, 0, 0, 0, 2179591, 0, 46879), -- -Unknown-
(66116, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2179591, 0, 46879); -- -Unknown-

UPDATE `quest_poi` SET `VerifiedBuild`=46879 WHERE (`QuestID`=50602 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=65939 AND `Idx1`=14 AND `Idx2`=0) OR (`QuestID`=65939 AND `Idx1`=13 AND `Idx2`=0) OR (`QuestID`=65939 AND `Idx1`=12 AND `Idx2`=0) OR (`QuestID`=65939 AND `Idx1`=11 AND `Idx2`=0) OR (`QuestID`=65939 AND `Idx1`=10 AND `Idx2`=0) OR (`QuestID`=65939 AND `Idx1`=9 AND `Idx2`=0) OR (`QuestID`=65939 AND `Idx1`=8 AND `Idx2`=11) OR (`QuestID`=65939 AND `Idx1`=8 AND `Idx2`=10) OR (`QuestID`=65939 AND `Idx1`=8 AND `Idx2`=9) OR (`QuestID`=65939 AND `Idx1`=8 AND `Idx2`=8) OR (`QuestID`=65939 AND `Idx1`=8 AND `Idx2`=7) OR (`QuestID`=65939 AND `Idx1`=8 AND `Idx2`=6) OR (`QuestID`=65939 AND `Idx1`=8 AND `Idx2`=5) OR (`QuestID`=65939 AND `Idx1`=8 AND `Idx2`=4) OR (`QuestID`=65939 AND `Idx1`=8 AND `Idx2`=3) OR (`QuestID`=65939 AND `Idx1`=8 AND `Idx2`=2) OR (`QuestID`=65939 AND `Idx1`=8 AND `Idx2`=1) OR (`QuestID`=65939 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=65939 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=65939 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=65939 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=65939 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=65939 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65939 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65939 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65939 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65957 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=65957 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65957 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65957 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65957 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65956 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65956 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=65956 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=65956 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=65956 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=65956 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65956 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66078 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66078 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=66078 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=66078 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=66078 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=66078 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=66078 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=66078 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=66078 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=66078 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=66078 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=66078 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=66078 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66078 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66048 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=66048 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=66048 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=66048 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66048 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66048 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=72241 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=72241 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=72241 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66079 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66079 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66963 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66963 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66124 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66124 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66124 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66123 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66123 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66123 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66117 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66117 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=66117 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=66117 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=66117 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=66117 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=66117 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=66117 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66117 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=66117 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=66117 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=66117 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=66117 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=66117 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=66117 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=66117 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=66117 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=66117 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=66117 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=66117 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66960 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66119 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=66119 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=66119 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=66119 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66119 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66119 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66121 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=66121 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=66121 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=66121 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66121 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66121 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66122 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=66122 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=66122 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=66122 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=66122 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=66122 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=66122 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66122 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66122 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66118 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66118 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=66118 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=66118 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=66118 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=66118 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=66118 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66118 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=67100 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=67100 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=67100 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=67100 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=67100 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=67100 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=67100 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=67100 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=67100 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66116 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66116 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66116 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(65939, 14, 0, 2246, 2546, 211, 46879), -- -Unknown-
(65939, 13, 0, 2043, 2477, 174, 46879), -- -Unknown-
(65939, 12, 0, 2136, 2677, 216, 46879), -- -Unknown-
(65939, 11, 0, 2242, 2329, 162, 46879), -- -Unknown-
(65939, 10, 0, 2112, 1943, 120, 46879), -- -Unknown-
(65939, 9, 0, 2112, 1955, 120, 46879), -- -Unknown-
(65939, 8, 11, 2093, 2251, 247, 46879), -- -Unknown-
(65939, 8, 10, 2080, 2348, 200, 46879), -- -Unknown-
(65939, 8, 9, 2079, 2623, 304, 46879), -- -Unknown-
(65939, 8, 8, 2183, 2838, 115, 46879), -- -Unknown-
(65939, 8, 7, 2198, 2852, 115, 46879), -- -Unknown-
(65939, 8, 6, 2217, 2859, 113, 46879), -- -Unknown-
(65939, 8, 5, 2417, 2690, 115, 46879), -- -Unknown-
(65939, 8, 4, 2448, 2655, 115, 46879), -- -Unknown-
(65939, 8, 3, 2456, 2461, 260, 46879), -- -Unknown-
(65939, 8, 2, 2258, 2278, 155, 46879), -- -Unknown-
(65939, 8, 1, 2154, 2236, 118, 46879), -- -Unknown-
(65939, 8, 0, 2130, 2232, 118, 46879), -- -Unknown-
(65939, 7, 0, 2122, 2202, 0, 46879), -- -Unknown-
(65939, 6, 0, 2066, 2020, 0, 46879), -- -Unknown-
(65939, 5, 0, 2111, 1953, 0, 46879), -- -Unknown-
(65939, 4, 0, 2242, 2329, 162, 46879), -- -Unknown-
(65939, 3, 0, 2043, 2477, 174, 46879), -- -Unknown-
(65939, 2, 0, 2115, 2519, 268, 46879), -- -Unknown-
(65939, 1, 0, 2083, 2338, 255, 46879), -- -Unknown-
(65939, 0, 0, 2136, 2677, 216, 46879), -- -Unknown-
(65957, 4, 0, 1813, 1268, 188, 46879), -- -Unknown-
(65957, 3, 0, 1816, 1878, 90, 46879), -- -Unknown-
(65957, 2, 0, 2137, 1810, 162, 46879), -- -Unknown-
(65957, 1, 0, 1727, 1823, 126, 46879), -- -Unknown-
(65957, 0, 0, 2108, 1937, 124, 46879), -- -Unknown-
(65956, 2, 0, 1814, 1268, 188, 46879), -- -Unknown-
(65956, 1, 4, 1543, 1710, 59, 46879), -- -Unknown-
(65956, 1, 3, 1607, 2146, 90, 46879), -- -Unknown-
(65956, 1, 2, 2160, 1909, 121, 46879), -- -Unknown-
(65956, 1, 1, 2164, 1688, 134, 46879), -- -Unknown-
(65956, 1, 0, 1803, 1469, 118, 46879), -- -Unknown-
(65956, 0, 0, 2108, 1938, 124, 46879), -- -Unknown-
(66078, 2, 0, 1816, 1267, 188, 46879), -- -Unknown-
(66078, 1, 11, 1630, 1170, 188, 46879), -- -Unknown-
(66078, 1, 10, 1607, 1225, 188, 46879), -- -Unknown-
(66078, 1, 9, 1630, 1246, 188, 46879), -- -Unknown-
(66078, 1, 8, 1666, 1262, 188, 46879), -- -Unknown-
(66078, 1, 7, 1689, 1275, 188, 46879), -- -Unknown-
(66078, 1, 6, 1719, 1284, 188, 46879), -- -Unknown-
(66078, 1, 5, 1825, 1306, 188, 46879), -- -Unknown-
(66078, 1, 4, 1854, 1285, 188, 46879), -- -Unknown-
(66078, 1, 3, 1866, 1243, 188, 46879), -- -Unknown-
(66078, 1, 2, 1865, 1185, 188, 46879), -- -Unknown-
(66078, 1, 1, 1832, 1143, 188, 46879), -- -Unknown-
(66078, 1, 0, 1676, 1145, 188, 46879), -- -Unknown-
(66078, 0, 0, 1816, 1267, 188, 46879), -- -Unknown-
(66048, 5, 0, 1819, 1267, 188, 46879), -- -Unknown-
(66048, 4, 0, 1822, 1237, 188, 46879), -- -Unknown-
(66048, 3, 0, 1691, 1282, 178, 46879), -- -Unknown-
(66048, 2, 0, 1795, 1162, 211, 46879), -- -Unknown-
(66048, 1, 0, 1850, 1271, 188, 46879), -- -Unknown-
(66048, 0, 0, 1816, 1267, 188, 46879), -- -Unknown-
(72241, 2, 0, 1819, 1267, 188, 46879), -- -Unknown-
(72241, 1, 0, 1819, 1262, 188, 46879), -- -Unknown-
(72241, 0, 0, 1819, 1267, 188, 46879), -- -Unknown-
(66079, 1, 0, 1207, 978, 31, 46879), -- -Unknown-
(66079, 0, 0, 1816, 1267, 188, 46879), -- -Unknown-
(66963, 1, 0, 1174, 786, 104, 46879), -- -Unknown-
(66963, 0, 0, 974, 786, 130, 46879), -- -Unknown-
(66124, 2, 0, 1107, 372, 95, 46879), -- -Unknown-
(66124, 1, 0, 1195, 972, 30, 46879), -- -Unknown-
(66124, 0, 0, 1195, 972, 30, 46879), -- -Unknown-
(66123, 2, 0, 1107, 372, 95, 46879), -- -Unknown-
(66123, 1, 0, 960, 370, 103, 46879), -- -Unknown-
(66123, 0, 0, 1107, 372, 95, 46879), -- -Unknown-
(66117, 2, 0, 1252, -63, 0, 46879), -- -Unknown-
(66117, 1, 6, 1097, -172, 278, 46879), -- -Unknown-
(66117, 1, 5, 933, 87, 167, 46879), -- -Unknown-
(66117, 1, 4, 941, 303, 116, 46879), -- -Unknown-
(66117, 1, 3, 1114, 315, 134, 46879), -- -Unknown-
(66117, 1, 2, 1307, 52, 167, 46879), -- -Unknown-
(66117, 1, 1, 1247, -205, 170, 46879), -- -Unknown-
(66117, 1, 0, 1172, -254, 179, 46879), -- -Unknown-
(66117, 0, 11, 1175, -248, 178, 46879), -- -Unknown-
(66117, 0, 10, 1098, -158, 276, 46879), -- -Unknown-
(66117, 0, 9, 938, 68, 118, 46879), -- -Unknown-
(66117, 0, 8, 924, 121, 110, 46879), -- -Unknown-
(66117, 0, 7, 901, 342, 94, 46879), -- -Unknown-
(66117, 0, 6, 905, 389, 102, 46879), -- -Unknown-
(66117, 0, 5, 989, 448, 102, 46879), -- -Unknown-
(66117, 0, 4, 1050, 419, 97, 46879), -- -Unknown-
(66117, 0, 3, 1404, -15, 148, 46879), -- -Unknown-
(66117, 0, 2, 1415, -60, 148, 46879), -- -Unknown-
(66117, 0, 1, 1409, -75, 148, 46879), -- -Unknown-
(66117, 0, 0, 1216, -254, 172, 46879), -- -Unknown-
(66960, 0, 0, 997, 290, 77, 46879), -- -Unknown-
(66119, 5, 0, 1331, -130, 138, 46879), -- -Unknown-
(66119, 4, 0, 1788, 35, 0, 46879), -- -Unknown-
(66119, 3, 0, 1355, -147, 138, 46879), -- -Unknown-
(66119, 2, 0, 1788, 35, 332, 46879), -- -Unknown-
(66119, 1, 0, 1355, -148, 138, 46879), -- -Unknown-
(66119, 0, 0, 1331, -130, 138, 46879), -- -Unknown-
(66121, 5, 0, 1321, -91, 137, 46879), -- -Unknown-
(66121, 4, 0, 1066, 268, 85, 46879), -- -Unknown-
(66121, 3, 0, 941, 241, 92, 46879), -- -Unknown-
(66121, 2, 0, 942, 79, 120, 46879), -- -Unknown-
(66121, 1, 0, 1047, 176, 105, 46879), -- -Unknown-
(66121, 0, 0, 1107, 372, 95, 46879), -- -Unknown-
(66122, 3, 0, 1336, -86, 137, 46879), -- -Unknown-
(66122, 2, 5, 911, 337, 242, 46879), -- -Unknown-
(66122, 2, 4, 1088, 409, 219, 46879), -- -Unknown-
(66122, 2, 3, 1185, 203, 249, 46879), -- -Unknown-
(66122, 2, 2, 1156, 122, 265, 46879), -- -Unknown-
(66122, 2, 1, 1041, 59, 241, 46879), -- -Unknown-
(66122, 2, 0, 924, 54, 249, 46879), -- -Unknown-
(66122, 1, 0, 53, -3325, 95, 46879), -- -Unknown-
(66122, 0, 0, 1321, -91, 137, 46879), -- -Unknown-
(66118, 2, 0, 1336, -86, 137, 46879), -- -Unknown-
(66118, 1, 5, 1097, -172, 278, 46879), -- -Unknown-
(66118, 1, 4, 1150, -48, 252, 46879), -- -Unknown-
(66118, 1, 3, 1240, 31, 239, 46879), -- -Unknown-
(66118, 1, 2, 1307, 52, 167, 46879), -- -Unknown-
(66118, 1, 1, 1247, -205, 170, 46879), -- -Unknown-
(66118, 1, 0, 1172, -254, 179, 46879), -- -Unknown-
(66118, 0, 0, 1336, -86, 137, 46879), -- -Unknown-
(67100, 3, 0, 1523, -150, 332, 46879), -- -Unknown-
(67100, 2, 5, 1927, -955, -2, 46879), -- -Unknown-
(67100, 2, 4, 1880, -911, -2, 46879), -- -Unknown-
(67100, 2, 3, 1911, -800, 0, 46879), -- -Unknown-
(67100, 2, 2, 1960, -765, 0, 46879), -- -Unknown-
(67100, 2, 1, 2018, -800, 0, 46879), -- -Unknown-
(67100, 2, 0, 2002, -906, 5, 46879), -- -Unknown-
(67100, 1, 0, 1523, -150, 332, 46879), -- -Unknown-
(67100, 0, 0, 1523, -150, 332, 46879), -- -Unknown-
(66116, 2, 0, 1508, -93, 337, 46879), -- -Unknown-
(66116, 1, 0, 1336, -86, 137, 46879), -- -Unknown-
(66116, 0, 0, 1336, -86, 137, 46879); -- -Unknown-

UPDATE `quest_poi_points` SET `VerifiedBuild`=46879 WHERE (`QuestID`=50602 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_greeting` WHERE (`Type`=0 AND `ID` IN (191895,187129));
INSERT INTO `quest_greeting` (`ID`, `Type`, `GreetEmoteType`, `GreetEmoteDelay`, `Greeting`, `VerifiedBuild`) VALUES
(191895, 0, 1, 0, 'We are so close to saving them all!', 46879), -- 191895
(187129, 0, 0, 0, 'We must save the eggs from the clutches of the primalists!', 46879); -- 187129


DELETE FROM `quest_details` WHERE `ID` IN (65939 /*-Unknown-*/, 65957 /*-Unknown-*/, 65956 /*-Unknown-*/, 66078 /*-Unknown-*/, 66048 /*-Unknown-*/, 72241 /*-Unknown-*/, 66079 /*-Unknown-*/, 66963 /*-Unknown-*/, 66124 /*-Unknown-*/, 66123 /*-Unknown-*/, 66119 /*-Unknown-*/, 66121 /*-Unknown-*/, 66122 /*-Unknown-*/, 66118 /*-Unknown-*/, 67100 /*-Unknown-*/, 66116 /*-Unknown-*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(65939, 1, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(65957, 1, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(65956, 1, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66078, 1, 5, 25, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66048, 5, 1, 0, 0, 300, 600, 0, 0, 46879), -- -Unknown-
(72241, 1, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66079, 1, 1, 1, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66963, 1, 6, 0, 0, 0, 1000, 0, 0, 46879), -- -Unknown-
(66124, 1, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66123, 1, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66119, 1, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66121, 1, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66122, 1, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66118, 1, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(67100, 1, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66116, 1, 0, 0, 0, 0, 0, 0, 0, 46879); -- -Unknown-


DELETE FROM `quest_request_items` WHERE `ID`=66119;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(66119, 0, 1, 0, 0, 'They will destroy our future if we cannot stop them.', 46879); -- -Unknown-


DELETE FROM `creature_queststarter` WHERE (`id`=186681 AND `quest`=65939) OR (`id`=186274 AND `quest` IN (65957,65956,66078)) OR (`id`=192795 AND `quest` IN (66048,72241)) OR (`id`=187115 AND `quest`=66079) OR (`id`=191698 AND `quest`=66963) OR (`id`=191895 AND `quest` IN (66124,66123)) OR (`id`=187145 AND `quest`=66119) OR (`id`=187129 AND `quest`=66121) OR (`id`=187119 AND `quest` IN (66122,66118)) OR (`id`=192574 AND `quest`=67100) OR (`id`=190293 AND `quest`=66116);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(186681, 65939, 46879), -- -Unknown- offered Wrathion
(186274, 65957, 46879), -- -Unknown- offered Wrathion
(186274, 65956, 46879), -- -Unknown- offered Wrathion
(186274, 66078, 46879), -- -Unknown- offered Wrathion
(192795, 66048, 46879), -- -Unknown- offered Scalecommander Emberthal
(192795, 72241, 46879), -- -Unknown- offered Scalecommander Emberthal
(187115, 66079, 46879), -- -Unknown- offered Alexstrasza the Life-Binder
(191698, 66963, 46879), -- -Unknown- offered Hauler Bennet
(191895, 66124, 46879), -- -Unknown- offered Majordomo Selistra
(191895, 66123, 46879), -- -Unknown- offered Majordomo Selistra
(187145, 66119, 46879), -- -Unknown- offered Kildrumeh
(187129, 66121, 46879), -- -Unknown- offered Majordomo Selistra
(187119, 66122, 46879), -- -Unknown- offered Commander Lethanak
(187119, 66118, 46879), -- -Unknown- offered Commander Lethanak
(192574, 67100, 46879), -- -Unknown- offered Thomas Bright
(190293, 66116, 46879); -- -Unknown- offered Majordomo Selistra


DELETE FROM `creature_questender` WHERE (`id`=186681 AND `quest` IN (65957,65956)) OR (`id`=186274 AND `quest` IN (66078,66048,66079)) OR (`id`=192795 AND `quest`=72241) OR (`id`=187278 AND `quest`=66124) OR (`id`=191895 AND `quest` IN (66123,66121,66122)) OR (`id`=187145 AND `quest`=66119) OR (`id`=187119 AND `quest` IN (66118,66116)) OR (`id`=192574 AND `quest`=67564) OR (`id`=190293 AND `quest`=66931);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(186681, 65957, 46879), -- -Unknown- ended by Wrathion
(186681, 65956, 46879), -- -Unknown- ended by Wrathion
(186274, 66078, 46879), -- -Unknown- ended by Wrathion
(186274, 66048, 46879), -- -Unknown- ended by Wrathion
(192795, 72241, 46879), -- -Unknown- ended by Scalecommander Emberthal
(186274, 66079, 46879), -- -Unknown- ended by Wrathion
(187278, 66124, 46879), -- -Unknown- ended by Majordomo Selistra
(191895, 66123, 46879), -- -Unknown- ended by Majordomo Selistra
(191895, 66121, 46879), -- -Unknown- ended by Majordomo Selistra
(191895, 66122, 46879), -- -Unknown- ended by Majordomo Selistra
(187145, 66119, 46879), -- -Unknown- ended by Kildrumeh
(187119, 66118, 46879), -- -Unknown- ended by Commander Lethanak
(187119, 66116, 46879), -- -Unknown- ended by Commander Lethanak
(192574, 67564, 46879), -- Artisan's Courier ended by Thomas Bright
(190293, 66931, 46879); -- Who Brought the Ruckus? ended by Majordomo Selistra


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (190116,188143,187530,188136,201154,190163,189734,186933,197341,186950,188133,191597,186904,188155,183187,186915,186919,188141,186892,188158,197340,186897,189768,187908,187366,187919,189587,183306,186721,186681,196791,189604,186451,186509,189643,191525,186272,194874,194915,197016,198767,187860,187602,191876,191940,195127,195009,183186,187949,196605,191476,191679,186634,191704,191479,195001,181875,195128,186483,195160,193967,186716,186732,189557,186511,186638,191524,189610,189581,186239,189942,186109,186261,181763,186336,191835,191816,198197,187538,189503,186326,188444,186324,186331,192165,192177,194836,186317,186312,192795,186314,186430,198879,188445,186447,186757,186454,186752,186429,187466,196995,186493,198876,190519,186764,189507,187189,191851,187187,186452,186274,191823,191696,191697,191014,191021,191042,191694,191043,191039,191044,191015,191038,191857,192185,186763,186765,189713,186241,181016,189461,191395,191396,191827,194709,198621,191703,188724,194093,191805,191284,191687,187278,191896,187115,187419,194087,198329,191684,194444,194080,194084,188908,193623,191825,194081,191699,191698,191702,191701,191700,196017,191373,198457,198632,191895,190204,190149,190130,190129,190208,187174,190124,187172,188447,187173,191897,187088,190127,190066,187209,190065,187203,187085,190064,187212,187175,190131,187204,190069,190061,194829,196376,187211,191867,187078,193218,192058,187129,187107,187108,196811,187083,187090,187089,187119,190252,187084,187079,187082,187101,187105,192050,187097,187096,187117,187145,187075,187106,187102));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(190116, 0, 0, 0, 2289, 46879),
(188143, 0, 1, 1, 2078, 46879),
(187530, 0, 2, 2, 2078, 46879),
(188136, 0, 2, 2, 2078, 46879),
(201154, 0, 0, 0, 2286, 46879),
(190163, 0, 0, 0, 2151, 46879),
(189734, 0, 0, 0, 2151, 46879),
(186933, 0, 0, 0, 2078, 46879),
(197341, 0, 0, 0, 2151, 46879),
(186950, 0, 0, 0, 2151, 46879),
(188133, 0, 2, 2, 2078, 46879),
(191597, 0, 0, 0, 2289, 46879),
(186904, 0, 3, 3, 2078, 46879),
(188155, 0, 1, 1, 2078, 46879),
(183187, 0, 0, 0, 2151, 46879),
(186915, 0, 0, 0, 2289, 46879),
(186919, 0, 0, 0, 2151, 46879),
(188141, 0, 2, 2, 2078, 46879),
(186892, 0, 0, 0, 2151, 46879),
(188158, 0, 1, 1, 2078, 46879),
(197340, 0, 0, 0, 2151, 46879),
(186897, 0, 0, 0, 2151, 46879),
(189768, 0, 0, 0, 2289, 46879),
(187908, 0, 0, 0, 2287, 46879),
(187366, 0, 0, 0, 2305, 46879),
(187919, 0, 1, 1, 2305, 46879),
(189587, 0, 0, 0, 2151, 46879),
(183306, 0, 0, 0, 2078, 46879),
(186721, 0, 0, 0, 2151, 46879),
(186681, 0, 0, 0, 2078, 46879),
(196791, 0, 2, 2, 2078, 46879),
(189604, 0, 0, 0, 2151, 46879),
(186451, 0, 0, 0, 2078, 46879),
(186509, 0, 0, 0, 2151, 46879),
(189643, 0, 0, 0, 2151, 46879),
(191525, 0, 0, 0, 2078, 46879),
(186272, 0, 0, 0, 2523, 46879),
(194874, 0, 0, 0, 2214, 46879),
(194915, 0, 0, 0, 2152, 46879),
(197016, 0, 0, 0, 2437, 46879),
(198767, 0, 0, 0, 2164, 46879),
(187860, 0, 0, 0, 2474, 46879),
(187602, 0, 0, 0, 2287, 46879),
(191876, 0, 0, 0, 2078, 46879),
(191940, 0, 0, 0, 2270, 46879),
(195127, 0, 0, 0, 181, 46879),
(195009, 0, 0, 0, 181, 46879),
(183186, 0, 0, 0, 2151, 46879),
(187949, 0, 0, 0, 2151, 46879),
(196605, 0, 0, 0, 2152, 46879),
(191476, 0, 0, 0, 2270, 46879),
(191679, 0, 0, 0, 2151, 46879),
(186634, 0, 0, 0, 2151, 46879),
(191704, 0, 0, 0, 2308, 46879),
(191479, 0, 0, 0, 2151, 46879),
(195001, 0, 0, 0, 181, 46879),
(181875, 0, 0, 0, 2151, 46879),
(195128, 0, 0, 0, 181, 46879),
(186483, 0, 0, 0, 2151, 46879),
(195160, 0, 0, 0, 2151, 46879),
(193967, 0, 1, 1, 2275, 46879),
(186716, 0, 0, 0, 2151, 46879),
(186732, 0, 0, 0, 2151, 46879),
(189557, 0, 0, 0, 2151, 46879),
(186511, 0, 0, 0, 2151, 46879),
(186638, 0, 0, 0, 2270, 46879),
(191524, 0, 0, 0, 2151, 46879),
(189610, 0, 0, 0, 2151, 46879),
(189581, 0, 0, 0, 2151, 46879),
(186239, 0, 0, 0, 2151, 46879),
(189942, 0, 0, 0, 2078, 46879),
(186109, 0, 0, 0, 2270, 46879),
(186261, 0, 0, 0, 2151, 46879),
(181763, 0, 0, 0, 2151, 46879),
(186336, 0, 0, 0, 2151, 46879),
(191835, 0, 0, 0, 2151, 46879),
(191816, 0, 0, 0, 2151, 46879),
(198197, 0, 0, 0, 2151, 46879),
(187538, 0, 0, 0, 2291, 46879),
(189503, 0, 0, 0, 2078, 46879),
(186326, 0, 0, 0, 2151, 46879),
(188444, 0, 0, 0, 2151, 46879),
(186324, 0, 0, 0, 2151, 46879),
(186331, 0, 0, 0, 2151, 46879),
(192165, 0, 0, 0, 2286, 46879),
(192177, 0, 0, 0, 2286, 46879),
(194836, 0, 0, 0, 2474, 46879),
(186317, 0, 0, 0, 2286, 46879),
(186312, 0, 0, 0, 2078, 46879),
(192795, 0, 0, 0, 2078, 46879),
(186314, 0, 0, 0, 2078, 46879),
(186430, 0, 0, 0, 2078, 46879),
(198879, 0, 0, 0, 2456, 46879),
(188445, 0, 0, 0, 2151, 46879),
(186447, 0, 0, 0, 633, 46879),
(186757, 0, 0, 0, 2078, 46879),
(186454, 0, 0, 0, 2078, 46879),
(186752, 0, 0, 0, 2078, 46879),
(186429, 0, 0, 0, 2078, 46879),
(187466, 0, 0, 0, 2151, 46879),
(196995, 0, 0, 0, 2151, 46879),
(186493, 0, 0, 0, 2151, 46879),
(198876, 0, 0, 0, 883, 46879),
(190519, 0, 0, 0, 2078, 46879),
(186764, 0, 0, 0, 2151, 46879),
(189507, 0, 0, 0, 2151, 46879),
(187189, 0, 0, 0, 2151, 46879),
(191851, 0, 0, 0, 2151, 46879),
(187187, 0, 0, 0, 2151, 46879),
(186452, 0, 0, 0, 2151, 46879),
(186274, 0, 0, 0, 2078, 46879),
(191823, 0, 0, 0, 2151, 46879),
(191696, 0, 0, 0, 2151, 46879),
(191697, 0, 0, 0, 2151, 46879),
(191014, 0, 0, 0, 2078, 46879),
(191021, 0, 0, 0, 2078, 46879),
(191042, 0, 0, 0, 2078, 46879),
(191694, 0, 0, 0, 2151, 46879),
(191043, 0, 0, 0, 2078, 46879),
(191039, 0, 0, 0, 2078, 46879),
(191044, 0, 0, 0, 2078, 46879),
(191015, 0, 0, 0, 2078, 46879),
(191038, 0, 0, 0, 2078, 46879),
(191857, 0, 0, 0, 2306, 46879),
(192185, 0, 0, 0, 81, 46879),
(186763, 0, 0, 0, 2151, 46879),
(186765, 0, 0, 0, 2151, 46879),
(189713, 0, 0, 0, 2151, 46879),
(186241, 0, 0, 0, 2151, 46879),
(181016, 0, 0, 0, 2151, 46879),
(189461, 0, 0, 0, 2151, 46879),
(191395, 0, 0, 0, 2151, 46879),
(191396, 0, 0, 0, 2151, 46879),
(191827, 0, 0, 0, 2151, 46879),
(194709, 0, 0, 0, 2078, 46879),
(198621, 0, 0, 0, 2078, 46879),
(191703, 0, 0, 0, 2308, 46879),
(188724, 0, 0, 0, 2151, 46879),
(194093, 0, 0, 0, 2151, 46879),
(191805, 0, 0, 0, 2308, 46879),
(191284, 0, 0, 0, 2078, 46879),
(191687, 0, 0, 0, 2151, 46879),
(187278, 0, 0, 0, 2151, 46879),
(191896, 0, 0, 0, 2437, 46879),
(187115, 0, 0, 0, 2151, 46879),
(187419, 0, 0, 0, 2151, 46879),
(194087, 0, 0, 0, 2151, 46879),
(198329, 0, 0, 0, 2151, 46879),
(191684, 0, 0, 0, 2151, 46879),
(194444, 0, 0, 0, 2151, 46879),
(194080, 0, 0, 0, 2151, 46879),
(194084, 0, 0, 0, 2151, 46879),
(188908, 0, 0, 0, 2277, 46879),
(193623, 0, 0, 0, 81, 46879),
(191825, 0, 0, 0, 2151, 46879),
(194081, 0, 0, 0, 2151, 46879),
(191699, 0, 0, 0, 2277, 46879),
(191698, 0, 0, 0, 2277, 46879),
(191702, 0, 0, 0, 2277, 46879),
(191701, 0, 0, 0, 2277, 46879),
(191700, 0, 0, 0, 2277, 46879),
(196017, 0, 0, 0, 2151, 46879),
(191373, 0, 0, 0, 2151, 46879),
(198457, 0, 0, 0, 2078, 46879),
(198632, 0, 0, 0, 2078, 46879),
(191895, 0, 0, 0, 2151, 46879),
(190204, 0, 0, 0, 2280, 46879),
(190149, 0, 0, 0, 2280, 46879),
(190130, 0, 0, 0, 2280, 46879),
(190129, 0, 0, 0, 2280, 46879),
(190208, 0, 0, 0, 2280, 46879),
(187174, 0, 0, 0, 2280, 46879),
(190124, 0, 0, 0, 2280, 46879),
(187172, 0, 0, 0, 2280, 46879),
(188447, 0, 0, 0, 2280, 46879),
(187173, 0, 0, 0, 2280, 46879),
(191897, 0, 0, 0, 2151, 46879),
(187088, 0, 0, 0, 2279, 46879),
(190127, 0, 0, 0, 2280, 46879),
(190066, 0, 0, 0, 2280, 46879),
(187209, 0, 1, 1, 2280, 46879),
(190065, 0, 0, 0, 2280, 46879),
(187203, 0, 0, 0, 2280, 46879),
(187085, 0, 0, 0, 2279, 46879),
(190064, 0, 0, 0, 2151, 46879),
(187212, 0, 0, 0, 2280, 46879),
(187175, 0, 0, 0, 2280, 46879),
(190131, 0, 0, 0, 2280, 46879),
(187204, 0, 0, 0, 2280, 46879),
(190069, 0, 0, 0, 2280, 46879),
(190061, 0, 0, 0, 2280, 46879),
(194829, 0, 0, 0, 2474, 46879),
(196376, 0, 0, 0, 2279, 46879),
(187211, 0, 0, 0, 2280, 46879),
(191867, 0, 0, 0, 2151, 46879),
(187078, 0, 0, 0, 2279, 46879),
(193218, 0, 0, 0, 2151, 46879),
(192058, 0, 0, 0, 371, 46879),
(187129, 0, 0, 0, 2151, 46879),
(187107, 0, 0, 0, 2279, 46879),
(187108, 0, 0, 0, 2279, 46879),
(196811, 0, 0, 0, 2078, 46879),
(187083, 0, 0, 0, 2279, 46879),
(187090, 0, 0, 0, 2279, 46879),
(187089, 0, 0, 0, 2279, 46879),
(187119, 0, 0, 0, 2151, 46879),
(190252, 0, 0, 0, 2279, 46879),
(187084, 0, 0, 0, 2279, 46879),
(187079, 0, 0, 0, 2279, 46879),
(187082, 0, 0, 0, 2279, 46879),
(187101, 0, 0, 0, 2279, 46879),
(187105, 0, 0, 0, 2279, 46879),
(192050, 0, 0, 0, 371, 46879),
(187097, 0, 0, 0, 2279, 46879),
(187096, 0, 0, 0, 2279, 46879),
(187117, 0, 0, 0, 2279, 46879),
(187145, 0, 0, 0, 2151, 46879),
(187075, 0, 0, 0, 2279, 46879),
(187106, 0, 0, 0, 2279, 46879),
(187102, 0, 0, 0, 2279, 46879);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46879 WHERE (`DifficultyID`=0 AND `Entry` IN (180016,156558,192134,181029,186965,103822,198489,186687,191678,193024,193026,191647,6491));

DELETE FROM `creature_model_info` WHERE `DisplayID` IN (102498, 101826, 107705, 101831, 104558, 107198, 102198, 102497, 106199, 107214, 101832, 102468, 102467, 102452, 102429, 102428, 106051, 105879, 102199, 107919, 101834, 101839, 102459, 101838, 102494, 102496, 101840, 102386, 106380, 102624, 102485, 102461, 104574, 101841, 101819, 102481, 107592, 102383, 106050, 102453, 108351, 105875, 105880, 101835, 102480, 101836, 102460, 102596, 108018, 106458, 102195, 102288, 102194, 105716, 102393, 102394, 105718, 107711, 102196, 102378, 102435, 102382, 105765, 105779, 102200, 105885, 102381, 102445, 102384, 102202, 102387, 102379, 102431, 102286, 102385, 102432, 102284, 103519, 102427, 102377, 107669, 102433, 104164, 103557, 103586, 107320, 107322, 107326, 107327, 107325, 107331, 107321, 107323, 104166, 102380, 102370, 102430, 102434, 102197, 102201, 104075, 104066, 107433, 107441, 107380, 107436, 107381, 107435, 103549, 103540, 107377, 107434, 107611, 107385, 107431, 107647, 110347, 104076, 107643, 107586, 107585, 107591, 107589, 107588, 103535, 103539, 103537, 109676, 102946, 107045, 102885, 102897, 102942, 107084, 102957, 102901, 102974, 102955, 102873, 102944, 107078, 102896, 102879, 107575, 102899, 107048, 102882, 104556, 102903, 102923, 106722, 79802, 102950, 102874, 102916, 109677, 107079, 109674, 102917, 103250, 107490, 102695, 109673, 103249, 107793, 102679, 102868, 102872, 102671, 107849, 102588, 107701, 109751, 108306, 108308, 107481, 106525, 108307, 107480, 106938, 102871, 102870, 102687, 107484, 102741, 102674, 107492, 108315, 102694, 102732, 107485, 102811, 102686, 102696, 105603, 105600, 102804);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(102498, 3.367943525314331054, 2.099999904632568359, 0, 46879),
(101826, 2.496351242065429687, 2.25, 0, 46879),
(107705, 0.899999976158142089, 8.099999427795410156, 0, 46879),
(101831, 2.405673980712890625, 1.5, 0, 46879),
(104558, 1, 9, 0, 46879),
(107198, 1, 9, 0, 46879),
(102198, 1.343548059463500976, 4.02500009536743164, 0, 46879),
(102497, 3.367943525314331054, 2.099999904632568359, 0, 46879),
(106199, 0.899999976158142089, 8.099999427795410156, 0, 46879),
(107214, 1, 9, 0, 46879),
(101832, 2.405673980712890625, 1.5, 0, 46879),
(102468, 3.494891643524169921, 3.149999856948852539, 0, 46879),
(102467, 3.494891643524169921, 3.149999856948852539, 0, 46879),
(102452, 4.268644332885742187, 5, 0, 46879),
(102429, 0.336600005626678466, 1.65000009536743164, 0, 46879),
(102428, 0.767800033092498779, 3.300000190734863281, 0, 46879),
(106051, 0.110000006854534149, 1.10000002384185791, 0, 46879),
(105879, 0.100000001490116119, 1, 0, 46879),
(102199, 1.343548059463500976, 4.02500009536743164, 0, 46879),
(107919, 0.899999976158142089, 8.099999427795410156, 0, 46879),
(101834, 2.496351242065429687, 2.25, 0, 46879),
(101839, 2.405673980712890625, 1.5, 0, 46879),
(102459, 3.494891643524169921, 3.149999856948852539, 0, 46879),
(101838, 2.405673980712890625, 1.5, 0, 46879),
(102494, 3.70473790168762207, 2.309999942779541015, 0, 46879),
(102496, 3.367943525314331054, 2.099999904632568359, 0, 46879),
(101840, 2.405673980712890625, 1.5, 0, 46879),
(102386, 0.347222000360488891, 1.5, 0, 46879),
(106380, 0.963693201541900634, 1.574999928474426269, 0, 46879),
(102624, 5.969673633575439453, 10.5, 0, 46879),
(102485, 3.367943525314331054, 2.099999904632568359, 0, 46879),
(102461, 3.494891643524169921, 3.149999856948852539, 0, 46879),
(104574, 7.876821517944335937, 15, 0, 46879),
(101841, 2.405673980712890625, 1.5, 0, 46879),
(101819, 2.246716022491455078, 2.024999856948852539, 0, 46879),
(102481, 3.367943525314331054, 2.099999904632568359, 0, 46879),
(107592, 1, 1.5, 0, 46879),
(102383, 0.305999994277954101, 1.5, 0, 46879),
(106050, 0.110000006854534149, 1.10000002384185791, 0, 46879),
(102453, 4.268644332885742187, 5, 0, 46879),
(108351, 3.494891643524169921, 3.149999856948852539, 0, 46879),
(105875, 0.100000001490116119, 1, 0, 46879),
(105880, 1.5, 1.5, 0, 46879),
(101835, 2.496351242065429687, 2.25, 0, 46879),
(102480, 3.367943525314331054, 2.099999904632568359, 0, 46879),
(101836, 2.496351242065429687, 2.25, 0, 46879),
(102460, 3.494891643524169921, 3.149999856948852539, 0, 46879),
(102596, 3.718576908111572265, 7, 0, 46879),
(108018, 11.27977466583251953, 10, 0, 46879),
(106458, 0.45138859748840332, 1.949999928474426269, 0, 46879),
(102195, 1.343548059463500976, 4.02500009536743164, 0, 46879),
(102288, 1.930850028991699218, 1.65000009536743164, 0, 46879),
(102194, 1.343548059463500976, 4.02500009536743164, 0, 46879),
(105716, 0.364583075046539306, 1.574999928474426269, 0, 46879),
(102393, 0.381944209337234497, 1.65000009536743164, 0, 46879),
(102394, 0.336600005626678466, 1.65000009536743164, 0, 46879),
(105718, 0.420138627290725708, 1.815000057220458984, 0, 46879),
(107711, 0.305999994277954101, 1.5, 0, 46879),
(102196, 1.343548059463500976, 4.02500009536743164, 0, 46879),
(102378, 0.305999994277954101, 1.5, 0, 46879),
(102435, 0.381700009107589721, 1.65000009536743164, 0, 46879),
(102382, 0.347222000360488891, 1.5, 0, 46879),
(105765, 0.690244972705841064, 1.5, 0, 46879),
(105779, 0.372000008821487426, 1.5, 0, 46879),
(102200, 1.343548059463500976, 4.02500009536743164, 0, 46879),
(105885, 0.329860895872116088, 1.424999952316284179, 0, 46879),
(102381, 0.305999994277954101, 1.5, 0, 46879),
(102445, 1.10000002384185791, 1.65000009536743164, 0, 46879),
(102384, 0.382999986410140991, 1.5, 0, 46879),
(102202, 1.132115364074707031, 1.5, 0, 46879),
(102387, 0.305999994277954101, 1.5, 0, 46879),
(102379, 0.305999994277954101, 1.5, 0, 46879),
(102431, 0.381944209337234497, 1.65000009536743164, 0, 46879),
(102286, 1.737764954566955566, 1.485000014305114746, 0, 46879),
(102385, 0.347222000360488891, 1.5, 0, 46879),
(102432, 0.336600005626678466, 1.65000009536743164, 0, 46879),
(102284, 1.930850028991699218, 1.65000009536743164, 0, 46879),
(103519, 1.132115364074707031, 1.5, 0, 46879),
(102427, 0.381944209337234497, 1.65000009536743164, 0, 46879),
(102377, 0.382999986410140991, 1.5, 0, 46879),
(107669, 0.310000002384185791, 1, 0, 46879),
(102433, 0.794200003147125244, 3.300000190734863281, 0, 46879),
(104164, 1.933423042297363281, 1.399999976158142089, 0, 46879),
(103557, 3.467753410339355468, 4.800000190734863281, 0, 46879),
(103586, 5.057140350341796875, 7, 0, 46879),
(107320, 0.228800013661384582, 1.65000009536743164, 0, 46879),
(107322, 0.321299970149993896, 1.574999928474426269, 0, 46879),
(107326, 0.321299970149993896, 1.574999928474426269, 0, 46879),
(107327, 0.321299970149993896, 1.574999928474426269, 0, 46879),
(107325, 0.321299970149993896, 1.574999928474426269, 0, 46879),
(107331, 0.321299970149993896, 1.574999928474426269, 0, 46879),
(107321, 0.321299970149993896, 1.574999928474426269, 0, 46879),
(107323, 0.321299970149993896, 1.574999928474426269, 0, 46879),
(104166, 0.201088935136795043, 0.1875, 0, 46879),
(102380, 0.388999998569488525, 1.5, 0, 46879),
(102370, 0.305999994277954101, 1.5, 0, 46879),
(102430, 0.409200012683868408, 1.65000009536743164, 0, 46879),
(102434, 1.10000002384185791, 1.65000009536743164, 0, 46879),
(102197, 1.343548059463500976, 4.02500009536743164, 0, 46879),
(102201, 1.343548059463500976, 4.02500009536743164, 0, 46879),
(104075, 2.214211463928222656, 1.399999976158142089, 0, 46879),
(104066, 2.214211463928222656, 1.399999976158142089, 0, 46879),
(107433, 0.400000005960464477, 0.60000002384185791, 0, 46879),
(107441, 0.804161131381988525, 0, 0, 46879),
(107380, 0.60000002384185791, 0.900000035762786865, 0, 46879),
(107436, 0.400000005960464477, 0.60000002384185791, 0, 46879),
(107381, 0.60000002384185791, 0.900000035762786865, 0, 46879),
(107435, 0.400000005960464477, 0.60000002384185791, 0, 46879),
(103549, 2.502509355545043945, 4.800000190734863281, 0, 46879),
(103540, 2.502509355545043945, 4.800000190734863281, 0, 46879),
(107377, 0.60000002384185791, 0.900000035762786865, 0, 46879),
(107434, 0.400000005960464477, 0.60000002384185791, 0, 46879),
(107611, 0.400000005960464477, 0.60000002384185791, 0, 46879),
(107385, 0.60000002384185791, 0.900000035762786865, 0, 46879),
(107431, 0.400000005960464477, 0.60000002384185791, 0, 46879),
(107647, 0.60000002384185791, 0.900000035762786865, 0, 46879),
(110347, 0.722000002861022949, 3, 0, 46879),
(104076, 4.428422927856445312, 2.799999952316284179, 0, 46879),
(107643, 0.60000002384185791, 0.900000035762786865, 0, 46879),
(107586, 0.388999998569488525, 1.5, 0, 46879),
(107585, 0.347222000360488891, 1.5, 0, 46879),
(107591, 0.5, 1, 0, 46879),
(107589, 0.5, 1, 0, 46879),
(107588, 0.5, 1, 0, 46879),
(103535, 2.502509355545043945, 4.800000190734863281, 0, 46879),
(103539, 2.502509355545043945, 4.800000190734863281, 0, 46879),
(103537, 2.502509355545043945, 4.800000190734863281, 0, 46879),
(109676, 10.67460250854492187, 10, 0, 46879),
(102946, 0.305999994277954101, 1.5, 0, 46879),
(107045, 0.388999998569488525, 1.5, 0, 46879),
(102885, 0.305999994277954101, 1.5, 0, 46879),
(102897, 0.305999994277954101, 1.5, 0, 46879),
(102942, 0.698000013828277587, 3, 0, 46879),
(107084, 1, 1, 0, 46879),
(102957, 0.236000001430511474, 1.5, 0, 46879),
(102901, 0.305999994277954101, 1.5, 0, 46879),
(102974, 1, 1.5, 0, 46879),
(102955, 0.347000002861022949, 1.5, 0, 46879),
(102873, 0.305999994277954101, 1.5, 0, 46879),
(102944, 0.722000002861022949, 3, 0, 46879),
(107078, 1, 1, 0, 46879),
(102896, 0.305999994277954101, 1.5, 0, 46879),
(102879, 0.698000013828277587, 3, 0, 46879),
(107575, 10.74017524719238281, 10, 0, 46879),
(102899, 0.305999994277954101, 1.5, 0, 46879),
(107048, 0.305999994277954101, 1.5, 0, 46879),
(102882, 0.305999994277954101, 1.5, 0, 46879),
(104556, 1, 1, 0, 46879),
(102903, 0.388999998569488525, 1.5, 0, 46879),
(102923, 2.720150232315063476, 2.8125, 0, 46879),
(106722, 0.804161131381988525, 0, 0, 46879),
(79802, 1.838521361351013183, 1, 0, 46879),
(102950, 0.305999994277954101, 1.5, 0, 46879),
(102874, 0.305999994277954101, 1.5, 0, 46879),
(102916, 1.450746774673461914, 1.5, 0, 46879),
(109677, 10.67460250854492187, 10, 0, 46879),
(107079, 1, 1, 0, 46879),
(109674, 12.00420951843261718, 10, 0, 46879),
(102917, 1.450746774673461914, 1.5, 0, 46879),
(103250, 10.67460250854492187, 10, 0, 46879),
(107490, 1, 1.5, 0, 46879),
(102695, 1.746612310409545898, 5.232499599456787109, 0, 46879),
(109673, 12.00420951843261718, 10, 0, 46879),
(103249, 12.00420951843261718, 10, 0, 46879),
(107793, 0.25, 10, 0, 46879),
(102679, 1.746612310409545898, 5.232499599456787109, 0, 46879),
(102868, 0.305999994277954101, 1.5, 0, 46879),
(102872, 0.305999994277954101, 1.5, 0, 46879),
(102671, 1.746612310409545898, 5.232499599456787109, 0, 46879),
(107849, 0.741670072078704833, 1.75, 0, 46879),
(102588, 0.870009303092956542, 0.75, 0, 46879),
(107701, 1.20000004768371582, 1.80000007152557373, 0, 46879),
(109751, 1.83117532730102539, 1.20000004768371582, 0, 46879),
(108306, 4.238114833831787109, 8, 0, 46879),
(108308, 4.238114833831787109, 8, 0, 46879),
(107481, 0.80699998140335083, 2.20000004768371582, 0, 46879),
(106525, 1.483340144157409667, 3.5, 0, 46879),
(108307, 4.238114833831787109, 8, 0, 46879),
(107480, 0.80699998140335083, 2.20000004768371582, 0, 46879),
(106938, 1, 9, 0, 46879),
(102871, 0.388999998569488525, 1.5, 0, 46879),
(102870, 0.388999998569488525, 1.5, 0, 46879),
(102687, 1.746612310409545898, 5.232499599456787109, 0, 46879),
(107484, 1.740018606185913085, 1.5, 0, 46879),
(102741, 1.930850028991699218, 1.65000009536743164, 0, 46879),
(102674, 1.47174990177154541, 1.949999928474426269, 0, 46879),
(107492, 1, 1.5, 0, 46879),
(108315, 0.311139464378356933, 0.300000011920928955, 0, 46879),
(102694, 1.746612310409545898, 5.232499599456787109, 0, 46879),
(102732, 1.930850028991699218, 1.65000009536743164, 0, 46879),
(107485, 0.870009303092956542, 0.75, 0, 46879),
(102811, 0.349999994039535522, 0.524999976158142089, 0, 46879),
(102686, 1.746612310409545898, 5.232499599456787109, 0, 46879),
(102696, 1.746612310409545898, 5.232499599456787109, 0, 46879),
(105603, 0.500797629356384277, 1, 0, 46879),
(105600, 0.500797629356384277, 1, 0, 46879),
(102804, 1.584961533546447753, 2.099999904632568359, 0, 46879);

UPDATE `creature_model_info` SET `VerifiedBuild`=46879 WHERE `DisplayID` IN (104023, 101808, 101523, 104025, 104534, 102482, 101806, 106029, 102605, 40690, 40692, 110117, 106309, 102465, 101811, 101807, 102604, 106307, 101805, 101810, 106308, 106306, 107945, 101809, 101804, 108050, 104039, 104035, 102505, 107055, 56567, 42784, 51337, 102031, 51336, 88960, 102390, 104157, 104140, 103560, 107186, 103548, 103546, 103550, 107146, 103552, 102733, 104664, 103845, 103536, 103534, 103538, 102739, 5233, 56290, 69610, 102580, 102740, 107112, 102678, 102508);
UPDATE `creature_model_info` SET `BoundingRadius`=0.766482889652252197, `CombatReach`=1.25, `VerifiedBuild`=46879 WHERE `DisplayID`=101255;
UPDATE `creature_model_info` SET `BoundingRadius`=1.604169011116027832, `CombatReach`=13.125 WHERE `DisplayID`=102449;
UPDATE `creature_model_info` SET `BoundingRadius`=2, `CombatReach`=2, `VerifiedBuild`=46879 WHERE `DisplayID`=101513;
UPDATE `creature_model_info` SET `BoundingRadius`=0.336600005626678466, `CombatReach`=1.65000009536743164, `VerifiedBuild`=46879 WHERE `DisplayID`=91278;
UPDATE `creature_model_info` SET `BoundingRadius`=0.926641702651977539, `CombatReach`=1.5, `VerifiedBuild`=46879 WHERE `DisplayID`=90821;
UPDATE `creature_model_info` SET `BoundingRadius`=0.364583075046539306, `CombatReach`=1.574999928474426269, `VerifiedBuild`=46879 WHERE `DisplayID`=84653;
UPDATE `creature_model_info` SET `BoundingRadius`=0.347222000360488891, `CombatReach`=1.5, `VerifiedBuild`=46879 WHERE `DisplayID`=43633;
UPDATE `creature_model_info` SET `BoundingRadius`=0.220000013709068298, `CombatReach`=1.92500007152557373, `VerifiedBuild`=46879 WHERE `DisplayID`=51484;
UPDATE `creature_model_info` SET `BoundingRadius`=0.410466760396957397, `CombatReach`=1.60000002384185791 WHERE `DisplayID` IN (104680, 104676, 104679, 104678);
UPDATE `creature_model_info` SET `BoundingRadius`=0.810882329940795898, `CombatReach`=1.125, `VerifiedBuild`=46879 WHERE `DisplayID`=44836;
UPDATE `creature_model_info` SET `BoundingRadius`=0.055679995566606521, `CombatReach`=0.079999998211860656, `VerifiedBuild`=46879 WHERE `DisplayID`=47955;
UPDATE `creature_model_info` SET `BoundingRadius`=1.10000002384185791, `CombatReach`=1.65000009536743164 WHERE `DisplayID`=104142;
UPDATE `creature_model_info` SET `BoundingRadius`=0.80699998140335083, `CombatReach`=2.20000004768371582, `VerifiedBuild`=46879 WHERE `DisplayID`=107479;
UPDATE `creature_model_info` SET `BoundingRadius`=0.75, `CombatReach`=1.5 WHERE `DisplayID`=27823;
UPDATE `creature_model_info` SET `BoundingRadius`=0.03281249850988388, `CombatReach`=0.09375 WHERE `DisplayID` IN (104041, 104040);
UPDATE `creature_model_info` SET `BoundingRadius`=1.165018796920776367 WHERE `DisplayID`=102140;



DELETE FROM `gossip_menu` WHERE (`TextID`=1 AND `MenuID` IN (28039,27828,28162,27829,24312,28168,28010,28019,28008,28009,28002,30029,27744,27747,29836,28464,28463,28457,28453));
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(28039, 1, 46879), -- 186681 (Wrathion)
(27828, 1, 46879), -- 186274 (Wrathion)
(28162, 1, 46879), -- 190519 (Bronze Timekeeper)
(27829, 1, 46879), -- 187189 (Blacktalon Assassin)
(24312, 1, 46879), -- 186312 (Left)
(28168, 1, 46879), -- 186331 (Fao the Relentless)
(28010, 1, 46879), -- 186331 (Fao the Relentless)
(28019, 1, 46879), -- 189507 (Talonstalker Kavia)
(28008, 1, 46879), -- 186493 (Forgemaster Bazentus)
(28009, 1, 46879), -- 186493 (Forgemaster Bazentus)
(28002, 1, 46879), -- 187466 (Archivist Edress)
(30029, 1, 46879), -- 192795 (Scalecommander Emberthal)
(27744, 1, 46879), -- 186447 (Kaplak)
(27747, 1, 46879), -- 186454 (Kora Fullsails)
(29836, 1, 46879), -- 187278 (Majordomo Selistra)
(28464, 1, 46879), -- 192574 (Thomas Bright)
(28463, 1, 46879), -- 192574 (Thomas Bright)
(28457, 1, 46879), -- 192574 (Thomas Bright)
(28453, 1, 46879); -- 192574 (Thomas Bright)

DELETE FROM `gossip_menu_option` WHERE (`OptionID`=0 AND `MenuID` IN (28019,27829,28162,28010,28002,28009,29836,28463,28039,28457,28453,30029,28008)) OR (`OptionID`=1 AND `MenuID`=27747) OR (`OptionID`=3 AND `MenuID`=28453) OR (`OptionID`=2 AND `MenuID`=28453);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(28019, 0, 0, 'What have you observed?', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(27747, 1, 1, 'Let me browse your goods.', 2823, 0, 0, 0, 0, 0, NULL, 0, 46879), -- OptionBroadcastTextID: 2823 - 2823 - 7509 - 7509 - 8097 - 8097
(27829, 0, 0, 'I\'m here to test your combat skills.', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28162, 0, 0, 'I\'d like to try the course.', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28010, 0, 0, 'Might we review the battle plans?', 0, 0, 28168, 0, 0, 0, NULL, 0, 46879),
(28002, 0, 0, 'What has your research found?', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28453, 3, 0, '|cFF0000FF(Quest)|r I will use only the best reagents!', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28009, 0, 0, 'Thank you for the information.', 0, 0, 28008, 0, 0, 0, NULL, 0, 46879),
(29836, 0, 0, '|cFF0000FF(Quest)|r <Check in with the majordomo.>', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28463, 0, 0, 'I will find these for you.', 0, 0, 28464, 0, 0, 0, NULL, 0, 46879),
(28039, 0, 0, 'I am ready to begin the assault.', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28453, 2, 0, '|cFF0000FF(Quest)|r What do you mean, \"high quality\"?', 0, 0, 28457, 0, 0, 0, NULL, 0, 46879),
(28457, 0, 0, 'What do you want to give Miguel?', 0, 0, 28463, 0, 0, 0, NULL, 0, 46879),
(28453, 0, 0, 'What is the Artisan\'s Consortium?', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(30029, 0, 0, 'Tell me of the dracthyr\'s origins.', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28008, 0, 0, 'Tell me about the weapons in the Citadel.', 0, 0, 28009, 0, 0, 0, NULL, 0, 46879);




DELETE FROM `creature_template` WHERE `entry` IN (190116 /*Qalashi Skullhauler*/, 188143 /*Myridian*/, 187530 /*Evorian*/, 188136 /*Exadria*/, 201154 /*Surging Magma*/, 190163 /*Animated Vault Protector*/, 189734 /*Qalashi Boltthrower*/, 186933 /*Wrathion*/, 197341 /*Blacktalon Avenger*/, 186950 /*Arbalest*/, 188133 /*Narsysix*/, 191597 /*Qalashi Crustshaper*/, 186904 /*Sabellian*/, 188155 /*Osoria*/, 183187 /*Dreadsquall*/, 186915 /*Qalashi Gatecrasher*/, 186919 /*Obsidian Soldier*/, 188141 /*Malsiran*/, 186892 /*Qalashi Necksnapper*/, 188158 /*Baskilan*/, 197340 /*Blacktalon Avenger*/, 186897 /*Blacktalon Avenger*/, 189768 /*Qalashi Flamelobber*/, 187908 /*Qalashi Scaleripper*/, 187366 /*Worldcarver Wurmling*/, 187919 /*Caldera Stomper*/, 189587 /*Fao the Relentless*/, 183306 /*Scalecommander Emberthal*/, 186721 /*Destroyed Extracts*/, 186681 /*Wrathion*/, 196791 /*Kixandria*/, 189604 /*Provisioner Ojito*/, 186451 /*Blacktalon Avenger*/, 186509 /*Modak Flamespit*/, 189643 /*Qalashi Crustshaper*/, 191525 /*Qalashi Wallcrasher*/, 186272 /*Risen Phoenix*/, 194874 /*Appetizing Ingot*/, 194915 /*Invis Bunny*/, 197016 /*Fishing Net*/, 198767 /*Explorative Fisher*/, 187860 /*Qalashi Magmammoth*/, 187602 /*Qalashi Scaleripper*/, 191876 /*Goruk Steelwall*/, 191940 /*Qalashi Necksnapper*/, 195127 /*Invisible Bunny*/, 195009 /*Invisible Bunny*/, 183186 /*Qalashi Wingrider*/, 187949 /*Ancient Dreadsquall*/, 196605 /*Invis Bunny Template - Gigantic AOI*/, 191476 /*Searing Flame Harchek*/, 191679 /*Magmammoth Bull*/, 186634 /*Blacktalon Assassin*/, 191704 /*Apex Proto-Dragon*/, 191479 /*Charred Hornspike*/, 195001 /*Invisible Bunny*/, 181875 /*Olphis the Molten*/, 195128 /*Invisible Bunny*/, 186483 /*Qalashi Steelcrafter*/, 195160 /*Igneous Wanderer*/, 193967 /*Dragonbane Wingshredder*/, 186716 /*Molten Extracts*/, 186732 /*Djaradin Banner*/, 189557 /*Qalashi Boltthrower*/, 186511 /*Piercer Gigra*/, 186638 /*Qalashi Crustshaper*/, 191524 /*Qalashi Ironskin*/, 189610 /*Blacktalon Assassin*/, 189581 /*Lava Fledgling*/, 186239 /*Qalashi Skullhauler*/, 189942 /*Wrathion*/, 186109 /*Qalashi Necksnapper*/, 186261 /*Restless Lava*/, 181763 /*Lava Phoenix*/, 186336 /*Blazing Manifestation*/, 191835 /*Blacktalon Scout*/, 191816 /*Blacktalon Shadowclaw*/, 198197 /*Searskin Proto-Dragon*/, 187538 /*Champion Ugi*/, 189503 /*Scalecommander Emberthal*/, 186326 /*Blacktalon Strategist*/, 188444 /*Do-Yeon Shadowrider*/, 186324 /*Blacktalon Schemer*/, 186331 /*Fao the Relentless*/, 192165 /*Winnie Fingerspring*/, 192177 /*Filbin Gearknock*/, 194836 /*Grekka Anvilsmash*/, 186317 /*Tong the Fixer*/, 186312 /*Left*/, 192795 /*Scalecommander Emberthal*/, 186314 /*Right*/, 186430 /*Horace "Scalding" Stern*/, 198879 /*Fingerspring Security*/, 188445 /*Cireni*/, 186447 /*Kaplak*/, 186757 /*Hades Prescott*/, 186454 /*Kora Fullsails*/, 186752 /*Firstmate Kaleson*/, 186429 /*Steelsage Gao*/, 187466 /*Archivist Edress*/, 196995 /*Talonstalker Gazi*/, 186493 /*Forgemaster Bazentus*/, 198876 /*Obsidian Protector*/, 190519 /*Bronze Timekeeper*/, 186764 /*Blacktalon Pack Beast*/, 189507 /*Talonstalker Kavia*/, 187189 /*Blacktalon Assassin*/, 191851 /*Blacktalon Shadowclaw*/, 187187 /*Blacktalon Avenger*/, 186452 /*Blacktalon Assassin*/, 186274 /*Wrathion*/, 191823 /*Vicious Proto-Drake*/, 191696 /*Mature Basilisk*/, 191697 /*Ancient Basilisk*/, 191014 /*Becca Black*/, 191021 /*Shiv Fizzlescheme*/, 191042 /*Snitch Eagersnipe*/, 191694 /*Young Basilisk*/, 191043 /*Itchy Sparkwobble*/, 191039 /*Snoozy Clickclock*/, 191044 /*Whimsy Cogtattler*/, 191015 /*Maddoc Stitchneedle*/, 191038 /*Cranky Wrenchriddle*/, 191857 /*Crested Poolwader*/, 192185 /*Kakapo*/, 186763 /*Blacktalon Pack Goat*/, 186765 /*Blacktalon Provisioner*/, 189713 /*Blacktalon Avenger*/, 186241 /*Generic - Empty Bunny*/, 181016 /*Blacktalon Sentry*/, 189461 /*Obsidian Watcher*/, 191395 /*Wild Proto-Drake*/, 191396 /*Wild Proto-Drake*/, 191827 /*Thunder Lizard*/, 194709 /*Dragon Glyph*/, 198621 /*Tracker Dragon Glyph*/, 191703 /*Hungry Proto-Drake*/, 188724 /*Optimistic Guppy*/, 194093 /*Wild Proto-Drake*/, 191805 /*Wild Proto-Drake*/, 191284 /*Optimistic Whelp*/, 191687 /*Riverbeast Elder*/, 187278 /*Majordomo Selistra*/, 191896 /*Wrathion*/, 187115 /*Alexstrasza the Life-Binder*/, 187419 /*Firellon*/, 194087 /*Wild Proto-Drake*/, 198329 /*Wild Proto-Dragon*/, 191684 /*Riverbeast Calf*/, 194444 /*Wild Proto-Drake*/, 194080 /*Wild Proto-Drake*/, 194084 /*Wild Proto-Drake*/, 188908 /*Rimblat Earthshatter*/, 193623 /*Tiny Salamanther*/, 191825 /*Thunder Lizard Alpha*/, 194081 /*Wild Proto-Drake*/, 191699 /*Enchanter Vevesi*/, 191698 /*Hauler Bennet*/, 191702 /*Expedition Supplies*/, 191701 /*Pristy Quickcharge*/, 191700 /*Flip Quickcharge*/, 196017 /*Pudgy Riverbeast*/, 191373 /*Primal Rumbler*/, 198457 /*Dragon Glyph*/, 198632 /*Tracker Dragon Glyph*/, 191895 /*Majordomo Selistra*/, 190204 /*Tempest Veteran*/, 190149 /*Azure Egg*/, 190130 /*Winter Caller*/, 190129 /*Winter Conqueror*/, 190208 /*Rockslide Rider*/, 187174 /*Galestrike Primalist*/, 190124 /*Emerald Egg*/, 187172 /*Rumbling Primalist*/, 188447 /*Jadzigeth*/, 187173 /*Earthshatter Primalist*/, 191897 /*Majordomo Selistra*/, 187088 /*Rumbling Primalist*/, 190127 /*Ruby Egg*/, 190066 /*Water Primalist*/, 187209 /*Klozicc the Ascended*/, 190065 /*Unruly Whelp*/, 187203 /*Frozen Revenant*/, 187085 /*Galestrike Primalist*/, 187212 /*Rumbling Proto-Dragon*/, 187175 /*Galestrike Primalist*/, 190131 /*Bronze Egg*/, 187204 /*Grounded Primalist*/, 190061 /*Galestrike Proto-Dragon*/, 194829 /*Grigori Vialtry*/, 196376 /*Thellara*/, 187211 /*Galestrike Proto-Dragon*/, 191867 /*Summoned Icestorm*/, 187078 /*Enraged Shards*/, 193218 /*Storm Target [DNT]*/, 192058 /*Igneoid*/, 187129 /*Majordomo Selistra*/, 187107 /*Life Pools Stalwart*/, 187108 /*Mature Slasher*/, 196811 /*Ruby Life Pools*/, 187083 /*Primal Avalanche*/, 187090 /*Enraged Cliff*/, 187119 /*Commander Lethanak*/, 190252 /*Xitostrasz*/, 187079 /*Convoked Tremor*/, 187082 /*Primal Avalanche*/, 187101 /*Ruby Lifeguardian*/, 187105 /*Life Pools Crasher*/, 192050 /*Snowlemental*/, 187097 /*Ruby Watcher*/, 187096 /*Ruby Searer*/, 187117 /*Ruby Culler*/, 187145 /*Kildrumeh*/, 187075 /*Enraged Shards*/, 187106 /*Life Pools Screecher*/, 187102 /*Ruby Commander*/);
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(190116, 0, 62, 62, 3295, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Qalashi Skullhauler
(188143, 0, 71, 71, 3315, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2099200, 0, 0, 0, 9.5), -- Myridian
(187530, 0, 72, 72, 3288, 0, 1, 1.142857193946838378, 2000, 0, 512, 2099200, 1, 0, 0, 9.5), -- Evorian
(188136, 0, 72, 72, 3315, 2, 1, 1.142857193946838378, 2000, 0, 32768, 2099200, 0, 0, 0, 9), -- Exadria
(201154, 0, 62, 62, 2944, 0, 1, 1.142857193946838378, 2000, 0, 32768, 16779264, 0, 4, 0, 1), -- Surging Magma
(190163, 0, 62, 62, 190, 16777216, 1, 0.857142865657806396, 2000, 0, 33536, 18432, 1048576, 0, 0, 1), -- Animated Vault Protector
(189734, 0, 62, 62, 3295, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 524288, 0, 0, 1), -- Qalashi Boltthrower
(186933, 0, 70, 70, 3285, 1, 1, 1.142857193946838378, 2000, 0, 33280, 2131968, 0, 0, 0, 1), -- Wrathion
(197341, 0, 62, 62, 3328, 0, 1, 1.142857193946838378, 2000, 0, 33280, 2048, 0, 0, 0, 1), -- Blacktalon Avenger
(186950, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 34816, 0, 0, 0, 1), -- Arbalest
(188133, 0, 72, 72, 3288, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2099200, 0, 0, 0, 8), -- Narsysix
(191597, 0, 62, 62, 3295, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Qalashi Crustshaper
(186904, 0, 73, 73, 3315, 0, 1, 1.142857193946838378, 2000, 0, 32768, 4196352, 0, 0, 0, 10), -- Sabellian
(188155, 0, 71, 71, 3315, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2099200, 0, 0, 0, 10), -- Osoria
(183187, 0, 62, 62, 3295, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2099200, 0, 0, 7638, 1), -- Dreadsquall
(186915, 0, 62, 62, 14, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2099200, 0, 0, 0, 1), -- Qalashi Gatecrasher
(186919, 0, 62, 62, 3326, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Obsidian Soldier
(188141, 0, 72, 72, 3315, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2099200, 0, 0, 0, 9), -- Malsiran
(186892, 0, 62, 62, 3295, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2099200, 0, 0, 0, 1), -- Qalashi Necksnapper
(188158, 0, 71, 71, 3315, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2099200, 0, 0, 0, 10), -- Baskilan
(197340, 0, 62, 62, 3328, 0, 1, 1.142857193946838378, 2000, 0, 33280, 2048, 0, 0, 0, 1), -- Blacktalon Avenger
(186897, 0, 62, 62, 3328, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Blacktalon Avenger
(189768, 0, 62, 62, 3295, 17179869184, 1, 1.142857193946838378, 2000, 0, 32832, 2099200, 32, 0, 0, 1), -- Qalashi Flamelobber
(187908, 0, 70, 70, 3295, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Qalashi Scaleripper
(187366, 0, 70, 70, 14, 0, 1, 1, 2000, 0, 32832, 2099200, 0, 0, 0, 1), -- Worldcarver Wurmling
(187919, 0, 71, 71, 14, 0, 1.20000004768371582, 1.142857193946838378, 2000, 0, 32832, 2099200, 0, 0, 0, 1), -- Caldera Stomper
(189587, 0, 62, 62, 3285, 1, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Fao the Relentless
(183306, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 64, 2048, 0, 0, 0, 1), -- Scalecommander Emberthal
(186721, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 768, 67667968, 16777217, 128, 0, 1), -- Destroyed Extracts
(186681, 28039, 70, 70, 3285, 281474976710659, 1, 1.142857193946838378, 2000, 0, 32768, 2131968, 0, 0, 0, 1), -- Wrathion
(196791, 0, 72, 72, 3315, 0, 1, 1.142857193946838378, 2000, 0, 33587200, 2099200, 0, 0, 0, 9), -- Kixandria
(189604, 0, 62, 62, 3314, 128, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Provisioner Ojito
(186451, 0, 70, 70, 3314, 0, 1, 1.142857193946838378, 2000, 0, 32832, 33556480, 1048576, 0, 0, 1), -- Blacktalon Avenger
(186509, 0, 62, 62, 3295, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Modak Flamespit
(189643, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 537166656, 2049, 16785409, 0, 0, 1), -- Qalashi Crustshaper
(191525, 0, 70, 70, 16, 0, 1, 1.142857193946838378, 2000, 0, 537166656, 2049, 16785409, 0, 0, 1), -- Qalashi Wallcrasher
(186272, 0, 70, 70, 16, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 524288, 0, 0, 1), -- Risen Phoenix
(194874, 0, 70, 70, 94, 0, 1, 1.142857193946838378, 2000, 0, 33536, 67110912, 16777216, 0, 0, 1), -- Appetizing Ingot
(194915, 0, 65, 65, 35, 0, 1, 1.142857193946838378, 2000, 0, 33554432, 100665344, 0, 0, 0, 1), -- Invis Bunny
(197016, 0, 70, 70, 94, 0, 1, 1.142857193946838378, 2000, 0, 33536, 67110912, 16777217, 0, 0, 1), -- Fishing Net
(198767, 0, 70, 70, 3273, 3, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Explorative Fisher
(187860, 0, 70, 70, 3295, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2099200, 0, 0, 7765, 1), -- Qalashi Magmammoth
(187602, 0, 70, 70, 3295, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Qalashi Scaleripper
(191876, 0, 70, 70, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Goruk Steelwall
(191940, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Qalashi Necksnapper
(195127, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 256, 2099200, 16777216, 0, 0, 1), -- Invisible Bunny
(195009, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 256, 2099200, 16777216, 0, 0, 1), -- Invisible Bunny
(183186, 0, 62, 62, 3295, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Qalashi Wingrider
(187949, 0, 62, 62, 3295, 0, 1, 1.142857193946838378, 2000, 0, 32832, 4196352, 0, 0, 7638, 1), -- Ancient Dreadsquall
(196605, 0, 65, 65, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 4196352, 16777216, 0, 0, 1), -- Invis Bunny Template - Gigantic AOI
(191476, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Searing Flame Harchek
(191679, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Magmammoth Bull
(186634, 0, 62, 62, 3286, 0, 1, 1.142857193946838378, 2000, 0, 32848, 2048, 524288, 0, 0, 1), -- Blacktalon Assassin
(191704, 0, 62, 62, 16, 0, 1, 1, 2000, 0, 64, 2099200, 0, 0, 0, 1), -- Apex Proto-Dragon
(191479, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Charred Hornspike
(195001, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 256, 2099200, 16777216, 0, 0, 1), -- Invisible Bunny
(181875, 0, 62, 62, 3295, 0, 1, 1.142857193946838378, 2000, 0, 67141696, 2048, 131072, 0, 0, 1), -- Olphis the Molten
(195128, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 256, 2099200, 16777216, 0, 0, 1), -- Invisible Bunny
(186483, 0, 62, 62, 3295, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Qalashi Steelcrafter
(195160, 0, 62, 62, 14, 0, 1.20000004768371582, 1.142857193946838378, 2000, 0, 64, 2099200, 0, 0, 0, 1), -- Igneous Wanderer
(193967, 0, 71, 71, 3295, 0, 1, 1.142857193946838378, 2000, 0, 32832, 4196352, 0, 0, 0, 1), -- Dragonbane Wingshredder
(186716, 0, 62, 62, 190, 16777216, 1, 1.142857193946838378, 2000, 0, 0, 559104, 16777217, 0, 0, 1), -- Molten Extracts
(186732, 0, 62, 62, 190, 16777216, 1, 1, 2000, 0, 768, 18432, 16777216, 0, 0, 1), -- Djaradin Banner
(189557, 0, 62, 62, 3295, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Qalashi Boltthrower
(186511, 0, 62, 62, 3295, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Piercer Gigra
(186638, 0, 62, 62, 3295, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Qalashi Crustshaper
(191524, 0, 62, 62, 3295, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Qalashi Ironskin
(189610, 0, 62, 62, 3286, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Blacktalon Assassin
(189581, 0, 62, 62, 14, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Lava Fledgling
(186239, 0, 62, 62, 3295, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Qalashi Skullhauler
(189942, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 67110912, 16809984, 0, 0, 1), -- Wrathion
(186109, 0, 62, 62, 3295, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Qalashi Necksnapper
(186261, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 16779264, 0, 0, 0, 1), -- Restless Lava
(181763, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Lava Phoenix
(186336, 0, 62, 62, 3307, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Blazing Manifestation
(191835, 0, 62, 62, 3288, 0, 1, 1.142857193946838378, 2000, 0, 33554496, 2048, 0, 0, 0, 1), -- Blacktalon Scout
(191816, 0, 62, 62, 3288, 0, 1, 1.142857193946838378, 2000, 0, 64, 2048, 0, 0, 7821, 1), -- Blacktalon Shadowclaw
(198197, 0, 62, 62, 16, 0, 1, 1.571428537368774414, 2000, 0, 32832, 2099200, 0, 0, 0, 1), -- Searskin Proto-Dragon
(187538, 0, 70, 70, 3285, 2, 1, 1.385714292526245117, 2000, 0, 33600, 2048, 0, 0, 0, 1), -- Champion Ugi
(189503, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 64, 2048, 0, 0, 0, 1), -- Scalecommander Emberthal
(186326, 0, 62, 62, 3285, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Blacktalon Strategist
(188444, 0, 62, 62, 3285, 8193, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Do-Yeon Shadowrider
(186324, 0, 62, 62, 3285, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Blacktalon Schemer
(186331, 28010, 62, 62, 3285, 3, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Fao the Relentless
(192165, 0, 62, 62, 35, 82, 1, 1.142857193946838378, 2000, 0, 33536, 18432, 0, 0, 0, 1), -- Winnie Fingerspring
(192177, 0, 62, 62, 35, 128, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Filbin Gearknock
(194836, 0, 70, 70, 35, 1, 1, 1.142857193946838378, 2000, 0, 33024, 2048, 0, 0, 0, 1), -- Grekka Anvilsmash
(186317, 0, 62, 62, 3285, 69761, 1, 1.142857193946838378, 2000, 0, 768, 2048, 0, 0, 0, 1), -- Tong the Fixer
(186312, 24312, 70, 70, 3285, 3, 1, 1.142857193946838378, 2000, 0, 832, 2048, 0, 0, 0, 1), -- Left
(192795, 30029, 70, 70, 35, 3, 1, 1.142857193946838378, 2000, 0, 832, 2048, 0, 0, 0, 1), -- Scalecommander Emberthal
(186314, 0, 70, 70, 3285, 1, 1, 1.142857193946838378, 2000, 0, 832, 2048, 0, 0, 0, 1), -- Right
(186430, 0, 70, 70, 3314, 4224, 1, 1.142857193946838378, 2000, 0, 33024, 2048, 0, 0, 0, 1), -- Horace "Scalding" Stern
(198879, 0, 70, 70, 3324, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 8388608, 0, 0, 1), -- Fingerspring Security
(188445, 0, 62, 62, 3285, 4194433, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Cireni
(186447, 27744, 45, 45, 3285, 1, 1, 1.142857193946838378, 2000, 0, 33536, 34816, 0, 0, 0, 1), -- Kaplak
(186757, 0, 70, 70, 35, 1, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Hades Prescott
(186454, 27747, 70, 70, 35, 129, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Kora Fullsails
(186752, 0, 70, 70, 35, 128, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Firstmate Kaleson
(186429, 0, 70, 70, 3285, 549755813888, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Steelsage Gao
(187466, 28002, 62, 62, 3285, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Archivist Edress
(196995, 0, 62, 62, 3285, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Talonstalker Gazi
(186493, 28008, 62, 62, 3277, 3, 1, 1.142857193946838378, 2000, 0, 33600, 2048, 0, 0, 0, 1), -- Forgemaster Bazentus
(198876, 0, 70, 70, 3277, 0, 1, 1.428571462631225585, 2000, 0, 32768, 2048, 8388608, 0, 0, 1), -- Obsidian Protector
(190519, 28162, 70, 70, 35, 3, 1, 1.142857193946838378, 2000, 0, 768, 2048, 0, 0, 0, 1), -- Bronze Timekeeper
(186764, 0, 62, 62, 3285, 0, 1, 1.385714292526245117, 2000, 0, 768, 2048, 0, 0, 0, 1), -- Blacktalon Pack Beast
(189507, 28019, 62, 62, 3285, 1, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Talonstalker Kavia
(187189, 27829, 62, 62, 3314, 1, 1, 1.142857193946838378, 2000, 0, 33280, 33556480, 1048577, 0, 0, 1), -- Blacktalon Assassin
(191851, 0, 62, 62, 3285, 0, 1, 1.142857193946838378, 2000, 0, 64, 2048, 0, 0, 7868, 1), -- Blacktalon Shadowclaw
(187187, 27829, 62, 62, 3314, 1, 1, 1.142857193946838378, 2000, 0, 32832, 33556480, 1048576, 0, 0, 1), -- Blacktalon Avenger
(186452, 0, 62, 62, 3314, 0, 1, 1.142857193946838378, 2000, 0, 537166592, 2049, 8193, 0, 0, 1), -- Blacktalon Assassin
(186274, 27828, 70, 70, 3285, 3, 1, 1.142857193946838378, 2000, 0, 32768, 2099200, 0, 0, 0, 1), -- Wrathion
(191823, 0, 62, 62, 16, 0, 1, 1, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Vicious Proto-Drake
(191696, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Mature Basilisk
(191697, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Ancient Basilisk
(191014, 0, 70, 70, 3285, 1, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Becca Black
(191021, 0, 70, 70, 3285, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Shiv Fizzlescheme
(191042, 0, 70, 70, 3285, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Snitch Eagersnipe
(191694, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Young Basilisk
(191043, 0, 70, 70, 3285, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Itchy Sparkwobble
(191039, 0, 70, 70, 3285, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Snoozy Clickclock
(191044, 0, 70, 70, 3285, 1, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Whimsy Cogtattler
(191015, 0, 70, 70, 3285, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Maddoc Stitchneedle
(191038, 0, 70, 70, 3285, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Cranky Wrenchriddle
(191857, 0, 62, 62, 2136, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Crested Poolwader
(192185, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Kakapo
(186763, 0, 62, 62, 3285, 0, 1, 1.385714292526245117, 2000, 0, 768, 2048, 0, 0, 0, 1), -- Blacktalon Pack Goat
(186765, 0, 62, 62, 3285, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Blacktalon Provisioner
(189713, 0, 62, 62, 3314, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Blacktalon Avenger
(186241, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 6326272, 32768, 0, 0, 1), -- Generic - Empty Bunny
(181016, 0, 62, 62, 3314, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Blacktalon Sentry
(189461, 0, 62, 62, 3314, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Obsidian Watcher
(191395, 0, 62, 62, 16, 0, 1, 1, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Wild Proto-Drake
(191396, 0, 62, 62, 16, 0, 1, 1, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Wild Proto-Drake
(191827, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Thunder Lizard
(194709, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 73402368, 16777216, 0, 0, 1), -- Dragon Glyph
(198621, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 73402368, 16777216, 0, 0, 1), -- Tracker Dragon Glyph
(191703, 0, 62, 62, 14, 0, 1, 1, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Hungry Proto-Drake
(188724, 0, 62, 62, 35, 0, 0.400000005960464477, 0.285714298486709594, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Optimistic Guppy
(194093, 0, 62, 62, 16, 0, 1, 1, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Wild Proto-Drake
(191805, 0, 62, 62, 16, 0, 1, 1, 2000, 0, 32832, 2099200, 0, 0, 0, 1), -- Wild Proto-Drake
(191284, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Optimistic Whelp
(191687, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Riverbeast Elder
(187278, 29836, 62, 62, 3276, 3, 1, 1, 2000, 0, 33600, 2048, 0, 0, 0, 1), -- Majordomo Selistra
(191896, 0, 70, 70, 3276, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Wrathion
(187115, 0, 62, 62, 35, 2, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Alexstrasza the Life-Binder
(187419, 0, 62, 62, 3276, 2, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Firellon
(194087, 0, 62, 62, 16, 0, 1, 1, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Wild Proto-Drake
(198329, 0, 62, 62, 16, 0, 1, 1, 2000, 0, 33600, 2048, 0, 0, 0, 1), -- Wild Proto-Dragon
(191684, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Riverbeast Calf
(194444, 0, 62, 62, 16, 0, 1, 1, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Wild Proto-Drake
(194080, 0, 62, 62, 16, 0, 1, 1, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Wild Proto-Drake
(194084, 0, 62, 62, 16, 0, 1, 1, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Wild Proto-Drake
(188908, 0, 62, 62, 1727, 3, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Rimblat Earthshatter
(193623, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Tiny Salamanther
(191825, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Thunder Lizard Alpha
(194081, 0, 62, 62, 16, 0, 1, 1, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Wild Proto-Drake
(191699, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Enchanter Vevesi
(191698, 0, 62, 62, 3270, 2, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Hauler Bennet
(191702, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33536, 67110912, 16777216, 0, 0, 1), -- Expedition Supplies
(191701, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Pristy Quickcharge
(191700, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Flip Quickcharge
(196017, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Pudgy Riverbeast
(191373, 0, 62, 62, 3309, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Primal Rumbler
(198457, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 73402368, 16777216, 0, 0, 1), -- Dragon Glyph
(198632, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 73402368, 16777216, 0, 0, 1), -- Tracker Dragon Glyph
(191895, 0, 62, 62, 3276, 2, 1, 1, 2000, 0, 33600, 2048, 0, 0, 0, 1), -- Majordomo Selistra
(190204, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Tempest Veteran
(190149, 0, 62, 62, 3276, 16777216, 1, 1, 2000, 0, 768, 67110912, 16777216, 128, 0, 1), -- Azure Egg
(190130, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Winter Caller
(190129, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Winter Conqueror
(190208, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Rockslide Rider
(187174, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Galestrike Primalist
(190124, 0, 62, 62, 3276, 16777216, 1, 1, 2000, 0, 768, 67110912, 16777216, 128, 0, 1), -- Emerald Egg
(187172, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Rumbling Primalist
(188447, 0, 62, 62, 3320, 0, 1, 1.571428537368774414, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Jadzigeth
(187173, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Earthshatter Primalist
(191897, 0, 62, 62, 3276, 0, 1, 1, 2000, 0, 33600, 2048, 0, 0, 0, 1), -- Majordomo Selistra
(187088, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 0, 0, 0, 1), -- Rumbling Primalist
(190127, 0, 62, 62, 3276, 16777216, 1, 1, 2000, 0, 768, 67110912, 16777216, 128, 0, 1), -- Ruby Egg
(190066, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Water Primalist
(187209, 0, 63, 63, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 4, 0, 1), -- Klozicc the Ascended
(190065, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 64, 0, 1), -- Unruly Whelp
(187203, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32848, 2048, 0, 0, 0, 1), -- Frozen Revenant
(187085, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 0, 0, 0, 1), -- Galestrike Primalist
(187212, 0, 62, 62, 3320, 0, 1, 1.571428537368774414, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Rumbling Proto-Dragon
(187175, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Galestrike Primalist
(190131, 0, 62, 62, 3276, 16777216, 1, 1, 2000, 0, 768, 67110912, 16777216, 128, 0, 1), -- Bronze Egg
(187204, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Grounded Primalist
(190061, 0, 62, 62, 3320, 0, 1, 1.571428537368774414, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Galestrike Proto-Dragon
(194829, 0, 70, 70, 35, 1, 1, 1.142857193946838378, 2000, 0, 33024, 2048, 0, 0, 0, 1), -- Grigori Vialtry
(196376, 0, 62, 62, 35, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Thellara
(187211, 0, 62, 62, 3320, 0, 1, 1.571428537368774414, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Galestrike Proto-Dragon
(191867, 0, 62, 62, 14, 0, 1, 1.142857193946838378, 2000, 0, 0, 34816, 1, 0, 0, 1), -- Summoned Icestorm
(187078, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 524288, 4, 0, 1), -- Enraged Shards
(193218, 0, 62, 62, 14, 0, 1, 1.142857193946838378, 2000, 0, 33554432, 100665344, 0, 0, 0, 1), -- Storm Target [DNT]
(192058, 0, 1, 1, 188, 0, 1, 0.857142865657806396, 2000, 0, 33280, 2048, 0, 0, 0, 1), -- Igneoid
(187129, 0, 62, 62, 3276, 2, 1, 1, 2000, 0, 33600, 2048, 0, 0, 0, 1), -- Majordomo Selistra
(187107, 0, 62, 62, 3278, 0, 1, 1, 2000, 0, 32832, 33556480, 0, 0, 0, 1), -- Life Pools Stalwart
(187108, 0, 62, 62, 3278, 0, 1, 1.142857193946838378, 2000, 0, 32832, 33556480, 0, 0, 0, 1), -- Mature Slasher
(196811, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 100665344, 1, 0, 0, 1), -- Ruby Life Pools
(187083, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 0, 0, 0, 1), -- Primal Avalanche
(187090, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Enraged Cliff
(187119, 0, 62, 62, 3276, 2, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Commander Lethanak
(190252, 0, 62, 62, 3278, 0, 1, 1.142857193946838378, 2000, 0, 32832, 33556480, 0, 0, 0, 10), -- Xitostrasz
(187079, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 0, 0, 0, 1), -- Convoked Tremor
(187082, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32832, 33556480, 0, 0, 0, 1), -- Primal Avalanche
(187101, 0, 62, 62, 3277, 0, 1, 1.142857193946838378, 2000, 0, 32832, 33556480, 0, 0, 0, 1), -- Ruby Lifeguardian
(187105, 0, 62, 62, 3278, 0, 0.699999988079071044, 0.699999988079071044, 2000, 0, 32768, 33556480, 0, 0, 0, 1), -- Life Pools Crasher
(192050, 0, 1, 1, 188, 0, 1, 0.857142865657806396, 2000, 0, 33280, 2048, 0, 0, 0, 1), -- Snowlemental
(187097, 0, 62, 62, 3278, 0, 1, 1.142857193946838378, 2000, 0, 32832, 33556480, 0, 0, 0, 1), -- Ruby Watcher
(187096, 0, 62, 62, 3278, 0, 1, 1.142857193946838378, 2000, 0, 32832, 33556480, 0, 0, 0, 1), -- Ruby Searer
(187117, 0, 62, 62, 3278, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 0, 0, 0, 1), -- Ruby Culler
(187145, 0, 62, 62, 3276, 2, 1, 1.142857193946838378, 2000, 0, 33600, 2048, 0, 0, 0, 1), -- Kildrumeh
(187075, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 0, 0, 0, 1), -- Enraged Shards
(187106, 0, 62, 62, 3278, 0, 1, 1, 2000, 0, 32832, 33556480, 0, 0, 0, 1), -- Life Pools Screecher
(187102, 0, 62, 62, 1665, 0, 1, 1.142857193946838378, 2000, 0, 32832, 33556480, 0, 0, 0, 1); -- Ruby Commander


UPDATE `creature_template` SET `minlevel`=64, `maxlevel`=64, `BaseAttackTime`=1874 WHERE `entry`=180016; -- Spectral Feline
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70 WHERE `entry`=156558; -- Generic - Empty Bunny
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=16779264 WHERE `entry`=192134; -- Lava Snail
UPDATE `creature_template` SET `minlevel`=63, `maxlevel`=63, `speed_run`=1.32571423053741455, `BaseAttackTime`=1790 WHERE `entry`=165189; -- Generic Hunter Pet
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `faction`=14, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags3`=524289 WHERE `entry`=186965; -- Smoldering Feather
UPDATE `creature_template` SET `minlevel`=63, `maxlevel`=63, `BaseAttackTime`=1669, `unit_flags2`=2048 WHERE `entry`=103822; -- Treant
UPDATE `creature_template` SET `minlevel`=63, `maxlevel`=63, `faction`=35, `speed_run`=0.857142865657806396, `BaseAttackTime`=1669, `unit_flags`=16, `unit_flags2`=2048, `unit_flags3`=1048576 WHERE `entry`=198489; -- Denizen of the Dream
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=34816 WHERE `entry`=186687; -- Arbalest
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=191678; -- Magmammoth Crusher
UPDATE `creature_template` SET `faction`=188, `npcflag`=1073741824, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=193024; -- Emberling
UPDATE `creature_template` SET `faction`=188, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=193026; -- Emberling
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `faction`=35, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048 WHERE `entry`=198191; -- Bronze Timekeeper Assistant
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=191647; -- Young Wind Serpent
UPDATE `creature_template` SET `minlevel`=64, `maxlevel`=64, `BaseAttackTime`=1750 WHERE `entry`=78116; -- Water Elemental
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3277, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=187073; -- Ruby Sitter
UPDATE `creature_template` SET `faction`=188, `speed_walk`=0.400000005960464477, `speed_run`=0.285714298486709594, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=192049; -- Swoglet
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=192186; -- Territorial Axebeak
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70 WHERE `entry`=6491; -- Spirit Healer
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=100665344 WHERE `entry`=190064; -- Primalist Target [DNT]
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3320, `speed_run`=1.571428537368774414, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=190069; -- Rumbling Proto-Dragon
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=16, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2099200 WHERE `entry`=196109; -- Elder Proto-Dragon
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2099200 WHERE `entry`=195125; -- Ruby Skyguard
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3320, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=187089; -- Flashfrost Tarasek
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3320, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=187084; -- Galestrike Primalist
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3320, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=191315; -- Herald of Frost
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=100665344 WHERE `entry`=189881; -- Elemental Target [DNT]
UPDATE `creature_template` SET `faction`=188, `speed_walk`=0.400000005960464477, `speed_run`=0.285714298486709594, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=16777216 WHERE `entry`=194479; -- Sprightly Butterfly
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `faction`=3277, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048, `unit_flags3`=8388608 WHERE `entry`=192625; -- Ruby Groundskeeper
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=197166; -- Dragonspawn Apprentice
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `npcflag`=83, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=191894; -- Krillonn
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=194478; -- Clokkistrasz
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `faction`=3277, `speed_run`=1.428571462631225585, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=8388608 WHERE `entry`=187058; -- Ruby Scaleguard
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=198605; -- Tirastrasza
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `faction`=3277, `speed_run`=1.428571462631225585, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048, `unit_flags3`=8388608 WHERE `entry`=187060; -- Ruby Keeper
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=193983; -- Boisterous Instigator
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=192168; -- Docile Slyvern
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=192512; -- Boisterous Child
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=198595; -- Estarastrasz
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33600, `unit_flags2`=2048, `dynamicflags`=128 WHERE `entry`=189262; -- Akxall
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=193995; -- Rathestrasz
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=73402368, `unit_flags3`=16777216 WHERE `entry` IN (194818, 198456); -- Dragon Glyph
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `npcflag`=4225, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=187955; -- Krendisc
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=193987; -- Valdestrasz
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `npcflag`=128, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=191954; -- Kskeiton
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=193991; -- Lyrastrasz
UPDATE `creature_template` SET `gossip_menu_id`=28453, `minlevel`=62, `maxlevel`=62, `faction`=2028, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=192574; -- Thomas Bright
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=186692; -- Ruby Swarmer
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=195050; -- Bronze Tender
UPDATE `creature_template` SET `minlevel`=65, `maxlevel`=65, `faction`=2028, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=192305; -- Boots
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `faction`=3276, `npcflag`=129, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=34816 WHERE `entry`=189448; -- Trellain
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=193988; -- Andustrasza
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3277, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=193737; -- Ruby Tender
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `BaseAttackTime`=1813 WHERE `entry`=1860; -- Voidwalker
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=35, `speed_walk`=1.60000002384185791, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `VehicleId`=7745 WHERE `entry`=186771; -- Ruby Whelpling
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `npcflag`=2, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=33600, `unit_flags2`=2048 WHERE `entry`=190293; -- Majordomo Selistra
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=73402368, `unit_flags3`=16777216 WHERE `entry` IN (198631, 198628); -- Tracker Dragon Glyph
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `faction`=3277, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048, `unit_flags3`=8388608 WHERE `entry`=187071; -- Nurse Sentry
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=195052; -- Sapphire Tender
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `npcflag`=83, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=191893; -- Zherrak
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=192096; -- Ruby Dozer
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33600, `unit_flags2`=2048, `dynamicflags`=128 WHERE `entry`=189261; -- Xius
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `npcflag`=1, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=33600, `unit_flags2`=2048, `VehicleId`=7779 WHERE `entry`=194099; -- Urlostrasz
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `faction`=3277, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=187072; -- Ruby Shrineguard
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=35, `speed_walk`=1.60000002384185791, `BaseAttackTime`=2000, `unit_flags2`=2048, `VehicleId`=7745 WHERE `entry`=193979; -- Ruby Whelpling
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=4196352 WHERE `entry`=195120; -- Ruby Skyguard
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=2028, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags2`=2048 WHERE `entry`=192539; -- Miguel Bright
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3277, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=193920; -- Kahtzar


DELETE FROM `vehicle_template_accessory` WHERE (`seat_id`=0 AND `entry` IN (183187,187860,187949,191816));
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(183187, 183186, 0, 0, 'Dreadsquall - Qalashi Wingrider', 5, 0), -- Dreadsquall - Qalashi Wingrider
(187860, 187602, 0, 0, 'Qalashi Magmammoth - Qalashi Scaleripper', 5, 0), -- Qalashi Magmammoth - Qalashi Scaleripper
(187949, 183186, 0, 0, 'Ancient Dreadsquall - Qalashi Wingrider', 5, 0), -- Ancient Dreadsquall - Qalashi Wingrider
(191816, 191835, 0, 0, 'Blacktalon Shadowclaw - Blacktalon Scout', 5, 0); -- Blacktalon Shadowclaw - Blacktalon Scout



DELETE FROM `quest_template` WHERE `ID` IN (65939 /*-Unknown-*/, 65957 /*-Unknown-*/, 65956 /*-Unknown-*/, 66078 /*-Unknown-*/, 66048 /*-Unknown-*/, 72241 /*-Unknown-*/, 71027 /*-Unknown-*/, 70196 /*-Unknown-*/, 66079 /*-Unknown-*/, 66963 /*-Unknown-*/, 66124 /*-Unknown-*/, 66123 /*-Unknown-*/, 70839 /*-Unknown-*/, 66960 /*-Unknown-*/, 66119 /*-Unknown-*/, 66121 /*-Unknown-*/, 66122 /*-Unknown-*/, 66459 /*-Unknown-*/, 66118 /*-Unknown-*/, 66117 /*-Unknown-*/, 67100 /*-Unknown-*/, 66116 /*-Unknown-*/);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestPackageID`, `ContentTuningID`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitGiverModelSceneID`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `QuestSessionBonus`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(65939, 2, 0, 2289, 13644, 0, 0, 0, 6, 1, 6, 1, 9100, 378834, 0, 0, 0, 0, 1, 0, 7340040, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 15000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'The Courage of One\'s Convictions', 'Gain control of the Obsidian Citadel.', 'The next battle will no doubt be fierce, but our courage and determination will overcome their greater numbers.\n\nI am counting on your exceptional skills to help lead the troops to victory.\n\nWe shall begin the assault when you are ready.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(65957, 2, 0, 2270, 13644, 0, 0, 0, 6, 1, 6, 1, 9100, 0, 0, 0, 0, 0, 1, 0, 5242880, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 15000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 2083, 9, 0, 0, 'No Time for Heroes', 'Slay Modak the Flamespit, Piercer Gigra, and Olphis the Molten.', 'From what we have observed, djaradin society is built on strength. The strongest serve as examples for others to fight all the harder. \n\nAmong the forces below are three examples of the mightiest djaradin... and your targets.\n\nYou, $n, will personally eliminate them. This should deal a devastating blow to their morale.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(65956, 2, 0, 2270, 13644, 0, 0, 0, 5, 1, 5, 1, 7300, 0, 0, 0, 0, 0, 1, 0, 5242880, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 10000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'Talon Strike', 'Djaradin defenses disrupted.', 'With your help, my Blacktalon assassins will cut down the djaradin defending the outer perimeter. Mark any targets with a small stun bomb, and they will come to your aid.\n\nProceed quickly and eliminate anything that may hinder our advance.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66078, 2, 0, 2286, 13644, 0, 0, 0, 5, 1, 5, 1, 7300, 373076, 0, 0, 0, 0, 1, 0, 6291464, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 10000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'Sharp Practice', 'Test the skills of $1oa Blacktalon Assassins and Avengers.', 'For years I have fostered the Blacktalon, teaching and encouraging them to pursue the same heights you have reached.\n\nThey may not have achieved the same lofty goals as yourself, but they are accomplished in their own right. They\'ve made me proud.\n\nEach would be honored if you test their skills. I think you will see some of yourself in them.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66048, 2, 0, 2286, 13644, 0, 0, 0, 5, 1, 5, 1, 7300, 373076, 0, 0, 0, 0, 1, 0, 6291464, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 10000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'Best Plans and Intentions', 'Review the plans with the various members of Wrathion\'s forces.', 'Attacking the djaradin controlling the Obsidian Citadel will be no easy task. Even with Wrathion and his Blacktalon forces, this will be a fierce battle. Wrathion may be confident, but... I am not so certain.\n\nPerhaps we can speak to those helping to plan the strategy, and see if we can find any room for improvement.', '', 'Report your findings to Wrathion at the Obsidian Bulwark.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(72241, 2, 0, 2151, 13642, 0, 0, 0, 1, 1, 1, 1, 900, 0, 0, 0, 0, 0, 1, 0, 536870920, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'Lessons From Our Past', 'Speak with Scalecommander Emberthal.', 'I am Emberthal, a scalecommander of the dracthyr. Wrathion aided us after we awakened from our long stasis, and now it is my turn to help him.\n\nNo doubt you have questions about my people and our history. Until recently, I did as well. \n\nBut Nozdormu, the Timeless One, has revealed lost truths about the dracthyr. He granted me a vision of our origins... and why we were locked away. \n\nLet me tell you of the things I have seen.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(71027, 2, 0, 2263, 13645, 1, 3, 0, 7, 2, 7, 1, 21900, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 109372, 0, 604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 30000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'WANTED: Mara\'nar the Thunderous', 'Slay Mara\'nar the Thunderous in Primordial Vale and retrieve one of his plates.', 'Looking for a mighty hunter to take down a rampaging beast!\n\nA thunder lizard named Mara\'nar the Thunderous worked his way from Thunderspine Thicket to Primordial Vale, disrupting local wildlife. It has electrified water, knocked down trees, and broken duck nests.\n\nThis menace must be stopped. Slay him and bring one of his plates to Khansguard Jebotai as proof.\n\nMay Ohn\'ahra guide you.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 'Disrupting the local wildlife of Primordial Vale, this beast has smashed one too many duck nests.', 'Mara\'nar the Thunderous', '', '', 890, 878, 46879), -- -Unknown-
(70196, 3, 0, 2151, 13644, 0, 0, 0, 7, 1, 7, 1, 10950, 0, 0, 0, 0, 0, 1, 0, 34144256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 20000, 0, 0, 0, 0, 0, 7686, 0, 18446744073709551615, 0, 9, 0, 0, 'Pruning the Preserve', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66079, 2, 0, 2151, 13644, 0, 0, 0, 1, 1, 1, 1, 900, 0, 0, 0, 0, 0, 1, 0, 4194312, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'Wrathion Awaits', 'Meet with Wrathion at the Obsidian Bulwark.', 'These eggs represent a new generation of dragonkind. They must be protected and fostered. Yet... my heart aches, and I worry for Wrathion. I fear his stubborn determination will lead to folly. \n\nYou have been a trusted friend over the years, $n. Perhaps you can go in my place, and help him. \n\nSeek him out at the Obsidian Bulwark. And please, watch over him. There are so few of his flight left.', '', 'Meet with Wrathion at the Obsidian Bulwark.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66963, 2, 0, 2277, 13642, 0, 0, 0, 1, 1, 1, 1, 900, 0, 0, 0, 0, 0, 1, 0, 37748736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'Out For Delivery', 'Tell Cataloger Wulferd in the nearby basecamp that his supplies won\'t be arriving anytime soon.', 'I tried to tell Vevesi that I could pull the wagon out of the mud.\n\nBut, no, he insisted on using magic to get it out... And now look what\'s he done.\n\n<Hauler Bennet sighs.>\n\nWhile I try to talk sense into Vevesi, can you run up the hill to the Basecamp and let Cataloger Wulferd know that he might need to ship another crate of camera supplies over from Boralus?', '', 'Give Cataloger Wulferd in Dragonscale Basecamp the bad news.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66124, 2, 0, 2280, 13644, 0, 0, 0, 5, 1, 5, 1, 7300, 0, 0, 0, 0, 0, 1, 0, 37748744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 15000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 2175, 9, 0, 0, 'Exeunt, Triumphant', 'Escape the Frostflash Enclave with Majordomo Selistra.', 'From what I saw, the queen fell back to the Wild Hatchery. It is an outpost to keep watch over the proto-drakes in the area... I only hope that its defenses are enough.\n\nWe must head there at once!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66123, 2, 0, 2280, 13644, 0, 0, 0, 5, 1, 5, 1, 7300, 0, 0, 0, 192436, 0, 1, 0, 37748744, 8192, 0, 0, 0, 107575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 192436, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 10000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 2082, 9, 0, 0, 'Cut Off the Head', 'Defeat Jadzigeth in the Frostflash Enclave.', 'Jadzigeth, one of Raszageth\'s foul lieutenants, proudly leads the Primalists here.\n\nLet us show them all what happens to those who stand against us.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 'Raszageth\'s lieutenant will be a torrent of trouble until she is stopped.', 'Jadzigeth', '', '', 890, 878, 46879), -- -Unknown-
(70839, 0, 0, 2424, -609, 0, 0, 0, 0, 1, 0, 1, 0, 394071, 0, 0, 0, 0, 1, 0, 35651584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'The Search for Titan Relics', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66960, 3, 0, 2280, 13644, 0, 0, 0, 5, 1, 5, 1, 7150, 0, 0, 0, 0, 0, 1, 0, 34144256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'Klozicc the Ascended', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66119, 2, 0, 2155, 13644, 81, 0, 0, 8, 1, 8, 1, 14350, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 10000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 2334, 9, 0, 0, 'Ruby Life Pools: Primalist Invasion', 'Enter the Ruby Life Pools and stop the Primalist attack.', 'The Primalists have torn their way into our home. We were not prepared for such an intense attack... several got through.\n\nOne of our drakonid ventured in to follow them, but he has not reported his findings. I fear the worst.\n\nI will stand guard. No more shall breach our walls while we draw breath, but you must stop those who made it inside.\n\nGo!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66121, 2, 0, 2280, 13644, 0, 0, 0, 5, 1, 5, 1, 7150, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 10000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'Egg Evac', 'Rescue 4 eggs from the Flashfrost Enclave.', 'The Primalists have stolen our eggs for their perverse rituals! They must be stopped.\n\nHelp us recover our eggs before it is too late. Mark each egg as you find them, $p. I will ensure they are safely extracted from the area.', '', 'Meet Majordomo Selistra at Flashfrost Enclave.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66122, 2, 0, 2280, 13644, 0, 0, 0, 5, 1, 5, 1, 7150, 0, 0, 0, 192436, 0, 1, 0, 37879816, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 192436, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 10000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'Proto-Fight', 'Defeat $2oa proto-dragons in the Flashfrost Enclave.', 'These proto-dragons detest us. They believe we are a twisted version of dragonkind that is manipulated and chained by the Titans. They do not understand.\n\nWhich is why they feel safe even as they throw their forces at our walls. \n\nThey are mistaken.\n\nTake this spear, $p. Kill our enemies.', '', 'Meet Majordomo Selistra at Flashfrost Enclave.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66459, 2, 0, 2249, 13645, 1, 5, 0, 6, 1, 6, 1, 9100, 0, 0, 0, 0, 0, 1, 0, 33554432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 30000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'The Field of Ferocity: Terror of the Swamp!', 'Defeat Maneet.', 'Welcome one and all to the Fields of Ferocity!\n \nWhile this sparring field is used for traditional events, the centaurs have graciously allowed me to set up shop off-season. They say it tests their strength and brings them honor.\n \nYou want to take home the title of champion? Well then, let me know when you\'re ready and you can take on the introductory competition.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66118, 2, 0, 2279, 13644, 0, 0, 0, 5, 1, 5, 1, 7150, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 10000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 2081, 9, 0, 0, 'Basalt Assault', 'Destroy $1oa Enraged Cliffs in the Flashfrost Assault.', 'Raszageth and her Primalists have summoned towering earth elementals to break our walls. They must be stopped!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66117, 3, 0, 2279, 13644, 0, 0, 0, 7, 1, 7, 1, 10750, 0, 0, 0, 0, 0, 1, 0, 34144256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 20000, 0, 0, 0, 0, 0, 7550, 0, 18446744073709551615, 0, 9, 0, 0, 'Clear the Battlefield', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(67100, 2, 0, 2296, -571, 267, 0, 0, 5, 1, 5, 1, 7150, 385623, 0, 0, 0, 0, 1, 0, 572522504, 0, 0, 0, 0, 0, 0, 0, 0, 194715, 0, 0, 0, 1, 0, 0, 0, 194727, 194728, 194729, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2544, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 7, 7, 7, 7, 5000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'A Gift for Miguel', 'Talk to Thomas about quality, then gather $2oa Fiery Spirits near Hornswog Hollow for Miguel\'s gift.', '$p, could you do me a favor?\n\nI want to get a gift for my husband, Miguel.\n\nHe means so much to me, but I\'ve been so busy lately that I haven\'t had time to make him anything. \n\nCould you help me make him something high quality?', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66116, 2, 0, 2279, 13644, 0, 0, 0, 5, 1, 5, 1, 7150, 0, 0, 0, 0, 0, 1, 0, 37748744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 10000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'The Primary Threat', 'Find Commander Lethanak at the Flashfrost Assault.', 'There are far too many vulnerable eggs to secure. If the enemy breaks through, all is lost!\n\nI am sure our guards are mustering on the field to push them back. Speak to Commmander Lethanak, and he will use your strength where it will be most helpful.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879); -- -Unknown-

UPDATE `quest_template` SET `RewardBonusMoney`=100, `VerifiedBuild`=46879 WHERE `ID`=62704; -- The Threads of Fate
UPDATE `quest_template` SET `RewardBonusMoney`=75, `VerifiedBuild`=46879 WHERE `ID`=55851; -- Essential Empowerment
UPDATE `quest_template` SET `RewardBonusMoney`=100, `VerifiedBuild`=46879 WHERE `ID`=54164; -- The King's Death
UPDATE `quest_template` SET `VerifiedBuild`=46879 WHERE `ID` IN (70822, 50602);
UPDATE `quest_template` SET `RewardBonusMoney`=900, `VerifiedBuild`=46879 WHERE `ID`=66595; -- Dormant Discovery

DELETE FROM `quest_objectives` WHERE `ID` IN (423988 /*423988*/, 423791 /*423791*/, 427263 /*427263*/, 423594 /*423594*/, 423629 /*423629*/, 423627 /*423627*/, 423628 /*423628*/, 432127 /*432127*/, 427470 /*427470*/, 427257 /*427257*/, 423654 /*423654*/, 423649 /*423649*/, 423631 /*423631*/, 423625 /*423625*/, 423624 /*423624*/, 423893 /*423893*/, 427865 /*427865*/, 427167 /*427167*/, 427170 /*427170*/, 427191 /*427191*/, 427168 /*427168*/, 427169 /*427169*/, 427847 /*427847*/, 431793 /*431793*/, 431358 /*431358*/, 430138 /*430138*/, 430137 /*430137*/, 430136 /*430136*/, 430135 /*430135*/, 430134 /*430134*/, 427395 /*427395*/, 427218 /*427218*/, 427121 /*427121*/, 428602 /*428602*/, 429994 /*429994*/, 429993 /*429993*/, 427548 /*427548*/, 427243 /*427243*/, 427242 /*427242*/, 427241 /*427241*/, 423938 /*423938*/, 430328 /*430328*/, 427008 /*427008*/, 427633 /*427633*/, 430772 /*430772*/, 428680 /*428680*/, 427344 /*427344*/, 427343 /*427343*/, 427342 /*427342*/, 427341 /*427341*/, 429088 /*429088*/, 429053 /*429053*/, 427111 /*427111*/, 427693 /*427693*/);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
(423988, 65939, 0, 3, 2, 191596, 12, 2, 0, 0, '', 46879), -- 423988
(423791, 65939, 0, 2, 5, 193788, 1, 2, 0, 0, 'Obsidian Citadel entered', 46879), -- 423791
(427263, 65939, 0, 1, 1, 189692, 1, 28, 0, 0, 'RTC', 46879), -- 427263
(423594, 65939, 0, 0, 0, 189679, 1, 0, 0, 0, 'Speak with Wrathion to begin the assault', 46879), -- 423594
(423629, 65957, 0, 2, 4, 181875, 1, 1, 0, 0, '', 46879), -- 423629
(423627, 65957, 0, 1, 1, 186509, 1, 1, 0, 0, '', 46879), -- 423627
(423628, 65957, 0, 0, 3, 186511, 1, 1, 0, 0, '', 46879), -- 423628
(432127, 65956, 0, 7, 6, 199166, 1, 4, 0, 0, 'Blacktalon Marker used on Djaradin', 46879), -- 432127
(427470, 65956, 0, 6, 5, 181747, 12, 92, 0, 9, '', 46879), -- 427470
(427257, 65956, 0, 5, 0, 186239, 34, 92, 0, 3, '', 46879), -- 427257
(423654, 65956, 0, 4, 4, 186732, 25, 92, 0, 4, '', 46879), -- 423654
(423649, 65956, 0, 3, 3, 186716, 50, 92, 0, 2, '', 46879), -- 423649
(423631, 65956, 2, 2, 1, 376104, 20, 92, 0, 5, '', 46879), -- 423631
(423625, 65956, 0, 1, 2, 186614, 20, 92, 0, 5, '', 46879), -- 423625
(423624, 65956, 15, 0, -1, 0, 1, 0, 0, 0, 'Djaradin defenses disrupted', 46879), -- 423624
(423893, 66078, 0, 0, 0, 187158, 8, 0, 0, 0, 'Blacktalon tested', 46879), -- 423893
(427865, 66048, 0, 6, 6, 189503, 1, 28, 0, 0, 'Emberthal Back', 46879), -- 427865
(427167, 66048, 0, 5, 0, 186493, 1, 0, 0, 0, 'Forgemaster Bazentus consulted', 46879), -- 427167
(427170, 66048, 0, 4, 3, 189507, 1, 0, 0, 0, 'Talonstalker Kavia consulted', 46879), -- 427170
(427191, 66048, 0, 3, 4, 189532, 1, 28, 0, 0, '', 46879), -- 427191
(427168, 66048, 0, 2, 1, 187466, 1, 0, 0, 0, 'Archivist Edress consulted', 46879), -- 427168
(427169, 66048, 0, 1, 2, 186331, 1, 0, 0, 0, 'Fao the Relentless consulted', 46879), -- 427169
(427847, 66048, 0, 0, 5, 190557, 1, 24, 0, 0, 'Fao', 46879), -- 427847
(431793, 72241, 0, 0, 0, 193938, 1, 0, 0, 0, 'Speak with Scalecommander Emberthal to learn of past events', 46879), -- 431793
(431358, 71027, 1, 0, 0, 200270, 1, 1, 1, 0, '', 46879), -- 431358
(430138, 70196, 0, 4, 7, 194567, 7, 92, 0, 15, '', 46879), -- 430138
(430137, 70196, 0, 3, 6, 194566, 13, 92, 0, 8, '', 46879), -- 430137
(430136, 70196, 0, 2, 5, 194565, 20, 92, 0, 5, '', 46879), -- 430136
(430135, 70196, 0, 1, 4, 194564, 34, 92, 0, 3, '', 46879), -- 430135
(430134, 70196, 15, 0, -1, 0, 1, 0, 0, 0, 'Kill Proto-dragons', 46879), -- 430134
(427395, 66124, 0, 1, 1, 187278, 1, 0, 0, 0, 'Speak to Majordomo Selistra at the Wild Hatchery', 46879), -- 427395
(427218, 66124, 0, 0, 0, 189575, 1, 28, 0, 0, 'Flashfrost Enclave escaped', 46879), -- 427218
(427121, 66123, 0, 0, 0, 188447, 1, 0, 0, 0, '', 46879), -- 427121
(428602, 66960, 0, 0, 1, 187209, 1, 1, 0, 0, '', 46879), -- 428602
(429994, 66119, 0, 1, 1, 190485, 1, 0, 0, 0, '', 46879), -- 429994
(429993, 66119, 0, 0, 0, 190484, 1, 0, 0, 0, '', 46879), -- 429993
(427548, 66121, 0, 3, 3, 190127, 1, 0, 0, 0, 'Ruby Egg rescued', 46879), -- 427548
(427243, 66121, 0, 2, 2, 190124, 1, 0, 0, 0, 'Emerald Egg rescued', 46879), -- 427243
(427242, 66121, 0, 1, 1, 190149, 1, 0, 0, 0, 'Azure Egg rescued', 46879), -- 427242
(427241, 66121, 0, 0, 0, 190131, 1, 0, 0, 0, 'Bronze Egg rescued', 46879), -- 427241
(423938, 66122, 0, 1, 0, 189618, 3, 0, 0, 0, 'Proto-dragons slain', 46879), -- 423938
(430328, 66122, 0, 0, 1, 195126, 1, 4, 0, 0, 'Use the Ruby Harpoon on a proto-dragon', 46879), -- 430328
(427008, 66459, 0, 0, 2, 188704, 1, 0, 0, 0, '', 46879), -- 427008
(427633, 66118, 0, 0, 0, 187090, 4, 0, 0, 0, '', 46879), -- 427633
(430772, 66117, 0, 5, 4, 188447, 10, 92, 0, 10, '', 46879), -- 430772
(428680, 66117, 0, 4, 3, 187209, 10, 92, 0, 10, '', 46879), -- 428680
(427344, 66117, 0, 3, 2, 189865, 20, 92, 0, 5, '', 46879), -- 427344
(427343, 66117, 0, 2, 1, 189864, 34, 92, 0, 3, '', 46879), -- 427343
(427342, 66117, 0, 1, 0, 189863, 100, 92, 0, 1, '', 46879), -- 427342
(427341, 66117, 15, 0, -1, 0, 1, 0, 0, 0, 'Stop the primalist assault', 46879), -- 427341
(429088, 67100, 1, 1, 2, 194729, 3, 34, 0, 0, 'Fiery Spirits |A:Professions-Icon-Quality-Tier3-Small:14:14|a', 46879), -- 429088
(429053, 67100, 0, 0, 0, 192586, 1, 0, 0, 0, 'Speak to Thomas About Quality', 46879), -- 429053
(427111, 66116, 0, 1, 0, 187119, 1, 0, 0, 0, 'Report to Commander Lethanak', 46879), -- 427111
(427693, 66116, 0, 0, 1, 191503, 1, 4, 0, 0, 'Hop on a dragonriding mount', 46879); -- 427693

UPDATE `quest_objectives` SET `VerifiedBuild`=46879 WHERE `ID` IN (408196, 391637, 386353, 430170, 337022);

DELETE FROM `quest_visual_effect` WHERE (`Index`=0 AND `ID` IN (423594,423893,427167,427170,427168,427169,431793,431358,430134,427548,427243,427242,427241,427008,427341,429088,429053)) OR (`Index`=1 AND `ID` IN (423893,427170,427169,430134,427008,427341,429088)) OR (`Index`=8 AND `ID`=430134) OR (`Index`=7 AND `ID`=430134) OR (`Index`=6 AND `ID`=430134) OR (`Index`=5 AND `ID`=430134) OR (`Index`=4 AND `ID`=430134) OR (`Index`=3 AND `ID`=430134) OR (`Index`=2 AND `ID` IN (430134,427341));
INSERT INTO `quest_visual_effect` (`ID`, `Index`, `VisualEffect`, `VerifiedBuild`) VALUES
(423594, 0, 18405, 46879),
(423893, 1, 18428, 46879),
(423893, 0, 18427, 46879),
(427167, 0, 18540, 46879),
(427170, 1, 18546, 46879),
(427170, 0, 18543, 46879),
(427168, 0, 18541, 46879),
(427169, 1, 18679, 46879),
(427169, 0, 18677, 46879),
(431793, 0, 21330, 46879),
(431358, 0, 20466, 46879),
(430134, 8, 19956, 46879),
(430134, 7, 19955, 46879),
(430134, 6, 19954, 46879),
(430134, 5, 19953, 46879),
(430134, 4, 19952, 46879),
(430134, 3, 19951, 46879),
(430134, 2, 19950, 46879),
(430134, 1, 19949, 46879),
(430134, 0, 19948, 46879),
(427548, 0, 18640, 46879),
(427243, 0, 18639, 46879),
(427242, 0, 18638, 46879),
(427241, 0, 18637, 46879),
(427008, 1, 20123, 46879),
(427008, 0, 2101, 46879),
(427341, 2, 18601, 46879),
(427341, 1, 18600, 46879),
(427341, 0, 18586, 46879),
(429088, 1, 19796, 46879),
(429088, 0, 19795, 46879),
(429053, 0, 19769, 46879);

UPDATE `quest_visual_effect` SET `VerifiedBuild`=46879 WHERE (`Index`=0 AND `ID` IN (408196,391637,386353));

DELETE FROM `quest_reward_display_spell` WHERE (`QuestID`=70839 AND `Idx`=0);
INSERT INTO `quest_reward_display_spell` (`QuestID`, `Idx`, `SpellID`, `PlayerConditionID`, `VerifiedBuild`) VALUES
(70839, 0, 388303, 0, 46879);

UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=46879 WHERE (`QuestID`=70822 AND `Idx`=0);

DELETE FROM `creature_template` WHERE `entry` IN (191014 /*Becca Black*/, 191015 /*Maddoc Stitchneedle*/, 196605 /*Invis Bunny Template - Gigantic AOI*/, 191021 /*Shiv Fizzlescheme*/, 191038 /*Cranky Wrenchriddle*/, 191039 /*Snoozy Clickclock*/, 191042 /*Snitch Eagersnipe*/, 191043 /*Itchy Sparkwobble*/, 191044 /*Whimsy Cogtattler*/, 192165 /*Winnie Fingerspring*/, 198876 /*Obsidian Protector*/, 189942 /*Wrathion*/, 192177 /*Filbin Gearknock*/, 198879 /*Fingerspring Security*/, 192185 /*Kakapo*/, 181016 /*Blacktalon Sentry*/, 194444 /*Wild Proto-Drake*/, 201154 /*Surging Magma*/, 186634 /*Blacktalon Assassin*/, 186638 /*Qalashi Crustshaper*/, 183306 /*Scalecommander Emberthal*/, 188908 /*Rimblat Earthshatter*/, 186681 /*Wrathion*/, 190061 /*Galestrike Proto-Dragon*/, 190065 /*Unruly Whelp*/, 190066 /*Water Primalist*/, 186716 /*Molten Extracts*/, 186721 /*Destroyed Extracts*/, 186732 /*Djaradin Banner*/, 196791 /*Kixandria*/, 187860 /*Qalashi Magmammoth*/, 186752 /*Firstmate Kaleson*/, 186757 /*Hades Prescott*/, 196811 /*Ruby Life Pools*/, 186763 /*Blacktalon Pack Goat*/, 186764 /*Blacktalon Pack Beast*/, 190116 /*Qalashi Skullhauler*/, 186765 /*Blacktalon Provisioner*/, 190124 /*Emerald Egg*/, 190127 /*Ruby Egg*/, 190129 /*Winter Conqueror*/, 190130 /*Winter Caller*/, 190131 /*Bronze Egg*/, 187908 /*Qalashi Scaleripper*/, 190149 /*Azure Egg*/, 187919 /*Caldera Stomper*/, 190163 /*Animated Vault Protector*/, 191284 /*Optimistic Whelp*/, 187949 /*Ancient Dreadsquall*/, 190204 /*Tempest Veteran*/, 190208 /*Rockslide Rider*/, 194709 /*Dragon Glyph*/, 186892 /*Qalashi Necksnapper*/, 186897 /*Blacktalon Avenger*/, 190252 /*Xitostrasz*/, 186904 /*Sabellian*/, 191373 /*Primal Rumbler*/, 186915 /*Qalashi Gatecrasher*/, 186919 /*Obsidian Soldier*/, 193623 /*Tiny Salamanther*/, 191395 /*Wild Proto-Drake*/, 191396 /*Wild Proto-Drake*/, 186933 /*Wrathion*/, 196995 /*Talonstalker Gazi*/, 186950 /*Arbalest*/, 197016 /*Fishing Net*/, 191476 /*Searing Flame Harchek*/, 194829 /*Grigori Vialtry*/, 191479 /*Charred Hornspike*/, 188133 /*Narsysix*/, 194836 /*Grekka Anvilsmash*/, 188136 /*Exadria*/, 188141 /*Malsiran*/, 188143 /*Myridian*/, 198197 /*Searskin Proto-Dragon*/, 188155 /*Osoria*/, 188158 /*Baskilan*/, 194874 /*Appetizing Ingot*/, 191524 /*Qalashi Ironskin*/, 191525 /*Qalashi Wallcrasher*/, 187075 /*Enraged Shards*/, 187078 /*Enraged Shards*/, 187079 /*Convoked Tremor*/, 196017 /*Pudgy Riverbeast*/, 187082 /*Primal Avalanche*/, 187083 /*Primal Avalanche*/, 187085 /*Galestrike Primalist*/, 187088 /*Rumbling Primalist*/, 187090 /*Enraged Cliff*/, 194915 /*Invis Bunny*/, 187096 /*Ruby Searer*/, 187097 /*Ruby Watcher*/, 187101 /*Ruby Lifeguardian*/, 187102 /*Ruby Commander*/, 187105 /*Life Pools Crasher*/, 187106 /*Life Pools Screecher*/, 187107 /*Life Pools Stalwart*/, 187108 /*Mature Slasher*/, 187115 /*Alexstrasza the Life-Binder*/, 187117 /*Ruby Culler*/, 187119 /*Commander Lethanak*/, 191596 /*Qalashi Forces*/, 191597 /*Qalashi Crustshaper*/, 187129 /*Majordomo Selistra*/, 190484 /*Kyrakka*/, 190485 /*Erkhart Stormvein*/, 187145 /*Kildrumeh*/, 198329 /*Wild Proto-Dragon*/, 190519 /*Bronze Timekeeper*/, 187172 /*Rumbling Primalist*/, 187173 /*Earthshatter Primalist*/, 187174 /*Galestrike Primalist*/, 187175 /*Galestrike Primalist*/, 195001 /*Invisible Bunny*/, 187187 /*Blacktalon Avenger*/, 187189 /*Blacktalon Assassin*/, 195009 /*Invisible Bunny*/, 187203 /*Frozen Revenant*/, 187204 /*Grounded Primalist*/, 187209 /*Klozicc the Ascended*/, 192795 /*Scalecommander Emberthal*/, 191679 /*Magmammoth Bull*/, 187211 /*Galestrike Proto-Dragon*/, 187212 /*Rumbling Proto-Dragon*/, 191684 /*Riverbeast Calf*/, 191687 /*Riverbeast Elder*/, 186109 /*Qalashi Necksnapper*/, 191694 /*Young Basilisk*/, 189461 /*Obsidian Watcher*/, 191696 /*Mature Basilisk*/, 191697 /*Ancient Basilisk*/, 191698 /*Hauler Bennet*/, 191699 /*Enchanter Vevesi*/, 191700 /*Flip Quickcharge*/, 191701 /*Pristy Quickcharge*/, 191702 /*Expedition Supplies*/, 191703 /*Hungry Proto-Drake*/, 191704 /*Apex Proto-Dragon*/, 193967 /*Dragonbane Wingshredder*/, 189503 /*Scalecommander Emberthal*/, 189507 /*Talonstalker Kavia*/, 187278 /*Majordomo Selistra*/, 197340 /*Blacktalon Avenger*/, 198457 /*Dragon Glyph*/, 197341 /*Blacktalon Avenger*/, 195127 /*Invisible Bunny*/, 195128 /*Invisible Bunny*/, 189557 /*Qalashi Boltthrower*/, 188444 /*Do-Yeon Shadowrider*/, 188445 /*Cireni*/, 188447 /*Jadzigeth*/, 191805 /*Wild Proto-Drake*/, 195160 /*Igneous Wanderer*/, 189581 /*Lava Fledgling*/, 181763 /*Lava Phoenix*/, 191816 /*Blacktalon Shadowclaw*/, 189587 /*Fao the Relentless*/, 191823 /*Vicious Proto-Drake*/, 186239 /*Qalashi Skullhauler*/, 191825 /*Thunder Lizard Alpha*/, 186241 /*Generic - Empty Bunny*/, 191827 /*Thunder Lizard*/, 187366 /*Worldcarver Wurmling*/, 191835 /*Blacktalon Scout*/, 189604 /*Provisioner Ojito*/, 189610 /*Blacktalon Assassin*/, 186261 /*Restless Lava*/, 194080 /*Wild Proto-Drake*/, 194081 /*Wild Proto-Drake*/, 191849 /*Raszageth*/, 194084 /*Wild Proto-Drake*/, 191851 /*Blacktalon Shadowclaw*/, 194087 /*Wild Proto-Drake*/, 186272 /*Risen Phoenix*/, 191857 /*Crested Poolwader*/, 186274 /*Wrathion*/, 194093 /*Wild Proto-Drake*/, 191867 /*Summoned Icestorm*/, 191876 /*Goruk Steelwall*/, 189643 /*Qalashi Crustshaper*/, 187419 /*Firellon*/, 191895 /*Majordomo Selistra*/, 191896 /*Wrathion*/, 186312 /*Left*/, 191897 /*Majordomo Selistra*/, 186314 /*Right*/, 186317 /*Tong the Fixer*/, 196376 /*Thellara*/, 186324 /*Blacktalon Schemer*/, 186326 /*Blacktalon Strategist*/, 186331 /*Fao the Relentless*/, 198621 /*Tracker Dragon Glyph*/, 186336 /*Blazing Manifestation*/, 181875 /*Olphis the Molten*/, 198632 /*Tracker Dragon Glyph*/, 187466 /*Archivist Edress*/, 191940 /*Qalashi Necksnapper*/, 189713 /*Blacktalon Avenger*/, 189734 /*Qalashi Boltthrower*/, 187530 /*Evorian*/, 189768 /*Qalashi Flamelobber*/, 187538 /*Champion Ugi*/, 186429 /*Steelsage Gao*/, 186430 /*Horace "Scalding" Stern*/, 190903 /*Alexstrasza the Life-Binder*/, 186447 /*Kaplak*/, 186451 /*Blacktalon Avenger*/, 186452 /*Blacktalon Assassin*/, 186454 /*Kora Fullsails*/, 192050 /*Snowlemental*/, 192058 /*Igneoid*/, 198767 /*Explorative Fisher*/, 186483 /*Qalashi Steelcrafter*/, 187602 /*Qalashi Scaleripper*/, 188724 /*Optimistic Guppy*/, 186493 /*Forgemaster Bazentus*/, 186509 /*Modak Flamespit*/, 186511 /*Piercer Gigra*/, 193218 /*Storm Target [DNT]*/, 183186 /*Qalashi Wingrider*/, 183187 /*Dreadsquall*/);
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `unit_class`, `WidgetSetID`, `WidgetSetUnitConditionID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `VerifiedBuild`) VALUES
(191014, 0, 0, 'Becca Black', '', 'Blacktalon Operative', NULL, NULL, 9, 0, 0, 4, 0, 0, 0, 0, 7, 0, 0, 2, 1, 0, 0, 219211, 46879), -- Becca Black
(191015, 0, 0, 'Maddoc Stitchneedle', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 5, 1, 0, 0, 219212, 46879), -- Maddoc Stitchneedle
(196605, 0, 0, 'Invis Bunny Template - Gigantic AOI', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 0, 0, 1, 1, 0, 0, 224880, 46879), -- Invis Bunny Template - Gigantic AOI
(191021, 0, 0, 'Shiv Fizzlescheme', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 5, 1, 0, 0, 219218, 46879), -- Shiv Fizzlescheme
(191038, 0, 0, 'Cranky Wrenchriddle', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 5, 1, 0, 0, 219235, 46879), -- Cranky Wrenchriddle
(191039, 0, 0, 'Snoozy Clickclock', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 5, 1, 0, 0, 219236, 46879), -- Snoozy Clickclock
(191042, 0, 0, 'Snitch Eagersnipe', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 5, 1, 0, 0, 219239, 46879), -- Snitch Eagersnipe
(191043, 0, 0, 'Itchy Sparkwobble', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 5, 1, 0, 0, 219240, 46879), -- Itchy Sparkwobble
(191044, 0, 0, 'Whimsy Cogtattler', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 5, 1, 0, 0, 219241, 46879), -- Whimsy Cogtattler
(192165, 0, 0, 'Winnie Fingerspring', '', 'Engineering Trainer', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 4096, 0, 10, 1, 0, 0, 220374, 46879), -- Winnie Fingerspring
(198876, 0, 0, 'Obsidian Protector', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 15, 1, 0, 144, 227288, 46879), -- Obsidian Protector
(189942, 0, 0, 'Wrathion', '', 'The Black Prince', NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 1610612756, 117440518, 50, 1, 0, 0, 216631, 46879), -- Wrathion
(192177, 0, 0, 'Filbin Gearknock', '', 'Engineering Supplies', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 220386, 46879), -- Filbin Gearknock
(198879, 0, 0, 'Fingerspring Security', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 7, 0, 0, 15, 1, 0, 0, 227291, 46879), -- Fingerspring Security
(192185, 0, 0, 'Kakapo', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 0, 220394, 46879), -- Kakapo
(181016, 0, 0, 'Blacktalon Sentry', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 204695, 46879), -- Blacktalon Sentry
(194444, 194564, 0, 'Wild Proto-Drake', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 222673, 46879), -- Wild Proto-Drake
(201154, 0, 0, 'Surging Magma', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 4, 0, 0, 0.5, 1, 0, 0, 229733, 46879), -- Surging Magma
(186634, 0, 0, 'Blacktalon Assassin', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 0, 0, 1.799999952316284179, 1, 0, 0, 210956, 46879), -- Blacktalon Assassin
(186638, 0, 186614, 'Qalashi Crustshaper', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 2, 1, 0, 0, 210960, 46879), -- Qalashi Crustshaper
(183306, 0, 0, 'Scalecommander Emberthal', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 20, 1, 0, 0, 207122, 46879), -- Scalecommander Emberthal
(188908, 0, 0, 'Rimblat Earthshatter', '', 'The Earthen Ring', NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 215594, 46879), -- Rimblat Earthshatter
(186681, 0, 0, 'Wrathion', '', 'The Black Prince', NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 4, 32768, 50, 1, 0, 0, 211006, 46879), -- Wrathion
(190061, 189618, 189865, 'Galestrike Proto-Dragon', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 8, 1, 0, 0, 216750, 46879), -- Galestrike Proto-Dragon
(190065, 0, 0, 'Unruly Whelp', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 2, 0, 0, 0.300000011920928955, 1, 0, 0, 216754, 46879), -- Unruly Whelp
(190066, 189864, 0, 'Water Primalist', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 216755, 46879), -- Water Primalist
(186716, 0, 0, 'Molten Extracts', '', NULL, NULL, 'attack', 9, 0, 0, 1, 0, 0, 6, 0, 10, 1073742864, 2, 0.019999999552965164, 1, 0, 0, 211115, 46879), -- Molten Extracts
(186721, 0, 0, 'Destroyed Extracts', '', NULL, NULL, 'attack', 9, 0, 0, 1, 0, 0, 6, 0, 10, 1610613776, 117440518, 0.019999999552965164, 1, 0, 0, 211120, 46879), -- Destroyed Extracts
(186732, 0, 0, 'Djaradin Banner', '', NULL, NULL, 'questinteract', 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 6, 1, 1, 0, 0, 211133, 46879), -- Djaradin Banner
(196791, 0, 0, 'Kixandria', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 1, 0, 2, 0, 0, 50, 1, 0, 0, 225076, 46879), -- Kixandria
(187860, 0, 0, 'Qalashi Magmammoth', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 1, 72, 0, 8, 1, 0, 0, 214536, 46879), -- Qalashi Magmammoth
(186752, 0, 0, 'Firstmate Kaleson', '', 'Hard Stuff', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 134221824, 0, 1, 1, 0, 0, 211157, 46879), -- Firstmate Kaleson
(186757, 0, 0, 'Hades Prescott', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 134221824, 0, 4, 1, 0, 0, 211162, 46879), -- Hades Prescott
(196811, 0, 0, 'Ruby Life Pools', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1073742848, 0, 1, 1, 0, 0, 225097, 46879), -- Ruby Life Pools
(186763, 0, 0, 'Blacktalon Pack Goat', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 140, 211168, 46879), -- Blacktalon Pack Goat
(186764, 0, 0, 'Blacktalon Pack Beast', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 140, 211169, 46879), -- Blacktalon Pack Beast
(190116, 186892, 191596, 'Qalashi Skullhauler', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1.5, 1, 0, 0, 216807, 46879), -- Qalashi Skullhauler
(186765, 0, 0, 'Blacktalon Provisioner', '', NULL, NULL, NULL, 9, 0, 0, 4, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 211170, 46879), -- Blacktalon Provisioner
(190124, 0, 0, 'Emerald Egg', '', NULL, NULL, 'questinteract', 9, 9, 0, 1, 0, 0, 0, 0, 10, 1610612752, 100663302, 1, 1, 0, 0, 216815, 46879), -- Emerald Egg
(190127, 0, 0, 'Ruby Egg', '', NULL, NULL, 'questinteract', 9, 9, 0, 1, 0, 0, 0, 0, 10, 1610612752, 100663302, 1, 1, 0, 0, 216818, 46879), -- Ruby Egg
(190129, 0, 0, 'Winter Conqueror', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 216820, 46879), -- Winter Conqueror
(190130, 0, 0, 'Winter Caller', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 216821, 46879), -- Winter Caller
(190131, 0, 0, 'Bronze Egg', '', NULL, NULL, 'questinteract', 9, 9, 0, 1, 0, 0, 0, 0, 10, 1610612752, 100663302, 1, 1, 0, 0, 216822, 46879), -- Bronze Egg
(187908, 196477, 0, 'Qalashi Scaleripper', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 7, 0, 0, 7, 1, 0, 0, 214585, 46879), -- Qalashi Scaleripper
(190149, 0, 0, 'Azure Egg', '', NULL, NULL, 'questinteract', 9, 9, 0, 1, 0, 0, 0, 0, 10, 1610612752, 100663302, 1, 1, 0, 0, 216840, 46879), -- Azure Egg
(187919, 196477, 0, 'Caldera Stomper', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 5, 72, 0, 8, 1, 0, 124, 214596, 46879), -- Caldera Stomper
(190163, 0, 0, 'Animated Vault Protector', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 12, 128, 0, 3, 1, 0, 121, 216854, 46879), -- Animated Vault Protector
(191284, 0, 0, 'Optimistic Whelp', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 2, 0, 0, 0.300000011920928955, 1, 0, 0, 219489, 46879), -- Optimistic Whelp
(187949, 0, 0, 'Ancient Dreadsquall', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 26, 1, 1, 0, 6, 1, 0, 0, 214627, 46879), -- Ancient Dreadsquall
(190204, 0, 0, 'Tempest Veteran', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 216895, 46879), -- Tempest Veteran
(190208, 189864, 0, 'Rockslide Rider', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 216899, 46879), -- Rockslide Rider
(194709, 0, 0, 'Dragon Glyph', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 67108870, 1, 1, 0, 0, 222942, 46879), -- Dragon Glyph
(186892, 0, 191596, 'Qalashi Necksnapper', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 2, 1, 0, 0, 211305, 46879), -- Qalashi Necksnapper
(186897, 0, 0, 'Blacktalon Avenger', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 2, 1, 0, 0, 211310, 46879), -- Blacktalon Avenger
(190252, 0, 0, 'Xitostrasz', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 1, 0, 2, 4096, 0, 10, 1, 0, 0, 216943, 46879), -- Xitostrasz
(186904, 0, 0, 'Sabellian', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 1, 0, 2, 4, 0, 50, 1, 0, 0, 211317, 46879), -- Sabellian
(191373, 0, 0, 'Primal Rumbler', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 2, 1, 0, 0, 219578, 46879), -- Primal Rumbler
(186915, 0, 191596, 'Qalashi Gatecrasher', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 7, 72, 0, 7, 1, 0, 0, 211358, 46879), -- Qalashi Gatecrasher
(186919, 0, 0, 'Obsidian Soldier', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 211362, 46879), -- Obsidian Soldier
(193623, 0, 0, 'Tiny Salamanther', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 0, 221844, 46879), -- Tiny Salamanther
(191395, 194564, 0, 'Wild Proto-Drake', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 219600, 46879), -- Wild Proto-Drake
(191396, 194564, 0, 'Wild Proto-Drake', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 219601, 46879), -- Wild Proto-Drake
(186933, 0, 0, 'Wrathion', '', 'The Black Prince', NULL, 'questinteract', 9, 0, 0, 1, 0, 0, 1, 0, 2, 134217732, 32768, 50, 1, 0, 0, 211376, 46879), -- Wrathion
(196995, 0, 0, 'Talonstalker Gazi', '', NULL, NULL, NULL, 9, 0, 0, 4, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 225281, 46879), -- Talonstalker Gazi
(186950, 0, 0, 'Arbalest', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 0, 0, 1, 1, 0, 0, 211397, 46879), -- Arbalest
(197016, 0, 0, 'Fishing Net', '', NULL, NULL, NULL, 9, 0, 0, 1, 672, 0, 0, 0, 10, 1073741840, 117440518, 1, 1, 0, 0, 225302, 46879), -- Fishing Net
(191476, 0, 186614, 'Searing Flame Harchek', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 7, 2147483720, 0, 7, 1, 0, 0, 219681, 46879), -- Searing Flame Harchek
(194829, 0, 0, 'Grigori Vialtry', '', 'Master Alchemist', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 6, 0, 0, 1, 1, 0, 0, 223062, 46879), -- Grigori Vialtry
(191479, 0, 0, 'Charred Hornspike', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 303, 2, 1, 0, 2, 1, 0, 0, 219684, 46879), -- Charred Hornspike
(188133, 0, 0, 'Narsysix', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 1, 0, 2, 0, 0, 50, 1, 0, 0, 214813, 46879), -- Narsysix
(194836, 0, 0, 'Grekka Anvilsmash', '', 'Master Blacksmith', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 223069, 46879), -- Grekka Anvilsmash
(188136, 0, 0, 'Exadria', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 1, 0, 2, 0, 0, 50, 1, 0, 0, 214816, 46879), -- Exadria
(188141, 0, 0, 'Malsiran', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 1, 0, 2, 0, 0, 50, 1, 0, 0, 214821, 46879), -- Malsiran
(188143, 0, 0, 'Myridian', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 1, 0, 2, 0, 0, 50, 1, 0, 0, 214823, 46879), -- Myridian
(198197, 0, 0, 'Searskin Proto-Dragon', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 8, 1, 0, 0, 226569, 46879), -- Searskin Proto-Dragon
(188155, 0, 0, 'Osoria', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 1, 0, 2, 0, 0, 50, 1, 0, 0, 214837, 46879), -- Osoria
(188158, 0, 0, 'Baskilan', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 1, 0, 2, 0, 32768, 50, 1, 0, 0, 214840, 46879), -- Baskilan
(194874, 0, 0, 'Appetizing Ingot', '', NULL, NULL, NULL, 9, 0, 5321, 1, 0, 0, 0, 0, 10, 1610612752, 117440518, 1, 1, 0, 0, 223107, 46879), -- Appetizing Ingot
(191524, 0, 186614, 'Qalashi Ironskin', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 7, 0, 0, 7, 1, 0, 0, 219729, 46879), -- Qalashi Ironskin
(191525, 0, 0, 'Qalashi Wallcrasher', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 7, 1610612752, 67108870, 7.5, 1, 0, 0, 219730, 46879), -- Qalashi Wallcrasher
(187075, 0, 0, 'Enraged Shards', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 4, 0, 0, 0.300000011920928955, 1, 0, 0, 213695, 46879), -- Enraged Shards
(187078, 189863, 0, 'Enraged Shards', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 4, 0, 0, 0.300000011920928955, 1, 0, 0, 213698, 46879), -- Enraged Shards
(187079, 189864, 0, 'Convoked Tremor', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 1, 1, 0, 0, 213699, 46879), -- Convoked Tremor
(196017, 0, 0, 'Pudgy Riverbeast', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 150, 1, 1, 0, 2, 1, 0, 0, 224278, 46879), -- Pudgy Riverbeast
(187082, 189864, 0, 'Primal Avalanche', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 2, 1, 0, 0, 213702, 46879), -- Primal Avalanche
(187083, 189864, 0, 'Primal Avalanche', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 1, 1, 0, 0, 213703, 46879), -- Primal Avalanche
(187085, 189864, 0, 'Galestrike Primalist', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 213705, 46879), -- Galestrike Primalist
(187088, 189864, 0, 'Rumbling Primalist', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 213708, 46879), -- Rumbling Primalist
(187090, 189865, 0, 'Enraged Cliff', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 3.5, 1, 0, 0, 213710, 46879), -- Enraged Cliff
(194915, 0, 0, 'Invis Bunny', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1073742848, 0, 1, 1, 0, 0, 223148, 46879), -- Invis Bunny
(187096, 0, 0, 'Ruby Searer', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 4096, 0, 6, 1, 0, 0, 213716, 46879), -- Ruby Searer
(187097, 0, 0, 'Ruby Watcher', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 4096, 0, 7, 1, 0, 0, 213717, 46879), -- Ruby Watcher
(187101, 0, 0, 'Ruby Lifeguardian', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 4096, 0, 4, 1, 0, 0, 213721, 46879), -- Ruby Lifeguardian
(187102, 0, 0, 'Ruby Commander', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 4096, 0, 6, 1, 0, 0, 213722, 46879), -- Ruby Commander
(187105, 0, 0, 'Life Pools Crasher', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 4096, 0, 5, 0.60000002384185791, 0, 0, 213725, 46879), -- Life Pools Crasher
(187106, 0, 0, 'Life Pools Screecher', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 4096, 0, 5, 1, 0, 0, 213726, 46879), -- Life Pools Screecher
(187107, 0, 0, 'Life Pools Stalwart', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 6, 1, 0, 0, 213727, 46879), -- Life Pools Stalwart
(187108, 0, 0, 'Mature Slasher', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 2, 1, 0, 0, 213728, 46879), -- Mature Slasher
(187115, 0, 0, 'Alexstrasza the Life-Binder', '', 'Queen of the Dragons', NULL, NULL, 9, 0, 0, 2, 0, 0, 1, 0, 2, 4, 32768, 600, 1, 0, 0, 213735, 46879), -- Alexstrasza the Life-Binder
(187117, 0, 0, 'Ruby Culler', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 5, 1, 0, 0, 213737, 46879), -- Ruby Culler
(187119, 0, 0, 'Commander Lethanak', '', 'Leader of the Shrineguard', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 4096, 32768, 10, 1, 0, 0, 213739, 46879), -- Commander Lethanak
(191596, 0, 0, 'Qalashi Forces', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 3, 1, 0, 0, 219801, 46879), -- Qalashi Forces
(191597, 0, 191596, 'Qalashi Crustshaper', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 2, 1, 0, 0, 219802, 46879), -- Qalashi Crustshaper
(187129, 0, 0, 'Majordomo Selistra', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 32768, 6, 1, 0, 0, 213749, 46879), -- Majordomo Selistra
(190484, 0, 0, 'Kyrakka', '', NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 1, 0, 2, 2097256, 128, 20, 1, 0, 174, 218680, 46879), -- Kyrakka
(190485, 0, 0, 'Erkhart Stormvein', '', NULL, NULL, NULL, 0, 0, 0, 4, 0, 0, 1, 0, 7, 2097256, 128, 25, 1, 0, 0, 218681, 46879), -- Erkhart Stormvein
(187145, 0, 0, 'Kildrumeh', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 2.20000004768371582, 1, 0, 0, 213767, 46879), -- Kildrumeh
(198329, 194566, 0, 'Wild Proto-Dragon', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 2, 1, 0, 0, 226701, 46879), -- Wild Proto-Dragon
(190519, 0, 0, 'Bronze Timekeeper', '', NULL, NULL, NULL, 9, 0, 5104, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 218715, 46879), -- Bronze Timekeeper
(187172, 189864, 0, 'Rumbling Primalist', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 213802, 46879), -- Rumbling Primalist
(187173, 189864, 0, 'Earthshatter Primalist', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 213803, 46879), -- Earthshatter Primalist
(187174, 189864, 0, 'Galestrike Primalist', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 213804, 46879), -- Galestrike Primalist
(187175, 189864, 0, 'Galestrike Primalist', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 213805, 46879), -- Galestrike Primalist
(195001, 0, 0, 'Invisible Bunny', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1073741824, 0, 1, 1, 0, 0, 223238, 46879), -- Invisible Bunny
(187187, 187158, 0, 'Blacktalon Avenger', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 2.20000004768371582, 1, 0, 0, 213817, 46879), -- Blacktalon Avenger
(187189, 187158, 0, 'Blacktalon Assassin', '', NULL, NULL, NULL, 9, 0, 0, 4, 0, 0, 0, 0, 7, 0, 0, 1.799999952316284179, 1, 0, 0, 213819, 46879), -- Blacktalon Assassin
(195009, 0, 0, 'Invisible Bunny', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1073741824, 0, 1, 1, 0, 0, 223246, 46879), -- Invisible Bunny
(187203, 189864, 0, 'Frozen Revenant', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 2, 1, 0, 0, 213833, 46879), -- Frozen Revenant
(187204, 189864, 0, 'Grounded Primalist', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 2, 1, 0, 0, 213834, 46879), -- Grounded Primalist
(187209, 0, 0, 'Klozicc the Ascended', '', NULL, NULL, NULL, 9, 0, 5127, 2, 0, 0, 4, 0, 7, 72, 65536, 5, 1, 0, 0, 213839, 46879), -- Klozicc the Ascended
(192795, 0, 0, 'Scalecommander Emberthal', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 32768, 20, 1, 0, 0, 221008, 46879), -- Scalecommander Emberthal
(191679, 0, 0, 'Magmammoth Bull', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 300, 1, 0, 0, 8, 1, 0, 0, 219884, 46879), -- Magmammoth Bull
(187211, 189618, 189865, 'Galestrike Proto-Dragon', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 8, 1, 0, 0, 213841, 46879), -- Galestrike Proto-Dragon
(187212, 189618, 189865, 'Rumbling Proto-Dragon', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 8, 1, 0, 0, 213842, 46879), -- Rumbling Proto-Dragon
(191684, 0, 0, 'Riverbeast Calf', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 150, 1, 1, 0, 0.5, 1, 0, 0, 219889, 46879), -- Riverbeast Calf
(191687, 0, 0, 'Riverbeast Elder', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 150, 1, 1, 0, 5, 1, 0, 0, 219892, 46879), -- Riverbeast Elder
(186109, 0, 186614, 'Qalashi Necksnapper', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 2, 1, 0, 0, 210408, 46879), -- Qalashi Necksnapper
(191694, 0, 0, 'Young Basilisk', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 130, 1, 1, 0, 0.5, 1, 0, 0, 219899, 46879), -- Young Basilisk
(189461, 0, 0, 'Obsidian Watcher', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 216145, 46879), -- Obsidian Watcher
(191696, 0, 0, 'Mature Basilisk', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 130, 1, 1, 0, 2, 1, 0, 0, 219901, 46879), -- Mature Basilisk
(191697, 0, 0, 'Ancient Basilisk', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 130, 1, 1, 0, 6, 1, 0, 0, 219902, 46879), -- Ancient Basilisk
(191698, 0, 0, 'Hauler Bennet', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 219903, 46879), -- Hauler Bennet
(191699, 0, 0, 'Enchanter Vevesi', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 219904, 46879), -- Enchanter Vevesi
(191700, 0, 0, 'Flip Quickcharge', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 1073741824, 0, 1, 1, 0, 0, 219905, 46879), -- Flip Quickcharge
(191701, 0, 0, 'Pristy Quickcharge', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 1073741824, 0, 1, 1, 0, 0, 219906, 46879), -- Pristy Quickcharge
(191702, 0, 0, 'Expedition Supplies', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 1610612752, 117440518, 1, 1, 0, 0, 219907, 46879), -- Expedition Supplies
(191703, 0, 0, 'Hungry Proto-Drake', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 219908, 46879), -- Hungry Proto-Drake
(191704, 194567, 0, 'Apex Proto-Dragon', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 8, 1, 0, 0, 219909, 46879), -- Apex Proto-Dragon
(193967, 187359, 0, 'Dragonbane Wingshredder', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 7, 0, 0, 7.5, 1, 0, 0, 222196, 46879), -- Dragonbane Wingshredder
(189503, 0, 0, 'Scalecommander Emberthal', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 20, 1, 0, 0, 216187, 46879), -- Scalecommander Emberthal
(189507, 0, 0, 'Talonstalker Kavia', '', NULL, NULL, NULL, 9, 0, 0, 4, 0, 0, 0, 0, 7, 0, 32768, 5, 1, 0, 0, 216191, 46879), -- Talonstalker Kavia
(187278, 0, 0, 'Majordomo Selistra', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 134217728, 32768, 6, 1, 0, 0, 213914, 46879), -- Majordomo Selistra
(197340, 0, 0, 'Blacktalon Avenger', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 2, 1, 0, 0, 225678, 46879), -- Blacktalon Avenger
(198457, 0, 0, 'Dragon Glyph', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 67108870, 1, 1, 0, 0, 226836, 46879), -- Dragon Glyph
(197341, 0, 0, 'Blacktalon Avenger', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 2, 1, 0, 0, 225679, 46879), -- Blacktalon Avenger
(195127, 0, 0, 'Invisible Bunny', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1073741824, 0, 1, 1, 0, 0, 223364, 46879), -- Invisible Bunny
(195128, 0, 0, 'Invisible Bunny', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1073741824, 0, 1, 1, 0, 0, 223365, 46879), -- Invisible Bunny
(189557, 186239, 0, 'Qalashi Boltthrower', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1.5, 1, 0, 0, 216242, 46879), -- Qalashi Boltthrower
(188444, 0, 0, 'Do-Yeon Shadowrider', '', 'Flight Master', NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 16384, 25, 1, 0, 0, 215130, 46879), -- Do-Yeon Shadowrider
(188445, 0, 0, 'Cireni', '', 'Stable Master', NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 215131, 46879), -- Cireni
(188447, 0, 0, 'Jadzigeth', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 2147483720, 0, 5, 1, 0, 0, 215133, 46879), -- Jadzigeth
(191805, 194566, 0, 'Wild Proto-Drake', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 2, 1, 0, 0, 220010, 46879), -- Wild Proto-Drake
(195160, 0, 0, 'Igneous Wanderer', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 5, 72, 0, 8, 1, 0, 124, 223397, 46879), -- Igneous Wanderer
(189581, 0, 0, 'Lava Fledgling', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 26, 1, 1, 0, 1, 1, 0, 0, 216266, 46879), -- Lava Fledgling
(181763, 0, 0, 'Lava Phoenix', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 26, 1, 1, 0, 1, 1, 0, 0, 205562, 46879), -- Lava Phoenix
(191816, 0, 0, 'Blacktalon Shadowclaw', '', NULL, NULL, NULL, 9, 7, 0, 1, 0, 0, 1, 0, 7, 0, 0, 5, 1, 0, 0, 220021, 46879), -- Blacktalon Shadowclaw
(189587, 0, 0, 'Fao the Relentless', '', 'Blacktalon Spymaster', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 134217728, 0, 2, 1, 0, 0, 216272, 46879), -- Fao the Relentless
(191823, 0, 0, 'Vicious Proto-Drake', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 220028, 46879), -- Vicious Proto-Drake
(186239, 0, 0, 'Qalashi Skullhauler', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1.5, 1, 0, 0, 210557, 46879), -- Qalashi Skullhauler
(191825, 0, 0, 'Thunder Lizard Alpha', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 1, 156, 1, 1, 0, 5, 1, 0, 0, 220030, 46879), -- Thunder Lizard Alpha
(186241, 0, 0, 'Generic - Empty Bunny', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 0, 0, 1, 1, 0, 0, 210559, 46879), -- Generic - Empty Bunny
(191827, 0, 0, 'Thunder Lizard', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 156, 1, 1, 0, 1, 1, 0, 0, 220032, 46879), -- Thunder Lizard
(187366, 196477, 0, 'Worldcarver Wurmling', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 8, 1, 0, 0, 214004, 46879), -- Worldcarver Wurmling
(191835, 0, 0, 'Blacktalon Scout', '', NULL, NULL, NULL, 9, 7, 0, 1, 0, 0, 1, 0, 7, 0, 0, 5, 1, 0, 0, 220040, 46879), -- Blacktalon Scout
(189604, 0, 0, 'Provisioner Ojito', '', 'Supplies', NULL, NULL, 9, 0, 0, 4, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 216289, 46879), -- Provisioner Ojito
(189610, 0, 0, 'Blacktalon Assassin', '', NULL, NULL, NULL, 9, 0, 0, 4, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 216295, 46879), -- Blacktalon Assassin
(186261, 0, 0, 'Restless Lava', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 4, 0, 0, 0.300000011920928955, 1, 0, 0, 210580, 46879), -- Restless Lava
(194080, 194566, 0, 'Wild Proto-Drake', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 2, 1, 0, 0, 222309, 46879), -- Wild Proto-Drake
(194081, 194566, 0, 'Wild Proto-Drake', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 2, 1, 0, 0, 222310, 46879), -- Wild Proto-Drake
(191849, 0, 0, 'Raszageth', '', 'The Storm-Eater', NULL, NULL, 9, 0, 0, 2, 0, 0, 1, 0, 2, 4, 0, 500, 1, 0, 0, 220054, 46879), -- Raszageth
(194084, 194564, 0, 'Wild Proto-Drake', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 222313, 46879), -- Wild Proto-Drake
(191851, 0, 0, 'Blacktalon Shadowclaw', '', NULL, NULL, 'vehichlecursor', 9, 7, 0, 1, 0, 0, 0, 0, 7, 0, 0, 5, 1, 0, 0, 220056, 46879), -- Blacktalon Shadowclaw
(194087, 194566, 0, 'Wild Proto-Drake', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 2, 1, 0, 0, 222316, 46879), -- Wild Proto-Drake
(186272, 0, 0, 'Risen Phoenix', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 26, 1, 0, 0, 1, 1, 0, 0, 210591, 46879), -- Risen Phoenix
(191857, 0, 0, 'Crested Poolwader', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 1, 0, 0, 0.699999988079071044, 1, 0, 0, 220062, 46879), -- Crested Poolwader
(186274, 0, 0, 'Wrathion', '', 'The Black Prince', NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 4, 32768, 50, 1, 0, 0, 210593, 46879), -- Wrathion
(194093, 194564, 0, 'Wild Proto-Drake', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 222322, 46879), -- Wild Proto-Drake
(191867, 0, 0, 'Summoned Icestorm', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 11, 0, 0, 0.5, 1, 0, 0, 220072, 46879), -- Summoned Icestorm
(191876, 0, 186614, 'Goruk Steelwall', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 7, 72, 0, 6, 1, 0, 0, 220081, 46879), -- Goruk Steelwall
(189643, 0, 0, 'Qalashi Crustshaper', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 7, 1073741824, 0, 3, 1, 0, 0, 216328, 46879), -- Qalashi Crustshaper
(187419, 0, 0, 'Firellon', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 6, 1, 0, 0, 214057, 46879), -- Firellon
(191895, 0, 0, 'Majordomo Selistra', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 32768, 6, 1, 0, 0, 220100, 46879), -- Majordomo Selistra
(191896, 0, 0, 'Wrathion', '', 'The Black Prince', NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 4, 0, 50, 1, 0, 0, 220101, 46879), -- Wrathion
(186312, 0, 0, 'Left', '', 'Blacktalon Bodyguard', NULL, NULL, 9, 7, 0, 1, 0, 0, 1, 0, 7, 0, 0, 10, 1, 0, 0, 210631, 46879), -- Left
(191897, 0, 0, 'Majordomo Selistra', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 32768, 6, 1, 0, 0, 220102, 46879), -- Majordomo Selistra
(186314, 0, 0, 'Right', '', 'Blacktalon Bodyguard', NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 7, 0, 0, 10, 1, 0, 0, 210633, 46879), -- Right
(186317, 0, 0, 'Tong the Fixer', '', 'Rest and Refreshment', NULL, 'innkeeper', 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 210636, 46879), -- Tong the Fixer
(196376, 0, 0, 'Thellara', '', 'Apprentice', NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 0.60000002384185791, 0.60000002384185791, 0, 0, 224645, 46879), -- Thellara
(186324, 0, 0, 'Blacktalon Schemer', '', NULL, NULL, NULL, 9, 0, 0, 4, 0, 0, 0, 0, 7, 0, 0, 2, 1, 0, 0, 210644, 46879), -- Blacktalon Schemer
(186326, 0, 0, 'Blacktalon Strategist', '', NULL, NULL, NULL, 9, 0, 0, 4, 0, 0, 0, 0, 7, 0, 0, 2, 1, 0, 0, 210646, 46879), -- Blacktalon Strategist
(186331, 0, 0, 'Fao the Relentless', '', 'Blacktalon Spymaster', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 134217728, 32768, 2, 1, 0, 0, 210651, 46879), -- Fao the Relentless
(198621, 0, 0, 'Tracker Dragon Glyph', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 67108870, 1, 1, 0, 0, 227006, 46879), -- Tracker Dragon Glyph
(186336, 0, 0, 'Blazing Manifestation', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 4, 0, 0, 1, 1, 0, 0, 210656, 46879), -- Blazing Manifestation
(181875, 0, 186614, 'Olphis the Molten', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 300, 1, 2147483720, 0, 6, 1, 0, 0, 205674, 46879), -- Olphis the Molten
(198632, 0, 0, 'Tracker Dragon Glyph', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 67108870, 1, 1, 0, 0, 227017, 46879), -- Tracker Dragon Glyph
(187466, 0, 0, 'Archivist Edress', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 4096, 32768, 10, 1, 0, 0, 214104, 46879), -- Archivist Edress
(191940, 0, 186614, 'Qalashi Necksnapper', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 2, 1, 0, 0, 220149, 46879), -- Qalashi Necksnapper
(189713, 0, 0, 'Blacktalon Avenger', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 2, 1, 0, 0, 216398, 46879), -- Blacktalon Avenger
(189734, 190079, 191596, 'Qalashi Boltthrower', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1.5, 1, 0, 0, 216419, 46879), -- Qalashi Boltthrower
(187530, 0, 0, 'Evorian', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 4, 0, 1, 1, 0, 0, 214168, 46879), -- Evorian
(189768, 0, 191596, 'Qalashi Flamelobber', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 2, 1, 0, 0, 216453, 46879), -- Qalashi Flamelobber
(187538, 0, 0, 'Champion Ugi', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 7, 6144, 0, 5, 1, 0, 0, 214176, 46879), -- Champion Ugi
(186429, 0, 0, 'Steelsage Gao', '', 'Madam Goya Operative', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 210750, 46879), -- Steelsage Gao
(186430, 0, 0, 'Horace \"Scalding\" Stern', '', 'Blacksmith', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 4096, 0, 1, 1, 0, 0, 210751, 46879), -- Horace "Scalding" Stern
(190903, 0, 0, 'Alexstrasza the Life-Binder', '', 'Queen of the Dragons', NULL, NULL, 9, 0, 0, 2, 0, 0, 1, 0, 2, 4, 0, 600, 1, 0, 0, 219100, 46879), -- Alexstrasza the Life-Binder
(186447, 0, 0, 'Kaplak', '', 'Rogue Trainer', NULL, NULL, 6, 0, 0, 4, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 210768, 46879), -- Kaplak
(186451, 0, 0, 'Blacktalon Avenger', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 2.20000004768371582, 1, 0, 0, 210772, 46879), -- Blacktalon Avenger
(186452, 0, 0, 'Blacktalon Assassin', '', NULL, NULL, NULL, 9, 0, 0, 4, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 210773, 46879), -- Blacktalon Assassin
(186454, 0, 0, 'Kora Fullsails', '', 'Food and Provisions', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 134221824, 0, 1, 1, 0, 0, 210775, 46879), -- Kora Fullsails
(192050, 0, 0, 'Snowlemental', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 100, 220259, 46879), -- Snowlemental
(192058, 0, 0, 'Igneoid', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 100, 220267, 46879), -- Igneoid
(198767, 0, 0, 'Explorative Fisher', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 227173, 46879), -- Explorative Fisher
(186483, 186614, 0, 'Qalashi Steelcrafter', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1.5, 1, 0, 0, 210804, 46879), -- Qalashi Steelcrafter
(187602, 196477, 0, 'Qalashi Scaleripper', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 7, 0, 0, 7, 1, 0, 0, 214240, 46879), -- Qalashi Scaleripper
(188724, 0, 0, 'Optimistic Guppy', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 12, 0, 0, 0.200000002980232238, 1, 0, 69, 215410, 46879), -- Optimistic Guppy
(186493, 0, 0, 'Forgemaster Bazentus', '', 'Obsidian Forgemaster', NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 32768, 10, 1, 0, 0, 210814, 46879), -- Forgemaster Bazentus
(186509, 0, 186614, 'Modak Flamespit', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 7, 2147483720, 0, 6, 1, 0, 0, 210830, 46879), -- Modak Flamespit
(186511, 0, 186614, 'Piercer Gigra', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 2147483720, 0, 5, 1, 0, 0, 210832, 46879), -- Piercer Gigra
(193218, 0, 0, 'Storm Target [DNT]', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1073742848, 0, 1, 1, 0, 0, 221434, 46879), -- Storm Target [DNT]
(183186, 196477, 0, 'Qalashi Wingrider', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 7, 0, 0, 7, 1, 0, 0, 207002, 46879), -- Qalashi Wingrider
(183187, 0, 0, 'Dreadsquall', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 26, 1, 1, 0, 6, 1, 0, 0, 207003, 46879); -- Dreadsquall

UPDATE `creature_template` SET `VerifiedBuild`=46879 WHERE `entry` IN (192134, 181029, 186687, 190064, 180016, 186965, 17249, 191647, 191678, 1860, 198489, 6466, 193024, 193026, 6491, 28951, 103822);
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46879 WHERE `entry`=156558; -- Generic - Empty Bunny
UPDATE `creature_template` SET `KillCredit1`=189618, `KillCredit2`=189865, `HealthModifier`=8, `VerifiedBuild`=46879 WHERE `entry`=190069; -- Rumbling Proto-Dragon
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46879 WHERE `entry`=1325; -- Jasper Fel
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46879 WHERE `entry`=32842; -- The WoW Dev Team
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46879 WHERE `entry`=54441; -- Thaumaturge Vashreen
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46879 WHERE `entry`=34337; -- The Postmaster
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46879 WHERE `entry`=77936; -- Greater Storm Elemental
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46879 WHERE `entry`=78116; -- Water Elemental

DELETE FROM `creature_template_model` WHERE (`Idx`=3 AND `CreatureID` IN (190116,189734,197341,191597,186915,197340,186897,189768,186919,186892,187908,186451,189643,191525,187602,191940,183186,191679,186634,186483,189557,191524,186638,189610,186239,186109,181875,191835,198876,187189,187187,186452,191857,186765,189461,181016,189713,191396,191395,191827,194093,191805,191687,194087,198329,194444,191684,194084,194080,194081,193623,191825,196017,190204,190130,190129,187174,187173,187172,190066,187088,187085,187175,190208,187204,187117,187105,187101,187097,187096,187102)) OR (`Idx`=2 AND `CreatureID` IN (190116,189734,197341,191597,188158,188155,186915,197340,186897,189768,186919,186892,187908,186451,189643,191525,187602,191940,183186,191679,186634,186483,189557,191524,186638,189610,186239,186109,181875,191835,198876,187189,187187,186452,186274,191696,191697,191694,191857,186765,189461,181016,189713,191396,191395,191827,194093,191805,191687,191896,194087,198329,194444,191684,194084,194080,194081,193623,191825,196017,191373,190204,190130,190129,187174,187173,187172,190066,187088,187085,187212,187175,190208,187204,187211,187090,187083,187117,187105,187101,187097,187096,187102)) OR (`Idx`=1 AND `CreatureID` IN (190116,189734,197341,186950,191597,188158,188155,186915,197340,186897,189768,186919,186892,187908,187366,186721,186451,189643,191525,187602,191940,183186,196605,191679,186634,186716,186483,189557,191524,186638,189610,186239,186109,181875,191835,186324,198876,187189,187187,186452,186274,191696,191697,191694,191857,186765,186241,189461,181016,189713,191396,191395,191827,198621,194709,194093,191805,191687,191896,187278,194087,198329,194444,191684,187115,194084,194080,194081,193623,191825,191702,191701,191700,196017,191373,198632,198457,190204,190130,190129,187174,187173,187172,190066,187088,187085,187212,187175,190208,187204,187211,187078,193218,187129,196811,187090,187083,187117,187105,187101,187097,187096,187082,187079,187075,187102)) OR (`Idx`=0 AND `CreatureID` IN (190116,188143,187530,201154,188136,190163,189734,191596,197341,188133,186950,186933,191597,183187,188158,188155,186915,186904,197340,188141,186897,189768,186919,186892,187908,187919,187366,189587,183306,186721,186681,196791,189604,186451,189643,191525,186272,194915,194874,197016,198767,187860,187602,191876,195127,191940,187949,195009,183186,196605,191476,191679,186634,191704,191479,195001,195160,195128,193967,186716,186483,189557,186732,191524,186638,189610,189581,186239,189942,186109,186261,181763,186336,181875,186509,186511,191816,191835,198197,187538,189503,186326,188444,186331,186324,194836,192177,192165,186317,192795,186430,186314,186312,198879,188445,186757,186752,186454,186447,196995,187466,186429,198876,190519,186493,186764,189507,187189,191851,187187,186452,186274,191823,191696,191697,191694,191042,191021,191014,191044,191043,191039,191038,191015,191857,192185,186763,186765,186241,189461,181016,189713,191396,191395,191827,198621,194709,191703,188724,194093,191805,191284,191687,191896,187278,194087,198329,194444,191684,187419,187115,194084,194080,188908,194081,193623,191825,191702,191701,191700,191699,191698,196017,191373,198632,198457,191895,190204,190149,190130,190129,187174,190124,188447,187173,187172,191897,190127,190066,190065,187209,187203,187088,187085,187212,187175,190131,191849,190903,190208,187204,190061,190485,190484,196376,194829,187211,191867,187078,193218,192058,187129,196811,187108,187107,187090,187083,192050,190252,187145,187119,187117,187105,187101,187097,187096,187082,187079,187075,187106,187102)) OR (`Idx`=8 AND `CreatureID` IN (197341,197340,186897,186451,186634,189610,191835,187189,187187,186452,186765,189713,191396,191395,194093,194444,194084,187173,190208)) OR (`Idx`=7 AND `CreatureID` IN (197341,191597,186915,197340,186897,189768,186919,186892,187908,186451,191525,187602,191940,183186,186634,186483,191524,186638,189610,186109,191835,198876,187189,187187,186452,186765,189461,181016,189713,191396,191395,194093,194444,194084,190204,190130,190129,187174,187173,187172,190066,187088,187085,187175,190208,187117,187105,187101,187097,187096,187102)) OR (`Idx`=6 AND `CreatureID` IN (197341,191597,186915,197340,186897,189768,186919,186892,187908,186451,191525,187602,191940,183186,186634,186483,191524,186638,189610,186109,191835,198876,187189,187187,186452,186765,189461,181016,189713,191396,191395,194093,191687,194444,191684,194084,196017,190204,190130,190129,187174,187173,187172,190066,187088,187085,187175,190208,187117,187105,187101,187097,187096,187102)) OR (`Idx`=5 AND `CreatureID` IN (197341,191597,186915,197340,186897,189768,186919,186892,187908,186451,189643,191525,187602,191940,183186,191679,186634,186483,191524,186638,189610,186109,181875,191835,198876,187189,187187,186452,186765,189461,181016,189713,191396,191395,194093,191687,194444,191684,194084,196017,190204,190130,190129,187174,187173,187172,190066,187088,187085,187175,190208,187204,187117,187105,187101,187097,187096,187102)) OR (`Idx`=4 AND `CreatureID` IN (197341,191597,186915,197340,186897,189768,186919,186892,187908,186451,189643,191525,187602,191940,183186,191679,186634,186483,191524,186638,189610,186109,181875,191835,198876,187189,187187,186452,191857,186765,189461,181016,189713,191396,191395,191827,194093,191805,191687,194444,191684,194084,194081,193623,191825,196017,190204,190130,190129,187174,187173,187172,190066,187088,187085,187175,190208,187204,187117,187105,187101,187097,187096,187102)) OR (`Idx`=9 AND `CreatureID` IN (186451,189610,187189,187187,186452,186765,191396,191395,194093,194444,194084,187173,190208)) OR (`Idx`=11 AND `CreatureID` IN (189610,187189,186452,186765,194444,187173,190208)) OR (`Idx`=10 AND `CreatureID` IN (189610,187189,187187,186452,186765,194444,187173,190208)) OR (`Idx`=18 AND `CreatureID`=194444) OR (`Idx`=17 AND `CreatureID`=194444) OR (`Idx`=16 AND `CreatureID`=194444) OR (`Idx`=15 AND `CreatureID`=194444) OR (`Idx`=14 AND `CreatureID`=194444) OR (`Idx`=13 AND `CreatureID`=194444) OR (`Idx`=12 AND `CreatureID`=194444);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(190116, 3, 106309, 1, 1, 46879), -- Qalashi Skullhauler
(190116, 2, 106308, 1, 1, 46879), -- Qalashi Skullhauler
(190116, 1, 106307, 1, 1, 46879), -- Qalashi Skullhauler
(190116, 0, 106306, 1, 1, 46879), -- Qalashi Skullhauler
(188143, 0, 106199, 0.949999988079071044, 0, 46879), -- Myridian
(187530, 0, 106199, 0.949999988079071044, 1, 46879), -- Evorian
(201154, 0, 104039, 1.20000004768371582, 1, 46879), -- Surging Magma
(188136, 0, 107705, 0.899999976158142089, 0, 46879), -- Exadria
(190163, 0, 101255, 1, 1, 46879), -- Animated Vault Protector
(189734, 3, 106309, 1, 1, 46879), -- Qalashi Boltthrower
(189734, 2, 106308, 1, 1, 46879), -- Qalashi Boltthrower
(189734, 1, 106307, 1, 1, 46879), -- Qalashi Boltthrower
(189734, 0, 106306, 1, 1, 46879), -- Qalashi Boltthrower
(191596, 0, 101807, 1, 1, 46879), -- Qalashi Forces
(197341, 8, 102427, 1, 1, 46879), -- Blacktalon Avenger
(197341, 7, 102428, 1, 1, 46879), -- Blacktalon Avenger
(197341, 6, 102429, 1, 1, 46879), -- Blacktalon Avenger
(197341, 5, 102430, 1, 1, 46879), -- Blacktalon Avenger
(197341, 4, 102445, 1, 1, 46879), -- Blacktalon Avenger
(197341, 3, 102431, 1, 1, 46879), -- Blacktalon Avenger
(197341, 2, 102432, 1, 1, 46879), -- Blacktalon Avenger
(197341, 1, 102433, 1, 1, 46879), -- Blacktalon Avenger
(197341, 0, 102434, 1, 1, 46879), -- Blacktalon Avenger
(188133, 0, 106199, 0.800000011920928955, 0, 46879), -- Narsysix
(186950, 1, 11686, 1, 1, 46879), -- Arbalest
(186950, 0, 15092, 1.399999976158142089, 0, 46879), -- Arbalest
(186933, 0, 107945, 1, 0, 46879), -- Wrathion
(191597, 7, 101835, 1, 1, 46879), -- Qalashi Crustshaper
(191597, 6, 101837, 1, 1, 46879), -- Qalashi Crustshaper
(191597, 5, 101836, 1, 1, 46879), -- Qalashi Crustshaper
(191597, 4, 101834, 1, 1, 46879), -- Qalashi Crustshaper
(191597, 3, 101841, 1, 1, 46879), -- Qalashi Crustshaper
(191597, 2, 101840, 1, 1, 46879), -- Qalashi Crustshaper
(191597, 1, 101839, 1, 1, 46879), -- Qalashi Crustshaper
(191597, 0, 101838, 1, 1, 46879), -- Qalashi Crustshaper
(183187, 0, 104574, 1, 1, 46879), -- Dreadsquall
(188158, 2, 107215, 0.899999976158142089, 0, 46879), -- Baskilan
(188158, 1, 107214, 1, 1, 46879), -- Baskilan
(188158, 0, 107533, 1, 1, 46879), -- Baskilan
(188155, 2, 107197, 1, 1, 46879), -- Osoria
(188155, 1, 107198, 1, 0, 46879), -- Osoria
(188155, 0, 107532, 1, 1, 46879), -- Osoria
(186915, 7, 102457, 1, 1, 46879), -- Qalashi Gatecrasher
(186915, 6, 102458, 1, 1, 46879), -- Qalashi Gatecrasher
(186915, 5, 102459, 1, 1, 46879), -- Qalashi Gatecrasher
(186915, 4, 102460, 1, 1, 46879), -- Qalashi Gatecrasher
(186915, 3, 102479, 1, 1, 46879), -- Qalashi Gatecrasher
(186915, 2, 102480, 1, 1, 46879), -- Qalashi Gatecrasher
(186915, 1, 102481, 1, 1, 46879), -- Qalashi Gatecrasher
(186915, 0, 102482, 1, 1, 46879), -- Qalashi Gatecrasher
(186904, 0, 104558, 1, 0, 46879), -- Sabellian
(197340, 8, 102427, 1, 1, 46879), -- Blacktalon Avenger
(197340, 7, 102428, 1, 1, 46879), -- Blacktalon Avenger
(197340, 6, 102429, 1, 1, 46879), -- Blacktalon Avenger
(197340, 5, 102430, 1, 1, 46879), -- Blacktalon Avenger
(197340, 4, 102445, 1, 1, 46879), -- Blacktalon Avenger
(197340, 3, 102431, 1, 1, 46879), -- Blacktalon Avenger
(197340, 2, 102432, 1, 1, 46879), -- Blacktalon Avenger
(197340, 1, 102433, 1, 1, 46879), -- Blacktalon Avenger
(197340, 0, 102434, 1, 1, 46879), -- Blacktalon Avenger
(188141, 0, 106199, 0.899999976158142089, 0, 46879), -- Malsiran
(186897, 8, 102427, 1, 1, 46879), -- Blacktalon Avenger
(186897, 7, 102428, 1, 1, 46879), -- Blacktalon Avenger
(186897, 6, 102429, 1, 1, 46879), -- Blacktalon Avenger
(186897, 5, 102430, 1, 1, 46879), -- Blacktalon Avenger
(186897, 4, 102445, 1, 1, 46879), -- Blacktalon Avenger
(186897, 3, 102431, 1, 1, 46879), -- Blacktalon Avenger
(186897, 2, 102432, 1, 1, 46879), -- Blacktalon Avenger
(186897, 1, 102433, 1, 1, 46879), -- Blacktalon Avenger
(186897, 0, 102434, 1, 1, 46879), -- Blacktalon Avenger
(189768, 7, 101829, 1, 1, 46879), -- Qalashi Flamelobber
(189768, 6, 101828, 1, 1, 46879), -- Qalashi Flamelobber
(189768, 5, 101827, 1, 1, 46879), -- Qalashi Flamelobber
(189768, 4, 101826, 1, 1, 46879), -- Qalashi Flamelobber
(189768, 3, 101833, 1, 1, 46879), -- Qalashi Flamelobber
(189768, 2, 101832, 1, 1, 46879), -- Qalashi Flamelobber
(189768, 1, 101831, 1, 1, 46879), -- Qalashi Flamelobber
(189768, 0, 101830, 1, 1, 46879), -- Qalashi Flamelobber
(186919, 7, 102197, 1, 1, 46879), -- Obsidian Soldier
(186919, 6, 102196, 1, 1, 46879), -- Obsidian Soldier
(186919, 5, 102195, 1, 1, 46879), -- Obsidian Soldier
(186919, 4, 102194, 1, 1, 46879), -- Obsidian Soldier
(186919, 3, 102201, 1, 1, 46879), -- Obsidian Soldier
(186919, 2, 102200, 1, 1, 46879), -- Obsidian Soldier
(186919, 1, 102199, 1, 1, 46879), -- Obsidian Soldier
(186919, 0, 102198, 1, 1, 46879), -- Obsidian Soldier
(186892, 7, 101807, 1, 1, 46879), -- Qalashi Necksnapper
(186892, 6, 101806, 1, 1, 46879), -- Qalashi Necksnapper
(186892, 5, 101805, 1, 1, 46879), -- Qalashi Necksnapper
(186892, 4, 101804, 1, 1, 46879), -- Qalashi Necksnapper
(186892, 3, 101811, 1, 1, 46879), -- Qalashi Necksnapper
(186892, 2, 101810, 1, 1, 46879), -- Qalashi Necksnapper
(186892, 1, 101809, 1, 1, 46879), -- Qalashi Necksnapper
(186892, 0, 101808, 1, 1, 46879), -- Qalashi Necksnapper
(187908, 7, 102466, 1, 1, 46879), -- Qalashi Scaleripper
(187908, 6, 102467, 1, 1, 46879), -- Qalashi Scaleripper
(187908, 5, 102468, 1, 1, 46879), -- Qalashi Scaleripper
(187908, 4, 102469, 1, 1, 46879), -- Qalashi Scaleripper
(187908, 3, 102483, 1, 1, 46879), -- Qalashi Scaleripper
(187908, 2, 102484, 1, 1, 46879), -- Qalashi Scaleripper
(187908, 1, 102485, 1, 1, 46879), -- Qalashi Scaleripper
(187908, 0, 102486, 1, 1, 46879), -- Qalashi Scaleripper
(187919, 0, 102452, 1, 1, 46879), -- Caldera Stomper
(187366, 1, 102449, 1.5, 1, 46879), -- Worldcarver Wurmling
(187366, 0, 109658, 1.5, 1, 46879), -- Worldcarver Wurmling
(189587, 0, 105718, 1.10000002384185791, 1, 46879), -- Fao the Relentless
(183306, 0, 102031, 1, 1, 46879), -- Scalecommander Emberthal
(186721, 1, 106051, 1.10000002384185791, 1, 46879), -- Destroyed Extracts
(186721, 0, 105879, 1, 1, 46879), -- Destroyed Extracts
(186681, 0, 107945, 1, 0, 46879), -- Wrathion
(196791, 0, 107919, 0.899999976158142089, 0, 46879), -- Kixandria
(189604, 0, 102387, 1, 1, 46879), -- Provisioner Ojito
(186451, 9, 102427, 1, 1, 46879), -- Blacktalon Avenger
(186451, 8, 102428, 1, 1, 46879), -- Blacktalon Avenger
(186451, 7, 102429, 1, 1, 46879), -- Blacktalon Avenger
(186451, 6, 102430, 1, 1, 46879), -- Blacktalon Avenger
(186451, 5, 102445, 1, 1, 46879), -- Blacktalon Avenger
(186451, 4, 102431, 1, 1, 46879), -- Blacktalon Avenger
(186451, 3, 102432, 1, 1, 46879), -- Blacktalon Avenger
(186451, 2, 102433, 1, 1, 46879), -- Blacktalon Avenger
(186451, 1, 102434, 1, 1, 46879), -- Blacktalon Avenger
(186451, 0, 102435, 1, 1, 46879), -- Blacktalon Avenger
(189643, 5, 102459, 1, 1, 46879), -- Qalashi Crustshaper
(189643, 4, 102496, 1, 1, 46879), -- Qalashi Crustshaper
(189643, 3, 101836, 1, 1, 46879), -- Qalashi Crustshaper
(189643, 2, 101834, 1, 1, 46879), -- Qalashi Crustshaper
(189643, 1, 101839, 1, 1, 46879), -- Qalashi Crustshaper
(189643, 0, 101838, 1, 1, 46879), -- Qalashi Crustshaper
(191525, 7, 102457, 1.10000002384185791, 1, 46879), -- Qalashi Wallcrasher
(191525, 6, 102458, 1.10000002384185791, 1, 46879), -- Qalashi Wallcrasher
(191525, 5, 102459, 1.10000002384185791, 1, 46879), -- Qalashi Wallcrasher
(191525, 4, 102460, 1.10000002384185791, 1, 46879), -- Qalashi Wallcrasher
(191525, 3, 102479, 1.10000002384185791, 1, 46879), -- Qalashi Wallcrasher
(191525, 2, 102480, 1.10000002384185791, 1, 46879), -- Qalashi Wallcrasher
(191525, 1, 102481, 1.10000002384185791, 1, 46879), -- Qalashi Wallcrasher
(191525, 0, 102482, 1.10000002384185791, 1, 46879), -- Qalashi Wallcrasher
(186272, 0, 102500, 1, 1, 46879), -- Risen Phoenix
(194915, 0, 27823, 1, 1, 46879), -- Invis Bunny
(194874, 0, 101513, 1, 1, 46879), -- Appetizing Ingot
(197016, 0, 11686, 1, 1, 46879), -- Fishing Net
(198767, 0, 106380, 1.049999952316284179, 1, 46879), -- Explorative Fisher
(187860, 0, 102624, 1, 1, 46879), -- Qalashi Magmammoth
(187602, 7, 102466, 1, 1, 46879), -- Qalashi Scaleripper
(187602, 6, 102467, 1, 1, 46879), -- Qalashi Scaleripper
(187602, 5, 102468, 1, 1, 46879), -- Qalashi Scaleripper
(187602, 4, 102469, 1, 1, 46879), -- Qalashi Scaleripper
(187602, 3, 102483, 1, 1, 46879), -- Qalashi Scaleripper
(187602, 2, 102484, 1, 1, 46879), -- Qalashi Scaleripper
(187602, 1, 102485, 1, 1, 46879), -- Qalashi Scaleripper
(187602, 0, 102486, 1, 1, 46879), -- Qalashi Scaleripper
(191876, 0, 101819, 0.899999976158142089, 1, 46879), -- Goruk Steelwall
(195127, 0, 11686, 1, 1, 46879), -- Invisible Bunny
(191940, 7, 101807, 1, 1, 46879), -- Qalashi Necksnapper
(191940, 6, 101806, 1, 1, 46879), -- Qalashi Necksnapper
(191940, 5, 101805, 1, 1, 46879), -- Qalashi Necksnapper
(191940, 4, 101804, 1, 1, 46879), -- Qalashi Necksnapper
(191940, 3, 101811, 1, 1, 46879), -- Qalashi Necksnapper
(191940, 2, 101810, 1, 1, 46879), -- Qalashi Necksnapper
(191940, 1, 101809, 1, 1, 46879), -- Qalashi Necksnapper
(191940, 0, 101808, 1, 1, 46879), -- Qalashi Necksnapper
(187949, 0, 104574, 1, 1, 46879), -- Ancient Dreadsquall
(195009, 0, 11686, 1, 1, 46879), -- Invisible Bunny
(183186, 7, 102461, 1, 1, 46879), -- Qalashi Wingrider
(183186, 6, 102462, 1, 1, 46879), -- Qalashi Wingrider
(183186, 5, 102464, 1, 1, 46879), -- Qalashi Wingrider
(183186, 4, 102465, 1, 1, 46879), -- Qalashi Wingrider
(183186, 3, 102495, 1, 1, 46879), -- Qalashi Wingrider
(183186, 2, 102496, 1, 1, 46879), -- Qalashi Wingrider
(183186, 1, 102497, 1, 1, 46879), -- Qalashi Wingrider
(183186, 0, 102498, 1, 1, 46879), -- Qalashi Wingrider
(196605, 1, 27823, 1, 1, 46879), -- Invis Bunny Template - Gigantic AOI
(196605, 0, 328, 1, 0, 46879), -- Invis Bunny Template - Gigantic AOI
(191476, 0, 101819, 0.899999976158142089, 1, 46879), -- Searing Flame Harchek
(191679, 5, 102606, 1, 1, 46879), -- Magmammoth Bull
(191679, 4, 102603, 1, 1, 46879), -- Magmammoth Bull
(191679, 3, 102605, 1, 1, 46879), -- Magmammoth Bull
(191679, 2, 102602, 1, 1, 46879), -- Magmammoth Bull
(191679, 1, 102607, 1, 1, 46879), -- Magmammoth Bull
(191679, 0, 102604, 1, 1, 46879), -- Magmammoth Bull
(186634, 8, 102387, 1, 1, 46879), -- Blacktalon Assassin
(186634, 7, 102386, 1, 1, 46879), -- Blacktalon Assassin
(186634, 6, 102385, 1, 1, 46879), -- Blacktalon Assassin
(186634, 5, 102384, 1, 1, 46879), -- Blacktalon Assassin
(186634, 4, 102382, 1, 1, 46879), -- Blacktalon Assassin
(186634, 3, 102381, 1, 1, 46879), -- Blacktalon Assassin
(186634, 2, 102380, 1, 1, 46879), -- Blacktalon Assassin
(186634, 1, 102370, 1, 1, 46879), -- Blacktalon Assassin
(186634, 0, 102377, 1, 1, 46879), -- Blacktalon Assassin
(191704, 0, 107592, 1, 1, 46879), -- Apex Proto-Dragon
(191479, 0, 103564, 1, 1, 46879), -- Charred Hornspike
(195001, 0, 11686, 1, 1, 46879), -- Invisible Bunny
(195160, 0, 102453, 1, 1, 46879), -- Igneous Wanderer
(195128, 0, 11686, 1, 1, 46879), -- Invisible Bunny
(193967, 0, 108351, 1, 1, 46879), -- Dragonbane Wingshredder
(186716, 1, 106050, 1.10000002384185791, 1, 46879), -- Molten Extracts
(186716, 0, 105875, 1, 1, 46879), -- Molten Extracts
(186483, 7, 101807, 1, 1, 46879), -- Qalashi Steelcrafter
(186483, 6, 101806, 1, 1, 46879), -- Qalashi Steelcrafter
(186483, 5, 101805, 1, 1, 46879), -- Qalashi Steelcrafter
(186483, 4, 101804, 1, 1, 46879), -- Qalashi Steelcrafter
(186483, 3, 101811, 1, 1, 46879), -- Qalashi Steelcrafter
(186483, 2, 101810, 1, 1, 46879), -- Qalashi Steelcrafter
(186483, 1, 101809, 1, 1, 46879), -- Qalashi Steelcrafter
(186483, 0, 101808, 1, 1, 46879), -- Qalashi Steelcrafter
(189557, 3, 106309, 1, 1, 46879), -- Qalashi Boltthrower
(189557, 2, 106308, 1, 1, 46879), -- Qalashi Boltthrower
(189557, 1, 106307, 1, 1, 46879), -- Qalashi Boltthrower
(189557, 0, 106306, 1, 1, 46879), -- Qalashi Boltthrower
(186732, 0, 105880, 1.5, 1, 46879), -- Djaradin Banner
(191524, 7, 102457, 1, 1, 46879), -- Qalashi Ironskin
(191524, 6, 102458, 1, 1, 46879), -- Qalashi Ironskin
(191524, 5, 102459, 1, 1, 46879), -- Qalashi Ironskin
(191524, 4, 102460, 1, 1, 46879), -- Qalashi Ironskin
(191524, 3, 102479, 1, 1, 46879), -- Qalashi Ironskin
(191524, 2, 102480, 1, 1, 46879), -- Qalashi Ironskin
(191524, 1, 102481, 1, 1, 46879), -- Qalashi Ironskin
(191524, 0, 102482, 1, 1, 46879), -- Qalashi Ironskin
(186638, 7, 101835, 1, 1, 46879), -- Qalashi Crustshaper
(186638, 6, 101837, 1, 1, 46879), -- Qalashi Crustshaper
(186638, 5, 101836, 1, 1, 46879), -- Qalashi Crustshaper
(186638, 4, 101834, 1, 1, 46879), -- Qalashi Crustshaper
(186638, 3, 101841, 1, 1, 46879), -- Qalashi Crustshaper
(186638, 2, 101840, 1, 1, 46879), -- Qalashi Crustshaper
(186638, 1, 101839, 1, 1, 46879), -- Qalashi Crustshaper
(186638, 0, 101838, 1, 1, 46879), -- Qalashi Crustshaper
(189610, 11, 102387, 1, 1, 46879), -- Blacktalon Assassin
(189610, 10, 102386, 1, 1, 46879), -- Blacktalon Assassin
(189610, 9, 102385, 1, 1, 46879), -- Blacktalon Assassin
(189610, 8, 102384, 1, 1, 46879), -- Blacktalon Assassin
(189610, 7, 102383, 1, 1, 46879), -- Blacktalon Assassin
(189610, 6, 102382, 1, 1, 46879), -- Blacktalon Assassin
(189610, 5, 102381, 1, 1, 46879), -- Blacktalon Assassin
(189610, 4, 102380, 1, 1, 46879), -- Blacktalon Assassin
(189610, 3, 102370, 1, 1, 46879), -- Blacktalon Assassin
(189610, 2, 102379, 1, 1, 46879), -- Blacktalon Assassin
(189610, 1, 102378, 1, 1, 46879), -- Blacktalon Assassin
(189610, 0, 102377, 1, 1, 46879), -- Blacktalon Assassin
(189581, 0, 102500, 1, 1, 46879), -- Lava Fledgling
(186239, 3, 106309, 1, 1, 46879), -- Qalashi Skullhauler
(186239, 2, 106308, 1, 1, 46879), -- Qalashi Skullhauler
(186239, 1, 106307, 1, 1, 46879), -- Qalashi Skullhauler
(186239, 0, 106306, 1, 1, 46879), -- Qalashi Skullhauler
(189942, 0, 107945, 1, 0, 46879), -- Wrathion
(186109, 7, 101807, 1, 1, 46879), -- Qalashi Necksnapper
(186109, 6, 101806, 1, 1, 46879), -- Qalashi Necksnapper
(186109, 5, 101805, 1, 1, 46879), -- Qalashi Necksnapper
(186109, 4, 101804, 1, 1, 46879), -- Qalashi Necksnapper
(186109, 3, 101811, 1, 1, 46879), -- Qalashi Necksnapper
(186109, 2, 101810, 1, 1, 46879), -- Qalashi Necksnapper
(186109, 1, 101809, 1, 1, 46879); -- Qalashi Necksnapper

INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(186109, 0, 101808, 1, 1, 46879), -- Qalashi Necksnapper
(186261, 0, 104039, 1, 1, 46879), -- Restless Lava
(181763, 0, 102500, 1, 1, 46879), -- Lava Phoenix
(186336, 0, 102505, 1, 1, 46879), -- Blazing Manifestation
(181875, 5, 102606, 1, 1, 46879), -- Olphis the Molten
(181875, 4, 102603, 1, 1, 46879), -- Olphis the Molten
(181875, 3, 102605, 1, 1, 46879), -- Olphis the Molten
(181875, 2, 102602, 1, 1, 46879), -- Olphis the Molten
(181875, 1, 102607, 1, 1, 46879), -- Olphis the Molten
(181875, 0, 102604, 1, 1, 46879), -- Olphis the Molten
(186509, 0, 102494, 1.10000002384185791, 1, 46879), -- Modak Flamespit
(186511, 0, 102480, 1, 1, 46879), -- Piercer Gigra
(191816, 0, 107669, 1, 1, 46879), -- Blacktalon Shadowclaw
(191835, 8, 102387, 1, 1, 46879), -- Blacktalon Scout
(191835, 7, 102386, 1, 1, 46879), -- Blacktalon Scout
(191835, 6, 102385, 1, 1, 46879), -- Blacktalon Scout
(191835, 5, 102384, 1, 1, 46879), -- Blacktalon Scout
(191835, 4, 102382, 1, 1, 46879), -- Blacktalon Scout
(191835, 3, 102381, 1, 1, 46879), -- Blacktalon Scout
(191835, 2, 102380, 1, 1, 46879), -- Blacktalon Scout
(191835, 1, 102370, 1, 1, 46879), -- Blacktalon Scout
(191835, 0, 102377, 1, 1, 46879), -- Blacktalon Scout
(198197, 0, 108018, 1, 1, 46879), -- Searskin Proto-Dragon
(187538, 0, 106458, 1, 1, 46879), -- Champion Ugi
(189503, 0, 102031, 1, 1, 46879), -- Scalecommander Emberthal
(186326, 0, 105716, 1.049999952316284179, 1, 46879), -- Blacktalon Strategist
(188444, 0, 102393, 1, 1, 46879), -- Do-Yeon Shadowrider
(186331, 0, 105718, 1.10000002384185791, 1, 46879), -- Fao the Relentless
(186324, 1, 102394, 1, 1, 46879), -- Blacktalon Schemer
(186324, 0, 102388, 1, 1, 46879), -- Blacktalon Schemer
(194836, 0, 56567, 1, 1, 46879), -- Grekka Anvilsmash
(192177, 0, 91278, 1.10000002384185791, 1, 46879), -- Filbin Gearknock
(192165, 0, 107711, 1, 1, 46879), -- Winnie Fingerspring
(186317, 0, 42784, 1, 1, 46879), -- Tong the Fixer
(192795, 0, 102031, 1, 1, 46879), -- Scalecommander Emberthal
(186430, 0, 105765, 1, 1, 46879), -- Horace "Scalding" Stern
(186314, 0, 51336, 1, 1, 46879), -- Right
(186312, 0, 51337, 1, 1, 46879), -- Left
(198879, 0, 90821, 1, 0.699999988079071044, 46879), -- Fingerspring Security
(188445, 0, 102381, 1, 1, 46879), -- Cireni
(186757, 0, 88960, 1.029999971389770507, 1, 46879), -- Hades Prescott
(186752, 0, 84653, 1.049999952316284179, 1, 46879), -- Firstmate Kaleson
(186454, 0, 105885, 0.949999988079071044, 1, 46879), -- Kora Fullsails
(186447, 0, 105779, 1, 1, 46879), -- Kaplak
(196995, 0, 102379, 1, 1, 46879), -- Talonstalker Gazi
(187466, 0, 102202, 1, 1, 46879), -- Archivist Edress
(186429, 0, 43633, 1, 1, 46879), -- Steelsage Gao
(198876, 7, 102286, 1, 1, 46879), -- Obsidian Protector
(198876, 6, 102287, 1, 1, 46879), -- Obsidian Protector
(198876, 5, 102288, 1, 1, 46879), -- Obsidian Protector
(198876, 4, 102289, 1, 1, 46879), -- Obsidian Protector
(198876, 3, 102282, 1, 1, 46879), -- Obsidian Protector
(198876, 2, 102283, 1, 1, 46879), -- Obsidian Protector
(198876, 1, 102284, 1, 1, 46879), -- Obsidian Protector
(198876, 0, 102285, 1, 1, 46879), -- Obsidian Protector
(190519, 0, 103519, 1, 1, 46879), -- Bronze Timekeeper
(186493, 0, 102286, 0.899999976158142089, 1, 46879), -- Forgemaster Bazentus
(186764, 0, 51484, 1, 0, 46879), -- Blacktalon Pack Beast
(189507, 0, 102390, 1, 1, 46879), -- Talonstalker Kavia
(187189, 11, 102387, 1, 1, 46879), -- Blacktalon Assassin
(187189, 10, 102386, 1, 1, 46879), -- Blacktalon Assassin
(187189, 9, 102385, 1, 1, 46879), -- Blacktalon Assassin
(187189, 8, 102384, 1, 1, 46879), -- Blacktalon Assassin
(187189, 7, 102383, 1, 1, 46879), -- Blacktalon Assassin
(187189, 6, 102382, 1, 1, 46879), -- Blacktalon Assassin
(187189, 5, 102381, 1, 1, 46879), -- Blacktalon Assassin
(187189, 4, 102380, 1, 1, 46879), -- Blacktalon Assassin
(187189, 3, 102370, 1, 1, 46879), -- Blacktalon Assassin
(187189, 2, 102379, 1, 1, 46879), -- Blacktalon Assassin
(187189, 1, 102378, 1, 1, 46879), -- Blacktalon Assassin
(187189, 0, 102377, 1, 1, 46879), -- Blacktalon Assassin
(191851, 0, 107669, 1, 1, 46879), -- Blacktalon Shadowclaw
(187187, 10, 102387, 1, 1, 46879), -- Blacktalon Avenger
(187187, 9, 102427, 1, 1, 46879), -- Blacktalon Avenger
(187187, 8, 102428, 1, 1, 46879), -- Blacktalon Avenger
(187187, 7, 102429, 1, 1, 46879), -- Blacktalon Avenger
(187187, 6, 102430, 1, 1, 46879), -- Blacktalon Avenger
(187187, 5, 102445, 1, 1, 46879), -- Blacktalon Avenger
(187187, 4, 102431, 1, 1, 46879), -- Blacktalon Avenger
(187187, 3, 102432, 1, 1, 46879), -- Blacktalon Avenger
(187187, 2, 102433, 1, 1, 46879), -- Blacktalon Avenger
(187187, 1, 102434, 1, 1, 46879), -- Blacktalon Avenger
(187187, 0, 102435, 1, 1, 46879), -- Blacktalon Avenger
(186452, 11, 102387, 1, 1, 46879), -- Blacktalon Assassin
(186452, 10, 102386, 1, 1, 46879), -- Blacktalon Assassin
(186452, 9, 102385, 1, 1, 46879), -- Blacktalon Assassin
(186452, 8, 102384, 1, 1, 46879), -- Blacktalon Assassin
(186452, 7, 102383, 1, 1, 46879), -- Blacktalon Assassin
(186452, 6, 102382, 1, 1, 46879), -- Blacktalon Assassin
(186452, 5, 102381, 1, 1, 46879), -- Blacktalon Assassin
(186452, 4, 102380, 1, 1, 46879), -- Blacktalon Assassin
(186452, 3, 102370, 1, 1, 46879), -- Blacktalon Assassin
(186452, 2, 102379, 1, 1, 46879), -- Blacktalon Assassin
(186452, 1, 102378, 1, 1, 46879), -- Blacktalon Assassin
(186452, 0, 102377, 1, 1, 46879), -- Blacktalon Assassin
(186274, 2, 107055, 1, 0, 46879), -- Wrathion
(186274, 1, 107945, 1, 0, 46879), -- Wrathion
(186274, 0, 107146, 1, 1, 46879), -- Wrathion
(191823, 0, 104140, 1, 1, 46879), -- Vicious Proto-Drake
(191696, 2, 103557, 1, 1, 46879), -- Mature Basilisk
(191696, 1, 103558, 1, 1, 46879), -- Mature Basilisk
(191696, 0, 103559, 1, 1, 46879), -- Mature Basilisk
(191697, 2, 103587, 1, 1, 46879), -- Ancient Basilisk
(191697, 1, 103588, 1, 1, 46879), -- Ancient Basilisk
(191697, 0, 103586, 1, 1, 46879), -- Ancient Basilisk
(191694, 2, 103560, 1, 1, 46879), -- Young Basilisk
(191694, 1, 103561, 1, 1, 46879), -- Young Basilisk
(191694, 0, 103562, 1, 1, 46879), -- Young Basilisk
(191042, 0, 107326, 1.049999952316284179, 1, 46879), -- Snitch Eagersnipe
(191021, 0, 107322, 1.049999952316284179, 1, 46879), -- Shiv Fizzlescheme
(191014, 0, 107320, 1, 1, 46879), -- Becca Black
(191044, 0, 107331, 1.049999952316284179, 1, 46879), -- Whimsy Cogtattler
(191043, 0, 107327, 1.049999952316284179, 1, 46879), -- Itchy Sparkwobble
(191039, 0, 107325, 1.049999952316284179, 1, 46879), -- Snoozy Clickclock
(191038, 0, 107323, 1.049999952316284179, 1, 46879), -- Cranky Wrenchriddle
(191015, 0, 107321, 1.049999952316284179, 1, 46879), -- Maddoc Stitchneedle
(191857, 4, 104676, 0.800000011920928955, 1, 46879), -- Crested Poolwader
(191857, 3, 104677, 0.800000011920928955, 1, 46879), -- Crested Poolwader
(191857, 2, 104678, 0.800000011920928955, 1, 46879), -- Crested Poolwader
(191857, 1, 104679, 0.800000011920928955, 1, 46879), -- Crested Poolwader
(191857, 0, 104680, 0.800000011920928955, 1, 46879), -- Crested Poolwader
(192185, 0, 104166, 1, 1, 46879), -- Kakapo
(186763, 0, 44836, 1, 0, 46879), -- Blacktalon Pack Goat
(186765, 11, 102387, 1, 1, 46879), -- Blacktalon Provisioner
(186765, 10, 102386, 1, 1, 46879), -- Blacktalon Provisioner
(186765, 9, 102385, 1, 1, 46879), -- Blacktalon Provisioner
(186765, 8, 102384, 1, 1, 46879), -- Blacktalon Provisioner
(186765, 7, 102383, 1, 1, 46879), -- Blacktalon Provisioner
(186765, 6, 102382, 1, 1, 46879), -- Blacktalon Provisioner
(186765, 5, 102381, 1, 1, 46879), -- Blacktalon Provisioner
(186765, 4, 102380, 1, 1, 46879), -- Blacktalon Provisioner
(186765, 3, 102370, 1, 1, 46879), -- Blacktalon Provisioner
(186765, 2, 102379, 1, 1, 46879), -- Blacktalon Provisioner
(186765, 1, 102378, 1, 1, 46879), -- Blacktalon Provisioner
(186765, 0, 102377, 1, 1, 46879), -- Blacktalon Provisioner
(186241, 1, 11686, 1, 1, 46879), -- Generic - Empty Bunny
(186241, 0, 15092, 1.399999976158142089, 0, 46879), -- Generic - Empty Bunny
(189461, 7, 102197, 1, 1, 46879), -- Obsidian Watcher
(189461, 6, 102196, 1, 1, 46879), -- Obsidian Watcher
(189461, 5, 102195, 1, 1, 46879), -- Obsidian Watcher
(189461, 4, 102194, 1, 1, 46879), -- Obsidian Watcher
(189461, 3, 102201, 1, 1, 46879), -- Obsidian Watcher
(189461, 2, 102200, 1, 1, 46879), -- Obsidian Watcher
(189461, 1, 102199, 1, 1, 46879), -- Obsidian Watcher
(189461, 0, 102198, 1, 1, 46879), -- Obsidian Watcher
(181016, 7, 102197, 1, 1, 46879), -- Blacktalon Sentry
(181016, 6, 102196, 1, 1, 46879), -- Blacktalon Sentry
(181016, 5, 102195, 1, 1, 46879), -- Blacktalon Sentry
(181016, 4, 102194, 1, 1, 46879), -- Blacktalon Sentry
(181016, 3, 102201, 1, 1, 46879), -- Blacktalon Sentry
(181016, 2, 102200, 1, 1, 46879), -- Blacktalon Sentry
(181016, 1, 102199, 1, 1, 46879), -- Blacktalon Sentry
(181016, 0, 102198, 1, 1, 46879), -- Blacktalon Sentry
(189713, 8, 102427, 1, 1, 46879), -- Blacktalon Avenger
(189713, 7, 102428, 1, 1, 46879), -- Blacktalon Avenger
(189713, 6, 102429, 1, 1, 46879), -- Blacktalon Avenger
(189713, 5, 102430, 1, 1, 46879), -- Blacktalon Avenger
(189713, 4, 102445, 1, 1, 46879), -- Blacktalon Avenger
(189713, 3, 102431, 1, 1, 46879), -- Blacktalon Avenger
(189713, 2, 102432, 1, 1, 46879), -- Blacktalon Avenger
(189713, 1, 102433, 1, 1, 46879), -- Blacktalon Avenger
(189713, 0, 102434, 1, 1, 46879), -- Blacktalon Avenger
(191396, 9, 107438, 1, 1, 46879), -- Wild Proto-Drake
(191396, 8, 107437, 1, 1, 46879), -- Wild Proto-Drake
(191396, 7, 107436, 1, 1, 46879), -- Wild Proto-Drake
(191396, 6, 107435, 1, 1, 46879), -- Wild Proto-Drake
(191396, 5, 107434, 1, 1, 46879), -- Wild Proto-Drake
(191396, 4, 107433, 1, 1, 46879), -- Wild Proto-Drake
(191396, 3, 107432, 1, 1, 46879), -- Wild Proto-Drake
(191396, 2, 107431, 1, 1, 46879), -- Wild Proto-Drake
(191396, 1, 107430, 1, 1, 46879), -- Wild Proto-Drake
(191396, 0, 107429, 1, 1, 46879), -- Wild Proto-Drake
(191395, 9, 107187, 1, 1, 46879), -- Wild Proto-Drake
(191395, 8, 107186, 1, 1, 46879), -- Wild Proto-Drake
(191395, 7, 107185, 1, 1, 46879), -- Wild Proto-Drake
(191395, 6, 107184, 1, 1, 46879), -- Wild Proto-Drake
(191395, 5, 107183, 1, 1, 46879), -- Wild Proto-Drake
(191395, 4, 107182, 1, 1, 46879), -- Wild Proto-Drake
(191395, 3, 107181, 1, 1, 46879), -- Wild Proto-Drake
(191395, 2, 107180, 1, 1, 46879), -- Wild Proto-Drake
(191395, 1, 107179, 1, 1, 46879), -- Wild Proto-Drake
(191395, 0, 104140, 1, 1, 46879), -- Wild Proto-Drake
(191827, 4, 104075, 1, 1, 46879), -- Thunder Lizard
(191827, 3, 104074, 1, 1, 46879), -- Thunder Lizard
(191827, 2, 104072, 1, 1, 46879), -- Thunder Lizard
(191827, 1, 104066, 1, 1, 46879), -- Thunder Lizard
(191827, 0, 104073, 1, 1, 46879), -- Thunder Lizard
(198621, 1, 23767, 1, 1, 46879), -- Tracker Dragon Glyph
(198621, 0, 21955, 1, 0, 46879), -- Tracker Dragon Glyph
(194709, 1, 23767, 1, 1, 46879), -- Dragon Glyph
(194709, 0, 21955, 1, 0, 46879), -- Dragon Glyph
(191703, 0, 107434, 1, 1, 46879), -- Hungry Proto-Drake
(188724, 0, 47955, 1, 1, 46879), -- Optimistic Guppy
(194093, 9, 107438, 1, 1, 46879), -- Wild Proto-Drake
(194093, 8, 107437, 1, 1, 46879), -- Wild Proto-Drake
(194093, 7, 107436, 1, 1, 46879), -- Wild Proto-Drake
(194093, 6, 107435, 1, 1, 46879), -- Wild Proto-Drake
(194093, 5, 107434, 1, 1, 46879), -- Wild Proto-Drake
(194093, 4, 107433, 1, 1, 46879), -- Wild Proto-Drake
(194093, 3, 107432, 1, 1, 46879), -- Wild Proto-Drake
(194093, 2, 107431, 1, 1, 46879), -- Wild Proto-Drake
(194093, 1, 107430, 1, 1, 46879), -- Wild Proto-Drake
(194093, 0, 107429, 1, 1, 46879), -- Wild Proto-Drake
(191805, 4, 107641, 1, 1, 46879), -- Wild Proto-Drake
(191805, 3, 107640, 1, 1, 46879), -- Wild Proto-Drake
(191805, 2, 107647, 1, 1, 46879), -- Wild Proto-Drake
(191805, 1, 107643, 1, 1, 46879), -- Wild Proto-Drake
(191805, 0, 107645, 1, 1, 46879), -- Wild Proto-Drake
(191284, 0, 107441, 1, 1, 46879), -- Optimistic Whelp
(191687, 6, 103547, 1, 1, 46879), -- Riverbeast Elder
(191687, 5, 103546, 1, 1, 46879), -- Riverbeast Elder
(191687, 4, 103545, 1, 1, 46879), -- Riverbeast Elder
(191687, 3, 103544, 1, 1, 46879), -- Riverbeast Elder
(191687, 2, 103543, 1, 1, 46879), -- Riverbeast Elder
(191687, 1, 103542, 1, 1, 46879), -- Riverbeast Elder
(191687, 0, 103541, 1, 1, 46879), -- Riverbeast Elder
(191896, 2, 107055, 1, 0, 46879), -- Wrathion
(191896, 1, 107945, 1, 0, 46879), -- Wrathion
(191896, 0, 107146, 1, 1, 46879), -- Wrathion
(187278, 1, 108032, 1, 0, 46879), -- Majordomo Selistra
(187278, 0, 107040, 1, 1, 46879), -- Majordomo Selistra
(194087, 3, 107385, 1, 1, 46879), -- Wild Proto-Drake
(194087, 2, 107380, 1, 1, 46879), -- Wild Proto-Drake
(194087, 1, 107386, 1, 1, 46879), -- Wild Proto-Drake
(194087, 0, 107381, 1, 1, 46879), -- Wild Proto-Drake
(198329, 3, 107386, 1, 1, 46879), -- Wild Proto-Dragon
(198329, 2, 107381, 1, 1, 46879), -- Wild Proto-Dragon
(198329, 1, 107384, 1, 1, 46879), -- Wild Proto-Dragon
(198329, 0, 107377, 1, 1, 46879), -- Wild Proto-Dragon
(194444, 18, 107438, 1, 1, 46879), -- Wild Proto-Drake
(194444, 17, 107437, 1, 1, 46879), -- Wild Proto-Drake
(194444, 16, 107436, 1, 1, 46879), -- Wild Proto-Drake
(194444, 15, 107435, 1, 1, 46879), -- Wild Proto-Drake
(194444, 14, 107434, 1, 1, 46879), -- Wild Proto-Drake
(194444, 13, 107433, 1, 1, 46879), -- Wild Proto-Drake
(194444, 12, 107432, 1, 1, 46879), -- Wild Proto-Drake
(194444, 11, 107431, 1, 1, 46879), -- Wild Proto-Drake
(194444, 10, 107430, 1, 1, 46879), -- Wild Proto-Drake
(194444, 9, 107429, 1, 1, 46879), -- Wild Proto-Drake
(194444, 8, 107609, 1, 1, 46879), -- Wild Proto-Drake
(194444, 7, 107616, 1, 1, 46879), -- Wild Proto-Drake
(194444, 6, 107615, 1, 1, 46879), -- Wild Proto-Drake
(194444, 5, 107614, 1, 1, 46879), -- Wild Proto-Drake
(194444, 4, 107613, 1, 1, 46879), -- Wild Proto-Drake
(194444, 3, 107612, 1, 1, 46879), -- Wild Proto-Drake
(194444, 2, 107611, 1, 1, 46879), -- Wild Proto-Drake
(194444, 1, 107610, 1, 1, 46879), -- Wild Proto-Drake
(194444, 0, 107618, 1, 1, 46879), -- Wild Proto-Drake
(191684, 6, 103554, 1, 1, 46879), -- Riverbeast Calf
(191684, 5, 103553, 1, 1, 46879); -- Riverbeast Calf

INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(191684, 4, 103552, 1, 1, 46879), -- Riverbeast Calf
(191684, 3, 103551, 1, 1, 46879), -- Riverbeast Calf
(191684, 2, 103550, 1, 1, 46879), -- Riverbeast Calf
(191684, 1, 103549, 1, 1, 46879), -- Riverbeast Calf
(191684, 0, 103548, 1, 1, 46879), -- Riverbeast Calf
(187419, 0, 102700, 0.699999988079071044, 1, 46879), -- Firellon
(187115, 1, 92146, 1, 0, 46879), -- Alexstrasza the Life-Binder
(187115, 0, 28227, 1, 1, 46879), -- Alexstrasza the Life-Binder
(194084, 9, 107438, 1, 1, 46879), -- Wild Proto-Drake
(194084, 8, 107437, 1, 1, 46879), -- Wild Proto-Drake
(194084, 7, 107436, 1, 1, 46879), -- Wild Proto-Drake
(194084, 6, 107435, 1, 1, 46879), -- Wild Proto-Drake
(194084, 5, 107434, 1, 1, 46879), -- Wild Proto-Drake
(194084, 4, 107433, 1, 1, 46879), -- Wild Proto-Drake
(194084, 3, 107432, 1, 1, 46879), -- Wild Proto-Drake
(194084, 2, 107431, 1, 1, 46879), -- Wild Proto-Drake
(194084, 1, 107430, 1, 1, 46879), -- Wild Proto-Drake
(194084, 0, 107429, 1, 1, 46879), -- Wild Proto-Drake
(194080, 3, 107385, 1, 1, 46879), -- Wild Proto-Drake
(194080, 2, 107380, 1, 1, 46879), -- Wild Proto-Drake
(194080, 1, 107386, 1, 1, 46879), -- Wild Proto-Drake
(194080, 0, 107381, 1, 1, 46879), -- Wild Proto-Drake
(188908, 0, 110347, 1, 1, 46879), -- Rimblat Earthshatter
(194081, 4, 107647, 1, 1, 46879), -- Wild Proto-Drake
(194081, 3, 107646, 1, 1, 46879), -- Wild Proto-Drake
(194081, 2, 107642, 1, 1, 46879), -- Wild Proto-Drake
(194081, 1, 107644, 1, 1, 46879), -- Wild Proto-Drake
(194081, 0, 107643, 1, 1, 46879), -- Wild Proto-Drake
(193623, 4, 104663, 1, 1, 46879), -- Tiny Salamanther
(193623, 3, 104667, 1, 1, 46879), -- Tiny Salamanther
(193623, 2, 104666, 1, 1, 46879), -- Tiny Salamanther
(193623, 1, 104665, 1, 1, 46879), -- Tiny Salamanther
(193623, 0, 104664, 1, 1, 46879), -- Tiny Salamanther
(191825, 4, 104079, 1, 1, 46879), -- Thunder Lizard Alpha
(191825, 3, 104078, 1, 1, 46879), -- Thunder Lizard Alpha
(191825, 2, 104077, 1, 1, 46879), -- Thunder Lizard Alpha
(191825, 1, 104076, 1, 1, 46879), -- Thunder Lizard Alpha
(191825, 0, 104065, 1, 1, 46879), -- Thunder Lizard Alpha
(191702, 1, 107591, 1, 1, 46879), -- Expedition Supplies
(191702, 0, 107590, 1, 0, 46879), -- Expedition Supplies
(191701, 1, 107589, 1, 1, 46879), -- Pristy Quickcharge
(191701, 0, 90826, 1, 0, 46879), -- Pristy Quickcharge
(191700, 1, 107588, 1, 1, 46879), -- Flip Quickcharge
(191700, 0, 90825, 1, 0, 46879), -- Flip Quickcharge
(191699, 0, 107586, 1, 1, 46879), -- Enchanter Vevesi
(191698, 0, 107585, 1, 1, 46879), -- Hauler Bennet
(196017, 6, 103540, 1, 1, 46879), -- Pudgy Riverbeast
(196017, 5, 103539, 1, 1, 46879), -- Pudgy Riverbeast
(196017, 4, 103538, 1, 1, 46879), -- Pudgy Riverbeast
(196017, 3, 103537, 1, 1, 46879), -- Pudgy Riverbeast
(196017, 2, 103536, 1, 1, 46879), -- Pudgy Riverbeast
(196017, 1, 103535, 1, 1, 46879), -- Pudgy Riverbeast
(196017, 0, 103534, 1, 1, 46879), -- Pudgy Riverbeast
(191373, 2, 102506, 1, 1, 46879), -- Primal Rumbler
(191373, 1, 102507, 1, 1, 46879), -- Primal Rumbler
(191373, 0, 102508, 1, 1, 46879), -- Primal Rumbler
(198632, 1, 23767, 1, 1, 46879), -- Tracker Dragon Glyph
(198632, 0, 21955, 1, 0, 46879), -- Tracker Dragon Glyph
(198457, 1, 23767, 1, 1, 46879), -- Dragon Glyph
(198457, 0, 21955, 1, 0, 46879), -- Dragon Glyph
(191895, 0, 107040, 1, 1, 46879), -- Majordomo Selistra
(190204, 7, 102950, 1, 1, 46879), -- Tempest Veteran
(190204, 6, 102948, 1, 1, 46879), -- Tempest Veteran
(190204, 5, 102947, 1, 1, 46879), -- Tempest Veteran
(190204, 4, 102946, 1, 1, 46879), -- Tempest Veteran
(190204, 3, 102945, 1, 1, 46879), -- Tempest Veteran
(190204, 2, 102944, 1, 1, 46879), -- Tempest Veteran
(190204, 1, 102943, 1, 1, 46879), -- Tempest Veteran
(190204, 0, 102942, 1, 1, 46879), -- Tempest Veteran
(190149, 0, 107084, 1, 1, 46879), -- Azure Egg
(190130, 7, 102903, 1, 1, 46879), -- Winter Caller
(190130, 6, 102902, 1, 1, 46879), -- Winter Caller
(190130, 5, 102901, 1, 1, 46879), -- Winter Caller
(190130, 4, 102900, 1, 1, 46879), -- Winter Caller
(190130, 3, 102899, 1, 1, 46879), -- Winter Caller
(190130, 2, 102898, 1, 1, 46879), -- Winter Caller
(190130, 1, 102897, 1, 1, 46879), -- Winter Caller
(190130, 0, 102896, 1, 1, 46879), -- Winter Caller
(190129, 7, 102980, 1, 1, 46879), -- Winter Conqueror
(190129, 6, 102979, 1, 1, 46879), -- Winter Conqueror
(190129, 5, 102978, 1, 1, 46879), -- Winter Conqueror
(190129, 4, 102977, 1, 1, 46879), -- Winter Conqueror
(190129, 3, 102976, 1, 1, 46879), -- Winter Conqueror
(190129, 2, 102975, 1, 1, 46879), -- Winter Conqueror
(190129, 1, 102974, 1, 1, 46879), -- Winter Conqueror
(190129, 0, 102973, 1, 1, 46879), -- Winter Conqueror
(187174, 7, 102950, 1, 1, 46879), -- Galestrike Primalist
(187174, 6, 102948, 1, 1, 46879), -- Galestrike Primalist
(187174, 5, 102947, 1, 1, 46879), -- Galestrike Primalist
(187174, 4, 102946, 1, 1, 46879), -- Galestrike Primalist
(187174, 3, 102945, 1, 1, 46879), -- Galestrike Primalist
(187174, 2, 102944, 1, 1, 46879), -- Galestrike Primalist
(187174, 1, 102943, 1, 1, 46879), -- Galestrike Primalist
(187174, 0, 102942, 1, 1, 46879), -- Galestrike Primalist
(190124, 0, 107078, 1, 1, 46879), -- Emerald Egg
(188447, 0, 107575, 1, 1, 46879), -- Jadzigeth
(187173, 11, 107045, 1, 1, 46879), -- Earthshatter Primalist
(187173, 10, 107046, 1, 1, 46879), -- Earthshatter Primalist
(187173, 9, 107047, 1, 1, 46879), -- Earthshatter Primalist
(187173, 8, 107048, 1, 1, 46879), -- Earthshatter Primalist
(187173, 7, 102960, 1, 1, 46879), -- Earthshatter Primalist
(187173, 6, 102959, 1, 1, 46879), -- Earthshatter Primalist
(187173, 5, 102958, 1, 1, 46879), -- Earthshatter Primalist
(187173, 4, 102957, 1, 1, 46879), -- Earthshatter Primalist
(187173, 3, 102956, 1, 1, 46879), -- Earthshatter Primalist
(187173, 2, 102955, 1, 1, 46879), -- Earthshatter Primalist
(187173, 1, 102954, 1, 1, 46879), -- Earthshatter Primalist
(187173, 0, 102953, 1, 1, 46879), -- Earthshatter Primalist
(187172, 7, 102885, 1, 1, 46879), -- Rumbling Primalist
(187172, 6, 102884, 1, 1, 46879), -- Rumbling Primalist
(187172, 5, 102883, 1, 1, 46879), -- Rumbling Primalist
(187172, 4, 102882, 1, 1, 46879), -- Rumbling Primalist
(187172, 3, 102881, 1, 1, 46879), -- Rumbling Primalist
(187172, 2, 102880, 1, 1, 46879), -- Rumbling Primalist
(187172, 1, 102879, 1, 1, 46879), -- Rumbling Primalist
(187172, 0, 102878, 1, 1, 46879), -- Rumbling Primalist
(191897, 0, 107040, 1, 1, 46879), -- Majordomo Selistra
(190127, 0, 104556, 1, 1, 46879), -- Ruby Egg
(190066, 7, 102903, 1, 1, 46879), -- Water Primalist
(190066, 6, 102902, 1, 1, 46879), -- Water Primalist
(190066, 5, 102901, 1, 1, 46879), -- Water Primalist
(190066, 4, 102900, 1, 1, 46879), -- Water Primalist
(190066, 3, 102899, 1, 1, 46879), -- Water Primalist
(190066, 2, 102898, 1, 1, 46879), -- Water Primalist
(190066, 1, 102897, 1, 1, 46879), -- Water Primalist
(190066, 0, 102896, 1, 1, 46879), -- Water Primalist
(190065, 0, 106722, 1, 1, 46879), -- Unruly Whelp
(187209, 0, 102923, 1.5, 1, 46879), -- Klozicc the Ascended
(187203, 0, 79802, 1, 1, 46879), -- Frozen Revenant
(187088, 7, 102885, 1, 1, 46879), -- Rumbling Primalist
(187088, 6, 102884, 1, 1, 46879), -- Rumbling Primalist
(187088, 5, 102883, 1, 1, 46879), -- Rumbling Primalist
(187088, 4, 102882, 1, 1, 46879), -- Rumbling Primalist
(187088, 3, 102881, 1, 1, 46879), -- Rumbling Primalist
(187088, 2, 102880, 1, 1, 46879), -- Rumbling Primalist
(187088, 1, 102879, 1, 1, 46879), -- Rumbling Primalist
(187088, 0, 102878, 1, 1, 46879), -- Rumbling Primalist
(187085, 7, 102950, 1, 1, 46879), -- Galestrike Primalist
(187085, 6, 102948, 1, 1, 46879), -- Galestrike Primalist
(187085, 5, 102947, 1, 1, 46879), -- Galestrike Primalist
(187085, 4, 102946, 1, 1, 46879), -- Galestrike Primalist
(187085, 3, 102945, 1, 1, 46879), -- Galestrike Primalist
(187085, 2, 102944, 1, 1, 46879), -- Galestrike Primalist
(187085, 1, 102943, 1, 1, 46879), -- Galestrike Primalist
(187085, 0, 102942, 1, 1, 46879), -- Galestrike Primalist
(187212, 2, 109676, 1, 1, 46879), -- Rumbling Proto-Dragon
(187212, 1, 109677, 1, 1, 46879), -- Rumbling Proto-Dragon
(187212, 0, 103250, 1, 1, 46879), -- Rumbling Proto-Dragon
(187175, 7, 102875, 1, 1, 46879), -- Galestrike Primalist
(187175, 6, 102874, 1, 1, 46879), -- Galestrike Primalist
(187175, 5, 102873, 1, 1, 46879), -- Galestrike Primalist
(187175, 4, 102872, 1, 1, 46879), -- Galestrike Primalist
(187175, 3, 102871, 1, 1, 46879), -- Galestrike Primalist
(187175, 2, 102870, 1, 1, 46879), -- Galestrike Primalist
(187175, 1, 102869, 1, 1, 46879), -- Galestrike Primalist
(187175, 0, 102868, 1, 1, 46879), -- Galestrike Primalist
(190131, 0, 107079, 1, 1, 46879), -- Bronze Egg
(191849, 0, 103255, 1, 1, 46879), -- Raszageth
(190903, 0, 92146, 1, 1, 46879), -- Alexstrasza the Life-Binder
(190208, 11, 107045, 1, 1, 46879), -- Rockslide Rider
(190208, 10, 107046, 1, 1, 46879), -- Rockslide Rider
(190208, 9, 107047, 1, 1, 46879), -- Rockslide Rider
(190208, 8, 107048, 1, 1, 46879), -- Rockslide Rider
(190208, 7, 102960, 1, 1, 46879), -- Rockslide Rider
(190208, 6, 102959, 1, 1, 46879), -- Rockslide Rider
(190208, 5, 102958, 1, 1, 46879), -- Rockslide Rider
(190208, 4, 102957, 1, 1, 46879), -- Rockslide Rider
(190208, 3, 102956, 1, 1, 46879), -- Rockslide Rider
(190208, 2, 102955, 1, 1, 46879), -- Rockslide Rider
(190208, 1, 102954, 1, 1, 46879), -- Rockslide Rider
(190208, 0, 102953, 1, 1, 46879), -- Rockslide Rider
(187204, 5, 102912, 1, 1, 46879), -- Grounded Primalist
(187204, 4, 102913, 1, 1, 46879), -- Grounded Primalist
(187204, 3, 102914, 1, 1, 46879), -- Grounded Primalist
(187204, 2, 102915, 1, 1, 46879), -- Grounded Primalist
(187204, 1, 102916, 1, 1, 46879), -- Grounded Primalist
(187204, 0, 102917, 1, 1, 46879), -- Grounded Primalist
(190061, 0, 103249, 1, 1, 46879), -- Galestrike Proto-Dragon
(190485, 0, 108318, 1, 1, 46879), -- Erkhart Stormvein
(190484, 0, 107137, 1, 1, 46879), -- Kyrakka
(196376, 0, 69610, 1, 1, 46879), -- Thellara
(194829, 0, 56290, 1, 1, 46879), -- Grigori Vialtry
(187211, 2, 109673, 1, 1, 46879), -- Galestrike Proto-Dragon
(187211, 1, 103249, 1, 1, 46879), -- Galestrike Proto-Dragon
(187211, 0, 109674, 1, 1, 46879), -- Galestrike Proto-Dragon
(191867, 0, 107793, 0.5, 1, 46879), -- Summoned Icestorm
(187078, 1, 107849, 1, 1, 46879), -- Enraged Shards
(187078, 0, 102580, 1, 1, 46879), -- Enraged Shards
(193218, 1, 27823, 3, 1, 46879), -- Storm Target [DNT]
(193218, 0, 328, 1, 0, 46879), -- Storm Target [DNT]
(192058, 0, 108322, 1, 1, 46879), -- Igneoid
(187129, 1, 108032, 1, 0, 46879), -- Majordomo Selistra
(187129, 0, 107040, 1, 1, 46879), -- Majordomo Selistra
(196811, 1, 105247, 1, 1, 46879), -- Ruby Life Pools
(196811, 0, 101845, 1, 0, 46879), -- Ruby Life Pools
(187108, 0, 109751, 1, 1, 46879), -- Mature Slasher
(187107, 0, 107701, 1, 1, 46879), -- Life Pools Stalwart
(187090, 2, 108308, 1, 1, 46879), -- Enraged Cliff
(187090, 1, 108306, 1, 1, 46879), -- Enraged Cliff
(187090, 0, 108307, 1, 1, 46879), -- Enraged Cliff
(187083, 2, 106521, 1, 1, 46879), -- Primal Avalanche
(187083, 1, 106523, 1, 1, 46879), -- Primal Avalanche
(187083, 0, 106525, 1, 1, 46879), -- Primal Avalanche
(192050, 0, 108315, 1, 1, 46879), -- Snowlemental
(190252, 0, 106938, 1, 1, 46879), -- Xitostrasz
(187145, 0, 102681, 1, 1, 46879), -- Kildrumeh
(187119, 0, 107112, 1, 1, 46879), -- Commander Lethanak
(187117, 7, 102730, 1, 1, 46879), -- Ruby Culler
(187117, 6, 102731, 1, 1, 46879), -- Ruby Culler
(187117, 5, 102732, 1, 1, 46879), -- Ruby Culler
(187117, 4, 102733, 1, 1, 46879), -- Ruby Culler
(187117, 3, 102738, 1, 1, 46879), -- Ruby Culler
(187117, 2, 102739, 1, 1, 46879), -- Ruby Culler
(187117, 1, 102740, 1, 1, 46879), -- Ruby Culler
(187117, 0, 102741, 1, 1, 46879), -- Ruby Culler
(187105, 7, 107496, 1, 1, 46879), -- Life Pools Crasher
(187105, 6, 107495, 1, 1, 46879), -- Life Pools Crasher
(187105, 5, 107494, 1, 1, 46879), -- Life Pools Crasher
(187105, 4, 107493, 1, 1, 46879), -- Life Pools Crasher
(187105, 3, 107492, 1, 1, 46879), -- Life Pools Crasher
(187105, 2, 107491, 1, 1, 46879), -- Life Pools Crasher
(187105, 1, 107490, 1, 1, 46879), -- Life Pools Crasher
(187105, 0, 107487, 1, 1, 46879), -- Life Pools Crasher
(187101, 7, 102674, 1, 1, 46879), -- Ruby Lifeguardian
(187101, 6, 102675, 1, 1, 46879), -- Ruby Lifeguardian
(187101, 5, 102676, 1, 1, 46879), -- Ruby Lifeguardian
(187101, 4, 102677, 1, 1, 46879), -- Ruby Lifeguardian
(187101, 3, 102690, 1, 1, 46879), -- Ruby Lifeguardian
(187101, 2, 102691, 1, 1, 46879), -- Ruby Lifeguardian
(187101, 1, 102692, 1, 1, 46879), -- Ruby Lifeguardian
(187101, 0, 102693, 1, 1, 46879), -- Ruby Lifeguardian
(187097, 7, 102678, 1, 1, 46879), -- Ruby Watcher
(187097, 6, 102679, 1, 1, 46879), -- Ruby Watcher
(187097, 5, 102680, 1, 1, 46879), -- Ruby Watcher
(187097, 4, 102681, 1, 1, 46879), -- Ruby Watcher
(187097, 3, 102694, 1, 1, 46879), -- Ruby Watcher
(187097, 2, 102695, 1, 1, 46879), -- Ruby Watcher
(187097, 1, 102696, 1, 1, 46879), -- Ruby Watcher
(187097, 0, 102697, 1, 1, 46879), -- Ruby Watcher
(187096, 7, 102682, 1, 1, 46879), -- Ruby Searer
(187096, 6, 102683, 1, 1, 46879), -- Ruby Searer
(187096, 5, 102684, 1, 1, 46879), -- Ruby Searer
(187096, 4, 102685, 1, 1, 46879), -- Ruby Searer
(187096, 3, 102698, 1, 1, 46879), -- Ruby Searer
(187096, 2, 102699, 1, 1, 46879), -- Ruby Searer
(187096, 1, 102700, 1, 1, 46879), -- Ruby Searer
(187096, 0, 102701, 1, 1, 46879), -- Ruby Searer
(187082, 1, 102507, 1, 1, 46879), -- Primal Avalanche
(187082, 0, 102508, 1, 1, 46879), -- Primal Avalanche
(187079, 1, 102584, 1, 1, 46879); -- Convoked Tremor

INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(187079, 0, 107484, 1, 1, 46879), -- Convoked Tremor
(187075, 1, 102588, 1, 1, 46879), -- Enraged Shards
(187075, 0, 107485, 1, 1, 46879), -- Enraged Shards
(187106, 0, 102811, 1, 1, 46879), -- Life Pools Screecher
(187102, 7, 102670, 1, 1, 46879), -- Ruby Commander
(187102, 6, 102671, 1, 1, 46879), -- Ruby Commander
(187102, 5, 102672, 1, 1, 46879), -- Ruby Commander
(187102, 4, 102673, 1, 1, 46879), -- Ruby Commander
(187102, 3, 102686, 1, 1, 46879), -- Ruby Commander
(187102, 2, 102687, 1, 1, 46879), -- Ruby Commander
(187102, 1, 102688, 1, 1, 46879), -- Ruby Commander
(187102, 0, 102689, 1, 1, 46879); -- Ruby Commander

UPDATE `creature_template_model` SET `VerifiedBuild`=46879 WHERE (`Idx`=0 AND `CreatureID` IN (77936,180016,156558,192134,181029,186965,103822,198489,186687,193024,191678,193026,32842,54441,6466,17249,28951,1325,191647,78116,34337,6491,190064,190069,1860)) OR (`Idx`=1 AND `CreatureID` IN (156558,192134,181029,103822,186687,191678,32842,191647,78116,190064)) OR (`Idx`=5 AND `CreatureID` IN (192134,191678,191647)) OR (`Idx`=4 AND `CreatureID` IN (192134,191678,191647)) OR (`Idx`=3 AND `CreatureID` IN (192134,103822,191678,32842,191647)) OR (`Idx`=2 AND `CreatureID` IN (192134,103822,191678,32842,191647)) OR (`Idx`=9 AND `CreatureID`=191647) OR (`Idx`=8 AND `CreatureID`=191647) OR (`Idx`=7 AND `CreatureID`=191647) OR (`Idx`=6 AND `CreatureID`=191647);

DELETE FROM `creature_questitem` WHERE (`Idx`=4 AND `CreatureEntry` IN (190116,189734,187908,187919,191525,187860,187602,186239)) OR (`Idx`=3 AND `CreatureEntry` IN (190116,189734,187908,187919,191525,187860,187602,186239)) OR (`Idx`=2 AND `CreatureEntry` IN (190116,189734,187908,187919,191525,187860,187602,186239,190484)) OR (`Idx`=1 AND `CreatureEntry` IN (190116,201154,189734,187908,187919,191525,187860,187602,186239,190484)) OR (`Idx`=0 AND `CreatureEntry` IN (190116,201154,189734,187908,187919,191525,187860,187602,191876,191476,186239,186261,186336,181875,196017,190484)) OR (`Idx`=5 AND `CreatureEntry`=187919);
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(190116, 4, 194544, 46879), -- Qalashi Skullhauler
(190116, 3, 194336, 46879), -- Qalashi Skullhauler
(190116, 2, 191686, 46879), -- Qalashi Skullhauler
(190116, 1, 191683, 46879), -- Qalashi Skullhauler
(190116, 0, 191686, 46879), -- Qalashi Skullhauler
(201154, 1, 194551, 46879), -- Surging Magma
(201154, 0, 191278, 46879), -- Surging Magma
(189734, 4, 194544, 46879), -- Qalashi Boltthrower
(189734, 3, 194336, 46879), -- Qalashi Boltthrower
(189734, 2, 191686, 46879), -- Qalashi Boltthrower
(189734, 1, 191683, 46879), -- Qalashi Boltthrower
(189734, 0, 191686, 46879), -- Qalashi Boltthrower
(187908, 4, 194544, 46879), -- Qalashi Scaleripper
(187908, 3, 194336, 46879), -- Qalashi Scaleripper
(187908, 2, 191686, 46879), -- Qalashi Scaleripper
(187908, 1, 191683, 46879), -- Qalashi Scaleripper
(187908, 0, 191686, 46879), -- Qalashi Scaleripper
(187919, 5, 194544, 46879), -- Caldera Stomper
(187919, 4, 194336, 46879), -- Caldera Stomper
(187919, 3, 191686, 46879), -- Caldera Stomper
(187919, 2, 191683, 46879), -- Caldera Stomper
(187919, 1, 191686, 46879), -- Caldera Stomper
(187919, 0, 194551, 46879), -- Caldera Stomper
(191525, 4, 194544, 46879), -- Qalashi Wallcrasher
(191525, 3, 194336, 46879), -- Qalashi Wallcrasher
(191525, 2, 191686, 46879), -- Qalashi Wallcrasher
(191525, 1, 191683, 46879), -- Qalashi Wallcrasher
(191525, 0, 191686, 46879), -- Qalashi Wallcrasher
(187860, 4, 194544, 46879), -- Qalashi Magmammoth
(187860, 3, 194336, 46879), -- Qalashi Magmammoth
(187860, 2, 191686, 46879), -- Qalashi Magmammoth
(187860, 1, 191683, 46879), -- Qalashi Magmammoth
(187860, 0, 191686, 46879), -- Qalashi Magmammoth
(187602, 4, 194544, 46879), -- Qalashi Scaleripper
(187602, 3, 194336, 46879), -- Qalashi Scaleripper
(187602, 2, 191686, 46879), -- Qalashi Scaleripper
(187602, 1, 191683, 46879), -- Qalashi Scaleripper
(187602, 0, 191686, 46879), -- Qalashi Scaleripper
(191876, 0, 193626, 46879), -- Goruk Steelwall
(191476, 0, 193627, 46879), -- Searing Flame Harchek
(186239, 4, 194544, 46879), -- Qalashi Skullhauler
(186239, 3, 194336, 46879), -- Qalashi Skullhauler
(186239, 2, 191686, 46879), -- Qalashi Skullhauler
(186239, 1, 191683, 46879), -- Qalashi Skullhauler
(186239, 0, 191686, 46879), -- Qalashi Skullhauler
(186261, 0, 191278, 46879), -- Restless Lava
(186336, 0, 191278, 46879), -- Blazing Manifestation
(181875, 0, 193625, 46879), -- Olphis the Molten
(196017, 0, 194564, 46879), -- Pudgy Riverbeast
(190484, 2, 198480, 46879), -- Kyrakka
(190484, 1, 193412, 46879), -- Kyrakka
(190484, 0, 193397, 46879); -- Kyrakka


DELETE FROM `gameobject_template` WHERE `entry` IN (384388 /*Campfire*/, 377013 /*Earth-Warder's Forge*/, 376903 /*Siege Arbalist*/, 376253 /*Siege Arbalist*/, 376685 /*Seared Defenders Blade*/, 384394 /*Campfire*/, 376917 /*Obsidian Oathstone*/, 376901 /*Siege Arbalist*/, 380825 /*Focusing Crystal*/, 379194 /*Campfire*/, 380606 /*Focusing Crystal*/, 380557 /*Igneous Geode*/, 378705 /*Loot Bag*/, 382070 /*Blocked Net Spot*/, 380826 /*Focusing Crystal*/, 376168 /*Destroyed Arbalast*/, 380617 /*Qalashi Weapon Diagram*/, 379196 /*Forge*/, 379195 /*Anvil*/, 376151 /*Drajardin Grindstone*/, 376104 /*Siege Arbalest*/, 381688 /*Obsidian Teleporter*/, 379171 /*Brazier*/, 381326 /*Campfire*/, 382032 /*Flowering Inferno Pod*/, 377111 /*Blacktalon Battle Plans*/, 377106 /*Blacktalon Battle Plans*/, 381325 /*Mailbox*/, 380871 /*Tinker's Workbench*/, 381716 /*Dragonsteel Sword*/, 379174 /*Anvil*/, 379172 /*Brazier*/, 376175 /*Fullsails Supply Chest*/, 376824 /*Scouting Scope*/, 378857 /*Lost Obsidian Cache*/, 377485 /*Sour Apple*/, 377457 /*Reliquary Barrel*/, 377456 /*Reliquary Crate*/, 377454 /*Enchanted Wagon*/, 380641 /*Overcharged Tesla Coil*/, 381560 /*Stool*/, 381746 /*Stool*/, 381562 /*Stool*/, 384958 /*Stove*/, 381554 /*Stool*/, 378946 /*Forge*/, 384306 /*Stool*/, 376454 /*Bag*/, 378166 /*Reliquary Book Stack*/, 378891 /*Explorer's Crate*/, 381743 /*Stool*/, 378167 /*Dragon Scroll Stack*/, 381748 /*Chair*/, 381556 /*Stool*/, 376392 /*Explorers League Map*/, 376453 /*Camera*/, 385209 /*Mailbox*/, 381745 /*Stool*/, 381561 /*Stool*/, 381553 /*Stool*/, 378945 /*Anvil*/, 384305 /*Stool*/, 376397 /*Reliquary Tome*/, 378169 /*Reliquary Compass*/, 381742 /*Stool*/, 376762 /*Dragonscale Expedition Artifact Catalog*/, 381747 /*Chair*/, 381563 /*Stool*/, 381555 /*Stool*/, 376711 /*Reliquary Book Stack*/, 378171 /*Reliquary Magnifying Glass*/, 380880 /*Campfire*/, 381744 /*Stool*/, 378944 /*Campfire*/, 378348 /*Sunlight Flower*/, 378168 /*Expedition Scroll*/, 381201 /*Frigid Saxifrage*/, 385070 /*Unstable Icestorm*/, 380559 /*Frostforged Potion*/, 380643 /*Flashfrozen Scroll*/, 376678 /*Ritual Circle*/, 378054 /*Riptide Brew*/, 381983 /*Deactivated Signal Transmitter*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(384388, 8, 76171, 'Campfire', '', '', '', 1, 4, 10, 215916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Campfire
(377013, 22, 74781, 'Earth-Warder\'s Forge', 'questinteract', '', '', 1, 383893, -1, 0, 0, 1, 34450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2151, 46879), -- Earth-Warder's Forge
(376903, 10, 73815, 'Siege Arbalist', 'questinteract', 'Destroying', '', 1, 2741, 66044, 0, 3000, 0, 0, 0, 0, 0, 0, 369867, 0, 0, 0, 24585, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2151, 46879), -- Siege Arbalist
(376253, 10, 73815, 'Siege Arbalist', 'questinteract', 'Destroying', '', 1, 2741, 66044, 0, 3000, 0, 0, 0, 0, 0, 0, 372673, 0, 0, 0, 24585, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2151, 46879), -- Siege Arbalist
(376685, 10, 73780, 'Seared Defenders Blade', '', 'Equipping...', '', 0.800000011920928955, 259, 0, 0, 3000, 0, 1, 0, 0, 0, 0, 371522, 0, 0, 0, 169571, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2151, 46879), -- Seared Defenders Blade
(384394, 8, 76171, 'Campfire', '', '', '', 1, 4, 10, 215916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Campfire
(376917, 22, 75292, 'Obsidian Oathstone', 'questinteract', '', '', 1.059999942779541015, 386796, -1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2151, 46879), -- Obsidian Oathstone
(376901, 10, 73815, 'Siege Arbalist', 'questinteract', 'Destroying', '', 1, 2741, 66044, 0, 3000, 0, 0, 0, 0, 0, 0, 372678, 0, 0, 0, 24585, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2151, 46879), -- Siege Arbalist
(380825, 10, 22633, 'Focusing Crystal', 'questinteract', '', '', 1, 2173, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 385287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 100246, 1, 5345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2214, 46879), -- Focusing Crystal
(379194, 8, 76171, 'Campfire', '', '', '', 1, 4, 10, 215916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Campfire
(380606, 10, 22633, 'Focusing Crystal', 'questinteract', '', '', 1, 2173, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 385224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 100246, 1, 5345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2214, 46879), -- Focusing Crystal
(380557, 3, 76444, 'Igneous Geode', '', '', '', 1, 0, 0, 10, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5302, 0, 0, 0, 0, 0, 2214, 46879), -- Igneous Geode
(378705, 5, 29552, 'Loot Bag', '', '', '', 0.449999988079071044, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Loot Bag
(382070, 10, 75598, 'Blocked Net Spot', 'questinteract', '', '', 1, 3530, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2214, 46879), -- Blocked Net Spot
(380826, 10, 22633, 'Focusing Crystal', 'questinteract', '', '', 1, 2173, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 385288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 100246, 1, 5345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2214, 46879), -- Focusing Crystal
(376168, 5, 73815, 'Destroyed Arbalast', '', '', '', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2151, 46879), -- Destroyed Arbalast
(380617, 3, 26246, 'Qalashi Weapon Diagram', 'interact', '', '', 1, 1690, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5332, 112523, 0, 108, 0, 0, 2214, 46879), -- Qalashi Weapon Diagram
(379196, 8, 73864, 'Forge', '', '', '', 1, 3, 10, 0, 0, 0, 0, 0, 0, 103829, 0, 30092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Forge
(379195, 8, 75499, 'Anvil', '', '', '', 1, 1, 10, 0, 0, 0, 0, 0, 0, 103828, 0, 30091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Anvil
(376151, 5, 73906, 'Drajardin Grindstone', '', '', '', 0.920000016689300537, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Drajardin Grindstone
(376104, 10, 73815, 'Siege Arbalest', 'questinteract', 'Destroying', '', 1, 2741, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24585, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2151, 46879), -- Siege Arbalest
(381688, 10, 76664, 'Obsidian Teleporter', 'questinteract', '', '', 1, 3176, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 389613, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 102172, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Obsidian Teleporter
(379171, 8, 75761, 'Brazier', '', '', '', 1.159999966621398925, 4, 10, 377066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Brazier
(381326, 8, 49788, 'Campfire', '', '', '', 0.759999990463256835, 4, 10, 215916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Campfire
(382032, 50, 77565, 'Flowering Inferno Pod', 'openhand', '', '', 0.60000002384185791, 3427, 113621, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5482, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2214, 46879), -- Flowering Inferno Pod
(377111, 10, 74988, 'Blacktalon Battle Plans', 'questinteract', '', '', 1.20000004768371582, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 372265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 97932, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2151, 46879), -- Blacktalon Battle Plans
(377106, 10, 74984, 'Blacktalon Battle Plans', 'questinteract', '', '', 1.20000004768371582, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 372265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 97932, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2151, 46879), -- Blacktalon Battle Plans
(381325, 19, 74322, 'Mailbox', '', '', '', 1.129999995231628417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Mailbox
(380871, 8, 76166, 'Tinker\'s Workbench', '', '', '', 1, 2166, 10, 0, 0, 0, 0, 0, 0, 406, 0, 30080, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Tinker's Workbench
(381716, 5, 75232, 'Dragonsteel Sword', '', '', '', 1.299999952316284179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2151, 46879), -- Dragonsteel Sword
(379174, 8, 74348, 'Anvil', '', '', '', 0.769999980926513671, 1, 10, 0, 0, 0, 0, 0, 0, 103828, 0, 30091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Anvil
(379172, 8, 75761, 'Brazier', '', '', '', 1, 4, 10, 377066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Brazier
(376175, 3, 51775, 'Fullsails Supply Chest', '', 'Collecting', '', 0.5, 3416, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5046, 110376, 0, 108, 0, 0, 2151, 46879), -- Fullsails Supply Chest
(376824, 22, 74662, 'Scouting Scope', 'questinteract', '', '', 0.800000011920928955, 309772, -1, 0, 0, 0, 98497, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Scouting Scope
(378857, 3, 73228, 'Lost Obsidian Cache', 'interact', 'Collecting', '', 1, 3466, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5257, 115160, 0, 0, 0, 0, 2278, 46879), -- Lost Obsidian Cache
(377485, 50, 22692, 'Sour Apple', '', 'Collecting', '', 1.5, 43, 111690, 0, 0, 0, 0, 15, 0, 0, 19676, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2151, 46879), -- Sour Apple
(377457, 5, 75332, 'Reliquary Barrel', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Reliquary Barrel
(377456, 5, 75331, 'Reliquary Crate', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Reliquary Crate
(377454, 5, 75324, 'Enchanted Wagon', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Enchanted Wagon
(380641, 10, 55400, 'Overcharged Tesla Coil', '', '', '', 0.699999988079071044, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 384884, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100279, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Overcharged Tesla Coil
(381560, 7, 76729, 'Stool', '', '', '', 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(381746, 7, 71292, 'Stool', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(381562, 7, 71292, 'Stool', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(384958, 8, 71474, 'Stove', '', '', '', 0.999999761581420898, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stove
(381554, 7, 71292, 'Stool', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(378946, 8, 71473, 'Forge', '', '', '', 1, 3, 10, 0, 0, 0, 0, 0, 0, 103829, 0, 30092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Forge
(384306, 7, 76729, 'Stool', '', '', '', 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(376454, 5, 74311, 'Bag', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Bag
(378166, 5, 75771, 'Reliquary Book Stack', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Reliquary Book Stack
(378891, 10, 74555, 'Explorer\'s Crate', 'questinteract', 'Break open the crate.', '', 1, 43, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 103935, 0, 0, 0, 0, 0, 0, 0, 99905, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Explorer's Crate
(381743, 7, 71292, 'Stool', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(378167, 5, 75773, 'Dragon Scroll Stack', '', '', '', 0.699999988079071044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Dragon Scroll Stack
(381748, 7, 77371, 'Chair', '', '', '', 1.009999990463256835, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Chair
(381556, 7, 71292, 'Stool', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(376392, 5, 73326, 'Explorers League Map', '', '', '', 0.800000011920928955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Explorers League Map
(376453, 5, 26870, 'Camera', '', '', '', 1.10000002384185791, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Camera
(385209, 19, 76073, 'Mailbox', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Mailbox
(381745, 7, 71292, 'Stool', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(381561, 7, 71292, 'Stool', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(381553, 7, 71292, 'Stool', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(378945, 8, 71475, 'Anvil', '', '', '', 1, 1, 10, 0, 0, 0, 0, 0, 0, 103828, 0, 30091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Anvil
(384305, 7, 76729, 'Stool', '', '', '', 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(376397, 5, 74233, 'Reliquary Tome', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Reliquary Tome
(378169, 5, 74314, 'Reliquary Compass', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Reliquary Compass
(381742, 7, 71292, 'Stool', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(376762, 5, 74233, 'Dragonscale Expedition Artifact Catalog', '', '', '', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Dragonscale Expedition Artifact Catalog
(381747, 7, 77375, 'Chair', '', '', '', 0.970000028610229492, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Chair
(381563, 7, 71292, 'Stool', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(381555, 7, 71292, 'Stool', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(376711, 5, 74548, 'Reliquary Book Stack', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Reliquary Book Stack
(378171, 5, 75776, 'Reliquary Magnifying Glass', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Reliquary Magnifying Glass
(380880, 8, 70622, 'Campfire', '', '', '', 1, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Campfire
(381744, 7, 71292, 'Stool', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(378944, 8, 70622, 'Campfire', '', '', '', 1, 4, 10, 249358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Campfire
(378348, 10, 75828, 'Sunlight Flower', 'questinteract', 'Harvesting', '', 1.5, 2173, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 42231, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2277, 46879), -- Sunlight Flower
(378168, 5, 75775, 'Expedition Scroll', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Expedition Scroll
(381201, 50, 76889, 'Frigid Saxifrage', '', '', '', 1.5, 3381, 113552, 0, 0, 100, 175, 30, 0, 0, 0, 0, 0, 292, 1, 390415, 0, 0, 0, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2181, 46879), -- Frigid Saxifrage
(385070, 10, 9806, 'Unstable Icestorm', '', '', '', 1, 0, 0, 0, 30000, 0, 1, 0, 0, 0, 0, 397019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Unstable Icestorm
(380559, 3, 64760, 'Frostforged Potion', '', 'Opening', '', 0.60000002384185791, 43, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 21400, 0, 0, 100251, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5297, 112482, 0, 108, 0, 0, 2214, 46879), -- Frostforged Potion
(380643, 3, 76511, 'Flashfrozen Scroll', '', 'Opening', '', 0.5, 43, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 21400, 0, 0, 100250, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5339, 112535, 0, 108, 0, 0, 2214, 46879), -- Flashfrozen Scroll
(376678, 5, 74029, 'Ritual Circle', '', '', '', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Ritual Circle
(378054, 3, 50301, 'Riptide Brew', '', 'Collecting', '', 2.5, 43, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 19676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 112030, 0, 0, 0, 0, 188, 46879), -- Riptide Brew
(381983, 22, 76704, 'Deactivated Signal Transmitter', '', '', '', 1, 390309, -1, 0, 0, 0, 100976, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879); -- Deactivated Signal Transmitter

UPDATE `gameobject_template` SET `VerifiedBuild`=46879 WHERE `entry` IN (376580, 268883, 384836);

UPDATE `creature_template` SET `faction`='2263', `AIName`='SmartAI', `ScriptName`='' WHERE  `entry`=55019;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (55019, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 2, 2263, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Set Faction');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (55019, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 55019, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Kill Kredit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (55019, 9, 2, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 0, '', 2, 190, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Set Faction 190');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (55019, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 0, '', 8, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spawn set Defensiv');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (55019, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 42, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link set Invincible');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (55019, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 19, 3355202, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link Set Attackable');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (55019, 0, 3, 0, 1, 0, 100, 0, 500, 2000, 0, 0, 0, '', 11, 46598, 2, 0, 0, 0, 0, 19, 54993, 0, 0, 0, 0, 0, 0, 0, 'Mount nearest Pole');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (55019, 0, 4, 0, 8, 0, 100, 0, 192420, 0, 1000, 3000, 0, '', 11, 46598, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Mount to Invoker');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (55019, 0, 5, 0, 2, 0, 100, 0, 0, 1, 0, 0, 0, '', 80, 5501900, 2, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'HP 1% Actionlist');

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5501900, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 55019, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 'Quest Kredit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5501900, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 11, 88811, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dummy Timer');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5501900, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 18, 33555202, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Set Unattackable');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5501900, 9, 3, 0, 0, 0, 100, 0, 500, 500, 0, 0, 0, '', 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Set Passive');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5501900, 9, 4, 0, 0, 0, 100, 0, 500, 500, 0, 0, 0, '', 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop Attack');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5501900, 9, 5, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 0, '', 5, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Emote Bow');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (5501900, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 41, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Set Despawn');

UPDATE `creature_template` SET `faction`='2263', `AIName`='SmartAI', `ScriptName`='' WHERE  `entry`=65468;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (65468, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 2, 2263, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Set Faction');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (65468, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 55019, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Kill Kredit');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (65468, 9, 2, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 0, '', 2, 190, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Set Faction 190');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (65468, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 0, '', 8, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spawn set Defensiv');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (65468, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 42, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link set Invincible');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (65468, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 19, 3355202, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link Set Attackable');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (65468, 0, 3, 0, 1, 0, 100, 0, 500, 2000, 0, 0, 0, '', 11, 46598, 2, 0, 0, 0, 0, 19, 54993, 0, 0, 0, 0, 0, 0, 0, 'Mount nearest Pole');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (65468, 0, 4, 0, 8, 0, 100, 0, 192420, 0, 1000, 3000, 0, '', 11, 46598, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Mount to Invoker');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (65468, 0, 5, 0, 2, 0, 100, 0, 0, 1, 0, 0, 0, '', 80, 5501900, 2, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'HP 1% Actionlist');

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE  `entry`=54993;
UPDATE `npc_spellclick_spells` SET `spell_id`='46598' WHERE  `npc_entry`=54993 AND `spell_id`=102717;

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (54993, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 0, '', 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Spawn-Set Passive');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (54993, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 18, 770, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Link-Set Unattackable');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (54993, 0, 2, 0, 1, 0, 100, 0, 5000, 6000, 300, 6000, 0, '', 11, 192420, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'OOC-Cast Dummy AOE');

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE  `entry`=57431;
UPDATE `npc_spellclick_spells` SET `spell_id`='46598' WHERE  `npc_entry`=57431 AND `spell_id`=102717;

UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE  `entry`=55083;
UPDATE `npc_spellclick_spells` SET `spell_id`='46598' WHERE  `npc_entry`=55083 AND `spell_id`=102717;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (55083, 0, 0, 0, 8, 0, 100, 0, 46598, 0, 0, 0, 0, '', 62, 860, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 931.875, 3339.35, 123.384, 0.121981, 'Spellhit Teleport');
                           
