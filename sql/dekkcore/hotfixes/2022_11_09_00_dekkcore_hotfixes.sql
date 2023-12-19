DELETE FROM `hotfix_blob` WHERE `tablehash`=0x2E18F32;
DELETE FROM `hotfix_blob` WHERE `tablehash`=0xE540EFD;
DELETE FROM `hotfix_blob` WHERE `tablehash`=0xF72496D9;

REPLACE INTO `broadcast_text` (`Text`, `Text1`, `ID`, `LanguageID`, `ConditionID`, `EmotesID`, `Flags`, `ChatBubbleDurationMs`, `VoiceOverPriorityID`, `SoundKitID1`, `SoundKitID2`, `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `VerifiedBuild`) VALUES ('Ok say Where you want to go', NULL, 300002, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` (`Text`, `Text1`, `ID`, `LanguageID`, `ConditionID`, `EmotesID`, `Flags`, `ChatBubbleDurationMs`, `VoiceOverPriorityID`, `SoundKitID1`, `SoundKitID2`, `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `VerifiedBuild`) VALUES ('Yeahhhh is Triggert NOT.', NULL, 300001, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `broadcast_text` (`Text`, `Text1`, `ID`, `LanguageID`, `ConditionID`, `EmotesID`, `Flags`, `ChatBubbleDurationMs`, `VoiceOverPriorityID`, `SoundKitID1`, `SoundKitID2`, `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `VerifiedBuild`) VALUES ('What do you mean ? It Do not Trigger?', NULL, 300000, 0, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


DELETE FROM `broadcast_text` WHERE `ID` IN (208897, 208659, 208637, 208672, 208665, 208634, 208317, 208313, 210533, 208315, 208307, 210532, 208302, 208633, 208632, 208631, 208629, 208627, 208628, 208625, 208624, 208446, 207466, 208447, 207468, 208622, 208623, 208620, 208621, 208618, 208619);
REPLACE INTO `broadcast_text` (`Text`, `Text1`, `ID`, `LanguageID`, `ConditionID`, `EmotesID`, `Flags`, `ChatBubbleDurationMs`, `VoiceOverPriorityID`, `SoundKitID1`, `SoundKitID2`, `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `VerifiedBuild`) VALUES
('', 'I will unmake you!', 208897, 0, 0, 0, 0, 0, 3, 0, 180885, 0, 0, 0, 0, 0, 0, 46340),
('You cannot control this power. The artifact belongs in a museum!', '', 208659, 0, 0, 1, 0, 0, 0, 181557, 0, 0, 0, 0, 0, 0, 0, 46340),
('', 'Must you hound my every step!?', 208637, 0, 0, 0, 0, 0, 0, 0, 179831, 0, 0, 0, 0, 0, 0, 46340),
('', 'Your cartel has dissolved into dust. I choose to lead mine to glory!', 208672, 0, 0, 0, 0, 0, 0, 0, 179833, 0, 0, 0, 0, 0, 0, 46340),
('', 'Only the withered and dead belong in museums... like your cartel.', 208665, 0, 0, 0, 0, 0, 0, 0, 179832, 0, 0, 0, 0, 0, 0, 46340),
('Let us depart before the Kul Tirans ask questions we lack time to answer.', '', 208634, 0, 0, 0, 0, 0, 0, 181556, 0, 0, 0, 0, 0, 0, 0, 46340),
('We\'ve brought out the big guns, Cap\'n!', 'We\'ve brought out the big guns, Cap\'n!', 208317, 0, 0, 0, 0, 0, 3, 179790, 179791, 0, 0, 0, 0, 0, 0, 46340),
('', 'Time is on our side.', 208313, 0, 0, 0, 0, 0, 3, 0, 179807, 0, 0, 0, 0, 0, 0, 46340),
('', 'Take no prisoners!', 210533, 0, 0, 0, 0, 0, 3, 0, 179805, 0, 0, 0, 0, 0, 0, 46340),
('Aye aye, Cap\'n!', 'Aye aye, Cap\'n!', 208315, 0, 0, 0, 0, 0, 3, 179792, 179793, 0, 0, 0, 0, 0, 0, 46340),
('', 'Cannons! Fire!', 208307, 0, 0, 0, 0, 0, 3, 0, 179800, 0, 0, 0, 0, 0, 0, 46340),
('', 'All hands on deck!', 210532, 0, 0, 0, 0, 0, 3, 0, 179804, 0, 0, 0, 0, 0, 0, 46340),
('', 'A chest of gold to whoever brings me their tongues!', 208302, 0, 0, 0, 0, 0, 3, 0, 179809, 0, 0, 0, 0, 0, 0, 46340),
('Our captain is a dragon!', 'Our captain is a dragon!', 208633, 0, 0, 0, 0, 0, 0, 179798, 179799, 0, 0, 0, 0, 0, 0, 46340),
('Our captain is a dragon?!', 'Our captain is a dragon?!', 208632, 0, 0, 0, 0, 0, 0, 179796, 179797, 0, 0, 0, 0, 0, 0, 46340),
('', 'You lot meddled with the wrong buccaneer!', 208631, 0, 0, 0, 0, 0, 0, 0, 179816, 0, 0, 0, 0, 0, 0, 46340),
('', 'Apologies, captain. Please direct your grievances towards my associates.', 208629, 0, 0, 0, 0, 0, 0, 0, 179830, 0, 0, 0, 0, 0, 0, 46340),
('', 'You have a talent for acquiring intriguing artifacts. This was found among the ruins of the Black Empire, yes?', 208627, 0, 0, 0, 0, 0, 0, 0, 179829, 0, 0, 0, 0, 0, 0, 46340),
('', 'Ye have an eye for treasure, but not enough smarts to stay away from it.', 208628, 0, 0, 0, 0, 0, 0, 0, 179814, 0, 0, 0, 0, 0, 0, 46340),
('A taxing journey, but our path remains true.', '', 208625, 0, 0, 0, 0, 0, 0, 181555, 0, 0, 0, 0, 0, 0, 0, 46340),
('So\'leah\'s arrogance will be her downfall.', '', 208624, 0, 0, 0, 0, 0, 0, 181554, 0, 0, 0, 0, 0, 0, 0, 46340),
('That artifact... will... end you all...', '', 208446, 0, 0, 0, 0, 0, 3, 179616, 0, 0, 0, 0, 0, 0, 0, 46340),
('The temple must be purified.', '', 207466, 0, 0, 0, 1, 0, 3, 179612, 0, 0, 0, 0, 0, 0, 0, 46340),
('Only fire will purge your transgressions.', '', 208447, 0, 0, 0, 0, 0, 3, 179609, 0, 0, 0, 0, 0, 0, 0, 46340),
('You desecrate these halls!', '', 207468, 0, 0, 0, 0, 0, 3, 179615, 0, 0, 0, 0, 0, 0, 0, 46340),
('You are unworthy to lay claim to these relics!', '', 208622, 0, 0, 0, 0, 0, 0, 179607, 0, 0, 0, 0, 0, 0, 0, 46340),
('', 'See how your wisdom fares against the might of the titans.', 208623, 0, 0, 0, 0, 0, 0, 0, 179828, 0, 0, 0, 0, 0, 0, 46340),
('', 'Power eludes your grasp, Al\'dalil. A tenet of your cartel.', 208620, 0, 0, 0, 0, 0, 0, 0, 179827, 0, 0, 0, 0, 0, 0, 46340),
('Power without wisdom leads to ruin, So\'leah.', '', 208621, 0, 0, 0, 0, 0, 0, 181553, 0, 0, 0, 0, 0, 0, 0, 46340),
('Apologies; the cosmic backwash was turbulent. This is as close as I could get you.', '', 208618, 0, 0, 0, 0, 0, 0, 181551, 0, 0, 0, 0, 0, 0, 0, 46340),
('So\'leah must be nearby. Were I to make a wager, I\'d put coin on the ruins ahead.', '', 208619, 0, 0, 0, 0, 0, 0, 181552, 0, 0, 0, 0, 0, 0, 0, 46340);


DELETE FROM `broadcast_text` WHERE `ID` IN (207852, 207861, 207851, 207853, 207860, 207854, 207857, 207858, 207859, 207855, 207856);
REPLACE INTO `broadcast_text` (`Text`, `Text1`, `ID`, `LanguageID`, `ConditionID`, `EmotesID`, `Flags`, `ChatBubbleDurationMs`, `VoiceOverPriorityID`, `SoundKitID1`, `SoundKitID2`, `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `VerifiedBuild`) VALUES
('Betrayed by Grand Apothecary Putress at the Battle of Wrathgate', '', 207852, 0, 0, 0, 26, 0, 0, 178512, 0, 0, 0, 0, 0, 0, 0, 46340),
('be they human, undead, or otherwise.', '', 207861, 0, 0, 0, 26, 0, 0, 178521, 0, 0, 0, 0, 0, 0, 0, 46340),
('Though Lady Sylvanas and her Forsaken finally took vengeance upon their hated enemy, The Lich King, their dark crusade in Northrend proved costly.', '', 207851, 0, 0, 0, 26, 0, 0, 178511, 0, 0, 0, 0, 0, 0, 0, 46340),
('the Forsaken\'s devious plague of death was unleashed upon both the Alliance and the Horde to calamitous effect.', '', 207853, 0, 0, 0, 26, 0, 0, 178513, 0, 0, 0, 0, 0, 0, 0, 46340),
('As one of the Forsaken, you must use your cunning and viciousness to slay any who would pose a threat to Sylvanas\'s rule --', '', 207860, 0, 0, 0, 26, 0, 0, 178520, 0, 0, 0, 0, 0, 0, 0, 46340),
('Unbeknownst to Sylvanas, Putress and his demonic ally Varimathras had taken control of the Undercity.', '', 207854, 0, 0, 0, 26, 0, 0, 178514, 0, 0, 0, 0, 0, 0, 0, 46340),
('Mistrusted by the other members of the Horde', '', 207857, 0, 0, 0, 26, 0, 0, 178517, 0, 0, 0, 0, 0, 0, 0, 46340),
('the Forsaken must now prove their loyalty to the cause and redeem themselves from their supposed treachery.', '', 207858, 0, 0, 0, 26, 0, 0, 178518, 0, 0, 0, 0, 0, 0, 0, 46340),
('To this end, Sylvanas has bolstered her defenses within the Tirisfal Glades and readied her undead forces for any contingency.', '', 207859, 0, 0, 0, 26, 0, 0, 178519, 0, 0, 0, 0, 0, 0, 0, 46340),
('As a result, the Forsaken were wrongly blamed for the traitor\'s atrocities.', '', 207855, 0, 0, 0, 26, 0, 0, 178515, 0, 0, 0, 0, 0, 0, 0, 46340),
('Though the Undercity was eventually retaken, Sylvanas and her followers still bear the weight of Putress\'s sins.', '', 207856, 0, 0, 0, 26, 0, 0, 178516, 0, 0, 0, 0, 0, 0, 0, 46340);

DELETE FROM `broadcast_text` WHERE `ID` IN (202162, 192776);
REPLACE INTO `broadcast_text` (`Text`, `Text1`, `ID`, `LanguageID`, `ConditionID`, `EmotesID`, `Flags`, `ChatBubbleDurationMs`, `VoiceOverPriorityID`, `SoundKitID1`, `SoundKitID2`, `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `VerifiedBuild`) VALUES
('', 'I asked again, today, when I can attempt my final rite. Again, no answers. This place has taught me patience, certainly, but still I find it tested.', 202162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('The Forsworn have all but destroyed the legacy of this place. Seek out any writings you may find, so we may preserve them.', '', 192776, 0, 0, 0, 0, 0, 0, 166705, 0, 0, 0, 0, 0, 0, 0, 46366);


DELETE FROM `broadcast_text` WHERE `ID` IN (208674, 208676, 208675, 208697, 208724, 208722, 208717, 208718, 208723, 208687, 208716, 208709, 208702, 208897, 208659, 208637, 208672, 208665, 208634, 208317, 208314, 210532, 208308, 208316, 210533, 208302, 208633, 208632, 208631, 208629, 208627, 208628, 208625, 208624, 208446, 207466, 208447, 208450, 207468, 208622, 208623, 208620, 208621, 208618, 208619);
REPLACE INTO `broadcast_text` (`Text`, `Text1`, `ID`, `LanguageID`, `ConditionID`, `EmotesID`, `Flags`, `ChatBubbleDurationMs`, `VoiceOverPriorityID`, `SoundKitID1`, `SoundKitID2`, `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `VerifiedBuild`) VALUES
('The First Ones hid these artifacts for good reason. They are not meant for us.', '', 208674, 0, 0, 0, 0, 0, 0, 181558, 0, 0, 0, 0, 0, 0, 0, 46366),
('These troublesome pieces will reside where they can do no more harm, and be studied by Cartel Al. Until our fortunes meet again...', '', 208676, 0, 0, 0, 0, 0, 0, 181560, 0, 0, 0, 0, 0, 0, 0, 46366),
('I am grateful our paths crossed, Maw Walker.', '', 208675, 0, 0, 0, 0, 0, 0, 181559, 0, 0, 0, 0, 0, 0, 0, 46366),
('', 'My cartel... must not... fade...', 208697, 0, 0, 0, 0, 0, 3, 0, 179846, 0, 0, 0, 0, 0, 0, 46366),
('', 'The realms... I can feel them all!', 208724, 0, 0, 0, 0, 0, 3, 0, 179834, 0, 0, 0, 0, 0, 0, 46366),
('', 'The tools of creation--at my command!', 208722, 0, 0, 0, 0, 0, 3, 0, 179837, 0, 0, 0, 0, 0, 0, 46366),
('', 'How dare you hinder me!', 208717, 0, 0, 0, 0, 0, 3, 0, 179843, 0, 0, 0, 0, 0, 0, 46366),
('', 'You are nothing!', 208718, 0, 0, 0, 0, 0, 3, 0, 179838, 0, 0, 0, 0, 0, 0, 46366),
('', 'Oppose me and be extinguished!', 208723, 0, 0, 0, 0, 0, 3, 0, 179839, 0, 0, 0, 0, 0, 0, 46366),
('', 'Bow before Cartel So!', 208687, 0, 0, 0, 0, 0, 3, 0, 179845, 0, 0, 0, 0, 0, 0, 46366),
('', 'This power... is vast...', 208716, 0, 0, 0, 0, 0, 3, 0, 179842, 0, 0, 0, 0, 0, 0, 46366),
('', 'The stars are mine!', 208709, 0, 0, 0, 0, 0, 3, 0, 179835, 0, 0, 0, 0, 0, 0, 46366),
('', 'Guards, remove these pests.', 208702, 0, 0, 0, 0, 0, 3, 0, 179844, 0, 0, 0, 0, 0, 0, 46366),
('', 'I will unmake you!', 208897, 0, 0, 0, 0, 0, 3, 0, 180885, 0, 0, 0, 0, 0, 0, 46366),
('You cannot control this power. The artifact belongs in a museum!', '', 208659, 0, 0, 1, 0, 0, 0, 181557, 0, 0, 0, 0, 0, 0, 0, 46366),
('', 'Must you hound my every step!?', 208637, 0, 0, 0, 0, 0, 0, 0, 179831, 0, 0, 0, 0, 0, 0, 46366),
('', 'Your cartel has dissolved into dust. I choose to lead mine to glory!', 208672, 0, 0, 0, 0, 0, 0, 0, 179833, 0, 0, 0, 0, 0, 0, 46366),
('', 'Only the withered and dead belong in museums... like your cartel.', 208665, 0, 0, 0, 0, 0, 0, 0, 179832, 0, 0, 0, 0, 0, 0, 46366),
('Let us depart before the Kul Tirans ask questions we lack time to answer.', '', 208634, 0, 0, 0, 0, 0, 0, 181556, 0, 0, 0, 0, 0, 0, 0, 46366),
('We\'ve brought out the big guns, Cap\'n!', 'We\'ve brought out the big guns, Cap\'n!', 208317, 0, 0, 0, 0, 0, 3, 179790, 179791, 0, 0, 0, 0, 0, 0, 46366),
('', 'Let us hasten your demise!', 208314, 0, 0, 0, 0, 0, 3, 0, 179808, 0, 0, 0, 0, 0, 0, 46366),
('', 'All hands on deck!', 210532, 0, 0, 0, 0, 0, 3, 0, 179804, 0, 0, 0, 0, 0, 0, 46366),
('', 'Cannoneers! Blast them to pieces!', 208308, 0, 0, 0, 0, 0, 3, 0, 179801, 0, 0, 0, 0, 0, 0, 46366),
('Right away, Cap\'n!', 'Right away, Cap\'n!', 208316, 0, 0, 0, 0, 0, 3, 179794, 179795, 0, 0, 0, 0, 0, 0, 46366),
('', 'Take no prisoners!', 210533, 0, 0, 0, 0, 0, 3, 0, 179805, 0, 0, 0, 0, 0, 0, 46366),
('', 'A chest of gold to whoever brings me their tongues!', 208302, 0, 0, 0, 0, 0, 3, 0, 179809, 0, 0, 0, 0, 0, 0, 46366),
('Our captain is a dragon!', 'Our captain is a dragon!', 208633, 0, 0, 0, 0, 0, 0, 179798, 179799, 0, 0, 0, 0, 0, 0, 46366),
('Our captain is a dragon?!', 'Our captain is a dragon?!', 208632, 0, 0, 0, 0, 0, 0, 179796, 179797, 0, 0, 0, 0, 0, 0, 46366),
('', 'You lot meddled with the wrong buccaneer!', 208631, 0, 0, 0, 0, 0, 0, 0, 179816, 0, 0, 0, 0, 0, 0, 46366),
('', 'Apologies, captain. Please direct your grievances towards my associates.', 208629, 0, 0, 0, 0, 0, 0, 0, 179830, 0, 0, 0, 0, 0, 0, 46366),
('', 'You have a talent for acquiring intriguing artifacts. This was found among the ruins of the Black Empire, yes?', 208627, 0, 0, 0, 0, 0, 0, 0, 179829, 0, 0, 0, 0, 0, 0, 46366),
('', 'Ye have an eye for treasure, but not enough smarts to stay away from it.', 208628, 0, 0, 0, 0, 0, 0, 0, 179814, 0, 0, 0, 0, 0, 0, 46366),
('A taxing journey, but our path remains true.', '', 208625, 0, 0, 0, 0, 0, 0, 181555, 0, 0, 0, 0, 0, 0, 0, 46366),
('So\'leah\'s arrogance will be her downfall.', '', 208624, 0, 0, 0, 0, 0, 0, 181554, 0, 0, 0, 0, 0, 0, 0, 46366),
('That artifact... will... end you all...', '', 208446, 0, 0, 0, 0, 0, 3, 179616, 0, 0, 0, 0, 0, 0, 0, 46366),
('The temple must be purified.', '', 207466, 0, 0, 0, 1, 0, 3, 179612, 0, 0, 0, 0, 0, 0, 0, 46366),
('Only fire will purge your transgressions.', '', 208447, 0, 0, 0, 0, 0, 3, 179609, 0, 0, 0, 0, 0, 0, 0, 46366),
('Burn, interlopers!', '', 208450, 0, 0, 0, 0, 0, 3, 179610, 0, 0, 0, 0, 0, 0, 0, 46366),
('You desecrate these halls!', '', 207468, 0, 0, 0, 0, 0, 3, 179615, 0, 0, 0, 0, 0, 0, 0, 46366),
('You are unworthy to lay claim to these relics!', '', 208622, 0, 0, 0, 0, 0, 0, 179607, 0, 0, 0, 0, 0, 0, 0, 46366),
('', 'See how your wisdom fares against the might of the titans.', 208623, 0, 0, 0, 0, 0, 0, 0, 179828, 0, 0, 0, 0, 0, 0, 46366),
('', 'Power eludes your grasp, Al\'dalil. A tenet of your cartel.', 208620, 0, 0, 0, 0, 0, 0, 0, 179827, 0, 0, 0, 0, 0, 0, 46366),
('Power without wisdom leads to ruin, So\'leah.', '', 208621, 0, 0, 0, 0, 0, 0, 181553, 0, 0, 0, 0, 0, 0, 0, 46366),
('Apologies; the cosmic backwash was turbulent. This is as close as I could get you.', '', 208618, 0, 0, 0, 0, 0, 0, 181551, 0, 0, 0, 0, 0, 0, 0, 46366),
('So\'leah must be nearby. Were I to make a wager, I\'d put coin on the ruins ahead.', '', 208619, 0, 0, 0, 0, 0, 0, 181552, 0, 0, 0, 0, 0, 0, 0, 46366);


DELETE FROM `broadcast_text` WHERE `ID` IN (208875, 208873, 208874, 213530, 212847, 213604, 216046, 215430, 214053, 215703, 215688, 215692, 215687, 215691, 215686, 215685, 215684, 215683, 215682, 215698, 215696, 215697, 215695, 215704, 215701, 215702, 215700, 215699, 213000, 222863, 214882);
REPLACE INTO `broadcast_text` (`Text`, `Text1`, `ID`, `LanguageID`, `ConditionID`, `EmotesID`, `Flags`, `ChatBubbleDurationMs`, `VoiceOverPriorityID`, `SoundKitID1`, `SoundKitID2`, `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `VerifiedBuild`) VALUES
('I will shatter your bones!', 'I will shatter your bones!', 208875, 0, 0, 0, 0, 0, 15, 178792, 178806, 0, 0, 0, 0, 0, 0, 46366),
('We are on the cusp of victory!', 'We are on the cusp of victory!', 208873, 0, 0, 0, 0, 0, 15, 178790, 178804, 0, 0, 0, 0, 0, 0, 46366),
('For the Banished One!', 'For the Banished One!', 208874, 0, 0, 0, 0, 0, 15, 178791, 178805, 0, 0, 0, 0, 0, 0, 46366),
('', 'We have discovered a relic that attracts automa. I think this could be useful. Come meet with me.', 213530, 0, 0, 669, 0, 0, 0, 0, 188613, 0, 0, 0, 0, 0, 0, 46366),
('I\'ve nothing you need... so leave me alone!', 'I\'ve nothing you need... so leave me alone!', 212847, 0, 0, 0, 1, 0, 0, 0, 0, 669, 0, 0, 0, 0, 0, 46366),
('<The coreless Echoed Jiro remains motionless before you.>', '<The coreless Echoed Jiro remains motionless before you.>', 213604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('<The Cache crackles and hums before you.>', '<The Cache crackles and hums before you.>', 216046, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('<Pocopoc beeps at you excitedly, a Cache of Creation may be nearby?>', '<Pocopoc beeps at you excitedly, a Cache of Creation may be nearby?>', 215430, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('<Pocopoc looks at you quizzically.>', '<Pocopoc looks at you quizzically.>', 214053, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('A satisfactory outcome.', '', 215703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('Correct.', '', 215688, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('Not quite, see how the borders shapes of two of the runes are the same; but the third rune has a different border shape? Each rune must be either all identical or all different for each property.', '', 215692, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('There are nine runes here. Clear the grid by making three valid phrases of three runes.', '', 215687, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('Not quite, see how the number of border shapes in two of the runes is the same; but the third rune has a different number of border shapes? Each rune must be either all identical or all different for each property.', '', 215691, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('Correctly aligned phrases contain three runes that are either all identical or all different in each of their four properties.', '', 215686, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('Runes can only be cleared by selecting three of them to form a syntactically aligned phrase.', '', 215685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('Observe the nine displayed runes. Each has four different properties: the type of shape in its core, the number of those shapes in the core, the type of border shape, and the number of border shapes.', '', 215684, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('As with other cyphers, you must deactivate all runes on the grid to access the information contained in the cypher.', '', 215683, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('The Progenitor language has abnormally high information density. Take this cypher for example.', '', 215682, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('Good luck.', '', 215698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('As with other cyphers, the goal is to turn off all lights in the grid.', '', 215696, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('Activating any cell in the grid will toggle it from off to on, or on to off.  The cells immediately above, below, and to the left and right of the activated cell will also toggle in the same way.', '', 215697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('This cypher seems simple but can confound the distracted mind.', '', 215695, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('You have completed the task.', '', 215704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('Pressing any of the buttons along the perimeter of the grid will toggle all cells in its row or column from on to off or off to on.', '', 215701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('You only have seven moves to succeed. Failure will cause the grid to reset.', '', 215702, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('Accessing the information contained within requires deactivating all lights in the grid.', '', 215700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('Another variation of the Progenitor cypher.', '', 215699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('Dispense a copy of found Lore Codex entries.', '', 213000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('', 'So, young one, would you like to tell me a tale of your adventures?', 222863, 0, 0, 1, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 46366),
('I can deliver Anima for you back to Bastion, if you wish.', 'I can deliver Anima for you back to Bastion, if you wish.', 214882, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46366);

