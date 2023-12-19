
UPDATE `areatrigger_template` SET `VerifiedBuild`=46455 WHERE (`IsServerSide`=0 AND `Id` IN (22123,2947,5070,25149,25139,12740,25548,24246,25431,23420,25271,5972,24173,23436,5802,23443,3153,23463,10466,24351,6095));
UPDATE `areatrigger_template` SET `Flags`=6, `Data0`=8, `Data1`=8 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=6, `Data0`=8, `Data1`=8 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=6, `Data0`=8, `Data1`=8 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=4, `VerifiedBuild`=46455 WHERE (`Id`=25271 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=4, `Data0`=8, `Data1`=8, `VerifiedBuild`=46455 WHERE (`Id`=16446 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=2 WHERE (`Id`=9228 AND `IsServerSide`=0);


UPDATE `conversation_actors` SET `VerifiedBuild`=46455 WHERE (`Idx`=0 AND `ConversationId` IN (15303,15823,14243,15305,15824));
UPDATE `conversation_actors` SET `CreatureId`=166876, `CreatureDisplayInfoId`=96085, `VerifiedBuild`=46455 WHERE (`ConversationId`=14239 AND `Idx`=0);
UPDATE `conversation_actors` SET `ConversationActorId`=74667, `VerifiedBuild`=46455 WHERE (`ConversationId`=14243 AND `Idx`=1); -- Full: 0x243CA51DC09F5540006879000067D26C Vehicle/0 R3881/S26745 Map: 2286 (The Necrotic Wake) Entry: 163157 (Amarth) Low: 6804076
UPDATE `conversation_actors` SET `ConversationActorId`=74676, `VerifiedBuild`=46455 WHERE (`Idx`=0 AND `ConversationId` IN (14403,14247,14402,14404)); -- Full: 0x203CA51DC09EE040006879000067D471 Creature/0 R3881/S26745 Map: 2286 (The Necrotic Wake) Entry: 162689 (Surgeon Stitchflesh) Low: 6804593
UPDATE `conversation_actors` SET `ConversationActorId`=75940, `CreatureId`=166876, `CreatureDisplayInfoId`=96085, `VerifiedBuild`=46455 WHERE (`Idx`=0 AND `ConversationId` IN (14241,14245));
UPDATE `conversation_actors` SET `ConversationActorId`=75764, `CreatureId`=166593, `CreatureDisplayInfoId`=95012, `VerifiedBuild`=46455 WHERE (`ConversationId`=14242 AND `Idx`=0);
UPDATE `conversation_actors` SET `ConversationActorId`=75938, `CreatureId`=166855, `CreatureDisplayInfoId`=95231, `VerifiedBuild`=46455 WHERE (`ConversationId`=14242 AND `Idx`=1);
UPDATE `conversation_actors` SET `ConversationActorId`=75309, `VerifiedBuild`=46455 WHERE (`ConversationId`=14244 AND `Idx`=0); -- Full: 0x203CA51DC0A18A00006879000067D26C Creature/0 R3881/S26745 Map: 2286 (The Necrotic Wake) Entry: 165416 (Xandria) Low: 6804076
UPDATE `conversation_actors` SET `ConversationActorId`=75939, `CreatureId`=166882, `CreatureDisplayInfoId`=96477, `VerifiedBuild`=46455 WHERE (`ConversationId`=14245 AND `Idx`=1);


UPDATE `conversation_line_template` SET `VerifiedBuild`=46455 WHERE `Id` IN (38404, 39745, 36779, 35666, 35678, 41162, 35677, 36064, 35684, 38406, 35673, 36063, 36065, 39746, 36784, 36783, 35675, 35676, 35680, 35679, 35681, 35682);


UPDATE `conversation_template` SET `VerifiedBuild`=46455 WHERE `Id`=15305;
UPDATE `conversation_template` SET `VerifiedBuild`=46455 WHERE `Id`=15303;
UPDATE `conversation_template` SET `VerifiedBuild`=46455 WHERE `Id`=14404;
UPDATE `conversation_template` SET `VerifiedBuild`=46455 WHERE `Id`=14403;
UPDATE `conversation_template` SET `VerifiedBuild`=46455 WHERE `Id`=14402;
UPDATE `conversation_template` SET `VerifiedBuild`=46455 WHERE `Id`=14247;
UPDATE `conversation_template` SET `VerifiedBuild`=46455 WHERE `Id`=14245;
UPDATE `conversation_template` SET `VerifiedBuild`=46455 WHERE `Id`=14244;
UPDATE `conversation_template` SET `VerifiedBuild`=46455 WHERE `Id`=14243;
UPDATE `conversation_template` SET `VerifiedBuild`=46455 WHERE `Id`=14242;
UPDATE `conversation_template` SET `VerifiedBuild`=46455 WHERE `Id`=14241;
UPDATE `conversation_template` SET `VerifiedBuild`=46455 WHERE `Id`=14239;
UPDATE `conversation_template` SET `VerifiedBuild`=46455 WHERE `Id`=15303;
UPDATE `conversation_template` SET `VerifiedBuild`=46455 WHERE `Id`=15824;
UPDATE `conversation_template` SET `VerifiedBuild`=46455 WHERE `Id`=15823;


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (170375,170164,173454,149205,102199,110063)) OR (`DifficultyID`=1 AND `Entry` IN (173044,167731,164414,164427,164702));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(170375, 0, 0, 0, 2060, 46455),
(170164, 0, 0, 0, 2060, 46455),
(173454, 0, 0, 0, 2060, 46455),
(149205, 0, 0, 0, 371, 46455),
(173044, 1, 1, 1, 1709, 46455),
(167731, 1, 1, 1, 1709, 46455),
(164414, 1, 0, 0, 1709, 46455),
(164427, 1, 0, 0, 1709, 46455),
(164702, 1, 0, 0, 1709, 46455),
(102199, 0, 0, 0, 482, 46455),
(110063, 0, 0, 0, 482, 46455);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46455 WHERE (`DifficultyID`=0 AND `Entry` IN (168936,172061,160869,168442,168407,169252,168890,174607,169191,169987,157875,157073,170308,169998,154625,157071,157979,170104,156327,173453,169955,157072,170066,169966,169980,170388,156779,156333,169849,156473,156434,156365,170390,156364,169195,166663,171300,159289,168126,168125,159612,159192,168464,157696,157697,175760,159609,159698,160597,159610,159298,158768,159957,159776,159410,19668,40624,170335,168875,168874,168876,168877,175276,168872,170506,168866,170393,170331,170332,170329,170330,171524,170392,170334,170243,160408,170242,170232,170241,170244,172163,170381,169471,172222,172169,170134,170333,170247,170062,170328,170047,170248,170184,169816,169858,173917,172914,172872,172910,172909,172913,175443,171661,162613,166724,166756,163393,162612,162636,166721,163392,174560,162614,162611,166755,177907,175445,177908,175444,158767,175621,175457,172937,172935,158502,170183,175654,169566,172196,172200,170006,172017,160176,169983,173133,169965,170007,169804,169619,169914,171670,169829,169826,172045,159248,164329,163498,169921,169922,170395,164396,165972,164714,159319,164380,164371,168466,169114,163556,163480,163566,163500,171029,164959,55708,167078,171017,172124,168240,169555,169522,55659,143622,159775,161915,60199,62621,173130,173205,173206,173204,156586,174437,160629,169513,171849,161499,172714,172704,172703,160435)) OR (`DifficultyID`=1 AND `Entry` IN (166932,163546,163552,163549,163499,163473,163447,163474,168607,164987,168127,163623,163622,173174,167730,163620,162689,165825,167899,163621,166266,164578,172981,173016,166264,165911,165605,162693,164814,165708,165709,167662,62822,62821,168835,165528,171094,164815,165824,165222,166079,163128,171752,163619,163126,165919,163618,163122,171500,165197,174783,174785,168445,168443,168343,174786,168357));
UPDATE `creature_template_scaling` SET `ContentTuningID`=1709, `VerifiedBuild`=46455 WHERE (`DifficultyID`=0 AND `Entry` IN (168633,168832,165416,163146,168831,168451,165135,162691,165872,162692,165137,165136,171750,163121,171618,163133,163134,163135,163157,162729,166302,165138));


UPDATE `creature_model_info` SET `BoundingRadius`=1.109566092491149902, `CombatReach`=2.40000009536743164 WHERE `DisplayID` IN (10002, 10000);
UPDATE `creature_model_info` SET `BoundingRadius`=0.524599969387054443 WHERE `DisplayID`=96574;
UPDATE `creature_model_info` SET `BoundingRadius`=1.167062759399414062, `CombatReach`=1, `VerifiedBuild`=46455 WHERE `DisplayID` IN (93190, 93485);
UPDATE `creature_model_info` SET `BoundingRadius`=1.167062759399414062, `VerifiedBuild`=46455 WHERE `DisplayID`=93835;
UPDATE `creature_model_info` SET `BoundingRadius`=0.300000011920928955, `CombatReach`=3.5, `VerifiedBuild`=46455 WHERE `DisplayID`=97223;
UPDATE `creature_model_info` SET `VerifiedBuild`=46455 WHERE `DisplayID` IN (95013, 95184, 99312, 99235, 93225, 97205, 97555, 95134, 93493, 99260, 99236, 95130, 99302, 99311, 99234, 99301, 93445, 95087, 100132, 94752, 94754, 99229, 98477, 98476, 94048, 96582, 93644, 39541, 31956, 97215, 95156, 93632, 93501, 93744, 93754, 94225, 93853, 43047, 99340, 99349, 99350, 99341, 99342, 93488, 99715, 96246, 99348, 99331, 95131, 95133, 94919, 99361, 99712, 95479, 93226, 99240, 99242, 99309, 99362, 99241, 99310, 94294, 95553, 94637, 40001, 98934, 99853, 93467, 98932, 98937, 98935, 93753, 98944, 95527, 96056, 93763, 98943, 98946, 98947, 98941, 98945, 98942, 93747, 94149, 94170, 94171, 93927, 96220, 97801, 97800, 99121, 96477, 99122, 95572, 98191, 95226, 96085, 96218, 42722, 42720, 94091, 97668, 96112, 96131, 94814, 96108, 96109, 98040, 96107, 95233, 95012, 65782, 95228, 95467, 96480, 93897, 99116, 21342, 95222, 93893, 95223, 59071, 96395, 96580, 77405, 71887, 106981, 77407, 37992, 38615, 23767, 56327, 45923, 4714, 96581, 74792, 97288, 99325, 93836, 99297);
UPDATE `creature_model_info` SET `BoundingRadius`=1.181651949882507324, `VerifiedBuild`=46455 WHERE `DisplayID`=99365;
UPDATE `creature_model_info` SET `BoundingRadius`=0.462463796138763427, `CombatReach`=0.699999988079071044 WHERE `DisplayID`=94309;
UPDATE `creature_model_info` SET `BoundingRadius`=0.450024068355560302, `CombatReach`=0.699999988079071044 WHERE `DisplayID`=94118;
UPDATE `creature_model_info` SET `BoundingRadius`=1.011092662811279296, `CombatReach`=1.20000004768371582 WHERE `DisplayID`=94277;
UPDATE `creature_model_info` SET `BoundingRadius`=5.118622779846191406, `CombatReach`=3.20000004768371582 WHERE `DisplayID`=95116;
UPDATE `creature_model_info` SET `BoundingRadius`=5.118622779846191406, `CombatReach`=3.20000004768371582, `VerifiedBuild`=46455 WHERE `DisplayID`=95114;
UPDATE `creature_model_info` SET `BoundingRadius`=1.630692481994628906, `CombatReach`=2.25 WHERE `DisplayID`=92661;
UPDATE `creature_model_info` SET `BoundingRadius`=1.650390863418579101, `VerifiedBuild`=46455 WHERE `DisplayID`=90230;
UPDATE `creature_model_info` SET `BoundingRadius`=1.283769011497497558, `CombatReach`=1.10000002384185791, `VerifiedBuild`=46455 WHERE `DisplayID`=93199;
UPDATE `creature_model_info` SET `BoundingRadius`=4.339558124542236328, `CombatReach`=9 WHERE `DisplayID`=93500;
UPDATE `creature_model_info` SET `BoundingRadius`=1.5, `CombatReach`=6, `VerifiedBuild`=46455 WHERE `DisplayID`=94229;
UPDATE `creature_model_info` SET `BoundingRadius`=0.855444133281707763, `CombatReach`=1, `VerifiedBuild`=46455 WHERE `DisplayID` IN (94227, 94056);
UPDATE `creature_model_info` SET `BoundingRadius`=1.342122197151184082, `CombatReach`=1.149999976158142089, `VerifiedBuild`=46455 WHERE `DisplayID`=94316;
UPDATE `creature_model_info` SET `BoundingRadius`=1.71868896484375, `CombatReach`=1.20000004768371582 WHERE `DisplayID`=94278;
UPDATE `creature_model_info` SET `BoundingRadius`=0.945321559906005859, `CombatReach`=0.800000011920928955 WHERE `DisplayID`=94918;
UPDATE `creature_model_info` SET `BoundingRadius`=0.38573494553565979, `CombatReach`=0.60000002384185791, `VerifiedBuild`=46455 WHERE `DisplayID`=99344;
UPDATE `creature_model_info` SET `BoundingRadius`=1.050356507301330566, `CombatReach`=0.899999976158142089, `VerifiedBuild`=46455 WHERE `DisplayID`=95163;
UPDATE `creature_model_info` SET `BoundingRadius`=0.396397560834884643, `CombatReach`=0.60000002384185791, `VerifiedBuild`=46455 WHERE `DisplayID`=99338;
UPDATE `creature_model_info` SET `BoundingRadius`=0.933650195598602294, `CombatReach`=0.800000011920928955 WHERE `DisplayID`=93494;
UPDATE `creature_model_info` SET `BoundingRadius`=1.087128281593322753, `CombatReach`=1.5 WHERE `DisplayID`=92677;
UPDATE `creature_model_info` SET `BoundingRadius`=1.645808815956115722, `CombatReach`=1.949999928474426269 WHERE `DisplayID`=92664;
UPDATE `creature_model_info` SET `BoundingRadius`=0.396397560834884643, `CombatReach`=0.60000002384185791 WHERE `DisplayID` IN (94307, 94311);
UPDATE `creature_model_info` SET `BoundingRadius`=0.38573494553565979, `CombatReach`=0.60000002384185791 WHERE `DisplayID` IN (94314, 94304);
UPDATE `creature_model_info` SET `BoundingRadius`=1.167062759399414062, `CombatReach`=1 WHERE `DisplayID` IN (94095, 93563, 93564);
UPDATE `creature_model_info` SET `BoundingRadius`=6.398278236389160156, `CombatReach`=4 WHERE `DisplayID`=95115;
UPDATE `creature_model_info` SET `BoundingRadius`=2.827819108963012695, `CombatReach`=0.699999988079071044, `VerifiedBuild`=46455 WHERE `DisplayID`=93471;
UPDATE `creature_model_info` SET `BoundingRadius`=0.190972283482551574, `CombatReach`=0.400000005960464477 WHERE `DisplayID`=47799;
UPDATE `creature_model_info` SET `BoundingRadius`=0.954861402511596679, `CombatReach`=2 WHERE `DisplayID`=94167;
UPDATE `creature_model_info` SET `BoundingRadius`=0.947962820529937744, `CombatReach`=2.550000190734863281, `VerifiedBuild`=46455 WHERE `DisplayID`=98226;
UPDATE `creature_model_info` SET `BoundingRadius`=1.031606554985046386, `CombatReach`=2.77500009536743164, `VerifiedBuild`=46455 WHERE `DisplayID`=98227;
UPDATE `creature_model_info` SET `BoundingRadius`=0.454852879047393798, `VerifiedBuild`=46455 WHERE `DisplayID`=95575;
UPDATE `creature_model_info` SET `BoundingRadius`=0.234999999403953552, `CombatReach`=1, `VerifiedBuild`=46455 WHERE `DisplayID` IN (95579, 95576, 95577);
UPDATE `creature_model_info` SET `BoundingRadius`=1.633304357528686523, `CombatReach`=1.399500012397766113, `VerifiedBuild`=46455 WHERE `DisplayID`=93898;
UPDATE `creature_model_info` SET `BoundingRadius`=1.633362650871276855, `CombatReach`=1.39954996109008789, `VerifiedBuild`=46455 WHERE `DisplayID`=93896;
UPDATE `creature_model_info` SET `BoundingRadius`=1.633887887001037597, `CombatReach`=1.399999976158142089, `VerifiedBuild`=46455 WHERE `DisplayID`=93895;
UPDATE `creature_model_info` SET `BoundingRadius`=0.909273803234100341, `CombatReach`=1.625, `VerifiedBuild`=46455 WHERE `DisplayID`=96062;
UPDATE `creature_model_info` SET `BoundingRadius`=6.12538003921508789, `CombatReach`=6.600000381469726562, `VerifiedBuild`=46455 WHERE `DisplayID`=96219;
UPDATE `creature_model_info` SET `BoundingRadius`=1.100270390510559082, `CombatReach`=2.25, `VerifiedBuild`=46455 WHERE `DisplayID`=94780;
UPDATE `creature_model_info` SET `BoundingRadius`=0.843540608882904052, `CombatReach`=1.724999904632568359, `VerifiedBuild`=46455 WHERE `DisplayID`=93933;
UPDATE `creature_model_info` SET `BoundingRadius`=0.559553146362304687, `CombatReach`=1 WHERE `DisplayID`=96132;
UPDATE `creature_model_info` SET `BoundingRadius`=0.300000011920928955, `CombatReach`=0.5, `VerifiedBuild`=46455 WHERE `DisplayID`=15963;
UPDATE `creature_model_info` SET `BoundingRadius`=1.510793566703796386, `CombatReach`=2.70000004768371582, `VerifiedBuild`=46455 WHERE `DisplayID` IN (96115, 96135);
UPDATE `creature_model_info` SET `BoundingRadius`=1.173621773719787597, `CombatReach`=2.399999856948852539, `VerifiedBuild`=46455 WHERE `DisplayID`=94992;
UPDATE `creature_model_info` SET `BoundingRadius`=1.5, `VerifiedBuild`=46455 WHERE `DisplayID`=95654;
UPDATE `creature_model_info` SET `BoundingRadius`=0.57705998420715332 WHERE `DisplayID` IN (91896, 92915);
UPDATE `creature_model_info` SET `BoundingRadius`=1.173621773719787597, `CombatReach`=2.40000009536743164, `VerifiedBuild`=46455 WHERE `DisplayID`=95231;
UPDATE `creature_model_info` SET `BoundingRadius`=0.660662591457366943, `CombatReach`=1, `VerifiedBuild`=46455 WHERE `DisplayID` IN (94131, 94175);
UPDATE `creature_model_info` SET `BoundingRadius`=1.496338725090026855, `CombatReach`=1.875, `VerifiedBuild`=46455 WHERE `DisplayID`=95227;
UPDATE `creature_model_info` SET `CombatReach`=0.420000016689300537, `VerifiedBuild`=46455 WHERE `DisplayID`=39353;
UPDATE `creature_model_info` SET `BoundingRadius`=0.642891526222229003, `CombatReach`=1, `VerifiedBuild`=46455 WHERE `DisplayID` IN (94136, 94106);
UPDATE `creature_model_info` SET `BoundingRadius`=6.066957473754882812, `CombatReach`=8.800000190734863281, `VerifiedBuild`=46455 WHERE `DisplayID`=94926;
UPDATE `creature_model_info` SET `BoundingRadius`=0.780675232410430908, `CombatReach`=2.099999904632568359, `VerifiedBuild`=46455 WHERE `DisplayID`=98170;
UPDATE `creature_model_info` SET `BoundingRadius`=0.838395655155181884, `CombatReach`=1.349999904632568359, `VerifiedBuild`=46455 WHERE `DisplayID`=94761;
UPDATE `creature_model_info` SET `BoundingRadius`=0.578602373600006103, `CombatReach`=0.899999976158142089 WHERE `DisplayID` IN (99212, 99211);
UPDATE `creature_model_info` SET `BoundingRadius`=0.594596326351165771, `CombatReach`=0.899999976158142089 WHERE `DisplayID`=99209;
UPDATE `creature_model_info` SET `BoundingRadius`=0.446824163198471069, `CombatReach`=1.20000004768371582 WHERE `DisplayID`=98494;
UPDATE `creature_model_info` SET `BoundingRadius`=1.253992557525634765, `CombatReach`=2.474999904632568359 WHERE `DisplayID`=95554;
UPDATE `creature_model_info` SET `BoundingRadius`=1.539572477340698242, `VerifiedBuild`=46455 WHERE `DisplayID`=47534;
UPDATE `creature_model_info` SET `BoundingRadius`=0.760989785194396972, `CombatReach`=1.049999952316284179, `VerifiedBuild`=46455 WHERE `DisplayID`=92676;
UPDATE `creature_model_info` SET `BoundingRadius`=0.25320136547088623, `CombatReach`=0.300000011920928955 WHERE `DisplayID`=92534;
UPDATE `creature_model_info` SET `BoundingRadius`=0.5, `CombatReach`=2, `VerifiedBuild`=46455 WHERE `DisplayID`=17028;
UPDATE `creature_model_info` SET `BoundingRadius`=0.721569716930389404, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46455 WHERE `DisplayID`=95209;
UPDATE `creature_model_info` SET `BoundingRadius`=1.43497633934020996, `CombatReach`=0.649999976158142089 WHERE `DisplayID`=93498;
UPDATE `creature_model_info` SET `BoundingRadius`=3.635767221450805664, `CombatReach`=0.899999976158142089 WHERE `DisplayID`=93472;
UPDATE `creature_model_info` SET `BoundingRadius`=0.843031287193298339, `CombatReach`=1.85000002384185791 WHERE `DisplayID`=92191;
UPDATE `creature_model_info` SET `BoundingRadius`=0.340989977121353149 WHERE `DisplayID`=96577;
UPDATE `creature_model_info` SET `BoundingRadius`=0.911385178565979003, `CombatReach`=2 WHERE `DisplayID`=92192;

UPDATE `quest_template` SET `RewardBonusMoney`=625, `VerifiedBuild`=46455 WHERE `ID`=60274; -- Trading Favors
UPDATE `quest_template` SET `RewardBonusMoney`=5000, `Expansion`=9, `VerifiedBuild`=46455 WHERE `ID`=31729; -- Steven Lisbane
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46455 WHERE `ID`=27168; -- Those That Couldn't Let Go
UPDATE `quest_template` SET `RewardBonusMoney`=1860, `VerifiedBuild`=46455 WHERE `ID`=27169; -- Uther's Blessing
UPDATE `quest_template` SET `VerifiedBuild`=46455 WHERE `ID` IN (27683, 29684, 29675, 62763, 62748, 37555, 29667, 40329, 57562, 56499, 56119, 50604, 50600, 48641, 42420, 45179, 42233, 62658, 54363, 60929, 59836, 61549, 61189, 59234, 60476, 58505, 61949, 61883, 61867, 61787);
UPDATE `quest_template` SET `RewardBonusMoney`=625, `VerifiedBuild`=46455 WHERE `ID`=63037; -- Dark Aspirations
UPDATE `quest_template` SET `RewardBonusMoney`=3750, `VerifiedBuild`=46455 WHERE `ID`=41626; -- A New Threat
UPDATE `quest_template` SET `RewardBonusMoney`=370, `VerifiedBuild`=46455 WHERE `ID`=30095; -- The End Time
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46455 WHERE `ID`=29691; -- Bring Me A Shrubbery!
UPDATE `quest_template` SET `RewardBonusMoney`=3150, `VerifiedBuild`=46455 WHERE `ID`=28328; -- Twilight Scheming
UPDATE `quest_template` SET `RewardBonusMoney`=4950, `VerifiedBuild`=46455 WHERE `ID`=27361; -- Favored of the Light
UPDATE `quest_template` SET `RewardBonusMoney`=5000, `Expansion`=9, `VerifiedBuild`=46455 WHERE `ID`=32604; -- Beasts of Fable Book I
UPDATE `quest_template` SET `RewardBonusMoney`=5900, `VerifiedBuild`=46455 WHERE `ID`=56376; -- Surfacing Threats
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `VerifiedBuild`=46455 WHERE `ID`=56347; -- An Abyssal Opportunity
UPDATE `quest_template` SET `RewardBonusMoney`=600, `VerifiedBuild`=46455 WHERE `ID`=54913; -- Spark of Genius
UPDATE `quest_template` SET `RewardBonusMoney`=2350, `VerifiedBuild`=46455 WHERE `ID`=53170; -- Unscarred Black Scale
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `QuestDescription`='$n, Genn Greymane left this letter for you. He indicated it was urgent. I was just about to send for you.\n\n<Upon opening it, the letter reads as follows.>\n\"$n,\n\nYou have helped to unite the Kul Tirans and gained their support for the Alliance. Perhaps now you might be able to help reunite a mother with her daughter.\n\nMeet me at the family memorial by Proudmoore Keep. With luck we can convince Lord Admiral Proudmoore to grant her daughter a stay of execution.\n\n- Genn Greymane \"', `VerifiedBuild`=46455 WHERE `ID`=52194; -- What You May Regret
UPDATE `quest_template` SET `RewardBonusMoney`=4700, `VerifiedBuild`=46455 WHERE `ID`=52035; -- Improvised Survival
UPDATE `quest_template` SET `RewardBonusMoney`=5600 WHERE `ID` IN (57712, 57444);
UPDATE `quest_template` SET `RewardBonusMoney`=29900 WHERE `ID`=60057;
UPDATE `quest_template` SET `RewardBonusMoney`=9350 WHERE `ID` IN (60316, 60315, 60366, 60466);
UPDATE `quest_template` SET `RewardBonusMoney`=7500 WHERE `ID` IN (57931, 57538, 57549);
UPDATE `quest_template` SET `RewardCurrencyID1`=0, `RewardCurrencyQty1`=0, `VerifiedBuild`=46455 WHERE `ID`=54378; -- Darkshore Donations: Potion of Bursting Blood
UPDATE `quest_template` SET `RewardBonusMoney`=9950 WHERE `ID`=60840;
UPDATE `quest_template` SET `RewardBonusMoney`=39850 WHERE `ID`=62723;
UPDATE `quest_template` SET `RewardBonusMoney`=625 WHERE `ID`=49929;


UPDATE `quest_objectives` SET `Description`='Defeat Steven Lisbane', `VerifiedBuild`=46455 WHERE `ID`=268954; -- 268954
UPDATE `quest_objectives` SET `Description`='Withdrawn Soul released', `VerifiedBuild`=46455 WHERE `ID`=265950; -- 265950
UPDATE `quest_objectives` SET `Description`='Uther\'s Blessing', `VerifiedBuild`=46455 WHERE `ID`=265869; -- 265869
UPDATE `quest_objectives` SET `VerifiedBuild`=46455 WHERE `ID` IN (282682, 282681, 282680, 282953, 258390, 264120, 264119, 254278, 254277, 254276, 421958, 421957, 409270, 408476, 408475, 408474, 408473, 408464, 408462, 408459, 408458, 421954, 421953, 409273, 408430, 408429, 408428, 408427, 408426, 408425, 408424, 408423, 276434, 252142, 252141, 252140, 252139, 280702, 270129, 270128, 270127, 270118, 392645, 391088, 391087, 391086, 395123, 395122, 395121, 395120, 395119, 395118, 395112, 395111, 395110, 395109, 391075, 391077, 390639, 392143, 338314, 338173, 338172, 390274, 336954, 336212, 292697, 284170, 283945, 387022, 387052, 405027, 405026, 409116, 397059, 397121, 406262, 406258, 405385, 405386, 409171, 396199, 398340, 394369, 394368, 394367, 406869, 406804, 406765, 406712);
UPDATE `quest_objectives` SET `Description`='Clues Found', `VerifiedBuild`=46455 WHERE `ID`=282760; -- 282760
UPDATE `quest_objectives` SET `Description`='Travel to the Azure Dragonshrine', `VerifiedBuild`=46455 WHERE `ID`=282954; -- 282954
UPDATE `quest_objectives` SET `Description`='Copies of The Twilight Creed burned', `VerifiedBuild`=46455 WHERE `ID`=262036; -- 262036
UPDATE `quest_objectives` SET `Description`='Win 5 ranked arena matches', `VerifiedBuild`=46455 WHERE `ID`=287661; -- 287661

UPDATE `creature_template` SET `VerifiedBuild`=46455 WHERE `entry` IN (170047, 170066, 165605, 163392, 170104, 163393, 174607, 170134, 167899, 163447, 170164, 165708, 170183, 165709, 170184, 163473, 163480, 62821, 62822, 156779, 163498, 163499, 163500, 170232, 170241, 170243, 170244, 170247, 170248, 163546, 163549, 163552, 163556, 163566, 165824, 165825, 170308, 174783, 174785, 174786, 170328, 170329, 163618, 170330, 163619, 170331, 163620, 170332, 163621, 170333, 163622, 170334, 163623, 170335, 165872, 168125, 168126, 168127, 40624, 170375, 159192, 170381, 165911, 170388, 170390, 170392, 170393, 165919, 170395, 417, 159248, 165972, 161499, 172703, 143622, 172704, 159289, 172714, 168240, 159298, 157071, 157072, 157073, 159319, 166079, 168343, 168357, 159410, 49799, 172872, 168407, 172909, 172910, 172913, 172914, 168442, 168443, 168445, 168451, 172935, 172937, 168464, 168466, 166264, 166266, 172981, 166302, 173016, 159609, 159610, 159612, 175276, 173044, 58960, 168607, 161915, 168633, 159698, 173130, 173133, 173174, 159775, 159776, 173204, 173205, 175443, 173206, 175444, 175445, 175457, 171017, 171029, 164329, 166593, 168831, 168832, 168835, 164371, 164380, 171094, 168866, 164396, 168872, 168874, 168875, 168876, 168877, 157696, 157697, 164414, 168890, 166663, 164427, 159957, 175621, 168936, 175654, 166721, 177907, 177908, 166724, 173453, 166755, 166756, 175760, 164578, 157875, 171300, 166855, 166876, 169114, 166882, 160176, 157979, 164702, 164714, 169191, 169195, 169252, 171500, 171524, 164814, 164815, 167078, 162611, 162612, 162613, 162614, 162636, 160408, 17252, 171618, 160435, 162689, 162691, 162692, 162693, 171661, 171670, 164959, 162729, 173917, 164987, 169471, 171750, 169513, 171752, 169522, 160597, 19668, 169555, 169566, 160629, 165135, 165136, 165137, 171849, 165138, 169619, 98035, 165197, 158502, 165222, 55659, 156327, 156333, 172017, 156364, 156365, 169804, 172045, 60199, 169816, 160869, 172061, 169826, 169829, 163121, 163122, 163126, 163128, 163133, 163134, 163135, 169849, 156434, 163146, 169858, 163157, 172124, 165416, 156473, 167662, 169914, 169921, 169922, 172163, 172169, 158767, 158768, 169955, 172196, 172200, 169965, 169966, 167730, 167731, 169980, 169983, 172222, 169987, 169998, 165528, 170006, 170007, 156586);
UPDATE `creature_template` SET `HealthModifier`=0.400000005960464477, `VerifiedBuild`=46455 WHERE `entry`=170062; -- Animite Invader
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=174560; -- Elysian Guardian
UPDATE `creature_template` SET `HealthModifier`=0.200000002980232238, `VerifiedBuild`=46455 WHERE `entry`=163474; -- Summerfly
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=170242; -- Dreadfur Kit
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `rank`=6, `VerifiedBuild`=46455 WHERE `entry`=110063; -- Beast
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=170506; -- Thunderous Squall
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46455 WHERE `entry`=173454; -- Disciple of Humility
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=102199; -- Stampede
UPDATE `creature_template` SET `femaleName`='', `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=149205; -- Nightwreathed Watcher
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=55708; -- Generic Bunny
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=174437; -- Sophie
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=62621; -- Fel Flame


UPDATE `creature_template_model` SET `VerifiedBuild`=46455 WHERE (`Idx`=1 AND `CreatureID` IN (168936,160869,174607,169191,157875,157073,170308,169998,157071,170104,169955,157072,170066,169966,156779,169849,156333,156473,156365,159289,168126,168125,159192,175760,160597,159957,159776,159410,168875,170506,170329,170330,171524,170334,170381,172169,170134,170062,170328,173917,172872,166756,166724,163393,162612,163392,162611,166755,158767,172937,172935,169566,172045,169829,169826,163498,164714,164380,164371,163500,171029,163499,163546,164987,168127,173174,167730,167899,165825,172981,166266,166264,164578,165605,165709,167662,171752,165919,171500,163122,174785,168445,168343,163135,168451,164959,55708,165136,162729,163121,163133,163134,169555,169522,98035,55659,143622,159775,102199,156586,172714)) OR (`Idx`=0 AND `CreatureID` IN (168936,172061,160869,168442,168407,168890,174607,169987,157875,170375,170164,157073,170308,169998,157071,173454,170104,157979,156327,173453,169955,157072,170066,169966,169980,170388,156779,169849,156333,156473,156434,156365,170390,156364,169195,166663,159289,168126,168125,159612,159192,168464,157697,157696,175760,159609,160597,159698,159610,159298,158768,159957,159776,159410,19668,40624,149205,170335,168875,168874,168876,168877,175276,168872,170506,168866,170393,170332,170331,170329,170330,171524,170392,170334,170243,160408,170242,170232,170241,170244,170381,169471,172169,170134,170333,170247,170328,170248,170184,169816,169858,173917,172914,172910,172872,172913,172909,175443,171661,49799,162613,166756,166724,163393,162612,166721,162636,163392,162614,162611,166755,177908,177907,175445,175621,175444,158767,175457,172937,172935,158502,170183,175654,169566,172196,172200,170006,172017,160176,173133,169983,169965,170007,169804,169619,169914,172045,171670,169829,169826,164329,163498,159248,169922,169921,170395,164396,165972,164714,159319,168466,164380,164371,169114,163480,163566,163500,171029,163447,163549,163499,163546,163473,163552,168607,164987,168127,163623,163622,173044,167731,173174,167730,166882,163620,167899,165825,163621,162689,173016,172981,166266,166264,164578,165911,165605,164414,164427,164814,162693,165708,165709,167662,166855,166593,62822,62821,165528,171094,168835,164815,165824,171752,166079,165919,165222,163619,163128,163126,171500,163618,163122,165197,164702,174785,174783,168445,168443,174786,168357,166876,168343,162691,165416,165872,168832,171618,163146,171750,168831,166302,165135,163135,168451,163157,164959,162692,55708,165136,165137,162729,168633,163121,163133,165138,163134,167078,417,58960,171017,172124,168240,169555,169522,98035,55659,143622,17252,159775,161915,102199,60199,62621,173206,173205,173204,173130,110063,174437,160629,156586,169513,171849,161499,172714,172704,172703,160435)) OR (`Idx`=2 AND `CreatureID` IN (157875,169849,156365,171524,172169,172872,162611,166755,158767,172935,163498,171029,166266,166264,164578,165605,167662,163122,168445,164959,163133,163134,98035,55659,143622,172714)) OR (`Idx`=4 AND `CreatureID` IN (169849,156365,172169,172872,172935)) OR (`Idx`=3 AND `CreatureID` IN (169849,156365,171524,172169,172872,162611,166755,172935,163498,171029,166266,166264,164578,165605,167662,164959,163133,163134,172714)) OR (`Idx`=5 AND `CreatureID`=156365);
UPDATE `creature_template_model` SET `DisplayScale`=1.20000004768371582, `VerifiedBuild`=46455 WHERE (`CreatureID`=169252 AND `Idx`=0); -- Steelfur Charger
UPDATE `creature_template_model` SET `DisplayScale`=0.899999976158142089, `VerifiedBuild`=46455 WHERE (`CreatureID`=169191 AND `Idx`=0); -- Frenzied Glimmerfly
UPDATE `creature_template_model` SET `DisplayScale`=1.5, `VerifiedBuild`=46455 WHERE (`CreatureID`=171300 AND `Idx`=0); -- Malfunctioning Clawguard
UPDATE `creature_template_model` SET `DisplayScale`=0.899999976158142089, `VerifiedBuild`=46455 WHERE (`CreatureID`=172163 AND `Idx`=0); -- Centurion Colossus
UPDATE `creature_template_model` SET `DisplayScale`=1.25, `VerifiedBuild`=46455 WHERE (`CreatureID`=172222 AND `Idx`=0); -- Centurion Defender
UPDATE `creature_template_model` SET `DisplayScale`=0.400000005960464477, `VerifiedBuild`=46455 WHERE (`CreatureID`=170062 AND `Idx`=0); -- Animite Invader
UPDATE `creature_template_model` SET `DisplayScale`=0.800000011920928955, `VerifiedBuild`=46455 WHERE (`CreatureID`=170047 AND `Idx`=0); -- Silverplume Roamer
UPDATE `creature_template_model` SET `DisplayScale`=2.5, `VerifiedBuild`=46455 WHERE (`CreatureID`=174560 AND `Idx`=0); -- Elysian Guardian
UPDATE `creature_template_model` SET `DisplayScale`=2, `VerifiedBuild`=46455 WHERE (`CreatureID`=163556 AND `Idx`=0); -- Lumbering Crystalback
UPDATE `creature_template_model` SET `DisplayScale`=0.200000002980232238, `VerifiedBuild`=46455 WHERE (`CreatureID`=163474 AND `Idx`=0); -- Summerfly


UPDATE `creature_questitem` SET `VerifiedBuild`=46455 WHERE (`Idx`=0 AND `CreatureEntry` IN (172061,168442,168407,169252,168890,169987,169955,169966,169980,156779,156333,156434,156364,169195,171300,159289,168464,159610,159298,170335,170232,170241,169471,170333,170247,170248,170047,170184,169858,162612,166721,162636,163392,162611,166755,170183,172196,172200,172017,170007,172045,169921,159319,164380,164371,169114,163546,163552,162693,171017,172124,169513)) OR (`Idx`=2 AND `CreatureEntry` IN (169987,169955,156779,156333,171300,159298,166721)) OR (`Idx`=1 AND `CreatureEntry` IN (169987,169955,169980,156779,156333,171300,168464,159298,170335,170047,162612,166721,163392,162611,166755,172200,164380,164371,162693,172124));


UPDATE `gameobject_template` SET `VerifiedBuild`=46455 WHERE `entry` IN (361388, 352407, 339505, 358529, 349088, 354287, 354288, 354125, 353082, 353076, 354096, 354286, 354285, 354284, 354283, 357227, 334363, 334362, 357431, 334364, 352082, 354214, 353778, 353777, 353776, 353775, 338616, 338221, 364539, 353781, 252247, 355274, 355263, 357443, 364389, 364391, 355230, 353382, 344736, 357223, 355382, 354849, 355039, 354036, 355231, 355016, 354095, 355435, 364388, 364387, 353788, 338188, 346056, 338220, 349082, 354155, 344588, 352177, 352176, 354831, 355446, 350967, 352179, 352178, 353149, 355370, 352094, 355437, 344772, 350794, 350793, 191083, 354059, 352026, 352024, 338631, 340085, 340058, 364349);
UPDATE `gameobject_template` SET `Data32`=108, `VerifiedBuild`=46455 WHERE `entry`=354208; -- Stolen Equipment


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46455 WHERE (`Idx`=1 AND `GameObjectEntry` IN (354214,344588,340058)) OR (`Idx`=0 AND `GameObjectEntry` IN (354214,344588,354059,338631,340058)) OR (`Idx`=2 AND `GameObjectEntry`=344588);

DELETE FROM `world_quest` WHERE `id`=54378;
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(54378, 86400, 16751, 1); -- 54378

UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14242 WHERE `id`=49097; -- 49097
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096

