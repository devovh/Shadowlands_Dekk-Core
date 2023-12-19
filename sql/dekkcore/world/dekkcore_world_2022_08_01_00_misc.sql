
DELETE FROM `creature_equip_template` WHERE (`ID`=1 AND `CreatureID` IN (180021,180073,187441,187696));
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(180021, 1, 40276, 0, 0, 40276, 0, 0, 0, 0, 0, 44730), -- Highlord Darion Mograine
(180073, 1, 168268, 0, 0, 0, 0, 0, 0, 0, 0, 44730), -- Thrall
(187441, 1, 153575, 0, 0, 0, 0, 0, 0, 0, 0, 44730), -- Lady Jaina Proudmoore
(187696, 1, 23998, 0, 0, 0, 0, 0, 0, 0, 0, 44730); -- Archmage Khadgar

UPDATE `creature_equip_template` SET `VerifiedBuild`=44730 WHERE (`ID`=1 AND `CreatureID` IN (177201,177203,177204,179235,179238,177803,177804,177805,179347,178294,177408,177292,177450,178807,178808,176669,177378,179216,180408,177228,176165,176169,178997,176332,156671,170557,187734,171787,171821,175082,164079,164803,171796,164596,176067,175714,170640,173330,164685,171822,156698,176267,185405,185406,164686,154631,174794,161063,168245,175276,176100,158773,175495,153456,160037,168517,160212,160391,160390,154635,168427,168485,171816,177476,187651,181183,184460,184934,180920,177486,180918,179539,185151,178232,185058,185056,178134,185051,185052,185054,185053,185044,185046,185045,181951,183824,185415,184198,181334,185748,184739,184741,184740,184434,180289,184298,185064,185057,185065,185063,185062,185055,181179,182146)) OR (`ID`=2 AND `CreatureID`=174676);

DELETE FROM `areatrigger_template` WHERE (`IsServerSide`=0 AND `Id` IN (19764,17676));
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `VerifiedBuild`) VALUES
(19764, 0, 0, 0, 1, 1, 0, 0, 0, 0, 44730),
(17676, 0, 4, 0, 8, 8, 10, 10, 0.300000011920928955, 0.300000011920928955, 44730);

UPDATE `areatrigger_template` SET `VerifiedBuild`=44730 WHERE (`IsServerSide`=0 AND `Id` IN (12929,27637,27854,23951,11420,11203,11393,9482));


UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1624, `VerifiedBuild`=44730 WHERE `Id`=23321; -- SpellId : 355977
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=979, `VerifiedBuild`=44730 WHERE `Id`=23321; -- SpellId : 355977
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1244, `VerifiedBuild`=44730 WHERE `Id`=23321; -- SpellId : 355977
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=869, `VerifiedBuild`=44730 WHERE `Id`=23321; -- SpellId : 355977
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=997, `VerifiedBuild`=44730 WHERE `Id`=23321; -- SpellId : 355977
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1289, `VerifiedBuild`=44730 WHERE `Id`=23321; -- SpellId : 355977
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=5620, `ShapeData0`=1, `ShapeData1`=1, `VerifiedBuild`=44730 WHERE `Id`=15141; -- SpellId : 282248
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=5620, `Shape`=4, `ShapeData0`=8, `ShapeData1`=8, `ShapeData2`=10, `ShapeData3`=10, `ShapeData4`=0.300000011920928955, `ShapeData5`=0.300000011920928955, `VerifiedBuild`=44730 WHERE `Id`=13045; -- SpellId : 267211
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23603;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23603;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23603;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23603;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23603;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23603;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23603;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=12000, `VerifiedBuild`=44730 WHERE `Id`=20004; -- SpellId : 325270
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6917;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6615;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=828, `VerifiedBuild`=44730 WHERE `Id`=6887; -- SpellId : 365478
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=10400, `VerifiedBuild`=44730 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=7999, `VerifiedBuild`=44730 WHERE `Id`=4756; -- SpellId : 191034

DELETE FROM `areatrigger_create_properties_orbit` WHERE `AreaTriggerCreatePropertiesId`=23603;
INSERT INTO `areatrigger_create_properties_orbit` (`AreaTriggerCreatePropertiesId`, `StartDelay`, `CircleRadius`, `BlendFromRadius`, `InitialAngle`, `ZOffset`, `CounterClockwise`, `CanLoop`, `VerifiedBuild`) VALUES
(23603, 0, 10, 0, 0, 0, 1, 0, 44730); -- SpellId : 358584


UPDATE `areatrigger_create_properties_spline_point` SET `X`=7.913578987121582031, `Y`=-1.68182814121246337, `Z`=0.41845703125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx` IN (10,9)); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.922853946685791015, `Y`=-1.4711695909500122, `Z`=0.30322265625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=8); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.933641910552978515, `Y`=-1.2608199119567871, `Z`=0.1884765625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=7); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.94570016860961914, `Y`=-1.05080831050872802, `Z`=0.07373046875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=6); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.958302259445190429, `Y`=-0.84122288227081298, `Z`=-0.033203125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=5); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.969332695007324218, `Y`=-0.63084387779235839, `Z`=0.005859375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=4); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.979635834693908691, `Y`=-0.4205527901649475, `Z`=0.044921875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=3); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.98993915319442749, `Y`=-0.210261732339859, `Z`=-0.01025390625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=2); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0, `Y`=-0, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx` IN (1,0)); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.60935163497924804, `Y`=-3.29030537605285644, `Z`=0.23193359375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx` IN (6,5)); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.70743322372436523, `Y`=-2.46797871589660644, `Z`=0.20263671875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=4); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-1.80488562583923339, `Y`=-1.64527750015258789, `Z`=0.162109375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=3); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.90191823244094848, `Y`=-0.82232671976089477, `Z`=0.1435546875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=2); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.198466777801513671, `Y`=0.058333273977041244, `Z`=0.24365234375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx` IN (8,7)); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.167559146881103515, `Y`=0.048583943396806716, `Z`=0.18359375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=6); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.137195587158203125, `Y`=0.038791190832853317, `Z`=0.28076171875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=5); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.102896690368652343, `Y`=0.029093394055962562, `Z`=0.1748046875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=4); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.068597793579101562, `Y`=0.019395595416426658, `Z`=0.0810546875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=3); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.034298896789550781, `Y`=0.009697797708213329, `Z`=0.04052734375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=2); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.7805522084236145, `Y`=-4.25988578796386718, `Z`=0.20654296875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx` IN (6,5)); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.58546048402786254, `Y`=-3.19625759124755859, `Z`=0.15283203125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=4); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.38985946774482727, `Y`=-2.13008475303649902, `Z`=0.001953125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=3); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.19440712034702301, `Y`=-1.06371819972991943, `Z`=0.00927734375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=2); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.001045253593474626, `Y`=0.00264833471737802, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx` IN (1,0)); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.596039295196533203, `Y`=1.808486580848693847, `Z`=0.23193359375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx` IN (6,5)); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.163039922714233398, `Y`=1.133113265037536621, `Z`=-0.0947265625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=4); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.109697341918945312, `Y`=0.75595325231552124, `Z`=-0.06494140625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=3); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.054577231407165527, `Y`=0.377948164939880371, `Z`=-0.0068359375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=2); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.00245200982317328, `Y`=-0.00069609924685209, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx` IN (1,0)); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.373451709747314453, `Y`=-0.24937982857227325, `Z`=-0.740234375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx` IN (8,7)); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.326814651489257812, `Y`=-0.20866945385932922, `Z`=-0.56591796875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=6); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.266245365142822265, `Y`=-0.1670040339231491, `Z`=-0.474609375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=5); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.202698707580566406, `Y`=-0.12521153688430786, `Z`=-0.36962890625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=4); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.134002923965454101, `Y`=-0.08351956307888031, `Z`=-0.38916015625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=3); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.065306901931762695, `Y`=-0.04182758927345275, `Z`=-0.28369140625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=23321 AND `Idx`=2); -- SpellId : 355977
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-5.40021562576293945, `Y`=0.064258515834808349, `Z`=-0.71300506591796875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=6887 AND `Idx` IN (8,7)); -- SpellId : 365478
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-4.72676515579223632, `Y`=0.056218978017568588, `Z`=-0.68639373779296875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=6887 AND `Idx`=6); -- SpellId : 365478
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.91778421401977539, `Y`=0.046525053679943084, `Z`=-0.80455780029296875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=6887 AND `Idx`=5); -- SpellId : 365478
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.01874446868896484, `Y`=0.03590761125087738, `Z`=-0.88414764404296875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=6887 AND `Idx`=4); -- SpellId : 365478
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.05972552299499511, `Y`=0.024576161056756973, `Z`=-0.91246795654296875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=6887 AND `Idx`=3); -- SpellId : 365478
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-1.06376028060913085, `Y`=0.012698064558207988, `Z`=-0.94225311279296875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=6887 AND `Idx`=2); -- SpellId : 365478
UPDATE `areatrigger_create_properties_spline_point` SET `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=6887 AND `Idx` IN (1,0));


DELETE FROM `conversation_line_template` WHERE `Id` IN (44276, 44275, 44274, 42354, 45637, 45636, 45316);
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(44276, 0, 0, 0, 44730),
(44275, 0, 1, 0, 44730),
(44274, 0, 0, 0, 44730),
(42354, 0, 0, 0, 44730),
(45637, 0, 0, 0, 44730),
(45636, 0, 0, 0, 44730),
(45316, 0, 0, 0, 44730);

UPDATE `conversation_line_template` SET `VerifiedBuild`=44730 WHERE `Id`=42364;


DELETE FROM `scene_template` WHERE `SceneId`=2779;
INSERT INTO `scene_template` (`SceneId`, `Flags`, `ScriptPackageID`, `Encrypted`) VALUES
(2779, 20, 3290, 0);


DELETE FROM `quest_offer_reward` WHERE `ID` IN (64441 /*A Loose Thread*/, 65066 /*Flora Aroma*/, 65064 /*Look Who I Found!*/, 65727 /*The Burrowed Bufonid*/, 65448 /*A Return to Grace*/, 65353 /*An Automa-free Diet*/, 65350 /*Restore the Flow*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(64441, 0, 0, 0, 0, 0, 0, 0, 0, '<It appears you and Mal\'ganis are not done with one another. When you finally confront the Jailer, you are certain the dreadlord will be there as well.>', 44730), -- A Loose Thread
(65066, 669, 0, 0, 0, 0, 0, 0, 0, 'These results seem... inconclusive.', 44730), -- Flora Aroma
(65064, 669, 0, 0, 0, 0, 0, 0, 0, 'Perhaps we should do some experiments with other subjects before trying things out on E\'rnee.', 44730), -- Look Who I Found!
(65727, 1, 0, 0, 0, 0, 0, 0, 0, 'Thank you, $p. Now, let us see if this will entice that bufonid to emerge.', 44730), -- The Burrowed Bufonid
(65448, 0, 0, 0, 0, 0, 0, 0, 0, 'As I thought--your arrival was by the design of the First Ones. I look forward to the legacy you forge in this land of our creators.', 44730), -- A Return to Grace
(65353, 0, 0, 0, 0, 0, 0, 0, 0, 'Stranger, I... I apologize. My trust in you was lacking. In turn, my faith wavered as well. Forgive me, and take with you my thanks--the First Ones truly guide your hand.', 44730), -- An Automa-free Diet
(65350, 0, 0, 0, 0, 0, 0, 0, 0, '<It seems as though your efforts were successful--the waters are once again flowing through the temple. The wellspring should be restored.>', 44730); -- Restore the Flow

UPDATE `quest_offer_reward` SET `VerifiedBuild`=44730 WHERE `ID` IN (63756, 63755);
UPDATE `quest_offer_reward` SET `RewardText`='<This automa has been ravaged by devourers. It clutches a curious object in its hand.>', `VerifiedBuild`=44730 WHERE `ID`=65349; -- Lost Grace


UPDATE `quest_poi` SET `VerifiedBuild`=44730 WHERE (`QuestID`=63755 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=63755 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65350 AND `BlobIndex`=0 AND `Idx1`=8) OR (`QuestID`=65350 AND `BlobIndex`=0 AND `Idx1`=7) OR (`QuestID`=65350 AND `BlobIndex`=0 AND `Idx1`=6) OR (`QuestID`=65350 AND `BlobIndex`=1 AND `Idx1`=5) OR (`QuestID`=65350 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=65350 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=65350 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=65350 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65350 AND `BlobIndex`=0 AND `Idx1`=0);

UPDATE `quest_poi_points` SET `VerifiedBuild`=44730 WHERE (`QuestID`=63755 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=63755 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=65350 AND `Idx1`=8 AND `Idx2`=0) OR (`QuestID`=65350 AND `Idx1`=7 AND `Idx2`=0) OR (`QuestID`=65350 AND `Idx1`=6 AND `Idx2`=0) OR (`QuestID`=65350 AND `Idx1`=5 AND `Idx2`=0) OR (`QuestID`=65350 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=65350 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=65350 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=65350 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=65350 AND `Idx1`=0 AND `Idx2`=0);


UPDATE `quest_greeting` SET `VerifiedBuild`=44730 WHERE (`ID`=177924 AND `Type`=0);
UPDATE `quest_greeting` SET `Greeting`='This desecration cannot continue! Please, $n, return Provis Esper to its rightful state.', `VerifiedBuild`=44730 WHERE (`ID`=184537 AND `Type`=0); -- 184537

DELETE FROM `quest_details` WHERE `ID` IN (64194 /*War Prototype*/, 64043 /*We Need a Healer - You!*/, 64441 /*A Loose Thread*/, 65067 /*Broker Beaker*/, 65066 /*Flora Aroma*/, 65735 /*WANTED: Custos*/, 65448 /*A Return to Grace*/);
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(64194, 0, 0, 0, 0, 0, 0, 0, 0, 44730), -- War Prototype
(64043, 0, 0, 0, 0, 0, 0, 0, 0, 44730), -- We Need a Healer - You!
(64441, 0, 0, 0, 0, 0, 0, 0, 0, 44730), -- A Loose Thread
(65067, 669, 0, 0, 0, 0, 0, 0, 0, 44730), -- Broker Beaker
(65066, 669, 0, 0, 0, 0, 0, 0, 0, 44730), -- Flora Aroma
(65735, 0, 0, 0, 0, 0, 0, 0, 0, 44730), -- WANTED: Custos
(65448, 0, 0, 0, 0, 0, 0, 0, 0, 44730); -- A Return to Grace

UPDATE `quest_details` SET `VerifiedBuild`=44730 WHERE `ID` IN (63757, 63756, 63758, 63934, 63784, 63755, 65353, 65350);


DELETE FROM `quest_request_items` WHERE `ID` IN (65727 /*The Burrowed Bufonid*/, 65350 /*Restore the Flow*/);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(65727, 6, 0, 0, 0, 'Have you found that honey?', 0), -- The Burrowed Bufonid
(65350, 0, 0, 0, 0, '<The console thrums with power.>', 0); -- Restore the Flow


DELETE FROM `creature_queststarter` WHERE (`id`=177610 AND `quest` IN (63756,63758)) OR (`id`=179216 AND `quest` IN (64194,64043)) OR (`id`=178802 AND `quest`=63934) OR (`id`=179221 AND `quest`=63784) OR (`id`=182346 AND `quest` IN (65067,65066));
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(177610, 63756, 44730), -- Rescued from Torment offered Caretaker Kah-Than
(177610, 63758, 44730), -- The Last Place You Look offered Caretaker Kah-Than
(179216, 64194, 44730), -- War Prototype offered Mikanikos
(179216, 64043, 44730), -- We Need a Healer - You! offered Mikanikos
(178802, 63934, 44730), -- Assail Mail offered Messenger Mnemis
(179221, 63784, 44730), -- Gold's No Object offered Rendle
(182346, 65067, 44730), -- Broker Beaker offered Tamra
(182346, 65066, 44730); -- Flora Aroma offered Tamra

UPDATE `creature_queststarter` SET `VerifiedBuild`=44730 WHERE (`id`=177155 AND `quest`=63755) OR (`id`=184537 AND `quest` IN (65353,65350));

DELETE FROM `creature_questender` WHERE (`id`=177924 AND `quest`=63756) OR (`id`=177610 AND `quest`=63755) OR (`id`=182346 AND `quest`=65066) OR (`id`=180950 AND `quest`=65727) OR (`id`=182146 AND `quest`=65448) OR (`id`=182458 AND `quest`=65353);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(177924, 63756, 44730), -- Rescued from Torment ended by Concerned Attendant
(177610, 63755, 44730), -- A Matter of Urgency ended by Caretaker Kah-Than
(182346, 65066, 44730), -- Flora Aroma ended by Tamra
(180950, 65727, 44730), -- The Burrowed Bufonid ended by Avna
(182146, 65448, 44730), -- A Return to Grace ended by Olem
(182458, 65353, 44730); -- An Automa-free Diet ended by Nadir

UPDATE `creature_questender` SET `VerifiedBuild`=44730 WHERE (`id`=182346 AND `quest`=65064) OR (`id`=184421 AND `quest`=65349);

DELETE FROM `gameobject_queststarter` WHERE (`id`=369432 AND `quest`=64441) OR (`id`=375972 AND `quest`=65735) OR (`id`=375283 AND `quest`=65448);
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(369432, 64441, 44730), -- A Loose Thread offered by Misplaced Venthyr Tome
(375972, 65735, 44730), -- WANTED: Custos offered by Wanted: Custos
(375283, 65448, 44730); -- A Return to Grace offered by Percolation Array


DELETE FROM `gameobject_questender` WHERE (`id`=369432 AND `quest`=64441) OR (`id`=375283 AND `quest`=65350);
INSERT INTO `gameobject_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(369432, 64441, 44730), -- A Loose Thread ended by Misplaced Venthyr Tome
(375283, 65350, 44730); -- Restore the Flow ended by Percolation Array


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (179236,179237,179235,179238,180021,180073,180080,180074,184488,185501,185037,184199));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(179236, 0, 0, 0, 2043, 44730),
(179237, 0, 0, 0, 2043, 44730),
(179235, 0, 0, 0, 2043, 44730),
(179238, 0, 0, 0, 2043, 44730),
(180021, 0, 0, 0, 2043, 44730),
(180073, 0, 0, 0, 2043, 44730),
(180080, 0, 0, 0, 2043, 44730),
(180074, 0, 3, 3, 2043, 44730),
(184488, 0, 0, 0, 2057, 44730),
(185501, 0, 0, 0, 181, 44730),
(185037, 0, 0, 0, 2057, 44730),
(184199, 0, 0, 0, 2057, 44730);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=44730 WHERE (`DifficultyID`=0 AND `Entry` IN (179289,179307,179968,180065,178660,177803,179812,177804,177295,177356,177395,179375,177805,177390,178152,178546,178562,178294,177204,177577,177187,179889,176665,177189,177299,179248,177319,179347,178528,179368,179369,179344,179373,177201,177203,177610,177185,179358,179229,179956,180011,177408,177409,179705,180548,177291,178807,178808,178806,176669,177378,177179,177293,177292,177951,178802,177180,177152,177158,177157,177156,179930,179693,180678,180416,180413,59394,179223,179221,179216,178120,178119,172631,179574,179214,177927,177176,179321,180347,176673,177155,177525,180350,177450,179029,179929,180358,180410,180408,177228,178845,178844,180256,175714,176435,170253,169263,170326,178835,180978,185280,183282,182424,183905,182423,182422,185446,182418,184524,185487,182419,182421,182425,182219,184523,182215,182213,185393,182217,184521,184562,182347,182346,183049,183516,185294,32639,32638,182286,178803,183606,183052,183602,183051,178096,179939,179005,179539,182272,182271,185544,182269,185151,185104,185149,185150,182115,184941,181951,185541,185577,184939,181334,184270,185415,184606,184185,182759,184198,183824,184588,184421,184537,185042,185041,185688,184976,185307,184188,185043,185748,184739,184741,184740,184434,184432,180289,184298,184898,181556,182691,179965,184172,178229));


UPDATE `creature_model_info` SET `CombatReach`=10, `VerifiedBuild`=44730 WHERE `DisplayID`=98535;
UPDATE `creature_model_info` SET `BoundingRadius`=0.839329779148101806, `CombatReach`=1.5, `VerifiedBuild`=44730 WHERE `DisplayID`=96489;
UPDATE `creature_model_info` SET `VerifiedBuild`=44730 WHERE `DisplayID` IN (101506, 93213, 101241, 101242, 99754, 94101, 101492, 101904, 93502, 100724, 101279, 101185, 99787, 95335, 101334, 101184, 92726, 101042, 98486, 100248, 100571, 100574, 101298, 100573, 96323, 100725, 101294, 101502, 64062, 94867, 94718, 94122, 98197, 101766, 99773, 95044, 96505, 94457, 101767, 100363, 101768, 101497, 100572, 99771, 96257, 96584, 92397, 101765, 101332, 96102, 101844, 100735, 28039, 101182, 101601, 100555, 96005, 99065, 101186, 94501, 96007, 101158, 101157, 94282, 40006, 98967, 104736, 104730, 104733, 46710, 101055, 104827, 105001, 105318, 105000, 98865, 100259, 105200, 105201, 100258, 105289, 104910, 28282, 28111, 100257, 100451, 98863, 98857, 105387, 101471, 101902, 104015, 97767, 100503, 105452, 103379, 101998, 105226, 105298, 96376, 101994, 101848, 11686, 98852, 105008, 103108);
UPDATE `creature_model_info` SET `BoundingRadius`=0.455948531627655029, `CombatReach`=0.375, `VerifiedBuild`=44730 WHERE `DisplayID` IN (97087, 97084);
UPDATE `creature_model_info` SET `BoundingRadius`=0.699441432952880859, `CombatReach`=1.25, `VerifiedBuild`=44730 WHERE `DisplayID`=96253;
UPDATE `creature_model_info` SET `BoundingRadius`=1.181651949882507324, `CombatReach`=1, `VerifiedBuild`=44730 WHERE `DisplayID`=96142;
UPDATE `creature_model_info` SET `BoundingRadius`=1.092161417007446289, `CombatReach`=2, `VerifiedBuild`=44730 WHERE `DisplayID`=100419;
UPDATE `creature_model_info` SET `BoundingRadius`=1.256006956100463867, `CombatReach`=1 WHERE `DisplayID`=94391;
UPDATE `creature_model_info` SET `BoundingRadius`=1.205108404159545898, `CombatReach`=1.5, `VerifiedBuild`=44730 WHERE `DisplayID`=100811;
UPDATE `creature_model_info` SET `BoundingRadius`=0.769385576248168945, `CombatReach`=1.375, `VerifiedBuild`=44730 WHERE `DisplayID`=96251;
UPDATE `creature_model_info` SET `BoundingRadius`=0.798506081104278564, `CombatReach`=1.20000004768371582, `VerifiedBuild`=44730 WHERE `DisplayID`=100684;
UPDATE `creature_model_info` SET `BoundingRadius`=0.389400035142898559, `CombatReach`=2.47500014305114746, `VerifiedBuild`=44730 WHERE `DisplayID`=96443;
UPDATE `creature_model_info` SET `BoundingRadius`=0.4319019615650177, `CombatReach`=1.299999952316284179, `VerifiedBuild`=44730 WHERE `DisplayID`=100015;
UPDATE `creature_model_info` SET `BoundingRadius`=1.024705886840820312, `CombatReach`=1.65000009536743164, `VerifiedBuild`=44730 WHERE `DisplayID`=94757;
UPDATE `creature_model_info` SET `BoundingRadius`=1.140998721122741699, `CombatReach`=1.440000057220458984, `VerifiedBuild`=44730 WHERE `DisplayID`=98547;
UPDATE `creature_model_info` SET `BoundingRadius`=0.939397037029266357, `CombatReach`=0.800000011920928955, `VerifiedBuild`=44730 WHERE `DisplayID`=98534;
UPDATE `creature_model_info` SET `BoundingRadius`=3.125, `VerifiedBuild`=44730 WHERE `DisplayID`=98158;
UPDATE `creature_model_info` SET `BoundingRadius`=0.435065627098083496, `VerifiedBuild`=44730 WHERE `DisplayID`=80015;
UPDATE `creature_model_info` SET `BoundingRadius`=1.181651949882507324, `CombatReach`=1 WHERE `DisplayID`=95013;
UPDATE `creature_model_info` SET `BoundingRadius`=0.190972283482551574, `CombatReach`=0.400000005960464477 WHERE `DisplayID`=94167;
UPDATE `creature_model_info` SET `BoundingRadius`=0.614252746105194091, `CombatReach`=2.5, `VerifiedBuild`=44730 WHERE `DisplayID`=105020;
UPDATE `creature_model_info` SET `BoundingRadius`=0.534366846084594726, `CombatReach`=0.300000011920928955, `VerifiedBuild`=44730 WHERE `DisplayID`=104734;
UPDATE `creature_model_info` SET `BoundingRadius`=2.970260143280029296, `CombatReach`=5, `VerifiedBuild`=44730 WHERE `DisplayID`=103119;
UPDATE `creature_model_info` SET `BoundingRadius`=0.594052016735076904, `CombatReach`=1, `VerifiedBuild`=44730 WHERE `DisplayID`=98847;
UPDATE `creature_model_info` SET `BoundingRadius`=0.37157905101776123, `CombatReach`=0.300000011920928955 WHERE `DisplayID` IN (100455, 100454);
UPDATE `creature_model_info` SET `BoundingRadius`=0.297263234853744506, `CombatReach`=0.240000009536743164 WHERE `DisplayID`=100453;
UPDATE `creature_model_info` SET `BoundingRadius`=0.573607325553894042, `CombatReach`=2.729999780654907226 WHERE `DisplayID`=95194;
UPDATE `creature_model_info` SET `BoundingRadius`=1.06494307518005371, `CombatReach`=2 WHERE `DisplayID`=105245;
UPDATE `creature_model_info` SET `BoundingRadius`=1.123101115226745605, `CombatReach`=1.469999909400939941 WHERE `DisplayID`=98788;
UPDATE `creature_model_info` SET `BoundingRadius`=1.125030994415283203 WHERE `DisplayID`=102146;
UPDATE `creature_model_info` SET `BoundingRadius`=0.612324118614196777 WHERE `DisplayID`=98818;
UPDATE `creature_model_info` SET `BoundingRadius`=0.962658166885375976, `CombatReach`=1.259999990463256835 WHERE `DisplayID`=98791;
UPDATE `creature_model_info` SET `BoundingRadius`=0.500508487224578857 WHERE `DisplayID`=98826;
UPDATE `creature_model_info` SET `BoundingRadius`=0.735183775424957275, `CombatReach`=0.900000035762786865 WHERE `DisplayID`=101991;
UPDATE `creature_model_info` SET `BoundingRadius`=4.892210960388183593, `CombatReach`=6 WHERE `DisplayID`=101903;
UPDATE `creature_model_info` SET `BoundingRadius`=1.277931690216064453, `CombatReach`=2.40000009536743164 WHERE `DisplayID`=102043;
UPDATE `creature_model_info` SET `BoundingRadius`=6.280329227447509765 WHERE `DisplayID`=101783;


DELETE FROM `gossip_menu` WHERE (`MenuID`=27155 AND `TextID`=43302) OR (`MenuID`=27415 AND `TextID`=43696) OR (`MenuID`=27390 AND `TextID`=43680);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(27155, 43302, 44730), -- 369432
(27415, 43696, 44730), -- 182346 (Tamra)
(27390, 43680, 44730); -- 182146 (Olem)


UPDATE `creature_template` SET `unit_flags`=67141696, `dynamicflags`=64 WHERE `entry`=178660; -- Shadecoat Ridgeback
UPDATE `creature_template` SET `unit_flags`=32832 WHERE `entry`=177804; -- Tezzerak
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3192, `BaseAttackTime`=2000, `unit_flags`=33280 WHERE `entry`=179236; -- Fae Enchanter
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3179, `BaseAttackTime`=2000, `unit_flags`=33280, `HoverHeight`=3.60000014305114746 WHERE `entry`=179237; -- Stoneborn Enforcer
UPDATE `creature_template` SET `npcflag`=16777216 WHERE `entry`=178152; -- Tortured Attendant
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3166, `BaseAttackTime`=2000, `unit_flags`=33280, `unit_flags3`=524800 WHERE `entry`=179235; -- Kyrian Guardian
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3171, `BaseAttackTime`=2000, `unit_flags`=33280 WHERE `entry`=179238; -- Prime Bladeguard
UPDATE `creature_template` SET `BaseAttackTime`=2000 WHERE `entry`=177187; -- Empowered Ravager
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=176665; -- Korthian Gromit
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=178528; -- Fierce Gromit
UPDATE `creature_template` SET `npcflag`=16777216, `unit_flags`=33555200, `unit_flags3`=1 WHERE `entry`=179344; -- Drab Gromit
UPDATE `creature_template` SET `gossip_menu_id`=26866 WHERE `entry`=177610; -- Caretaker Kah-Than
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=180021; -- Highlord Darion Mograine
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=2714, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=33572864, `unit_flags3`=1048576 WHERE `entry`=180073; -- Thrall

UPDATE `creature_template` SET `gossip_menu_id`=27065 WHERE `entry`=179216; -- Mikanikos
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3166, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=180080; -- Uther
UPDATE `creature_template` SET `minlevel`=63, `maxlevel`=63, `faction`=2713, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33088, `unit_flags2`=33572864, `unit_flags3`=1048576 WHERE `entry`=180074; -- Lady Jaina Proudmoore

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=1735, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=186199; -- Forsaken Dreadmage


UPDATE `creature_template` SET `unit_flags`=33587968 WHERE `entry`=174676; -- Thenios
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=160629; -- Baedos

UPDATE `creature_template` SET `faction`=14 WHERE `entry`=170333; -- Goldenpaw Prowler

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `dynamicflags`=128 WHERE `entry`=184562; -- Scaphio
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=184488; -- E'rnee
UPDATE `creature_template` SET `gossip_menu_id`=27415, `npcflag`=3 WHERE `entry`=182346; -- Tamra
UPDATE `creature_template` SET `HoverHeight`=2 WHERE `entry`=182096; -- Enhanced Avian
UPDATE `creature_template` SET `unit_flags`=0, `unit_flags3`=0 WHERE `entry`=181484; -- Mawtouched Animate

UPDATE `creature_template` SET `faction`=1965 WHERE `entry`=182281; -- Insatiable Scavenger

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=2000, `unit_flags`=33554432, `unit_flags2`=100665344 WHERE `entry`=185501; -- Generic Bunny

UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=185541; -- Enlightened Pilgrim
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=14, `BaseAttackTime`=2000, `unit_flags`=32832, `unit_flags2`=2048 WHERE `entry`=185037; -- Xelleth the Souldrinker
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=14, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=184199; -- Insatiable Mite
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=182214; -- Mawsworn Annihilator
UPDATE `creature_template` SET `dynamicflags`=4 WHERE `entry`=184185; -- Reality Breacher
UPDATE `creature_template` SET `unit_flags`=537166592, `unit_flags2`=2049, `unit_flags3`=8193 WHERE `entry`=184198; -- Soul-Parched Gorger
UPDATE `creature_template` SET `dynamicflags`=128 WHERE `entry`=184432; -- Jiro Prime
UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=181562; -- Depleted Forge

UPDATE `creature_template` SET `unit_flags`=32784 WHERE `entry`=181834; -- Defective Protector

UPDATE `creature_template` SET `gossip_menu_id`=27405 WHERE `entry`=182458; -- Nadir
UPDATE `creature_template` SET `gossip_menu_id`=27390 WHERE `entry`=182146; -- Olem
UPDATE `creature_template` SET `minlevel`=61, `maxlevel`=61, `faction`=1990, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=178229; -- Feasting
UPDATE `creature_template` SET `unit_flags`=67141632, `dynamicflags`=64 WHERE `entry`=178159; -- Vespoid Drone

UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=178158; -- Vespoid Worker


UPDATE `quest_template` SET `VerifiedBuild`=44730 WHERE `ID` IN (63757, 63756, 63758, 64441, 63733, 63755, 64274, 64376, 60653, 65067, 65066, 65735, 65448, 65353, 65350, 63934, 53994, 57443, 51665, 59804, 51043, 61477, 61885, 54588, 50853, 51617, 54355, 51507, 51996, 52316, 61613, 60646, 54361, 51115, 59581, 51558, 48982, 52306, 59789, 58993, 55343, 51009, 51444, 62451, 44765, 61784, 52869, 51541, 54551, 51252, 61189, 63784, 51316, 52430, 52007, 61148, 52344, 63822, 60476, 45840, 58601, 51622, 51114, 51895, 59718, 51646, 50459, 61353, 52878, 61868, 49444, 61947, 52923, 50559, 55303, 52874, 54549, 50859, 51637, 50695, 51719, 51777, 51627, 51081, 52117, 63062, 63792, 54614, 61689, 50524, 50503, 52858, 65415, 50603, 50562, 65115, 64785, 64977, 60415, 60425);
UPDATE `quest_template` SET `RewardFactionID2`=0, `VerifiedBuild`=44730 WHERE `ID`=52348; -- Work Order: Mon'Dazi
UPDATE `quest_template` SET `FlagsEx`=0, `VerifiedBuild`=44730 WHERE `ID`=51296; -- Tol Dagor: The Overseer's Pride


UPDATE `quest_objectives` SET `VerifiedBuild`=44730 WHERE `ID` IN (419942, 419941, 419940, 419836, 419943, 419987, 420208, 420052, 420051, 420050, 419839, 420934, 419669, 420842, 420841, 420920, 404355, 404357, 404354, 404353, 422007, 422200, 422199, 422006, 423251, 423072, 423005, 422839, 422817, 422814, 423188, 423189, 423071, 423182, 423080, 422936, 420210, 385457, 385456, 385455, 385454, 385453, 385452, 385451, 392429, 392436, 336656, 397001, 396998, 334581, 405979, 405978, 405977, 405976, 405973, 408487, 405970, 406808, 387709, 334102, 336510, 387006, 336038, 337707, 337706, 337705, 338752, 406396, 406626, 409228, 409227, 409224, 387018, 334779, 409240, 396527, 396572, 396521, 396520, 396535, 396519, 336253, 338722, 396978, 396977, 396959, 396960, 396976, 395297, 396702, 389033, 389032, 334543, 335874, 407764, 407763, 407762, 407761, 407760, 407759, 407758, 407757, 407756, 407755, 407754, 407753, 286940, 406710, 340130, 336155, 387595, 335283, 335256, 405385, 405386, 419751, 335455, 335454, 335391, 338950, 337758, 337757, 337756, 405417, 405286, 405291, 405285, 338819, 420028, 420027, 420026, 420025, 420024, 420032, 420022, 420021, 419998, 419913, 419997, 398340, 289065, 394467, 394466, 394465, 394464, 394463, 394462, 394453, 336539, 334777, 337476, 396826, 396827, 336598, 312626, 409083, 409075, 408963, 408962, 405683, 405682, 405681, 405680, 340181, 406766, 294614, 406867, 340265, 333098, 338823, 389004, 389003, 385409, 385408, 340161, 340160, 340159, 340158, 340157, 340156, 340155, 387591, 334123, 341814, 336568, 333559, 333558, 341681, 336933, 337145, 341818, 336548, 334690, 338010, 338009, 409275, 409150, 419765, 387766, 335343, 335342, 406441, 406440, 333207, 332961, 332960, 332959, 332958, 332957, 332956, 332901, 340104, 422895, 336210, 336202, 422138, 422128, 422121, 421461, 421456, 421473, 421869, 421884, 398471, 398605, 398604, 398603, 398602, 398601, 398551, 398550);


UPDATE `quest_visual_effect` SET `VerifiedBuild`=44730 WHERE (`Index`=2 AND `ID` IN (419943,392429,407754,405385,405285,420032,421461)) OR (`Index`=1 AND `ID` IN (419943,419839,422007,423071,392429,407754,405385,405285,420032,336539,341814,338010,409150,421461)) OR (`Index`=0 AND `ID` IN (419943,419987,420208,419839,404357,404354,422007,422200,422199,422006,423005,423071,420210,392429,392436,397001,396998,405979,405978,405977,405976,405973,408487,406808,334102,336510,338752,406626,409228,409227,336253,396702,389032,335874,407764,407763,407762,407754,407753,406710,340130,335283,335256,405385,405386,419751,335391,338950,337757,405417,405286,405291,405285,420032,420021,419913,419997,398340,336539,396826,396827,336598,409083,340181,406766,294614,406867,340265,389004,389003,341814,336568,341681,336933,336548,338010,338009,409150,419765,387766,335343,333207,332961,340104,421461,421456,421869,421884)) OR (`Index`=3 AND `ID` IN (392429,407754,405385,405285,420032)) OR (`Index`=5 AND `ID`=407754) OR (`Index`=4 AND `ID` IN (407754,405285));


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=44730 WHERE (`QuestID`=61613 AND `Idx`=0);


UPDATE `creature_template` SET `VerifiedBuild`=44730 WHERE `entry` IN (183602, 183606, 174670, 170253, 179214, 179216, 179221, 179223, 179229, 179235, 179236, 179237, 179238, 179248, 165830, 165831, 170326, 179289, 179307, 179321, 179344, 179347, 183824, 179358, 179368, 179369, 179373, 179375, 183905, 179539, 179574, 166196, 179693, 184172, 179705, 184185, 184188, 184198, 184199, 179759, 179760, 184270, 179812, 184298, 58959, 58964, 179889, 157524, 63508, 179929, 179930, 179939, 179940, 184421, 184432, 179956, 184434, 179965, 179968, 175519, 180011, 184488, 180021, 184521, 184523, 184524, 184537, 180065, 180073, 180074, 180080, 184562, 184588, 184606, 95072, 171185, 175714, 122033, 180256, 184739, 184740, 184741, 59394, 180289, 180347, 180350, 171396, 180358, 180408, 180410, 180413, 180416, 184898, 184923, 184939, 184941, 184976, 180548, 180554, 180556, 180557, 185037, 185041, 185042, 185043, 185104, 185149, 185150, 185151, 180678, 185280, 185294, 185307, 176435, 185393, 185415, 185446, 185487, 55659, 185501, 185541, 185544, 185577, 176665, 176669, 176673, 185688, 185748, 181334, 100820, 172516, 172560, 181556, 172631, 177152, 177155, 177156, 177157, 177158, 177176, 177179, 177180, 177185, 177187, 177189, 177201, 177203, 177204, 150356, 177228, 177291, 177292, 177293, 177295, 177299, 177319, 177356, 177378, 177390, 177395, 177408, 177409, 177450, 177455, 181951, 177525, 177577, 177610, 182115, 61325, 182213, 182215, 182217, 182219, 182269, 97207, 182271, 182272, 177803, 177804, 177805, 182286, 182346, 182347, 177923, 177924, 177927, 182418, 182419, 182421, 182422, 182423, 182424, 182425, 177951, 178036, 178096, 178119, 178120, 178152, 182691, 169263, 182728, 182759, 178294, 182820, 178528, 178546, 178562, 183049, 183051, 183052, 98035, 174170, 178660, 178802, 178803, 183282, 178806, 178807, 178808, 178844, 178845, 35642, 31216, 98386, 179005, 179029, 183516);
UPDATE `creature_template` SET `VerifiedBuild`=44730 WHERE `entry`=53884; -- Feline Familiar
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=161818; -- Bag of Tricks
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=85773; -- Mystical Spring Bouquet
UPDATE `creature_template` SET `subname`='Aurelid Prime', `VerifiedBuild`=44730 WHERE `entry`=180978; -- Hirukon
UPDATE `creature_template` SET `femaleName`='', `subname`='Lord of Terror', `movementId`=121, `VerifiedBuild`=44730 WHERE `entry`=11326; -- Mini Diablo
UPDATE `creature_template` SET `name`='Sweeping Blast', `VerifiedBuild`=44730 WHERE `entry`=181767; -- Déflagration circulaire
UPDATE `creature_template` SET `HealthModifier`=20, `VerifiedBuild`=44730 WHERE `entry`=178229; -- Feasting
UPDATE `creature_template` SET `name`='Sharpeye Collector', `VerifiedBuild`=44730 WHERE `entry`=178835; -- Collectionneur oeil-perçant


UPDATE `creature_template_model` SET `VerifiedBuild`=44730 WHERE (`Idx`=0 AND `CreatureID` IN (179289,179307,179968,180065,178660,177803,180554,177924,179812,177804,180557,177295,179940,177356,177395,179375,179237,179236,177805,180556,178152,177390,177923,179235,178562,178546,178294,179238,177204,177577,177187,179889,176665,177189,179248,177299,177319,179347,178528,179368,179369,179344,179373,177203,177201,177610,177185,31216,179358,179229,179956,98035,55659,179760,179759,180011,35642,177408,177409,178036,179705,180548,180021,178807,177291,180073,178808,178806,177378,177179,177293,177292,177951,122033,180678,179930,179693,178802,177180,177158,177157,177156,177152,180416,180413,176669,179321,179929,176673,180080,179221,179216,180408,180358,179214,177176,180347,177155,179029,179223,178120,172631,180074,178845,180410,177450,59394,180350,177525,177927,178119,179574,178844,177228,180256,184923,53884,174170,175714,150356,58959,58964,174670,97207,85773,61325,176435,170253,169263,170326,165831,166196,165830,11326,98386,178835,185280,180978,183282,183905,182424,182423,182422,185446,182418,184524,185487,182421,182419,182425,182219,184523,185393,182217,182215,182213,184521,184562,184488,182347,182346,183049,63508,183516,185294,182820,182286,178803,183606,183602,183052,183051,178096,179939,179539,179005,182272,182271,185544,182269,185151,185149,185104,185150,182115,184941,185501,181767,171185,171396,181951,185541,185037,185577,184199,184939,184270,181334,185415,172560,172516,184606,184185,184198,183824,182759,184588,184421,184537,185042,185041,185688,185307,184976,185043,184188,185748,184898,184741,184740,184739,184434,184432,184298,180289,181556,182691,182728,179965,184172,178229,100820,175519,95072)) OR (`Idx`=1 AND `CreatureID` IN (180065,180554,179812,180557,179940,179237,179236,180556,178152,179235,178562,178546,179238,177577,177455,178528,98035,55659,180011,177408,177409,179705,179693,180416,180413,176673,180408,180358,177176,180347,178120,172631,180410,177450,59394,180350,177525,61325,165831,178835,182422,185446,182219,185393,182215,185294,182820,182286,178803,183602,178096,179005,182271,185544,182269,185151,185149,185104,185150,182115,185541,185577,185415,172560,172516,183824,182759,184421,185042,185041,185688,185043,179965,100820)) OR (`Idx`=3 AND `CreatureID` IN (180554,179236,180556,179235,179238,177408,177409,180416,180413,180408,177176,180350,182422,185544,182115,185541,185688)) OR (`Idx`=2 AND `CreatureID` IN (180554,179236,180556,179235,179238,98035,55659,177408,177409,180416,180413,180408,177176,180350,61325,182422,182215,183602,185544,182115,185541,172516,185688,100820)) OR (`Idx`=18 AND `CreatureID`=180413) OR (`Idx`=17 AND `CreatureID`=180413) OR (`Idx`=16 AND `CreatureID`=180413) OR (`Idx`=15 AND `CreatureID`=180413) OR (`Idx`=14 AND `CreatureID`=180413) OR (`Idx`=13 AND `CreatureID`=180413) OR (`Idx`=12 AND `CreatureID`=180413) OR (`Idx`=11 AND `CreatureID`=180413) OR (`Idx`=10 AND `CreatureID`=180413) OR (`Idx`=9 AND `CreatureID`=180413) OR (`Idx`=8 AND `CreatureID`=180413) OR (`Idx`=7 AND `CreatureID`=180413) OR (`Idx`=6 AND `CreatureID`=180413) OR (`Idx`=5 AND `CreatureID` IN (180413,177176)) OR (`Idx`=4 AND `CreatureID` IN (180413,177176,180350,182115));
UPDATE `creature_template_model` SET `DisplayScale`=1.5, `VerifiedBuild`=44730 WHERE (`CreatureID`=177455 AND `Idx`=0); -- Korthian Protector
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=44730 WHERE (`CreatureID`=161818 AND `Idx`=0); -- Bag of Tricks
UPDATE `creature_template_model` SET `DisplayScale`=0.5, `VerifiedBuild`=44730 WHERE (`CreatureID`=157524 AND `Idx`=0); -- Rikki


UPDATE `creature_questitem` SET `VerifiedBuild`=44730 WHERE (`Idx`=0 AND `CreatureEntry` IN (177803,177804,177295,177356,177395,177805,178294,177204,177187,177299,177319,178528,177201,177185,177291,177293,177292,170326,180978,182217,182213,183516,182272,182269,185037,184606,184185,184198,184588,178229)) OR (`Idx`=3 AND `CreatureEntry` IN (177204,177187,177201)) OR (`Idx`=2 AND `CreatureEntry` IN (177204,177187,177201)) OR (`Idx`=1 AND `CreatureEntry` IN (177204,177187,177201,185037,184606,184185,184198,184588,178229));


UPDATE `gameobject_template` SET `VerifiedBuild`=44730 WHERE `entry` IN (369009, 369339, 369327, 369290, 368399, 367991, 369334, 369294, 369257, 369130, 350082, 369332, 368435, 356537, 369335, 369215, 369329, 368400, 368398, 369310, 368876, 368601, 368304, 368923, 369432, 369379, 368924, 368731, 368926, 368296, 368925, 370138, 368236, 368772, 353956, 368216, 350086, 349084, 349278, 369365, 369364, 375411, 373501, 375984, 375527, 35591, 245190, 373506, 375654, 373580, 373502, 375126, 375658, 375392, 375386, 375385, 375384, 375382, 375283, 375914, 375692, 375691, 375108, 375775, 375211, 375058, 373645, 373646, 373644, 373621, 375060);


UPDATE `gameobject_questitem` SET `VerifiedBuild`=44730 WHERE (`Idx`=0 AND `GameObjectEntry` IN (368601,368304,375211));

DELETE FROM `creature_equip_template` WHERE (`ID`=1 AND `CreatureID` IN (180021,180073));
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(180021, 1, 40276, 0, 0, 40276, 0, 0, 0, 0, 0, 44730), -- Highlord Darion Mograine
(180073, 1, 168268, 0, 0, 0, 0, 0, 0, 0, 0, 44730); -- Thrall

UPDATE `creature_equip_template` SET `VerifiedBuild`=44730 WHERE (`ID`=1 AND `CreatureID` IN (179715,175882,170157,74228,3296,51346,23635,35068,145424,47571,72559,46140,46555,58155,46142,46556,3323,45339,23128,3144,45337,49622,5188,4047,3312,89830,3370,188655,88703,14376,44871,44872,5614,49750,3342,188656,88702,88701,5613,5611,5610,6466,6929,5609,5606,44878,44851,44877,44876,14375,168459,3313,14392,5817,62195,71100,148263,149270,148795,6566,133186,148250,148242,50304,150131,148770,47253,175714,177203,179216,177455,177450,177292,177228,180408,177408,177378,178808,176669,178807,180028,179347,178294,180003,180005,180004,179931,177201,178666,177804,177204,177805,177803)) OR (`ID`=3 AND `CreatureID`=74228);


UPDATE `areatrigger_template` SET `Flags`=2 WHERE (`Id`=9228 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `VerifiedBuild`=44730 WHERE (`IsServerSide`=0 AND `Id` IN (10448,5302,5300,3282,27854,27583,11393,9482,11203,12929,23820,10714));
UPDATE `areatrigger_template` SET `Flags`=2, `Data0`=4, `Data1`=3, `VerifiedBuild`=44730 WHERE (`Id`=27583 AND `IsServerSide`=0);


UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0 WHERE `Id`=4488;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=5731;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=5302, `MoveCurveId`=393, `TimeToTarget`=431, `VerifiedBuild`=44730 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=431, `VerifiedBuild`=44730 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=373;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23603;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23603;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23603;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23603;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23603;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=373;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23603;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23603;
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=5302, `MoveCurveId`=393, `TimeToTarget`=209, `VerifiedBuild`=44730 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=209, `VerifiedBuild`=44730 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=5302, `MoveCurveId`=393, `TimeToTarget`=303, `VerifiedBuild`=44730 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=303, `VerifiedBuild`=44730 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=5302, `MoveCurveId`=393, `TimeToTarget`=815, `VerifiedBuild`=44730 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=815, `VerifiedBuild`=44730 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23256;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23256;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23256;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=23255;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6887;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=4756;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6615;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=1000 WHERE `Id`=6039;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=1000 WHERE `Id`=6039;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=19863;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=1000, `VerifiedBuild`=44730 WHERE `Id`=6027; -- SpellId : 202137
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=1000 WHERE `Id`=18264;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=1000 WHERE `Id`=6039;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;

DELETE FROM `areatrigger_create_properties_orbit` WHERE `AreaTriggerCreatePropertiesId`=23603;
INSERT INTO `areatrigger_create_properties_orbit` (`AreaTriggerCreatePropertiesId`, `StartDelay`, `CircleRadius`, `BlendFromRadius`, `InitialAngle`, `ZOffset`, `CounterClockwise`, `CanLoop`, `VerifiedBuild`) VALUES
(23603, 0, 10, 0, 0, 0, 1, 0, 44730); -- SpellId : 358584



UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0, `Y`=-0, `Z`=0, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx` IN (9,8,6,5)); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.57276439666748046, `Y`=0.046775732189416885, `Z`=-1.44482421875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=7); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-4.77216100692749023, `Y`=0.075310900807380676, `Z`=-1.56005859375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=6); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-7.17788028717041015, `Y`=0.106619663536548614, `Z`=-1.685546875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=5); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-9.58407783508300781, `Y`=0.137831434607505798, `Z`=-1.8828125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=4); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-11.9902753829956054, `Y`=0.169043213129043579, `Z`=-2.078125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=3); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-14.3964729309082031, `Y`=0.200254976749420166, `Z`=-2.15625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=2); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-16.8026695251464843, `Y`=0.231466755270957946, `Z`=-2.08984375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx` IN (1,0)); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.20507699251174926, `Y`=0.000683023012243211, `Z`=-0.09375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=4); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.60838079452514648, `Y`=0.009663959965109825, `Z`=0.29248046875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=3); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-5.19611454010009765, `Y`=0.354221940040588378, `Z`=-1.3291015625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=2); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-7.60227346420288085, `Y`=0.385673463344573974, `Z`=-1.1572265625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx` IN (1,0)); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.663491249084472656, `Y`=-0.11251381039619445, `Z`=-0.28662109375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx` IN (7,6)); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.258040428161621093, `Y`=-0.08122685551643371, `Z`=-0.3759765625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=5); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.852589368820190429, `Y`=-0.04993989691138267, `Z`=-0.4150390625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=4); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.44644927978515625, `Y`=-0.01869883947074413, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=3); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.95969080924987792, `Y`=0.012542217969894409, `Z`=0.14453125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=2); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.3658308982849121, `Y`=0.0437832772731781, `Z`=0.60595703125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx` IN (1,0)); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.704877853393554687, `Y`=-0.1130441278219223, `Z`=-0.29248046875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx` IN (7,6)); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.299426555633544921, `Y`=-0.08175717294216156, `Z`=-0.3818359375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=5); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.893975496292114257, `Y`=-0.05047021806240081, `Z`=-0.4208984375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=4); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.487835407257080078, `Y`=-0.01922915875911712, `Z`=-0.1884765625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=3); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.91830462217330932, `Y`=0.01201189961284399, `Z`=0.138671875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=2); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.32444477081298828, `Y`=0.043252956122159957, `Z`=0.60009765625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx` IN (1,0)); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=17.451690673828125, `Y`=-0.7855914831161499, `Z`=0.13916015625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx` IN (16,15)); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=16.585601806640625, `Y`=-0.8450062870979309, `Z`=-0.19140625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=14); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.18668746948242187, `Y`=-1.0099344253540039, `Z`=-0.69482421875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=13); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.79045677185058593, `Y`=-1.17436885833740234, `Z`=0.4814453125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=12); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=9.862175941467285156, `Y`=-0.12800131738185882, `Z`=-0.3466796875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=11); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=7.456097602844238281, `Y`=-0.09672913700342178, `Z`=-0.12841796875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=10); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.050019741058349609, `Y`=-0.06545695662498474, `Z`=-0.01513671875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=9); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.643941879272460937, `Y`=-0.03418477624654769, `Z`=-0.0078125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=8); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.237863972783088684, `Y`=-0.00291259936057031, `Z`=-0.00048828125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=7); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.1682138442993164, `Y`=0.028359578922390937, `Z`=0.0107421875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=6); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-4.57429170608520507, `Y`=0.05963175743818283, `Z`=0.09716796875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=5); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-6.98036956787109375, `Y`=0.090903937816619873, `Z`=0.068359375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=4); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-9.38644790649414062, `Y`=0.122176118195056915, `Z`=0.03955078125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=3); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-11.7927541732788085, `Y`=0.153361886739730834, `Z`=-0.009765625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx`=2); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-14.1990604400634765, `Y`=0.184547647833824157, `Z`=-0.0498046875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=2147607634 AND `Idx` IN (1,0)); -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties_spline_point` SET `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=6887 AND `Idx` IN (3,2,1,0));
UPDATE `areatrigger_create_properties_spline_point` SET `X`=19.65158462524414062, `Z`=0.88232421875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=19863 AND `Idx` IN (18,17)); -- SpellId : 324183
UPDATE `areatrigger_create_properties_spline_point` SET `X`=18.61960029602050781, `Z`=0.8740234375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=19863 AND `Idx`=16); -- SpellId : 324183
UPDATE `areatrigger_create_properties_spline_point` SET `X`=17.45236396789550781, `Z`=0.90576171875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=19863 AND `Idx`=15); -- SpellId : 324183
UPDATE `areatrigger_create_properties_spline_point` SET `X`=16.23575973510742187, `Z`=0.81787109375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=19863 AND `Idx`=14); -- SpellId : 324183
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.99474334716796875, `Z`=0.53857421875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=19863 AND `Idx`=13); -- SpellId : 324183
UPDATE `areatrigger_create_properties_spline_point` SET `X`=13.74884319305419921, `Z`=0.439453125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=19863 AND `Idx`=12); -- SpellId : 324183
UPDATE `areatrigger_create_properties_spline_point` SET `X`=12.4998178482055664, `Z`=0.244140625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=19863 AND `Idx`=11); -- SpellId : 324183
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.25010967254638671, `Z`=0.03369140625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=19863 AND `Idx`=10); -- SpellId : 324183
UPDATE `areatrigger_create_properties_spline_point` SET `X`=10.00001049041748046, `Z`=-0.01904296875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=19863 AND `Idx`=9); -- SpellId : 324183
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.749912261962890625, `Z`=0.04833984375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=19863 AND `Idx`=8); -- SpellId : 324183
UPDATE `areatrigger_create_properties_spline_point` SET `X`=7.499813079833984375, `Z`=0.00830078125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=19863 AND `Idx`=7); -- SpellId : 324183
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.250104427337646484, `Z`=0.12841796875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=19863 AND `Idx`=6); -- SpellId : 324183
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.000395774841308593, `Z`=0.1201171875, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=19863 AND `Idx`=5); -- SpellId : 324183
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.750296592712402343, `Z`=0.02978515625, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=19863 AND `Idx`=4); -- SpellId : 324183
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.500197887420654296, `Z`=0.017578125, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=19863 AND `Idx`=3); -- SpellId : 324183
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.250098943710327148, `Z`=-0.1630859375, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=19863 AND `Idx`=2); -- SpellId : 324183
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0, `VerifiedBuild`=44730 WHERE (`AreaTriggerCreatePropertiesId`=19863 AND `Idx` IN (1,0)); -- SpellId : 324183



DELETE FROM `quest_offer_reward` WHERE `ID` IN (63934 /*Assail Mail*/, 64194 /*War Prototype*/, 64043 /*We Need a Healer - You!*/, 63784 /*Gold's No Object*/);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(63934, 0, 0, 0, 0, 0, 0, 0, 0, 'These are the messages that were stolen! I commend you on recovering them.\n\nOh, there appears to be at least one extra...', 44730), -- Assail Mail
(64194, 0, 0, 0, 0, 0, 0, 0, 0, 'Ha! Perfect victory. Atleos returns, and you do too.', 44730), -- War Prototype
(64043, 0, 0, 0, 0, 0, 0, 0, 0, 'That got them back on their feet!\n\nAny little bit helps to keep us in the fight.', 44730), -- We Need a Healer - You!
(63784, 0, 0, 0, 0, 0, 0, 0, 0, 'Look at \'em! Drab little buns. They jus\' blend in ta the wood work. That\'s stinkin\' useful innit?', 44730); -- Gold's No Object

UPDATE `quest_offer_reward` SET `VerifiedBuild`=44730 WHERE `ID` IN (62719, 63759, 63949, 63758, 63757);


UPDATE `quest_poi` SET `VerifiedBuild`=44730 WHERE (`QuestID`=65625 AND `BlobIndex`=0 AND `Idx1`=0);

UPDATE `quest_poi_points` SET `VerifiedBuild`=44730 WHERE (`QuestID`=65625 AND `Idx1`=0 AND `Idx2`=0);


UPDATE `quest_greeting` SET `VerifiedBuild`=44730 WHERE (`ID`=177924 AND `Type`=0);

DELETE FROM `quest_details` WHERE `ID`=65625;
INSERT INTO `quest_details` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `VerifiedBuild`) VALUES
(65625, 0, 0, 0, 0, 0, 0, 0, 0, 44730); -- The Jailer's Gauntlet

UPDATE `quest_details` SET `VerifiedBuild`=44730 WHERE `ID` IN (62636, 63760, 63759);

DELETE FROM `quest_request_items` WHERE `ID`=63934;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `EmoteOnCompleteDelay`, `EmoteOnIncompleteDelay`, `CompletionText`, `VerifiedBuild`) VALUES
(63934, 0, 0, 0, 0, 'I must see my task completed.', 0); -- Assail Mail



DELETE FROM `creature_queststarter` WHERE (`id`=166307 AND `quest`=62636) OR (`id`=185576 AND `quest`=65625) OR (`id`=177610 AND `quest`=63760) OR (`id`=177924 AND `quest`=63759);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(166307, 62636, 44730), -- A Savage Path Through Time offered Caretaker Kah-Toll
(185576, 65625, 44730), -- The Jailer's Gauntlet offered Ve'nyo
(177610, 63760, 44730), -- Echoes of Fate offered Caretaker Kah-Than
(177924, 63759, 44730); -- Redirect the Search offered Concerned Attendant


DELETE FROM `creature_questender` WHERE (`id`=177610 AND `quest`=63759) OR (`id`=178802 AND `quest`=63934) OR (`id`=179216 AND `quest` IN (64194,64043)) OR (`id`=179221 AND `quest`=63784) OR (`id`=177924 AND `quest` IN (63758,63757));
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(177610, 63759, 44730), -- Redirect the Search ended by Caretaker Kah-Than
(178802, 63934, 44730), -- Assail Mail ended by Messenger Mnemis
(179216, 64194, 44730), -- War Prototype ended by Mikanikos
(179216, 64043, 44730), -- We Need a Healer - You! ended by Mikanikos
(179221, 63784, 44730), -- Gold's No Object ended by Rendle
(177924, 63758, 44730), -- The Last Place You Look ended by Concerned Attendant
(177924, 63757, 44730); -- Looting the Looters ended by Concerned Attendant

UPDATE `creature_questender` SET `VerifiedBuild`=44730 WHERE (`id`=180509 AND `quest`=62719) OR (`id`=177927 AND `quest`=63949);


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (177455,180080,180074,180021,180073,179745,179579,179913));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(177455, 0, 0, 0, 2043, 44730),
(180080, 0, 0, 0, 2043, 44730),
(180074, 0, 3, 3, 2043, 44730),
(180021, 0, 0, 0, 2043, 44730),
(180073, 0, 0, 0, 2043, 44730),
(179745, 0, 0, 0, 2043, 44730),
(179579, 0, 0, 0, 2043, 44730),
(179913, 0, 1, 1, 2043, 44730);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=44730 WHERE (`DifficultyID`=0 AND `Entry` IN (180509,175027,175025,175029,175028,183179,175000,175026,175127,177282,173668,175009,178823,172925,162804,170826,170824,170825,176308,175882,170157,180487,179715,70528,175698,170827,170819,173640,175469,149404,23635,49131,72654,35068,145424,47571,135201,46555,58155,52034,46140,46556,46142,3323,45339,23128,3144,45337,17098,49622,5188,4047,44338,3312,44866,44867,89830,44868,3370,188655,44865,88703,51195,14376,46572,27489,44871,44872,133333,5614,49750,187758,145529,145528,3342,188157,62114,188656,88702,88701,137762,72559,5613,5611,5610,6466,135202,6929,44853,5609,5606,44878,44852,44851,44856,44854,44877,44876,14375,28960,168459,3313,14392,5817,40891,62195,71100,5951,42859,6566,148265,74228,149371,133186,149270,148250,149523,148242,50304,49743,62115,150131,148768,51346,149290,148795,145714,149522,148263,149297,149279,149258,49837,47253,3296,149296,148770,173548,173610,175526,173545,175525,178792,176186,173365,166307,177829,175714,177142,178173,177850,177646,177645,177610,177412,178845,178844,178119,180350,177582,177155,177180,179929,180413,179321,179930,59394,179214,180256,179029,177927,178802,177228,180416,177176,179223,179221,179216,179574,177158,177157,180410,180408,177152,177156,177408,177293,177179,177683,180548,177378,179693,178808,178806,176669,178807,177450,178120,179705,180678,180028,177291,177951,177292,179108,179716,179713,179344,178547,178528,178527,178525,177525,180063,178526,178294,180009,180003,180007,180006,180005,180004,180014,156600,177357,177352,177354,178352,177355,177385,177353,179256,179365,179250,179871,179552,179248,177334,177335,179922,180524,179368,177196,179931,177296,179732,180511,179369,177302,179534,177374,180625,178894,179175,177249,180347,177197,179131,178880,179731,178893,179375,177198,177245,178815,177295,178666,179812,177804,177805,179358,177803,177395,176673,179968,180057,180096,177356,175961,179347,172631,177319,179289,177189,178546,177203,179307,177577,177390,180011,180065,178660,179229,177204,180358,179373,177185,177187,177299,177201,178562));


UPDATE `creature_model_info` SET `VerifiedBuild`=44730 WHERE `DisplayID` IN (101705, 95276, 101379, 98562, 23767, 98159, 95004, 100403, 96091, 92415, 93511, 96094, 100304, 97386, 99989, 90314, 8848, 31988, 29569, 30272, 35695, 49781, 89800, 35141, 40012, 37724, 35140, 7118, 1323, 34412, 21264, 82115, 34406, 16850, 36559, 3128, 4514, 304, 31737, 36598, 1312, 34155, 34156, 24981, 34157, 1392, 34154, 8001, 37138, 14414, 35148, 22493, 99507, 9133, 8000, 3609, 36615, 106345, 88594, 1358, 106383, 106382, 61024, 61023, 49770, 3608, 3606, 7137, 5205, 5706, 34141, 99453, 3605, 3604, 36584, 15467, 1310, 34139, 34136, 34144, 34143, 1320, 1318, 36585, 14413, 8971, 1313, 4601, 32170, 32171, 51613, 4356, 32173, 42385, 46130, 1560, 704, 75972, 90243, 10732, 90244, 90252, 75973, 37328, 99452, 90313, 31738, 90304, 83248, 90245, 99451, 89937, 90366, 89935, 37023, 83764, 90293, 35498, 70992, 37329, 7511, 90130, 37331, 90133, 86333, 90129, 37330, 90249, 4259, 83765, 16238, 25436, 90242, 90300, 90246, 16235, 36583, 35504, 4260, 90255, 86332, 25423, 25420, 94658, 25375, 25439, 95325, 40006, 101584, 101158, 101157, 102164, 99773, 94457, 101186, 96257, 95044, 28039, 101497, 96102, 94282, 101844, 99065, 100735, 96505, 99771, 96004, 96584, 92397, 96005, 94501, 96007, 101767, 101768, 94867, 98197, 94122, 101765, 94718, 100480, 39810, 100571, 100574, 100424, 101522, 97187, 101521, 101520, 101519, 101518, 101002, 100417, 101185, 101320, 101280, 101411, 100575, 101486, 101332, 101298, 101493, 101322, 100364, 101700, 39353, 97787, 100247, 100724, 101491, 101492, 98547, 101242, 101279, 100725, 101241, 93502, 101766, 101182, 101506, 100245, 100242, 101904, 46268, 98490, 100248, 92726, 101334, 64062, 93213, 100015, 11686, 101294, 100572, 98486, 101042);
UPDATE `creature_model_info` SET `BoundingRadius`=0.813735127449035644, `CombatReach`=1.20000004768371582 WHERE `DisplayID`=92416;
UPDATE `creature_model_info` SET `BoundingRadius`=0.382999986410140991, `CombatReach`=1.5, `VerifiedBuild`=44730 WHERE `DisplayID`=89419;
UPDATE `creature_model_info` SET `BoundingRadius`=0.524599969387054443 WHERE `DisplayID`=93632;
UPDATE `creature_model_info` SET `BoundingRadius`=0.843031287193298339, `CombatReach`=1.85000002384185791 WHERE `DisplayID`=92192;
UPDATE `creature_model_info` SET `BoundingRadius`=1.205108404159545898, `CombatReach`=1.5, `VerifiedBuild`=44730 WHERE `DisplayID`=100811;
UPDATE `creature_model_info` SET `BoundingRadius`=3.125, `VerifiedBuild`=44730 WHERE `DisplayID`=98158;
UPDATE `creature_model_info` SET `BoundingRadius`=0.435065627098083496, `VerifiedBuild`=44730 WHERE `DisplayID`=80015;
UPDATE `creature_model_info` SET `BoundingRadius`=0.573607325553894042, `CombatReach`=2.729999780654907226 WHERE `DisplayID`=95194;
UPDATE `creature_model_info` SET `BoundingRadius`=0.798506081104278564, `CombatReach`=1.20000004768371582, `VerifiedBuild`=44730 WHERE `DisplayID`=100684;
UPDATE `creature_model_info` SET `BoundingRadius`=0.839329779148101806, `CombatReach`=1.5, `VerifiedBuild`=44730 WHERE `DisplayID`=96489;
UPDATE `creature_model_info` SET `BoundingRadius`=1.024705886840820312, `CombatReach`=1.65000009536743164, `VerifiedBuild`=44730 WHERE `DisplayID`=94757;
UPDATE `creature_model_info` SET `BoundingRadius`=0.389400035142898559, `CombatReach`=2.47500014305114746, `VerifiedBuild`=44730 WHERE `DisplayID`=96443;
UPDATE `creature_model_info` SET `BoundingRadius`=0.939397037029266357, `CombatReach`=0.800000011920928955, `VerifiedBuild`=44730 WHERE `DisplayID`=98534;
UPDATE `creature_model_info` SET `BoundingRadius`=0.899534761905670166, `CombatReach`=0.60000002384185791, `VerifiedBuild`=44730 WHERE `DisplayID`=100573;
UPDATE `creature_model_info` SET `BoundingRadius`=1.146769404411315917, `CombatReach`=2.099999904632568359, `VerifiedBuild`=44730 WHERE `DisplayID`=100363;
UPDATE `creature_model_info` SET `BoundingRadius`=1.419809818267822265, `CombatReach`=2.599999904632568359, `VerifiedBuild`=44730 WHERE `DisplayID`=100418;
UPDATE `creature_model_info` SET `BoundingRadius`=2.05827498435974121, `CombatReach`=1.870000123977661132 WHERE `DisplayID`=100365;
UPDATE `creature_model_info` SET `BoundingRadius`=2.05827498435974121, `CombatReach`=1.870000123977661132, `VerifiedBuild`=44730 WHERE `DisplayID`=101489;
UPDATE `creature_model_info` SET `BoundingRadius`=0.455948531627655029, `CombatReach`=0.375, `VerifiedBuild`=44730 WHERE `DisplayID` IN (97087, 97084);
UPDATE `creature_model_info` SET `CombatReach`=10, `VerifiedBuild`=44730 WHERE `DisplayID`=98535;
UPDATE `creature_model_info` SET `BoundingRadius`=0.611999988555908203, `CombatReach`=3, `VerifiedBuild`=44730 WHERE `DisplayID`=100555;
UPDATE `creature_model_info` SET `BoundingRadius`=1.256006956100463867, `CombatReach`=1 WHERE `DisplayID`=94391;
UPDATE `creature_model_info` SET `BoundingRadius`=1.092161417007446289, `CombatReach`=2, `VerifiedBuild`=44730 WHERE `DisplayID`=100419;

DELETE FROM `creature_template_spell` WHERE (`CreatureID`=179580 AND `Index` IN (3,2,1,0));
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(179580, 3, 354668, 44730), -- Prototype Colossus
(179580, 2, 354801, 44730), -- Prototype Colossus
(179580, 1, 354667, 44730), -- Prototype Colossus
(179580, 0, 354666, 44730); -- Prototype Colossus



UPDATE `npc_vendor` SET `VerifiedBuild`=44730 WHERE (`entry`=177152 AND `item`=64670 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=177152 AND `item`=39505 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=177152 AND `item`=20815 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=177152 AND `item`=5956 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=177152 AND `item`=6217 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=177152 AND `item`=6256 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=177152 AND `item`=85663 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=177152 AND `item`=7005 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=177152 AND `item`=2901 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=177152 AND `item`=138293 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=177152 AND `item`=180733 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=177152 AND `item`=173168 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=177152 AND `item`=177062 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=177152 AND `item`=4470 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=177152 AND `item`=38682 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=177152 AND `item`=180732 AND `ExtendedCost`=0 AND `type`=1) OR (`entry`=177152 AND `item`=175886 AND `ExtendedCost`=0 AND `type`=1);



UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=205648, `VerifiedBuild`=44730 WHERE (`MenuID`=25927 AND `OptionID`=4); -- OptionBroadcastTextID: 205648 - 205648
UPDATE `gossip_menu_option` SET `OptionIcon`=37, `OptionText`='I\'d like to reclaim the soul essence from one of my legendary items.', `VerifiedBuild`=44730 WHERE (`MenuID`=25682 AND `OptionID`=4);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=200240, `VerifiedBuild`=44730 WHERE (`MenuID`=25927 AND `OptionID`=0); -- OptionBroadcastTextID: 200240 - 200240
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=205567, `VerifiedBuild`=44730 WHERE (`MenuID`=25927 AND `OptionID`=10); -- OptionBroadcastTextID: 205567 - 205567
UPDATE `gossip_menu_option` SET `OptionType`=3, `OptionNpcFlag`=128, `VerifiedBuild`=44730 WHERE (`MenuID`=26844 AND `OptionID`=1);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=200254, `VerifiedBuild`=44730 WHERE (`MenuID`=25927 AND `OptionID`=3); -- OptionBroadcastTextID: 200254 - 200254
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=206907, `VerifiedBuild`=44730 WHERE (`MenuID`=25927 AND `OptionID`=8); -- OptionBroadcastTextID: 206907 - 206907
UPDATE `gossip_menu_option` SET `VerifiedBuild`=44730 WHERE (`MenuID`=25682 AND `OptionID` IN (3,2)) OR (`MenuID`=25459 AND `OptionID`=0);
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=56155, `VerifiedBuild`=44730 WHERE (`MenuID`=25927 AND `OptionID`=1); -- OptionBroadcastTextID: 56155 - 56155 - 200247 - 200247
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=5513, `VerifiedBuild`=44730 WHERE (`MenuID`=25927 AND `OptionID`=7); -- OptionBroadcastTextID: 5513 - 5513 - 5911 - 5911 - 6396 - 6396 - 6633 - 6633 - 6910 - 6910 - 15224 - 15224 - 19202 - 19202 - 32166 - 32166 - 44629 - 44629 - 200258 - 200258
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=8508, `VerifiedBuild`=44730 WHERE (`MenuID`=25927 AND `OptionID`=11); -- OptionBroadcastTextID: 8508 - 8508 - 8511 - 8511 - 8518 - 8518 - 8524 - 8524 - 8525 - 8525 - 8529 - 8529 - 8534 - 8534 - 8536 - 8536 - 8539 - 8539 - 8542 - 8542 - 15228 - 15228 - 19208 - 19208 - 45383 - 45383 - 200263 - 200263
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=2863, `VerifiedBuild`=44730 WHERE (`MenuID`=25927 AND `OptionID`=5); -- OptionBroadcastTextID: 2863 - 2863 - 4889 - 4889 - 6632 - 6632 - 19203 - 19203 - 45379 - 45379 - 200256 - 200256
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=3426, `VerifiedBuild`=44730 WHERE (`MenuID`=25927 AND `OptionID`=2); -- OptionBroadcastTextID: 3426 - 3426 - 5908 - 5908 - 6631 - 6631 - 6907 - 6907 - 6987 - 6987 - 15214 - 15214 - 19201 - 19201 - 32167 - 32167 - 44628 - 44628 - 78584 - 78584 - 200249 - 200249
UPDATE `gossip_menu_option` SET `OptionType`=8, `OptionNpcFlag`=65536, `VerifiedBuild`=44730 WHERE (`MenuID`=26844 AND `OptionID`=0); -- OptionBroadcastTextID: 2822 - 2822 - 162070 - 162070
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=4895, `VerifiedBuild`=44730 WHERE (`MenuID`=25927 AND `OptionID`=9); -- OptionBroadcastTextID: 4895 - 4895 - 5093 - 5093 - 5336 - 5336 - 5514 - 5514 - 5912 - 5912 - 6397 - 6397 - 15226 - 15226 - 19204 - 19204 - 45381 - 45381 - 200260 - 200260
UPDATE `gossip_menu_option` SET `OptionType`=3, `OptionNpcFlag`=128, `VerifiedBuild`=44730 WHERE (`MenuID`=26842 AND `OptionID`=0); -- OptionBroadcastTextID: 3370 - 3370
UPDATE `gossip_menu_option` SET `OptionBroadcastTextId`=105470, `VerifiedBuild`=44730 WHERE (`MenuID`=25927 AND `OptionID`=12); -- OptionBroadcastTextID: 105470 - 105470


UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=29, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry` IN (188655, 188656); -- Worker
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=29, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=187758; -- Zaa'je
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=29, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048, `dynamicflags`=128 WHERE `entry`=188157; -- Worker

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=1735, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=186199; -- Forsaken Dreadmage

UPDATE `creature_template` SET `unit_flags2`=4229120 WHERE `entry`=156698; -- Attendant Protector
UPDATE `creature_template` SET `unit_flags`=33536, `unit_flags3`=524800 WHERE `entry`=177850; -- Protector Rih-Mat

UPDATE `creature_template` SET `speed_walk`=0.400000005960464477, `speed_run`=0.457142859697341918, `unit_flags`=67141632, `dynamicflags`=64 WHERE `entry`=177582; -- Nimble Scavenger
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3255, `BaseAttackTime`=2000, `unit_flags`=32784, `unit_flags2`=2048, `unit_flags3`=8388608 WHERE `entry`=177455; -- Korthian Protector

UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3166, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=180080; -- Uther
UPDATE `creature_template` SET `minlevel`=63, `maxlevel`=63, `faction`=2713, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33088, `unit_flags2`=33572864, `unit_flags3`=1048576 WHERE `entry`=180074; -- Lady Jaina Proudmoore
UPDATE `creature_template` SET `gossip_menu_id`=27065 WHERE `entry`=179216; -- Mikanikos
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `npcflag`=1, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=180021; -- Highlord Darion Mograine
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=2714, `npcflag`=3, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=33572864, `unit_flags3`=1048576 WHERE `entry`=180073; -- Thrall
UPDATE `creature_template` SET `gossip_menu_id`=26844 WHERE `entry`=177156; -- Caretaker Kah-Lind
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=190, `BaseAttackTime`=2000, `unit_flags`=33555200, `unit_flags2`=2080, `unit_flags3`=1 WHERE `entry`=179745; -- Ramming Target
UPDATE `creature_template` SET `unit_flags`=32784 WHERE `entry`=178547; -- Shardhide Growler
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=178528; -- Fierce Gromit
UPDATE `creature_template` SET `unit_flags`=294912 WHERE `entry`=178527; -- Shardhide Alpha

UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=177352; -- Shardhide Mauler
UPDATE `creature_template` SET `unit_flags`=32784 WHERE `entry`=177354; -- Shardhide Dominator
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3166, `npcflag`=16777216, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=1 WHERE `entry`=179579; -- Atleos
UPDATE `creature_template` SET `dynamicflags`=64 WHERE `entry`=180524; -- Hollow Gromit
UPDATE `creature_template` SET `unit_flags`=32832 WHERE `entry`=177804; -- Tezzerak
UPDATE `creature_template` SET `unit_flags`=537166592, `unit_flags2`=2049, `unit_flags3`=8192 WHERE `entry`=176673; -- Korthian Attendant
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=180096; -- Swarming Corpsefly
UPDATE `creature_template` SET `minlevel`=61, `maxlevel`=61, `faction`=14, `npcflag`=16777216, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=18432 WHERE `entry`=179913; -- Deadsoul Hatcher
UPDATE `creature_template` SET `BaseAttackTime`=2000 WHERE `entry`=177187; -- Empowered Ravager


UPDATE `quest_template` SET `VerifiedBuild`=44730 WHERE `ID` IN (62636, 65625, 63760, 51754, 53994, 52463, 51434, 51043, 52297, 51119, 54588, 50853, 51617, 51507, 51996, 50652, 64785, 52316, 60646, 51972, 50502, 51496, 49098, 55343, 51444, 44765, 52869, 65115, 54551, 51792, 52799, 51316, 52344, 51850, 51622, 51114, 51895, 65230, 52878, 49444, 51654, 50559, 55303, 52874, 50577, 54549, 51637, 51719, 51777, 51627, 51081, 52117, 54614, 64977, 50503, 52858, 49096, 50676, 65415, 60281, 63759, 63733, 57443, 61539, 61411, 61148, 60858, 60649, 60602, 60574, 59905, 58601, 61784, 61868, 61885, 61947, 59680, 58144, 61613, 59789, 59642, 63792, 63822, 63062, 62241, 59234, 58993, 62451, 61477, 60415, 60425, 65067, 64376, 64274, 63934, 63784, 63758, 63757, 50603, 50562);
UPDATE `quest_template` SET `RewardFactionID2`=0, `VerifiedBuild`=44730 WHERE `ID`=52348; -- Work Order: Mon'Dazi
UPDATE `quest_template` SET `FlagsEx`=0, `VerifiedBuild`=44730 WHERE `ID`=51296; -- Tol Dagor: The Overseer's Pride


UPDATE `quest_objectives` SET `VerifiedBuild`=44730 WHERE `ID` IN (408091, 423172, 419922, 419921, 419920, 337036, 385457, 385456, 385455, 385454, 385453, 385452, 385451, 339046, 335868, 334581, 338669, 334787, 387709, 334102, 336510, 336038, 337707, 337706, 337705, 333479, 421461, 421456, 421473, 338752, 409228, 409227, 409224, 337628, 332900, 336035, 389033, 389032, 335874, 286940, 340130, 422138, 422128, 422121, 387595, 338091, 338090, 338089, 338088, 338087, 337177, 339943, 335455, 335454, 335391, 338819, 337384, 337378, 336539, 334777, 337476, 422438, 422437, 340181, 294614, 336634, 333098, 338823, 389004, 389003, 385409, 385408, 340161, 340160, 340159, 340158, 340157, 340156, 340155, 333169, 333159, 387591, 341814, 336568, 341681, 336933, 337145, 341818, 336548, 334690, 338010, 338009, 387766, 335343, 335342, 421869, 421884, 332901, 340104, 333514, 333513, 422895, 409004, 398071, 419669, 392429, 392436, 409135, 409133, 409127, 409126, 409125, 409108, 409124, 409120, 409106, 409105, 409104, 409103, 409102, 409101, 409100, 409099, 409098, 409097, 408128, 408127, 408126, 408125, 408124, 408123, 405834, 405887, 405886, 405885, 405884, 405883, 405882, 405881, 405880, 405879, 405833, 405832, 405831, 405830, 405417, 405286, 405291, 405285, 404920, 404949, 404410, 404409, 404408, 404379, 404367, 404366, 404341, 404340, 399077, 399016, 399099, 398917, 398916, 397205, 394467, 394466, 394465, 394464, 394463, 394462, 394453, 406710, 406766, 406808, 406867, 396797, 396787, 396786, 396785, 396784, 396783, 393734, 393733, 393784, 406396, 406626, 396978, 396977, 396959, 396960, 396976, 396683, 396682, 396662, 419765, 420028, 420027, 420026, 420025, 420024, 420032, 420022, 420021, 419998, 419913, 419997, 409275, 409150, 407546, 407545, 407536, 407522, 407556, 407555, 407554, 407553, 407521, 409171, 396199, 395297, 396702, 407764, 407763, 407762, 407761, 407760, 407759, 407758, 407757, 407756, 407755, 407754, 407753, 405979, 405978, 405977, 405976, 405973, 408487, 405970, 398471, 398605, 398604, 398603, 398602, 398601, 398551, 398550, 422007, 420920, 420842, 420841, 420210, 419751, 420208, 420052, 420051, 420050, 419839, 419942, 419941, 419940, 419836, 419943, 336210, 336202);


UPDATE `quest_visual_effect` SET `VerifiedBuild`=44730 WHERE (`Index`=0 AND `ID` IN (419922,419921,419920,337036,338669,334102,336510,421461,421456,338752,409228,409227,337628,336035,389032,335874,340130,339943,335391,337384,336539,422438,422437,340181,294614,389004,389003,333169,333159,341814,336568,341681,336933,336548,338010,338009,387766,335343,421869,421884,340104,333514,398071,392429,392436,409135,409133,409108,409124,405834,405887,405886,405885,405884,405883,405882,405881,405880,405879,405833,405832,405830,405417,405286,405291,405285,404920,404341,404340,399016,399099,406710,406766,406808,406867,396797,396787,396786,396785,396784,396783,393734,393733,393784,406626,419765,420032,420021,419913,419997,409150,407546,407556,407521,396199,396702,407764,407763,407762,407754,407753,405979,405978,405977,405976,405973,408487,422007,420210,419751,420208,419839,419943)) OR (`Index`=2 AND `ID` IN (421461,336035,392429,405832,405285,399016,396783,420032,396199,407754,419943)) OR (`Index`=1 AND `ID` IN (421461,336035,336539,341814,338010,333514,392429,405832,405285,404341,399016,396785,396783,393733,420032,409150,396199,407754,422007,419839,419943)) OR (`Index`=3 AND `ID` IN (392429,405832,405285,396783,420032,396199,407754)) OR (`Index`=9 AND `ID` IN (405832,396199)) OR (`Index`=8 AND `ID` IN (405832,396199)) OR (`Index`=7 AND `ID` IN (405832,396199)) OR (`Index`=6 AND `ID` IN (405832,396199)) OR (`Index`=5 AND `ID` IN (405832,396199,407754)) OR (`Index`=4 AND `ID` IN (405832,405285,396783,396199,407754)) OR (`Index`=10 AND `ID`=396199);


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=44730 WHERE (`QuestID`=61613 AND `Idx`=0);


UPDATE `creature_template` SET `VerifiedBuild`=44730 WHERE `entry` IN (156600, 145424, 179029, 44851, 44852, 44853, 44854, 44856, 145528, 145529, 44865, 44866, 44867, 44868, 44871, 44872, 44876, 44877, 44878, 170157, 73967, 179108, 179131, 179175, 6929, 188157, 150131, 179214, 179216, 179221, 179223, 179229, 179235, 47253, 179236, 179238, 179248, 179250, 179256, 145714, 179289, 179307, 89830, 42859, 179321, 172631, 179344, 179347, 179358, 179365, 74228, 49622, 179368, 179369, 179373, 179375, 177142, 177152, 177155, 177156, 177157, 177158, 177176, 177179, 177180, 177185, 177187, 177189, 177196, 177197, 177198, 177201, 177203, 177204, 177228, 175000, 177245, 175009, 177249, 49743, 49750, 175025, 175026, 175027, 175028, 175029, 177282, 177291, 177292, 177293, 177295, 177296, 179534, 177299, 177302, 179541, 52034, 179552, 47571, 177319, 45337, 45339, 148242, 148250, 177334, 177335, 179574, 179579, 179580, 148263, 148265, 49837, 40891, 177352, 177353, 177354, 177355, 177356, 177357, 175127, 27489, 177374, 177378, 177385, 177390, 177395, 172925, 168459, 177408, 177412, 5188, 177450, 177455, 179693, 179705, 188655, 188656, 179713, 179715, 179716, 23128, 166307, 179731, 179732, 179745, 177525, 170819, 170824, 170825, 170826, 170827, 179812, 177577, 177582, 177610, 3144, 179871, 177645, 177646, 14375, 179913, 14376, 177683, 179922, 179929, 14392, 179930, 179931, 72559, 135201, 135202, 175469, 179968, 175519, 175525, 175526, 180003, 180004, 180005, 180006, 180007, 180009, 180011, 180014, 3296, 180021, 180028, 72654, 3312, 3313, 177803, 177804, 177805, 3323, 50304, 180057, 180063, 3342, 180065, 177829, 180073, 180074, 173365, 180080, 148768, 177850, 148770, 182326, 5606, 3370, 5609, 5610, 180096, 5611, 5613, 5614, 148795, 88403, 171185, 70528, 177923, 133186, 177927, 175698, 177951, 175714, 59394, 23635, 173545, 180256, 173548, 137762, 178036, 5817, 133333, 173610, 171396, 180347, 180350, 173640, 175882, 178119, 178120, 180358, 46140, 46142, 173668, 17098, 180408, 180410, 178173, 180413, 180416, 88701, 88702, 88703, 175961, 5951, 35068, 180487, 182728, 180509, 180511, 180524, 178294, 180548, 149258, 149270, 178352, 149279, 149290, 149296, 149297, 180625, 176186, 62114, 62115, 180678, 149371, 162804, 71100, 149404, 62195, 178525, 178526, 178527, 178528, 4047, 46555, 46556, 176308, 178546, 178547, 46572, 44338, 178562, 1863, 149522, 149523, 178660, 178666, 51195, 183179, 6466, 178792, 178802, 178806, 178807, 178808, 187758, 6566, 178815, 178823, 28960, 178844, 178845, 51346, 49131, 178880, 178893, 178894, 176669, 176673, 58155);
UPDATE `creature_template` SET `VerifiedBuild`=44730 WHERE `entry`=68666; -- Ashstone Core
UPDATE `creature_template` SET `VerifiedBuild`=44730 WHERE `entry`=55367; -- Darkmoon Zeppelin
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=98116; -- Bleakwater Jelly
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=44730 WHERE `entry`=15429; -- Disgusting Oozeling


UPDATE `creature_template_model` SET `VerifiedBuild`=44730 WHERE (`Idx`=0 AND `CreatureID` IN (180509,1863,175029,177282,175127,183179,175028,173668,175025,175009,175026,175027,175000,178823,172925,170826,170824,162804,170825,170157,180487,170827,170819,70528,176308,175882,173640,179715,175698,175469,149404,23635,49131,145424,135201,72654,47571,35068,58155,52034,46556,46555,46142,46140,45339,45337,23128,17098,3323,3144,3312,4047,44338,49622,5188,44865,44867,188655,44866,44868,3370,51195,88703,68666,89830,187758,145529,145528,133333,49750,46572,44872,44871,27489,14376,5614,3342,188656,188157,62114,5611,137762,72559,135202,6466,88702,88701,5610,5613,44853,6929,5609,5606,44878,44877,44876,44856,44854,44852,44851,14375,71100,40891,168459,62195,28960,14392,5817,3313,42859,5951,145714,133186,149296,62115,148795,149279,148263,50304,47253,74228,149371,149290,149258,51346,148770,148250,148242,49743,150131,149523,148768,3296,149270,148265,6566,149522,49837,149297,175526,173610,173548,175525,173545,178792,176186,173365,166307,177829,175714,177142,15429,55367,88403,98116,73967,178173,177850,177646,177645,177610,177412,182326,182728,178845,178844,178119,180350,177582,177155,179929,177180,180413,179930,179321,180256,180080,180074,179214,179029,178802,177927,177228,59394,180416,177176,180410,180408,180073,180021,179574,179223,179221,179216,177158,177157,177156,177152,177683,177408,177293,177179,180548,179693,178808,177378,178806,178807,177450,178036,178120,179705,180678,180028,177951,177291,177292,179108,179745,179716,179713,175519,179344,178547,178528,178527,178525,177525,180063,178526,178294,180014,180009,180007,180006,180005,180004,180003,156600,177357,177352,177354,178352,177385,177355,177353,179365,179256,179871,179250,179541,179552,179580,179248,177334,179922,177335,179579,179368,177196,180524,179931,180511,179732,179369,177302,177296,179534,177374,180625,178894,179175,180347,177249,177197,179131,178880,179731,179375,178893,177198,177245,178815,177295,178666,179812,177804,177805,179358,177803,177395,179968,176673,171185,171396,180096,180057,179238,177356,175961,179236,179235,179347,179913,176669,177577,180358,177189,177319,180065,172631,177187,177299,179373,178546,177204,179307,179229,178562,177203,180011,177390,179289,177201,178660,177185,177923)) OR (`Idx`=1 AND `CreatureID` IN (70528,176308,179715,175698,175469,149404,72654,46142,46140,89830,133333,62114,72559,71100,40891,168459,28960,42859,133186,149296,62115,148795,148263,74228,149371,149290,149258,51346,148770,49743,148768,3296,149270,148265,149522,49837,149297,175526,173548,175525,173545,178173,182326,180350,177455,180413,59394,180416,177176,180410,180408,177408,179693,177450,178120,179705,179745,179716,179713,178528,177525,156600,177335,180347,177198,178815,179812,176673,180096,179238,175961,179236,179235,177577,180358,180065,172631,178546,178562,180011)) OR (`Idx`=7 AND `CreatureID` IN (179715,175698,175469,46140,180413)) OR (`Idx`=6 AND `CreatureID` IN (179715,175698,175469,46140,180413)) OR (`Idx`=5 AND `CreatureID` IN (179715,175698,175469,46140,3296,180413,177176)) OR (`Idx`=4 AND `CreatureID` IN (179715,175698,175469,46140,3296,180350,180413,177176)) OR (`Idx`=3 AND `CreatureID` IN (179715,175698,175469,149404,46142,46140,89830,62114,71100,40891,168459,133186,149296,62115,74228,149371,149290,51346,49743,3296,49837,149297,180350,180413,180416,177176,180408,177408,180096,179238,179236,179235)) OR (`Idx`=2 AND `CreatureID` IN (179715,175698,175469,149404,46142,46140,89830,62114,71100,40891,168459,42859,133186,149296,62115,74228,149371,149290,51346,49743,3296,49837,149297,175525,182326,180350,180413,180416,177176,180408,177408,180096,179238,179236,179235)) OR (`Idx`=34 AND `CreatureID`=175698) OR (`Idx`=33 AND `CreatureID`=175698) OR (`Idx`=32 AND `CreatureID`=175698) OR (`Idx`=31 AND `CreatureID`=175698) OR (`Idx`=30 AND `CreatureID`=175698) OR (`Idx`=29 AND `CreatureID`=175698) OR (`Idx`=28 AND `CreatureID`=175698) OR (`Idx`=27 AND `CreatureID`=175698) OR (`Idx`=26 AND `CreatureID`=175698) OR (`Idx`=25 AND `CreatureID`=175698) OR (`Idx`=24 AND `CreatureID`=175698) OR (`Idx`=23 AND `CreatureID`=175698) OR (`Idx`=22 AND `CreatureID`=175698) OR (`Idx`=21 AND `CreatureID`=175698) OR (`Idx`=20 AND `CreatureID`=175698) OR (`Idx`=19 AND `CreatureID`=175698) OR (`Idx`=18 AND `CreatureID` IN (175698,180413)) OR (`Idx`=17 AND `CreatureID` IN (175698,180413)) OR (`Idx`=16 AND `CreatureID` IN (175698,180413)) OR (`Idx`=15 AND `CreatureID` IN (175698,175469,180413)) OR (`Idx`=14 AND `CreatureID` IN (175698,175469,180413)) OR (`Idx`=13 AND `CreatureID` IN (175698,175469,180413)) OR (`Idx`=12 AND `CreatureID` IN (175698,175469,180413)) OR (`Idx`=11 AND `CreatureID` IN (175698,175469,180413)) OR (`Idx`=10 AND `CreatureID` IN (175698,175469,180413)) OR (`Idx`=9 AND `CreatureID` IN (175698,175469,180413)) OR (`Idx`=8 AND `CreatureID` IN (175698,175469,180413));
UPDATE `creature_template_model` SET `DisplayScale`=1.5, `VerifiedBuild`=44730 WHERE (`CreatureID`=177455 AND `Idx`=0); -- Korthian Protector


UPDATE `creature_questitem` SET `VerifiedBuild`=44730 WHERE (`Idx`=2 AND `CreatureEntry` IN (170157,177187,177204,177201)) OR (`Idx`=1 AND `CreatureEntry` IN (170157,177187,177204,177201)) OR (`Idx`=0 AND `CreatureEntry` IN (170157,42859,177646,177645,177582,177683,177293,177291,177292,178528,178294,177352,177354,177385,177355,177353,177196,180625,178894,177197,178880,178893,177198,177245,177295,177804,177805,177803,177395,177356,177319,177187,177299,177204,177201,177185)) OR (`Idx`=3 AND `CreatureEntry` IN (177187,177204,177201));


UPDATE `gameobject_template` SET `VerifiedBuild`=44730 WHERE `entry` IN (364379, 364378, 357638, 364526, 326155, 364374, 353816, 364888, 369769, 353815, 344767, 190549, 204179, 243302, 204203, 243293, 243292, 204205, 204200, 204608, 175788, 259114, 204609, 204604, 204199, 269949, 206995, 204209, 204602, 204603, 332595, 204600, 204214, 204210, 204207, 376514, 281340, 206726, 206725, 204601, 204215, 204201, 204208, 206727, 205109, 204213, 204212, 204211, 204202, 204665, 205142, 205108, 204656, 206737, 204662, 179881, 204666, 204645, 204193, 204664, 204655, 203969, 204658, 332214, 323854, 223739, 323851, 204651, 355229, 323853, 175080, 323850, 204650, 204663, 204163, 204647, 323855, 323852, 223814, 323849, 204646, 206608, 206609, 206610, 367759, 353484, 357293, 357292, 357291, 368341, 368772, 368924, 370138, 368926, 368296, 353956, 369432, 368925, 368731, 369379, 368923, 368304, 369324, 369323, 369322, 369250, 368338, 368216, 353099, 353098, 368236, 369215, 369182, 369333, 369247, 368388, 369245, 369228, 368676, 303148, 369148, 369295, 369230, 369246, 368432, 369229, 368677, 369194, 369297, 369226, 368617, 369016, 369225, 369340, 368324, 367991, 368399, 369334, 369130, 369294, 369257, 368435, 369009, 369290, 356537);


UPDATE `gameobject_questitem` SET `VerifiedBuild`=44730 WHERE (`Idx`=0 AND `GameObjectEntry` IN (203969,368304));


DELETE FROM `creature_equip_template` WHERE (`ID`=1 AND `CreatureID` IN (185020,185435,185228,185232,185212,185233,185226));
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(185020, 1, 174994, 0, 0, 0, 0, 0, 0, 0, 0, 44730), -- Dark Ascended Corrus
(185435, 1, 0, 0, 0, 0, 0, 0, 185612, 0, 0, 44730), -- Excavation Leader
(185228, 1, 114918, 0, 0, 19309, 0, 0, 0, 0, 0, 44730), -- Mawsworn Soulbinder
(185232, 1, 179727, 0, 0, 0, 0, 0, 0, 0, 0, 44730), -- Mawsworn Shackler
(185212, 1, 0, 0, 0, 0, 0, 0, 179731, 0, 0, 44730), -- Mawsworn Archer
(185233, 1, 179721, 0, 0, 0, 0, 0, 0, 0, 0, 44730), -- Mawsworn Guard
(185226, 1, 179721, 0, 0, 0, 0, 0, 0, 0, 0, 44730); -- Flameforge Enforcer



UPDATE `areatrigger_template` SET `VerifiedBuild`=44730 WHERE (`IsServerSide`=0 AND `Id` IN (11231,12929,26911,25732,24349,11203,21114,24462,25370,24207));


UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21469;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=20454;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=20454;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=20454;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=20454;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=20454;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=20454;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=20454;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=20454;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=20454;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=20454;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6615;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21469;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6615;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=16741;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21469;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6615;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21469;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=20583;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6659;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21469;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21056;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=16741;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21469;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=22386;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21469;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=20296;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=6615;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=20296;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=8867;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=20296;
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=44730 WHERE `Id`=21469;


DELETE FROM `conversation_line_template` WHERE `Id`=38862;
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(38862, 0, 0, 0, 44730);


DELETE FROM `conversation_template` WHERE `Id`=15492;
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `TextureKitId`, `VerifiedBuild`) VALUES
(15492, 38862, 0, 44730);


DELETE FROM `quest_offer_reward` WHERE `ID`=65625;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(65625, 0, 0, 0, 0, 0, 0, 0, 0, '<It\'s time to put an end to whatever is happening.>', 44730); -- The Jailer's Gauntlet



UPDATE `quest_poi` SET `VerifiedBuild`=44730 WHERE (`QuestID`=65625 AND `BlobIndex`=0 AND `Idx1`=0);

UPDATE `quest_poi_points` SET `VerifiedBuild`=44730 WHERE (`QuestID`=65625 AND `Idx1`=0 AND `Idx2`=0);


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=167 AND `Entry` IN (185027,185028,185024,185248,185023,185014,185013,185021,185020,185113,185108,185119,185435,185019,185228,185232,185247,185017,185249,185212,185011,186484,185233,185226,185178,185160,185758));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(185027, 167, 2, 2, 709, 44730),
(185028, 167, 2, 2, 709, 44730),
(185024, 167, 2, 2, 709, 44730),
(185248, 167, 0, 0, 709, 44730),
(185023, 167, 2, 2, 709, 44730),
(185014, 167, 2, 2, 709, 44730),
(185013, 167, 2, 2, 709, 44730),
(185021, 167, 2, 2, 709, 44730),
(185020, 167, 2, 2, 709, 44730),
(185113, 167, 1, 1, 709, 44730),
(185108, 167, 1, 1, 709, 44730),
(185119, 167, 1, 1, 709, 44730),
(185435, 167, 1, 1, 709, 44730),
(185019, 167, 2, 2, 709, 44730),
(185228, 167, 0, 0, 709, 44730),
(185232, 167, 0, 0, 709, 44730),
(185247, 167, 0, 0, 709, 44730),
(185017, 167, 2, 2, 709, 44730),
(185249, 167, 0, 0, 709, 44730),
(185212, 167, 0, 0, 709, 44730),
(185011, 167, 2, 2, 709, 44730),
(186484, 167, 0, 0, 709, 44730),
(185233, 167, 0, 0, 709, 44730),
(185226, 167, 0, 0, 709, 44730),
(185178, 167, 0, 0, 709, 44730),
(185160, 167, 0, 0, 709, 44730),
(185758, 167, 0, 0, 709, 44730);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=44730 WHERE (`DifficultyID`=167 AND `Entry` IN (177065,178854,175074,170257,172801,156480,173645,181714)) OR (`DifficultyID`=0 AND `Entry` IN (165799,173236,170724,184047,175009,173668,183179,175026,175027,175127,175025,175029,175028,175000,177282));


UPDATE `creature_model_info` SET `BoundingRadius`=3.85894012451171875, `CombatReach`=10, `VerifiedBuild`=44730 WHERE `DisplayID`=98536;
UPDATE `creature_model_info` SET `BoundingRadius`=1.996218800544738769, `CombatReach`=1.70000004768371582 WHERE `DisplayID`=98531;
UPDATE `creature_model_info` SET `BoundingRadius`=4.166666507720947265, `CombatReach`=2, `VerifiedBuild`=44730 WHERE `DisplayID`=92919;
UPDATE `creature_model_info` SET `BoundingRadius`=5.20280313491821289, `CombatReach`=4.5, `VerifiedBuild`=44730 WHERE `DisplayID`=92785;
UPDATE `creature_model_info` SET `BoundingRadius`=7.355877876281738281, `CombatReach`=4, `VerifiedBuild`=44730 WHERE `DisplayID`=100530;
UPDATE `creature_model_info` SET `BoundingRadius`=5.393225669860839843, `CombatReach`=7.5, `VerifiedBuild`=44730 WHERE `DisplayID`=93976;
UPDATE `creature_model_info` SET `BoundingRadius`=1.750594139099121093, `CombatReach`=1.5, `VerifiedBuild`=44730 WHERE `DisplayID`=93489;
UPDATE `creature_model_info` SET `BoundingRadius`=6.093149185180664062, `CombatReach`=7.5, `VerifiedBuild`=44730 WHERE `DisplayID`=94207;
UPDATE `creature_model_info` SET `BoundingRadius`=5.004755020141601562, `CombatReach`=3, `VerifiedBuild`=44730 WHERE `DisplayID`=99098;
UPDATE `creature_model_info` SET `BoundingRadius`=2.82619786262512207, `CombatReach`=4.375, `VerifiedBuild`=44730 WHERE `DisplayID`=97777;
UPDATE `creature_model_info` SET `BoundingRadius`=1.380583882331848144 WHERE `DisplayID`=101970;
UPDATE `creature_model_info` SET `BoundingRadius`=2.926032543182373046, `CombatReach`=3, `VerifiedBuild`=44730 WHERE `DisplayID`=97237;
UPDATE `creature_model_info` SET `BoundingRadius`=0.844040274620056152, `CombatReach`=1.10000002384185791 WHERE `DisplayID`=92781;
UPDATE `creature_model_info` SET `BoundingRadius`=0.983263254165649414, `CombatReach`=1.45000004768371582 WHERE `DisplayID` IN (92416, 92410);
UPDATE `creature_model_info` SET `BoundingRadius`=1.523571014404296875, `CombatReach`=2, `VerifiedBuild`=44730 WHERE `DisplayID`=100483;
UPDATE `creature_model_info` SET `BoundingRadius`=1.240000009536743164, `CombatReach`=6, `VerifiedBuild`=44730 WHERE `DisplayID`=100474;
UPDATE `creature_model_info` SET `BoundingRadius`=3.967747688293457031, `CombatReach`=3.75, `VerifiedBuild`=44730 WHERE `DisplayID`=99068;
UPDATE `creature_model_info` SET `VerifiedBuild`=44730 WHERE `DisplayID` IN (93583, 91526, 95935, 98436, 102448, 94375, 95102, 98562, 95276, 23767, 101379);
UPDATE `creature_model_info` SET `BoundingRadius`=4.696124553680419921, `CombatReach`=5.059999942779541015, `VerifiedBuild`=44730 WHERE `DisplayID`=100473;
UPDATE `creature_model_info` SET `BoundingRadius`=1.009060859680175781, `CombatReach`=0.800000011920928955, `VerifiedBuild`=44730 WHERE `DisplayID`=98486;

DELETE FROM `npc_vendor` WHERE (`entry`=170257 AND `item`=1095 AND `ExtendedCost`=6908 AND `type`=4) OR (`entry`=170257 AND `item`=1145 AND `ExtendedCost`=6908 AND `type`=4) OR (`entry`=170257 AND `item`=1143 AND `ExtendedCost`=6908 AND `type`=4) OR (`entry`=170257 AND `item`=1096 AND `ExtendedCost`=6908 AND `type`=4);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(170257, 48, 1095, 1, 6908, 4, 0, 0, 44730), -- 1095
(170257, 47, 1145, 1, 6908, 4, 0, 0, 44730), -- 1145
(170257, 44, 1143, 1, 6908, 4, 0, 0, 44730), -- 1143
(170257, 46, 1096, 1, 6908, 4, 0, 0, 44730); -- 1096

UPDATE `npc_vendor` SET `VerifiedBuild`=44730 WHERE (`entry`=170257 AND `item`=16 AND `ExtendedCost`=6554 AND `type`=4) OR (`entry`=170257 AND `item`=7 AND `ExtendedCost`=6547 AND `type`=4) OR (`entry`=170257 AND `item`=176409 AND `ExtendedCost`=6553 AND `type`=1) OR (`entry`=170257 AND `item`=176443 AND `ExtendedCost`=6554 AND `type`=1) OR (`entry`=170257 AND `item`=168207 AND `ExtendedCost`=6551 AND `type`=1) OR (`entry`=170257 AND `item`=174283 AND `ExtendedCost`=0 AND `type`=1);
UPDATE `npc_vendor` SET `slot`=17, `VerifiedBuild`=44730 WHERE (`entry`=170257 AND `item`=13 AND `ExtendedCost`=6547 AND `type`=4); -- 13
UPDATE `npc_vendor` SET `slot`=23, `VerifiedBuild`=44730 WHERE (`entry`=170257 AND `item`=1434 AND `ExtendedCost`=6554 AND `type`=4); -- 1434
UPDATE `npc_vendor` SET `slot`=18, `VerifiedBuild`=44730 WHERE (`entry`=170257 AND `item`=10 AND `ExtendedCost`=6547 AND `type`=4); -- 10
UPDATE `npc_vendor` SET `slot`=8, `maxcount`=4, `VerifiedBuild`=44730 WHERE (`entry`=170257 AND `item`=176408 AND `ExtendedCost`=6553 AND `type`=1); -- Blinding Smoke Capsules
UPDATE `npc_vendor` SET `slot`=22, `VerifiedBuild`=44730 WHERE (`entry`=170257 AND `item`=1433 AND `ExtendedCost`=6554 AND `type`=4); -- 1433
UPDATE `npc_vendor` SET `slot`=21, `VerifiedBuild`=44730 WHERE (`entry`=170257 AND `item`=1432 AND `ExtendedCost`=6554 AND `type`=4); -- 1432
UPDATE `npc_vendor` SET `slot`=16, `VerifiedBuild`=44730 WHERE (`entry`=170257 AND `item`=4 AND `ExtendedCost`=6547 AND `type`=4); -- 4
UPDATE `npc_vendor` SET `maxcount`=2, `VerifiedBuild`=44730 WHERE (`entry`=170257 AND `item`=168207 AND `ExtendedCost`=6551 AND `type`=1); -- 168207

DELETE FROM `gossip_menu` WHERE (`MenuID`=27436 AND `TextID`=43713);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(27436, 43713, 44730); -- 183179 (The Jailer's Gauntlet)


UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=49152, `unit_flags2`=2048 WHERE `entry`=185027; -- Vault Sentinel
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=185028; -- Vault Aegis
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=185024; -- Patrician Cromwell
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3218, `speed_walk`=1.60000002384185791, `speed_run`=0.571428596973419189, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=185248; -- Lord of Spires
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `HoverHeight`=6.75 WHERE `entry`=185023; -- Synod
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=185014; -- Watchers of Death
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=185013; -- Maw of the Maw
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=16, `speed_run`=0.357142865657806396, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=185021; -- Elder Longbranch
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=14, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048, `HoverHeight`=3.75 WHERE `entry`=185020; -- Dark Ascended Corrus
UPDATE `creature_template` SET `minlevel`=61, `maxlevel`=61, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=185113; -- Gorm Behemoth
UPDATE `creature_template` SET `minlevel`=61, `maxlevel`=61, `faction`=14, `speed_walk`=1.60000002384185791, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=185108; -- Karthazel
UPDATE `creature_template` SET `minlevel`=61, `maxlevel`=61, `faction`=3218, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=185119; -- Deadsoul Amalgam
UPDATE `creature_template` SET `minlevel`=61, `maxlevel`=61, `faction`=3218, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480, `dynamicflags`=4 WHERE `entry`=185435; -- Excavation Leader
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=185019; -- Arch-Suppressor Laguas
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3218, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480, `HoverHeight`=1.10000002384185791 WHERE `entry`=185228; -- Mawsworn Soulbinder
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3218, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=185232; -- Mawsworn Shackler
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3218, `speed_walk`=2.799999952316284179, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=185247; -- Tower Sentinel
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=16, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=185017; -- Writhing Soulmass
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3218, `speed_walk`=1.60000002384185791, `speed_run`=0.571428596973419189, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=185249; -- Massive Crusher
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3218, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=185212; -- Mawsworn Archer
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=175074; -- Exit Torghast
UPDATE `creature_template` SET `unit_flags3`=16777217 WHERE `entry`=172801; -- Chain
UPDATE `creature_template` SET `minlevel`=62, `maxlevel`=62, `faction`=16, `speed_walk`=1.60000002384185791, `speed_run`=0.571428596973419189, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=185011; -- Custodian Thonar
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3218, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=186484; -- Lumbering Creation
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3218, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=185233; -- Mawsworn Guard
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=3218, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=33556480 WHERE `entry`=185226; -- Flameforge Enforcer
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `speed_run`=1, `BaseAttackTime`=2000, `unit_flags`=33587200, `unit_flags2`=67141632, `unit_flags3`=16809985 WHERE `entry`=185178; -- Portal
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=14, `BaseAttackTime`=2000, `unit_flags`=33587200, `unit_flags2`=67141632, `unit_flags3`=16809985 WHERE `entry`=185160; -- Controller
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `BaseAttackTime`=2000, `unit_flags`=33587968, `unit_flags2`=2048, `unit_flags3`=16777216 WHERE `entry`=185758; -- Broker Ve'nil

UPDATE `creature_template` SET `gossip_menu_id`=27436 WHERE `entry`=183179; -- The Jailer's Gauntlet


UPDATE `quest_template` SET `VerifiedBuild`=44730 WHERE `ID` IN (50604, 60415, 60425, 65625, 65067, 50603, 50562);


UPDATE `quest_objectives` SET `VerifiedBuild`=44730 WHERE `ID` IN (336954, 398471, 398605, 398604, 398603, 398602, 398601, 398551, 398550, 423172, 422007, 336210, 336202);


UPDATE `quest_visual_effect` SET `VerifiedBuild`=44730 WHERE (`ID`=422007 AND `Index` IN (1,0));


UPDATE `creature_template` SET `VerifiedBuild`=44730 WHERE `entry` IN (181714, 177282, 175074, 178427, 177065, 175127, 186484, 156022, 185108, 156023, 63508, 185113, 183179, 185119, 170724, 173236, 184047, 185435, 185160, 184069, 185178, 165799, 185758, 185212, 170257, 178854, 185226, 185228, 185232, 185233, 171396, 185247, 185248, 185249, 175000, 175009, 172801, 175025, 175026, 175027, 175028, 175029, 173645, 156480, 185011, 185013, 185014, 185017, 185019, 151780, 185020, 185021, 185023, 185024, 173668, 185027, 185028, 171185);


UPDATE `creature_template_model` SET `VerifiedBuild`=44730 WHERE (`Idx`=1 AND `CreatureID` IN (151780,177065,178854,184069,185228,172801,185758,185160,173236)) OR (`Idx`=0 AND `CreatureID` IN (151780,63508,178427,185027,185028,177065,178854,185024,185248,185023,185014,185013,185021,185020,185113,185108,185435,184069,185119,185019,185232,185228,185247,156023,171185,171396,185017,185249,170257,185212,175074,156480,185011,186484,185233,185226,185178,185758,185160,173645,181714,170724,173236,165799,184047,175009,175029,177282,175127,175026,175027,183179,175000,175025,175028,173668)) OR (`Idx`=2 AND `CreatureID`=185228);
UPDATE `creature_template_model` SET `DisplayScale`=2, `VerifiedBuild`=44730 WHERE (`CreatureID`=156022 AND `Idx`=0); -- Bubbling Soulmass
UPDATE `creature_template_model` SET `DisplayScale`=0.5, `Probability`=0, `VerifiedBuild`=44730 WHERE (`CreatureID`=172801 AND `Idx`=0); -- Chain


UPDATE `gameobject_template` SET `VerifiedBuild`=44730 WHERE `entry` IN (368664, 368661, 368317, 368314, 367127, 368316, 369900, 368662, 368318, 368315, 348836, 348841, 353060, 356368, 353008, 355808, 353016, 352997, 353005, 353013, 353002, 355810, 352999, 353639, 353007, 353015, 353004, 355812, 353001, 355809, 356369, 353641, 353009, 353006, 353014, 353003, 355811, 353000, 330193, 368376, 368616, 368613, 369285, 368378, 368375, 368615, 368612, 365160, 368377, 368614, 368374, 369286, 368371, 368611, 324030, 350068, 348517, 324032, 325740, 338483, 324031, 365339, 338213, 340620, 349096, 349559, 364378, 326155, 357638, 364526);
UPDATE `gameobject_template` SET `name`='Invisible Blocker Collision Wall', `VerifiedBuild`=44730 WHERE `entry`=354838; -- Parede de Colisão Bloqueadora Invisível


UPDATE `playerchoice_response` SET `ResponseIdentifier`=71, `ChoiceArtFileId`=627487, `Header`='Obleron Ephemera', `Description`='$294602s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=70, `ChoiceArtFileId`=651097, `Header`='Curious Miasma', `Description`='$295965s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=69, `ChoiceArtFileId`=3743737, `Header`='Unstable Phantasma Lure', `Description`='$316850s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=68, `ChoiceArtFileId`=236300, `Header`='Demonic Bias', `Description`='$331447s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=67, `ChoiceArtFileId`=463882, `Header`='Strigidium', `Description`='$325887s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=588 AND `ResponseId`=0 AND `Index`=2);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=66, `ChoiceArtFileId`=1305154, `Header`='Darkest Hour', `Description`='$331493s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=588 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=65, `ChoiceArtFileId`=538570, `Header`='Obleron Armaments', `Description`='$362182s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=588 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=64, `ChoiceArtFileId`=134811, `Header`='Phial of Light', `Description`='$325800s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=63, `ChoiceArtFileId`=3743737, `Header`='Satchel of Phantasma', `Description`='$295073s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=62, `ChoiceArtFileId`=1016815, `Header`='Obleron Talisman', `Description`='$294597s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=61, `ChoiceArtFileId`=133802, `Header`='Flail of Merkur', `Description`='$314236s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=60, `ChoiceArtFileId`=1305154, `Header`='Darkest Hour', `Description`='$331493s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=588 AND `ResponseId`=0 AND `Index`=2);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=59, `ChoiceArtFileId`=463882, `Header`='Strigidium', `Description`='$325887s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=588 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=58, `ChoiceArtFileId`=538570, `Header`='Obleron Armaments', `Description`='$362182s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=588 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=57, `ChoiceArtFileId`=237477, `Header`='Slayer\'s Cypher', `Description`='$313817s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=56, `ChoiceArtFileId`=651097, `Header`='Curious Miasma', `Description`='$295965s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=55, `ChoiceArtFileId`=134811, `Header`='Phial of Light', `Description`='$325800s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=54, `ChoiceArtFileId`=3004126, `Header`='Phantasmal Iris', `Description`='$322831s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=53, `ChoiceArtFileId`=2103877, `Header`='Fleetwing', `Description`='$322839s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=52, `ChoiceArtFileId`=3528444, `Header`='Orb of Replenishment', `Description`='$348545s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=51, `ChoiceArtFileId`=463882, `Header`='Strigidium', `Description`='$325887s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=588 AND `ResponseId`=0 AND `Index`=2);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=50, `ChoiceArtFileId`=1305154, `Header`='Darkest Hour', `Description`='$331493s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=588 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=49, `ChoiceArtFileId`=538570, `Header`='Obleron Armaments', `Description`='$362182s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=588 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=48, `ChoiceArtFileId`=1003587, `Header`='Protective Phantasma', `Description`='$295969s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=47, `ChoiceArtFileId`=2451604, `Header`='Slayer\'s Lesson', `Description`='$313819s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=46, `ChoiceArtFileId`=338485, `Header`='Darkglare Medallion', `Description`='$322832s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=45, `ChoiceArtFileId`=1362656, `Header`='Slayer\'s Gift', `Description`='$313818s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=44, `ChoiceArtFileId`=1266406, `Header`='Mask of the Winged Dominator', `Description`='$314237s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=43, `ChoiceArtFileId`=1723673, `Header`='Obleron Endurance', `Description`='$293025s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=42, `ChoiceArtFileId`=348535, `Header`='Potent Acid Gland', `Description`='$337928s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=2);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=41, `ChoiceArtFileId`=3065166, `Header`='Lumbering Form', `Description`='$337938s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=40, `ChoiceArtFileId`=3743737, `Header`='Satchel of Phantasma', `Description`='$295073s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=39, `ChoiceArtFileId`=136090, `Header`='Sweet Dreams', `Description`='$356506s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=38, `ChoiceArtFileId`=3743737, `Header`='Satchel of Phantasma', `Description`='$295073s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=37, `ChoiceArtFileId`=463285, `Header`='Knowledge of Mortality', `Description`='$296141s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=36, `ChoiceArtFileId`=3743737, `Header`='Satchel of Phantasma', `Description`='$295073s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=35, `ChoiceArtFileId`=3745010, `Header`='Automa Excavator', `Description`='$363878s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=2);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=34, `ChoiceArtFileId`=4038103, `Header`='Analyze Offenses', `Description`='$363888s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=33, `ChoiceArtFileId`=3743737, `Header`='Satchel of Phantasma', `Description`='$295073s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=32, `ChoiceArtFileId`=338485, `Header`='Darkglare Medallion', `Description`='$322832s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=31, `ChoiceArtFileId`=133571, `Header`='Corruption Antenna', `Description`='$305047s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=30, `ChoiceArtFileId`=463882, `Header`='Strigidium', `Description`='$325887s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=588 AND `ResponseId`=0 AND `Index`=2);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=29, `ChoiceArtFileId`=1305154, `Header`='Darkest Hour', `Description`='$331493s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=588 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=28, `ChoiceArtFileId`=1033487, `Header`='Slayer\'s Ultimatum', `Description`='$313823s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=588 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=27, `ChoiceArtFileId`=134849, `Header`='Dark Stalker\'s Draught', `Description`='$322830s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=26, `ChoiceArtFileId`=1029595, `Header`='Obleron Winds', `Description`='$294592s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=25, `ChoiceArtFileId`=2103878, `Header`='Forcewing', `Description`='$322840s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=24, `ChoiceArtFileId`=1017863, `Header`='Mark of the Ogre', `Description`='$322835s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=23, `ChoiceArtFileId`=1083389, `Header`='Felborn Pendant', `Description`='$322824s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=22, `ChoiceArtFileId`=3004126, `Header`='Phantasmal Iris', `Description`='$322831s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=21, `ChoiceArtFileId`=134849, `Header`='Dark Stalker\'s Draught', `Description`='$322830s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=588 AND `ResponseId`=0 AND `Index`=2);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=20, `ChoiceArtFileId`=463882, `Header`='Strigidium', `Description`='$325887s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=588 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=19, `ChoiceArtFileId`=2103916, `Header`='Furywing', `Description`='$322841s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=588 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=18, `ChoiceArtFileId`=1723673, `Header`='Obleron Endurance', `Description`='$293025s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=17, `ChoiceArtFileId`=895885, `Header`='Cadaverous Eye', `Description`='$322837s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=16, `ChoiceArtFileId`=3528444, `Header`='Orb of Replenishment', `Description`='$348545s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=611 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=15, `ChoiceArtFileId`=2141734, `Header`='Bloodgorged Leech', `Description`='$348511s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=14, `ChoiceArtFileId`=134382, `Header`='Immolation Flux', `Description`='$322848s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ChoiceArtFileId`=1305154, `Header`='Darkest Hour', `Description`='$331493s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=588 AND `ResponseId`=0 AND `Index`=2);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=12, `ChoiceArtFileId`=895885, `Header`='Cadaverous Eye', `Description`='$322837s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=588 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=11, `ChoiceArtFileId`=135663, `Header`='Heart-Piercing Spine', `Description`='$322845s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=588 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=10, `ChoiceArtFileId`=2141734, `Header`='Bloodgorged Leech', `Description`='$348511s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=9, `ChoiceArtFileId`=134382, `Header`='Immolation Flux', `Description`='$322848s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=573 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=8, `ChoiceArtFileId`=2141734, `Header`='Bloodgorged Leech', `Description`='$348511s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=611 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=7, `ChoiceArtFileId`=1016815, `Header`='Obleron Talisman', `Description`='$294597s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=611 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=6, `ChoiceArtFileId`=135798, `Header`='Felborn Torch', `Description`='$322825s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=611 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=5, `ChoiceArtFileId`=1392554, `Header`='Fallen Comrade\'s Blindfold', `Description`='$332691s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=611 AND `ResponseId`=0 AND `Index`=0);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=4, `ChoiceArtFileId`=135435, `Header`='Grim Tinder', `Description`='$322847s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=611 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ChoiceArtFileId`=1391740, `Header`='Shifting Signet', `Description`='$322836s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=611 AND `ResponseId`=0 AND `Index`=0) OR (`ChoiceId`=611 AND `ResponseId`=0 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=1, `ChoiceArtFileId`=2060145, `Header`='Sacrificial Soul-Ash', `Description`='$314240s', `VerifiedBuild`=44730 WHERE (`ChoiceId`=611 AND `ResponseId`=0 AND `Index`=0);


