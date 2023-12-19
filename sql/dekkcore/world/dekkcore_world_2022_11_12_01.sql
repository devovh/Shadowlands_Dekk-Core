
DELETE FROM `creature_equip_template` WHERE (`CreatureID`=169772 AND `ID`=1);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(169772, 1, 180024, 0, 0, 0, 0, 0, 176024, 0, 0, 46597); -- Vorkai Hunter

DELETE FROM `areatrigger_template` WHERE (`Id`=24357 AND `IsServerSide`=0);
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(24357, 0, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 46597);


UPDATE `areatrigger_template` SET `VerifiedBuild`=46597 WHERE (`IsServerSide`=0 AND `Id` IN (29907,25874,10665,23631,2947,10714,6095,19764,17676,24507,3921,11266,24351,24075,23571,25437,25051,23930,23653,24042));
UPDATE `areatrigger_template` SET `Flags`=0, `VerifiedBuild`=46597 WHERE (`Id`=9228 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=2, `Data0`=6, `Data1`=6, `VerifiedBuild`=46597 WHERE (`Id`=24096 AND `IsServerSide`=0);


UPDATE `conversation_actors` SET `CreatureId`=164804, `CreatureDisplayInfoId`=95564, `VerifiedBuild`=46597 WHERE (`Idx`=1 AND `ConversationId` IN (15112,15111));
UPDATE `conversation_actors` SET `CreatureId`=164501, `CreatureDisplayInfoId`=96451, `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `ConversationId` IN (15112,15116,15111,15114,15115));
UPDATE `conversation_actors` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `ConversationId` IN (15241,15506,15242,15119)) OR (`Idx`=1 AND `ConversationId`=15119);
UPDATE `conversation_actors` SET `ConversationActorId`=74894, `CreatureId`=164804, `CreatureDisplayInfoId`=95564, `VerifiedBuild`=46597 WHERE (`ConversationId`=15101 AND `Idx`=1);
UPDATE `conversation_actors` SET `ConversationActorId`=74725, `CreatureId`=164501, `CreatureDisplayInfoId`=96451, `VerifiedBuild`=46597 WHERE (`ConversationId`=15101 AND `Idx`=0);

DELETE FROM `conversation_line_template` WHERE `Id` IN (36981, 36982);
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(36981, 1554, 0, 0, 46597),
(36982, 1554, 0, 0, 46597);


DELETE FROM `quest_offer_reward` WHERE `ID`=62739;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(62739, 1, 0, 0, 0, 0, 0, 0, 0, 'Welcome! What brings you to the Heart of the Forest?', 46597); -- Restoring Balance


DELETE FROM `quest_details` WHERE `ID`=62763;
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(62763, 1, 1, 0, 0, 0, 0, 0, 0, 46597); -- Support the Court


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (170818,169772,170577,191534,75065)) OR (`DifficultyID`=1 AND `Entry` IN (165560,169425,169430,55659,165251,165231,169421,168932,169429,58542,135002,24207,169428,178601,168988,98035));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(170818, 0, 0, 0, 1234, 46597),
(169772, 0, 0, 0, 1237, 46597),
(165560, 1, 0, 0, 1711, 46597),
(169425, 1, 0, 0, 482, 46597),
(169430, 1, 0, 0, 482, 46597),
(55659, 1, 0, 0, 482, 46597),
(165251, 1, 0, 0, 1711, 46597),
(165231, 1, 0, 0, 1711, 46597),
(169421, 1, 0, 0, 482, 46597),
(168932, 1, 0, 0, 482, 46597),
(169429, 1, 0, 0, 482, 46597),
(58542, 1, 0, 0, 482, 46597),
(135002, 1, 0, 0, 482, 46597),
(24207, 1, 0, 0, 482, 46597),
(169428, 1, 0, 0, 482, 46597),
(178601, 1, 0, 0, 482, 46597),
(168988, 1, 0, 0, 1711, 46597),
(98035, 1, 0, 0, 482, 46597),
(170577, 0, 0, 0, 837, 46597),
(191534, 0, 0, 0, 837, 46597),
(75065, 0, 0, 0, 181, 46597);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46597 WHERE (`DifficultyID`=0 AND `Entry` IN (168149,169386,169303,169377,170737,162449,158948,168053,170436,36871,169231,169228,169050,169049,171279,160075,170448,171156,171663,159427,159465,167851,165677,159428,168490,170449,170460,160044,160045,169725,169714,43499,169629,169726,169631,169715,169900,169890,169630,171530,166247,169853,169848,176177,165937,176429,170567,169852,165452,180232,170576,165448,165447,170549,170552,163738,167243,158345,170570,163774,173644,165382,170571,170574,158519,176176,176179,165914,175350,175780,174725,152643,169874,167507,174521,169882,174606,174627,168075,168076,170677,168032,158556,174776,172711,168051,168168,168172,168167,168091,168082,168084,167255,172431,168090,168092,168089,170679,168085,172110,170678,168086,174592,172710,170910,170676,168173,174838,168220,169862,158555,171228,170680,167505,166024,166019,180230,169860,164037,173379,173378,173377,173380,170790,167503,174835,166179,166180,175858,164040,166187,164033,170206,170442,174837,180231,165908,169978,165910,176021,169979,163967,160076,170209,160074,169915,174721,169913,170205,170730,165907,170733,171346,158921,160817,160816,160814,160813,164728,158487,169210,169206,169205,165855,165857,165164,170902,165159,177513,162446,158495,158494,162434,160077,166248,171116,166073,165157,165154,165162,165155,160440,165156,169400,165685,165690,164922,164923,168620,168660,157885,157883,164802,171690,171684,171883,176020,164872,170768,164924,164875,164874,164809,170769,170734,169803,170446,159030,169169,159029,164701,164700,172965,177142,181535,166284,156791,156664,62822,62821,62818,180016,175042,55370)) OR (`DifficultyID`=1 AND `Entry` IN (176315,170451,169982,170229,165512,164517,167116,172312,167117,167111,167113,170218,170217,165108,31216,60199,164501,173720,173655,166299,166275,166885,166304,166276,171772,172991,166301,163058,174000));
UPDATE `creature_template_scaling` SET `ContentTuningID`=1711, `VerifiedBuild`=46597 WHERE (`DifficultyID`=0 AND `Entry` IN (164804,172995,164920,164567,164926,173679,173680,164921,166188,165111,167707,164929,165120));

DELETE FROM `creature_model_info` WHERE `DisplayID` IN (80387, 107530);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(80387, 0.690244972705841064, 1.5, 0, 46597),
(107530, 0.280177772045135498, 1, 0, 46597);

UPDATE `creature_model_info` SET `VerifiedBuild`=46597 WHERE `DisplayID` IN (94297, 95929, 97292, 97293, 93785, 30462, 95116, 67001, 55778, 96653, 99739, 74346, 99735, 95684, 95698, 95554, 94470, 61634, 94463, 97163, 96776, 76763, 76761, 97162, 85884, 96777, 20024, 95047, 97165, 99786, 94474, 95799, 95798, 96256, 99777, 99766, 99761, 95763, 95286, 95683, 95770, 95819, 99801, 93332, 39170, 90551, 95928, 100513, 71887, 77405, 93375, 95809, 94212, 94190, 94205, 100506, 100509, 77403, 76701, 96451, 77402, 77404, 97772, 94282, 95564, 98186, 95612, 95497, 95615, 98563, 98564, 95613, 97226, 95618, 95652, 96087, 95551, 98502, 97290, 78832, 96411, 98908, 95261, 97506, 95256, 96662, 99798, 99782, 99153, 95542, 99797, 96713, 99802, 94472, 96667, 99799, 93760, 95685, 57556, 99800, 45097, 68845, 97850, 99685, 95552, 55851, 99708, 99741, 94466, 99130, 81055, 99880, 99705, 95201, 101559, 42677, 94195, 100041, 95877, 95867, 94194, 96900, 83194, 95556, 96413, 98460, 93783, 95876, 95689, 95871, 95878, 34169, 94222, 98457, 100101, 62590, 97291, 60862, 19530, 100152, 97278, 93786, 94193, 60861, 78874, 62591, 94208, 57544, 97455, 99707, 95257, 97480, 96976, 95840, 97414, 95045, 95533, 95297, 95532, 96963, 39210, 97271, 55764, 80463, 97272, 97169, 99780, 98616, 97496, 99686, 97510, 36638, 95048, 95639, 95640, 94458, 94209, 97170, 34170, 99695, 96104, 99706, 99752, 94869, 95662, 95271, 97171, 95450, 94292, 94296, 95581, 93755, 93758, 93745, 4626, 93792, 62588, 23506, 4615, 62728, 60611, 95249, 87594, 95561, 95560, 94213, 97756, 94475, 100151, 901, 90867, 97363, 95927, 93793, 93788, 96759, 96105, 96764, 97361, 23767, 93781, 93782, 97282, 17612, 87593, 97281, 95930, 78850, 99054, 96744, 102298, 93595, 90397, 93201, 42722, 42720, 134, 101523, 96712, 93591, 94625, 95042);
UPDATE `creature_model_info` SET `BoundingRadius`=0.445083141326904296, `CombatReach`=1.80000007152557373, `VerifiedBuild`=46597 WHERE `DisplayID` IN (95858, 97164);
UPDATE `creature_model_info` SET `BoundingRadius`=0.445083051919937133, `CombatReach`=1.80000007152557373, `VerifiedBuild`=46597 WHERE `DisplayID`=95859;
UPDATE `creature_model_info` SET `BoundingRadius`=4.468309402465820312, `CombatReach`=5.5, `VerifiedBuild`=46597 WHERE `DisplayID`=94204;
UPDATE `creature_model_info` SET `BoundingRadius`=0.349999994039535522, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID` IN (80464, 95199);
UPDATE `creature_model_info` SET `BoundingRadius`=0.519263625144958496, `CombatReach`=2.099999904632568359, `VerifiedBuild`=46597 WHERE `DisplayID`=99738;
UPDATE `creature_model_info` SET `CombatReach`=2.40000009536743164, `VerifiedBuild`=46597 WHERE `DisplayID`=99483;
UPDATE `creature_model_info` SET `BoundingRadius`=1.218679666519165039, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=100523;
UPDATE `creature_model_info` SET `BoundingRadius`=1.649999976158142089, `CombatReach`=2.474999904632568359, `VerifiedBuild`=46597 WHERE `DisplayID`=100518;
UPDATE `creature_model_info` SET `BoundingRadius`=2.663664817810058593, `CombatReach`=1.25, `VerifiedBuild`=46597 WHERE `DisplayID`=95692;
UPDATE `creature_model_info` SET `BoundingRadius`=1.743252396583557128, `CombatReach`=1.80000007152557373, `VerifiedBuild`=46597 WHERE `DisplayID`=100510;
UPDATE `creature_model_info` SET `BoundingRadius`=0.390000015497207641, `CombatReach`=1.299999952316284179, `VerifiedBuild`=46597 WHERE `DisplayID`=100507;
UPDATE `creature_model_info` SET `BoundingRadius`=0.756641268730163574, `CombatReach`=3.060000419616699218, `VerifiedBuild`=46597 WHERE `DisplayID`=95908;
UPDATE `creature_model_info` SET `BoundingRadius`=1.499359726905822753, `CombatReach`=1.20000004768371582, `VerifiedBuild`=46597 WHERE `DisplayID`=100521;
UPDATE `creature_model_info` SET `BoundingRadius`=0.875, `CombatReach`=2.5, `VerifiedBuild`=46597 WHERE `DisplayID`=95198;
UPDATE `creature_model_info` SET `BoundingRadius`=0.695756196975708007, `CombatReach`=2.25, `VerifiedBuild`=46597 WHERE `DisplayID`=93762;
UPDATE `creature_model_info` SET `BoundingRadius`=1.290538549423217773, `CombatReach`=3, `VerifiedBuild`=46597 WHERE `DisplayID`=100514;
UPDATE `creature_model_info` SET `BoundingRadius`=4, `CombatReach`=2, `VerifiedBuild`=46597 WHERE `DisplayID`=96965;
UPDATE `creature_model_info` SET `BoundingRadius`=0.694201350212097167, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=86207;
UPDATE `creature_model_info` SET `BoundingRadius`=1.438193559646606445, `CombatReach`=1.60000002384185791, `VerifiedBuild`=46597 WHERE `DisplayID`=95620;
UPDATE `creature_model_info` SET `BoundingRadius`=0.462800920009613037, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID` IN (85883, 85885);
UPDATE `creature_model_info` SET `BoundingRadius`=1.929056644439697265, `CombatReach`=0.646938800811767578, `VerifiedBuild`=46597 WHERE `DisplayID`=96414;
UPDATE `creature_model_info` SET `BoundingRadius`=2.385457992553710937, `CombatReach`=0.800000011920928955, `VerifiedBuild`=46597 WHERE `DisplayID`=97050;
UPDATE `creature_model_info` SET `BoundingRadius`=1.547241449356079101, `VerifiedBuild`=46597 WHERE `DisplayID`=64331;
UPDATE `creature_model_info` SET `BoundingRadius`=0.300000011920928955, `VerifiedBuild`=46597 WHERE `DisplayID`=79383;
UPDATE `creature_model_info` SET `BoundingRadius`=0.277369618415832519, `CombatReach`=1 WHERE `DisplayID`=87563;
UPDATE `creature_model_info` SET `BoundingRadius`=0.759995520114898681, `CombatReach`=1.5, `VerifiedBuild`=46597 WHERE `DisplayID`=95555;
UPDATE `creature_model_info` SET `BoundingRadius`=2.981822490692138671, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID`=96412;
UPDATE `creature_model_info` SET `BoundingRadius`=0.85237276554107666, `CombatReach`=0.400000005960464477, `VerifiedBuild`=46597 WHERE `DisplayID`=95690;
UPDATE `creature_model_info` SET `BoundingRadius`=0.227499991655349731, `CombatReach`=0.649999976158142089, `VerifiedBuild`=46597 WHERE `DisplayID`=95200;
UPDATE `creature_model_info` SET `BoundingRadius`=1.46940779685974121, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID` IN (93795, 93791, 93787, 93790);
UPDATE `creature_model_info` SET `BoundingRadius`=8.3603363037109375, `CombatReach`=8, `VerifiedBuild`=46597 WHERE `DisplayID`=94412;
UPDATE `creature_model_info` SET `BoundingRadius`=1.03149425983428955, `VerifiedBuild`=46597 WHERE `DisplayID`=68393;
UPDATE `creature_model_info` SET `BoundingRadius`=0.497715175151824951, `CombatReach`=1, `VerifiedBuild`=46597 WHERE `DisplayID`=95695;
UPDATE `creature_model_info` SET `BoundingRadius`=3.655889511108398437, `CombatReach`=4.5, `VerifiedBuild`=46597 WHERE `DisplayID`=94197;
UPDATE `creature_model_info` SET `BoundingRadius`=0.531996846199035644, `CombatReach`=1.049999952316284179, `VerifiedBuild`=46597 WHERE `DisplayID`=98617;
UPDATE `creature_model_info` SET `BoundingRadius`=0.693424046039581298, `CombatReach`=0.60000002384185791, `VerifiedBuild`=46597 WHERE `DisplayID`=94210;
UPDATE `creature_model_info` SET `CombatReach`=0, `VerifiedBuild`=46597 WHERE `DisplayID`=52477;
UPDATE `creature_model_info` SET `BoundingRadius`=0.310000002384185791, `CombatReach`=1 WHERE `DisplayID`=18724;
UPDATE `creature_model_info` SET `CombatReach`=0.300000011920928955, `VerifiedBuild`=46597 WHERE `DisplayID`=39353;
UPDATE `creature_model_info` SET `BoundingRadius`=0.524599969387054443, `VerifiedBuild`=46597 WHERE `DisplayID`=96576;
UPDATE `creature_model_info` SET `BoundingRadius`=2.083333253860473632, `CombatReach`=1 WHERE `DisplayID` IN (94612, 94614);
UPDATE `creature_model_info` SET `BoundingRadius`=0.734413444995880126, `CombatReach`=1.3125, `VerifiedBuild`=46597 WHERE `DisplayID`=97424;
UPDATE `creature_model_info` SET `BoundingRadius`=0.874301791191101074, `CombatReach`=1.5625 WHERE `DisplayID`=96754;
UPDATE `creature_model_info` SET `BoundingRadius`=1.605555653572082519, `CombatReach`=1.70000004768371582 WHERE `DisplayID`=93590;


UPDATE `gossip_menu_option` SET `VerifiedBuild`=46597 WHERE (`MenuID`=26693 AND `OptionID`=4);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=45533, `VerifiedBuild`=46597 WHERE (`MenuID`=25389 AND `OptionID`=0); -- OptionBroadcastTextID: 45533 - 45533 - 143334 - 143334

DELETE FROM `creature_template` WHERE `entry`=191534;
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `BaseAttackTime`, `RangeAttackTime`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `VehicleId`, `HoverHeight`) VALUES
(191534, 0, 60, 60, 35, 16777216, 1, 1.142857193946838378, 2000, 0, 32768, 2048, 0, 0, 0, 1); -- Sir Reginald

UPDATE `creature_template` SET `minlevel`=58, `maxlevel`=58 WHERE `entry`=36871; -- Core Hound Pup
UPDATE `creature_template` SET `minlevel`=56, `maxlevel`=56, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480, `unit_flags3`=1048576 WHERE `entry`=170818; -- Wildseed Tender


UPDATE `quest_template` SET `VerifiedBuild`=46597 WHERE `ID` IN (60405, 64324, 64084, 29691, 29652, 28834, 26371, 26365, 26297, 60415, 60404, 61982, 60424, 65655, 53476, 51582, 51552, 50600, 49091, 49098, 48982, 43478, 61303, 59771, 59808, 59850, 58084, 60872, 61343, 58605, 61141, 58490, 60476, 61540, 60958, 60659, 61949, 61883, 61867, 61787);
UPDATE `quest_template` SET `RewardBonusMoney`=7700, `VerifiedBuild`=46597 WHERE `ID` IN (63032, 63029); -- The Highlord Calls
UPDATE `quest_template` SET `RewardBonusMoney`=470, `VerifiedBuild`=46597 WHERE `ID`=41069; -- Direct Our Wrath
UPDATE `quest_template` SET `RewardBonusMoney`=2900, `Flags`=8, `VerifiedBuild`=46597 WHERE `ID`=31327; -- Trouble Brewing
UPDATE `quest_template` SET `RewardBonusMoney`=2900, `VerifiedBuild`=46597 WHERE `ID`=31324; -- Family Secrets
UPDATE `quest_template` SET `RewardBonusMoney`=55400, `Expansion`=9, `VerifiedBuild`=46597 WHERE `ID`=31316; -- Julia, The Pet Tamer
UPDATE `quest_template` SET `RewardBonusMoney`=6900, `VerifiedBuild`=46597 WHERE `ID`=62761; -- Return to Oribos
UPDATE `quest_template` SET `RewardBonusMoney`=443300 WHERE `ID`=62723;
UPDATE `quest_template` SET `RewardBonusMoney`=69300, `VerifiedBuild`=46597 WHERE `ID`=59867; -- WANTED: Appraiser Vix
UPDATE `quest_template` SET `RewardBonusMoney`=124700, `VerifiedBuild`=46597 WHERE `ID`=59520; -- Plaguefall: Knee Deep In It
UPDATE `quest_template` SET `RewardBonusMoney`=83100, `VerifiedBuild`=46597 WHERE `ID`=57301; -- Callous Concoctions
UPDATE `quest_template` SET `Expansion`=9, `VerifiedBuild`=46597 WHERE `ID`=50305; -- Stranger in a Strange Land
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46597 WHERE `ID`=30120; -- Cleansing Drak'Tharon
UPDATE `quest_template` SET `RewardBonusMoney`=2460, `VerifiedBuild`=46597 WHERE `ID`=29844; -- For Posterity
UPDATE `quest_template` SET `RewardBonusMoney`=4950, `VerifiedBuild`=46597 WHERE `ID`=29565; -- The Heart of the Matter
UPDATE `quest_template` SET `RewardBonusMoney`=4950, `VerifiedBuild`=46597 WHERE `ID`=29563; -- Lost in Action
UPDATE `quest_template` SET `Expansion`=9, `VerifiedBuild`=46597 WHERE `ID`=29436; -- The Humanoid Cannonball
UPDATE `quest_template` SET `RewardBonusMoney`=6900, `VerifiedBuild`=46597 WHERE `ID`=62738; -- A Fresh Blade
UPDATE `quest_template` SET `RewardBonusMoney`=332500 WHERE `ID`=60057;
UPDATE `quest_template` SET `RewardBonusMoney`=2350, `VerifiedBuild`=46597 WHERE `ID`=49998; -- Voices Below
UPDATE `quest_template` SET `RewardBonusMoney`=110850, `VerifiedBuild`=46597 WHERE `ID`=62773; -- Dreamshrine Basin
UPDATE `quest_template` SET `RewardBonusMoney`=110850, `VerifiedBuild`=46597 WHERE `ID`=62775; -- The Waning Grove
UPDATE `quest_template` SET `RewardBonusMoney`=110850, `VerifiedBuild`=46597 WHERE `ID`=62774; -- Tranquil Pools
UPDATE `quest_template` SET `RewardBonusMoney`=6900, `VerifiedBuild`=46597 WHERE `ID`=57952; -- In Need of Gorm Gris
UPDATE `quest_template` SET `RewardBonusMoney`=332500, `VerifiedBuild`=46597 WHERE `ID`=62371; -- Tirna Scithe: A Warning Silence
UPDATE `quest_template` SET `RewardBonusMoney`=83100, `VerifiedBuild`=46597 WHERE `ID`=57652; -- Supplies Needed: Amber Grease
UPDATE `quest_template` SET `RewardBonusMoney`=83100, `VerifiedBuild`=46597 WHERE `ID`=58265; -- Blooming Villains
UPDATE `quest_template` SET `RewardBonusMoney`=6900, `VerifiedBuild`=46597 WHERE `ID`=58161; -- Forest Disappearances
UPDATE `quest_template` SET `RewardBonusMoney`=6900, `VerifiedBuild`=46597 WHERE `ID`=57651; -- Trouble in the Banks
UPDATE `quest_template` SET `RewardBonusMoney`=110850 WHERE `ID` IN (60840, 62721);
UPDATE `quest_template` SET `RewardBonusMoney`=6900 WHERE `ID` IN (62739, 49929);
UPDATE `quest_template` SET `RewardBonusMoney`=55400 WHERE `ID`=45563;


UPDATE `quest_objectives` SET `VerifiedBuild`=46597 WHERE `ID` IN (398439, 268542, 268541, 268521, 397119, 396463, 396462, 409173, 392087, 259073, 258390, 265527, 265526, 265525, 257466, 257465, 257387, 257386, 253306, 251773, 266967, 398471, 398440, 406934, 398585, 398584, 398583, 398582, 398581, 398541, 398540, 423384, 341495, 336212, 333492, 408770, 408769, 407668, 392870, 393977, 405569, 405568, 396927, 396922, 396931, 397091, 397051, 397009, 397110, 397128, 397127, 397109, 393628, 393643, 404953, 409115, 405647, 405648, 394456, 408060, 405334, 405331, 408986, 408985, 408984, 394588, 394587, 394586, 394579, 394353, 398340, 406354, 406227, 407943, 409283, 408888, 408887, 408886, 408885, 405088, 405085, 405084, 405083, 405081, 405079, 405078, 405077, 405076, 405075, 405074, 405073, 408943, 408942, 408941, 405225, 405224, 406869, 406804, 406765, 406712);
UPDATE `quest_objectives` SET `Description`='Initial strike point chosen', `VerifiedBuild`=46597 WHERE `ID`=281853; -- 281853
UPDATE `quest_objectives` SET `Description`='Hero\'s Call Board found', `VerifiedBuild`=46597 WHERE `ID`=312122; -- 312122
UPDATE `quest_objectives` SET `Amount`=25, `ProgressBarWeight`=4, `VerifiedBuild`=46597 WHERE `ID`=408771; -- 408771
UPDATE `quest_objectives` SET `Amount`=20, `ProgressBarWeight`=5, `VerifiedBuild`=46597 WHERE `ID`=408705; -- 408705
UPDATE `quest_objectives` SET `Amount`=34, `ProgressBarWeight`=3, `VerifiedBuild`=46597 WHERE `ID`=408704; -- 408704
UPDATE `quest_objectives` SET `Amount`=25, `ProgressBarWeight`=4, `VerifiedBuild`=46597 WHERE `ID`=408703; -- 408703
UPDATE `quest_objectives` SET `Amount`=17, `ProgressBarWeight`=6, `VerifiedBuild`=46597 WHERE `ID`=408702; -- 408702
UPDATE `quest_objectives` SET `Amount`=20, `ProgressBarWeight`=5, `VerifiedBuild`=46597 WHERE `ID`=408701; -- 408701
UPDATE `quest_objectives` SET `Amount`=13, `ProgressBarWeight`=8, `VerifiedBuild`=46597 WHERE `ID`=408698; -- 408698
UPDATE `quest_objectives` SET `Amount`=7, `ProgressBarWeight`=15, `VerifiedBuild`=46597 WHERE `ID`=408697; -- 408697
UPDATE `quest_objectives` SET `Amount`=7, `ProgressBarWeight`=15, `VerifiedBuild`=46597 WHERE `ID`=408696; -- 408696
UPDATE `quest_objectives` SET `Amount`=7, `ProgressBarWeight`=15, `VerifiedBuild`=46597 WHERE `ID`=408695; -- 408695
UPDATE `quest_objectives` SET `Amount`=20, `ProgressBarWeight`=5, `VerifiedBuild`=46597 WHERE `ID`=408694; -- 408694
UPDATE `quest_objectives` SET `Flags`=0, `VerifiedBuild`=46597 WHERE `ID`=408546; -- 408546
UPDATE `quest_objectives` SET `Amount`=7, `ProgressBarWeight`=15, `VerifiedBuild`=46597 WHERE `ID`=411598; -- 411598
UPDATE `quest_objectives` SET `Amount`=20, `ProgressBarWeight`=5, `VerifiedBuild`=46597 WHERE `ID`=411597; -- 411597
UPDATE `quest_objectives` SET `Amount`=20, `ProgressBarWeight`=5, `VerifiedBuild`=46597 WHERE `ID`=411596; -- 411596
UPDATE `quest_objectives` SET `Amount`=13, `ProgressBarWeight`=8, `VerifiedBuild`=46597 WHERE `ID`=408737; -- 408737
UPDATE `quest_objectives` SET `Amount`=20, `ProgressBarWeight`=5, `VerifiedBuild`=46597 WHERE `ID`=408736; -- 408736
UPDATE `quest_objectives` SET `Amount`=20, `ProgressBarWeight`=5, `VerifiedBuild`=46597 WHERE `ID`=408735; -- 408735
UPDATE `quest_objectives` SET `Amount`=13, `ProgressBarWeight`=8, `VerifiedBuild`=46597 WHERE `ID`=408734; -- 408734
UPDATE `quest_objectives` SET `Amount`=7, `ProgressBarWeight`=15, `VerifiedBuild`=46597 WHERE `ID`=408692; -- 408692
UPDATE `quest_objectives` SET `Amount`=25, `ProgressBarWeight`=4, `VerifiedBuild`=46597 WHERE `ID`=408681; -- 408681
UPDATE `quest_objectives` SET `Amount`=13, `ProgressBarWeight`=8, `VerifiedBuild`=46597 WHERE `ID`=408679; -- 408679
UPDATE `quest_objectives` SET `Amount`=13, `ProgressBarWeight`=8, `VerifiedBuild`=46597 WHERE `ID`=408664; -- 408664
UPDATE `quest_objectives` SET `Flags`=0, `VerifiedBuild`=46597 WHERE `ID`=408586; -- 408586
UPDATE `quest_objectives` SET `Amount`=10, `ProgressBarWeight`=10, `VerifiedBuild`=46597 WHERE `ID`=408654; -- 408654
UPDATE `quest_objectives` SET `Amount`=20, `ProgressBarWeight`=5, `VerifiedBuild`=46597 WHERE `ID`=408653; -- 408653
UPDATE `quest_objectives` SET `Amount`=10, `ProgressBarWeight`=10, `VerifiedBuild`=46597 WHERE `ID`=408652; -- 408652
UPDATE `quest_objectives` SET `Amount`=17, `ProgressBarWeight`=6, `VerifiedBuild`=46597 WHERE `ID`=408651; -- 408651
UPDATE `quest_objectives` SET `Amount`=25, `ProgressBarWeight`=4, `VerifiedBuild`=46597 WHERE `ID`=408650; -- 408650
UPDATE `quest_objectives` SET `Amount`=7, `ProgressBarWeight`=15, `VerifiedBuild`=46597 WHERE `ID`=408649; -- 408649
UPDATE `quest_objectives` SET `Amount`=20, `ProgressBarWeight`=5, `VerifiedBuild`=46597 WHERE `ID`=408647; -- 408647
UPDATE `quest_objectives` SET `Amount`=20, `ProgressBarWeight`=5, `VerifiedBuild`=46597 WHERE `ID`=408645; -- 408645
UPDATE `quest_objectives` SET `Flags`=0, `VerifiedBuild`=46597 WHERE `ID`=408566; -- 408566


UPDATE `quest_visual_effect` SET `VerifiedBuild`=46597 WHERE (`Index`=0 AND `ID` IN (281853,268521,392087,312122,253306,406934,423384,333492,408546,408653,405569,405568,396931,397110,397128,397127,397109,393628,393643,405647,405648,394456,405334,405331,398340,407943,405073,405225,405224,406869,406804,406765,406712)) OR (`Index`=7 AND `ID` IN (392087,405648,405073)) OR (`Index`=6 AND `ID` IN (392087,405648,405073)) OR (`Index`=5 AND `ID` IN (392087,405648,394456,405073)) OR (`Index`=4 AND `ID` IN (392087,405648,394456,405073)) OR (`Index`=3 AND `ID` IN (392087,405648,394456,405073)) OR (`Index`=2 AND `ID` IN (392087,405648,394456,405331,405073)) OR (`Index`=1 AND `ID` IN (392087,397127,405648,394456,405331,405073)) OR (`Index`=9 AND `ID` IN (405648,405073)) OR (`Index`=8 AND `ID` IN (405648,405073)) OR (`Index`=10 AND `ID`=405073);


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `QuestID` IN (64324,64084));

DELETE FROM `creature_template` WHERE `entry`=191534;
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `unit_class`, `WidgetSetID`, `WidgetSetUnitConditionID`, `rank`, `family`, `type`, `type_flags`, `type_flags2`, `HealthModifier`, `ManaModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `VerifiedBuild`) VALUES
(191534, 0, 0, 'Sir Reginald', '', NULL, NULL, 'openhandglow', 8, 0, 0, 2, 0, 0, 0, 0, 7, 0, 0, 1, 1, 0, 0, 219739, 46597); -- Sir Reginald


UPDATE `creature_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (165560, 174521, 172312, 156664, 158921, 174592, 174606, 165677, 174627, 165685, 62821, 62822, 170205, 170206, 156791, 159029, 159030, 170217, 170218, 170229, 174721, 174725, 168032, 168051, 168053, 174776, 168075, 168076, 168082, 168084, 168085, 168086, 168089, 168090, 168091, 168092, 165855, 181535, 174835, 174838, 165907, 165908, 165910, 168149, 165914, 58542, 168167, 168168, 168172, 168173, 165937, 177142, 170436, 170446, 170448, 170449, 163738, 170451, 168220, 170460, 163774, 166019, 166024, 166073, 170549, 170552, 170567, 175042, 170570, 170571, 170574, 170576, 170577, 166180, 166187, 166188, 170676, 170677, 170678, 163967, 170679, 170680, 172965, 170730, 170733, 170737, 166275, 166276, 164040, 172991, 172995, 166284, 170768, 170769, 166299, 166301, 166304, 170790, 135002, 177513, 170818, 168620, 175350, 168660, 170902, 170910, 43499, 180016, 171116, 173377, 168932, 164501, 168988, 164517, 160044, 160045, 171238, 160077, 164567, 180230, 180231, 180232, 169049, 169050, 157883, 157885, 171346, 166885, 162434, 162446, 162449, 169169, 173644, 164701, 164728, 173679, 169205, 173680, 169206, 169210, 169228, 169231, 173720, 164804, 171530, 169303, 167111, 164874, 164875, 167113, 167116, 167117, 160440, 164920, 164921, 164922, 169400, 164926, 164929, 169421, 169428, 169429, 171684, 171690, 167243, 167255, 174000, 158345, 171772, 165108, 165111, 165120, 176315, 98035, 165154, 169629, 165155, 169630, 165156, 169631, 165157, 165159, 165162, 165164, 171883, 165191, 158487, 158494, 158495, 158519, 165231, 169714, 169715, 176429, 169725, 169726, 158544, 167503, 158555, 158556, 55659, 160813, 160814, 160816, 160817, 163058, 169772, 169803, 60199, 169848, 169852, 169853, 165382, 172110, 169882, 169890, 169900, 31216, 169913, 169915, 165447, 165448, 165452, 167707, 165512);
UPDATE `creature_template` SET `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=167851; -- Egg-Tender Leh'go
UPDATE `creature_template` SET `KillCredit1`=158945, `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=158948; -- Gorm Hulk
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=165690; -- Glenfoal
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=172431; -- Lady Moonberry
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=62818; -- Grizzly Squirrel
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=170209; -- Stellarwasp
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry` IN (165857, 176021, 169979); -- Starmoth
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=174837; -- Runewood Hoarder
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=170442; -- Moonshade Owl
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=172710; -- Goji
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=172711; -- Peawee
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=152643; -- Despawn Bunny
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=159427; -- Elder Finnan
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=159428; -- Groonoomcrooek
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=159465; -- Elder Gwenna
UPDATE `creature_template` SET `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=166179; -- Darkwarren Ravager
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry` IN (166247, 171279); -- Lopwog
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=166248; -- Lonely Recluse
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.60000002384185791, `VerifiedBuild`=46597 WHERE `entry`=168490; -- Brittlebark Mischief-Maker
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry` IN (170734, 164809); -- Decayfly
UPDATE `creature_template` SET `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=164033; -- Darkwarren Matriarch
UPDATE `creature_template` SET `KillCredit1`=170182, `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=164037; -- Darkwarren Bulwark
UPDATE `creature_template` SET `VerifiedBuild`=46597 WHERE `entry`=36871; -- Core Hound Pup
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=173378; -- Star Tail
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=173379; -- Needlenose
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=173380; -- Brite
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.009999999776482582, `VerifiedBuild`=46597 WHERE `entry`=171156; -- Aerto
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=171228; -- Tranquil Wader
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=171230; -- Gorm Harrier
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=75065; -- Blood Drip
UPDATE `creature_template` SET `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=160074; -- Gorm Slicer
UPDATE `creature_template` SET `KillCredit1`=160074, `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=160075; -- Gorm Spewer
UPDATE `creature_template` SET `KillCredit1`=160074, `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=160076; -- Gorm Borer
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `family`=303, `VerifiedBuild`=46597 WHERE `entry`=175780; -- Mistwing
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=175858; -- Dusty Recluse
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=164700; -- Moonfrog
UPDATE `creature_template` SET `family`=303, `VerifiedBuild`=46597 WHERE `entry`=173655; -- Mistveil Matriarch
UPDATE `creature_template` SET `KillCredit2`=173429, `VerifiedBuild`=46597 WHERE `entry`=164802; -- Invasive Gormling
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=176020; -- Decay Grub
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=164872; -- Murktoad
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry` IN (169377, 169978); -- Pearlshell
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=169386; -- Lunawing
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=164923; -- Foothills Kit
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=164924; -- Wiltwing
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=169425; -- Felhound
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.200000002980232238, `VerifiedBuild`=46597 WHERE `entry`=171663; -- Mature Stellarwasp
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=169430; -- Ur'zul
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=176176; -- Blighted Brute
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=176177; -- Blighted Darkcaster
UPDATE `creature_template` SET `femaleName`='', `HealthModifier`=0.800000011920928955, `VerifiedBuild`=46597 WHERE `entry`=176179; -- Blighted Creeper
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46597 WHERE `entry`=165251; -- Illusionary Vulpin
UPDATE `creature_template` SET `family`=303, `type_flags`=1, `VerifiedBuild`=46597 WHERE `entry`=167505; -- Veilwing Nestkeeper
UPDATE `creature_template` SET `family`=303, `type_flags`=1, `VerifiedBuild`=46597 WHERE `entry`=167507; -- Veilwing Fledgeling
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=169860; -- Fish
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=169862; -- Glittering Croaker
UPDATE `creature_template` SET `family`=303, `type_flags`=1, `VerifiedBuild`=46597 WHERE `entry`=169874; -- Veilwing Matriarch
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46597 WHERE `entry`=169982; -- Grove Defender

DELETE FROM `creature_template_model` WHERE (`CreatureID`=191534 AND `Idx`=0);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(191534, 0, 107530, 1, 1, 46597); -- Sir Reginald


UPDATE `creature_template_model` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `CreatureID` IN (168149,169386,169377,169303,170737,162449,158948,168053,170436,36871,170818,169231,169228,169050,169049,171279,160075,171230,170448,171156,159427,159465,165677,159428,158544,168490,170460,170449,160045,160044,169725,169714,43499,169726,169715,169631,169629,171238,169772,169900,169890,171530,169853,169848,169630,166247,176177,165937,176429,170567,180232,170576,169852,165452,165448,165447,170552,170549,167243,163738,173644,170574,170571,170570,165382,163774,158519,158345,170451,169982,176315,170229,165560,169425,169430,55659,165512,164517,167116,172312,167117,167113,167111,170218,170217,165108,165251,31216,165231,169421,60199,168932,164501,173720,173655,169429,58542,135002,166299,166275,166885,166304,166276,169428,168988,98035,171772,172991,174000,166301,163058,164567,164804,164921,164929,164926,173679,165111,172995,167707,164920,173680,166188,165120,176179,165914,165191,175350,175780,152643,169874,174521,167507,174627,174606,169882,170677,168076,168075,168032,158556,174776,172711,168172,168168,168167,168051,172431,168092,168091,168090,168089,168084,168082,167255,172110,170679,170678,168085,168086,174592,172710,170910,170676,168173,174838,168220,171228,169862,158555,170680,167505,166024,166019,180230,169860,164037,173380,173379,173378,173377,170790,167503,174835,166179,175858,166180,164040,166187,170206,164033,174837,170442,180231,165908,169978,176021,169979,165910,163967,160076,170209,169915,160074,174721,170205,169913,165907,170730,170733,158487,171346,160817,160816,160814,160813,164728,158921,169206,169210,169205,165857,165855,170902,165164,165159,177513,162446,162434,160077,158495,158494,171116,166248,166073,165157,165162,165154,165155,160440,165156,169400,165690,165685,164923,164922,168620,168660,157885,157883,171690,164802,171684,75065,171883,176020,164872,170768,164924,164875,164874,164809,170769,170734,169803,170446,169169,159030,172965,164701,164700,159029,177142,181535,166284,156791,156664,62821,62822,62818,180016,175042)) OR (`Idx`=1 AND `CreatureID` IN (169386,169377,169303,170737,162449,168053,170436,169231,169050,171279,170448,171663,160045,160044,169725,169714,169715,169629,171530,169853,166247,176429,169852,170451,169982,169425,169430,55659,167117,169421,168932,169429,58542,169428,98035,174000,164929,167707,176179,174725,152643,174606,169882,168173,168220,169862,158555,166024,166019,164037,175858,166180,166187,170206,165908,169978,169979,170209,169915,174721,170205,165907,170733,164728,169206,169210,165857,165855,170902,165159,160077,171116,166248,165157,165162,165154,165155,165156,169400,165685,164923,164922,168620,168660,157885,157883,164802,75065,171883,164872,170768,164875,164874,164809,170734,169803,170446,169169,159030,164700,159029,62818,175042)) OR (`Idx`=2 AND `CreatureID` IN (171663,160045,160044,169714,170451,169982,169430,55659,167117,169421,168932,169429,169428,98035,168220,158555,166180,166187,170206,165907,164728,165156,168660,169803,159030,175042)) OR (`Idx`=5 AND `CreatureID` IN (160045,160044,158555,166180,169803)) OR (`Idx`=4 AND `CreatureID` IN (160045,160044,158555,166180,169803,175042)) OR (`Idx`=3 AND `CreatureID` IN (160045,160044,169714,169982,169428,168220,158555,166180,166187,170206,165907,164728,165156,168660,169803,159030,175042)) OR (`Idx`=7 AND `CreatureID`=158555) OR (`Idx`=6 AND `CreatureID`=158555);
UPDATE `creature_template_model` SET `DisplayScale`=0.300000011920928955, `VerifiedBuild`=46597 WHERE (`CreatureID`=171663 AND `Idx`=0); -- Mature Stellarwasp
UPDATE `creature_template_model` SET `DisplayScale`=1.10000002384185791, `VerifiedBuild`=46597 WHERE (`CreatureID`=167851 AND `Idx`=0); -- Egg-Tender Leh'go
UPDATE `creature_template_model` SET `DisplayScale`=1.20000004768371582, `VerifiedBuild`=46597 WHERE (`CreatureID`=170577 AND `Idx`=0); -- Nightsong Ardenmoth
UPDATE `creature_template_model` SET `DisplayScale`=0.699999988079071044, `VerifiedBuild`=46597 WHERE (`CreatureID`=176176 AND `Idx`=0); -- Blighted Brute
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=46597 WHERE (`CreatureID`=174725 AND `Idx`=0); -- Travel Journal


UPDATE `creature_questitem` SET `VerifiedBuild`=46597 WHERE (`Idx`=0 AND `CreatureEntry` IN (158948,167851,165677,168490,170449,169631,169629,164517,170206,164033,163967,165907,170730,169205,157885,157883,170769)) OR (`Idx`=1 AND `CreatureEntry` IN (167851,165677,168490,164517)) OR (`Idx`=3 AND `CreatureEntry`=168490) OR (`Idx`=2 AND `CreatureEntry`=168490);

DELETE FROM `gameobject_template` WHERE `entry` IN (364330 /*Hungry Wildseed*/, 354636 /*Anvil*/, 354635 /*Anvil*/, 354634 /*Anvil*/, 354628 /*Forge*/, 354638 /*Anvil*/, 354637 /*Anvil*/, 354633 /*Forge*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(364330, 10, 63804, 'Hungry Wildseed', 'questinteract', '', '', 0.400000005960464477, 3231, 0, 0, 1, 0, 0, 0, 0, 0, 0, 344334, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 87264, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Hungry Wildseed
(354636, 8, 62013, 'Anvil', '', '', '', 1, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Anvil
(354635, 8, 62013, 'Anvil', '', '', '', 1, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Anvil
(354634, 8, 62013, 'Anvil', '', '', '', 1, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Anvil
(354628, 8, 65230, 'Forge', '', '', '', 1, 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Forge
(354638, 8, 62013, 'Anvil', '', '', '', 1, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Anvil
(354637, 8, 62013, 'Anvil', '', '', '', 1, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46597), -- Anvil
(354633, 8, 65230, 'Forge', '', '', '', 1, 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46597); -- Forge

UPDATE `gameobject_template` SET `VerifiedBuild`=46597 WHERE `entry` IN (352983, 349083, 355508, 354631, 355759, 354639, 354646, 349982, 354148, 354145, 354147, 354146, 354144, 354149, 354143, 354141, 354142, 357707, 233282, 353622, 303148, 357703, 353528, 352953, 352945, 352937, 352966, 352958, 352979, 352950, 352942, 352971, 352934, 353637, 352963, 352955, 352947, 352939, 353527, 364547, 352976, 352968, 352960, 352981, 352973, 352944, 352936, 352965, 352957, 349937, 352941, 353514, 352978, 352970, 352962, 352938, 352975, 353636, 352967, 353638, 352959, 352943, 352935, 352980, 355383, 352972, 352982, 352956, 252248, 352974, 352969, 352948, 352961, 354647, 355807, 349363, 354218, 354217, 355914, 353827, 353826, 356878, 353830, 364335, 328303, 355913, 355353, 355349, 354219, 355912, 353829, 353825, 355350, 353828, 354201, 352613, 352612, 352611, 311205, 350087, 358572, 338672, 349533, 349534, 355043, 350843, 350842, 350840, 350839, 350823, 350852, 350845, 352697, 350829, 350846, 336688, 336686, 364345, 348934, 352060, 352058, 354925, 368955);
UPDATE `gameobject_template` SET `IconName`='questinteract', `castBarCaption`='Collecting', `Data0`=43, `Data1`=0, `Data8`=62774, `Data14`=19676, `Data30`=98930, `ContentTuningId`=807, `VerifiedBuild`=46597 WHERE `entry`=336906; -- Animacone
UPDATE `gameobject_template` SET `type`=10, `IconName`='questinteract', `castBarCaption`='Opening', `Data0`=93, `Data3`=3000, `Data10`=310812, `Data14`=21400, `Data20`=1, `Data22`=84340, `Data23`=1, `ContentTuningId`=1235, `VerifiedBuild`=46597 WHERE `entry`=338492; -- Giggling Basket
UPDATE `gameobject_template` SET `name`='Anvil', `VerifiedBuild`=46597 WHERE `entry` IN (354640, 354630, 354629, 354632); -- ÐÐ°ÐºÐ¾Ð²Ð°Ð»ÑŒÐ½Ñ
UPDATE `gameobject_template` SET `castBarCaption`='Picking Up', `VerifiedBuild`=46597 WHERE `entry`=338476; -- Water Bucket
UPDATE `gameobject_template` SET `IconName`='questinteract', `castBarCaption`='Picking Up', `size`=0.699999988079071044, `Data0`=43, `Data1`=0, `Data2`=1, `Data3`=1, `Data13`=1, `Data14`=125962, `Data17`=88850, `Data30`=102449, `ContentTuningId`=837, `VerifiedBuild`=46597 WHERE `entry`=352182; -- Spriggan-Sized Polearm
UPDATE `gameobject_template` SET `IconName`='questinteract', `castBarCaption`='Picking Up', `size`=0.5, `Data0`=43, `Data1`=0, `Data2`=1, `Data3`=1, `Data13`=1, `Data14`=125962, `Data17`=88850, `Data30`=102448, `ContentTuningId`=837, `VerifiedBuild`=46597 WHERE `entry`=352181; -- Spriggan-Sized Wand
UPDATE `gameobject_template` SET `castBarCaption`='Collecting', `VerifiedBuild`=46597 WHERE `entry`=353874; -- Animacone

DELETE FROM `gameobject_questitem` WHERE (`Idx`=0 AND `GameObjectEntry` IN (336906,352182,352181));
INSERT INTO `gameobject_questitem` (`GameObjectEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(336906, 0, 172948, 46597), -- Animacone
(352182, 0, 178908, 46597), -- Spriggan-Sized Polearm
(352181, 0, 178907, 46597); -- Spriggan-Sized Wand

UPDATE `gameobject_questitem` SET `VerifiedBuild`=46597 WHERE (`GameObjectEntry`=338476 AND `Idx`=0) OR (`GameObjectEntry`=354646 AND `Idx` IN (1,0)) OR (`GameObjectEntry`=353874 AND `Idx`=0) OR (`GameObjectEntry`=354647 AND `Idx` IN (1,0)) OR (`GameObjectEntry`=355807 AND `Idx`=0) OR (`GameObjectEntry`=356878 AND `Idx` IN (14,13,12,11,10,9,8,7,6,5,4,3,2,1,0)) OR (`GameObjectEntry`=352058 AND `Idx`=0);


UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14243 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `value`=3 WHERE `id`=59850; -- 59850

-- parte  2 isla del exilio

-- quest [The Best Way to Use Sheep] id 59354
-- npc 156886 SmartAI
-- falta  realizar  el  segundo objetivo   pero ya  completa al 85%

UPDATE `creature_template` SET `AIname`='SmartAI'   WHERE `entry` in (156886);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (156886);
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('156886','0','0','0','62','0','100','0','25321','1','0','0','0','','33','156886','0','0','0','0','0','7','0','0','0','0','0','0','0','0','Smart Script');

DELETE FROM `quest_objectives` WHERE `id` IN (396405);

-- cadena  quest 55879 fix
DELETE FROM `creature_questender` WHERE `id` IN (156799);

-- fix  quest [El rescate de Meredy Huntswell] id 55763

DELETE FROM `creature` WHERE `guid` IN (61000000001349672);
insert into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values
('61000000001349672','153964','2175','0','0','0','0','0','0','-1','0','0','500.459','-2358.27','160.129','3.47279','300','0','0','622','0','0','0','0','0','0','0','','0');

-- spam npc 156803 
DELETE FROM `creature` WHERE `guid` IN (61000000001349673);
insert into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values
('61000000001349673','156803','2175','0','0','0','0','0','0','-1','0','0','191.734','-2306.59','80.628','3.25525','300','0','0','124','0','0','0','0','0','0','0','','0');

-- FIX  QUEST [Quien mora en el foso] ID 55639  80 %
-- falta  añadir  el  tercer objetivo pero ya  completa 
-- ANANDIENTO NPC PARA  QUEST [Quien mora en el foso] ID 55639
REPLACE  into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('4000000000022','339568','2175','10424','10527','0','0','12940','0','-1','65.342','-2276.59','-0.662279','0.820588','-0.151949','0.12648','0.40564','0.892396','120','255','0','0','','36839');
REPLACE  into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('4000000000021','339568','2175','10424','10527','0','0','12940','0','-1','80.4809','-2279.52','60.4192','0.0210855','-0.090744','0.175645','0.0263472','0.979908','120','255','0','0','','36839');
REPLACE  into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('4000000000020','339568','2175','10424','10527','0','0','12940','0','-1','36.0295','-2199.45','17.0092','2.1421','-0.197591','0.0066061','0.867941','0.455624','120','255','0','0','','36839');
REPLACE  into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('4000000000019','339568','2175','10424','10527','0','0','12940','0','-1','111.057','-2217.92','32.9515','2.87513','-0.186835','-0.064641','0.973573','0.114326','120','255','0','0','','36839');
REPLACE  into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('4000000000018','339568','2175','10424','10527','0','0','12940','0','-1','123.569','-2238.92','-5.86077','1.35752','-0.0759168','-0.0817127','0.622531','0.774606','120','255','0','0','','36839');
REPLACE  into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('4000000032644','339568','2175','0','0','0','0','0','0','-1','86.9843','-2282.71','57.9304','2.5851','-0','-0','-0.961539','-0.274668','300','255','1','0','','0');
REPLACE  into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('4000000032645','339568','2175','0','0','0','0','0','0','-1','117.188','-2288.67','48.1331','0.192528','-0','-0','-0.0961156','-0.99537','300','255','1','0','','0');
REPLACE  into `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) values('4000000032646','339568','2175','0','0','0','0','0','0','-1','114.823','-2235.24','38.3926','2.0657','-0','-0','-0.858764','-0.512372','300','255','1','0','','0');

UPDATE `creature_template` SET `unit_flags`='0'   WHERE `entry` in (156900);

DELETE FROM `quest_objectives` WHERE `id` IN (393740);


-- span npc
DELETE FROM `creature` WHERE `guid` IN (61000000001349675);
insert into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values
('61000000001349675','156941','2175','0','0','0','0','0','0','-1','0','1','307.892','-2170.6','104.365','1.04263','300','0','0','373','0','0','0','0','0','0','0','','0');

REPLACE INTO `quest_poi` (`QuestID`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Flags`) VALUES ('25574', '266783', '40856', '1', '198', '7');
REPLACE INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `MapID`, `UiMapID`, `Flags`) VALUES ('25574', '1', '1', '-1', '1', '198', '1');
REPLACE INTO `quest_poi_points` (`QuestID`, `X`, `Y`, `VerifiedBuild`) VALUES ('25574', '5746', '-3341', '45114');
REPLACE INTO `quest_poi_points` (`QuestID`, `Idx1`, `X`, `Y`, `VerifiedBuild`) VALUES ('25574', '1', '5559', '-3649', '45114');

UPDATE `creature_template` SET `faction`='35', `AIName`='SmartAI' WHERE  `entry`=40856;
REPLACE INTO `creature_template_addon` (`entry`, `bytes1`, `bytes2`) VALUES ('40856', '50331648', '257');
REPLACE INTO `creature_template_spell` (`CreatureID`, `Spell`, `VerifiedBuild`) VALUES ('40856', '76205', '39653');

REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (40856, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 0, '', 53, 1, 40856, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Just Summoned -Wp Start');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (40856, 0, 1, 0, 40, 0, 100, 0, 1, 0, 0, 0, 0, '', 11, 76205, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'WP reached fire');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (40856, 0, 2, 3, 40, 0, 100, 0, 2, 0, 0, 0, 0, '', 11, 76205, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'WP 2 reached fire');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (40856, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 75, 88999, 0, 0, 0, 0, 0, 10, 280332495, 85040, 0, 0, 0, 0, 0, 0, 'link Camp flames on invis Bunny');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (40856, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 75, 88999, 0, 0, 0, 0, 0, 10, 280332496, 85040, 0, 0, 0, 0, 0, 0, 'link Camp flames on invis Bunny');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (40856, 0, 5, 6, 40, 0, 100, 0, 3, 0, 0, 0, 0, '', 11, 76205, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'WP 3 reached fire');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (40856, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 75, 88999, 0, 0, 0, 0, 0, 10, 280332497, 85040, 0, 0, 0, 0, 0, 0, 'äink Camp flames on invis Bunny');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (40856, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 75, 88999, 0, 0, 0, 0, 0, 10, 280332498, 85040, 0, 0, 0, 0, 0, 0, 'Link Camp flames on invis Bunny');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (40856, 0, 8, 9, 40, 0, 100, 0, 5, 0, 0, 0, 0, '', 41, 4000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'WP 5 reached despawn');
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (40856, 0, 9, 10, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 33, 40856, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 'Link quest credit');

REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (40856, 2, 5747, -3306, 1612, NULL, 0, NULL);
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (40856, 1, 5746, -3327, 1612, NULL, 0, NULL);
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (40856, 3, 5757, -3291, 1612, NULL, 0, NULL);
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (40856, 4, 5771, -3293, 1613, NULL, 0, NULL);
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (40856, 5, 5770, -3307, 1613, NULL, 0, NULL);
REPLACE INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `point_comment`) VALUES (40856, 6, 5622, -3307, 1613, NULL, 0, NULL);

UPDATE `creature_template` SET `unit_flags`='33555200', `unit_flags2`='2048', `AIName`='SmartAI' WHERE  `entry`=85040;
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `MountCreatureID`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES (85040, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, NULL);

REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (280332495, 85040, 1, 616, 616, '0', 0, '', 0, -1, 0, 0, 5755.81, -3290.84, 1604.6, 2.23713, 10, 0, 0, 4698, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (280332496, 85040, 1, 616, 616, '0', 0, '', 0, -1, 0, 0, 5765.41, -3286.61, 1604.6, 1.62452, 10, 0, 0, 4698, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (280332497, 85040, 1, 616, 616, '0', 0, '', 0, -1, 0, 0, 5778.76, -3291.41, 1604.6, 0.8077, 10, 0, 0, 4698, 0, 0, 0, 0, 0, 0, 0, '', 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES (280332498, 85040, 1, 616, 616, '0', 0, '', 0, -1, 0, 0, 5773.7, -3303.57, 1604.6, 5.5828, 10, 0, 0, 4698, 0, 0, 0, 0, 0, 0, 0, '', 0);

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `isActive`, `ScriptName`, `VerifiedBuild`) VALUES (4000000032643, 203087, 1, 0, 0, '0', 0, '0', 0, -1, 5762.14, -3299.48, 1604.6, 3.29249, -0, -0, -0.997155, 0.0753789, 300, 255, 1, 0, '', 0);
DELETE FROM `creature` WHERE  `guid`=372273;

