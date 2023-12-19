UPDATE gameobject_template_addon SET flags='0' WHERE  entry=339769;


DELETE FROM `creature_equip_template` WHERE (`ID`=1 AND `CreatureID` IN (182168,181053,183960,186883,182069,186865,186864,181056,187131,183380,185172));
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(182168, 1, 194888, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Scalecommander Azurathel
(181053, 1, 194888, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Kodethi
(183960, 1, 194888, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Dervishian
(186883, 1, 194888, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Scalecommander Cindrethresh
(182069, 1, 194888, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Dervishian
(186865, 1, 194888, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Kodethi
(186864, 1, 194888, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Tethalash
(181056, 1, 191694, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Scalecommander Azurathel
(187131, 1, 192514, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Drakonid Crechebound
(183380, 1, 191694, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Scalecommander Azurathel
(185172, 1, 199735, 0, 0, 0, 0, 0, 0, 0, 0, 46658); -- Obsidian Warder


DELETE FROM `areatrigger_template` WHERE (`IsServerSide`=0 AND `Id` IN (28902,28332,30308));
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(28902, 0, 0, 0, 8, 8, 0, 0, 0, 0, 0, 0, 46658),
(28332, 0, 0, 4, 3, 3, 0, 0, 0, 0, 0, 0, 46658),
(30308, 0, 0, 4, 3, 3, 0, 0, 0, 0, 0, 0, 46658);


DELETE FROM `conversation_line_template` WHERE `Id` IN (46050, 48736, 48735, 48734, 48733, 48307, 49181, 49180, 48737, 46056, 46055, 44831, 44830, 44829, 44828, 48296, 48295, 46172, 46174, 45786, 46052, 45803, 45804, 45802, 49179, 46051, 48739, 48317, 48316, 48315, 48714, 48713, 48383, 48382, 45685, 45684);
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(46050, 149, 0, 0, 46658),
(48736, 0, 1, 0, 46658),
(48735, 0, 2, 0, 46658),
(48734, 0, 1, 0, 46658),
(48733, 0, 0, 0, 46658),
(48307, 0, 0, 0, 46658),
(49181, 0, 1, 0, 46658),
(49180, 0, 0, 0, 46658),
(48737, 0, 0, 0, 46658),
(46056, 0, 1, 0, 46658),
(46055, 0, 0, 0, 46658),
(44831, 0, 0, 0, 46658),
(44830, 0, 1, 0, 46658),
(44829, 0, 1, 0, 46658),
(44828, 0, 0, 0, 46658),
(48296, 0, 0, 0, 46658),
(48295, 0, 0, 0, 46658),
(46172, 0, 1, 0, 46658),
(46174, 0, 0, 0, 46658),
(45786, 0, 0, 0, 46658),
(46052, 149, 0, 0, 46658),
(45803, 0, 0, 0, 46658),
(45804, 0, 1, 0, 46658),
(45802, 0, 0, 0, 46658),
(49179, 0, 0, 0, 46658),
(46051, 149, 0, 0, 46658),
(48739, 0, 1, 0, 46658),
(48317, 0, 0, 0, 46658),
(48316, 0, 1, 0, 46658),
(48315, 0, 0, 0, 46658),
(48714, 0, 0, 0, 46658),
(48713, 0, 0, 0, 46658),
(48383, 0, 1, 0, 46658),
(48382, 0, 0, 0, 46658),
(45685, 0, 1, 0, 46658),
(45684, 0, 0, 0, 46658);



DELETE FROM `scene_template` WHERE `SceneId` IN (2900, 2889, 2888, 2885, 2886, 2887);
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`, `Encrypted`) VALUES
(2900, 20, 3440, 0),
(2889, 20, 3431, 0),
(2888, 17, 3600, 0),
(2885, 17, 3427, 0),
(2886, 25, 3581, 0),
(2887, 16, 3429, 0);



UPDATE `scene_template` SET `Flags`=25, `ScriptPackageID`=3730 WHERE `SceneId`=3064;

DELETE FROM `quest_offer_reward` WHERE `ID` IN (65063 /*-Unknown-*/, 65060 /*-Unknown-*/, 65036 /*-Unknown-*/, 64873 /*-Unknown-*/, 64872 /*-Unknown-*/, 65615 /*-Unknown-*/, 64871 /*-Unknown-*/, 64866 /*-Unknown-*/, 64865 /*-Unknown-*/, 64863 /*-Unknown-*/, 64864 /*-Unknown-*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(65063, 1, 1, 1, 0, 0, 0, 0, 0, 'Good. You are awake.\n\n<Viridia coughs to clear her throat.>\n\nWe need an evoker\'s skills right now.', 46658), -- -Unknown-
(65060, 5, 0, 0, 0, 0, 0, 0, 0, 'Look at all these wounded...\n\nThere are more Menders inside. We need to help them!', 46658), -- -Unknown-
(65036, 1, 0, 0, 0, 0, 0, 0, 0, 'Time runs short. A storm approaches.', 46658), -- -Unknown-
(64873, 1, 1, 0, 0, 0, 0, 0, 0, 'You are getting the hang of this a lot faster than I was!\n\nBut then, you finished your evoker training. I was hoping to specialize as a diplomat.', 46658), -- -Unknown-
(64872, 5, 273, 0, 0, 0, 0, 0, 0, 'Good. You remember your training.\n\nKeep your head low and your lungs full.', 46658), -- -Unknown-
(65615, 1, 1, 0, 0, 0, 0, 0, 0, '<Azurathel listens intently as you tell him what you witnessed.>\n\nSo there were beacons placed outside the other creches as well.\n\nOur allies are in peril. We must reach them!', 46658), -- -Unknown-
(64871, 5, 0, 0, 0, 0, 0, 0, 0, 'We will get that rubble cleared and make sure no dracthyr is left behind.\n\nBut first, we need to secure this area.', 46658), -- -Unknown-
(64866, 66, 1, 1, 0, 0, 0, 0, 0, 'You healed our people. Well done.\n\nNow to deal with that dragon.', 46658), -- -Unknown-
(64865, 1, 1, 0, 0, 0, 0, 0, 0, 'This gear is ancient, and the food has turned to dust.\n\nIt makes no sense... those rations should have lasted a lifetime.\n\nWell, we will make do with what we have.', 46658), -- -Unknown-
(64863, 1, 0, 0, 0, 0, 0, 0, 0, 'Those constructs were animated with blue dragonflight magic. \n\nThe Earth-Warder would never have allowed this!', 46658), -- -Unknown-
(64864, 1, 1, 0, 0, 0, 0, 0, 0, '<Azurathel listens to your report.>\n\nMy memories are as broken as yours, $n. But we cannot dwell on that now.\n\nWe need to assess and make a plan.', 46658); -- -Unknown-


DELETE FROM `quest_poi` WHERE (`QuestID`=65074 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=65074 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=65074 AND `BlobIndex`=2 AND `Idx1`=4) OR (`QuestID`=65074 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=65074 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65074 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=65074 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65073 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65073 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65073 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65063 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=65063 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65063 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65063 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65060 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65060 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65060 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65036 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65036 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64873 AND `BlobIndex`=0 AND `Idx1`=17) OR (`QuestID`=64873 AND `BlobIndex`=2 AND `Idx1`=16) OR (`QuestID`=64873 AND `BlobIndex`=1 AND `Idx1`=15) OR (`QuestID`=64873 AND `BlobIndex`=0 AND `Idx1`=14) OR (`QuestID`=64873 AND `BlobIndex`=4 AND `Idx1`=13) OR (`QuestID`=64873 AND `BlobIndex`=3 AND `Idx1`=12) OR (`QuestID`=64873 AND `BlobIndex`=2 AND `Idx1`=11) OR (`QuestID`=64873 AND `BlobIndex`=1 AND `Idx1`=10) OR (`QuestID`=64873 AND `BlobIndex`=0 AND `Idx1`=9) OR (`QuestID`=64873 AND `BlobIndex`=0 AND `Idx1`=8) OR (`QuestID`=64873 AND `BlobIndex`=4 AND `Idx1`=7) OR (`QuestID`=64873 AND `BlobIndex`=3 AND `Idx1`=6) OR (`QuestID`=64873 AND `BlobIndex`=2 AND `Idx1`=5) OR (`QuestID`=64873 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=64873 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=64873 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=64873 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=64873 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65615 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65615 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65615 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64872 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=64872 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=64872 AND `BlobIndex`=2 AND `Idx1`=4) OR (`QuestID`=64872 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=64872 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=64872 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=64872 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64871 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=64871 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=64871 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=64871 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64866 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=64866 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=64866 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=64866 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=64866 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64863 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=64863 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=64863 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=64863 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=64863 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64865 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=64865 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=64865 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=64865 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64864 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=64864 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=64864 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=64864 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=64864 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(65074, 1, 6, 32, 0, 0, 2444, 2101, 0, 0, 0, 0, 0, 2186147, 0, 46658), -- -Unknown-
(65074, 0, 5, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2155105, 0, 46658), -- -Unknown-
(65074, 2, 4, 0, 422194, 182008, 2570, 2118, 0, 0, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(65074, 1, 3, 0, 422194, 182008, 2570, 2118, 0, 0, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(65074, 0, 2, 0, 422194, 182008, 2570, 2118, 0, 0, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(65074, 1, 1, -1, 0, 0, 2444, 2101, 0, 0, 0, 0, 0, 2186147, 0, 46658), -- -Unknown-
(65074, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2155105, 0, 46658), -- -Unknown-
(65073, 0, 2, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2153030, 0, 46658), -- -Unknown-
(65073, 0, 1, 0, 422052, 187948, 2570, 2118, 0, 0, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(65073, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2153030, 0, 46658), -- -Unknown-
(65063, 1, 3, 32, 0, 0, 2444, 2101, 0, 0, 0, 0, 0, 2186147, 0, 46658), -- -Unknown-
(65063, 0, 2, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2155105, 0, 46658), -- -Unknown-
(65063, 0, 1, 0, 422747, 184214, 2444, 2101, 0, 0, 0, 0, 0, 2187052, 0, 46658), -- -Unknown-
(65063, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2153030, 0, 46658), -- -Unknown-
(65060, 0, 2, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2183868, 0, 46658), -- -Unknown-
(65060, 0, 1, 0, 424216, 182317, 2570, 2118, 0, 0, 0, 0, 0, 2115407, 0, 46658), -- -Unknown-
(65060, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2155105, 0, 46658), -- -Unknown-
(65036, 0, 1, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2221475, 0, 46658), -- -Unknown-
(65036, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2183868, 0, 46658), -- -Unknown-
(64873, 0, 17, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2183868, 0, 46658), -- -Unknown-
(64873, 2, 16, 6, 431537, 197342, 2570, 2118, 0, 0, 0, 0, 0, 2274825, 0, 46658), -- -Unknown-
(64873, 1, 15, 6, 431537, 197342, 2570, 2118, 0, 0, 0, 0, 0, 2274829, 0, 46658), -- -Unknown-
(64873, 0, 14, 6, 431537, 197342, 2570, 2118, 0, 0, 0, 0, 0, 2274828, 0, 46658), -- -Unknown-
(64873, 4, 13, 4, 429194, 192832, 2570, 2118, 0, 0, 0, 0, 0, 2221379, 0, 46658), -- -Unknown-
(64873, 3, 12, 4, 429194, 192832, 2570, 2118, 0, 0, 0, 0, 0, 2221384, 0, 46658), -- -Unknown-
(64873, 2, 11, 4, 429194, 192832, 2570, 2118, 0, 0, 0, 0, 0, 2221387, 0, 46658), -- -Unknown-
(64873, 1, 10, 4, 429194, 192832, 2570, 2118, 0, 0, 0, 0, 0, 2221385, 0, 46658), -- -Unknown-
(64873, 0, 9, 4, 429194, 192832, 2570, 2118, 0, 0, 0, 0, 0, 2221465, 0, 46658), -- -Unknown-
(64873, 0, 8, 3, 429203, 192893, 2570, 2118, 0, 0, 0, 0, 0, 2221506, 0, 46658), -- -Unknown-
(64873, 4, 7, 2, 429174, 192831, 2570, 2118, 0, 0, 0, 0, 0, 2221378, 0, 46658), -- -Unknown-
(64873, 3, 6, 2, 429174, 192831, 2570, 2118, 0, 0, 0, 0, 0, 2221227, 0, 46658), -- -Unknown-
(64873, 2, 5, 2, 429174, 192831, 2570, 2118, 0, 0, 0, 0, 0, 2221226, 0, 46658), -- -Unknown-
(64873, 1, 4, 2, 429174, 192831, 2570, 2118, 0, 0, 0, 0, 0, 2221225, 0, 46658), -- -Unknown-
(64873, 0, 3, 2, 429174, 192831, 2570, 2118, 0, 0, 0, 0, 0, 2221213, 0, 46658), -- -Unknown-
(64873, 0, 2, 0, 429202, 192889, 2570, 2118, 0, 0, 0, 0, 0, 2221475, 0, 46658), -- -Unknown-
(64873, 0, 1, 0, 429202, 192889, 2570, 2118, 0, 0, 0, 0, 0, 2221475, 0, 46658), -- -Unknown-
(64873, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2221475, 0, 46658), -- -Unknown-
(65615, 0, 2, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2114783, 0, 46658), -- -Unknown-
(65615, 0, 1, 0, 424052, 187626, 2570, 2118, 0, 0, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(65615, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2114783, 0, 46658), -- -Unknown-
(64872, 1, 6, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2218697, 0, 46658), -- -Unknown-
(64872, 0, 5, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2155479, 0, 46658), -- -Unknown-
(64872, 2, 4, 5, 424139, 95604, 2570, 2118, 0, 0, 0, 0, 0, 2183337, 0, 46658), -- -Unknown-
(64872, 1, 3, 5, 424139, 95604, 2570, 2118, 0, 0, 0, 0, 0, 2183336, 0, 46658), -- -Unknown-
(64872, 0, 2, 5, 424139, 95604, 2570, 2118, 0, 0, 0, 0, 0, 2183338, 0, 46658), -- -Unknown-
(64872, 0, 1, 4, 424050, 187611, 2570, 2118, 0, 0, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(64872, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2218697, 0, 46658), -- -Unknown-
(64871, 0, 3, 32, 0, 0, 2570, 2109, 0, 2, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(64871, 0, 2, 1, 421932, 186854, 2570, 2109, 0, 2, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(64871, 0, 1, 0, 423874, 24025, 2570, 2109, 0, 2, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(64871, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2155479, 0, 46658), -- -Unknown-
(64866, 0, 4, 32, 0, 0, 2570, 2109, 0, 0, 0, 0, 0, 2112287, 0, 46658), -- -Unknown-
(64866, 0, 3, 1, 423706, 182702, 2570, 2109, 0, 2, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(64866, 0, 2, 0, 423703, 181597, 2570, 2109, 0, 0, 0, 0, 0, 2112295, 0, 46658), -- -Unknown-
(64866, 1, 1, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2114642, 0, 46658), -- -Unknown-
(64866, 0, 0, -1, 0, 0, 2570, 2109, 0, 2, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(64863, 0, 4, 32, 0, 0, 2570, 2109, 0, 0, 0, 0, 0, 2112286, 0, 46658), -- -Unknown-
(64863, 1, 3, 0, 421900, 186853, 2570, 2118, 0, 0, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(64863, 0, 2, 0, 421900, 186853, 2570, 2109, 0, 2, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(64863, 1, 1, -1, 0, 0, 2570, 2109, 0, 0, 0, 0, 0, 2114300, 0, 46658), -- -Unknown-
(64863, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2114300, 0, 46658), -- -Unknown-
(64865, 0, 3, 2, 423113, 187855, 2570, 2109, 0, 2, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(64865, 0, 2, 1, 421905, 187853, 2570, 2109, 0, 2, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(64865, 0, 1, 0, 421904, 187852, 2570, 2109, 0, 0, 0, 0, 0, 2114323, 0, 46658), -- -Unknown-
(64865, 0, 0, -1, 0, 0, 2570, 2109, 0, 0, 0, 0, 0, 2112287, 0, 46658), -- -Unknown-
(64864, 0, 4, 32, 0, 0, 2570, 2109, 0, 2, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(64864, 0, 3, 4, 422316, 183380, 2570, 2109, 0, 2, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(64864, 0, 2, 3, 423680, 181680, 2570, 2109, 0, 0, 0, 0, 0, 2113010, 0, 46658), -- -Unknown-
(64864, 0, 1, 1, 421736, 181712, 2570, 2109, 0, 2, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(64864, 0, 0, -1, 0, 0, 2570, 2109, 0, 2, 0, 0, 0, 0, 0, 46658); -- -Unknown-

DELETE FROM `quest_poi_points` WHERE (`QuestID`=65074 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=65074 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=65074 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=65074 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=65074 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=65074 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=65074 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=65074 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=65074 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=65074 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=65074 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=65074 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=65074 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=65074 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65074 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=65074 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=65074 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=65074 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65074 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65074 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65073 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65073 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65063 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65063 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65063 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65063 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65060 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65060 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65060 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65036 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65036 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64873 AND `Idx1`=17 AND `Idx2`=0) OR (`QuestID`=64873 AND `Idx1`=16 AND `Idx2`=0) OR (`QuestID`=64873 AND `Idx1`=15 AND `Idx2`=0) OR (`QuestID`=64873 AND `Idx1`=14 AND `Idx2`=0) OR (`QuestID`=64873 AND `Idx1`=13 AND `Idx2`=0) OR (`QuestID`=64873 AND `Idx1`=12 AND `Idx2`=0) OR (`QuestID`=64873 AND `Idx1`=11 AND `Idx2`=0) OR (`QuestID`=64873 AND `Idx1`=10 AND `Idx2`=0) OR (`QuestID`=64873 AND `Idx1`=9 AND `Idx2`=0) OR (`QuestID`=64873 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=64873 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=64873 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=64873 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=64873 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=64873 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=64873 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=64873 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=64873 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65615 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65615 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65615 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64872 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=64872 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=64872 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=64872 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=64872 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=64872 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=64872 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=64872 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=64872 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=64872 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=64872 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=64872 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=64872 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=64872 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=64872 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=64872 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=64872 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=64872 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64871 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=64871 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=64871 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=64871 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=64871 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=64871 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=64871 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=64871 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=64871 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=64871 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=64871 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=64871 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=64871 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=64871 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=64871 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64866 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=64866 AND `Idx1`=3 AND `Idx2`=11) OR (`QuestID`=64866 AND `Idx1`=3 AND `Idx2`=10) OR (`QuestID`=64866 AND `Idx1`=3 AND `Idx2`=9) OR (`QuestID`=64866 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=64866 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=64866 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=64866 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=64866 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=64866 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=64866 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=64866 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=64866 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=64866 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=64866 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=64866 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64863 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=64863 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=64863 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=64863 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=64863 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=64863 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=64863 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=64863 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=64863 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=64863 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=64863 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=64863 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=64863 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=64863 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=64863 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=64863 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=64863 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=64863 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=64863 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64865 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=64865 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=64865 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=64865 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64864 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=64864 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=64864 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=64864 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=64864 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(65074, 6, 0, 7220, -2610, 130, 46658), -- -Unknown-
(65074, 5, 0, 7162, -2649, 125, 46658), -- -Unknown-
(65074, 4, 5, 6845, -3025, 85, 46658), -- -Unknown-
(65074, 4, 4, 6782, -2897, 56, 46658), -- -Unknown-
(65074, 4, 3, 6860, -2809, 97, 46658), -- -Unknown-
(65074, 4, 2, 6954, -2829, 70, 46658), -- -Unknown-
(65074, 4, 1, 7008, -2852, 54, 46658), -- -Unknown-
(65074, 4, 0, 6918, -3096, 95, 46658), -- -Unknown-
(65074, 3, 5, 7041, -3057, 93, 46658), -- -Unknown-
(65074, 3, 4, 7003, -3047, 88, 46658), -- -Unknown-
(65074, 3, 3, 7069, -2950, 59, 46658), -- -Unknown-
(65074, 3, 2, 7123, -2921, 54, 46658), -- -Unknown-
(65074, 3, 1, 7219, -2953, 75, 46658), -- -Unknown-
(65074, 3, 0, 7147, -3062, 134, 46658), -- -Unknown-
(65074, 2, 3, 7065, -3207, 130, 46658), -- -Unknown-
(65074, 2, 2, 7092, -3201, 130, 46658), -- -Unknown-
(65074, 2, 1, 7112, -3230, 128, 46658), -- -Unknown-
(65074, 2, 0, 7085, -3236, 129, 46658), -- -Unknown-
(65074, 1, 0, 7220, -2610, 130, 46658), -- -Unknown-
(65074, 0, 0, 7162, -2649, 125, 46658), -- -Unknown-
(65073, 2, 0, 7161, -2645, 125, 46658), -- -Unknown-
(65073, 1, 10, 6905, -3088, 98, 46658), -- -Unknown-
(65073, 1, 9, 6845, -3025, 85, 46658), -- -Unknown-
(65073, 1, 8, 6782, -2897, 56, 46658), -- -Unknown-
(65073, 1, 7, 6935, -2767, 89, 46658), -- -Unknown-
(65073, 1, 6, 6945, -2765, 88, 46658), -- -Unknown-
(65073, 1, 5, 6988, -2780, 85, 46658), -- -Unknown-
(65073, 1, 4, 7162, -2957, 83, 46658), -- -Unknown-
(65073, 1, 3, 7162, -3055, 138, 46658), -- -Unknown-
(65073, 1, 2, 7155, -3061, 139, 46658), -- -Unknown-
(65073, 1, 1, 7060, -3125, 123, 46658), -- -Unknown-
(65073, 1, 0, 7052, -3127, 125, 46658), -- -Unknown-
(65073, 0, 0, 7161, -2645, 125, 46658), -- -Unknown-
(65063, 3, 0, 7220, -2610, 130, 46658), -- -Unknown-
(65063, 2, 0, 7162, -2649, 125, 46658), -- -Unknown-
(65063, 1, 0, 7326, -2420, 77, 46658), -- -Unknown-
(65063, 0, 0, 7161, -2645, 125, 46658), -- -Unknown-
(65060, 2, 0, 6400, -3300, 184, 46658), -- -Unknown-
(65060, 1, 0, 6918, -3089, 162, 46658), -- -Unknown-
(65060, 0, 0, 7162, -2649, 125, 46658), -- -Unknown-
(65036, 1, 0, 6464, -3313, 185, 46658), -- -Unknown-
(65036, 0, 0, 6400, -3300, 184, 46658), -- -Unknown-
(64873, 17, 0, 6400, -3300, 184, 46658), -- -Unknown-
(64873, 16, 0, 6851, -3523, 265, 46658), -- -Unknown-
(64873, 15, 0, 6779, -3484, 268, 46658), -- -Unknown-
(64873, 14, 0, 6653, -3413, 227, 46658), -- -Unknown-
(64873, 13, 0, 6629, -3181, 188, 46658), -- -Unknown-
(64873, 12, 0, 6626, -3164, 154, 46658), -- -Unknown-
(64873, 11, 0, 6621, -3139, 108, 46658), -- -Unknown-
(64873, 10, 0, 6614, -3099, 82, 46658), -- -Unknown-
(64873, 9, 0, 6608, -3043, 94, 46658), -- -Unknown-
(64873, 8, 0, 6634, -3224, 147, 46658), -- -Unknown-
(64873, 7, 0, 6676, -3458, 193, 46658), -- -Unknown-
(64873, 6, 0, 6630, -3416, 198, 46658), -- -Unknown-
(64873, 5, 0, 6582, -3379, 215, 46658), -- -Unknown-
(64873, 4, 0, 6549, -3362, 219, 46658), -- -Unknown-
(64873, 3, 0, 6517, -3343, 227, 46658), -- -Unknown-
(64873, 2, 0, 6464, -3313, 185, 46658), -- -Unknown-
(64873, 1, 0, 6464, -3313, 185, 46658), -- -Unknown-
(64873, 0, 0, 6464, -3313, 185, 46658), -- -Unknown-
(65615, 2, 0, 6396, -3296, 184, 46658), -- -Unknown-
(65615, 1, 0, 6540, -3334, 162, 46658), -- -Unknown-
(65615, 0, 0, 6396, -3296, 184, 46658), -- -Unknown-
(64872, 6, 0, 6398, -3302, 184, 46658), -- -Unknown-
(64872, 5, 0, 6394, -3304, 184, 46658), -- -Unknown-
(64872, 4, 0, 6477, -3262, 162, 46658), -- -Unknown-
(64872, 3, 0, 6449, -3368, 162, 46658), -- -Unknown-
(64872, 2, 0, 6397, -3286, 185, 46658), -- -Unknown-
(64872, 1, 11, 6429, -3421, 164, 46658), -- -Unknown-
(64872, 1, 10, 6415, -3328, 185, 46658), -- -Unknown-
(64872, 1, 9, 6428, -3288, 187, 46658), -- -Unknown-
(64872, 1, 8, 6444, -3255, 188, 46658), -- -Unknown-
(64872, 1, 7, 6472, -3240, 167, 46658), -- -Unknown-
(64872, 1, 6, 6506, -3243, 162, 46658), -- -Unknown-
(64872, 1, 5, 6535, -3265, 169, 46658), -- -Unknown-
(64872, 1, 4, 6516, -3379, 169, 46658), -- -Unknown-
(64872, 1, 3, 6513, -3383, 170, 46658), -- -Unknown-
(64872, 1, 2, 6476, -3417, 170, 46658), -- -Unknown-
(64872, 1, 1, 6470, -3421, 167, 46658), -- -Unknown-
(64872, 1, 0, 6431, -3423, 164, 46658), -- -Unknown-
(64872, 0, 0, 6398, -3302, 184, 46658), -- -Unknown-
(64871, 3, 0, 6124, -3225, 0, 46658), -- -Unknown-
(64871, 2, 0, 6322, -3279, 0, 46658), -- -Unknown-
(64871, 1, 11, 6330, -3309, 0, 46658), -- -Unknown-
(64871, 1, 10, 6291, -3299, 0, 46658), -- -Unknown-
(64871, 1, 9, 6289, -3294, 0, 46658), -- -Unknown-
(64871, 1, 8, 6289, -3289, 0, 46658), -- -Unknown-
(64871, 1, 7, 6292, -3277, 0, 46658), -- -Unknown-
(64871, 1, 6, 6306, -3243, 0, 46658), -- -Unknown-
(64871, 1, 5, 6319, -3246, 0, 46658), -- -Unknown-
(64871, 1, 4, 6347, -3254, 0, 46658), -- -Unknown-
(64871, 1, 3, 6355, -3258, 0, 46658), -- -Unknown-
(64871, 1, 2, 6357, -3263, 0, 46658), -- -Unknown-
(64871, 1, 1, 6339, -3310, 0, 46658), -- -Unknown-
(64871, 1, 0, 6335, -3310, 0, 46658), -- -Unknown-
(64871, 0, 0, 6394, -3304, 184, 46658), -- -Unknown-
(64866, 4, 0, 5986, -3061, 201, 46658), -- -Unknown-
(64866, 3, 11, 6019, -3371, 0, 46658), -- -Unknown-
(64866, 3, 10, 5946, -3192, 0, 46658), -- -Unknown-
(64866, 3, 9, 5943, -3172, 0, 46658), -- -Unknown-
(64866, 3, 8, 5953, -3137, 0, 46658), -- -Unknown-
(64866, 3, 7, 5969, -3114, 0, 46658), -- -Unknown-
(64866, 3, 6, 6022, -3055, 0, 46658), -- -Unknown-
(64866, 3, 5, 6063, -3030, 0, 46658), -- -Unknown-
(64866, 3, 4, 6114, -3030, 0, 46658), -- -Unknown-
(64866, 3, 3, 6149, -3068, 0, 46658), -- -Unknown-
(64866, 3, 2, 6156, -3104, 0, 46658), -- -Unknown-
(64866, 3, 1, 6086, -3393, 0, 46658), -- -Unknown-
(64866, 3, 0, 6050, -3399, 0, 46658), -- -Unknown-
(64866, 2, 0, 6058, -3075, 155, 46658), -- -Unknown-
(64866, 1, 0, 6137, -3230, 133, 46658), -- -Unknown-
(64866, 0, 0, 6114, -3230, 0, 46658), -- -Unknown-
(64863, 4, 0, 5815, -2916, 206, 46658), -- -Unknown-
(64863, 3, 3, 5956, -3027, 200, 46658), -- -Unknown-
(64863, 3, 2, 5888, -2949, 205, 46658), -- -Unknown-
(64863, 3, 1, 5867, -2924, 205, 46658), -- -Unknown-
(64863, 3, 0, 6014, -3030, 203, 46658), -- -Unknown-
(64863, 2, 11, 5852, -3030, 0, 46658), -- -Unknown-
(64863, 2, 10, 5811, -3025, 0, 46658), -- -Unknown-
(64863, 2, 9, 5783, -2953, 0, 46658), -- -Unknown-
(64863, 2, 8, 5795, -2903, 0, 46658), -- -Unknown-
(64863, 2, 7, 5828, -2882, 0, 46658), -- -Unknown-
(64863, 2, 6, 5874, -2879, 0, 46658), -- -Unknown-
(64863, 2, 5, 5941, -2887, 0, 46658), -- -Unknown-
(64863, 2, 4, 6016, -2908, 0, 46658), -- -Unknown-
(64863, 2, 3, 6044, -2938, 0, 46658), -- -Unknown-
(64863, 2, 2, 6047, -2981, 0, 46658), -- -Unknown-
(64863, 2, 1, 6016, -3040, 0, 46658), -- -Unknown-
(64863, 2, 0, 5968, -3042, 0, 46658), -- -Unknown-
(64863, 1, 0, 5975, -3055, 201, 46658), -- -Unknown-
(64863, 0, 0, 5975, -3055, 201, 46658), -- -Unknown-
(64865, 3, 0, 5953, -2926, 0, 46658), -- -Unknown-
(64865, 2, 0, 6030, -2984, 0, 46658), -- -Unknown-
(64865, 1, 0, 5920, -3046, 201, 46658), -- -Unknown-
(64865, 0, 0, 5986, -3061, 201, 46658), -- -Unknown-
(64864, 4, 0, 5787, -3022, 0, 46658), -- -Unknown-
(64864, 3, 0, 5803, -2907, 0, 46658), -- -Unknown-
(64864, 2, 0, 5779, -3039, 210, 46658), -- -Unknown-
(64864, 1, 0, 5811, -3075, 0, 46658), -- -Unknown-
(64864, 0, 0, 5813, -2912, 0, 46658); -- -Unknown-


DELETE FROM `quest_details` WHERE `ID` IN (65074 /*-Unknown-*/, 65073 /*-Unknown-*/, 65063 /*-Unknown-*/, 65060 /*-Unknown-*/, 65036 /*-Unknown-*/, 64873 /*-Unknown-*/, 65615 /*-Unknown-*/, 64872 /*-Unknown-*/, 64871 /*-Unknown-*/, 64866 /*-Unknown-*/, 64863 /*-Unknown-*/, 64865 /*-Unknown-*/, 64864 /*-Unknown-*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(65074, 1, 1, 1, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(65073, 1, 1, 1, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(65063, 1, 1, 0, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(65060, 1, 1, 1, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(65036, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(64873, 1, 1, 6, 1, 0, 0, 0, 0, 46658), -- -Unknown-
(65615, 6, 1, 1, 274, 0, 0, 0, 0, 46658), -- -Unknown-
(64872, 1, 6, 1, 1, 0, 0, 0, 0, 46658), -- -Unknown-
(64871, 6, 5, 1, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(64866, 1, 1, 274, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(64863, 1, 1, 1, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(64865, 1, 1, 5, 0, 0, 0, 0, 0, 46658), -- -Unknown-
(64864, 1, 1, 1, 0, 0, 0, 0, 0, 46658); -- -Unknown-




DELETE FROM `quest_request_items` WHERE `ID`=64865;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(64865, 0, 0, 0, 0, 'When memory fails, fall back on your training.', 0); -- -Unknown-


DELETE FROM `creature_queststarter` WHERE (`id`=184214 AND `quest` IN (65074,65063)) OR (`id`=184163 AND `quest`=65073) OR (`id`=181054 AND `quest` IN (65060,64873)) OR (`id`=192889 AND `quest`=65036) OR (`id`=182251 AND `quest`=65615) OR (`id`=184269 AND `quest`=64872) OR (`id`=186883 AND `quest`=64871) OR (`id`=181594 AND `quest`=64866) OR (`id`=181596 AND `quest`=64863) OR (`id`=181056 AND `quest`=64865);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(184214, 65074, 46658), -- -Unknown- offered Scalecommander Cindrethresh
(184163, 65073, 46658), -- -Unknown- offered Scalecommander Viridia
(184214, 65063, 46658), -- -Unknown- offered Scalecommander Cindrethresh
(181054, 65060, 46658), -- -Unknown- offered Scalecommander Emberthal
(192889, 65036, 46658), -- -Unknown- offered Dervishian
(181054, 64873, 46658), -- -Unknown- offered Scalecommander Emberthal
(182251, 65615, 46658), -- -Unknown- offered Scalecommander Azurathel
(184269, 64872, 46658), -- -Unknown- offered Scalecommander Cindrethresh
(186883, 64871, 46658), -- -Unknown- offered Scalecommander Cindrethresh
(181594, 64866, 46658), -- -Unknown- offered Scalecommander Azurathel
(181596, 64863, 46658), -- -Unknown- offered Dervishian
(181056, 64865, 46658); -- -Unknown- offered Scalecommander Azurathel


DELETE FROM `creature_questender` WHERE (`id`=184163 AND `quest`=65063) OR (`id`=184214 AND `quest`=65060) OR (`id`=181054 AND `quest`=65036) OR (`id`=192889 AND `quest`=64873) OR (`id`=184269 AND `quest` IN (64872,64871)) OR (`id`=182251 AND `quest`=65615) OR (`id`=182168 AND `quest`=64866) OR (`id`=181594 AND `quest`=64865) OR (`id`=182069 AND `quest`=64863) OR (`id`=181056 AND `quest`=64864);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(184163, 65063, 46658), -- -Unknown- ended by Scalecommander Viridia
(184214, 65060, 46658), -- -Unknown- ended by Scalecommander Cindrethresh
(181054, 65036, 46658), -- -Unknown- ended by Scalecommander Emberthal
(192889, 64873, 46658), -- -Unknown- ended by Dervishian
(184269, 64872, 46658), -- -Unknown- ended by Scalecommander Cindrethresh
(182251, 65615, 46658), -- -Unknown- ended by Scalecommander Azurathel
(184269, 64871, 46658), -- -Unknown- ended by Scalecommander Cindrethresh
(182168, 64866, 46658), -- -Unknown- ended by Scalecommander Azurathel
(181594, 64865, 46658), -- -Unknown- ended by Scalecommander Azurathel
(182069, 64863, 46658), -- -Unknown- ended by Dervishian
(181056, 64864, 46658); -- -Unknown- ended by Scalecommander Azurathel

DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (184166,188652,187904,182349,184163,188146,191444,191445,188197,187833,184214,188621,188201,191713,188300,194957,182006,182394,182317,192561,182007,182008,188292,186703,186149,181840,182277,197342,191729,191521,192832,182646,191454,192473,181427,191530,191526,191523,192831,192893,192889,181054,185433,181364,192785,183547,183549,186717,186351,192454,186707,191460,191579,192488,191456,181363,198414,198413,181311,192410,182251,184269,192076,187611,182184,187165,187167,186854,182168,181053,183960,186883,187689,191599,181597,181594,181312,187335,187133,186865,182069,191319,181056,187131,187164,186864,187015,181494,182696,181596,181712,186946,183380,186853,181680,185172,185272,187163));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(184166, 0, 0, 0, 2150, 46658),
(188652, 0, 0, 0, 2150, 46658),
(187904, 0, 0, 0, 2150, 46658),
(182349, 0, 0, 0, 2407, 46658),
(184163, 0, 0, 0, 2150, 46658),
(188146, 0, 0, 0, 2419, 46658),
(191444, 0, 0, 0, 2419, 46658),
(191445, 0, 0, 0, 2419, 46658),
(188197, 0, 0, 0, 2150, 46658),
(187833, 0, 0, 0, 2150, 46658),
(184214, 0, 0, 0, 2078, 46658),
(188621, 0, 0, 0, 2419, 46658),
(188201, 0, 0, 0, 2150, 46658),
(191713, 0, 0, 0, 2150, 46658),
(188300, 0, 0, 0, 2407, 46658),
(194957, 0, 0, 0, 2150, 46658),
(182006, 0, 0, 0, 81, 46658),
(182394, 0, 0, 0, 2150, 46658),
(182317, 0, 0, 0, 2150, 46658),
(192561, 0, 0, 0, 81, 46658),
(182007, 0, 0, 0, 2150, 46658),
(182008, 0, 0, 0, 2150, 46658),
(188292, 0, 0, 0, 2407, 46658),
(186703, 0, 0, 0, 2150, 46658),
(186149, 0, 0, 0, 2150, 46658),
(181840, 0, 0, 0, 2150, 46658),
(182277, 0, 0, 0, 2150, 46658),
(197342, 0, 0, 0, 825, 46658),
(191729, 0, 0, 0, 2405, 46658),
(191521, 0, 0, 0, 81, 46658),
(192832, 0, 0, 0, 825, 46658),
(182646, 0, 0, 0, 81, 46658),
(191454, 0, 0, 0, 81, 46658),
(192473, 0, 0, 0, 2150, 46658),
(181427, 0, 0, 0, 2150, 46658),
(191530, 0, 0, 0, 2150, 46658),
(191526, 0, 0, 0, 81, 46658),
(191523, 0, 0, 0, 2150, 46658),
(192831, 0, 0, 0, 825, 46658),
(192893, 0, 0, 0, 2150, 46658),
(192889, 0, 0, 0, 2150, 46658),
(181054, 0, 0, 0, 2150, 46658),
(185433, 0, 0, 0, 2150, 46658),
(181364, 0, 0, 0, 2150, 46658),
(192785, 0, 0, 0, 2150, 46658),
(183547, 0, 0, 0, 2150, 46658),
(183549, 0, 0, 0, 2150, 46658),
(186717, 0, 0, 0, 81, 46658),
(186351, 0, 0, 0, 2150, 46658),
(192454, 0, 0, 0, 2150, 46658),
(186707, 0, 0, 0, 81, 46658),
(191460, 0, 0, 0, 81, 46658),
(191579, 0, 0, 0, 81, 46658),
(192488, 0, 0, 0, 81, 46658),
(191456, 0, 0, 0, 2150, 46658),
(181363, 0, 0, 0, 2150, 46658),
(198414, 0, 0, 0, 2418, 46658),
(198413, 0, 0, 0, 2418, 46658),
(181311, 0, 0, 0, 2150, 46658),
(192410, 0, 0, 0, 2150, 46658),
(182251, 0, 0, 0, 2420, 46658),
(184269, 0, 0, 0, 2420, 46658),
(192076, 0, 0, 0, 2150, 46658),
(187611, 0, 0, 0, 2150, 46658),
(182184, 0, 0, 0, 2150, 46658),
(187165, 0, 0, 0, 2150, 46658),
(187167, 0, 0, 0, 2150, 46658),
(186854, 0, 0, 0, 2150, 46658),
(182168, 0, 0, 0, 2078, 46658),
(181053, 0, 0, 0, 2150, 46658),
(183960, 0, 0, 0, 2150, 46658),
(186883, 0, 0, 0, 2150, 46658),
(187689, 0, 0, 0, 2150, 46658),
(191599, 0, 0, 0, 81, 46658),
(181597, 0, 0, 0, 2150, 46658),
(181594, 0, 0, 0, 2078, 46658),
(181312, 0, 0, 0, 2150, 46658),
(187335, 0, 0, 0, 2150, 46658),
(187133, 0, 0, 0, 2150, 46658),
(186865, 0, 0, 0, 2150, 46658),
(182069, 0, 0, 0, 2078, 46658),
(191319, 0, 0, 0, 2523, 46658),
(181056, 0, 0, 0, 2078, 46658),
(187131, 0, 0, 0, 2150, 46658),
(187164, 0, 0, 0, 81, 46658),
(186864, 0, 0, 0, 2150, 46658),
(187015, 0, 0, 0, 825, 46658),
(181494, 0, 0, 0, 2150, 46658),
(182696, 0, 0, 0, 2150, 46658),
(181596, 0, 0, 0, 2150, 46658),
(181712, 0, 0, 0, 2150, 46658),
(186946, 0, 0, 0, 2150, 46658),
(183380, 0, 0, 0, 2078, 46658),
(186853, 0, 0, 0, 2150, 46658),
(181680, 0, 0, 0, 2150, 46658),
(185172, 0, 0, 0, 2150, 46658),
(185272, 0, 0, 0, 2150, 46658),
(187163, 0, 0, 0, 81, 46658);


DELETE FROM `creature_model_info` WHERE `DisplayID` IN (104919, 104293, 104555, 105559, 104837, 104835, 104836, 104522, 104519, 104520, 100699, 104523, 110395, 100689, 104516, 105185, 104517, 104518, 105188, 100698, 106882, 105198, 105864, 102574, 106883, 103869, 104703, 106610, 103871, 101430, 102067, 102065, 110294, 110293, 104071, 104069, 103833, 110296, 108009, 110297, 104070, 106707, 109437, 104067, 109181, 100951, 103866, 100353, 106611, 100358, 101432, 101431, 104074, 100537, 105560, 107699, 105562, 94431, 105529, 110397, 104839, 104842, 102064, 104841, 105787, 104840, 105788, 107859, 104019, 104619, 105960);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(104919, 0.374034881591796875, 0.375, 0, 46658),
(104293, 2.106381893157958984, 1.80000007152557373, 0, 46658),
(104555, 0.830299973487854003, 2.299999952316284179, 0, 46658),
(105559, 0.350900888442993164, 0, 0, 46658),
(104837, 0.722000002861022949, 2, 0, 46658),
(104835, 0.722000002861022949, 2, 0, 46658),
(104836, 0.722000002861022949, 2, 0, 46658),
(104522, 0.210000008344650268, 0.300000011920928955, 0, 46658),
(104519, 0.210000008344650268, 0.300000011920928955, 0, 46658),
(104520, 0.210000008344650268, 0.300000011920928955, 0, 46658),
(100699, 0.819302201271057128, 1, 0, 46658),
(104523, 0.210000008344650268, 0.300000011920928955, 0, 46658),
(110395, 0.596531510353088378, 0, 0, 46658),
(100689, 0.288361519575119018, 0.125, 0, 46658),
(104516, 0.210000008344650268, 0.300000011920928955, 0, 46658),
(105185, 0.310000002384185791, 1.5, 0, 46658),
(104517, 0.210000008344650268, 0.300000011920928955, 0, 46658),
(104518, 0.210000008344650268, 0.300000011920928955, 0, 46658),
(105188, 0.310000002384185791, 1.5, 0, 46658),
(100698, 0.819302201271057128, 1, 0, 46658),
(106882, 0.80699998140335083, 2.20000004768371582, 0, 46658),
(105198, 0.5, 0.75, 0, 46658),
(105864, 0.5, 0.75, 0, 46658),
(102574, 0.551589131355285644, 0.5, 0, 46658),
(106883, 0.80699998140335083, 2.20000004768371582, 0, 46658),
(103869, 1.366205096244812011, 1.75, 0, 46658),
(104703, 2.948733329772949218, 2.099999904632568359, 0, 46658),
(106610, 0.243853539228439331, 1, 0, 46658),
(103871, 1.366205096244812011, 1.75, 0, 46658),
(101430, 0.554419875144958496, 1.5, 0, 46658),
(102067, 0.448296070098876953, 0.300000011920928955, 0, 46658),
(102065, 2.457278013229370117, 1.75, 0, 46658),
(110294, 0.20727550983428955, 0.85000002384185791, 0, 46658),
(110293, 0.20727550983428955, 0.85000002384185791, 0, 46658),
(104071, 2.76776432991027832, 1.75, 0, 46658),
(104069, 2.76776432991027832, 1.75, 0, 46658),
(103833, 0.383581817150115966, 1.5, 0, 46658),
(110296, 0.20727550983428955, 0.85000002384185791, 0, 46658),
(108009, 5.53552865982055664, 7, 0, 46658),
(110297, 0.20727550983428955, 0.85000002384185791, 0, 46658),
(104070, 2.76776432991027832, 1.75, 0, 46658),
(106707, 0.599362134933471679, 0, 0, 46658),
(109437, 0.80699998140335083, 2.20000004768371582, 0, 46658),
(104067, 2.76776432991027832, 1.75, 0, 46658),
(109181, 0.722000002861022949, 2, 0, 46658),
(100951, 0.529641151428222656, 0.349999994039535522, 0, 46658),
(103866, 1.366205096244812011, 1.75, 0, 46658),
(100353, 0.459838360548019409, 0, 0, 46658),
(106611, 0.243853539228439331, 1, 0, 46658),
(100358, 0.229125797748565673, 1, 0, 46658),
(101432, 0.554419875144958496, 1.5, 0, 46658),
(101431, 0.554419875144958496, 1.5, 0, 46658),
(104074, 2.214211463928222656, 1.399999976158142089, 0, 46658),
(100537, 0.916602551937103271, 2, 0, 46658),
(105560, 0.456171125173568725, 0, 0, 46658),
(107699, 0.5, 1, 0, 46658),
(105562, 0.263175666332244873, 0, 0, 46658),
(94431, 6.757809162139892578, 0, 0, 46658),
(105529, 1, 9, 0, 46658),
(110397, 0.596531510353088378, 0, 0, 46658),
(104839, 0.722000002861022949, 2, 0, 46658),
(104842, 0.722000002861022949, 2, 0, 46658),
(102064, 1.404158830642700195, 1, 0, 46658),
(104841, 0.722000002861022949, 2, 0, 46658),
(105787, 1.404254555702209472, 1.20000004768371582, 0, 46658),
(104840, 0.722000002861022949, 2, 0, 46658),
(105788, 1.404254555702209472, 1.20000004768371582, 0, 46658),
(107859, 1.010061264038085937, 3, 0, 46658),
(104019, 0.310000002384185791, 1, 0, 46658),
(104619, 0.722000002861022949, 2, 0, 46658),
(105960, 1.593232631683349609, 2, 0, 46658);

UPDATE `creature_model_info` SET `BoundingRadius`=0.383581817150115966, `CombatReach`=1.5, `VerifiedBuild`=46658 WHERE `DisplayID` IN (82113, 28501);
UPDATE `creature_model_info` SET `VerifiedBuild`=46658 WHERE `DisplayID` IN (5379, 36605, 36603, 78835, 80919, 78834);
UPDATE `creature_model_info` SET `BoundingRadius`=0.383581817150115966, `VerifiedBuild`=46658 WHERE `DisplayID`=14932;
UPDATE `creature_model_info` SET `BoundingRadius`=0.212528020143508911, `CombatReach`=0.150000005960464477, `VerifiedBuild`=46658 WHERE `DisplayID`=38585;

DELETE FROM `gossip_menu` WHERE (`TextID`=1 AND `MenuID` IN (27429,27922,27889,28515,28518,29735,27444));
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(27429, 1, 46658), -- 182349 (Injured Talon)
(27922, 1, 46658), -- 188621 (Injured Talon)
(27889, 1, 46658), -- 182317 (Scalecommander Cindrethresh)
(28515, 1, 46658), -- 192889 (Dervishian)
(28518, 1, 46658), -- 192893 (Kodethi)
(29735, 1, 46658), -- 192785 (Fusethrian)
(27444, 1, 46658); -- 181712 (Talon Kethahn)

DELETE FROM `gossip_menu_option` WHERE (`MenuID`=29735 AND `OptionID` IN (1,0)) OR (`MenuID`=27889 AND `OptionID`=0);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(29735, 1, 5, 'Bind my Hearthstone to this location.', 0, 0, 0, 0, 0, 0, NULL, 0, 46658),
(29735, 0, 1, 'I wish to browse your wares.', 4424, 0, 0, 0, 0, 0, NULL, 0, 46658), -- OptionBroadcastTextID: 4424 - 4424 - 9818 - 9818 - 12631 - 12631 - 13966 - 13966 - 14925 - 14925 - 15955 - 15955 - 16125 - 16125 - 16127 - 16127 - 17085 - 17085 - 18217 - 18217 - 19466 - 19466 - 38807 - 38807
(27889, 0, 0, 'No time to waste.', 0, 0, 0, 0, 0, 0, NULL, 0, 46658);


DELETE FROM `creature_template` WHERE `entry` IN (184166 /*To'no*/, 188652 /*Atrenosh Hailstone*/, 187904 /*Injured Drakonid*/, 182349 /*Injured Talon*/, 184163 /*Scalecommander Viridia*/, 188146 /*Tenezeth*/, 191444 /*Rethenash*/, 191445 /*Katrinasa*/, 188197 /*Raken'death*/, 187833 /*Dragonbane Beetle*/, 184214 /*Scalecommander Cindrethresh*/, 188621 /*Injured Talon*/, 188201 /*Healing Wing*/, 191713 /*Scytherin*/, 188300 /*Territorial Argali*/, 194957 /*Mature Scalerender*/, 182006 /*Amberdeath Dragonfly*/, 182394 /*Deatheater Scythid*/, 182317 /*Scalecommander Cindrethresh*/, 192561 /*Snake*/, 182007 /*Scalerender Beetle*/, 182008 /*Scythid Steamstalker*/, 188292 /*Wild Argali*/, 186703 /*Trueborn Tempest-Warrior*/, 186149 /*Galedoom Drake*/, 181840 /*Conjured Stormling*/, 182277 /*Trueborn Rainmaker*/, 197342 /*Skyward Ascent*/, 191729 /*Deathrip*/, 191521 /*Cave Spider*/, 192832 /*Dive Ring*/, 182646 /*Seagull*/, 191454 /*Amberfur Kit*/, 192473 /*Amberfur Alpha*/, 181427 /*Stormspine*/, 191530 /*Ottuk Pup*/, 191526 /*Frog*/, 191523 /*River Ottuk*/, 192831 /*Coasting Ring*/, 192893 /*Kodethi*/, 192889 /*Dervishian*/, 181054 /*Scalecommander Emberthal*/, 185433 /*Ferocious Tarasek*/, 181364 /*Primal Thunder Lizard*/, 192785 /*Fusethrian*/, 183547 /*Obsidian Warder*/, 183549 /*Dark Talon*/, 186717 /*Baby Thunder Lizard*/, 186351 /*Reach Ottuk*/, 192454 /*Hermit Crab*/, 186707 /*Flying Squirrel*/, 191460 /*Ocean Ottuk Pup*/, 191579 /*Shaggy Rabbit*/, 192488 /*Crab*/, 191456 /*Giant Ocean Ottuk*/, 181363 /*Fledgling Thunder Lizard*/, 198414 /*Vorquin*/, 198413 /*Vorquin Foal*/, 181311 /*Wild Ohuna*/, 192410 /*Mature Scalecrawler*/, 182251 /*Scalecommander Azurathel*/, 184269 /*Scalecommander Cindrethresh*/, 192076 /*Volatile Remnant*/, 187611 /*Beetle Swarmer*/, 182184 /*Creche Seal*/, 187165 /*Dark Talon*/, 187167 /*Obsidian Warder*/, 186854 /*Lapisagos*/, 182168 /*Scalecommander Azurathel*/, 181053 /*Kodethi*/, 183960 /*Dervishian*/, 186883 /*Scalecommander Cindrethresh*/, 187689 /*Scalecrawler Beetle*/, 191599 /*Beetle*/, 181597 /*Scalecommander Azurathel*/, 181594 /*Scalecommander Azurathel*/, 181312 /*Amberfur Slyvern*/, 187335 /*Dracthyr Talon*/, 187133 /*Dracthyr Talon*/, 186865 /*Kodethi*/, 182069 /*Dervishian*/, 191319 /*Ancient Splinter*/, 181056 /*Scalecommander Azurathel*/, 187131 /*Drakonid Crechebound*/, 187164 /*Invasive Salamanther*/, 186864 /*Tethalash*/, 187015 /*[DNT] Kill Credit: Cave In*/, 181494 /*Dervishian*/, 182696 /*Scalecommander Cindrethresh*/, 181596 /*Dervishian*/, 181712 /*Talon Kethahn*/, 186946 /*Kodethi*/, 183380 /*Scalecommander Azurathel*/, 186853 /*Conjured Guardian*/, 181680 /*Tethalash*/, 185172 /*Obsidian Warder*/, 185272 /*Ancient Construct*/, 187163 /*Dark Widow*/);
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(184166, 0, 60, 60, 35, 2, 1, 1.142857193946838378, 2000, 0, 33280, 2048, 1, 0, 0, 1), -- To'no
(188652, 0, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 32832, 33570816, 524800, 0, 0, 1), -- Atrenosh Hailstone
(187904, 0, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 32768, 33570816, 524800, 0, 0, 1), -- Injured Drakonid
(182349, 27429, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 32768, 33554432, 1048576, 0, 0, 1), -- Injured Talon
(184163, 0, 60, 60, 35, 3, 1, 1.142857193946838378, 2000, 0, 32768, 0, 0, 0, 0, 1), -- Scalecommander Viridia
(188146, 0, 60, 60, 35, 16777216, 1, 1.142857193946838378, 2000, 0, 537166336, 2049, 8192, 128, 0, 1), -- Tenezeth
(191444, 0, 60, 60, 35, 16777216, 1, 1.142857193946838378, 2000, 0, 537166336, 2049, 8192, 128, 0, 1), -- Rethenash
(191445, 0, 60, 60, 35, 16777216, 1, 1.142857193946838378, 2000, 0, 537166336, 2049, 8192, 128, 0, 1), -- Katrinasa
(188197, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Raken'death
(187833, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Dragonbane Beetle
(184214, 0, 70, 70, 35, 2, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Scalecommander Cindrethresh
(188621, 27922, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 32768, 33554432, 1573376, 0, 0, 1), -- Injured Talon
(188201, 0, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Healing Wing
(191713, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Scytherin
(188300, 0, 60, 60, 14, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Territorial Argali
(194957, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Mature Scalerender
(182006, 0, 1, 1, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Amberdeath Dragonfly
(182394, 0, 60, 60, 14, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Deatheater Scythid
(182317, 27889, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Scalecommander Cindrethresh
(192561, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Snake
(182007, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Scalerender Beetle
(182008, 0, 60, 60, 14, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Scythid Steamstalker
(188292, 0, 60, 60, 190, 0, 1, 1.142857193946838378, 2000, 0, 537166592, 2049, 8193, 0, 0, 1), -- Wild Argali
(186703, 0, 60, 60, 2732, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 1048576, 0, 0, 1), -- Trueborn Tempest-Warrior
(186149, 0, 60, 60, 16, 0, 1, 1, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Galedoom Drake
(181840, 0, 60, 60, 2732, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Conjured Stormling
(182277, 0, 60, 60, 2732, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 1048576, 0, 0, 1), -- Trueborn Rainmaker
(197342, 0, 30, 30, 35, 0, 1, 1.142857193946838378, 2000, 0, 33570816, 2048, 16777217, 0, 0, 1), -- Skyward Ascent
(191729, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Deathrip
(191521, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Cave Spider
(192832, 0, 30, 30, 35, 0, 1, 1.142857193946838378, 2000, 0, 33570816, 2048, 16777217, 0, 0, 1), -- Dive Ring
(182646, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Seagull
(191454, 0, 1, 1, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Amberfur Kit
(192473, 0, 60, 60, 2952, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Amberfur Alpha
(181427, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Stormspine
(191530, 0, 60, 60, 188, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Ottuk Pup
(191526, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Frog
(191523, 0, 60, 60, 2136, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- River Ottuk
(192831, 0, 30, 30, 35, 0, 1, 1.142857193946838378, 2000, 0, 33570816, 2048, 16777217, 0, 0, 1), -- Coasting Ring
(192893, 28518, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Kodethi
(192889, 28515, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Dervishian
(181054, 0, 60, 60, 35, 3, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Scalecommander Emberthal
(185433, 0, 60, 60, 2732, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 1048576, 0, 0, 1), -- Ferocious Tarasek
(181364, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Primal Thunder Lizard
(192785, 29735, 60, 60, 35, 65665, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Fusethrian
(183547, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 33556480, 1048576, 0, 0, 1), -- Obsidian Warder
(183549, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 33556480, 1048576, 0, 0, 1), -- Dark Talon
(186717, 0, 1, 1, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Baby Thunder Lizard
(186351, 0, 60, 60, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Reach Ottuk
(192454, 0, 60, 60, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 16779264, 0, 0, 0, 1), -- Hermit Crab
(186707, 0, 1, 1, 31, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Flying Squirrel
(191460, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Ocean Ottuk Pup
(191579, 0, 1, 1, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Shaggy Rabbit
(192488, 0, 1, 1, 31, 0, 1, 0.857142865657806396, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Crab
(191456, 0, 60, 60, 2673, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Giant Ocean Ottuk
(181363, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Fledgling Thunder Lizard
(198414, 0, 60, 60, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Vorquin
(198413, 0, 60, 60, 31, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Vorquin Foal
(181311, 0, 60, 60, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Wild Ohuna
(192410, 0, 60, 60, 2136, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Mature Scalecrawler
(182251, 0, 60, 60, 35, 3, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Scalecommander Azurathel
(184269, 0, 60, 60, 35, 3, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Scalecommander Cindrethresh
(192076, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 524288, 0, 0, 1), -- Volatile Remnant
(187611, 0, 60, 60, 2136, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Beetle Swarmer
(182184, 0, 60, 60, 114, 0, 1, 1, 2000, 0, 512, 67110912, 16777217, 0, 0, 1), -- Creche Seal
(187165, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 1048576, 0, 0, 1), -- Dark Talon
(187167, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 1048576, 0, 0, 1), -- Obsidian Warder
(186854, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32768, 0, 0, 0, 0, 10), -- Lapisagos
(182168, 0, 70, 70, 35, 2, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Scalecommander Azurathel
(181053, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Kodethi
(183960, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Dervishian
(186883, 0, 60, 60, 35, 2, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Scalecommander Cindrethresh
(187689, 0, 60, 60, 2136, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Scalecrawler Beetle
(191599, 0, 1, 1, 31, 0, 1, 0.857142865657806396, 2000, 0, 512, 2048, 16777216, 0, 0, 1), -- Beetle
(181597, 0, 60, 60, 35, 2, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Scalecommander Azurathel
(181594, 0, 70, 70, 35, 2, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Scalecommander Azurathel
(181312, 0, 60, 60, 2952, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Amberfur Slyvern
(187335, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33554432, 1048576, 0, 0, 1), -- Dracthyr Talon
(187133, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33554432, 1048576, 0, 0, 1), -- Dracthyr Talon
(186865, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Kodethi
(182069, 0, 70, 70, 35, 3, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Dervishian
(191319, 0, 70, 70, 16, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 524288, 4, 0, 1), -- Ancient Splinter
(181056, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Scalecommander Azurathel
(187131, 0, 60, 60, 2102, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 0, 0, 0, 1), -- Drakonid Crechebound
(187164, 0, 1, 1, 188, 0, 0.400000005960464477, 0.285714298486709594, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Invasive Salamanther
(186864, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Tethalash
(187015, 0, 30, 30, 35, 0, 1, 1.142857193946838378, 2000, 0, 33571584, 2048, 16777217, 0, 0, 1), -- [DNT] Kill Credit: Cave In
(181494, 0, 60, 60, 35, 2, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 524800, 0, 0, 1), -- Dervishian
(182696, 0, 60, 60, 35, 2, 1, 1.142857193946838378, 2000, 0, 294912, 2048, 0, 0, 0, 1), -- Scalecommander Cindrethresh
(181596, 0, 60, 60, 35, 2, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Dervishian
(181712, 27444, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 537133824, 67110913, 16785408, 0, 0, 1), -- Talon Kethahn
(186946, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Kodethi
(183380, 0, 70, 70, 35, 16777216, 1, 1.142857193946838378, 2000, 0, 262144, 2048, 524800, 0, 0, 1), -- Scalecommander Azurathel
(186853, 0, 60, 60, 190, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Conjured Guardian
(181680, 0, 60, 60, 35, 16777216, 1, 1.142857193946838378, 2000, 0, 262144, 2048, 524800, 0, 0, 1), -- Tethalash
(185172, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 295680, 33556480, 1573376, 0, 0, 1), -- Obsidian Warder
(185272, 0, 60, 60, 190, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Ancient Construct
(187163, 0, 1, 1, 31, 0, 0.400000005960464477, 0.285714298486709594, 2000, 0, 32768, 2048, 0, 0, 0, 1); -- Dark Widow


DELETE FROM `quest_template` WHERE `ID` IN (65074 /*-Unknown-*/, 65073 /*-Unknown-*/, 65063 /*-Unknown-*/, 65060 /*-Unknown-*/, 65036 /*-Unknown-*/, 64873 /*-Unknown-*/, 65615 /*-Unknown-*/, 64872 /*-Unknown-*/, 64871 /*-Unknown-*/, 64866 /*-Unknown-*/, 64863 /*-Unknown-*/, 64865 /*-Unknown-*/, 64864 /*-Unknown-*/);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestPackageID`, `ContentTuningID`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitGiverModelSceneID`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `QuestSessionBonus`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(65074, 2, 0, 2150, 13769, 0, 0, 0, 5, 1, 5, 1, 43000, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 98304, 2072, 8, 0, 0, 'Easy Prey', 'Slay $1oa scythid.', 'The wilds surrounding this creche are home to scythid. They are voracious insectoids, often territorial and aggressive. \n\nAll these wounded would be easy prey for those beasts. I do not want them attacking our Menders while they recover.\n\nCull their numbers while I look after Viridia.\n\nShe is.. very brave.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46658), -- -Unknown-
(65073, 2, 0, 2150, 13769, 0, 0, 0, 5, 1, 5, 1, 43000, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 98304, 0, 8, 0, 0, 'A Toxic Problem', 'Collect $1oa Toxin Glands.', 'You recover quickly, $n. Good.\n\nThose who escaped my creche are healing, but others remain trapped inside. Rush in to save them and I will just have to drag you out again.\n\nThere are beetle nests scattered around the caldera. Their toxin glands might provide a way to counter the effects of that poison.\n\nI am in no shape to collect them myself. I must rely upon your skills, evoker.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46658), -- -Unknown-
(65063, 2, 0, 2150, 13769, 0, 0, 0, 5, 1, 5, 1, 43000, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 98304, 2058, 8, 0, 0, 'Into the Hive', 'Follow Cindrethresh to find Viridia.', 'Whatever toxin has infested this creche is potent enough to take down our best healers.\n\nThat does not bode well for either one of us, $n.\n\nNo matter. Dracthyr are trapped inside. We are going in, regardless of risk.\n\nTake a deep breath and follow me!', '', 'Speak with Viridia.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46658), -- -Unknown-
(65060, 2, 0, 2150, 13769, 0, 0, 0, 3, 1, 3, 1, 21500, 0, 0, 0, 0, 0, 1, 0, 37748744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 98304, 0, 8, 0, 0, 'Caldera of the Menders', 'Meet Cindrethresh in the Caldera of the Menders.', 'Your vision from the arcane beacon showed that there are dracthyr trapped within their creches. We cannot afford to lose any more of our people.\n\n<Emberthal pauses, her brow furrowed.>\n\nThe Healing Wings are the finest medics in our ranks. Their creche lies within the Caldera of the Menders. Cindrethresh knows the way.\n\nLeave no one behind, evoker.', '', 'Speak with Cindrethresh at the Caldera of the Menders.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46658), -- -Unknown-
(65036, 2, 0, 2150, 13769, 0, 0, 0, 2, 1, 2, 1, 10750, 377758, 0, 0, 195044, 0, 1, 0, 308281352, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 195044, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 98304, 0, 8, 0, 0, 'Train Like We Fight', 'Practice Soar.', 'Jumping through hoops is helpful to get your bearings, but we train like we fight--relentlessly.\n\nGo ahead and try Soaring around the area until you feel you have mastered the technique. Of course you must be mindful of the local wildlife and keep an eye out for any potential threats. That is why we practice, after all.\n\nReport back to Emberthal when you feel you are ready. Good luck!', '', 'Speak with Scalecommander Emberthal when ready to continue.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46658), -- -Unknown-
(64873, 2, 0, 2150, 13769, 0, 0, 0, 5, 1, 5, 1, 43000, 377758, 0, 0, 195044, 0, 1, 0, 308281352, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 195044, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 98304, 0, 8, 0, 0, 'Stretch Your Wings', 'Practice casting Soar.', 'I am heartened to see that so many escaped the War Creche. My own weyrn... was not as fortunate.\n\n<Emberthal stands in silence for a moment.>\n\nThere are other creches throughout the Reach, filled with dracthyr in peril. Strong wings will be needed to reach them.\n\nFocus. Remember your training. Get a feel for the wind again. You must regain your strength and fly to the other creches.\n\nThe time for rest is over.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46658), -- -Unknown-
(65615, 2, 0, 2150, 13769, 0, 0, 0, 3, 1, 3, 1, 21500, 370345, 0, 0, 0, 0, 1, 0, 39845896, 8194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 98304, 2069, 8, 0, 0, 'Arcane Intrusion', 'Investigate the beacon.', 'That beacon ahead--I am certain it was not there before we were imprisoned.\n\nSpellcraft is not my forte, but I know arcane magic when I see it. The same magic used by the blue dragon in the creche.\n\nHe said a name... Malygos. It sounds so familiar, but the Earth-Warder\'s teachings feel distant. Fragmented.\n\nIf this Malygos put us into stasis, perhaps the arcane beacon was placed on his orders.\n\nInvestigate the area and report back. Ensure the beacon cannot be used to call in enemy reinforcements.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46658), -- -Unknown-
(64872, 2, 0, 2150, 13769, 0, 0, 0, 5, 1, 5, 1, 43000, 370345, 0, 0, 0, 0, 1, 0, 40894472, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 98304, 0, 8, 0, 0, 'The Fire Within', 'Learn Fire Breath and practice empowered attacks.', 'You are an evoker, $n. The best of the best. An elite soldier who has mastered the skills of each of our weyrns.\n\nI expect a lot of you.\n\nYour memories may be broken, but the might of dragons courses through your veins. Harness it.\n\nOne of your most potent weapons is your breath attack. The fire within becomes more powerful the longer you inhale.\n\nThese insects swarming over our training grounds should make fine targets.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46658), -- -Unknown-
(64871, 2, 0, 2150, 13769, 0, 0, 0, 6, 1, 6, 1, 53750, 0, 0, 0, 0, 0, 1, 0, 37748744, 0, 0, 0, 0, 105529, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 98304, 2060, 8, 0, 0, 'The Dragon at the Door', 'Defeat Lapisagos and escape the War Creche.', 'That blue dragon will collapse the creche and trap us inside!\n\nHe claims to serve Malygos. That name is familiar, but... why would any dragon want to keep us prisoner?\n\nListen, $p. We were trained to fight beside the dragons, not against them. But we have been left with no choice.\n\nTime to do what must be done, evoker.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 'He bars your escape.', 'Lapisagos', '', '', 890, 878, 46658), -- -Unknown-
(64866, 2, 0, 2150, 13769, 0, 0, 0, 6, 1, 6, 1, 53750, 0, 0, 0, 0, 0, 1, 0, 38797320, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 98304, 2068, 8, 0, 0, 'Into the Cauldron', 'Prepare to leave the creche.', 'Your skills are needed, evoker.\n\nThe creche is crumbling and we have few supplies. We must reach the passage out, but we have to get past this arcane barrier first.\n\nIn the chamber beyond, there are dracthyr in need of aid. Tend their wounds. Destroy any foe who stands in your way.\n\nThis may be the last time we walk these halls together, $n. Make it count.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46658), -- -Unknown-
(64863, 2, 0, 2150, 13769, 0, 0, 0, 5, 1, 5, 1, 43000, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 98304, 0, 8, 0, 0, 'Arcane Guardians', 'Defeat $1oa Guardians or Constructs.', 'Those constructs patrolling the creche are not animated by the Earth-Warder\'s magic.\n\n<Dervishian narrows her eyes.>\n\nWe cannot allow there to be enemies in our midst.\n\nDestroy them to clear our path forward.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46658), -- -Unknown-
(64865, 2, 0, 2150, 13769, 0, 0, 0, 5, 1, 5, 1, 43000, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 98304, 2057, 8, 0, 0, 'Gear Up', 'Acquire weapons, armor, and supplies.', 'Hostiles have invaded, our people have been confined in magical stasis, and our creche seems to be collapsing.\n\nThis is why we train, $n. When in doubt, fall back to what you know.\n\nFirst things first. Weapons, armor, supplies. Gather what you can find and get equipped while I marshal our forces.\n\nThen we will locate the Earth-Warder. Surely Neltharion can provide the answers we seek.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46658), -- -Unknown-
(64864, 2, 0, 2150, 13769, 0, 0, 0, 5, 1, 5, 1, 43000, 369819, 0, 0, 0, 0, 1, 0, 39845896, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 98304, 0, 8, 0, 0, 'Awaken, Dracthyr', 'Awaken the other dracthyr.', '<Only flashes of memory remain as you shake off what feels like an endless sleep.\n\nThe dracthyr before you is unresponsive, frozen in place by some unknown magic. You sense that within you lies the power to break your ally free.\n\nThere may be others within the creche who are suspended in this stasis.\n\nIt is your duty to awaken them.>', '', 'Speak with Scalecommander Azurathel.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46658); -- -Unknown-


DELETE FROM `quest_objectives` WHERE `ID` IN (422194 /*422194*/, 422052 /*422052*/, 422747 /*422747*/, 424216 /*424216*/, 431657 /*431657*/, 431537 /*431537*/, 431536 /*431536*/, 429194 /*429194*/, 429203 /*429203*/, 429174 /*429174*/, 423171 /*423171*/, 429202 /*429202*/, 424052 /*424052*/, 424139 /*424139*/, 424050 /*424050*/, 424049 /*424049*/, 423764 /*423764*/, 423763 /*423763*/, 423762 /*423762*/, 421932 /*421932*/, 423874 /*423874*/, 423706 /*423706*/, 423703 /*423703*/, 421900 /*421900*/, 423113 /*423113*/, 421905 /*421905*/, 421904 /*421904*/, 422316 /*422316*/, 423680 /*423680*/, 423828 /*423828*/, 421736 /*421736*/, 421735 /*421735*/);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
(422194, 65074, 0, 0, 0, 182008, 4, 0, 0, 0, 'Scythid slain', 46658), -- 422194
(422052, 65073, 1, 0, 0, 187948, 6, 0, 1, 0, 'Toxin Glands collected', 46658), -- 422052
(422747, 65063, 0, 0, 1, 184214, 1, 0, 0, 0, 'Follow Cindrethresh', 46658), -- 422747
(424216, 65060, 0, 0, 0, 182317, 1, 1, 0, 0, 'Meet Cindrethresh at the Caldera of the Menders', 46658), -- 424216
(431657, 65036, 14, 0, 0, 138572, 1, 0, 0, 0, 'Practice Soar', 46658), -- 431657
(431537, 64873, 0, 6, 6, 197342, 3, 2, 0, 0, 'Soar through rings', 46658), -- 431537
(431536, 64873, 3, 5, 5, 192889, 1, 3, 0, 0, 'Learn about Advanced Flying', 46658), -- 431536
(429194, 64873, 0, 4, 1, 192832, 5, 2, 0, 0, 'Diving through rings', 46658), -- 429194
(429203, 64873, 3, 3, 4, 192893, 1, 2, 0, 0, 'Learn about diving', 46658), -- 429203
(429174, 64873, 0, 2, 0, 192831, 5, 0, 0, 0, 'Soared through rings', 46658), -- 429174
(423171, 64873, 14, 1, 2, 135805, 1, 2, 0, 0, 'Cast Soar', 46658), -- 423171
(429202, 64873, 3, 0, 3, 192889, 1, 0, 0, 0, 'Learn about coasting', 46658), -- 429202
(424052, 65615, 0, 0, 1, 187626, 1, 0, 0, 0, 'Beacon investigated', 46658), -- 424052
(424139, 64872, 14, 5, 0, 95604, 1, 4, 0, 0, 'Use Infusers to reset Fire Breath Cooldown', 46658), -- 424139
(424050, 64872, 0, 4, 7, 187611, 100, 28, 0, 0, 'Use Fire Breath on local beetles', 46658), -- 424050
(424049, 64872, 0, 3, 6, 187613, 100, 28, 0, 0, 'Use Fire Breath on local beetles', 46658), -- 424049
(423764, 64872, 14, 2, 4, 95473, 1, 0, 0, 0, 'Cast an Empowered III Fire Breath', 46658), -- 423764
(423763, 64872, 14, 1, 3, 95471, 1, 0, 0, 0, 'Cast an Empowered II Fire Breath', 46658), -- 423763
(423762, 64872, 14, 0, 2, 95469, 1, 0, 0, 0, 'Cast an Empowered I Fire Breath', 46658), -- 423762
(421932, 64871, 0, 1, 3, 186854, 1, 3, 0, 0, '', 46658), -- 421932
(423874, 64871, 19, 0, 0, 24025, 0, 0, 0, 0, 'Exit reached', 46658), -- 423874
(423706, 64866, 0, 1, 3, 182702, 5, 2, 0, 0, 'Dracthyr rescued or healed with Living Flame', 46658), -- 423706
(423703, 64866, 0, 0, 1, 181597, 1, 0, 0, 0, 'Glide into the Earth-Warder\'s Cauldron', 46658), -- 423703
(421900, 64863, 0, 0, 0, 186853, 4, 0, 0, 0, 'Guardians or Constructs slain', 46658), -- 421900
(423113, 64865, 1, 2, 2, 187855, 1, 0, 1, 0, 'Bundle of Rations collected', 46658), -- 423113
(421905, 64865, 1, 1, 1, 187853, 1, 0, 1, 0, '', 46658), -- 421905
(421904, 64865, 1, 0, 0, 187852, 1, 0, 1, 0, '', 46658), -- 421904
(422316, 64864, 0, 4, 2, 183380, 1, 3, 0, 0, 'Azurathel awakened', 46658), -- 422316
(423680, 64864, 0, 3, 3, 181680, 1, 1, 0, 0, 'Tethalash awakened', 46658), -- 423680
(423828, 64864, 0, 2, 4, 187015, 1, 28, 0, 0, '', 46658), -- 423828
(421736, 64864, 3, 1, 1, 181712, 1, 3, 0, 0, 'Kethahn found', 46658), -- 421736
(421735, 64864, 0, 0, 0, 181494, 1, 1, 0, 0, 'Dracthyr ally awakened', 46658); -- 421735


DELETE FROM `quest_visual_effect` WHERE (`Index`=0 AND `ID` IN (422747,424216,431536,429203,429202,424052,424139,423764,423763,423762,423706,421735)) OR (`Index`=1 AND `ID`=421735);
INSERT INTO `quest_visual_effect` (`ID`, `Index`, `VisualEffect`, `VerifiedBuild`) VALUES
(422747, 0, 2099, 46658),
(424216, 0, 2099, 46658),
(431536, 0, 2099, 46658),
(429203, 0, 2099, 46658),
(429202, 0, 2099, 46658),
(424052, 0, 18444, 46658),
(424139, 0, 18413, 46658),
(423764, 0, 18413, 46658),
(423763, 0, 18413, 46658),
(423762, 0, 18413, 46658),
(423706, 0, 18423, 46658),
(421735, 1, 18429, 46658),
(421735, 0, 2099, 46658);


DELETE FROM `quest_reward_display_spell` WHERE (`Idx`=0 AND `QuestID` IN (64873,64872,64864));
INSERT INTO `quest_reward_display_spell` (`QuestID`, `Idx`, `SpellID`, `PlayerConditionID`, `VerifiedBuild`) VALUES
(64873, 0, 367961, 95579, 46658),
(64872, 0, 363898, 95579, 46658),
(64864, 0, 369819, 95579, 46658);


DELETE FROM `creature_template` WHERE `entry` IN (182696 /*Scalecommander Cindrethresh*/, 194957 /*Mature Scalerender*/, 187163 /*Dark Widow*/, 187164 /*Invasive Salamanther*/, 181594 /*Scalecommander Azurathel*/, 187165 /*Dark Talon*/, 181596 /*Dervishian*/, 187167 /*Obsidian Warder*/, 181597 /*Scalecommander Azurathel*/, 188292 /*Wild Argali*/, 181053 /*Kodethi*/, 182168 /*Scalecommander Azurathel*/, 181054 /*Scalecommander Emberthal*/, 181056 /*Scalecommander Azurathel*/, 188300 /*Territorial Argali*/, 182184 /*Creche Seal*/, 192785 /*Fusethrian*/, 181680 /*Tethalash*/, 191713 /*Scytherin*/, 186703 /*Trueborn Tempest-Warrior*/, 192831 /*Coasting Ring*/, 192832 /*Dive Ring*/, 186149 /*Galedoom Drake*/, 182251 /*Scalecommander Azurathel*/, 186707 /*Flying Squirrel*/, 191729 /*Deathrip*/, 198413 /*Vorquin Foal*/, 198414 /*Vorquin*/, 186717 /*Baby Thunder Lizard*/, 187833 /*Dragonbane Beetle*/, 183380 /*Scalecommander Azurathel*/, 181712 /*Talon Kethahn*/, 182277 /*Trueborn Rainmaker*/, 183960 /*Dervishian*/, 197342 /*Skyward Ascent*/, 192889 /*Dervishian*/, 192893 /*Kodethi*/, 182317 /*Scalecommander Cindrethresh*/, 187335 /*Dracthyr Talon*/, 187904 /*Injured Drakonid*/, 182349 /*Injured Talon*/, 192410 /*Mature Scalecrawler*/, 185172 /*Obsidian Warder*/, 182394 /*Deatheater Scythid*/, 181840 /*Conjured Stormling*/, 186853 /*Conjured Guardian*/, 186854 /*Lapisagos*/, 191319 /*Ancient Splinter*/, 186864 /*Tethalash*/, 186865 /*Kodethi*/, 181311 /*Wild Ohuna*/, 181312 /*Amberfur Slyvern*/, 186883 /*Scalecommander Cindrethresh*/, 192454 /*Hermit Crab*/, 183547 /*Obsidian Warder*/, 183549 /*Dark Talon*/, 192473 /*Amberfur Alpha*/, 186351 /*Reach Ottuk*/, 192488 /*Crab*/, 181363 /*Fledgling Thunder Lizard*/, 181364 /*Primal Thunder Lizard*/, 185272 /*Ancient Construct*/, 186946 /*Kodethi*/, 184163 /*Scalecommander Viridia*/, 188621 /*Injured Talon*/, 184166 /*To'no*/, 188652 /*Atrenosh Hailstone*/, 191444 /*Rethenash*/, 191445 /*Katrinasa*/, 192561 /*Snake*/, 181427 /*Stormspine*/, 191454 /*Amberfur Kit*/, 184214 /*Scalecommander Cindrethresh*/, 191456 /*Giant Ocean Ottuk*/, 191460 /*Ocean Ottuk Pup*/, 187015 /*[DNT] Kill Credit: Cave In*/, 182006 /*Amberdeath Dragonfly*/, 182007 /*Scalerender Beetle*/, 182008 /*Scythid Steamstalker*/, 188146 /*Tenezeth*/, 187611 /*Beetle Swarmer*/, 184269 /*Scalecommander Cindrethresh*/, 192076 /*Volatile Remnant*/, 181494 /*Dervishian*/, 191521 /*Cave Spider*/, 191523 /*River Ottuk*/, 191526 /*Frog*/, 191530 /*Ottuk Pup*/, 182069 /*Dervishian*/, 188197 /*Raken'death*/, 188201 /*Healing Wing*/, 182646 /*Seagull*/, 185433 /*Ferocious Tarasek*/, 191579 /*Shaggy Rabbit*/, 187131 /*Drakonid Crechebound*/, 187689 /*Scalecrawler Beetle*/, 187133 /*Dracthyr Talon*/, 191599 /*Beetle*/);
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `unit_class`, `WidgetSetID`, `WidgetSetUnitConditionID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `VerifiedBuild`) VALUES
(182696, 0, 0, 'Scalecommander Cindrethresh', '', 'Dark Talons', NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 10, 1, 0, 0, 206510, 46658), -- Scalecommander Cindrethresh
(194957, 182007, 0, 'Mature Scalerender', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 53, 1, 0, 0, 0.800000011920928955, 1, 0, 0, 223190, 46658), -- Mature Scalerender
(187163, 0, 0, 'Dark Widow', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 69, 213793, 46658), -- Dark Widow
(187164, 0, 0, 'Invasive Salamanther', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 69, 213794, 46658), -- Invasive Salamanther
(181594, 0, 0, 'Scalecommander Azurathel', '', 'Obsidian Warders', NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 205380, 46658), -- Scalecommander Azurathel
(187165, 0, 0, 'Dark Talon', '', NULL, NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 8392704, 0, 1, 1, 0, 0, 213795, 46658), -- Dark Talon
(181596, 0, 0, 'Dervishian', '', 'Obsidian Warders', NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 205382, 46658), -- Dervishian
(187167, 0, 0, 'Obsidian Warder', '', NULL, NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 8392704, 0, 1, 1, 0, 0, 213797, 46658), -- Obsidian Warder
(181597, 0, 0, 'Scalecommander Azurathel', '', 'Obsidian Warders', NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 205383, 46658), -- Scalecommander Azurathel
(188292, 0, 0, 'Wild Argali', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 214978, 46658), -- Wild Argali
(181053, 0, 0, 'Kodethi', '', 'Dark Talons', NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 204732, 46658), -- Kodethi
(182168, 0, 0, 'Scalecommander Azurathel', '', 'Obsidian Warders', NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 205973, 46658), -- Scalecommander Azurathel
(181054, 0, 0, 'Scalecommander Emberthal', '', 'The Adamant Vigil', NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 20, 1, 0, 0, 204733, 46658), -- Scalecommander Emberthal
(181056, 0, 0, 'Scalecommander Azurathel', '', 'Obsidian Warders', NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 204735, 46658), -- Scalecommander Azurathel
(188300, 0, 0, 'Territorial Argali', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 214986, 46658), -- Territorial Argali
(182184, 0, 0, 'Creche Seal', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 117440518, 10, 1, 0, 0, 205989, 46658), -- Creche Seal
(192785, 0, 0, 'Fusethrian', '', 'Rations & Hydration', NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 220997, 46658), -- Fusethrian
(181680, 0, 0, 'Tethalash', '', 'Quartermaster', NULL, 'questinteract', 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 205469, 46658), -- Tethalash
(191713, 0, 0, 'Scytherin', '', NULL, NULL, NULL, 8, 0, 5130, 1, 0, 0, 4, 0, 1, 72, 0, 3, 1, 0, 0, 219918, 46658), -- Scytherin
(186703, 0, 0, 'Trueborn Tempest-Warrior', '', 'Primalist', NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 2, 4096, 0, 1, 1, 0, 0, 211028, 46658), -- Trueborn Tempest-Warrior
(192831, 0, 0, 'Coasting Ring', '', NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 10, 1024, 0, 1, 1, 0, 0, 221047, 46658), -- Coasting Ring
(192832, 0, 0, 'Dive Ring', '', NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 10, 1024, 0, 1, 1, 0, 0, 221048, 46658), -- Dive Ring
(186149, 186147, 0, 'Galedoom Drake', '', 'Primalists', NULL, NULL, 8, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 10, 1, 0, 0, 210467, 46658), -- Galedoom Drake
(182251, 0, 0, 'Scalecommander Azurathel', '', 'Obsidian Warders', NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 206060, 46658), -- Scalecommander Azurathel
(186707, 0, 0, 'Flying Squirrel', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 6, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 0, 211082, 46658), -- Flying Squirrel
(191729, 0, 0, 'Deathrip', '', NULL, NULL, NULL, 8, 0, 5129, 1, 0, 0, 4, 160, 1, 72, 0, 5, 1, 0, 0, 219934, 46658), -- Deathrip
(198413, 0, 0, 'Vorquin Foal', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 6, 151, 2, 0, 0, 0.300000011920928955, 1, 0, 0, 226789, 46658), -- Vorquin Foal
(198414, 0, 0, 'Vorquin', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 151, 2, 1, 0, 1, 1, 0, 0, 226790, 46658), -- Vorquin
(186717, 0, 0, 'Baby Thunder Lizard', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 0, 211116, 46658), -- Baby Thunder Lizard
(187833, 0, 0, 'Dragonbane Beetle', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 6, 53, 1, 1, 0, 0.200000002980232238, 1, 0, 0, 214509, 46658), -- Dragonbane Beetle
(183380, 0, 0, 'Scalecommander Azurathel', '', 'Obsidian Warders', NULL, 'questinteract', 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 207206, 46658), -- Scalecommander Azurathel
(181712, 0, 0, 'Talon Kethahn', '', NULL, NULL, 'questinteract', 8, 0, 0, 2, 0, 0, 0, 0, 10, 1610612752, 117440518, 1, 1, 0, 0, 205511, 46658), -- Talon Kethahn
(182277, 0, 0, 'Trueborn Rainmaker', '', 'Primalist', NULL, NULL, 8, 0, 0, 8, 0, 0, 0, 0, 2, 4096, 0, 1, 1, 0, 0, 206086, 46658), -- Trueborn Rainmaker
(183960, 0, 0, 'Dervishian', '', 'Obsidian Warders', NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 207853, 46658), -- Dervishian
(197342, 0, 0, 'Skyward Ascent', '', NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 10, 1024, 0, 1, 1, 0, 0, 225680, 46658), -- Skyward Ascent
(192889, 0, 0, 'Dervishian', '', 'Obsidian Warders', NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 221105, 46658), -- Dervishian
(192893, 0, 0, 'Kodethi', '', 'Dark Talons', NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 221109, 46658), -- Kodethi
(182317, 0, 0, 'Scalecommander Cindrethresh', '', 'Dark Talons', NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 10, 1, 0, 0, 206131, 46658), -- Scalecommander Cindrethresh
(187335, 182702, 0, 'Dracthyr Talon', '', NULL, NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 4096, 0, 1, 1, 0, 0, 213972, 46658), -- Dracthyr Talon
(187904, 0, 0, 'Injured Drakonid', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 2, 4096, 0, 1.20000004768371582, 1, 0, 0, 214580, 46658), -- Injured Drakonid
(182349, 0, 0, 'Injured Talon', '', 'The Healing Wings', NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 4096, 0, 1, 1, 0, 0, 206163, 46658), -- Injured Talon
(192410, 187613, 0, 'Mature Scalecrawler', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 53, 1, 1, 0, 0.800000011920928955, 1, 0, 0, 220620, 46658), -- Mature Scalecrawler
(185172, 0, 0, 'Obsidian Warder', '', NULL, NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 8392704, 2048, 1, 1, 0, 0, 209287, 46658), -- Obsidian Warder
(182394, 182008, 0, 'Deatheater Scythid', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 206208, 46658), -- Deatheater Scythid
(181840, 0, 0, 'Conjured Stormling', '', NULL, NULL, NULL, 8, 0, 0, 8, 0, 0, 6, 0, 4, 0, 0, 0.300000011920928955, 1, 0, 0, 205639, 46658), -- Conjured Stormling
(186853, 0, 0, 'Conjured Guardian', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 0.699999988079071044, 1, 0, 0, 211264, 46658), -- Conjured Guardian
(186854, 0, 0, 'Lapisagos', '', 'The Spellsworn', NULL, NULL, 8, 0, 0, 2, 0, 0, 1, 0, 2, 2149580904, 0, 7.5, 1, 0, 0, 211265, 46658), -- Lapisagos
(191319, 0, 0, 'Ancient Splinter', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 4, 0, 0, 0.100000001490116119, 1, 0, 0, 219524, 46658), -- Ancient Splinter
(186864, 0, 0, 'Tethalash', '', 'Quartermaster', NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 211277, 46658), -- Tethalash
(186865, 0, 0, 'Kodethi', '', 'Dark Talons', NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 211278, 46658), -- Kodethi
(181311, 0, 0, 'Wild Ohuna', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 26, 1, 1, 0, 1, 1, 0, 0, 205051, 46658), -- Wild Ohuna
(181312, 0, 0, 'Amberfur Slyvern', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 160, 1, 1, 0, 1, 1, 0, 0, 205052, 46658), -- Amberfur Slyvern
(186883, 0, 0, 'Scalecommander Cindrethresh', '', 'Dark Talons', NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 10, 1, 0, 0, 211296, 46658), -- Scalecommander Cindrethresh
(192454, 0, 0, 'Hermit Crab', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 8, 1, 1, 0, 1, 1, 0, 0, 220664, 46658), -- Hermit Crab
(183547, 0, 0, 'Obsidian Warder', '', NULL, NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 8392704, 2048, 1, 1, 0, 0, 207387, 46658), -- Obsidian Warder
(183549, 0, 0, 'Dark Talon', '', NULL, NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 8392704, 2048, 1, 1, 0, 0, 207389, 46658), -- Dark Talon
(192473, 0, 0, 'Amberfur Alpha', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 160, 1, 1, 0, 1, 1, 0, 0, 220683, 46658), -- Amberfur Alpha
(186351, 0, 0, 'Reach Ottuk', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 6, 127, 1, 0, 0, 0.300000011920928955, 1, 0, 0, 210671, 46658), -- Reach Ottuk
(192488, 0, 0, 'Crab', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 6, 0, 8, 0, 0, 1, 1, 0, 100, 220698, 46658), -- Crab
(181363, 0, 0, 'Fledgling Thunder Lizard', '', NULL, NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 156, 1, 1, 0, 1, 1, 0, 0, 205103, 46658), -- Fledgling Thunder Lizard
(181364, 0, 0, 'Primal Thunder Lizard', '', NULL, NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 156, 1, 1, 0, 2, 1, 0, 0, 205104, 46658), -- Primal Thunder Lizard
(185272, 186853, 0, 'Ancient Construct', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 0.699999988079071044, 1, 0, 0, 209416, 46658), -- Ancient Construct
(186946, 0, 0, 'Kodethi', '', 'Dark Talons', NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 211393, 46658), -- Kodethi
(184163, 0, 0, 'Scalecommander Viridia', '', 'The Healing Wings', NULL, NULL, 8, 0, 0, 2, 0, 0, 1, 0, 7, 4096, 0, 10, 1, 0, 0, 208083, 46658), -- Scalecommander Viridia
(188621, 0, 0, 'Injured Talon', '', 'The Healing Wings', NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 4096, 0, 1, 1, 0, 0, 215307, 46658), -- Injured Talon
(184166, 0, 0, 'To\'no', '', '\"The Greatest Explorer Ever\"', NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 7, 4096, 0, 1, 1, 0, 0, 208086, 46658), -- To'no
(188652, 0, 0, 'Atrenosh Hailstone', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 1, 0, 2, 33558528, 0, 5, 1, 0, 0, 215338, 46658), -- Atrenosh Hailstone
(191444, 0, 0, 'Rethenash', '', NULL, NULL, 'questinteract', 8, 0, 0, 1, 0, 0, 0, 0, 10, 0, 0, 1, 1, 0, 0, 219649, 46658), -- Rethenash
(191445, 0, 0, 'Katrinasa', '', NULL, NULL, 'questinteract', 8, 0, 0, 1, 0, 0, 0, 0, 10, 0, 0, 1, 1, 0, 0, 219650, 46658), -- Katrinasa
(192561, 0, 0, 'Snake', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 6, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 0, 220771, 46658), -- Snake
(181427, 0, 0, 'Stormspine', '', NULL, NULL, NULL, 8, 0, 4904, 1, 0, 0, 4, 156, 1, 72, 0, 5, 1, 0, 0, 205175, 46658), -- Stormspine
(191454, 0, 0, 'Amberfur Kit', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 0, 219659, 46658), -- Amberfur Kit
(184214, 0, 0, 'Scalecommander Cindrethresh', '', 'Dark Talons', NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 10, 1, 0, 0, 208191, 46658), -- Scalecommander Cindrethresh
(191456, 0, 0, 'Giant Ocean Ottuk', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 127, 1, 1, 0, 1, 1, 0, 0, 219661, 46658), -- Giant Ocean Ottuk
(191460, 0, 0, 'Ocean Ottuk Pup', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 6, 0, 8, 0, 0, 1, 1, 0, 0, 219665, 46658), -- Ocean Ottuk Pup
(187015, 0, 0, '[DNT] Kill Credit: Cave In', '', NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0, 0, 10, 1024, 0, 1, 1, 0, 0, 213618, 46658), -- [DNT] Kill Credit: Cave In
(182006, 0, 0, 'Amberdeath Dragonfly', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 8, 0, 0, 0.800000011920928955, 1, 0, 0, 205805, 46658), -- Amberdeath Dragonfly
(182007, 0, 0, 'Scalerender Beetle', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 6, 53, 1, 0, 0, 0.300000011920928955, 1, 0, 0, 205806, 46658), -- Scalerender Beetle
(182008, 0, 0, 'Scythid Steamstalker', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0.800000011920928955, 1, 0, 0, 205807, 46658), -- Scythid Steamstalker
(188146, 0, 0, 'Tenezeth', '', NULL, NULL, 'questinteract', 8, 0, 0, 1, 0, 0, 0, 0, 10, 0, 0, 1, 1, 0, 0, 214826, 46658), -- Tenezeth
(187611, 0, 0, 'Beetle Swarmer', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 6, 53, 1, 0, 0, 0.300000011920928955, 1, 0, 0, 214254, 46658), -- Beetle Swarmer
(184269, 0, 0, 'Scalecommander Cindrethresh', '', 'Dark Talons', NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 10, 1, 0, 0, 208284, 46658), -- Scalecommander Cindrethresh
(192076, 0, 0, 'Volatile Remnant', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 6, 0, 4, 0, 0, 0.035000000149011611, 1, 0, 0, 220285, 46658), -- Volatile Remnant
(181494, 0, 0, 'Dervishian', '', 'Obsidian Warders', NULL, 'questinteract', 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 205276, 46658), -- Dervishian
(191521, 0, 0, 'Cave Spider', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 3, 8, 0, 0, 0.200000002980232238, 1, 0, 0, 219726, 46658), -- Cave Spider
(191523, 0, 0, 'River Ottuk', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 127, 1, 1, 0, 1, 1, 0, 0, 219728, 46658), -- River Ottuk
(191526, 0, 0, 'Frog', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 6, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 0, 219731, 46658), -- Frog
(191530, 0, 0, 'Ottuk Pup', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 6, 0, 1, 0, 0, 0.300000011920928955, 1, 0, 0, 219735, 46658), -- Ottuk Pup
(182069, 0, 0, 'Dervishian', '', 'Obsidian Warders', NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 205872, 46658), -- Dervishian
(188197, 0, 0, 'Raken\'death', '', '<Needs Abilities> The Wyrm Eater', NULL, NULL, 8, 0, 0, 1, 0, 0, 1, 53, 1, 2147483721, 0, 3, 1, 0, 0, 214883, 46658), -- Raken'death
(188201, 0, 0, 'Healing Wing', '', NULL, NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 214887, 46658), -- Healing Wing
(182646, 0, 0, 'Seagull', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 6, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 0, 206460, 46658), -- Seagull
(185433, 0, 0, 'Ferocious Tarasek', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 2, 4096, 0, 1, 1, 0, 0, 209601, 46658), -- Ferocious Tarasek
(191579, 0, 0, 'Shaggy Rabbit', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 0, 219784, 46658), -- Shaggy Rabbit
(187131, 0, 0, 'Drakonid Crechebound', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0.699999988079071044, 1, 0, 0, 213751, 46658), -- Drakonid Crechebound
(187689, 187613, 0, 'Scalecrawler Beetle', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 0, 53, 1, 1, 0, 1, 1, 0, 0, 214356, 46658), -- Scalecrawler Beetle
(187133, 182702, 0, 'Dracthyr Talon', '', NULL, NULL, NULL, 8, 0, 0, 2, 0, 0, 0, 0, 7, 4096, 0, 1, 1, 0, 0, 213753, 46658), -- Dracthyr Talon
(191599, 0, 0, 'Beetle', '', NULL, NULL, 'wildpetcapturable', 8, 0, 0, 1, 0, 0, 6, 0, 8, 1073741824, 0, 0.200000002980232238, 1, 0, 100, 219804, 46658); -- Beetle


DELETE FROM `creature_template_model` WHERE (`Idx`=0 AND `CreatureID` IN (184166,184163,182349,188146,191445,191444,188197,187904,187833,184214,188652,188621,188201,191713,188300,194957,182394,182006,192561,182317,188292,182008,182007,186703,186149,182277,181840,197342,191729,191521,192832,192473,182646,191454,181427,191530,191526,191523,192831,192893,192889,181054,185433,181364,192785,183549,183547,186717,186351,192454,186707,191460,191579,192488,191456,181363,198414,198413,181311,192410,184269,182251,192076,187611,182184,187165,187167,186883,183960,182168,181053,187689,191599,181597,181594,181312,187335,187133,186865,182069,191319,181056,187131,187164,186864,186854,187015,181494,181596,186946,182696,183380,186853,181680,181712,185272,185172,187163)) OR (`Idx`=3 AND `CreatureID` IN (182349,188621,188201,192561,191530,191526,181364,183549,183547,192454,187165,187167,191599,187335,187133,185172)) OR (`Idx`=2 AND `CreatureID` IN (182349,188621,188201,192561,186149,191530,191526,191523,181364,183549,183547,192454,191460,192488,191456,187165,187167,191599,187335,187133,185172)) OR (`Idx`=1 AND `CreatureID` IN (182349,187904,188621,188201,192561,188292,186149,197342,191521,192832,191530,191526,191523,192831,192893,192889,181364,192785,183549,183547,192454,191460,191579,192488,191456,198414,198413,182251,187165,187167,186883,183960,182168,181053,191599,187335,187133,186865,182069,181056,187131,186864,187015,181494,181596,186946,181680,185172)) OR (`Idx`=8 AND `CreatureID` IN (192561,191526,192454)) OR (`Idx`=7 AND `CreatureID` IN (192561,191526,192454)) OR (`Idx`=6 AND `CreatureID` IN (192561,191526,192454)) OR (`Idx`=5 AND `CreatureID` IN (192561,191526,192454)) OR (`Idx`=4 AND `CreatureID` IN (192561,191530,191526,181364,192454)) OR (`Idx`=13 AND `CreatureID` IN (191526,192454)) OR (`Idx`=12 AND `CreatureID` IN (191526,192454)) OR (`Idx`=11 AND `CreatureID` IN (191526,192454)) OR (`Idx`=10 AND `CreatureID` IN (191526,192454)) OR (`Idx`=9 AND `CreatureID` IN (191526,192454));
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(184166, 0, 104919, 0.75, 1, 46658), -- To'no
(184163, 0, 104555, 1, 1, 46658), -- Scalecommander Viridia
(182349, 3, 104837, 1, 1, 46658), -- Injured Talon
(182349, 2, 104836, 1, 1, 46658), -- Injured Talon
(182349, 1, 104835, 1, 1, 46658), -- Injured Talon
(182349, 0, 104834, 1, 1, 46658), -- Injured Talon
(188146, 0, 104834, 1, 1, 46658), -- Tenezeth
(191445, 0, 104834, 1, 1, 46658), -- Katrinasa
(191444, 0, 104834, 1, 1, 46658), -- Rethenash
(188197, 0, 105559, 8, 1, 46658), -- Raken'death
(187904, 1, 105788, 1, 1, 46658), -- Injured Drakonid
(187904, 0, 105787, 1, 1, 46658), -- Injured Drakonid
(187833, 0, 105559, 1, 1, 46658), -- Dragonbane Beetle
(184214, 0, 102033, 1, 1, 46658), -- Scalecommander Cindrethresh
(188652, 0, 104293, 1, 1, 46658), -- Atrenosh Hailstone
(188621, 3, 104837, 1, 1, 46658), -- Injured Talon
(188621, 2, 104836, 1, 1, 46658), -- Injured Talon
(188621, 1, 104835, 1, 1, 46658), -- Injured Talon
(188621, 0, 104834, 1, 1, 46658), -- Injured Talon
(188201, 3, 104836, 1, 1, 46658), -- Healing Wing
(188201, 2, 104836, 1, 1, 46658), -- Healing Wing
(188201, 1, 104835, 1, 1, 46658), -- Healing Wing
(188201, 0, 104834, 1, 1, 46658), -- Healing Wing
(191713, 0, 105190, 1.20000004768371582, 1, 46658), -- Scytherin
(188300, 0, 104135, 1, 1, 46658), -- Territorial Argali
(194957, 0, 110395, 1, 1, 46658), -- Mature Scalerender
(182394, 0, 105185, 1, 1, 46658), -- Deatheater Scythid
(182006, 0, 100689, 0.200000002980232238, 1, 46658), -- Amberdeath Dragonfly
(192561, 8, 104515, 1, 1, 46658), -- Snake
(192561, 7, 104516, 1, 1, 46658), -- Snake
(192561, 6, 104517, 1, 1, 46658), -- Snake
(192561, 5, 104518, 1, 1, 46658), -- Snake
(192561, 4, 104519, 1, 1, 46658), -- Snake
(192561, 3, 104520, 1, 1, 46658), -- Snake
(192561, 2, 104521, 1, 1, 46658), -- Snake
(192561, 1, 104522, 1, 1, 46658), -- Snake
(192561, 0, 104523, 1, 1, 46658), -- Snake
(182317, 0, 102033, 1, 1, 46658), -- Scalecommander Cindrethresh
(188292, 1, 100698, 1, 0.75, 46658), -- Wild Argali
(188292, 0, 100699, 1, 1, 46658), -- Wild Argali
(182008, 0, 105188, 1, 1, 46658), -- Scythid Steamstalker
(182007, 0, 105562, 1, 1, 46658), -- Scalerender Beetle
(186703, 0, 106882, 1, 1, 46658), -- Trueborn Tempest-Warrior
(186149, 2, 105865, 1, 1, 46658), -- Galedoom Drake
(186149, 1, 105864, 1, 1, 46658), -- Galedoom Drake
(186149, 0, 105198, 1, 1, 46658), -- Galedoom Drake
(182277, 0, 106883, 1, 1, 46658), -- Trueborn Rainmaker
(181840, 0, 102574, 1, 1, 46658), -- Conjured Stormling
(197342, 1, 11686, 1, 1, 46658), -- Skyward Ascent
(197342, 0, 93509, 1, 0, 46658), -- Skyward Ascent
(191729, 0, 104703, 1.5, 1, 46658), -- Deathrip
(191521, 1, 36603, 1, 1, 46658), -- Cave Spider
(191521, 0, 36605, 1, 1, 46658), -- Cave Spider
(192832, 1, 11686, 1, 1, 46658), -- Dive Ring
(192832, 0, 93509, 1, 0, 46658), -- Dive Ring
(192473, 0, 102065, 1.75, 1, 46658), -- Amberfur Alpha
(182646, 0, 103904, 1, 1, 46658), -- Seagull
(191454, 0, 102067, 1, 1, 46658), -- Amberfur Kit
(181427, 0, 108009, 1, 1, 46658), -- Stormspine
(191530, 4, 110293, 1, 1, 46658), -- Ottuk Pup
(191530, 3, 110294, 1, 1, 46658), -- Ottuk Pup
(191530, 2, 110295, 1, 1, 46658), -- Ottuk Pup
(191530, 1, 110296, 1, 1, 46658), -- Ottuk Pup
(191530, 0, 110297, 1, 1, 46658), -- Ottuk Pup
(191526, 13, 103833, 1, 1, 46658), -- Frog
(191526, 12, 80919, 1, 1, 46658), -- Frog
(191526, 11, 22468, 1, 1, 46658), -- Frog
(191526, 10, 82113, 1, 1, 46658), -- Frog
(191526, 9, 103832, 1, 1, 46658), -- Frog
(191526, 8, 78847, 1, 1, 46658), -- Frog
(191526, 7, 78846, 1, 1, 46658), -- Frog
(191526, 6, 14932, 1, 1, 46658), -- Frog
(191526, 5, 78835, 1, 1, 46658), -- Frog
(191526, 4, 22469, 1, 1, 46658), -- Frog
(191526, 3, 78834, 1, 1, 46658), -- Frog
(191526, 2, 5379, 1, 1, 46658), -- Frog
(191526, 1, 28501, 1, 1, 46658), -- Frog
(191526, 0, 78833, 1, 1, 46658), -- Frog
(191523, 2, 103526, 1, 1, 46658), -- River Ottuk
(191523, 1, 103527, 1, 1, 46658), -- River Ottuk
(191523, 0, 103523, 1, 1, 46658), -- River Ottuk
(192831, 1, 11686, 1, 1, 46658), -- Coasting Ring
(192831, 0, 93509, 1, 0, 46658), -- Coasting Ring
(192893, 1, 104821, 1, 1, 46658), -- Kodethi
(192893, 0, 102030, 1, 0, 46658), -- Kodethi
(192889, 1, 102176, 1, 0, 46658), -- Dervishian
(192889, 0, 102175, 1, 1, 46658), -- Dervishian
(181054, 0, 102031, 1, 1, 46658), -- Scalecommander Emberthal
(185433, 0, 109437, 1, 1, 46658), -- Ferocious Tarasek
(181364, 4, 104071, 1, 1, 46658), -- Primal Thunder Lizard
(181364, 3, 104070, 1, 1, 46658), -- Primal Thunder Lizard
(181364, 2, 104069, 1, 1, 46658), -- Primal Thunder Lizard
(181364, 1, 104068, 1, 1, 46658), -- Primal Thunder Lizard
(181364, 0, 104067, 1, 1, 46658), -- Primal Thunder Lizard
(192785, 1, 109181, 1, 1, 46658), -- Fusethrian
(192785, 0, 109180, 1, 0, 46658), -- Fusethrian
(183549, 3, 104842, 1, 1, 46658), -- Dark Talon
(183549, 2, 104841, 1, 1, 46658), -- Dark Talon
(183549, 1, 104840, 1, 1, 46658), -- Dark Talon
(183549, 0, 104839, 1, 1, 46658), -- Dark Talon
(183547, 3, 104846, 1, 1, 46658), -- Obsidian Warder
(183547, 2, 104845, 1, 1, 46658), -- Obsidian Warder
(183547, 1, 104844, 1, 1, 46658), -- Obsidian Warder
(183547, 0, 104843, 1, 1, 46658), -- Obsidian Warder
(186717, 0, 100951, 1, 1, 46658), -- Baby Thunder Lizard
(186351, 0, 103565, 1, 1, 46658), -- Reach Ottuk
(192454, 13, 103876, 1, 1, 46658), -- Hermit Crab
(192454, 12, 103875, 1, 1, 46658), -- Hermit Crab
(192454, 11, 103874, 1, 1, 46658), -- Hermit Crab
(192454, 10, 103873, 1, 1, 46658), -- Hermit Crab
(192454, 9, 103872, 1, 1, 46658), -- Hermit Crab
(192454, 8, 103871, 1, 1, 46658), -- Hermit Crab
(192454, 7, 103870, 1, 1, 46658), -- Hermit Crab
(192454, 6, 103869, 1, 1, 46658), -- Hermit Crab
(192454, 5, 103868, 1, 1, 46658), -- Hermit Crab
(192454, 4, 103867, 1, 1, 46658), -- Hermit Crab
(192454, 3, 103866, 1, 1, 46658), -- Hermit Crab
(192454, 2, 103865, 1, 1, 46658), -- Hermit Crab
(192454, 1, 103864, 1, 1, 46658), -- Hermit Crab
(192454, 0, 103863, 1, 1, 46658), -- Hermit Crab
(186707, 0, 100353, 1, 1, 46658), -- Flying Squirrel
(191460, 2, 106611, 1, 1, 46658), -- Ocean Ottuk Pup
(191460, 1, 106614, 1, 0.100000001490116119, 46658), -- Ocean Ottuk Pup
(191460, 0, 106610, 1, 1, 46658), -- Ocean Ottuk Pup
(191579, 1, 100358, 1, 1, 46658), -- Shaggy Rabbit
(191579, 0, 100271, 1, 1, 46658), -- Shaggy Rabbit
(192488, 2, 45880, 1, 1, 46658), -- Crab
(192488, 1, 32790, 1, 1, 46658), -- Crab
(192488, 0, 32789, 1, 1, 46658), -- Crab
(191456, 2, 101432, 1, 0.100000001490116119, 46658), -- Giant Ocean Ottuk
(191456, 1, 101431, 1, 1, 46658), -- Giant Ocean Ottuk
(191456, 0, 101430, 1, 1, 46658), -- Giant Ocean Ottuk
(181363, 0, 104074, 1, 1, 46658), -- Fledgling Thunder Lizard
(198414, 1, 104648, 1.10000002384185791, 1, 46658), -- Vorquin
(198414, 0, 104648, 0.899999976158142089, 1, 46658), -- Vorquin
(198413, 1, 106706, 1, 1, 46658), -- Vorquin Foal
(198413, 0, 106707, 1, 1, 46658), -- Vorquin Foal
(181311, 0, 100537, 1, 1, 46658), -- Wild Ohuna
(192410, 0, 105560, 1.299999952316284179, 1, 46658), -- Mature Scalecrawler
(184269, 0, 102033, 1, 1, 46658), -- Scalecommander Cindrethresh
(182251, 1, 107028, 1, 0, 46658), -- Scalecommander Azurathel
(182251, 0, 102032, 1, 1, 46658), -- Scalecommander Azurathel
(192076, 0, 107699, 0.5, 1, 46658), -- Volatile Remnant
(187611, 0, 105562, 0.75, 1, 46658), -- Beetle Swarmer
(182184, 0, 94431, 1.059999942779541015, 1, 46658), -- Creche Seal
(187165, 3, 104842, 1, 1, 46658), -- Dark Talon
(187165, 2, 104841, 1, 1, 46658), -- Dark Talon
(187165, 1, 104840, 1, 1, 46658), -- Dark Talon
(187165, 0, 104839, 1, 1, 46658), -- Dark Talon
(187167, 3, 104846, 1, 1, 46658), -- Obsidian Warder
(187167, 2, 104845, 1, 1, 46658), -- Obsidian Warder
(187167, 1, 104844, 1, 1, 46658), -- Obsidian Warder
(187167, 0, 104843, 1, 1, 46658), -- Obsidian Warder
(186883, 1, 107101, 1, 0, 46658), -- Scalecommander Cindrethresh
(186883, 0, 102033, 1, 1, 46658), -- Scalecommander Cindrethresh
(183960, 1, 102176, 1, 0, 46658), -- Dervishian
(183960, 0, 102175, 1, 1, 46658), -- Dervishian
(182168, 1, 107028, 1, 0, 46658), -- Scalecommander Azurathel
(182168, 0, 102032, 1, 1, 46658), -- Scalecommander Azurathel
(181053, 1, 104821, 1, 1, 46658), -- Kodethi
(181053, 0, 102030, 1, 0, 46658), -- Kodethi
(187689, 0, 110397, 1, 1, 46658), -- Scalecrawler Beetle
(191599, 3, 15468, 1, 1, 46658), -- Beetle
(191599, 2, 8971, 1, 1, 46658), -- Beetle
(191599, 1, 15467, 1, 1, 46658), -- Beetle
(191599, 0, 7511, 1, 1, 46658), -- Beetle
(181597, 0, 102032, 1, 1, 46658), -- Scalecommander Azurathel
(181594, 0, 102032, 1, 1, 46658), -- Scalecommander Azurathel
(181312, 0, 102064, 1, 1, 46658), -- Amberfur Slyvern
(187335, 3, 104842, 1, 1, 46658), -- Dracthyr Talon
(187335, 2, 104840, 1, 1, 46658), -- Dracthyr Talon
(187335, 1, 104839, 1, 1, 46658), -- Dracthyr Talon
(187335, 0, 104841, 1, 1, 46658), -- Dracthyr Talon
(187133, 3, 104842, 1, 1, 46658), -- Dracthyr Talon
(187133, 2, 104840, 1, 1, 46658), -- Dracthyr Talon
(187133, 1, 104839, 1, 1, 46658), -- Dracthyr Talon
(187133, 0, 104841, 1, 1, 46658), -- Dracthyr Talon
(186865, 1, 104821, 1, 1, 46658), -- Kodethi
(186865, 0, 102030, 1, 0, 46658), -- Kodethi
(182069, 1, 102176, 1, 0, 46658), -- Dervishian
(182069, 0, 102175, 1, 1, 46658), -- Dervishian
(191319, 0, 105960, 0.100000001490116119, 1, 46658), -- Ancient Splinter
(181056, 1, 107028, 1, 0, 46658), -- Scalecommander Azurathel
(181056, 0, 102032, 1, 1, 46658), -- Scalecommander Azurathel
(187131, 1, 105788, 1, 1, 46658), -- Drakonid Crechebound
(187131, 0, 105787, 1, 1, 46658), -- Drakonid Crechebound
(187164, 0, 104666, 1, 1, 46658), -- Invasive Salamanther
(186864, 1, 104619, 1, 1, 46658), -- Tethalash
(186864, 0, 109197, 1, 0, 46658), -- Tethalash
(186854, 0, 105529, 1, 1, 46658), -- Lapisagos
(187015, 1, 11686, 1, 1, 46658), -- [DNT] Kill Credit: Cave In
(187015, 0, 93509, 1, 0, 46658), -- [DNT] Kill Credit: Cave In
(181494, 1, 102176, 1, 0, 46658), -- Dervishian
(181494, 0, 102175, 1, 1, 46658), -- Dervishian
(181596, 1, 102176, 1, 0, 46658), -- Dervishian
(181596, 0, 102175, 1, 1, 46658), -- Dervishian
(186946, 1, 104821, 1, 1, 46658), -- Kodethi
(186946, 0, 102030, 1, 0, 46658), -- Kodethi
(182696, 0, 102033, 1, 1, 46658), -- Scalecommander Cindrethresh
(183380, 0, 102032, 1, 1, 46658), -- Scalecommander Azurathel
(186853, 0, 104019, 1, 1, 46658), -- Conjured Guardian
(181680, 1, 104619, 1, 1, 46658), -- Tethalash
(181680, 0, 102030, 1, 0, 46658), -- Tethalash
(181712, 0, 107859, 1, 1, 46658), -- Talon Kethahn
(185272, 0, 105960, 0.5, 1, 46658), -- Ancient Construct
(185172, 3, 104846, 1, 1, 46658), -- Obsidian Warder
(185172, 2, 104845, 1, 1, 46658), -- Obsidian Warder
(185172, 1, 104844, 1, 1, 46658), -- Obsidian Warder
(185172, 0, 104843, 1, 1, 46658), -- Obsidian Warder
(187163, 0, 38585, 1, 1, 46658); -- Dark Widow


DELETE FROM `creature_questitem` WHERE (`Idx`=0 AND `CreatureEntry` IN (188146,191445,191444,194957,182394,182007,187611));
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(188146, 0, 191730, 46658), -- Tenezeth
(191445, 0, 191732, 46658), -- Katrinasa
(191444, 0, 191731, 46658), -- Rethenash
(194957, 0, 187948, 46658), -- Mature Scalerender
(182394, 0, 187948, 46658), -- Deatheater Scythid
(182007, 0, 187948, 46658), -- Scalerender Beetle
(187611, 0, 187948, 46658); -- Beetle Swarmer


DELETE FROM `gameobject_template` WHERE `entry` IN (376694 /*Crystal Lock*/, 376690 /*Arcane Barrier*/, 381639 /*Edict: The Healing Wings*/, 376530 /*Report: Infestation*/, 379057 /*Emerald Blossom Infuser*/, 379062 /*Emerald Blossom Infuser*/, 379061 /*Emerald Blossom Infuser*/, 379056 /*Emerald Blossom Infuser*/, 377533 /*Enchanted Winds*/, 377487 /*Dragon Bookcase Rubble*/, 377486 /*Dragon Bookcase Connector*/, 377484 /*Dragon Bookcase*/, 377483 /*Dragon Bookcase*/, 376124 /*Bag of Enchanted Wind*/, 375104 /*The Vault*/, 375103 /*What Aspects Fear*/, 382046 /*Skyward Ascent Ring*/, 376749 /*Crate*/, 376744 /*Crate*/, 376553 /*Dead Fish*/, 377311 /*Meat Carcass*/, 378005 /*Soar Ring*/, 377997 /*Soar Ring*/, 377605 /*Dragon Crates Stack 01*/, 379060 /*Beacon*/, 376304 /*Cave In*/, 376143 /*Fire Breath Infuser*/, 376021 /*Ground Fog*/, 377894 /*Everflame Brazier*/, 377892 /*Everflame Brazier*/, 377893 /*Everflame Brazier*/, 377890 /*Everflame Brazier*/, 377891 /*Everflame Brazier*/, 377895 /*Everflame Brazier*/, 377888 /*Everflame Brazier*/, 376222 /*Crystal Focus*/, 377887 /*Everflame Brazier*/, 376305 /*War Creche Seal*/, 377886 /*Everflame Brazier*/, 377889 /*Everflame Brazier*/, 377593 /*Anvil*/, 377598 /*Forge*/, 378704 /*Edict: Evoker*/, 370528 /*Crate of Warscale Armor*/, 376211 /*Crystal Key*/, 376256 /*Cave In*/, 377898 /*Everflame Brazier*/, 377896 /*Everflame Brazier*/, 377885 /*Everflame Brazier*/, 376210 /*Crystal Focus*/, 370527 /*Weapon Rack*/, 378702 /*Edict: Dark Talons*/, 381460 /*Obsidian Warders*/, 376142 /*Arcane Barrier*/, 378473 /*Starting Room Collision*/, 375420 /*Debirs*/, 370526 /*Rations*/, 375501 /*Edict: Weyrns*/, 381422 /*Edict: Obsidian Warders*/, 375503 /*Edict: Obsidian Warders*/, 376215 /*Crystal Lock*/, 378712 /*Edict: The Earth-Warder*/, 376141 /*Arcane Barrier*/, 376213 /*Mysterious Wand*/, 375506 /*Arcane Barrier*/, 376276 /*Rune of Guardians*/, 377897 /*Lingering Everflame*/, 377601 /*Obsidian Warders*/, 377596 /*Obsidian Warders*/, 377594 /*Obsidian Warders*/, 377592 /*Lingering Everflame*/, 377884 /*Everflame Brazier*/, 377599 /*Obsidian Warders*/, 377591 /*Lingering Everflame*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(376694, 10, 74000, 'Crystal Lock', 'questinteract', 'Placing', '', 0.5, 93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 371553, 0, 0, 0, 35196, 0, 0, 0, 0, 0, 1, 0, 96934, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Crystal Lock
(376690, 10, 73897, 'Arcane Barrier', '', '', '', 1, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Arcane Barrier
(381639, 9, 73022, 'Edict: The Healing Wings', '', '', '', 2, 8635, 11, 2, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Edict: The Healing Wings
(376530, 3, 71833, 'Report: Infestation', 'questinteract', 'Collecting', '', 1, 43, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 19676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110575, 0, 0, 0, 0, 2419, 46658), -- Report: Infestation
(379057, 22, 73899, 'Emerald Blossom Infuser', '', '', '', 1, 371027, 0, 0, 0, 0, 96761, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Emerald Blossom Infuser
(379062, 22, 73899, 'Emerald Blossom Infuser', '', '', '', 1, 371027, 0, 0, 0, 0, 96761, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Emerald Blossom Infuser
(379061, 22, 73899, 'Emerald Blossom Infuser', '', '', '', 1, 371027, 0, 0, 0, 0, 96761, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Emerald Blossom Infuser
(379056, 22, 73899, 'Emerald Blossom Infuser', '', '', '', 1, 371027, 0, 0, 0, 0, 96761, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Emerald Blossom Infuser
(377533, 5, 74417, 'Enchanted Winds', '', '', '', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Enchanted Winds
(377487, 5, 75379, 'Dragon Bookcase Rubble', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Dragon Bookcase Rubble
(377486, 5, 75378, 'Dragon Bookcase Connector', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Dragon Bookcase Connector
(377484, 5, 74834, 'Dragon Bookcase', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Dragon Bookcase
(377483, 5, 75377, 'Dragon Bookcase', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Dragon Bookcase
(376124, 3, 75415, 'Bag of Enchanted Wind', '', 'Opening', '', 1, 43, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 21400, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5042, 110341, 0, 0, 0, 0, 2150, 46658), -- Bag of Enchanted Wind
(375104, 10, 71833, 'The Vault', 'questinteract', 'Inspecting', '', 1, 43, 0, 0, 0, 0, 0, 0, 8405, 0, 0, 0, 0, 0, 0, 45353, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- The Vault
(375103, 10, 71833, 'What Aspects Fear', 'questinteract', 'Inspecting', '', 1, 43, 0, 0, 0, 0, 0, 0, 8404, 0, 0, 0, 0, 0, 0, 45353, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- What Aspects Fear
(382046, 5, 75659, 'Skyward Ascent Ring', '', '', '', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Skyward Ascent Ring
(376749, 5, 74582, 'Crate', '', '', '', 0.75, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Crate
(376744, 5, 74221, 'Crate', '', '', '', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Crate
(376553, 5, 51622, 'Dead Fish', '', '', '', 0.400000005960464477, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Dead Fish
(377311, 5, 11649, 'Meat Carcass', '', '', '', 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Meat Carcass
(378005, 5, 75659, 'Soar Ring', '', '', '', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Soar Ring
(377997, 5, 75659, 'Soar Ring', '', '', '', 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Soar Ring
(377605, 5, 74403, 'Dragon Crates Stack 01', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Dragon Crates Stack 01
(379060, 10, 73508, 'Beacon', 'questinteract', 'Examining', '', 0.699999988079071044, 93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 370314, 0, 0, 0, 24124, 0, 0, 0, 0, 0, 1, 0, 96580, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Beacon
(376304, 0, 72523, 'Cave In', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Cave In
(376143, 22, 73899, 'Fire Breath Infuser', '', '', '', 1, 369495, 0, 0, 0, 0, 96287, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Fire Breath Infuser
(376021, 5, 35067, 'Ground Fog', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Ground Fog
(377894, 8, 75513, 'Everflame Brazier', '', '', '', 0.99999934434890747, 4, 10, 243896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Everflame Brazier
(377892, 8, 75513, 'Everflame Brazier', '', '', '', 0.999999403953552246, 4, 10, 243896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Everflame Brazier
(377893, 8, 75513, 'Everflame Brazier', '', '', '', 0.999999284744262695, 4, 10, 243896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Everflame Brazier
(377890, 8, 75513, 'Everflame Brazier', '', '', '', 0.999999284744262695, 4, 10, 243896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Everflame Brazier
(377891, 8, 75513, 'Everflame Brazier', '', '', '', 0.999999403953552246, 4, 10, 243896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Everflame Brazier
(377895, 8, 75513, 'Everflame Brazier', '', '', '', 0.999999642372131347, 4, 10, 243896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Everflame Brazier
(377888, 8, 75513, 'Everflame Brazier', '', '', '', 0.999999642372131347, 4, 10, 243896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Everflame Brazier
(376222, 5, 73899, 'Crystal Focus', '', '', '', 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Crystal Focus
(377887, 8, 75513, 'Everflame Brazier', '', '', '', 0.999999523162841796, 4, 10, 243896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Everflame Brazier
(376305, 0, 73889, 'War Creche Seal', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- War Creche Seal
(377886, 8, 75513, 'Everflame Brazier', '', '', '', 0.999999523162841796, 4, 10, 243896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Everflame Brazier
(377889, 8, 75513, 'Everflame Brazier', '', '', '', 0.999999582767486572, 4, 10, 243896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Everflame Brazier
(377593, 8, 74348, 'Anvil', '', '', '', 0.999999403953552246, 1, 10, 0, 0, 0, 0, 0, 0, 103828, 0, 30091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Anvil
(377598, 8, 71261, 'Forge', '', '', '', 0.999999582767486572, 3, 10, 0, 0, 0, 0, 0, 0, 103829, 0, 30092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Forge
(378704, 9, 73022, 'Edict: Evoker', '', '', '', 1, 8607, 11, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Edict: Evoker
(370528, 3, 71772, 'Crate of Warscale Armor', 'questinteract', 'Opening', '', 1.20000004768371582, 43, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 108938, 0, 0, 0, 0, 2150, 46658), -- Crate of Warscale Armor
(376211, 10, 74001, 'Crystal Key', '', 'Collecting', '', 0.5, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369753, 0, 0, 0, 19676, 0, 0, 0, 0, 0, 1, 0, 0, 1, 5048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Crystal Key
(376256, 0, 72523, 'Cave In', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Cave In
(377898, 8, 73375, 'Everflame Brazier', '', '', '', 0.999999284744262695, 4, 10, 243896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Everflame Brazier
(377896, 8, 73375, 'Everflame Brazier', '', '', '', 0.999999105930328369, 4, 10, 243896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Everflame Brazier
(377885, 8, 75513, 'Everflame Brazier', '', '', '', 0.999999523162841796, 4, 10, 243896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Everflame Brazier
(376210, 10, 74000, 'Crystal Focus', '', 'Placing', '', 0.5, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 369755, 0, 0, 0, 35196, 0, 0, 0, 0, 0, 1, 0, 96342, 1, 5048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Crystal Focus
(370527, 3, 73724, 'Weapon Rack', 'questinteract', 'Opening', '', 1, 43, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 108937, 0, 0, 0, 0, 2150, 46658), -- Weapon Rack
(378702, 9, 73022, 'Edict: Dark Talons', '', '', '', 2, 8606, 11, 2, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Edict: Dark Talons
(381460, 5, 74626, 'Obsidian Warders', '', '', '', 0.5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Obsidian Warders
(376142, 0, 73898, 'Arcane Barrier', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Arcane Barrier
(378473, 0, 73100, 'Starting Room Collision', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Starting Room Collision
(375420, 5, 73996, 'Debirs', '', '', '', 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Debirs
(370526, 3, 71772, 'Rations', 'questinteract', 'Opening', '', 1.25, 43, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 108935, 0, 0, 0, 0, 2150, 46658), -- Rations
(375501, 9, 73022, 'Edict: Weyrns', '', '', '', 1, 8530, 11, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Edict: Weyrns
(381422, 9, 73022, 'Edict: Obsidian Warders', '', '', '', 2, 8531, 11, 2, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Edict: Obsidian Warders
(375503, 9, 73022, 'Edict: Obsidian Warders', '', '', '', 2, 8531, 11, 2, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Edict: Obsidian Warders
(376215, 5, 74000, 'Crystal Lock', '', '', '', 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Crystal Lock
(378712, 9, 73022, 'Edict: The Earth-Warder', '', '', '', 1, 8608, 11, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Edict: The Earth-Warder
(376141, 0, 73897, 'Arcane Barrier', '', '', '', 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Arcane Barrier
(376213, 3, 61268, 'Mysterious Wand', '', 'Opening', '', 1, 43, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 21400, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5048, 110412, 0, 0, 0, 0, 2150, 46658), -- Mysterious Wand
(375506, 0, 73897, 'Arcane Barrier', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Arcane Barrier
(376276, 5, 73022, 'Rune of Guardians', '', '', '', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Rune of Guardians
(377897, 8, 75250, 'Lingering Everflame', '', '', '', 0.999999046325683593, 4, 10, 243896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Lingering Everflame
(377601, 5, 75484, 'Obsidian Warders', '', '', '', 0.929687023162841796, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Obsidian Warders
(377596, 5, 75484, 'Obsidian Warders', '', '', '', 0.999999523162841796, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Obsidian Warders
(377594, 5, 75484, 'Obsidian Warders', '', '', '', 0.999999165534973144, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Obsidian Warders
(377592, 8, 75250, 'Lingering Everflame', '', '', '', 0.999999761581420898, 4, 10, 243896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Lingering Everflame
(377884, 8, 75513, 'Everflame Brazier', '', '', '', 0.999999523162841796, 4, 10, 243896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Everflame Brazier
(377599, 5, 75484, 'Obsidian Warders', '', '', '', 0.929686784744262695, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658), -- Obsidian Warders
(377591, 8, 75250, 'Lingering Everflame', '', '', '', 0.999999761581420898, 4, 10, 243896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46658); -- Lingering Everflame


DELETE FROM `gameobject_questitem` WHERE (`Idx`=0 AND `GameObjectEntry` IN (376530,370528,370527,370526));
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(376530, 0, 191733, 46658), -- Report: Infestation
(370528, 0, 187853, 46658), -- Crate of Warscale Armor
(370527, 0, 187852, 46658), -- Weapon Rack
(370526, 0, 187855, 46658); -- Rations


REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(181680, 362355, 1, 1),
(183380, 362355, 1, 1),
(191445, 371089, 1, 1),
(191444, 371089, 1, 1),
(188146, 371089, 1, 1);



DELETE FROM `creature_equip_template` WHERE (`ID`=1 AND `CreatureID` IN (192545,192535,192971,192310,192221,192308,192273,190480,184420,184375,187131,190274,188819,181053,183960,184210,184212));
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(192545, 1, 1899, 0, 0, 143, 0, 0, 2551, 0, 0, 46689), -- -Unknown-
(192535, 1, 1899, 0, 0, 143, 0, 0, 2551, 0, 0, 46689), -- -Unknown-
(192971, 1, 1899, 0, 0, 143, 0, 0, 2551, 0, 0, 46689), -- -Unknown-
(192310, 1, 191694, 0, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(192221, 1, 193632, 0, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(192308, 1, 192519, 0, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(192273, 1, 193632, 0, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(190480, 1, 191687, 0, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(184420, 1, 192519, 0, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(184375, 1, 191694, 0, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(187131, 1, 192514, 0, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(190274, 1, 192519, 0, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(188819, 1, 191687, 0, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(181053, 1, 194888, 0, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(183960, 1, 194888, 0, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(184210, 1, 192798, 0, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(184212, 1, 192798, 0, 0, 0, 0, 0, 0, 0, 0, 46689); -- -Unknown-

UPDATE `creature_equip_template` SET `VerifiedBuild`=46689 WHERE (`ID`=1 AND `CreatureID` IN (5499,1313,5503,5500,14423,1298,1297,1289,1287,61836,61834,3518,12481,1275,49748,1432,1431,1285,1301,12480,1257,14438,49877,483,4981,482,4974,162935,65153,186180,4959));

DELETE FROM `areatrigger_template` WHERE (`IsServerSide`=0 AND `Id` IN (28227,29960,29959,30060,29923,29921,28902));
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(28227, 0, 1, 0, 2.5, 2.5, 0.5, 2.5, 2.5, 0.5, 0, 0, 46689),
(29960, 0, 0, 4, 25, 25, 0, 0, 0, 0, 0, 0, 46689),
(29959, 0, 0, 4, 10, 10, 0, 0, 0, 0, 0, 0, 46689),
(30060, 0, 0, 4, 5, 5, 0, 0, 0, 0, 0, 0, 46689),
(29923, 0, 0, 4, 10, 10, 0, 0, 0, 0, 0, 0, 46689),
(29921, 0, 0, 4, 25, 25, 0, 0, 0, 0, 0, 0, 46689),
(28902, 0, 0, 0, 8, 8, 0, 0, 0, 0, 0, 0, 46689);


DELETE FROM `scene_template` WHERE `SceneId` IN (2987, 2854, 2994, 2959, 2944, 2941, 2867, 2882, 2908, 2824, 2900, 2887);
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`, `Encrypted`) VALUES
(2987, 16, 3565, 0),
(2854, 27, 3686, 0),
(2994, 16, 3572, 0),
(2959, 17, 3537, 0),
(2944, 16, 3508, 0),
(2941, 16, 3496, 0),
(2867, 27, 3601, 0),
(2882, 16, 3420, 0),
(2908, 25, 3604, 0),
(2824, 20, 3348, 0),
(2900, 20, 3440, 0),
(2887, 16, 3429, 0);

UPDATE `scene_template` SET `Flags`=17, `ScriptPackageID`=3669 WHERE `SceneId`=3044;
UPDATE `scene_template` SET `Flags`=16, `ScriptPackageID`=3641 WHERE `SceneId`=3031;
UPDATE `scene_template` SET `Flags`=16, `ScriptPackageID`=3636 WHERE `SceneId`=3030;
UPDATE `scene_template` SET `Flags`=16, `ScriptPackageID`=3678 WHERE `SceneId`=3045;
UPDATE `scene_template` SET `Flags`=16, `ScriptPackageID`=3666 WHERE `SceneId`=3042;
UPDATE `scene_template` SET `Flags`=16, `ScriptPackageID`=3583 WHERE `SceneId`=3005;
UPDATE `scene_template` SET `Flags`=16, `ScriptPackageID`=3585 WHERE `SceneId`=3006;

DELETE FROM `quest_offer_reward` WHERE `ID` IN (65286 /*-Unknown-*/, 65100 /*-Unknown-*/, 65098 /*-Unknown-*/, 65097 /*-Unknown-*/, 65087 /*-Unknown-*/, 65084 /*-Unknown-*/, 65701 /*-Unknown-*/, 65057 /*-Unknown-*/, 65052 /*-Unknown-*/, 65046 /*-Unknown-*/, 65050 /*-Unknown-*/, 65049 /*-Unknown-*/, 65045 /*-Unknown-*/, 72263 /*-Unknown-*/, 65075 /*-Unknown-*/, 66324 /*-Unknown-*/, 65307 /*-Unknown-*/, 65073 /*-Unknown-*/, 65074 /*-Unknown-*/, 65071 /*-Unknown-*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(65286, 1, 0, 0, 0, 0, 0, 0, 0, 'Perhaps Wrathion\'s \"influence\" isn\'t as considerable as he thinks, if this is the welcome he receives.', 46689), -- -Unknown-
(65100, 1, 0, 0, 0, 0, 0, 0, 0, '', 46689), -- -Unknown-
(65098, 1, 0, 0, 0, 0, 0, 0, 0, 'I am relieved you made it out, $n.\n\nBut I.. cannot help but feel lost.', 46689), -- -Unknown-
(65097, 1, 0, 0, 0, 0, 0, 0, 0, 'My thanks, $n. \n\nYour aid is unexpected... but appreciated.', 46689), -- -Unknown-
(65087, 5, 5, 0, 0, 0, 0, 0, 0, 'We are overrun! They are about to breach the vault!\n\nWhere are those black dragons?!', 46689), -- -Unknown-
(65084, 5, 0, 0, 0, 0, 0, 0, 0, 'Steady there, evoker. The Ebon Scales will put an end to this incursion.', 46689), -- -Unknown-
(65701, 273, 1, 0, 0, 0, 0, 0, 0, 'Excellent choice.\n\nRemember, you can reconsider your specialization and adjust abilities as needed--so long as you are not in the heat of battle.', 46689), -- -Unknown-
(65057, 1, 0, 0, 0, 0, 0, 0, 0, 'The Primalists empowered their leader in some kind of ritual?\n\nTell me everything.', 46689), -- -Unknown-
(65052, 1, 0, 0, 0, 0, 0, 0, 0, 'You fight well, evoker, but we had this under control.\n\nThe Ebon Scales look after our own.', 46689), -- -Unknown-
(65046, 273, 1, -1, -1, 0, 0, 0, 0, 'The Primalist speaks of unleashing a terrible storm.\n\nCould an even greater threat be locked away somewhere on the Reach?', 46689), -- -Unknown-
(65050, 1, 0, 0, 0, 0, 0, 0, 0, 'Conjured elementals may not be the most satisfying foe, but it does feel good to stretch our wings again.', 46689), -- -Unknown-
(65049, 1, 1, 0, 0, 0, 0, 0, 0, 'Do not mourn the loss of a few tarasek.\n\nWhere there is one, scores more lurk in the shadows.', 46689), -- -Unknown-
(65045, 1, 0, 0, 0, 0, 0, 0, 0, 'Well, evoker, I hope you are ready to get your talons dirty.', 46689), -- -Unknown-
(72263, 1, 1, 1, 0, 0, 0, 0, 0, 'Evoker, this place still has herds of vorquin!\n\nI managed to round up a few of the more agreeable creatures that could be used as mounts for when your wings are tired. Remember how to ride?\n\nI was ordered to issue one to you as the scalecommanders are ordering you all over the place. Take good care of it.', 46689), -- -Unknown-
(65075, 1, 0, 0, 0, 0, 0, 0, 0, 'I am relieved that Viridia lives.\n\nIf what Dervishian says is true, we will have need of her talents in the battle to come.', 46689), -- -Unknown-
(66324, 274, 1, 0, 0, 0, 0, 0, 0, 'Thank you for rescuing those who could be saved.\n\nRethenash. Katrinasa. Tenezeth.\n\nI vow that the names of the fallen will be remembered.', 46689), -- -Unknown-
(65307, 1, 1, 1, 0, 0, 0, 0, 0, 'Violence is not the only avenue to victory.', 46689), -- -Unknown-
(65073, 1, 1, 0, 0, 0, 0, 0, 0, 'Good. These are just what I needed.\n\nI will work on something to counter the toxin and get you back into the creche.', 46689), -- -Unknown-
(65074, 1, 0, 0, 0, 0, 0, 0, 0, 'The scythid were always formidable, but it seems during our stasis they have grown even larger and more threatening.', 46689), -- -Unknown-
(65071, 1, 1, 1, 0, 0, 0, 0, 0, 'You found my little ones!', 46689); -- -Unknown-


DELETE FROM `quest_poi` WHERE (`QuestID`=66513 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=66513 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=66513 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=66513 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66513 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66513 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65286 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65286 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=65286 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65286 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65100 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=65100 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=65100 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=65100 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65100 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65100 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65100 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65098 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65098 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65098 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65098 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65097 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=65097 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65097 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65097 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65097 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65087 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65087 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65087 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65084 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65084 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65701 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65701 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65057 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65057 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65057 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65052 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65052 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65052 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65046 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=65046 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65046 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65046 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65046 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65050 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65050 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65050 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65049 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65049 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65049 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65045 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65045 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65075 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65075 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65075 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66324 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=66324 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=66324 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=66324 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=66324 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66324 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66324 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65307 AND `BlobIndex`=0 AND `Idx1`=8) OR (`QuestID`=65307 AND `BlobIndex`=3 AND `Idx1`=7) OR (`QuestID`=65307 AND `BlobIndex`=2 AND `Idx1`=6) OR (`QuestID`=65307 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=65307 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=65307 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65307 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65307 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65307 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65071 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65071 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65071 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65074 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=65074 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=65074 AND `BlobIndex`=2 AND `Idx1`=4) OR (`QuestID`=65074 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=65074 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65074 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=65074 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65073 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65073 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65073 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(66513, 0, 5, 32, 0, 0, 0, 37, 0, 0, 0, 0, 0, 2214804, 0, 46689), -- -Unknown-
(66513, 0, 4, 3, 428880, 25738, 0, 84, 0, 2, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(66513, 0, 3, 2, 428879, 25735, 0, 84, 0, 2, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(66513, 0, 2, 1, 428878, 25734, 0, 84, 0, 2, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(66513, 0, 1, 0, 428877, 25733, 0, 84, 0, 2, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(66513, 0, 0, -1, 0, 0, 0, 84, 0, 2, 0, 0, 0, 2194536, 0, 46689), -- -Unknown-
(65286, 0, 3, 32, 0, 0, 0, 37, 0, 0, 0, 0, 0, 2214805, 0, 46689), -- -Unknown-
(65286, 1, 2, 31, 0, 0, 0, 37, 0, 0, 0, 0, 0, 2214805, 0, 46689), -- -Unknown-
(65286, 0, 1, 31, 0, 0, 0, 37, 0, 0, 0, 0, 0, 2214804, 0, 46689), -- -Unknown-
(65286, 0, 0, -1, 0, 0, 0, 37, 0, 0, 0, 0, 0, 2214804, 0, 46689), -- -Unknown-
(65100, 0, 6, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2212575, 0, 46689), -- -Unknown-
(65100, 0, 5, 3, 422098, 182610, 2570, 2118, 0, 0, 0, 0, 0, 2116485, 0, 46689), -- -Unknown-
(65100, 0, 4, 2, 422097, 182611, 2570, 2118, 0, 0, 0, 0, 0, 2116486, 0, 46689), -- -Unknown-
(65100, 0, 3, 1, 428787, 189540, 2570, 2118, 0, 0, 0, 0, 0, 2194099, 0, 46689), -- -Unknown-
(65100, 0, 2, 0, 428674, 183563, 2570, 2118, 0, 2, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65100, 0, 1, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2116484, 0, 46689), -- -Unknown-
(65100, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2116487, 0, 46689), -- -Unknown-
(65098, 0, 3, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2116468, 0, 46689), -- -Unknown-
(65098, 0, 2, 1, 422094, 192697, 2570, 2118, 0, 2, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65098, 0, 1, 0, 428614, 191685, 2570, 2118, 0, 0, 0, 0, 0, 2211684, 0, 46689), -- -Unknown-
(65098, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2212575, 0, 46689), -- -Unknown-
(65097, 0, 4, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2116420, 0, 46689), -- -Unknown-
(65097, 0, 3, 2, 422939, 182601, 2570, 2118, 0, 0, 0, 0, 0, 2116468, 0, 46689), -- -Unknown-
(65097, 0, 2, 1, 422938, 24382, 2570, 2118, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65097, 0, 1, 0, 428634, 191500, 2570, 2118, 0, 2, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65097, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2116468, 0, 46689), -- -Unknown-
(65087, 0, 2, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2192704, 0, 46689), -- -Unknown-
(65087, 0, 1, 1, 427700, 182463, 2570, 2118, 0, 2, 0, 0, 0, 0, 1, 46689), -- -Unknown-
(65087, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2243913, 0, 46689), -- -Unknown-
(65084, 0, 1, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2114791, 0, 46689), -- -Unknown-
(65084, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2192704, 0, 46689), -- -Unknown-
(65701, 0, 1, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2114791, 0, 46689), -- -Unknown-
(65701, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2114791, 0, 46689), -- -Unknown-
(65057, 0, 2, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2114976, 0, 46689), -- -Unknown-
(65057, 0, 1, 0, 432814, 197229, 2570, 2118, 0, 0, 0, 0, 0, 2276798, 0, 46689), -- -Unknown-
(65057, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2183868, 0, 46689), -- -Unknown-
(65052, 0, 2, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2114840, 0, 46689), -- -Unknown-
(65052, 0, 1, 0, 423575, 190974, 2570, 2118, 0, 0, 0, 0, 0, 2204771, 0, 46689), -- -Unknown-
(65052, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2114976, 0, 46689), -- -Unknown-
(65046, 0, 4, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2173602, 0, 46689), -- -Unknown-
(65046, 0, 3, 2, 427497, 376983, 2570, 2118, 0, 0, 0, 0, 0, 2197612, 0, 46689), -- -Unknown-
(65046, 0, 2, 1, 427496, 376982, 2570, 2118, 0, 0, 0, 0, 0, 2197610, 0, 46689), -- -Unknown-
(65046, 0, 1, 0, 427495, 376984, 2570, 2118, 0, 0, 0, 0, 0, 2197613, 0, 46689), -- -Unknown-
(65046, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2173757, 0, 46689), -- -Unknown-
(65050, 0, 2, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2114839, 0, 46689), -- -Unknown-
(65050, 0, 1, 0, 421975, 181840, 2570, 2118, 0, 2, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65050, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2114840, 0, 46689), -- -Unknown-
(65049, 0, 2, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2114839, 0, 46689), -- -Unknown-
(65049, 0, 1, 0, 421973, 181310, 2570, 2118, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65049, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2114840, 0, 46689), -- -Unknown-
(65045, 0, 1, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2183868, 0, 46689), -- -Unknown-
(65045, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2114839, 0, 46689), -- -Unknown-
(65075, 0, 2, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2153030, 0, 46689), -- -Unknown-
(65075, 0, 1, 0, 432815, 197229, 2570, 2118, 0, 0, 0, 0, 0, 2272377, 0, 46689), -- -Unknown-
(65075, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2183868, 0, 46689), -- -Unknown-
(66324, 0, 6, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2153030, 0, 46689), -- -Unknown-
(66324, 0, 5, 5, 426970, 188734, 2570, 2110, 0, 2, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(66324, 0, 4, 4, 426813, 191445, 2570, 2110, 0, 2, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(66324, 0, 3, 3, 426812, 188146, 2570, 2110, 0, 2, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(66324, 0, 2, 2, 426811, 191444, 2570, 2110, 0, 2, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(66324, 0, 1, 1, 426790, 191733, 2570, 2110, 0, 2, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(66324, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2153030, 0, 46689), -- -Unknown-
(65307, 0, 8, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2153030, 0, 46689), -- -Unknown-
(65307, 3, 7, 3, 428506, 135713, 2570, 2118, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65307, 2, 6, 3, 428506, 135713, 2570, 2118, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65307, 1, 5, 3, 428506, 135713, 2570, 2118, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65307, 0, 4, 3, 428506, 135713, 2570, 2118, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65307, 0, 3, 2, 426917, 188652, 2570, 2118, 0, 0, 0, 0, 0, 2189555, 0, 46689), -- -Unknown-
(65307, 0, 2, 1, 426916, 187904, 2570, 2118, 0, 2, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65307, 0, 1, 0, 422752, 182349, 2570, 2118, 0, 2, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65307, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2153030, 0, 46689), -- -Unknown-
(65071, 0, 2, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2189677, 0, 46689), -- -Unknown-
(65071, 0, 1, 0, 422754, 184165, 2570, 2118, 0, 0, 0, 0, 0, 2115854, 0, 46689), -- -Unknown-
(65071, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2155089, 0, 46689), -- -Unknown-
(65074, 1, 6, 32, 0, 0, 2444, 2101, 0, 0, 0, 0, 0, 2186147, 0, 46689), -- -Unknown-
(65074, 0, 5, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2155105, 0, 46689), -- -Unknown-
(65074, 2, 4, 0, 422194, 182008, 2570, 2118, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65074, 1, 3, 0, 422194, 182008, 2570, 2118, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65074, 0, 2, 0, 422194, 182008, 2570, 2118, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65074, 1, 1, -1, 0, 0, 2444, 2101, 0, 0, 0, 0, 0, 2186147, 0, 46689), -- -Unknown-
(65074, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2155105, 0, 46689), -- -Unknown-
(65073, 0, 2, 32, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2153030, 0, 46689), -- -Unknown-
(65073, 0, 1, 0, 422052, 187948, 2570, 2118, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65073, 0, 0, -1, 0, 0, 2570, 2118, 0, 0, 0, 0, 0, 2153030, 0, 46689); -- -Unknown-

DELETE FROM `quest_poi_points` WHERE (`QuestID`=66513 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=11) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=10) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=9) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=8) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=7) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=6) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=11) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=10) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=9) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66513 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65286 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65286 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65286 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65286 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65100 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=65100 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=65100 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=65100 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65100 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=65100 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=65100 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=65100 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=65100 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=65100 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=65100 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=65100 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=65100 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=65100 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=65100 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=65100 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65100 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65100 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65098 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65098 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65098 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65098 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65097 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=65097 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65097 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=65097 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=65097 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=65097 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=65097 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=65097 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=65097 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=65097 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65097 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65097 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65087 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65087 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=65087 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=65087 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=65087 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=65087 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=65087 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=65087 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=65087 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=65087 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=65087 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=65087 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=65087 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65087 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65084 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65084 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65701 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65701 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65057 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65057 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65057 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65052 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65052 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65052 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65046 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=65046 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65046 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65046 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65046 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65050 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65050 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=65050 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=65050 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=65050 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=65050 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65050 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65049 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65049 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=65049 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=65049 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=65049 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=65049 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=65049 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=65049 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=65049 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=65049 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=65049 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=65049 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=65049 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65049 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65045 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65045 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65075 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65075 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65075 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66324 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=66324 AND `Idx1`=5 AND `Idx2`=11) OR (`QuestID`=66324 AND `Idx1`=5 AND `Idx2`=10) OR (`QuestID`=66324 AND `Idx1`=5 AND `Idx2`=9) OR (`QuestID`=66324 AND `Idx1`=5 AND `Idx2`=8) OR (`QuestID`=66324 AND `Idx1`=5 AND `Idx2`=7) OR (`QuestID`=66324 AND `Idx1`=5 AND `Idx2`=6) OR (`QuestID`=66324 AND `Idx1`=5 AND `Idx2`=5) OR (`QuestID`=66324 AND `Idx1`=5 AND `Idx2`=4) OR (`QuestID`=66324 AND `Idx1`=5 AND `Idx2`=3) OR (`QuestID`=66324 AND `Idx1`=5 AND `Idx2`=2) OR (`QuestID`=66324 AND `Idx1`=5 AND `Idx2`=1) OR (`QuestID`=66324 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=66324 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=66324 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=66324 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66324 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66324 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65307 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=65307 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=65307 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=65307 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=65307 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=65307 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65307 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=65307 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=65307 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=65307 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=65307 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65307 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=65307 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=65307 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=65307 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=65307 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=65307 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=65307 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65307 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65071 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65071 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65071 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65074 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=65074 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=65074 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=65074 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=65074 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=65074 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=65074 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=65074 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=65074 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=65074 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=65074 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=65074 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=65074 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=65074 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65074 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=65074 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=65074 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=65074 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65074 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65074 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65073 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=65073 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65073 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(66513, 5, 0, -9093, 413, 92, 46689), -- -Unknown-
(66513, 4, 11, -9016, 858, 0, 46689), -- -Unknown-
(66513, 4, 10, -9021, 864, 0, 46689), -- -Unknown-
(66513, 4, 9, -9023, 872, 0, 46689), -- -Unknown-
(66513, 4, 8, -9021, 881, 0, 46689), -- -Unknown-
(66513, 4, 7, -9016, 886, 0, 46689), -- -Unknown-
(66513, 4, 6, -9006, 888, 0, 46689), -- -Unknown-
(66513, 4, 5, -9000, 887, 0, 46689), -- -Unknown-
(66513, 4, 4, -8993, 882, 0, 46689), -- -Unknown-
(66513, 4, 3, -8990, 875, 0, 46689), -- -Unknown-
(66513, 4, 2, -8991, 865, 0, 46689), -- -Unknown-
(66513, 4, 1, -8997, 857, 0, 46689), -- -Unknown-
(66513, 4, 0, -9006, 855, 0, 46689), -- -Unknown-
(66513, 3, 11, -8175, 815, 0, 46689), -- -Unknown-
(66513, 3, 10, -8172, 819, 0, 46689), -- -Unknown-
(66513, 3, 9, -8168, 823, 0, 46689), -- -Unknown-
(66513, 3, 8, -8148, 840, 0, 46689), -- -Unknown-
(66513, 3, 7, -8146, 838, 0, 46689), -- -Unknown-
(66513, 3, 6, -8136, 826, 0, 46689), -- -Unknown-
(66513, 3, 5, -8133, 822, 0, 46689), -- -Unknown-
(66513, 3, 4, -8129, 816, 0, 46689), -- -Unknown-
(66513, 3, 3, -8141, 804, 0, 46689), -- -Unknown-
(66513, 3, 2, -8144, 801, 0, 46689), -- -Unknown-
(66513, 3, 1, -8149, 796, 0, 46689), -- -Unknown-
(66513, 3, 0, -8155, 791, 0, 46689), -- -Unknown-
(66513, 2, 11, -8893, 626, 0, 46689), -- -Unknown-
(66513, 2, 10, -8900, 638, 0, 46689), -- -Unknown-
(66513, 2, 9, -8897, 641, 0, 46689), -- -Unknown-
(66513, 2, 8, -8894, 643, 0, 46689), -- -Unknown-
(66513, 2, 7, -8882, 651, 0, 46689), -- -Unknown-
(66513, 2, 6, -8880, 648, 0, 46689), -- -Unknown-
(66513, 2, 5, -8878, 645, 0, 46689), -- -Unknown-
(66513, 2, 4, -8877, 642, 0, 46689), -- -Unknown-
(66513, 2, 3, -8875, 639, 0, 46689), -- -Unknown-
(66513, 2, 2, -8875, 637, 0, 46689), -- -Unknown-
(66513, 2, 1, -8891, 627, 0, 46689), -- -Unknown-
(66513, 2, 0, -8893, 626, 0, 46689), -- -Unknown-
(66513, 1, 11, -8838, 645, 0, 46689), -- -Unknown-
(66513, 1, 10, -8841, 650, 0, 46689), -- -Unknown-
(66513, 1, 9, -8844, 655, 0, 46689), -- -Unknown-
(66513, 1, 8, -8846, 661, 0, 46689), -- -Unknown-
(66513, 1, 7, -8840, 665, 0, 46689), -- -Unknown-
(66513, 1, 6, -8836, 669, 0, 46689), -- -Unknown-
(66513, 1, 5, -8832, 671, 0, 46689), -- -Unknown-
(66513, 1, 4, -8829, 672, 0, 46689), -- -Unknown-
(66513, 1, 3, -8823, 657, 0, 46689), -- -Unknown-
(66513, 1, 2, -8822, 656, 0, 46689), -- -Unknown-
(66513, 1, 1, -8821, 654, 0, 46689), -- -Unknown-
(66513, 1, 0, -8828, 650, 0, 46689), -- -Unknown-
(66513, 0, 0, -8307, 336, 155, 46689), -- -Unknown-
(65286, 3, 0, -9089, 414, 92, 46689), -- -Unknown-
(65286, 2, 0, -9089, 415, 92, 46689), -- -Unknown-
(65286, 1, 0, -9093, 415, 92, 46689), -- -Unknown-
(65286, 0, 0, -9093, 414, 92, 46689), -- -Unknown-
(65100, 6, 0, 6701, -3230, 148, 46689), -- -Unknown-
(65100, 5, 0, 6527, -3279, 167, 46689), -- -Unknown-
(65100, 4, 0, 6495, -3376, 166, 46689), -- -Unknown-
(65100, 3, 0, 6460, -3316, 185, 46689), -- -Unknown-
(65100, 2, 11, 6492, -3294, 0, 46689), -- -Unknown-
(65100, 2, 10, 6472, -3268, 0, 46689), -- -Unknown-
(65100, 2, 9, 6469, -3259, 0, 46689), -- -Unknown-
(65100, 2, 8, 6466, -3249, 0, 46689), -- -Unknown-
(65100, 2, 7, 6479, -3217, 0, 46689), -- -Unknown-
(65100, 2, 6, 6485, -3210, 0, 46689), -- -Unknown-
(65100, 2, 5, 6495, -3210, 0, 46689), -- -Unknown-
(65100, 2, 4, 6511, -3210, 0, 46689), -- -Unknown-
(65100, 2, 3, 6518, -3210, 0, 46689), -- -Unknown-
(65100, 2, 2, 6543, -3298, 0, 46689), -- -Unknown-
(65100, 2, 1, 6524, -3298, 0, 46689), -- -Unknown-
(65100, 2, 0, 6511, -3298, 0, 46689), -- -Unknown-
(65100, 1, 0, 6490, -3341, 162, 46689), -- -Unknown-
(65100, 0, 0, 6508, -3311, 162, 46689), -- -Unknown-
(65098, 3, 0, 6865, -3376, 196, 46689), -- -Unknown-
(65098, 2, 0, 6828, -3268, 0, 46689), -- -Unknown-
(65098, 1, 0, 6767, -3388, 175, 46689), -- -Unknown-
(65098, 0, 0, 6701, -3230, 148, 46689), -- -Unknown-
(65097, 4, 0, 6922, -3568, 252, 46689), -- -Unknown-
(65097, 3, 0, 6865, -3376, 196, 46689), -- -Unknown-
(65097, 2, 7, 6843, -3397, 197, 46689), -- -Unknown-
(65097, 2, 6, 6835, -3376, 197, 46689), -- -Unknown-
(65097, 2, 5, 6843, -3355, 197, 46689), -- -Unknown-
(65097, 2, 4, 6865, -3346, 197, 46689), -- -Unknown-
(65097, 2, 3, 6886, -3355, 197, 46689), -- -Unknown-
(65097, 2, 2, 6895, -3376, 197, 46689), -- -Unknown-
(65097, 2, 1, 6886, -3397, 197, 46689), -- -Unknown-
(65097, 2, 0, 6865, -3406, 197, 46689), -- -Unknown-
(65097, 1, 0, 6941, -3453, 0, 46689), -- -Unknown-
(65097, 0, 0, 6865, -3376, 196, 46689), -- -Unknown-
(65087, 2, 0, 6997, -3639, 285, 46689), -- -Unknown-
(65087, 1, 11, 6905, -3698, 0, 46689), -- -Unknown-
(65087, 1, 10, 6905, -3666, 0, 46689), -- -Unknown-
(65087, 1, 9, 6905, -3620, 0, 46689), -- -Unknown-
(65087, 1, 8, 6908, -3598, 0, 46689), -- -Unknown-
(65087, 1, 7, 6921, -3572, 0, 46689), -- -Unknown-
(65087, 1, 6, 6954, -3546, 0, 46689), -- -Unknown-
(65087, 1, 5, 6999, -3527, 0, 46689), -- -Unknown-
(65087, 1, 4, 7073, -3553, 0, 46689), -- -Unknown-
(65087, 1, 3, 7063, -3572, 0, 46689), -- -Unknown-
(65087, 1, 2, 6989, -3656, 0, 46689), -- -Unknown-
(65087, 1, 1, 6960, -3685, 0, 46689), -- -Unknown-
(65087, 1, 0, 6925, -3708, 0, 46689), -- -Unknown-
(65087, 0, 0, 6986, -3628, 278, 46689), -- -Unknown-
(65084, 1, 0, 6462, -3316, 185, 46689), -- -Unknown-
(65084, 0, 0, 6997, -3639, 285, 46689), -- -Unknown-
(65701, 1, 0, 6462, -3316, 185, 46689), -- -Unknown-
(65701, 0, 0, 6462, -3316, 185, 46689), -- -Unknown-
(65057, 2, 0, 6530, -4303, 70, 46689), -- -Unknown-
(65057, 1, 0, 6538, -4287, 71, 46689), -- -Unknown-
(65057, 0, 0, 6400, -3300, 184, 46689), -- -Unknown-
(65052, 2, 0, 6380, -4258, 36, 46689), -- -Unknown-
(65052, 1, 0, 6525, -4283, 90, 46689), -- -Unknown-
(65052, 0, 0, 6530, -4303, 70, 46689), -- -Unknown-
(65046, 4, 0, 6338, -4009, 46, 46689), -- -Unknown-
(65046, 3, 0, 6521, -4051, 7, 46689), -- -Unknown-
(65046, 2, 0, 6304, -4223, 8, 46689), -- -Unknown-
(65046, 1, 0, 6419, -4049, 0, 46689), -- -Unknown-
(65046, 0, 0, 6384, -4254, 36, 46689), -- -Unknown-
(65050, 2, 0, 6343, -4011, 46, 46689), -- -Unknown-
(65050, 1, 4, 6397, -3980, 0, 46689), -- -Unknown-
(65050, 1, 3, 6523, -4060, 0, 46689), -- -Unknown-
(65050, 1, 2, 6569, -4148, 0, 46689), -- -Unknown-
(65050, 1, 1, 6312, -4231, 0, 46689), -- -Unknown-
(65050, 1, 0, 6241, -4116, 0, 46689), -- -Unknown-
(65050, 0, 0, 6380, -4258, 36, 46689), -- -Unknown-
(65049, 2, 0, 6343, -4011, 46, 46689), -- -Unknown-
(65049, 1, 11, 6180, -4343, 15, 46689), -- -Unknown-
(65049, 1, 10, 6163, -4330, 15, 46689), -- -Unknown-
(65049, 1, 9, 6097, -4207, 3, 46689), -- -Unknown-
(65049, 1, 8, 6108, -4152, 0, 46689), -- -Unknown-
(65049, 1, 7, 6423, -3949, 2, 46689), -- -Unknown-
(65049, 1, 6, 6446, -3979, 3, 46689), -- -Unknown-
(65049, 1, 5, 6504, -4066, 0, 46689), -- -Unknown-
(65049, 1, 4, 6574, -4229, 64, 46689), -- -Unknown-
(65049, 1, 3, 6572, -4250, 67, 46689), -- -Unknown-
(65049, 1, 2, 6548, -4320, 71, 46689), -- -Unknown-
(65049, 1, 1, 6541, -4324, 70, 46689), -- -Unknown-
(65049, 1, 0, 6441, -4351, 82, 46689), -- -Unknown-
(65049, 0, 0, 6380, -4258, 36, 46689), -- -Unknown-
(65045, 1, 0, 6400, -3300, 184, 46689), -- -Unknown-
(65045, 0, 0, 6343, -4011, 46, 46689), -- -Unknown-
(65075, 2, 0, 7161, -2645, 125, 46689), -- -Unknown-
(65075, 1, 0, 7149, -2655, 126, 46689), -- -Unknown-
(65075, 0, 0, 6400, -3300, 184, 46689), -- -Unknown-
(66324, 6, 0, 7161, -2645, 125, 46689), -- -Unknown-
(66324, 5, 11, 7339, -2383, 0, 46689), -- -Unknown-
(66324, 5, 10, 7335, -2381, 0, 46689), -- -Unknown-
(66324, 5, 9, 7334, -2377, 0, 46689), -- -Unknown-
(66324, 5, 8, 7335, -2370, 0, 46689), -- -Unknown-
(66324, 5, 7, 7338, -2363, 0, 46689), -- -Unknown-
(66324, 5, 6, 7342, -2359, 0, 46689), -- -Unknown-
(66324, 5, 5, 7346, -2359, 0, 46689), -- -Unknown-
(66324, 5, 4, 7351, -2360, 0, 46689), -- -Unknown-
(66324, 5, 3, 7354, -2362, 0, 46689), -- -Unknown-
(66324, 5, 2, 7356, -2368, 0, 46689), -- -Unknown-
(66324, 5, 1, 7355, -2382, 0, 46689), -- -Unknown-
(66324, 5, 0, 7346, -2384, 0, 46689), -- -Unknown-
(66324, 4, 0, 7346, -2436, 0, 46689), -- -Unknown-
(66324, 3, 0, 7300, -2368, 0, 46689), -- -Unknown-
(66324, 2, 0, 7324, -2417, 0, 46689), -- -Unknown-
(66324, 1, 0, 7256, -2542, 0, 46689), -- -Unknown-
(66324, 0, 0, 7161, -2645, 125, 46689), -- -Unknown-
(65307, 8, 0, 7161, -2645, 125, 46689), -- -Unknown-
(65307, 7, 0, 7091, -2677, 102, 46689), -- -Unknown-
(65307, 6, 0, 7090, -2754, 98, 46689), -- -Unknown-
(65307, 5, 0, 7277, -2777, 108, 46689), -- -Unknown-
(65307, 4, 0, 7172, -2805, 101, 46689), -- -Unknown-
(65307, 3, 0, 7260, -2775, 107, 46689), -- -Unknown-
(65307, 2, 4, 7240, -2816, 107, 46689), -- -Unknown-
(65307, 2, 3, 7245, -2714, 107, 46689), -- -Unknown-
(65307, 2, 2, 7273, -2720, 106, 46689), -- -Unknown-
(65307, 2, 1, 7286, -2736, 107, 46689), -- -Unknown-
(65307, 2, 0, 7279, -2841, 107, 46689), -- -Unknown-
(65307, 1, 6, 7105, -2757, 98, 46689), -- -Unknown-
(65307, 1, 5, 7026, -2698, 102, 46689), -- -Unknown-
(65307, 1, 4, 7070, -2648, 102, 46689), -- -Unknown-
(65307, 1, 3, 7082, -2640, 101, 46689), -- -Unknown-
(65307, 1, 2, 7111, -2669, 101, 46689), -- -Unknown-
(65307, 1, 1, 7187, -2803, 100, 46689), -- -Unknown-
(65307, 1, 0, 7137, -2803, 100, 46689), -- -Unknown-
(65307, 0, 0, 7161, -2645, 125, 46689), -- -Unknown-
(65071, 2, 0, 6904, -3008, 87, 46689), -- -Unknown-
(65071, 1, 0, 6850, -2840, 75, 46689), -- -Unknown-
(65071, 0, 0, 6972, -2688, 80, 46689), -- -Unknown-
(65074, 6, 0, 7220, -2610, 130, 46689), -- -Unknown-
(65074, 5, 0, 7162, -2649, 125, 46689), -- -Unknown-
(65074, 4, 5, 6845, -3025, 85, 46689), -- -Unknown-
(65074, 4, 4, 6782, -2897, 56, 46689), -- -Unknown-
(65074, 4, 3, 6860, -2809, 97, 46689), -- -Unknown-
(65074, 4, 2, 6954, -2829, 70, 46689), -- -Unknown-
(65074, 4, 1, 7008, -2852, 54, 46689), -- -Unknown-
(65074, 4, 0, 6918, -3096, 95, 46689), -- -Unknown-
(65074, 3, 5, 7041, -3057, 93, 46689), -- -Unknown-
(65074, 3, 4, 7003, -3047, 88, 46689), -- -Unknown-
(65074, 3, 3, 7069, -2950, 59, 46689), -- -Unknown-
(65074, 3, 2, 7123, -2921, 54, 46689), -- -Unknown-
(65074, 3, 1, 7219, -2953, 75, 46689), -- -Unknown-
(65074, 3, 0, 7147, -3062, 134, 46689), -- -Unknown-
(65074, 2, 3, 7065, -3207, 130, 46689), -- -Unknown-
(65074, 2, 2, 7092, -3201, 130, 46689), -- -Unknown-
(65074, 2, 1, 7112, -3230, 128, 46689), -- -Unknown-
(65074, 2, 0, 7085, -3236, 129, 46689), -- -Unknown-
(65074, 1, 0, 7220, -2610, 130, 46689), -- -Unknown-
(65074, 0, 0, 7162, -2649, 125, 46689), -- -Unknown-
(65073, 2, 0, 7161, -2645, 125, 46689), -- -Unknown-
(65073, 1, 10, 6905, -3088, 98, 46689), -- -Unknown-
(65073, 1, 9, 6845, -3025, 85, 46689), -- -Unknown-
(65073, 1, 8, 6782, -2897, 56, 46689), -- -Unknown-
(65073, 1, 7, 6935, -2767, 89, 46689), -- -Unknown-
(65073, 1, 6, 6945, -2765, 88, 46689), -- -Unknown-
(65073, 1, 5, 6988, -2780, 85, 46689), -- -Unknown-
(65073, 1, 4, 7162, -2957, 83, 46689), -- -Unknown-
(65073, 1, 3, 7162, -3055, 138, 46689), -- -Unknown-
(65073, 1, 2, 7155, -3061, 139, 46689), -- -Unknown-
(65073, 1, 1, 7060, -3125, 123, 46689), -- -Unknown-
(65073, 1, 0, 7052, -3127, 125, 46689), -- -Unknown-
(65073, 0, 0, 7161, -2645, 125, 46689); -- -Unknown-


DELETE FROM `quest_details` WHERE `ID` IN (66513 /*-Unknown-*/, 65286 /*-Unknown-*/, 65100 /*-Unknown-*/, 65098 /*-Unknown-*/, 65097 /*-Unknown-*/, 65087 /*-Unknown-*/, 65084 /*-Unknown-*/, 65701 /*-Unknown-*/, 65057 /*-Unknown-*/, 65052 /*-Unknown-*/, 65046 /*-Unknown-*/, 65050 /*-Unknown-*/, 65049 /*-Unknown-*/, 65045 /*-Unknown-*/, 65075 /*-Unknown-*/, 66324 /*-Unknown-*/, 65307 /*-Unknown-*/, 65071 /*-Unknown-*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(66513, 1, 0, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65286, 1, 1, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65100, 1, 1, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65098, 1, 1, 1, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65097, 1, 1, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65087, 1, 1, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65084, 1, 1, 1, 1, 0, 0, 0, 0, 46689), -- -Unknown-
(65701, 1, 1, 1, 1, 0, 0, 0, 0, 46689), -- -Unknown-
(65057, 1, 6, 274, 5, 0, 0, 0, 0, 46689), -- -Unknown-
(65052, 1, 5, 0, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65046, 1, 1, 1, 1, 0, 0, 0, 0, 46689), -- -Unknown-
(65050, 1, 1, 1, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65049, 1, 1, 1, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65045, 1, 1, 1, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65075, 1, 1, 1, 1, 0, 0, 0, 0, 46689), -- -Unknown-
(66324, 1, 274, 1, 1, 0, 0, 0, 0, 46689), -- -Unknown-
(65307, 1, 1, 1, 0, 0, 0, 0, 0, 46689), -- -Unknown-
(65071, 1, 1, 0, 0, 0, 0, 0, 0, 46689); -- -Unknown-



DELETE FROM `quest_request_items` WHERE `ID` IN (65097 /*-Unknown-*/, 66324 /*-Unknown-*/, 65073 /*-Unknown-*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(65097, 0, 0, 0, 0, 'The... pain.', 46689), -- -Unknown-
(66324, 0, 0, 0, 0, 'None shall die or suffer if it is within my power to prevent it.', 0), -- -Unknown-
(65073, 0, 0, 0, 0, 'Time runs short.', 0); -- -Unknown-


DELETE FROM `creature_queststarter` WHERE (`id`=189324 AND `quest`=66513) OR (`id`=189322 AND `quest`=65286) OR (`id`=191780 AND `quest`=65100) OR (`id`=182601 AND `quest`=65098) OR (`id`=182441 AND `quest`=65097) OR (`id`=184308 AND `quest`=65087) OR (`id`=182258 AND `quest` IN (65084,65701)) OR (`id`=182297 AND `quest`=65057) OR (`id`=182275 AND `quest`=65052) OR (`id`=186210 AND `quest`=65046) OR (`id`=182274 AND `quest` IN (65050,65049)) OR (`id`=181054 AND `quest`=65045) OR (`id`=184163 AND `quest` IN (65075,66324,65307)) OR (`id`=184166 AND `quest`=65071);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(189324, 66513, 46689), -- -Unknown- offered -Unknown-
(189322, 65286, 46689), -- -Unknown- offered -Unknown-
(191780, 65100, 46689), -- -Unknown- offered -Unknown-
(182601, 65098, 46689), -- -Unknown- offered -Unknown-
(182441, 65097, 46689), -- -Unknown- offered -Unknown-
(184308, 65087, 46689), -- -Unknown- offered -Unknown-
(182258, 65084, 46689), -- -Unknown- offered -Unknown-
(182258, 65701, 46689), -- -Unknown- offered -Unknown-
(182297, 65057, 46689), -- -Unknown- offered -Unknown-
(182275, 65052, 46689), -- -Unknown- offered -Unknown-
(186210, 65046, 46689), -- -Unknown- offered -Unknown-
(182274, 65050, 46689), -- -Unknown- offered -Unknown-
(182274, 65049, 46689), -- -Unknown- offered -Unknown-
(181054, 65045, 46689), -- -Unknown- offered -Unknown-
(184163, 65075, 46689), -- -Unknown- offered -Unknown-
(184163, 66324, 46689), -- -Unknown- offered -Unknown-
(184163, 65307, 46689), -- -Unknown- offered -Unknown-
(184166, 65071, 46689); -- -Unknown- offered -Unknown-


DELETE FROM `creature_questender` WHERE (`id`=189324 AND `quest`=65286) OR (`id`=182609 AND `quest`=65100) OR (`id`=191780 AND `quest`=65098) OR (`id`=182601 AND `quest`=65097) OR (`id`=184308 AND `quest` IN (65087,65084)) OR (`id`=182258 AND `quest`=65701) OR (`id`=181054 AND `quest` IN (65057,65075)) OR (`id`=182297 AND `quest`=65052) OR (`id`=186218 AND `quest`=65046) OR (`id`=182275 AND `quest` IN (65050,65049)) OR (`id`=182274 AND `quest`=65045) OR (`id`=198429 AND `quest`=72263) OR (`id`=184163 AND `quest` IN (66324,65307,65073)) OR (`id`=184214 AND `quest`=65074) OR (`id`=184212 AND `quest`=65071);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(189324, 65286, 46689), -- -Unknown- ended by -Unknown-
(182609, 65100, 46689), -- -Unknown- ended by -Unknown-
(191780, 65098, 46689), -- -Unknown- ended by -Unknown-
(182601, 65097, 46689), -- -Unknown- ended by -Unknown-
(184308, 65087, 46689), -- -Unknown- ended by -Unknown-
(184308, 65084, 46689), -- -Unknown- ended by -Unknown-
(182258, 65701, 46689), -- -Unknown- ended by -Unknown-
(181054, 65057, 46689), -- -Unknown- ended by -Unknown-
(182297, 65052, 46689), -- -Unknown- ended by -Unknown-
(186218, 65046, 46689), -- -Unknown- ended by -Unknown-
(182275, 65050, 46689), -- -Unknown- ended by -Unknown-
(182275, 65049, 46689), -- -Unknown- ended by -Unknown-
(182274, 65045, 46689), -- -Unknown- ended by -Unknown-
(198429, 72263, 46689), -- -Unknown- ended by -Unknown-
(181054, 65075, 46689), -- -Unknown- ended by -Unknown-
(184163, 66324, 46689), -- -Unknown- ended by -Unknown-
(184163, 65307, 46689), -- -Unknown- ended by -Unknown-
(184163, 65073, 46689), -- -Unknown- ended by -Unknown-
(184214, 65074, 46689), -- -Unknown- ended by -Unknown-
(184212, 65071, 46689); -- -Unknown- ended by -Unknown-


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (192532,198551,192531,198531,192974,189325,192976,189324,189322,192545,192535,192975,192971,182609,192139,192309,189540,192310,192312,182611,184766,191885,182610,192140,192221,192311,184765,192308,191780,191863,192697,191586,191685,191366,192280,182601,191500,182608,184661,184658,191887,192273,182441,191423,192232,191425,182492,191675,191302,184620,184400,190482,184404,190531,186145,190508,184308,193054,190480,181377,184420,182488,190529,186703,186149,181427,181276,197489,181055,181597,197486,197484,197482,184267,197488,197481,183550,197483,185419,197487,182258,184269,190236,190235,183794,193824,182297,189627,184355,184375,187131,182280,191763,183842,183829,182275,186218,197908,192441,181831,192440,181373,190230,186285,186230,191543,184031,190974,184042,191224,186210,191540,181310,182274,186283,192471,192470,192469,191564,189914,198654,198655,198663,198660,189488,192476,186355,191746,192482,181364,186717,185433,186351,184266,190274,188819,198435,181053,198429,198431,183547,181054,186864,182251,187611,183960,181363,183549,192785,192410,187689,192454,191526,191530,191523,192488,191456,182277,186707,181840,183551,197229,196794,196831,188146,191445,191444,188197,188085,188653,185754,187833,188652,187904,188201,184214,184163,184211,184213,182646,184210,182349,184212,192473,181312,188692,184165,187163,191729,191521,191454,191713,198413,198414,188300,181311,184166,191599,194957,182007,191579,182006,182394,188292,192561,182008));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(192532, 0, 0, 0, 2150, 46689),
(198551, 0, 0, 0, 864, 46689),
(192531, 0, 0, 0, 2150, 46689),
(198531, 0, 0, 0, 864, 46689),
(192974, 0, 0, 0, 2150, 46689),
(189325, 0, 0, 0, 2150, 46689),
(192976, 0, 0, 0, 2150, 46689),
(189324, 0, 0, 0, 2150, 46689),
(189322, 0, 0, 0, 2078, 46689),
(192545, 0, 0, 0, 883, 46689),
(192535, 0, 0, 0, 883, 46689),
(192975, 0, 0, 0, 2150, 46689),
(192971, 0, 0, 0, 883, 46689),
(182609, 0, 0, 0, 2420, 46689),
(192139, 0, 0, 0, 2420, 46689),
(192309, 0, 0, 0, 2150, 46689),
(189540, 0, 2, 2, 2154, 46689),
(192310, 0, 0, 0, 2150, 46689),
(192312, 0, 0, 0, 2150, 46689),
(182611, 0, 0, 0, 2418, 46689),
(184766, 0, 0, 0, 2078, 46689),
(191885, 0, 0, 0, 2078, 46689),
(182610, 0, 0, 0, 2078, 46689),
(192140, 0, 0, 0, 2420, 46689),
(192221, 0, 0, 0, 2150, 46689),
(192311, 0, 0, 0, 2150, 46689),
(184765, 0, 0, 0, 2078, 46689),
(192308, 0, 0, 0, 2150, 46689),
(191780, 0, 0, 0, 2078, 46689),
(191863, 0, 0, 0, 2078, 46689),
(192697, 0, 0, 0, 2409, 46689),
(191586, 0, 0, 0, 2150, 46689),
(191685, 0, 0, 0, 2078, 46689),
(191366, 0, 0, 0, 2150, 46689),
(192280, 0, 0, 0, 328, 46689),
(182601, 0, 0, 0, 2437, 46689),
(191500, 0, 0, 0, 2078, 46689),
(182608, 0, 0, 0, 2078, 46689),
(184661, 0, 0, 0, 2150, 46689),
(184658, 0, 0, 0, 2078, 46689),
(191887, 0, 0, 0, 2150, 46689),
(192273, 0, 0, 0, 2150, 46689),
(182441, 0, 0, 0, 2078, 46689),
(191423, 0, 0, 0, 2150, 46689),
(192232, 0, 0, 0, 2409, 46689),
(191425, 0, 0, 0, 2150, 46689),
(182492, 0, 0, 0, 2151, 46689),
(191675, 0, 0, 0, 2150, 46689),
(191302, 0, 0, 0, 2150, 46689),
(184620, 0, 0, 0, 328, 46689),
(184400, 0, 0, 0, 2150, 46689),
(190482, 0, 0, 0, 2150, 46689),
(184404, 0, 0, 0, 2150, 46689),
(190531, 0, 0, 0, 2150, 46689),
(186145, 0, 0, 0, 2078, 46689),
(190508, 0, 0, 0, 2150, 46689),
(184308, 0, 0, 0, 2078, 46689),
(193054, 0, 0, 0, 2150, 46689),
(190480, 0, 0, 0, 2150, 46689),
(181377, 0, 0, 0, 2150, 46689),
(184420, 0, 0, 0, 2150, 46689),
(182488, 0, 0, 0, 2150, 46689),
(190529, 0, 0, 0, 2150, 46689),
(186703, 0, 0, 0, 2150, 46689),
(186149, 0, 0, 0, 2150, 46689),
(181427, 0, 0, 0, 2150, 46689),
(181276, 0, 0, 0, 2078, 46689),
(197489, 0, 0, 0, 2150, 46689),
(181055, 0, 0, 0, 2150, 46689),
(181597, 0, 0, 0, 2150, 46689),
(197486, 0, 0, 0, 2150, 46689),
(197484, 0, 0, 0, 2150, 46689),
(197482, 0, 0, 0, 2150, 46689),
(184267, 0, 0, 0, 2078, 46689),
(197488, 0, 0, 0, 2150, 46689),
(197481, 0, 0, 0, 2150, 46689),
(183550, 0, 0, 0, 2150, 46689),
(197483, 0, 0, 0, 2150, 46689),
(185419, 0, 0, 0, 2078, 46689),
(197487, 0, 0, 0, 2150, 46689),
(182258, 0, 0, 0, 2078, 46689),
(184269, 0, 0, 0, 2420, 46689),
(190236, 0, 0, 0, 2150, 46689),
(190235, 0, 0, 0, 2078, 46689),
(183794, 0, 0, 0, 2150, 46689),
(193824, 0, 0, 0, 2150, 46689),
(182297, 0, 0, 0, 2150, 46689),
(189627, 0, 0, 0, 2417, 46689),
(184355, 0, 0, 0, 2150, 46689),
(184375, 0, 0, 0, 2150, 46689),
(187131, 0, 0, 0, 2150, 46689),
(182280, 0, 0, 0, 2150, 46689),
(191763, 0, 0, 0, 2150, 46689),
(183842, 0, 0, 0, 2150, 46689),
(183829, 0, 0, 0, 2150, 46689),
(182275, 0, 0, 0, 2078, 46689),
(186218, 0, 0, 0, 2150, 46689),
(197908, 0, 0, 0, 2150, 46689),
(192441, 0, 0, 0, 2150, 46689),
(181831, 0, 0, 0, 2150, 46689),
(192440, 0, 0, 0, 81, 46689),
(181373, 0, 0, 0, 2150, 46689),
(190230, 0, 0, 0, 2150, 46689),
(186285, 0, 0, 0, 2150, 46689),
(186230, 0, 0, 0, 2506, 46689),
(191543, 0, 0, 0, 81, 46689),
(184031, 0, 0, 0, 328, 46689),
(190974, 0, 0, 0, 2150, 46689),
(184042, 0, 0, 0, 328, 46689),
(191224, 0, 0, 0, 2150, 46689),
(186210, 0, 0, 0, 2150, 46689),
(191540, 0, 0, 0, 81, 46689),
(181310, 0, 0, 0, 2150, 46689),
(182274, 0, 0, 0, 2078, 46689),
(186283, 0, 0, 0, 2150, 46689),
(192471, 0, 0, 0, 2150, 46689),
(192470, 0, 0, 0, 2150, 46689),
(192469, 0, 0, 0, 2150, 46689),
(191564, 0, 0, 0, 81, 46689),
(189914, 0, 0, 0, 2150, 46689),
(198654, 0, 0, 0, 2151, 46689),
(198655, 0, 0, 0, 2151, 46689),
(198663, 0, 0, 0, 81, 46689),
(198660, 0, 0, 0, 2151, 46689),
(189488, 0, 0, 0, 81, 46689),
(192476, 0, 0, 0, 2150, 46689),
(186355, 0, 0, 0, 2150, 46689),
(191746, 0, 0, 0, 2150, 46689),
(192482, 0, 0, 0, 2150, 46689),
(181364, 0, 0, 0, 2150, 46689),
(186717, 0, 0, 0, 81, 46689),
(185433, 0, 0, 0, 2150, 46689),
(186351, 0, 0, 0, 2150, 46689),
(184266, 0, 0, 0, 2078, 46689),
(190274, 0, 0, 0, 2150, 46689),
(188819, 0, 0, 0, 2150, 46689),
(198435, 0, 0, 0, 2418, 46689),
(181053, 0, 0, 0, 2150, 46689),
(198429, 0, 0, 0, 2150, 46689),
(198431, 0, 0, 0, 2418, 46689),
(183547, 0, 0, 0, 2150, 46689),
(181054, 0, 0, 0, 2150, 46689),
(186864, 0, 0, 0, 2150, 46689),
(182251, 0, 0, 0, 2420, 46689),
(187611, 0, 0, 0, 2150, 46689),
(183960, 0, 0, 0, 2150, 46689),
(181363, 0, 0, 0, 2150, 46689),
(183549, 0, 0, 0, 2150, 46689),
(192785, 0, 0, 0, 2150, 46689),
(192410, 0, 0, 0, 2150, 46689),
(187689, 0, 0, 0, 2150, 46689),
(192454, 0, 0, 0, 2150, 46689),
(191526, 0, 0, 0, 81, 46689),
(191530, 0, 0, 0, 2150, 46689),
(191523, 0, 0, 0, 2150, 46689),
(192488, 0, 0, 0, 81, 46689),
(191456, 0, 0, 0, 2150, 46689),
(182277, 0, 0, 0, 2150, 46689),
(186707, 0, 0, 0, 81, 46689),
(181840, 0, 0, 0, 2150, 46689),
(183551, 0, 0, 0, 2150, 46689),
(197229, 0, 0, 0, 328, 46689),
(196794, 0, 0, 0, 2419, 46689),
(196831, 0, 0, 0, 2419, 46689),
(188146, 0, 0, 0, 2419, 46689),
(191445, 0, 0, 0, 2419, 46689),
(191444, 0, 0, 0, 2419, 46689),
(188197, 0, 0, 0, 2150, 46689),
(188085, 0, 0, 0, 2150, 46689),
(188653, 0, 0, 0, 2150, 46689),
(185754, 0, 0, 0, 2150, 46689),
(187833, 0, 0, 0, 2150, 46689),
(188652, 0, 0, 0, 2150, 46689),
(187904, 0, 0, 0, 2150, 46689),
(188201, 0, 0, 0, 2150, 46689),
(184214, 0, 0, 0, 2078, 46689),
(184163, 0, 0, 0, 2150, 46689),
(184211, 0, 0, 0, 2150, 46689),
(184213, 0, 0, 0, 2150, 46689),
(182646, 0, 0, 0, 81, 46689),
(184210, 0, 0, 0, 2150, 46689),
(182349, 0, 0, 0, 2407, 46689),
(184212, 0, 0, 0, 2150, 46689),
(192473, 0, 0, 0, 2150, 46689),
(181312, 0, 0, 0, 2150, 46689),
(188692, 0, 0, 0, 2150, 46689),
(184165, 0, 0, 0, 2150, 46689),
(187163, 0, 0, 0, 81, 46689),
(191729, 0, 0, 0, 2405, 46689),
(191521, 0, 0, 0, 81, 46689),
(191454, 0, 0, 0, 81, 46689),
(191713, 0, 0, 0, 2150, 46689),
(198413, 0, 0, 0, 2418, 46689),
(198414, 0, 0, 0, 2418, 46689),
(188300, 0, 0, 0, 2407, 46689),
(181311, 0, 0, 0, 2150, 46689),
(184166, 0, 0, 0, 2150, 46689),
(191599, 0, 0, 0, 81, 46689),
(194957, 0, 0, 0, 2150, 46689),
(182007, 0, 0, 0, 2150, 46689),
(191579, 0, 0, 0, 81, 46689),
(182006, 0, 0, 0, 81, 46689),
(182394, 0, 0, 0, 2150, 46689),
(188292, 0, 0, 0, 2407, 46689),
(192561, 0, 0, 0, 81, 46689),
(182008, 0, 0, 0, 2150, 46689);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46689 WHERE (`DifficultyID`=0 AND `Entry` IN (14423,71526,188151,1289,1287,61836,61834,33530,3518,61081,1275,279,50669,6174,1432,1285,1286,43769,18375,2456,43820,43819,49877,483,18362,2457,18359,2455,18357,4981,482,46602,43692,48632,43822,4974,51440,162935,5193,61896,61895,14721,14394,65153,186180,4959,883,61165,17804,61080));

DELETE FROM `creature_model_info` WHERE `DisplayID` IN (107898, 107882, 110189, 107892, 110175, 107887, 105959, 101201, 107754, 103255, 106435, 107102, 105865, 106882, 105864, 78847, 110296, 108009, 110297, 110293, 104070, 104842, 104839, 104833, 104841, 105532, 104904, 105960, 106940, 109404, 104726, 104727, 104831, 107977, 102561, 107770, 103851, 103848, 105198, 103849, 103854, 107315, 103853, 103947, 104497, 104808, 103964, 78833, 107561, 103963, 103965, 104498, 103929, 103948, 104500, 103942, 106356, 103931, 104011, 104501, 103833, 104071, 107864, 104069, 103889, 107479, 104067, 109439, 104068, 100951, 109437, 110115, 110066, 110112, 104619, 104074, 104840, 109181, 105560, 110397, 103875, 110294, 101431, 101430, 106883, 100353, 102574, 104861, 105104, 105787, 105559, 104293, 105788, 104555, 104837, 104835, 104917, 104836, 104918, 102065, 102064, 102852, 104703, 102067, 106707, 104516, 104520, 100358, 104519, 100537, 104919, 104517, 104522, 110395, 105562, 104518, 100698, 100689, 105185, 100699, 104523, 105188);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(107898, 0.305999994277954101, 1.5, 0, 46689),
(107882, 0.208000004291534423, 1.5, 0, 46689),
(110189, 0.722000002861022949, 2, 0, 46689),
(107892, 0.305999994277954101, 1.5, 0, 46689),
(110175, 0.722000002861022949, 2, 0, 46689),
(107887, 0.305999994277954101, 1.5, 0, 46689),
(105959, 22.84077072143554687, 2.299999952316284179, 0, 46689),
(101201, 7.665746212005615234, 7.5, 0, 46689),
(107754, 10.81897163391113281, 5, 0, 46689),
(103255, 54.43883132934570312, 35, 0, 46689),
(106435, 12.00420951843261718, 10, 0, 46689),
(107102, 1, 1.5, 0, 46689),
(105865, 0.5, 0.75, 0, 46689),
(106882, 0.80699998140335083, 2.20000004768371582, 0, 46689),
(105864, 0.5, 0.75, 0, 46689),
(78847, 0.383581817150115966, 1.5, 0, 46689),
(110296, 0.20727550983428955, 0.85000002384185791, 0, 46689),
(108009, 5.53552865982055664, 7, 0, 46689),
(110297, 0.20727550983428955, 0.85000002384185791, 0, 46689),
(110293, 0.20727550983428955, 0.85000002384185791, 0, 46689),
(104070, 2.76776432991027832, 1.75, 0, 46689),
(104842, 0.722000002861022949, 2, 0, 46689),
(104839, 0.722000002861022949, 2, 0, 46689),
(104833, 0.722000002861022949, 2, 0, 46689),
(104841, 0.722000002861022949, 2, 0, 46689),
(105532, 1, 9, 0, 46689),
(104904, 0.722000002861022949, 2, 0, 46689),
(105960, 1.593232631683349609, 2, 0, 46689),
(106940, 1, 1.5, 0, 46689),
(109404, 0.80699998140335083, 2.20000004768371582, 0, 46689),
(104726, 0.722000002861022949, 2, 0, 46689),
(104727, 0.722000002861022949, 2, 0, 46689),
(104831, 0.722000002861022949, 2, 0, 46689),
(107977, 1.210121750831604003, 1.60000002384185791, 0, 46689),
(102561, 1.512652158737182617, 2, 0, 46689),
(107770, 1, 1.5, 0, 46689),
(103851, 0.287056982517242431, 0.375, 0, 46689),
(103848, 0.287056982517242431, 0.375, 0, 46689),
(105198, 1, 1.5, 0, 46689),
(103849, 0.287056982517242431, 0.375, 0, 46689),
(103854, 0.287056982517242431, 0.375, 0, 46689),
(107315, 2, 3, 0, 46689),
(103853, 0.287056982517242431, 0.375, 0, 46689),
(103947, 10.15552997589111328, 2.5, 0, 46689),
(104497, 0.524999976158142089, 1.5, 0, 46689),
(104808, 0.887700021266937255, 2.420000076293945312, 0, 46689),
(103964, 0.626399993896484375, 0.900000035762786865, 0, 46689),
(78833, 0.383581817150115966, 1.5, 0, 46689),
(107561, 0.75, 1.125, 0, 46689),
(103963, 0.626399993896484375, 0.900000035762786865, 0, 46689),
(103965, 0.626399993896484375, 0.900000035762786865, 0, 46689),
(104498, 0.524999976158142089, 1.5, 0, 46689),
(103929, 0.252000004053115844, 0.576000034809112548, 0, 46689),
(103948, 10.15552997589111328, 2.5, 0, 46689),
(104500, 0.524999976158142089, 1.5, 0, 46689),
(103942, 5.549639701843261718, 12, 0, 46689),
(106356, 4.191898345947265625, 6, 0, 46689),
(103931, 0.252000004053115844, 0.576000034809112548, 0, 46689),
(104011, 0.059500001370906829, 0.136000007390975952, 0, 46689),
(104501, 0.524999976158142089, 1.5, 0, 46689),
(103833, 0.383581817150115966, 1.5, 0, 46689),
(104071, 2.76776432991027832, 1.75, 0, 46689),
(107864, 1.010061264038085937, 3, 0, 46689),
(104069, 2.76776432991027832, 1.75, 0, 46689),
(103889, 4.183626651763916015, 8.400000572204589843, 0, 46689),
(107479, 1.210500001907348632, 3.300000190734863281, 0, 46689),
(104067, 2.76776432991027832, 1.75, 0, 46689),
(109439, 0.80699998140335083, 2.20000004768371582, 0, 46689),
(104068, 2.76776432991027832, 1.75, 0, 46689),
(100951, 0.529641151428222656, 0.349999994039535522, 0, 46689),
(109437, 0.80699998140335083, 2.20000004768371582, 0, 46689),
(110115, 0.647260427474975585, 1.5, 0, 46689),
(110066, 0.722000002861022949, 2, 0, 46689),
(110112, 0.647260427474975585, 1.5, 0, 46689),
(104619, 0.722000002861022949, 2, 0, 46689),
(104074, 2.214211463928222656, 1.399999976158142089, 0, 46689),
(104840, 0.722000002861022949, 2, 0, 46689),
(109181, 0.722000002861022949, 2, 0, 46689),
(105560, 0.456171125173568725, 0, 0, 46689),
(110397, 0.596531510353088378, 0, 0, 46689),
(103875, 1.366205096244812011, 1.75, 0, 46689),
(110294, 0.20727550983428955, 0.85000002384185791, 0, 46689),
(101431, 0.554419875144958496, 1.5, 0, 46689),
(101430, 0.554419875144958496, 1.5, 0, 46689),
(106883, 0.80699998140335083, 2.20000004768371582, 0, 46689),
(100353, 0.459838360548019409, 0, 0, 46689),
(102574, 0.551589131355285644, 0.5, 0, 46689),
(104861, 0.722000002861022949, 2, 0, 46689),
(105104, 0.722000002861022949, 2, 0, 46689),
(105787, 1.404254555702209472, 1.20000004768371582, 0, 46689),
(105559, 0.350900888442993164, 0, 0, 46689),
(104293, 2.106381893157958984, 1.80000007152557373, 0, 46689),
(105788, 1.404254555702209472, 1.20000004768371582, 0, 46689),
(104555, 0.830299973487854003, 2.299999952316284179, 0, 46689),
(104837, 0.722000002861022949, 2, 0, 46689),
(104835, 0.722000002861022949, 2, 0, 46689),
(104917, 0.995880126953125, 1.5, 0, 46689),
(104836, 0.722000002861022949, 2, 0, 46689),
(104918, 0.917803108692169189, 1.5, 0, 46689),
(102065, 2.457278013229370117, 1.75, 0, 46689),
(102064, 1.404158830642700195, 1, 0, 46689),
(102852, 0.324163556098937988, 0.324999988079071044, 0, 46689),
(104703, 2.948733329772949218, 2.099999904632568359, 0, 46689),
(102067, 0.448296070098876953, 0.300000011920928955, 0, 46689),
(106707, 0.599362134933471679, 0, 0, 46689),
(104516, 0.210000008344650268, 0.300000011920928955, 0, 46689),
(104520, 0.210000008344650268, 0.300000011920928955, 0, 46689),
(100358, 0.229125797748565673, 1, 0, 46689),
(104519, 0.210000008344650268, 0.300000011920928955, 0, 46689),
(100537, 0.916602551937103271, 2, 0, 46689),
(104919, 0.374034881591796875, 0.375, 0, 46689),
(104517, 0.210000008344650268, 0.300000011920928955, 0, 46689),
(104522, 0.210000008344650268, 0.300000011920928955, 0, 46689),
(110395, 0.596531510353088378, 0, 0, 46689),
(105562, 0.350900888442993164, 0, 0, 46689),
(104518, 0.210000008344650268, 0.300000011920928955, 0, 46689),
(100698, 0.819302201271057128, 1, 0, 46689),
(100689, 0.288361519575119018, 0.125, 0, 46689),
(105185, 0.310000002384185791, 1.5, 0, 46689),
(100699, 0.819302201271057128, 1, 0, 46689),
(104523, 0.210000008344650268, 0.300000011920928955, 0, 46689),
(105188, 0.310000002384185791, 1.5, 0, 46689);

UPDATE `creature_model_info` SET `VerifiedBuild`=46689 WHERE `DisplayID` IN (14472, 49021, 1429, 1448, 42274, 42273, 25173, 1541, 1444, 5082, 36839, 4888, 5074, 1434, 1440, 33507, 17703, 1436, 33519, 33518, 36758, 5546, 17717, 1437, 17696, 1450, 17694, 5547, 3246, 37372, 33468, 36213, 33520, 2974, 3133, 12923, 14431, 46026, 4469, 347, 654, 17250, 5379, 85797, 80919, 78835, 78834, 36603, 36605);
UPDATE `creature_model_info` SET `BoundingRadius`=0.383581817150115966, `CombatReach`=1.5, `VerifiedBuild`=46689 WHERE `DisplayID` IN (28501, 82113);
UPDATE `creature_model_info` SET `BoundingRadius`=0.287056982517242431, `CombatReach`=0.375, `VerifiedBuild`=46689 WHERE `DisplayID`=88000;
UPDATE `creature_model_info` SET `BoundingRadius`=0.383581817150115966, `VerifiedBuild`=46689 WHERE `DisplayID` IN (14932, 22468);
UPDATE `creature_model_info` SET `BoundingRadius`=0.212528020143508911, `CombatReach`=0.150000005960464477, `VerifiedBuild`=46689 WHERE `DisplayID`=38585;


DELETE FROM `gossip_menu` WHERE (`TextID`=1 AND `MenuID` IN (27571,27570,27760,29774,27718,28087,27429,27509,27506));
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(27571, 1, 46689), -- 182611
(27570, 1, 46689), -- 182610
(27760, 1, 46689), -- 186864
(29774, 1, 46689), -- 183794
(27718, 1, 46689), -- 182275
(28087, 1, 46689), -- 182274
(27429, 1, 46689), -- 182349
(27509, 1, 46689), -- 184212
(27506, 1, 46689); -- 184165

DELETE FROM `gossip_menu_option` WHERE (`OptionID`=0 AND `MenuID` IN (27760,27506,27570,27571));
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(27760, 0, 1, 'I wish to browse your wares.', 4424, 0, 0, 0, 0, 0, NULL, 0, 46689), -- OptionBroadcastTextID: 4424 - 4424 - 9818 - 9818 - 12631 - 12631 - 13966 - 13966 - 14925 - 14925 - 15955 - 15955 - 16125 - 16125 - 16127 - 16127 - 17085 - 17085 - 18217 - 18217 - 19466 - 19466 - 38807 - 38807
(27506, 0, 0, 'Come with me. I will get you to safety.', 0, 0, 0, 0, 0, 0, NULL, 0, 46689),
(27570, 0, 0, '<Salute Scalecommander Viridia.>', 0, 0, 0, 0, 0, 0, NULL, 0, 46689),
(27571, 0, 0, '<Relay what Nozdormu told you.>', 0, 0, 0, 0, 0, 0, NULL, 0, 46689);



DELETE FROM `creature_template` WHERE `entry` IN (192532 /*-Unknown-*/, 198551 /*-Unknown-*/, 192531 /*-Unknown-*/, 198531 /*-Unknown-*/, 192974 /*-Unknown-*/, 189325 /*-Unknown-*/, 192976 /*-Unknown-*/, 189324 /*-Unknown-*/, 189322 /*-Unknown-*/, 192545 /*-Unknown-*/, 192535 /*-Unknown-*/, 192975 /*-Unknown-*/, 192971 /*-Unknown-*/, 182609 /*-Unknown-*/, 192139 /*-Unknown-*/, 192309 /*-Unknown-*/, 189540 /*-Unknown-*/, 192310 /*-Unknown-*/, 192312 /*-Unknown-*/, 182611 /*-Unknown-*/, 184766 /*-Unknown-*/, 191885 /*-Unknown-*/, 182610 /*-Unknown-*/, 192140 /*-Unknown-*/, 192221 /*-Unknown-*/, 192311 /*-Unknown-*/, 184765 /*-Unknown-*/, 192308 /*-Unknown-*/, 191780 /*-Unknown-*/, 191863 /*-Unknown-*/, 192697 /*-Unknown-*/, 191586 /*-Unknown-*/, 191685 /*-Unknown-*/, 191366 /*-Unknown-*/, 192280 /*-Unknown-*/, 182601 /*-Unknown-*/, 191500 /*-Unknown-*/, 182608 /*-Unknown-*/, 184661 /*-Unknown-*/, 184658 /*-Unknown-*/, 191887 /*-Unknown-*/, 192273 /*-Unknown-*/, 182441 /*-Unknown-*/, 191423 /*-Unknown-*/, 192232 /*-Unknown-*/, 191425 /*-Unknown-*/, 182492 /*-Unknown-*/, 191675 /*-Unknown-*/, 191302 /*-Unknown-*/, 184620 /*-Unknown-*/, 184400 /*-Unknown-*/, 190482 /*-Unknown-*/, 184404 /*-Unknown-*/, 190531 /*-Unknown-*/, 186145 /*-Unknown-*/, 190508 /*-Unknown-*/, 184308 /*-Unknown-*/, 193054 /*-Unknown-*/, 190480 /*-Unknown-*/, 181377 /*-Unknown-*/, 184420 /*-Unknown-*/, 182488 /*-Unknown-*/, 190529 /*-Unknown-*/, 186703 /*-Unknown-*/, 186149 /*-Unknown-*/, 181427 /*-Unknown-*/, 181276 /*-Unknown-*/, 197489 /*-Unknown-*/, 181055 /*-Unknown-*/, 181597 /*-Unknown-*/, 197486 /*-Unknown-*/, 197484 /*-Unknown-*/, 197482 /*-Unknown-*/, 184267 /*-Unknown-*/, 197488 /*-Unknown-*/, 197481 /*-Unknown-*/, 183550 /*-Unknown-*/, 197483 /*-Unknown-*/, 185419 /*-Unknown-*/, 197487 /*-Unknown-*/, 182258 /*-Unknown-*/, 184269 /*-Unknown-*/, 190236 /*-Unknown-*/, 190235 /*-Unknown-*/, 183794 /*-Unknown-*/, 193824 /*-Unknown-*/, 182297 /*-Unknown-*/, 189627 /*-Unknown-*/, 184355 /*-Unknown-*/, 184375 /*-Unknown-*/, 187131 /*-Unknown-*/, 182280 /*-Unknown-*/, 191763 /*-Unknown-*/, 183842 /*-Unknown-*/, 183829 /*-Unknown-*/, 182275 /*-Unknown-*/, 186218 /*-Unknown-*/, 197908 /*-Unknown-*/, 192441 /*-Unknown-*/, 181831 /*-Unknown-*/, 192440 /*-Unknown-*/, 181373 /*-Unknown-*/, 190230 /*-Unknown-*/, 186285 /*-Unknown-*/, 186230 /*-Unknown-*/, 191543 /*-Unknown-*/, 184031 /*-Unknown-*/, 190974 /*-Unknown-*/, 184042 /*-Unknown-*/, 191224 /*-Unknown-*/, 186210 /*-Unknown-*/, 191540 /*-Unknown-*/, 181310 /*-Unknown-*/, 182274 /*-Unknown-*/, 186283 /*-Unknown-*/, 192471 /*-Unknown-*/, 192470 /*-Unknown-*/, 192469 /*-Unknown-*/, 191564 /*-Unknown-*/, 189914 /*-Unknown-*/, 198654 /*-Unknown-*/, 198655 /*-Unknown-*/, 198663 /*-Unknown-*/, 198660 /*-Unknown-*/, 189488 /*-Unknown-*/, 192476 /*-Unknown-*/, 186355 /*-Unknown-*/, 191746 /*-Unknown-*/, 192482 /*-Unknown-*/, 181364 /*-Unknown-*/, 186717 /*-Unknown-*/, 185433 /*-Unknown-*/, 186351 /*-Unknown-*/, 184266 /*-Unknown-*/, 190274 /*-Unknown-*/, 188819 /*-Unknown-*/, 198435 /*-Unknown-*/, 181053 /*-Unknown-*/, 198429 /*-Unknown-*/, 198431 /*-Unknown-*/, 183547 /*-Unknown-*/, 181054 /*-Unknown-*/, 186864 /*-Unknown-*/, 182251 /*-Unknown-*/, 187611 /*-Unknown-*/, 183960 /*-Unknown-*/, 181363 /*-Unknown-*/, 183549 /*-Unknown-*/, 192785 /*-Unknown-*/, 192410 /*-Unknown-*/, 187689 /*-Unknown-*/, 192454 /*-Unknown-*/, 191526 /*-Unknown-*/, 191530 /*-Unknown-*/, 191523 /*-Unknown-*/, 192488 /*-Unknown-*/, 191456 /*-Unknown-*/, 182277 /*-Unknown-*/, 186707 /*-Unknown-*/, 181840 /*-Unknown-*/, 183551 /*-Unknown-*/, 197229 /*-Unknown-*/, 196794 /*-Unknown-*/, 196831 /*-Unknown-*/, 188146 /*-Unknown-*/, 191445 /*-Unknown-*/, 191444 /*-Unknown-*/, 188197 /*-Unknown-*/, 188085 /*-Unknown-*/, 188653 /*-Unknown-*/, 185754 /*-Unknown-*/, 187833 /*-Unknown-*/, 188652 /*-Unknown-*/, 187904 /*-Unknown-*/, 188201 /*-Unknown-*/, 184214 /*-Unknown-*/, 184163 /*-Unknown-*/, 184211 /*-Unknown-*/, 184213 /*-Unknown-*/, 182646 /*-Unknown-*/, 184210 /*-Unknown-*/, 182349 /*-Unknown-*/, 184212 /*-Unknown-*/, 192473 /*-Unknown-*/, 181312 /*-Unknown-*/, 188692 /*-Unknown-*/, 184165 /*-Unknown-*/, 187163 /*-Unknown-*/, 191729 /*-Unknown-*/, 191521 /*-Unknown-*/, 191454 /*-Unknown-*/, 191713 /*-Unknown-*/, 198413 /*-Unknown-*/, 198414 /*-Unknown-*/, 188300 /*-Unknown-*/, 181311 /*-Unknown-*/, 184166 /*-Unknown-*/, 191599 /*-Unknown-*/, 194957 /*-Unknown-*/, 182007 /*-Unknown-*/, 191579 /*-Unknown-*/, 182006 /*-Unknown-*/, 182394 /*-Unknown-*/, 188292 /*-Unknown-*/, 192561 /*-Unknown-*/, 182008 /*-Unknown-*/);
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(192532, 0, 60, 60, 12, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(198551, 0, 60, 60, 3340, 1, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(192531, 0, 60, 60, 12, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(198531, 0, 60, 60, 3340, 1, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(192974, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(189325, 0, 60, 60, 3340, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(192976, 0, 60, 60, 3340, 0, 1, 1.142857193946838378, 2000, 0, 33536, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(189324, 0, 60, 60, 3340, 2, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(189322, 0, 70, 70, 35, 2, 1, 1.142857193946838378, 2000, 0, 32768, 34816, 0, 0, 0, 1), -- -Unknown-
(192545, 0, 60, 60, 11, 0, 6, 1.385714292526245117, 2000, 0, 32768, 2048, 8388608, 0, 0, 1), -- -Unknown-
(192535, 0, 60, 60, 11, 0, 1, 1.428571462631225585, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(192975, 0, 60, 60, 3340, 0, 1, 1.142857193946838378, 2000, 0, 33536, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(192971, 0, 60, 60, 11, 0, 1, 1.428571462631225585, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(182609, 0, 60, 60, 35, 2, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(192139, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(192309, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(189540, 0, 72, 72, 35, 0, 1, 1.142857193946838378, 2000, 0, 32768, 69208064, 0, 0, 0, 1), -- -Unknown-
(192310, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(192312, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(182611, 27571, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33024, 2048, 0, 0, 0, 1), -- -Unknown-
(184766, 0, 70, 70, 35, 1, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(191885, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(182610, 27570, 70, 70, 35, 1, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(192140, 0, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(192221, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(192311, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(184765, 0, 70, 70, 35, 1, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 10), -- -Unknown-
(192308, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(191780, 0, 70, 70, 35, 2, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(191863, 0, 70, 70, 35, 2, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(192697, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 32768, 0, 1572864, 0, 0, 10), -- -Unknown-
(191586, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 32832, 33570816, 0, 0, 0, 1), -- -Unknown-
(191685, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 10), -- -Unknown-
(191366, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(192280, 0, 60, 60, 114, 0, 1.60000002384185791, 0.571428596973419189, 2000, 0, 33571584, 67110912, 16777217, 0, 7829, 1), -- -Unknown-
(182601, 0, 70, 70, 35, 2, 1, 1.142857193946838378, 2000, 0, 32768, 32768, 0, 0, 0, 1), -- -Unknown-
(191500, 0, 70, 70, 14, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2099200, 524289, 0, 0, 1), -- -Unknown-
(182608, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(184661, 0, 60, 60, 14, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(184658, 0, 70, 70, 14, 0, 1, 1.142857193946838378, 2000, 0, 16448, 2048, 0, 0, 0, 1), -- -Unknown-
(191887, 0, 60, 60, 14, 0, 1, 1, 2000, 0, 32832, 2048, 1, 0, 0, 1), -- -Unknown-
(192273, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 32768, 4196352, 1, 0, 0, 1), -- -Unknown-
(182441, 0, 70, 70, 35, 2, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(191423, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 537133824, 2049, 8193, 0, 0, 1), -- -Unknown-
(192232, 0, 60, 60, 14, 0, 1, 1.142857193946838378, 2000, 0, 32768, 4196352, 0, 0, 0, 1), -- -Unknown-
(191425, 0, 60, 60, 1665, 0, 1, 1.142857193946838378, 2000, 0, 537133824, 2049, 8193, 0, 0, 1), -- -Unknown-
(182492, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 33344, 2099200, 1, 0, 0, 2.799999952316284179), -- -Unknown-
(191675, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(191302, 0, 60, 60, 14, 0, 1, 1.571428537368774414, 2000, 0, 32832, 2048, 1, 0, 0, 1), -- -Unknown-
(184620, 0, 60, 60, 35, 0, 3.20000004768371582, 2, 2000, 0, 33570816, 2048, 16777217, 0, 0, 1), -- -Unknown-
(184400, 0, 60, 60, 14, 0, 1, 1, 2000, 0, 32832, 2048, 1, 0, 7674, 1), -- -Unknown-
(190482, 0, 60, 60, 2732, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(184404, 0, 60, 60, 2732, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(190531, 0, 60, 60, 2732, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 4, 0, 1), -- -Unknown-
(186145, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 10), -- -Unknown-
(190508, 0, 60, 60, 14, 0, 1, 1, 2000, 0, 32832, 2048, 1, 0, 0, 1), -- -Unknown-
(184308, 0, 70, 70, 35, 2, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(193054, 0, 60, 60, 14, 0, 0.5, 0.5, 2000, 0, 32832, 0, 1, 0, 0, 1), -- -Unknown-
(190480, 0, 60, 60, 1665, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33554432, 1048576, 0, 0, 1), -- -Unknown-
(181377, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(184420, 0, 60, 60, 1665, 0, 1, 1.142857193946838378, 2000, 0, 32832, 33554432, 1048576, 0, 0, 1), -- -Unknown-
(182488, 0, 60, 60, 2732, 0, 1, 1, 2000, 0, 32832, 4196352, 0, 0, 0, 1), -- -Unknown-
(190529, 0, 60, 60, 1665, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33554432, 1048576, 0, 0, 1), -- -Unknown-
(186703, 0, 60, 60, 2732, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(186149, 0, 60, 60, 16, 0, 1, 1, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- -Unknown-
(181427, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- -Unknown-
(181276, 0, 70, 70, 35, 3, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(197489, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(181055, 0, 60, 60, 35, 2, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(181597, 0, 60, 60, 35, 2, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(197486, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(197484, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(197482, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(184267, 0, 70, 70, 35, 1, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(197488, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(197481, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(183550, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(197483, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(185419, 0, 70, 70, 35, 1, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 10), -- -Unknown-
(197487, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(182258, 0, 70, 70, 35, 3, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(184269, 0, 60, 60, 35, 3, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(190236, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(190235, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(183794, 29774, 60, 60, 1665, 1, 1, 1.142857193946838378, 2000, 0, 32768, 33554432, 1048576, 0, 0, 1), -- -Unknown-
(193824, 0, 60, 60, 14, 0, 1, 1, 2000, 0, 537133824, 2049, 8192, 0, 0, 1), -- -Unknown-
(182297, 0, 60, 60, 35, 2, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(189627, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 536871680, 2049, 8192, 0, 0, 1), -- -Unknown-
(184355, 0, 59, 59, 35, 0, 1, 1.142857193946838378, 1552, 0, 32768, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(184375, 0, 59, 59, 35, 0, 1, 1.142857193946838378, 1552, 0, 32768, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(187131, 0, 60, 60, 2102, 0, 1, 1.142857193946838378, 2000, 0, 536904448, 33556481, 8192, 0, 0, 1), -- -Unknown-
(182280, 0, 60, 60, 16, 0, 1, 1, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- -Unknown-
(191763, 0, 60, 60, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(183842, 0, 60, 60, 14, 0, 3.20000004768371582, 2, 2000, 0, 33570816, 67584, 16777217, 0, 7658, 1), -- -Unknown-
(183829, 0, 60, 60, 14, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(182275, 27718, 70, 70, 35, 3, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(186218, 0, 60, 60, 35, 2, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(197908, 0, 60, 60, 1665, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33554432, 1048576, 0, 0, 1), -- -Unknown-
(192441, 0, 60, 60, 32, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(181831, 0, 60, 60, 2952, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(192440, 0, 1, 1, 31, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(181373, 0, 60, 60, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(190230, 0, 60, 60, 14, 0, 1, 1, 2000, 0, 32832, 2048, 0, 0, 7739, 1), -- -Unknown-
(186285, 0, 60, 60, 2732, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(186230, 0, 70, 70, 14, 0, 1, 1, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- -Unknown-
(191543, 0, 1, 1, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(184031, 0, 60, 60, 35, 0, 3.20000004768371582, 2, 2000, 0, 33570816, 2048, 16777217, 0, 0, 1), -- -Unknown-
(190974, 0, 60, 60, 14, 0, 1, 1, 2000, 0, 32768, 4196352, 1, 0, 0, 1), -- -Unknown-
(184042, 0, 60, 60, 35, 0, 3.20000004768371582, 2, 2000, 0, 33570816, 2048, 16777217, 0, 0, 1), -- -Unknown-
(191224, 0, 60, 60, 2732, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(186210, 0, 60, 60, 35, 3, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(191540, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 32768, 16779264, 0, 0, 0, 1), -- -Unknown-
(181310, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(182274, 28087, 70, 70, 35, 3, 1, 1.142857193946838378, 2000, 0, 0, 2099200, 0, 0, 0, 1), -- -Unknown-
(186283, 0, 60, 60, 14, 0, 1, 1, 2000, 0, 32832, 2097152, 1, 0, 7739, 1), -- -Unknown-
(192471, 0, 60, 60, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(192470, 0, 60, 60, 190, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- -Unknown-
(192469, 0, 60, 60, 190, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- -Unknown-
(191564, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(189914, 0, 60, 60, 14, 0, 1, 1, 2000, 0, 32832, 4196352, 1, 0, 0, 1), -- -Unknown-
(198654, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- -Unknown-
(198655, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(198663, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(198660, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- -Unknown-
(189488, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(192476, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 67110912, 16777216, 0, 0, 1), -- -Unknown-
(186355, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- -Unknown-
(191746, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- -Unknown-
(192482, 0, 60, 60, 2732, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(181364, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- -Unknown-
(186717, 0, 1, 1, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(185433, 0, 60, 60, 2732, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(186351, 0, 60, 60, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(184266, 0, 70, 70, 35, 1, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(190274, 0, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(188819, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 32832, 33570816, 0, 0, 0, 1), -- -Unknown-
(198435, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(181053, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(198429, 0, 60, 60, 35, 130, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(198431, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(183547, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(181054, 0, 60, 60, 35, 3, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(186864, 27760, 60, 60, 35, 4225, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(182251, 0, 60, 60, 35, 3, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(187611, 0, 60, 60, 2136, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(183960, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(181363, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(183549, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(192785, 0, 60, 60, 35, 65665, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(192410, 0, 60, 60, 2136, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(187689, 0, 60, 60, 2136, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(192454, 0, 60, 60, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 16779264, 0, 0, 0, 1), -- -Unknown-
(191526, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(191530, 0, 60, 60, 188, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(191523, 0, 60, 60, 2136, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(192488, 0, 1, 1, 31, 0, 1, 0.857142865657806396, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(191456, 0, 60, 60, 2673, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(182277, 0, 60, 60, 2732, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(186707, 0, 1, 1, 31, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(181840, 0, 60, 60, 2732, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(183551, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(197229, 0, 60, 60, 35, 0, 3.20000004768371582, 2, 2000, 0, 33554432, 67584, 16777217, 0, 7986, 1), -- -Unknown-
(196794, 0, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 33024, 2048, 0, 0, 0, 1), -- -Unknown-
(196831, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 33024, 34816, 0, 0, 0, 1), -- -Unknown-
(188146, 0, 60, 60, 35, 16777216, 1, 1.142857193946838378, 2000, 0, 537166336, 2049, 8192, 128, 0, 1), -- -Unknown-
(191445, 0, 60, 60, 35, 16777216, 1, 1.142857193946838378, 2000, 0, 537166336, 2049, 8192, 128, 0, 1), -- -Unknown-
(191444, 0, 60, 60, 35, 16777216, 1, 1.142857193946838378, 2000, 0, 537166336, 2049, 8192, 128, 0, 1), -- -Unknown-
(188197, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(188085, 0, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(188653, 0, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 32832, 33570816, 0, 0, 0, 1), -- -Unknown-
(185754, 0, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 33536, 33556480, 1048576, 0, 0, 1), -- -Unknown-
(187833, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(188652, 0, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 32832, 33570816, 524800, 0, 0, 1), -- -Unknown-
(187904, 0, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 32768, 33570816, 524800, 0, 0, 1), -- -Unknown-
(188201, 0, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(184214, 0, 70, 70, 35, 2, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(184163, 0, 60, 60, 35, 3, 1, 1.142857193946838378, 2000, 0, 32768, 0, 0, 0, 0, 1), -- -Unknown-
(184211, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(184213, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(182646, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(184210, 0, 60, 60, 35, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(182349, 27429, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 32768, 33554432, 1048576, 128, 0, 1), -- -Unknown-
(184212, 27509, 60, 60, 35, 3, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(192473, 0, 60, 60, 2952, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(181312, 0, 60, 60, 2952, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(188692, 0, 60, 60, 35, 2, 1, 1.142857193946838378, 2000, 0, 33280, 2048, 524289, 0, 0, 1), -- -Unknown-
(184165, 27506, 60, 60, 35, 1, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(187163, 0, 1, 1, 31, 0, 0.400000005960464477, 0.285714298486709594, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(191729, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- -Unknown-
(191521, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- -Unknown-
(191454, 0, 1, 1, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(191713, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- -Unknown-
(198413, 0, 60, 60, 31, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(198414, 0, 60, 60, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(188300, 0, 60, 60, 14, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(181311, 0, 60, 60, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(184166, 0, 60, 60, 35, 2, 1, 1.142857193946838378, 2000, 0, 33280, 2048, 1, 0, 0, 1), -- -Unknown-
(191599, 0, 1, 1, 31, 0, 1, 0.857142865657806396, 2000, 0, 512, 2048, 16777216, 0, 0, 1), -- -Unknown-
(194957, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(182007, 0, 60, 60, 16, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(191579, 0, 1, 1, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(182006, 0, 1, 1, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(182394, 0, 60, 60, 14, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(188292, 0, 60, 60, 190, 0, 1, 1.142857193946838378, 2000, 0, 537166592, 2049, 8193, 0, 0, 1), -- -Unknown-
(192561, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(182008, 0, 60, 60, 14, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1); -- -Unknown-


UPDATE `creature_template` SET `faction`=35, `npcflag`=16777216, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=198509; -- Berkeley
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=1732, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=198506; -- Krenzen
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=1732, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=198505; -- Blue

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=158637; -- Guiding Orb

UPDATE `creature_template` SET `dynamicflags`=128 WHERE `entry`=188151; -- Worker

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3340, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=198532; -- Zhakloskar

UPDATE `creature_template` SET `minlevel`=51, `maxlevel`=51, `BaseAttackTime`=1924, `unit_flags`=0 WHERE `entry`=1860; -- Voidwalker

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=1724 WHERE `entry`=165189; -- Generic Hunter Pet

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3340, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=198533; -- Nazurathar

UPDATE `creature_template` SET `minlevel`=52, `maxlevel`=52, `BaseAttackTime`=1762 WHERE `entry`=78116; -- Water Elemental
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=62822; -- Cousin Slowhands
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=62821; -- Mystic Birdhat

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=33556480, `unit_flags3`=1048576 WHERE `entry`=192354; -- Obsidian Warder
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=12, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=192505; -- SI:7 Agent

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=32520; -- Totally Generic Bunny (All Phase)
UPDATE `creature_template` SET `maxlevel`=11, `BaseAttackTime`=1914 WHERE `entry`=416; -- Imp


DELETE FROM `vehicle_template_accessory` WHERE (`seat_id`=0 AND `entry` IN (192280,184400,183842)) OR (`seat_id`=2 AND `entry` IN (192280,184400)) OR (`seat_id`=1 AND `entry` IN (192280,184400));
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(192280, 190531, 2, 0, '-Unknown- - -Unknown-', 5, 0), -- -Unknown- - -Unknown-
(192280, 190531, 1, 0, '-Unknown- - -Unknown-', 5, 0), -- -Unknown- - -Unknown-
(192280, 190531, 0, 0, '-Unknown- - -Unknown-', 5, 0), -- -Unknown- - -Unknown-
(184400, 190482, 2, 0, '-Unknown- - -Unknown-', 5, 0), -- -Unknown- - -Unknown-
(184400, 190482, 1, 0, '-Unknown- - -Unknown-', 5, 0), -- -Unknown- - -Unknown-
(184400, 184404, 0, 0, '-Unknown- - -Unknown-', 5, 0), -- -Unknown- - -Unknown-
(183842, 183829, 0, 0, '-Unknown- - -Unknown-', 5, 0); -- -Unknown- - -Unknown-



DELETE FROM `quest_visual_effect` WHERE (`Index`=0 AND `ID` IN (428614,432814,427495,432815,426789)) OR (`Index`=2 AND `ID`=426789) OR (`Index`=1 AND `ID`=426789);
INSERT INTO `quest_visual_effect` (`ID`, `Index`, `VisualEffect`, `VerifiedBuild`) VALUES
(428614, 0, 2099, 46689),
(432814, 0, 21388, 46689),
(427495, 0, 2099, 46689),
(432815, 0, 21388, 46689),
(426789, 2, 20763, 46689),
(426789, 1, 20762, 46689),
(426789, 0, 20760, 46689);


DELETE FROM `quest_reward_display_spell` WHERE (`Idx`=1 AND `QuestID`=72263) OR (`Idx`=0 AND `QuestID` IN (72263,65045,66324,65307));
INSERT INTO `quest_reward_display_spell` (`QuestID`, `Idx`, `SpellID`, `PlayerConditionID`, `VerifiedBuild`) VALUES
(72263, 1, 33391, 0, 46689),
(72263, 0, 33388, 0, 46689),
(65045, 0, 367980, 0, 46689),
(66324, 0, 367909, 96846, 46689),
(65307, 0, 367979, 96845, 46689);


DELETE FROM `creature_template_model` WHERE (`Idx`=0 AND `CreatureID` IN (198551,192532,192531,198531,192974,189322,192975,192971,192535,189324,192976,189325,192545,182609,192309,192139,189540,192312,192310,184766,182611,192140,191885,182610,192311,192221,192308,184765,191863,191780,192697,191685,191586,191366,192280,182601,191500,184661,182608,192273,184658,192232,191887,182441,191423,191675,191425,191302,184620,182492,184400,190482,184404,190531,186145,190508,193054,184308,190529,190480,184420,182488,181377,186703,186149,181427,184267,197489,197488,197487,197486,197484,197483,197482,197481,185419,183550,182258,181597,181276,181055,184269,193824,190236,190235,183794,182297,189627,184375,184355,181056,181494,187131,182280,191763,183842,183829,182275,186218,197908,192441,192440,181831,181373,190230,186285,186230,191543,184031,190974,191224,186210,184042,191540,181310,186283,182274,192471,192470,198663,198655,198654,192469,191564,189914,198660,189488,192476,191746,186355,192482,181364,186717,186351,185433,190274,188819,184266,198435,198431,198429,181053,187611,186864,183960,183547,182251,181363,181054,192785,183549,192410,187689,192454,191530,191526,191523,192488,191456,186707,182277,181840,183551,197229,196831,196794,188146,191445,191444,188197,188085,188653,185754,187833,188652,187904,188201,184214,184213,184211,184163,182646,184210,182349,184212,192473,181312,188692,184165,187163,191729,191521,191454,191713,198413,198414,182394,184166,181311,191599,191579,194957,188300,188292,182008,182007,192561,182006)) OR (`Idx`=1 AND `CreatureID` IN (189322,189324,189325,192309,192312,192310,184766,192311,192221,192308,184765,191863,192697,191685,191366,192280,182601,191500,192273,191423,191425,184620,186145,190529,184420,186149,185419,183550,181276,181055,190236,183794,182297,184375,184355,181056,181494,187131,183842,186218,197908,192440,181373,184031,186210,184042,191540,192471,192470,198663,198655,198654,192469,198660,189488,181364,190274,181053,186864,183960,183547,182251,192785,183549,192454,191530,191526,191523,192488,191456,183551,197229,188085,185754,187904,188201,182349,191521,198413,198414,191599,191579,188292,192561)) OR (`Idx`=3 AND `CreatureID` IN (192309,192311,192221,192273,191423,191425,190529,183550,183794,197908,192440,191540,192470,198663,198655,198654,192469,198660,189488,181364,183547,183549,192454,191530,191526,183551,185754,188201,182349,191599,192561)) OR (`Idx`=2 AND `CreatureID` IN (192309,192311,192221,192273,191423,191425,190529,186149,183550,183794,197908,192440,181373,191540,192471,192470,198663,198655,198654,192469,198660,189488,181364,183547,183549,192454,191530,191526,191523,192488,191456,183551,185754,188201,182349,191599,192561)) OR (`Idx`=4 AND `CreatureID` IN (192440,191540,198654,192469,198660,189488,181364,192454,191530,191526,192561)) OR (`Idx`=13 AND `CreatureID` IN (191540,189488,192454,191526)) OR (`Idx`=12 AND `CreatureID` IN (191540,189488,192454,191526)) OR (`Idx`=11 AND `CreatureID` IN (191540,189488,192454,191526)) OR (`Idx`=10 AND `CreatureID` IN (191540,189488,192454,191526)) OR (`Idx`=9 AND `CreatureID` IN (191540,189488,192454,191526)) OR (`Idx`=8 AND `CreatureID` IN (191540,189488,192454,191526,192561)) OR (`Idx`=7 AND `CreatureID` IN (191540,189488,192454,191526,192561)) OR (`Idx`=6 AND `CreatureID` IN (191540,189488,192454,191526,192561)) OR (`Idx`=5 AND `CreatureID` IN (191540,189488,192454,191526,192561));
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(198551, 0, 110189, 1, 1, 46689), -- -Unknown-
(192532, 0, 107898, 1, 1, 46689), -- -Unknown-
(192531, 0, 107892, 1, 1, 46689), -- -Unknown-
(198531, 0, 110175, 1, 1, 46689), -- -Unknown-
(192974, 0, 104843, 1, 1, 46689), -- -Unknown-
(189322, 1, 107945, 1, 0, 46689), -- -Unknown-
(189322, 0, 107146, 1, 1, 46689), -- -Unknown-
(192975, 0, 104844, 1, 1, 46689), -- -Unknown-
(192971, 0, 99391, 1, 1, 46689), -- -Unknown-
(192535, 0, 3167, 1, 1, 46689), -- -Unknown-
(189324, 1, 107028, 1, 0, 46689), -- -Unknown-
(189324, 0, 102032, 1, 1, 46689), -- -Unknown-
(192976, 0, 104846, 1, 1, 46689), -- -Unknown-
(189325, 1, 102176, 1, 0, 46689), -- -Unknown-
(189325, 0, 102175, 1, 1, 46689), -- -Unknown-
(192545, 0, 37310, 1, 50, 46689), -- -Unknown-
(182609, 0, 102032, 1, 1, 46689), -- -Unknown-
(192309, 3, 104833, 1, 1, 46689), -- -Unknown-
(192309, 2, 104831, 1, 1, 46689), -- -Unknown-
(192309, 1, 104726, 1, 1, 46689), -- -Unknown-
(192309, 0, 104727, 1, 1, 46689), -- -Unknown-
(192139, 0, 102032, 1, 1, 46689), -- -Unknown-
(189540, 0, 105959, 1, 1, 46689), -- -Unknown-
(192312, 1, 104821, 1, 1, 46689), -- -Unknown-
(192312, 0, 102030, 1, 0, 46689), -- -Unknown-
(192310, 1, 102176, 1, 0, 46689), -- -Unknown-
(192310, 0, 102175, 1, 1, 46689), -- -Unknown-
(184766, 1, 107945, 1, 1, 46689), -- -Unknown-
(184766, 0, 107146, 1, 0, 46689), -- -Unknown-
(182611, 0, 104904, 1, 1, 46689), -- -Unknown-
(192140, 0, 102033, 1, 1, 46689), -- -Unknown-
(191885, 0, 104555, 1, 1, 46689), -- -Unknown-
(182610, 0, 104555, 1, 1, 46689), -- -Unknown-
(192311, 3, 104842, 1, 1, 46689), -- -Unknown-
(192311, 2, 104841, 1, 1, 46689), -- -Unknown-
(192311, 1, 104840, 1, 1, 46689), -- -Unknown-
(192311, 0, 104839, 1, 1, 46689), -- -Unknown-
(192221, 3, 104836, 1, 1, 46689), -- -Unknown-
(192221, 2, 104836, 1, 1, 46689), -- -Unknown-
(192221, 1, 104835, 1, 1, 46689), -- -Unknown-
(192221, 0, 104834, 1, 1, 46689), -- -Unknown-
(192308, 1, 105788, 1, 1, 46689), -- -Unknown-
(192308, 0, 105787, 1, 1, 46689), -- -Unknown-
(184765, 1, 105532, 1, 1, 46689), -- -Unknown-
(184765, 0, 63690, 1, 0, 46689), -- -Unknown-
(191863, 1, 107945, 1, 1, 46689), -- -Unknown-
(191863, 0, 107146, 1, 0, 46689), -- -Unknown-
(191780, 0, 102031, 1, 1, 46689), -- -Unknown-
(192697, 1, 105532, 1, 1, 46689), -- -Unknown-
(192697, 0, 63690, 1, 0, 46689), -- -Unknown-
(191685, 1, 105532, 1, 1, 46689), -- -Unknown-
(191685, 0, 63690, 1, 0, 46689), -- -Unknown-
(191586, 0, 104293, 1, 1, 46689), -- -Unknown-
(191366, 1, 107085, 1, 0, 46689), -- -Unknown-
(191366, 0, 104904, 1, 1, 46689), -- -Unknown-
(192280, 1, 11686, 1, 1, 46689), -- -Unknown-
(192280, 0, 1126, 1, 0, 46689), -- -Unknown-
(182601, 1, 107945, 1, 1, 46689), -- -Unknown-
(182601, 0, 107146, 1, 0, 46689), -- -Unknown-
(191500, 1, 101201, 6, 1, 46689), -- -Unknown-
(191500, 0, 107145, 8, 0, 46689), -- -Unknown-
(184661, 0, 102569, 1, 1, 46689), -- -Unknown-
(182608, 0, 102031, 1, 1, 46689), -- -Unknown-
(192273, 3, 104846, 1, 1, 46689), -- -Unknown-
(192273, 2, 104845, 1, 1, 46689), -- -Unknown-
(192273, 1, 104844, 1, 1, 46689), -- -Unknown-
(192273, 0, 104843, 1, 1, 46689), -- -Unknown-
(184658, 0, 101201, 6, 1, 46689), -- -Unknown-
(192232, 0, 107754, 1, 1, 46689), -- -Unknown-
(191887, 0, 105198, 2, 1, 46689), -- -Unknown-
(182441, 0, 102031, 1, 1, 46689), -- -Unknown-
(191423, 3, 104837, 1, 1, 46689), -- -Unknown-
(191423, 2, 104836, 1, 1, 46689), -- -Unknown-
(191423, 1, 104835, 1, 1, 46689), -- -Unknown-
(191423, 0, 104834, 1, 1, 46689), -- -Unknown-
(191675, 0, 104808, 1.10000002384185791, 1, 46689), -- -Unknown-
(191425, 3, 104831, 1, 1, 46689), -- -Unknown-
(191425, 2, 104727, 1, 1, 46689), -- -Unknown-
(191425, 1, 104833, 1, 1, 46689), -- -Unknown-
(191425, 0, 104726, 1, 1, 46689), -- -Unknown-
(191302, 0, 106435, 1, 1, 46689), -- -Unknown-
(184620, 1, 11686, 1, 1, 46689), -- -Unknown-
(184620, 0, 1126, 1, 0, 46689), -- -Unknown-
(182492, 0, 103255, 1, 1, 46689), -- -Unknown-
(184400, 0, 105198, 1, 1, 46689), -- -Unknown-
(190482, 0, 104808, 1, 1, 46689), -- -Unknown-
(184404, 0, 106883, 1, 1, 46689), -- -Unknown-
(190531, 0, 102569, 1, 1, 46689), -- -Unknown-
(186145, 1, 105532, 1, 1, 46689), -- -Unknown-
(186145, 0, 63690, 1, 0, 46689), -- -Unknown-
(190508, 0, 107102, 1, 1, 46689), -- -Unknown-
(193054, 0, 105198, 1.5, 1, 46689), -- -Unknown-
(184308, 0, 104904, 1, 1, 46689), -- -Unknown-
(190529, 3, 104837, 1, 1, 46689), -- -Unknown-
(190529, 2, 104836, 1, 1, 46689), -- -Unknown-
(190529, 1, 104835, 1, 1, 46689), -- -Unknown-
(190529, 0, 104834, 1, 1, 46689), -- -Unknown-
(190480, 0, 104293, 1, 1, 46689), -- -Unknown-
(184420, 1, 105788, 1, 1, 46689), -- -Unknown-
(184420, 0, 105787, 1, 1, 46689), -- -Unknown-
(182488, 0, 105198, 2, 1, 46689), -- -Unknown-
(181377, 0, 104808, 1, 1, 46689), -- -Unknown-
(186703, 0, 106882, 1, 1, 46689), -- -Unknown-
(186149, 2, 105865, 1, 1, 46689), -- -Unknown-
(186149, 1, 105864, 1, 1, 46689), -- -Unknown-
(186149, 0, 105198, 1, 1, 46689), -- -Unknown-
(181427, 0, 108009, 1, 1, 46689), -- -Unknown-
(184267, 0, 104904, 1, 1, 46689), -- -Unknown-
(197489, 0, 104846, 1, 1, 46689), -- -Unknown-
(197488, 0, 104845, 1, 1, 46689), -- -Unknown-
(197487, 0, 104844, 1, 1, 46689), -- -Unknown-
(197486, 0, 104843, 1, 1, 46689), -- -Unknown-
(197484, 0, 104842, 1, 1, 46689), -- -Unknown-
(197483, 0, 104841, 1, 1, 46689), -- -Unknown-
(197482, 0, 104840, 1, 1, 46689), -- -Unknown-
(197481, 0, 104839, 1, 1, 46689), -- -Unknown-
(185419, 1, 105532, 1, 1, 46689), -- -Unknown-
(185419, 0, 63690, 1, 0, 46689), -- -Unknown-
(183550, 3, 104833, 1, 1, 46689), -- -Unknown-
(183550, 2, 104831, 1, 1, 46689), -- -Unknown-
(183550, 1, 104726, 1, 1, 46689), -- -Unknown-
(183550, 0, 104727, 1, 1, 46689), -- -Unknown-
(182258, 0, 102031, 1, 1, 46689), -- -Unknown-
(181597, 0, 102032, 1, 1, 46689), -- -Unknown-
(181276, 1, 107945, 1, 1, 46689), -- -Unknown-
(181276, 0, 107146, 1, 0, 46689), -- -Unknown-
(181055, 1, 107101, 1, 0, 46689), -- -Unknown-
(181055, 0, 102033, 1, 1, 46689), -- -Unknown-
(184269, 0, 102033, 1, 1, 46689), -- -Unknown-
(193824, 0, 107315, 4, 1, 46689), -- -Unknown-
(190236, 1, 102176, 1, 0, 46689), -- -Unknown-
(190236, 0, 102175, 1, 1, 46689), -- -Unknown-
(190235, 0, 102032, 1, 1, 46689), -- -Unknown-
(183794, 3, 104831, 1, 1, 46689), -- -Unknown-
(183794, 2, 104727, 1, 1, 46689), -- -Unknown-
(183794, 1, 104833, 1, 1, 46689), -- -Unknown-
(183794, 0, 104726, 1, 1, 46689), -- -Unknown-
(182297, 1, 107085, 1, 0, 46689), -- -Unknown-
(182297, 0, 104904, 1, 1, 46689), -- -Unknown-
(189627, 0, 105960, 0.5, 1, 46689), -- -Unknown-
(184375, 1, 104846, 1, 1, 46689), -- -Unknown-
(184375, 0, 104845, 1, 1, 46689), -- -Unknown-
(184355, 1, 104844, 1, 1, 46689), -- -Unknown-
(184355, 0, 104843, 1, 1, 46689), -- -Unknown-
(181056, 1, 107028, 1, 0, 46689), -- -Unknown-
(181056, 0, 102032, 1, 1, 46689), -- -Unknown-
(181494, 1, 102176, 1, 0, 46689), -- -Unknown-
(181494, 0, 102175, 1, 1, 46689), -- -Unknown-
(187131, 1, 105788, 1, 1, 46689), -- -Unknown-
(187131, 0, 105787, 1, 1, 46689), -- -Unknown-
(182280, 0, 106940, 2, 1, 46689), -- -Unknown-
(191763, 0, 104133, 1, 1, 46689), -- -Unknown-
(183842, 1, 11686, 1, 1, 46689), -- -Unknown-
(183842, 0, 1126, 1, 0, 46689), -- -Unknown-
(183829, 0, 109404, 1, 1, 46689), -- -Unknown-
(182275, 0, 102032, 1, 1, 46689), -- -Unknown-
(186218, 1, 102176, 1, 0, 46689), -- -Unknown-
(186218, 0, 102175, 1, 1, 46689), -- -Unknown-
(197908, 3, 104831, 1, 1, 46689), -- -Unknown-
(197908, 2, 104727, 1, 1, 46689), -- -Unknown-
(197908, 1, 104833, 1, 1, 46689), -- -Unknown-
(197908, 0, 104726, 1, 1, 46689), -- -Unknown-
(192441, 0, 107977, 1, 1, 46689), -- -Unknown-
(192440, 4, 103841, 1, 1, 46689), -- -Unknown-
(192440, 3, 103842, 1, 1, 46689), -- -Unknown-
(192440, 2, 103843, 1, 1, 46689), -- -Unknown-
(192440, 1, 103844, 1, 1, 46689), -- -Unknown-
(192440, 0, 103845, 1, 1, 46689), -- -Unknown-
(181831, 0, 102561, 1, 1, 46689), -- -Unknown-
(181373, 2, 104134, 1, 1, 46689), -- -Unknown-
(181373, 1, 104135, 1, 1, 46689), -- -Unknown-
(181373, 0, 104133, 1, 1, 46689), -- -Unknown-
(190230, 0, 107770, 2, 1, 46689), -- -Unknown-
(186285, 0, 106883, 1, 1, 46689), -- -Unknown-
(186230, 0, 105198, 2, 1, 46689), -- -Unknown-
(191543, 0, 100271, 1, 1, 46689), -- -Unknown-
(184031, 1, 11686, 1, 1, 46689), -- -Unknown-
(184031, 0, 1126, 1, 0, 46689), -- -Unknown-
(190974, 0, 107315, 4, 1, 46689), -- -Unknown-
(191224, 0, 106883, 1, 1, 46689), -- -Unknown-
(186210, 1, 102176, 1, 0, 46689), -- -Unknown-
(186210, 0, 102175, 1, 1, 46689), -- -Unknown-
(184042, 1, 11686, 1, 1, 46689), -- -Unknown-
(184042, 0, 1126, 1, 0, 46689), -- -Unknown-
(191540, 13, 103854, 1, 1, 46689), -- -Unknown-
(191540, 12, 45880, 1, 1, 46689), -- -Unknown-
(191540, 11, 103853, 1, 1, 46689), -- -Unknown-
(191540, 10, 32791, 1, 1, 46689), -- -Unknown-
(191540, 9, 103852, 1, 1, 46689), -- -Unknown-
(191540, 8, 88000, 1, 1, 46689), -- -Unknown-
(191540, 7, 103848, 1, 1, 46689), -- -Unknown-
(191540, 6, 103849, 1, 1, 46689), -- -Unknown-
(191540, 5, 103850, 1, 1, 46689), -- -Unknown-
(191540, 4, 103851, 1, 1, 46689), -- -Unknown-
(191540, 3, 103846, 1, 1, 46689), -- -Unknown-
(191540, 2, 103847, 1, 1, 46689), -- -Unknown-
(191540, 1, 32789, 1, 1, 46689), -- -Unknown-
(191540, 0, 85797, 1, 1, 46689), -- -Unknown-
(181310, 0, 104808, 1.10000002384185791, 1, 46689), -- -Unknown-
(186283, 0, 107561, 1, 1, 46689), -- -Unknown-
(182274, 0, 102032, 1, 1, 46689), -- -Unknown-
(192471, 2, 103963, 1.5, 1, 46689), -- -Unknown-
(192471, 1, 103964, 1.5, 1, 46689), -- -Unknown-
(192471, 0, 103965, 1.5, 1, 46689), -- -Unknown-
(192470, 3, 103947, 1, 1, 46689), -- -Unknown-
(192470, 2, 103948, 1, 1, 46689), -- -Unknown-
(192470, 1, 103949, 1, 1, 46689), -- -Unknown-
(192470, 0, 103946, 1, 1, 46689), -- -Unknown-
(198663, 3, 104010, 1, 1, 46689), -- -Unknown-
(198663, 2, 104011, 1, 1, 46689), -- -Unknown-
(198663, 1, 104012, 1, 1, 46689), -- -Unknown-
(198663, 0, 104009, 1, 1, 46689), -- -Unknown-
(198655, 3, 103930, 1, 1, 46689), -- -Unknown-
(198655, 2, 103931, 1, 1, 46689), -- -Unknown-
(198655, 1, 103932, 1, 1, 46689), -- -Unknown-
(198655, 0, 103929, 1, 1, 46689), -- -Unknown-
(198654, 4, 103971, 1, 1, 46689), -- -Unknown-
(198654, 3, 103972, 1, 1, 46689), -- -Unknown-
(198654, 2, 103973, 1, 1, 46689), -- -Unknown-
(198654, 1, 103974, 1, 1, 46689), -- -Unknown-
(198654, 0, 103970, 1, 1, 46689), -- -Unknown-
(192469, 4, 103942, 1, 1, 46689), -- -Unknown-
(192469, 3, 103943, 1, 1, 46689), -- -Unknown-
(192469, 2, 103944, 1, 1, 46689), -- -Unknown-
(192469, 1, 103945, 1, 1, 46689), -- -Unknown-
(192469, 0, 103941, 1, 1, 46689), -- -Unknown-
(191564, 0, 103904, 1, 1, 46689), -- -Unknown-
(189914, 0, 106356, 3, 1, 46689), -- -Unknown-
(198660, 4, 104497, 1, 1, 46689), -- -Unknown-
(198660, 3, 104498, 1, 1, 46689), -- -Unknown-
(198660, 2, 104499, 1, 1, 46689), -- -Unknown-
(198660, 1, 104500, 1, 1, 46689), -- -Unknown-
(198660, 0, 104501, 1, 1, 46689), -- -Unknown-
(189488, 13, 103833, 1, 1, 46689), -- -Unknown-
(189488, 12, 80919, 1, 1, 46689), -- -Unknown-
(189488, 11, 22468, 1, 1, 46689), -- -Unknown-
(189488, 10, 82113, 1, 1, 46689), -- -Unknown-
(189488, 9, 103832, 1, 1, 46689), -- -Unknown-
(189488, 8, 78847, 1, 1, 46689), -- -Unknown-
(189488, 7, 78846, 1, 1, 46689), -- -Unknown-
(189488, 6, 14932, 1, 1, 46689), -- -Unknown-
(189488, 5, 78835, 1, 1, 46689), -- -Unknown-
(189488, 4, 22469, 1, 1, 46689), -- -Unknown-
(189488, 3, 78834, 1, 1, 46689), -- -Unknown-
(189488, 2, 5379, 1, 1, 46689), -- -Unknown-
(189488, 1, 28501, 1, 1, 46689), -- -Unknown-
(189488, 0, 78833, 1, 1, 46689), -- -Unknown-
(192476, 0, 107864, 1, 1, 46689), -- -Unknown-
(191746, 0, 107479, 1.5, 1, 46689), -- -Unknown-
(186355, 0, 103889, 1, 1, 46689); -- -Unknown-

INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(192482, 0, 109439, 1, 1, 46689), -- -Unknown-
(181364, 4, 104071, 1, 1, 46689), -- -Unknown-
(181364, 3, 104070, 1, 1, 46689), -- -Unknown-
(181364, 2, 104069, 1, 1, 46689), -- -Unknown-
(181364, 1, 104068, 1, 1, 46689), -- -Unknown-
(181364, 0, 104067, 1, 1, 46689), -- -Unknown-
(186717, 0, 100951, 1, 1, 46689), -- -Unknown-
(186351, 0, 103565, 1, 1, 46689), -- -Unknown-
(185433, 0, 109437, 1, 1, 46689), -- -Unknown-
(190274, 1, 105788, 1, 1, 46689), -- -Unknown-
(190274, 0, 105787, 1, 1, 46689), -- -Unknown-
(188819, 0, 104293, 1, 1, 46689), -- -Unknown-
(184266, 0, 104555, 1, 1, 46689), -- -Unknown-
(198435, 0, 110115, 1, 1, 46689), -- -Unknown-
(198431, 0, 110112, 1, 1, 46689), -- -Unknown-
(198429, 0, 110066, 1, 1, 46689), -- -Unknown-
(181053, 1, 104821, 1, 1, 46689), -- -Unknown-
(181053, 0, 102030, 1, 0, 46689), -- -Unknown-
(187611, 0, 105562, 0.75, 1, 46689), -- -Unknown-
(186864, 1, 104619, 1, 1, 46689), -- -Unknown-
(186864, 0, 109197, 1, 0, 46689), -- -Unknown-
(183960, 1, 102176, 1, 0, 46689), -- -Unknown-
(183960, 0, 102175, 1, 1, 46689), -- -Unknown-
(183547, 3, 104846, 1, 1, 46689), -- -Unknown-
(183547, 2, 104845, 1, 1, 46689), -- -Unknown-
(183547, 1, 104844, 1, 1, 46689), -- -Unknown-
(183547, 0, 104843, 1, 1, 46689), -- -Unknown-
(182251, 1, 107028, 1, 0, 46689), -- -Unknown-
(182251, 0, 102032, 1, 1, 46689), -- -Unknown-
(181363, 0, 104074, 1, 1, 46689), -- -Unknown-
(181054, 0, 102031, 1, 1, 46689), -- -Unknown-
(192785, 1, 109181, 1, 1, 46689), -- -Unknown-
(192785, 0, 109180, 1, 0, 46689), -- -Unknown-
(183549, 3, 104842, 1, 1, 46689), -- -Unknown-
(183549, 2, 104841, 1, 1, 46689), -- -Unknown-
(183549, 1, 104840, 1, 1, 46689), -- -Unknown-
(183549, 0, 104839, 1, 1, 46689), -- -Unknown-
(192410, 0, 105560, 1.299999952316284179, 1, 46689), -- -Unknown-
(187689, 0, 110397, 1, 1, 46689), -- -Unknown-
(192454, 13, 103876, 1, 1, 46689), -- -Unknown-
(192454, 12, 103875, 1, 1, 46689), -- -Unknown-
(192454, 11, 103874, 1, 1, 46689), -- -Unknown-
(192454, 10, 103873, 1, 1, 46689), -- -Unknown-
(192454, 9, 103872, 1, 1, 46689), -- -Unknown-
(192454, 8, 103871, 1, 1, 46689), -- -Unknown-
(192454, 7, 103870, 1, 1, 46689), -- -Unknown-
(192454, 6, 103869, 1, 1, 46689), -- -Unknown-
(192454, 5, 103868, 1, 1, 46689), -- -Unknown-
(192454, 4, 103867, 1, 1, 46689), -- -Unknown-
(192454, 3, 103866, 1, 1, 46689), -- -Unknown-
(192454, 2, 103865, 1, 1, 46689), -- -Unknown-
(192454, 1, 103864, 1, 1, 46689), -- -Unknown-
(192454, 0, 103863, 1, 1, 46689), -- -Unknown-
(191530, 4, 110293, 1, 1, 46689), -- -Unknown-
(191530, 3, 110294, 1, 1, 46689), -- -Unknown-
(191530, 2, 110295, 1, 1, 46689), -- -Unknown-
(191530, 1, 110296, 1, 1, 46689), -- -Unknown-
(191530, 0, 110297, 1, 1, 46689), -- -Unknown-
(191526, 13, 103833, 1, 1, 46689), -- -Unknown-
(191526, 12, 80919, 1, 1, 46689), -- -Unknown-
(191526, 11, 22468, 1, 1, 46689), -- -Unknown-
(191526, 10, 82113, 1, 1, 46689), -- -Unknown-
(191526, 9, 103832, 1, 1, 46689), -- -Unknown-
(191526, 8, 78847, 1, 1, 46689), -- -Unknown-
(191526, 7, 78846, 1, 1, 46689), -- -Unknown-
(191526, 6, 14932, 1, 1, 46689), -- -Unknown-
(191526, 5, 78835, 1, 1, 46689), -- -Unknown-
(191526, 4, 22469, 1, 1, 46689), -- -Unknown-
(191526, 3, 78834, 1, 1, 46689), -- -Unknown-
(191526, 2, 5379, 1, 1, 46689), -- -Unknown-
(191526, 1, 28501, 1, 1, 46689), -- -Unknown-
(191526, 0, 78833, 1, 1, 46689), -- -Unknown-
(191523, 2, 103526, 1, 1, 46689), -- -Unknown-
(191523, 1, 103527, 1, 1, 46689), -- -Unknown-
(191523, 0, 103523, 1, 1, 46689), -- -Unknown-
(192488, 2, 45880, 1, 1, 46689), -- -Unknown-
(192488, 1, 32790, 1, 1, 46689), -- -Unknown-
(192488, 0, 32789, 1, 1, 46689), -- -Unknown-
(191456, 2, 101432, 1, 0.100000001490116119, 46689), -- -Unknown-
(191456, 1, 101431, 1, 1, 46689), -- -Unknown-
(191456, 0, 101430, 1, 1, 46689), -- -Unknown-
(186707, 0, 100353, 1, 1, 46689), -- -Unknown-
(182277, 0, 106883, 1, 1, 46689), -- -Unknown-
(181840, 0, 102574, 1, 1, 46689), -- -Unknown-
(183551, 3, 104836, 1, 1, 46689), -- -Unknown-
(183551, 2, 104836, 1, 1, 46689), -- -Unknown-
(183551, 1, 104835, 1, 1, 46689), -- -Unknown-
(183551, 0, 104834, 1, 1, 46689), -- -Unknown-
(197229, 1, 11686, 1, 1, 46689), -- -Unknown-
(197229, 0, 1126, 1, 0, 46689), -- -Unknown-
(196831, 0, 105104, 1, 1, 46689), -- -Unknown-
(196794, 0, 104861, 1, 1, 46689), -- -Unknown-
(188146, 0, 104834, 1, 1, 46689), -- -Unknown-
(191445, 0, 104834, 1, 1, 46689), -- -Unknown-
(191444, 0, 104834, 1, 1, 46689), -- -Unknown-
(188197, 0, 105559, 8, 1, 46689), -- -Unknown-
(188085, 1, 105788, 1, 1, 46689), -- -Unknown-
(188085, 0, 105787, 1, 1, 46689), -- -Unknown-
(188653, 0, 104293, 1, 1, 46689), -- -Unknown-
(185754, 3, 104836, 1, 1, 46689), -- -Unknown-
(185754, 2, 104836, 1, 1, 46689), -- -Unknown-
(185754, 1, 104835, 1, 1, 46689), -- -Unknown-
(185754, 0, 104834, 1, 1, 46689), -- -Unknown-
(187833, 0, 105559, 1, 1, 46689), -- -Unknown-
(188652, 0, 104293, 1, 1, 46689), -- -Unknown-
(187904, 1, 105788, 1, 1, 46689), -- -Unknown-
(187904, 0, 105787, 1, 1, 46689), -- -Unknown-
(188201, 3, 104836, 1, 1, 46689), -- -Unknown-
(188201, 2, 104836, 1, 1, 46689), -- -Unknown-
(188201, 1, 104835, 1, 1, 46689), -- -Unknown-
(188201, 0, 104834, 1, 1, 46689), -- -Unknown-
(184214, 0, 102033, 1, 1, 46689), -- -Unknown-
(184213, 0, 104919, 1, 1, 46689), -- -Unknown-
(184211, 0, 102852, 1, 1, 46689), -- -Unknown-
(184163, 0, 104555, 1, 1, 46689), -- -Unknown-
(182646, 0, 103904, 1, 1, 46689), -- -Unknown-
(184210, 0, 104917, 1, 1, 46689), -- -Unknown-
(182349, 3, 104837, 1, 1, 46689), -- -Unknown-
(182349, 2, 104836, 1, 1, 46689), -- -Unknown-
(182349, 1, 104835, 1, 1, 46689), -- -Unknown-
(182349, 0, 104834, 1, 1, 46689), -- -Unknown-
(184212, 0, 104918, 1, 1, 46689), -- -Unknown-
(192473, 0, 102065, 1.75, 1, 46689), -- -Unknown-
(181312, 0, 102064, 1, 1, 46689), -- -Unknown-
(188692, 0, 104919, 0.75, 1, 46689), -- -Unknown-
(184165, 0, 102852, 1, 1, 46689), -- -Unknown-
(187163, 0, 38585, 1, 1, 46689), -- -Unknown-
(191729, 0, 104703, 1.5, 1, 46689), -- -Unknown-
(191521, 1, 36603, 1, 1, 46689), -- -Unknown-
(191521, 0, 36605, 1, 1, 46689), -- -Unknown-
(191454, 0, 102067, 1, 1, 46689), -- -Unknown-
(191713, 0, 105190, 1.20000004768371582, 1, 46689), -- -Unknown-
(198413, 1, 106706, 1, 1, 46689), -- -Unknown-
(198413, 0, 106707, 1, 1, 46689), -- -Unknown-
(198414, 1, 104648, 1.10000002384185791, 1, 46689), -- -Unknown-
(198414, 0, 104648, 0.899999976158142089, 1, 46689), -- -Unknown-
(182394, 0, 105185, 1, 1, 46689), -- -Unknown-
(184166, 0, 104919, 0.75, 1, 46689), -- -Unknown-
(181311, 0, 100537, 1, 1, 46689), -- -Unknown-
(191599, 3, 15468, 1, 1, 46689), -- -Unknown-
(191599, 2, 8971, 1, 1, 46689), -- -Unknown-
(191599, 1, 15467, 1, 1, 46689), -- -Unknown-
(191599, 0, 7511, 1, 1, 46689), -- -Unknown-
(191579, 1, 100358, 1, 1, 46689), -- -Unknown-
(191579, 0, 100271, 1, 1, 46689), -- -Unknown-
(194957, 0, 110395, 1, 1, 46689), -- -Unknown-
(188300, 0, 104135, 1, 1, 46689), -- -Unknown-
(188292, 1, 100698, 1, 0.75, 46689), -- -Unknown-
(188292, 0, 100699, 1, 1, 46689), -- -Unknown-
(182008, 0, 105188, 1, 1, 46689), -- -Unknown-
(182007, 0, 105562, 1, 1, 46689), -- -Unknown-
(192561, 8, 104515, 1, 1, 46689), -- -Unknown-
(192561, 7, 104516, 1, 1, 46689), -- -Unknown-
(192561, 6, 104517, 1, 1, 46689), -- -Unknown-
(192561, 5, 104518, 1, 1, 46689), -- -Unknown-
(192561, 4, 104519, 1, 1, 46689), -- -Unknown-
(192561, 3, 104520, 1, 1, 46689), -- -Unknown-
(192561, 2, 104521, 1, 1, 46689), -- -Unknown-
(192561, 1, 104522, 1, 1, 46689), -- -Unknown-
(192561, 0, 104523, 1, 1, 46689), -- -Unknown-
(182006, 0, 100689, 0.200000002980232238, 1, 46689); -- -Unknown-

UPDATE `creature_template_model` SET `VerifiedBuild`=46689 WHERE (`Idx`=0 AND `CreatureID` IN (14423,71526,188151,61836,61834,1289,1287,61081,3518,33530,1286,50669,6174,1432,1285,1275,279,2457,2456,2455,483,49877,4981,43769,43819,43820,162935,51440,48632,46602,43822,43692,5193,4974,482,61896,61895,14721,14394,65153,186180,4959,17804,883,61080,61165)) OR (`Idx`=1 AND `CreatureID` IN (162935,186180,61080)) OR (`Idx`=3 AND `CreatureID`=186180) OR (`Idx`=2 AND `CreatureID`=186180);

DELETE FROM `creature_questitem` WHERE (`Idx`=0 AND `CreatureEntry` IN (187611,188146,191445,191444,182394,194957,182007));
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(187611, 0, 187948, 46689), -- -Unknown-
(188146, 0, 191730, 46689), -- -Unknown-
(191445, 0, 191732, 46689), -- -Unknown-
(191444, 0, 191731, 46689), -- -Unknown-
(182394, 0, 187948, 46689), -- -Unknown-
(194957, 0, 187948, 46689), -- -Unknown-
(182007, 0, 187948, 46689); -- -Unknown-


DELETE FROM `gameobject_questitem` WHERE (`GameObjectEntry`=376530 AND `Idx`=0);
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(376530, 0, 191733, 46689); -- Report: Infestation


DELETE FROM `playerchoice_response` WHERE (`ChoiceId`=688 AND `ResponseId`=3352 AND `Index`=0);
REPLACE INTO `playerchoice_response` (`ChoiceId`, `ResponseId`, `ResponseIdentifier`, `Index`, `ChoiceArtFileId`, `Flags`, `WidgetSetId`, `UiTextureAtlasElementID`, `SoundKitId`, `GroupId`, `Header`, `Subheader`, `ButtonTooltip`, `Answer`, `Description`, `Confirmation`, `RewardQuestID`, `UiTextureKitID`, `VerifiedBuild`) VALUES
(688, 3352, 397, 0, 4623351, 0, 0, 0, 0, 0, 'Devastation', '', '', 'Devastation', 'Devastation is a specialization in magic and tactics that involve rapid deployment, mid-ranged area of effect damage, and unleashing the power of the Red and Blue dragonflights.\n\nWith this specialization, an Evoker can rain fire down from the sky on swarms of opponents and manuever throughout the battlefield.\n\nChoosing Devastation grants |cFFFF0000|Hspell:357211|h[Pyre]|h|r as well as |cFFFF0000|Hspell:362980|h[Mastery: Giantkiller]|h|r.', '', 0, 0, 46689);


DELETE FROM `page_text` WHERE `ID`=8635;
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`, `PlayerConditionID`, `Flags`, `VerifiedBuild`) VALUES
(8635, 'The Healing Wings\n\nThis weyrn shall be the face and symbol for hope among all those who would call the Aspects their allies.\n\nThe Healing Wings are charged with mastering the arts of Preservation and healing. Wield the powers of time and the Emerald Dream to return those who are wounded to their full might. Where there are injured, the Healing Wings will be there to tend them. \n\nLed by Scalecommander Viridia, the Healing Wings shall embody the resilience and fortitude of the Earth-Warder.', 0, 0, 0, 46689); -- 8635



UPDATE `scene_template` SET `Flags`=27, `ScriptPackageID`=3511 WHERE `SceneId`=3017;

DELETE FROM `quest_offer_reward` WHERE `ID` IN (66589 /*-Unknown-*/, 72240 /*-Unknown-*/, 65101 /*-Unknown-*/, 66577 /*-Unknown-*/, 66513 /*-Unknown-*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(66589, 1, 0, 0, 0, 0, 0, 0, 0, 'That was fast!\n\nEager to get to the Dragon Isles, eh? Me too!', 46702), -- -Unknown-
(72240, 1, 0, 0, 0, 0, 0, 0, 0, 'I\'m pleased the dracthyr are comin\' with us.\n\nCan\'t wait to challenge that scalecommander to a race on ol\' Wildfeather.\n\nMy gryphon will best his leathery ol\' wings any day!', 46702), -- -Unknown-
(65101, 1, 0, 0, 0, 0, 0, 0, 0, 'Your visage suits you well, $p. It is unlike any I have seen before!\n\nPerhaps when we learn more of your origins, we will understand why the dracthyr visage differs from that of a dragon.\n\nBut now, we have an expedition to prepare for.', 46702), -- -Unknown-
(66577, 1, 0, 0, 0, 0, 0, 0, 0, 'o the Dragon Isles beyond the Forbidden Reach. I cannot wait for you to see it!\n\nNow then, I believe that diminutive archaeologist said something about put', 46702), -- -Unknown-
(66513, 0, 0, 0, 0, 0, 0, 0, 0, 'The Alliance has granted us asylum here in Stormwind.\n\nIt sounds like quite an interesting place.', 46702); -- -Unknown-

UPDATE `quest_offer_reward` SET `VerifiedBuild`=46702 WHERE `ID` IN (63212, 62000, 62716, 62704, 32675);

DELETE FROM `quest_poi` WHERE (`QuestID`=72240 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=72240 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=72240 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66589 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=66589 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=66589 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66589 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66589 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65101 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65101 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65101 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65101 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66577 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66577 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66577 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66513 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=66513 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=66513 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=66513 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66513 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66513 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(72240, 0, 2, 32, 0, 0, 0, 84, 0, 0, 0, 0, 0, 2194536, 0, 46702), -- -Unknown-
(72240, 0, 1, 0, 431790, 198373, 0, 84, 0, 0, 0, 0, 0, 2287095, 0, 46702), -- -Unknown-
(72240, 0, 0, -1, 0, 0, 0, 84, 0, 0, 0, 0, 0, 2196835, 0, 46702), -- -Unknown-
(66589, 0, 4, 32, 0, 0, 0, 84, 0, 0, 0, 0, 0, 2194534, 0, 46702), -- -Unknown-
(66589, 0, 3, 2, 429654, 189770, 0, 84, 0, 0, 0, 0, 0, 2232130, 0, 46702), -- -Unknown-
(66589, 0, 2, 1, 429653, 189771, 0, 84, 0, 0, 0, 0, 0, 2196805, 0, 46702), -- -Unknown-
(66589, 0, 1, 0, 429652, 189772, 0, 84, 0, 0, 0, 0, 0, 2196804, 0, 46702), -- -Unknown-
(66589, 0, 0, -1, 0, 0, 0, 84, 0, 0, 0, 0, 0, 2196835, 0, 46702), -- -Unknown-
(65101, 0, 3, 32, 0, 0, 0, 84, 0, 0, 0, 0, 0, 2194169, 0, 46702), -- -Unknown-
(65101, 0, 2, 2, 428881, 192288, 0, 84, 0, 0, 0, 0, 0, 2237771, 0, 46702), -- -Unknown-
(65101, 0, 1, 0, 429800, 194028, 0, 84, 0, 0, 0, 0, 0, 2194169, 0, 46702), -- -Unknown-
(65101, 0, 0, -1, 0, 0, 0, 84, 0, 0, 0, 0, 0, 2237771, 0, 46702), -- -Unknown-
(66577, 0, 2, 32, 0, 0, 0, 84, 0, 0, 0, 0, 0, 2194169, 0, 46702), -- -Unknown-
(66577, 0, 1, 0, 427235, 193016, 0, 84, 0, 2, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(66577, 0, 0, -1, 0, 0, 0, 84, 0, 0, 0, 0, 0, 2194169, 0, 46702), -- -Unknown-
(66513, 0, 5, 32, 0, 0, 0, 37, 0, 0, 0, 0, 0, 2214804, 0, 46702), -- -Unknown-
(66513, 0, 4, 3, 428880, 25738, 0, 84, 0, 2, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(66513, 0, 3, 2, 428879, 25735, 0, 84, 0, 2, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(66513, 0, 2, 1, 428878, 25734, 0, 84, 0, 2, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(66513, 0, 1, 0, 428877, 25733, 0, 84, 0, 2, 0, 0, 0, 0, 0, 46702), -- -Unknown-
(66513, 0, 0, -1, 0, 0, 0, 84, 0, 2, 0, 0, 0, 2194536, 0, 46702); -- -Unknown-

UPDATE `quest_poi` SET `VerifiedBuild`=46702 WHERE (`QuestID`=63212 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63212 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62000 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=62000 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=62000 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=62000 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=62000 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62000 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62000 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62716 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62716 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62704 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62704 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60545 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=60545 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=60545 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=60545 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=60545 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60545 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=60545 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=32675 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=72240 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=72240 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=72240 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66589 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=66589 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=66589 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66589 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66589 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65101 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65101 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65101 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65101 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66577 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66577 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66577 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66513 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=11) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=10) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=9) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=8) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=7) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=6) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=66513 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=11) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=10) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=9) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=66513 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=66513 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=66513 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66513 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(72240, 2, 0, -8308, 334, 155, 46702), -- -Unknown-
(72240, 1, 0, -8776, 838, 152, 46702), -- -Unknown-
(72240, 0, 0, -8641, 1328, 5, 46702), -- -Unknown-
(66589, 4, 0, -8312, 338, 155, 46702), -- -Unknown-
(66589, 3, 0, -8806, 621, 95, 46702), -- -Unknown-
(66589, 2, 0, -8523, 1057, 59, 46702), -- -Unknown-
(66589, 1, 0, -8427, 609, 95, 46702), -- -Unknown-
(66589, 0, 0, -8641, 1328, 5, 46702), -- -Unknown-
(65101, 3, 0, -8309, 336, 155, 46702), -- -Unknown-
(65101, 2, 0, -8273, 289, 155, 46702), -- -Unknown-
(65101, 1, 0, -8309, 336, 155, 46702), -- -Unknown-
(65101, 0, 0, -8273, 289, 155, 46702), -- -Unknown-
(66577, 2, 0, -8309, 336, 155, 46702), -- -Unknown-
(66577, 1, 0, -8310, 334, 0, 46702), -- -Unknown-
(66577, 0, 0, -8309, 336, 155, 46702), -- -Unknown-
(66513, 5, 0, -9093, 413, 92, 46702), -- -Unknown-
(66513, 4, 11, -9016, 858, 0, 46702), -- -Unknown-
(66513, 4, 10, -9021, 864, 0, 46702), -- -Unknown-
(66513, 4, 9, -9023, 872, 0, 46702), -- -Unknown-
(66513, 4, 8, -9021, 881, 0, 46702), -- -Unknown-
(66513, 4, 7, -9016, 886, 0, 46702), -- -Unknown-
(66513, 4, 6, -9006, 888, 0, 46702), -- -Unknown-
(66513, 4, 5, -9000, 887, 0, 46702), -- -Unknown-
(66513, 4, 4, -8993, 882, 0, 46702), -- -Unknown-
(66513, 4, 3, -8990, 875, 0, 46702), -- -Unknown-
(66513, 4, 2, -8991, 865, 0, 46702), -- -Unknown-
(66513, 4, 1, -8997, 857, 0, 46702), -- -Unknown-
(66513, 4, 0, -9006, 855, 0, 46702), -- -Unknown-
(66513, 3, 11, -8175, 815, 0, 46702), -- -Unknown-
(66513, 3, 10, -8172, 819, 0, 46702), -- -Unknown-
(66513, 3, 9, -8168, 823, 0, 46702), -- -Unknown-
(66513, 3, 8, -8148, 840, 0, 46702), -- -Unknown-
(66513, 3, 7, -8146, 838, 0, 46702), -- -Unknown-
(66513, 3, 6, -8136, 826, 0, 46702), -- -Unknown-
(66513, 3, 5, -8133, 822, 0, 46702), -- -Unknown-
(66513, 3, 4, -8129, 816, 0, 46702), -- -Unknown-
(66513, 3, 3, -8141, 804, 0, 46702), -- -Unknown-
(66513, 3, 2, -8144, 801, 0, 46702), -- -Unknown-
(66513, 3, 1, -8149, 796, 0, 46702), -- -Unknown-
(66513, 3, 0, -8155, 791, 0, 46702), -- -Unknown-
(66513, 2, 11, -8893, 626, 0, 46702), -- -Unknown-
(66513, 2, 10, -8900, 638, 0, 46702), -- -Unknown-
(66513, 2, 9, -8897, 641, 0, 46702), -- -Unknown-
(66513, 2, 8, -8894, 643, 0, 46702), -- -Unknown-
(66513, 2, 7, -8882, 651, 0, 46702), -- -Unknown-
(66513, 2, 6, -8880, 648, 0, 46702), -- -Unknown-
(66513, 2, 5, -8878, 645, 0, 46702), -- -Unknown-
(66513, 2, 4, -8877, 642, 0, 46702), -- -Unknown-
(66513, 2, 3, -8875, 639, 0, 46702), -- -Unknown-
(66513, 2, 2, -8875, 637, 0, 46702), -- -Unknown-
(66513, 2, 1, -8891, 627, 0, 46702), -- -Unknown-
(66513, 2, 0, -8893, 626, 0, 46702), -- -Unknown-
(66513, 1, 11, -8838, 645, 0, 46702), -- -Unknown-
(66513, 1, 10, -8841, 650, 0, 46702), -- -Unknown-
(66513, 1, 9, -8844, 655, 0, 46702), -- -Unknown-
(66513, 1, 8, -8846, 661, 0, 46702), -- -Unknown-
(66513, 1, 7, -8840, 665, 0, 46702), -- -Unknown-
(66513, 1, 6, -8836, 669, 0, 46702), -- -Unknown-
(66513, 1, 5, -8832, 671, 0, 46702), -- -Unknown-
(66513, 1, 4, -8829, 672, 0, 46702), -- -Unknown-
(66513, 1, 3, -8823, 657, 0, 46702), -- -Unknown-
(66513, 1, 2, -8822, 656, 0, 46702), -- -Unknown-
(66513, 1, 1, -8821, 654, 0, 46702), -- -Unknown-
(66513, 1, 0, -8828, 650, 0, 46702), -- -Unknown-
(66513, 0, 0, -8307, 336, 155, 46702); -- -Unknown-

UPDATE `quest_poi_points` SET `VerifiedBuild`=46702 WHERE (`QuestID`=63212 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63212 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62000 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=62000 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=62000 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=62000 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=62000 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62000 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62000 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62716 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62716 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62704 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62704 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60545 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=60545 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=60545 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=60545 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=60545 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60545 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60545 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=32675 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (72240 /*-Unknown-*/, 66589 /*-Unknown-*/, 65101 /*-Unknown-*/, 66577 /*-Unknown-*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(72240, 1, 1, 0, 0, 0, 1000, 0, 0, 46702), -- -Unknown-
(66589, 25, 1, 0, 0, 0, 2000, 0, 0, 46702), -- -Unknown-
(65101, 25, 1, 1, 1, 0, 0, 0, 0, 46702), -- -Unknown-
(66577, 1, 0, 0, 0, 0, 0, 0, 0, 46702); -- -Unknown-

UPDATE `quest_details` SET `VerifiedBuild`=46702 WHERE `ID` IN (58609, 63212, 62000, 62716, 62704, 60545, 32675);

DELETE FROM `creature_queststarter` WHERE (`id`=189603 AND `quest`=72240) OR (`id`=189602 AND `quest`=66589) OR (`id`=189569 AND `quest` IN (65101,66577));
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(189603, 72240, 46702), -- -Unknown- offered -Unknown-
(189602, 66589, 46702), -- -Unknown- offered -Unknown-
(189569, 65101, 46702), -- -Unknown- offered Wrathion
(189569, 66577, 46702); -- -Unknown- offered Wrathion

UPDATE `creature_queststarter` SET `VerifiedBuild`=46702 WHERE (`id`=171821 AND `quest`=58609) OR (`id`=159478 AND `quest` IN (63212,62000)) OR (`id`=174871 AND `quest` IN (62716,62704));

DELETE FROM `creature_questender` WHERE (`id`=189077 AND `quest` IN (66589,72240)) OR (`id`=194022 AND `quest`=65101) OR (`id`=189569 AND `quest`=66577) OR (`id`=189603 AND `quest`=66513);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(189077, 66589, 46702), -- -Unknown- ended by Toddy Whiskers
(189077, 72240, 46702), -- -Unknown- ended by Toddy Whiskers
(194022, 65101, 46702), -- -Unknown- ended by -Unknown-
(189569, 66577, 46702), -- -Unknown- ended by Wrathion
(189603, 66513, 46702); -- -Unknown- ended by -Unknown-

UPDATE `creature_questender` SET `VerifiedBuild`=46702 WHERE (`id`=171821 AND `quest`=63212) OR (`id`=159478 AND `quest` IN (62000,62716)) OR (`id`=174871 AND `quest`=62704) OR (`id`=43769 AND `quest`=32675);


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (189763,198401,192531,143178,192532,198531,50545,198551,198384,189765,198526,194022,189603,189602));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(189763, 0, 0, 0, 2151, 46702),
(198401, 0, 0, 0, 2151, 46702),
(192531, 0, 0, 0, 2150, 46702),
(143178, 0, 0, 0, 371, 46702),
(192532, 0, 0, 0, 2150, 46702),
(198531, 0, 0, 0, 864, 46702),
(50545, 0, 0, 0, 371, 46702),
(198551, 0, 0, 0, 864, 46702),
(198384, 0, 0, 0, 2151, 46702),
(189765, 0, 0, 0, 2151, 46702),
(198526, 0, 0, 0, 864, 46702),
(194022, 0, 0, 0, 2078, 46702),
(189603, 0, 0, 0, 2150, 46702),
(189602, 0, 0, 0, 2151, 46702);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46702 WHERE (`DifficultyID`=0 AND `Entry` IN (173348,164685,165403,165405,167881,167880,175208,156688,175206,173325,156769,156758,156663,173364,156664,166284,156768,156791,165796,169524,156735,173369,182864,36871,173353,173354,173357,173356,173355,173352,175067,185576,173370,190148,165654,173318,185525,176368,176066,185914,173919,173955,173954,173957,171821,176067,176064,176065,173388,178792,173610,175215,175526,175525,176186,174871,174575,168252,174917,172532,1371,1368,32639,32638,113136,112958,5502,1370,142816,141508,141504,113211,113418,151287,9977,7295,5505,11828,11827,171119,2456,2457,65153,14721,1275,279,46602,48632,61896,61895,43822,43820,43819,4974,51440,5193,1432,162935,482,6174,3518,49877,18406,188151,43769,43768,35477,50669,18376,18375,61836,61834,1285,483,56925,352,1289,1287,1286,18362,18360,18359,18357,1303,4981,1302,175051,176230,12781,12779,19848,12780,44246,54660,146633,176233,176229,69974,52030,61838,5565,5564,23050,176221,176226,50523,11096,176244,188523,50525,50524,61837,1721,1324,1292,2795,28355,1321,1320,1319,1339,87501,4961,28347,1395,87503,1333,5483,5482,3626,176235,176237,140407,171789,176554,169177,173220,173219,69823,69822,142787,142786,1440,151247,151256,151255,151251,143208,2504,151249,44239,44243,44241,44238,93307,93296,35365,34997,34998,24729,1751,15187,1750,17103,2285,1439,175138,51938,1752,4960,165505,1327,6090,6089,61840,173706,176192,1328,176203,176220,3629,340,155011,44237,61839,61841,1756,47688,173819,1212,12336,6173,928,5489,5484,376,56796,5492,5491,1351,14423,6171,51081,7917,4982,1348,114246,68980,57800,54443,54442,2198,5506,49893,149467,149436));

DELETE FROM `creature_model_info` WHERE `DisplayID` IN (110339, 108455, 107892, 107898, 110175, 110189, 110249, 108813, 110172, 107882, 107884, 107887);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(110339, 0.305999994277954101, 1.5, 0, 46702),
(108455, 0.347000002861022949, 1.5, 0, 46702),
(107892, 0.305999994277954101, 1.5, 0, 46702),
(107898, 0.305999994277954101, 1.5, 0, 46702),
(110175, 0.722000002861022949, 2, 0, 46702),
(110189, 0.722000002861022949, 2, 0, 46702),
(110249, 0.388999998569488525, 1.5, 0, 46702),
(108813, 0.305999994277954101, 1.5, 0, 46702),
(110172, 0.722000002861022949, 2, 0, 46702),
(107882, 0.208000004291534423, 1.5, 0, 46702),
(107884, 0.208000004291534423, 1.5, 0, 46702),
(107887, 0.305999994277954101, 1.5, 0, 46702);

UPDATE `creature_model_info` SET `VerifiedBuild`=46702 WHERE `DisplayID` IN (96584, 99054, 30462, 83350, 92663, 98201, 90260, 94658, 100390, 100383, 72658, 57211, 2273, 37115, 32775, 37123, 86660, 88610, 2272, 88612, 2248, 88841, 4409, 4181, 2270, 9249, 6061, 3301, 99873, 4271, 7997, 28498, 2267, 28415, 1436, 2221, 1437, 2247, 46026, 12923, 1444, 5082, 37372, 36213, 33520, 33519, 33518, 2974, 3133, 5074, 3246, 4888, 1541, 36758, 17759, 33507, 33506, 36839, 17718, 17703, 42274, 42273, 1434, 5546, 39532, 5128, 1429, 1448, 1440, 17717, 17697, 17696, 17694, 1441, 5547, 99499, 4403, 99375, 100168, 12669, 12910, 19216, 12924, 33751, 21512, 89374, 100170, 100167, 31953, 37720, 42276, 3448, 3449, 100160, 100165, 36814, 10625, 100184, 36816, 36815, 42275, 1815, 1512, 1449, 1505, 25336, 1520, 1517, 1510, 1522, 60316, 3238, 25319, 1508, 60207, 1511, 3288, 3281, 1697, 100172, 100174, 2257, 37111, 2220, 2203, 71257, 10569, 96328, 3316, 3296, 1488, 3304, 3300, 47710, 44820, 5553, 91079, 91081, 91080, 87011, 1573, 33746, 33748, 33747, 33745, 63521, 63522, 29796, 29514, 29515, 5077, 15321, 5565, 16854, 5075, 1758, 78345, 31174, 99949, 18931, 2961, 34004, 99950, 95808, 1516, 5000, 4996, 42278, 98571, 100159, 1521, 100004, 100003, 1696, 5728, 92198, 33743, 42277, 42279, 99947, 99500, 93409, 83232, 83234, 93417, 93414, 93410, 81532, 72180, 68729, 14472, 38420, 90332, 90357, 90334, 90343, 90344);
UPDATE `creature_model_info` SET `BoundingRadius`=1.210245490074157714, `VerifiedBuild`=46702 WHERE `DisplayID`=22990;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `VerifiedBuild`=46702 WHERE `DisplayID`=98185;
UPDATE `creature_model_info` SET `BoundingRadius`=0.208000004291534423, `CombatReach`=1.5, `VerifiedBuild`=46702 WHERE `DisplayID`=66359;
UPDATE `creature_model_info` SET `BoundingRadius`=0.268089085817337036, `VerifiedBuild`=46702 WHERE `DisplayID`=23948;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `CombatReach`=0.5, `VerifiedBuild`=46702 WHERE `DisplayID`=27682;
UPDATE `creature_model_info` SET `BoundingRadius`=0.22513851523399353, `VerifiedBuild`=46702 WHERE `DisplayID`=36901;
UPDATE `creature_model_info` SET `BoundingRadius`=0.15329095721244812, `CombatReach`=1, `VerifiedBuild`=46702 WHERE `DisplayID`=85246;


DELETE FROM `gossip_menu` WHERE (`TextID`=1 AND `MenuID` IN (28058,28056,30045,28057,30065,28666));
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(28058, 1, 46702), -- 189767 (Thaelin Darkanvil)
(28056, 1, 46702), -- 189763
(30045, 1, 46702), -- 198401
(28057, 1, 46702), -- 189765
(30065, 1, 46702), -- 189603
(28666, 1, 46702); -- 189569 (Wrathion)

UPDATE `gossip_menu` SET `VerifiedBuild`=46702 WHERE (`MenuID`=26693 AND `TextID`=42426) OR (`MenuID`=25927 AND `TextID`=41103) OR (`MenuID`=26284 AND `TextID`=43773) OR (`MenuID`=26133 AND `TextID`=41789) OR (`MenuID`=26041 AND `TextID`=41822) OR (`MenuID`=26132 AND `TextID`=41814) OR (`MenuID`=26131 AND `TextID`=41783) OR (`MenuID`=26637 AND `TextID`=42360) OR (`MenuID`=26056 AND `TextID`=41396) OR (`MenuID`=2745 AND `TextID`=3406) OR (`MenuID`=23838 AND `TextID`=37367);
DELETE FROM `gossip_menu_option` WHERE (`OptionID`=0 AND `MenuID` IN (30045,28056,28058,28057)) OR (`OptionID`=1 AND `MenuID` IN (28666,26056)) OR (`OptionID`=2 AND `MenuID`=28666);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(30045, 0, 0, 'Scalecommander Azurathel would like you to meet him at the docks.', 0, 0, 0, 0, 0, 0, NULL, 0, 46702),
(28666, 1, 0, '<Listen to Wrathion and Turalyon.>', 0, 0, 0, 0, 0, 0, NULL, 0, 46702),
(28056, 0, 0, 'We need explorers for an expedition to the Dragon Isles. Will you join us?', 0, 0, 0, 0, 0, 0, NULL, 0, 46702),
(28666, 2, 0, '<Ask about choosing a visage.>', 0, 0, 0, 0, 0, 0, NULL, 0, 46702),
(28058, 0, 0, 'We need artisans for an expedition to the Dragon Isles. Will you join us?', 0, 0, 0, 0, 0, 0, NULL, 0, 46702),
(26056, 1, 0, 'I have heard this tale before. |cFFFF0000<Skip the Maw introduction. Oribos awaits.>|r', 0, 0, 0, 0, 0, 0, 'Are you sure? This action cannot be undone.', 206987, 46702), -- BoxBroadcastTextID: 206987 - 206987
(28057, 0, 0, 'We need scholars for an expedition to the Dragon Isles. Will you join us?', 0, 0, 0, 0, 0, 0, NULL, 0, 46702);

UPDATE `gossip_menu_option` SET `VerifiedBuild`=46702 WHERE (`MenuID`=26041 AND `OptionID` IN (3,4,5,0)) OR (`MenuID`=25927 AND `OptionID` IN (10,7,8,1,2,9,12,5,11,0)) OR (`MenuID`=26133 AND `OptionID` IN (5,3,0,4)) OR (`MenuID`=26132 AND `OptionID` IN (4,0,3,5)) OR (`MenuID`=26131 AND `OptionID` IN (0,4,3)) OR (`MenuID`=23838 AND `OptionID`=0) OR (`MenuID`=26693 AND `OptionID`=4) OR (`MenuID`=26637 AND `OptionID`=0) OR (`MenuID`=26056 AND `OptionID`=0);
UPDATE `gossip_menu_option` SET `OptionText`='I have been to Zereth Mortis before and met Pocopoc.\n|cFFFF0000<Skip ahead to Zereth Mortis and have Pocopoc unlocked.>|r', `BoxText`='Are you sure? This action cannot be undone.', `BoxBroadcastTextID`=206987, `VerifiedBuild`=46702 WHERE (`MenuID`=26284 AND `OptionID`=8); -- BoxBroadcastTextID: 206987 - 206987
UPDATE `gossip_menu_option` SET `ActionMenuID`=0, `VerifiedBuild`=46702 WHERE (`MenuID`=26131 AND `OptionID`=5);
UPDATE `gossip_menu_option` SET `ActionMenuID`=0, `ActionPoiID`=0, `BoxMoney`=0, `VerifiedBuild`=46702 WHERE (`MenuID`=25927 AND `OptionID`=6); -- OptionBroadcastTextID: 205649 - 205649
UPDATE `gossip_menu_option` SET `OptionText`='Appearance Agitator', `OptionBroadcastTextId`=200254, `VerifiedBuild`=46702 WHERE (`MenuID`=25927 AND `OptionID`=5); -- OptionBroadcastTextID: 200254 - 200254


DELETE FROM `creature_template` WHERE `entry` IN (189763 /*-Unknown-*/, 198401 /*-Unknown-*/, 192531 /*-Unknown-*/, 192532 /*-Unknown-*/, 198531 /*-Unknown-*/, 198551 /*-Unknown-*/, 198384 /*-Unknown-*/, 189765 /*-Unknown-*/, 198526 /*-Unknown-*/, 194022 /*-Unknown-*/, 189603 /*-Unknown-*/, 189602 /*-Unknown-*/);
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(189763, 28056, 62, 62, 3270, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(198401, 30045, 62, 62, 35, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(192531, 0, 60, 60, 12, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(192532, 0, 60, 60, 12, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(198531, 0, 60, 60, 3340, 1, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(198551, 0, 60, 60, 3340, 1, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(198384, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(189765, 28057, 62, 62, 3270, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(198526, 0, 60, 60, 3340, 1, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- -Unknown-
(194022, 0, 70, 70, 35, 2, 1, 1.142857193946838378, 2000, 0, 32768, 34816, 0, 0, 0, 1), -- -Unknown-
(189603, 30065, 60, 60, 35, 3, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- -Unknown-
(189602, 0, 62, 62, 3270, 281474976710658, 1, 1.142857193946838378, 2000, 0, 33536, 2099200, 0, 0, 0, 1); -- -Unknown-


DELETE FROM `vehicle_template_accessory` WHERE (`seat_id`=0 AND `entry` IN (52359,50523));
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(52359, 52361, 0, 0, 'Toy Cart - Toy Cart Bunny', 5, 0), -- Toy Cart - Toy Cart Bunny
(50523, 50525, 0, 0, 'Kyle Radue - Chris Miller', 5, 0); -- Kyle Radue - Chris Miller


DELETE FROM `quest_visual_effect` WHERE (`Index`=0 AND `ID` IN (431790,429652,429800,427235));
INSERT INTO `quest_visual_effect` (`ID`, `Index`, `VisualEffect`, `VerifiedBuild`) VALUES
(431790, 0, 20716, 46702),
(429652, 0, 19798, 46702),
(429800, 0, 19869, 46702),
(427235, 0, 18192, 46702);

UPDATE `quest_visual_effect` SET `VerifiedBuild`=46702 WHERE (`ID`=422082 AND `Index`=0) OR (`ID`=422440 AND `Index` IN (3,2,1,0)) OR (`ID`=421788 AND `Index`=0) OR (`ID`=398340 AND `Index`=0) OR (`ID`=396931 AND `Index`=0) OR (`ID`=406154 AND `Index`=0) OR (`ID`=405073 AND `Index` IN (10,9,8,7,6,5,4,3,2,1,0)) OR (`ID`=397111 AND `Index`=0) OR (`ID`=405568 AND `Index`=0) OR (`ID`=407067 AND `Index`=0);

DELETE FROM `quest_reward_display_spell` WHERE (`QuestID`=65101 AND `Idx`=0);
INSERT INTO `quest_reward_display_spell` (`QuestID`, `Idx`, `SpellID`, `PlayerConditionID`, `VerifiedBuild`) VALUES
(65101, 0, 351239, 97068, 46702);

UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=46702 WHERE (`QuestID`=62000 AND `Idx` IN (53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,38,37,36,35,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0));

DELETE FROM `creature_template_model` WHERE (`Idx`=0 AND `CreatureID` IN (189763,198401,192531,192532,198531,198551,198384,189765,198526,194022,189603,189602)) OR (`Idx`=1 AND `CreatureID` IN (198401,194022,189603));
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(189763, 0, 106741, 1, 1, 46702), -- -Unknown-
(198401, 1, 102176, 1, 0, 46702), -- -Unknown-
(198401, 0, 102175, 1, 1, 46702), -- -Unknown-
(192531, 0, 107892, 1, 1, 46702), -- -Unknown-
(192532, 0, 107898, 1, 1, 46702), -- -Unknown-
(198531, 0, 110175, 1, 1, 46702), -- -Unknown-
(198551, 0, 110189, 1, 1, 46702), -- -Unknown-
(198384, 0, 104834, 1, 1, 46702), -- -Unknown-
(189765, 0, 106766, 1, 1, 46702), -- -Unknown-
(198526, 0, 110172, 1, 1, 46702), -- -Unknown-
(194022, 1, 107945, 1, 0, 46702), -- -Unknown-
(194022, 0, 107146, 1, 1, 46702), -- -Unknown-
(189603, 1, 107028, 1, 0, 46702), -- -Unknown-
(189603, 0, 102032, 1, 1, 46702), -- -Unknown-
(189602, 0, 105170, 1, 1, 46702); -- -Unknown-

UPDATE `creature_template_model` SET `VerifiedBuild`=46702 WHERE (`Idx`=0 AND `CreatureID` IN (161410,167527,36871,173957,173955,173954,173919,173388,173386,156777,156668,174871,172532,168252,174575,174917,32639,32638,113136,112958,5502,113418,151287,9977,7295,5505,171119,2456,2457,143178,65153,14721,43822,61896,61895,51440,48632,46602,43820,43819,5193,4974,1275,279,1432,162935,50545,6174,3518,482,56925,50669,49877,43769,4981,1289,1287,1286,1285,483,188151,61836,61834,43768,35477,1303,1302,352,19848,12780,12781,176230,54660,146633,44246,175051,12779,176233,176229,69974,61838,52030,50523,188523,176244,176226,176221,61837,50525,50524,23050,11096,5565,5564,1721,1395,1324,1321,1320,1292,87503,87501,28355,28347,4961,2795,1339,1319,5483,5482,3626,1333,176235,176237,176554,173220,173219,171789,169177,142787,142786,69823,69822,165918,151256,151255,151251,151249,151247,143208,2504,1440,44243,44241,44239,44238,93307,93296,35365,34997,34998,24729,1751,15187,1750,17103,2285,175138,51938,1439,4960,1752,165505,176192,6089,3629,1327,61840,176220,176203,173706,155011,61839,44237,6090,1328,340,61841,1756,47688,14423,149436)) OR (`Idx`=1 AND `CreatureID` IN (113418,162935,173220,173219,169177,151249,1756,149436)) OR (`Idx`=8 AND `CreatureID` IN (173219,169177)) OR (`Idx`=7 AND `CreatureID` IN (173219,169177)) OR (`Idx`=6 AND `CreatureID` IN (173219,169177)) OR (`Idx`=5 AND `CreatureID` IN (173219,169177)) OR (`Idx`=4 AND `CreatureID` IN (173219,169177,1756)) OR (`Idx`=3 AND `CreatureID` IN (173219,169177,151249,1756,149436)) OR (`Idx`=2 AND `CreatureID` IN (173219,169177,151249,1756,149436)) OR (`Idx`=11 AND `CreatureID`=169177) OR (`Idx`=10 AND `CreatureID`=169177) OR (`Idx`=9 AND `CreatureID`=169177);


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46702 WHERE (`GameObjectEntry`=344604 AND `Idx`=0);


UPDATE `playerchoice_response` SET `ResponseIdentifier`=2561, `Answer`='Join', `Description`='|A:CovenantChoice-Panel-Sigil-Kyrian:40:30:0:0|a\nKyrian', `VerifiedBuild`=46702 WHERE (`ChoiceId`=644 AND `ResponseId`=2689 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=2551, `Header`='The Threads of Fate', `ButtonTooltip`='Skip the main storyline and choose a covenant.', `Answer`='The Threads of Fate', `Description`='Level up by doing world quests, side quests, bonus objectives, Torghast, and dungeons.\n\nMain storyline quests will be skipped and you will choose your covenant immediately.\n\nYou will have access to all Shadowlands zones except the Maw.\n\nThis choice is final and cannot be undone.', `VerifiedBuild`=46702 WHERE (`ChoiceId`=667 AND `ResponseId`=3272 AND `Index`=0);


UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099
UPDATE `world_quest` SET `value`=2 WHERE `id`=59848; -- 59848
UPDATE `world_quest` SET `variable`=14063 WHERE `id`=49099; -- 49099


DELETE FROM `creature_equip_template` WHERE (`ID`=1 AND `CreatureID` IN (190292,189784,198843,190916,192010,190547,190548,187290,191126,187072,187060,192284,187058,185489,193304,189812,189814,189815,197211,191891,190269));
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(190292, 1, 189547, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Alexstrasza the Life-Binder
(189784, 1, 159661, 0, 0, 126143, 0, 0, 0, 0, 0, 46879), -- Harried Guardian
(198843, 1, 192518, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Ruby Scaleguard
(190916, 1, 192518, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Ruby Warden
(192010, 1, 23415, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Szarostrasza
(190547, 1, 193269, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Lifewarding Gardener
(190548, 1, 193269, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Lifetending Gardener
(187290, 1, 189547, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Alexstrasza the Life-Binder
(191126, 1, 192518, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Ruby Shrineguard
(187072, 1, 192518, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Ruby Shrineguard
(187060, 1, 192513, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Ruby Keeper
(192284, 1, 13723, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Kandrostrasz
(187058, 1, 192518, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Ruby Scaleguard
(185489, 1, 166996, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- King Drippy
(193304, 1, 192518, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Ru'kroszk
(189812, 1, 0, 0, 0, 0, 0, 0, 156850, 0, 0, 46879), -- Cliffdrip Snapstrider
(189814, 1, 166997, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Cliffdrip Wavemender
(189815, 1, 166995, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Cliffdrip Fallstriker
(197211, 1, 0, 0, 0, 0, 0, 0, 156850, 0, 0, 46879), -- Gurblbrblr the Invader
(191891, 1, 191706, 0, 0, 193841, 0, 0, 0, 0, 0, 46879), -- Sendrax
(190269, 1, 191706, 0, 0, 193841, 0, 0, 0, 0, 0, 46879); -- Sendrax

UPDATE `creature_equip_template` SET `VerifiedBuild`=46879 WHERE (`ID`=1 AND `CreatureID` IN (58965,190171));

DELETE FROM `areatrigger_template` WHERE (`IsServerSide`=0 AND `Id` IN (29674,30719,29881,28368));
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(29674, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 46879),
(30719, 0, 0, 4, 10, 10, 0, 0, 0, 0, 0, 0, 46879),
(29881, 0, 0, 4, 15, 15, 0, 0, 0, 0, 0, 0, 46879),
(28368, 0, 4, 1028, 1, 1, 2, 2, -0.5, -0.5, 0, 0, 46879);


DELETE FROM `scene_template` WHERE `SceneId` IN (2902, 2948, 2985);
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`, `Encrypted`) VALUES
(2902, 16, 3443, 0),
(2948, 17, 3492, 0),
(2985, 20, 3562, 0);

UPDATE `scene_template` SET `Flags`=20, `ScriptPackageID`=3749 WHERE `SceneId`=3077;
UPDATE `scene_template` SET `Flags`=20, `ScriptPackageID`=3748 WHERE `SceneId`=3076;
UPDATE `scene_template` SET `Flags`=20, `ScriptPackageID`=3747 WHERE `SceneId`=3075;
UPDATE `scene_template` SET `Flags`=17, `ScriptPackageID`=3639 WHERE `SceneId`=3008;

DELETE FROM `quest_offer_reward` WHERE `ID` IN (68799 /*-Unknown-*/, 68798 /*-Unknown-*/, 68797 /*-Unknown-*/, 68796 /*-Unknown-*/, 70351 /*-Unknown-*/, 65133 /*-Unknown-*/, 65120 /*-Unknown-*/, 65118 /*-Unknown-*/, 68795 /*-Unknown-*/, 70058 /*-Unknown-*/, 70061 /*-Unknown-*/, 66115 /*-Unknown-*/, 66825 /*-Unknown-*/, 66114 /*-Unknown-*/, 66001 /*-Unknown-*/, 65999 /*Red in Tooth and Claw*/, 66000 /*Library of Alexstrasza*/, 65998 /*Future of the Flights*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(68799, 0, 0, 0, 0, 0, 0, 0, 0, 'Welcome back.\n\nThere is much more to do here, but know that you do not take to the skies alone.', 46879), -- -Unknown-
(68798, 0, 0, 0, 0, 0, 0, 0, 0, 'As you can see, those of us from the different flights have all come together to aid our drakes and yourself. We are all ready for adventure!\n\nOf course, we have not yet convinced... or found... a member of the black dragonflight to join us. But some day they may!', 46879), -- -Unknown-
(68797, 0, 0, 0, 0, 0, 0, 0, 0, 'As you explore the Dragon Isles, you will discover even more varied and unique appearances for your dragonriding companion. \n\nBoth of you shall be able to travel in style! As one must, when exploring a new land. How else do you make the best first impression?', 46879), -- -Unknown-
(68796, 0, 0, 0, 0, 0, 0, 0, 0, 'I suppose I was so eager to show you our foundation here, I may have flown a bit too fast. My apologies!\n\nThere is not  much to look at for the moment as it has been a long time since someone inhabited these terraces. However, we will make them our home once again.\n\nNow, let us introduce you to everyone!', 46879), -- -Unknown-
(70351, 0, 0, 0, 0, 0, 0, 0, 0, 'Excellent! Now we can really get to work, $n.', 46879), -- -Unknown-
(65133, 0, 0, 0, 0, 0, 0, 0, 0, 'Well done. The rest is now a matter of practice.', 46879), -- -Unknown-
(65120, 0, 0, 0, 0, 0, 0, 0, 0, 'See? That was much better.\n\nIf you start your flights with a dive you will get to where you want to go so much faster.', 46879), -- -Unknown-
(65118, 0, 0, 0, 0, 0, 0, 0, 0, 'Excellent work!', 46879), -- -Unknown-
(68795, 0, 0, 0, 0, 0, 0, 0, 0, 'Let us get started.\n\nDo not worry, the fancy maneuvers will come later.', 46879), -- -Unknown-
(70058, 0, 0, 0, 0, 0, 0, 0, 0, 'Yes, yes! These materials should be plenty to repair your Happy Duck, young one.\n\n<Mahra smiles at you.>\n\nThank you for bringing this important matter to my attention, $n. It should only take me a moment.', 46879), -- -Unknown-
(70061, 0, 0, 0, 0, 0, 0, 0, 0, 'It is good to see our young flying with such joy and liberty in their hearts. Thank you for helping them achieve that.', 46879), -- -Unknown-
(66115, 1, 0, 0, 0, 0, 0, 0, 0, 'I hope you have grown to appreciate what we do.', 46879), -- -Unknown-
(66825, 0, 0, 0, 0, 0, 0, 0, 0, 'A Calling can change throughout a dragonspawn\'s life, but we each cherish our first greatly. Thank you again for participating in our ceremony.', 46879), -- -Unknown-
(66114, 1, 0, 0, 0, 0, 0, 0, 0, 'ur face here after what you did. Once, you threatened the future of this dragonflight.\n\nB', 46879), -- -Unknown-
(66001, 1, 0, 0, 0, 0, 0, 0, 0, 'Is that...?', 46879), -- -Unknown-
(65999, 1, 0, 0, 0, 0, 0, 0, 0, '<Sendrax pats out a lingering flame on her armor.>\n\nWe\'ve done what we could. What was needed.', 46879), -- Red in Tooth and Claw
(66000, 1, 0, 0, 0, 0, 0, 0, 0, 'Our history will survive.', 46879), -- Library of Alexstrasza
(65998, 1, 0, 0, 0, 0, 0, 0, 0, '<Sendrax is clearly shaken by what she had to do.>\n\nDeath was the only mercy left to those poor whelplings...', 46879); -- Future of the Flights


DELETE FROM `quest_poi` WHERE (`QuestID`=66931 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66931 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66931 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=68799 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=68799 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=68799 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=72481 AND `BlobIndex`=0 AND `Idx1`=8) OR (`QuestID`=72481 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=72481 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=72481 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=72481 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=72481 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=72481 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=72481 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=72481 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=68798 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=68798 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=68798 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=68798 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=68798 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=68798 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=68798 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=68797 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=68797 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=68797 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66827 AND `BlobIndex`=1 AND `Idx1`=8) OR (`QuestID`=66827 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=66827 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=66827 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=66827 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=66827 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=66827 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66827 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66827 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=68796 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=68796 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=68796 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=68796 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=68796 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65133 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65133 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65133 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65120 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65120 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65120 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65118 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65118 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65118 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=70132 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=70132 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=70132 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=70132 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=67564 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=70061 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=70061 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=70061 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=70061 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=70061 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=70061 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=70058 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=70058 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=70058 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=70058 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=70058 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66879 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66879 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=70351 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=70351 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=70351 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66997 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66997 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66825 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66825 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66825 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=68795 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=68795 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=68795 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66115 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=66115 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=66115 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=66115 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66115 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66115 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66114 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66114 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66114 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=70179 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=70179 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=70179 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66001 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=66001 AND `BlobIndex`=2 AND `Idx1`=5) OR (`QuestID`=66001 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=66001 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=66001 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66001 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66001 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(66931, 0, 2, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2192635, 0, 46879), -- -Unknown-
(66931, 0, 1, 0, 428526, 190292, 2444, 2022, 0, 0, 0, 0, 0, 2199966, 0, 46879), -- -Unknown-
(66931, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2199967, 0, 46879), -- -Unknown-
(68799, 0, 2, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2225174, 0, 46879), -- -Unknown-
(68799, 0, 1, 0, 432436, 199685, 2444, 2022, 0, 0, 0, 0, 0, 2297008, 0, 46879), -- -Unknown-
(68799, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2192635, 0, 46879), -- -Unknown-
(72481, 0, 8, 7, 432034, 199075, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(72481, 0, 7, 6, 432033, 199072, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(72481, 0, 6, 5, 432032, 199070, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(72481, 0, 5, 4, 432031, 199067, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(72481, 0, 4, 3, 432030, 199065, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(72481, 0, 3, 2, 432029, 199062, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(72481, 0, 2, 1, 432028, 199060, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(72481, 0, 1, 0, 432026, 199058, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(72481, 0, 0, -1, 0, 0, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(68798, 0, 6, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2225174, 0, 46879), -- -Unknown-
(68798, 0, 5, 4, 429422, 193411, 2444, 2022, 0, 0, 0, 0, 0, 2225605, 0, 46879), -- -Unknown-
(68798, 0, 4, 3, 431837, 139846, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(68798, 0, 3, 2, 431754, 193364, 2444, 2022, 0, 0, 0, 0, 0, 2225290, 0, 46879), -- -Unknown-
(68798, 0, 2, 1, 429421, 193364, 2444, 2022, 0, 0, 0, 0, 0, 2225290, 0, 46879), -- -Unknown-
(68798, 0, 1, 0, 431836, 139844, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(68798, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2225174, 0, 46879), -- -Unknown-
(68797, 0, 2, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2225174, 0, 46879), -- -Unknown-
(68797, 0, 1, 0, 429398, 190839, 2444, 2022, 0, 0, 0, 0, 0, 2220961, 0, 46879), -- -Unknown-
(68797, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2225174, 0, 46879), -- -Unknown-
(66827, 1, 8, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2205169, 0, 46879), -- -Unknown-
(66827, 0, 7, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2204271, 0, 46879), -- -Unknown-
(66827, 0, 6, 5, 428339, 191293, 2444, 2022, 0, 0, 0, 0, 0, 2207279, 0, 46879), -- -Unknown-
(66827, 0, 5, 4, 428340, 191281, 2444, 2022, 0, 0, 0, 0, 0, 2207243, 0, 46879), -- -Unknown-
(66827, 0, 4, 3, 428341, 191292, 2444, 2022, 0, 0, 0, 0, 0, 2207282, 0, 46879), -- -Unknown-
(66827, 0, 3, 2, 428331, 191297, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66827, 0, 2, 1, 428330, 191296, 2444, 2022, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66827, 0, 1, 0, 428302, 191254, 2444, 2022, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66827, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2204271, 0, 46879), -- -Unknown-
(68796, 0, 4, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2227086, 0, 46879), -- -Unknown-
(68796, 1, 3, 1, 431721, 198050, 2444, 2022, 0, 0, 0, 103264, 0, 2282491, 0, 46879), -- -Unknown-
(68796, 0, 2, 1, 431721, 198050, 2444, 2022, 0, 0, 0, 103263, 0, 2282407, 0, 46879), -- -Unknown-
(68796, 0, 1, 0, 431715, 198049, 2444, 2022, 0, 0, 0, 0, 0, 2282407, 0, 46879), -- -Unknown-
(68796, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2225174, 0, 46879), -- -Unknown-
(65133, 0, 2, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2227086, 0, 46879), -- -Unknown-
(65133, 0, 1, 2, 422213, 182847, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(65133, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2127539, 0, 46879), -- -Unknown-
(65120, 0, 2, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2227086, 0, 46879), -- -Unknown-
(65120, 0, 1, 2, 422184, 182847, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(65120, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2127539, 0, 46879), -- -Unknown-
(65118, 0, 2, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2227086, 0, 46879), -- -Unknown-
(65118, 0, 1, 2, 422196, 182847, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(65118, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2127539, 0, 46879), -- -Unknown-
(70132, 0, 3, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2253218, 0, 46879), -- -Unknown-
(70132, 0, 2, 1, 431875, 194434, 2444, 2022, 0, 0, 0, 0, 0, 2253218, 0, 46879), -- -Unknown-
(70132, 0, 1, 0, 429895, 198729, 2444, 2022, 0, 0, 0, 0, 0, 2253218, 0, 46879), -- -Unknown-
(70132, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2253218, 0, 46879), -- -Unknown-
(67564, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2220946, 0, 46879), -- -Unknown-
(70061, 0, 5, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2238978, 0, 46879), -- -Unknown-
(70061, 0, 4, 3, 429870, 194159, 2444, 2022, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(70061, 0, 3, 2, 429862, 194142, 2444, 2022, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(70061, 0, 2, 1, 429861, 193994, 2444, 2022, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(70061, 0, 1, 0, 429779, 193979, 2444, 2022, 0, 0, 0, 0, 0, 2239618, 0, 46879), -- -Unknown-
(70061, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2212533, 0, 46879), -- -Unknown-
(70058, 0, 4, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2236986, 0, 46879), -- -Unknown-
(70058, 0, 3, 2, 430337, 198345, 2444, 2022, 1, 0, 0, 0, 0, 2237200, 0, 46879), -- -Unknown-
(70058, 0, 2, 1, 429774, 198344, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(70058, 0, 1, 0, 429773, 198343, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(70058, 0, 0, -1, 0, 0, 2444, 2022, 0, 2, 0, 0, 0, 2223531, 0, 46879), -- -Unknown-
(66879, 0, 1, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2206546, 0, 46879), -- -Unknown-
(66879, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2207235, 0, 46879), -- -Unknown-
(70351, 1, 2, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2205169, 0, 46879), -- -Unknown-
(70351, 0, 1, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2204271, 0, 46879), -- -Unknown-
(70351, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2204271, 0, 46879), -- -Unknown-
(66997, 0, 1, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2206529, 0, 46879), -- -Unknown-
(66997, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2201799, 0, 46879), -- -Unknown-
(66825, 0, 2, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2205256, 0, 46879), -- -Unknown-
(66825, 0, 1, 31, 0, 0, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66825, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2205256, 0, 46879), -- -Unknown-
(68795, 0, 2, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2192635, 0, 46879), -- -Unknown-
(68795, 0, 1, 0, 429384, 193287, 2444, 2022, 0, 0, 0, 0, 0, 2224435, 0, 46879), -- -Unknown-
(68795, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2227086, 0, 46879), -- -Unknown-
(66115, 0, 5, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2192635, 0, 46879), -- -Unknown-
(66115, 0, 4, 3, 427107, 189260, 2444, 2022, 0, 0, 0, 0, 0, 2192674, 0, 46879), -- -Unknown-
(66115, 0, 3, 2, 427106, 185904, 2444, 2022, 0, 0, 0, 0, 0, 2170244, 0, 46879), -- -Unknown-
(66115, 0, 2, 1, 427109, 189262, 2444, 2022, 0, 0, 0, 0, 0, 2231844, 0, 46879), -- -Unknown-
(66115, 0, 1, 0, 427108, 189261, 2444, 2022, 0, 0, 0, 0, 0, 2192675, 0, 46879), -- -Unknown-
(66115, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2192674, 0, 46879), -- -Unknown-
(66114, 0, 2, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2196731, 0, 46879), -- -Unknown-
(66114, 0, 1, 0, 429819, 191768, 2444, 2022, 0, 0, 0, 0, 0, 2212533, 0, 46879), -- -Unknown-
(66114, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2192635, 0, 46879), -- -Unknown-
(70179, 0, 2, 32, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2242628, 0, 46879), -- -Unknown-
(70179, 0, 1, 0, 430094, 198511, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(70179, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2242628, 0, 46879), -- -Unknown-
(66001, 0, 6, 32, 0, 0, 2444, 2022, 0, 2, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66001, 2, 5, 3, 427562, 190211, 2444, 2022, 0, 2, 0, 98660, 0, 0, 0, 46879), -- -Unknown-
(66001, 1, 4, 3, 427562, 190211, 2444, 2022, 0, 0, 0, 98659, 0, 2198020, 0, 46879), -- -Unknown-
(66001, 0, 3, 3, 427562, 190211, 2444, 2022, 0, 0, 0, 98658, 0, 2199171, 0, 46879), -- -Unknown-
(66001, 0, 2, 1, 427836, 191888, 2444, 2022, 0, 0, 0, 0, 0, 2198020, 0, 46879), -- -Unknown-
(66001, 0, 1, 0, 427620, 190269, 2444, 2022, 0, 0, 0, 0, 0, 2199679, 0, 46879), -- -Unknown-
(66001, 0, 0, -1, 0, 0, 2444, 2022, 0, 0, 0, 0, 0, 2196731, 0, 46879); -- -Unknown-

UPDATE `quest_poi` SET `VerifiedBuild`=46879 WHERE (`QuestID`=66042 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66042 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66042 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=66000 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=66000 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=66000 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65999 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65999 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65999 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65998 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65998 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65998 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65998 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53435 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53435 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50606 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50604 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=50604 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50562 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=66931 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66931 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66931 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=68799 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=68799 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=68799 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=72481 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=72481 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=72481 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=72481 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=72481 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=72481 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=72481 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=72481 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=72481 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=68798 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=68798 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=68798 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=68798 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=68798 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=68798 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=68798 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=68798 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=68798 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=68798 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=68798 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=68798 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=68798 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=68798 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=68798 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=68798 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=68798 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=68798 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=68797 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=68797 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=68797 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66827 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=66827 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=66827 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=66827 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=66827 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=66827 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=66827 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=66827 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=66827 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=66827 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=66827 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=66827 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=66827 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=66827 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=66827 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=66827 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=66827 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=66827 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66827 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=66827 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=66827 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=66827 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=66827 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=66827 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=66827 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=66827 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=66827 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66827 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=68796 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=68796 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=68796 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=68796 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=68796 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65133 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65133 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=65133 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=65133 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=65133 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=65133 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=65133 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=65133 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=65133 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=65133 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=65133 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=65133 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=65133 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65133 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65120 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65120 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=65120 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=65120 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=65120 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=65120 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=65120 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=65120 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=65120 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=65120 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=65120 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=65120 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=65120 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65120 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65118 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65118 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=65118 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=65118 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=65118 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=65118 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=65118 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=65118 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=65118 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=65118 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=65118 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=65118 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=65118 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65118 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=70132 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=70132 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=70132 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=70132 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=67564 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=70061 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=70061 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=70061 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=70061 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=70061 AND `Idx1`=3 AND `Idx2`=11) OR (`QuestID`=70061 AND `Idx1`=3 AND `Idx2`=10) OR (`QuestID`=70061 AND `Idx1`=3 AND `Idx2`=9) OR (`QuestID`=70061 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=70061 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=70061 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=70061 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=70061 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=70061 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=70061 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=70061 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=70061 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=70061 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=70061 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=70061 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=70061 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=70061 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=70061 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=70061 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=70061 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=70061 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=70061 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=70061 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=70061 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=70061 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=70061 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=70058 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=70058 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=70058 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=70058 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=70058 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=70058 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=70058 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=70058 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=70058 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=70058 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=70058 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=70058 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=70058 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=70058 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=70058 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66879 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66879 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=70351 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=70351 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=70351 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66997 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66997 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66825 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66825 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=66825 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=66825 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=66825 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=66825 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=66825 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=66825 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=66825 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=66825 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=66825 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=66825 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=66825 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66825 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=68795 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=68795 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=68795 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66115 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=66115 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=66115 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=66115 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66115 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66115 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66114 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66114 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66114 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=70179 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=70179 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=70179 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=70179 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=70179 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=70179 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=70179 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=70179 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=70179 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=70179 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=70179 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=70179 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=70179 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66001 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=66001 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=66001 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=66001 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=66001 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66001 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66001 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(66931, 2, 0, 1488, -319, 330, 46879), -- -Unknown-
(66931, 1, 0, 1498, -88, 337, 46879), -- -Unknown-
(66931, 0, 0, 1508, -93, 337, 46879), -- -Unknown-
(68799, 2, 0, 2448, -1344, 363, 46879), -- -Unknown-
(68799, 1, 0, 2415, -1331, 360, 46879), -- -Unknown-
(68799, 0, 0, 1488, -319, 330, 46879), -- -Unknown-
(72481, 8, 0, 319, 1253, 0, 46879), -- -Unknown-
(72481, 7, 0, 1443, -348, 0, 46879), -- -Unknown-
(72481, 6, 0, 3550, -1177, 0, 46879), -- -Unknown-
(72481, 5, 0, 3182, 201, 0, 46879), -- -Unknown-
(72481, 4, 0, 885, 2806, 0, 46879), -- -Unknown-
(72481, 3, 0, 1792, 1308, 0, 46879), -- -Unknown-
(72481, 2, 0, 824, 923, 0, 46879), -- -Unknown-
(72481, 1, 0, 1600, -389, 0, 46879), -- -Unknown-
(72481, 0, 0, 2581, -1182, 0, 46879), -- -Unknown-
(68798, 6, 0, 2448, -1344, 363, 46879), -- -Unknown-
(68798, 5, 0, 2603, -1190, 322, 46879), -- -Unknown-
(68798, 4, 0, 2346, -1291, 0, 46879), -- -Unknown-
(68798, 3, 0, 2342, -1295, 348, 46879), -- -Unknown-
(68798, 2, 0, 2342, -1295, 348, 46879), -- -Unknown-
(68798, 1, 11, 2296, -1296, 0, 46879), -- -Unknown-
(68798, 1, 10, 2294, -1279, 0, 46879), -- -Unknown-
(68798, 1, 9, 2294, -1267, 0, 46879), -- -Unknown-
(68798, 1, 8, 2303, -1248, 0, 46879), -- -Unknown-
(68798, 1, 7, 2313, -1248, 0, 46879), -- -Unknown-
(68798, 1, 6, 2319, -1248, 0, 46879), -- -Unknown-
(68798, 1, 5, 2326, -1255, 0, 46879), -- -Unknown-
(68798, 1, 4, 2328, -1261, 0, 46879), -- -Unknown-
(68798, 1, 3, 2337, -1290, 0, 46879), -- -Unknown-
(68798, 1, 2, 2331, -1299, 0, 46879), -- -Unknown-
(68798, 1, 1, 2316, -1299, 0, 46879), -- -Unknown-
(68798, 1, 0, 2305, -1299, 0, 46879), -- -Unknown-
(68798, 0, 0, 2448, -1344, 363, 46879), -- -Unknown-
(68797, 2, 0, 2448, -1344, 363, 46879), -- -Unknown-
(68797, 1, 0, 2290, -1258, 350, 46879), -- -Unknown-
(68797, 0, 0, 2448, -1344, 363, 46879), -- -Unknown-
(66827, 8, 0, 1450, -270, 330, 46879), -- -Unknown-
(66827, 7, 0, 1837, -146, 113, 46879), -- -Unknown-
(66827, 6, 0, 1836, -155, 113, 46879), -- -Unknown-
(66827, 5, 0, 1832, -155, 113, 46879), -- -Unknown-
(66827, 4, 0, 1828, -154, 113, 46879), -- -Unknown-
(66827, 3, 5, 1861, -162, 113, 46879), -- -Unknown-
(66827, 3, 4, 1867, 12, 98, 46879), -- -Unknown-
(66827, 3, 3, 1903, 22, 95, 46879), -- -Unknown-
(66827, 3, 2, 1948, -84, 92, 46879), -- -Unknown-
(66827, 3, 1, 2024, -110, 92, 46879), -- -Unknown-
(66827, 3, 0, 1985, -203, 102, 46879), -- -Unknown-
(66827, 2, 6, 1984, -197, 118, 46879), -- -Unknown-
(66827, 2, 5, 1984, -197, 119, 46879), -- -Unknown-
(66827, 2, 4, 1868, -157, 124, 46879), -- -Unknown-
(66827, 2, 3, 1864, -48, 119, 46879), -- -Unknown-
(66827, 2, 2, 1864, -46, 116, 46879), -- -Unknown-
(66827, 2, 1, 1892, -3, 116, 46879), -- -Unknown-
(66827, 2, 0, 1985, -197, 120, 46879), -- -Unknown-
(66827, 1, 8, 1987, -177, 98, 46879), -- -Unknown-
(66827, 1, 7, 1916, -166, 89, 46879), -- -Unknown-
(66827, 1, 6, 1881, -148, 113, 46879), -- -Unknown-
(66827, 1, 5, 1850, -119, 108, 46879), -- -Unknown-
(66827, 1, 4, 1857, -93, 107, 46879), -- -Unknown-
(66827, 1, 3, 1889, -42, 100, 46879), -- -Unknown-
(66827, 1, 2, 2021, -113, 92, 46879), -- -Unknown-
(66827, 1, 1, 2035, -140, 93, 46879), -- -Unknown-
(66827, 1, 0, 2004, -177, 97, 46879), -- -Unknown-
(66827, 0, 0, 1837, -146, 113, 46879), -- -Unknown-
(68796, 4, 0, 1813, 55, 313, 46879), -- -Unknown-
(68796, 3, 0, 2414, -1174, 349, 46879), -- -Unknown-
(68796, 2, 0, 1822, 49, 313, 46879), -- -Unknown-
(68796, 1, 0, 1822, 49, 313, 46879), -- -Unknown-
(68796, 0, 0, 2448, -1344, 363, 46879), -- -Unknown-
(65133, 2, 0, 1813, 55, 313, 46879), -- -Unknown-
(65133, 1, 11, 1835, 26, 0, 46879), -- -Unknown-
(65133, 1, 10, 1791, 56, 0, 46879), -- -Unknown-
(65133, 1, 9, 1820, 104, 0, 46879), -- -Unknown-
(65133, 1, 8, 1861, 110, 0, 46879), -- -Unknown-
(65133, 1, 7, 2013, 135, 0, 46879), -- -Unknown-
(65133, 1, 6, 2062, 144, 0, 46879), -- -Unknown-
(65133, 1, 5, 2240, 155, 0, 46879), -- -Unknown-
(65133, 1, 4, 2271, 104, 0, 46879), -- -Unknown-
(65133, 1, 3, 2249, 68, 0, 46879), -- -Unknown-
(65133, 1, 2, 2205, 59, 0, 46879), -- -Unknown-
(65133, 1, 1, 2163, 54, 0, 46879), -- -Unknown-
(65133, 1, 0, 1870, 23, 0, 46879), -- -Unknown-
(65133, 0, 0, 2228, 69, 143, 46879), -- -Unknown-
(65120, 2, 0, 1813, 55, 313, 46879), -- -Unknown-
(65120, 1, 11, 1803, 45, 0, 46879), -- -Unknown-
(65120, 1, 10, 1816, 84, 0, 46879), -- -Unknown-
(65120, 1, 9, 1863, 103, 0, 46879), -- -Unknown-
(65120, 1, 8, 2158, 135, 0, 46879), -- -Unknown-
(65120, 1, 7, 2190, 135, 0, 46879), -- -Unknown-
(65120, 1, 6, 2249, 135, 0, 46879), -- -Unknown-
(65120, 1, 5, 2274, 105, 0, 46879), -- -Unknown-
(65120, 1, 4, 2274, 76, 0, 46879), -- -Unknown-
(65120, 1, 3, 2242, 67, 0, 46879), -- -Unknown-
(65120, 1, 2, 1952, 32, 0, 46879), -- -Unknown-
(65120, 1, 1, 1913, 30, 0, 46879), -- -Unknown-
(65120, 1, 0, 1860, 30, 0, 46879), -- -Unknown-
(65120, 0, 0, 2228, 69, 143, 46879), -- -Unknown-
(65118, 2, 0, 1813, 55, 313, 46879), -- -Unknown-
(65118, 1, 11, 1769, 42, 0, 46879), -- -Unknown-
(65118, 1, 10, 1760, 56, 0, 46879), -- -Unknown-
(65118, 1, 9, 1760, 78, 0, 46879), -- -Unknown-
(65118, 1, 8, 1820, 96, 0, 46879), -- -Unknown-
(65118, 1, 7, 1843, 98, 0, 46879), -- -Unknown-
(65118, 1, 6, 2255, 110, 0, 46879), -- -Unknown-
(65118, 1, 5, 2273, 110, 0, 46879), -- -Unknown-
(65118, 1, 4, 2292, 92, 0, 46879), -- -Unknown-
(65118, 1, 3, 2292, 59, 0, 46879), -- -Unknown-
(65118, 1, 2, 2272, 54, 0, 46879), -- -Unknown-
(65118, 1, 1, 1807, 31, 0, 46879), -- -Unknown-
(65118, 1, 0, 1786, 31, 0, 46879), -- -Unknown-
(65118, 0, 0, 2228, 69, 143, 46879), -- -Unknown-
(70132, 3, 0, 1818, 39, 313, 46879), -- -Unknown-
(70132, 2, 0, 1818, 39, 313, 46879), -- -Unknown-
(70132, 1, 0, 1818, 39, 313, 46879), -- -Unknown-
(70132, 0, 0, 1818, 39, 313, 46879), -- -Unknown-
(67564, 0, 0, 1523, -150, 332, 46879), -- -Unknown-
(70061, 5, 0, 1618, -306, 332, 46879), -- -Unknown-
(70061, 4, 2, 1504, -271, 227, 46879), -- -Unknown-
(70061, 4, 1, 1525, -201, 193, 46879), -- -Unknown-
(70061, 4, 0, 1590, -280, 259, 46879), -- -Unknown-
(70061, 3, 11, 1527, -295, 162, 46879), -- -Unknown-
(70061, 3, 10, 1516, -288, 196, 46879), -- -Unknown-
(70061, 3, 9, 1498, -256, 259, 46879), -- -Unknown-
(70061, 3, 8, 1504, -217, 318, 46879), -- -Unknown-
(70061, 3, 7, 1541, -192, 162, 46879), -- -Unknown-
(70061, 3, 6, 1550, -188, 278, 46879), -- -Unknown-
(70061, 3, 5, 1592, -211, 198, 46879), -- -Unknown-
(70061, 3, 4, 1605, -266, 241, 46879), -- -Unknown-
(70061, 3, 3, 1593, -278, 228, 46879), -- -Unknown-
(70061, 3, 2, 1577, -293, 326, 46879), -- -Unknown-
(70061, 3, 1, 1571, -298, 262, 46879), -- -Unknown-
(70061, 3, 0, 1555, -305, 162, 46879), -- -Unknown-
(70061, 2, 11, 1531, -300, 260, 46879), -- -Unknown-
(70061, 2, 10, 1502, -277, 259, 46879), -- -Unknown-
(70061, 2, 9, 1493, -252, 228, 46879), -- -Unknown-
(70061, 2, 8, 1491, -234, 259, 46879), -- -Unknown-
(70061, 2, 7, 1516, -204, 160, 46879), -- -Unknown-
(70061, 2, 6, 1543, -190, 305, 46879), -- -Unknown-
(70061, 2, 5, 1581, -200, 193, 46879), -- -Unknown-
(70061, 2, 4, 1605, -230, 192, 46879), -- -Unknown-
(70061, 2, 3, 1605, -256, 161, 46879), -- -Unknown-
(70061, 2, 2, 1591, -284, 193, 46879), -- -Unknown-
(70061, 2, 1, 1572, -298, 211, 46879), -- -Unknown-
(70061, 2, 0, 1534, -302, 196, 46879), -- -Unknown-
(70061, 1, 0, 1571, -219, 312, 46879), -- -Unknown-
(70061, 0, 0, 1499, -318, 330, 46879), -- -Unknown-
(70058, 4, 0, 1627, -123, 334, 46879), -- -Unknown-
(70058, 3, 0, 1577, -117, 332, 46879), -- -Unknown-
(70058, 2, 5, 1470, -226, 332, 46879), -- -Unknown-
(70058, 2, 4, 1438, -190, 332, 46879), -- -Unknown-
(70058, 2, 3, 1510, -118, 331, 46879), -- -Unknown-
(70058, 2, 2, 1568, -111, 330, 46879), -- -Unknown-
(70058, 2, 1, 1562, -171, 331, 46879), -- -Unknown-
(70058, 2, 0, 1512, -185, 332, 46879), -- -Unknown-
(70058, 1, 5, 1625, -291, 332, 46879), -- -Unknown-
(70058, 1, 4, 1616, -263, 332, 46879), -- -Unknown-
(70058, 1, 3, 1643, -191, 331, 46879), -- -Unknown-
(70058, 1, 2, 1693, -188, 330, 46879), -- -Unknown-
(70058, 1, 1, 1706, -219, 331, 46879), -- -Unknown-
(70058, 1, 0, 1660, -291, 332, 46879), -- -Unknown-
(70058, 0, 0, 1641, -247, 331, 46879), -- -Unknown-
(66879, 1, 0, 1441, -261, 330, 46879), -- -Unknown-
(66879, 0, 0, 2253, 396, 33, 46879), -- -Unknown-
(70351, 2, 0, 1450, -270, 330, 46879), -- -Unknown-
(70351, 1, 0, 1837, -146, 113, 46879), -- -Unknown-
(70351, 0, 0, 1837, -146, 113, 46879), -- -Unknown-
(66997, 1, 0, 1458, -278, 330, 46879), -- -Unknown-
(66997, 0, 0, 1996, 246, 95, 46879), -- -Unknown-
(66825, 2, 0, 1445, -284, 330, 46879), -- -Unknown-
(66825, 1, 11, 1421, -312, 0, 46879), -- -Unknown-
(66825, 1, 10, 1415, -296, 0, 46879), -- -Unknown-
(66825, 1, 9, 1421, -278, 0, 46879), -- -Unknown-
(66825, 1, 8, 1433, -266, 0, 46879), -- -Unknown-
(66825, 1, 7, 1447, -261, 0, 46879), -- -Unknown-
(66825, 1, 6, 1465, -260, 0, 46879), -- -Unknown-
(66825, 1, 5, 1477, -273, 0, 46879), -- -Unknown-
(66825, 1, 4, 1477, -292, 0, 46879), -- -Unknown-
(66825, 1, 3, 1472, -308, 0, 46879), -- -Unknown-
(66825, 1, 2, 1461, -318, 0, 46879), -- -Unknown-
(66825, 1, 1, 1448, -324, 0, 46879), -- -Unknown-
(66825, 1, 0, 1433, -320, 0, 46879), -- -Unknown-
(66825, 0, 0, 1445, -284, 330, 46879), -- -Unknown-
(68795, 2, 0, 1488, -319, 330, 46879), -- -Unknown-
(68795, 1, 0, 1804, -3, 312, 46879), -- -Unknown-
(68795, 0, 0, 1813, 55, 313, 46879), -- -Unknown-
(66115, 5, 0, 1488, -319, 330, 46879), -- -Unknown-
(66115, 4, 0, 1625, -354, 337, 46879), -- -Unknown-
(66115, 3, 0, 1717, -259, 337, 46879), -- -Unknown-
(66115, 2, 0, 1520, -82, 337, 46879), -- -Unknown-
(66115, 1, 0, 1433, -189, 337, 46879), -- -Unknown-
(66115, 0, 0, 1625, -354, 337, 46879), -- -Unknown-
(66114, 2, 0, 3722, 260, 70, 46879), -- -Unknown-
(66114, 1, 0, 1499, -318, 330, 46879), -- -Unknown-
(66114, 0, 0, 1488, -319, 330, 46879), -- -Unknown-
(70179, 2, 0, 3732, 312, 77, 46879), -- -Unknown-
(70179, 1, 10, 3611, 447, 254, 46879), -- -Unknown-
(70179, 1, 9, 3578, 580, 195, 46879), -- -Unknown-
(70179, 1, 8, 3547, 681, 198, 46879), -- -Unknown-
(70179, 1, 7, 3584, 725, 198, 46879), -- -Unknown-
(70179, 1, 6, 3622, 755, 213, 46879), -- -Unknown-
(70179, 1, 5, 3704, 691, 57, 46879), -- -Unknown-
(70179, 1, 4, 3738, 556, 148, 46879), -- -Unknown-
(70179, 1, 3, 3746, 511, 100, 46879), -- -Unknown-
(70179, 1, 2, 3748, 455, 98, 46879), -- -Unknown-
(70179, 1, 1, 3718, 374, 77, 46879), -- -Unknown-
(70179, 1, 0, 3659, 328, 28, 46879), -- -Unknown-
(70179, 0, 0, 3732, 312, 77, 46879), -- -Unknown-
(66001, 6, 0, 4053, 249, 54, 46879), -- -Unknown-
(66001, 5, 0, 4226, 116, 0, 46879), -- -Unknown-
(66001, 4, 0, 4223, 112, 54, 46879), -- -Unknown-
(66001, 3, 0, 3735, 267, 70, 46879), -- -Unknown-
(66001, 2, 0, 4223, 112, 54, 46879), -- -Unknown-
(66001, 1, 0, 4199, 168, 51, 46879), -- -Unknown-
(66001, 0, 0, 3722, 260, 69, 46879); -- -Unknown-

UPDATE `quest_poi_points` SET `VerifiedBuild`=46879 WHERE (`QuestID`=66042 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66042 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66042 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=66000 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=66000 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=66000 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=66000 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=66000 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=66000 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=66000 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=66000 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=66000 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=66000 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=66000 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=66000 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=66000 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=66000 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65999 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65999 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=65999 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=65999 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=65999 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=65999 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=65999 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=65999 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=65999 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=65999 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65999 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65998 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65998 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=65998 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=65998 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=65998 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=65998 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=65998 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65998 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65998 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=53435 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=53435 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50606 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50604 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=50604 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50562 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (66931 /*-Unknown-*/, 68799 /*-Unknown-*/, 72481 /*-Unknown-*/, 68798 /*-Unknown-*/, 68797 /*-Unknown-*/, 66827 /*-Unknown-*/, 68796 /*-Unknown-*/, 65133 /*-Unknown-*/, 65120 /*-Unknown-*/, 65118 /*-Unknown-*/, 70132 /*-Unknown-*/, 67564 /*-Unknown-*/, 70061 /*-Unknown-*/, 70058 /*-Unknown-*/, 66879 /*-Unknown-*/, 70351 /*-Unknown-*/, 66997 /*-Unknown-*/, 66825 /*-Unknown-*/, 68795 /*-Unknown-*/, 66115 /*-Unknown-*/, 66114 /*-Unknown-*/, 70179 /*-Unknown-*/, 66001 /*-Unknown-*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(66931, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(68799, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(72481, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(68798, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(68797, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66827, 1, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(68796, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(65133, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(65120, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(65118, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(70132, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(67564, 1, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(70061, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(70058, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66879, 1, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(70351, 1, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66997, 1, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66825, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(68795, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66115, 1, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66114, 1, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(70179, 1, 0, 0, 0, 0, 0, 0, 0, 46879), -- -Unknown-
(66001, 1, 25, 0, 0, 0, 0, 0, 0, 46879); -- -Unknown-


DELETE FROM `quest_request_items` WHERE `ID` IN (70058 /*-Unknown-*/, 70132 /*-Unknown-*/, 68798 /*-Unknown-*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(70058, 0, 0, 0, 0, 'Yes? Anything to help!', 0), -- -Unknown-
(70132, 0, 0, 0, 0, '<The Dwarf continues to look off into the distance, you notice water welling up in his eyes>', 46879), -- -Unknown-
(68798, 0, 0, 0, 0, 'Have you found the dragon glyph?', 46879); -- -Unknown-


DELETE FROM `creature_queststarter` WHERE (`id`=187290 AND `quest` IN (66931,68795,66115)) OR (`id`=193359 AND `quest` IN (68799,68798,68797)) OR (`id`=193411 AND `quest`=72481) OR (`id`=190866 AND `quest`=66827) OR (`id`=193287 AND `quest` IN (68796,65133,65120,65118)) OR (`id`=194076 AND `quest`=70132) OR (`id`=192498 AND `quest`=67564) OR (`id`=194174 AND `quest`=70061) OR (`id`=193955 AND `quest`=70058) OR (`id`=191176 AND `quest`=66879) OR (`id`=191012 AND `quest`=70351) OR (`id`=191174 AND `quest`=66997) OR (`id`=191025 AND `quest`=66825) OR (`id`=186795 AND `quest`=66114) OR (`id`=194525 AND `quest`=70179) OR (`id`=190171 AND `quest`=66001);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(187290, 66931, 46879), -- -Unknown- offered Alexstrasza the Life-Binder
(193359, 68799, 46879), -- -Unknown- offered Lord Andestrasz
(193411, 72481, 46879), -- -Unknown- offered Celormu
(193359, 68798, 46879), -- -Unknown- offered Lord Andestrasz
(193359, 68797, 46879), -- -Unknown- offered Lord Andestrasz
(190866, 66827, 46879), -- -Unknown- offered Akora
(193287, 68796, 46879), -- -Unknown- offered Lord Andestrasz
(193287, 65133, 46879), -- -Unknown- offered Lord Andestrasz
(193287, 65120, 46879), -- -Unknown- offered Lord Andestrasz
(193287, 65118, 46879), -- -Unknown- offered Lord Andestrasz
(194076, 70132, 46879), -- -Unknown- offered Veritistrasz
(192498, 67564, 46879), -- -Unknown- offered Haephesta
(194174, 70061, 46879), -- -Unknown- offered Amella
(193955, 70058, 46879), -- -Unknown- offered Lillistrasza
(191176, 66879, 46879), -- -Unknown- offered Dazakros
(191012, 70351, 46879), -- -Unknown- offered Akora
(191174, 66997, 46879), -- -Unknown- offered Vaeros
(191025, 66825, 46879), -- -Unknown- offered Lifecaller Tzadrak
(187290, 68795, 46879), -- -Unknown- offered Alexstrasza the Life-Binder
(187290, 66115, 46879), -- -Unknown- offered Alexstrasza the Life-Binder
(186795, 66114, 46879), -- -Unknown- offered Majordomo Selistra
(194525, 70179, 46879), -- -Unknown- offered Apprentice Caretaker Zefren
(190171, 66001, 46879); -- -Unknown- offered Ruby Egg Guardian


DELETE FROM `creature_questender` WHERE (`id`=187290 AND `quest` IN (68799,66114)) OR (`id`=193359 AND `quest` IN (68798,68797,68796)) OR (`id`=190866 AND `quest`=70351) OR (`id`=194076 AND `quest`=70132) OR (`id`=183141 AND `quest` IN (65133,65120,65118)) OR (`id`=193287 AND `quest`=68795) OR (`id`=192674 AND `quest`=70058) OR (`id`=191768 AND `quest`=70061) OR (`id`=189260 AND `quest`=66115) OR (`id`=191025 AND `quest`=66825) OR (`id`=186795 AND `quest`=66001) OR (`id`=190171 AND `quest` IN (65999,66000,65998));
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(187290, 68799, 46879), -- -Unknown- ended by Alexstrasza the Life-Binder
(193359, 68798, 46879), -- -Unknown- ended by Lord Andestrasz
(193359, 68797, 46879), -- -Unknown- ended by Lord Andestrasz
(193359, 68796, 46879), -- -Unknown- ended by Lord Andestrasz
(190866, 70351, 46879), -- -Unknown- ended by Akora
(194076, 70132, 46879), -- -Unknown- ended by Veritistrasz
(183141, 65133, 46879), -- -Unknown- ended by Celormu
(183141, 65120, 46879), -- -Unknown- ended by Celormu
(183141, 65118, 46879), -- -Unknown- ended by Celormu
(193287, 68795, 46879), -- -Unknown- ended by Lord Andestrasz
(192674, 70058, 46879), -- -Unknown- ended by Mahra Treebender
(191768, 70061, 46879), -- -Unknown- ended by Majordomo Selistra
(189260, 66115, 46879), -- -Unknown- ended by Zahkrana
(191025, 66825, 46879), -- -Unknown- ended by Lifecaller Tzadrak
(187290, 66114, 46879), -- -Unknown- ended by Alexstrasza the Life-Binder
(186795, 66001, 46879), -- -Unknown- ended by Majordomo Selistra
(190171, 65999, 46879), -- Red in Tooth and Claw ended by Ruby Egg Guardian
(190171, 66000, 46879), -- Library of Alexstrasza ended by Ruby Egg Guardian
(190171, 65998, 46879); -- Future of the Flights ended by Ruby Egg Guardian


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (190293,190292,190326,198191,190123,182086,182087,197223,197308,193477,193411,198115,196583,190839,193364,194432,193359,194201,194606,194605,194279,194248,194202,199684,194196,194607,194293,194274,194203,194204,194288,198060,194243,194246,194244,194247,198464,198623,191989,198624,198454,187745,189784,187393,193261,191619,184017,190273,193329,189090,187789,188695,190298,187738,190536,189450,189755,193756,191098,191292,191293,198301,191281,193753,199686,192168,190866,190868,190820,197704,194801,194800,197702,187110,187444,198275,198843,197703,198040,191795,193441,193436,190916,190914,190822,191297,193609,190912,190818,191254,190543,190852,193729,191296,192010,190917,193670,187389,190915,190918,190547,192026,192021,194805,199689,191490,193752,198125,198116,194872,186333,186332,191492,190042,189439,191031,190548,196753,183141,191315,194334,194335,194142,187363,194575,194159,194195,193994,194174,191179,194008,191280,190525,191881,186771,193061,193991,193995,189881,198605,198595,188280,193287,196109,184394,187290,195051,196774,187130,191982,191980,195050,191025,190295,192625,189260,191027,191013,191012,191174,191176,189261,187071,197166,186692,193988,193987,192305,193077,192096,188107,193737,185904,192574,193983,192674,192512,195052,193920,187073,189448,191126,192539,194474,189262,193097,191894,191893,188029,194478,198628,194479,198456,187072,193979,194099,191954,187955,187060,193955,192284,192498,193757,194076,198631,194818,192491,187292,191831,195125,187058,192178,184811,185489,193082,185490,192049,185484,195120,180377,185464,186146,186143,185485,187295,196827,193304,189637,187683,198615,189103,194821,189812,182439,188074,189814,189815,197211,198034,191765,192013,192069,191656,191653,191796,190660,191768,189121,194523,194524,191892,186795,191820,191891,190269,192186,198100,190090,186822));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(190293, 0, 0, 0, 2151, 46879),
(190292, 0, 0, 0, 2151, 46879),
(190326, 0, 0, 0, 2078, 46879),
(198191, 0, 0, 0, 2078, 46879),
(190123, 0, 0, 0, 2078, 46879),
(182086, 0, 0, 0, 2151, 46879),
(182087, 0, 0, 0, 2151, 46879),
(197223, 0, 0, 0, 181, 46879),
(197308, 0, 0, 0, 881, 46879),
(193477, 0, 0, 0, 2151, 46879),
(193411, 0, 0, 0, 2078, 46879),
(198115, 0, 0, 0, 2151, 46879),
(196583, 0, 0, 0, 2078, 46879),
(190839, 0, 0, 0, 2078, 46879),
(193364, 0, 0, 0, 2078, 46879),
(194432, 0, 0, 0, 2078, 46879),
(193359, 0, 0, 0, 2078, 46879),
(194201, 0, 0, 0, 2151, 46879),
(194606, 0, 0, 0, 2078, 46879),
(194605, 0, 0, 0, 2078, 46879),
(194279, 0, 0, 0, 2078, 46879),
(194248, 0, 0, 0, 2078, 46879),
(194202, 0, 0, 0, 2151, 46879),
(199684, 0, 0, 0, 2151, 46879),
(194196, 0, 0, 0, 2151, 46879),
(194607, 0, 0, 0, 2078, 46879),
(194293, 0, 0, 0, 2078, 46879),
(194274, 0, 0, 0, 2078, 46879),
(194203, 0, 0, 0, 2151, 46879),
(194204, 0, 0, 0, 2151, 46879),
(194288, 0, 0, 0, 2078, 46879),
(198060, 0, 0, 0, 2151, 46879),
(194243, 0, 0, 0, 2078, 46879),
(194246, 0, 0, 0, 2078, 46879),
(194244, 0, 0, 0, 2078, 46879),
(194247, 0, 0, 0, 2078, 46879),
(198464, 0, 0, 0, 2424, 46879),
(198623, 0, 0, 0, 2078, 46879),
(191989, 0, 0, 0, 2078, 46879),
(198624, 0, 0, 0, 2078, 46879),
(198454, 0, 0, 0, 2078, 46879),
(187745, 0, 0, 0, 2284, 46879),
(189784, 0, 0, 0, 2284, 46879),
(187393, 0, 0, 0, 2284, 46879),
(193261, 0, 0, 0, 2284, 46879),
(191619, 0, 0, 0, 2151, 46879),
(184017, 0, 0, 0, 2151, 46879),
(190273, 0, 0, 0, 2284, 46879),
(193329, 0, 0, 0, 2284, 46879),
(189090, 0, 0, 0, 2284, 46879),
(187789, 0, 0, 0, 2078, 46879),
(188695, 0, 0, 0, 2078, 46879),
(190298, 0, 0, 0, 2078, 46879),
(187738, 0, 0, 0, 2078, 46879),
(190536, 0, 0, 0, 2295, 46879),
(189450, 0, 0, 0, 2295, 46879),
(189755, 0, 0, 0, 2295, 46879),
(193756, 0, 0, 0, 81, 46879),
(191098, 0, 0, 0, 2295, 46879),
(191292, 0, 0, 0, 2295, 46879),
(191293, 0, 0, 0, 2295, 46879),
(198301, 0, 0, 0, 2057, 46879),
(191281, 0, 0, 0, 2295, 46879),
(193753, 0, 0, 0, 2466, 46879),
(199686, 0, 0, 0, 181, 46879),
(192168, 0, 0, 0, 2151, 46879),
(190866, 0, 0, 0, 2295, 46879),
(190868, 0, 0, 0, 2295, 46879),
(190820, 0, 0, 0, 2295, 46879),
(197704, 0, 0, 0, 2151, 46879),
(194801, 0, 0, 0, 2295, 46879),
(194800, 0, 0, 0, 2295, 46879),
(197702, 0, 0, 0, 2456, 46879),
(187110, 0, 0, 0, 2279, 46879),
(187444, 0, 0, 0, 2078, 46879),
(198275, 0, 0, 0, 2151, 46879),
(198843, 0, 0, 0, 883, 46879),
(197703, 0, 0, 0, 2276, 46879),
(198040, 0, 0, 0, 2296, 46879),
(191795, 0, 0, 0, 2151, 46879),
(193441, 0, 0, 0, 81, 46879),
(193436, 0, 0, 0, 2466, 46879),
(190916, 0, 0, 0, 2295, 46879),
(190914, 0, 0, 0, 2295, 46879),
(190822, 0, 0, 0, 2295, 46879),
(191297, 0, 0, 0, 2295, 46879),
(193609, 0, 0, 0, 2466, 46879),
(190912, 0, 0, 0, 2295, 46879),
(190818, 0, 0, 0, 2295, 46879),
(191254, 0, 0, 0, 2295, 46879),
(190543, 0, 0, 0, 2295, 46879),
(190852, 0, 0, 0, 2295, 46879),
(193729, 0, 0, 0, 2466, 46879),
(191296, 0, 0, 0, 2295, 46879),
(192010, 0, 0, 0, 2151, 46879),
(190917, 0, 0, 0, 2295, 46879),
(193670, 0, 0, 0, 2295, 46879),
(187389, 0, 0, 0, 2295, 46879),
(190915, 0, 0, 0, 2295, 46879),
(190918, 0, 0, 0, 2295, 46879),
(190547, 0, 0, 0, 2295, 46879),
(192026, 0, 0, 0, 2151, 46879),
(192021, 0, 0, 0, 2151, 46879),
(194805, 0, 0, 0, 2295, 46879),
(199689, 0, 0, 0, 2078, 46879),
(191490, 0, 0, 0, 2265, 46879),
(193752, 0, 0, 0, 2466, 46879),
(198125, 0, 0, 0, 2309, 46879),
(198116, 0, 0, 0, 2151, 46879),
(194872, 0, 0, 0, 2078, 46879),
(186333, 0, 0, 0, 2265, 46879),
(186332, 0, 0, 0, 2265, 46879),
(191492, 0, 0, 0, 2265, 46879),
(190042, 0, 0, 0, 2265, 46879),
(189439, 0, 0, 0, 81, 46879),
(191031, 0, 0, 0, 2295, 46879),
(190548, 0, 0, 0, 2295, 46879),
(196753, 0, 0, 0, 2295, 46879),
(183141, 0, 0, 0, 2296, 46879),
(191315, 0, 0, 0, 2279, 46879),
(194334, 0, 0, 0, 2151, 46879),
(194335, 0, 0, 0, 2296, 46879),
(194142, 0, 0, 0, 2296, 46879),
(187363, 0, 0, 0, 2151, 46879),
(194575, 0, 0, 0, 2151, 46879),
(194159, 0, 0, 0, 2151, 46879),
(194195, 0, 0, 0, 2151, 46879),
(193994, 0, 0, 0, 2296, 46879),
(194174, 0, 0, 0, 2151, 46879),
(191179, 0, 0, 0, 2151, 46879),
(194008, 0, 0, 0, 2296, 46879),
(191280, 0, 0, 0, 2293, 46879),
(190525, 0, 0, 0, 2295, 46879),
(191881, 0, 0, 0, 2296, 46879),
(186771, 0, 0, 0, 2151, 46879),
(193061, 0, 0, 0, 2078, 46879),
(193991, 0, 0, 0, 2296, 46879),
(193995, 0, 0, 0, 2296, 46879),
(189881, 0, 0, 0, 2151, 46879),
(198605, 0, 0, 0, 2296, 46879),
(198595, 0, 0, 0, 2296, 46879),
(188280, 0, 0, 0, 81, 46879),
(193287, 0, 0, 0, 2151, 46879),
(196109, 0, 0, 0, 2151, 46879),
(184394, 0, 0, 0, 2078, 46879),
(187290, 0, 0, 0, 2151, 46879),
(195051, 0, 0, 0, 2151, 46879),
(196774, 0, 0, 0, 2296, 46879),
(187130, 0, 0, 0, 2151, 46879),
(191982, 0, 0, 0, 2151, 46879),
(191980, 0, 0, 0, 2151, 46879),
(195050, 0, 0, 0, 2151, 46879),
(191025, 0, 0, 0, 2296, 46879),
(190295, 0, 0, 0, 2151, 46879),
(192625, 0, 0, 0, 2456, 46879),
(189260, 0, 0, 0, 2151, 46879),
(191027, 0, 0, 0, 2296, 46879),
(191013, 0, 0, 0, 2295, 46879),
(191012, 0, 0, 0, 2295, 46879),
(191174, 0, 0, 0, 2295, 46879),
(191176, 0, 0, 0, 2293, 46879),
(189261, 0, 0, 0, 2151, 46879),
(187071, 0, 0, 0, 2456, 46879),
(197166, 0, 0, 0, 2296, 46879),
(186692, 0, 0, 0, 2151, 46879),
(193988, 0, 0, 0, 2296, 46879),
(193987, 0, 0, 0, 2296, 46879),
(192305, 0, 0, 0, 2152, 46879),
(193077, 0, 0, 0, 2151, 46879),
(192096, 0, 0, 0, 2151, 46879),
(188107, 0, 0, 0, 2078, 46879),
(193737, 0, 0, 0, 2151, 46879),
(185904, 0, 0, 0, 2151, 46879),
(192574, 0, 0, 0, 2151, 46879),
(193983, 0, 0, 0, 2151, 46879),
(192674, 0, 0, 0, 2151, 46879),
(192512, 0, 0, 0, 2151, 46879),
(195052, 0, 0, 0, 2151, 46879),
(193920, 0, 0, 0, 2151, 46879),
(187073, 0, 0, 0, 2151, 46879),
(189448, 0, 0, 0, 2078, 46879),
(191126, 0, 0, 0, 2456, 46879),
(192539, 0, 0, 0, 2151, 46879),
(194474, 0, 0, 0, 2296, 46879),
(189262, 0, 0, 0, 2151, 46879),
(193097, 0, 0, 0, 2295, 46879),
(191894, 0, 0, 0, 2151, 46879),
(191893, 0, 0, 0, 2151, 46879),
(188029, 0, 0, 0, 81, 46879),
(194478, 0, 0, 0, 2296, 46879),
(198628, 0, 0, 0, 2078, 46879),
(194479, 0, 0, 0, 81, 46879),
(198456, 0, 0, 0, 2078, 46879),
(187072, 0, 0, 0, 2456, 46879),
(193979, 0, 0, 0, 2151, 46879),
(194099, 0, 0, 0, 2151, 46879),
(191954, 0, 0, 0, 2151, 46879),
(187955, 0, 0, 0, 2151, 46879),
(187060, 0, 0, 0, 2456, 46879),
(193955, 0, 0, 0, 2296, 46879),
(192284, 0, 0, 0, 2078, 46879),
(192498, 0, 0, 0, 2151, 46879),
(193757, 0, 0, 0, 2151, 46879),
(194076, 0, 0, 0, 2078, 46879),
(198631, 0, 0, 0, 2078, 46879),
(194818, 0, 0, 0, 2078, 46879),
(192491, 0, 0, 0, 2151, 46879),
(187292, 0, 0, 0, 2151, 46879),
(191831, 0, 0, 0, 2151, 46879),
(195125, 0, 0, 0, 2151, 46879),
(187058, 0, 0, 0, 883, 46879),
(192178, 0, 0, 0, 2151, 46879),
(184811, 0, 0, 0, 2151, 46879),
(185489, 0, 0, 0, 2151, 46879),
(193082, 0, 0, 0, 2151, 46879),
(185490, 0, 0, 0, 2151, 46879),
(192049, 0, 0, 0, 371, 46879),
(185484, 0, 0, 0, 2078, 46879),
(195120, 0, 0, 0, 2151, 46879),
(180377, 0, 0, 0, 2078, 46879),
(185464, 0, 0, 0, 2078, 46879),
(186146, 0, 0, 0, 2078, 46879),
(186143, 0, 0, 0, 2078, 46879),
(185485, 0, 0, 0, 2078, 46879),
(187295, 0, 0, 0, 2151, 46879),
(196827, 0, 0, 0, 2527, 46879),
(193304, 0, 0, 0, 2527, 46879),
(189637, 0, 0, 0, 81, 46879),
(187683, 0, 0, 0, 2151, 46879),
(198615, 0, 0, 0, 2078, 46879),
(189103, 0, 0, 0, 371, 46879),
(194821, 0, 0, 0, 2078, 46879),
(189812, 0, 0, 0, 2527, 46879),
(182439, 0, 0, 0, 2527, 46879),
(188074, 0, 0, 0, 2527, 46879),
(189814, 0, 0, 0, 2527, 46879),
(189815, 0, 0, 0, 2527, 46879),
(197211, 0, 0, 0, 2527, 46879),
(198034, 0, 0, 0, 2151, 46879),
(191765, 0, 0, 0, 2078, 46879),
(192013, 0, 0, 0, 371, 46879),
(192069, 0, 0, 0, 371, 46879),
(191656, 0, 0, 0, 2151, 46879),
(191653, 0, 0, 0, 2151, 46879),
(191796, 0, 0, 0, 81, 46879),
(190660, 0, 0, 0, 2306, 46879),
(191768, 0, 0, 0, 2151, 46879),
(189121, 0, 0, 0, 371, 46879),
(194523, 0, 0, 0, 2272, 46879),
(194524, 0, 0, 0, 2272, 46879);

INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(191892, 0, 0, 0, 2285, 46879),
(186795, 0, 0, 0, 2151, 46879),
(191820, 0, 0, 0, 2151, 46879),
(191891, 0, 0, 0, 2285, 46879),
(190269, 0, 0, 0, 2285, 46879),
(192186, 0, 0, 0, 2151, 46879),
(198100, 0, 0, 0, 2151, 46879),
(190090, 0, 0, 0, 2285, 46879),
(186822, 0, 0, 0, 2151, 46879);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46879 WHERE (`DifficultyID`=0 AND `Entry` IN (62822,62821,198618,194972,4075,61366,187442,189703,189093,143622,68806,186577,192149,189307,191618,191645,191830,187194,184812,15475,61319,191554,193217,189122,192103,192059,191792,191812,191809,194517,190211,194525,191553,190155,191628,192137,191629,192181,191818,191625,191817,188667,192151,186573,188372,180701,193000,190080,198619,186833,179965,191904,186836,195915,194820,192182,190013,186829,191624,191886,195917,186825,3300,186823,193001,186684,188666,186834,190171));

DELETE FROM `creature_model_info` WHERE `DisplayID` IN (108822, 107052, 103503, 103815, 109264, 104148, 104145, 103048, 108905, 108201, 103794, 108178, 108179, 108559, 108471, 108404, 108644, 108643, 108427, 108405, 108421, 101438, 108409, 108420, 108431, 108424, 108428, 108425, 108429, 106688, 103563, 110356, 110357, 107097, 108811, 102507, 108199, 108173, 107154, 102067, 107439, 108296, 102064, 104474, 107282, 109999, 109959, 109997, 108691, 108690, 110000, 102860, 106144, 109961, 109998, 110470, 103837, 103836, 104674, 104323, 101643, 107280, 107444, 107366, 107279, 107425, 104344, 103839, 107443, 107695, 104475, 109612, 103967, 102137, 104336, 102660, 102709, 110503, 107567, 104647, 109912, 107568, 107562, 107564, 107474, 104080, 110473, 102779, 110474, 104332, 109617, 108170, 104149, 103228, 108457, 108458, 102692, 102693, 109830, 105528, 104151, 102801, 110456, 108061, 108363, 108364, 110256, 110250, 110457, 110453, 104722, 108165, 102034, 104147, 104335, 110455, 109850, 102667, 103515, 102721, 102708, 102662, 110451, 102664, 102646, 102676, 102650, 110882, 102665, 102808, 102658, 108069, 108362, 108361, 108066, 102680, 109615, 110454, 110043, 107926, 107950, 105602, 104200, 102774, 102677, 109616, 100701, 110458, 107889, 108588, 102690, 100702, 102663, 102684, 108589, 110459, 109608, 109972, 102681, 110469, 110475, 110468, 110471, 102685, 108383, 102712, 107204, 104090, 104082, 104089, 104091, 110472, 104081, 108297, 107747, 105794, 102699, 102751, 104675, 103323, 106610, 103321, 106820, 103324, 103281, 103413, 103425, 103370, 107220, 107218, 107222, 106636, 104625, 104629, 106623, 104628, 104627, 78833, 106674, 104634, 103368, 104632, 104631, 104531, 104530, 108322, 102644, 102586, 102564, 102585, 105450, 106707, 105441, 104516, 104519, 102971, 107678, 107050, 102890, 102972, 109447, 102892, 102893, 102888, 102970, 107049);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(108822, 0.949999988079071044, 1.424999952316284179, 0, 46879),
(107052, 12.59944057464599609, 5.199999809265136718, 0, 46879),
(103503, 1.343548059463500976, 4.02500009536743164, 0, 46879),
(103815, 1.343548059463500976, 4.02500009536743164, 0, 46879),
(109264, 4.53795623779296875, 6, 0, 46879),
(104148, 4.69545602798461914, 3.40000009536743164, 0, 46879),
(104145, 4.69545602798461914, 3.40000009536743164, 0, 46879),
(103048, 0.210234180092811584, 0, 0, 46879),
(108905, 3.019728899002075195, 2.5, 0, 46879),
(108201, 0.305999994277954101, 1.5, 0, 46879),
(103794, 1.584961533546447753, 2.099999904632568359, 0, 46879),
(108178, 0.421299993991851806, 1.65000009536743164, 0, 46879),
(108179, 0.421299993991851806, 1.65000009536743164, 0, 46879),
(108559, 0.347222000360488891, 1.5, 0, 46879),
(108471, 0.208000004291534423, 1.5, 0, 46879),
(108404, 0.236000001430511474, 1.5, 0, 46879),
(108644, 0.347222000360488891, 1.5, 0, 46879),
(108643, 0.305999994277954101, 1.5, 0, 46879),
(108427, 0.5, 0.75, 0, 46879),
(108405, 0.305999994277954101, 1.5, 0, 46879),
(108421, 1, 1.5, 0, 46879),
(101438, 0.733282029628753662, 1.60000002384185791, 0, 46879),
(108409, 0.347222000360488891, 1.5, 0, 46879),
(108420, 0.698000013828277587, 3, 0, 46879),
(108431, 0.5, 0.75, 0, 46879),
(108424, 0.5, 0.75, 0, 46879),
(108428, 0.5, 0.75, 0, 46879),
(108425, 0.5, 0.75, 0, 46879),
(108429, 0.5, 0.75, 0, 46879),
(106688, 1.835199952125549316, 4.800000190734863281, 0, 46879),
(103563, 2.571508646011352539, 3.40000009536743164, 0, 46879),
(110356, 0.347222000360488891, 1.5, 0, 46879),
(110357, 0.347222000360488891, 1.5, 0, 46879),
(107097, 0.388999998569488525, 1.5, 0, 46879),
(108811, 0.305999994277954101, 1.5, 0, 46879),
(102507, 2.330963134765625, 5.5, 0, 46879),
(108199, 4.681146621704101562, 0, 0, 46879),
(108173, 0.449999988079071044, 4.049999713897705078, 0, 46879),
(107154, 0.382999986410140991, 1.5, 0, 46879),
(102067, 0.448296070098876953, 0.300000011920928955, 0, 46879),
(107439, 0.733913421630859375, 0, 0, 46879),
(108296, 0.226897835731506347, 0.300000011920928955, 0, 46879),
(102064, 1.404158830642700195, 1, 0, 46879),
(104474, 0.210000008344650268, 0.60000002384185791, 0, 46879),
(107282, 0.382999986410140991, 1.5, 0, 46879),
(109999, 0.305999994277954101, 1.5, 0, 46879),
(109959, 0.382999986410140991, 1.5, 0, 46879),
(109997, 0.208000004291534423, 1.5, 0, 46879),
(108691, 0.372000008821487426, 1.5, 0, 46879),
(108690, 0.372000008821487426, 1.5, 0, 46879),
(110000, 0.305999994277954101, 1.5, 0, 46879),
(102860, 4.368913650512695312, 3, 0, 46879),
(106144, 0.722000002861022949, 2, 0, 46879),
(109961, 0.382999986410140991, 1.5, 0, 46879),
(109998, 0.305999994277954101, 1.5, 0, 46879),
(110470, 2.106381893157958984, 1.80000007152557373, 0, 46879),
(103837, 0.699999988079071044, 0.875, 0, 46879),
(103836, 0.699999988079071044, 0.875, 0, 46879),
(104674, 0.240191161632537841, 0, 0, 46879),
(104323, 1.132115364074707031, 1.5, 0, 46879),
(101643, 1.05910801887512207, 0, 0, 46879),
(107280, 0.382999986410140991, 1.5, 0, 46879),
(107444, 0.396038770675659179, 0, 0, 46879),
(107366, 0.670858979225158691, 0, 0, 46879),
(107279, 0.382999986410140991, 1.5, 0, 46879),
(107425, 1.046193242073059082, 0, 0, 46879),
(104344, 1.132115364074707031, 1.5, 0, 46879),
(103839, 0.699999988079071044, 0.875, 0, 46879),
(107443, 0.444447129964828491, 0, 0, 46879),
(107695, 0.305999994277954101, 1.5, 0, 46879),
(104475, 0.210000008344650268, 0.60000002384185791, 0, 46879),
(109612, 1.47174990177154541, 1.949999928474426269, 0, 46879),
(103967, 1.305864214897155761, 0.280000001192092895, 0, 46879),
(102137, 1.05910801887512207, 0, 0, 46879),
(104336, 1.132115364074707031, 1.5, 0, 46879),
(102660, 0.905692279338836669, 1.20000004768371582, 0, 46879),
(102709, 1.347217321395874023, 1.785000085830688476, 0, 46879),
(110503, 0.300000011920928955, 1, 0, 46879),
(107567, 0.382999986410140991, 1.5, 0, 46879),
(104647, 0.647260427474975585, 1.5, 0, 46879),
(109912, 0.353898614645004272, 0, 0, 46879),
(107568, 0.305999994277954101, 1.5, 0, 46879),
(107562, 0.382999986410140991, 1.5, 0, 46879),
(107564, 0.388999998569488525, 1.5, 0, 46879),
(107474, 0.305999994277954101, 1.5, 0, 46879),
(104080, 0.905335307121276855, 1.5, 0, 46879),
(110473, 2.106381893157958984, 1.80000007152557373, 0, 46879),
(102779, 0.905692279338836669, 1.20000004768371582, 0, 46879),
(110474, 2.106381893157958984, 1.80000007152557373, 0, 46879),
(104332, 1.132115364074707031, 1.5, 0, 46879),
(109617, 1.449688196182250976, 4.342974662780761718, 0, 46879),
(108170, 0.421299993991851806, 1.65000009536743164, 0, 46879),
(104149, 4.69545602798461914, 3.40000009536743164, 0, 46879),
(103228, 2.768550872802734375, 3, 0, 46879),
(108457, 0.208000004291534423, 1.5, 0, 46879),
(108458, 0.382999986410140991, 1.5, 0, 46879),
(102692, 1.47174990177154541, 1.949999928474426269, 0, 46879),
(102693, 1.47174990177154541, 1.949999928474426269, 0, 46879),
(109830, 1.85866093635559082, 0.899999976158142089, 0, 46879),
(105528, 1.20000004768371582, 10.80000019073486328, 0, 46879),
(104151, 4.69545602798461914, 3.40000009536743164, 0, 46879),
(102801, 1.584961533546447753, 2.099999904632568359, 0, 46879),
(110456, 2.106381893157958984, 1.80000007152557373, 0, 46879),
(108061, 0.305999994277954101, 1.5, 0, 46879),
(108363, 0.382999986410140991, 1.5, 0, 46879),
(108364, 0.382999986410140991, 1.5, 0, 46879),
(110256, 0.382999986410140991, 1.5, 0, 46879),
(110250, 0.382999986410140991, 1.5, 0, 46879),
(110457, 2.106381893157958984, 1.80000007152557373, 0, 46879),
(110453, 2.106381893157958984, 1.80000007152557373, 0, 46879),
(104722, 0.224760815501213073, 0, 0, 46879),
(108165, 0.42790001630783081, 1.65000009536743164, 0, 46879),
(102034, 1, 1.5, 0, 46879),
(104147, 4.69545602798461914, 3.40000009536743164, 0, 46879),
(104335, 1.132115364074707031, 1.5, 0, 46879),
(110455, 2.106381893157958984, 1.80000007152557373, 0, 46879),
(109850, 0.421299993991851806, 1.65000009536743164, 0, 46879),
(102667, 1.132115364074707031, 1.5, 0, 46879),
(103515, 1.47174990177154541, 1.949999928474426269, 0, 46879),
(102721, 1.584961533546447753, 2.099999904632568359, 0, 46879),
(102708, 1.584961533546447753, 2.099999904632568359, 0, 46879),
(102662, 1.343548059463500976, 4.02500009536743164, 0, 46879),
(110451, 2.106381893157958984, 1.80000007152557373, 0, 46879),
(102664, 1.343548059463500976, 4.02500009536743164, 0, 46879),
(102646, 1.132115364074707031, 1.5, 0, 46879),
(102676, 1.47174990177154541, 1.949999928474426269, 0, 46879),
(102650, 1.343548059463500976, 4.02500009536743164, 0, 46879),
(110882, 1.47174990177154541, 1.949999928474426269, 0, 46879),
(102665, 1.343548059463500976, 4.02500009536743164, 0, 46879),
(102808, 1.584961533546447753, 2.099999904632568359, 0, 46879),
(102658, 1.132115364074707031, 1.5, 0, 46879),
(108069, 1.20000004768371582, 1.80000007152557373, 0, 46879),
(108362, 0.382999986410140991, 1.5, 0, 46879),
(108361, 0.382999986410140991, 1.5, 0, 46879),
(108066, 1.20000004768371582, 1.80000007152557373, 0, 46879),
(102680, 1.746612310409545898, 5.232499599456787109, 0, 46879),
(109615, 0.699999988079071044, 6.299999713897705078, 0, 46879),
(110454, 2.106381893157958984, 1.80000007152557373, 0, 46879),
(110043, 1.584961533546447753, 2.099999904632568359, 0, 46879),
(107926, 0.305999994277954101, 1.5, 0, 46879),
(107950, 0.698000013828277587, 3, 0, 46879),
(105602, 0.500797629356384277, 1, 0, 46879),
(104200, 1.132115364074707031, 1.5, 0, 46879),
(102774, 0.905692279338836669, 1.20000004768371582, 0, 46879),
(102677, 1.47174990177154541, 1.949999928474426269, 0, 46879),
(109616, 1.584961533546447753, 2.099999904632568359, 0, 46879),
(100701, 0.513083457946777343, 2, 0, 46879),
(110458, 2.106381893157958984, 1.80000007152557373, 0, 46879),
(107889, 0.305999994277954101, 1.5, 0, 46879),
(108588, 0.305999994277954101, 1.5, 0, 46879),
(102690, 1.47174990177154541, 1.949999928474426269, 0, 46879),
(100702, 0.513083457946777343, 2, 0, 46879),
(102663, 1.343548059463500976, 4.02500009536743164, 0, 46879),
(102684, 1.47174990177154541, 1.949999928474426269, 0, 46879),
(108589, 0.388999998569488525, 1.5, 0, 46879),
(110459, 2.106381893157958984, 1.80000007152557373, 0, 46879),
(109608, 1.880967140197753906, 5.634999752044677734, 0, 46879),
(109972, 1.930850028991699218, 1.65000009536743164, 0, 46879),
(102681, 1.746612310409545898, 5.232499599456787109, 0, 46879),
(110469, 2.106381893157958984, 1.80000007152557373, 0, 46879),
(110475, 2.106381893157958984, 1.80000007152557373, 0, 46879),
(110468, 2.106381893157958984, 1.80000007152557373, 0, 46879),
(110471, 2.106381893157958984, 1.80000007152557373, 0, 46879),
(102685, 1.47174990177154541, 1.949999928474426269, 0, 46879),
(108383, 0.347000002861022949, 1.5, 0, 46879),
(102712, 1.880967140197753906, 5.634999752044677734, 0, 46879),
(107204, 1.10000002384185791, 1.65000009536743164, 0, 46879),
(104090, 0.905335307121276855, 1.5, 0, 46879),
(104082, 0.905335307121276855, 1.5, 0, 46879),
(104089, 0.905335307121276855, 1.5, 0, 46879),
(104091, 0.905335307121276855, 1.5, 0, 46879),
(110472, 2.106381893157958984, 1.80000007152557373, 0, 46879),
(104081, 0.905335307121276855, 1.5, 0, 46879),
(108297, 0.226897835731506347, 0.300000011920928955, 0, 46879),
(107747, 1, 1.5, 0, 46879),
(105794, 1.766154885292053222, 3.899999856948852539, 0, 46879),
(102699, 1.47174990177154541, 1.949999928474426269, 0, 46879),
(102751, 2.106381893157958984, 1.80000007152557373, 0, 46879),
(104675, 0.240191161632537841, 0, 0, 46879),
(103323, 1.339599251747131347, 1.75, 0, 46879),
(106610, 0.243853539228439331, 1, 0, 46879),
(103321, 1.339599251747131347, 1.75, 0, 46879),
(106820, 1.181255698204040527, 0.840000033378601074, 0, 46879),
(103324, 1.339599251747131347, 1.75, 0, 46879),
(103281, 0.843754053115844726, 0.60000002384185791, 0, 46879),
(103413, 1.265631079673767089, 0.900000035762786865, 0, 46879),
(103425, 2.105084657669067382, 2.75, 0, 46879),
(103370, 1.535885572433471679, 1, 0, 46879),
(107220, 0.667008459568023681, 2.599999904632568359, 0, 46879),
(107218, 0.667008459568023681, 2.599999904632568359, 0, 46879),
(107222, 0.667008459568023681, 2.599999904632568359, 0, 46879),
(106636, 0.160127446055412292, 0, 0, 46879),
(104625, 1.535885572433471679, 1, 0, 46879),
(104629, 1.535885572433471679, 1, 0, 46879),
(106623, 0.353293031454086303, 0.240000009536743164, 0, 46879),
(104628, 1.535885572433471679, 1, 0, 46879),
(104627, 1.535885572433471679, 1, 0, 46879),
(78833, 0.383581817150115966, 1.5, 0, 46879),
(106674, 0.149840533733367919, 0, 0, 46879),
(104634, 1.535885572433471679, 1, 0, 46879),
(103368, 1.535885572433471679, 1, 0, 46879),
(104632, 1.535885572433471679, 1, 0, 46879),
(104631, 1.535885572433471679, 1, 0, 46879),
(104531, 0.220635652542114257, 0.200000002980232238, 0, 46879),
(104530, 0.220635652542114257, 0.200000002980232238, 0, 46879),
(108322, 0.296668052673339843, 0.699999988079071044, 0, 46879),
(102644, 2.43602609634399414, 2.099999904632568359, 0, 46879),
(102586, 1.740018606185913085, 1.5, 0, 46879),
(102564, 2.966680288314819335, 7, 0, 46879),
(102585, 1.740018606185913085, 1.5, 0, 46879),
(105450, 1.379404306411743164, 0, 0, 46879),
(106707, 0.599362134933471679, 0, 0, 46879),
(105441, 1.01156318187713623, 0, 0, 46879),
(104516, 0.210000008344650268, 0.300000011920928955, 0, 46879),
(104519, 0.210000008344650268, 0.300000011920928955, 0, 46879),
(102971, 0.698000013828277587, 3, 0, 46879),
(107678, 0.80699998140335083, 2.20000004768371582, 0, 46879),
(107050, 0.722000002861022949, 3, 0, 46879),
(102890, 0.305999994277954101, 1.5, 0, 46879),
(102972, 0.698000013828277587, 3, 0, 46879),
(109447, 0.80699998140335083, 2.20000004768371582, 0, 46879),
(102892, 0.388999998569488525, 1.5, 0, 46879),
(102893, 0.388999998569488525, 1.5, 0, 46879),
(102888, 0.382999986410140991, 1.5, 0, 46879),
(102970, 0.305999994277954101, 1.5, 0, 46879),
(107049, 0.722000002861022949, 3, 0, 46879);

UPDATE `creature_model_info` SET `VerifiedBuild`=46879 WHERE `DisplayID` IN (42722, 42720, 1141, 1418, 104666, 2176, 104667, 104663, 104665, 105878, 106523, 108798, 103844, 108795, 110466, 77405, 77407, 46938, 110462, 104676, 103843, 104680, 110465, 81964, 64062, 106594, 8971, 15468, 102649, 1206, 104136, 103841, 108856, 16910, 103842, 102778, 102562, 102511, 11686, 102656, 102651, 107296, 102657, 102655, 63718, 102668, 102304, 15481, 107861, 104581, 104572, 108808, 108801, 104137, 108456, 7511, 103415, 110331, 110330, 103464, 104138, 105598, 105596, 101649, 103326, 103923, 103318, 104678, 103319, 103325, 103860, 103832, 104170, 104167, 103327, 103857, 103279, 104043, 80919, 106622, 106595, 78834, 78846, 106708, 78835, 103366, 104648, 104042, 104041, 104045, 104679, 108032, 104533, 104133, 104134, 22452, 107040, 102583, 104040, 102584, 104142, 16946, 102647, 104135, 104526, 102700, 104527, 104521, 100271, 106705, 107674, 104168, 104169, 102518, 108034, 109446, 103972, 102887, 107152, 104033, 104685, 104027, 107679, 104028, 102140, 102891, 104034, 27823, 105247, 102449, 102968, 109030, 104646, 23767, 100231, 108782, 104029, 104657, 107804, 109032, 1987, 102889, 108033, 102500, 102503, 103564);
UPDATE `creature_model_info` SET `BoundingRadius`=0.04374999925494194, `CombatReach`=0.125, `VerifiedBuild`=46879 WHERE `DisplayID`=104044;
UPDATE `creature_model_info` SET `BoundingRadius`=2.65745854377746582, `CombatReach`=2.599999904632568359, `VerifiedBuild`=46879 WHERE `DisplayID`=102550;
UPDATE `creature_model_info` SET `BoundingRadius`=0.524999976158142089, `CombatReach`=1.5, `VerifiedBuild`=46879 WHERE `DisplayID`=80466;
UPDATE `creature_model_info` SET `BoundingRadius`=0.547203779220581054, `CombatReach`=1.5, `VerifiedBuild`=46879 WHERE `DisplayID`=28227;
UPDATE `creature_model_info` SET `BoundingRadius`=0.383581817150115966, `VerifiedBuild`=46879 WHERE `DisplayID` IN (14932, 22468);
UPDATE `creature_model_info` SET `BoundingRadius`=0.383581817150115966, `CombatReach`=1.5, `VerifiedBuild`=46879 WHERE `DisplayID`=28501;
UPDATE `creature_model_info` SET `BoundingRadius`=1.053190946578979492, `CombatReach`=0.900000035762786865, `VerifiedBuild`=46879 WHERE `DisplayID`=110924;

DELETE FROM `creature_template_spell` WHERE (`CreatureID`=186771 AND `Index` IN (1,0));
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(186771, 1, 383133, 46879), -- Ruby Whelpling
(186771, 0, 383137, 46879); -- Ruby Whelpling


DELETE FROM `gossip_menu` WHERE (`TextID`=1 AND `MenuID` IN (28615,28607,28608,28200,29949,28581,28028,28360,28437,28466,28410,29164,29163,29160,29161,29162,29159,28123,27972,27892,28120,29714,28118,29761,28117,28096,28113));
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(28615, 1, 46879), -- 193411 (Celormu)
(28607, 1, 46879), -- 193364 (Lithragosa)
(28608, 1, 46879), -- 190839 (Glensera)
(28200, 1, 46879), -- 190839 (Glensera)
(29949, 1, 46879), -- 198040 (Celormu)
(28581, 1, 46879), -- 193287 (Lord Andestrasz)
(28028, 1, 46879), -- 187292 (Holthkastrasz)
(28360, 1, 46879), -- 183141 (Celormu)
(28437, 1, 46879), -- 192498 (Haephesta)
(28466, 1, 46879), -- 192674 (Mahra Treebender)
(28410, 1, 46879), -- 188107 (Tionistrasz)
(29164, 1, 46879), -- 198595 (Estarastrasz)
(29163, 1, 46879), -- 198605 (Tirastrasza)
(29160, 1, 46879), -- 193987 (Valdestrasz)
(29161, 1, 46879), -- 193988 (Andustrasza)
(29162, 1, 46879), -- 193991 (Lyrastrasz)
(29159, 1, 46879), -- 193995 (Rathestrasz)
(28123, 1, 46879), -- 189260 (Zahkrana)
(27972, 1, 46879), -- 185904 (Mother Elion)
(27892, 1, 46879), -- 187955 (Krendisc)
(28120, 1, 46879), -- 189262 (Akxall)
(29714, 1, 46879), -- 191025 (Lifecaller Tzadrak)
(28118, 1, 46879), -- 189261 (Xius)
(29761, 1, 46879), -- 187290 (Alexstrasza the Life-Binder)
(28117, 1, 46879), -- 186795 (Majordomo Selistra)
(28096, 1, 46879), -- 190155 (Caretaker Azkra)
(28113, 1, 46879); -- 190269 (Sendrax)

UPDATE `gossip_menu` SET `VerifiedBuild`=46879 WHERE (`MenuID`=6944 AND `TextID`=7778) OR (`MenuID`=28097 AND `TextID`=1);
DELETE FROM `gossip_menu_option` WHERE (`OptionID`=1 AND `MenuID` IN (28615,28410,28200,28607)) OR (`OptionID`=0 AND `MenuID` IN (29163,28608,29160,27972,29714,28607,28117,28120,27892,28113,28028,28410,28118,29164,29761,28200,28615,29161,29949,28360,28123,29162,29159,28581)) OR (`OptionID`=5 AND `MenuID`=28437) OR (`OptionID`=2 AND `MenuID` IN (28607,28466)) OR (`OptionID`=4 AND `MenuID`=28437);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextId`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(28615, 1, 0, 'Tell me about dragon races.', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(29163, 0, 0, 'Do you have any spare scraps of fabric?', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28608, 0, 0, 'Let\'s talk about something else.', 172206, 0, 0, 0, 0, 0, NULL, 0, 46879), -- OptionBroadcastTextID: 172206 - 172206 - 174968 - 174968
(29160, 0, 0, 'Do you have any spare scraps of fabric?', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(27972, 0, 0, '|cFF0000FF(Quest)|r Why do you stay here, if you have no eggs to rear?', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(29714, 0, 5, 'Make the Ruby Lifeshrine your home.', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28607, 0, 0, 'Tell me about how I can get better at dragonriding.', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28117, 0, 0, '|cFF0000FF(Quest)|r Take me with you to see the queen, please.', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28410, 1, 0, 'I\'d like to heal and revive my battle pets.', 64115, 0, 0, 0, 0, 1000, 'A small fee for supplies is required.', 66369, 46879), -- BoxBroadcastTextID: 66369 - 66369OptionBroadcastTextID: 64115 - 64115
(28120, 0, 0, '|cFF0000FF(Quest)|r Why are there so few eggs here?', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28437, 5, 0, 'Profession Trainers', 205567, 0, 0, 0, 0, 0, NULL, 0, 46879), -- OptionBroadcastTextID: 205567 - 205567
(27892, 0, 1, 'I want to browse your goods.', 3370, 0, 0, 0, 0, 0, NULL, 0, 46879), -- OptionBroadcastTextID: 3370 - 3370
(28113, 0, 0, 'I am ready.', 35320, 0, 0, 0, 0, 0, NULL, 0, 46879), -- OptionBroadcastTextID: 35320 - 35320 - 35539 - 35539 - 39152 - 39152 - 52091 - 52091 - 52966 - 52966 - 68157 - 68157 - 72264 - 72264 - 98694 - 98694 - 101165 - 101165 - 102817 - 102817 - 104314 - 104314 - 105294 - 105294 - 105455 - 105455 - 105611 - 105611 - 106714 - 106714 - 107434 - 107434 - 108067 - 108067 - 110410 - 110410 - 114311 - 114311 - 115011 - 115011 - 120845 - 120845 - 120867 - 120867 - 120960 - 120960 - 122483 - 122483 - 129525 - 129525 - 130105 - 130105 - 130536 - 130536 - 132934 - 132934 - 134034 - 134034 - 136601 - 136601 - 144577 - 144577 - 152299 - 152299 - 152826 - 152826 - 162165 - 162165 - 163727 - 163727 - 163987 - 163987 - 165913 - 165913 - 169003 - 169003
(28028, 0, 0, 'I\'d like to go to the Ruby Lifeshrine.', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28410, 0, 1, 'I\'m looking for a lost companion.', 56613, 0, 0, 0, 0, 0, NULL, 0, 46879), -- OptionBroadcastTextID: 56613 - 56613
(28118, 0, 0, '|cFF0000FF(Quest)|r What do you do here?', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(29164, 0, 0, 'Do you have any spare scraps of fabric?', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28200, 1, 0, 'Tell me about the Rostrum of Transformation.', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28607, 2, 0, 'I heard something about helping my fellow adventurers?', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(29761, 0, 0, '<Offer the rescued egg to Queen Alexstrasza.>', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28200, 0, 0, 'How do I customize my drake?', 0, 0, 28608, 0, 0, 0, NULL, 0, 46879),
(28615, 0, 0, 'Wait, weren\'t you just over... there?', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(29161, 0, 0, 'Do you have any spare scraps of fabric?', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(29949, 0, 0, 'I\'d like to try the course to Skytop Observatory.', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28437, 4, 0, 'Why did you join the Artisan\'s Consortium?', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28360, 0, 0, 'Wait, weren\'t you just over... there?', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28466, 2, 0, 'I would like to talk about my profession equipment.', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28123, 0, 0, '|cFF0000FF(Quest)|r How do you care for these eggs?', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28607, 1, 51, 'I\'m ready. [Open Dragonriding Skill Track.]', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(29162, 0, 0, 'Do you have any spare scraps of fabric?', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(29159, 0, 0, 'Do you have any spare scraps of fabric?', 0, 0, 0, 0, 0, 0, NULL, 0, 46879),
(28581, 0, 0, 'Tell me about dragonriding.', 0, 0, 0, 0, 0, 0, NULL, 0, 46879);

UPDATE `gossip_menu_option` SET `VerifiedBuild`=46879 WHERE (`MenuID`=6944 AND `OptionID`=0) OR (`MenuID`=28097 AND `OptionID` IN (1,0));

DELETE FROM `creature_template` WHERE `entry` IN (190293 /*Majordomo Selistra*/, 190292 /*Alexstrasza the Life-Binder*/, 190326 /*Bronze Timekeeper*/, 198191 /*Bronze Timekeeper Assistant*/, 190123 /*Bronze Timekeeper*/, 182086 /*Hek the Hungry Hornswog*/, 182087 /*Feeding Instructions*/, 197223 /*Waygate Bunny*/, 197308 /*Dormant Waygate*/, 193477 /*Azerastrasz*/, 193411 /*Celormu*/, 198115 /*Hope Kite*/, 196583 /*Bronze Timekeeper*/, 190839 /*Glensera*/, 193364 /*Lithragosa*/, 194432 /*Meehran Highlock*/, 193359 /*Lord Andestrasz*/, 194201 /*Touring Drakerider*/, 194606 /*Matthias Darkwall*/, 194605 /*Bron*/, 194279 /*Reckless Drakerider*/, 194248 /*Saddled Proto-Drake*/, 194202 /*Inventive Drakerider*/, 199684 /*Relastrasza*/, 194196 /*Cautious Drakerider*/, 194607 /*Wind Eagle*/, 194293 /*Saddled Proto-Drake*/, 194274 /*Cavalier Drakerider*/, 194203 /*Reckless Drakerider*/, 194204 /*Swashbuckling Drakerider*/, 194288 /*Swashbuckling Drakerider*/, 198060 /*Skytop Observatory*/, 194243 /*Saddled Proto-Drake*/, 194246 /*Saddled Proto-Drake*/, 194244 /*Saddled Proto-Drake*/, 194247 /*Saddled Proto-Drake*/, 198464 /*Rostrum of Transformation*/, 198623 /*Tracker Dragon Glyph*/, 191989 /*Dragon Glyph*/, 198624 /*Tracker Dragon Glyph*/, 198454 /*Dragon Glyph*/, 187745 /*Disoriented Watcher*/, 189784 /*Harried Guardian*/, 187393 /*Displaced Earth*/, 193261 /*Kah'ra*/, 191619 /*Mature Hornswog*/, 184017 /*Eager Acquisitionist*/, 190273 /*Scout Kuvaeth*/, 193329 /*Displaced Earth*/, 189090 /*Beleaguered Explorer*/, 187789 /*Energy*/, 188695 /*Tracker*/, 190298 /*Tracker Two*/, 187738 /*Boost*/, 190536 /*Veladormi*/, 189450 /*Playful Whelpling*/, 189755 /*Ruby Whelpminder*/, 193756 /*Docile Kit*/, 191098 /*Vivid Axebeak*/, 191292 /*Flower Basket*/, 191293 /*Seed Basket*/, 198301 /*Sound Event Stalker*/, 191281 /*Fruit Basket*/, 193753 /*Elegant Foal*/, 199686 /*Generic Bunny*/, 192168 /*Docile Slyvern*/, 190866 /*Akora*/, 190868 /*Keshki*/, 190820 /*Yvendormi*/, 197704 /*Curious Child*/, 194801 /*Kolgar Flameguard*/, 194800 /*Duroz Scaletaker*/, 197702 /*"Resting" Shrineguard*/, 187110 /*Ancient of Shelter*/, 187444 /*Kajithalan*/, 198275 /*Lounging Explorer*/, 198843 /*Ruby Scaleguard*/, 197703 /*Ruby Searer*/, 198040 /*Celormu*/, 191795 /*Waking Cricket*/, 193441 /*Ruby Duckling*/, 193436 /*Ruby Mallard*/, 190916 /*Ruby Warden*/, 190914 /*Emerald Whelpling*/, 190822 /*Peledormu*/, 191297 /*Lush Seed Pod*/, 193609 /*Ruby Peafowl*/, 190912 /*Ruby Whelpling*/, 190818 /*Midormi*/, 191254 /*Fragrant Dragonflower*/, 190543 /*Bothersome Bee*/, 190852 /*Soil Bunny [DNT]*/, 193729 /*Jubilant Cricket*/, 191296 /*Ripened Dragonfruit*/, 192010 /*Szarostrasza*/, 190917 /*Ruby Whelpwatcher*/, 193670 /*Lively Bloom*/, 187389 /*Sweelin*/, 190915 /*Bronze Whelpling*/, 190918 /*Emerald Whelpwatcher*/, 190547 /*Lifewarding Gardener*/, 192026 /*Ruby Pupil*/, 192021 /*Ruby Pupil*/, 194805 /*Bathoras*/, 199689 /*Arrow*/, 191490 /*Dragonscale Researcher*/, 193752 /*Elegant Vorquin*/, 198125 /*Isarian Shadowplume*/, 198116 /*Hope Kite*/, 194872 /*Disenchanted Broom*/, 186333 /*Dragonscale Researcher*/, 186332 /*Dragonscale Researcher*/, 191492 /*Dragonscale Researcher*/, 190042 /*Ascorbis*/, 189439 /*Golden Skitterbug*/, 191031 /*Ruby Tender*/, 190548 /*Lifetending Gardener*/, 196753 /*Vakaron*/, 183141 /*Celormu*/, 191315 /*Herald of Frost*/, 194334 /*Crystastrasza*/, 194335 /*Mazastrasz*/, 194142 /*Intrusive Pupstinger*/, 187363 /*Zienestrasz*/, 194575 /*Rising Tempest*/, 194159 /*Relentless Gust*/, 194195 /*Lifeshrine Door*/, 193994 /*Agitated Weedling*/, 194174 /*Amella*/, 191179 /*Target Bunny*/, 194008 /*Lillistrasza*/, 191280 /*Dazakros*/, 190525 /*Vaeros*/, 191881 /*Lasztak*/, 186771 /*Ruby Whelpling*/, 193061 /*Danastra*/, 193991 /*Lyrastrasz*/, 193995 /*Rathestrasz*/, 189881 /*Elemental Target [DNT]*/, 198605 /*Tirastrasza*/, 198595 /*Estarastrasz*/, 188280 /*Excited Vorquin*/, 193287 /*Lord Andestrasz*/, 196109 /*Elder Proto-Dragon*/, 184394 /*Agorithos 0*/, 187290 /*Alexstrasza the Life-Binder*/, 195051 /*Azure Tender*/, 196774 /*Zoristrasz*/, 187130 /*Amella*/, 191982 /*Faramin*/, 191980 /*Xolleth*/, 195050 /*Bronze Tender*/, 191025 /*Lifecaller Tzadrak*/, 190295 /*Akxall*/, 192625 /*Ruby Groundskeeper*/, 189260 /*Zahkrana*/, 191027 /*Lasztak*/, 191013 /*Keshki*/, 191012 /*Akora*/, 191174 /*Vaeros*/, 191176 /*Dazakros*/, 189261 /*Xius*/, 187071 /*Nurse Sentry*/, 197166 /*Dragonspawn Apprentice*/, 186692 /*Ruby Swarmer*/, 193988 /*Andustrasza*/, 193987 /*Valdestrasz*/, 192305 /*Boots*/, 193077 /*Ruby Percher*/, 192096 /*Ruby Dozer*/, 188107 /*Tionistrasz*/, 193737 /*Ruby Tender*/, 185904 /*Mother Elion*/, 192574 /*Thomas Bright*/, 193983 /*Boisterous Instigator*/, 192674 /*Mahra Treebender*/, 192512 /*Boisterous Child*/, 195052 /*Sapphire Tender*/, 193920 /*Kahtzar*/, 187073 /*Ruby Sitter*/, 189448 /*Trellain*/, 191126 /*Ruby Shrineguard*/, 192539 /*Miguel Bright*/, 194474 /*Zhustostrasza*/, 189262 /*Akxall*/, 193097 /*Peaceful Duck*/, 191894 /*Krillonn*/, 191893 /*Zherrak*/, 188029 /*Sprightly Butterfly*/, 194478 /*Clokkistrasz*/, 198628 /*Tracker Dragon Glyph*/, 194479 /*Sprightly Butterfly*/, 198456 /*Dragon Glyph*/, 187072 /*Ruby Shrineguard*/, 193979 /*Ruby Whelpling*/, 194099 /*Urlostrasz*/, 191954 /*Kskeiton*/, 187955 /*Krendisc*/, 187060 /*Ruby Keeper*/, 193955 /*Lillistrasza*/, 192284 /*Kandrostrasz*/, 192498 /*Haephesta*/, 193757 /*Tzurok*/, 194076 /*Veritistrasz*/, 198631 /*Tracker Dragon Glyph*/, 194818 /*Dragon Glyph*/, 192491 /*Vaknai*/, 187292 /*Holthkastrasz*/, 191831 /*Ravenous Dreadsquall*/, 195125 /*Ruby Skyguard*/, 187058 /*Ruby Scaleguard*/, 192178 /*Grazing Hornstrider*/, 184811 /*Eager Acquisitionist*/, 185489 /*King Drippy*/, 193082 /*Inquisitive Scout*/, 185490 /*Entranced Water Elemental*/, 192049 /*Swoglet*/, 185484 /*Handhold*/, 195120 /*Ruby Skyguard*/, 180377 /*Handhold*/, 185464 /*Handhold*/, 186146 /*Handhold*/, 186143 /*Handhold*/, 185485 /*Handhold*/, 187295 /*Borrowed Otter Mount*/, 196827 /*Crabtender Kad'irsza*/, 193304 /*Ru'kroszk*/, 189637 /*Curious Duckling*/, 187683 /*Waking Duck*/, 198615 /*Tracker Dragon Glyph*/, 189103 /*Scruffy Ottuk*/, 194821 /*Dragon Glyph*/, 189812 /*Cliffdrip Snapstrider*/, 182439 /*Snappy Sidewalker*/, 188074 /*Agitated Sidewalker*/, 189814 /*Cliffdrip Wavemender*/, 189815 /*Cliffdrip Fallstriker*/, 197211 /*Gurblbrblr the Invader*/, 198034 /*Dripclaw*/, 191765 /*Mean Duck*/, 192013 /*Wild Duckling*/, 192069 /*Vorquin Runt*/, 191656 /*Young Salamanther*/, 191653 /*Coastal Salamanther*/, 191796 /*Tiny Drop*/, 190660 /*Cautious Duck*/, 189121 /*Igneoid*/, 194523 /*Raging Elemental*/, 194524 /*Earthshatter Elemental*/, 191892 /*Infused Dragon Egg*/, 186795 /*Majordomo Selistra*/, 191820 /*Massive Proto-Dragon*/, 191891 /*Sendrax*/, 190269 /*Sendrax*/, 192186 /*Territorial Axebeak*/, 198100 /*Hope Kite*/, 190090 /*Infused Dragon Egg*/, 186822 /*Infused Ruby Whelpling*/);
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(190293, 0, 62, 62, 3276, 2, 1, 1.142857193946838378, 2000, 0, 33600, 2048, 0, 0, 0, 1), -- Majordomo Selistra
(190292, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Alexstrasza the Life-Binder
(190326, 0, 70, 70, 35, 3, 1, 1.142857193946838378, 2000, 0, 768, 2048, 0, 0, 0, 1), -- Bronze Timekeeper
(198191, 0, 70, 70, 35, 1, 1, 1.142857193946838378, 2000, 0, 768, 2048, 0, 0, 0, 1), -- Bronze Timekeeper Assistant
(190123, 0, 70, 70, 35, 1, 1, 1.142857193946838378, 2000, 0, 768, 2048, 0, 0, 0, 1), -- Bronze Timekeeper
(182086, 0, 62, 62, 35, 2, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 7615, 1), -- Hek the Hungry Hornswog
(182087, 0, 62, 62, 35, 2, 1, 1, 2000, 0, 33536, 67110912, 16777216, 0, 0, 1), -- Feeding Instructions
(197223, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33554432, 100665344, 0, 0, 0, 1), -- Waygate Bunny
(197308, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 768, 67143680, 16777216, 0, 0, 1), -- Dormant Waygate
(193477, 0, 62, 62, 3276, 8193, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Azerastrasz
(193411, 28615, 70, 70, 35, 2199023255555, 1, 1.142857193946838378, 2000, 0, 33280, 2048, 0, 0, 0, 1), -- Celormu
(198115, 0, 62, 62, 35, 16777216, 1, 1, 2000, 0, 768, 67110912, 16777216, 0, 0, 1), -- Hope Kite
(196583, 0, 70, 70, 35, 1, 1, 1.142857193946838378, 2000, 0, 768, 2048, 0, 0, 0, 1), -- Bronze Timekeeper
(190839, 28200, 70, 70, 3276, 1, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Glensera
(193364, 28607, 70, 70, 3276, 2199023255553, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Lithragosa
(194432, 0, 70, 70, 35, 66177, 1, 1.142857193946838378, 2000, 0, 17152, 2048, 0, 0, 0, 1), -- Meehran Highlock
(193359, 0, 70, 70, 35, 3, 1, 1.142857193946838378, 2000, 0, 33024, 2048, 0, 0, 0, 1), -- Lord Andestrasz
(194201, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Touring Drakerider
(194606, 0, 70, 70, 35, 4224, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Matthias Darkwall
(194605, 0, 70, 70, 35, 4194433, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Bron
(194279, 0, 70, 70, 35, 0, 1, 1, 2000, 0, 768, 2048, 0, 0, 0, 1), -- Reckless Drakerider
(194248, 0, 70, 70, 35, 0, 1, 1, 2000, 0, 768, 34816, 0, 0, 0, 1), -- Saddled Proto-Drake
(194202, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Inventive Drakerider
(199684, 0, 62, 62, 3276, 0, 1, 1, 2000, 0, 33600, 2048, 0, 0, 8024, 1), -- Relastrasza
(194196, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Cautious Drakerider
(194607, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Wind Eagle
(194293, 0, 70, 70, 35, 0, 1, 1, 2000, 0, 768, 34816, 0, 0, 0, 1), -- Saddled Proto-Drake
(194274, 0, 70, 70, 35, 0, 1, 1, 2000, 0, 768, 2048, 0, 0, 0, 1), -- Cavalier Drakerider
(194203, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Reckless Drakerider
(194204, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Swashbuckling Drakerider
(194288, 0, 70, 70, 35, 0, 1, 1, 2000, 0, 768, 2048, 0, 0, 0, 1), -- Swashbuckling Drakerider
(198060, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 33554432, 100665344, 1, 0, 0, 1), -- Skytop Observatory
(194243, 0, 70, 70, 35, 0, 1, 1, 2000, 0, 768, 34816, 0, 0, 0, 1), -- Saddled Proto-Drake
(194246, 0, 70, 70, 35, 0, 1, 1, 2000, 0, 768, 34816, 0, 0, 0, 1), -- Saddled Proto-Drake
(194244, 0, 70, 70, 35, 0, 1, 1, 2000, 0, 768, 34816, 0, 0, 0, 1), -- Saddled Proto-Drake
(194247, 0, 70, 70, 35, 0, 1, 1, 2000, 0, 768, 34816, 0, 0, 0, 1), -- Saddled Proto-Drake
(198464, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 69208064, 16777216, 0, 0, 1), -- Rostrum of Transformation
(198623, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 73402368, 16777216, 0, 0, 1), -- Tracker Dragon Glyph
(191989, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 73402368, 16777216, 0, 0, 1), -- Dragon Glyph
(198624, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 73402368, 16777216, 0, 0, 1), -- Tracker Dragon Glyph
(198454, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 73402368, 16777216, 0, 0, 1), -- Dragon Glyph
(187745, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Disoriented Watcher
(189784, 0, 62, 62, 3272, 0, 1, 1.142857193946838378, 2000, 0, 32768, 33556480, 0, 0, 0, 1), -- Harried Guardian
(187393, 0, 62, 62, 3306, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Displaced Earth
(193261, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Kah'ra
(191619, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Mature Hornswog
(184017, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33024, 2099200, 0, 0, 0, 1), -- Eager Acquisitionist
(190273, 0, 62, 62, 3270, 2, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Scout Kuvaeth
(193329, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 536871680, 67110913, 8192, 0, 0, 1), -- Displaced Earth
(189090, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Beleaguered Explorer
(187789, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 71305216, 16777216, 0, 0, 1), -- Energy
(188695, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 71305216, 17301504, 0, 0, 1), -- Tracker
(190298, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 73402368, 17301504, 0, 0, 1), -- Tracker Two
(187738, 0, 70, 70, 35, 0, 1, 1, 2000, 0, 33555200, 71305216, 16777216, 0, 0, 1), -- Boost
(190536, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Veladormi
(189450, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Playful Whelpling
(189755, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Ruby Whelpminder
(193756, 0, 1, 1, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Docile Kit
(191098, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Vivid Axebeak
(191292, 0, 62, 62, 35, 0, 1, 1, 2000, 0, 768, 67110912, 16777216, 0, 0, 1), -- Flower Basket
(191293, 0, 62, 62, 35, 0, 1, 1, 2000, 0, 768, 67110912, 16777216, 0, 0, 1), -- Seed Basket
(198301, 0, 60, 60, 35, 0, 3.20000004768371582, 1.142857193946838378, 2000, 0, 33587456, 2048, 16777216, 0, 0, 1), -- Sound Event Stalker
(191281, 0, 62, 62, 35, 0, 1, 1, 2000, 0, 768, 67110912, 16777216, 0, 0, 1), -- Fruit Basket
(193753, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Elegant Foal
(199686, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33554432, 100665344, 0, 0, 0, 1), -- Generic Bunny
(192168, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Docile Slyvern
(190866, 0, 62, 62, 3276, 2, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Akora
(190868, 0, 62, 62, 3276, 3, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Keshki
(190820, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Yvendormi
(197704, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33280, 2048, 0, 0, 0, 1), -- Curious Child
(194801, 0, 62, 62, 35, 3, 1, 1.142857193946838378, 2000, 0, 33024, 2048, 0, 0, 0, 1), -- Kolgar Flameguard
(194800, 0, 62, 62, 35, 3, 1, 1.142857193946838378, 2000, 0, 33024, 2048, 0, 0, 0, 1), -- Duroz Scaletaker
(197702, 0, 70, 70, 3277, 1, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- "Resting" Shrineguard
(187110, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 32832, 33556480, 0, 0, 0, 1), -- Ancient of Shelter
(187444, 0, 70, 70, 35, 128, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Kajithalan
(198275, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Lounging Explorer
(198843, 0, 70, 70, 3277, 0, 1, 1.428571462631225585, 2000, 0, 32768, 2048, 8388608, 0, 0, 1), -- Ruby Scaleguard
(197703, 0, 62, 62, 3277, 0, 1, 1.142857193946838378, 2000, 0, 33280, 2048, 0, 0, 0, 1), -- Ruby Searer
(198040, 29949, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 768, 2048, 0, 0, 0, 1), -- Celormu
(191795, 0, 62, 62, 2136, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Waking Cricket
(193441, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Ruby Duckling
(193436, 0, 62, 62, 2136, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Ruby Mallard
(190916, 0, 62, 62, 3277, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Ruby Warden
(190914, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Emerald Whelpling
(190822, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Peledormu
(191297, 0, 62, 62, 35, 0, 1, 1, 2000, 0, 768, 67110912, 16777216, 0, 0, 1), -- Lush Seed Pod
(193609, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Ruby Peafowl
(190912, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Ruby Whelpling
(190818, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Midormi
(191254, 0, 62, 62, 35, 0, 1, 1, 2000, 0, 768, 67110912, 16777216, 0, 0, 1), -- Fragrant Dragonflower
(190543, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Bothersome Bee
(190852, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 2048, 16777216, 0, 0, 1), -- Soil Bunny [DNT]
(193729, 0, 62, 62, 2136, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Jubilant Cricket
(191296, 0, 62, 62, 35, 0, 1, 1, 2000, 0, 768, 2048, 16777216, 0, 0, 1), -- Ripened Dragonfruit
(192010, 0, 62, 62, 3276, 83, 1, 1.142857193946838378, 2000, 0, 768, 2048, 0, 0, 0, 1), -- Szarostrasza
(190917, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Ruby Whelpwatcher
(193670, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Lively Bloom
(187389, 0, 62, 62, 3276, 65665, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Sweelin
(190915, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Bronze Whelpling
(190918, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Emerald Whelpwatcher
(190547, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Lifewarding Gardener
(192026, 0, 62, 62, 3276, 128, 1, 1.142857193946838378, 2000, 0, 33280, 2048, 0, 0, 0, 1), -- Ruby Pupil
(192021, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33280, 2048, 0, 0, 0, 1), -- Ruby Pupil
(194805, 0, 62, 62, 3276, 3, 1, 1.142857193946838378, 2000, 0, 33024, 2048, 0, 0, 0, 1), -- Bathoras
(199689, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 67110912, 16777216, 0, 0, 1), -- Arrow
(191490, 0, 65, 65, 3270, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Dragonscale Researcher
(193752, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Elegant Vorquin
(198125, 0, 62, 62, 3270, 82, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Isarian Shadowplume
(198116, 0, 62, 62, 35, 16777216, 1, 1, 2000, 0, 768, 67110912, 16777216, 0, 0, 1), -- Hope Kite
(194872, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 16777216, 0, 0, 1), -- Disenchanted Broom
(186333, 0, 65, 65, 3270, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Dragonscale Researcher
(186332, 0, 65, 65, 3270, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Dragonscale Researcher
(191492, 0, 65, 65, 3270, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Dragonscale Researcher
(190042, 0, 65, 65, 3270, 129, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Ascorbis
(189439, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Golden Skitterbug
(191031, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Ruby Tender
(190548, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Lifetending Gardener
(196753, 0, 62, 62, 3276, 129, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Vakaron
(183141, 28360, 62, 62, 3276, 2199023255553, 1, 1.142857193946838378, 2000, 0, 33280, 2048, 0, 0, 0, 1), -- Celormu
(191315, 0, 62, 62, 3320, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 1, 0, 0, 1), -- Herald of Frost
(194334, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Crystastrasza
(194335, 0, 62, 62, 3276, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Mazastrasz
(194142, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Intrusive Pupstinger
(187363, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33600, 2048, 0, 0, 0, 12), -- Zienestrasz
(194575, 0, 1, 1, 168, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Rising Tempest
(194159, 0, 62, 62, 190, 0, 1, 1.428571462631225585, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Relentless Gust
(194195, 0, 62, 62, 190, 0, 0.5, 0.571428596973419189, 2000, 0, 256, 34816, 16777216, 0, 0, 1), -- Lifeshrine Door
(193994, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 1, 0, 0, 1), -- Agitated Weedling
(194174, 0, 62, 62, 3276, 2, 1, 1.142857193946838378, 2000, 0, 33600, 2048, 0, 0, 0, 1), -- Amella
(191179, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 512, 34816, 16777216, 0, 0, 1), -- Target Bunny
(194008, 0, 61, 61, 35, 3, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Lillistrasza
(191280, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Dazakros
(190525, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Vaeros
(191881, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Lasztak
(186771, 0, 61, 62, 35, 0, 1.60000002384185791, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 7745, 1), -- Ruby Whelpling
(193061, 0, 70, 70, 3276, 0, 1, 1, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Danastra
(193991, 29162, 62, 62, 3276, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Lyrastrasz
(193995, 29159, 62, 62, 3276, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Rathestrasz
(189881, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 33554432, 100665344, 0, 0, 0, 1), -- Elemental Target [DNT]
(198605, 29163, 62, 62, 3276, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Tirastrasza
(198595, 29164, 62, 62, 3276, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Estarastrasz
(188280, 0, 1, 1, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Excited Vorquin
(193287, 28581, 62, 62, 35, 3, 1, 1.142857193946838378, 2000, 0, 33024, 4196352, 0, 0, 0, 1), -- Lord Andestrasz
(196109, 0, 62, 62, 16, 0, 1, 1, 2000, 0, 32832, 2099200, 0, 0, 0, 1), -- Elder Proto-Dragon
(184394, 0, 70, 70, 35, 8192, 1, 1.142857193946838378, 2000, 0, 33600, 2048, 0, 0, 0, 1), -- Agorithos 0
(187290, 29761, 62, 62, 3276, 3, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Alexstrasza the Life-Binder
(195051, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Azure Tender
(196774, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33280, 2048, 0, 0, 0, 1), -- Zoristrasz
(187130, 0, 62, 62, 3276, 1, 1, 1.142857193946838378, 2000, 0, 33600, 2048, 0, 0, 0, 1), -- Amella
(191982, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Faramin
(191980, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Xolleth
(195050, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Bronze Tender
(191025, 29714, 62, 62, 3276, 65539, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Lifecaller Tzadrak
(190295, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33554432, 100665344, 0, 0, 0, 1), -- Akxall
(192625, 0, 70, 70, 3277, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 8388608, 0, 0, 1), -- Ruby Groundskeeper
(189260, 28123, 62, 62, 3276, 3, 1, 1.142857193946838378, 2000, 0, 33600, 2048, 0, 0, 0, 1), -- Zahkrana
(191027, 0, 62, 62, 3276, 2, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Lasztak
(191013, 0, 62, 62, 3276, 2, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Keshki
(191012, 0, 62, 62, 3276, 2, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Akora
(191174, 0, 62, 62, 3276, 2, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Vaeros
(191176, 0, 62, 62, 3276, 2, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Dazakros
(189261, 28118, 62, 62, 3276, 1, 1, 1.142857193946838378, 2000, 0, 33600, 2048, 0, 128, 0, 1), -- Xius
(187071, 0, 70, 70, 3277, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 8388608, 0, 0, 1), -- Nurse Sentry
(197166, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Dragonspawn Apprentice
(186692, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Ruby Swarmer
(193988, 29161, 62, 62, 3276, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Andustrasza
(193987, 29160, 62, 62, 3276, 1, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Valdestrasz
(192305, 0, 65, 65, 2028, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Boots
(193077, 0, 62, 62, 3276, 0, 1, 1, 2000, 0, 33536, 2048, 16777216, 0, 0, 1), -- Ruby Percher
(192096, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Ruby Dozer
(188107, 28410, 70, 70, 3276, 129, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 7), -- Tionistrasz
(193737, 0, 62, 62, 3277, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Ruby Tender
(185904, 27972, 62, 62, 3276, 3, 1, 1.142857193946838378, 2000, 0, 33600, 2048, 0, 0, 0, 1), -- Mother Elion
(192574, 0, 62, 62, 2028, 3, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Thomas Bright
(193983, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33280, 2048, 0, 0, 0, 1), -- Boisterous Instigator
(192674, 28466, 62, 62, 2028, 3, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Mahra Treebender
(192512, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33280, 2048, 0, 0, 0, 1), -- Boisterous Child
(195052, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Sapphire Tender
(193920, 0, 62, 62, 3277, 1, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Kahtzar
(187073, 0, 62, 62, 3277, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Ruby Sitter
(189448, 0, 70, 70, 3276, 129, 1, 1.142857193946838378, 2000, 0, 32832, 34816, 0, 0, 0, 1), -- Trellain
(191126, 0, 70, 70, 3276, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Ruby Shrineguard
(192539, 0, 62, 62, 2028, 3, 1, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 0, 1), -- Miguel Bright
(194474, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Zhustostrasza
(189262, 28120, 62, 62, 3276, 1, 1, 1.142857193946838378, 2000, 0, 33600, 2048, 0, 128, 0, 1), -- Akxall
(193097, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Peaceful Duck
(191894, 0, 62, 62, 3276, 83, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Krillonn
(191893, 0, 62, 62, 3276, 83, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Zherrak
(188029, 0, 1, 1, 188, 0, 0.400000005960464477, 0.285714298486709594, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Sprightly Butterfly
(194478, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Clokkistrasz
(198628, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 73402368, 16777216, 0, 0, 1), -- Tracker Dragon Glyph
(194479, 0, 1, 1, 188, 0, 0.400000005960464477, 0.285714298486709594, 2000, 0, 32768, 2048, 16777216, 0, 0, 1), -- Sprightly Butterfly
(198456, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 73402368, 16777216, 0, 0, 1), -- Dragon Glyph
(187072, 0, 70, 70, 3277, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Ruby Shrineguard
(193979, 0, 62, 62, 35, 0, 1.60000002384185791, 1.142857193946838378, 2000, 0, 0, 2048, 0, 0, 7745, 1), -- Ruby Whelpling
(194099, 0, 62, 62, 3276, 1, 1, 1, 2000, 0, 33600, 2048, 0, 0, 7779, 1), -- Urlostrasz
(191954, 0, 62, 62, 3276, 128, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Kskeiton
(187955, 27892, 62, 62, 3276, 4225, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Krendisc
(187060, 0, 70, 70, 3277, 0, 1, 1.428571462631225585, 2000, 0, 32832, 2048, 8388608, 0, 0, 1), -- Ruby Keeper
(193955, 0, 62, 62, 3276, 2, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Lillistrasza
(192284, 0, 70, 70, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Kandrostrasz
(192498, 28437, 62, 62, 2028, 3, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Haephesta
(193757, 0, 62, 62, 2028, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Tzurok
(194076, 0, 70, 70, 3276, 3, 1, 1.142857193946838378, 2000, 0, 33600, 2048, 0, 0, 0, 1), -- Veritistrasz
(198631, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 73402368, 16777216, 0, 0, 1), -- Tracker Dragon Glyph
(194818, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 73402368, 16777216, 0, 0, 1), -- Dragon Glyph
(192491, 6944, 62, 62, 3276, 8193, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Vaknai
(187292, 28028, 61, 63, 35, 1, 1, 1, 2000, 0, 33600, 2048, 0, 0, 7779, 1), -- Holthkastrasz
(191831, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Ravenous Dreadsquall
(195125, 0, 62, 62, 3276, 0, 1, 1, 2000, 0, 33536, 2099200, 0, 0, 0, 1), -- Ruby Skyguard
(187058, 0, 70, 70, 3277, 0, 1, 1.428571462631225585, 2000, 0, 32768, 2048, 8388608, 0, 0, 1), -- Ruby Scaleguard
(192178, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 584, 1), -- Grazing Hornstrider
(184811, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Eager Acquisitionist
(185489, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- King Drippy
(193082, 0, 62, 62, 3270, 0, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Inquisitive Scout
(185490, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 7710, 1), -- Entranced Water Elemental
(192049, 0, 1, 1, 188, 0, 0.400000005960464477, 0.285714298486709594, 2000, 0, 33280, 2048, 0, 0, 0, 1), -- Swoglet
(185484, 0, 70, 70, 35, 0, 1, 1, 2000, 0, 768, 67143680, 16777216, 0, 7559, 1), -- Handhold
(195120, 0, 62, 62, 3276, 0, 1, 1, 2000, 0, 33536, 4196352, 0, 0, 0, 1), -- Ruby Skyguard
(180377, 0, 70, 70, 35, 0, 1, 1, 2000, 0, 768, 67143680, 16777216, 0, 7559, 1), -- Handhold
(185464, 0, 70, 70, 35, 0, 1, 1, 2000, 0, 768, 67143680, 16777216, 0, 7559, 1), -- Handhold
(186146, 0, 70, 70, 35, 0, 1, 1, 2000, 0, 768, 67143680, 16777216, 0, 7559, 1), -- Handhold
(186143, 0, 70, 70, 35, 0, 1, 1, 2000, 0, 768, 67143680, 16777216, 0, 7559, 1), -- Handhold
(185485, 0, 70, 70, 35, 0, 1, 1, 2000, 0, 768, 67143680, 16777216, 0, 7560, 1), -- Handhold
(187295, 0, 62, 62, 1665, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 7756, 1), -- Borrowed Otter Mount
(196827, 0, 62, 62, 3276, 3, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Crabtender Kad'irsza
(193304, 0, 62, 62, 3276, 2, 1, 1.142857193946838378, 2000, 0, 33536, 2048, 0, 0, 0, 1), -- Ru'kroszk
(189637, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Curious Duckling
(187683, 0, 62, 62, 2136, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Waking Duck
(198615, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 73402368, 16777216, 0, 0, 1), -- Tracker Dragon Glyph
(189103, 0, 1, 1, 188, 1073741824, 0.400000005960464477, 0.285714298486709594, 2000, 0, 33280, 2048, 0, 0, 0, 1), -- Scruffy Ottuk
(194821, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 33555200, 73402368, 16777216, 0, 0, 1), -- Dragon Glyph
(189812, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Cliffdrip Snapstrider
(182439, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32768, 16779264, 0, 0, 0, 1), -- Snappy Sidewalker
(188074, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 32768, 16779264, 0, 0, 0, 1), -- Agitated Sidewalker
(189814, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Cliffdrip Wavemender
(189815, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Cliffdrip Fallstriker
(197211, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Gurblbrblr the Invader
(198034, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 8005, 1), -- Dripclaw
(191765, 0, 70, 70, 35, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1.299999952316284179), -- Mean Duck
(192013, 0, 1, 1, 188, 0, 0.400000005960464477, 0.285714298486709594, 2000, 0, 33280, 2048, 0, 0, 0, 1), -- Wild Duckling
(192069, 0, 1, 1, 188, 0, 1, 0.857142865657806396, 2000, 0, 33280, 2048, 0, 0, 0, 1), -- Vorquin Runt
(191656, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Young Salamanther
(191653, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Coastal Salamanther
(191796, 0, 1, 1, 188, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Tiny Drop
(190660, 0, 62, 62, 2136, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Cautious Duck
(189121, 0, 1, 1, 188, 1073741824, 1, 0.857142865657806396, 2000, 0, 33280, 2048, 0, 0, 0, 1), -- Igneoid
(194523, 0, 62, 62, 16, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Raging Elemental
(194524, 0, 62, 62, 3306, 0, 1, 1.142857193946838378, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Earthshatter Elemental
(191892, 0, 62, 62, 3276, 0, 1, 1, 2000, 0, 768, 67110912, 0, 0, 0, 1); -- Infused Dragon Egg

INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(186795, 28117, 62, 62, 3276, 1, 1, 1, 2000, 0, 33600, 2048, 0, 0, 0, 1), -- Majordomo Selistra
(191820, 0, 62, 62, 16, 0, 1, 1, 2000, 0, 32832, 2048, 0, 0, 0, 1), -- Massive Proto-Dragon
(191891, 0, 62, 62, 3276, 0, 1, 1.142857193946838378, 2000, 0, 33600, 2048, 0, 0, 0, 1), -- Sendrax
(190269, 28113, 62, 62, 3276, 3, 1, 1.142857193946838378, 2000, 0, 33600, 2048, 0, 0, 0, 1), -- Sendrax
(192186, 0, 62, 62, 190, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1), -- Territorial Axebeak
(198100, 0, 62, 62, 35, 0, 1, 1.142857193946838378, 2000, 0, 768, 67110912, 16777216, 0, 0, 1), -- Hope Kite
(190090, 0, 62, 62, 3276, 16777216, 1, 1, 2000, 0, 768, 67110912, 0, 0, 0, 1), -- Infused Dragon Egg
(186822, 0, 62, 62, 14, 0, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1); -- Infused Ruby Whelpling


UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=73402368, `unit_flags3`=16777216 WHERE `entry` IN (198618, 198619); -- Tracker Dragon Glyph
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=73402368, `unit_flags3`=16777216 WHERE `entry` IN (194972, 194820); -- Dragon Glyph
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=2136, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=187442; -- Waking Duck
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=189703; -- Sunning Salamanther
UPDATE `creature_template` SET `faction`=188, `npcflag`=1073741824, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=189093; -- Pricklefury Hare
UPDATE `creature_template` SET `minlevel`=64, `maxlevel`=64, `BaseAttackTime`=1696 WHERE `entry`=58965; -- Wrathguard
UPDATE `creature_template` SET `minlevel`=64, `maxlevel`=64, `BaseAttackTime`=1696 WHERE `entry`=143622; -- Wild Imp
UPDATE `creature_template` SET `minlevel`=64, `maxlevel`=64, `npcflag`=0, `unit_flags`=768 WHERE `entry`=68806; -- Lofty Libram
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3277, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=186577; -- Ruby Searer
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=192149; -- River Frillfish
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=189307; -- Skitterfly
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=191618; -- River Hornswog
UPDATE `creature_template` SET `minlevel`=61, `BaseAttackTime`=1680 WHERE `entry`=165189; -- Generic Hunter Pet
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=191645; -- Wind Serpent
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=191830; -- Dreadsquall Hatchling
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3270, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=187194; -- Restless Explorer
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=188, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=191554; -- Argali Lamb
UPDATE `creature_template` SET `minlevel`=63, `maxlevel`=63, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048, `HoverHeight`=1.60000002384185791 WHERE `entry`=193217; -- Drakewing
UPDATE `creature_template` SET `faction`=188, `npcflag`=1073741824, `speed_walk`=0.400000005960464477, `speed_run`=0.285714298486709594, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=189122; -- Palamanther
UPDATE `creature_template` SET `faction`=188, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=192103; -- Pricklefury Hare
UPDATE `creature_template` SET `faction`=188, `speed_walk`=0.400000005960464477, `speed_run`=0.285714298486709594, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=192059; -- Palamanther
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=191792; -- Frog
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=33600, `unit_flags2`=2048, `VehicleId`=7790 WHERE `entry`=191768; -- Majordomo Selistra
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=191812; -- Crumbling Pebbles
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=191809; -- Tiny Butterfly
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=194517; -- Crushing Elemental
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=2048, `unit_flags3`=16777216 WHERE `entry`=190211; -- Egg Returned to Safety Kill Credit [DNT]
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33600, `unit_flags2`=2048 WHERE `entry`=194525; -- Apprentice Caretaker Zefren
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=2575, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=191553; -- Wild Argali
UPDATE `creature_template` SET `gossip_menu_id`=28096, `minlevel`=62, `maxlevel`=62, `faction`=3276, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33600, `unit_flags2`=2048 WHERE `entry`=190155; -- Caretaker Azkra
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=190, `speed_run`=0.357142865657806396, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=16779264 WHERE `entry`=191628; -- Lava Snail
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=192137; -- Lava Flick
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=190, `speed_walk`=1.399999976158142089, `speed_run`=0.5, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=16779264 WHERE `entry`=191629; -- Lava Slug
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=190, `speed_run`=0.992062866687774658, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=192181; -- Wild Rockfang
UPDATE `creature_template` SET `faction`=190, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=191818; -- Shaggy Rabbit
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=191625; -- Vorquin Foal
UPDATE `creature_template` SET `faction`=188, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=191817; -- Shores Snake
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3320, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=188667; -- Swelling Fire Elemental
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=192151; -- Smoothfin Mantacorn
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3295, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=186573; -- Restless Lava
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3320, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=188372; -- Primal Tarasek
UPDATE `creature_template` SET `faction`=188, `npcflag`=1073741824, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=193000; -- Kindlet
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3320, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=190080; -- Tarasek Elementalist
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=190, `speed_run`=0.357142865657806396, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=16779264 WHERE `entry`=186833; -- Spiteful Snail
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=70, `faction`=35, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=100665344, `unit_flags3`=1 WHERE `entry`=191904; -- Ruby Dragon Eggs
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=14, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=186836; -- Lava Burster
UPDATE `creature_template` SET `minlevel`=63, `maxlevel`=63, `faction`=3331, `BaseAttackTime`=2000, `unit_flags`=64, `unit_flags2`=2048 WHERE `entry`=195915; -- Firava the Rekindler
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=16, `speed_run`=0.992062866687774658, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=192182; -- Rockfang Hunter
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3276, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67110912 WHERE `entry`=190013; -- Ruby Dragon Egg
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=190, `speed_walk`=1.399999976158142089, `speed_run`=0.5, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=16779264 WHERE `entry`=186829; -- Spiteful Slug
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=191624; -- Tranquil Vorquin
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=14, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=67143680, `unit_flags3`=16777216 WHERE `entry`=191886; -- Primalist Lava Conduit
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3331, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=195917; -- Primal Revenant
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3320, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=186825; -- Molten Primalist
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3320, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=186823; -- Lavacaller Primalist
UPDATE `creature_template` SET `faction`=188, `speed_run`=0.857142865657806396, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags2`=2048 WHERE `entry`=193001; -- Kindlet
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=186684; -- Lava Phoenix
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=3320, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=188666; -- Unleashed Lavaburst
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=186834; -- Stubborn Hornswog
UPDATE `creature_template` SET `gossip_menu_id`=28097, `minlevel`=61, `maxlevel`=61, `faction`=35, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33088, `unit_flags2`=33556480, `unit_flags3`=1048576 WHERE `entry`=190171; -- Ruby Egg Guardian


DELETE FROM `vehicle_template_accessory` WHERE (`seat_id`=0 AND `entry` IN (182086,185490,198034));
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(182086, 182087, 0, 0, 'Hek the Hungry Hornswog - Feeding Instructions', 5, 0), -- Hek the Hungry Hornswog - Feeding Instructions
(185490, 185489, 0, 0, 'Entranced Water Elemental - King Drippy', 5, 0), -- Entranced Water Elemental - King Drippy
(198034, 197211, 0, 0, 'Dripclaw - Gurblbrblr the Invader', 5, 0); -- Dripclaw - Gurblbrblr the Invader



DELETE FROM `quest_template` WHERE `ID` IN (66931 /*-Unknown-*/, 68799 /*-Unknown-*/, 72481 /*-Unknown-*/, 68798 /*-Unknown-*/, 68797 /*-Unknown-*/, 72089 /*-Unknown-*/, 66827 /*-Unknown-*/, 68796 /*-Unknown-*/, 65133 /*-Unknown-*/, 65120 /*-Unknown-*/, 65118 /*-Unknown-*/, 70132 /*-Unknown-*/, 67564 /*-Unknown-*/, 70061 /*-Unknown-*/, 70058 /*-Unknown-*/, 66879 /*-Unknown-*/, 70351 /*-Unknown-*/, 66997 /*-Unknown-*/, 66825 /*-Unknown-*/, 68795 /*-Unknown-*/, 66115 /*-Unknown-*/, 66114 /*-Unknown-*/, 70179 /*-Unknown-*/, 66001 /*-Unknown-*/, 70648 /*-Unknown-*/);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestPackageID`, `ContentTuningID`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitGiverModelSceneID`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `QuestSessionBonus`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(66931, 2, 0, 2296, 13644, 0, 0, 0, 5, 1, 5, 1, 7150, 0, 0, 0, 0, 0, 1, 0, 37748736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 10000, 0, 0, 0, 0, 0, 7616, 0, 18446744073709551615, 0, 9, 0, 0, 'Who Brought the Ruckus?', 'Discover the commotion at the Ruby Lifeshrine.', 'That was no ordinary quake.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(68799, 2, 0, 2296, 13644, 0, 0, 0, 1, 1, 1, 1, 900, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 15000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'Return to the Ruby Lifeshrine', 'Return to the Ruby Lifeshrine.', 'And this is just the beginning of your dragonriding journey! \n\nKeep your eyes open for new adventures and experiences throughout the Dragon Isles, and be sure to visit us in any of our outposts.\n\nFor now, return to Alexstrasza to continue your exploration in these lands.', '', 'Return to Alexstrasza at the Ruby Lifeshrine.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(72481, 2, 0, 2424, 13644, 0, 0, 0, 6, 1, 6, 1, 8950, 0, 0, 0, 0, 0, 1, 0, 34603016, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'The Waking Shores Tour', 'Fly each of the race courses in the Waking Shores.', 'And what is the most fun about dragonriding? Races! \n\nMy bronze colleagues have mapped out race courses all over the Dragon Isles. It is such a varied and dynamic landscape that it just begs to be explored at top speed.\n\nIf you find yourself near one of our race courses in The Waking Shores, why not give it a go?', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(68798, 2, 0, 2296, 13644, 0, 0, 0, 3, 1, 3, 1, 3600, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 110816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 5000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'Dragon Glyphs and You', 'Collect the Dragon Glyph at the Skytop Observatory, then speak to Lithragosa to use your talent.', 'Obviously, it is not just Glensera and myself that are invested in these adventurers. Lithragosa is also excited to help you hone your dragonriding skills, and you have already met Celormu which is excellent.\n\nThere are glyphs around the Dragon Isles that will help you learn more tricks and abilities for dragonriding. In fact, there is one right here in the Skytop Observatory.\n\nOnce you find it, Lithragosa can help you use it!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 'Found around the Dragon Isles, these glyphs will help you learn more tricks and abilities for dragonriding.', 'Dragon Glyph', '', '', 890, 878, 46879), -- -Unknown-
(68797, 2, 0, 2296, 13644, 0, 0, 0, 1, 1, 1, 1, 900, 385274, 0, 0, 0, 0, 1, 0, 35651592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 2178, 9, 0, 0, 'A New Set of Horns', 'Meet Glensera and use the Rostrum of Transformation to customize your drake.', 'Just as mortals do, dragons care very much about their appearance. Your drake is able to change as well, according to what you find and experience.\n\nSpeak to Glensera at the Rostrum of Transformation, and see for yourself!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(72089, 3, 0, 2151, 13644, 265, 0, 0, 0, 1, 0, 1, 0, 369952, 0, 0, 0, 0, 1, 0, 41418752, 0, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'To Skytop Observatory', 'Glide through the rings.', 'Fly through the checkpoint rings marking the course.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66827, 2, 0, 2295, 13644, 0, 0, 0, 5, 0.800000011920928955, 5, 1, 5750, 0, 0, 0, 193826, 0, 1, 0, 37748744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 193826, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 10000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'Flowers of our Labor', 'Collect $1oa Ripened Dragonfruit, $1oa Fragrant Dragonflowers and $1oa Lush Seed Pods from around the garden to offer to the Dragon Spirit.', 'The legend says she only sings it for those who prove their devotion to life.\n\nI\'ve been tending this garden for years... And I think my plants and I are finally ready.\n\nI\'ll start setting up by the pool here. You can help me with the harvest!\n\nGather seed pods from beneath bushes, dragonflowers from sunny fields, and dragonfruit high in the trees. You can borrow my old rake to help with those. And watch out--sometimes the foliage can be feisty!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(68796, 2, 0, 2296, 13644, 0, 0, 0, 1, 1, 1, 1, 900, 0, 0, 0, 0, 0, 1, 0, 38797320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'The Skytop Observatory', 'Travel to the Skytop Observatory in Waking Shores.', 'Those are the basics of riding a drake! You are doing quite well.\n\nNow, I would like to introduce you to some of the others involved in this adventure. We have made a home for ourselves over at the Skytop Observatory.\n\nCelormu will be able to help guide you there. Speak to him when you feel ready to take to the skies!\n\nSee you there!', '', 'Meet Lord Andestrasz at the Skytop Observatory.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(65133, 2, 0, 2296, 13644, 0, 0, 0, 3, 1, 3, 1, 3600, 381944, 0, 0, 188169, 0, 1, 0, 309461000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 188169, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 5000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'How to Use Momentum with Your Dragon', 'Dive through the rings and land in the target area.', 'Now what if there is an obstacle in your way?\n\nAs long as you fly well, you can conserve your momentum and gain some height after a dive.\n\nWhen you dive this time you will find your flight path takes you below the landing area. By using your momentum you can regain lost height at the end of the course to still land in the target area.\n\nIf you find yourself stuck, use the Bronze Timepiece and Celormu will reset you.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(65120, 2, 0, 2296, 13644, 0, 0, 0, 3, 1, 3, 1, 3600, 381943, 0, 0, 188139, 0, 1, 0, 309461000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 188139, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 5000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'How to Dive with Your Dragon', 'Dive then glide through the rings and land in the target area.', 'Gliding will get you to where you want to go. But what if you want to get there faster?\n\nDiving after jumping from somewhere high will give you a speed boost.\n\nFly through the rings to the target location.\n\nIf you find yourself stuck, use the Bronze Timepiece and Celormu will reset you.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(65118, 2, 0, 2296, 13644, 0, 0, 0, 3, 1, 3, 1, 3600, 381942, 0, 0, 0, 0, 1, 0, 7471104, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 194034, 188134, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 5000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'How to Glide with Your Dragon', 'Glide through the rings and land in the target area.', 'Let us start with the basics.\n\nIf you fly straight you will wear yourself out right now. Use gravity as an aid and aim slightly down to fly a long distance. The rings will give you the general angle that you should use for basic gliding.\n\nFirst, call upon your drake.\n\nThen, fly through the rings and land at the target location.\n\nIf you find yourself stuck, use the Bronze Timepiece and Celormu will reset you.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(70132, 2, 0, 2151, 13644, 0, 0, 0, 3, 0.800000011920928955, 3, 1, 2850, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 5000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'Stay a While', 'Sit for a while, and look at the landscape.', '<The Old Dwarf doesn\'t react to your presence as you approach, as he gazes over the landscape, a deep frown set in his face. It\'s a pleasant view, it might be nice to take a break and watch the landscape>', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(67564, 2, 0, 2296, -571, 267, 0, 67100, 1, 1, 1, 2, 900, 0, 0, 0, 195357, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 198790, 0, 0, 0, 1, 0, 0, 0, 195357, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'Artisan\'s Courier', 'Deliver the Artisan\'s Consortium Invoice to Thomas Bright.', 'Adventurer, are you headed into the Lifeshrine?\n\nWould you mind taking this invoice to Thomas Bright? He ordered a few custom-made bottles and our glassblower has finally returned with the price of materials required.\n\nHe should be just down the path there, likely gushing to some poor soul about how great his husband is...\n\nI am sure he will pay you for your time.', '', 'Deliver the Artisan\'s Consortium Invoice to Thomas Bright at the Ruby Lifeshrine.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(70061, 2, 0, 2296, 13644, 0, 0, 0, 5, 1, 5, 1, 7150, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 10000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 2180, 9, 0, 0, 'Training Wings', 'Guide a whelp to eliminate $2oa Agitated Weedlings, $3oa Intrusive Pupstingers, and $4oa Relentless Gust.', 'The dragons were gone from the Isles for quite some time, $p. To tell the truth... some of our skills have atrophied as they were passed down from generation to generation.\n\nThese whelps should be easy to teach, yet we are having some trouble wrangling them.\n\nSay.\n\nI have seen that even Majordomo Selistra trusts you with the most crucial tasks. Would you lend us your aid and help one of our young?', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(70058, 2, 0, 2296, 13644, 0, 0, 0, 3, 0.800000011920928955, 3, 1, 2850, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 5000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'Friend on the Mend', 'Collect $1oa Soft Ruby Feathers, $2oa Scraps of Fabric, and $3oa Glass Bead from around the Ruby Lifeshrine to help repair Happy Duck.', 'Happy Duck got hurt while we were flying around... He was doing so good and then I... I hit a tree!\n\n<Lillistrasza gestures mournfully at the damaged duck plushie on her head.>\n\nHis stuffing is falling out! His feathers are all bent! One of his eyes is gone! Noooo!\n\nYou can help fix Happy Duck, right?', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66879, 2, 0, 2293, 13644, 0, 0, 0, 1, 0.800000011920928955, 1, 1, 725, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'Hornstrider Havoc', 'Meet Dazakros in the Overflowing Rapids.', 'Hornstriders! They\'ve got bone-breaking beaks, fast legs for getting away from danger, and they can eat anything in the Isles.\n\nThis Calling\'s the easiest around! It\'s just me and my favorite big birds spending time together. And if anything comes up, I know how to wrangle all of the Isles\' critters.\n\nWould you mind following me to the hornstrider plateaus up north? I wouldn\'t mind an extra pair of hands while getting set up.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(70351, 2, 0, 2295, 13644, 0, 0, 0, 1, 0.800000011920928955, 1, 1, 725, 0, 0, 0, 0, 0, 1, 0, 4194312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'Garden Party', 'Speak to Akora in the Ruby Life Pools.', 'I\'ve been tending to this garden for years, preparing for the day I\'d finally accept my Lifecalling. Now that day is here!\n\nI love flowers and all trees and plants--even the bugs that live amongst them. I can feel nature\'s spirit--the Great Dragon Spirit--when I tend the garden.\n\nThere\'s only one thing left to do. I\'m going to invoke Great Dragon Spirit, just like the legends.\n\n<Akora smiles brightly>\n\nMeet me down in the garden by the pool where her bones rest. I\'ll explain more there.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66997, 2, 0, 2295, 13644, 0, 0, 0, 1, 0.800000011920928955, 1, 1, 725, 0, 0, 0, 0, 0, 1, 0, 37748736, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'Nursery Direction', 'Meet Vaeros in the gardens of the Ruby Life Pools.', 'I\'m so grateful that Lasztak has accepted the Calling of a Whelptender! Especially given how many of the precious little things are teething right now.\n\nBeyond that, the nursery gardens are admittedly facing challenges. The whelps are stressed and the tenders are--well, more stressed than usual.\n\nPlease, whenever you have a spare moment, find me in the gardens below. We could use your help as well!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66825, 2, 0, 2296, 13644, 0, 0, 0, 3, 0.800000011920928955, 3, 1, 2850, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 5000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'A Ruby Lifecalling', 'Participate in the Lifecalling Ceremony at the Ruby Lifeshrine.', '$p! How fortunate you are here! We are about to begin a Lifecalling Ceremony and would be honored if you assisted us. \n\nA dragonspawn\'s Calling is very special. Some become masterful gardeners; others care for particular wildlife.\n\nThese young dragonspawn have finished their training and are ready to take on their first Callings. I know they would be thrilled to have you participate. When you\'re ready, please present each of the items on this table to them.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(68795, 2, 0, 2296, 13644, 0, 0, 0, 1, 1, 1, 1, 900, 376027, 0, 0, 0, 0, 1, 0, 39845896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 2066, 9, 0, 0, 'Dragonriding', 'Speak with Lord Andestrasz in the Ruby Lifeshrine.', 'One thing you may have already discovered about this place: the Dragon Isles are vast. \n\nSome of the drakes have an intense interest in exploring every corner and secret hiding place in this renewed land, even those places that are not readily reached from the ground. They are eager for a second set of eyes to aid them in their journey, and in trade will gladly bear a rider across the lands.\n\nSpeak with Lord Andestrasz, here in the Ruby Lifeshrine. He will explain more of what they intend.', '', 'Speak with Lord Andestrasz in the Ruby Lifeshrine.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66115, 2, 0, 2296, 13644, 0, 0, 0, 5, 1, 5, 1, 7150, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 10000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 2080, 9, 0, 0, 'The Mandate of the Red', 'Talk to the tenders at the Ruby Lifeshrine.', 'Our calling is care and compassion. We aid the other flights not only for their own sake, but for the sake of dragonkind as a whole.\n\nPerhaps speaking with the dragonspawn here at the Ruby Lifeshrine will help you understand us further.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66114, 2, 0, 2285, 13644, 0, 0, 0, 3, 1, 3, 1, 3600, 0, 0, 0, 0, 0, 1, 0, 574619656, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 10000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'For the Benefit of the Queen', 'Ride with Majordomo Selistra to the Ruby Lifeshrine.', 'We safeguard our precious eggs to protect the future of all dragonflights. The Primalists do not simply threaten pain or anguish with their actions. \n\nThey threaten us with extinction.\n\nI must inform our queen at once.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(70179, 2, 0, 2466, 13644, 0, 0, 0, 5, 1, 5, 1, 7150, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 10000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'A Two for One Deal', 'Obtain Building Materials from the local Earth Elementals.', 'Greetings Adventurer! Say, you look like a capable person, could you give me a hand?\n\nAzkra and I are charged with watching over this tower, which is in what I like to call \"an exciting state of pre-renovation.\" My problem is as we started repairs, the local Earth Elementals attacked us! \n\nSo I thought \"Zefren, why not take care of the Earth Elementals, and get some building materials at the same time?\" Which is where you come in! Could you help?', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(66001, 2, 0, 2285, 13644, 0, 0, 0, 5, 1, 5, 1, 7150, 375925, 0, 0, 0, 0, 1, 0, 39845896, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 15000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 2079, 9, 0, 0, 'A Last Hope', 'Rescue the last Infused Dragon Egg.', 'A whole brood of whelplings, lost...\n\n<Sendrax straightens her back and sticks her chin up.>\n\nThere is one more location we have not checked yet. The large ritual site where that proto-dragon dropped off the eggs.\n\nLet us charge their cruel defenses together, $p, and save what we can.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879), -- -Unknown-
(70648, 3, 0, 2285, 13644, 0, 0, 0, 5, 1, 5, 1, 7150, 0, 0, 0, 0, 0, 1, 0, 34144256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 9, 0, 0, 'Firava the Rekindler', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46879); -- -Unknown-

UPDATE `quest_template` SET `RewardBonusMoney`=10750, `VerifiedBuild`=46879 WHERE `ID`=65994; -- Djaradin Djustice
UPDATE `quest_template` SET `VerifiedBuild`=46879 WHERE `ID` IN (65938, 46736, 46735, 46277, 66042, 66000, 65999, 65998, 53435, 50606, 50604, 50562);

DELETE FROM `quest_objectives` WHERE `ID` IN (431620 /*431620*/, 428526 /*428526*/, 432436 /*432436*/, 432034 /*432034*/, 432033 /*432033*/, 432032 /*432032*/, 432031 /*432031*/, 432030 /*432030*/, 432029 /*432029*/, 432028 /*432028*/, 432026 /*432026*/, 429422 /*429422*/, 431837 /*431837*/, 431754 /*431754*/, 429421 /*429421*/, 431836 /*431836*/, 429399 /*429399*/, 429398 /*429398*/, 431713 /*431713*/, 428339 /*428339*/, 428340 /*428340*/, 428341 /*428341*/, 428331 /*428331*/, 428330 /*428330*/, 428302 /*428302*/, 431721 /*431721*/, 431715 /*431715*/, 422213 /*422213*/, 422212 /*422212*/, 429441 /*429441*/, 422184 /*422184*/, 422183 /*422183*/, 429440 /*429440*/, 422196 /*422196*/, 422163 /*422163*/, 429439 /*429439*/, 431875 /*431875*/, 429895 /*429895*/, 429870 /*429870*/, 429862 /*429862*/, 429861 /*429861*/, 429779 /*429779*/, 430335 /*430335*/, 430334 /*430334*/, 430333 /*430333*/, 429787 /*429787*/, 429786 /*429786*/, 429785 /*429785*/, 430337 /*430337*/, 429774 /*429774*/, 429773 /*429773*/, 431418 /*431418*/, 431417 /*431417*/, 431416 /*431416*/, 431415 /*431415*/, 430383 /*430383*/, 430382 /*430382*/, 430380 /*430380*/, 430388 /*430388*/, 431032 /*431032*/, 429384 /*429384*/, 427107 /*427107*/, 427106 /*427106*/, 427109 /*427109*/, 427108 /*427108*/, 431403 /*431403*/, 427086 /*427086*/, 429819 /*429819*/, 430094 /*430094*/, 427562 /*427562*/, 428675 /*428675*/, 427836 /*427836*/, 427620 /*427620*/, 430776 /*430776*/);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
(431620, 66931, 0, 1, 1, 187278, 1, 28, 0, 0, '', 46879), -- 431620
(428526, 66931, 0, 0, 0, 190292, 1, 0, 0, 0, 'Commotion discovered', 46879), -- 428526
(432436, 68799, 0, 0, 0, 199685, 1, 0, 0, 0, 'Ride Relastrasza to the Skytop launch tower', 46879), -- 432436
(432034, 72481, 0, 7, 7, 199075, 1, 0, 0, 0, 'Wild Preserve Circuit', 46879), -- 432034
(432033, 72481, 0, 6, 6, 199072, 1, 0, 0, 0, 'Flashfrost Flyover', 46879), -- 432033
(432032, 72481, 0, 5, 5, 199070, 1, 0, 0, 0, 'Wingrest Roundabout', 46879), -- 432032
(432031, 72481, 0, 4, 4, 199067, 1, 0, 0, 0, 'Uktulut Coaster', 46879), -- 432031
(432030, 72481, 0, 3, 3, 199065, 1, 0, 0, 0, 'Apex Canopy River Run', 46879), -- 432030
(432029, 72481, 0, 2, 2, 199062, 1, 0, 0, 0, 'Emberflow Flight', 46879), -- 432029
(432028, 72481, 0, 1, 1, 199060, 1, 0, 0, 0, 'Wild Preserve Slalom', 46879), -- 432028
(432026, 72481, 0, 0, 0, 199058, 1, 0, 0, 0, 'Ruby Lifeshrine Loop', 46879), -- 432026
(429422, 68798, 3, 4, 1, 193411, 1, 2, 0, 0, 'Speak to Celormu', 46879), -- 429422
(431837, 68798, 14, 3, 4, 139846, 1, 2, 0, 0, 'Learn the \'Take to the Skies\' Skill with Lithragosa', 46879), -- 431837
(431754, 68798, 0, 2, 2, 193364, 1, 2, 0, 0, 'View the Dragonriding Skill Track with Lithragosa', 46879), -- 431754
(429421, 68798, 3, 1, 0, 193364, 1, 2, 0, 0, 'Speak to Lithragosa', 46879), -- 429421
(431836, 68798, 14, 0, 3, 139844, 1, 0, 0, 0, 'Collect the Dragon Glyph by the Rostrum of Transformation', 46879), -- 431836
(429399, 68797, 0, 1, 1, 193369, 1, 2, 0, 0, 'Use the Rostrum of Transformation', 46879), -- 429399
(429398, 68797, 3, 0, 0, 190839, 1, 0, 0, 0, 'Meet Glensera in the Skytop Observatory', 46879), -- 429398
(431713, 72089, 0, 0, 0, 182847, 1, 0, 0, 0, 'Complete the Course', 46879), -- 431713
(428339, 66827, 0, 5, 3, 191293, 1, 0, 0, 0, 'Lush Seed Pods Offered', 46879), -- 428339
(428340, 66827, 0, 4, 4, 191281, 1, 0, 0, 0, 'Ripened Dragonfruit Offered', 46879), -- 428340
(428341, 66827, 0, 3, 5, 191292, 1, 2, 0, 0, 'Fragrant Dragonflowers Offered', 46879), -- 428341
(428331, 66827, 0, 2, 2, 191297, 5, 0, 0, 0, 'Lush Seed Pods Gathered', 46879), -- 428331
(428330, 66827, 0, 1, 1, 191296, 5, 0, 0, 0, 'Ripened Dragonfruit Gathered', 46879), -- 428330
(428302, 66827, 0, 0, 0, 191254, 5, 0, 0, 0, 'Fragrant Dragonflowers Gathered', 46879), -- 428302
(431721, 68796, 0, 1, 2, 198050, 1, 2, 0, 0, 'Race to the Skytop Observatory', 46879), -- 431721
(431715, 68796, 0, 0, 1, 198049, 1, 0, 0, 0, 'Speak with Celormu to start the race', 46879), -- 431715
(422213, 65133, 0, 2, 1, 182847, 1, 0, 0, 0, 'Land in the Target Area', 46879), -- 422213
(422212, 65133, 0, 1, 0, 182800, 5, 0, 0, 0, 'Pass Through The Rings', 46879), -- 422212
(429441, 65133, 0, 0, 2, 191503, 1, 4, 0, 0, 'Hop on a Dragonriding Mount', 46879), -- 429441
(422184, 65120, 0, 2, 1, 182847, 1, 0, 0, 0, 'Land in the Target Area', 46879), -- 422184
(422183, 65120, 0, 1, 0, 182800, 5, 0, 0, 0, 'Glide Through The Rings', 46879), -- 422183
(429440, 65120, 0, 0, 2, 191503, 1, 4, 0, 0, 'Hop on a Dragonriding Mount', 46879), -- 429440
(422196, 65118, 0, 2, 1, 182847, 1, 0, 0, 0, 'Land in the Target Area', 46879), -- 422196
(422163, 65118, 0, 1, 0, 182800, 5, 0, 0, 0, 'Glide Through The Rings', 46879), -- 422163
(429439, 65118, 0, 0, 2, 191503, 1, 4, 0, 0, 'Hop on your Renewed Proto-Drake mount', 46879), -- 429439
(431875, 70132, 0, 1, 1, 194434, 1, 2, 0, 0, 'Listen to Veritistrasz\'s Stories', 46879), -- 431875
(429895, 70132, 0, 0, 0, 198729, 1, 0, 0, 0, 'Sit and look at the view', 46879), -- 429895
(429870, 70061, 0, 3, 3, 194159, 1, 0, 0, 0, '', 46879), -- 429870
(429862, 70061, 0, 2, 2, 194142, 6, 0, 0, 0, '', 46879), -- 429862
(429861, 70061, 0, 1, 1, 193994, 12, 2, 0, 0, '', 46879), -- 429861
(429779, 70061, 0, 0, 0, 193979, 1, 0, 0, 0, 'Ruby Whelpling chosen', 46879), -- 429779
(430335, 70058, 0, 8, 8, 193991, 1, 28, 0, 0, '', 46879), -- 430335
(430334, 70058, 0, 7, 7, 198595, 1, 28, 0, 0, '', 46879), -- 430334
(430333, 70058, 0, 6, 6, 193988, 1, 28, 0, 0, '', 46879), -- 430333
(429787, 70058, 0, 5, 5, 198605, 1, 28, 0, 0, '', 46879), -- 429787
(429786, 70058, 0, 4, 1, 193987, 1, 28, 0, 0, '', 46879), -- 429786
(429785, 70058, 0, 3, 0, 193995, 1, 28, 0, 0, '', 46879), -- 429785
(430337, 70058, 1, 2, 4, 198345, 1, 0, 1, 0, 'Glass Bead', 46879), -- 430337
(429774, 70058, 1, 1, 3, 198344, 3, 0, 1, 0, '', 46879), -- 429774
(429773, 70058, 1, 0, 2, 198343, 5, 0, 1, 0, '', 46879), -- 429773
(431418, 66825, 0, 8, 8, 191468, 1, 28, 0, 0, '[DNT] Can', 46879), -- 431418
(431417, 66825, 0, 7, 3, 191461, 1, 28, 0, 0, '[DNT] Lasso', 46879), -- 431417
(431416, 66825, 0, 6, 2, 191466, 1, 28, 0, 0, '[DNT] Jar', 46879), -- 431416
(431415, 66825, 0, 5, 1, 191467, 1, 28, 0, 0, '[DNT] Rake', 46879), -- 431415
(430383, 66825, 2, 4, 7, 377300, 1, 284, 0, 0, '[DNT] Watering Can presented', 46879), -- 430383
(430382, 66825, 2, 3, 6, 377301, 1, 284, 0, 0, '[DNT] Lasso presented', 46879), -- 430382
(430380, 66825, 2, 2, 5, 377298, 1, 284, 0, 0, '[DNT] Jar presented', 46879), -- 430380
(430388, 66825, 2, 1, 4, 377302, 1, 284, 0, 0, '[DNT] Rake presented', 46879), -- 430388
(431032, 66825, 0, 0, 0, 196830, 4, 0, 0, 0, 'Callings chosen', 46879), -- 431032
(429384, 68795, 0, 0, 0, 193287, 1, 0, 0, 0, 'Speak to Lord Andestrasz about Dragonriding', 46879), -- 429384
(427107, 66115, 0, 3, 1, 189260, 1, 2, 0, 0, 'Speak to Zahkrana', 46879), -- 427107
(427106, 66115, 0, 2, 0, 185904, 1, 2, 0, 0, 'Speak to Mother Elion', 46879), -- 427106
(427109, 66115, 0, 1, 3, 189262, 1, 2, 0, 0, 'Speak to Akxall', 46879), -- 427109
(427108, 66115, 0, 0, 2, 189261, 1, 0, 0, 0, 'Speak to Xius', 46879), -- 427108
(431403, 66114, 0, 2, 2, 197090, 1, 2, 0, 0, 'Show Queen Alexstrasza the infused egg', 46879), -- 431403
(427086, 66114, 0, 1, 0, 191761, 1, 0, 0, 0, 'Ride with Majordomo Selistra to the Ruby Lifeshrine', 46879), -- 427086
(429819, 66114, 0, 0, 1, 191768, 1, 28, 0, 0, '', 46879), -- 429819
(430094, 70179, 1, 0, 0, 198511, 10, 0, 1, 0, '', 46879), -- 430094
(427562, 66001, 0, 3, 0, 190211, 1, 2, 0, 0, 'Carry the egg to safety', 46879), -- 427562
(428675, 66001, 0, 2, 3, 191889, 1, 28, 0, 0, 'Tanking', 46879), -- 428675
(427836, 66001, 0, 1, 2, 191888, 1, 2, 0, 0, 'Pick up the Infused Dragon Egg', 46879), -- 427836
(427620, 66001, 0, 0, 1, 190269, 1, 0, 0, 0, 'Meet Sendrax by the ritual site', 46879), -- 427620
(430776, 70648, 0, 0, 0, 195915, 1, 1, 0, 0, '', 46879); -- 430776

UPDATE `quest_objectives` SET `VerifiedBuild`=46879 WHERE `ID` IN (428677, 427742, 427740, 430414, 427739, 423757, 423756, 427440, 289536, 289535, 289167, 427064, 423785, 423784, 423783, 423782, 423781, 423780, 423779, 423778, 427713, 427712, 427711, 427710, 427709, 427692, 427448, 427462, 427657, 427655, 427654, 427478, 427477, 341368, 336952, 336954, 336202);

DELETE FROM `quest_visual_effect` WHERE (`Index`=0 AND `ID` IN (432436,429422,431837,431754,429421,431836,429399,429398,428339,428340,428341,428331,428330,428302,431721,431715,431875,429895,429870,429862,429861,429779,430335,430334,430333,429787,429786,429785,430337,430383,430382,430380,430388,431032,429384,427106,431403,427086,430094,427562,427836,427620)) OR (`Index`=1 AND `ID` IN (430337,431032,430094,427562,427836)) OR (`Index`=3 AND `ID`=431032) OR (`Index`=2 AND `ID` IN (431032,430094,427562));
INSERT INTO `quest_visual_effect` (`ID`, `Index`, `VisualEffect`, `VerifiedBuild`) VALUES
(432436, 0, 21301, 46879),
(429422, 0, 2099, 46879),
(431837, 0, 20732, 46879),
(431754, 0, 2099, 46879),
(429421, 0, 2099, 46879),
(431836, 0, 20731, 46879),
(429399, 0, 19734, 46879),
(429398, 0, 2099, 46879),
(428339, 0, 2099, 46879),
(428340, 0, 2099, 46879),
(428341, 0, 2099, 46879),
(428331, 0, 2100, 46879),
(428330, 0, 2100, 46879),
(428302, 0, 2100, 46879),
(431721, 0, 20649, 46879),
(431715, 0, 20649, 46879),
(431875, 0, 20755, 46879),
(429895, 0, 20755, 46879),
(429870, 0, 19902, 46879),
(429862, 0, 19902, 46879),
(429861, 0, 19902, 46879),
(429779, 0, 19902, 46879),
(430335, 0, 20074, 46879),
(430334, 0, 20075, 46879),
(430333, 0, 20073, 46879),
(429787, 0, 20072, 46879),
(429786, 0, 20071, 46879),
(429785, 0, 20070, 46879),
(430337, 1, 20069, 46879),
(430337, 0, 20069, 46879),
(430383, 0, 2099, 46879),
(430382, 0, 2099, 46879),
(430380, 0, 2099, 46879),
(430388, 0, 2099, 46879),
(431032, 3, 21310, 46879),
(431032, 2, 21309, 46879),
(431032, 1, 21308, 46879),
(431032, 0, 21307, 46879),
(429384, 0, 2099, 46879),
(427106, 0, 18845, 46879),
(431403, 0, 20485, 46879),
(427086, 0, 18832, 46879),
(430094, 2, 19944, 46879),
(430094, 1, 19943, 46879),
(430094, 0, 19942, 46879),
(427562, 2, 18841, 46879),
(427562, 1, 18840, 46879),
(427562, 0, 18839, 46879),
(427836, 1, 18838, 46879),
(427836, 0, 18837, 46879),
(427620, 0, 18836, 46879);

UPDATE `quest_visual_effect` SET `VerifiedBuild`=46879 WHERE (`ID`=423779 AND `Index`=0) OR (`ID`=427448 AND `Index` IN (5,4,3,2,1,0)) OR (`ID`=427478 AND `Index`=0) OR (`ID`=427477 AND `Index` IN (1,0));

DELETE FROM `quest_reward_display_spell` WHERE (`Idx`=0 AND `QuestID` IN (68797,68795,66114));
INSERT INTO `quest_reward_display_spell` (`QuestID`, `Idx`, `SpellID`, `PlayerConditionID`, `VerifiedBuild`) VALUES
(68797, 0, 385274, 0, 46879),
(68795, 0, 376027, 0, 46879),
(66114, 0, 395209, 0, 46879);


DELETE FROM `creature_template` WHERE `entry` IN (187955 /*Krendisc*/, 192491 /*Vaknai*/, 192498 /*Haephesta*/, 188029 /*Sprightly Butterfly*/, 190269 /*Sendrax*/, 190273 /*Scout Kuvaeth*/, 192512 /*Boisterous Child*/, 190292 /*Alexstrasza the Life-Binder*/, 190293 /*Majordomo Selistra*/, 190295 /*Akxall*/, 190298 /*Tracker Two*/, 192539 /*Miguel Bright*/, 188074 /*Agitated Sidewalker*/, 190326 /*Bronze Timekeeper*/, 194800 /*Duroz Scaletaker*/, 194801 /*Kolgar Flameguard*/, 194805 /*Bathoras*/, 192574 /*Thomas Bright*/, 194818 /*Dragon Glyph*/, 188107 /*Tionistrasz*/, 194821 /*Dragon Glyph*/, 185904 /*Mother Elion*/, 192625 /*Ruby Groundskeeper*/, 194872 /*Disenchanted Broom*/, 192674 /*Mahra Treebender*/, 197166 /*Dragonspawn Apprentice*/, 197211 /*Gurblbrblr the Invader*/, 197223 /*Waygate Bunny*/, 188280 /*Excited Vorquin*/, 190525 /*Vaeros*/, 190536 /*Veladormi*/, 190543 /*Bothersome Bee*/, 190547 /*Lifewarding Gardener*/, 190548 /*Lifetending Gardener*/, 195050 /*Bronze Tender*/, 195051 /*Azure Tender*/, 195052 /*Sapphire Tender*/, 197308 /*Dormant Waygate*/, 186143 /*Handhold*/, 186146 /*Handhold*/, 195120 /*Ruby Skyguard*/, 195125 /*Ruby Skyguard*/, 190660 /*Cautious Duck*/, 184017 /*Eager Acquisitionist*/, 199684 /*Relastrasza*/, 199686 /*Generic Bunny*/, 199689 /*Arrow*/, 186332 /*Dragonscale Researcher*/, 186333 /*Dragonscale Researcher*/, 190818 /*Midormi*/, 190820 /*Yvendormi*/, 190822 /*Peledormu*/, 193061 /*Danastra*/, 190839 /*Glensera*/, 193077 /*Ruby Percher*/, 193082 /*Inquisitive Scout*/, 190852 /*Soil Bunny [DNT]*/, 193097 /*Peaceful Duck*/, 190866 /*Akora*/, 190868 /*Keshki*/, 190889 /*Amella*/, 190912 /*Ruby Whelpling*/, 190914 /*Emerald Whelpling*/, 190915 /*Bronze Whelpling*/, 190916 /*Ruby Warden*/, 190917 /*Ruby Whelpwatcher*/, 190918 /*Emerald Whelpwatcher*/, 188695 /*Tracker*/, 197702 /*"Resting" Shrineguard*/, 197703 /*Ruby Searer*/, 197704 /*Curious Child*/, 190998 /*Bossy Hornswog*/, 191012 /*Akora*/, 191013 /*Keshki*/, 193261 /*Kah'ra*/, 191025 /*Lifecaller Tzadrak*/, 191027 /*Lasztak*/, 191031 /*Ruby Tender*/, 182086 /*Hek the Hungry Hornswog*/, 182087 /*Feeding Instructions*/, 193287 /*Lord Andestrasz*/, 193304 /*Ru'kroszk*/, 193329 /*Displaced Earth*/, 191098 /*Vivid Axebeak*/, 191099 /*Overzealous Bloom*/, 184394 /*Agorithos 0*/, 193359 /*Lord Andestrasz*/, 191126 /*Ruby Shrineguard*/, 193364 /*Lithragosa*/, 186692 /*Ruby Swarmer*/, 193411 /*Celormu*/, 191174 /*Vaeros*/, 191176 /*Dazakros*/, 191179 /*Target Bunny*/, 193436 /*Ruby Mallard*/, 193441 /*Ruby Duckling*/, 193477 /*Azerastrasz*/, 186771 /*Ruby Whelpling*/, 191254 /*Fragrant Dragonflower*/, 186795 /*Majordomo Selistra*/, 191280 /*Dazakros*/, 191281 /*Fruit Basket*/, 191292 /*Flower Basket*/, 191293 /*Seed Basket*/, 191296 /*Ripened Dragonfruit*/, 186822 /*Infused Ruby Whelpling*/, 191297 /*Lush Seed Pod*/, 191315 /*Herald of Frost*/, 198034 /*Dripclaw*/, 189090 /*Beleaguered Explorer*/, 198040 /*Celormu*/, 189103 /*Scruffy Ottuk*/, 198060 /*Skytop Observatory*/, 189121 /*Igneoid*/, 193609 /*Ruby Peafowl*/, 182439 /*Snappy Sidewalker*/, 198100 /*Hope Kite*/, 198115 /*Hope Kite*/, 198116 /*Hope Kite*/, 198125 /*Isarian Shadowplume*/, 193670 /*Lively Bloom*/, 198191 /*Bronze Timekeeper Assistant*/, 191490 /*Dragonscale Researcher*/, 193729 /*Jubilant Cricket*/, 191492 /*Dragonscale Researcher*/, 189260 /*Zahkrana*/, 189261 /*Xius*/, 189262 /*Akxall*/, 193737 /*Ruby Tender*/, 193752 /*Elegant Vorquin*/, 193753 /*Elegant Foal*/, 193756 /*Docile Kit*/, 193757 /*Tzurok*/, 184811 /*Eager Acquisitionist*/, 187058 /*Ruby Scaleguard*/, 187060 /*Ruby Keeper*/, 187071 /*Nurse Sentry*/, 187072 /*Ruby Shrineguard*/, 187073 /*Ruby Sitter*/, 193790 /*Sundered Supplyhand*/, 193791 /*Sundered Mercenary*/, 187084 /*Galestrike Primalist*/, 180377 /*Handhold*/, 187089 /*Flashfrost Tarasek*/, 198275 /*Lounging Explorer*/, 187110 /*Ancient of Shelter*/, 198301 /*Sound Event Stalker*/, 187130 /*Amella*/, 191619 /*Mature Hornswog*/, 196109 /*Elder Proto-Dragon*/, 191653 /*Coastal Salamanther*/, 191656 /*Young Salamanther*/, 191659 /*Prime Salamanther*/, 189439 /*Golden Skitterbug*/, 193920 /*Kahtzar*/, 189448 /*Trellain*/, 189450 /*Playful Whelpling*/, 193955 /*Lillistrasza*/, 193979 /*Ruby Whelpling*/, 198454 /*Dragon Glyph*/, 198456 /*Dragon Glyph*/, 193983 /*Boisterous Instigator*/, 193987 /*Valdestrasz*/, 193988 /*Andustrasza*/, 198464 /*Rostrum of Transformation*/, 193991 /*Lyrastrasz*/, 193994 /*Agitated Weedling*/, 193995 /*Rathestrasz*/, 187290 /*Alexstrasza the Life-Binder*/, 191765 /*Mean Duck*/, 187292 /*Holthkastrasz*/, 187295 /*Borrowed Otter Mount*/, 194008 /*Lillistrasza*/, 191795 /*Waking Cricket*/, 191796 /*Tiny Drop*/, 191820 /*Massive Proto-Dragon*/, 191831 /*Ravenous Dreadsquall*/, 187363 /*Zienestrasz*/, 194076 /*Veritistrasz*/, 194099 /*Urlostrasz*/, 187389 /*Sweelin*/, 187393 /*Displaced Earth*/, 189637 /*Curious Duckling*/, 191881 /*Lasztak*/, 198595 /*Estarastrasz*/, 191891 /*Sendrax*/, 191892 /*Infused Dragon Egg*/, 191893 /*Zherrak*/, 198605 /*Tirastrasza*/, 191894 /*Krillonn*/, 198615 /*Tracker Dragon Glyph*/, 194142 /*Intrusive Pupstinger*/, 198623 /*Tracker Dragon Glyph*/, 198624 /*Tracker Dragon Glyph*/, 198628 /*Tracker Dragon Glyph*/, 187444 /*Kajithalan*/, 198631 /*Tracker Dragon Glyph*/, 194159 /*Relentless Gust*/, 194174 /*Amella*/, 191954 /*Kskeiton*/, 194195 /*Lifeshrine Door*/, 194196 /*Cautious Drakerider*/, 194201 /*Touring Drakerider*/, 194202 /*Inventive Drakerider*/, 194203 /*Reckless Drakerider*/, 194204 /*Swashbuckling Drakerider*/, 191980 /*Xolleth*/, 191982 /*Faramin*/, 191989 /*Dragon Glyph*/, 189755 /*Ruby Whelpminder*/, 194243 /*Saddled Proto-Drake*/, 194244 /*Saddled Proto-Drake*/, 194246 /*Saddled Proto-Drake*/, 194247 /*Saddled Proto-Drake*/, 192010 /*Szarostrasza*/, 194248 /*Saddled Proto-Drake*/, 192013 /*Wild Duckling*/, 196495 /*Over-Pollinated Lasher*/, 192021 /*Ruby Pupil*/, 189784 /*Harried Guardian*/, 192026 /*Ruby Pupil*/, 194274 /*Cavalier Drakerider*/, 194279 /*Reckless Drakerider*/, 192049 /*Swoglet*/, 189812 /*Cliffdrip Snapstrider*/, 194288 /*Swashbuckling Drakerider*/, 189814 /*Cliffdrip Wavemender*/, 189815 /*Cliffdrip Fallstriker*/, 194293 /*Saddled Proto-Drake*/, 192069 /*Vorquin Runt*/, 183141 /*Celormu*/, 192096 /*Ruby Dozer*/, 194334 /*Crystastrasza*/, 194335 /*Mazastrasz*/, 196583 /*Bronze Timekeeper*/, 189881 /*Elemental Target [DNT]*/, 198843 /*Ruby Scaleguard*/, 187683 /*Waking Duck*/, 192168 /*Docile Slyvern*/, 185464 /*Handhold*/, 192178 /*Grazing Hornstrider*/, 192186 /*Territorial Axebeak*/, 194432 /*Meehran Highlock*/, 185484 /*Handhold*/, 185485 /*Handhold*/, 185489 /*King Drippy*/, 185490 /*Entranced Water Elemental*/, 187738 /*Boost*/, 187745 /*Disoriented Watcher*/, 194474 /*Zhustostrasza*/, 194478 /*Clokkistrasz*/, 194479 /*Sprightly Butterfly*/, 187789 /*Energy*/, 196753 /*Vakaron*/, 190042 /*Ascorbis*/, 192284 /*Kandrostrasz*/, 194523 /*Raging Elemental*/, 194524 /*Earthshatter Elemental*/, 196774 /*Zoristrasz*/, 192305 /*Boots*/, 190090 /*Infused Dragon Egg*/, 194575 /*Rising Tempest*/, 196827 /*Crabtender Kad'irsza*/, 190123 /*Bronze Timekeeper*/, 194605 /*Bron*/, 194606 /*Matthias Darkwall*/, 194607 /*Wind Eagle*/);
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `unit_class`, `WidgetSetID`, `WidgetSetUnitConditionID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `VerifiedBuild`) VALUES
(187955, 0, 0, 'Krendisc', '', 'Blacksmithing & Engineering Supplies', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 2, 1, 0, 0, 214633, 46879), -- Krendisc
(192491, 0, 0, 'Vaknai', '', 'Flight Master', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 220701, 46879), -- Vaknai
(192498, 0, 0, 'Haephesta', '', 'Ambassador of the Artisan\'s Consortium', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 220708, 46879), -- Haephesta
(188029, 0, 0, 'Sprightly Butterfly', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 69, 214704, 46879), -- Sprightly Butterfly
(190269, 0, 0, 'Sendrax', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 32768, 2.20000004768371582, 1, 0, 0, 216960, 46879), -- Sendrax
(190273, 0, 0, 'Scout Kuvaeth', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 216964, 46879), -- Scout Kuvaeth
(192512, 0, 0, 'Boisterous Child', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 220722, 46879), -- Boisterous Child
(190292, 0, 0, 'Alexstrasza the Life-Binder', '', 'Queen of the Dragons', NULL, NULL, 9, 0, 0, 2, 0, 0, 1, 0, 2, 4, 0, 600, 1, 0, 0, 216983, 46879), -- Alexstrasza the Life-Binder
(190293, 0, 0, 'Majordomo Selistra', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 32768, 6, 1, 0, 0, 216984, 46879), -- Majordomo Selistra
(190295, 0, 0, 'Akxall', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1073742848, 0, 1, 1, 0, 0, 216986, 46879), -- Akxall
(190298, 0, 0, 'Tracker Two', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 117440518, 1, 1, 0, 0, 216989, 46879), -- Tracker Two
(192539, 0, 0, 'Miguel Bright', '', 'Artisan\'s Consortium', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 220749, 46879), -- Miguel Bright
(188074, 0, 0, 'Agitated Sidewalker', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 8, 1, 1, 0, 0.300000011920928955, 1, 0, 0, 214749, 46879), -- Agitated Sidewalker
(190326, 0, 0, 'Bronze Timekeeper', '', NULL, NULL, NULL, 9, 0, 5104, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 218519, 46879), -- Bronze Timekeeper
(194800, 0, 0, 'Duroz Scaletaker', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 223033, 46879), -- Duroz Scaletaker
(194801, 0, 0, 'Kolgar Flameguard', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 223034, 46879), -- Kolgar Flameguard
(194805, 0, 0, 'Bathoras', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 223038, 46879), -- Bathoras
(192574, 0, 0, 'Thomas Bright', '', 'Artisan\'s Consortium', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 220784, 46879), -- Thomas Bright
(194818, 0, 0, 'Dragon Glyph', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 67108870, 1, 1, 0, 0, 223051, 46879), -- Dragon Glyph
(188107, 0, 0, 'Tionistrasz', '', 'Stable Master', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 2, 1, 0, 0, 214784, 46879), -- Tionistrasz
(194821, 0, 0, 'Dragon Glyph', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 67108870, 1, 1, 0, 0, 223054, 46879), -- Dragon Glyph
(185904, 0, 0, 'Mother Elion', '', 'The Last Eggtender', NULL, NULL, 9, 0, 0, 8, 0, 0, 1, 0, 2, 0, 0, 6, 1, 0, 0, 210169, 46879), -- Mother Elion
(192625, 0, 0, 'Ruby Groundskeeper', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 1, 0, 2, 0, 0, 15, 5, 0, 0, 220835, 46879), -- Ruby Groundskeeper
(194872, 0, 0, 'Disenchanted Broom', '', NULL, NULL, 'openhandglow', 9, 0, 5298, 1, 0, 0, 0, 0, 10, 1610612752, 117440518, 1, 1, 0, 0, 223105, 46879), -- Disenchanted Broom
(192674, 0, 0, 'Mahra Treebender', '', 'Profession Equipment Specialist', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 220884, 46879), -- Mahra Treebender
(197166, 0, 0, 'Dragonspawn Apprentice', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 225464, 46879), -- Dragonspawn Apprentice
(197211, 0, 0, 'Gurblbrblr the Invader', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 2147483720, 0, 2.5, 1, 0, 0, 225535, 46879), -- Gurblbrblr the Invader
(197223, 0, 0, 'Waygate Bunny', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1073742848, 0, 1, 1, 0, 0, 225547, 46879), -- Waygate Bunny
(188280, 0, 0, 'Excited Vorquin', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 0, 214966, 46879), -- Excited Vorquin
(190525, 0, 0, 'Vaeros', '', 'Nursery Director', NULL, NULL, 9, 9, 0, 2, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 218721, 46879), -- Vaeros
(190536, 0, 0, 'Veladormi', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 218732, 46879), -- Veladormi
(190543, 0, 0, 'Bothersome Bee', '', NULL, NULL, 'openhandglow', 9, 0, 0, 1, 0, 0, 0, 44, 1, 1, 0, 0.800000011920928955, 1, 0, 0, 218739, 46879), -- Bothersome Bee
(190547, 0, 0, 'Lifewarding Gardener', '', NULL, NULL, NULL, 9, 9, 0, 2, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 218743, 46879), -- Lifewarding Gardener
(190548, 0, 0, 'Lifetending Gardener', '', NULL, NULL, NULL, 9, 9, 0, 2, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 218744, 46879), -- Lifetending Gardener
(195050, 0, 0, 'Bronze Tender', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 2.20000004768371582, 1, 0, 0, 223287, 46879), -- Bronze Tender
(195051, 0, 0, 'Azure Tender', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 6, 1, 0, 0, 223288, 46879), -- Azure Tender
(195052, 0, 0, 'Sapphire Tender', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 2.20000004768371582, 1, 0, 0, 223289, 46879), -- Sapphire Tender
(197308, 0, 0, 'Dormant Waygate', '', NULL, NULL, 'questinteract', 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 6, 1, 1, 0, 0, 225646, 46879), -- Dormant Waygate
(186143, 0, 0, 'Handhold', '', NULL, NULL, 'openhand', 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 654311430, 1, 1, 0, 0, 210461, 46879), -- Handhold
(186146, 0, 0, 'Handhold', '', NULL, NULL, 'openhand', 9, 0, 0, 1, 710, 6640, 0, 0, 10, 1610612752, 654311430, 1, 1, 0, 0, 210464, 46879), -- Handhold
(195120, 0, 0, 'Ruby Skyguard', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 223357, 46879), -- Ruby Skyguard
(195125, 0, 0, 'Ruby Skyguard', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 223362, 46879), -- Ruby Skyguard
(190660, 0, 0, 'Cautious Duck', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 125, 1, 1, 0, 0.699999988079071044, 1, 0, 0, 218856, 46879), -- Cautious Duck
(184017, 0, 0, 'Eager Acquisitionist', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 0.5, 1, 0, 0, 207915, 46879), -- Eager Acquisitionist
(199684, 0, 0, 'Relastrasza', '', 'Ferry', NULL, 'vehichlecursor', 9, 0, 5483, 1, 0, 0, 1, 0, 2, 0, 0, 6, 1, 0, 0, 228174, 46879), -- Relastrasza
(199686, 0, 0, 'Generic Bunny', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1073742848, 0, 1, 1, 0, 0, 228177, 46879), -- Generic Bunny
(199689, 0, 0, 'Arrow', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 67108870, 1, 1, 0, 0, 228180, 46879), -- Arrow
(186332, 0, 0, 'Dragonscale Researcher', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 210652, 46879), -- Dragonscale Researcher
(186333, 0, 0, 'Dragonscale Researcher', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 210653, 46879), -- Dragonscale Researcher
(190818, 0, 0, 'Midormi', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 219014, 46879), -- Midormi
(190820, 0, 0, 'Yvendormi', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 219016, 46879), -- Yvendormi
(190822, 0, 0, 'Peledormu', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 219018, 46879), -- Peledormu
(193061, 0, 0, 'Danastra', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 10, 1, 0, 0, 221277, 46879), -- Danastra
(190839, 0, 0, 'Glensera', '', 'Transformation Trainer', NULL, 'trainer', 9, 9, 0, 8, 0, 0, 0, 0, 7, 134217728, 32768, 2.20000004768371582, 1, 0, 0, 219036, 46879), -- Glensera
(193077, 0, 0, 'Ruby Percher', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 1073741824, 0, 10, 1, 0, 0, 221293, 46879), -- Ruby Percher
(193082, 0, 0, 'Inquisitive Scout', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 221298, 46879), -- Inquisitive Scout
(190852, 0, 0, 'Soil Bunny [DNT]', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 219049, 46879), -- Soil Bunny [DNT]
(193097, 0, 0, 'Peaceful Duck', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 221313, 46879), -- Peaceful Duck
(190866, 0, 0, 'Akora', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 219063, 46879), -- Akora
(190868, 0, 0, 'Keshki', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 219065, 46879), -- Keshki
(190889, 0, 0, 'Amella', '', 'Head Egg-Tender', NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 219086, 46879), -- Amella
(190912, 0, 0, 'Ruby Whelpling', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 2, 0, 0, 0.5, 1, 0, 0, 219109, 46879), -- Ruby Whelpling
(190914, 0, 0, 'Emerald Whelpling', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 2, 0, 0, 0.5, 1, 0, 0, 219111, 46879), -- Emerald Whelpling
(190915, 0, 0, 'Bronze Whelpling', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 2, 0, 0, 0.5, 1, 0, 0, 219112, 46879), -- Bronze Whelpling
(190916, 0, 0, 'Ruby Warden', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 2, 1, 0, 0, 219113, 46879), -- Ruby Warden
(190917, 0, 0, 'Ruby Whelpwatcher', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 219114, 46879), -- Ruby Whelpwatcher
(190918, 0, 0, 'Emerald Whelpwatcher', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 219115, 46879), -- Emerald Whelpwatcher
(188695, 0, 0, 'Tracker', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 117440518, 1, 1, 0, 0, 215381, 46879), -- Tracker
(197702, 0, 0, '\"Resting\" Shrineguard', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 15, 1, 0, 0, 226052, 46879), -- "Resting" Shrineguard
(197703, 0, 0, 'Ruby Searer', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 226053, 46879), -- Ruby Searer
(197704, 0, 0, 'Curious Child', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 226054, 46879), -- Curious Child
(190998, 191960, 0, 'Bossy Hornswog', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 303, 2, 0, 0, 2, 1, 0, 0, 219195, 46879), -- Bossy Hornswog
(191012, 0, 0, 'Akora', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 219209, 46879), -- Akora
(191013, 0, 0, 'Keshki', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 219210, 46879), -- Keshki
(193261, 0, 0, 'Kah\'ra', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 151, 2, 0, 0, 1, 1, 0, 0, 221477, 46879), -- Kah'ra
(191025, 0, 0, 'Lifecaller Tzadrak', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 134217728, 0, 1.20000004768371582, 1, 0, 0, 219222, 46879), -- Lifecaller Tzadrak
(191027, 0, 0, 'Lasztak', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 219224, 46879), -- Lasztak
(191031, 0, 0, 'Ruby Tender', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 2, 0, 0, 0.60000002384185791, 1, 0, 0, 219228, 46879), -- Ruby Tender
(182086, 0, 0, 'Hek the Hungry Hornswog', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 303, 1, 0, 0, 1, 1, 0, 0, 205889, 46879), -- Hek the Hungry Hornswog
(182087, 0, 0, 'Feeding Instructions', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 117440518, 1, 1, 0, 0, 205890, 46879), -- Feeding Instructions
(193287, 0, 0, 'Lord Andestrasz', '', 'Dragonriding Emissary', NULL, NULL, 9, 9, 0, 1, 0, 0, 0, 0, 7, 0, 32768, 5, 1, 0, 0, 221503, 46879), -- Lord Andestrasz
(193304, 0, 0, 'Ru\'kroszk', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 221520, 46879), -- Ru'kroszk
(193329, 0, 0, 'Displaced Earth', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 4, 1610612752, 67108870, 1.399999976158142089, 1, 0, 0, 221545, 46879), -- Displaced Earth
(191098, 0, 0, 'Vivid Axebeak', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 1, 0, 0, 0.699999988079071044, 1, 0, 0, 219302, 46879), -- Vivid Axebeak
(191099, 0, 0, 'Overzealous Bloom', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 4, 256, 0, 1, 1, 0, 0, 219303, 46879), -- Overzealous Bloom
(184394, 0, 0, 'Agorithos 0', '', 'Blue Dragonflight', NULL, 'taxi', 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 5, 1, 0, 0, 208433, 46879), -- Agorithos 0
(193359, 0, 0, 'Lord Andestrasz', '', 'Dragonriding Emissary', NULL, NULL, 9, 9, 0, 1, 0, 0, 0, 0, 7, 0, 32768, 5, 1, 0, 0, 221575, 46879), -- Lord Andestrasz
(191126, 0, 0, 'Ruby Shrineguard', '', NULL, NULL, 'questinteract', 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 15, 1, 0, 0, 219330, 46879), -- Ruby Shrineguard
(193364, 0, 0, 'Lithragosa', '', 'Dragonriding Trainer', NULL, 'trainer', 9, 9, 0, 8, 0, 0, 0, 0, 2, 134217728, 32768, 2.20000004768371582, 1, 0, 0, 221580, 46879), -- Lithragosa
(186692, 0, 0, 'Ruby Swarmer', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 2, 0, 0, 0.300000011920928955, 1, 0, 0, 211017, 46879), -- Ruby Swarmer
(193411, 0, 0, 'Celormu', '', 'Dragonriding Trainer', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 134217728, 32768, 1, 1, 0, 0, 221627, 46879), -- Celormu
(191174, 0, 0, 'Vaeros', '', 'Nursery Director', NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 219379, 46879), -- Vaeros
(191176, 0, 0, 'Dazakros', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 219381, 46879), -- Dazakros
(191179, 0, 0, 'Target Bunny', '', NULL, NULL, 'questinteract', 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 83886086, 1, 1, 0, 0, 219384, 46879), -- Target Bunny
(193436, 0, 0, 'Ruby Mallard', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 125, 1, 1, 0, 0.300000011920928955, 1, 0, 0, 221656, 46879), -- Ruby Mallard
(193441, 0, 0, 'Ruby Duckling', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 0, 221661, 46879), -- Ruby Duckling
(193477, 0, 0, 'Azerastrasz', '', 'Flight Master', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 221698, 46879), -- Azerastrasz
(186771, 0, 0, 'Ruby Whelpling', '', NULL, NULL, 'vehichlecursor', 9, 0, 0, 8, 0, 0, 0, 0, 1, 0, 8388608, 1, 1, 0, 125, 211176, 46879), -- Ruby Whelpling
(191254, 0, 0, 'Fragrant Dragonflower', '', NULL, NULL, 'questinteract', 9, 0, 0, 1, 0, 0, 0, 0, 8, 1610612752, 117440518, 1, 1, 0, 0, 219459, 46879), -- Fragrant Dragonflower
(186795, 0, 0, 'Majordomo Selistra', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 32832, 6, 1, 0, 0, 211204, 46879), -- Majordomo Selistra
(191280, 0, 0, 'Dazakros', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 219485, 46879), -- Dazakros
(191281, 0, 0, 'Fruit Basket', '', NULL, NULL, 'questinteract', 9, 0, 0, 1, 0, 0, 0, 0, 8, 1610612752, 117440518, 1, 1, 0, 0, 219486, 46879), -- Fruit Basket
(191292, 0, 0, 'Flower Basket', '', NULL, NULL, 'questinteract', 9, 0, 0, 1, 0, 0, 0, 0, 8, 1610612752, 117440518, 1, 1, 0, 0, 219497, 46879), -- Flower Basket
(191293, 0, 0, 'Seed Basket', '', NULL, NULL, 'questinteract', 9, 0, 0, 1, 0, 0, 0, 0, 8, 1610612752, 117440518, 1, 1, 0, 0, 219498, 46879), -- Seed Basket
(191296, 0, 0, 'Ripened Dragonfruit', '', NULL, NULL, 'questinteract', 9, 0, 0, 1, 0, 0, 0, 0, 8, 1610612752, 67108870, 1, 1, 0, 0, 219501, 46879), -- Ripened Dragonfruit
(186822, 0, 0, 'Infused Ruby Whelpling', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 2, 0, 0, 0.300000011920928955, 1, 0, 0, 211233, 46879), -- Infused Ruby Whelpling
(191297, 0, 0, 'Lush Seed Pod', '', NULL, NULL, 'questinteract', 9, 0, 0, 1, 0, 0, 0, 0, 8, 1610612752, 117440518, 1, 1, 0, 0, 219502, 46879), -- Lush Seed Pod
(191315, 189864, 0, 'Herald of Frost', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 2, 1, 0, 0, 219520, 46879), -- Herald of Frost
(198034, 0, 0, 'Dripclaw', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 8, 1, 2147483720, 0, 1, 1, 0, 0, 226402, 46879), -- Dripclaw
(189090, 0, 0, 'Beleaguered Explorer', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 215776, 46879), -- Beleaguered Explorer
(198040, 0, 0, 'Celormu', '', 'Dragonriding Trainer', NULL, NULL, 9, 0, 5434, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 226408, 46879), -- Celormu
(189103, 0, 0, 'Scruffy Ottuk', '', NULL, NULL, 'wildpetcapturable', 9, 0, 0, 1, 0, 0, 0, 0, 14, 0, 0, 0.200000002980232238, 1, 0, 69, 215789, 46879), -- Scruffy Ottuk
(198060, 0, 0, 'Skytop Observatory', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1073742848, 0, 1, 1, 0, 0, 226428, 46879), -- Skytop Observatory
(189121, 0, 0, 'Igneoid', '', NULL, NULL, 'wildpetcapturable', 9, 0, 0, 1, 0, 0, 0, 0, 14, 0, 0, 0.200000002980232238, 1, 0, 100, 215807, 46879), -- Igneoid
(193609, 0, 0, 'Ruby Peafowl', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 7, 1, 1, 0, 1, 1, 0, 0, 221830, 46879), -- Ruby Peafowl
(182439, 0, 0, 'Snappy Sidewalker', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 8, 1, 0, 0, 0.300000011920928955, 1, 0, 0, 206253, 46879), -- Snappy Sidewalker
(198100, 0, 0, 'Hope Kite', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612736, 67108870, 1, 1, 0, 0, 226472, 46879), -- Hope Kite
(198115, 0, 0, 'Hope Kite', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 117440518, 1, 1, 0, 0, 226487, 46879), -- Hope Kite
(198116, 0, 0, 'Hope Kite', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 117440518, 1, 1, 0, 0, 226488, 46879), -- Hope Kite
(198125, 0, 0, 'Isarian Shadowplume', '', 'Inscription Trainer', NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 3, 1, 0, 0, 226497, 46879), -- Isarian Shadowplume
(193670, 0, 0, 'Lively Bloom', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 4, 256, 0, 0.300000011920928955, 1, 0, 0, 221891, 46879), -- Lively Bloom
(198191, 0, 0, 'Bronze Timekeeper Assistant', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 134217728, 0, 1, 1, 0, 0, 226563, 46879), -- Bronze Timekeeper Assistant
(191490, 0, 0, 'Dragonscale Researcher', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 219695, 46879), -- Dragonscale Researcher
(193729, 0, 0, 'Jubilant Cricket', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 1, 0, 0, 0.200000002980232238, 1, 0, 0, 221958, 46879), -- Jubilant Cricket
(191492, 0, 0, 'Dragonscale Researcher', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 219697, 46879), -- Dragonscale Researcher
(189260, 0, 0, 'Zahkrana', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 134217728, 0, 6, 1, 0, 0, 215946, 46879), -- Zahkrana
(189261, 0, 0, 'Xius', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 6, 1, 0, 0, 215947, 46879), -- Xius
(189262, 0, 0, 'Akxall', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 6, 1, 0, 0, 215948, 46879), -- Akxall
(193737, 0, 0, 'Ruby Tender', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 2.20000004768371582, 1, 0, 0, 221966, 46879), -- Ruby Tender
(193752, 0, 0, 'Elegant Vorquin', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 151, 2, 1, 0, 1, 1, 0, 0, 221981, 46879), -- Elegant Vorquin
(193753, 0, 0, 'Elegant Foal', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 151, 2, 0, 0, 0.300000011920928955, 1, 0, 0, 221982, 46879), -- Elegant Foal
(193756, 0, 0, 'Docile Kit', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 0, 221985, 46879), -- Docile Kit
(193757, 0, 0, 'Tzurok', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 221986, 46879), -- Tzurok
(184811, 0, 0, 'Eager Acquisitionist', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 0.5, 1, 0, 0, 208892, 46879), -- Eager Acquisitionist
(187058, 0, 0, 'Ruby Scaleguard', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 15, 1, 0, 144, 213679, 46879), -- Ruby Scaleguard
(187060, 0, 0, 'Ruby Keeper', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 15, 1, 0, 144, 213681, 46879), -- Ruby Keeper
(187071, 0, 0, 'Nurse Sentry', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 1, 0, 2, 0, 0, 15, 5, 0, 0, 213691, 46879), -- Nurse Sentry
(187072, 0, 0, 'Ruby Shrineguard', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 15, 1, 0, 0, 213692, 46879), -- Ruby Shrineguard
(187073, 0, 0, 'Ruby Sitter', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 2.20000004768371582, 1, 0, 0, 213693, 46879), -- Ruby Sitter
(193790, 0, 0, 'Sundered Supplyhand', '', NULL, NULL, NULL, 9, 0, 0, 4, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 222019, 46879), -- Sundered Supplyhand
(193791, 0, 0, 'Sundered Mercenary', '', NULL, NULL, NULL, 9, 0, 0, 4, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 222020, 46879), -- Sundered Mercenary
(187084, 189864, 0, 'Galestrike Primalist', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 213704, 46879), -- Galestrike Primalist
(180377, 0, 0, 'Handhold', '', NULL, NULL, 'openhand', 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 654311430, 1, 1, 0, 0, 204027, 46879), -- Handhold
(187089, 189864, 0, 'Flashfrost Tarasek', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 213709, 46879), -- Flashfrost Tarasek
(198275, 0, 0, 'Lounging Explorer', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 226647, 46879), -- Lounging Explorer
(187110, 0, 0, 'Ancient of Shelter', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 4, 0, 0, 8, 1, 0, 0, 213730, 46879), -- Ancient of Shelter
(198301, 0, 0, 'Sound Event Stalker', '', NULL, NULL, NULL, 8, 0, 0, 1, 0, 0, 6, 0, 10, 1073741824, 0, 0.100000001490116119, 1, 0, 129, 226673, 46879), -- Sound Event Stalker
(187130, 0, 0, 'Amella', '', 'Head Egg-Tender', NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 6, 1, 0, 0, 213750, 46879), -- Amella
(191619, 0, 0, 'Mature Hornswog', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 303, 2, 1, 0, 2, 1, 0, 0, 219824, 46879), -- Mature Hornswog
(196109, 0, 0, 'Elder Proto-Dragon', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 8, 1, 0, 0, 224372, 46879), -- Elder Proto-Dragon
(191653, 0, 0, 'Coastal Salamanther', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 288, 1, 1, 0, 1, 1, 0, 0, 219858, 46879), -- Coastal Salamanther
(191656, 0, 0, 'Young Salamanther', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 288, 1, 1, 0, 0.300000011920928955, 1, 0, 0, 219861, 46879), -- Young Salamanther
(191659, 0, 0, 'Prime Salamanther', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 288, 1, 0, 0, 5, 1, 0, 0, 219864, 46879), -- Prime Salamanther
(189439, 0, 0, 'Golden Skitterbug', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 0, 216123, 46879), -- Golden Skitterbug
(193920, 0, 0, 'Kahtzar', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0.60000002384185791, 1, 0, 0, 222149, 46879), -- Kahtzar
(189448, 0, 0, 'Trellain', '', 'Enchanting Supplies', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 134217728, 0, 2, 1, 0, 0, 216132, 46879), -- Trellain
(189450, 0, 0, 'Playful Whelpling', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 2, 0, 0, 0.300000011920928955, 1, 0, 0, 216134, 46879), -- Playful Whelpling
(193955, 0, 0, 'Lillistrasza', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 0.5, 1, 0, 0, 222184, 46879), -- Lillistrasza
(193979, 0, 0, 'Ruby Whelpling', '', NULL, NULL, 'vehichlecursor', 9, 0, 0, 8, 0, 0, 0, 0, 2, 8, 0, 5, 1, 0, 125, 222208, 46879), -- Ruby Whelpling
(198454, 0, 0, 'Dragon Glyph', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 67108870, 1, 1, 0, 0, 226833, 46879), -- Dragon Glyph
(198456, 0, 0, 'Dragon Glyph', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 67108870, 1, 1, 0, 0, 226835, 46879), -- Dragon Glyph
(193983, 0, 0, 'Boisterous Instigator', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 222212, 46879), -- Boisterous Instigator
(193987, 0, 0, 'Valdestrasz', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 222216, 46879), -- Valdestrasz
(193988, 0, 0, 'Andustrasza', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 222217, 46879), -- Andustrasza
(198464, 0, 0, 'Rostrum of Transformation', '', NULL, NULL, NULL, 9, 0, 5442, 1, 0, 0, 0, 0, 10, 1610612752, 67108870, 1, 1, 0, 0, 226843, 46879), -- Rostrum of Transformation
(193991, 0, 0, 'Lyrastrasz', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 222220, 46879), -- Lyrastrasz
(193994, 0, 0, 'Agitated Weedling', '', NULL, NULL, NULL, 9, 0, 0, 2, 0, 0, 0, 0, 4, 0, 0, 0.5, 1, 0, 0, 222223, 46879), -- Agitated Weedling
(193995, 0, 0, 'Rathestrasz', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 222224, 46879), -- Rathestrasz
(187290, 0, 0, 'Alexstrasza the Life-Binder', '', 'Queen of the Dragons', NULL, NULL, 9, 0, 0, 2, 0, 0, 1, 0, 2, 4, 32768, 600, 1, 0, 0, 213926, 46879), -- Alexstrasza the Life-Binder
(191765, 0, 0, 'Mean Duck', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 125, 1, 1, 0, 1.799999952316284179, 1, 0, 0, 219970, 46879), -- Mean Duck
(187292, 0, 0, 'Holthkastrasz', '', 'Ferry', NULL, NULL, 9, 0, 5449, 1, 0, 0, 1, 0, 2, 0, 0, 6, 1, 0, 0, 213928, 46879), -- Holthkastrasz
(187295, 0, 0, 'Borrowed Otter Mount', '', NULL, NULL, 'interact', 9, 0, 0, 1, 0, 0, 0, 0, 1, 4096, 0, 10, 1, 0, 0, 213931, 46879), -- Borrowed Otter Mount
(194008, 0, 0, 'Lillistrasza', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 8388608, 0, 0.5, 1, 0, 0, 222237, 46879), -- Lillistrasza
(191795, 0, 0, 'Waking Cricket', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 1, 0, 0, 0.200000002980232238, 1, 0, 0, 220000, 46879), -- Waking Cricket
(191796, 0, 0, 'Tiny Drop', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 0, 220001, 46879), -- Tiny Drop
(191820, 0, 0, 'Massive Proto-Dragon', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 8, 1, 0, 0, 220025, 46879), -- Massive Proto-Dragon
(191831, 0, 0, 'Ravenous Dreadsquall', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 26, 1, 1, 0, 2, 1, 0, 0, 220036, 46879), -- Ravenous Dreadsquall
(187363, 0, 0, 'Zienestrasz', '', NULL, NULL, NULL, 9, 0, 5450, 1, 0, 0, 1, 0, 2, 0, 0, 6, 1, 0, 0, 214001, 46879), -- Zienestrasz
(194076, 0, 0, 'Veritistrasz', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 2, 1, 0, 0, 222305, 46879), -- Veritistrasz
(194099, 0, 0, 'Urlostrasz', '', 'Ferry', NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 6, 1, 0, 0, 222328, 46879), -- Urlostrasz
(187389, 0, 0, 'Sweelin', '', 'Innkeeper', NULL, NULL, 9, 9, 0, 1, 0, 0, 0, 0, 2, 0, 0, 6, 1, 0, 0, 214027, 46879), -- Sweelin
(187393, 190976, 0, 'Displaced Earth', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 1, 1, 0, 0, 214031, 46879), -- Displaced Earth
(189637, 0, 0, 'Curious Duckling', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 0, 216322, 46879), -- Curious Duckling
(191881, 0, 0, 'Lasztak', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 220086, 46879), -- Lasztak
(198595, 0, 0, 'Estarastrasz', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 226978, 46879), -- Estarastrasz
(191891, 0, 0, 'Sendrax', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 2.20000004768371582, 1, 0, 0, 220096, 46879), -- Sendrax
(191892, 0, 0, 'Infused Dragon Egg', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 1610612752, 83886086, 1, 1, 0, 0, 220097, 46879), -- Infused Dragon Egg
(191893, 0, 0, 'Zherrak', '', 'Alchemy Trainer', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 220098, 46879), -- Zherrak
(198605, 0, 0, 'Tirastrasza', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 226989, 46879), -- Tirastrasza
(191894, 0, 0, 'Krillonn', '', 'Tailoring Trainer', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 134217728, 0, 1.20000004768371582, 1, 0, 0, 220099, 46879), -- Krillonn
(198615, 0, 0, 'Tracker Dragon Glyph', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 67108870, 1, 1, 0, 0, 227000, 46879), -- Tracker Dragon Glyph
(194142, 0, 0, 'Intrusive Pupstinger', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 44, 1, 524288, 0, 1, 1, 0, 0, 222371, 46879), -- Intrusive Pupstinger
(198623, 0, 0, 'Tracker Dragon Glyph', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 67108870, 1, 1, 0, 0, 227008, 46879), -- Tracker Dragon Glyph
(198624, 0, 0, 'Tracker Dragon Glyph', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 67108870, 1, 1, 0, 0, 227009, 46879), -- Tracker Dragon Glyph
(198628, 0, 0, 'Tracker Dragon Glyph', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 67108870, 1, 1, 0, 0, 227013, 46879), -- Tracker Dragon Glyph
(187444, 0, 0, 'Kajithalan', '', 'Traveling Dragonbrew Vendor', NULL, NULL, 9, 9, 0, 4, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 214082, 46879), -- Kajithalan
(198631, 0, 0, 'Tracker Dragon Glyph', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 67108870, 1, 1, 0, 0, 227016, 46879), -- Tracker Dragon Glyph
(194159, 0, 0, 'Relentless Gust', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 4, 0, 0, 15, 1, 0, 0, 222388, 46879), -- Relentless Gust
(194174, 0, 0, 'Amella', '', 'Head Egg-Tender', NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 6, 1, 0, 0, 222403, 46879), -- Amella
(191954, 0, 0, 'Kskeiton', '', 'Trade Goods', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 220163, 46879), -- Kskeiton
(194195, 0, 0, 'Lifeshrine Door', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 67108870, 100, 1, 0, 0, 222424, 46879), -- Lifeshrine Door
(194196, 0, 0, 'Cautious Drakerider', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 222425, 46879), -- Cautious Drakerider
(194201, 0, 0, 'Touring Drakerider', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 222430, 46879), -- Touring Drakerider
(194202, 0, 0, 'Inventive Drakerider', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 222431, 46879), -- Inventive Drakerider
(194203, 0, 0, 'Reckless Drakerider', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 222432, 46879), -- Reckless Drakerider
(194204, 0, 0, 'Swashbuckling Drakerider', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 222433, 46879), -- Swashbuckling Drakerider
(191980, 0, 0, 'Xolleth', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 220189, 46879), -- Xolleth
(191982, 0, 0, 'Faramin', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 220191, 46879), -- Faramin
(191989, 0, 0, 'Dragon Glyph', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 67108870, 1, 1, 0, 0, 220198, 46879), -- Dragon Glyph
(189755, 0, 0, 'Ruby Whelpminder', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 216440, 46879), -- Ruby Whelpminder
(194243, 0, 0, 'Saddled Proto-Drake', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 222472, 46879), -- Saddled Proto-Drake
(194244, 0, 0, 'Saddled Proto-Drake', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 222473, 46879), -- Saddled Proto-Drake
(194246, 0, 0, 'Saddled Proto-Drake', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 222475, 46879), -- Saddled Proto-Drake
(194247, 0, 0, 'Saddled Proto-Drake', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 222476, 46879), -- Saddled Proto-Drake
(192010, 0, 0, 'Szarostrasza', '', 'Herbalism Trainer', NULL, NULL, 9, 0, 0, 4, 0, 0, 0, 0, 7, 134217728, 0, 1, 1, 0, 0, 220219, 46879), -- Szarostrasza
(194248, 0, 0, 'Saddled Proto-Drake', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 222477, 46879), -- Saddled Proto-Drake
(192013, 0, 0, 'Wild Duckling', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 69, 220222, 46879), -- Wild Duckling
(196495, 0, 0, 'Over-Pollinated Lasher', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 4, 256, 0, 1, 1, 0, 0, 224764, 46879), -- Over-Pollinated Lasher
(192021, 0, 0, 'Ruby Pupil', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 220230, 46879), -- Ruby Pupil
(189784, 0, 0, 'Harried Guardian', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 4096, 0, 15, 1, 0, 0, 216469, 46879), -- Harried Guardian
(192026, 0, 0, 'Ruby Pupil', '', 'Trade Supplies', NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 220235, 46879), -- Ruby Pupil
(194274, 0, 0, 'Cavalier Drakerider', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 222503, 46879), -- Cavalier Drakerider
(194279, 0, 0, 'Reckless Drakerider', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 222508, 46879), -- Reckless Drakerider
(192049, 0, 0, 'Swoglet', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 69, 220258, 46879), -- Swoglet
(189812, 193312, 0, 'Cliffdrip Snapstrider', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 2, 1, 0, 0, 216497, 46879), -- Cliffdrip Snapstrider
(194288, 0, 0, 'Swashbuckling Drakerider', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 222517, 46879), -- Swashbuckling Drakerider
(189814, 193312, 0, 'Cliffdrip Wavemender', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 216499, 46879), -- Cliffdrip Wavemender
(189815, 193312, 0, 'Cliffdrip Fallstriker', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 216500, 46879), -- Cliffdrip Fallstriker
(194293, 0, 0, 'Saddled Proto-Drake', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 222522, 46879), -- Saddled Proto-Drake
(192069, 0, 0, 'Vorquin Runt', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 8, 0, 0, 0.200000002980232238, 1, 0, 100, 220278, 46879), -- Vorquin Runt
(183141, 0, 0, 'Celormu', '', 'Dragonriding Trainer', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 134217728, 32768, 1, 1, 0, 0, 206955, 46879), -- Celormu
(192096, 0, 0, 'Ruby Dozer', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 2, 1073741824, 0, 0.300000011920928955, 1, 0, 0, 220305, 46879), -- Ruby Dozer
(194334, 0, 0, 'Crystastrasza', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 222563, 46879), -- Crystastrasza
(194335, 0, 0, 'Mazastrasz', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 1, 1, 0, 0, 222564, 46879), -- Mazastrasz
(196583, 0, 0, 'Bronze Timekeeper', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 224858, 46879), -- Bronze Timekeeper
(189881, 0, 0, 'Elemental Target [DNT]', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1073742848, 0, 1, 1, 0, 0, 216567, 46879), -- Elemental Target [DNT]
(198843, 0, 0, 'Ruby Scaleguard', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 15, 1, 0, 144, 227249, 46879), -- Ruby Scaleguard
(187683, 0, 0, 'Waking Duck', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 125, 1, 1, 0, 0.300000011920928955, 1, 0, 0, 214350, 46879), -- Waking Duck
(192168, 0, 0, 'Docile Slyvern', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 160, 1, 1, 0, 1, 1, 0, 0, 220377, 46879), -- Docile Slyvern
(185464, 0, 0, 'Handhold', '', NULL, NULL, 'openhand', 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 654311430, 1, 1, 0, 0, 209632, 46879), -- Handhold
(192178, 0, 0, 'Grazing Hornstrider', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 12, 1, 1, 0, 1, 1, 0, 0, 220387, 46879), -- Grazing Hornstrider
(192186, 0, 0, 'Territorial Axebeak', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 6, 0, 1, 0, 0, 0.300000011920928955, 1, 0, 0, 220395, 46879), -- Territorial Axebeak
(194432, 0, 0, 'Meehran Highlock', '', 'Innkeeper', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 222661, 46879), -- Meehran Highlock
(185484, 0, 0, 'Handhold', '', NULL, NULL, 'openhand', 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 654311430, 1, 1, 0, 0, 209723, 46879), -- Handhold
(185485, 0, 0, 'Handhold', '', NULL, NULL, 'openhand', 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 654311430, 1, 1, 0, 0, 209724, 46879), -- Handhold
(185489, 0, 0, 'King Drippy', '', 'Wielder of the Hydrosphere', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 2147483720, 0, 2.5, 1, 0, 0, 209728, 46879), -- King Drippy
(185490, 0, 0, 'Entranced Water Elemental', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 4, 2147483720, 0, 1, 1, 0, 0, 209729, 46879), -- Entranced Water Elemental
(187738, 0, 0, 'Boost', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 67108870, 1, 1, 0, 0, 214408, 46879), -- Boost
(187745, 0, 0, 'Disoriented Watcher', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 4, 72, 65536, 7, 1, 0, 0, 214421, 46879), -- Disoriented Watcher
(194474, 0, 0, 'Zhustostrasza', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 222703, 46879); -- Zhustostrasza

INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `unit_class`, `WidgetSetID`, `WidgetSetUnitConditionID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `VerifiedBuild`) VALUES
(194478, 0, 0, 'Clokkistrasz', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 222707, 46879), -- Clokkistrasz
(194479, 0, 0, 'Sprightly Butterfly', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 8, 1073741824, 33554432, 0.200000002980232238, 1, 0, 69, 222708, 46879), -- Sprightly Butterfly
(187789, 0, 0, 'Energy', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 10, 1610612752, 67108870, 1, 1, 0, 0, 214465, 46879), -- Energy
(196753, 0, 0, 'Vakaron', '', 'Bartender', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 0, 6, 1, 0, 0, 225037, 46879), -- Vakaron
(190042, 0, 0, 'Ascorbis', '', 'Artisan\'s Consortium', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 216731, 46879), -- Ascorbis
(192284, 0, 0, 'Kandrostrasz', '', 'Brood of Alexstrasza', NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 2, 0, 0, 10, 1, 0, 0, 220493, 46879), -- Kandrostrasz
(194523, 0, 0, 'Raging Elemental', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 4, 0, 0, 2, 1, 0, 0, 222754, 46879), -- Raging Elemental
(194524, 0, 0, 'Earthshatter Elemental', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 1, 0, 4, 0, 0, 5, 1, 0, 0, 222755, 46879), -- Earthshatter Elemental
(196774, 0, 0, 'Zoristrasz', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 2, 0, 0, 1.20000004768371582, 1, 0, 0, 225059, 46879), -- Zoristrasz
(192305, 0, 0, 'Boots', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 220514, 46879), -- Boots
(190090, 0, 0, 'Infused Dragon Egg', '', NULL, NULL, 'questinteract', 9, 0, 0, 1, 0, 0, 0, 0, 2, 1610612752, 83886086, 1, 1, 0, 0, 216779, 46879), -- Infused Dragon Egg
(194575, 0, 0, 'Rising Tempest', '', NULL, NULL, NULL, 9, 0, 0, 8, 0, 0, 0, 0, 4, 0, 0, 1, 1, 0, 0, 222806, 46879), -- Rising Tempest
(196827, 0, 0, 'Crabtender Kad\'irsza', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 2, 0, 67108864, 1.20000004768371582, 1, 0, 0, 225113, 46879), -- Crabtender Kad'irsza
(190123, 0, 0, 'Bronze Timekeeper', '', NULL, NULL, NULL, 9, 0, 5104, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 216814, 46879), -- Bronze Timekeeper
(194605, 0, 0, 'Bron', '', 'Stable Master', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 222838, 46879), -- Bron
(194606, 0, 0, 'Matthias Darkwall', '', 'Repairs', NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 222839, 46879), -- Matthias Darkwall
(194607, 0, 0, 'Wind Eagle', '', NULL, NULL, NULL, 9, 0, 0, 1, 0, 0, 0, 26, 1, 0, 0, 1, 1, 0, 0, 222840, 46879); -- Wind Eagle

UPDATE `creature_template` SET `VerifiedBuild`=46879 WHERE `entry` IN (190155, 190171, 190211, 65011, 62821, 62822, 194820, 304, 305, 194972, 188372, 18363, 18364, 18365, 18377, 18378, 18379, 18380, 60941, 193000, 193001, 188666, 188667, 193217, 32207, 186573, 186577, 61319, 61366, 179965, 186684, 3300, 14505, 186823, 186825, 186829, 186833, 186834, 186836, 189093, 189122, 21354, 195915, 195917, 184812, 189307, 191553, 191554, 28302, 191618, 191624, 191625, 191628, 191629, 191645, 187194, 191768, 191792, 191809, 191812, 191817, 191818, 191830, 68806, 191879, 191886, 180701, 191904, 198618, 198619, 187442, 189703, 4075, 165189, 192059, 192103, 192137, 192149, 192151, 46754, 192181, 192182, 15475, 190013, 20029, 20030, 194517, 194525, 190080, 73780);
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46879 WHERE `entry`=143622; -- Wild Imp
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46879 WHERE `entry`=58965; -- Wrathguard
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46879 WHERE `entry`=32158; -- Albino Drake

DELETE FROM `creature_template_model` WHERE (`Idx`=2 AND `CreatureID` IN (190293,190292,193359,194279,194293,194274,194204,194246,194243,184017,189090,191098,198275,197702,198843,197703,191795,190916,190917,191099,190918,192021,191031,187089,191659,187084,193287,197166,187071,193077,193737,192512,187073,193097,191126,188029,194479,187072,187060,187058,192178,184811,193082,185485,189103,188074,182439,191765,191656,191653,194523,194524,192186)) OR (`Idx`=1 AND `CreatureID` IN (190293,190292,197223,198115,190839,193359,194279,194293,194274,194204,194196,198060,194246,194243,194247,198464,198623,191989,198624,198454,189784,184017,189090,187789,190298,188695,187738,191098,199686,198301,194801,198275,197702,198843,197703,198040,193441,193436,191795,190916,193729,193670,190917,191099,190915,190918,192026,192021,190547,199689,191490,198116,194872,191492,186333,186332,191031,190548,183141,187089,191659,191179,187084,193061,193995,193991,189881,188280,193287,184394,187290,190295,197166,187071,193988,193987,193077,193737,192512,187073,193097,191126,188029,198628,198456,194479,187072,187060,192284,198631,194818,187058,192178,184811,193082,192049,180377,186146,185485,198615,194821,189103,188074,182439,191765,191656,191653,191796,194523,194524,186795,192186)) OR (`Idx`=0 AND `CreatureID` IN (190293,190292,198191,190326,190123,182086,182087,190998,197223,197308,193477,193411,198115,196583,190839,193364,194432,194201,193359,194606,194605,194279,199684,194248,194202,194607,194293,194288,194274,194204,194203,194196,198060,194246,194244,194243,194247,198464,198623,191989,198624,198454,189784,187745,187393,193261,191619,190273,184017,193329,189090,187789,190298,188695,187738,196495,190536,189450,189755,193756,191098,199686,198301,193753,192168,190868,190866,190820,191292,191281,191293,197704,194801,194800,198275,197702,187444,187110,198843,197703,198040,193441,193436,191795,190916,190818,193609,191254,190914,190912,190852,190822,190543,193729,193670,192010,191296,190917,187389,191099,190915,190918,194805,192026,192021,190547,191297,199689,193752,191490,198125,198116,194872,191492,190042,186333,186332,189439,191031,190548,196753,183141,187089,190889,194335,194334,194142,187363,194575,194195,194159,193994,191659,194174,191179,194008,191280,190525,191881,186771,187084,193061,191315,193995,193991,189881,198605,198595,188280,193287,196109,184394,195051,187290,196774,195050,192625,191982,191980,191025,190295,189260,187130,191176,191174,191027,191013,191012,189261,197166,187071,186692,193988,193987,193077,192305,192096,193737,188107,193983,192674,192574,185904,195052,192512,193920,187073,194474,193097,192539,191894,191893,191126,189448,189262,188029,198628,194099,193979,198456,194479,194478,191954,187072,187955,193955,187060,192284,192498,193757,194076,198631,194818,192491,187292,191831,195125,187058,192178,184811,185490,193082,185489,192049,185484,195120,180377,186146,186143,185464,185485,187295,196827,193304,189637,187683,198615,194821,189103,189812,188074,182439,198034,197211,189815,189814,192013,191765,192069,191656,191653,191796,190660,189121,194523,194524,191892,186795,191820,191891,190269,193790,193791,192186,198100,190090,186822)) OR (`Idx`=9 AND `CreatureID` IN (194293,184017,189090,197166,192178,184811,182439,191656,191653)) OR (`Idx`=8 AND `CreatureID` IN (194293,184017,189090,197166,192178,184811,182439,191656,191653)) OR (`Idx`=7 AND `CreatureID` IN (194293,184017,189090,198843,197703,190916,190917,190918,187084,197166,187071,193737,187073,191126,187072,187060,187058,192178,184811,182439,191656,191653)) OR (`Idx`=6 AND `CreatureID` IN (194293,184017,189090,198843,197703,190916,190917,190918,187084,197166,187071,193737,187073,191126,187072,187060,187058,192178,184811,182439,191656,191653)) OR (`Idx`=5 AND `CreatureID` IN (194293,184017,189090,198275,197702,198843,197703,190916,190917,190918,192021,187084,197166,187071,193737,187073,191126,187072,187060,187058,192178,184811,193082,182439,191656,191653)) OR (`Idx`=4 AND `CreatureID` IN (194293,184017,189090,198275,197702,198843,197703,190916,190917,190918,192021,191659,187084,197166,187071,193737,192512,187073,191126,187072,187060,187058,192178,184811,193082,188074,182439,191765,191656,191653)) OR (`Idx`=3 AND `CreatureID` IN (194293,184017,189090,191098,198275,197702,198843,197703,191795,190916,190917,190918,192021,191659,187084,197166,187071,193737,192512,187073,193097,191126,187072,187060,187058,192178,184811,193082,185485,188074,182439,191765,191656,191653,194523,192186)) OR (`Idx`=13 AND `CreatureID` IN (184017,189090,197166,184811,182439)) OR (`Idx`=12 AND `CreatureID` IN (184017,189090,197166,184811,182439)) OR (`Idx`=11 AND `CreatureID` IN (184017,189090,197166,192178,184811,182439)) OR (`Idx`=10 AND `CreatureID` IN (184017,189090,197166,192178,184811,182439)) OR (`Idx`=21 AND `CreatureID` IN (189090,197166)) OR (`Idx`=20 AND `CreatureID` IN (189090,197166)) OR (`Idx`=19 AND `CreatureID` IN (189090,197166)) OR (`Idx`=18 AND `CreatureID` IN (189090,197166)) OR (`Idx`=17 AND `CreatureID` IN (189090,197166)) OR (`Idx`=16 AND `CreatureID` IN (189090,197166)) OR (`Idx`=15 AND `CreatureID` IN (189090,197166)) OR (`Idx`=14 AND `CreatureID` IN (189090,197166)) OR (`Idx`=23 AND `CreatureID`=197166) OR (`Idx`=22 AND `CreatureID`=197166);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(190293, 2, 108822, 1, 0, 46879), -- Majordomo Selistra
(190293, 1, 107040, 1, 1, 46879), -- Majordomo Selistra
(190293, 0, 108032, 1, 0, 46879), -- Majordomo Selistra
(190292, 2, 107052, 1, 0, 46879), -- Alexstrasza the Life-Binder
(190292, 1, 92146, 1, 0, 46879), -- Alexstrasza the Life-Binder
(190292, 0, 28227, 1, 1, 46879), -- Alexstrasza the Life-Binder
(198191, 0, 102137, 1, 1, 46879), -- Bronze Timekeeper Assistant
(190326, 0, 103503, 1, 1, 46879), -- Bronze Timekeeper
(190123, 0, 103815, 1, 1, 46879), -- Bronze Timekeeper
(182086, 0, 109264, 1, 1, 46879), -- Hek the Hungry Hornswog
(182087, 0, 103048, 1, 1, 46879), -- Feeding Instructions
(190998, 0, 103563, 1, 1, 46879), -- Bossy Hornswog
(197223, 1, 27823, 1, 1, 46879), -- Waygate Bunny
(197223, 0, 328, 1, 0, 46879), -- Waygate Bunny
(197308, 0, 108905, 1, 1, 46879), -- Dormant Waygate
(193477, 0, 108201, 1, 1, 46879), -- Azerastrasz
(193411, 0, 108170, 1, 1, 46879), -- Celormu
(198115, 1, 109912, 1, 1, 46879), -- Hope Kite
(198115, 0, 109911, 1, 0, 46879), -- Hope Kite
(196583, 0, 103794, 1, 1, 46879), -- Bronze Timekeeper
(190839, 1, 107286, 1, 0, 46879), -- Glensera
(190839, 0, 108178, 1, 1, 46879), -- Glensera
(193364, 0, 108179, 1, 1, 46879), -- Lithragosa
(194432, 0, 108559, 1, 1, 46879), -- Meehran Highlock
(194201, 0, 108404, 1, 1, 46879), -- Touring Drakerider
(193359, 2, 108173, 1, 0, 46879), -- Lord Andestrasz
(193359, 1, 108171, 1, 0, 46879), -- Lord Andestrasz
(193359, 0, 108165, 1, 1, 46879), -- Lord Andestrasz
(194606, 0, 108644, 1, 1, 46879), -- Matthias Darkwall
(194605, 0, 108643, 1, 1, 46879), -- Bron
(194279, 2, 108428, 1, 1, 46879), -- Reckless Drakerider
(194279, 1, 108427, 1, 1, 46879), -- Reckless Drakerider
(194279, 0, 108426, 1, 1, 46879), -- Reckless Drakerider
(199684, 0, 107204, 1, 1, 46879), -- Relastrasza
(194248, 0, 108431, 1, 1, 46879), -- Saddled Proto-Drake
(194202, 0, 108405, 1, 1, 46879), -- Inventive Drakerider
(194607, 0, 101438, 0.5, 1, 46879), -- Wind Eagle
(194293, 9, 108422, 1, 1, 46879), -- Saddled Proto-Drake
(194293, 8, 108423, 1, 1, 46879), -- Saddled Proto-Drake
(194293, 7, 108424, 1, 1, 46879), -- Saddled Proto-Drake
(194293, 6, 108425, 1, 1, 46879), -- Saddled Proto-Drake
(194293, 5, 108426, 1, 1, 46879), -- Saddled Proto-Drake
(194293, 4, 108427, 1, 1, 46879), -- Saddled Proto-Drake
(194293, 3, 108428, 1, 1, 46879), -- Saddled Proto-Drake
(194293, 2, 108429, 1, 1, 46879), -- Saddled Proto-Drake
(194293, 1, 108430, 1, 1, 46879), -- Saddled Proto-Drake
(194293, 0, 108431, 1, 1, 46879), -- Saddled Proto-Drake
(194288, 0, 108431, 1, 1, 46879), -- Swashbuckling Drakerider
(194274, 2, 108428, 1, 1, 46879), -- Cavalier Drakerider
(194274, 1, 108427, 1, 1, 46879), -- Cavalier Drakerider
(194274, 0, 108426, 1, 1, 46879), -- Cavalier Drakerider
(194204, 2, 108419, 1, 1, 46879), -- Swashbuckling Drakerider
(194204, 1, 108471, 1, 1, 46879), -- Swashbuckling Drakerider
(194204, 0, 108420, 1, 1, 46879), -- Swashbuckling Drakerider
(194203, 0, 108409, 1, 1, 46879), -- Reckless Drakerider
(194196, 1, 108403, 1, 1, 46879), -- Cautious Drakerider
(194196, 0, 108421, 1, 1, 46879), -- Cautious Drakerider
(198060, 1, 27823, 1, 1, 46879), -- Skytop Observatory
(198060, 0, 14473, 1, 0, 46879), -- Skytop Observatory
(194246, 2, 108428, 1, 1, 46879), -- Saddled Proto-Drake
(194246, 1, 108427, 1, 1, 46879), -- Saddled Proto-Drake
(194246, 0, 108426, 1, 1, 46879), -- Saddled Proto-Drake
(194244, 0, 108425, 1, 1, 46879), -- Saddled Proto-Drake
(194243, 2, 108423, 1, 1, 46879), -- Saddled Proto-Drake
(194243, 1, 108422, 1, 1, 46879), -- Saddled Proto-Drake
(194243, 0, 108424, 1, 1, 46879), -- Saddled Proto-Drake
(194247, 1, 108430, 1, 1, 46879), -- Saddled Proto-Drake
(194247, 0, 108429, 1, 1, 46879), -- Saddled Proto-Drake
(198464, 1, 23767, 1, 1, 46879), -- Rostrum of Transformation
(198464, 0, 21955, 1, 0, 46879), -- Rostrum of Transformation
(198623, 1, 23767, 1, 1, 46879), -- Tracker Dragon Glyph
(198623, 0, 21955, 1, 0, 46879), -- Tracker Dragon Glyph
(191989, 1, 23767, 1, 1, 46879), -- Dragon Glyph
(191989, 0, 21955, 1, 0, 46879), -- Dragon Glyph
(198624, 1, 23767, 1, 1, 46879), -- Tracker Dragon Glyph
(198624, 0, 21955, 1, 0, 46879), -- Tracker Dragon Glyph
(198454, 1, 23767, 1, 1, 46879), -- Dragon Glyph
(198454, 0, 21955, 1, 0, 46879), -- Dragon Glyph
(189784, 1, 105870, 1, 1, 46879), -- Harried Guardian
(189784, 0, 105878, 1, 1, 46879), -- Harried Guardian
(187745, 0, 106688, 1, 1, 46879), -- Disoriented Watcher
(187393, 0, 106523, 1, 1, 46879), -- Displaced Earth
(193261, 0, 104657, 1, 1, 46879), -- Kah'ra
(191619, 0, 103563, 1, 1, 46879), -- Mature Hornswog
(190273, 0, 107097, 1, 1, 46879), -- Scout Kuvaeth
(184017, 13, 108852, 1, 1, 46879), -- Eager Acquisitionist
(184017, 12, 108853, 1, 1, 46879), -- Eager Acquisitionist
(184017, 11, 108455, 1, 1, 46879), -- Eager Acquisitionist
(184017, 10, 108456, 1, 1, 46879), -- Eager Acquisitionist
(184017, 9, 108811, 1, 1, 46879), -- Eager Acquisitionist
(184017, 8, 108810, 1, 1, 46879), -- Eager Acquisitionist
(184017, 7, 110365, 1, 1, 46879), -- Eager Acquisitionist
(184017, 6, 110364, 1, 1, 46879), -- Eager Acquisitionist
(184017, 5, 110356, 1, 1, 46879), -- Eager Acquisitionist
(184017, 4, 110357, 1, 1, 46879), -- Eager Acquisitionist
(184017, 3, 108804, 1, 1, 46879), -- Eager Acquisitionist
(184017, 2, 108802, 1, 1, 46879), -- Eager Acquisitionist
(184017, 1, 108801, 1, 1, 46879), -- Eager Acquisitionist
(184017, 0, 108798, 1, 1, 46879), -- Eager Acquisitionist
(193329, 0, 102507, 1, 1, 46879), -- Displaced Earth
(189090, 21, 108776, 1, 1, 46879), -- Beleaguered Explorer
(189090, 20, 108775, 1, 1, 46879), -- Beleaguered Explorer
(189090, 19, 108791, 1, 1, 46879), -- Beleaguered Explorer
(189090, 18, 108795, 1, 1, 46879), -- Beleaguered Explorer
(189090, 17, 108797, 1, 1, 46879), -- Beleaguered Explorer
(189090, 16, 108796, 1, 1, 46879), -- Beleaguered Explorer
(189090, 15, 108780, 1, 1, 46879), -- Beleaguered Explorer
(189090, 14, 108779, 1, 1, 46879), -- Beleaguered Explorer
(189090, 13, 108801, 1, 1, 46879), -- Beleaguered Explorer
(189090, 12, 108798, 1, 1, 46879), -- Beleaguered Explorer
(189090, 11, 108813, 1, 1, 46879), -- Beleaguered Explorer
(189090, 10, 108812, 1, 1, 46879), -- Beleaguered Explorer
(189090, 9, 108805, 1, 1, 46879), -- Beleaguered Explorer
(189090, 8, 108808, 1, 1, 46879), -- Beleaguered Explorer
(189090, 7, 108811, 1, 1, 46879), -- Beleaguered Explorer
(189090, 6, 108810, 1, 1, 46879), -- Beleaguered Explorer
(189090, 5, 108455, 1, 1, 46879), -- Beleaguered Explorer
(189090, 4, 108456, 1, 1, 46879), -- Beleaguered Explorer
(189090, 3, 108777, 1, 1, 46879), -- Beleaguered Explorer
(189090, 2, 108778, 1, 1, 46879), -- Beleaguered Explorer
(189090, 1, 108804, 1, 1, 46879), -- Beleaguered Explorer
(189090, 0, 108802, 1, 1, 46879), -- Beleaguered Explorer
(187789, 1, 23767, 1, 1, 46879), -- Energy
(187789, 0, 21955, 1, 0, 46879), -- Energy
(190298, 1, 23767, 1, 1, 46879), -- Tracker Two
(190298, 0, 21955, 1, 0, 46879), -- Tracker Two
(188695, 1, 23767, 1, 1, 46879), -- Tracker
(188695, 0, 21955, 1, 0, 46879), -- Tracker
(187738, 1, 108199, 1, 1, 46879), -- Boost
(187738, 0, 21955, 1, 0, 46879), -- Boost
(196495, 0, 104638, 1, 1, 46879), -- Over-Pollinated Lasher
(190536, 0, 107154, 1, 1, 46879), -- Veladormi
(189450, 0, 102140, 1, 1, 46879), -- Playful Whelpling
(189755, 0, 102649, 1, 1, 46879), -- Ruby Whelpminder
(193756, 0, 102067, 1, 1, 46879), -- Docile Kit
(191098, 3, 104167, 1, 1, 46879), -- Vivid Axebeak
(191098, 2, 104168, 1, 1, 46879), -- Vivid Axebeak
(191098, 1, 104169, 1, 1, 46879), -- Vivid Axebeak
(191098, 0, 104170, 1, 1, 46879), -- Vivid Axebeak
(199686, 1, 27823, 1, 1, 46879), -- Generic Bunny
(199686, 0, 328, 1, 0, 46879), -- Generic Bunny
(198301, 1, 11686, 1, 1, 46879), -- Sound Event Stalker
(198301, 0, 90874, 1, 0, 46879), -- Sound Event Stalker
(193753, 0, 106708, 1, 1, 46879), -- Elegant Foal
(192168, 0, 102064, 1, 1, 46879), -- Docile Slyvern
(190868, 0, 102646, 1, 1, 46879), -- Keshki
(190866, 0, 102655, 1, 1, 46879), -- Akora
(190820, 0, 107282, 1, 1, 46879), -- Yvendormi
(191292, 0, 107439, 1, 1, 46879), -- Flower Basket
(191281, 0, 107439, 1, 1, 46879), -- Fruit Basket
(191293, 0, 107439, 1, 1, 46879), -- Seed Basket
(197704, 0, 105602, 1, 1, 46879), -- Curious Child
(194801, 1, 109300, 1, 0, 46879), -- Kolgar Flameguard
(194801, 0, 108691, 1, 1, 46879), -- Kolgar Flameguard
(194800, 0, 108690, 1, 1, 46879), -- Duroz Scaletaker
(198275, 5, 110000, 1, 1, 46879), -- Lounging Explorer
(198275, 4, 109999, 1, 1, 46879), -- Lounging Explorer
(198275, 3, 109998, 1, 1, 46879), -- Lounging Explorer
(198275, 2, 109997, 1, 1, 46879), -- Lounging Explorer
(198275, 1, 109961, 1, 1, 46879), -- Lounging Explorer
(198275, 0, 109959, 1, 1, 46879), -- Lounging Explorer
(197702, 5, 110465, 1, 1, 46879), -- "Resting" Shrineguard
(197702, 4, 110464, 1, 1, 46879), -- "Resting" Shrineguard
(197702, 3, 110463, 1, 1, 46879), -- "Resting" Shrineguard
(197702, 2, 110461, 1, 1, 46879), -- "Resting" Shrineguard
(197702, 1, 110462, 1, 1, 46879), -- "Resting" Shrineguard
(197702, 0, 110460, 1, 1, 46879), -- "Resting" Shrineguard
(187444, 0, 106144, 1, 1, 46879), -- Kajithalan
(187110, 0, 102860, 1, 1, 46879), -- Ancient of Shelter
(198843, 7, 110475, 1, 1, 46879), -- Ruby Scaleguard
(198843, 6, 110474, 1, 1, 46879), -- Ruby Scaleguard
(198843, 5, 110473, 1, 1, 46879), -- Ruby Scaleguard
(198843, 4, 110472, 1, 1, 46879), -- Ruby Scaleguard
(198843, 3, 110471, 1, 1, 46879), -- Ruby Scaleguard
(198843, 2, 110470, 1, 1, 46879), -- Ruby Scaleguard
(198843, 1, 110469, 1, 1, 46879), -- Ruby Scaleguard
(198843, 0, 110468, 1, 1, 46879), -- Ruby Scaleguard
(197703, 7, 102661, 1, 1, 46879), -- Ruby Searer
(197703, 6, 102660, 1, 1, 46879), -- Ruby Searer
(197703, 5, 102659, 1, 1, 46879), -- Ruby Searer
(197703, 4, 102658, 1, 1, 46879), -- Ruby Searer
(197703, 3, 102649, 1, 1, 46879), -- Ruby Searer
(197703, 2, 102648, 1, 1, 46879), -- Ruby Searer
(197703, 1, 102647, 1, 1, 46879), -- Ruby Searer
(197703, 0, 102646, 1, 1, 46879), -- Ruby Searer
(198040, 1, 108170, 1, 1, 46879), -- Celormu
(198040, 0, 107670, 1, 0, 46879), -- Celormu
(193441, 1, 104675, 1, 1, 46879), -- Ruby Duckling
(193441, 0, 104674, 1, 1, 46879), -- Ruby Duckling
(193436, 1, 104676, 1, 1, 46879), -- Ruby Mallard
(193436, 0, 104680, 1, 1, 46879), -- Ruby Mallard
(191795, 3, 103839, 1, 1, 46879), -- Waking Cricket
(191795, 2, 103838, 1, 1, 46879), -- Waking Cricket
(191795, 1, 103837, 1, 1, 46879), -- Waking Cricket
(191795, 0, 103836, 1, 1, 46879), -- Waking Cricket
(190916, 7, 110467, 1, 1, 46879), -- Ruby Warden
(190916, 6, 110461, 1, 1, 46879), -- Ruby Warden
(190916, 5, 110462, 1, 1, 46879), -- Ruby Warden
(190916, 4, 110460, 1, 1, 46879), -- Ruby Warden
(190916, 3, 110466, 1, 1, 46879), -- Ruby Warden
(190916, 2, 110464, 1, 1, 46879), -- Ruby Warden
(190916, 1, 110465, 1, 1, 46879), -- Ruby Warden
(190916, 0, 110463, 1, 1, 46879), -- Ruby Warden
(190818, 0, 107279, 1, 1, 46879), -- Midormi
(193609, 0, 107366, 1, 1, 46879), -- Ruby Peafowl
(191254, 0, 107425, 1, 1, 46879), -- Fragrant Dragonflower
(190914, 0, 101643, 1, 1, 46879), -- Emerald Whelpling
(190912, 0, 102140, 1, 1, 46879), -- Ruby Whelpling
(190852, 0, 64062, 1, 1, 46879), -- Soil Bunny [DNT]
(190822, 0, 107280, 1, 1, 46879), -- Peledormu
(190543, 0, 81964, 1, 1, 46879), -- Bothersome Bee
(193729, 1, 103839, 1, 1, 46879), -- Jubilant Cricket
(193729, 0, 103837, 1, 1, 46879), -- Jubilant Cricket
(193670, 1, 104475, 1, 1, 46879), -- Lively Bloom
(193670, 0, 104474, 1, 1, 46879), -- Lively Bloom
(192010, 0, 107695, 1, 1, 46879), -- Szarostrasza
(191296, 0, 107443, 1, 1, 46879), -- Ripened Dragonfruit
(190917, 7, 102661, 1, 1, 46879), -- Ruby Whelpwatcher
(190917, 6, 102660, 1, 1, 46879), -- Ruby Whelpwatcher
(190917, 5, 102659, 1, 1, 46879), -- Ruby Whelpwatcher
(190917, 4, 102658, 1, 1, 46879), -- Ruby Whelpwatcher
(190917, 3, 102649, 1, 1, 46879), -- Ruby Whelpwatcher
(190917, 2, 102648, 1, 1, 46879), -- Ruby Whelpwatcher
(190917, 1, 102647, 1, 1, 46879), -- Ruby Whelpwatcher
(190917, 0, 102646, 1, 1, 46879), -- Ruby Whelpwatcher
(187389, 0, 109612, 1, 1, 46879), -- Sweelin
(191099, 2, 104635, 1, 1, 46879), -- Overzealous Bloom
(191099, 1, 104637, 1, 1, 46879), -- Overzealous Bloom
(191099, 0, 104638, 1, 1, 46879), -- Overzealous Bloom
(190915, 1, 102137, 0.5, 0, 46879), -- Bronze Whelpling
(190915, 0, 102137, 1, 1, 46879), -- Bronze Whelpling
(190918, 7, 104336, 1, 1, 46879), -- Emerald Whelpwatcher
(190918, 6, 104335, 1, 1, 46879), -- Emerald Whelpwatcher
(190918, 5, 104334, 1, 1, 46879), -- Emerald Whelpwatcher
(190918, 4, 104333, 1, 1, 46879), -- Emerald Whelpwatcher
(190918, 3, 104324, 1, 1, 46879), -- Emerald Whelpwatcher
(190918, 2, 104323, 1, 1, 46879), -- Emerald Whelpwatcher
(190918, 1, 104322, 1, 1, 46879), -- Emerald Whelpwatcher
(190918, 0, 104321, 1, 1, 46879), -- Emerald Whelpwatcher
(194805, 0, 102709, 0.85000002384185791, 1, 46879), -- Bathoras
(192026, 1, 102661, 1, 1, 46879), -- Ruby Pupil
(192026, 0, 102649, 1, 1, 46879), -- Ruby Pupil
(192021, 5, 102660, 0.800000011920928955, 1, 46879), -- Ruby Pupil
(192021, 4, 102659, 0.800000011920928955, 1, 46879), -- Ruby Pupil
(192021, 3, 102658, 0.800000011920928955, 1, 46879), -- Ruby Pupil
(192021, 2, 102648, 0.800000011920928955, 1, 46879), -- Ruby Pupil
(192021, 1, 102647, 0.800000011920928955, 1, 46879), -- Ruby Pupil
(192021, 0, 102646, 0.800000011920928955, 1, 46879), -- Ruby Pupil
(190547, 1, 102666, 1, 1, 46879), -- Lifewarding Gardener
(190547, 0, 102655, 1, 1, 46879); -- Lifewarding Gardener

INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(191297, 0, 107444, 1, 1, 46879), -- Lush Seed Pod
(199689, 1, 110503, 1, 1, 46879), -- Arrow
(199689, 0, 21955, 1, 0, 46879), -- Arrow
(193752, 0, 104647, 1, 1, 46879), -- Elegant Vorquin
(191490, 1, 107567, 1, 1, 46879), -- Dragonscale Researcher
(191490, 0, 107566, 1, 1, 46879), -- Dragonscale Researcher
(198125, 0, 108856, 1, 1, 46879), -- Isarian Shadowplume
(198116, 1, 109912, 1, 1, 46879), -- Hope Kite
(198116, 0, 109911, 1, 0, 46879), -- Hope Kite
(194872, 1, 16910, 1, 1, 46879), -- Disenchanted Broom
(194872, 0, 61561, 1, 0, 46879), -- Disenchanted Broom
(191492, 1, 107565, 1, 1, 46879), -- Dragonscale Researcher
(191492, 0, 107564, 1, 1, 46879), -- Dragonscale Researcher
(190042, 0, 107474, 1, 1, 46879), -- Ascorbis
(186333, 1, 107569, 1, 1, 46879), -- Dragonscale Researcher
(186333, 0, 107568, 1, 1, 46879), -- Dragonscale Researcher
(186332, 1, 107563, 1, 1, 46879), -- Dragonscale Researcher
(186332, 0, 107562, 1, 1, 46879), -- Dragonscale Researcher
(189439, 0, 103842, 1, 1, 46879), -- Golden Skitterbug
(191031, 2, 102778, 1, 1, 46879), -- Ruby Tender
(191031, 1, 102779, 1, 1, 46879), -- Ruby Tender
(191031, 0, 102780, 1, 1, 46879), -- Ruby Tender
(190548, 1, 104344, 1, 1, 46879), -- Lifetending Gardener
(190548, 0, 104332, 1, 1, 46879), -- Lifetending Gardener
(196753, 0, 109617, 0.829999983310699462, 1, 46879), -- Vakaron
(183141, 1, 108170, 1, 1, 46879), -- Celormu
(183141, 0, 107670, 1, 0, 46879), -- Celormu
(187089, 2, 107481, 1, 1, 46879), -- Flashfrost Tarasek
(187089, 1, 107480, 1, 1, 46879), -- Flashfrost Tarasek
(187089, 0, 107479, 1, 1, 46879), -- Flashfrost Tarasek
(190889, 0, 107296, 1, 1, 46879), -- Amella
(194335, 0, 108458, 1, 1, 46879), -- Mazastrasz
(194334, 0, 108457, 1, 1, 46879), -- Crystastrasza
(194142, 0, 109830, 0.899999976158142089, 1, 46879), -- Intrusive Pupstinger
(187363, 0, 105528, 1.20000004768371582, 1, 46879), -- Zienestrasz
(194575, 0, 102511, 1, 1, 46879), -- Rising Tempest
(194195, 0, 11686, 1, 1, 46879), -- Lifeshrine Door
(194159, 0, 102550, 1.299999952316284179, 1, 46879), -- Relentless Gust
(193994, 0, 80466, 1.5, 1, 46879), -- Agitated Weedling
(191659, 4, 103429, 1, 1, 46879), -- Prime Salamanther
(191659, 3, 103430, 1, 1, 46879), -- Prime Salamanther
(191659, 2, 103431, 1, 1, 46879), -- Prime Salamanther
(191659, 1, 103432, 1, 1, 46879), -- Prime Salamanther
(191659, 0, 103433, 1, 1, 46879), -- Prime Salamanther
(194174, 0, 107296, 1, 1, 46879), -- Amella
(191179, 1, 11686, 1, 1, 46879), -- Target Bunny
(191179, 0, 55135, 1, 0, 46879), -- Target Bunny
(194008, 0, 102140, 1, 1, 46879), -- Lillistrasza
(191280, 0, 102650, 1, 1, 46879), -- Dazakros
(190525, 0, 102676, 1, 1, 46879), -- Vaeros
(191881, 0, 102664, 1, 1, 46879), -- Lasztak
(186771, 0, 102140, 1.10000002384185791, 0, 46879), -- Ruby Whelpling
(187084, 7, 102875, 1, 1, 46879), -- Galestrike Primalist
(187084, 6, 102874, 1, 1, 46879), -- Galestrike Primalist
(187084, 5, 102873, 1, 1, 46879), -- Galestrike Primalist
(187084, 4, 102872, 1, 1, 46879), -- Galestrike Primalist
(187084, 3, 102871, 1, 1, 46879), -- Galestrike Primalist
(187084, 2, 102870, 1, 1, 46879), -- Galestrike Primalist
(187084, 1, 102869, 1, 1, 46879), -- Galestrike Primalist
(187084, 0, 102868, 1, 1, 46879), -- Galestrike Primalist
(193061, 1, 108063, 1, 0, 46879), -- Danastra
(193061, 0, 108061, 1, 1, 46879), -- Danastra
(191315, 0, 103228, 1, 1, 46879), -- Herald of Frost
(193995, 1, 108365, 1, 0, 46879), -- Rathestrasz
(193995, 0, 108364, 1, 1, 46879), -- Rathestrasz
(193991, 1, 108365, 1, 0, 46879), -- Lyrastrasz
(193991, 0, 108363, 1, 1, 46879), -- Lyrastrasz
(189881, 1, 27823, 3, 1, 46879), -- Elemental Target [DNT]
(189881, 0, 328, 1, 0, 46879), -- Elemental Target [DNT]
(198605, 0, 110256, 1, 1, 46879), -- Tirastrasza
(198595, 0, 110250, 1, 1, 46879), -- Estarastrasz
(188280, 1, 104723, 1, 1, 46879), -- Excited Vorquin
(188280, 0, 104722, 1, 1, 46879), -- Excited Vorquin
(193287, 2, 108173, 1, 0, 46879), -- Lord Andestrasz
(193287, 1, 108171, 1, 0, 46879), -- Lord Andestrasz
(193287, 0, 108165, 1, 1, 46879), -- Lord Andestrasz
(196109, 0, 104142, 1.10000002384185791, 1, 46879), -- Elder Proto-Dragon
(184394, 1, 102035, 1, 0, 46879), -- Agorithos 0
(184394, 0, 102034, 1, 1, 46879), -- Agorithos 0
(195051, 0, 104335, 1, 1, 46879), -- Azure Tender
(187290, 1, 92146, 1, 0, 46879), -- Alexstrasza the Life-Binder
(187290, 0, 28227, 1, 1, 46879), -- Alexstrasza the Life-Binder
(196774, 0, 109850, 1, 1, 46879), -- Zoristrasz
(195050, 0, 103515, 1, 1, 46879), -- Bronze Tender
(192625, 0, 102664, 1, 1, 46879), -- Ruby Groundskeeper
(191982, 0, 102663, 1, 1, 46879), -- Faramin
(191980, 0, 102657, 1, 1, 46879), -- Xolleth
(191025, 0, 102721, 1, 1, 46879), -- Lifecaller Tzadrak
(190295, 1, 27823, 1, 1, 46879), -- Akxall
(190295, 0, 328, 1, 0, 46879), -- Akxall
(189260, 0, 102708, 1, 1, 46879), -- Zahkrana
(187130, 0, 107296, 1, 1, 46879), -- Amella
(191176, 0, 102650, 1, 1, 46879), -- Dazakros
(191174, 0, 102676, 1, 1, 46879), -- Vaeros
(191027, 0, 102664, 1, 1, 46879), -- Lasztak
(191013, 0, 102646, 1, 1, 46879), -- Keshki
(191012, 0, 102655, 1, 1, 46879), -- Akora
(189261, 0, 110882, 1, 1, 46879), -- Xius
(197166, 23, 102669, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 22, 102668, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 21, 102667, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 20, 102666, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 19, 102665, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 18, 102664, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 17, 102663, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 16, 102662, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 15, 102661, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 14, 102660, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 13, 102659, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 12, 102658, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 11, 102657, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 10, 102656, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 9, 102655, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 8, 102654, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 7, 102653, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 6, 102652, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 5, 102651, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 4, 102650, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 3, 102649, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 2, 102648, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 1, 102647, 1, 1, 46879), -- Dragonspawn Apprentice
(197166, 0, 102646, 1, 1, 46879), -- Dragonspawn Apprentice
(187071, 7, 102801, 1, 1, 46879), -- Nurse Sentry
(187071, 6, 102802, 1, 1, 46879), -- Nurse Sentry
(187071, 5, 102803, 1, 1, 46879), -- Nurse Sentry
(187071, 4, 102804, 1, 1, 46879), -- Nurse Sentry
(187071, 3, 102805, 1, 1, 46879), -- Nurse Sentry
(187071, 2, 102806, 1, 1, 46879), -- Nurse Sentry
(187071, 1, 102807, 1, 1, 46879), -- Nurse Sentry
(187071, 0, 102808, 1, 1, 46879), -- Nurse Sentry
(186692, 0, 102140, 1, 1, 46879), -- Ruby Swarmer
(193988, 1, 109738, 1, 0, 46879), -- Andustrasza
(193988, 0, 108362, 1, 1, 46879), -- Andustrasza
(193987, 1, 108365, 1, 0, 46879), -- Valdestrasz
(193987, 0, 108361, 1, 1, 46879), -- Valdestrasz
(193077, 2, 108070, 1, 1, 46879), -- Ruby Percher
(193077, 1, 108069, 1, 1, 46879), -- Ruby Percher
(193077, 0, 108066, 1, 1, 46879), -- Ruby Percher
(192305, 0, 63718, 1, 1, 46879), -- Boots
(192096, 0, 102140, 1, 1, 46879), -- Ruby Dozer
(193737, 7, 102669, 1, 1, 46879), -- Ruby Tender
(193737, 6, 102668, 1, 1, 46879), -- Ruby Tender
(193737, 5, 102667, 1, 1, 46879), -- Ruby Tender
(193737, 4, 102666, 1, 1, 46879), -- Ruby Tender
(193737, 3, 102656, 1, 1, 46879), -- Ruby Tender
(193737, 2, 102654, 1, 1, 46879), -- Ruby Tender
(193737, 1, 102655, 1, 1, 46879), -- Ruby Tender
(193737, 0, 102657, 1, 1, 46879), -- Ruby Tender
(188107, 0, 109615, 0.699999988079071044, 1, 46879), -- Tionistrasz
(193983, 0, 105602, 1, 1, 46879), -- Boisterous Instigator
(192674, 0, 107950, 1, 1, 46879), -- Mahra Treebender
(192574, 0, 107926, 1, 1, 46879), -- Thomas Bright
(185904, 0, 110043, 1, 1, 46879), -- Mother Elion
(195052, 0, 104200, 1, 1, 46879), -- Sapphire Tender
(192512, 4, 102304, 1, 0.75, 46879), -- Boisterous Child
(192512, 3, 105600, 1, 0.5, 46879), -- Boisterous Child
(192512, 2, 105601, 1, 0.75, 46879), -- Boisterous Child
(192512, 1, 105603, 1, 0.25, 46879), -- Boisterous Child
(192512, 0, 105602, 1, 1, 46879), -- Boisterous Child
(193920, 0, 102774, 1, 1, 46879), -- Kahtzar
(187073, 7, 102674, 1, 1, 46879), -- Ruby Sitter
(187073, 6, 102675, 1, 1, 46879), -- Ruby Sitter
(187073, 5, 102676, 1, 1, 46879), -- Ruby Sitter
(187073, 4, 102677, 1, 1, 46879), -- Ruby Sitter
(187073, 3, 102690, 1, 1, 46879), -- Ruby Sitter
(187073, 2, 102691, 1, 1, 46879), -- Ruby Sitter
(187073, 1, 102692, 1, 1, 46879), -- Ruby Sitter
(187073, 0, 102693, 1, 1, 46879), -- Ruby Sitter
(194474, 0, 108588, 1, 1, 46879), -- Zhustostrasza
(193097, 3, 100704, 1, 1, 46879), -- Peaceful Duck
(193097, 2, 100701, 1, 1, 46879), -- Peaceful Duck
(193097, 1, 100703, 1, 1, 46879), -- Peaceful Duck
(193097, 0, 100702, 1, 1, 46879), -- Peaceful Duck
(192539, 0, 107889, 1, 1, 46879), -- Miguel Bright
(191894, 0, 102663, 1, 1, 46879), -- Krillonn
(191893, 0, 102684, 1, 1, 46879), -- Zherrak
(191126, 7, 110459, 1, 1, 46879), -- Ruby Shrineguard
(191126, 6, 110458, 1, 1, 46879), -- Ruby Shrineguard
(191126, 5, 110457, 1, 1, 46879), -- Ruby Shrineguard
(191126, 4, 110456, 1, 1, 46879), -- Ruby Shrineguard
(191126, 3, 110455, 1, 1, 46879), -- Ruby Shrineguard
(191126, 2, 110454, 1, 1, 46879), -- Ruby Shrineguard
(191126, 1, 110453, 1, 1, 46879), -- Ruby Shrineguard
(191126, 0, 110451, 1, 1, 46879), -- Ruby Shrineguard
(189448, 0, 109616, 1, 1, 46879), -- Trellain
(189262, 0, 102690, 1, 1, 46879), -- Akxall
(188029, 2, 104041, 1, 1, 46879), -- Sprightly Butterfly
(188029, 1, 104042, 1, 1, 46879), -- Sprightly Butterfly
(188029, 0, 104040, 1, 1, 46879), -- Sprightly Butterfly
(198628, 1, 23767, 1, 1, 46879), -- Tracker Dragon Glyph
(198628, 0, 21955, 1, 0, 46879), -- Tracker Dragon Glyph
(194099, 0, 107204, 1, 1, 46879), -- Urlostrasz
(193979, 0, 102140, 1.10000002384185791, 0, 46879), -- Ruby Whelpling
(198456, 1, 23767, 1, 1, 46879), -- Dragon Glyph
(198456, 0, 21955, 1, 0, 46879), -- Dragon Glyph
(194479, 2, 104041, 0.75, 1, 46879), -- Sprightly Butterfly
(194479, 1, 104042, 0.75, 1, 46879), -- Sprightly Butterfly
(194479, 0, 104040, 0.75, 1, 46879), -- Sprightly Butterfly
(194478, 0, 108589, 1, 1, 46879), -- Clokkistrasz
(191954, 0, 109608, 1, 1, 46879), -- Kskeiton
(187072, 7, 110459, 1, 1, 46879), -- Ruby Shrineguard
(187072, 6, 110458, 1, 1, 46879), -- Ruby Shrineguard
(187072, 5, 110457, 1, 1, 46879), -- Ruby Shrineguard
(187072, 4, 110456, 1, 1, 46879), -- Ruby Shrineguard
(187072, 3, 110455, 1, 1, 46879), -- Ruby Shrineguard
(187072, 2, 110454, 1, 1, 46879), -- Ruby Shrineguard
(187072, 1, 110453, 1, 1, 46879), -- Ruby Shrineguard
(187072, 0, 110451, 1, 1, 46879), -- Ruby Shrineguard
(187955, 0, 109972, 1, 1, 46879), -- Krendisc
(193955, 0, 102140, 1, 1, 46879), -- Lillistrasza
(187060, 7, 102678, 1, 1, 46879), -- Ruby Keeper
(187060, 6, 102679, 1, 1, 46879), -- Ruby Keeper
(187060, 5, 102680, 1, 1, 46879), -- Ruby Keeper
(187060, 4, 102681, 1, 1, 46879), -- Ruby Keeper
(187060, 3, 102694, 1, 1, 46879), -- Ruby Keeper
(187060, 2, 102695, 1, 1, 46879), -- Ruby Keeper
(187060, 1, 102696, 1, 1, 46879), -- Ruby Keeper
(187060, 0, 102697, 1, 1, 46879), -- Ruby Keeper
(192284, 1, 107779, 0.800000011920928955, 0, 46879), -- Kandrostrasz
(192284, 0, 15481, 1, 1, 46879), -- Kandrostrasz
(192498, 0, 107861, 1, 1, 46879), -- Haephesta
(193757, 0, 102685, 1, 1, 46879), -- Tzurok
(194076, 0, 108383, 1, 1, 46879), -- Veritistrasz
(198631, 1, 23767, 1, 1, 46879), -- Tracker Dragon Glyph
(198631, 0, 21955, 1, 0, 46879), -- Tracker Dragon Glyph
(194818, 1, 23767, 1, 1, 46879), -- Dragon Glyph
(194818, 0, 21955, 1, 0, 46879), -- Dragon Glyph
(192491, 0, 102712, 1, 1, 46879), -- Vaknai
(187292, 0, 107204, 1, 1, 46879), -- Holthkastrasz
(191831, 0, 104572, 1, 1, 46879), -- Ravenous Dreadsquall
(195125, 0, 107747, 1, 1, 46879), -- Ruby Skyguard
(187058, 7, 110475, 1, 1, 46879), -- Ruby Scaleguard
(187058, 6, 110474, 1, 1, 46879), -- Ruby Scaleguard
(187058, 5, 110473, 1, 1, 46879), -- Ruby Scaleguard
(187058, 4, 110472, 1, 1, 46879), -- Ruby Scaleguard
(187058, 3, 110471, 1, 1, 46879), -- Ruby Scaleguard
(187058, 2, 110470, 1, 1, 46879), -- Ruby Scaleguard
(187058, 1, 110469, 1, 1, 46879), -- Ruby Scaleguard
(187058, 0, 110468, 1, 1, 46879), -- Ruby Scaleguard
(192178, 11, 104094, 1, 1, 46879), -- Grazing Hornstrider
(192178, 10, 104093, 1, 1, 46879), -- Grazing Hornstrider
(192178, 9, 104092, 1, 1, 46879), -- Grazing Hornstrider
(192178, 8, 104091, 1, 1, 46879), -- Grazing Hornstrider
(192178, 7, 104090, 1, 1, 46879), -- Grazing Hornstrider
(192178, 6, 104089, 1, 1, 46879), -- Grazing Hornstrider
(192178, 5, 104088, 1, 1, 46879), -- Grazing Hornstrider
(192178, 4, 104087, 1, 1, 46879), -- Grazing Hornstrider
(192178, 3, 104086, 1, 1, 46879), -- Grazing Hornstrider
(192178, 2, 104082, 1, 1, 46879), -- Grazing Hornstrider
(192178, 1, 104081, 1, 1, 46879); -- Grazing Hornstrider

INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(192178, 0, 104080, 1, 1, 46879), -- Grazing Hornstrider
(184811, 13, 108852, 1, 1, 46879), -- Eager Acquisitionist
(184811, 12, 108853, 1, 1, 46879), -- Eager Acquisitionist
(184811, 11, 108455, 1, 1, 46879), -- Eager Acquisitionist
(184811, 10, 108456, 1, 1, 46879), -- Eager Acquisitionist
(184811, 9, 108811, 1, 1, 46879), -- Eager Acquisitionist
(184811, 8, 108810, 1, 1, 46879), -- Eager Acquisitionist
(184811, 7, 110365, 1, 1, 46879), -- Eager Acquisitionist
(184811, 6, 110364, 1, 1, 46879), -- Eager Acquisitionist
(184811, 5, 110357, 1, 1, 46879), -- Eager Acquisitionist
(184811, 4, 110356, 1, 1, 46879), -- Eager Acquisitionist
(184811, 3, 108804, 1, 1, 46879), -- Eager Acquisitionist
(184811, 2, 108802, 1, 1, 46879), -- Eager Acquisitionist
(184811, 1, 108801, 1, 1, 46879), -- Eager Acquisitionist
(184811, 0, 108798, 1, 1, 46879), -- Eager Acquisitionist
(185490, 0, 103464, 1, 1, 46879), -- Entranced Water Elemental
(193082, 5, 110338, 1, 1, 46879), -- Inquisitive Scout
(193082, 4, 110331, 1, 1, 46879), -- Inquisitive Scout
(193082, 3, 110315, 1, 1, 46879), -- Inquisitive Scout
(193082, 2, 110325, 1, 1, 46879), -- Inquisitive Scout
(193082, 1, 110329, 1, 1, 46879), -- Inquisitive Scout
(193082, 0, 110330, 1, 1, 46879), -- Inquisitive Scout
(185489, 0, 103415, 1, 1, 46879), -- King Drippy
(192049, 1, 108297, 1, 1, 46879), -- Swoglet
(192049, 0, 108296, 1, 1, 46879), -- Swoglet
(185484, 0, 105596, 1, 1, 46879), -- Handhold
(195120, 0, 107747, 1, 1, 46879), -- Ruby Skyguard
(180377, 1, 109897, 1, 0, 46879), -- Handhold
(180377, 0, 105598, 1, 1, 46879), -- Handhold
(186146, 1, 109898, 1, 0, 46879), -- Handhold
(186146, 0, 101649, 1, 1, 46879), -- Handhold
(186143, 0, 105596, 1, 1, 46879), -- Handhold
(185464, 0, 105598, 1, 1, 46879), -- Handhold
(185485, 3, 105597, 1, 0, 46879), -- Handhold
(185485, 2, 105598, 1, 0, 46879), -- Handhold
(185485, 1, 101649, 1, 1, 46879), -- Handhold
(185485, 0, 105596, 1, 0, 46879), -- Handhold
(187295, 0, 105794, 1, 1, 46879), -- Borrowed Otter Mount
(196827, 0, 102699, 1, 1, 46879), -- Crabtender Kad'irsza
(193304, 0, 102751, 1, 1, 46879), -- Ru'kroszk
(189637, 0, 104675, 1, 1, 46879), -- Curious Duckling
(187683, 0, 104678, 1, 1, 46879), -- Waking Duck
(198615, 1, 23767, 1, 1, 46879), -- Tracker Dragon Glyph
(198615, 0, 21955, 1, 0, 46879), -- Tracker Dragon Glyph
(194821, 1, 23767, 1, 1, 46879), -- Dragon Glyph
(194821, 0, 21955, 1, 0, 46879), -- Dragon Glyph
(189103, 2, 106611, 1, 5, 46879), -- Scruffy Ottuk
(189103, 1, 106614, 1, 20, 46879), -- Scruffy Ottuk
(189103, 0, 106610, 1, 75, 46879), -- Scruffy Ottuk
(189812, 0, 106820, 1, 1, 46879), -- Cliffdrip Snapstrider
(188074, 4, 103857, 1, 1, 46879), -- Agitated Sidewalker
(188074, 3, 103326, 1, 1, 46879), -- Agitated Sidewalker
(188074, 2, 103324, 1, 1, 46879), -- Agitated Sidewalker
(188074, 1, 103321, 1, 1, 46879), -- Agitated Sidewalker
(188074, 0, 103318, 1, 1, 46879), -- Agitated Sidewalker
(182439, 13, 103860, 1, 1, 46879), -- Snappy Sidewalker
(182439, 12, 103857, 1, 1, 46879), -- Snappy Sidewalker
(182439, 11, 103327, 1, 1, 46879), -- Snappy Sidewalker
(182439, 10, 103326, 1, 1, 46879), -- Snappy Sidewalker
(182439, 9, 103325, 1, 1, 46879), -- Snappy Sidewalker
(182439, 8, 103324, 1, 1, 46879), -- Snappy Sidewalker
(182439, 7, 103323, 1, 1, 46879), -- Snappy Sidewalker
(182439, 6, 103322, 1, 1, 46879), -- Snappy Sidewalker
(182439, 5, 103321, 1, 1, 46879), -- Snappy Sidewalker
(182439, 4, 103320, 1, 1, 46879), -- Snappy Sidewalker
(182439, 3, 103319, 1, 1, 46879), -- Snappy Sidewalker
(182439, 2, 103318, 1, 1, 46879), -- Snappy Sidewalker
(182439, 1, 103317, 1, 1, 46879), -- Snappy Sidewalker
(182439, 0, 103316, 1, 1, 46879), -- Snappy Sidewalker
(198034, 0, 103425, 1, 1, 46879), -- Dripclaw
(197211, 0, 103413, 1, 1, 46879), -- Gurblbrblr the Invader
(189815, 0, 103281, 1, 1, 46879), -- Cliffdrip Fallstriker
(189814, 0, 103279, 1, 1, 46879), -- Cliffdrip Wavemender
(192013, 0, 106636, 1, 1, 46879), -- Wild Duckling
(191765, 4, 107218, 1, 1, 46879), -- Mean Duck
(191765, 3, 107219, 1, 1, 46879), -- Mean Duck
(191765, 2, 107220, 1, 1, 46879), -- Mean Duck
(191765, 1, 107221, 1, 1, 46879), -- Mean Duck
(191765, 0, 107222, 1, 1, 46879), -- Mean Duck
(192069, 0, 106674, 1, 1, 46879), -- Vorquin Runt
(191656, 9, 103370, 0.5, 1, 46879), -- Young Salamanther
(191656, 8, 103367, 0.5, 1, 46879), -- Young Salamanther
(191656, 7, 103368, 0.5, 1, 46879), -- Young Salamanther
(191656, 6, 103369, 0.5, 1, 46879), -- Young Salamanther
(191656, 5, 103366, 0.5, 1, 46879), -- Young Salamanther
(191656, 4, 104625, 1, 1, 46879), -- Young Salamanther
(191656, 3, 104626, 1, 1, 46879), -- Young Salamanther
(191656, 2, 104627, 1, 1, 46879), -- Young Salamanther
(191656, 1, 104628, 1, 1, 46879), -- Young Salamanther
(191656, 0, 104629, 1, 1, 46879), -- Young Salamanther
(191653, 9, 103370, 1, 1, 46879), -- Coastal Salamanther
(191653, 8, 103367, 1, 1, 46879), -- Coastal Salamanther
(191653, 7, 103368, 1, 1, 46879), -- Coastal Salamanther
(191653, 6, 103369, 1, 1, 46879), -- Coastal Salamanther
(191653, 5, 103366, 1, 1, 46879), -- Coastal Salamanther
(191653, 4, 104630, 1, 1, 46879), -- Coastal Salamanther
(191653, 3, 104631, 1, 1, 46879), -- Coastal Salamanther
(191653, 2, 104632, 1, 1, 46879), -- Coastal Salamanther
(191653, 1, 104633, 1, 1, 46879), -- Coastal Salamanther
(191653, 0, 104634, 1, 1, 46879), -- Coastal Salamanther
(191796, 1, 104530, 1, 1, 46879), -- Tiny Drop
(191796, 0, 104531, 1, 1, 46879), -- Tiny Drop
(190660, 0, 104679, 1, 1, 46879), -- Cautious Duck
(189121, 0, 108322, 1, 1, 46879), -- Igneoid
(194523, 3, 102642, 1, 1, 46879), -- Raging Elemental
(194523, 2, 102643, 1, 1, 46879), -- Raging Elemental
(194523, 1, 102644, 1, 1, 46879), -- Raging Elemental
(194523, 0, 102645, 1, 1, 46879), -- Raging Elemental
(194524, 2, 102566, 1, 1, 46879), -- Earthshatter Elemental
(194524, 1, 102565, 1, 1, 46879), -- Earthshatter Elemental
(194524, 0, 102564, 1, 1, 46879), -- Earthshatter Elemental
(191892, 0, 108782, 1, 1, 46879), -- Infused Dragon Egg
(186795, 1, 108032, 1, 0, 46879), -- Majordomo Selistra
(186795, 0, 107040, 1, 1, 46879), -- Majordomo Selistra
(191820, 0, 104142, 1, 1, 46879), -- Massive Proto-Dragon
(191891, 0, 110924, 1, 1, 46879), -- Sendrax
(190269, 0, 110924, 1, 1, 46879), -- Sendrax
(193790, 0, 110141, 1, 1, 46879), -- Sundered Supplyhand
(193791, 0, 110139, 1, 1, 46879), -- Sundered Mercenary
(192186, 3, 104167, 1, 1, 46879), -- Territorial Axebeak
(192186, 2, 104168, 1, 1, 46879), -- Territorial Axebeak
(192186, 1, 104169, 1, 1, 46879), -- Territorial Axebeak
(192186, 0, 104170, 1, 1, 46879), -- Territorial Axebeak
(198100, 0, 107152, 1, 1, 46879), -- Hope Kite
(190090, 0, 108782, 1, 1, 46879), -- Infused Dragon Egg
(186822, 0, 102140, 1, 1, 46879); -- Infused Ruby Whelpling

UPDATE `creature_template_model` SET `VerifiedBuild`=46879 WHERE (`Idx`=0 AND `CreatureID` IN (62822,62821,198618,194972,4075,61366,187442,189703,189093,58965,143622,68806,186577,192149,189307,191618,32158,165189,191645,191830,187194,184812,15475,61319,191554,193217,189122,192103,192059,191792,191812,191809,194517,190211,191768,194525,191553,190155,191628,192137,191629,192181,191818,191625,191817,188667,192151,186573,188372,180701,193000,190080,190171,191886,198619,186684,194820,186833,186823,195915,188666,191904,186836,191624,186829,190013,179965,195917,186825,186834,192182,193001,3300,73780,21354,65011,46754,32207,28302,20029,20030,18379,18380,18378,18377,18365,18364,18363,14505,60941,305,304,191879)) OR (`Idx`=1 AND `CreatureID` IN (198618,194972,4075,61366,189703,189093,143622,186577,192149,189307,191645,187194,184812,15475,61319,191554,189122,192103,192059,191792,191812,191809,194517,191768,191553,191628,192137,191629,192181,191625,191817,192151,188372,180701,193000,190080,198619,194820,186833,186823,191904,191624,186829,179965,186825,192182,193001,3300)) OR (`Idx`=2 AND `CreatureID` IN (4075,61366,189703,189093,143622,186577,192149,189307,191645,187194,184812,15475,61319,191554,189122,192103,192059,191792,191812,191809,194517,191768,191553,191628,191629,192181,191625,191817,192151,186833,186823,191624,186829,186825,3300)) OR (`Idx`=4 AND `CreatureID` IN (189703,186577,189307,191645,187194,184812,191792,191809,192181,191817,192151,186823,186825)) OR (`Idx`=3 AND `CreatureID` IN (189703,186577,192149,189307,191645,187194,184812,15475,61319,191792,191809,194517,192181,191625,191817,192151,186823,186825)) OR (`Idx`=7 AND `CreatureID` IN (186577,191645,187194,184812,191792,192181,191817,186823,186825)) OR (`Idx`=6 AND `CreatureID` IN (186577,191645,187194,184812,191792,192181,191817,186823,186825)) OR (`Idx`=5 AND `CreatureID` IN (186577,191645,187194,184812,191792,191809,192181,191817,186823,186825)) OR (`Idx`=9 AND `CreatureID` IN (191645,187194,184812,191792,192181,186825)) OR (`Idx`=8 AND `CreatureID` IN (191645,187194,184812,191792,192181,191817,186825)) OR (`Idx`=11 AND `CreatureID` IN (184812,191792,186825)) OR (`Idx`=10 AND `CreatureID` IN (184812,191792,186825)) OR (`Idx`=13 AND `CreatureID`=191792) OR (`Idx`=12 AND `CreatureID`=191792);

DELETE FROM `creature_questitem` WHERE (`CreatureEntry`=187745 AND `Idx`=0);
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(187745, 0, 200117, 46879); -- Disoriented Watcher

DELETE FROM `gameobject_template` WHERE `entry` IN (384972 /*Collision Object*/, 384838 /*Waking Flame*/, 381960 /*Lush Hochenblume*/, 375239 /*Primal Draconium Deposit*/, 382115 /*Rostrum of Transformation*/, 381257 /*Rich Draconium Deposit*/, 377904 /*Mailbox*/, 377584 /*Rostrum of Transformation - Spell Focus*/, 376883 /*Rostrum of Transformation*/, 380901 /*Ancient Waygate*/, 376325 /*Ancient Stone*/, 381959 /*Lush Saxifrage*/, 381003 /*Chair*/, 381484 /*Well-Preserved Bone*/, 380610 /*Pulsing Earth Rune*/, 379231 /*Anvil*/, 379230 /*Forge*/, 376584 /*Dracthyr Supply Chest*/, 381101 /*Islefin Dorado Pool*/, 381004 /*Chair*/, 379228 /*Campfire*/, 383731 /*Wheelchair [DNT]*/, 379229 /*Mailbox*/, 384295 /*Self-Grown Saxifrage*/, 384291 /*Self-Grown Hochenblume*/, 381517 /*Titan-Touched Serevite Deposit*/, 375242 /*Titan-Touched Bubble Poppy*/, 384293 /*Self-Grown Writhebark*/, 379159 /*Shovel*/, 377899 /*Hidden Hornswog Hostage*/, 377901 /*Observant Riddles: A Field Guide*/, 379040 /*Glass Bead*/, 379037 /*Soft Ruby Feather*/, 377101 /*Unpollinated Flora*/, 377523 /*[DNT] Assertive Calling*/, 377522 /*[DNT] Calculated Calling*/, 377521 /*[DNT] Dusty Calling*/, 377520 /*[DNT] Shiny Calling*/, 380835 /*Meeting Stone*/, 378850 /*Large Lunker Sighting*/, 378849 /*Large Lunker Sighting*/, 375105 /*Teleport Tether*/, 377301 /*Reinforced Hornstrider Lasso*/, 377300 /*Whelptender's Watering Can*/, 377298 /*Shimmery Jar of Fireflies*/, 377302 /*Gardener's Trusty Rake*/, 376289 /*Green Dragon Egg*/, 376288 /*Bronze Dragon Egg*/, 376286 /*Bronze Dragon Egg Incubator*/, 376284 /*Green Dragon Egg Incubator*/, 382068 /*Barbed Tulip*/, 381518 /*Primal Serevite Deposit*/, 379167 /*Mysterious Glyph*/, 380870 /*Alchemist's Lab Bench*/, 380869 /*Tailor's Work Table*/, 379212 /*Thomas's Crafting Table*/, 377266 /*Overgrown Weeds*/, 377265 /*Overgrown Weeds*/, 376283 /*Blue Dragon Egg Incubator*/, 377231 /*Overgrown Weeds*/, 377230 /*Fallen Leaves*/, 376281 /*Empty Egg Incubator*/, 379213 /*Anvil*/, 379211 /*Forge*/, 316739 /*Barrier (Wide)*/, 377102 /*Unpollinated Flora*/, 382345 /*Red Dragon Oathstone*/, 379210 /*Brazier*/, 379209 /*Brazier*/, 377100 /*Unpollinated Flora*/, 381341 /*Ancient Stone*/, 381617 /*Kolgar's Pack*/, 381304 /*Bench*/, 381302 /*Bench*/, 381236 /*Stool*/, 381235 /*Stool*/, 381233 /*Stool*/, 381232 /*Stool*/, 381229 /*Stool*/, 381228 /*Stool*/, 381305 /*Bench*/, 381303 /*Bench*/, 381301 /*Bench*/, 381300 /*Bench*/, 381234 /*Stool*/, 381231 /*Stool*/, 381230 /*Stool*/, 381227 /*Stool*/, 381226 /*Stool*/, 381225 /*Stool*/, 378093 /*Mailbox*/, 383656 /*Stool*/, 383654 /*Stool*/, 383655 /*Stool*/, 378466 /*Green Dragon Book - Open [DNT]*/, 378465 /*Green Dragon Book [DNT]*/, 378092 /*Garden Bench*/, 378089 /*Garden Bench*/, 383653 /*Stool*/, 377098 /*Overgrown Shrub*/, 381396 /*Tuskarr Fishing Net*/, 381649 /*Hornstrider Lasso*/, 380868 /*Scribe's Drafting Table*/, 382054 /*Stool*/, 382053 /*Stool*/, 382052 /*Campfire*/, 384970 /*Butterfly Lantern*/, 382028 /*Stool*/, 382027 /*Campfire*/, 382026 /*Stool*/, 376240 /*Climbing Gear*/, 375687 /*Water Keg*/, 375668 /*Misty Treasure Chest*/, 376241 /*Crashed Gyrocopter*/, 375673 /*Climbing Gear*/, 384945 /*Expedition Gunpowder Keg*/, 382207 /*Stool*/, 382206 /*Campfire*/, 375241 /*Bubble Poppy*/, 380768 /*Anvil*/, 380767 /*Forge*/, 380766 /*Mailbox*/, 377202 /*Ipko's Favorite Toy*/, 377137 /*Tuskarr Chair [DNT]*/, 377136 /*Small Tuskarr Table [DNT]*/, 376624 /*Tuskarr Anvil*/, 380765 /*Chair*/, 380764 /*Cooking Fire*/, 377210 /*Filled Water Bucket [DNT]*/, 376646 /*Rock Wall*/, 381343 /*Ancient Stone*/, 376943 /*Dracuixote*/, 376946 /*Pride and Protodrakes*/, 376944 /*The Lord of the Wings*/, 381210 /*Titan-Touched Hochenblume*/, 380517 /*Dim Forge*/, 380516 /*Glimmer of Wisdom*/, 380513 /*Slack Tub*/, 380510 /*Dim Forge*/, 379252 /*Draconium Deposit*/, 381104 /*Rich Serevite Deposit*/, 379248 /*Draconium Deposit*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(384972, 5, 68010, 'Collision Object', '', '', '', 0.200000002980232238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Collision Object
(384838, 10, 78992, 'Waking Flame', '', 'Activating', '', 0.400000005960464477, 43, 0, 0, 30000, 0, 1, 0, 0, 0, 0, 396055, 0, 0, 0, 27700, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Waking Flame
(381960, 50, 77406, 'Lush Hochenblume', '', '', '', 1.20000004768371582, 3381, 113382, 0, 0, 60, 100, 30, 0, 0, 0, 0, 0, 292, 1, 390407, 0, 0, 0, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2181, 46879), -- Lush Hochenblume
(375239, 50, 76207, 'Primal Draconium Deposit', '', '', '', 1, 3396, 114130, 0, 0, 100, 100, 30, 0, 0, 0, 0, 0, 681, 1, 388581, 0, 0, 0, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2181, 46879), -- Primal Draconium Deposit
(382115, 5, 74863, 'Rostrum of Transformation', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2424, 46879), -- Rostrum of Transformation
(381257, 5, 76206, 'Rich Draconium Deposit', '', '', '', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2181, 46879), -- Rich Draconium Deposit
(377904, 19, 74322, 'Mailbox', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Mailbox
(377584, 8, 9510, 'Rostrum of Transformation - Spell Focus', '', '', '', 1, 2161, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2078, 46879), -- Rostrum of Transformation - Spell Focus
(376883, 32, 74863, 'Rostrum of Transformation', '', '', '', 1, 2, 30, 0, 1500, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2424, 46879), -- Rostrum of Transformation
(380901, 5, 76664, 'Ancient Waygate', '', '', '', 0.949999988079071044, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 482, 46879), -- Ancient Waygate
(376325, 10, 74143, 'Ancient Stone', 'inspect', '', '', 0.5, 0, 0, 0, 0, 0, 0, 0, 8575, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 46879), -- Ancient Stone
(381959, 50, 77407, 'Lush Saxifrage', '', '', '', 1.20000004768371582, 3381, 113552, 0, 0, 100, 175, 30, 0, 0, 0, 0, 0, 292, 1, 390407, 0, 0, 0, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2181, 46879), -- Lush Saxifrage
(381003, 7, 71292, 'Chair', '', '', '', 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Chair
(381484, 3, 77153, 'Well-Preserved Bone', '', 'Gathering', '', 0.25, 2152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113085, 0, 0, 0, 0, 2283, 46879), -- Well-Preserved Bone
(380610, 3, 76453, 'Pulsing Earth Rune', '', 'Opening', '', 0.100000001490116119, 43, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 21400, 0, 0, 100247, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5329, 112489, 0, 108, 0, 0, 2214, 46879), -- Pulsing Earth Rune
(379231, 8, 71475, 'Anvil', '', '', '', 1, 1, 10, 0, 0, 0, 0, 0, 0, 103828, 0, 30091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Anvil
(379230, 8, 71473, 'Forge', '', '', '', 1, 3, 10, 0, 0, 0, 0, 0, 0, 103829, 0, 30092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Forge
(376584, 50, 73227, 'Dracthyr Supply Chest', '', '', '', 0.5, 3427, 110633, 0, 1, 0, 0, 90, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 10, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2214, 46879), -- Dracthyr Supply Chest
(381101, 25, 6742, 'Islefin Dorado Pool', '', '', '', 1, 4, 112872, 3, 5, 1628, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2164, 46879), -- Islefin Dorado Pool
(381004, 7, 71292, 'Chair', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Chair
(379228, 8, 33316, 'Campfire', '', '', '', 1, 4, 10, 215916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Campfire
(383731, 5, 13401, 'Wheelchair [DNT]', '', '', '', 1.399999976158142089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2284, 46879), -- Wheelchair [DNT]
(379229, 19, 76071, 'Mailbox', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Mailbox
(384295, 50, 76889, 'Self-Grown Saxifrage', '', '', '', 1, 3381, 115718, 0, 0, 30, 60, 30, 0, 0, 0, 0, 0, 292, 1, 390407, 0, 0, 0, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2181, 46879), -- Self-Grown Saxifrage
(384291, 50, 76894, 'Self-Grown Hochenblume', '', '', '', 1, 3381, 115716, 0, 0, 15, 30, 30, 0, 0, 0, 0, 0, 292, 1, 390407, 0, 0, 0, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2181, 46879), -- Self-Grown Hochenblume
(381517, 50, 76806, 'Titan-Touched Serevite Deposit', '', '', '', 1, 3396, 114131, 0, 0, 60, 100, 30, 0, 0, 0, 0, 0, 681, 1, 388580, 0, 0, 0, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2181, 46879), -- Titan-Touched Serevite Deposit
(375242, 50, 76839, 'Titan-Touched Bubble Poppy', '', '', '', 1.5, 3381, 113538, 0, 0, 100, 175, 30, 0, 0, 0, 0, 0, 292, 1, 390412, 0, 0, 0, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2181, 46879), -- Titan-Touched Bubble Poppy
(384293, 50, 76841, 'Self-Grown Writhebark', '', '', '', 1, 3381, 115719, 0, 0, 30, 60, 30, 0, 0, 0, 0, 0, 292, 1, 390407, 0, 0, 0, 5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2181, 46879), -- Self-Grown Writhebark
(379159, 10, 76163, 'Shovel', '', '', '', 1, 1634, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 383183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Shovel
(377899, 3, 18985, 'Hidden Hornswog Hostage', '', 'Collecting', '', 1, 2124, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 19676, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5139, 111816, 0, 0, 0, 0, 2151, 46879), -- Hidden Hornswog Hostage
(377901, 9, 74797, 'Observant Riddles: A Field Guide', 'interact', '', '', 1, 8599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Observant Riddles: A Field Guide
(379040, 3, 76099, 'Glass Bead', 'questinteract', '', '', 2, 2124, 0, 0, 0, 0, 0, 0, 0, 70058, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 112184, 1, 0, 0, 0, 2296, 46879), -- Glass Bead
(379037, 3, 6962, 'Soft Ruby Feather', 'questinteract', '', '', 2, 2124, 0, 0, 0, 0, 0, 0, 0, 70058, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 112180, 1, 0, 0, 0, 2296, 46879), -- Soft Ruby Feather
(377101, 5, 74980, 'Unpollinated Flora', '', '', '', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2295, 46879), -- Unpollinated Flora
(377523, 5, 75396, '[DNT] Assertive Calling', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- [DNT] Assertive Calling
(377522, 5, 74875, '[DNT] Calculated Calling', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- [DNT] Calculated Calling
(377521, 5, 74796, '[DNT] Dusty Calling', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- [DNT] Dusty Calling
(377520, 5, 75002, '[DNT] Shiny Calling', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- [DNT] Shiny Calling
(380835, 23, 46089, 'Meeting Stone', '', '', '', 1, 110, 120, 14063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2155, 46879), -- Meeting Stone
(378850, 5, 68795, 'Large Lunker Sighting', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Large Lunker Sighting
(378849, 5, 74640, 'Large Lunker Sighting', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Large Lunker Sighting
(375105, 5, 71300, 'Teleport Tether', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Teleport Tether
(377301, 10, 74581, 'Reinforced Hornstrider Lasso', 'questinteract', '', '', 1, 0, 66825, 81118, 3000, 0, 0, 0, 0, 0, 0, 314986, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 56965, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Reinforced Hornstrider Lasso
(377300, 10, 75230, 'Whelptender\'s Watering Can', 'questinteract', '', '', 1, 0, 0, 81134, 3000, 0, 0, 0, 0, 0, 0, 314986, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 56965, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Whelptender's Watering Can
(377298, 10, 75229, 'Shimmery Jar of Fireflies', 'questinteract', '', '', 1, 0, 66825, 81133, 3000, 0, 0, 0, 0, 0, 0, 314986, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 56965, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Shimmery Jar of Fireflies
(377302, 10, 75233, 'Gardener\'s Trusty Rake', 'questinteract', '', '', 1, 0, 66825, 81132, 3000, 0, 0, 0, 0, 0, 0, 314986, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 56965, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Gardener's Trusty Rake
(376289, 5, 74108, 'Green Dragon Egg', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Green Dragon Egg
(376288, 5, 74106, 'Bronze Dragon Egg', '', '', '', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Bronze Dragon Egg
(376286, 5, 74102, 'Bronze Dragon Egg Incubator', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Bronze Dragon Egg Incubator
(376284, 5, 74100, 'Green Dragon Egg Incubator', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Green Dragon Egg Incubator
(382068, 50, 77636, 'Barbed Tulip', 'openhand', '', '', 0.400000005960464477, 3427, 113270, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5482, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2214, 46879), -- Barbed Tulip
(381518, 50, 76806, 'Primal Serevite Deposit', '', '', '', 1, 3396, 114131, 0, 0, 60, 100, 30, 0, 0, 0, 0, 0, 681, 1, 388581, 0, 0, 0, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2181, 46879), -- Primal Serevite Deposit
(379167, 5, 76155, 'Mysterious Glyph', 'questinteract', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Mysterious Glyph
(380870, 8, 76589, 'Alchemist\'s Lab Bench', '', '', '', 1, 2164, 10, 0, 0, 0, 0, 0, 0, 403, 0, 30076, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Alchemist's Lab Bench
(380869, 8, 76167, 'Tailor\'s Work Table', '', '', '', 1, 2174, 10, 0, 0, 0, 0, 0, 0, 408, 0, 30085, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Tailor's Work Table
(379212, 8, 73015, 'Thomas\'s Crafting Table', '', '', '', 1, 2163, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Thomas's Crafting Table
(377266, 10, 75115, 'Overgrown Weeds', 'questinteract', 'Grabbing', '', 0.400000005960464477, 43, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 375532, 0, 0, 0, 37379, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Overgrown Weeds
(377265, 10, 75115, 'Overgrown Weeds', 'questinteract', 'Grabbing', '', 0.400000005960464477, 43, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 375531, 0, 0, 0, 37379, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Overgrown Weeds
(376283, 5, 74099, 'Blue Dragon Egg Incubator', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Blue Dragon Egg Incubator
(377231, 10, 75115, 'Overgrown Weeds', 'questinteract', 'Grabbing', '', 0.400000005960464477, 43, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 375390, 0, 0, 0, 37379, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Overgrown Weeds
(377230, 10, 75131, 'Fallen Leaves', 'questinteract', 'Clearing', '', 1, 99, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 374685, 0, 0, 0, 156031, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Fallen Leaves
(376281, 5, 74097, 'Empty Egg Incubator', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Empty Egg Incubator
(379213, 8, 74348, 'Anvil', '', '', '', 1, 1, 10, 0, 0, 0, 0, 0, 0, 103828, 0, 30091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Anvil
(379211, 8, 71261, 'Forge', '', '', '', 1, 3, 10, 0, 0, 0, 0, 0, 0, 103829, 0, 30092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Forge
(316739, 0, 6391, 'Barrier (Wide)', '', '', '', 3, 0, 0, 0, 0, 0, 0, 0, 21439, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Barrier (Wide)
(377102, 5, 74981, 'Unpollinated Flora', '', '', '', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2295, 46879), -- Unpollinated Flora
(382345, 1, 77535, 'Red Dragon Oathstone', '', '', '', 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 5793, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Red Dragon Oathstone
(379210, 8, 75513, 'Brazier', '', '', '', 0.730000019073486328, 4, 10, 377066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Brazier
(379209, 8, 75513, 'Brazier', '', '', '', 0.729999959468841552, 4, 10, 377066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Brazier
(377100, 5, 74979, 'Unpollinated Flora', '', '', '', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2295, 46879), -- Unpollinated Flora
(381341, 10, 74667, 'Ancient Stone', 'inspect', '', '', 0.5, 0, 0, 0, 0, 0, 0, 0, 8575, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 46879), -- Ancient Stone
(381617, 3, 14316, 'Kolgar\'s Pack', 'questinteract', 'Collecting', '', 1.5, 1691, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113241, 0, 0, 0, 0, 2295, 46879), -- Kolgar's Pack
(381304, 7, 71141, 'Bench', '', '', '', 0.999999284744262695, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Bench
(381302, 7, 71141, 'Bench', '', '', '', 0.999999403953552246, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Bench
(381236, 7, 76729, 'Stool', '', '', '', 0.99999934434890747, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(381235, 7, 76729, 'Stool', '', '', '', 0.999999403953552246, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(381233, 7, 76729, 'Stool', '', '', '', 0.999999463558197021, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(381232, 7, 76729, 'Stool', '', '', '', 0.999999582767486572, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(381229, 7, 76729, 'Stool', '', '', '', 0.999999284744262695, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(381228, 7, 76729, 'Stool', '', '', '', 0.99999934434890747, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(381305, 7, 71141, 'Bench', '', '', '', 0.99999934434890747, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Bench
(381303, 7, 71141, 'Bench', '', '', '', 0.99999934434890747, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Bench
(381301, 7, 71141, 'Bench', '', '', '', 0.99999934434890747, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Bench
(381300, 7, 71141, 'Bench', '', '', '', 0.99999934434890747, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Bench
(381234, 7, 76729, 'Stool', '', '', '', 0.999999403953552246, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(381231, 7, 76729, 'Stool', '', '', '', 0.99999934434890747, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(381230, 7, 76729, 'Stool', '', '', '', 0.99999934434890747, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(381227, 7, 76729, 'Stool', '', '', '', 0.999999463558197021, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(381226, 7, 76729, 'Stool', '', '', '', 0.999999463558197021, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(381225, 7, 76729, 'Stool', '', '', '', 0.999999046325683593, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(378093, 19, 74322, 'Mailbox', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Mailbox
(383656, 7, 73016, 'Stool', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(383654, 7, 73016, 'Stool', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(383655, 7, 73016, 'Stool', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(378466, 5, 74797, 'Green Dragon Book - Open [DNT]', '', '', '', 0.75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Green Dragon Book - Open [DNT]
(378465, 5, 74796, 'Green Dragon Book [DNT]', '', '', '', 0.75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Green Dragon Book [DNT]
(378092, 7, 71141, 'Garden Bench', '', '', '', 1, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Garden Bench
(378089, 7, 71141, 'Garden Bench', '', '', '', 1, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Garden Bench
(383653, 7, 73016, 'Stool', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(377098, 10, 74977, 'Overgrown Shrub', 'questinteract', 'Pruning', '', 1, 3444, 0, 0, 3000, 0, 1, 0, 0, 0, 0, 374520, 0, 0, 0, 219232, 0, 0, 0, 0, 0, 0, 0, 98071, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Overgrown Shrub
(381396, 10, 75598, 'Tuskarr Fishing Net', 'questinteract', '', '', 1, 3520, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 2214, 46879), -- Tuskarr Fishing Net
(381649, 10, 74581, 'Hornstrider Lasso', '', 'Activating', '', 0.400000005960464477, 43, 0, 0, 30000, 0, 1, 0, 0, 0, 0, 394296, 0, 0, 0, 27700, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Hornstrider Lasso
(380868, 8, 76640, 'Scribe\'s Drafting Table', '', '', '', 1, 2175, 10, 0, 0, 0, 0, 0, 0, 10816, 0, 30082, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Scribe's Drafting Table
(382054, 7, 76729, 'Stool', '', '', '', 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(382053, 7, 76729, 'Stool', '', '', '', 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(382052, 8, 75250, 'Campfire', '', '', '', 1, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Campfire
(384970, 10, 79101, 'Butterfly Lantern', '', '', '', 0.33000001311302185, 0, 0, 0, 3000, 0, 1, 30, 0, 0, 0, 396450, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Butterfly Lantern
(382028, 7, 71292, 'Stool', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(382027, 8, 70622, 'Campfire', '', '', '', 1, 4, 10, 249358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Campfire
(382026, 7, 71292, 'Stool', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(376240, 10, 12986, 'Climbing Gear', 'openhandglow', '', '', 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 356998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 102902, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Climbing Gear
(375687, 10, 73189, 'Water Keg', '', 'Drinking', '', 1, 3399, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 367177, 0, 0, 0, 21295, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Water Keg
(375668, 3, 73227, 'Misty Treasure Chest', 'questinteract', 'Collecting', '', 1, 3392, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 19676, 0, 0, 95636, 705, 3, 0, 0, 0, 0, 0, 0, 367344, 0, 0, 0, 109909, 0, 0, 0, 0, 2151, 46879), -- Misty Treasure Chest
(376241, 5, 9510, 'Crashed Gyrocopter', '', '', '', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Crashed Gyrocopter
(375673, 10, 12986, 'Climbing Gear', 'openhandglow', '', '', 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 356998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 95642, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Climbing Gear
(384945, 10, 73206, 'Expedition Gunpowder Keg', 'questinteract', 'Collecting', '', 0.649999976158142089, 1690, 0, 0, 3000, 0, 1, 0, 0, 0, 0, 396301, 0, 0, 0, 19676, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2523, 46879), -- Expedition Gunpowder Keg
(382207, 7, 71292, 'Stool', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Stool
(382206, 8, 70622, 'Campfire', '', '', '', 1, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Campfire
(375241, 50, 76839, 'Bubble Poppy', '', '', '', 1, 3381, 113538, 0, 0, 30, 60, 30, 0, 0, 0, 0, 0, 292, 1, 390407, 0, 0, 0, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2181, 46879), -- Bubble Poppy
(380768, 8, 74458, 'Anvil', '', '', '', 1, 1, 10, 0, 0, 0, 0, 0, 0, 103828, 0, 30091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Anvil
(380767, 8, 75301, 'Forge', '', '', '', 1, 3, 10, 0, 0, 0, 0, 0, 0, 103829, 0, 30092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Forge
(380766, 19, 75298, 'Mailbox', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Mailbox
(377202, 5, 75074, 'Ipko\'s Favorite Toy', '', '', '', 1.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Ipko's Favorite Toy
(377137, 5, 75016, 'Tuskarr Chair [DNT]', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Tuskarr Chair [DNT]
(377136, 5, 75014, 'Small Tuskarr Table [DNT]', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Small Tuskarr Table [DNT]
(376624, 8, 74458, 'Tuskarr Anvil', '', '', '', 1, 1, 10, 0, 0, 0, 0, 0, 0, 103828, 0, 30091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Tuskarr Anvil
(380765, 7, 75016, 'Chair', '', '', '', 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Chair
(380764, 8, 75300, 'Cooking Fire', '', '', '', 1, 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Cooking Fire
(377210, 5, 75079, 'Filled Water Bucket [DNT]', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Filled Water Bucket [DNT]
(376646, 0, 74479, 'Rock Wall', '', '', '', 1, 0, 3428, 3000, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Rock Wall
(381343, 10, 74143, 'Ancient Stone', 'inspect', '', '', 0.5, 0, 0, 0, 0, 0, 0, 0, 8575, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 46879), -- Ancient Stone
(376943, 3, 74796, 'Dracuixote', 'questinteract', 'Collecting', '', 0.60000002384185791, 1691, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111696, 1, 0, 0, 0, 2285, 46879), -- Dracuixote
(376946, 3, 74799, 'Pride and Protodrakes', 'questinteract', 'Collecting', '', 1, 1691, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111699, 1, 0, 0, 0, 2285, 46879), -- Pride and Protodrakes
(376944, 3, 74797, 'The Lord of the Wings', 'questinteract', 'Collecting', '', 1, 1691, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111697, 1, 0, 0, 0, 2285, 46879), -- The Lord of the Wings
(381210, 50, 76894, 'Titan-Touched Hochenblume', '', '', '', 1.5, 3381, 113382, 0, 0, 60, 100, 30, 0, 0, 0, 0, 0, 292, 1, 390412, 0, 0, 0, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2181, 46879), -- Titan-Touched Hochenblume
(380517, 8, 13717, 'Dim Forge', '', '', '', 1, 3, 10, 0, 0, 0, 0, 0, 0, 103829, 0, 30092, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46879), -- Dim Forge
(380516, 50, 13717, 'Glimmer of Wisdom', 'lootall', 'Opening', '', 2, 1691, 112529, 0, 0, 0, 0, 60, 0, 0, 21400, 0, 100149, 0, 3, 384555, 0, 0, 5284, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2151, 46879), -- Glimmer of Wisdom
(380513, 5, 14851, 'Slack Tub', '', '', '', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2151, 46879), -- Slack Tub
(380510, 10, 75034, 'Dim Forge', 'inspect', '', '', 1, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 384562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 100252, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2151, 46879), -- Dim Forge
(379252, 50, 76203, 'Draconium Deposit', '', '', '', 1, 3396, 114130, 0, 0, 30, 60, 30, 0, 0, 0, 0, 0, 681, 1, 388670, 0, 0, 0, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2181, 46879), -- Draconium Deposit
(381104, 50, 76806, 'Rich Serevite Deposit', '', '', '', 1, 3396, 114131, 0, 0, 60, 100, 30, 0, 0, 0, 0, 0, 681, 1, 388670, 0, 0, 0, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2181, 46879), -- Rich Serevite Deposit
(379248, 50, 76199, 'Draconium Deposit', '', '', '', 1, 3396, 114130, 0, 0, 30, 60, 30, 0, 0, 0, 0, 0, 681, 1, 388670, 0, 0, 0, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2181, 46879); -- Draconium Deposit

UPDATE `gameobject_template` SET `VerifiedBuild`=46879 WHERE `entry` IN (375041, 375073, 381105, 233050, 361390, 361389, 375238, 381516, 241593, 379263, 381102, 268887, 35591, 252248, 381097, 381207, 381100, 381214, 380918, 377022, 382030, 381071, 377209, 384839, 376634, 376942, 380534, 381209, 380833, 242514, 377502, 381674, 376941, 376679, 376199, 381103, 376945);
UPDATE `gameobject_template` SET `name`='Runeblade', `VerifiedBuild`=46879 WHERE `entry`=236268; -- Lame runique
UPDATE `gameobject_template` SET `name`='Fishing Rod', `VerifiedBuild`=46879 WHERE `entry`=233158; -- B
UPDATE `gameobject_template` SET `displayId`=0, `Data3`=0, `Data6`=0, `VerifiedBuild`=46879 WHERE `entry`=194999; -- Cooking Fire
UPDATE `gameobject_template` SET `ContentTuningId`=332, `VerifiedBuild`=46879 WHERE `entry`=268888; -- Fishing Bobber

DELETE FROM `gameobject_questitem` WHERE (`Idx`=0 AND `GameObjectEntry` IN (379040,379037,381617,376943,376946,376944));
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(379040, 0, 198345, 46879), -- Glass Bead
(379037, 0, 198343, 46879), -- Soft Ruby Feather
(381617, 0, 200129, 46879), -- Kolgar's Pack
(376943, 0, 192754, 46879), -- Dracuixote
(376946, 0, 192757, 46879), -- Pride and Protodrakes
(376944, 0, 192755, 46879); -- The Lord of the Wings

UPDATE `gameobject_questitem` SET `VerifiedBuild`=46879 WHERE (`Idx`=0 AND `GameObjectEntry` IN (376942,376941,376945));

DELETE FROM `page_text` WHERE `ID`=8575;
INSERT INTO `page_text` (`ID`, `Text`, `NextPageID`, `PlayerConditionID`, `Flags`, `VerifiedBuild`) VALUES
(8575, '<The ancient stone senses your presence. Very slowly, it begins to emit a beautiful luminescence which lasts for a fleeting moment before fading.\n\nPerhaps it is waiting for something.>', 0, 0, 0, 46879); -- 8575


