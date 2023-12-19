UPDATE `creature_model_info` SET `DisplayID_Other_Gender`='0' WHERE  `DisplayID` IN (101311, 100416, 101962);

DELETE FROM `areatrigger_template` WHERE (`IsServerSide`=0 AND `Id` IN (6197,19538,26204,24455,25284,8352,23463,25719,23471,24212,5070,22573,23826));
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(6197, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 45114),
(19538, 0, 1, 0, 4, 4, 7.5, 4, 4, 7.5, 0, 0, 45114),
(26204, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 45114),
(24455, 0, 0, 16, 3, 3, 0, 0, 0, 0, 0, 0, 45114),
(25284, 0, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 45114),
(8352, 0, 0, 0, 8, 8, 0, 0, 0, 0, 0, 0, 45114),
(23463, 0, 0, 4, 5, 5, 0, 0, 0, 0, 0, 0, 45114),
(25719, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 45114),
(23471, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 45114),
(24212, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 45114),
(5070, 0, 0, 0, 6.5, 6.5, 0, 0, 0, 0, 0, 0, 45114),
(22573, 0, 0, 0, 2.5, 2.5, 0, 0, 0, 0, 0, 0, 45114),
(23826, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 45114);


DELETE FROM `scene_template` WHERE `SceneId` IN (2569, 2570, 2588, 2587, 2581, 2557, 2558);
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`, `Encrypted`) VALUES
(2569, 16, 3005, 0),
(2570, 16, 3006, 0),
(2588, 16, 3031, 0),
(2587, 16, 3030, 0),
(2581, 17, 3027, 0),
(2557, 16, 2996, 0),
(2558, 16, 2997, 0);


DELETE FROM `quest_offer_reward` WHERE `ID` IN (62391 /*62391*/, 61761 /*61761*/, 61760 /*61760*/, 61759 /*61759*/, 61758 /*61758*/, 61757 /*61757*/, 61756 /*61756*/, 61755 /*61755*/, 61754 /*61754*/, 61753 /*61753*/, 61752 /*61752*/, 61750 /*61750*/, 62320 /*62320*/, 61751 /*61751*/, 61749 /*61749*/, 62317 /*62317*/, 61748 /*61748*/, 61747 /*61747*/, 61746 /*61746*/, 61745 /*61745*/, 62297 /*62297*/, 61744 /*61744*/, 61743 /*61743*/, 61742 /*61742*/, 61740 /*61740*/, 62414 /*62414*/, 61741 /*61741*/, 61739 /*61739*/, 62388 /*62388*/, 58624 /*58624*/, 58608 /*58608*/, 58472 /*58472*/, 58599 /*58599*/, 58523 /*58523*/, 58504 /*58504*/, 62161 /*62161*/, 57636 /*57636*/, 57475 /*57475*/, 57473 /*57473*/, 57530 /*57530*/, 57470 /*57470*/, 60067 /*60067*/, 60098 /*60098*/, 61246 /*61246*/, 60044 /*60044*/, 61567 /*61567*/, 60114 /*60114*/, 60050 /*60050*/, 61412 /*61412*/, 60510 /*60510*/, 61180 /*61180*/, 61396 /*61396*/, 60043 /*60043*/, 59916 /*59916*/, 59910 /*59910*/, 61145 /*61145*/, 61586 /*61586*/, 59894 /*59894*/, 59922 /*59922*/, 59921 /*59921*/, 59748 /*59748*/, 59709 /*59709*/, 59700 /*59700*/, 59698 /*59698*/, 59659 /*59659*/, 59678 /*59678*/, 59653 /*59653*/, 59648 /*59648*/, 59645 /*59645*/, 59650 /*59650*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(62391, 0, 0, 0, 0, 0, 0, 0, 0, 'Our forces stand ready.\n\nLet us end this.', 45114), -- 62391
(61761, 6, 5, 0, 0, 0, 0, 0, 0, 'The margrave has been captured? So Kel\'Thuzad has seized control of the house!\n\nThis changes things.', 45114), -- 61761
(61760, 0, 0, 0, 0, 0, 0, 0, 0, 'I didn\'t think we would make it out of that encounter intact.\n\nYou are truly a skilled $c, $n.', 45114), -- 61760
(61759, 1, 0, 0, 0, 0, 0, 0, 0, 'We have no time to lose!', 45114), -- 61759
(61758, 0, 0, 0, 0, 0, 0, 0, 0, 'You are more resourceful than I thought, $c!\n\nJust a quick incantation, and we\'re on our way to freedom!', 45114), -- 61758
(61757, 0, 0, 0, 0, 0, 0, 0, 0, '<Balmedar\'s voice comes from the adjacent cell.>\n\nThat did not go as planned.\n\nWe need to find a way out of here. The margrave must be warned!', 45114), -- 61757
(61756, 1, 0, 0, 0, 0, 0, 0, 0, 'I see you managed to procure the reagents from Jor\'dan, and... wait, what\'s this?\n\nI am impressed that you managed to procure the shipment from the brokers when my sorcerers could not!  \n\nYou are quite the resourceful one, acolyte!', 45114), -- 61756
(61755, 1, 0, 0, 0, 0, 0, 0, 0, 'The guards have been dealt with? Good.\n\nWe have more pressing matters, now.', 45114), -- 61755
(61754, 1, 0, 0, 0, 0, 0, 0, 0, 'The runes on this blade... they are a hallmark of domination magic!\n\nThis is not good, $c.', 45114), -- 61754
(61753, 0, 0, 0, 0, 0, 0, 0, 0, 'Well done.\n\nNow we must work quickly, before we are discovered.', 45114), -- 61753
(61752, 1, 0, 0, 0, 0, 0, 0, 0, 'Let me hold onto these for now.\n\nI will need you to get your hands on that shipment!', 45114), -- 61752
(61750, 1, 0, 0, 0, 0, 0, 0, 0, 'This specimen should work nicely for the baron\'s ritual.\n\nI will add it to his parcel.', 45114), -- 61750
(62320, 1, 0, 0, 0, 0, 0, 0, 0, 'It brings me great relief that your pallid vestments will no longer offend my vision.\n\nDo try keep them in better repair henceforth.', 45114), -- 62320
(61751, 1, 0, 0, 0, 0, 0, 0, 0, 'This should do.\n\nI will assemble the reagents together to return to your master posthaste.', 45114), -- 61751
(61749, 1, 0, 0, 0, 0, 0, 0, 0, 'You are Kel\'Thuzad\'s acolyte, are you not?', 45114), -- 61749
(62317, 0, 0, 0, 0, 0, 0, 0, 0, '<Sorcerer Vutral has been silenced, and with him the suspicions of your ruse.>', 45114), -- 62317
(61748, 1, 0, 0, 0, 0, 0, 0, 0, 'Ah yes, these will do.\n\nIt will take some time to study these tomes. In the meantime, I have more need of you.', 45114), -- 61748
(61747, 1, 0, 0, 0, 0, 0, 0, 0, 'Much better!\n\nI simply cannot abide a disorganized Grimoirium.', 45114), -- 61747
(61746, 1, 0, 0, 0, 0, 0, 0, 0, 'Wonderful. Kel\'Thuzad\'s pets are nothing if not reliable.\n\nWe are done here.', 45114), -- 61746
(61745, 1, 0, 0, 0, 0, 0, 0, 0, 'Kel\'Thuzad always seems to have the most studious of pets, doesn\'t he?\n\nWhat is it the baron wishes of me, acolyte?', 45114), -- 61745
(62297, 1, 0, 0, 0, 0, 0, 0, 0, 'Well done, acolyte. The rest should dissipate with time.\n\nTake this, it was left behind by the feckless adept that created this mess. I hope you will put it to better use.', 45114), -- 62297
(61744, 1, 0, 0, 0, 0, 0, 0, 0, 'There are but a few tasks remaining before we can complete our ritual.\n\nYou must begin immediately.', 45114), -- 61744
(61743, 1, 0, 0, 0, 0, 0, 0, 0, 'Ah, you\'ve returned. I take it the ritual went well?\n\nCome, we have much to accomplish.', 45114), -- 61743
(61742, 1, 0, 0, 0, 0, 0, 0, 0, 'An impressive resemblance. You may just be able to pull this off.\n\nWell, what are you waiting for?', 45114), -- 61742
(61740, 0, 0, 0, 0, 0, 0, 0, 0, 'I must say it was satisfying watching you wipe the smug look off of Nelesis\'s face. She always thought she was so superior.\n\nBut enough revelry. We have work to do.', 45114), -- 61740
(62414, 0, 0, 0, 0, 0, 0, 0, 0, 'You left none behind to raise alarm? Good.\n\nWe can proceed with the plan.', 45114), -- 62414
(61741, 0, 0, 0, 0, 0, 0, 0, 0, 'This should be sufficient.\n\nLet us prepare for the ritual.', 45114), -- 61741
(61739, 0, 0, 0, 0, 0, 0, 0, 0, '<Balmedar\'s voice resonates from the floating eye.>\n\nYou didn\'t really think I would risk meeting you here in person, did you?\n\nCome, we have much work to do.', 45114), -- 61739
(62388, 0, 0, 0, 0, 0, 0, 0, 0, 'It seems we may have our way into the House of Rituals.\n\nDo not mistake this lich for an ally. He pursues only his own agenda. But for now, our goals align... and we can use that to our advantage.', 45114), -- 62388
(58624, 0, 0, 0, 0, 0, 0, 0, 0, 'The battle has only just begun.', 45114), -- 58624
(58608, 0, 0, 0, 0, 0, 0, 0, 0, 'The Banished One... The Pauldrons of Imperium...\n\nThis lich, Kel\'Thuzad, meddles with powerful forces.', 45114), -- 58608
(58472, 0, 0, 0, 0, 0, 0, 0, 0, 'Let this prove our sense of honor.', 45114), -- 58472
(58599, 0, 0, 0, 0, 0, 0, 0, 0, 'Well done.', 45114), -- 58599
(58523, 0, 0, 0, 0, 0, 0, 0, 0, 'We have arrived. Let us not dally.', 45114), -- 58523
(58504, 0, 0, 0, 0, 0, 0, 0, 0, 'The pleasure is mine.', 45114), -- 58504
(62161, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'re just in time. I\'ve received a missive.', 45114), -- 62161
(57636, 0, 0, 0, 0, 0, 0, 0, 0, 'We must find the source of Gharmal\'s stockpiled anima. But for now, let us enjoy our victory.', 45114), -- 57636
(57475, 0, 0, 0, 0, 0, 0, 0, 0, 'I\'ll send scouts to continue the search, but this... this is a huge boon for us.', 45114), -- 57475
(57473, 0, 0, 0, 0, 0, 0, 0, 0, 'The Mantle of the Primus... \n\nFate favors us today.', 45114), -- 57473
(57530, 0, 0, 0, 0, 0, 0, 0, 0, 'That is definitely something. Let\'s open it and find out.', 45114), -- 57530
(57470, 0, 0, 0, 0, 0, 0, 0, 0, 'Gharmal\'s gluttony knew no bounds.', 45114), -- 57470
(60067, 669, 0, 0, 0, 0, 0, 0, 0, 'Our fallen finally know justice.', 45114), -- 60067
(60098, 0, 0, 0, 0, 0, 0, 0, 0, 'It is time.', 45114), -- 60098
(61246, 669, 0, 0, 0, 0, 0, 0, 0, 'Such power! Gharmal will have no choice but to face us now.', 45114), -- 61246
(60044, 669, 0, 0, 0, 0, 0, 0, 0, 'This may not work... but it may also be our only chance at victory.', 45114), -- 60044
(61567, 669, 0, 0, 0, 0, 0, 0, 0, 'Gharmal\'s influence runs deep in this place, but it will fade more quickly thanks to your efforts.', 45114), -- 61567
(60114, 1, 0, 0, 0, 0, 0, 0, 0, 'I could hear their cries from here. Nice work!', 45114), -- 60114
(60050, 669, 0, 0, 0, 0, 0, 0, 0, 'I am glad Kynthia found you so quickly.', 45114), -- 60050
(61412, 669, 0, 0, 0, 0, 0, 0, 0, 'Every abomination denied is one less foe to contend with when we face Gharmal.', 45114), -- 61412
(60510, 669, 0, 0, 0, 0, 0, 0, 0, 'May our victory bring them peace.', 45114), -- 60510
(61180, 669, 0, 0, 0, 0, 0, 0, 0, 'Well done. I will see that these are destroyed personally.', 45114), -- 61180
(61396, 669, 0, 0, 0, 0, 0, 0, 0, 'Allow me to read this for a moment.', 45114), -- 61396
(60043, 0, 0, 0, 0, 0, 0, 0, 0, 'You have done a great service here.', 45114), -- 60043
(59916, -1, 0, 0, 0, 0, 0, 0, 0, 'This bloodshed will not bring them back... but it may spare others from the same fate.', 45114), -- 59916
(59910, 669, 0, 0, 0, 0, 0, 0, 0, 'This place is mired with atrocities. They must be purged.', 45114), -- 59910
(61145, 669, 0, 0, 0, 0, 0, 0, 0, 'Victory will be ours.', 45114), -- 61145
(61586, 0, 0, 0, 0, 0, 0, 0, 0, 'Well done, Maw Walker. Our forces are prepared to strike.', 45114), -- 61586
(59894, 0, 0, 0, 0, 0, 0, 0, 0, 'An alliance is secured. Now we plan the attack.', 45114), -- 59894
(59922, 1, 0, 0, 0, 0, 0, 0, 0, 'So we have proven our honor... and gained a new ally.', 45114), -- 59922
(59921, 1, 0, 0, 0, 0, 0, 0, 0, 'Did this venture enlighten you?', 45114), -- 59921
(59748, 1, 0, 0, 0, 0, 0, 0, 0, 'Come. There is much to show you.', 45114), -- 59748
(59709, 0, 0, 0, 0, 0, 0, 0, 0, 'May our paths cross again.', 45114), -- 59709
(59700, 0, 0, 0, 0, 0, 0, 0, 0, 'May her memory fade from this place.', 45114), -- 59700
(59698, 0, 0, 0, 0, 0, 0, 0, 0, 'For Courage!', 45114), -- 59698
(59659, 0, 0, 0, 0, 0, 0, 0, 0, 'Now we are ready.', 45114), -- 59659
(59678, 66, 0, 0, 0, 0, 0, 0, 0, 'No longer can they sustain themselves. Good work.', 45114), -- 59678
(59653, 0, 0, 0, 0, 0, 0, 0, 0, 'This is as close as I can take you. Make it count.', 45114), -- 59653
(59648, 0, 0, 0, 0, 0, 0, 0, 0, 'We have only just begun.', 45114), -- 59648
(59645, 0, 0, 0, 0, 0, 0, 0, 0, 'Our will is done.', 45114), -- 59645
(59650, 1, 0, 0, 0, 0, 0, 0, 0, 'This will begin to set things right.', 45114); -- 59650


DELETE FROM `quest_poi` WHERE (`QuestID`=58833 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58833 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62391 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62391 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61761 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61761 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61760 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61760 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61760 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61759 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=61759 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61759 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61759 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61758 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=61758 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=61758 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=61758 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61758 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61758 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61757 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=61757 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=61757 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=61757 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=61757 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=61757 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61757 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61756 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61756 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=61756 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61755 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61755 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61755 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61754 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=61754 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61754 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61754 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61753 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=61753 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61753 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61753 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61752 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61752 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62320 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62320 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62320 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61751 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61751 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61751 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61750 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61750 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61750 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61539 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61539 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62317 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62317 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61749 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=61749 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61749 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61748 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=61748 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=61748 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=61748 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=61748 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61748 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=61748 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61747 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=61747 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61747 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61747 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61746 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61746 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61746 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62297 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62297 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62297 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61745 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=61745 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61745 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61744 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=61744 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=61744 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61744 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=61744 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61743 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61743 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=61743 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61742 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61742 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61742 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62414 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62414 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62414 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61741 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61741 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61741 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61740 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=61740 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61740 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61740 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61739 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61739 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61739 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62388 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62388 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=58624 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=58624 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=58624 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58624 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=58608 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=58608 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=58608 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58608 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=64963 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=58599 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=58599 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=58599 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=58599 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58599 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=58472 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=58472 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=58472 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=58472 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58472 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=58523 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=58523 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=58523 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58523 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60657 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60657 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=60657 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=58504 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=58504 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58504 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62161 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=62161 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62161 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=62161 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=57636 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=57636 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=57636 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=57636 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=57636 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=57636 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=57475 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=57475 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=57475 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=57473 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=57473 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=57473 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=57530 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=57530 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=57470 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=57470 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=57470 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60067 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=60067 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60067 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60067 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60098 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60098 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61246 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=61246 AND `BlobIndex`=4 AND `Idx1`=6) OR (`QuestID`=61246 AND `BlobIndex`=3 AND `Idx1`=5) OR (`QuestID`=61246 AND `BlobIndex`=2 AND `Idx1`=4) OR (`QuestID`=61246 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=61246 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61246 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61246 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60114 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=60114 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=60114 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60114 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60114 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61567 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=61567 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=61567 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61567 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61567 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60044 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60044 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60044 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60050 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60050 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60050 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61412 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61412 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61412 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60510 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60510 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60510 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61180 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61180 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61180 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61396 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61396 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59916 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59916 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59916 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60043 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60043 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60043 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59910 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59910 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=59910 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59910 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61145 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61145 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61145 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=61586 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61586 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59894 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59894 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59894 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59894 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59922 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59922 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=59922 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59921 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=59921 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59921 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59921 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59921 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59921 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59748 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59748 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59748 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59748 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60929 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=60929 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60929 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=60929 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59709 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59709 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59709 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59700 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59700 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59700 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59700 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59698 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59698 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59698 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=59698 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59698 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59678 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59659 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59659 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59659 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59659 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59659 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59653 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59653 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59653 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59645 AND `BlobIndex`=2 AND `Idx1`=3) OR (`QuestID`=59645 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=59645 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59645 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59650 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=59650 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59650 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=59650 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59650 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59650 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59648 AND `BlobIndex`=1 AND `Idx1`=6) OR (`QuestID`=59648 AND `BlobIndex`=0 AND `Idx1`=5) OR (`QuestID`=59648 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=59648 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=59648 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59648 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59648 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=63576 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=63576 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63576 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50600 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60502 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=60502 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=60502 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60502 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60184 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=60184 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=58665 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58665 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50601 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=50599 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49929 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(58833, 0, 1, 32, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 1874043, 0, 45114), -- 58833
(58833, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2021720, 0, 45114), -- 58833
(62391, 0, 1, 32, 0, 0, 2222, 1698, 0, 0, 0, 0, 0, 1874043, 0, 45114), -- 62391
(62391, 0, 0, -1, 0, 0, 2222, 1698, 0, 0, 0, 0, 0, 1874043, 0, 45114), -- 62391
(61761, 0, 1, 32, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 45114), -- 61761
(61761, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1874043, 0, 45114), -- 61761
(61760, 0, 2, 32, 0, 0, 2222, 1652, 0, 0, 0, 0, 0, 2018852, 0, 45114), -- 61760
(61760, 0, 1, 1, 407541, 173832, 2222, 1536, 0, 0, 0, 0, 0, 2019642, 0, 45114), -- 61760
(61760, 0, 0, 0, 407540, 172923, 2222, 1536, 0, 0, 0, 0, 0, 2019678, 0, 45114), -- 61760
(61759, 0, 3, 32, 0, 0, 2222, 1652, 0, 0, 0, 0, 0, 2018852, 0, 45114), -- 61759
(61759, 0, 2, 1, 407531, 357170, 2222, 1536, 0, 0, 0, 0, 0, 2013814, 0, 45114), -- 61759
(61759, 0, 1, 0, 407530, 173809, 2222, 1652, 0, 0, 0, 0, 0, 2019065, 0, 45114), -- 61759
(61759, 0, 0, -1, 0, 0, 2222, 1652, 0, 0, 0, 0, 0, 2018852, 0, 45114), -- 61759
(61758, 0, 5, 32, 0, 0, 2222, 1652, 0, 0, 0, 0, 0, 2018852, 0, 45114), -- 61758
(61758, 0, 4, 3, 407526, 357831, 2222, 1652, 0, 0, 0, 0, 0, 2018875, 0, 45114), -- 61758
(61758, 0, 3, 2, 407525, 357832, 2222, 1652, 0, 0, 0, 0, 0, 2018881, 0, 45114), -- 61758
(61758, 0, 2, 1, 407524, 357833, 2222, 1652, 0, 0, 0, 0, 0, 2018941, 0, 45114), -- 61758
(61758, 0, 1, 0, 407523, 357834, 2222, 1652, 0, 0, 0, 0, 0, 2018954, 0, 45114), -- 61758
(61758, 0, 0, -1, 0, 0, 2222, 1652, 0, 0, 0, 0, 0, 2018852, 0, 45114), -- 61758
(61757, 1, 6, 32, 0, 0, 2222, 1652, 0, 0, 0, 85983, 0, 2016254, 0, 45114), -- 61757
(61757, 0, 5, 32, 0, 0, 2222, 1536, 0, 2, 0, 85982, 0, 0, 0, 45114), -- 61757
(61757, 0, 4, 3, 407515, 172923, 2222, 1536, 0, 0, 0, 0, 0, 2019678, 0, 45114), -- 61757
(61757, 0, 3, 1, 407511, 357757, 2222, 1652, 0, 0, 0, 0, 0, 2018285, 0, 45114), -- 61757
(61757, 1, 2, 0, 407510, 357168, 2222, 1536, 0, 0, 0, 0, 0, 2018190, 0, 45114), -- 61757
(61757, 0, 1, 0, 407510, 357168, 2222, 1652, 0, 0, 0, 0, 0, 2018191, 0, 45114), -- 61757
(61757, 0, 0, -1, 0, 0, 2222, 1652, 0, 0, 0, 0, 0, 2018852, 0, 45114), -- 61757
(61756, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015746, 0, 45114), -- 61756
(61756, 1, 1, -1, 0, 0, 2222, 1652, 0, 0, 0, 85983, 0, 2016254, 0, 45114), -- 61756
(61756, 0, 0, -1, 0, 0, 2222, 1536, 0, 2, 0, 85982, 0, 0, 0, 45114), -- 61756
(61755, 0, 2, 32, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 45114), -- 61755
(61755, 0, 1, 0, 407335, 173652, 2222, 1536, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61755
(61755, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015746, 0, 45114), -- 61755
(61754, 0, 3, 32, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 45114), -- 61754
(61754, 0, 2, 26, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61754
(61754, 0, 1, 1, 407337, 182734, 2222, 1536, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61754
(61754, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015746, 0, 45114), -- 61754
(61753, 0, 3, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015746, 0, 45114), -- 61753
(61753, 0, 2, 1, 407352, 173693, 2222, 1536, 0, 0, 0, 0, 0, 2017782, 0, 45114), -- 61753
(61753, 0, 1, 0, 407351, 357686, 2222, 1536, 0, 0, 0, 0, 0, 2017720, 0, 45114), -- 61753
(61753, 0, 0, -1, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 45114), -- 61753
(61752, 0, 1, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2017210, 0, 45114), -- 61752
(61752, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015746, 0, 45114), -- 61752
(62320, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2021272, 0, 45114), -- 62320
(62320, 0, 1, 0, 407645, 183400, 2222, 1536, 0, 0, 0, 0, 0, 0, 0, 45114), -- 62320
(62320, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2021272, 0, 45114), -- 62320
(61751, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2017210, 0, 45114), -- 61751
(61751, 0, 1, 0, 407310, 182678, 2222, 1536, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61751
(61751, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2017210, 0, 45114), -- 61751
(61750, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2017210, 0, 45114), -- 61750
(61750, 0, 1, 0, 407309, 182676, 2222, 1536, 0, 0, 0, 0, 0, 2017073, 0, 45114), -- 61750
(61750, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2017210, 0, 45114), -- 61750
(61539, 0, 1, 32, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 45114), -- 61539
(61539, 0, 0, 31, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 45114), -- 61539
(62317, 0, 1, 32, 0, 0, 2222, 1652, 0, 0, 0, 0, 0, 2021143, 0, 45114), -- 62317
(62317, 0, 0, 0, 407644, 174031, 2222, 1652, 0, 0, 0, 0, 0, 2021119, 0, 45114), -- 62317
(61749, 1, 2, 32, 0, 0, 2222, 1652, 0, 0, 0, 85983, 0, 2016254, 0, 45114), -- 61749
(61749, 0, 1, 32, 0, 0, 2222, 1536, 0, 2, 0, 85982, 0, 0, 0, 45114), -- 61749
(61749, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2017210, 0, 45114), -- 61749
(61748, 0, 6, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015747, 0, 45114), -- 61748
(61748, 0, 5, 3, 407278, 182645, 2222, 1536, 0, 0, 0, 0, 0, 2016937, 0, 45114), -- 61748
(61748, 0, 4, 2, 407277, 182644, 2222, 1536, 0, 0, 0, 0, 0, 2016936, 0, 45114), -- 61748
(61748, 0, 3, 1, 407276, 182643, 2222, 1536, 0, 0, 0, 0, 0, 2016935, 0, 45114), -- 61748
(61748, 0, 2, 0, 407275, 182642, 2222, 1536, 0, 0, 0, 0, 0, 2016934, 0, 45114), -- 61748
(61748, 1, 1, -1, 0, 0, 2222, 1652, 0, 0, 0, 85983, 0, 2016254, 0, 45114), -- 61748
(61748, 0, 0, -1, 0, 0, 2222, 1536, 0, 2, 0, 85982, 0, 0, 0, 45114), -- 61748
(61747, 0, 3, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015747, 0, 45114), -- 61747
(61747, 0, 2, 3, 407161, 173564, 2222, 1536, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61747
(61747, 0, 1, 2, 407160, 173563, 2222, 1536, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61747
(61747, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015747, 0, 45114), -- 61747
(61746, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015747, 0, 45114), -- 61746
(61746, 0, 1, 0, 407131, 182609, 2222, 1536, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61746
(61746, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015747, 0, 45114), -- 61746
(62297, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2009662, 0, 45114), -- 62297
(62297, 0, 1, 0, 407640, 172606, 2222, 1536, 0, 0, 0, 0, 0, 0, 0, 45114), -- 62297
(62297, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2009662, 0, 45114), -- 62297
(61745, 1, 2, 32, 0, 0, 2222, 1652, 0, 0, 0, 85983, 0, 2016254, 0, 45114), -- 61745
(61745, 0, 1, 32, 0, 0, 2222, 1536, 0, 2, 0, 85982, 0, 0, 0, 45114), -- 61745
(61745, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015747, 0, 45114), -- 61745
(61744, 1, 4, 32, 0, 0, 2222, 1652, 0, 0, 0, 85983, 0, 2015833, 0, 45114), -- 61744
(61744, 0, 3, 32, 0, 0, 2222, 1536, 0, 2, 0, 85982, 0, 0, 0, 45114), -- 61744
(61744, 0, 2, 0, 407079, 172923, 2222, 1536, 0, 2, 0, 0, 0, 2019678, 0, 45114), -- 61744
(61744, 1, 1, -1, 0, 0, 2222, 1652, 0, 0, 0, 85983, 0, 2016254, 0, 45114), -- 61744
(61744, 0, 0, -1, 0, 0, 2222, 1536, 0, 2, 0, 85982, 0, 0, 0, 45114), -- 61744
(61743, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015746, 0, 45114), -- 61743
(61743, 1, 1, -1, 0, 0, 2222, 1652, 0, 0, 0, 85983, 0, 2015833, 0, 45114), -- 61743
(61743, 0, 0, -1, 0, 0, 2222, 1536, 0, 2, 0, 85982, 0, 0, 0, 45114), -- 61743
(61742, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015164, 0, 45114), -- 61742
(61742, 0, 1, 0, 407068, 173435, 2222, 1536, 0, 0, 0, 0, 0, 2015311, 0, 45114), -- 61742
(61742, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015746, 0, 45114), -- 61742
(62414, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015164, 0, 45114), -- 62414
(62414, 0, 1, 0, 407728, 172627, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 45114), -- 62414
(62414, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015164, 0, 45114), -- 62414
(61741, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015164, 0, 45114), -- 61741
(61741, 0, 1, 31, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 45114), -- 61741
(61741, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015164, 0, 45114), -- 61741
(61740, 0, 3, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015164, 0, 45114), -- 61740
(61740, 0, 2, 1, 407043, 173436, 2222, 1536, 0, 0, 0, 0, 0, 2015271, 0, 45114), -- 61740
(61740, 0, 1, 0, 407042, 173433, 2222, 1536, 0, 0, 0, 0, 0, 2015249, 0, 45114), -- 61740
(61740, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015164, 0, 45114), -- 61740
(61739, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2022800, 0, 45114), -- 61739
(61739, 0, 1, 0, 406889, 357426, 2222, 1536, 0, 0, 0, 0, 0, 2015163, 0, 45114), -- 61739
(61739, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2015164, 0, 45114), -- 61739
(62388, 0, 1, 32, 0, 0, 2222, 1698, 0, 0, 0, 0, 0, 1874043, 0, 45114), -- 62388
(62388, 0, 0, -1, 0, 0, 2222, 1698, 0, 0, 0, 0, 0, 1874043, 0, 45114), -- 62388
(58624, 0, 3, 32, 0, 0, 2222, 1525, 0, 0, 0, 0, 0, 1869983, 0, 45114), -- 58624
(58624, 1, 2, 0, 407080, 173513, 2222, 1536, 0, 0, 0, 0, 0, 1874043, 0, 45114), -- 58624
(58624, 0, 1, 0, 407080, 173513, 2222, 1698, 0, 2, 0, 0, 0, 0, 0, 45114), -- 58624
(58624, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1874043, 0, 45114), -- 58624
(58608, 0, 3, 32, 0, 0, 2222, 1525, 0, 2, 0, 0, 0, 0, 0, 45114), -- 58608
(58608, 0, 2, 1, 406870, 182386, 2222, 1525, 0, 0, 0, 0, 0, 1869635, 0, 45114), -- 58608
(58608, 0, 1, 0, 394468, 161770, 2222, 1525, 0, 0, 0, 0, 0, 1869636, 0, 45114), -- 58608
(58608, 0, 0, -1, 0, 0, 2222, 1525, 0, 2, 0, 0, 0, 0, 0, 45114), -- 58608
(64963, 0, 0, -1, 0, 0, 2222, 1961, 0, 2, 0, 0, 0, 0, 0, 45114), -- 64963
(58599, 0, 4, 32, 0, 0, 2222, 1525, 0, 2, 0, 0, 0, 0, 0, 45114), -- 58599
(58599, 0, 3, 2, 394450, 161246, 2222, 1525, 0, 0, 0, 0, 0, 1867555, 0, 45114), -- 58599
(58599, 0, 2, 1, 394449, 161248, 2222, 1525, 0, 0, 0, 0, 0, 1867557, 0, 45114), -- 58599
(58599, 0, 1, 0, 394448, 161257, 2222, 1525, 0, 0, 0, 0, 0, 1867581, 0, 45114), -- 58599
(58599, 0, 0, -1, 0, 0, 2222, 1525, 0, 2, 0, 0, 0, 0, 0, 45114), -- 58599
(58472, 0, 4, 5, 394322, 161275, 2222, 1525, 0, 0, 0, 0, 0, 0, 1, 45114), -- 58472
(58472, 0, 3, 4, 394321, 339789, 2222, 1525, 0, 0, 0, 0, 0, 0, 1, 45114), -- 58472
(58472, 0, 2, 2, 394320, 161583, 2222, 1525, 0, 0, 0, 0, 0, 0, 1, 45114), -- 58472
(58472, 0, 1, 1, 394323, 161582, 2222, 1525, 0, 0, 0, 0, 0, 0, 1, 45114), -- 58472
(58472, 0, 0, -1, 0, 0, 2222, 1525, 0, 2, 0, 0, 0, 0, 0, 45114), -- 58472
(58523, 0, 3, 32, 0, 0, 2222, 1525, 0, 2, 0, 0, 0, 1870098, 0, 45114), -- 58523
(58523, 0, 2, 1, 394443, 163317, 2222, 1525, 0, 0, 0, 0, 0, 1870099, 0, 45114), -- 58523
(58523, 0, 1, 0, 395262, 163231, 2222, 1525, 0, 0, 0, 0, 0, 1870098, 0, 45114), -- 58523
(58523, 0, 0, -1, 0, 0, 2222, 1525, 0, 0, 0, 0, 0, 1870099, 0, 45114), -- 58523
(60657, 0, 2, 32, 0, 0, 2222, 1525, 0, 2, 0, 0, 0, 0, 0, 45114), -- 60657
(60657, 1, 1, 0, 405171, 171177, 2222, 1525, 0, 0, 0, 82007, 0, 1992646, 0, 45114), -- 60657
(60657, 0, 0, 0, 405171, 171177, 2222, 1525, 0, 2, 0, 82077, 0, 0, 0, 45114), -- 60657
(58504, 1, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1856606, 0, 45114), -- 58504
(58504, 0, 1, 32, 0, 0, 2222, 1698, 0, 2, 0, 0, 0, 0, 0, 45114), -- 58504
(58504, 0, 0, -1, 0, 0, 2222, 1525, 0, 0, 0, 0, 0, 1870098, 0, 45114), -- 58504
(62161, 1, 3, 32, 0, 0, 2222, 1698, 0, 2, 0, 0, 0, 0, 0, 45114), -- 62161
(62161, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1874043, 0, 45114), -- 62161
(62161, 1, 1, -1, 0, 0, 2222, 1698, 0, 2, 0, 0, 0, 0, 0, 45114), -- 62161
(62161, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1874043, 0, 45114), -- 62161
(57636, 1, 5, 32, 0, 0, 2222, 1698, 0, 2, 0, 0, 0, 0, 0, 45114), -- 57636
(57636, 0, 4, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1874043, 0, 45114), -- 57636
(57636, 1, 3, 0, 406845, 173584, 2222, 1698, 0, 2, 0, 0, 0, 0, 0, 45114), -- 57636
(57636, 0, 2, 0, 406845, 173584, 2222, 1536, 0, 0, 0, 0, 0, 2017031, 0, 45114), -- 57636
(57636, 1, 1, -1, 0, 0, 2222, 1698, 0, 2, 0, 0, 0, 0, 0, 45114), -- 57636
(57636, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1874043, 0, 45114), -- 57636
(57475, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2014776, 0, 45114), -- 57475
(57475, 1, 1, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1874043, 0, 45114), -- 57475
(57475, 0, 0, -1, 0, 0, 2222, 1698, 0, 2, 0, 0, 0, 0, 0, 45114), -- 57475
(57473, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2014776, 0, 45114), -- 57473
(57473, 0, 1, 0, 406844, 182658, 2222, 1536, 0, 0, 0, 0, 0, 0, 0, 45114), -- 57473
(57473, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2014776, 0, 45114), -- 57473
(57530, 0, 1, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2014766, 0, 45114), -- 57530
(57530, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2014776, 0, 45114), -- 57530
(57470, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2014704, 0, 45114), -- 57470
(57470, 0, 1, 0, 406840, 158083, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 45114), -- 57470
(57470, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2014766, 0, 45114), -- 57470
(60067, 0, 3, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1946777, 0, 45114), -- 60067
(60067, 0, 2, 1, 397759, 167437, 2222, 1536, 0, 0, 0, 0, 0, 2013761, 0, 45114), -- 60067
(60067, 0, 1, 0, 397992, 167816, 2222, 1536, 0, 0, 0, 0, 0, 1946777, 0, 45114), -- 60067
(60067, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2013766, 0, 45114), -- 60067
(60098, 0, 1, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1944498, 0, 45114), -- 60098
(60098, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2003630, 0, 45114), -- 60098
(61246, 0, 7, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1944498, 0, 45114), -- 61246
(61246, 4, 6, 1, 406584, 173088, 2222, 1536, 0, 0, 0, 84349, 0, 1934737, 0, 45114), -- 61246
(61246, 3, 5, 1, 406584, 173088, 2222, 1536, 0, 0, 0, 84349, 0, 1936314, 0, 45114), -- 61246
(61246, 2, 4, 1, 406584, 173088, 2222, 1536, 0, 0, 0, 84349, 0, 1936315, 0, 45114), -- 61246
(61246, 1, 3, 1, 406584, 173088, 2222, 1536, 0, 0, 0, 84349, 0, 1934735, 0, 45114), -- 61246
(61246, 0, 2, 1, 406584, 173088, 2222, 1536, 0, 0, 0, 84344, 0, 1944498, 0, 45114), -- 61246
(61246, 0, 1, 0, 406583, 173071, 2222, 1536, 0, 0, 0, 0, 0, 1944498, 0, 45114), -- 61246
(61246, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1944498, 0, 45114), -- 61246
(60114, 0, 4, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2002005, 0, 45114), -- 60114
(60114, 1, 3, 1, 397681, 171776, 2222, 1536, 0, 2, 0, 89108, 0, 0, 0, 45114), -- 60114
(60114, 0, 2, 1, 397681, 171776, 2222, 1536, 0, 2, 0, 89107, 0, 0, 0, 45114), -- 60114
(60114, 0, 1, 0, 405402, 171782, 2222, 1536, 0, 0, 0, 0, 0, 2002010, 0, 45114), -- 60114
(60114, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2002005, 0, 45114), -- 60114
(61567, 0, 4, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1936675, 0, 45114), -- 61567
(61567, 0, 3, 2, 406581, 356888, 2222, 1536, 0, 0, 0, 0, 0, 2012658, 0, 45114), -- 61567
(61567, 0, 2, 1, 406579, 356887, 2222, 1536, 0, 0, 0, 0, 0, 2012647, 0, 45114), -- 61567
(61567, 0, 1, 0, 406578, 356598, 2222, 1536, 0, 0, 0, 0, 0, 2010784, 0, 45114), -- 61567
(61567, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1936675, 0, 45114), -- 61567
(60044, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1944498, 0, 45114), -- 60044
(60044, 0, 1, 31, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 45114), -- 60044
(60044, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1944498, 0, 45114), -- 60044
(60050, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1961811, 0, 45114), -- 60050
(60050, 0, 1, 0, 397524, 167063, 2222, 1536, 0, 0, 0, 0, 0, 1961811, 0, 45114), -- 60050
(60050, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1944498, 0, 45114), -- 60050
(61412, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1935524, 0, 45114), -- 61412
(61412, 0, 1, 0, 405836, 172218, 2222, 1536, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61412
(61412, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1935524, 0, 45114), -- 61412
(60510, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1935521, 0, 45114), -- 60510
(60510, 0, 1, 0, 398402, 168697, 2222, 1536, 0, 0, 0, 0, 0, 1961149, 0, 45114), -- 60510
(60510, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1935521, 0, 45114), -- 60510
(61180, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1935522, 0, 45114), -- 61180
(61180, 0, 1, 0, 405369, 180845, 2222, 1536, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61180
(61180, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1935522, 0, 45114), -- 61180
(61396, 0, 1, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1999759, 0, 45114), -- 61396
(61396, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1935522, 0, 45114), -- 61396
(59916, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1935524, 0, 45114), -- 59916
(59916, 0, 1, 0, 397213, 166503, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 45114), -- 59916
(59916, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1935524, 0, 45114), -- 59916
(60043, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1935521, 0, 45114), -- 60043
(60043, 0, 1, 0, 397676, 350922, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 45114), -- 60043
(60043, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1935521, 0, 45114), -- 60043
(59910, 0, 3, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1937932, 0, 45114), -- 59910
(59910, 1, 2, 0, 397185, 171552, 2222, 1536, 0, 0, 0, 89412, 0, 1997678, 0, 45114), -- 59910
(59910, 0, 1, 0, 397185, 171552, 2222, 1698, 0, 2, 0, 89410, 0, 0, 0, 45114), -- 59910
(59910, 0, 0, -1, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 1935521, 0, 45114), -- 59910
(61145, 0, 2, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1874043, 0, 45114), -- 61145
(61145, 0, 1, 0, 405266, 171482, 2222, 1536, 0, 0, 0, 0, 0, 1947970, 0, 45114), -- 61145
(61145, 0, 0, -1, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 0, 0, 45114), -- 61145
(61586, 0, 1, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1937932, 0, 45114), -- 61586
(61586, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1874043, 0, 45114), -- 61586
(59894, 0, 3, 32, 0, 0, 2222, 1698, 0, 2, 0, 0, 0, 0, 0, 45114), -- 59894
(59894, 0, 2, 1, 397182, 166648, 2222, 1698, 0, 2, 0, 0, 0, 1937932, 0, 45114), -- 59894
(59894, 0, 1, 0, 397181, 166647, 2222, 1698, 0, 2, 0, 0, 0, 0, 0, 45114), -- 59894
(59894, 0, 0, -1, 0, 0, 2222, 1698, 0, 2, 0, 0, 0, 1937932, 0, 45114), -- 59894
(59922, 0, 2, 32, 0, 0, 2222, 1533, 0, 0, 0, 0, 0, 1940923, 0, 45114), -- 59922
(59922, 1, 1, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1874043, 0, 45114), -- 59922
(59922, 0, 0, -1, 0, 0, 2222, 1698, 0, 2, 0, 0, 0, 0, 0, 45114), -- 59922
(59921, 0, 5, 32, 0, 0, 2222, 1533, 0, 0, 0, 0, 0, 1940923, 0, 45114), -- 59921
(59921, 0, 4, 3, 397228, 166754, 2222, 1533, 0, 0, 0, 0, 0, 1940951, 0, 45114), -- 59921
(59921, 0, 3, 2, 397226, 166749, 2222, 1533, 0, 0, 0, 0, 0, 1940945, 0, 45114), -- 59921
(59921, 0, 2, 1, 397225, 166748, 2222, 1533, 0, 0, 0, 0, 0, 1940944, 0, 45114), -- 59921
(59921, 0, 1, 0, 397224, 166747, 2222, 1533, 0, 0, 0, 0, 0, 1940941, 0, 45114), -- 59921
(59921, 0, 0, -1, 0, 0, 2222, 1533, 0, 0, 0, 0, 0, 1940923, 0, 45114), -- 59921
(59748, 0, 3, 32, 0, 0, 2222, 1533, 0, 0, 0, 0, 0, 1928732, 0, 45114), -- 59748
(59748, 0, 2, 1, 397221, 166745, 2222, 1533, 0, 0, 0, 0, 0, 1940922, 0, 45114), -- 59748
(59748, 0, 1, 0, 396906, 166095, 2222, 1533, 0, 2, 0, 0, 0, 1928731, 0, 45114), -- 59748
(59748, 0, 0, -1, 0, 0, 2222, 1533, 0, 0, 0, 0, 0, 1940923, 0, 45114), -- 59748
(60929, 0, 3, 32, 0, 0, 2222, 1533, 0, 2, 0, 0, 0, 0, 0, 45114), -- 60929
(60929, 0, 2, 1, 405027, 170803, 2222, 1533, 0, 0, 0, 0, 0, 0, 0, 45114), -- 60929
(60929, 1, 1, 0, 405026, 180465, 2222, 1533, 0, 0, 0, 0, 0, 1988859, 0, 45114), -- 60929
(60929, 0, 0, 0, 405026, 180465, 2222, 1533, 0, 0, 0, 0, 0, 1988449, 0, 45114), -- 60929
(59709, 0, 2, 32, 0, 0, 2222, 1533, 0, 0, 0, 0, 0, 1928465, 0, 45114), -- 59709
(59709, 0, 1, 0, 396814, 165791, 2222, 1533, 0, 0, 0, 0, 0, 1928062, 0, 45114), -- 59709
(59709, 0, 0, -1, 0, 0, 2222, 1533, 0, 2, 0, 0, 0, 1928731, 0, 45114), -- 59709
(59700, 0, 3, 32, 0, 0, 2222, 1533, 0, 0, 0, 0, 0, 1927455, 0, 45114), -- 59700
(59700, 0, 2, 1, 396798, 165675, 2222, 1533, 0, 0, 0, 0, 0, 1927500, 0, 45114), -- 59700
(59700, 0, 1, 0, 396799, 165726, 2222, 1533, 0, 0, 0, 0, 0, 1931913, 0, 45114), -- 59700
(59700, 0, 0, -1, 0, 0, 2222, 1533, 0, 2, 0, 0, 0, 1928465, 0, 45114), -- 59700
(59698, 0, 4, 32, 0, 0, 2222, 1533, 0, 0, 0, 0, 0, 1927455, 0, 45114), -- 59698
(59698, 0, 3, 2, 396796, 165694, 2222, 1533, 0, 0, 0, 79089, 0, 0, 1, 45114), -- 59698
(59698, 1, 2, 1, 396795, 165692, 2222, 1533, 0, 0, 0, 79090, 0, 1927834, 1, 45114), -- 59698
(59698, 0, 1, 1, 396795, 165692, 2222, 1533, 0, 0, 0, 79089, 0, 0, 1, 45114), -- 59698
(59698, 0, 0, -1, 0, 0, 2222, 1533, 0, 0, 0, 0, 0, 1927455, 0, 45114), -- 59698
(59678, 0, 0, 0, 396766, 349090, 2222, 1533, 0, 0, 0, 0, 0, 0, 0, 45114), -- 59678
(59659, 0, 4, 32, 0, 0, 2222, 1533, 0, 0, 0, 0, 0, 1926910, 0, 45114), -- 59659
(59659, 0, 3, 2, 396768, 165665, 2222, 1533, 0, 0, 0, 0, 0, 1927003, 0, 45114), -- 59659
(59659, 0, 2, 1, 396767, 165664, 2222, 1533, 0, 0, 0, 0, 0, 1927002, 0, 45114), -- 59659
(59659, 0, 1, 0, 396701, 165636, 2222, 1533, 0, 0, 0, 0, 0, 1926917, 0, 45114), -- 59659
(59659, 0, 0, -1, 0, 0, 2222, 1533, 0, 0, 0, 0, 0, 1927455, 0, 45114), -- 59659
(59653, 0, 2, 32, 0, 0, 2222, 1533, 0, 0, 0, 0, 0, 1930031, 0, 45114); -- 59653

INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(59653, 0, 1, 0, 396677, 165518, 2222, 1533, 0, 0, 0, 0, 0, 1930031, 0, 45114), -- 59653
(59653, 0, 0, -1, 0, 0, 2222, 1533, 0, 0, 0, 0, 0, 1926910, 0, 45114), -- 59653
(59645, 2, 3, 32, 0, 0, 2222, 1533, 0, 0, 0, 0, 0, 1928732, 0, 45114), -- 59645
(59645, 1, 2, 32, 0, 0, 2222, 1533, 0, 0, 0, 0, 0, 1928063, 0, 45114), -- 59645
(59645, 0, 1, 32, 0, 0, 2222, 1533, 0, 0, 0, 0, 0, 1925673, 0, 45114), -- 59645
(59645, 0, 0, 0, 396670, 165502, 2222, 1533, 0, 0, 0, 0, 0, 0, 0, 45114), -- 59645
(59650, 1, 5, 32, 0, 0, 2222, 1533, 0, 0, 0, 86752, 0, 1925641, 0, 45114), -- 59650
(59650, 0, 4, 32, 0, 0, 2222, 1533, 0, 0, 0, 86751, 0, 1930071, 0, 45114), -- 59650
(59650, 0, 3, 2, 396755, 165638, 2222, 1533, 0, 0, 0, 0, 0, 1926956, 0, 45114), -- 59650
(59650, 0, 2, 1, 396754, 348942, 2222, 1533, 0, 0, 0, 0, 0, 1926927, 0, 45114), -- 59650
(59650, 0, 1, 0, 396753, 165637, 2222, 1533, 0, 0, 0, 0, 0, 1926927, 0, 45114), -- 59650
(59650, 0, 0, -1, 0, 0, 2222, 1533, 0, 0, 0, 0, 0, 1930071, 0, 45114), -- 59650
(59648, 1, 6, 32, 0, 0, 2222, 1533, 0, 0, 0, 86752, 0, 1925641, 0, 45114), -- 59648
(59648, 0, 5, 32, 0, 0, 2222, 1533, 0, 0, 0, 86751, 0, 1930071, 0, 45114), -- 59648
(59648, 0, 4, 2, 396704, 166055, 2222, 1533, 0, 0, 0, 0, 0, 1930523, 0, 45114), -- 59648
(59648, 1, 3, 1, 396703, 165601, 2222, 1533, 0, 0, 0, 0, 0, 1926754, 0, 45114), -- 59648
(59648, 0, 2, 1, 396703, 165601, 2222, 1533, 0, 0, 0, 0, 0, 1926755, 0, 45114), -- 59648
(59648, 0, 1, 0, 396674, 165511, 2222, 1533, 0, 0, 0, 0, 0, 1930523, 0, 45114), -- 59648
(59648, 0, 0, -1, 0, 0, 2222, 1533, 0, 2, 0, 0, 0, 1925641, 0, 45114), -- 59648
(63576, 0, 2, 32, 0, 0, 2222, 1670, 0, 2, 0, 0, 0, 0, 0, 45114), -- 63576
(63576, 0, 1, 0, 419996, 177136, 2222, 1670, 0, 0, 0, 0, 0, 2060581, 0, 45114), -- 63576
(63576, 0, 0, -1, 0, 0, 2222, 1670, 0, 0, 0, 0, 0, 2070230, 0, 45114), -- 63576
(50600, 0, 0, -1, 0, 0, 1643, 896, 0, 0, 0, 0, 0, 1484068, 0, 45114), -- 50600
(60502, 0, 3, 32, 0, 0, 2222, 1525, 0, 0, 0, 0, 0, 1932666, 0, 45114), -- 60502
(60502, 0, 2, 1, 398467, 85406, 2284, 1676, 0, 0, 0, 0, 0, 1850788, 0, 45114), -- 60502
(60502, 0, 1, 0, 398466, 166414, 2284, 1676, 0, 0, 0, 0, 0, 1936897, 0, 45114), -- 60502
(60502, 0, 0, -1, 0, 0, 2222, 1525, 0, 3, 0, 0, 0, 1962536, 0, 45114), -- 60502
(60184, 0, 1, 32, 0, 0, 2222, 1698, 0, 0, 0, 0, 0, 1945924, 0, 45114), -- 60184
(60184, 0, 0, -1, 0, 0, 2222, 1698, 0, 0, 0, 0, 0, 1945924, 0, 45114), -- 60184
(58665, 0, 1, 32, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 1876954, 0, 45114), -- 58665
(58665, 0, 0, -1, 0, 0, 2222, 1536, 0, 2, 0, 0, 0, 1877157, 0, 45114), -- 58665
(50601, 0, 0, -1, 0, 0, 1643, 942, 0, 0, 0, 0, 0, 1483914, 0, 45114), -- 50601
(50599, 0, 0, -1, 0, 0, 1643, 895, 0, 0, 0, 0, 0, 1483954, 0, 45114), -- 50599
(49929, 1, 2, 32, 0, 0, 0, 84, 0, 0, 0, 0, 0, 1410010, 0, 45114), -- 49929
(49929, 0, 1, 32, 0, 0, 0, 84, 0, 0, 0, 0, 0, 1410009, 0, 45114), -- 49929
(49929, 0, 0, -1, 0, 0, 0, 84, 0, 0, 0, 0, 0, 1410010, 0, 45114); -- 49929

DELETE FROM `quest_poi_points` WHERE (`QuestID`=58833 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58833 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62391 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62391 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61761 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61761 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61760 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61760 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61760 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61759 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61759 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61759 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61759 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61758 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=61758 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=61758 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61758 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61758 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61758 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61757 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=61757 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=61757 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=61757 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61757 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61757 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61757 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61756 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61756 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61756 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61755 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61755 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=61755 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=61755 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=61755 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=61755 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=61755 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=61755 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=61755 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=61755 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61755 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61754 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61754 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=61754 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=61754 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=61754 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=61754 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=61754 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=61754 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=61754 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61754 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=61754 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=61754 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=61754 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=61754 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=61754 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=61754 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=61754 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61754 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61753 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61753 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61753 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61753 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61752 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61752 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62320 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62320 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=62320 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=62320 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=62320 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=62320 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=62320 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=62320 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=62320 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=62320 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62320 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61751 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61751 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=61751 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=61751 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=61751 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=61751 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=61751 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=61751 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61751 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61750 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61750 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61750 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61539 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61539 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=61539 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=61539 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=61539 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=61539 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=61539 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=61539 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=61539 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=61539 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=61539 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=61539 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=61539 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62317 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62317 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61749 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61749 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61749 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61748 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=61748 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=61748 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=61748 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61748 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61748 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61748 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61747 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61747 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=61747 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=61747 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=61747 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=61747 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=61747 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61747 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=61747 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=61747 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=61747 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=61747 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=61747 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61747 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61746 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61746 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=61746 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=61746 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=61746 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=61746 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=61746 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=61746 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=61746 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61746 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62297 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62297 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=62297 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=62297 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=62297 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=62297 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=62297 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=62297 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=62297 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62297 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61745 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61745 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61745 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61744 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=61744 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61744 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61744 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61744 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61743 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61743 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61743 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61742 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61742 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61742 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62414 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62414 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=62414 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=62414 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=62414 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=62414 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=62414 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=62414 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=62414 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=62414 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=62414 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=62414 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=62414 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62414 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61741 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61741 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=61741 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=61741 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=61741 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=61741 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=61741 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=61741 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=61741 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=61741 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=61741 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=61741 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=61741 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61741 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61740 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61740 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61740 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61740 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61739 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61739 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61739 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62388 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62388 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=58624 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=58624 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=58624 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58624 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=58608 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=58608 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=58608 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58608 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=64963 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=58599 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=58599 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=58599 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=58599 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58599 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=58472 AND `Idx1`=4 AND `Idx2`=10) OR (`QuestID`=58472 AND `Idx1`=4 AND `Idx2`=9) OR (`QuestID`=58472 AND `Idx1`=4 AND `Idx2`=8) OR (`QuestID`=58472 AND `Idx1`=4 AND `Idx2`=7) OR (`QuestID`=58472 AND `Idx1`=4 AND `Idx2`=6) OR (`QuestID`=58472 AND `Idx1`=4 AND `Idx2`=5) OR (`QuestID`=58472 AND `Idx1`=4 AND `Idx2`=4) OR (`QuestID`=58472 AND `Idx1`=4 AND `Idx2`=3) OR (`QuestID`=58472 AND `Idx1`=4 AND `Idx2`=2) OR (`QuestID`=58472 AND `Idx1`=4 AND `Idx2`=1) OR (`QuestID`=58472 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=58472 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=58472 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=58472 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=58472 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=58472 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=58472 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=58472 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=58472 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=58472 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=58472 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=58472 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=58472 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=58472 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=58472 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=58472 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=58472 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=58472 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=58472 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=58472 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=58472 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=58472 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=58472 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=58472 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=58472 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58472 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=58523 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=58523 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=58523 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58523 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60657 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60657 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60657 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=60657 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=60657 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=60657 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=60657 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=60657 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=60657 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=60657 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=60657 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=60657 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=60657 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=60657 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=58504 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=58504 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58504 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=62161 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=62161 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=62161 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62161 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=57636 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=57636 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=57636 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=57636 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=57636 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=57636 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=57475 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=57475 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=57475 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=57473 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=57473 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=57473 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=57473 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=57473 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=57530 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=57530 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=57470 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=57470 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=57470 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60067 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=60067 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60067 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60067 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60098 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60098 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61246 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=61246 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=61246 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=61246 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=61246 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61246 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61246 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61246 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60114 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=60114 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=60114 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=60114 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=60114 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=60114 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=60114 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=60114 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60114 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60114 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61567 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=61567 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61567 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61567 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61567 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60044 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60044 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=60044 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=60044 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=60044 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=60044 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=60044 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=60044 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=60044 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=60044 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=60044 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=60044 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=60044 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60044 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60050 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60050 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60050 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61412 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61412 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=61412 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=61412 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=61412 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=61412 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=61412 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61412 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60510 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60510 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60510 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61180 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61180 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=61180 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=61180 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=61180 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=61180 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=61180 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=61180 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=61180 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=61180 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=61180 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=61180 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61180 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61396 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61396 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59916 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59916 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=59916 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=59916 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=59916 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=59916 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=59916 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=59916 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=59916 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59916 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60043 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60043 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=60043 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=60043 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=60043 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=60043 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60043 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59910 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59910 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59910 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59910 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61145 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61145 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61145 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=61586 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61586 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59894 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59894 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59894 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59894 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59922 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59922 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59922 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59921 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=59921 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=59921 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59921 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59921 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59921 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59748 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59748 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59748 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59748 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60929 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=60929 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=60929 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=60929 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=60929 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=60929 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=60929 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=60929 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60929 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60929 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59709 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59709 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59709 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59700 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59700 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59700 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59700 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59698 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=59698 AND `Idx1`=3 AND `Idx2`=9) OR (`QuestID`=59698 AND `Idx1`=3 AND `Idx2`=8) OR (`QuestID`=59698 AND `Idx1`=3 AND `Idx2`=7) OR (`QuestID`=59698 AND `Idx1`=3 AND `Idx2`=6) OR (`QuestID`=59698 AND `Idx1`=3 AND `Idx2`=5) OR (`QuestID`=59698 AND `Idx1`=3 AND `Idx2`=4) OR (`QuestID`=59698 AND `Idx1`=3 AND `Idx2`=3) OR (`QuestID`=59698 AND `Idx1`=3 AND `Idx2`=2) OR (`QuestID`=59698 AND `Idx1`=3 AND `Idx2`=1) OR (`QuestID`=59698 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59698 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59698 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=59698 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=59698 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=59698 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=59698 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=59698 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=59698 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=59698 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=59698 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=59698 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=59698 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59698 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59678 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=59678 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=59678 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=59678 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=59678 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=59678 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=59678 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59659 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=59659 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59659 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59659 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59659 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59653 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59653 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59653 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59645 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59645 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59645 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59645 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=59645 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=59645 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=59645 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=59645 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=59645 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=59645 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=59645 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=59645 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=59645 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=59645 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=59645 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59650 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=59650 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=59650 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59650 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59650 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59650 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59648 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=59648 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=59648 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=59648 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=59648 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59648 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59648 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=63576 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=63576 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63576 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50600 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60502 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=60502 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=60502 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60502 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60184 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60184 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=58665 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58665 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50601 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=50599 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=49929 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(58833, 1, 0, 1771, -2548, 3392, 45114), -- 58833
(58833, 0, 0, 3093, -3289, 3319, 45114), -- 58833
(62391, 1, 0, 1772, -2548, 3392, 45114), -- 62391
(62391, 0, 0, 1772, -2548, 3392, 45114), -- 62391
(61761, 1, 0, 3793, -3832, 0, 45114), -- 61761
(61761, 0, 0, 1771, -2548, 3392, 45114), -- 61761
(61760, 2, 0, 3618, -3938, 3430, 45114), -- 61760
(61760, 1, 0, 3694, -3790, 3459, 45114), -- 61760
(61760, 0, 0, 3693, -3790, 3459, 45114), -- 61760
(61759, 3, 0, 3618, -3938, 3430, 45114), -- 61759
(61759, 2, 0, 3627, -3942, 3435, 45114), -- 61759
(61759, 1, 0, 3605, -3947, 3430, 45114), -- 61759
(61759, 0, 0, 3618, -3938, 3430, 45114), -- 61759
(61758, 5, 0, 3618, -3938, 3430, 45114), -- 61758
(61758, 4, 0, 3611, -3946, 3433, 45114), -- 61758
(61758, 3, 0, 3597, -3941, 3435, 45114), -- 61758
(61758, 2, 0, 3600, -3948, 3430, 45114), -- 61758
(61758, 1, 0, 3605, -3937, 3430, 45114), -- 61758
(61758, 0, 0, 3618, -3938, 3430, 45114), -- 61758
(61757, 6, 0, 3737, -3896, 3430, 45114), -- 61757
(61757, 5, 0, 3589, -3832, 0, 45114), -- 61757
(61757, 4, 0, 3693, -3790, 3459, 45114), -- 61757
(61757, 3, 0, 3768, -3881, 3436, 45114), -- 61757
(61757, 2, 0, 3757, -3893, 3433, 45114), -- 61757
(61757, 1, 0, 3752, -3882, 3433, 45114), -- 61757
(61757, 0, 0, 3618, -3938, 3430, 45114), -- 61757
(61756, 2, 0, 3467, -3544, 3432, 45114), -- 61756
(61756, 1, 0, 3737, -3896, 3430, 45114), -- 61756
(61756, 0, 0, 3630, -3832, 0, 45114), -- 61756
(61755, 2, 0, 3507, -3027, 0, 45114), -- 61755
(61755, 1, 8, 3513, -3091, 3356, 45114), -- 61755
(61755, 1, 7, 3504, -3083, 3356, 45114), -- 61755
(61755, 1, 6, 3497, -3062, 3356, 45114), -- 61755
(61755, 1, 5, 3497, -3060, 3356, 45114), -- 61755
(61755, 1, 4, 3533, -2967, 3357, 45114), -- 61755
(61755, 1, 3, 3561, -2942, 3356, 45114), -- 61755
(61755, 1, 2, 3563, -2945, 3356, 45114), -- 61755
(61755, 1, 1, 3563, -2987, 3356, 45114), -- 61755
(61755, 1, 0, 3515, -3092, 3356, 45114), -- 61755
(61755, 0, 0, 3467, -3544, 3432, 45114), -- 61755
(61754, 3, 0, 3493, -2999, 0, 45114), -- 61754
(61754, 2, 7, 3495, -3060, 3356, 45114), -- 61754
(61754, 2, 6, 3532, -2966, 3357, 45114), -- 61754
(61754, 2, 5, 3534, -2964, 3357, 45114), -- 61754
(61754, 2, 4, 3560, -2942, 3356, 45114), -- 61754
(61754, 2, 3, 3562, -2940, 3356, 45114), -- 61754
(61754, 2, 2, 3565, -2987, 3356, 45114), -- 61754
(61754, 2, 1, 3513, -3092, 3356, 45114), -- 61754
(61754, 2, 0, 3512, -3093, 3356, 45114), -- 61754
(61754, 1, 7, 3495, -3060, 3356, 45114), -- 61754
(61754, 1, 6, 3532, -2966, 3357, 45114), -- 61754
(61754, 1, 5, 3534, -2964, 3357, 45114), -- 61754
(61754, 1, 4, 3560, -2942, 3356, 45114), -- 61754
(61754, 1, 3, 3562, -2940, 3356, 45114), -- 61754
(61754, 1, 2, 3565, -2987, 3356, 45114), -- 61754
(61754, 1, 1, 3513, -3092, 3356, 45114), -- 61754
(61754, 1, 0, 3512, -3093, 3356, 45114), -- 61754
(61754, 0, 0, 3467, -3544, 3432, 45114), -- 61754
(61753, 3, 0, 3467, -3544, 3432, 45114), -- 61753
(61753, 2, 0, 3505, -3037, 3356, 45114), -- 61753
(61753, 1, 0, 3541, -3012, 3357, 45114), -- 61753
(61753, 0, 0, 3548, -3000, 0, 45114), -- 61753
(61752, 1, 0, 3443, -3781, 3433, 45114), -- 61752
(61752, 0, 0, 3467, -3544, 3432, 45114), -- 61752
(62320, 2, 0, 3435, -3889, 3435, 45114), -- 62320
(62320, 1, 8, 3321, -3884, 3456, 45114), -- 62320
(62320, 1, 7, 3318, -3776, 3438, 45114), -- 62320
(62320, 1, 6, 3469, -3540, 3432, 45114), -- 62320
(62320, 1, 5, 3638, -3471, 3437, 45114), -- 62320
(62320, 1, 4, 3708, -3447, 3441, 45114), -- 62320
(62320, 1, 3, 3775, -3433, 3453, 45114), -- 62320
(62320, 1, 2, 3784, -3456, 3453, 45114), -- 62320
(62320, 1, 1, 3791, -3719, 3474, 45114), -- 62320
(62320, 1, 0, 3399, -4054, 3487, 45114), -- 62320
(62320, 0, 0, 3435, -3889, 3435, 45114), -- 62320
(61751, 2, 0, 3443, -3781, 3433, 45114), -- 61751
(61751, 1, 6, 3337, -3770, 3453, 45114), -- 61751
(61751, 1, 5, 3416, -3731, 3441, 45114), -- 61751
(61751, 1, 4, 3467, -3744, 3438, 45114), -- 61751
(61751, 1, 3, 3506, -3763, 3438, 45114), -- 61751
(61751, 1, 2, 3503, -3806, 3443, 45114), -- 61751
(61751, 1, 1, 3459, -3860, 3443, 45114), -- 61751
(61751, 1, 0, 3393, -3875, 3451, 45114), -- 61751
(61751, 0, 0, 3443, -3781, 3433, 45114), -- 61751
(61750, 2, 0, 3443, -3781, 3433, 45114), -- 61750
(61750, 1, 0, 3860, -3712, 3482, 45114), -- 61750
(61750, 0, 0, 3443, -3781, 3433, 45114), -- 61750
(61539, 1, 0, 3543, -3654, 3423, 45114), -- 61539
(61539, 0, 11, 3326, -4113, 0, 45114), -- 61539
(61539, 0, 10, 3292, -4021, 0, 45114), -- 61539
(61539, 0, 9, 3245, -3565, 0, 45114), -- 61539
(61539, 0, 8, 3251, -3490, 0, 45114), -- 61539
(61539, 0, 7, 3315, -3391, 0, 45114), -- 61539
(61539, 0, 6, 3413, -3298, 0, 45114), -- 61539
(61539, 0, 5, 3511, -3258, 0, 45114), -- 61539
(61539, 0, 4, 3823, -3409, 0, 45114), -- 61539
(61539, 0, 3, 3863, -3565, 0, 45114), -- 61539
(61539, 0, 2, 3817, -3894, 0, 45114), -- 61539
(61539, 0, 1, 3788, -3929, 0, 45114), -- 61539
(61539, 0, 0, 3476, -4165, 0, 45114), -- 61539
(62317, 1, 0, 3723, -3909, 3433, 45114), -- 62317
(62317, 0, 0, 3569, -3981, 3430, 45114), -- 62317
(61749, 2, 0, 3737, -3896, 3430, 45114), -- 61749
(61749, 1, 0, 3603, -3845, 0, 45114), -- 61749
(61749, 0, 0, 3443, -3781, 3433, 45114), -- 61749
(61748, 6, 0, 3708, -3551, 3435, 45114), -- 61748
(61748, 5, 0, 3852, -3667, 3446, 45114), -- 61748
(61748, 4, 0, 3844, -3652, 3448, 45114), -- 61748
(61748, 3, 0, 3839, -3672, 3447, 45114), -- 61748
(61748, 2, 0, 3836, -3652, 3450, 45114), -- 61748
(61748, 1, 0, 3737, -3896, 3430, 45114), -- 61748
(61748, 0, 0, 3630, -3818, 0, 45114), -- 61748
(61747, 3, 0, 3708, -3551, 3435, 45114), -- 61747
(61747, 2, 5, 3619, -3489, 3438, 45114), -- 61747
(61747, 2, 4, 3638, -3471, 3440, 45114), -- 61747
(61747, 2, 3, 3703, -3450, 3440, 45114), -- 61747
(61747, 2, 2, 3739, -3491, 3443, 45114), -- 61747
(61747, 2, 1, 3773, -3537, 3443, 45114), -- 61747
(61747, 2, 0, 3731, -3595, 3437, 45114), -- 61747
(61747, 1, 5, 3627, -3542, 3435, 45114), -- 61747
(61747, 1, 4, 3615, -3513, 3433, 45114), -- 61747
(61747, 1, 3, 3690, -3450, 3438, 45114), -- 61747
(61747, 1, 2, 3719, -3466, 3430, 45114), -- 61747
(61747, 1, 1, 3784, -3518, 3438, 45114), -- 61747
(61747, 1, 0, 3703, -3607, 3435, 45114), -- 61747
(61747, 0, 0, 3708, -3551, 3435, 45114), -- 61747
(61746, 2, 0, 3708, -3551, 3435, 45114), -- 61746
(61746, 1, 7, 3633, -3523, 3433, 45114), -- 61746
(61746, 1, 6, 3610, -3488, 3436, 45114), -- 61746
(61746, 1, 5, 3616, -3479, 3436, 45114), -- 61746
(61746, 1, 4, 3661, -3454, 3432, 45114), -- 61746
(61746, 1, 3, 3686, -3444, 3438, 45114), -- 61746
(61746, 1, 2, 3753, -3454, 3451, 45114), -- 61746
(61746, 1, 1, 3787, -3535, 3438, 45114), -- 61746
(61746, 1, 0, 3696, -3617, 3433, 45114), -- 61746
(61746, 0, 0, 3708, -3551, 3435, 45114), -- 61746
(62297, 2, 0, 3651, -3809, 3451, 45114), -- 62297
(62297, 1, 7, 3593, -3967, 3505, 45114), -- 62297
(62297, 1, 6, 3577, -3919, 3479, 45114), -- 62297
(62297, 1, 5, 3592, -3881, 3476, 45114), -- 62297
(62297, 1, 4, 3648, -3818, 3451, 45114), -- 62297
(62297, 1, 3, 3674, -3820, 3459, 45114), -- 62297
(62297, 1, 2, 3776, -3843, 3585, 45114), -- 62297
(62297, 1, 1, 3728, -3925, 3471, 45114), -- 62297
(62297, 1, 0, 3660, -3987, 3512, 45114), -- 62297
(62297, 0, 0, 3651, -3809, 3451, 45114), -- 62297
(61745, 2, 0, 3737, -3896, 3430, 45114), -- 61745
(61745, 1, 0, 3603, -3832, 0, 45114), -- 61745
(61745, 0, 0, 3708, -3551, 3435, 45114), -- 61745
(61744, 4, 0, 3657, -3926, 3430, 45114), -- 61744
(61744, 3, 0, 3602, -3845, 0, 45114), -- 61744
(61744, 2, 0, 3665, -3912, 3459, 45114), -- 61744
(61744, 1, 0, 3737, -3896, 3430, 45114), -- 61744
(61744, 0, 0, 3616, -3818, 0, 45114), -- 61744
(61743, 2, 0, 3467, -3544, 3432, 45114), -- 61743
(61743, 1, 0, 3657, -3926, 3430, 45114), -- 61743
(61743, 0, 0, 3603, -3832, 0, 45114), -- 61743
(61742, 2, 0, 3431, -3112, 3358, 45114), -- 61742
(61742, 1, 0, 3444, -3140, 3361, 45114), -- 61742
(61742, 0, 0, 3467, -3544, 3432, 45114), -- 61742
(62414, 2, 0, 3431, -3112, 3358, 45114), -- 62414
(62414, 1, 11, 3357, -3463, 0, 45114), -- 62414
(62414, 1, 10, 3357, -3395, 0, 45114), -- 62414
(62414, 1, 9, 3357, -3327, 0, 45114), -- 62414
(62414, 1, 8, 3371, -3286, 0, 45114), -- 62414
(62414, 1, 7, 3466, -3232, 0, 45114), -- 62414
(62414, 1, 6, 3493, -3218, 0, 45114), -- 62414
(62414, 1, 5, 3548, -3218, 0, 45114), -- 62414
(62414, 1, 4, 3603, -3272, 0, 45114), -- 62414
(62414, 1, 3, 3603, -3353, 0, 45114), -- 62414
(62414, 1, 2, 3562, -3409, 0, 45114), -- 62414
(62414, 1, 1, 3480, -3491, 0, 45114), -- 62414
(62414, 1, 0, 3439, -3518, 0, 45114), -- 62414
(62414, 0, 0, 3431, -3112, 3358, 45114), -- 62414
(61741, 2, 0, 3431, -3112, 3358, 45114), -- 61741
(61741, 1, 11, 3412, -3477, 0, 45114), -- 61741
(61741, 1, 10, 3371, -3450, 0, 45114), -- 61741
(61741, 1, 9, 3371, -3409, 0, 45114), -- 61741
(61741, 1, 8, 3384, -3286, 0, 45114), -- 61741
(61741, 1, 7, 3412, -3232, 0, 45114), -- 61741
(61741, 1, 6, 3466, -3232, 0, 45114), -- 61741
(61741, 1, 5, 3562, -3258, 0, 45114), -- 61741
(61741, 1, 4, 3589, -3286, 0, 45114), -- 61741
(61741, 1, 3, 3603, -3327, 0, 45114), -- 61741
(61741, 1, 2, 3589, -3382, 0, 45114), -- 61741
(61741, 1, 1, 3493, -3491, 0, 45114), -- 61741
(61741, 1, 0, 3453, -3491, 0, 45114), -- 61741
(61741, 0, 0, 3431, -3112, 3358, 45114), -- 61741
(61740, 3, 0, 3431, -3112, 3358, 45114), -- 61740
(61740, 2, 0, 3444, -3138, 3361, 45114), -- 61740
(61740, 1, 0, 3671, -3359, 3417, 45114), -- 61740
(61740, 0, 0, 3431, -3112, 3358, 45114), -- 61740
(61739, 2, 0, 1776, -2549, 3392, 45114), -- 61739
(61739, 1, 0, 3431, -3112, 3358, 45114), -- 61739
(61739, 0, 0, 3431, -3112, 3358, 45114), -- 61739
(62388, 1, 0, 1772, -2548, 3392, 45114), -- 62388
(62388, 0, 0, 1772, -2548, 3392, 45114), -- 62388
(58624, 3, 0, -2677, 5021, 4022, 45114), -- 58624
(58624, 2, 0, 1771, -2548, 3393, 45114), -- 58624
(58624, 1, 0, 1770, -2547, 0, 45114), -- 58624
(58624, 0, 0, 1771, -2548, 3393, 45114), -- 58624
(58608, 3, 0, -2714, 5118, 0, 45114), -- 58608
(58608, 2, 0, -2680, 5028, 4022, 45114), -- 58608
(58608, 1, 0, -2701, 4980, 4022, 45114), -- 58608
(58608, 0, 0, -2650, 5018, 0, 45114), -- 58608
(64963, 0, 0, 3281, 5797, 4938, 45114), -- 64963
(58599, 4, 0, -2468, 5255, 0, 45114), -- 58599
(58599, 3, 0, -2632, 5074, 3994, 45114), -- 58599
(58599, 2, 0, -2506, 4876, 3965, 45114), -- 58599
(58599, 1, 0, -2783, 4894, 3998, 45114), -- 58599
(58599, 0, 0, -2641, 4945, 0, 45114), -- 58599
(58472, 4, 10, -2670, 4870, 4003, 45114), -- 58472
(58472, 4, 9, -2728, 4878, 4011, 45114), -- 58472
(58472, 4, 8, -2776, 4945, 4020, 45114), -- 58472
(58472, 4, 7, -2781, 5010, 3999, 45114), -- 58472
(58472, 4, 6, -2732, 5148, 4004, 45114), -- 58472
(58472, 4, 5, -2661, 5261, 3986, 45114), -- 58472
(58472, 4, 4, -2639, 5278, 3986, 45114), -- 58472
(58472, 4, 3, -2619, 5263, 3986, 45114), -- 58472
(58472, 4, 2, -2488, 5092, 3972, 45114), -- 58472
(58472, 4, 1, -2482, 4956, 3976, 45114), -- 58472
(58472, 4, 0, -2534, 4857, 3971, 45114), -- 58472
(58472, 3, 5, -2723, 5175, 0, 45114), -- 58472
(58472, 3, 4, -2627, 5426, 0, 45114), -- 58472
(58472, 3, 3, -2589, 5337, 0, 45114), -- 58472
(58472, 3, 2, -2566, 5278, 0, 45114), -- 58472
(58472, 3, 1, -2579, 5030, 0, 45114), -- 58472
(58472, 3, 0, -2581, 5028, 0, 45114), -- 58472
(58472, 2, 10, -2668, 4868, 3986, 45114), -- 58472
(58472, 2, 9, -2728, 4885, 3996, 45114), -- 58472
(58472, 2, 8, -2827, 4943, 4008, 45114), -- 58472
(58472, 2, 7, -2727, 5231, 3993, 45114), -- 58472
(58472, 2, 6, -2605, 5459, 3980, 45114), -- 58472
(58472, 2, 5, -2598, 5460, 3953, 45114), -- 58472
(58472, 2, 4, -2494, 5094, 3985, 45114), -- 58472
(58472, 2, 3, -2478, 4960, 3971, 45114), -- 58472
(58472, 2, 2, -2491, 4925, 3972, 45114), -- 58472
(58472, 2, 1, -2520, 4868, 3967, 45114), -- 58472
(58472, 2, 0, -2557, 4866, 3966, 45114), -- 58472
(58472, 1, 6, -2691, 4905, 0, 45114), -- 58472
(58472, 1, 5, -2714, 5051, 3993, 45114), -- 58472
(58472, 1, 4, -2709, 5241, 4006, 45114), -- 58472
(58472, 1, 3, -2629, 5371, 3980, 45114), -- 58472
(58472, 1, 2, -2589, 5420, 3980, 45114), -- 58472
(58472, 1, 1, -2530, 4989, 3968, 45114), -- 58472
(58472, 1, 0, -2557, 4866, 3966, 45114), -- 58472
(58472, 0, 0, -2623, 5172, 0, 45114), -- 58472
(58523, 3, 0, -1888, 5361, 4062, 45114), -- 58523
(58523, 2, 0, -2500, 5268, 4004, 45114), -- 58523
(58523, 1, 0, -1888, 5361, 4062, 45114); -- 58523

INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(58523, 0, 0, -2500, 5268, 4004, 45114), -- 58523
(60657, 2, 0, -1860, 5385, 4062, 45114), -- 60657
(60657, 1, 0, -1885, 5397, 4063, 45114), -- 60657
(60657, 0, 11, -2287, 5220, 4125, 45114), -- 60657
(60657, 0, 10, -2410, 5349, 4106, 45114), -- 60657
(60657, 0, 9, -2422, 5476, 4134, 45114), -- 60657
(60657, 0, 8, -2414, 5682, 4150, 45114), -- 60657
(60657, 0, 7, -2270, 5805, 4192, 45114), -- 60657
(60657, 0, 6, -2138, 5806, 4192, 45114), -- 60657
(60657, 0, 5, -2057, 5790, 4148, 45114), -- 60657
(60657, 0, 4, -1954, 5712, 4107, 45114), -- 60657
(60657, 0, 3, -1969, 5505, 4107, 45114), -- 60657
(60657, 0, 2, -2006, 5397, 4127, 45114), -- 60657
(60657, 0, 1, -2063, 5289, 4129, 45114), -- 60657
(60657, 0, 0, -2154, 5197, 4127, 45114), -- 60657
(58504, 2, 0, 2766, -2755, 0, 45114), -- 58504
(58504, 1, 0, 1775, -2548, 0, 45114), -- 58504
(58504, 0, 0, -1888, 5361, 4062, 45114), -- 58504
(62161, 3, 0, 1773, -2548, 0, 45114), -- 62161
(62161, 2, 0, 1771, -2548, 3393, 45114), -- 62161
(62161, 1, 0, 1773, -2548, 0, 45114), -- 62161
(62161, 0, 0, 1771, -2548, 3393, 45114), -- 62161
(57636, 5, 0, 1777, -2547, 0, 45114), -- 57636
(57636, 4, 0, 1771, -2548, 3393, 45114), -- 57636
(57636, 3, 0, 1758, -2548, 0, 45114), -- 57636
(57636, 2, 0, 1754, -2548, 3394, 45114), -- 57636
(57636, 1, 0, 1777, -2547, 0, 45114), -- 57636
(57636, 0, 0, 1771, -2548, 3393, 45114), -- 57636
(57475, 2, 0, 3817, -1094, 3376, 45114), -- 57475
(57475, 1, 0, 1771, -2548, 3393, 45114), -- 57475
(57475, 0, 0, 1770, -2548, 0, 45114), -- 57475
(57473, 2, 0, 3817, -1094, 3376, 45114), -- 57473
(57473, 1, 2, 3813, -1096, 3376, 45114), -- 57473
(57473, 1, 1, 3822, -1098, 3195, 45114), -- 57473
(57473, 1, 0, 3778, -1141, 3191, 45114), -- 57473
(57473, 0, 0, 3817, -1094, 3376, 45114), -- 57473
(57530, 1, 0, 3797, -1116, 3191, 45114), -- 57530
(57530, 0, 0, 3817, -1094, 3376, 45114), -- 57530
(57470, 2, 0, 3584, -1302, 3146, 45114), -- 57470
(57470, 1, 0, 3788, -1119, 0, 45114), -- 57470
(57470, 0, 0, 3797, -1116, 3191, 45114), -- 57470
(60067, 3, 0, 3546, -1372, 3158, 45114), -- 60067
(60067, 2, 0, 3609, -1311, 3147, 45114), -- 60067
(60067, 1, 0, 3546, -1372, 3158, 45114), -- 60067
(60067, 0, 0, 3592, -1328, 3146, 45114), -- 60067
(60098, 1, 0, 3212, -1188, 3176, 45114), -- 60098
(60098, 0, 0, 3543, -1375, 3157, 45114), -- 60098
(61246, 7, 0, 3212, -1188, 3176, 45114), -- 61246
(61246, 6, 0, 3349, -1128, 3186, 45114), -- 61246
(61246, 5, 0, 3352, -978, 3186, 45114), -- 61246
(61246, 4, 0, 3427, -1054, 3186, 45114), -- 61246
(61246, 3, 0, 3277, -1054, 3185, 45114), -- 61246
(61246, 2, 0, 3212, -1188, 3176, 45114), -- 61246
(61246, 1, 0, 3212, -1188, 3176, 45114), -- 61246
(61246, 0, 0, 3212, -1188, 3176, 45114), -- 61246
(60114, 4, 0, 3241, -1138, 3176, 45114), -- 60114
(60114, 3, 5, 3302, -1174, 3250, 45114), -- 60114
(60114, 3, 4, 3256, -1115, 3272, 45114), -- 60114
(60114, 3, 3, 3406, -958, 3263, 45114), -- 60114
(60114, 3, 2, 3525, -1078, 3253, 45114), -- 60114
(60114, 3, 1, 3493, -1151, 3240, 45114), -- 60114
(60114, 3, 0, 3376, -1246, 3227, 45114), -- 60114
(60114, 2, 0, 3257, -1131, 0, 45114), -- 60114
(60114, 1, 0, 3247, -1137, 3185, 45114), -- 60114
(60114, 0, 0, 3241, -1139, 3176, 45114), -- 60114
(61567, 4, 0, 3237, -1180, 3176, 45114), -- 61567
(61567, 3, 0, 3435, -1133, 3186, 45114), -- 61567
(61567, 2, 0, 3429, -975, 3186, 45114), -- 61567
(61567, 1, 0, 3236, -935, 3178, 45114), -- 61567
(61567, 0, 0, 3237, -1180, 3176, 45114), -- 61567
(60044, 2, 0, 3212, -1188, 3176, 45114), -- 60044
(60044, 1, 11, 3331, -1255, 0, 45114), -- 60044
(60044, 1, 10, 3295, -1218, 0, 45114), -- 60044
(60044, 1, 9, 3260, -1174, 0, 45114), -- 60044
(60044, 1, 8, 3183, -1090, 0, 45114), -- 60044
(60044, 1, 7, 3134, -1036, 0, 45114), -- 60044
(60044, 1, 6, 3139, -978, 0, 45114), -- 60044
(60044, 1, 5, 3321, -794, 0, 45114), -- 60044
(60044, 1, 4, 3375, -812, 0, 45114), -- 60044
(60044, 1, 3, 3568, -1017, 0, 45114), -- 60044
(60044, 1, 2, 3554, -1076, 0, 45114), -- 60044
(60044, 1, 1, 3488, -1130, 0, 45114), -- 60044
(60044, 1, 0, 3379, -1246, 0, 45114), -- 60044
(60044, 0, 0, 3212, -1188, 3176, 45114), -- 60044
(60050, 2, 0, 3703, -1606, 3170, 45114), -- 60050
(60050, 1, 0, 3703, -1606, 3170, 45114), -- 60050
(60050, 0, 0, 3212, -1188, 3176, 45114), -- 60050
(61412, 2, 0, 3727, -1598, 3170, 45114), -- 61412
(61412, 1, 5, 3509, -1650, 3170, 45114), -- 61412
(61412, 1, 4, 3477, -1624, 3178, 45114), -- 61412
(61412, 1, 3, 3550, -1512, 3170, 45114), -- 61412
(61412, 1, 2, 3637, -1505, 3172, 45114), -- 61412
(61412, 1, 1, 3616, -1634, 3170, 45114), -- 61412
(61412, 1, 0, 3564, -1683, 3172, 45114), -- 61412
(61412, 0, 0, 3727, -1598, 3170, 45114), -- 61412
(60510, 2, 0, 3704, -1617, 3170, 45114), -- 60510
(60510, 1, 0, 3506, -1490, 3170, 45114), -- 60510
(60510, 0, 0, 3704, -1617, 3170, 45114), -- 60510
(61180, 2, 0, 3687, -1588, 3170, 45114), -- 61180
(61180, 1, 10, 3563, -1679, 3170, 45114), -- 61180
(61180, 1, 9, 3524, -1658, 3170, 45114), -- 61180
(61180, 1, 8, 3484, -1628, 3177, 45114), -- 61180
(61180, 1, 7, 3481, -1618, 3177, 45114), -- 61180
(61180, 1, 6, 3510, -1552, 3170, 45114), -- 61180
(61180, 1, 5, 3573, -1479, 3170, 45114), -- 61180
(61180, 1, 4, 3632, -1502, 3172, 45114), -- 61180
(61180, 1, 3, 3640, -1549, 3170, 45114), -- 61180
(61180, 1, 2, 3631, -1626, 3170, 45114), -- 61180
(61180, 1, 1, 3611, -1661, 3170, 45114), -- 61180
(61180, 1, 0, 3590, -1683, 3172, 45114), -- 61180
(61180, 0, 0, 3687, -1588, 3170, 45114), -- 61180
(61396, 1, 0, 3804, -1482, 3144, 45114), -- 61396
(61396, 0, 0, 3687, -1588, 3170, 45114), -- 61396
(59916, 2, 0, 3727, -1598, 3170, 45114), -- 59916
(59916, 1, 7, 3697, -1536, 3147, 45114), -- 59916
(59916, 1, 6, 3745, -1419, 3142, 45114), -- 59916
(59916, 1, 5, 3814, -1351, 3142, 45114), -- 59916
(59916, 1, 4, 3866, -1332, 3141, 45114), -- 59916
(59916, 1, 3, 3938, -1464, 3142, 45114), -- 59916
(59916, 1, 2, 3900, -1567, 3146, 45114), -- 59916
(59916, 1, 1, 3835, -1590, 3147, 45114), -- 59916
(59916, 1, 0, 3803, -1594, 3141, 45114), -- 59916
(59916, 0, 0, 3727, -1598, 3170, 45114), -- 59916
(60043, 2, 0, 3704, -1617, 3170, 45114), -- 60043
(60043, 1, 4, 3732, -1518, 3150, 45114), -- 60043
(60043, 1, 3, 3702, -1480, 3150, 45114), -- 60043
(60043, 1, 2, 3851, -1313, 3151, 45114), -- 60043
(60043, 1, 1, 3894, -1389, 3151, 45114), -- 60043
(60043, 1, 0, 3819, -1551, 3151, 45114), -- 60043
(60043, 0, 0, 3704, -1617, 3170, 45114), -- 60043
(59910, 3, 0, 1853, -2548, 3532, 45114), -- 59910
(59910, 2, 0, 3290, -1660, 3392, 45114), -- 59910
(59910, 1, 0, 1849, -2629, 0, 45114), -- 59910
(59910, 0, 0, 3702, -1614, 3170, 45114), -- 59910
(61145, 2, 0, 1771, -2548, 3393, 45114), -- 61145
(61145, 1, 0, 1849, -2641, 3394, 45114), -- 61145
(61145, 0, 0, 3286, -1645, 0, 45114), -- 61145
(61586, 1, 0, 1853, -2548, 3533, 45114), -- 61586
(61586, 0, 0, 1771, -2548, 3393, 45114), -- 61586
(59894, 3, 0, 1776, -2547, 0, 45114), -- 59894
(59894, 2, 0, 1861, -2547, 3532, 45114), -- 59894
(59894, 1, 0, 1893, -2611, 0, 45114), -- 59894
(59894, 0, 0, 1861, -2547, 3532, 45114), -- 59894
(59922, 2, 0, -3660, -4520, 6639, 45114), -- 59922
(59922, 1, 0, 1771, -2548, 3393, 45114), -- 59922
(59922, 0, 0, 1771, -2548, 0, 45114), -- 59922
(59921, 5, 0, -3660, -4520, 6639, 45114), -- 59921
(59921, 4, 0, -3726, -4402, 6642, 45114), -- 59921
(59921, 3, 0, -3725, -4401, 6642, 45114), -- 59921
(59921, 2, 0, -3918, -4413, 6657, 45114), -- 59921
(59921, 1, 0, -3798, -4583, 6651, 45114), -- 59921
(59921, 0, 0, -3660, -4520, 6639, 45114), -- 59921
(59748, 3, 0, -3312, -4197, 6598, 45114), -- 59748
(59748, 2, 0, -3662, -4529, 6639, 45114), -- 59748
(59748, 1, 0, -3321, -4197, 6598, 45114), -- 59748
(59748, 0, 0, -3660, -4520, 6639, 45114), -- 59748
(60929, 3, 0, -3311, -4185, 6597, 45114), -- 60929
(60929, 2, 6, -3368, -4136, 6664, 45114), -- 60929
(60929, 2, 5, -3544, -4074, 6637, 45114), -- 60929
(60929, 2, 4, -3567, -3976, 6611, 45114), -- 60929
(60929, 2, 3, -3458, -3943, 6608, 45114), -- 60929
(60929, 2, 2, -3145, -3948, 6611, 45114), -- 60929
(60929, 2, 1, -3025, -4056, 6639, 45114), -- 60929
(60929, 2, 0, -3186, -4182, 6628, 45114), -- 60929
(60929, 1, 0, -3301, -4148, 6598, 45114), -- 60929
(60929, 0, 0, -3333, -4148, 6598, 45114), -- 60929
(59709, 2, 0, -3134, -3505, 6762, 45114), -- 59709
(59709, 1, 0, -3134, -3505, 6762, 45114), -- 59709
(59709, 0, 0, -3321, -4197, 6598, 45114), -- 59709
(59700, 3, 0, -3315, -3420, 6634, 45114), -- 59700
(59700, 2, 0, -3198, -3380, 6770, 45114), -- 59700
(59700, 1, 0, -3317, -3420, 6633, 45114), -- 59700
(59700, 0, 0, -3225, -3401, 6770, 45114), -- 59700
(59698, 4, 0, -3315, -3420, 6634, 45114), -- 59698
(59698, 3, 9, -3323, -3801, 6603, 45114), -- 59698
(59698, 3, 8, -3358, -3785, 6605, 45114), -- 59698
(59698, 3, 7, -3486, -3693, 6618, 45114), -- 59698
(59698, 3, 6, -3501, -3629, 6618, 45114), -- 59698
(59698, 3, 5, -3475, -3570, 6618, 45114), -- 59698
(59698, 3, 4, -3386, -3477, 6626, 45114), -- 59698
(59698, 3, 3, -3257, -3474, 6626, 45114), -- 59698
(59698, 3, 2, -3265, -3676, 6601, 45114), -- 59698
(59698, 3, 1, -3272, -3718, 6603, 45114), -- 59698
(59698, 3, 0, -3312, -3801, 6603, 45114), -- 59698
(59698, 2, 0, -3317, -3420, 6634, 45114), -- 59698
(59698, 1, 10, -3316, -3777, 6603, 45114), -- 59698
(59698, 1, 9, -3361, -3754, 6603, 45114), -- 59698
(59698, 1, 8, -3475, -3692, 6618, 45114), -- 59698
(59698, 1, 7, -3505, -3644, 6618, 45114), -- 59698
(59698, 1, 6, -3504, -3598, 6618, 45114), -- 59698
(59698, 1, 5, -3383, -3512, 6626, 45114), -- 59698
(59698, 1, 4, -3353, -3494, 6626, 45114), -- 59698
(59698, 1, 3, -3237, -3462, 6626, 45114), -- 59698
(59698, 1, 2, -3230, -3462, 6626, 45114), -- 59698
(59698, 1, 1, -3276, -3788, 6603, 45114), -- 59698
(59698, 1, 0, -3277, -3794, 6603, 45114), -- 59698
(59698, 0, 0, -3315, -3420, 6634, 45114), -- 59698
(59678, 0, 6, -3508, -3646, 6618, 45114), -- 59678
(59678, 0, 5, -3475, -3564, 6616, 45114), -- 59678
(59678, 0, 4, -3333, -3507, 6626, 45114), -- 59678
(59678, 0, 3, -3289, -3551, 6626, 45114), -- 59678
(59678, 0, 2, -3273, -3705, 6602, 45114), -- 59678
(59678, 0, 1, -3272, -3757, 6602, 45114), -- 59678
(59678, 0, 0, -3364, -3790, 6603, 45114), -- 59678
(59659, 4, 0, -3322, -3875, 6585, 45114), -- 59659
(59659, 3, 0, -3316, -3551, 6626, 45114), -- 59659
(59659, 2, 0, -3499, -3592, 6618, 45114), -- 59659
(59659, 1, 0, -3325, -3643, 6602, 45114), -- 59659
(59659, 0, 0, -3315, -3420, 6639, 45114), -- 59659
(59653, 2, 0, -3318, -4012, 6570, 45114), -- 59653
(59653, 1, 0, -3318, -4012, 6570, 45114), -- 59653
(59653, 0, 0, -3321, -3839, 6597, 45114), -- 59653
(59645, 3, 0, -3312, -4197, 6598, 45114), -- 59645
(59645, 2, 0, -3113, -3526, 6762, 45114), -- 59645
(59645, 1, 0, -3321, -4104, 6598, 45114), -- 59645
(59645, 0, 11, -3214, -4186, 6592, 45114), -- 59645
(59645, 0, 10, -3456, -4149, 6585, 45114), -- 59645
(59645, 0, 9, -3462, -4146, 6585, 45114), -- 59645
(59645, 0, 8, -3537, -4071, 6583, 45114), -- 59645
(59645, 0, 7, -3559, -4015, 6579, 45114), -- 59645
(59645, 0, 6, -3546, -3986, 6577, 45114), -- 59645
(59645, 0, 5, -3484, -3976, 6577, 45114), -- 59645
(59645, 0, 4, -3477, -3975, 6577, 45114), -- 59645
(59645, 0, 3, -3164, -3934, 6593, 45114), -- 59645
(59645, 0, 2, -3036, -4049, 6589, 45114), -- 59645
(59645, 0, 1, -3045, -4100, 6588, 45114), -- 59645
(59645, 0, 0, -3201, -4188, 6592, 45114), -- 59645
(59650, 5, 0, -3309, -4134, 6598, 45114), -- 59650
(59650, 4, 0, -3318, -4012, 6565, 45114), -- 59650
(59650, 3, 0, -3105, -4071, 6580, 45114), -- 59650
(59650, 2, 0, -3047, -4068, 6593, 45114), -- 59650
(59650, 1, 0, -3047, -4068, 6593, 45114), -- 59650
(59650, 0, 0, -3318, -4012, 6570, 45114), -- 59650
(59648, 6, 0, -3309, -4134, 6598, 45114), -- 59648
(59648, 5, 0, -3318, -4012, 6565, 45114), -- 59648
(59648, 4, 0, -3557, -3983, 6582, 45114), -- 59648
(59648, 3, 0, -3529, -3991, 6579, 45114), -- 59648
(59648, 2, 0, -3549, -4011, 6580, 45114), -- 59648
(59648, 1, 0, -3557, -3983, 6582, 45114), -- 59648
(59648, 0, 0, -3343, -4002, 6598, 45114), -- 59648
(63576, 2, 0, -1930, 1379, 0, 45114), -- 63576
(63576, 1, 0, -1931, 1371, 5267, 45114), -- 63576
(63576, 0, 0, -1931, 1380, 5269, 45114), -- 63576
(50600, 0, 0, -607, 3129, 324, 45114), -- 50600
(60502, 3, 0, -1479, 6543, 4187, 45114), -- 60502
(60502, 2, 0, -1289, 6521, 4083, 45114), -- 60502
(60502, 1, 0, -1475, 6228, 4086, 45114), -- 60502
(60502, 0, 0, -1975, 7917, 4277, 45114), -- 60502
(60184, 1, 0, 1855, -2630, 3394, 45114), -- 60184
(60184, 0, 0, 1855, -2630, 3394, 45114); -- 60184

INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(58665, 1, 0, 1779, -2549, 3198, 45114), -- 58665
(58665, 0, 0, 3017, -1009, 3198, 45114), -- 58665
(50601, 0, 0, 2539, -21, 54, 45114), -- 50601
(50599, 0, 0, 1026, -452, 10, 45114), -- 50599
(49929, 2, 0, -8151, 819, 76, 45114), -- 49929
(49929, 1, 0, -8151, 818, 76, 45114), -- 49929
(49929, 0, 0, -8151, 819, 76, 45114); -- 49929


DELETE FROM `quest_greeting` WHERE (`Type`=0 AND `ID` IN (173422,161474));
INSERT INTO `quest_greeting` (`ID`, `Type`, `GreetEmoteType`, `GreetEmoteDelay`, `Greeting`, `VerifiedBuild`) VALUES
(173422, 0, 0, 0, '<The oculus stares at you blankly.>', 45114), -- 173422
(161474, 0, 0, 0, 'What?', 45114); -- 161474


DELETE FROM `quest_details` WHERE `ID` IN (58833 /*58833*/, 62391 /*62391*/, 61761 /*61761*/, 61760 /*61760*/, 61759 /*61759*/, 61758 /*61758*/, 61757 /*61757*/, 61756 /*61756*/, 61755 /*61755*/, 61754 /*61754*/, 61753 /*61753*/, 61752 /*61752*/, 62320 /*62320*/, 61751 /*61751*/, 61750 /*61750*/, 62317 /*62317*/, 61749 /*61749*/, 61748 /*61748*/, 61747 /*61747*/, 61746 /*61746*/, 62297 /*62297*/, 61745 /*61745*/, 61744 /*61744*/, 61743 /*61743*/, 61742 /*61742*/, 62414 /*62414*/, 61741 /*61741*/, 61740 /*61740*/, 61739 /*61739*/, 62388 /*62388*/, 58624 /*58624*/, 58608 /*58608*/, 64963 /*64963*/, 58599 /*58599*/, 58472 /*58472*/, 57919 /*57919*/, 58523 /*58523*/, 58504 /*58504*/, 62161 /*62161*/, 57636 /*57636*/, 57475 /*57475*/, 57473 /*57473*/, 57530 /*57530*/, 57470 /*57470*/, 60067 /*60067*/, 60098 /*60098*/, 61246 /*61246*/, 60114 /*60114*/, 61567 /*61567*/, 60044 /*60044*/, 60050 /*60050*/, 61412 /*61412*/, 60510 /*60510*/, 61180 /*61180*/, 61396 /*61396*/, 59916 /*59916*/, 60043 /*60043*/, 59910 /*59910*/, 61145 /*61145*/, 61586 /*61586*/, 59894 /*59894*/, 62866 /*62866*/, 59922 /*59922*/, 59921 /*59921*/, 59748 /*59748*/, 59709 /*59709*/, 59700 /*59700*/, 59698 /*59698*/, 59678 /*59678*/, 59659 /*59659*/, 59653 /*59653*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(58833, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 58833
(62391, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 62391
(61761, 1, 1, 0, 0, 0, 0, 0, 0, 45114), -- 61761
(61760, 1, 1, 0, 0, 0, 0, 0, 0, 45114), -- 61760
(61759, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61759
(61758, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61758
(61757, 1, 1, 0, 0, 0, 0, 0, 0, 45114), -- 61757
(61756, 1, 1, 0, 0, 0, 0, 0, 0, 45114), -- 61756
(61755, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61755
(61754, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61754
(61753, 1, 1, 0, 0, 0, 0, 0, 0, 45114), -- 61753
(61752, 1, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61752
(62320, 1, 1, 0, 0, 0, 0, 0, 0, 45114), -- 62320
(61751, 1, 1, 0, 0, 0, 0, 0, 0, 45114), -- 61751
(61750, 1, 1, 0, 0, 0, 0, 0, 0, 45114), -- 61750
(62317, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 62317
(61749, 1, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61749
(61748, 1, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61748
(61747, 1, 1, 0, 0, 0, 0, 0, 0, 45114), -- 61747
(61746, 1, 1, 0, 0, 0, 0, 0, 0, 45114), -- 61746
(62297, 5, 1, 0, 0, 0, 0, 0, 0, 45114), -- 62297
(61745, 1, 1, 0, 0, 0, 0, 0, 0, 45114), -- 61745
(61744, 1, 1, 0, 0, 0, 0, 0, 0, 45114), -- 61744
(61743, 1, 1, 0, 0, 0, 0, 0, 0, 45114), -- 61743
(61742, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61742
(62414, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 62414
(61741, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61741
(61740, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61740
(61739, 1, 1, 0, 0, 0, 0, 0, 0, 45114), -- 61739
(62388, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 62388
(58624, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 58624
(58608, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 58608
(64963, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 64963
(58599, 1, 0, 0, 0, 0, 0, 0, 0, 45114), -- 58599
(58472, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 58472
(57919, 1, 0, 0, 0, 0, 0, 0, 0, 45114), -- 57919
(58523, 1, 0, 0, 0, 0, 0, 0, 0, 45114), -- 58523
(58504, 1, 0, 0, 0, 0, 0, 0, 0, 45114), -- 58504
(62161, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 62161
(57636, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 57636
(57475, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 57475
(57473, 378, 0, 0, 0, 0, 0, 0, 0, 45114), -- 57473
(57530, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 57530
(57470, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 57470
(60067, 669, 669, 0, 0, 0, 0, 0, 0, 45114), -- 60067
(60098, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 60098
(61246, 669, 669, 669, 0, 0, 0, 0, 0, 45114), -- 61246
(60114, 5, 1, 0, 0, 0, 0, 0, 0, 45114), -- 60114
(61567, 669, 669, 0, 0, 0, 0, 0, 0, 45114), -- 61567
(60044, 669, 669, 669, 0, 0, 0, 0, 0, 45114), -- 60044
(60050, 113, 669, 669, 0, 0, 0, 0, 0, 45114), -- 60050
(61412, 669, 669, 669, 0, 0, 0, 0, 0, 45114), -- 61412
(60510, 669, 669, 669, 0, 0, 0, 0, 0, 45114), -- 60510
(61180, 669, 669, 669, 0, 0, 0, 0, 0, 45114), -- 61180
(61396, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61396
(59916, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 59916
(60043, 669, 669, 669, 0, 0, 0, 0, 0, 45114), -- 60043
(59910, 669, 669, 669, 0, 0, 0, 0, 0, 45114), -- 59910
(61145, 1, 1, 66, 0, 0, 0, 0, 0, 45114), -- 61145
(61586, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 61586
(59894, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 59894
(62866, 1, 0, 0, 0, 0, 0, 0, 0, 45114), -- 62866
(59922, 1, 0, 0, 0, 0, 0, 0, 0, 45114), -- 59922
(59921, 1, 0, 0, 0, 0, 0, 0, 0, 45114), -- 59921
(59748, 1, 0, 0, 0, 0, 0, 0, 0, 45114), -- 59748
(59709, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 59709
(59700, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 59700
(59698, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 59698
(59678, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 59678
(59659, 0, 0, 0, 0, 0, 0, 0, 0, 45114), -- 59659
(59653, 0, 0, 0, 0, 0, 0, 0, 0, 45114); -- 59653


DELETE FROM `quest_request_items` WHERE `ID` IN (61567 /*61567*/, 57473 /*57473*/, 61760 /*61760*/, 58608 /*58608*/, 61756 /*61756*/, 59678 /*59678*/, 61753 /*61753*/, 61752 /*61752*/, 61751 /*61751*/, 61750 /*61750*/, 61748 /*61748*/, 61747 /*61747*/, 61746 /*61746*/, 60184 /*60184*/, 59645 /*59645*/, 60114 /*60114*/, 62320 /*62320*/, 61180 /*61180*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(61567, 0, 669, 0, 0, 'A blow inflicted to the enemy\'s morale can be as effective as traditional combat.', 45114), -- 61567
(57473, 0, 0, 0, 0, 'How did they acquire that?', 0), -- 57473
(61760, 0, 1, 0, 0, 'We must stop Kel\'Thuzad before it\'s too late!', 45114), -- 61760
(58608, 6, 0, 0, 0, 'Still more schemes...', 0), -- 58608
(61756, 1, 0, 0, 0, 'My acolyte returns. What have you brought me?', 0), -- 61756
(59678, 0, 0, 0, 0, 'The time for mercy is behind us.', 45114), -- 59678
(61753, 0, 0, 0, 0, 'The caravan will arrive any moment now. Make haste!', 45114), -- 61753
(61752, 1, 0, 0, 0, 'Let us see what we have here.', 0), -- 61752
(61751, 1, 0, 0, 0, 'Do you have the spore clusters?', 0), -- 61751
(61750, 1, 0, 0, 0, 'Did you find the veilwing?', 0), -- 61750
(61748, 1, 0, 0, 0, 'You have returned? Do you have my tomes?', 0), -- 61748
(61747, 1, 0, 0, 0, 'Enchanted quills will not collect themselves, now will they?', 0), -- 61747
(61746, 1, 0, 0, 0, 'Have you found my scrolls?', 0), -- 61746
(60184, 0, 0, 0, 0, 'I place my faith in you.', 45114), -- 60184
(59645, 0, 0, 0, 0, 'See justice done.', 45114), -- 59645
(60114, 0, 1, 0, 0, 'Annihilate them!', 45114), -- 60114
(62320, 1, 0, 0, 0, 'I will need large quantities of amethystine powder if I am to fix...\n\n<Moret gestures at you broadly.>\n\n...this.', 0), -- 62320
(61180, 669, 0, 0, 0, 'This foul work must be destroyed.', 0); -- 61180


DELETE FROM `creature_queststarter` WHERE (`id`=161907 AND `quest` IN (58833,62391,62388,58504,62161,57636,61145)) OR (`id`=173831 AND `quest`=61761) OR (`id`=173172 AND `quest` IN (61760,61756,61753,61743,61739)) OR (`id`=172923 AND `quest` IN (61757,61749,61745,61744)) OR (`id`=173422 AND `quest` IN (61755,61754,61742,62414,61741,61740)) OR (`id`=173492 AND `quest` IN (61752,61751,61750)) OR (`id`=174120 AND `quest`=62320) OR (`id`=172924 AND `quest` IN (61748,61747,61746)) OR (`id`=174020 AND `quest`=62297) OR (`id`=161865 AND `quest`=58624) OR (`id`=161474 AND `quest` IN (58608,58599)) OR (`id`=161694 AND `quest`=58472) OR (`id`=160116 AND `quest`=57919) OR (`id`=161461 AND `quest`=58523) OR (`id`=173194 AND `quest` IN (57475,57473,57530)) OR (`id`=173308 AND `quest`=57470) OR (`id`=172002 AND `quest`=60067) OR (`id`=166211 AND `quest` IN (60098,61246,60044)) OR (`id`=167810 AND `quest`=60114) OR (`id`=167173 AND `quest`=61567) OR (`id`=168860 AND `quest`=60050) OR (`id`=168743 AND `quest` IN (61412,59916)) OR (`id`=166333 AND `quest` IN (60510,60043)) OR (`id`=168744 AND `quest`=61180) OR (`id`=171483 AND `quest`=59910) OR (`id`=166535 AND `quest`=61586) OR (`id`=161988 AND `quest`=59894) OR (`id`=167748 AND `quest`=62866) OR (`id`=165794 AND `quest` IN (59922,59921)) OR (`id`=165795 AND `quest`=59748) OR (`id`=165752 AND `quest`=59709) OR (`id`=165412 AND `quest` IN (59700,59698,59659,59653)) OR (`id`=165591 AND `quest`=59678);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(161907, 58833, 45114), -- 58833 offered 161907
(161907, 62391, 45114), -- 62391 offered 161907
(173831, 61761, 45114), -- 61761 offered 173831
(173172, 61760, 45114), -- 61760 offered 173172
(172923, 61757, 45114), -- 61757 offered 172923
(173172, 61756, 45114), -- 61756 offered 173172
(173422, 61755, 45114), -- 61755 offered 173422
(173422, 61754, 45114), -- 61754 offered 173422
(173172, 61753, 45114), -- 61753 offered 173172
(173492, 61752, 45114), -- 61752 offered 173492
(174120, 62320, 45114), -- 62320 offered 174120
(173492, 61751, 45114), -- 61751 offered 173492
(173492, 61750, 45114), -- 61750 offered 173492
(172923, 61749, 45114), -- 61749 offered 172923
(172924, 61748, 45114), -- 61748 offered 172924
(172924, 61747, 45114), -- 61747 offered 172924
(172924, 61746, 45114), -- 61746 offered 172924
(174020, 62297, 45114), -- 62297 offered 174020
(172923, 61745, 45114), -- 61745 offered 172923
(172923, 61744, 45114), -- 61744 offered 172923
(173172, 61743, 45114), -- 61743 offered 173172
(173422, 61742, 45114), -- 61742 offered 173422
(173422, 62414, 45114), -- 62414 offered 173422
(173422, 61741, 45114), -- 61741 offered 173422
(173422, 61740, 45114), -- 61740 offered 173422
(173172, 61739, 45114), -- 61739 offered 173172
(161907, 62388, 45114), -- 62388 offered 161907
(161865, 58624, 45114), -- 58624 offered 161865
(161474, 58608, 45114), -- 58608 offered 161474
(161474, 58599, 45114), -- 58599 offered 161474
(161694, 58472, 45114), -- 58472 offered 161694
(160116, 57919, 45114), -- 57919 offered 160116
(161461, 58523, 45114), -- 58523 offered 161461
(161907, 58504, 45114), -- 58504 offered 161907
(161907, 62161, 45114), -- 62161 offered 161907
(161907, 57636, 45114), -- 57636 offered 161907
(173194, 57475, 45114), -- 57475 offered 173194
(173194, 57473, 45114), -- 57473 offered 173194
(173194, 57530, 45114), -- 57530 offered 173194
(173308, 57470, 45114), -- 57470 offered Baroness Draka
(172002, 60067, 45114), -- 60067 offered 172002
(166211, 60098, 45114), -- 60098 offered 166211
(166211, 61246, 45114), -- 61246 offered 166211
(167810, 60114, 45114), -- 60114 offered 167810
(167173, 61567, 45114), -- 61567 offered 167173
(166211, 60044, 45114), -- 60044 offered 166211
(168860, 60050, 45114), -- 60050 offered 168860
(168743, 61412, 45114), -- 61412 offered 168743
(166333, 60510, 45114), -- 60510 offered 166333
(168744, 61180, 45114), -- 61180 offered 168744
(168743, 59916, 45114), -- 59916 offered 168743
(166333, 60043, 45114), -- 60043 offered 166333
(171483, 59910, 45114), -- 59910 offered 171483
(161907, 61145, 45114), -- 61145 offered 161907
(166535, 61586, 45114), -- 61586 offered Baroness Draka
(161988, 59894, 45114), -- 59894 offered Alexandros Mograine
(167748, 62866, 45114), -- 62866 offered 167748
(165794, 59922, 45114), -- 59922 offered 165794
(165794, 59921, 45114), -- 59921 offered 165794
(165795, 59748, 45114), -- 59748 offered Alexandros Mograine
(165752, 59709, 45114), -- 59709 offered 165752
(165412, 59700, 45114), -- 59700 offered 165412
(165412, 59698, 45114), -- 59698 offered 165412
(165591, 59678, 45114), -- 59678 offered 165591
(165412, 59659, 45114), -- 59659 offered 165412
(165412, 59653, 45114); -- 59653 offered 165412


DELETE FROM `creature_questender` WHERE (`id`=161907 AND `quest` IN (62391,61761,62388,58624,62161,57636,57475,61586,59922)) OR (`id`=173831 AND `quest`=61760) OR (`id`=173172 AND `quest` IN (61759,61755,61754,61752,61742)) OR (`id`=172923 AND `quest` IN (61756,61748,61744,61743)) OR (`id`=173422 AND `quest` IN (61753,61740,62414,61741)) OR (`id`=173492 AND `quest` IN (61750,61751,61749)) OR (`id`=174120 AND `quest`=62320) OR (`id`=172924 AND `quest` IN (61747,61746,61745)) OR (`id`=174020 AND `quest`=62297) OR (`id`=173420 AND `quest`=61739) OR (`id`=161865 AND `quest`=58608) OR (`id`=161474 AND `quest` IN (58472,58599)) OR (`id`=161694 AND `quest`=58523) OR (`id`=161461 AND `quest`=58504) OR (`id`=173194 AND `quest` IN (57473,57530,57470)) OR (`id`=173193 AND `quest`=60067) OR (`id`=172002 AND `quest`=60098) OR (`id`=166211 AND `quest` IN (61246,60044,60050)) OR (`id`=167173 AND `quest`=61567) OR (`id`=167810 AND `quest`=60114) OR (`id`=168743 AND `quest` IN (61412,59916)) OR (`id`=166333 AND `quest` IN (60510,60043,59910)) OR (`id`=168744 AND `quest` IN (61180,61396)) OR (`id`=171483 AND `quest`=61145) OR (`id`=173306 AND `quest`=60184) OR (`id`=166535 AND `quest`=59894) OR (`id`=165794 AND `quest` IN (59921,59748,59709)) OR (`id`=165752 AND `quest`=59700) OR (`id`=165412 AND `quest` IN (59698,59659,59653,59648,59650)) OR (`id`=165591 AND `quest` IN (59678,59645));
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(161907, 62391, 45114), -- 62391 ended by 161907
(161907, 61761, 45114), -- 61761 ended by 161907
(173831, 61760, 45114), -- 61760 ended by 173831
(173172, 61759, 45114), -- 61759 ended by 173172
(172923, 61756, 45114), -- 61756 ended by 172923
(173172, 61755, 45114), -- 61755 ended by 173172
(173172, 61754, 45114), -- 61754 ended by 173172
(173422, 61753, 45114), -- 61753 ended by 173422
(173172, 61752, 45114), -- 61752 ended by 173172
(173492, 61750, 45114), -- 61750 ended by 173492
(174120, 62320, 45114), -- 62320 ended by 174120
(173492, 61751, 45114), -- 61751 ended by 173492
(173492, 61749, 45114), -- 61749 ended by 173492
(172923, 61748, 45114), -- 61748 ended by 172923
(172924, 61747, 45114), -- 61747 ended by 172924
(172924, 61746, 45114), -- 61746 ended by 172924
(172924, 61745, 45114), -- 61745 ended by 172924
(174020, 62297, 45114), -- 62297 ended by 174020
(172923, 61744, 45114), -- 61744 ended by 172923
(172923, 61743, 45114), -- 61743 ended by 172923
(173172, 61742, 45114), -- 61742 ended by 173172
(173422, 61740, 45114), -- 61740 ended by 173422
(173422, 62414, 45114), -- 62414 ended by 173422
(173422, 61741, 45114), -- 61741 ended by 173422
(173420, 61739, 45114), -- 61739 ended by 173420
(161907, 62388, 45114), -- 62388 ended by 161907
(161907, 58624, 45114), -- 58624 ended by 161907
(161865, 58608, 45114), -- 58608 ended by 161865
(161474, 58472, 45114), -- 58472 ended by 161474
(161474, 58599, 45114), -- 58599 ended by 161474
(161694, 58523, 45114), -- 58523 ended by 161694
(161461, 58504, 45114), -- 58504 ended by 161461
(161907, 62161, 45114), -- 62161 ended by 161907
(161907, 57636, 45114), -- 57636 ended by 161907
(161907, 57475, 45114), -- 57475 ended by 161907
(173194, 57473, 45114), -- 57473 ended by 173194
(173194, 57530, 45114), -- 57530 ended by 173194
(173194, 57470, 45114), -- 57470 ended by 173194
(173193, 60067, 45114), -- 60067 ended by 173193
(172002, 60098, 45114), -- 60098 ended by 172002
(166211, 61246, 45114), -- 61246 ended by 166211
(166211, 60044, 45114), -- 60044 ended by 166211
(167173, 61567, 45114), -- 61567 ended by 167173
(167810, 60114, 45114), -- 60114 ended by 167810
(166211, 60050, 45114), -- 60050 ended by 166211
(168743, 61412, 45114), -- 61412 ended by 168743
(166333, 60510, 45114), -- 60510 ended by 166333
(168744, 61180, 45114), -- 61180 ended by 168744
(168744, 61396, 45114), -- 61396 ended by 168744
(166333, 60043, 45114), -- 60043 ended by 166333
(168743, 59916, 45114), -- 59916 ended by 168743
(166333, 59910, 45114), -- 59910 ended by 166333
(171483, 61145, 45114), -- 61145 ended by 171483
(173306, 60184, 45114), -- 60184 ended by Khaliiq
(161907, 61586, 45114), -- 61586 ended by 161907
(166535, 59894, 45114), -- 59894 ended by Baroness Draka
(161907, 59922, 45114), -- 59922 ended by 161907
(165794, 59921, 45114), -- 59921 ended by 165794
(165794, 59748, 45114), -- 59748 ended by 165794
(165794, 59709, 45114), -- 59709 ended by 165794
(165752, 59700, 45114), -- 59700 ended by 165752
(165412, 59698, 45114), -- 59698 ended by 165412
(165412, 59659, 45114), -- 59659 ended by 165412
(165591, 59678, 45114), -- 59678 ended by 165591
(165412, 59653, 45114), -- 59653 ended by 165412
(165412, 59648, 45114), -- 59648 ended by 165412
(165591, 59645, 45114), -- 59645 ended by 165591
(165412, 59650, 45114); -- 59650 ended by 165412


DELETE FROM `gameobject_queststarter` WHERE (`id`=358319 AND `quest`=62317) OR (`id`=355825 AND `quest`=61396);
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(358319, 62317, 45114), -- 62317 offered by 358319
(355825, 61396, 45114); -- 61396 offered by 355825


DELETE FROM `spell_target_position` WHERE (`EffectIndex`=1 AND `ID` IN (53822,348976,348975,329911)) OR (`EffectIndex`=0 AND `ID` IN (187753,340652,340538,222695,3561,347650,347657,347661,329260,326498,338564,334637,337689,344587,337688,126892,361238,324547));
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES
(53822, 1, 0, 2359.639892578125, -5662.41015625, 382.279998779296875, 45114), -- Spell: 53822 (Death Gate) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)
(187753, 0, 1220, -1444.030029296875, 1158.030029296875, 275.260009765625, 45114), -- Spell: 187753 (Death Gate) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)
(340652, 0, 2222, 3603.030029296875, -3942.60009765625, 3430.169921875, 45114), -- Spell: 340652 ([DNT] Teleport: KT's Cell) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)
(340538, 0, 2222, 3604.1298828125, -3945.669921875, 3430.169921875, 45114), -- Spell: 340538 ([DNT] Kick) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)
(222695, 0, 1220, -828.719970703125, 4371.77978515625, 738.6400146484375, 45114), -- Spell: 222695 (Dalaran Hearthstone) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)
(3561, 0, 0, -9041, 917.65997314453125, 66.69000244140625, 45114), -- Spell: 3561 (Teleport: Stormwind) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)
(348976, 1, 2222, -1864.8599853515625, 5361.6201171875, 4043.449951171875, 45114), -- Spell: 348976 (Teleport to Halls of Atonement -> NORTH) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)
(348975, 1, 2222, -2293.969970703125, 5306.490234375, 4106.58984375, 45114), -- Spell: 348975 (Teleport to Halls of Atonement -> SOUTH) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)
(347650, 0, 2222, -1834.1400146484375, 1322.3499755859375, 5447.97998046875, 45114), -- Spell: 347650 (Oribos Teleport) Efffect: 15 (SPELL_EFFECT_RITUAL_ACTIVATE_PORTAL)
(347657, 0, 2222, -1834.4599609375, 1241.5899658203125, 5268.77978515625, 45114), -- Spell: 347657 (Oribos Teleport) Efffect: 15 (SPELL_EFFECT_RITUAL_ACTIVATE_PORTAL)
(347661, 0, 2222, -1834.4300537109375, 1243.760009765625, 5447.97998046875, 45114), -- Spell: 347661 (Oribos Teleport) Efffect: 15 (SPELL_EFFECT_RITUAL_ACTIVATE_PORTAL)
(329260, 0, 2222, -1874.0999755859375, 1283.06005859375, 5448.009765625, 45114), -- Spell: 329260 (Oribos Teleport) Efffect: 15 (SPELL_EFFECT_RITUAL_ACTIVATE_PORTAL)
(326498, 0, 2222, -1793.3599853515625, 1283.9599609375, 5449.0498046875, 45114), -- Spell: 326498 (Oribos Teleport) Efffect: 15 (SPELL_EFFECT_RITUAL_ACTIVATE_PORTAL)
(338564, 0, 2222, 3213.780029296875, -1189.6800537109375, 3176.14990234375, 45114), -- Spell: 338564 (Exit Vehicle) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)
(334637, 0, 2222, 3269, -1637.9599609375, 3386.800048828125, 45114), -- Spell: 334637 (Teleport: Necropolis) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)
(337689, 0, 2222, 1888.52001953125, -2611.389892578125, 3398.219970703125, 45114), -- Spell: 337689 (Teleport: Lower Tier) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)
(344587, 0, 2222, -1834.2099609375, 1542.27001953125, 5274.16015625, 45114), -- Spell: 344587 (Teleport: Oribos) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)
(337688, 0, 2222, 1733.0999755859375, -2547.330078125, 3529.570068359375, 45114), -- Spell: 337688 (Teleport: Upper Tier) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)
(126892, 0, 870, 3826.8701171875, 1795.739990234375, 950.3499755859375, 45114), -- Spell: 126892 (Zen Pilgrimage) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)
(329911, 1, 2222, -1702.4000244140625, 1283, 5270.89990234375, 45114), -- Spell: 329911 (Port to Oribos) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)
(361238, 0, 2222, -1865.52001953125, 1314.030029296875, 5446.35986328125, 45114), -- Spell: 361238 (Portal to Oribos) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)
(324547, 0, 0, 0, 0, 0, 45114); -- Spell: 324547 (Hearth Kidneystone) Efffect: 13 (SPELL_EFFECT_RITUAL_BASE)


DELETE FROM `creature_template_spell` WHERE (`CreatureID`=171776 AND `Index` IN (1,0)) OR (`CreatureID`=171782 AND `Index` IN (1,0));
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(171776, 1, 335876, 45114), -- 171776
(171776, 0, 335283, 45114), -- 171776
(171782, 1, 335876, 45114), -- 171782
(171782, 0, 335283, 45114); -- 171782


DELETE FROM `npc_vendor` WHERE (`entry`=173022 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=173022 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=173022 AND `item`=3857 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=173022 AND `item`=180733 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=173022 AND `item`=18567 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=173022 AND `item`=160298 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=173022 AND `item`=3466 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=173022 AND `item`=2880 AND `ExtendedCost`=0 AND `type`=1);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(173022, 8, 2901, 0, 0, 1, 0, 0, 45114), -- Mining Pick
(173022, 7, 5956, 0, 0, 1, 0, 0, 45114), -- Blacksmith Hammer
(173022, 6, 3857, 0, 0, 1, 0, 0, 45114), -- Coal
(173022, 5, 180733, 0, 0, 1, 0, 0, 45114), -- Luminous Flux
(173022, 4, 18567, 0, 0, 1, 0, 0, 45114), -- Elemental Flux
(173022, 3, 160298, 0, 0, 1, 0, 0, 45114), -- Durable Flux
(173022, 2, 3466, 0, 0, 1, 0, 0, 45114), -- Strong Flux
(173022, 1, 2880, 0, 0, 1, 0, 0, 45114); -- Weak Flux


DELETE FROM `quest_template` WHERE `ID` IN (59020 /*59020*/, 58833 /*58833*/, 58975 /*58975*/, 59718 /*59718*/, 61967 /*61967*/, 62391 /*62391*/, 61761 /*61761*/, 58505 /*58505*/, 61760 /*61760*/, 61759 /*61759*/, 61758 /*61758*/, 61757 /*61757*/, 61756 /*61756*/, 61755 /*61755*/, 61754 /*61754*/, 61753 /*61753*/, 61752 /*61752*/, 62320 /*62320*/, 61751 /*61751*/, 61750 /*61750*/, 62317 /*62317*/, 61749 /*61749*/, 61748 /*61748*/, 61747 /*61747*/, 61746 /*61746*/, 62297 /*62297*/, 61745 /*61745*/, 61744 /*61744*/, 61743 /*61743*/, 61742 /*61742*/, 64324 /*64324*/, 62414 /*62414*/, 61741 /*61741*/, 61740 /*61740*/, 61739 /*61739*/, 62388 /*62388*/, 58624 /*58624*/, 58608 /*58608*/, 64963 /*64963*/, 58599 /*58599*/, 58472 /*58472*/, 57919 /*57919*/, 58523 /*58523*/, 58504 /*58504*/, 62161 /*62161*/, 57636 /*57636*/, 57475 /*57475*/, 57473 /*57473*/, 57530 /*57530*/, 57470 /*57470*/, 60067 /*60067*/, 60098 /*60098*/, 61246 /*61246*/, 60114 /*60114*/, 61567 /*61567*/, 60044 /*60044*/, 60050 /*60050*/, 61412 /*61412*/, 60510 /*60510*/, 61180 /*61180*/, 61396 /*61396*/, 59916 /*59916*/, 60043 /*60043*/, 59910 /*59910*/, 61145 /*61145*/, 61586 /*61586*/, 63054 /*63054*/, 51706 /*51706*/, 51611 /*51611*/, 52167 /*52167*/, 62866 /*62866*/, 59894 /*59894*/, 59922 /*59922*/, 59921 /*59921*/, 59748 /*59748*/, 59709 /*59709*/, 59700 /*59700*/, 59698 /*59698*/, 59678 /*59678*/, 59659 /*59659*/, 59653 /*59653*/);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestPackageID`, `ContentTuningID`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitGiverModelSceneID`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `QuestSessionBonus`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(59020, 2, 0, 837, 11462, 0, 0, 0, 7, 1, 7, 1, 92600, 0, 0, 0, 0, 0, 1, 0, 574619656, 8192, 0, 0, 0, 0, 0, 0, 0, 181822, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1945, 8, 0, 0, 'The Third Fall of Kel\'Thuzad', 'Remove Kel\'Thuzad from Maldraxxus.', 'The time has come to purge Maldraxxus of treachery.\n\nOur armies are rallied. Our allies stand ready. The machine of war is in motion.\n\nWe must win this battle, or all of the Shadowlands will be lost.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 59020
(58833, 2, 0, 837, 11462, 0, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Calling in All Favors', 'Meet Draka and allies at the House of Rituals.', '$p, the time has come.\n\nWe cannot allow Kel\'Thuzad to wield the Ritualists\' sorcery as a weapon. He must be destroyed.\n\nRally our forces. We march on the House of Rituals!', '', 'Meet Draka and allies at the House of Rituals.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 58833
(58975, 3, 0, 2060, 11510, 109, 0, 0, 5, 1, 0, 0, 0, 331467, 0, 0, 0, 0, 1, 0, 37290240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 12500, 0, 0, 0, 0, 0, 6913, 0, 18446744073709551615, 1579, 8, 0, 0, 'Pest Removal', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 58975
(59718, 3, 0, 837, 10413, 109, 0, 0, 5, 1, 0, 0, 0, 344554, 0, 0, 0, 0, 0, 0, 40435968, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 12500, 0, 0, 0, 0, 0, 6957, 0, 18446744073709551615, 1567, 8, 0, 0, 'Parasol Peril', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 59718
(61967, 3, 0, 2060, 10534, 109, 0, 0, 5, 1, 0, 0, 0, 344547, 0, 0, 0, 0, 1, 0, 36372736, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 182457, 182458, 0, 0, 9, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 12500, 0, 0, 0, 0, 0, 6684, 0, 18446744073709551615, 1578, 8, 0, 0, 'Remedial Lessons', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61967
(62391, 2, 0, 837, 11462, 0, 0, 58833, 1, 1, 1, 1, 7700, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Mobilize Maldraxxus', 'Increase your Renown.', 'It will be difficult to reach Kel\'Thuzad while he is in his necropolis.\n\nGo now. It will take time for us to muster an army that can pierce his defenses.', '', 'Speak with Draka in the Seat of the Primus.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 62391
(61761, 2, 0, 837, 11462, 0, 0, 62391, 7, 1, 7, 1, 92600, 0, 0, 0, 0, 0, 1, 0, 34603016, 4194304, 0, 0, 0, 0, 0, 0, 0, 183847, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1945, 8, 0, 0, 'The Better Part of Valor', 'Return to the Seat of the Primus.', 'We now have no choice but to make a strategic retreat. Kel\'Thuzad is far too fortified within the necropolis, and if Ninadar is his ally, then the House of Rituals is firmly in his grasp.\n\nIt will take nothing short of an army to save the margrave now.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61761
(58505, 3, 0, 837, 11462, 109, 0, 0, 5, 1, 0, 0, 0, 344573, 0, 0, 0, 0, 1, 0, 40435968, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2410, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 12500, 0, 0, 0, 0, 0, 6928, 0, 18446744073709551615, 1580, 8, 0, 0, 'Planned Demise', 'Eliminate Enemy forces and positions.', 'Our defense is tenuous at best, but the enemy is still hesitant to attack.\n\nAs long as they fear us, they won\'t be probing our defenses. \n\nYou must keep the pressure on the enemy.  Attack their positions all along our line.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 58505
(61760, 2, 19131, 837, 11462, 0, 0, 0, 6, 1, 6, 1, 77150, 0, 0, 0, 0, 0, 1, 0, 33554440, 8192, 0, 0, 0, 96238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1945, 8, 0, 0, 'The Traitor Unmasked', 'Confront Kel\'Thuzad in the Hall of Sorcery.', 'We must waste no time in warning the margrave of Kel\'Thuzad\'s treachery. His reckless toying with forbidden powers could bring ruin to the house and beyond!\n\nLet us put an end to this!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 'Mastermind behind the chaos in the House of Rituals and Maldraxxus.', 'Kel\'Thuzad', '', '', 890, 878, 45114), -- 61760
(61759, 2, 0, 837, 11462, 0, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'A Helpful Hand', 'Navigate the Reanimated Hand to the end of the hall and activate the Corroded Lever.', 'It takes but a simple act of necromancy to animate a hand. Unfortunately, since you will be in closest proximity, you must be the one to command it.\n\nWhen you are ready, I will reanimate the hand. Once you have control, use it to pull the lever at the end of the hall. \n\nCouldn\'t be simpler, right?', '', 'Speak with Balmedar in the Vault of Souls.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61759
(61758, 2, 0, 837, 11462, 0, 0, 61759, 3, 1, 3, 1, 30900, 0, 0, 0, 0, 0, 1, 0, 37814280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Improvised Implements', 'Search your cell for something that can be used to escape.', 'There must be some way we can get ourselves out of these cells. \n\nI don\'t see anything I can use over here. Search your cell for anything that can facilitate our escape.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61758
(61757, 2, 0, 837, 11462, 0, 0, 61758, 3, 1, 3, 1, 30900, 0, 0, 0, 0, 0, 1, 0, 37814280, 4194304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1945, 8, 0, 0, 'Caught in the Act', 'Assist Kel\'Thuzad in completing the ritual.', 'Well then, since it was you who managed to procure the missing reagent, I find it only fair that you assist me with the final ritual! \n\nI can guarantee that this incantation will see you promoted to a full sorcerer of the house!\n\nThe preparations are already made. We can begin as soon as you are ready.', '', 'Speak to Balmedar in the Vault of Souls.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61757
(61756, 2, 0, 837, 11462, 0, 0, 0, 1, 1, 1, 1, 7700, 0, 0, 0, 182779, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Designed to Fail', 'Bring the Bundle of \"Modified\" Reagents to Kel\'Thuzad in the Vault of Souls.', 'The pieces are all coming together. The kyrian, the Paths of the First Ones, and runes of domination? \n\nKel\'Thuzad is looking to breach the Maw!\n\nWe cannot allow this to happen! The Maw has been locked away from the Shadowlands for good reason. Opening that floodgate could be catastrophic!\n\nThe baron is too powerful to confront headlong, so we will stop his ritual instead. Return to him with his reagents. I have made some \"modifications\" that should provide a calamitous end to his scheme.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61756
(61755, 2, 0, 837, 11462, 0, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1945, 8, 0, 0, 'Blinding the Brokers', 'Kill $1oa broker witnesses in the Scaplian Ridge.', 'We cannot allow Kel\'Thuzad to discover who stopped his shipment. \n\nNone must be left to tell the tale of what transpired here.', '', 'Return to Balmedar in the House of Rituals.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61755
(61754, 2, 0, 837, 11462, 0, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 182735, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'No Crate Unturned', 'Search the Broker\'s Crates for Kel\'Thuzad\'s special reagent.', 'That explosion will likely bring onlookers from the House of Rituals. We must act quickly.\n\nSearch through the debris for anything that looks out of the ordinary. It is likely that Kel\'Thuzad\'s mystery reagent won\'t be hard to spot.', '', 'Return to Balmedar in the House of Rituals.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61754
(61753, 2, 0, 837, 11462, 0, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Explosive Schemes', 'Use the Alchemical Explosive to ambush the Broker caravan at the Scaplian Ridge.', 'The brokers deal in objects most exotic and profound. If Kel\'Thuzad requires reagents from them, his ritual must be outside the normal scope of the House of Rituals.\n\nThis mysterious reagent could be the key to unlocking Kel\'Thuzad\'s plan. We must get a hold of this delivery from Oribos. \n\nI have taken the liberty of concocting an alchemical bomb. Use it to ambush the caravan and retrieve whatever they are transporting.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61753
(61752, 2, 19132, 837, 11462, 0, 0, 0, 1, 1, 1, 1, 7700, 0, 0, 0, 182679, 0, 1, 0, 33554440, 4194304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1945, 8, 0, 0, 'The Final Reagent', 'Bring the Bundle of Reagents to Balmedar in the House of Rituals.', 'I have gathered most of the remaining reagents on your master\'s list. All that remains is the special shipment he requested from Oribos.\n\nThe brokers have yet to deliver the shipment. When it arrives, your master will have all he needs to complete his ritual.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61752
(62320, 2, 0, 837, 11462, 0, 0, 0, 6, 1, 5, 1, 77150, 0, 0, 0, 0, 0, 1, 0, 50331656, 0, 0, 0, 0, 0, 0, 0, 0, 183401, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Regalia de Rigueur', 'Collect $1oa Amethystine Powder from the House of Rituals.', 'Ah, if it isn\'t Kel\'Thuzad\'s favorite acolyte? I simply cannot understand how a baron like him would surround himself with such... homely company.\n\nWhen was the last time you even chanced at a looking glass? Those faded robes do your station no justice.\n\nI would take it upon myself to update your drab apparel, if I weren\'t sufferring such a shortage on the house\'s preferred amethystine tint.\n\nYou could always fetch some yourself. The sorcerers usually have some stashed among their tomes and altars.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 62320
(61751, 2, 0, 837, 11462, 0, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Cage Free Spores', 'Collect $1oa Intact Spore Clusters from Escaped Blightrays in the Reagentry.', 'I will need your assistance with the collection of one other reagent for your master. These spore clusters he requests--while normally a trivial matter--will require a bit of work.\n\nYou see, as the veilwing rampaged throughout the Reagentry, it toppled and broke several nearby cages hosting the blightrays from which we harvest the clusters.\n\nYou will have to collect them through more... conventional means. \n\nThe clusters are fragile, however, so try not to damage them while subduing the creatures.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61751
(61750, 2, 0, 837, 11462, 0, 0, 0, 6, 1, 6, 1, 77150, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 96411, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Heart of the Forest', 'Collect a Veilwing\'s Heart from the Elusive Veilwing in the House of Rituals.', 'The baron requests a veilwing\'s heart, but procuring one is going to be something of a problem. \n\n<Jor\'dan gestures to the disarray nearby.>\n\nAs you can plainly see, one of our sorcerers proved incapable of restraining the beast. I regret to inform you that our only specimen has escaped.\n\nIt cannot have gone far, though. If you follow its tracks you should be able to catch up with it and retrieve the heart yourself.\n\nI assure you the baron will not be able to perform his ritual without it.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 'A magnificent specimen whose heart is needed for Kel\'Thuzad\'s ritual.', 'Elusive Veilwing', '', '', 890, 878, 45114), -- 61750
(62317, 2, 0, 837, 11462, 1, 3, 0, 6, 1, 6, 1, 77150, 0, 0, 0, 0, 0, 1, 0, 33619976, 0, 0, 0, 0, 98698, 0, 0, 0, 183397, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Casting Doubt', 'Defeat Sorcerer Vutral in the Vault of Souls.', '<A note has been left here for Kel\'Thuzad. It does not appear that he has read it.>\n\nBaron, I do not trust your new favorite acolyte. Something has been off about them ever since they returned from their ritual with the Kyrian remains.\n\nYour work is too important to allow such discrepancies. The acolyte should be disposed of.\n\nFaithfully,\n\nSorcerer Vutral', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 'A necromancer whose suspicions could unravel your plans in the House of  Rituals.', 'Sorcerer Vutral', '', '', 890, 878, 45114), -- 62317
(61749, 2, 0, 837, 11462, 0, 0, 0, 1, 1, 1, 1, 7700, 0, 0, 0, 0, 0, 1, 0, 33554440, 4194304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Necessary Ingredients', 'Speak with Jor\'dan the Powerful in the Reagentry.', 'As you are well aware, a ritual of this complexity requires several reagents. I have asked that Carver Jor\'dan prepare what I\'ll need.\n\nSeek him out in the Reagentry, and provide whatever assistance he requests.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61749
(61748, 2, 0, 837, 11462, 0, 0, 0, 3, 1, 3, 1, 30900, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'The Hall of Tomes', 'Collect the required volumes from the Hall of Tomes and return them to Kel\'Thuzad in the Vault of Souls.', 'Very well, you can have your list. The volumes you seek can be found in the Hall of Tomes.\n\nNow, run back to your master like a good little pet.', '', 'Return to Kel\'Thuzad in the Vault of Souls.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61748
(61747, 2, 0, 837, 11462, 0, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Errant Enchantments', 'Retrieve $1oa Errant Quills and $2oa Rampant Grimoires in the Grimoirium.', 'The House of Rituals is a place of constant study. Every day, new incantations and formulae are concocted to further the arts of necromancy. \n\nIt can be difficult to keep track of such innovation. To aid in cataloguing our progress, our sorcerers have applied the use of enchanted quills and parchment. Unfortunately, if not properly stored, these implements tend to run amok. \n\nOf course, they were not properly stored.  Find the implements and return them to where they belong.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61747
(61746, 2, 0, 837, 11462, 0, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Cantrip Collections', 'Collect $1oa Overdue Scrolls from Necrotic Acolytes in the Grimoirium.', 'One of the... more regrettable duties of the Mistress of Tomes is the collation and maintenance of our scroll library. Unfortunately, many of our acolytes are less than prompt when it comes to returning items they have borrowed, which requires me to seek them out and retrieve them myself.\n\nOf course, this is far too menial a task for a baroness, but that is why lackeys like you exist.\n\nGo, and retrieve my scrolls. Feel free to use whatever persuasive means you have at your disposal.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61746
(62297, 2, 0, 837, 11462, 0, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 183394, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'A Fatal Failure', 'Kill $1oa Fatal Coalescences in the House of Rituals.', 'Acolyte, we could use a hand here!\n\nIt seems one of your fellow pupils botched their ritual in spectacular fashion. Now destructive necromantic energies are running rampant throughout the house.\n\nThis threat must be dealt with. Can you assist?', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 62297
(61745, 2, 0, 837, 11462, 0, 0, 0, 1, 1, 1, 1, 7700, 0, 0, 0, 0, 0, 1, 0, 33554440, 4194304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Mistress of Tomes', 'Speak with Baroness Ninadar in the Grimoirium.', 'The kyrian will no doubt make a worthy sacrifice for our ritual, but I am not entirely versed with the magics of his kind. I have requested that the Baroness Ninadar assemble a list of appropriate literature, so that I can ensure my ritual will have the desired effect.\n\nAs you know, the baroness enjoys exploiting her title, so expect to be faced with some manner of mundane tasks in exchange for her cooperation. \n\nReturn when you have procured the tomes, acolyte.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61745
(61744, 2, 0, 837, 11462, 0, 0, 0, 3, 1, 3, 1, 30900, 0, 0, 0, 0, 0, 1, 0, 570425352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1945, 8, 0, 0, 'The Baron\'s Plan', 'Walk with Kel\'Thuzad.', 'You have done well in my service, Nelesis. When the time has come to take my rightful place, you will be well rewarded.\n\nUntil then, I will require your utmost devotion and secrecy.\n\nOur preparations are almost complete. Come, walk with me, and I will show you the splendor of our works.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61744
(61743, 2, 0, 837, 11462, 0, 0, 0, 1, 1, 1, 1, 7700, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'The Pupil Returns', 'Meet Kel\'Thuzad within the Vault of Souls.', 'Now that you have your disguise--and I have assurance of your loyalty--it is time you reported to your new master.\n\nFind Kel\'Thuzad within the Vault of Souls. Do whatever tasks he requires of you, but keep your eyes open for anything untoward.\n\nMy oculus will continue to accompany you so that I can provide guidance when the time is right.\n\nWe will uncover this new baron\'s true intentions.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61743
(61742, 2, 0, 837, 11462, 0, 0, 0, 3, 1, 3, 1, 30900, 0, 0, 0, 0, 0, 1, 0, 37748744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'A Fitting Guise', 'Meet Balmedar in the Hall of Blades at the House of Rituals.', 'The ritual to complete your disguise should be quite simple with the assistance of my oculus. Even a $c like you should be able to manage it.\n\nWhen you are ready, simply hold the empowered crystal above Nelesis\'s corpse. My oculus will do the rest.', '', 'Meet Balmedar in the House of Rituals.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61742
(64324, 2, 0, 837, -576, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 100663296, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Necrolord Veteran', 'Meet with Zo\'sorg in the Enclave in Oribos.', 'The might of the Necrolords grows thanks to you, $n.\n\nYour accomplishments have not gone unnoticed, even beyond the borders of Maldraxxus.\n\nTales of your victories have echoed through the halls of Oribos. Zo\'sorg, the Master of Conflict, has requested a meeting with you in the Enclave.\n\nThey have a keen interest in the art of war. I suggest you don\'t keep them waiting.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 64324
(62414, 2, 0, 837, 11462, 0, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Burying Suspicion', 'Kill $1oa Lichsworn forces outside the House of Rituals.', 'It will do us no good to disguise yourself as Nelesis if word reaches Kel\'Thuzad that she was slain. \n\nYou must ensure that no one who sees you enter the cave survives.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 62414
(61741, 2, 0, 837, 11462, 0, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1945, 8, 0, 0, 'Pilfered Power', 'Drain anima from the Kyrian Spoils in the House of Rituals to fill the maldracite crystal.', 'The illusion ritual will require a substantive amount of anima to complete. Since such a resource isn\'t simply lying around these days, we will need to take some.\n\nThe abominations from the House of Constructs recently arrived with a delivery of anima-rich spoils from the raid on Bastion. \n\nUse the maldracite crystal I\'ve included in the parcel to extract enough anima for our ritual.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61741
(61740, 2, 0, 837, 11462, 0, 0, 0, 6, 1, 6, 1, 77150, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 95991, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Playing Favorites', 'Defeat Acolyte Nelesis and bring her corpse back to the tower near Scaplian Ridge.', 'We will have to construct an illusion to allow you entry into the House of Rituals. However, not just any illusion will do. In order to join Kel\'Thuzad\'s inner circle, we require something... specific.\n\nWe\'re going to need a body.\n\nFortunately for us, one of the baron\'s favorite acolytes is performing a ritual outside of the house itself. You\'ll need to fight your way to her, but of that I\'m sure you\'re capable.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 'A favorite necromancer of the barons. Performing a dark ritual nearby.', 'Acolyte Nelesis', '', '', 890, 878, 45114), -- 61740
(61739, 2, 0, 837, 11462, 0, 0, 0, 1, 1, 1, 1, 7700, 0, 0, 0, 0, 0, 1, 0, 37748744, 4202496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'The Wayward Baron', 'Open Balmedar\'s Supplies at the tower near the Scaplian Ridge.', 'It has come to my attention that you seek to uncover a plot by the baron Kel\'Thuzad. \n\nThat upstart has been a thorn in my side since he arrived at the House of Rituals. Not only did he pilfer my rightfully earned title, he has since shut me out of the house\'s dealings.\n\nI have yet to find evidence that would mar Sin\'dane\'s adoration for her new baron, and thus I offer an arrangement. I grant you access to the House of Rituals, and in return you help me bring down Kel\'Thuzad.\n\nDo we have an accord?', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61739
(62388, 2, 0, 837, -576, 0, 0, 0, 1, 1, 1, 1, 7700, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'House of Rituals', 'Increase your Renown.', 'The Ritualists are the ones behind this war. Every act of treason has been committed under their orders.\n\nWe cannot defeat their sorcery with strength of arms alone. Victory will hinge on our knowledge of what they are plotting.\n\nContinue to bolster our forces. I will look for a way to infiltrate the House of Rituals.', '', 'Speak with Draka in the Seat of the Primus.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 62388
(58624, 2, 19128, 837, 0, 0, 0, 62388, 7, 1, 7, 1, 92600, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1945, 8, 0, 0, 'Pauldrons of Imperium', 'Return to the Seat of the Primus with the Pauldrons of Imperium.', 'Now we know who is responsible for the unrest in Maldraxxus.\n\nIf Kel\'Thuzad has allied with the Banished One, then he wields greater power than anyone realizes. \n\nWe must lay siege to the House of Rituals, but we need time to prepare. Attacking without a flawless strategy will only ensure our defeat.\n\nFor now, return the pauldrons to the Seat of the Primus. I will meet you there.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 58624
(58608, 2, 0, 837, 11462, 0, 0, 58624, 6, 1, 6, 1, 77150, 0, 0, 0, 0, 0, 1, 0, 4194312, 8192, 0, 0, 0, 96858, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'It\'s Treason, Then', 'Kill Lady Ouix\'ara.', 'We\'ve halted their efforts, but we still have more to do.\n\nSin\'dane must have sent someone to oversee the encampment.\n\nFind and slay whoever is in charge. Only then can we be sure their work has ended.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 'The hand of Sin\'dane in Revendreth--and a baroness hopeful.', 'Lady Ouix\'Ara', '', '', 890, 878, 45114), -- 58608
(64963, 2, 0, 2043, 10413, 0, 0, 0, 0, 1, 0, 1, 0, 360030, 0, 0, 187822, 0, 1, 0, 36175872, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 187822, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'A Defector\'s Request', 'Deliver the missive to Duchess Mynx in Keeper\'s Respite in Korthia.', '<Unrolling the scroll, you can make out that it\'s a coded arms requisition from the Maldraxxi of Death\'s End to their venthyr allies... all servants of the Jailer.\n\nSurely someone among the Death\'s Advance in Korthia will be able to help you fully break the code and learn exactly what they were planning.>', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 64963
(58599, 2, 0, 837, -576, 0, 0, 58608, 6, 1, 6, 1, 77150, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1945, 8, 0, 0, 'Drive A Dredge Between Them', 'Kill the 3 large dredgers.', 'First, we ruin their operation. Questions can come later.\n\nI scouted from the overlook as we rode in. Necromancers charge crystals full of siphoned anima. Three dredgers stack them onto carts.\n\nKill those dredgers and everything will grind to a halt.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 58599
(58472, 2, 0, 837, -576, 0, 0, 58608, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 38797320, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'A Farewell to Arms', 'Destroy the Maldraxxi encampment at Death\'s End.', 'The Maldraxxi toil away just behind us. I care not if you consider them allies or traitors, so long as you remove them from Revendreth.\n\nDestroy their encampment. Purge it from our soil, and ensure such an affront never occurs again.\n\nThe means are not important. All that matters is that these heretics remember the consequences of trifling with true power.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 58472
(57919, 2, 0, 1426, 10413, 0, 0, 0, 6, 1, 6, 1, 77150, 344190, 0, 0, 0, 0, 1, 0, 39845896, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2439, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 10000, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'An Abuse of Power', 'Subjugate the Abused Soul.', 'The souls have suffered tremendously under the Lord Chamberlain.\n\nWe venthyr subjugate souls to our will so that we may lead each to the absolution it requires--willing or not.\n\nThe Lord Chamberlain, however, has been using our relics and rituals to abuse the souls under his authority. He binds the souls to their sinstones, perverting their very essence!\n\nUse these ritual chains on the abused soul and subjugate it to your will. We must attempt to absolve it.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 57919
(58523, 2, 0, 837, -576, 0, 0, 0, 3, 1, 3, 1, 30900, 0, 0, 0, 0, 0, 1, 0, 37748744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'You\'re Dead To Me', 'Follow the Accuser to the Maldraxxi encampment.', 'Your cooperation is expected, but I await results.\n\nOur reconnaissance has revealed a Maldraxxi encampment in the Endmire. We speculate that your kind have been siphoning the Master\'s stockpiles of anima.\n\nI have called for a carriage to take us there. Let us make haste.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 58523
(58504, 2, 0, 837, -576, 0, 0, 0, 1, 1, 1, 1, 7700, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Accusatory Missive', 'Meet with the Accuser in the Halls of Atonement in Revendreth.', 'We have received word from Revendreth. It seems that Maldraxxi conspirators have been found skulking within their realm.\n\nAn emissary from Sinfall wishes to discuss the anima reserves we discovered. \n\nJoin me. We depart immediately.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 58504
(62161, 2, 0, 837, -576, 0, 0, 0, 1, 1, 1, 1, 7700, 0, 0, 0, 0, 0, 1, 0, 4194312, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Blood from a Bone', 'Increase your Renown.', 'I want nothing more than to make for Revendreth immediately... but it seems they have their own challenges to face.\n\nAll know of the mark we left on Bastion. The venthyr are sure to be wary of allowing us into their realm.\n\nOnce again, we must turn to you. Your renown across the Shadowlands has earned you the trust of many. Now, we need the trust of Revendreth.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 62161
(57636, 2, 19130, 837, 11462, 0, 0, 0, 7, 1, 7, 1, 92600, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1945, 8, 0, 0, 'Pride of Place', 'Place the Mantle of the Primus.', 'The Mantle of the Primus. It belongs on his statue.\n\nYou were the one to recover it, so you will have the honor of returning it to its proper place.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 57636
(57475, 2, 0, 837, 11462, 0, 0, 57636, 1, 1, 1, 1, 7700, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'The Mantle Returned', 'Return to Draka at the Seat of the Primus.', 'The Mantle of the Primus...\n\nI can hardly believe it. That Gharmal possessed it. That they did not use it against us. That we reclaimed it.\n\nThis could prove vital toward our efforts to restore Maldraxxus. We must return it to Baroness Draka at the Seat of the Primus immediately.', '', 'Return to Draka at the Seat of the Primus.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 57475
(57473, 2, 0, 837, 11462, 0, 0, 57475, 1, 1, 1, 1, 7700, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Prized Possession', 'Open the ornate chest.', 'This chest is different. It\'s larger than the others... but more importantly, it\'s locked.\n\n<Mograine bashes the lock apart.>\n\nNow, let\'s see what\'s inside.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 57473
(57530, 2, 0, 837, 11462, 0, 0, 0, 5, 1, 5, 1, 61750, 339200, 0, 0, 0, 0, 1, 0, 40894472, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Gharmal\'s Tower', 'Search Gharmal\'s Tower.', 'Gharmal collected anything they believed to be an item of power.\n\nWe\'ll need to search the tower. There is almost certainly something here of value to us.', '', 'Speak with Alexandros Mograine at the top of Gharmal\'s Tower at the House of Constructs.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 57530
(57470, 2, 0, 837, 11462, 0, 0, 0, 1, 1, 1, 1, 7700, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'An Abominable Discovery', 'Follow Draka to Gharmal\'s Tower.', '$p. Come with me. I could explain, but it\'s easier to understand if you see it for yourself.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 57470
(60067, 2, 0, 837, 11462, 0, 0, 0, 7, 1, 7, 1, 92600, 0, 0, 0, 0, 0, 1, 0, 570425352, 0, 0, 0, 0, 94473, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1945, 8, 0, 0, 'Pursuit of Justice', 'Defeat Margrave Gharmal.', 'Draka stands ready to unleash the power of the necropolis upon Gharmal. We need only buy her time to focus its weaponry.\n\nWhat we do now, we do for all of us. Bastion and Maldraxxus have both lost much to these fiends.\n\nGharmal will not be defeated easily... but united, our forces will finally bring them to justice!', '', 'Speak with Xandria by Gharmal\'s corpse.', 0, 0, 0, 0, 0, 0, 0, 0, 'The Margrave must be stopped once and for all.', 'Margrave Gharmal', '', '', 890, 878, 45114), -- 60067
(60098, 2, 0, 837, 11462, 0, 0, 60067, 1, 1, 1, 1, 7700, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'The End is Now', 'Meet with Xandria near the central chamber of the House of Constructs.', 'Our forces have control of the House of Constructs, thanks to your intervention.\n\nNow, all that remains is to vanquish their treacherous leader--Margrave Gharmal.\n\nThis battle has been long in the making, $p. I am at your side without hesitation.\n\nLet us confront this monster. We will join Xandria to see Gharmal slain.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 60098
(61246, 2, 0, 837, 11462, 0, 0, 0, 3, 1, 3, 1, 0, 0, 0, 0, 0, 0, 1, 0, 570425608, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Power of the Chosen', 'Destroy the Bilebloat Juggernauts.', 'The necropolis is nearly in position. Now is the time to strike!\n\nWe must force Gharmal into the open together. Join me on my roc, and we will unleash your runeblade\'s power on the juggernauts.\n\nThe Margrave will be unable to ignore their deaths. Once they leave their blighted tower, we can finish them once and for all.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61246
(60114, 2, 0, 837, 11462, 0, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 180899, 0, 1, 0, 301989896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 180899, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Aerial Advantage', 'Grapple $2oa Battlesewn Rocs out of the sky.', 'Gharmal\'s rocs dominate the skies above, striking at our forces as we advance. We cannot move the necropolis into position until they are cleared out!\n\nI would slaughter them myself, but the cowards remain out of reach, and I am not constructed for flight.\n\nYou, however, seem slight enough of build. Take my riding hook and latch onto a roc. \n\nOnce you are atop of one, beat it to a pulp. Worry about the landing later.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 60114
(61567, 2, 0, 837, 11462, 0, 0, 0, 5, 1, 5, 1, 0, 0, 0, 0, 0, 0, 1, 0, 33554696, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Grave Intent', 'Destroy the Southwestern, Northwestern, and Notheastern Astral Projectors.', 'My spies have identified several astral projectors that Margrave Gharmal uses to rally their troops in the Stitchyard.\n\nI do not wish for a swarm of frenzied constructs to descend upon us during the final confrontation. Surely you see the wisdom in cutting their fervor.\n\nSee to it that these projectors are destroyed. We believe them to be along the yard\'s perimeter.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61567
(60044, 2, 0, 837, 11462, 0, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 33554440, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1945, 8, 0, 0, 'Charging The Blade', 'Charge your runeblade by killing enemy constructs in the Stitchyard.', 'We can\'t advance with those juggernauts bombarding our position! I led a strike against the nearest one, but conventional weapons do nothing against their imbued hides.\n\nThankfully, I have an idea.\n\nYour runeblade can\'t deal with them as it stands, but if you could purge Gharmal\'s empowered masses and absorb their essence into the blade...', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 60044
(60050, 2, 0, 837, 11462, 0, 0, 0, 1, 1, 1, 1, 7700, 0, 0, 0, 0, 0, 1, 0, 574619656, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Trouble on the Western Front', 'Fly with Kynthia to report to Alexandros at the Stitchyard.', 'The Ashbringer and your fellow Maldraxxi need reinforcements at the western gate. They are barely holding on!\n\nXandria and my kin will reinforce our position here and push forward towards Gharmal. We must make haste to Mograine--without both flanks, we cannot hope to achieve victory.', '', 'Report to Mograine at the Stitchyard.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 60050
(61412, 2, 0, 837, 11462, 0, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'An Early End', 'Destroy $1oa Inert Butchers.', 'Within the Hall of Chains lie more constructs that are nearly complete. As we speak, the Margrave\'s forces work fervently to graft the last pieces of flesh to their horrific visages.\n\nIf they are allowed to finish their work, then the destruction we have wrought thus far will make little difference in the final conflict. Our flank will be overrun by a fresh wave of horrors, and the day will be lost.\n\nThat must not come to pass. Destroy any of these abominations you encounter.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61412
(60510, 2, 0, 837, 11462, 0, 0, 60050, 6, 1, 6, 1, 77150, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 97711, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1945, 8, 0, 0, 'Descended', 'Slay Woeblade the Atrocity.', 'Though we have stopped the creation of more juggernauts, one of their most vile creations yet draws breath. It was born of one of the most pained souls they took from my temple in Bastion.\n\nAs I flew above their ranks I could hear their surgeons chanting its name above the din of combat--Woeblade. It is an affront to all the kyrian stand for, an atrocity beyond any other.\n\nMark it with the flames of courage when you engage, and we will help you destroy it.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 'A tainted amalgamation of the disciples of Courage.', 'Woeblade', '', '', 890, 878, 45114), -- 60510
(61180, 2, 0, 2060, 11462, 0, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 37748744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Burn Before Reading', 'Collect $1oa Stitchflesh Designs.', 'The scroll you recovered details all manner of horrific ways to \'integrate\' fallen kyrian into Gharmal\'s constructs.\n\nIt is also incomplete. There must be more of these among Stitchflesh\'s remaining followers.\n\nI saw a number of surgeons and their lackeys retreat into the Hall of Chains just ahead as we arrived. I suspect they hold more of these scrolls.\n\nWe must ensure they are never read again.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61180
(61396, 2, 0, 837, 11462, 0, 0, 0, 1, 1, 1, 1, 7700, 0, 0, 0, 181285, 0, 1, 0, 301989896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 181285, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Dark Developments', 'Bring the Abhorrent Design to Artemede.', '<The torn document appears to have been written by Surgeon Stitchflesh.>\n\n...the kyrian flesh improves strength, obedience, and dexterity twofold! Such potential!\n\nNow, if subject number one-three-five succeeds in a proper wing transplant at last...\n\n<It continues on for some time. You should bring this to your kyrian allies.>', '', 'Bring the Abhorrent Design to Artemede outside the Hall of Chains.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61396
(59916, 2, 0, 837, 11462, 0, 0, 60050, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'The Butchers of Bastion', 'Kill $1oa House of Constructs forces in the Separation Chamber.', 'Did these fiends show my kin mercy when they attacked Bastion? When they tore my brothers and sisters limb from limb and used them to create more of these... these monstrosities?!\n\nNo! The butchers of Bastion made clear their hearts that day!\n\nThey deserve only the eternal darkness that awaits them. Ensure that they meet it!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 59916
(60043, 2, 0, 837, 11462, 0, 0, 60050, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 37748744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Justice from Above', 'Destroy $1oa Maldracite Cores.', 'Our forces above cannot fully descend upon this area while the Margrave\'s crystals cover the sky in destructive blasts.\n\nThe Margrave\'s foul butchers work even now to extract the remaining anima from the kyrian they abducted in their assault on Bastion. We must advance at once.\n\nI shall imbue you with the flames of courage so that you may mark the crystals. Once marked, I will destroy them from afar.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 60043
(59910, 2, 0, 837, 11462, 0, 0, 0, 1, 1, 1, 1, 7700, 0, 0, 0, 0, 0, 1, 0, 37748736, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Fight and Flight', 'Fly with Xandria to the House of Constructs.', 'Mograine and Emeni will lead the assault on the western gate. \n\nYou and Xandria will advance from the east. Secure the area and slay all who oppose you. \n\nOnce we have them surrounded, we can strike the final blow against Gharmal.', '', 'Speak with Xandria by the Hall of Chains.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 59910
(61145, 2, 0, 837, 11462, 0, 0, 0, 1, 1, 1, 1, 7700, 0, 0, 0, 0, 0, 1, 0, 37748736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Take The Fight To Them', 'Take the portal to meet Draka aboard the Zerekriss.', 'Our scouts report that Margrave Gharmal gathers their forces at the House of Constructs.\n\nOur necropolis and our new kyrian allies have already begun an aerial assault. I need you to lead our forces on the ground.\n\nMeet me within Zerekriss. We will begin our attack immediately.', '', 'Meet Draka aboard the Zerekriss.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61145
(61586, 2, 0, 837, -576, 0, 0, 0, 1, 1, 1, 1, 7700, 0, 0, 0, 0, 0, 1, 0, 37748744, 4202496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Machinations of War', 'Increase your Renown.', 'With Bastion as our ally, we have the strength to crush Gharmal and the House of Constructs.\n\nWe\'ll gather the supplies for the attack, but our soldiers need a great champion to follow into battle.\n\nProve to them that you are the champion they seek.', '', 'Speak with Draka in the Seat of the Primus.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 61586
(63054, 2, 0, 2060, -576, 0, 0, 59603, 3, 1, 3, 1, 30900, 0, 0, 0, 0, 0, 1, 0, 37748744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Strength in Numbers', 'Activate the Command Table.', 'Every soul in Maldraxxus has the potential for greatness, and we will need all we can muster if we hope to restore order to the Shadowlands.\n\nWith this addition to the sanctum, we can mobilize our forces and give them the chance to prove themselves on the field of battle.\n\nSeek out Merick Feldscar. He will see to the deployment of our soldiers.', '', 'Report to Merick Feldcar at the Seat of the Primus.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 63054
(51706, 3, 0, 464, 8721, 109, 0, 0, 0, 0, 0, 0, 0, 272692, 0, 0, 0, 0, 0, 0, 41484288, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2161, 2157, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 7500, 7500, 0, 0, 0, 0, 5645, 0, 6130900294268439629, 549, 7, 0, 0, 'Deadwood', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 51706
(51611, 3, 0, 464, 8567, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38338560, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2160, 2157, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 7500, 7500, 0, 0, 0, 0, 0, 0, 18446744073709551615, 558, 7, 0, 0, 'Ghost of the Deep', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 51611
(52167, 3, 0, 464, 8567, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4784192, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2160, 2157, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 7500, 7500, 0, 0, 0, 0, 6072, 0, 6130900294268439629, 548, 7, 0, 0, 'Hardcore Raiders', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 52167
(62866, 2, 0, 2060, -576, 0, 0, 0, 0, 1, 6, 1, 0, 348847, 0, 0, 0, 0, 1, 0, 35684360, 2112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1864, 8, 0, 0, 'Return Lost Souls', 'Rescue Souls in the Maw.', 'Maw Walker, I\'m sure you\'ve seen firsthand the souls that continue to pour into the Maw. \n\nWe must act now to cut off the Jailer\'s power, denying him as many souls as possible. That power belongs to the Necrolords.\n\nI shall direct your efforts to save these souls, and help find them a place among the armies of Maldraxxus.\n\nReturn to the Maw and rescue those that you can.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 62866
(59894, 2, 19126, 837, 11462, 0, 0, 61586, 7, 1, 7, 1, 92600, 0, 0, 0, 0, 0, 1, 0, 37748744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1945, 8, 0, 0, 'The Golden Dawn', 'Teleport to the Overlook to meet with Draka.', 'The machinations of war commence. Gharmal\'s crimes are now evident to all of the Shadowlands.\n\nBastion demands vengeance, and we shall share it with them. Only our combined forces will defeat the Constructs once and for all.\n\nMeet Draka at the overlook. Your presence there will help solidify an agreement.', '', 'Check in with Draka on the Overlook.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 59894
(59922, 2, 0, 837, 11462, 0, 0, 0, 1, 1, 1, 1, 7700, 0, 0, 0, 0, 0, 1, 0, 37748736, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Do Not Forget', 'Return to Draka in the Seat of the Primus.', 'The Arbiter\'s judgment was, as always, infallible.\n\nThough Alexandros\'s devotion to the Light is undeniable, it is the memory of his loved ones that truly fuels his strength. He was meant for Maldraxxus, not Bastion.\n\nNonetheless, our reclamation of the temple stands. My vengeance is not yet complete, but now I know that some of the Maldraxxi can still be trusted.\n\nGo now. Return to your leader with news of our victory today.\n\nAnd tomorrow, we shall purge our foes once and for all.', '', 'Return to Draka in the Seat of the Primus.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 59922
(59921, 2, 0, 837, 11462, 0, 0, 0, 6, 1, 6, 1, 77150, 346721, 0, 0, 0, 0, 1, 0, 36700160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1945, 8, 0, 0, 'All I Ever Will Be', 'Reflect on the Scrolls of Remembrance with Alexandros Mograine.', 'This is the site of an ancient battle won by the previous Paragon of Courage. She sacrificed herself to serve the Shadowlands. I only hope my own end will prove as exemplary.\n\nMany of my disciples meditate upon the scrolls here. With them, we remember the foundation of our courage.\n\nAccompany Alexandros as he reflects on his shrines. Aid him in understanding where the source of his courage lies.\n\nHe will learn that this afterlife is not the one suited for him.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 59921
(59748, 2, 0, 837, 11462, 0, 0, 0, 3, 1, 3, 1, 30900, 0, 0, 0, 0, 0, 1, 0, 33554432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'No Peace In Death', 'Talk to the Paragon of Courage with Alexandros.', '$n. I have a favor to ask, if I may.\n\nThis realm... The sense of honor and purpose that guides its denizens calls to me. \n\nMy life was defined by such values. Maldraxxus, for a time, shared them with me... But I returned from the Maw to a land rife with treachery.\n\nI\'d like to speak with the Paragon about Bastion.', '', 'Speak with Xandria at Agthia\'s Repose.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 59748
(59709, 2, 0, 837, 11462, 0, 0, 0, 1, 1, 1, 1, 7700, 0, 0, 0, 0, 0, 1, 0, 570425344, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Afterlife Goes On', 'Fly with Xandria to the entrance of the Temple of Courage.', 'A new dawn shines on Bastion. I had my reservations, but you have proven that honor yet remains in Maldraxxus.\n\nTake my hand once more. I will return you to the temple\'s entrance.\n\nLet all Maldraxxi know of our victory. And for the sake of peace, ensure that this never happens again.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 59709
(59700, 2, 19125, 837, 11462, 0, 0, 59709, 6, 1, 6, 1, 77150, 0, 0, 0, 0, 0, 1, 0, 574619648, 8192, 0, 0, 0, 95849, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 1945, 8, 0, 0, 'The Last Labor', 'Slay Baroness Antolyte.', 'The evil that threatens Bastion crumbles beneath us. But if we allow this cruel baroness to evade justice, we have not won this day.\n\nShe cowers in the necropolis above, casting her shadow on this once sacred temple.\n\nWe will pull the dagger from our backs. This wound will heal.', '', 'Speak with Xandria inside of Zolramus.', 0, 0, 0, 0, 0, 0, 0, 0, 'Baroness of the House of Constructs. Commander of the Maldraxxi reinforcements.', 'Baroness Antolyte', '', '', 890, 878, 45114), -- 59700
(59698, 2, 0, 837, 11462, 0, 0, 59700, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Wipe the Slate Clean', 'Fly with Xandria and slay Maldraxxi.', 'At last, the skies belong to us once more... and in those skies, the storm of our vengeance brews.\n\nCome, you who claim to be true Maldraxxi. You wish to right the wrongs of those you once called allies?\n\nRain your justice upon them! Show no quarter!', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 59698
(59678, 2, 0, 837, 11462, 0, 0, 0, 5, 1, 5, 1, 61750, 0, 0, 0, 0, 0, 1, 0, 37748744, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Sustain, In Vain', 'Disable $1oa Necrotic Portals.', 'These turncoats have kept busy. They\'ve opened more portals around the area, allowing themselves to replenish their numbers with little trouble.\n\nEven with her might, the Paragon cannot eliminate an endless army. Let us destroy these portals. Without reinforcements to sustain this contingent, it will surely fall.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 59678
(59659, 2, 0, 837, 11462, 0, 0, 0, 6, 1, 6, 1, 77150, 0, 0, 0, 0, 0, 1, 0, 33554440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Aerial Absolution', 'Slay the three befoulers.', 'My kyrian would have attempted to retaliate by now, but these vile interlopers are a devious sort.\n\nTheir necromancers pollute the air, tainting it with foul power that corrodes our very wings.\n\nI cannot advance an assault until they are eradicated. Deal with these befoulers, and I will deliver retribution to the rest.', '', 'Regroup with Xandria at the Necrotic Wake.', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114), -- 59659
(59653, 2, 0, 837, 11462, 0, 0, 0, 3, 1, 3, 1, 30900, 0, 0, 0, 0, 0, 1, 0, 574619648, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 18446744073709551615, 0, 8, 0, 0, 'Don\'t Cross Courage', 'Cross the breach with Xandria.', 'We have rendered the enemy holdouts defenseless. My disciples will begin preparations to purge the corruption that your errant kind have left on our home.\n\nBut more still remain in the inner sanctum of the temple. Their defenses prevent us from flying in en masse, but I can secure a foothold myself. We will cross the breach and annihilate them.', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 45114); -- 59653


DELETE FROM `quest_objectives` WHERE `ID` IN (408977 /*408977*/, 408979 /*408979*/, 395351 /*395351*/, 407736 /*407736*/, 404547 /*404547*/, 395236 /*395236*/, 396826 /*396826*/, 396827 /*396827*/, 407051 /*407051*/, 407047 /*407047*/, 407041 /*407041*/, 406887 /*406887*/, 407695 /*407695*/, 394369 /*394369*/, 394368 /*394368*/, 394367 /*394367*/, 407541 /*407541*/, 407540 /*407540*/, 407531 /*407531*/, 407530 /*407530*/, 407526 /*407526*/, 407525 /*407525*/, 407524 /*407524*/, 407523 /*407523*/, 407515 /*407515*/, 407512 /*407512*/, 407511 /*407511*/, 407510 /*407510*/, 407357 /*407357*/, 407335 /*407335*/, 407337 /*407337*/, 407336 /*407336*/, 407352 /*407352*/, 407351 /*407351*/, 407349 /*407349*/, 407645 /*407645*/, 407310 /*407310*/, 407309 /*407309*/, 407644 /*407644*/, 407278 /*407278*/, 407277 /*407277*/, 407276 /*407276*/, 407275 /*407275*/, 407161 /*407161*/, 407160 /*407160*/, 407159 /*407159*/, 407158 /*407158*/, 407131 /*407131*/, 407640 /*407640*/, 407079 /*407079*/, 407068 /*407068*/, 407728 /*407728*/, 407724 /*407724*/, 407723 /*407723*/, 407052 /*407052*/, 407043 /*407043*/, 407042 /*407042*/, 406889 /*406889*/, 407688 /*407688*/, 407080 /*407080*/, 406870 /*406870*/, 394468 /*394468*/, 398074 /*398074*/, 394450 /*394450*/, 394449 /*394449*/, 394448 /*394448*/, 394322 /*394322*/, 394321 /*394321*/, 394324 /*394324*/, 394320 /*394320*/, 394323 /*394323*/, 394319 /*394319*/, 393595 /*393595*/, 393594 /*393594*/, 394443 /*394443*/, 395262 /*395262*/, 407313 /*407313*/, 406845 /*406845*/, 406844 /*406844*/, 406843 /*406843*/, 406842 /*406842*/, 406841 /*406841*/, 406840 /*406840*/, 397759 /*397759*/, 397992 /*397992*/, 406592 /*406592*/, 406591 /*406591*/, 406590 /*406590*/, 406589 /*406589*/, 406584 /*406584*/, 406583 /*406583*/, 397681 /*397681*/, 405402 /*405402*/, 406581 /*406581*/, 406579 /*406579*/, 406578 /*406578*/, 406325 /*406325*/, 406324 /*406324*/, 406323 /*406323*/, 406322 /*406322*/, 405479 /*405479*/, 405478 /*405478*/, 405477 /*405477*/, 405459 /*405459*/, 405458 /*405458*/, 405457 /*405457*/, 405456 /*405456*/, 397524 /*397524*/, 405836 /*405836*/, 398402 /*398402*/, 405369 /*405369*/, 397213 /*397213*/, 397676 /*397676*/, 397185 /*397185*/, 405266 /*405266*/, 407177 /*407177*/, 409130 /*409130*/, 336874 /*336874*/, 336873 /*336873*/, 336872 /*336872*/, 336871 /*336871*/, 336870 /*336870*/, 336458 /*336458*/, 385847 /*385847*/, 340712 /*340712*/, 340711 /*340711*/, 340710 /*340710*/, 340709 /*340709*/, 340708 /*340708*/, 338205 /*338205*/, 408877 /*408877*/, 397182 /*397182*/, 397181 /*397181*/, 397228 /*397228*/, 397226 /*397226*/, 397225 /*397225*/, 397224 /*397224*/, 397221 /*397221*/, 396906 /*396906*/, 396814 /*396814*/, 396798 /*396798*/, 396799 /*396799*/, 396796 /*396796*/, 396795 /*396795*/, 396794 /*396794*/, 396766 /*396766*/, 397761 /*397761*/, 396768 /*396768*/, 396767 /*396767*/, 396701 /*396701*/, 396677 /*396677*/);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
(408977, 59020, 0, 3, 2, 175557, 1, 4, 0, 0, 'Use portal to exit Exoramas', 45114), -- 408977
(408979, 59020, 19, 2, 3, 22090, 0, 0, 0, 0, 'Return to Baroness Draka at the Seat of the Primus', 45114), -- 408979
(395351, 59020, 0, 1, 0, 175554, 1, 2, 0, 0, 'Remove Kel\'Thuzad from Maldraxxus', 45114), -- 395351
(407736, 59020, 0, 0, 1, 174268, 1, 0, 0, 0, 'Speak to Baroness Draka', 45114), -- 407736
(404547, 58975, 0, 1, 1, 170182, 12, 0, 0, 0, 'Mature Gorm slain', 45114), -- 404547
(395236, 58975, 0, 0, 0, 163212, 6, 0, 0, 0, 'Burrowing Mite extracted', 45114), -- 395236
(396826, 59718, 0, 1, 0, 165852, 1, 0, 0, 0, 'Land safely with parasol', 45114), -- 396826
(396827, 59718, 2, 0, 1, 349278, 1, 0, 0, 0, '', 45114), -- 396827
(407051, 61967, 1, 3, 3, 182477, 5, 2, 1, 0, '', 45114), -- 407051
(407047, 61967, 0, 2, 2, 156327, 1, 2, 0, 0, 'Speak to Voitha', 45114), -- 407047
(407041, 61967, 0, 1, 1, 156364, 15, 0, 0, 0, 'Manifestations of Pride slain', 45114), -- 407041
(406887, 61967, 0, 0, 0, 173426, 3, 0, 0, 0, 'Ancient Instructors restored', 45114), -- 406887
(407695, 62391, 14, 0, 1, 87458, 1, 0, 0, 0, 'Reach Renown 22', 45114), -- 407695
(394369, 58505, 1, 2, 2, 174233, 1, 0, 1, 0, '', 45114), -- 394369
(394368, 58505, 1, 1, 1, 174232, 1, 0, 1, 0, '', 45114), -- 394368
(394367, 58505, 1, 0, 0, 174231, 1, 0, 1, 0, '', 45114), -- 394367
(407541, 61760, 0, 1, 1, 173832, 1, 2, 0, 0, '', 45114), -- 407541
(407540, 61760, 0, 0, 0, 172923, 1, 0, 0, 0, 'Confront Kel\'Thuzad', 45114), -- 407540
(407531, 61759, 2, 1, 1, 357170, 1, 2, 0, 0, 'Open the cells', 45114), -- 407531
(407530, 61759, 0, 0, 0, 173809, 1, 0, 0, 0, 'Help Balmedar animate the hand', 45114), -- 407530
(407526, 61758, 2, 3, 3, 357831, 1, 28, 0, 0, '', 45114), -- 407526
(407525, 61758, 2, 2, 2, 357832, 1, 28, 0, 0, '', 45114), -- 407525
(407524, 61758, 2, 1, 1, 357833, 1, 28, 0, 0, '', 45114), -- 407524
(407523, 61758, 2, 0, 0, 357834, 1, 0, 0, 0, 'Find something to help you escape', 45114), -- 407523
(407515, 61757, 0, 3, 3, 172923, 1, 0, 0, 0, 'Witness Kel\'Thuzad\'s ritual', 45114), -- 407515
(407512, 61757, 2, 2, 2, 357756, 4, 2, 0, 0, 'Open the Anima Coffers', 45114), -- 407512
(407511, 61757, 2, 1, 1, 357757, 1, 0, 0, 0, 'Place the Veilwing Heart', 45114), -- 407511
(407510, 61757, 2, 0, 0, 357168, 2, 0, 0, 0, 'Burn the Spore Clusters', 45114), -- 407510
(407357, 61756, 1, 0, 0, 182779, 1, 16, 1, 0, '', 45114), -- 407357
(407335, 61755, 0, 0, 0, 173652, 8, 0, 0, 0, 'Broker witnesses slain', 45114), -- 407335
(407337, 61754, 1, 1, 1, 182734, 8, 28, 1, 0, '', 45114), -- 407337
(407336, 61754, 0, 0, 0, 173674, 1, 0, 0, 0, 'Mysterious reagent found', 45114), -- 407336
(407352, 61753, 0, 1, 1, 173693, 1, 2, 0, 0, 'Hide and wait for the caravan', 45114), -- 407352
(407351, 61753, 2, 0, 0, 357686, 1, 0, 0, 0, '', 45114), -- 407351
(407349, 61752, 1, 0, 0, 182679, 1, 16, 1, 0, '', 45114), -- 407349
(407645, 62320, 1, 0, 0, 183400, 10, 0, 1, 0, '', 45114), -- 407645
(407310, 61751, 1, 0, 0, 182678, 6, 0, 1, 0, '', 45114), -- 407310
(407309, 61750, 1, 0, 0, 182676, 1, 0, 1, 0, '', 45114), -- 407309
(407644, 62317, 0, 0, 0, 174031, 1, 0, 0, 0, '', 45114), -- 407644
(407278, 61748, 1, 3, 3, 182645, 1, 0, 1, 0, '', 45114), -- 407278
(407277, 61748, 1, 2, 2, 182644, 1, 0, 1, 0, '', 45114), -- 407277
(407276, 61748, 1, 1, 1, 182643, 1, 0, 1, 0, '', 45114), -- 407276
(407275, 61748, 1, 0, 0, 182642, 1, 0, 1, 0, '', 45114), -- 407275
(407161, 61747, 0, 3, 3, 173564, 6, 28, 0, 0, '', 45114), -- 407161
(407160, 61747, 0, 2, 2, 173563, 4, 28, 0, 0, '', 45114), -- 407160
(407159, 61747, 1, 1, 1, 182616, 6, 0, 1, 0, '', 45114), -- 407159
(407158, 61747, 1, 0, 0, 182615, 4, 0, 1, 0, '', 45114), -- 407158
(407131, 61746, 1, 0, 0, 182609, 6, 0, 1, 0, '', 45114), -- 407131
(407640, 62297, 0, 0, 0, 172606, 7, 0, 0, 0, '', 45114), -- 407640
(407079, 61744, 0, 0, 0, 172923, 1, 0, 0, 0, 'Walk with Kel\'Thuzad', 45114), -- 407079
(407068, 61742, 0, 0, 0, 173435, 1, 0, 0, 0, 'Perform Balmedar\'s ritual', 45114), -- 407068
(407728, 62414, 0, 0, 0, 172627, 10, 0, 0, 0, 'Lichsworn forces', 45114), -- 407728
(407724, 61741, 0, 2, 6, 174219, 5, 92, 0, 20, '', 45114), -- 407724
(407723, 61741, 0, 1, 5, 174218, 10, 92, 0, 10, '', 45114), -- 407723
(407052, 61741, 15, 0, -1, 0, 1, 0, 0, 0, 'Anima Siphoned', 45114), -- 407052
(407043, 61740, 0, 1, 1, 173436, 1, 2, 0, 0, 'Place the corpse in the ritual circle', 45114), -- 407043
(407042, 61740, 0, 0, 0, 173433, 1, 0, 0, 0, '', 45114), -- 407042
(406889, 61739, 2, 0, 0, 357426, 1, 0, 0, 0, 'Locate Balmedar\'s Supplies', 45114), -- 406889
(407688, 62388, 14, 0, 0, 87456, 1, 0, 0, 0, 'Reach Renown 20', 45114), -- 407688
(407080, 58624, 0, 0, 0, 173513, 1, 0, 0, 0, 'Pauldrons of Imperium returned to Primus statue', 45114), -- 407080
(406870, 58608, 1, 1, 1, 182386, 1, 2, 1, 0, '', 45114), -- 406870
(394468, 58608, 0, 0, 0, 161770, 1, 0, 0, 0, '', 45114), -- 394468
(398074, 58599, 0, 3, 3, 168030, 3, 28, 0, 0, 'Dredgers Killed', 45114), -- 398074
(394450, 58599, 0, 2, 2, 161246, 1, 1, 0, 0, '', 45114), -- 394450
(394449, 58599, 0, 1, 1, 161248, 1, 1, 0, 0, '', 45114), -- 394449
(394448, 58599, 0, 0, 0, 161257, 1, 1, 0, 0, '', 45114), -- 394448
(394322, 58472, 0, 5, 2, 161275, 20, 92, 0, 5, '', 45114), -- 394322
(394321, 58472, 2, 4, 1, 339789, 100, 92, 0, 1, '', 45114), -- 394321
(394324, 58472, 0, 3, 4, 161584, 10, 92, 0, 10, '', 45114), -- 394324
(394320, 58472, 0, 2, 0, 161583, 34, 92, 0, 3, '', 45114), -- 394320
(394323, 58472, 0, 1, 3, 161582, 100, 92, 0, 1, '', 45114), -- 394323
(394319, 58472, 15, 0, -1, 0, 1, 16, 0, 0, 'Death\'s End disrupted', 45114), -- 394319
(393595, 57919, 0, 1, 1, 160120, 1, 3, 0, 0, '', 45114), -- 393595
(393594, 57919, 0, 0, 0, 160117, 1, 0, 0, 0, 'Abused Soul subjugated', 45114), -- 393594
(394443, 58523, 0, 1, 1, 163317, 1, 2, 0, 0, 'Reach the Maldraxxi Operation', 45114), -- 394443
(395262, 58523, 0, 0, 0, 163231, 1, 0, 0, 0, 'Enter the Accuser\'s Carriage', 45114), -- 395262
(407313, 62161, 14, 0, 0, 87317, 1, 0, 0, 0, 'Reach Renown 17', 45114), -- 407313
(406845, 57636, 0, 0, 1, 173584, 1, 0, 0, 0, 'Mantle returned to Primus Statue', 45114), -- 406845
(406844, 57473, 1, 0, 1, 182658, 1, 0, 1, 0, 'Chest looted', 45114), -- 406844
(406843, 57530, 0, 2, 4, 169424, 1, 2, 0, 0, 'Investigate the Top Floor', 45114), -- 406843
(406842, 57530, 0, 1, 3, 169441, 1, 2, 0, 0, 'Search the Alchemical Labratory', 45114), -- 406842
(406841, 57530, 0, 0, 2, 168160, 1, 0, 0, 0, 'Search the Storeroom', 45114), -- 406841
(406840, 57470, 0, 0, 0, 158083, 1, 0, 0, 0, 'Investigate Gharmal\'s Tower', 45114), -- 406840
(397759, 60067, 0, 1, 0, 167437, 1, 3, 0, 0, '', 45114), -- 397759
(397992, 60067, 0, 0, 2, 167816, 1, 0, 0, 0, 'Speak to Xandria', 45114), -- 397992
(406592, 61246, 0, 5, 5, 173091, 1, 28, 0, 0, '', 45114), -- 406592
(406591, 61246, 0, 4, 4, 173090, 1, 28, 0, 0, '', 45114), -- 406591
(406590, 61246, 0, 3, 3, 173089, 1, 28, 0, 0, '', 45114), -- 406590
(406589, 61246, 0, 2, 0, 171922, 1, 28, 0, 0, '', 45114), -- 406589
(406584, 61246, 0, 1, 2, 173088, 4, 2, 0, 0, 'Bilebloat Juggernaut destroyed', 45114), -- 406584
(406583, 61246, 0, 0, 1, 173071, 1, 0, 0, 0, 'Speak to Mograine', 45114), -- 406583
(397681, 60114, 0, 1, 2, 171776, 6, 3, 0, 0, '', 45114), -- 397681
(405402, 60114, 0, 0, 3, 171782, 1, 0, 0, 0, 'Battlesewn Roc hooked', 45114), -- 405402
(406581, 61567, 2, 2, 2, 356888, 1, 0, 0, 0, 'Northeastern projector destroyed', 45114), -- 406581
(406579, 61567, 2, 1, 1, 356887, 1, 0, 0, 0, 'Northwestern projector destroyed', 45114), -- 406579
(406578, 61567, 2, 0, 0, 356598, 1, 0, 0, 0, 'Southwestern projector destroyed', 45114), -- 406578
(406325, 60044, 0, 10, 9, 166426, 20, 92, 0, 5, '', 45114), -- 406325
(406324, 60044, 0, 9, 8, 166519, 20, 92, 0, 5, '', 45114), -- 406324
(406323, 60044, 0, 8, 7, 166676, 20, 92, 0, 5, '', 45114), -- 406323
(406322, 60044, 0, 7, 6, 166719, 13, 92, 0, 8, '', 45114), -- 406322
(405479, 60044, 0, 6, 5, 167304, 4, 92, 0, 25, '', 45114), -- 405479
(405478, 60044, 0, 5, 4, 167305, 4, 92, 0, 25, '', 45114), -- 405478
(405477, 60044, 0, 4, 3, 167306, 4, 92, 0, 25, '', 45114), -- 405477
(405459, 60044, 0, 3, 2, 166427, 20, 92, 0, 5, '', 45114), -- 405459
(405458, 60044, 0, 2, 0, 167075, 17, 92, 0, 6, '', 45114), -- 405458
(405457, 60044, 0, 1, 1, 166425, 13, 92, 0, 8, '', 45114), -- 405457
(405456, 60044, 15, 0, -1, 0, 1, 0, 0, 0, 'Runeblade charged', 45114), -- 405456
(397524, 60050, 0, 0, 3, 167063, 1, 0, 0, 0, 'Fly with Kynthia', 45114), -- 397524
(405836, 61412, 0, 0, 1, 172218, 6, 0, 0, 0, 'Inert Butchers destroyed', 45114), -- 405836
(398402, 60510, 0, 0, 1, 168697, 1, 1, 0, 0, '', 45114), -- 398402
(405369, 61180, 1, 0, 0, 180845, 6, 0, 1, 0, '', 45114), -- 405369
(397213, 59916, 0, 0, 0, 166503, 10, 0, 0, 0, 'House of Constructs forces slain', 45114), -- 397213
(397676, 60043, 2, 0, 1, 350922, 5, 0, 0, 0, 'Maldracite Core destroyed', 45114), -- 397676
(397185, 59910, 0, 0, 0, 171552, 1, 0, 0, 0, 'Fly with Xandria', 45114), -- 397185
(405266, 61145, 0, 0, 1, 171482, 1, 0, 0, 0, 'Take the portal to the Zerekriss', 45114), -- 405266
(407177, 61586, 14, 0, 0, 87303, 1, 0, 0, 0, 'Reach Renown 13', 45114), -- 407177
(409130, 63054, 2, 0, 0, 364975, 1, 0, 0, 0, 'Command Table activated', 45114), -- 409130
(336874, 51706, 0, 4, 3, 134211, 200, 92, 0, 0.5, 'Kill Small Wicker and witch', 45114), -- 336874
(336873, 51706, 0, 3, 2, 134189, 100, 92, 0, 1, 'Kill Heavies', 45114), -- 336873
(336872, 51706, 0, 2, 0, 134190, 100, 92, 0, 1, 'Kill Golems', 45114), -- 336872
(336871, 51706, 15, 1, -1, 0, 1, 2, 0, 0, 'Destroy Witch Forces', 45114), -- 336871
(336870, 51706, 0, 0, 4, 134323, 1, 0, 0, 0, 'Use Greater Control Charm', 45114), -- 336870
(336458, 51611, 0, 0, 0, 138288, 1, 0, 0, 0, '', 45114), -- 336458
(385847, 52167, 0, 6, 5, 132086, 9, 92, 0, 12, '', 45114), -- 385847
(340712, 52167, 0, 5, 4, 142810, 10, 92, 0, 10, '', 45114), -- 340712
(340711, 52167, 2, 4, 3, 296164, 17, 92, 0, 6, '', 45114), -- 340711
(340710, 52167, 0, 3, 2, 131306, 15, 92, 0, 7, '', 45114), -- 340710
(340709, 52167, 0, 2, 0, 145535, 25, 92, 0, 4, '', 45114), -- 340709
(340708, 52167, 0, 1, 1, 146408, 25, 92, 0, 4, '', 45114), -- 340708
(338205, 52167, 15, 0, -1, 0, 1, 0, 0, 0, 'Defend Daelin\'s Gate', 45114), -- 338205
(408877, 62866, 0, 0, 0, 175227, 20, 0, 0, 0, 'Rescue Souls from the Maw', 45114), -- 408877
(397182, 59894, 0, 1, 1, 166648, 1, 2, 0, 0, 'Meet with Draka', 45114), -- 397182
(397181, 59894, 0, 0, 0, 166647, 1, 0, 0, 0, 'Take portal to the Overlook', 45114), -- 397181
(397228, 59921, 0, 3, 3, 166754, 1, 3, 0, 0, '', 45114), -- 397228
(397226, 59921, 0, 2, 2, 166749, 1, 2, 0, 0, 'Meditate on the Scroll of Remembrance', 45114), -- 397226
(397225, 59921, 0, 1, 1, 166748, 1, 2, 0, 0, 'Meditate on the Scroll of Remembrance', 45114), -- 397225
(397224, 59921, 0, 0, 0, 166747, 1, 0, 0, 0, 'Meditate on the Scroll of Remembrance', 45114), -- 397224
(397221, 59748, 0, 1, 1, 166745, 1, 2, 0, 0, 'Walk with Xandria to Agthia\'s Repose', 45114), -- 397221
(396906, 59748, 0, 0, 0, 166095, 1, 0, 0, 0, 'Talk with Xandria', 45114), -- 396906
(396814, 59709, 0, 0, 0, 165791, 1, 0, 0, 0, 'Fly with Xandria to the Temple of Courage', 45114), -- 396814
(396798, 59700, 0, 1, 3, 165675, 1, 3, 0, 0, '', 45114), -- 396798
(396799, 59700, 0, 0, 0, 165726, 1, 0, 0, 0, 'Reach the Necropolis with Xandria', 45114), -- 396799
(396796, 59698, 0, 2, 1, 165694, 20, 92, 0, 5, '', 45114), -- 396796
(396795, 59698, 0, 1, 0, 165692, 34, 92, 0, 3, '', 45114), -- 396795
(396794, 59698, 15, 0, -1, 0, 1, 0, 0, 0, 'Mete justice', 45114), -- 396794
(396766, 59678, 2, 0, 0, 349090, 6, 0, 0, 0, 'Necrotic Portal disabled', 45114), -- 396766
(397761, 59659, 0, 3, 3, 167449, 3, 28, 0, 0, '', 45114), -- 397761
(396768, 59659, 0, 2, 2, 165665, 1, 1, 0, 0, '', 45114), -- 396768
(396767, 59659, 0, 1, 1, 165664, 1, 1, 0, 0, '', 45114), -- 396767
(396701, 59659, 0, 0, 0, 165636, 1, 1, 0, 0, '', 45114), -- 396701
(396677, 59653, 0, 0, 0, 165518, 1, 0, 0, 0, 'Cross the breach with Xandria', 45114); -- 396677


DELETE FROM `quest_visual_effect` WHERE (`Index`=0 AND `ID` IN (407736,396826,396827,407051,407047,407041,406887,407531,407523,407515,407161,407160,407159,407158,407068,407052,406870,394322,394321,393595,393594,395262,406844,406843,406842,406841,397759,397992,406584,406583,405402,405456,397524,398402,397213,397676,397185,405266,336871,336870,397181,396906,396814,396798,396794,396766,396677)) OR (`Index`=1 AND `ID` IN (407051,406887,407052,393595,397759,405456,397213,405266)) OR (`Index`=4 AND `ID` IN (407052,405456)) OR (`Index`=3 AND `ID` IN (407052,405456)) OR (`Index`=2 AND `ID` IN (407052,397759,405456)) OR (`Index`=9 AND `ID`=405456) OR (`Index`=8 AND `ID`=405456) OR (`Index`=7 AND `ID`=405456) OR (`Index`=6 AND `ID`=405456) OR (`Index`=5 AND `ID`=405456);
INSERT INTO `quest_visual_effect` (`ID`, `Index`, `VisualEffect`, `VerifiedBuild`) VALUES
(407736, 0, 16176, 45114),
(396826, 0, 15866, 45114),
(396827, 0, 15865, 45114),
(407051, 1, 16008, 45114),
(407051, 0, 15994, 45114),
(407047, 0, 2099, 45114),
(407041, 0, 15396, 45114),
(406887, 1, 15978, 45114),
(406887, 0, 15977, 45114),
(407531, 0, 2099, 45114),
(407523, 0, 14699, 45114),
(407515, 0, 2099, 45114),
(407161, 0, 2100, 45114),
(407160, 0, 2100, 45114),
(407159, 0, 16757, 45114),
(407158, 0, 16756, 45114),
(407068, 0, 2099, 45114),
(407052, 4, 16755, 45114),
(407052, 3, 16754, 45114),
(407052, 2, 16753, 45114),
(407052, 1, 16752, 45114),
(407052, 0, 16751, 45114),
(406870, 0, 15962, 45114),
(394322, 0, 2100, 45114),
(394321, 0, 2100, 45114),
(393595, 1, 13074, 45114),
(393595, 0, 13073, 45114),
(393594, 0, 13073, 45114),
(395262, 0, 14756, 45114),
(406844, 0, 15946, 45114),
(406843, 0, 15946, 45114),
(406842, 0, 15945, 45114),
(406841, 0, 15944, 45114),
(397759, 2, 16846, 45114),
(397759, 1, 16845, 45114),
(397759, 0, 2101, 45114),
(397992, 0, 14711, 45114),
(406584, 0, 15872, 45114),
(406583, 0, 15867, 45114),
(405402, 0, 15810, 45114),
(405456, 9, 15820, 45114),
(405456, 8, 15819, 45114),
(405456, 7, 15818, 45114),
(405456, 6, 15817, 45114),
(405456, 5, 15816, 45114),
(405456, 4, 15815, 45114),
(405456, 3, 15814, 45114),
(405456, 2, 15813, 45114),
(405456, 1, 15812, 45114),
(405456, 0, 15811, 45114),
(397524, 0, 14892, 45114),
(398402, 0, 2101, 45114),
(397213, 1, 14474, 45114),
(397213, 0, 14473, 45114),
(397676, 0, 2100, 45114),
(397185, 0, 15424, 45114),
(405266, 1, 15616, 45114),
(405266, 0, 15615, 45114),
(336871, 0, 9354, 45114),
(336870, 0, 9356, 45114),
(397181, 0, 15825, 45114),
(396906, 0, 14374, 45114),
(396814, 0, 14338, 45114),
(396798, 0, 14329, 45114),
(396794, 0, 16736, 45114),
(396766, 0, 16735, 45114),
(396677, 0, 14305, 45114);


DELETE FROM `quest_reward_display_spell` WHERE (`Idx`=0 AND `QuestID` IN (64324,64963));
INSERT INTO `quest_reward_display_spell` (`QuestID`, `Idx`, `SpellID`, `PlayerConditionID`, `VerifiedBuild`) VALUES
(64324, 0, 356141, 0, 45114),
(64963, 0, 360030, 0, 45114);


DELETE FROM `world_quest` WHERE `id` IN (49096 /*49096*/, 48620 /*48620*/, 49099 /*49099*/, 49091 /*49091*/, 58975 /*58975*/, 61867 /*61867*/, 51651 /*51651*/, 54603 /*54603*/, 61136 /*61136*/, 52938 /*52938*/, 60657 /*60657*/, 61125 /*61125*/, 50513 /*50513*/, 51581 /*51581*/, 62286 /*62286*/, 52880 /*52880*/, 62288 /*62288*/, 54561 /*54561*/, 60991 /*60991*/, 61346 /*61346*/, 51119 /*51119*/, 51706 /*51706*/, 50853 /*50853*/, 63166 /*63166*/, 61337 /*61337*/, 60416 /*60416*/, 51779 /*51779*/, 52892 /*52892*/, 58505 /*58505*/, 60739 /*60739*/, 52250 /*52250*/, 51467 /*51467*/, 51806 /*51806*/, 51709 /*51709*/, 52325 /*52325*/, 62209 /*62209*/, 61816 /*61816*/, 63044 /*63044*/, 60429 /*60429*/, 51064 /*51064*/, 53945 /*53945*/, 54369 /*54369*/, 66695 /*66695*/, 51123 /*51123*/, 51640 /*51640*/, 51619 /*51619*/, 60992 /*60992*/, 61787 /*61787*/, 60990 /*60990*/, 50234 /*50234*/, 51611 /*51611*/, 52167 /*52167*/, 61728 /*61728*/, 62210 /*62210*/, 52873 /*52873*/, 45812 /*45812*/, 50505 /*50505*/, 50601 /*50601*/, 59705 /*59705*/, 62241 /*62241*/, 54623 /*54623*/, 61140 /*61140*/, 52944 /*52944*/, 61667 /*61667*/, 49809 /*49809*/, 59230 /*59230*/, 58918 /*58918*/, 52785 /*52785*/, 61124 /*61124*/, 59827 /*59827*/, 61949 /*61949*/, 51529 /*51529*/, 62539 /*62539*/, 59808 /*59808*/, 61631 /*61631*/, 61565 /*61565*/, 52163 /*52163*/, 60929 /*60929*/, 50861 /*50861*/, 54380 /*54380*/, 50600 /*50600*/, 51758 /*51758*/, 59018 /*59018*/, 52251 /*52251*/, 51672 /*51672*/, 54388 /*54388*/, 59718 /*59718*/, 61353 /*61353*/, 55340 /*55340*/, 51185 /*51185*/, 59703 /*59703*/, 50599 /*50599*/, 51639 /*51639*/, 54540 /*54540*/, 61883 /*61883*/, 60408 /*60408*/, 51608 /*51608*/, 59183 /*59183*/, 51637 /*51637*/, 50857 /*50857*/, 60574 /*60574*/, 62211 /*62211*/, 61103 /*61103*/, 51641 /*51641*/, 54621 /*54621*/, 52884 /*52884*/, 51666 /*51666*/, 50899 /*50899*/, 51153 /*51153*/, 52751 /*52751*/, 59441 /*59441*/, 52988 /*52988*/, 50369 /*50369*/, 61967 /*61967*/, 59599 /*59599*/, 57443 /*57443*/, 60950 /*60950*/, 62235 /*62235*/, 61060 /*61060*/, 61539 /*61539*/, 51454 /*51454*/, 53753 /*53753*/, 51982 /*51982*/, 53717 /*53717*/, 50776 /*50776*/, 53857 /*53857*/, 53712 /*53712*/, 53715 /*53715*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(49096, 21600, 14247, 1), -- 49096
(48620, 604800, 14251, 1), -- 48620
(49099, 21600, 14063, 1), -- 49099
(49091, 21600, 14062, 1), -- 49091
(58975, 86400, 19451, 1), -- 58975
(61867, 86400, 19955, 1), -- 61867
(51651, 86400, 15317, 1), -- 51651
(54603, 86400, 16887, 1), -- 54603
(61136, 86400, 19719, 1), -- 61136
(52938, 86400, 15996, 1), -- 52938
(60657, 86400, 19426, 1), -- 60657
(61125, 86400, 19718, 1), -- 61125
(50513, 86400, 14807, 1), -- 50513
(51581, 86400, 15761, 1), -- 51581
(62286, 604800, 20082, 3), -- 62286
(52880, 86400, 15769, 2), -- 52880
(62288, 604800, 20083, 2), -- 62288
(54561, 86400, 16877, 1), -- 54561
(60991, 86400, 19717, 1), -- 60991
(61346, 86400, 19736, 1), -- 61346
(51119, 86400, 15092, 1), -- 51119
(51706, 86400, 15276, 3), -- 51706
(50853, 86400, 14943, 1), -- 50853
(63166, 86400, 20309, 2), -- 63166
(61337, 86400, 19733, 1), -- 61337
(60416, 259200, 19329, 1), -- 60416
(51779, 86400, 15502, 1), -- 51779
(52892, 86400, 15978, 1), -- 52892
(58505, 86400, 18431, 3), -- 58505
(60739, 86400, 19444, 1), -- 60739
(52250, 86400, 15528, 3), -- 52250
(51467, 86400, 15239, 1), -- 51467
(51806, 86400, 15516, 1), -- 51806
(51709, 86400, 15464, 1), -- 51709
(52325, 86400, 15747, 1), -- 52325
(62209, 86400, 20173, 1), -- 62209
(61816, 604800, 19923, 2), -- 61816
(63044, 86400, 20279, 1), -- 63044
(60429, 259200, 19333, 1), -- 60429
(51064, 86400, 15725, 2), -- 51064
(53945, 86400, 16480, 1), -- 53945
(54369, 86400, 16761, 1), -- 54369
(66695, 604800, 21654, 3), -- 66695
(51123, 86400, 15096, 1), -- 51123
(51640, 86400, 15310, 1), -- 51640
(51619, 86400, 15493, 1), -- 51619
(60992, 86400, 19725, 1), -- 60992
(61787, 86400, 19943, 1), -- 61787
(60990, 86400, 19721, 1), -- 60990
(50234, 86400, 14667, 2), -- 50234
(51611, 86400, 15289, 2), -- 51611
(52167, 86400, 16041, 1), -- 52167
(61728, 86400, 19918, 1), -- 61728
(62210, 86400, 20174, 1), -- 62210
(52873, 86400, 15938, 1), -- 52873
(45812, 21600, 13004, 1), -- 45812
(50505, 86400, 14800, 1), -- 50505
(50601, 259200, 14885, 1), -- 50601
(59705, 86400, 19020, 1), -- 59705
(62241, 86400, 20060, 1), -- 62241
(54623, 86400, 16911, 1), -- 54623
(61140, 86400, 20175, 1), -- 61140
(52944, 604800, 16006, 4), -- 52944
(61667, 86400, 19901, 1), -- 61667
(49809, 345600, 14496, 2), -- 49809
(59230, 86400, 19726, 1), -- 59230
(58918, 86400, 19723, 1), -- 58918
(52785, 86400, 15892, 1), -- 52785
(61124, 86400, 19720, 1), -- 61124
(59827, 86400, 17592, 2), -- 59827
(61949, 86400, 19978, 1), -- 61949
(51529, 86400, 15259, 1), -- 51529
(62539, 86400, 20154, 1), -- 62539
(59808, 86400, 19104, 1), -- 59808
(61631, 86400, 20197, 1), -- 61631
(61565, 86400, 19864, 1), -- 61565
(52163, 604800, 15653, 1), -- 52163
(60929, 86400, 19540, 1), -- 60929
(50861, 86400, 14950, 1), -- 50861
(54380, 86400, 16717, 2), -- 54380
(50600, 259200, 14884, 1), -- 50600
(51758, 86400, 15453, 5), -- 51758
(59018, 604800, 17934, 2), -- 59018
(52251, 86400, 14924, 2), -- 52251
(51672, 86400, 15441, 1), -- 51672
(54388, 86400, 16773, 1), -- 54388
(59718, 86400, 19048, 1), -- 59718
(61353, 86400, 19744, 2), -- 61353
(55340, 86400, 17280, 1), -- 55340
(51185, 86400, 15756, 4), -- 51185
(59703, 86400, 18430, 2), -- 59703
(50599, 259200, 14882, 1), -- 50599
(51639, 86400, 15309, 1), -- 51639
(54540, 86400, 16870, 1), -- 54540
(61883, 86400, 19964, 1), -- 61883
(60408, 259200, 19326, 1), -- 60408
(51608, 86400, 15727, 3), -- 51608
(59183, 86400, 19727, 1), -- 59183
(51637, 86400, 15307, 1), -- 51637
(50857, 86400, 14947, 1), -- 50857
(60574, 86400, 19374, 1), -- 60574
(62211, 86400, 20172, 1), -- 62211
(61103, 86400, 19687, 2), -- 61103
(51641, 86400, 15311, 1), -- 51641
(54621, 86400, 16909, 1), -- 54621
(52884, 86400, 15911, 1), -- 52884
(51666, 86400, 15437, 1), -- 51666
(50899, 86400, 14998, 1), -- 50899
(51153, 86400, 15111, 1), -- 51153
(52751, 86400, 15860, 1), -- 52751
(59441, 86400, 19721, 1), -- 59441
(52988, 86400, 16016, 1), -- 52988
(50369, 86400, 15472, 1), -- 50369
(61967, 86400, 19982, 1), -- 61967
(59599, 86400, 18972, 1), -- 59599
(57443, 86400, 19061, 1), -- 57443
(60950, 86400, 19551, 1), -- 60950
(62235, 86400, 20048, 1), -- 62235
(61060, 86400, 19612, 1), -- 61060
(61539, 86400, 19839, 1), -- 61539
(51454, 86400, 15235, 1), -- 51454
(53753, 25200, 16289, 1), -- 53753
(51982, 25200, 16289, 1), -- 51982
(53717, 25200, 16289, 1), -- 53717
(50776, 86400, 16088, 1), -- 50776
(53857, 25200, 16289, 1), -- 53857
(53712, 25200, 16289, 1), -- 53712
(53715, 25200, 16289, 1); -- 53715



UPDATE `areatrigger_template` SET `VerifiedBuild`=44908 WHERE (`IsServerSide`=0 AND `Id` IN (24448,9225,11420,3921,23811,3153,25371,10133,19538,23491,6700,24045,27415,24351,25375,22173,25568,26930,24003,23903,23953,9397,12740,2947,23299,23297,23403,16446,23341,26053,25548));
UPDATE `areatrigger_template` SET `Type`=3, `Data0`=0, `Data1`=0, `VerifiedBuild`=44908 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Data0`=0, `Data1`=0, `VerifiedBuild`=44908 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Data0`=0, `Data1`=0, `VerifiedBuild`=44908 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Data0`=0, `Data1`=0, `VerifiedBuild`=44908 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Data0`=0, `Data1`=0, `VerifiedBuild`=44908 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=3, `Data0`=0, `Data1`=0, `VerifiedBuild`=44908 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=2, `VerifiedBuild`=44908 WHERE (`IsServerSide`=0 AND `Id` IN (23704,26930));
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `VerifiedBuild`=44908 WHERE (`Id`=24003 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=1, `VerifiedBuild`=44908 WHERE (`Id`=9397 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);


UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20569;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20569;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=22099;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=22098;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=22099;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=22098;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=658;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=22099;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=22098;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19854;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=337;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=21058;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=21058;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=7430, `VerifiedBuild`=44908 WHERE `Id`=5420; -- SpellId : 5740
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=658;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=337;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=7430, `VerifiedBuild`=44908 WHERE `Id`=5420; -- SpellId : 5740
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=658;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=7430, `VerifiedBuild`=44908 WHERE `Id`=5420; -- SpellId : 5740
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=337;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=658;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1543, `VerifiedBuild`=44908 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=7430, `VerifiedBuild`=44908 WHERE `Id`=5420; -- SpellId : 5740
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19513;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19854;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=7430, `VerifiedBuild`=44908 WHERE `Id`=5420; -- SpellId : 5740
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=658;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=21058;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=21058;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=7430, `VerifiedBuild`=44908 WHERE `Id`=5420; -- SpellId : 5740
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19854;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=999, `VerifiedBuild`=44908 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1200, `VerifiedBuild`=44908 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20101;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=23044;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `VerifiedBuild`=44908 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=5000, `VerifiedBuild`=44908 WHERE `Id`=19739; -- SpellId : 323551
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1500, `VerifiedBuild`=44908 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20456;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20456;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20456;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=2148;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=23044;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=813, `VerifiedBuild`=44908 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=21062;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=18036;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1003, `VerifiedBuild`=44908 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=23044;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `VerifiedBuild`=44908 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `VerifiedBuild`=44908 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=18036;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=701, `VerifiedBuild`=44908 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20456;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20456;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=21058;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19513;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20456;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=21058;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=21058;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=21058;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1548, `VerifiedBuild`=44908 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=23044;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19513;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=21058;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=7999, `VerifiedBuild`=44908 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=21058;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=21058;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20569;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20569;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=26930, `ShapeData0`=30, `ShapeData1`=30, `VerifiedBuild`=44908 WHERE `Id`=2147483648; -- SpellId : 0 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=25568, `Shape`=1, `ShapeData0`=6, `ShapeData1`=8, `ShapeData2`=10, `ShapeData3`=6, `ShapeData4`=8, `ShapeData5`=10, `VerifiedBuild`=44908 WHERE `Id`=2147483648; -- SpellId : 0 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=8999, `VerifiedBuild`=44908 WHERE `Id`=20073; -- SpellId : 325647
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19954;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19954;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=21079;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20008;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=22086;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20006;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=22086;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4658;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20006;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3204, `VerifiedBuild`=44908 WHERE `Id`=8661; -- SpellId : 84714
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20008;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=304;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=8999, `VerifiedBuild`=44908 WHERE `Id`=20073; -- SpellId : 325647
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=7066, `VerifiedBuild`=44908 WHERE `Id`=4658; -- SpellId : 190356
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3176, `VerifiedBuild`=44908 WHERE `Id`=8661; -- SpellId : 84714
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19954;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19954;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=21079;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=22086;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20008;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20006;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20008;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=22086;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=304;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=304;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20006;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=8999, `VerifiedBuild`=44908 WHERE `Id`=20073; -- SpellId : 325647
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1945, `VerifiedBuild`=44908 WHERE `Id`=8661; -- SpellId : 84714
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19954;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19954;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=21079;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=22086;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20008;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20006;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20073;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=15000, `VerifiedBuild`=44908 WHERE `Id`=2147802881; -- SpellId : 319233 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23297, `TimeToTargetScale`=15000, `VerifiedBuild`=44908 WHERE `Id`=2147802881; -- SpellId : 319233 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=304;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3105, `VerifiedBuild`=44908 WHERE `Id`=8661; -- SpellId : 84714
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=25568, `Shape`=1, `ShapeData0`=6, `ShapeData1`=8, `ShapeData2`=10, `ShapeData3`=6, `ShapeData4`=8, `ShapeData5`=10, `VerifiedBuild`=44908 WHERE `Id`=2147483648; -- SpellId : 0 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=26930, `ShapeData0`=30, `ShapeData1`=30, `VerifiedBuild`=44908 WHERE `Id`=2147483648; -- SpellId : 0 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=25568, `Shape`=1, `ShapeData0`=6, `ShapeData1`=8, `ShapeData2`=10, `ShapeData3`=6, `ShapeData4`=8, `ShapeData5`=10, `VerifiedBuild`=44908 WHERE `Id`=2147483648; -- SpellId : 0 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19415;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1402, `VerifiedBuild`=44908 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=4000, `VerifiedBuild`=44908 WHERE `Id`=1409; -- SpellId : 320183
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=4000, `VerifiedBuild`=44908 WHERE `Id`=1409; -- SpellId : 320183
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=4000, `VerifiedBuild`=44908 WHERE `Id`=1409; -- SpellId : 320183
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19347;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19347;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19347;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19347;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19347;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=15000, `VerifiedBuild`=44908 WHERE `Id`=2147802881; -- SpellId : 319233 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23297, `TimeToTargetScale`=15000, `VerifiedBuild`=44908 WHERE `Id`=2147802881; -- SpellId : 319233 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=21843;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3141, `VerifiedBuild`=44908 WHERE `Id`=8661; -- SpellId : 84714
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=304;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=4000, `VerifiedBuild`=44908 WHERE `Id`=1409; -- SpellId : 320183
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=304;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19347;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19347;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19347;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19347;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19347;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=26930, `ShapeData0`=30, `ShapeData1`=30, `VerifiedBuild`=44908 WHERE `Id`=2147483648; -- SpellId : 0 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=21260;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1507, `VerifiedBuild`=44908 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1018, `VerifiedBuild`=44908 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=7999, `VerifiedBuild`=44908 WHERE `Id`=6917; -- SpellId : 196770


UPDATE `areatrigger_create_properties_polygon_vertex` SET `VerifiedBuild`=44908 WHERE (`Idx`=3 AND `AreaTriggerCreatePropertiesId` IN (22099,22098,20008,22086,20006)) OR (`Idx`=2 AND `AreaTriggerCreatePropertiesId` IN (22099,22098,20008,22086,20006)) OR (`Idx`=1 AND `AreaTriggerCreatePropertiesId` IN (22099,22098,20008,22086,20006)) OR (`Idx`=0 AND `AreaTriggerCreatePropertiesId` IN (22099,22098,20008,22086,20006));


UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.1806640625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (16,7,6,5,4,3,2)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=45.00018692016601562, `Z`=0.1806640625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=15); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=41.99988555908203125, `Z`=0.1806640625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=14); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=39.00008010864257812, `Z`=0.1806640625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=13); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=35.99977874755859375, `Z`=0.1806640625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=12); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=32.99992752075195312, `Z`=0.48046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=11); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=30.00012397766113281, `Z`=1.380615234375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=10); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=26.99982261657714843, `Z`=2.280517578125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=9); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=24.00001716613769531, `Z`=3.1806640625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=8); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (1,0));
UPDATE `areatrigger_create_properties_spline_point` SET `X`=23.95111274719238281, `Z`=-0.3076171875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx` IN (18,17)); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=22.48113822937011718, `Z`=-0.3076171875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=16); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.98906517028808593, `Z`=-0.307373046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=15); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=19.4924163818359375, `Z`=-0.307373046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=14); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=17.99430084228515625, `Z`=-0.307373046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=13); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=16.49549484252929687, `Z`=-0.307373046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=12); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.99651718139648437, `Z`=-0.307373046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=11); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=13.49710655212402343, `Z`=-0.307373046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=10); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.99761009216308593, `Z`=-0.307373046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=9); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=10.49802780151367187, `Z`=-0.307373046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=8); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.998444557189941406, `Z`=-0.307373046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=7); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=7.498775959014892578, `Z`=-0.307373046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=6); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.99910736083984375, `Z`=-0.307373046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=5); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.499438285827636718, `Z`=-0.307373046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=4); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.99976968765258789, `Z`=-0.307373046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=3); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.50010085105895996, `Z`=-0.307373046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=2); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0, `Z`=0, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx` IN (1,0)); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=35.99994659423828125, `Z`=0.092041015625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=14); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.092041015625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=13); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.010009765625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (12,11,10,9,8,4,3,2)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.009765625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (7,6,5)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=23.99162864685058593, `Z`=0.11083984375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx` IN (18,17)); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=22.495941162109375, `Z`=0.1142578125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=16); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.99704933166503906, `Z`=0.11767578125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=15); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=19.49739265441894531, `Z`=0.07177734375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=14); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=17.99765968322753906, `Z`=0.07177734375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=13); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=16.4979248046875, `Z`=0.07177734375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=12); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.99811172485351562, `Z`=0.07177734375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=11); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=13.4980010986328125, `Z`=0.07177734375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=10); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.99826622009277343, `Z`=0.10107421875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=9); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=10.49853134155273437, `Z`=0.1201171875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=8); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.998797416687011718, `Z`=0.13916015625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=7); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=7.499062538146972656, `Z`=0.15869140625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=6); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.999249935150146484, `Z`=0.17724609375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=5); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.499437332153320312, `Z`=0.1884765625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=4); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.999624967575073242, `Z`=0.109375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=3); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.499812483787536621, `Z`=0.07177734375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=2); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.072265625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (17,16,14,13)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=42.000213623046875, `Z`=0.087890625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=15); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.10009765625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=12); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.1533203125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=11); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.07958984375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=10); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.1748046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=9); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.14306640625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=8); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.111328125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=7); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.083984375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=6); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.09130859375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=5); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.0986328125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=4); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.10595703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=3); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.11328125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=2); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=23.28109550476074218, `Z`=-1.53125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx` IN (18,17)); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=22.11967658996582031, `Z`=-1.53662109375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=16); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.76467132568359375, `Z`=-1.53662109375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=15); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=19.34000587463378906, `Z`=-1.53662109375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=14); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=17.88411331176757812, `Z`=-1.5185546875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=13); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=16.41107559204101562, `Z`=-1.4560546875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=12); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.93126773834228515, `Z`=-1.4990234375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=11); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=13.44698429107666015, `Z`=-1.53662109375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=10); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.95899009704589843, `Z`=-1.53662109375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=9); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=10.46859359741210937, `Z`=-1.53662109375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=8); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.97644805908203125, `Z`=-1.53662109375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=7); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=7.482776165008544921, `Z`=-1.53662109375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=6); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.988121986389160156, `Z`=-1.53662109375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=5); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.492810249328613281, `Z`=-1.53662109375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=4); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.996735811233520507, `Z`=-1.53662109375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=3); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.499898195266723632, `Z`=-1.4794921875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=2); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=19.08418464660644531, `Z`=0.0712890625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx` IN (15,14)); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=17.58444976806640625, `Z`=0.095703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=13); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=16.084625244140625, `Z`=0.095703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=12); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.58480167388916015, `Z`=0.095703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=11); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=13.08488845825195312, `Z`=0.095703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=10); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.58497524261474609, `Z`=0.095703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=9); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=10.08506202697753906, `Z`=0.095703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=8); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.585148811340332031, `Z`=0.095703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=7); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=7.085235595703125, `Z`=0.095703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=6); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.585322380065917968, `Z`=0.095703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=5); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.085409164428710937, `Z`=0.095703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=4); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.585495948791503906, `Z`=0.095703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=3); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.085582733154296875, `Z`=0.095703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=2); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.41433051228523254, `Z`=-0.04443359375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx` IN (1,0)); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=57.0001678466796875, `Z`=0, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=21062 AND `Idx` IN (3,2)); -- SpellId : 334614
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=21062 AND `Idx` IN (1,0)); -- SpellId : 334614
UPDATE `areatrigger_create_properties_spline_point` SET `X`=23.98928451538085937, `Z`=0.01171875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx` IN (18,17)); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=22.490814208984375, `Z`=0.06982421875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=16); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.99078178405761718, `Z`=-0.009765625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=15); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=19.49162673950195312, `Z`=-0.15185546875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=14); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=17.99335289001464843, `Z`=-0.2939453125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=13); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=16.49517822265625, `Z`=-0.375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=12); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.9969034194946289, `Z`=-0.443359375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=11); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=13.49774932861328125, `Z`=-0.341796875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=10); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.99801158905029296, `Z`=-0.24462890625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=9); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=10.49876022338867187, `Z`=-0.42626953125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=8); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.999410629272460937, `Z`=-0.42626953125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=7); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=7.499672412872314453, `Z`=-0.38134765625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=6); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.999835968017578125, `Z`=-0.35009765625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=5); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.499901294708251953, `Z`=-0.15380859375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=4); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.999967098236083984, `Z`=0.06103515625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=3); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.500032544136047363, `Z`=0.1669921875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=2); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=23.98419952392578125, `Z`=0.16796875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx` IN (18,17)); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=22.49348258972167968, `Z`=0.16796875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=16); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.99582290649414062, `Z`=0.16796875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=15); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=19.49707412719726562, `Z`=0.16845703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=14); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=17.99777984619140625, `Z`=0.16845703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=13); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=16.49798965454101562, `Z`=0.16796875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=12); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.99819850921630859, `Z`=0.16796875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=11); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=13.49840736389160156, `Z`=0.16796875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=10); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.99861717224121093, `Z`=0.16796875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=9); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=10.4988260269165039, `Z`=0.16796875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=8); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.999034881591796875, `Z`=0.16796875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=7); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=7.499196052551269531, `Z`=0.16796875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=6); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.999356746673583984, `Z`=0.16796875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=5); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.499517440795898437, `Z`=0.16796875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=4); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.999678373336791992, `Z`=0.16796875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=3); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.499839186668395996, `Z`=0.16796875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=2); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=23.99699592590332031, `Z`=0.1171875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx` IN (18,17)); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=22.50021934509277343, `Z`=0.1015625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=16); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=21.00108146667480468, `Z`=0.0859375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=15); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=19.50139808654785156, `Z`=0.0703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=14); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=18.00165367126464843, `Z`=0.0546875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=13); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=16.50185012817382812, `Z`=0.0390625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=12); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=15.00168132781982421, `Z`=0.02294921875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=11); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=13.50151348114013671, `Z`=0.00732421875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=10); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=12.00134563446044921, `Z`=-0.0029296875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=9); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=10.50117683410644531, `Z`=-0.0029296875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=8); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=9.001008987426757812, `Z`=-0.0029296875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=7); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=7.500840663909912109, `Z`=-0.0029296875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=6); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.000672817230224609, `Z`=-0.0029296875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=5); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.500504493713378906, `Z`=-0.0029296875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=4); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.000336408615112304, `Z`=-0.0029296875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=3); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.500168204307556152, `Z`=-0.0029296875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2148 AND `Idx`=2); -- SpellId : 110744
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.9999847412109375, `Z`=-0.07080078125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=9); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.07080078125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=8); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.048828125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=7); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.23583984375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=6); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.17822265625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=5); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.1357421875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=4); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.09326171875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=3); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.05078125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=2); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.47412109375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (17,16)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=41.999969482421875, `Z`=0.02392578125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=15); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-1.166015625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=14); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-1.2646484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=13); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-1.39990234375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=12); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-1.33642578125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=11); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.91259765625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=10); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.0126953125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=9); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.591796875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=8); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.16015625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=7); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.67041015625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=6); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.3896484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=5); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.60791015625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=4); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.8349609375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=3); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.416015625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=2); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=45.6122283935546875, `Z`=-6.55532264709472656, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx` IN (18,17)); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=43.86367034912109375, `Z`=-4.55532264709472656, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=16); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=41.11735153198242187, `Z`=-2.55532264709472656, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=15); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=38.1807861328125, `Z`=-0.55532264709472656, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=14); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=35.2484893798828125, `Z`=0.374418258666992187, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=13); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=32.31313323974609375, `Z`=0.252719879150390625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=12); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=29.37559318542480468, `Z`=-0.37946128845214843, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=11); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=26.43793678283691406, `Z`=-0.35217666625976562, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=10); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=23.50028038024902343, `Z`=-0.36599349975585937, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=9); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.56262397766113281, `Z`=-0.40625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=8); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=17.62496757507324218, `Z`=-0.40625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=7); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.68731021881103515, `Z`=-0.40625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=6); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.74965381622314453, `Z`=-0.32488822937011718, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=5); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.812328338623046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=4); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.87488555908203125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=3); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.937442779541015625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=2); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx` IN (1,0)); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=37.97713470458984375, `Z`=-25.1443862915039062, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx` IN (18,17)); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=36.78431320190429687, `Z`=-23.1443862915039062, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=16); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=35.35965728759765625, `Z`=-21.1443862915039062, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=15); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=33.6720733642578125, `Z`=-19.1443862915039062, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=14); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=31.70671653747558593, `Z`=-17.1443862915039062, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=13); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=29.47429275512695312, `Z`=-15.1443862915039062, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=12); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=27.01124763488769531, `Z`=-13.1443853378295898, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=11); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=24.36888885498046875, `Z`=-11.1443853378295898, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=10); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=21.59973907470703125, `Z`=-9.14438533782958984, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=9); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=18.74818992614746093, `Z`=-7.14438533782958984, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=8); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=15.847747802734375, `Z`=-5.14438533782958984, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=7); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=12.92156982421875, `Z`=-3.14438533782958984, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=6); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=9.985194206237792968, `Z`=-1.14438509941101074, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=5); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.811886787414550781, `Z`=-0.38672971725463867, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=4); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.874821186065673828, `Z`=0.608540534973144531, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=3); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.937410593032836914, `Z`=0.27202463150024414, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=2); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=28.90205764770507812, `Z`=-0.80256271362304687, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx` IN (12,11)); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=26.43650436401367187, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=10); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=23.50032615661621093, `Z`=0.390626907348632812, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=9); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.56266593933105468, `Z`=-0.2479248046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=8); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=17.62500572204589843, `Z`=-0.40625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=7); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.68734645843505859, `Z`=-0.40625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=6); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.74968624114990234, `Z`=-0.40625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=5); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.812264442443847656, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=4); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.874843120574951171, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=3); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.937421560287475585, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=2); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=45.63250732421875, `Z`=-2.88591766357421875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx` IN (18,17)); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=42.73953628540039062, `Z`=-0.88591766357421875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=16); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=41.11545944213867187, `Z`=-0.38192176818847656, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=15); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=38.18473434448242187, `Z`=0.467893600463867187, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=14); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=35.24910354614257812, `Z`=0.294002532958984375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=13); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=32.31201553344726562, `Z`=0.135019302368164062, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=12); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=29.37490272521972656, `Z`=-0.40625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=11); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=26.43756866455078125, `Z`=-0.4196929931640625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=10); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=23.50023460388183593, `Z`=-0.41768264770507812, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=9); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.56287956237792968, `Z`=-0.41566658020019531, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=8); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=17.62554740905761718, `Z`=-0.41365242004394531, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=7); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.68797016143798828, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=6); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.75037193298339843, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=5); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.812794685363769531, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=4); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.875196456909179687, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=3); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.937598228454589843, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=2); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=41.92724227905273437, `Y`=-0.0731179341673851, `Z`=-0.13097763061523437, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (16,15)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=38.96912765502929687, `Z`=0.040653228759765625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=14); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=35.9690704345703125, `Z`=-0.37709426879882812, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=13); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=32.9690093994140625, `Z`=-0.36043548583984375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=12); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=29.9689483642578125, `Z`=-0.36043548583984375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=11); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=26.96888923645019531, `Z`=-0.36043548583984375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=10); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=23.9691619873046875, `Z`=-0.01290130615234375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=9); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.96910285949707031, `Z`=-0.11043548583984375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=8); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=17.96904182434082031, `Z`=-0.36043548583984375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=7); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.96898269653320312, `Z`=-0.28206634521484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=6); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.96892261505126953, `Z`=-0.14998626708984375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=5); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.968861579895019531, `Z`=-0.36043548583984375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=4); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.969136714935302734, `Z`=-0.32772064208984375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=3); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.969076395034790039, `Z`=-0.11043548583984375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=2); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.03098374046385288, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (1,0)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=46.99327850341796875, `Z`=-0.0213470458984375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx` IN (18,17)); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=44.05932235717773437, `Z`=-0.1612396240234375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=16); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=41.12266921997070312, `Z`=-0.1612396240234375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=15); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=38.18552780151367187, `Z`=-0.1612396240234375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=14); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=35.24811935424804687, `Z`=0.0387115478515625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=13); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=32.31098175048828125, `Z`=0.2271881103515625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=12); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=29.37357330322265625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=11); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=26.43619155883789062, `Z`=-0.1612396240234375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=10); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=23.498809814453125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=9); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.56167030334472656, `Z`=0.4427642822265625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=8); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=17.62428855895996093, `Z`=0.1783599853515625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=7); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.68690776824951171, `Z`=-0.0863037109375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=6); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.74952602386474609, `Z`=-0.18896484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=5); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.812144279479980468, `Z`=-0.3358154296875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=4); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.874763011932373046, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=3); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.937381505966186523, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=2); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=3.0068359375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (17,16)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=41.99974441528320312, `Z`=3.0068359375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=15); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=2.8818359375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=14); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=2.8759765625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=13); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=2.669921875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=12); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=2.486328125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=11); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=2.4443359375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=10); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=2.1513671875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=9); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=2.0966796875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=8); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=2.01123046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=7); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.8955078125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=6); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.5322265625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=5); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.2763671875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=4); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.78173828125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=3); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.01611328125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=2); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=29.98446846008300781, `Z`=0.4033203125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (11,10)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=26.98431205749511718, `Z`=1.30322265625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=9); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=23.98410224914550781, `Z`=1.28857421875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=8); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.98443031311035156, `Z`=0.470703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=7); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=17.98427581787109375, `Z`=-0.44091796875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=6); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.98411941528320312, `Z`=-1.01416015625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=5); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.98444843292236328, `Z`=-0.97119140625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=4); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.984136104583740234, `Z`=-0.10009765625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=3); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.984465599060058593, `Z`=0.10009765625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=2); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.01569046080112457, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (1,0)); -- SpellId : 279302



UPDATE `conversation_actors` SET `ConversationActorId`=71881, `CreatureId`=161907, `CreatureDisplayInfoId`=96443, `VerifiedBuild`=44908 WHERE (`ConversationId`=12923 AND `Idx`=0);
UPDATE `conversation_actors` SET `VerifiedBuild`=44908 WHERE (`Idx`=1 AND `ConversationId` IN (16503,15139,15441,15442)) OR (`Idx`=0 AND `ConversationId` IN (16503,15139,15134,15435,15441,15442));
UPDATE `conversation_actors` SET `ConversationActorId`=78622, `VerifiedBuild`=44908 WHERE (`ConversationId`=13784 AND `Idx`=0); -- Full: 0x20423115C09E1C0000012900007A4165 Creature/0 R4236/S297 Map: 2222 (The Shadowlands) Entry: 161904 (Plague Deviser Marileth) Low: 8012133

DELETE FROM `conversation_line_template` WHERE `Id` IN (36750, 36749, 36728);
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(36750, 0, 0, 0, 44908),
(36749, 0, 0, 0, 44908),
(36728, 0, 0, 0, 44908);

UPDATE `conversation_line_template` SET `VerifiedBuild`=44908 WHERE `Id` IN (31849, 39320, 39319, 35022, 41584, 41583, 37976, 37975, 37966, 39347, 35031, 38715, 33922, 38731, 38730, 38729, 38728, 37849, 38737, 38736, 38735, 38734, 38733, 38732, 39360, 38999, 38998, 38997);


UPDATE `quest_offer_reward` SET `RewardText`='Our foes will regret opposing us.', `VerifiedBuild`=44908 WHERE `ID`=58007; -- Eyes on the Problem
UPDATE `quest_offer_reward` SET `RewardText`='The enemy is licking their wounds! Our troops will hold the line for now, but we should be prepared for more assaults.', `VerifiedBuild`=44908 WHERE `ID`=59555; -- Enemy at the Door
UPDATE `quest_offer_reward` SET `RewardText`='Your actions have attracted the attention of the other houses--and those who question their orders.', `VerifiedBuild`=44908 WHERE `ID`=62448; -- Securing the House
UPDATE `quest_offer_reward` SET `VerifiedBuild`=44908 WHERE `ID` IN (60272, 60271);


UPDATE `quest_poi` SET `VerifiedBuild`=44908 WHERE (`QuestID`=57650 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=57650 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=57650 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=57650 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=57650 AND `BlobIndex`=0 AND `Idx1`=0);

UPDATE `quest_poi_points` SET `VerifiedBuild`=44908 WHERE (`QuestID`=57650 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=57650 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=57650 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=57650 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=57650 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=57650 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=57650 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=57650 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=57650 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=57650 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=57650 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=57650 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=57650 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=57650 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=57650 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=57650 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=57650 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=57650 AND `Idx1`=0 AND `Idx2`=0);

DELETE FROM `quest_details` WHERE `ID` IN (62866 /*Return Lost Souls*/, 62456 /*De Other Side: Dealin' Wit' Da Boss*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(62866, 1, 0, 0, 0, 0, 0, 0, 0, 44908), -- Return Lost Souls
(62456, 0, 0, 0, 0, 0, 0, 0, 0, 44908); -- De Other Side: Dealin' Wit' Da Boss

UPDATE `quest_details` SET `VerifiedBuild`=44908 WHERE `ID` IN (60502, 59265, 57649, 58007, 59555, 62448, 60272);

DELETE FROM `creature_queststarter` WHERE (`id`=167748 AND `quest`=62866);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(167748, 62866, 44908); -- Return Lost Souls offered Osbourne Black

UPDATE `creature_queststarter` SET `VerifiedBuild`=44908 WHERE (`id`=166689 AND `quest`=60502) OR (`id`=164619 AND `quest` IN (59265,57649)) OR (`id`=161907 AND `quest` IN (58007,59555,62448)) OR (`id`=174327 AND `quest`=62456) OR (`id`=162804 AND `quest`=60272);


UPDATE `creature_questender` SET `VerifiedBuild`=44908 WHERE (`id`=164619 AND `quest`=58007) OR (`id`=161907 AND `quest` IN (59555,62448)) OR (`id`=164937 AND `quest`=60272) OR (`id`=162804 AND `quest`=60271);


DELETE FROM `spell_target_position` WHERE (`EffectIndex`=0 AND `ID` IN (367416,334637,330865));
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `VerifiedBuild`) VALUES
(367416, 0, 2222, -5914.56982421875, 4842.68017578125, 4789.93017578125, 44908), -- Spell: 367416 (Path of the Streetwise Merchant) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)
(334637, 0, 2222, 3269, -1637.9599609375, 3386.800048828125, 44908), -- Spell: 334637 (Teleport: Necropolis) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)
(330865, 0, 2222, -1454.75, 6542.759765625, 4184.06982421875, 44908); -- Spell: 330865 (Exit Dungeon) Efffect: 252 (SPELL_EFFECT_TELEPORT_UNITS)

UPDATE `spell_target_position` SET `VerifiedBuild`=44908 WHERE (`EffectIndex`=1 AND `ID` IN (346015,329911)) OR (`EffectIndex`=0 AND `ID` IN (222695,321567,361238,339104,313711));


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (171180,164450,164857,171184,164873,171342,173458,171343,164861,171341,171181,164862));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(171180, 0, 0, 0, 2044, 44908),
(164450, 0, 2, 2, 2044, 44908),
(164857, 0, 0, 0, 2044, 44908),
(171184, 0, 1, 1, 2044, 44908),
(164873, 0, 0, 0, 2044, 44908),
(171342, 0, 0, 0, 2044, 44908),
(173458, 0, 1, 1, 2044, 44908),
(171343, 0, 1, 1, 2044, 44908),
(164861, 0, 0, 0, 2044, 44908),
(171341, 0, 0, 0, 2044, 44908),
(171181, 0, 0, 0, 2044, 44908),
(164862, 0, 0, 0, 2044, 44908);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=44908 WHERE (`DifficultyID`=0 AND `Entry` IN (161398,164243,164184,170129,166691,168594,168703,156540,159105,165568,158916,164798,168857,168859,171337,159916,164619,174650,173996,159750,174024,174095,166493,162114,159714,159737,176219,158977,169249,173274,169250,168677,169395,159893,165376,174533,157517,169699,169698,160522,165566,166186,164312,158032,165551,165549,165037,158053,166370,172425,158387,163084,165561,175023,158752,158566,161585,162816,161559,166545,166421,166564,166400,166540,159830,165473,161710,166424,166552,160256,166562,162872,164507,159696,159689,164508,159822,169795,159824,159825,169830,174652,164492,163041,164997,158642,162875,166375,169055,168226,172423,170496,172581,162853,175022,176024,168196,169751,173200,162259,168216,176023,170191,174653,159856,166908,175085,162258,161881,175021,165827,175089,164797,165829,158637,167636,165335,172609,172567,167643,166106,165132,165134,166108,165129,165127,166107,167640,175144,174002,161390,168045,167355,161668,161679,161676,167641,167642,167273,161388,165125,166109,161890,157514,161395,161376,167747,170971,167743,167737,164830,160424,167741,164833,160415,157671,165130,167644,167354,164829,157843,157803,165215,172279,156558,172680,175312,175310,175371,175370,165431,167649,167210,176415,175311,165321,161988,167645,161985,165350,175314,175963,167208,172176,164915,167748,175791,158339,165413,164221,167205,165347,173000,161907,161904,161909,165017,173019,166423,168685,174624,173022,167209,161994,167201,167207,161905,160419,160418,160417,172173,175998,174505,164667,164937,175000,175127,183179,173668,175009,175027,175026,175025,175029,175028,62822,62821,183173,165047,179229,176172,162353,92870,113329,156203,157824,179114,175695,173138,180633,176316,175860,170208,176390,176319,114590,157820,175940,176145,175951,175012,175882,173640,172925,162804,170827,170826,170825,170824,170819,175698,172631,180347,180358,170157,176308,70528,177525)) OR (`DifficultyID`=1 AND `Entry` IN (168702,164232,164084,168734,164018,158443,159398,164242,164049,169411,163476,164029,171375,169366,168732,164223,169898,169903,166219,162099,168457,166414,168514,171452,171455,162133,170114,170109,171799,162158,168058,171384,171376,171805,162057,162051,162056,162040,167956,171467,168591,164852,166642,175529,165124,161399,171578,169506,171665,168326,171444,171443,171446,170221,171472,166659,171442,174327,171685,168144,169814,168141,170219,166608,171584,170049,167561,169950));
UPDATE `creature_template_scaling` SET `ContentTuningID`=2044, `VerifiedBuild`=44908 WHERE (`DifficultyID`=1 AND `Entry`=166085) OR (`DifficultyID`=0 AND `Entry` IN (162049,162047,166689,162041,167996,166692,162103,162102,162100,162038,166396,165076,167955,165073,162039,165078,169753,171448,162046));


UPDATE `creature_model_info` SET `VerifiedBuild`=44908 WHERE `DisplayID` IN (95949, 95545, 96090, 93660, 94951, 65129, 91610, 94845, 93007, 93864, 93593, 94528, 80962, 94426, 96094, 94173, 97779, 96908, 98991, 92700, 96120, 95372, 97132, 97206, 97780, 93249, 96655, 97620, 97622, 93808, 93525, 93673, 93650, 96679, 96680, 94847, 95217, 91890, 99118, 98985, 94990, 96096, 93853, 94573, 93677, 93688, 94538, 92399, 96095, 96156, 94781, 98966, 96681, 96092, 96093, 95213, 93681, 94954, 94280, 95861, 95221, 93678, 94986, 93035, 96091, 94737, 65130, 95920, 94227, 98003, 96946, 96752, 94407, 80021, 96821, 100155, 95848, 95826, 96553, 96183, 94039, 28815, 96876, 95804, 96272, 80031, 97076, 99910, 95784, 96187, 100590, 96271, 93933, 97388, 95769, 98582, 94526, 94058, 95994, 95967, 94070, 94089, 88361, 95788, 95222, 95943, 9904, 96787, 98067, 95959, 97079, 96749, 95947, 98055, 98463, 92246, 99861, 11094, 98462, 98465, 95797, 98467, 34901, 100389, 94882, 94760, 98673, 95223, 98074, 95559, 93574, 96251, 100181, 95839, 94450, 94761, 97056, 97724, 96798, 97040, 21342, 75961, 96358, 39412, 97540, 93792, 96893, 64471, 99867, 98697, 96223, 95384, 96211, 97968, 94704, 95965, 96561, 96469, 96252, 95395, 96212, 96466, 95964, 94932, 95573, 97894, 94812, 99515, 99514, 99843, 99524, 96438, 99520, 94718, 96115, 96138, 99516, 100073, 95394, 70087, 96072, 95979, 95655, 95687, 95791, 95231, 94122, 98077, 94053, 95704, 97893, 98197, 96335, 97877, 96102, 95792, 94148, 95786, 95948, 96209, 95944, 96201, 95511, 95624, 95276, 98562, 23767, 42722, 42720, 101294, 100188, 96311, 27710, 100290, 100303, 100302, 38549, 92410, 100313, 100299, 100288, 100298, 35371, 100314, 100426, 35372, 100071, 92780, 97086, 97186, 100066, 100033, 92415, 92627, 98159, 95004, 97386, 100304, 27823, 100403, 11686);
UPDATE `creature_model_info` SET `BoundingRadius`=1.036973834037780761, `CombatReach`=2.20000004768371582, `VerifiedBuild`=44908 WHERE `DisplayID`=93857;
UPDATE `creature_model_info` SET `BoundingRadius`=1.414164066314697265, `VerifiedBuild`=44908 WHERE `DisplayID`=95721;
UPDATE `creature_model_info` SET `BoundingRadius`=0.532142281532287597, `CombatReach`=1, `VerifiedBuild`=44908 WHERE `DisplayID` IN (94497, 94498);
UPDATE `creature_model_info` SET `BoundingRadius`=2.429767608642578125, `CombatReach`=2, `VerifiedBuild`=44908 WHERE `DisplayID` IN (92702, 92704, 92701);
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `CombatReach`=1, `VerifiedBuild`=44908 WHERE `DisplayID` IN (93815, 93671);
UPDATE `creature_model_info` SET `BoundingRadius`=0.842577219009399414, `CombatReach`=1, `VerifiedBuild`=44908 WHERE `DisplayID`=94279;
UPDATE `creature_model_info` SET `BoundingRadius`=1.875, `CombatReach`=0.899999976158142089, `VerifiedBuild`=44908 WHERE `DisplayID`=95214;
UPDATE `creature_model_info` SET `BoundingRadius`=2.5, `CombatReach`=1.20000004768371582, `VerifiedBuild`=44908 WHERE `DisplayID`=94441;
UPDATE `creature_model_info` SET `BoundingRadius`=2.138610363006591796, `CombatReach`=2.5, `VerifiedBuild`=44908 WHERE `DisplayID`=94226;
UPDATE `creature_model_info` SET `BoundingRadius`=5.390334606170654296, `CombatReach`=5.808000564575195312, `VerifiedBuild`=44908 WHERE `DisplayID`=94041;
UPDATE `creature_model_info` SET `BoundingRadius`=3.266869306564331054, `CombatReach`=3.520000219345092773, `VerifiedBuild`=44908 WHERE `DisplayID`=94240;
UPDATE `creature_model_info` SET `BoundingRadius`=0.309776842594146728, `CombatReach`=0.150000005960464477, `VerifiedBuild`=44908 WHERE `DisplayID`=80030;
UPDATE `creature_model_info` SET `BoundingRadius`=9.271669387817382812, `CombatReach`=6, `VerifiedBuild`=44908 WHERE `DisplayID`=94406;
UPDATE `creature_model_info` SET `BoundingRadius`=0.386183589696884155, `CombatReach`=0.262500017881393432, `VerifiedBuild`=44908 WHERE `DisplayID`=96635;
UPDATE `creature_model_info` SET `BoundingRadius`=0.962523341178894042, `CombatReach`=0, `VerifiedBuild`=44908 WHERE `DisplayID`=94076;
UPDATE `creature_model_info` SET `BoundingRadius`=8.218218803405761718, `CombatReach`=8.855000495910644531, `VerifiedBuild`=44908 WHERE `DisplayID`=95475;
UPDATE `creature_model_info` SET `BoundingRadius`=0.93155074119567871, `CombatReach`=1.5, `VerifiedBuild`=44908 WHERE `DisplayID` IN (94759, 94834, 94791, 94763, 94757);
UPDATE `creature_model_info` SET `BoundingRadius`=0.839329779148101806, `CombatReach`=1.5, `VerifiedBuild`=44908 WHERE `DisplayID` IN (96135, 96196, 97928, 96133, 96200);
UPDATE `creature_model_info` SET `BoundingRadius`=4.287765979766845703, `CombatReach`=4.619999885559082031, `VerifiedBuild`=44908 WHERE `DisplayID`=96292;
UPDATE `creature_model_info` SET `BoundingRadius`=1.771826744079589843, `CombatReach`=1.5, `VerifiedBuild`=44908 WHERE `DisplayID` IN (100228, 95762);
UPDATE `creature_model_info` SET `BoundingRadius`=0.69537520408630371, `CombatReach`=0.450000017881393432, `VerifiedBuild`=44908 WHERE `DisplayID` IN (94405, 94404);
UPDATE `creature_model_info` SET `BoundingRadius`=0.816717326641082763, `CombatReach`=0.880000054836273193, `VerifiedBuild`=44908 WHERE `DisplayID`=94384;
UPDATE `creature_model_info` SET `BoundingRadius`=1.949009418487548828, `CombatReach`=1.65000009536743164, `VerifiedBuild`=44908 WHERE `DisplayID`=96597;
UPDATE `creature_model_info` SET `BoundingRadius`=0.769385576248168945, `CombatReach`=1.375, `VerifiedBuild`=44908 WHERE `DisplayID`=97072;
UPDATE `creature_model_info` SET `BoundingRadius`=3.585020065307617187, `CombatReach`=5.199999809265136718, `VerifiedBuild`=44908 WHERE `DisplayID`=94924;
UPDATE `creature_model_info` SET `BoundingRadius`=3.156650543212890625, `CombatReach`=8.400000572204589843, `VerifiedBuild`=44908 WHERE `DisplayID`=96185;
UPDATE `creature_model_info` SET `BoundingRadius`=3.447134733200073242, `CombatReach`=5, `VerifiedBuild`=44908 WHERE `DisplayID`=94916;
UPDATE `creature_model_info` SET `BoundingRadius`=0.44763687252998352, `CombatReach`=0.425000011920928955, `VerifiedBuild`=44908 WHERE `DisplayID`=76383;
UPDATE `creature_model_info` SET `BoundingRadius`=0.733513593673706054, `CombatReach`=1.5, `VerifiedBuild`=44908 WHERE `DisplayID`=94050;
UPDATE `creature_model_info` SET `BoundingRadius`=1.056259632110595703, `CombatReach`=2.160000085830688476, `VerifiedBuild`=44908 WHERE `DisplayID`=95083;
UPDATE `creature_model_info` SET `BoundingRadius`=1.843210577964782714, `CombatReach`=1.75, `VerifiedBuild`=44908 WHERE `DisplayID`=95818;
UPDATE `creature_model_info` SET `BoundingRadius`=0.631957948207855224, `CombatReach`=0.60000002384185791, `VerifiedBuild`=44908 WHERE `DisplayID`=96999;
UPDATE `creature_model_info` SET `BoundingRadius`=0.615508496761322021, `CombatReach`=1.10000002384185791, `VerifiedBuild`=44908 WHERE `DisplayID`=96059;
UPDATE `creature_model_info` SET `BoundingRadius`=0.300000011920928955, `CombatReach`=2.40000009536743164, `VerifiedBuild`=44908 WHERE `DisplayID`=32962;
UPDATE `creature_model_info` SET `BoundingRadius`=1.43648529052734375, `CombatReach`=1.80000007152557373, `VerifiedBuild`=44908 WHERE `DisplayID`=94933;
UPDATE `creature_model_info` SET `BoundingRadius`=1.136063933372497558, `CombatReach`=1.20000004768371582, `VerifiedBuild`=44908 WHERE `DisplayID` IN (95386, 95392);
UPDATE `creature_model_info` SET `BoundingRadius`=1.626700997352600097, `CombatReach`=1.80000007152557373, `VerifiedBuild`=44908 WHERE `DisplayID`=96467;
UPDATE `creature_model_info` SET `BoundingRadius`=1.103381752967834472, `CombatReach`=0.75, `VerifiedBuild`=44908 WHERE `DisplayID`=95787;
UPDATE `creature_model_info` SET `BoundingRadius`=0.699441432952880859, `CombatReach`=1.25, `VerifiedBuild`=44908 WHERE `DisplayID`=96543;
UPDATE `creature_model_info` SET `BoundingRadius`=4.696124553680419921, `CombatReach`=5.059999942779541015, `VerifiedBuild`=44908 WHERE `DisplayID`=94284;
UPDATE `creature_model_info` SET `BoundingRadius`=0.880216360092163085, `CombatReach`=1.80000007152557373, `VerifiedBuild`=44908 WHERE `DisplayID` IN (95993, 94090);
UPDATE `creature_model_info` SET `BoundingRadius`=4.848840236663818359, `VerifiedBuild`=44908 WHERE `DisplayID`=95653;
UPDATE `creature_model_info` SET `BoundingRadius`=0.25, `CombatReach`=0.5, `VerifiedBuild`=44908 WHERE `DisplayID`=94282;
UPDATE `creature_model_info` SET `BoundingRadius`=0.746572732925415039, `CombatReach`=1.5, `VerifiedBuild`=44908 WHERE `DisplayID` IN (95696, 95695);
UPDATE `creature_model_info` SET `BoundingRadius`=4.472733497619628906, `CombatReach`=1.5, `VerifiedBuild`=44908 WHERE `DisplayID`=96412;
UPDATE `creature_model_info` SET `BoundingRadius`=1.910230040550231933, `CombatReach`=1.299999952316284179, `VerifiedBuild`=44908 WHERE `DisplayID`=93795;
UPDATE `creature_model_info` SET `BoundingRadius`=3.578187227249145507, `CombatReach`=1.20000004768371582, `VerifiedBuild`=44908 WHERE `DisplayID`=96413;
UPDATE `creature_model_info` SET `BoundingRadius`=1.367991924285888671, `CombatReach`=2.699999809265136718, `VerifiedBuild`=44908 WHERE `DisplayID`=95551;
UPDATE `creature_model_info` SET `BoundingRadius`=0.569996654987335205, `CombatReach`=1.125, `VerifiedBuild`=44908 WHERE `DisplayID`=95554;
UPDATE `creature_model_info` SET `BoundingRadius`=0.911994636058807373, `CombatReach`=1.80000007152557373, `VerifiedBuild`=44908 WHERE `DisplayID`=95555;
UPDATE `creature_model_info` SET `BoundingRadius`=0.524999976158142089, `CombatReach`=1.5, `VerifiedBuild`=44908 WHERE `DisplayID`=95199;
UPDATE `creature_model_info` SET `BoundingRadius`=3.309249639511108398, `CombatReach`=4.800000190734863281, `VerifiedBuild`=44908 WHERE `DisplayID`=94922;
UPDATE `creature_model_info` SET `BoundingRadius`=2.022901535034179687, `CombatReach`=1.80000007152557373, `VerifiedBuild`=44908 WHERE `DisplayID`=97853;
UPDATE `creature_model_info` SET `BoundingRadius`=0.696711182594299316, `CombatReach`=2.340000152587890625, `VerifiedBuild`=44908 WHERE `DisplayID` IN (95963, 98076);
UPDATE `creature_model_info` SET `BoundingRadius`=0.870888948440551757, `CombatReach`=2.925000190734863281, `VerifiedBuild`=44908 WHERE `DisplayID`=95969;
UPDATE `creature_model_info` SET `BoundingRadius`=1.197071075439453125, `CombatReach`=1.5, `VerifiedBuild`=44908 WHERE `DisplayID`=95112;
UPDATE `creature_model_info` SET `BoundingRadius`=1.316778182983398437, `CombatReach`=1.65000009536743164, `VerifiedBuild`=44908 WHERE `DisplayID`=95113;
UPDATE `creature_model_info` SET `BoundingRadius`=1.211015939712524414, `CombatReach`=1.949999928474426269, `VerifiedBuild`=44908 WHERE `DisplayID`=95011;
UPDATE `creature_model_info` SET `BoundingRadius`=1.091128706932067871, `CombatReach`=1.95000004768371582, `VerifiedBuild`=44908 WHERE `DisplayID`=96555;
UPDATE `creature_model_info` SET `BoundingRadius`=0.696837902069091796, `CombatReach`=1.424999952316284179, `VerifiedBuild`=44908 WHERE `DisplayID`=95991;
UPDATE `creature_model_info` SET `BoundingRadius`=0.354000002145767211, `CombatReach`=2.25, `VerifiedBuild`=44908 WHERE `DisplayID`=96443;
UPDATE `creature_model_info` SET `BoundingRadius`=0.629497289657592773, `CombatReach`=1.125, `VerifiedBuild`=44908 WHERE `DisplayID`=96208;
UPDATE `creature_model_info` SET `BoundingRadius`=0.923262715339660644, `CombatReach`=1.65000009536743164, `VerifiedBuild`=44908 WHERE `DisplayID`=96489;
UPDATE `creature_model_info` SET `BoundingRadius`=1.079260706901550292, `CombatReach`=1.139999985694885253, `VerifiedBuild`=44908 WHERE `DisplayID`=95376;
UPDATE `creature_model_info` SET `BoundingRadius`=2.126192092895507812, `CombatReach`=1.80000007152557373, `VerifiedBuild`=44908 WHERE `DisplayID`=95796;
UPDATE `creature_model_info` SET `BoundingRadius`=0.332232296466827392, `CombatReach`=1, `VerifiedBuild`=44908 WHERE `DisplayID`=100015;
UPDATE `creature_model_info` SET `BoundingRadius`=0.813735127449035644, `CombatReach`=1.20000004768371582, `VerifiedBuild`=44908 WHERE `DisplayID`=92416;


UPDATE `npc_vendor` SET `VerifiedBuild`=44908 WHERE (`entry`=162804 AND `item`=183248 AND `ExtendedCost`=6968 AND `type`=1) OR (`entry`=162804 AND `item`=180952 AND `ExtendedCost`=7026 AND `type`=1) OR (`entry`=162804 AND `item`=184618 AND `ExtendedCost`=7024 AND `type`=1) OR (`entry`=162804 AND `item`=184619 AND `ExtendedCost`=7025 AND `type`=1) OR (`entry`=162804 AND `item`=184652 AND `ExtendedCost`=7022 AND `type`=1) OR (`entry`=162804 AND `item`=184621 AND `ExtendedCost`=7020 AND `type`=1) OR (`entry`=162804 AND `item`=184588 AND `ExtendedCost`=7023 AND `type`=1) OR (`entry`=162804 AND `item`=184664 AND `ExtendedCost`=7017 AND `type`=1) OR (`entry`=162804 AND `item`=184651 AND `ExtendedCost`=7016 AND `type`=1) OR (`entry`=162804 AND `item`=180949 AND `ExtendedCost`=7018 AND `type`=1) OR (`entry`=162804 AND `item`=184653 AND `ExtendedCost`=7014 AND `type`=1) OR (`entry`=162804 AND `item`=184605 AND `ExtendedCost`=7019 AND `type`=1) OR (`entry`=162804 AND `item`=184617 AND `ExtendedCost`=7021 AND `type`=1) OR (`entry`=162804 AND `item`=180817 AND `ExtendedCost`=6843 AND `type`=1) OR (`entry`=162804 AND `item`=181324 AND `ExtendedCost`=6837 AND `type`=1);
UPDATE `npc_vendor` SET `PlayerConditionID`=87395, `VerifiedBuild`=44908 WHERE (`entry`=162804 AND `item`=181245 AND `ExtendedCost`=7010 AND `type`=1); -- Oil of Ethereal Force
UPDATE `npc_vendor` SET `PlayerConditionID`=87395, `VerifiedBuild`=44908 WHERE (`entry`=162804 AND `item`=180953 AND `ExtendedCost`=7009 AND `type`=1); -- Soultwinning Scepter
UPDATE `npc_vendor` SET `PlayerConditionID`=87395, `VerifiedBuild`=44908 WHERE (`entry`=162804 AND `item`=184613 AND `ExtendedCost`=7013 AND `type`=1); -- Encased Riftwalker Essence
UPDATE `npc_vendor` SET `PlayerConditionID`=87395, `VerifiedBuild`=44908 WHERE (`entry`=162804 AND `item`=184901 AND `ExtendedCost`=7049 AND `type`=1); -- Broker Traversal Enhancer
UPDATE `npc_vendor` SET `PlayerConditionID`=87395, `VerifiedBuild`=44908 WHERE (`entry`=162804 AND `item`=184615 AND `ExtendedCost`=7012 AND `type`=1); -- Extradimensional Pockets
UPDATE `npc_vendor` SET `PlayerConditionID`=87395, `VerifiedBuild`=44908 WHERE (`entry`=162804 AND `item`=184620 AND `ExtendedCost`=7011 AND `type`=1); -- Vessel of Unfortunate Spirits


UPDATE `creature_template` SET `gossip_menu_id`=26121 WHERE `entry`=169898; -- Sinfall Flyer
UPDATE `creature_template` SET `unit_flags`=67141632, `dynamicflags`=64 WHERE `entry`=171455; -- Stonewall Gargon
UPDATE `creature_template` SET `unit_flags`=32848 WHERE `entry`=162158; -- Starving Prisoner
UPDATE `creature_template` SET `unit_flags`=32832, `unit_flags3`=0 WHERE `entry`=168591; -- Ravenous Dreadbat
UPDATE `creature_template` SET `unit_flags`=570458176, `unit_flags2`=2081, `unit_flags3`=8192, `HoverHeight`=1 WHERE `entry`=164852; -- Regal Mistdancer
UPDATE `creature_template` SET `faction`=14, `unit_flags`=32832 WHERE `entry`=162047; -- Insatiable Brute
UPDATE `creature_template` SET `unit_flags`=33587264 WHERE `entry`=166396; -- Noble Skirmisher
UPDATE `creature_template` SET `unit_flags`=33587264, `unit_flags3`=0 WHERE `entry`=167955; -- Sanguine Cadet
UPDATE `creature_template` SET `unit_flags`=33816832 WHERE `entry`=165073; -- Forlorn Captive
UPDATE `creature_template` SET `unit_flags`=33587264 WHERE `entry`=168594; -- Chamber Sentinel
UPDATE `creature_template` SET `unit_flags3`=1 WHERE `entry`=162046; -- Famished Tick
UPDATE `creature_template` SET `minlevel`=61, `maxlevel`=61 WHERE `entry`=159105; -- Collector Kash
UPDATE `creature_template` SET `VehicleId`=7195 WHERE `entry`=168857; -- Stitched-Wing Hauler
UPDATE `creature_template` SET `speed_run`=1.142857193946838378 WHERE `entry`=171337; -- Bloated Lootfly
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=159750; -- Marrowbore Nest
UPDATE `creature_template` SET `unit_flags3`=16785409 WHERE `entry`=166493; -- Shank Adnar
UPDATE `creature_template` SET `dynamicflags`=128 WHERE `entry`=166186; -- Dead Newcomer
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=158053; -- Corpselouse Mother
UPDATE `creature_template` SET `faction`=3171, `unit_flags`=33536 WHERE `entry`=163084; -- Tester Sahaari
UPDATE `creature_template` SET `dynamicflags`=128 WHERE `entry`=161585; -- Dog Bone

UPDATE `creature_template` SET `unit_flags`=2147582208, `HoverHeight`=13.5 WHERE `entry`=162872; -- Xantuth the Blighted

UPDATE `creature_template` SET `unit_flags`=570721024, `unit_flags2`=34817, `unit_flags3`=8193 WHERE `entry`=169795; -- Zombified Ashen Wasp


UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=162875; -- Devmorta
UPDATE `creature_template` SET `speed_run`=1.142857193946838378, `unit_flags`=2147582208 WHERE `entry`=162853; -- Unbreakable Urtz
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=161881; -- Injured Steelspine
UPDATE `creature_template` SET `unit_flags3`=16777217 WHERE `entry`=167643; -- Fire from Bomb Hit
UPDATE `creature_template` SET `unit_flags2`=2097152 WHERE `entry`=166106; -- Tiganeous
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=165134; -- Steelspine Wallbreaker
UPDATE `creature_template` SET `unit_flags2`=2097152 WHERE `entry`=165127; -- Aloskixxa
UPDATE `creature_template` SET `dynamicflags`=128 WHERE `entry`=165124; -- Siege Ballista
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=168141; -- Bwonsamdi
UPDATE `creature_template` SET `unit_flags`=33616 WHERE `entry`=166608; -- Mueh'zala
UPDATE `creature_template` SET `unit_flags`=67141696, `dynamicflags`=64 WHERE `entry`=171184; -- Mythresh, Sky's Talons
UPDATE `creature_template` SET `dynamicflags`=64 WHERE `entry`=164873; -- Runestag Elderhorn
UPDATE `creature_template` SET `dynamicflags`=64 WHERE `entry`=171342; -- Juvenile Runestag
UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=167273; -- Boneplated Sharpshooter
UPDATE `creature_template` SET `unit_flags3`=16785409 WHERE `entry`=167644; -- Steelspine Veteran
UPDATE `creature_template` SET `unit_flags3`=1 WHERE `entry`=164829; -- Chosen Flayedwing
UPDATE `creature_template` SET `gossip_menu_id`=25174 WHERE `entry`=161985; -- Baroness Vashj
UPDATE `creature_template` SET `gossip_menu_id`=26408 WHERE `entry`=161907; -- Baroness Draka
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=175000; -- Skoldus Hall
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=175026; -- Coldheart Interstitia

UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=175028; -- Upper Reaches
UPDATE `creature_template` SET `dynamicflags`=128 WHERE `entry`=176172; -- Armored Husk
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=175860; -- Ravenous Shade
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=173640; -- Obedient Shadehound


UPDATE `quest_template` SET `VerifiedBuild`=44908 WHERE `ID` IN (52754, 52471, 50507, 51097, 51613, 51506, 51546, 50867, 52230, 50651, 50459, 51848, 52310, 37775, 52964, 54366, 50324, 54287, 52297, 54570, 53951, 50315, 51422, 52009, 50468, 51687, 50872, 51664, 54605, 51124, 51466, 51431, 51618, 53814, 51626, 52864, 51886, 51658, 50961, 51988, 52321, 51694, 51122, 53726, 50509, 52937, 50871, 50299, 50501, 51905, 52832, 53704, 52891, 53040, 51178, 63039);

DELETE FROM `quest_objectives` WHERE `ID` IN (396000 /*396000*/, 388050 /*388050*/, 296728 /*296728*/, 296727 /*296727*/, 296726 /*296726*/);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
(396000, 50239, 2, 4, 4, 339222, 1, 0, 0, 0, 'Learn about the Mechagnomes', 44908), -- 396000
(388050, 50239, 2, 3, 3, 316736, 1, 0, 0, 0, 'Learn about the Kul Tirans', 44908), -- 388050
(296728, 50239, 2, 2, 0, 298865, 1, 0, 0, 0, 'Learn about the Dark Iron Dwarves', 44908), -- 296728
(296727, 50239, 2, 1, 2, 273853, 1, 0, 0, 0, 'Learn about the Void Elves', 44908), -- 296727
(296726, 50239, 2, 0, 1, 273855, 1, 0, 0, 0, 'Learn about the Lightforged Draenei', 44908); -- 296726

UPDATE `quest_objectives` SET `VerifiedBuild`=44908 WHERE `ID` IN (339682, 339066, 332907, 334745, 336466, 336037, 336170, 336169, 334129, 338429, 338428, 333455, 333454, 312626, 337374, 338735, 340626, 340407, 340406, 340405, 387028, 312218, 312216, 312208, 312204, 386878, 386877, 386876, 386872, 386871, 386865, 386864, 338669, 387635, 385192, 385188, 385187, 338791, 338790, 312175, 312174, 312166, 312165, 312164, 312163, 341896, 341895, 341894, 341893, 335852, 335851, 335850, 335849, 335848, 337769, 322737, 336798, 334142, 336654, 387743, 334799, 335943, 335866, 341888, 341887, 341886, 341885, 336520, 336519, 336518, 336517, 336516, 352758, 341824, 336546, 340126, 337450, 336639, 334366, 337690, 338773, 336862, 336852, 334795, 386732, 352813, 342185, 342160, 342159, 332911, 340309, 334141, 312092, 332897, 337497, 340045, 386268, 386266, 352918, 352868, 352849, 352847, 352845, 342252, 340682, 340232, 340231, 340634, 340633, 340624, 340622, 335007, 409034);
UPDATE `quest_objectives` SET `Description`='Exhibition Match won', `VerifiedBuild`=44908 WHERE `ID`=277119; -- 277119


UPDATE `quest_visual_effect` SET `VerifiedBuild`=44908 WHERE (`Index`=0 AND `ID` IN (339682,339066,338429,333455,333454,277119,340626,340405,312218,312216,312208,312204,338669,385192,385187,312166,312165,312164,335848,337769,335866,336516,336546,336639,334366,336862,336852,386732,352813,312092,340045,340682,340231,340633,340624,340622,335007)) OR (`Index`=2 AND `ID` IN (333454,335848,336516,336862)) OR (`Index`=1 AND `ID` IN (333454,335848,336516,336862,336852,340633,340624,340622)) OR (`Index`=3 AND `ID` IN (335848,336516,336862));


UPDATE `creature_template_model` SET `VerifiedBuild`=44908 WHERE (`CreatureID`=178601 AND `Idx`=0);

DELETE FROM `gameobject_template` WHERE `entry`=354206;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(354206, 10, 58572, 'Greedstone', '', 'Communing', '', 0.800000011920928955, 93, 0, 0, 1, 0, 0, 1, 0, 0, 0, 333560, 0, 0, 1, 83759, 0, 0, 0, 0, 0, 1, 0, 0, 1, 4347, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44908); -- Greedstone

UPDATE `gameobject_template` SET `VerifiedBuild`=44908 WHERE `entry` IN (352502, 352610, 352480, 352472, 352053, 352049, 352005, 352494, 352508, 352463, 352522, 352054, 352482, 352507, 352050, 352503, 352056, 352470, 352466, 352483, 352504, 352010, 353174, 352462, 352608, 352051, 353175, 351471, 352500, 352473, 352015, 352052, 363443, 352471, 352492, 352497, 352467, 352016, 352506, 344794, 352493, 352499, 352484, 352498, 352505, 352501, 352495, 327444, 355346, 303148, 357172, 351906, 352516, 357202, 351899, 351909, 351902, 355842, 351898, 352512, 351905, 355820, 351901, 351908, 352513, 352511, 351904, 353382, 351907, 351900, 351896, 352509, 351897, 272724, 355819, 357173, 355818, 351903, 351910, 358305, 352517, 336689, 353615, 341408, 246280, 364863, 348536, 348535, 348532, 236184, 353881, 355929, 355925, 353395, 348935, 353396, 351470, 353394, 353393, 353400, 353397, 353399, 353398, 355923, 355859, 354970, 349546, 352110, 349898, 252145, 353602, 353614, 252245, 338855, 355295, 357558, 354761, 354762, 354757, 354756, 354752, 354758, 354760, 354780, 354759, 354763, 354754, 354764, 354767, 354753, 354765, 354766, 354755, 354768, 357552, 354779, 358409, 354778, 354713, 357548, 354748, 354716, 354830, 355515, 354750, 357549, 354749, 354751, 354746, 357550, 357547, 354827, 354826, 354825, 354824, 354823, 354822, 354821, 354804, 354803, 354802, 354800, 354798, 354797, 354777, 354776, 354745, 354744, 354743, 354742, 354741, 354728, 354714, 354712, 357546, 354694, 357561, 354711, 357560, 354738, 354727, 354725, 354828, 354740, 354739, 354737, 357555, 357559, 355512, 354829, 354735, 355513, 354736, 354734, 354733, 354732, 354731, 354730, 354717, 354729, 354726, 357564, 357553, 357545, 354818, 354817, 354705, 357551, 354819, 354816, 354815, 354814, 354813, 354812, 354811, 354810, 354809, 354808, 354807, 354806, 354805, 354719, 354718, 252248, 354706, 357557, 354775, 354774, 354773, 354771, 354770, 354769, 354772, 358352, 354794, 354793, 354792, 354791, 354790, 354787, 354786, 354784, 357554, 354789, 354788, 354785, 354783, 354782, 354781, 354715, 357563, 357556, 357562, 354801, 354799, 354796, 354795, 354708, 355514, 364529, 364528, 351944, 357744, 352074, 352818, 351943, 364333, 365670, 353764, 353378, 353391, 353633, 353601, 336675, 354927, 350775, 353616, 364864, 353392, 353390, 355424, 353389, 364865, 342125, 353977, 356600, 358875, 356599, 355451, 358873, 358872, 365672, 351336, 355452, 358876, 364892, 356396, 365673, 358877, 358871, 355042, 365674, 358874, 357089, 351447, 365111, 191605, 364379, 357638, 364378, 326155, 364526, 364883, 349584, 356537, 349900, 364943, 361389, 358456, 353635, 339728, 364374, 344767, 364888, 353816, 353815);


UPDATE `gameobject_questitem` SET `VerifiedBuild`=44908 WHERE (`GameObjectEntry`=355346 AND `Idx` IN (1,0));

DELETE FROM `world_quest` WHERE `id` IN (49195 /*49195*/, 54366 /*54366*/, 60416 /*60416*/, 63039 /*63039*/, 66694 /*66694*/, 60393 /*60393*/, 54605 /*54605*/, 54571 /*54571*/, 53812 /*53812*/, 54380 /*54380*/, 52951 /*52951*/, 53711 /*53711*/, 52230 /*52230*/, 54388 /*54388*/, 53726 /*53726*/, 60423 /*60423*/, 50501 /*50501*/, 60622 /*60622*/, 53704 /*53704*/, 52778 /*52778*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(49195, 604800, 14250, 1), -- 49195
(54366, 86400, 16766, 1), -- 54366
(60416, 259200, 19329, 1), -- 60416
(63039, 86400, 20307, 1), -- 63039
(66694, 604800, 21654, 2), -- 66694
(60393, 259200, 19321, 1), -- 60393
(54605, 86400, 16885, 1), -- 54605
(54571, 86400, 16867, 1), -- 54571
(53812, 25200, 16288, 1), -- 53812
(54380, 86400, 16717, 2), -- 54380
(52951, 604800, 16006, 3), -- 52951
(53711, 25200, 16288, 1), -- 53711
(52230, 86400, 15599, 2), -- 52230
(54388, 86400, 16773, 1), -- 54388
(53726, 25200, 16288, 1), -- 53726
(60423, 259200, 19331, 1), -- 60423
(50501, 86400, 14797, 1), -- 50501
(60622, 86400, 19682, 1), -- 60622
(53704, 25200, 16288, 1), -- 53704
(52778, 345600, 15888, 3); -- 52778

UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
UPDATE `world_quest` SET `variable`=14062 WHERE `id`=49091; -- 49091
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


DELETE FROM `areatrigger_template` WHERE (`IsServerSide`=0 AND `Id` IN (24340,26204));
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(24340, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 44908),
(26204, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 44908);

UPDATE `areatrigger_template` SET `VerifiedBuild`=44908 WHERE (`IsServerSide`=0 AND `Id` IN (23463,11420,19538,9225,13120,12740,23871,23870,23869,11393,25292,24455,9482,7020,26038,24212,5070,23471,3319));
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=1, `VerifiedBuild`=44908 WHERE (`Id`=9397 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data0`=4, `Data1`=4, `VerifiedBuild`=44908 WHERE (`Id`=6197 AND `IsServerSide`=0);


UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19481;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19481;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19481;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=7999, `VerifiedBuild`=44908 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `VerifiedBuild`=44908 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1509, `VerifiedBuild`=44908 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1173, `VerifiedBuild`=44908 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=7999, `VerifiedBuild`=44908 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1423, `VerifiedBuild`=44908 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1312, `VerifiedBuild`=44908 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=7999, `VerifiedBuild`=44908 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1142, `VerifiedBuild`=44908 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=7276, `VerifiedBuild`=44908 WHERE `Id`=9080; -- SpellId : 230241
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=6786, `VerifiedBuild`=44908 WHERE `Id`=9080; -- SpellId : 230241
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=6013, `VerifiedBuild`=44908 WHERE `Id`=4658; -- SpellId : 190356
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=52383, `VerifiedBuild`=44908 WHERE `Id`=8661; -- SpellId : 84714
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=6795, `VerifiedBuild`=44908 WHERE `Id`=9080; -- SpellId : 230241
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871, `TimeToTarget`=1300, `VerifiedBuild`=44908 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23870, `TimeToTarget`=1000, `VerifiedBuild`=44908 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=2147808189;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=28, `VerifiedBuild`=44908 WHERE `Id`=6887; -- SpellId : 202770
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=6550, `VerifiedBuild`=44908 WHERE `Id`=9080; -- SpellId : 230241
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=20000, `ShapeData0`=3, `ShapeData1`=3, `VerifiedBuild`=44908 WHERE `Id`=22036; -- SpellId : 345079
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871, `TimeToTarget`=1300, `VerifiedBuild`=44908 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1523, `VerifiedBuild`=44908 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=117, `VerifiedBuild`=44908 WHERE `Id`=6887; -- SpellId : 202770
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23871, `TimeToTarget`=0, `VerifiedBuild`=44908 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23870, `TimeToTarget`=0, `VerifiedBuild`=44908 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=0, `VerifiedBuild`=44908 WHERE `Id`=2147808189; -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20952;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20952;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=26559, `VerifiedBuild`=44908 WHERE `Id`=20575; -- SpellId : 330606
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=43881, `VerifiedBuild`=44908 WHERE `Id`=20575; -- SpellId : 330606
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=40841, `VerifiedBuild`=44908 WHERE `Id`=20575; -- SpellId : 330606
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=31396, `VerifiedBuild`=44908 WHERE `Id`=20575; -- SpellId : 330606
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=26559, `VerifiedBuild`=44908 WHERE `Id`=20575; -- SpellId : 330606
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=48394, `VerifiedBuild`=44908 WHERE `Id`=20575; -- SpellId : 330606
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20952;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20952;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=61196, `VerifiedBuild`=44908 WHERE `Id`=20575; -- SpellId : 330606
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=161, `VerifiedBuild`=44908 WHERE `Id`=6887; -- SpellId : 202770
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=20000, `ShapeData0`=3, `ShapeData1`=3, `VerifiedBuild`=44908 WHERE `Id`=22036; -- SpellId : 345079
UPDATE `areatrigger_create_properties` SET `ShapeData0`=5, `ShapeData1`=5, `VerifiedBuild`=44908 WHERE `Id`=20444; -- SpellId : 328777
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=8000, `VerifiedBuild`=44908 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=2442;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=2442;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=12000, `VerifiedBuild`=44908 WHERE `Id`=21827; -- SpellId : 342761
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=2442;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19481;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1209, `VerifiedBuild`=44908 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20301;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20301;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=1193;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20301;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20301;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20301;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20301;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=20301;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=20000, `ShapeData0`=3, `ShapeData1`=3, `VerifiedBuild`=44908 WHERE `Id`=22036; -- SpellId : 345079
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=19485;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=7999, `VerifiedBuild`=44908 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1337, `VerifiedBuild`=44908 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=8430;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=383;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=4485;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=383;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44908 WHERE `Id`=2442;


UPDATE `areatrigger_create_properties_spline_point` SET `X`=30.00002288818359375, `Z`=0.17138671875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=12); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.17138671875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=11); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.13916015625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (10,9,8,7,6,5,4,3,2)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (1,0)) OR (`AreaTriggerCreatePropertiesId`=6887 AND `Idx` IN (1,0));
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.685791015625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (17,16)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=41.99999618530273437, `Z`=0.685791015625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=15); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.809326171875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=14); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.68603515625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (13,12)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.870361328125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=11); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.993408203125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=10); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.203369140625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=9); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.328369140625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (8,7)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.29931640625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=6); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.229248046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=5); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.18505859375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=4); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.0654296875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=3); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.104248046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=2); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=33.00001144409179687, `Z`=0.815185546875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=13); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.815185546875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=12); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=30.329071044921875, `Y`=0.889099657535552978, `Z`=1.715087890625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=11); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-1.5986328125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=10); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-1.395263671875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=9); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.495361328125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=8); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.1708984375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=7); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.146484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=6); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.1220703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=5); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.1123046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=4); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.128173828125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=3); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.14404296875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=2); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=41.99995040893554687, `Z`=2.91064453125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (16,15)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=3.458251953125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=14); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=3.573974609375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=13); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=3.113525390625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=12); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=2.03759765625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=11); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.34619140625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=10); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.20361328125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=9); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.32861328125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=8); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.724365234375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=7); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.934326171875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=6); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=2.111328125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=5); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=2.009521484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=4); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.6435546875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=3); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.056640625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=2); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.881103515625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=14); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=39.0000152587890625, `Z`=0.881103515625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=13); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=36.23357772827148437, `Y`=0.222146108746528625, `Z`=0.28125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=12); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=33.00008773803710937, `Z`=-0.31494140625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=11); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=30.0001220703125, `Z`=-0.871826171875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=10); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=26.99991989135742187, `Z`=-1.2626953125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=9); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=23.9999542236328125, `Z`=-0.78466796875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=8); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.99999046325683593, `Z`=-0.24609375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=7); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=18.00002670288085937, `Z`=0.058837890625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=6); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=15.00006103515625, `Z`=0.28076171875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=5); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=12.00009727478027343, `Z`=0.42236328125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=4); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.36962890625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=3); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.20703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=2); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=33.00000381469726562, `Z`=8.390869140625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=13); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=8.390869140625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=12); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=6.93994140625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=11); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=5.846435546875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=10); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=4.882568359375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=9); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=3.86328125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=8); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=2.9072265625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=7); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=2.10205078125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=6); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.450439453125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=5); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.97607421875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=4); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.518310546875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=3); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.27783203125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=2); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=38.91671371459960937, `Y`=0.399893462657928466, `Z`=1.7646484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx` IN (15,14)); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=35.91692733764648437, `Y`=0.36931920051574707, `Z`=2.664794921875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=13); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=32.91695404052734375, `Y`=0.33858618140220642, `Z`=3.564697265625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=12); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=29.91730117797851562, `Y`=0.307482272386550903, `Z`=4.464599609375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=11); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=26.91733169555664062, `Y`=0.276749253273010253, `Z`=5.36474609375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=10); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=23.91736030578613281, `Y`=0.24601621925830841, `Z`=6.2646484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=9); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.91770744323730468, `Y`=0.214912295341491699, `Z`=7.164794921875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=8); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=17.91773605346679687, `Y`=0.184179276227951049, `Z`=8.064697265625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=7); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.91776466369628906, `Y`=0.1534462571144104, `Z`=3.52587890625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=6); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.91829681396484375, `Y`=0.122501105070114135, `Z`=3.868896484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=5); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.918325424194335937, `Y`=0.091768078505992889, `Z`=3.220703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=4); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.918354511260986328, `Y`=0.061035059392452239, `Z`=0.955078125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=3); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.918701171875, `Y`=0.02993113175034523, `Z`=0.448486328125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=2); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.08126994222402572, `Z`=-0.01220703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx` IN (1,0)); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=26.48284149169921875, `Y`=28.57548141479492187, `Z`=-11.6884765625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx` IN (15,14)); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=24.44380760192871093, `Y`=26.37537765502929687, `Z`=-10.78857421875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=13); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=22.40445518493652343, `Y`=24.17490386962890625, `Z`=-9.888427734375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=12); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.36510467529296875, `Y`=21.97442817687988281, `Z`=-8.988525390625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=11); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=18.32607078552246093, `Y`=19.77432441711425781, `Z`=-8.088623046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=10); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=16.28672027587890625, `Y`=17.57384872436523437, `Z`=-7.1884765625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=9); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.24768638610839843, `Y`=15.37374496459960937, `Z`=-6.28857421875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=8); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=12.20833492279052734, `Y`=13.17327022552490234, `Z`=-5.388427734375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=7); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=10.16898441314697265, `Y`=10.9727945327758789, `Z`=-4.488525390625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=6); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.130135536193847656, `Y`=8.772532463073730468, `Z`=-3.588623046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=5); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.090785026550292968, `Y`=6.572057247161865234, `Z`=-2.6884765625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=4); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.051434040069580078, `Y`=4.37158203125, `Z`=-1.78857421875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=3); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.012399911880493164, `Y`=2.171478271484375, `Z`=-0.888427734375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=2); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.02695085667073726, `Y`=-0.02899717725813388, `Z`=0.011474609375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx` IN (1,0)); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=31.30539703369140625, `Y`=-0.05143170058727264, `Z`=-20.65771484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx` IN (18,17)); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=28.95867156982421875, `Y`=-0.04758555814623832, `Z`=-18.65771484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=16); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=26.74705314636230468, `Y`=-0.04385897144675254, `Z`=-16.65771484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=15); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=24.6612701416015625, `Y`=-0.04059578850865364, `Z`=-14.65771484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=14); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=22.6614837646484375, `Y`=-0.03731914609670639, `Z`=-12.65771484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=13); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.72351455688476562, `Y`=-0.03419293835759162, `Z`=-10.65771484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=12); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=18.83244895935058593, `Y`=-0.0310372095555067, `Z`=-8.65771484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=11); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=16.97827911376953125, `Y`=-0.02797898091375827, `Z`=-6.65771484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=10); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=15.15440559387207031, `Y`=-0.0250185914337635, `Z`=-4.65771484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=9); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=13.48690223693847656, `Y`=-0.02236642129719257, `Z`=-2.91259765625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=8); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.64738845825195312, `Y`=-0.01925322227180004, `Z`=-2.181396484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=7); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=9.767076492309570312, `Y`=-0.01618730276823043, `Z`=-1.72119140625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=6); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=7.869415283203125, `Y`=-0.01303191296756267, `Z`=-0.7763671875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=5); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.946344852447509765, `Z`=-0.1259765625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=4); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.975880384445190429, `Z`=-0.245849609375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=3); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.969985604286193847, `Z`=-0.157958984375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx`=2); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.06498727202415466, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=8661 AND `Idx` IN (1,0)); -- SpellId : 84714
UPDATE `areatrigger_create_properties_spline_point` SET `X`=32.4400787353515625, `Y`=-14.5982141494750976, `Z`=-10.77001953125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx` IN (15,14)); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=29.70429611206054687, `Y`=-13.3669567108154296, `Z`=-9.869873046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=13); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=26.96867561340332031, `Y`=-12.1358823776245117, `Z`=-8.969970703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=12); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=24.23270988464355468, `Y`=-10.9047880172729492, `Z`=-8.070068359375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=11); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=21.49709129333496093, `Y`=-9.67371273040771484, `Z`=-7.169921875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=10); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=18.76128768920898437, `Y`=-8.44280052185058593, `Z`=-6.27001953125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=9); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=16.02550506591796875, `Y`=-7.21154403686523437, `Z`=-5.369873046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=8); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=13.289703369140625, `Y`=-5.98063135147094726, `Z`=-4.469970703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=7); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=10.55392074584960937, `Y`=-4.7493748664855957, `Z`=-3.570068359375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=6); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=7.818300724029541015, `Y`=-3.51829981803894042, `Z`=-2.669921875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=5); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.082335948944091796, `Y`=-2.28720545768737792, `Z`=-1.77001953125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=4); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.346715927124023437, `Y`=-1.0561307668685913, `Z`=-0.869873046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=3); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.38924896717071533, `Y`=0.174963697791099548, `Z`=0.030029296875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=2); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.12486910820007324, `Y`=1.406038403511047363, `Z`=-0.942138671875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx` IN (1,0)); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.10168443620204925, `Y`=-0.04524064809083938, `Z`=0.304931640625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2147808189 AND `Idx` IN (4,3)); -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.308772921562194824, `Y`=0.669247806072235107, `Z`=-3.695068359375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2147808189 AND `Idx`=2); -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.572322368621826171, `Y`=2.373067378997802734, `Z`=-4.695068359375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2147808189 AND `Idx` IN (1,0)); -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0, `Y`=-0, `Z`=0, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2147808189 AND `Idx` IN (4,3)); -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.96736907958984375, `Y`=0.440270274877548217, `Z`=-6, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2147808189 AND `Idx`=2); -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.451359748840332031, `Y`=0.660246312618255615, `Z`=-7, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2147808189 AND `Idx` IN (1,0)); -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.48257592320442199, `Y`=0.040868561714887619, `Z`=1.39306640625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2147808189 AND `Idx` IN (4,3)); -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.074483036994934082, `Y`=-0.23381511867046356, `Z`=-2.60693359375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2147808189 AND `Idx`=2); -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.778302669525146484, `Y`=-1.49736452102661132, `Z`=-3.60693359375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2147808189 AND `Idx` IN (1,0)); -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.19666069746017456, `Y`=0.000003911813564627, `Z`=0, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=6887 AND `Idx` IN (3,2)); -- SpellId : 202770
UPDATE `areatrigger_create_properties_spline_point` SET `X`=12.08291435241699218, `Y`=9.279479026794433593, `Z`=-0.64501953125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx` IN (15,14)); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=9.703614234924316406, `Y`=7.452359676361083984, `Z`=-0.640380859375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=13); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=7.324184894561767578, `Y`=5.625032901763916015, `Z`=-0.515380859375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=12); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.945092678070068359, `Y`=3.797785043716430664, `Z`=-0.515380859375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=11); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.565663814544677734, `Y`=1.970458269119262695, `Z`=-0.390380859375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=10); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.18657107651233673, `Y`=0.143210440874099731, `Z`=-0.015380859375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=9); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.19285774230957031, `Y`=-1.68411648273468017, `Z`=0.093017578125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=8); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-4.57207870483398437, `Y`=-3.51157188415527343, `Z`=0.733154296875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=7); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-6.95137929916381835, `Y`=-5.33869123458862304, `Z`=1.427734375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=6); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-9.33080768585205078, `Y`=-7.16601800918579101, `Z`=1.766845703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=5); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-11.7099008560180664, `Y`=-8.99326610565185546, `Z`=2.29248046875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=4); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-14.0893287658691406, `Y`=-10.8205928802490234, `Z`=2.69482421875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=3); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-16.4684219360351562, `Y`=-12.6478404998779296, `Z`=3.033935546875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx`=2); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-18.8478507995605468, `Y`=-14.4751672744750976, `Z`=2.856201171875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=9080 AND `Idx` IN (1,0)); -- SpellId : 230241
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-1.50481462478637695, `Y`=0.485531568527221679, `Z`=-4, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2147808189 AND `Idx`=2); -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.6017913818359375, `Y`=0.165067970752716064, `Z`=-5, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=2147808189 AND `Idx` IN (1,0)); -- SpellId : 324541 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-7.4462890625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (17,16)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=41.99997329711914062, `Z`=-6.76318359375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=15); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-6.1484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=14); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-5.409423828125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=13); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-4.794921875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=12); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-4.28759765625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=11); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-3.816162109375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=10); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-3.224609375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=9); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-2.86962890625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=8); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-2.149169921875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=7); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-1.931640625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=6); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-1.584716796875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=5); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-1.204833984375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=4); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.5810546875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=3); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.3154296875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=2); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0, `Y`=-0, `Z`=0, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=6887 AND `Idx` IN (3,2)); -- SpellId : 202770
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.804894506931304931, `Y`=0.14921058714389801, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=6887 AND `Idx` IN (1,0)); -- SpellId : 202770
UPDATE `areatrigger_create_properties_spline_point` SET `X`=9.933818817138671875, `Y`=-31.4692268371582031, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx` IN (13,12)); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-11.4711894989013671, `Y`=-27.7203788757324218, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=11); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-23.9450702667236328, `Y`=-12.4753189086914062, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=10); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-23.4330730438232421, `Y`=5.186620235443115234, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=9); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-12.7894906997680664, `Y`=16.65610122680664062, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=8); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.779097557067871093, `Y`=17.983062744140625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=7); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=10.12992191314697265, `Y`=11.06257057189941406, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=6); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.89686012268066406, `Y`=1.570361852645874023, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=5); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=7.592141628265380859, `Y`=-4.83309173583984375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=4); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.806121468544006347, `Y`=-5.7218170166015625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=3); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-1.14724707603454589, `Y`=-2.77221465110778808, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=2); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0, `Y`=0, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx` IN (1,0)); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.80068397521972656, `Y`=-39.9131126403808593, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx` IN (17,16)); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-6.18545341491699218, `Y`=-41.5454826354980468, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=15); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-27.317605972290039, `Y`=-27.8308162689208984, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=14); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-35.4955215454101562, `Y`=-5.95837354660034179, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=13); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-29.5293598175048828, `Y`=14.7097930908203125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=12); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-13.8529796600341796, `Y`=26.60097122192382812, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=11); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.990203380584716796, `Y`=26.70011711120605468, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=10); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=16.8243255615234375, `Y`=17.11905097961425781, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=9); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.71924591064453125, `Y`=3.468426704406738281, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=8); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=16.1199493408203125, `Y`=-8.03075218200683593, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=7); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.939218997955322265, `Y`=-13.3074808120727539, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=6); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-1.7610093355178833, `Y`=-11.8734035491943359, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=5); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-6.29753398895263671, `Y`=-6.42616701126098632, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=4); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-5.9090275764465332, `Y`=-0.99713337421417236, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=3); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.67659473419189453, `Y`=1.333057165145874023, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=2); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.008485940285027027, `Y`=-0.00466335983946919, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx` IN (1,0)); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-11.7149276733398437, `Y`=-37.1989059448242187, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx` IN (15,14)); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-31.9267616271972656, `Y`=-16.633758544921875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=13); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-31.4759483337402343, `Y`=9.912614822387695312, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=12); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-13.8614654541015625, `Y`=26.60563468933105468, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=11); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.110301971435546875, `Y`=25.75298881530761718, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=10); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=21.28450775146484375, `Y`=11.08917236328125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=9); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=20.03014183044433593, `Y`=-6.30820655822753906, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=8); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.3168792724609375, `Y`=-15.9633808135986328, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=7); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-4.50556468963623046, `Y`=-14.307286262512207, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=6); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-10.6422538757324218, `Y`=-5.544586181640625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=5); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-8.58422279357910156, `Y`=2.703581571578979492, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=4); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.7722930908203125, `Y`=5.321126937866210937, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=3); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.900939702987670898, `Y`=2.861366987228393554, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=2); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=19.332366943359375, `Y`=30.36856651306152343, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx` IN (14,13)); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=31.46922683715820312, `Y`=9.933818817138671875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=12); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=27.72037887573242187, `Y`=-11.4711894989013671, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=11); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=12.47531890869140625, `Y`=-23.9450702667236328, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=10); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-5.18651628494262695, `Y`=-23.4327430725097656, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=9); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-16.6562061309814453, `Y`=-12.7898206710815429, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=8); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-17.983062744140625, `Y`=0.779097557067871093, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=7); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-11.06268310546875, `Y`=10.13013839721679687, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=6); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-1.57057833671569824, `Y`=11.89674663543701171, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=5); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.833308219909667968, `Y`=7.592254161834716796, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=4); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.721600532531738281, `Y`=1.806008696556091308, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=3); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.771885395050048828, `Y`=-1.14714336395263671, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=2); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=44.95787429809570312, `Y`=-1.94763100147247314, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx` IN (17,16)); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=30.97514152526855468, `Y`=-28.3643074035644531, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=15); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.103508949279785156, `Y`=-38.6646041870117187, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=14); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-19.332366943359375, `Y`=-30.3685665130615234, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=13); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-31.4692268371582031, `Y`=-9.93381881713867187, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=12); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-27.7203788757324218, `Y`=11.47118949890136718, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=11); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-12.4753189086914062, `Y`=23.94507026672363281, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=10); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.186516284942626953, `Y`=23.43274307250976562, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=9); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=16.65620613098144531, `Y`=12.78982067108154296, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=8); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=17.983062744140625, `Y`=-0.77909755706787109, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=7); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.06268310546875, `Y`=-10.1301383972167968, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=6); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.570578336715698242, `Y`=-11.8967466354370117, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=5); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-4.83330821990966796, `Y`=-7.59225416183471679, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=4); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-5.72160053253173828, `Y`=-1.8060086965560913, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=3); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.77188539505004882, `Y`=1.147143363952636718, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=2); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.95650482177734375, `Y`=44.09970855712890625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx` IN (17,16)); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=37.24788665771484375, `Y`=19.4060516357421875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=15); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=35.49391555786132812, `Y`=-16.1610488891601562, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=14); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=9.025593757629394531, `Y`=-34.85028076171875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=13); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-20.0803565979003906, `Y`=-26.1873798370361328, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=12); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-29.9894866943359375, `Y`=-0.79549181461334228, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=11); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-17.1812667846679687, `Y`=20.82791328430175781, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=10); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.77666473388671875, `Y`=23.51982688903808593, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=9); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=18.62394332885742187, `Y`=9.70302581787109375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=8); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=16.38188743591308593, `Y`=-7.45877647399902343, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=7); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.760797500610351562, `Y`=-14.520766258239746, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=6); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-7.30167913436889648, `Y`=-9.52271842956542968, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=5); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-8.99700832366943359, `Y`=-0.23875944316387176, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=4); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.81811976432800292, `Y`=4.62842416763305664, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=3); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.59725731611251831, `Y`=2.940172433853149414, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=20575 AND `Idx`=2); -- SpellId : 330606
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-1.12437951564788818, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=6887 AND `Idx` IN (1,0)); -- SpellId : 202770
UPDATE `areatrigger_create_properties_spline_point` SET `X`=35.53652572631835937, `Y`=0.231096595525741577, `Z`=4.038330078125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (12,11)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=32.9998779296875, `Z`=2.8759765625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=10); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=29.99987220764160156, `Z`=2.765869140625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=9); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.027099609375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (8,7)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.10595703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (6,5,4)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.081787109375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (3,2)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=4.896484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (15,14)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=4.0556640625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=13); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=3.03271484375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=12); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=2.173095703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=11); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.13330078125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=10); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.645263671875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=9); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=21.80018043518066406, `Y`=-0.56728953123092651, `Z`=0.14208984375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=8); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.223388671875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=7); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.123291015625, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=6); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.42919921875, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=5); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.44970703125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=4); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.808349609375, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=3); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.577392578125, `VerifiedBuild`=44908 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=2); -- SpellId : 279302




UPDATE `quest_offer_reward` SET `RewardText`='I can feel their power. Perhaps they will give us the advantage we need.', `VerifiedBuild`=44908 WHERE `ID`=58820; -- Bindings of Fleshcrafting
UPDATE `quest_offer_reward` SET `RewardText`='These belonged to the Primus!', `VerifiedBuild`=44908 WHERE `ID`=61869; -- Search the Place
UPDATE `quest_offer_reward` SET `RewardText`='It\'s like we were never gone.', `VerifiedBuild`=44908 WHERE `ID`=59722; -- Grand Theft Necropolis
UPDATE `quest_offer_reward` SET `RewardText`='It is time to depart.', `VerifiedBuild`=44908 WHERE `ID`=61594; -- This Way Out
UPDATE `quest_offer_reward` SET `RewardText`='Come, $p. Would you not witness your success firsthand?', `VerifiedBuild`=44908 WHERE `ID`=61569; -- Keys to the Ruin
UPDATE `quest_offer_reward` SET `RewardText`='Your strength never fails to impress me.', `VerifiedBuild`=44908 WHERE `ID`=61551; -- Crush 'Em All
UPDATE `quest_offer_reward` SET `RewardText`='Expertly navigated. Perhaps you should pilot the necropolis.', `VerifiedBuild`=44908 WHERE `ID`=61548; -- Set Me Free
UPDATE `quest_offer_reward` SET `RewardText`='He ought to be here... but he isn\'t.', `VerifiedBuild`=44908 WHERE `ID`=60112; -- Cut to the Bone
UPDATE `quest_offer_reward` SET `RewardText`='It seems we\'ve been discovered. Times like these demand flexibility.', `VerifiedBuild`=44908 WHERE `ID`=61518; -- Follow Me
UPDATE `quest_offer_reward` SET `RewardText`='Let us put our plan into motion.', `VerifiedBuild`=44908 WHERE `ID`=61485; -- I'll Only Say This Once
UPDATE `quest_offer_reward` SET `RewardText`='We are pleased to see your return.', `VerifiedBuild`=44908 WHERE `ID`=57778; -- The Maldraxxian Job
UPDATE `quest_offer_reward` SET `RewardText`='You\'ve done well, Maw Walker. The Eyes place their trust in you.', `VerifiedBuild`=44908 WHERE `ID`=62169; -- Eyes to the Sky
UPDATE `quest_offer_reward` SET `RewardText`='You\'ve done well, Maw Walker.', `VerifiedBuild`=44908 WHERE `ID`=57648; -- The Impossible Plan
UPDATE `quest_offer_reward` SET `RewardText`='I shall execute Akarek\'s will once more.', `VerifiedBuild`=44908 WHERE `ID`=61323; -- See What You've Done
UPDATE `quest_offer_reward` SET `RewardText`='My baroness\'s trust in you is well warranted.', `VerifiedBuild`=44908 WHERE `ID`=61252; -- Call In a Favor
UPDATE `quest_offer_reward` SET `RewardText`='Thank you for returning me to my sister.', `VerifiedBuild`=44908 WHERE `ID`=57644; -- No Friend Left Behind
UPDATE `quest_offer_reward` SET `RewardText`='I appreciate your punctuality.', `VerifiedBuild`=44908 WHERE `ID`=61230; -- Outside Influence
UPDATE `quest_offer_reward` SET `RewardText`='We have suffered so terribly. I must preserve what I still have.', `VerifiedBuild`=44908 WHERE `ID`=61226; -- Extra Limbs
UPDATE `quest_offer_reward` SET `RewardText`='Thanks for the rescue! I owe you one.', `VerifiedBuild`=44908 WHERE `ID`=61335; -- Rage Against the Cage
UPDATE `quest_offer_reward` SET `RewardText`='So you need a mechanic? Well, you\'re in luck!', `VerifiedBuild`=44908 WHERE `ID`=61227; -- The Other Foot
UPDATE `quest_offer_reward` SET `RewardText`='I see cowardice in these eyes. You have done well.', `VerifiedBuild`=44908 WHERE `ID`=59265; -- Prying Eyes
UPDATE `quest_offer_reward` SET `RewardText`='The baroness inspires great dedication. I trust in her plans.', `VerifiedBuild`=44908 WHERE `ID`=57649; -- Whisper of Hope

DELETE FROM `quest_poi` WHERE (`QuestID`=61335 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=61335 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=61335 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=61335 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(61335, 0, 3, 32, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 1856577, 0, 44908), -- Rage Against the Cage
(61335, 0, 2, 1, 405609, 338640, 2222, 1536, 0, 0, 0, 0, 0, 1856576, 0, 44908), -- Rage Against the Cage
(61335, 0, 1, 0, 405608, 173312, 2222, 1536, 0, 0, 0, 0, 0, 1851921, 0, 44908), -- Rage Against the Cage
(61335, 0, 0, -1, 0, 0, 2222, 1536, 0, 0, 0, 0, 0, 2003602, 0, 44908); -- Rage Against the Cage

UPDATE `quest_poi` SET `VerifiedBuild`=44908 WHERE (`QuestID`=50599 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=61335 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=61335 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=61335 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=61335 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(61335, 3, 0, 4038, -2436, 3348, 44908), -- Rage Against the Cage
(61335, 2, 0, 4038, -2436, 3348, 44908), -- Rage Against the Cage
(61335, 1, 0, 4003, -2428, 3348, 44908), -- Rage Against the Cage
(61335, 0, 0, 4057, -2498, 3327, 44908); -- Rage Against the Cage

UPDATE `quest_poi_points` SET `VerifiedBuild`=44908 WHERE (`QuestID`=50599 AND `Idx1`=0 AND `Idx2`=0);


UPDATE `quest_greeting` SET `Greeting`='Wait till the other houses see the Zerekriss.', `VerifiedBuild`=44908 WHERE (`ID`=164679 AND `Type`=0); -- 164679


UPDATE `quest_details` SET `VerifiedBuild`=44908 WHERE `ID` IN (60184, 59625, 58820, 61869, 59722, 61594, 61569, 61551, 61548, 60112, 61518, 61485, 57778, 62169, 57648, 61323, 61252, 57644, 61335, 61230, 61227, 61226);


UPDATE `quest_request_items` SET `CompletionText`='You offer gifts?' WHERE `ID`=59265;
UPDATE `quest_request_items` SET `CompletionText`='What did you find?' WHERE `ID`=61869;
UPDATE `quest_request_items` SET `CompletionText`='Got a way to free me?' WHERE `ID`=61335;
UPDATE `quest_request_items` SET `CompletionText`='Please spare him this pain.' WHERE `ID`=57644;
UPDATE `quest_request_items` SET `CompletionText`='Take caution.' WHERE `ID`=61548;

DELETE FROM `creature_queststarter` WHERE (`id`=160518 AND `quest`=61226);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(160518, 61226, 44908); -- Extra Limbs offered Whisperer Vyn

UPDATE `creature_queststarter` SET `VerifiedBuild`=44908 WHERE (`id`=173306 AND `quest`=60184) OR (`id`=161988 AND `quest`=59625) OR (`id`=161907 AND `quest` IN (58820,57778,62169)) OR (`id`=164679 AND `quest` IN (61869,59722)) OR (`id`=172573 AND `quest` IN (61594,61551,61548)) OR (`id`=172805 AND `quest`=61569) OR (`id`=172574 AND `quest` IN (60112,61518)) OR (`id`=160518 AND `quest` IN (61485,57648)) OR (`id`=158529 AND `quest` IN (61323,61226)) OR (`id`=174343 AND `quest`=61252) OR (`id`=158604 AND `quest`=57644) OR (`id`=159814 AND `quest`=61335) OR (`id`=171875 AND `quest`=61230) OR (`id`=164646 AND `quest`=61227);


UPDATE `creature_questender` SET `VerifiedBuild`=44908 WHERE (`id`=161907 AND `quest` IN (58820,61869,62169,57648)) OR (`id`=173306 AND `quest`=59722) OR (`id`=172805 AND `quest`=61594) OR (`id`=172573 AND `quest` IN (61569,61551,61548)) OR (`id`=172574 AND `quest` IN (60112,61518,61485)) OR (`id`=160518 AND `quest` IN (57778,59265,57649)) OR (`id`=164619 AND `quest`=61323) OR (`id`=171875 AND `quest`=61252) OR (`id`=158604 AND `quest` IN (57644,61226)) OR (`id`=174343 AND `quest`=61230) OR (`id`=159814 AND `quest` IN (61335,61227));



UPDATE `quest_template` SET `VerifiedBuild`=44908 WHERE `ID` IN (54562, 50322, 54573, 51530, 54602);
UPDATE `quest_template` SET `ContentTuningID`=290, `RewardCurrencyID1`=0, `RewardCurrencyQty1`=0, `VerifiedBuild`=44908 WHERE `ID`=54389; -- Darkshore Donations: Mistscale
UPDATE `quest_template` SET `ContentTuningID`=290, `RewardCurrencyID1`=0, `RewardCurrencyQty1`=0, `VerifiedBuild`=44908 WHERE `ID`=54383; -- Darkshore Donations: Shimmerscale Diving Suit


UPDATE `quest_objectives` SET `VerifiedBuild`=44908 WHERE `ID` IN (387619, 338793, 312197, 387074, 387641, 387062, 336132, 336131, 336130, 387737);


UPDATE `quest_visual_effect` SET `VerifiedBuild`=44908 WHERE (`Index`=0 AND `ID` IN (336131,336130));

DELETE FROM `gameobject_template` WHERE `entry`=340667;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(340667, 5, 60153, 'Candelabra', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44908); -- Candelabra

UPDATE `gameobject_template` SET `VerifiedBuild`=44908 WHERE `entry` IN (357090, 364445, 348541, 353762, 350778, 357094, 357958, 357950, 352569, 357955, 357947, 354683, 357960, 357952, 357944, 357224, 357240, 357957, 357949, 352576, 354682, 357954, 357946, 357959, 357951, 357943, 352574, 354684, 357956, 357948, 334123, 339646, 357953, 357945, 357464, 339652, 346019, 358579, 349493, 350085, 352070, 349086, 352118, 350801, 363444, 358533, 349088, 341347, 341345, 288598, 288597, 341359, 341360, 341364, 341356, 341346, 341407, 341358, 340721, 340722, 337095, 349899, 355937, 340666, 359289, 359288, 359278, 357939, 336691, 357940, 338640, 349082, 338683, 349981, 349575);
UPDATE `gameobject_template` SET `name`='Translocation Sphere: Zerekriss Lower Floor', `VerifiedBuild`=44908 WHERE `entry`=357244; -- 357244
UPDATE `gameobject_template` SET `name`='Translocation Sphere: Zerekriss Upper Floor', `VerifiedBuild`=44908 WHERE `entry`=357243; -- 357243
UPDATE `gameobject_template` SET `name`='Runic Keyhole', `castBarCaption`='Placing', `VerifiedBuild`=44908 WHERE `entry`=356608; -- 356608
UPDATE `gameobject_template` SET `name`='Cage', `castBarCaption`='Unlocking', `VerifiedBuild`=44908 WHERE `entry`=356547; -- Клетка
UPDATE `gameobject_template` SET `castBarCaption`='Opening', `Data32`=108, `VerifiedBuild`=44908 WHERE `entry`=345456; -- Chest of Eyes


UPDATE `gameobject_questitem` SET `VerifiedBuild`=44908 WHERE (`Idx`=0 AND `GameObjectEntry` IN (357094,352070,345456)) OR (`Idx`=1 AND `GameObjectEntry`=345456);

DELETE FROM `world_quest` WHERE `id` IN (49195 /*49195*/, 60416 /*60416*/, 54363 /*54363*/, 54389 /*54389*/, 66694 /*66694*/, 59828 /*59828*/, 54383 /*54383*/, 43478 /*43478*/, 52951 /*52951*/, 60423 /*60423*/, 60408 /*60408*/, 54602 /*54602*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(49195, 604800, 14250, 1), -- 49195
(60416, 259200, 19329, 1), -- 60416
(54363, 86400, 16717, 1), -- 54363
(54389, 86400, 16777, 1), -- 54389
(66694, 604800, 21654, 2), -- 66694
(59828, 86400, 17592, 3), -- 59828
(54383, 86400, 16774, 1), -- 54383
(43478, 86400, 12225, 1), -- 43478
(52951, 604800, 16006, 3), -- 52951
(60423, 259200, 19331, 1), -- 60423
(60408, 259200, 19326, 1), -- 60408
(54602, 86400, 16888, 1); -- 54602


UPDATE `creature_template_scaling` SET `VerifiedBuild`=44908 WHERE (`DifficultyID`=0 AND `Entry` IN (167808,172167,167807,173110,170891,170901,164831,173943,164860,171419,166908,171358,158637,173944,170893,157519,168941,169245,168952,168951,162017,173306,167458,167483,168972,165366,161018,165822,160479,156591,171546,164679,164678,171547,161016,160474,171549,157669,176400,172901,172873,174358,174357,172933,157076,175395,175396,162218,169825,165663,172809,172805,172998,172997,172996,172696,172709,168692,170194,160314,157169,160264,174792,172800,174352,168690,168946,169129,172574,172573,161922,160251,161930,161928,160250,157096,157132,157119,164830,164829,144929,175265,168331,168342,168322,169341,169700,165337,167353,169634,169121,169295,169636,165349,168424,165644,162562,176288,175024,162584,160912,176285,176287,163415,160888,160916,174410,175833,167359,162593,162669,174649,158405,166728,167356,172566,165214,175478,165566,32639,32638,62822,62821,165215,175312,175371,172680,175370,165321,167210,167649,175311,175310,161985,175314,165431,161988,173019,165350,161907,174624,167208,167207,167645,173000,172173,164619,172011,167831,173821,173827,173826,173825,173829,160571,168737,164771,159753,171941,168644,174343,159708,171939,168764,160523,158604,159814,171814,158529,159636,168913,167603,174102,168675,174234,160518,164646,159747,171875,92870,165568,159105,172607,160226,159916,164798,158916,159901,173996,174095,174650,159750,159714,174024,159737,159739,160349,166493,162114,176219,158977,168857,168859,173274,169249,169250,169184,168677,169395,159893,165376,157517,174533,169699,172609,169698,160522,171337,166186,164312,158032,165551,165549,165037,158053,166370,172425,158387,163084,158566,165561,175023,161585,162816,158752,161559,166421,166400,166545,166540,166564,159830,165473,161710,166424,160256,166562,164492,166552,159696,159689,174652,169795,169830,159825,159824,159822,162588,164507,163041,164508,162872,164997,172423,166375,168226,169055,170496,158642,172581,162853,168216,175022,176024,169751,168196,173200,162259,176023,170191,174653,159856,175021,162258,168045,161668,167641,161679,167355,167642,167273,161676,161890,161881,157514,156558,171375,172567,170971,167741,167747,167743,164833,167737,160415,160424,157671,166423,157803,157843,167354,121541,175998,168685,160417,158339,175791,161994,167748,167209,165347,164915,172176,161905,161904,161909,165017,167201,167205,165413,160419,160418,164667,174505,173022,164221,175963));


UPDATE `creature_model_info` SET `BoundingRadius`=4.046173095703125, `CombatReach`=0, `VerifiedBuild`=44908 WHERE `DisplayID`=96590;
UPDATE `creature_model_info` SET `BoundingRadius`=1.158507704734802246, `CombatReach`=5, `VerifiedBuild`=44908 WHERE `DisplayID`=98432;
UPDATE `creature_model_info` SET `VerifiedBuild`=44908 WHERE `DisplayID` IN (100389, 95590, 93574, 98661, 97896, 95946, 94241, 94245, 96984, 96251, 96441, 17200, 95385, 95949, 95950, 97654, 97655, 95516, 96252, 96897, 95783, 97066, 95738, 95577, 97016, 96898, 96772, 95839, 99929, 7572, 99905, 83594, 45887, 61550, 97652, 59546, 97653, 62719, 15983, 94402, 80245, 94833, 94526, 28282, 28111, 42722, 42720, 99515, 99843, 99524, 96438, 99520, 99514, 99516, 94718, 96335, 95394, 97877, 96115, 96860, 99117, 95327, 96434, 98461, 96435, 96138, 27710, 94178, 95704, 96752, 97665, 98003, 96946, 80021, 97322, 96821, 94407, 100155, 95848, 95826, 96553, 96183, 94039, 28815, 96876, 95804, 96272, 80031, 97076, 99910, 95784, 96133, 95011, 96187, 97894, 100590, 96271, 95222, 97388, 95559, 95769, 95788, 95967, 94070, 94058, 88361, 94761, 94089, 93933, 98582, 9904, 95959, 96749, 97079, 95947, 96787, 98055, 94913, 98463, 11094, 92246, 99861, 98465, 98462, 95797, 98467, 34901, 94882, 98673, 94932, 96223, 99867, 96211, 95384, 94704, 95113, 93593, 100181, 96469, 96555, 96561, 96466, 95965, 95964, 96212, 95395, 97893, 11686, 94812, 95573, 27823, 95944, 98197, 95786, 94053, 95687, 95655, 96072, 95231, 96201, 70087, 98076, 96102, 94122, 98077, 95511, 95979, 95792, 94148, 95948, 95791, 100073);
UPDATE `creature_model_info` SET `CombatReach`=4, `VerifiedBuild`=44908 WHERE `DisplayID`=100433;
UPDATE `creature_model_info` SET `BoundingRadius`=1.420079946517944335, `CombatReach`=1.5, `VerifiedBuild`=44908 WHERE `DisplayID`=95571;
UPDATE `creature_model_info` SET `BoundingRadius`=4.491945266723632812, `CombatReach`=4.840000152587890625, `VerifiedBuild`=44908 WHERE `DisplayID` IN (94283, 94177);
UPDATE `creature_model_info` SET `BoundingRadius`=2.919764280319213867, `CombatReach`=3.145999908447265625, `VerifiedBuild`=44908 WHERE `DisplayID`=94243;
UPDATE `creature_model_info` SET `BoundingRadius`=0.699441432952880859, `CombatReach`=1.25, `VerifiedBuild`=44908 WHERE `DisplayID` IN (97424, 96926, 96209);
UPDATE `creature_model_info` SET `BoundingRadius`=0.704173088073730468, `CombatReach`=1.440000057220458984, `VerifiedBuild`=44908 WHERE `DisplayID`=94145;
UPDATE `creature_model_info` SET `BoundingRadius`=0.696711182594299316, `CombatReach`=2.340000152587890625, `VerifiedBuild`=44908 WHERE `DisplayID` IN (97587, 95963);
UPDATE `creature_model_info` SET `BoundingRadius`=0.503912866115570068, `CombatReach`=1.60000002384185791, `VerifiedBuild`=44908 WHERE `DisplayID`=96899;
UPDATE `creature_model_info` SET `BoundingRadius`=1.354613304138183593, `CombatReach`=1.5, `VerifiedBuild`=44908 WHERE `DisplayID`=95483;
UPDATE `creature_model_info` SET `BoundingRadius`=0.965654373168945312, `CombatReach`=1.019999980926513671, `VerifiedBuild`=44908 WHERE `DisplayID`=95546;
UPDATE `creature_model_info` SET `BoundingRadius`=1.022457480430603027, `CombatReach`=1.079999923706054687, `VerifiedBuild`=44908 WHERE `DisplayID`=95545;
UPDATE `creature_model_info` SET `BoundingRadius`=1.136063933372497558, `CombatReach`=1.20000004768371582, `VerifiedBuild`=44908 WHERE `DisplayID` IN (95951, 95386, 95392);
UPDATE `creature_model_info` SET `BoundingRadius`=8.167173385620117187, `CombatReach`=8.800000190734863281, `VerifiedBuild`=44908 WHERE `DisplayID`=98425;
UPDATE `creature_model_info` SET `BoundingRadius`=0.100000001490116119, `VerifiedBuild`=44908 WHERE `DisplayID`=94707;
UPDATE `creature_model_info` SET `BoundingRadius`=1.832318067550659179, `VerifiedBuild`=44908 WHERE `DisplayID`=58783;
UPDATE `creature_model_info` SET `BoundingRadius`=6.104961872100830078, `CombatReach`=6.577999591827392578, `VerifiedBuild`=44908 WHERE `DisplayID`=94185;
UPDATE `creature_model_info` SET `BoundingRadius`=0.839329779148101806, `CombatReach`=1.5, `VerifiedBuild`=44908 WHERE `DisplayID` IN (96193, 96135, 96196, 96200);
UPDATE `creature_model_info` SET `BoundingRadius`=1.125, `CombatReach`=1.875, `VerifiedBuild`=44908 WHERE `DisplayID` IN (7899, 15963);
UPDATE `creature_model_info` SET `BoundingRadius`=0.85123300552368164, `VerifiedBuild`=44908 WHERE `DisplayID`=94900;
UPDATE `creature_model_info` SET `BoundingRadius`=1.075765132904052734, `CombatReach`=3, `VerifiedBuild`=44908 WHERE `DisplayID`=83597;
UPDATE `creature_model_info` SET `BoundingRadius`=2.138610363006591796, `CombatReach`=2.5, `VerifiedBuild`=44908 WHERE `DisplayID`=94056;
UPDATE `creature_model_info` SET `BoundingRadius`=1.710888266563415527, `CombatReach`=2, `VerifiedBuild`=44908 WHERE `DisplayID`=94227;
UPDATE `creature_model_info` SET `BoundingRadius`=2.099999904632568359, `CombatReach`=8.399999618530273437, `VerifiedBuild`=44908 WHERE `DisplayID`=96375;
UPDATE `creature_model_info` SET `BoundingRadius`=1.098554372787475585, `CombatReach`=0.375, `VerifiedBuild`=44908 WHERE `DisplayID`=97656;
UPDATE `creature_model_info` SET `BoundingRadius`=3.156650543212890625, `CombatReach`=8.400000572204589843, `VerifiedBuild`=44908 WHERE `DisplayID`=96185;
UPDATE `creature_model_info` SET `BoundingRadius`=0.354000002145767211, `CombatReach`=2.25, `VerifiedBuild`=44908 WHERE `DisplayID`=96443;
UPDATE `creature_model_info` SET `BoundingRadius`=6.953752040863037109, `CombatReach`=4.5, `VerifiedBuild`=44908 WHERE `DisplayID`=96932;
UPDATE `creature_model_info` SET `BoundingRadius`=0.606301963329315185, `CombatReach`=0, `VerifiedBuild`=44908 WHERE `DisplayID`=94779;
UPDATE `creature_model_info` SET `BoundingRadius`=2.153142213821411132, `CombatReach`=2.25, `VerifiedBuild`=44908 WHERE `DisplayID`=98605;
UPDATE `creature_model_info` SET `BoundingRadius`=3.013292551040649414, `CombatReach`=1.949999928474426269, `VerifiedBuild`=44908 WHERE `DisplayID`=96924;
UPDATE `creature_model_info` SET `BoundingRadius`=6.533738613128662109, `CombatReach`=7.040000438690185546, `VerifiedBuild`=44908 WHERE `DisplayID`=99188;
UPDATE `creature_model_info` SET `BoundingRadius`=3.266869306564331054, `CombatReach`=3.520000219345092773, `VerifiedBuild`=44908 WHERE `DisplayID` IN (94052, 94240);
UPDATE `creature_model_info` SET `BoundingRadius`=3.097768306732177734, `CombatReach`=1.5, `VerifiedBuild`=44908 WHERE `DisplayID`=82379;
UPDATE `creature_model_info` SET `BoundingRadius`=5.390334606170654296, `CombatReach`=5.808000564575195312, `VerifiedBuild`=44908 WHERE `DisplayID`=94041;
UPDATE `creature_model_info` SET `BoundingRadius`=9.271669387817382812, `CombatReach`=6, `VerifiedBuild`=44908 WHERE `DisplayID`=94406;
UPDATE `creature_model_info` SET `BoundingRadius`=1.390750408172607421, `CombatReach`=0.900000035762786865, `VerifiedBuild`=44908 WHERE `DisplayID`=94594;
UPDATE `creature_model_info` SET `BoundingRadius`=1.197071075439453125, `CombatReach`=1.5, `VerifiedBuild`=44908 WHERE `DisplayID`=95112;
UPDATE `creature_model_info` SET `BoundingRadius`=8.218218803405761718, `CombatReach`=8.855000495910644531, `VerifiedBuild`=44908 WHERE `DisplayID`=95475;
UPDATE `creature_model_info` SET `BoundingRadius`=0.386183589696884155, `CombatReach`=0.262500017881393432, `VerifiedBuild`=44908 WHERE `DisplayID`=96635;
UPDATE `creature_model_info` SET `BoundingRadius`=0.962523341178894042, `CombatReach`=0, `VerifiedBuild`=44908 WHERE `DisplayID`=94076;
UPDATE `creature_model_info` SET `BoundingRadius`=0.93155074119567871, `CombatReach`=1.5, `VerifiedBuild`=44908 WHERE `DisplayID` IN (94763, 94760, 94759, 94834, 94757);
UPDATE `creature_model_info` SET `BoundingRadius`=4.287765979766845703, `CombatReach`=4.619999885559082031, `VerifiedBuild`=44908 WHERE `DisplayID`=96292;
UPDATE `creature_model_info` SET `BoundingRadius`=1.771826744079589843, `CombatReach`=1.5, `VerifiedBuild`=44908 WHERE `DisplayID` IN (100228, 95762);
UPDATE `creature_model_info` SET `BoundingRadius`=0.69537520408630371, `CombatReach`=0.450000017881393432, `VerifiedBuild`=44908 WHERE `DisplayID` IN (94405, 94404);
UPDATE `creature_model_info` SET `BoundingRadius`=0.816717326641082763, `CombatReach`=0.880000054836273193, `VerifiedBuild`=44908 WHERE `DisplayID`=94384;
UPDATE `creature_model_info` SET `BoundingRadius`=1.949009418487548828, `CombatReach`=1.65000009536743164, `VerifiedBuild`=44908 WHERE `DisplayID`=96597;
UPDATE `creature_model_info` SET `BoundingRadius`=0.769385576248168945, `CombatReach`=1.375, `VerifiedBuild`=44908 WHERE `DisplayID`=97072;
UPDATE `creature_model_info` SET `BoundingRadius`=3.585020065307617187, `CombatReach`=5.199999809265136718, `VerifiedBuild`=44908 WHERE `DisplayID`=94924;
UPDATE `creature_model_info` SET `BoundingRadius`=0.309776842594146728, `CombatReach`=0.150000005960464477, `VerifiedBuild`=44908 WHERE `DisplayID`=80030;
UPDATE `creature_model_info` SET `BoundingRadius`=3.447134733200073242, `CombatReach`=5, `VerifiedBuild`=44908 WHERE `DisplayID`=94916;
UPDATE `creature_model_info` SET `BoundingRadius`=0.44763687252998352, `CombatReach`=0.425000011920928955, `VerifiedBuild`=44908 WHERE `DisplayID`=76383;
UPDATE `creature_model_info` SET `BoundingRadius`=0.733513593673706054, `CombatReach`=1.5, `VerifiedBuild`=44908 WHERE `DisplayID`=94050;
UPDATE `creature_model_info` SET `BoundingRadius`=1.056259632110595703, `CombatReach`=2.160000085830688476, `VerifiedBuild`=44908 WHERE `DisplayID`=95083;
UPDATE `creature_model_info` SET `BoundingRadius`=0.631957948207855224, `CombatReach`=0.60000002384185791, `VerifiedBuild`=44908 WHERE `DisplayID`=96999;
UPDATE `creature_model_info` SET `BoundingRadius`=1.843210577964782714, `CombatReach`=1.75, `VerifiedBuild`=44908 WHERE `DisplayID`=95818;
UPDATE `creature_model_info` SET `BoundingRadius`=0.487011104822158813, `VerifiedBuild`=44908 WHERE `DisplayID`=100426;
UPDATE `creature_model_info` SET `BoundingRadius`=0.615508496761322021, `CombatReach`=1.10000002384185791, `VerifiedBuild`=44908 WHERE `DisplayID`=96059;
UPDATE `creature_model_info` SET `BoundingRadius`=0.300000011920928955, `CombatReach`=2.40000009536743164, `VerifiedBuild`=44908 WHERE `DisplayID`=32962;
UPDATE `creature_model_info` SET `BoundingRadius`=1.43648529052734375, `CombatReach`=1.80000007152557373, `VerifiedBuild`=44908 WHERE `DisplayID`=94933;
UPDATE `creature_model_info` SET `BoundingRadius`=1.626700997352600097, `CombatReach`=1.80000007152557373, `VerifiedBuild`=44908 WHERE `DisplayID`=96467;
UPDATE `creature_model_info` SET `BoundingRadius`=1.103381752967834472, `CombatReach`=0.75, `VerifiedBuild`=44908 WHERE `DisplayID`=95787;
UPDATE `creature_model_info` SET `BoundingRadius`=0.870888948440551757, `CombatReach`=2.925000190734863281, `VerifiedBuild`=44908 WHERE `DisplayID`=95969;
UPDATE `creature_model_info` SET `BoundingRadius`=1.079260706901550292, `CombatReach`=1.139999985694885253, `VerifiedBuild`=44908 WHERE `DisplayID`=95376;
UPDATE `creature_model_info` SET `BoundingRadius`=0.923262715339660644, `CombatReach`=1.65000009536743164, `VerifiedBuild`=44908 WHERE `DisplayID`=96489;
UPDATE `creature_model_info` SET `BoundingRadius`=2.126192092895507812, `CombatReach`=1.80000007152557373, `VerifiedBuild`=44908 WHERE `DisplayID`=95796;
UPDATE `creature_model_info` SET `BoundingRadius`=0.696837902069091796, `CombatReach`=1.424999952316284179, `VerifiedBuild`=44908 WHERE `DisplayID`=95991;
UPDATE `creature_model_info` SET `BoundingRadius`=0.629497289657592773, `CombatReach`=1.125, `VerifiedBuild`=44908 WHERE `DisplayID`=96208;


UPDATE `creature_template` SET `unit_flags3`=16777217 WHERE `entry`=173110; -- Bindings of Fleshcrafting

UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=162017; -- Unstable Death Gate: Zerekriss
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55 WHERE `entry`=173306; -- Khaliiq
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55, `unit_flags3`=16777216 WHERE `entry` IN (174358, 174352, 171939); -- Invisible Stalker

UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=175396; -- Gristle
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=169825; -- Warstitched Hound
UPDATE `creature_template` SET `unit_flags`=33040 WHERE `entry`=172998; -- Khaliiq
UPDATE `creature_template` SET `unit_flags`=33040 WHERE `entry`=172997; -- Navigator Xennir
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857193946838378, `unit_flags`=33040 WHERE `entry`=172996; -- Ansid the Mechanic
UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=172696; -- Ansid the Mechanic
UPDATE `creature_template` SET `unit_flags`=570721024, `unit_flags2`=34817, `unit_flags3`=8192 WHERE `entry`=169129; -- Rotdust Bat
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry` IN (172573, 174343, 171875); -- Khaliiq
UPDATE `creature_template` SET `unit_flags`=33555200, `unit_flags3`=16777216 WHERE `entry`=161922; -- Bone Growth
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=160251; -- Ossein Cart

UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=160888; -- Roving Fungret
UPDATE `creature_template` SET `unit_flags`=33280 WHERE `entry`=165214; -- Warstitched Salvager
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=32639; -- Gnimo
UPDATE `creature_template` SET `faction`=35 WHERE `entry`=32638; -- Hakmud of Argus
UPDATE `creature_template` SET `gossip_menu_id`=26408 WHERE `entry`=161907; -- Baroness Draka

UPDATE `creature_template` SET `unit_flags`=33536, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=167831; -- Hand of Vashj
UPDATE `creature_template` SET `unit_flags3`=1048576 WHERE `entry`=173821; -- Khaliiq
UPDATE `creature_template` SET `unit_flags3`=1048576 WHERE `entry`=173827; -- Whisperer Vyn
UPDATE `creature_template` SET `unit_flags3`=1048576 WHERE `entry`=173826; -- Navigator Xennir
UPDATE `creature_template` SET `unit_flags3`=1048576 WHERE `entry`=173825; -- Ansid the Mechanic
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=164771; -- Scroll of Teleportation
UPDATE `creature_template` SET `minlevel`=61, `maxlevel`=61 WHERE `entry`=159753; -- Ravenomous
UPDATE `creature_template` SET `unit_flags`=67141632, `dynamicflags`=64 WHERE `entry`=159708; -- Marrowbore Feaster

UPDATE `creature_template` SET `minlevel`=61, `maxlevel`=61 WHERE `entry`=159105; -- Collector Kash
UPDATE `creature_template` SET `unit_flags`=32848 WHERE `entry`=160226; -- Taskmaster Mortis
UPDATE `creature_template` SET `gossip_menu_id`=24682 WHERE `entry`=158916; -- Wary Survivor
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=159750; -- Marrowbore Nest
UPDATE `creature_template` SET `unit_flags`=67141632, `dynamicflags`=64 WHERE `entry`=159714; -- Marrowbore Creeper
UPDATE `creature_template` SET `unit_flags3`=16785409 WHERE `entry`=166493; -- Shank Adnar
UPDATE `creature_template` SET `VehicleId`=7195 WHERE `entry`=168857; -- Stitched-Wing Hauler

UPDATE `creature_template` SET `speed_run`=1.142857193946838378 WHERE `entry`=171337; -- Bloated Lootfly
UPDATE `creature_template` SET `dynamicflags`=128 WHERE `entry`=166186; -- Dead Newcomer
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=158053; -- Corpselouse Mother
UPDATE `creature_template` SET  `faction`=3171, `unit_flags`=33536 WHERE `entry`=163084; -- Tester Sahaari
UPDATE `creature_template` SET `dynamicflags`=128 WHERE `entry`=161585; -- Dog Bone

UPDATE `creature_template` SET `unit_flags`=570721024, `unit_flags2`=34817, `unit_flags3`=8193 WHERE `entry`=169795; -- Zombified Ashen Wasp

UPDATE `creature_template` SET `faction`=190, `unit_flags`=33536 WHERE `entry`=162588; -- Gristlebeak
UPDATE `creature_template` SET `speed_run`=1.142857193946838378 WHERE `entry`=162853; -- Unbreakable Urtz
UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=167273; -- Boneplated Sharpshooter
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=161881; -- Injured Steelspine

