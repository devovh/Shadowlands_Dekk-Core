DELETE FROM `creature_equip_template` WHERE (`ID`=1 AND `CreatureID` IN (27893,168073,168033,168074,180990,58965)) OR (`ID`=2 AND `CreatureID`=17252);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(27893, 1, 128403, 30, 0, 0, 0, 0, 0, 0, 0, 46313), -- Rune Weapon
(168073, 1, 132465, 0, 0, 92498, 0, 0, 0, 0, 0, 46313), -- Fallen Monk
(168033, 1, 132465, 0, 0, 92498, 0, 0, 0, 0, 0, 46313), -- Fallen Monk
(168074, 1, 132465, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Fallen Monk
(180990, 1, 185436, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- The Jailer
(58965, 1, 12784, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- Wrathguard
(17252, 2, 12784, 0, 0, 0, 0, 0, 0, 0, 0, 46313); -- Felguard


DELETE FROM `areatrigger_template` WHERE (`IsServerSide`=0 AND `Id` IN (30064,30889,28415,29907,28981,28908,27999,28849));
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(30064, 0, 1, 0, 4, 4, 7.5, 4, 4, 7.5, 0, 0, 46313),
(30889, 0, 0, 0, 8, 8, 0, 0, 0, 0, 0, 0, 46313),
(28415, 0, 0, 4, 30, 30, 0, 0, 0, 0, 0, 0, 46313),
(29907, 0, 0, 66, 3, 3, 0, 0, 0, 0, 0, 0, 46313),
(28981, 0, 0, 2, 9, 9, 0, 0, 0, 0, 0, 0, 46313),
(28908, 0, 0, 4, 300, 300, 0, 0, 0, 0, 0, 0, 46313),
(27999, 0, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 46313),
(28849, 0, 0, 0, 200, 200, 0, 0, 0, 0, 0, 0, 46313);


UPDATE `areatrigger_template` SET `VerifiedBuild`=46313 WHERE (`IsServerSide`=0 AND `Id` IN (25543,23951,2947,26234,11420,23820,28773,10133,26038,6211,8089,22173,24192,22423,22123,5302,5300,9225,28743,9482,28762,19538,28707,28763,13091,23591,6870,10801,10471,3020,11451));
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=4, `Data1`=5, `Data2`=5.300000190734863281, `Data3`=5.300000190734863281, `Data4`=0.300000011920928955, `Data5`=0.300000011920928955, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=6, `VerifiedBuild`=46313 WHERE (`Id`=10471 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=4, `Data1`=5, `Data2`=5.300000190734863281, `Data3`=5.300000190734863281, `Data4`=0.300000011920928955, `Data5`=0.300000011920928955, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=4, `Data1`=5, `Data2`=5.300000190734863281, `Data3`=5.300000190734863281, `Data4`=0.300000011920928955, `Data5`=0.300000011920928955, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=4, `Data1`=5, `Data2`=5.300000190734863281, `Data3`=5.300000190734863281, `Data4`=0.300000011920928955, `Data5`=0.300000011920928955, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=4, `Data1`=5, `Data2`=5.300000190734863281, `Data3`=5.300000190734863281, `Data4`=0.300000011920928955, `Data5`=0.300000011920928955, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=4, `Data1`=5, `Data2`=5.300000190734863281, `Data3`=5.300000190734863281, `Data4`=0.300000011920928955, `Data5`=0.300000011920928955, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=4, `Data1`=5, `Data2`=5.300000190734863281, `Data3`=5.300000190734863281, `Data4`=0.300000011920928955, `Data5`=0.300000011920928955, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Data1`=5, `Data4`=5, `VerifiedBuild`=46313 WHERE (`Id`=24192 AND `IsServerSide`=0);

DELETE FROM `areatrigger_create_properties` WHERE `Id` IN (24786 /*SpellId : 368208*/, 2147860898 /*SpellId : 377250 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)*/, 2147860891 /*SpellId : 377243 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)*/, 2147873811 /*SpellId : 390163 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)*/, 24349 /*SpellId : 365219*/, 2147871847 /*SpellId : 388199 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)*/, 2147871843 /*SpellId : 388195 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)*/, 2147871852 /*SpellId : 388204 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)*/, 2147871853 /*SpellId : 388205 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)*/, 2147859540 /*SpellId : 375892 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)*/, 24903 /*SpellId : 365170*/, 24944 /*SpellId : 363332*/, 23808 /*SpellId : 360379*/, 2147871845 /*SpellId : 388197 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)*/, 24878 /*SpellId : 359809*/);
INSERT INTO `areatrigger_create_properties` (`Id`, `AreaTriggerId`, `MoveCurveId`, `ScaleCurveId`, `MorphCurveId`, `FacingCurveId`, `AnimId`, `AnimKitId`, `DecalPropertiesId`, `TimeToTarget`, `TimeToTargetScale`, `Shape`, `ShapeData0`, `ShapeData1`, `ShapeData2`, `ShapeData3`, `ShapeData4`, `ShapeData5`, `ShapeData6`, `ShapeData7`, `VerifiedBuild`) VALUES
(24786, 28773, 0, 0, 0, 0, -1, 0, 0, 10000, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 46313), -- SpellId : 368208
(2147860898, 6197, 0, 0, 0, 0, -1, 0, 506, 1000, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 46313), -- SpellId : 377250 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
(2147860891, 30064, 0, 0, 0, 0, -1, 0, 0, 10000, 0, 1, 4, 4, 7.5, 4, 4, 7.5, 0, 0, 46313), -- SpellId : 377243 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
(2147873811, 30889, 0, 0, 0, 0, -1, 0, 0, 2000, 0, 0, 8, 8, 0, 0, 0, 0, 0, 0, 46313), -- SpellId : 390163 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
(24349, 28415, 0, 0, 0, 0, -1, 0, 0, 40000, 0, 0, 30, 30, 0, 0, 0, 0, 0, 0, 46313), -- SpellId : 365219
(2147871847, 24192, 0, 0, 0, 0, -1, 0, 0, 30000, 0, 1, 5, 5, 2.5, 5, 5, 2.5, 0, 0, 46313), -- SpellId : 388199 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
(2147871843, 24192, 0, 0, 0, 0, -1, 0, 0, 30000, 0, 1, 5, 4, 2.5, 5, 4, 2.5, 0, 0, 46313), -- SpellId : 388195 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
(2147871852, 24192, 0, 0, 0, 0, -1, 0, 0, 30000, 0, 4, 5, 5, 5.300000190734863281, 5.300000190734863281, 0.300000011920928955, 0.300000011920928955, 0, 0, 46313), -- SpellId : 388204 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
(2147871853, 24192, 0, 0, 0, 0, -1, 0, 0, 30000, 0, 1, 5, 5, 2.5, 5, 5, 2.5, 0, 0, 46313), -- SpellId : 388205 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
(2147859540, 29907, 0, 0, 0, 0, -1, 0, 0, 10000, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 46313), -- SpellId : 375892 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
(24903, 28981, 0, 33537, 0, 0, -1, 0, 484, 60000, 0, 0, 9, 9, 0, 0, 0, 0, 0, 0, 46313), -- SpellId : 365170
(24944, 28908, 0, 0, 0, 0, -1, 0, 0, 15000, 0, 0, 300, 300, 0, 0, 0, 0, 0, 0, 46313), -- SpellId : 363332
(23808, 27999, 0, 0, 0, 0, -1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 46313), -- SpellId : 360379
(2147871845, 24192, 0, 0, 0, 0, -1, 0, 0, 30000, 0, 4, 5, 5, 5.300000190734863281, 5.300000190734863281, 0.300000011920928955, 0.300000011920928955, 0, 0, 46313), -- SpellId : 388197 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
(24878, 28849, 0, 0, 0, 0, -1, 0, 0, 6000, 0, 0, 200, 200, 0, 0, 0, 0, 0, 0, 46313); -- SpellId : 359809

UPDATE `areatrigger_create_properties` SET `TimeToTarget`=600000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=7363; -- SpellId : 215312
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 342130
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=46313 WHERE `Id`=20004;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=600000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=7363; -- SpellId : 215312
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6039; -- SpellId : 204596
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=5324, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=5420; -- SpellId : 5740
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=23044; -- SpellId : 352916
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21260; -- SpellId : 336808
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 116011
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21827; -- SpellId : 342761
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `VerifiedBuild`=46313 WHERE `Id`=22027; -- SpellId : 345019
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8500, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=1712; -- SpellId : 175396
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=3467; -- SpellId : 177345
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=18036; -- SpellId : 308495
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 116011
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 342130
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 342130
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8500, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=1712; -- SpellId : 175396
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 116011
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147791602; -- SpellId : 307954 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=22123, `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147791602; -- SpellId : 307954 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21260; -- SpellId : 336808
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21260; -- SpellId : 336808
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=3467; -- SpellId : 177345
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=5300, `MoveCurveId`=392, `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21827; -- SpellId : 342761
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=46313 WHERE `Id`=5760;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6039; -- SpellId : 204596
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4485; -- SpellId : 43265
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 342130
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=9000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24751; -- SpellId : 369068
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=11000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24751; -- SpellId : 369069
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24751; -- SpellId : 369070
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 116011
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24391; -- SpellId : 365455
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6039; -- SpellId : 204596
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=5300, `MoveCurveId`=392, `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24773; -- SpellId : 369294
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12954, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=13821, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=13921, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15484, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15567, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15634, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15855, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15904, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=16193, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=16253, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=16752, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21260; -- SpellId : 336808
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=17153, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=17206, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=17318, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=17677, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24765; -- SpellId : 369287
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=17777, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=17879, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=18004, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=18042, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=18434, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=18892, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=19000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=19398, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=19563, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8500, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=1712; -- SpellId : 175396
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=19602, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=19700, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=19743, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=20000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=3467; -- SpellId : 177345
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147791602; -- SpellId : 307954 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=22123, `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147791602; -- SpellId : 307954 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6039; -- SpellId : 204596
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 342130
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=18036; -- SpellId : 308495
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4485; -- SpellId : 43265
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 116011
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=46313 WHERE `Id`=5760;
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21260; -- SpellId : 336808
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=5300, `MoveCurveId`=392, `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=9999, `VerifiedBuild`=46313 WHERE `Id`=22027; -- SpellId : 345019
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2968, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=5420; -- SpellId : 5740
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8500, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=1712; -- SpellId : 175396
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21827; -- SpellId : 342761
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=3467; -- SpellId : 177345
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24391; -- SpellId : 365455
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4485; -- SpellId : 43265
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24391; -- SpellId : 365455
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8500, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=1712; -- SpellId : 175396
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 342130
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=3467; -- SpellId : 177345
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21260; -- SpellId : 336808
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6039; -- SpellId : 204596
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24391; -- SpellId : 365455
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=9049; -- SpellId : 145205
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19619; -- SpellId : 321792
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=23044; -- SpellId : 352916
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=24000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21827; -- SpellId : 342761
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6039; -- SpellId : 204596
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24391; -- SpellId : 365455
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24391; -- SpellId : 365455
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24391; -- SpellId : 365455
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=22123, `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147791602; -- SpellId : 307954 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=60000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2329; -- SpellId : 161642
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147791602; -- SpellId : 307954 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=5300, `MoveCurveId`=392, `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4485; -- SpellId : 43265
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=18036; -- SpellId : 308495
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21260; -- SpellId : 336808
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=46313 WHERE `Id`=5760;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 116011
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 342130
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6039; -- SpellId : 204596
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 116011
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21827; -- SpellId : 342761
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4485; -- SpellId : 43265
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8500, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=1712; -- SpellId : 175396
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=9049; -- SpellId : 145205
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=3467; -- SpellId : 177345
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=5300, `MoveCurveId`=392, `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8500, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=1712; -- SpellId : 175396
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6039; -- SpellId : 204596
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=23044; -- SpellId : 352916
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=3467; -- SpellId : 177345
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24773; -- SpellId : 369294
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=24000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21827; -- SpellId : 342761
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19619; -- SpellId : 321792
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=9049; -- SpellId : 145205
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `VerifiedBuild`=46313 WHERE `Id`=22027; -- SpellId : 345019
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6039; -- SpellId : 204596
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24765; -- SpellId : 369287
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=5857, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=5420; -- SpellId : 5740
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 342130
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=60000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2329; -- SpellId : 161642
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=4547, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=5420; -- SpellId : 5740
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 116011
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21827; -- SpellId : 342761
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=5300, `MoveCurveId`=392, `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=46313 WHERE `Id`=5760;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=9049; -- SpellId : 145205
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8500, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=1712; -- SpellId : 175396
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4485; -- SpellId : 43265
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=3467; -- SpellId : 177345
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=7999, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 342130
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=726, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1133, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1217, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1566, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8500, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=1712; -- SpellId : 175396
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2651, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2692, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3411, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3487, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3743, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3805, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=3467; -- SpellId : 177345
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6039; -- SpellId : 204596
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 342130
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6039; -- SpellId : 204596
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8497, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8508, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8555, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=9330, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=9676, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=5300, `MoveCurveId`=392, `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21827; -- SpellId : 342761
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10679, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10729, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10766, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10805, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=11797, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=11850, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24391; -- SpellId : 365455
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12824, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12924, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12966, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=13865, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=13931, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21260; -- SpellId : 336808
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=14787, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=14830, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=14981, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15558, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15908, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=17096, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=17149, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=17177, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=17219, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=18204, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=19020, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=19079, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=19214, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=19266, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=19921, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=20000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=60000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2329; -- SpellId : 161642
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=9049; -- SpellId : 145205
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24391; -- SpellId : 365455
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=7999, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=23044; -- SpellId : 352916
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4485; -- SpellId : 43265
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=24000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21827; -- SpellId : 342761
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24391; -- SpellId : 365455
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6039; -- SpellId : 204596
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8500, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=1712; -- SpellId : 175396
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=3467; -- SpellId : 177345
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `VerifiedBuild`=46313 WHERE `Id`=22027; -- SpellId : 345019
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=20000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=20456; -- SpellId : 328913
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=9049; -- SpellId : 145205
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=20000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=20456; -- SpellId : 328913
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21260; -- SpellId : 336808
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=20000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=20456; -- SpellId : 328913
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=5300, `MoveCurveId`=392, `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=18036; -- SpellId : 308495
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=7999, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4485; -- SpellId : 43265
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=9000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24751; -- SpellId : 369068
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=6343, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=11000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24751; -- SpellId : 369069
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8500, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=1712; -- SpellId : 175396
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24751; -- SpellId : 369070
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24391; -- SpellId : 365455
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1656, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=9049; -- SpellId : 145205
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=3467; -- SpellId : 177345
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21827; -- SpellId : 342761
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6039; -- SpellId : 204596
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6039; -- SpellId : 204596
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=46313 WHERE `Id`=5760;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6122; -- SpellId : 205470
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=5300, `MoveCurveId`=392, `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=6612, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 116011
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21827; -- SpellId : 342761
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=9049; -- SpellId : 145205
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1373, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 342130
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6122; -- SpellId : 205470
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21260; -- SpellId : 336808
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=9049; -- SpellId : 145205
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 342130
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 116011
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 342130
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6039; -- SpellId : 204596
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=24000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21827; -- SpellId : 342761
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24391; -- SpellId : 365455
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=7999, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4485; -- SpellId : 43265
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=5300, `MoveCurveId`=392, `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=23044; -- SpellId : 352916
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21260; -- SpellId : 336808
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `VerifiedBuild`=46313 WHERE `Id`=22027; -- SpellId : 345019
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24391; -- SpellId : 365455
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 116011
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=4547, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=5420; -- SpellId : 5740
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=46313 WHERE `Id`=5760;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=9049; -- SpellId : 145205
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6039; -- SpellId : 204596
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6039; -- SpellId : 204596
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4485; -- SpellId : 43265
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=18036; -- SpellId : 308495
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8500, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=1712; -- SpellId : 175396
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=3467; -- SpellId : 177345
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=600000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=337; -- SpellId : 158624
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=20000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=20456; -- SpellId : 328913
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=20000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=20456; -- SpellId : 328913
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=20000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=20456; -- SpellId : 328913
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21827; -- SpellId : 342761
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6039; -- SpellId : 204596
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 116011
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 342130
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=7673, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=312, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=5300, `MoveCurveId`=392, `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6039; -- SpellId : 204596
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=9049; -- SpellId : 145205
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4485; -- SpellId : 43265
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=7163, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=832, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 342130
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 342130
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=9049; -- SpellId : 145205
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=208, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=326, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=377, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2643, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2983, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3337, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=7999, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=9049; -- SpellId : 145205
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=46313 WHERE `Id`=5760;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=4120, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=4157, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=5240, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=5695, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=5760, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=9760, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=9815, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10390, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10749, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=11396, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=11965, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=9049; -- SpellId : 145205
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=13001, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=13056, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=13833, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=5300, `MoveCurveId`=392, `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=17223, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=17278, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=17658, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=17937, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=18547, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=18900, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=19884, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=19935, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=19975, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24704; -- SpellId : 367931
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21260; -- SpellId : 336808
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=24000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21827; -- SpellId : 342761
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=2000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6039; -- SpellId : 204596
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 116011
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2148; -- SpellId : 110744
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21260; -- SpellId : 336808
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4485; -- SpellId : 43265
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=23044; -- SpellId : 352916
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21827; -- SpellId : 342761
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4485; -- SpellId : 43265
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=21827; -- SpellId : 342761
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 116011
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=9000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24751; -- SpellId : 369068
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=11000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24751; -- SpellId : 369069
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8500, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=1712; -- SpellId : 175396
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24773; -- SpellId : 369294
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24751; -- SpellId : 369070
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24391; -- SpellId : 365455
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=3000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=3467; -- SpellId : 177345
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=5300, `MoveCurveId`=392, `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=2147607634; -- SpellId : 123986 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=7999, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24765; -- SpellId : 369287
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=22067; -- SpellId : 345496
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19619; -- SpellId : 321792
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=24391; -- SpellId : 365455
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=4756; -- SpellId : 191034
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `VerifiedBuild`=46313 WHERE `Id`=22027; -- SpellId : 345019
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46313 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 342130
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=19863; -- SpellId : 324183
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=9049; -- SpellId : 145205
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=304; -- SpellId : 342130
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=25543, `ShapeData0`=2, `ShapeData1`=2, `VerifiedBuild`=46313 WHERE `Id`=2147483648; -- SpellId : 0 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=314; -- SpellId : 102793
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=5000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6951; -- SpellId : 212182
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6122; -- SpellId : 205470
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46313 WHERE `Id`=6122; -- SpellId : 205470

DELETE FROM `areatrigger_create_properties_polygon_vertex` WHERE (`AreaTriggerCreatePropertiesId`=23808 AND `Idx` IN (5,4,3,2,1,0));
INSERT INTO `areatrigger_create_properties_polygon_vertex` (`AreaTriggerCreatePropertiesId`, `Idx`, `VerticeX`, `VerticeY`, `VerticeTargetX`, `VerticeTargetY`, `VerifiedBuild`) VALUES
(23808, 5, 10.8349609375, 18.80517578125, NULL, NULL, 46313), -- SpellId : 360379
(23808, 4, 22.17529296875, 1.3125, NULL, NULL, 46313), -- SpellId : 360379
(23808, 3, 11.78466796875, -18.359375, NULL, NULL, 46313), -- SpellId : 360379
(23808, 2, -10.0673828125, -19.69970703125, NULL, NULL, 46313), -- SpellId : 360379
(23808, 1, -21.86279296875, -1.189453125, NULL, NULL, 46313), -- SpellId : 360379
(23808, 0, -11.904296875, 18.82958984375, NULL, NULL, 46313); -- SpellId : 360379

DELETE FROM `creature_model_info` WHERE `DisplayID` IN (109709, 106690);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `VerifiedBuild`) VALUES
(109709, 0.382999986410140991, 1.5, 0, 46313),
(106690, 0.207120239734649658, 0.259999990463256835, 0, 46313);


DELETE FROM `conversation_actors` WHERE (`ConversationId`=16640 AND `Idx`=0);
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `Idx`, `CreatureId`, `CreatureDisplayInfoId`, `NoActorObject`, `ActivePlayerObject`, `VerifiedBuild`) VALUES
(16640, 71881, 0, 161907, 96443, 0, 0, 46340);


DELETE FROM `conversation_line_template` WHERE `Id`=41957;
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(41957, 1372, 0, 0, 46340);


DELETE FROM `conversation_template` WHERE `Id`=16640;
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `TextureKitId`, `VerifiedBuild`) VALUES
(16640, 41957, 0, 46340);


DELETE FROM `creature_equip_template` WHERE (`CreatureID`=69792 AND `ID`=2) OR (`CreatureID`=167370 AND `ID`=1);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(69792, 2, 82220, 0, 0, 82220, 0, 0, 0, 0, 0, 46455), -- Earth Spirit
(167370, 1, 171132, 0, 0, 0, 0, 0, 0, 0, 0, 46455); -- Kyrian Aspirant


UPDATE `areatrigger_template` SET `VerifiedBuild`=46455 WHERE (`IsServerSide`=0 AND `Id` IN (3921,9225,23299,23297,26033,3319,26045,19538,10133,11420));
UPDATE `areatrigger_template` SET `Flags`=2, `Data0`=4, `VerifiedBuild`=46455 WHERE (`Id`=11266 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `VerifiedBuild`=46455 WHERE (`IsServerSide`=0 AND `Id` IN (10665,7020,24310,12929,22573));
UPDATE `areatrigger_template` SET `Flags`=2, `Data0`=4, `VerifiedBuild`=46455 WHERE (`Id`=11266 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=4, `Data1`=4, `VerifiedBuild`=46455 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=4, `Data1`=4, `VerifiedBuild`=46455 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=4, `Data1`=4, `VerifiedBuild`=46455 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=4, `Data1`=4, `VerifiedBuild`=46455 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=4, `Data1`=4, `VerifiedBuild`=46455 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=4, `Data1`=4, `VerifiedBuild`=46455 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=4, `Data1`=4, `VerifiedBuild`=46455 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=4, `Data1`=4, `VerifiedBuild`=46455 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=4, `Data1`=4, `VerifiedBuild`=46455 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=4, `Data1`=4, `VerifiedBuild`=46455 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=4, `Data1`=4, `VerifiedBuild`=46455 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=4, `Data1`=4, `VerifiedBuild`=46455 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=4, `Data1`=4, `VerifiedBuild`=46455 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=4, `Data1`=4, `VerifiedBuild`=46455 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=4, `Data1`=4, `VerifiedBuild`=46455 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=4, `Data1`=4, `VerifiedBuild`=46455 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Data0`=4, `Data1`=4, `VerifiedBuild`=46455 WHERE (`Id`=6197 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Flags`=0, `VerifiedBuild`=46455 WHERE (`Id`=9228 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Flags`=0, `Data0`=3, `Data1`=3, `Data2`=0, `Data3`=0, `Data5`=0, `VerifiedBuild`=46455 WHERE (`Id`=10698 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=2, `Data0`=4, `VerifiedBuild`=46455 WHERE (`Id`=11266 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Flags`=24, `Data0`=8, `Data1`=8, `Data2`=0, `Data3`=0, `Data5`=0, `VerifiedBuild`=46455 WHERE (`Id`=9110 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Flags`=0, `Data0`=3, `Data1`=3, `Data2`=0, `Data3`=0, `Data5`=0, `VerifiedBuild`=46455 WHERE (`Id`=10698 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Flags`=24, `Data0`=8, `Data1`=8, `Data2`=0, `Data3`=0, `Data5`=0, `VerifiedBuild`=46455 WHERE (`Id`=9110 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Flags`=0, `Data0`=3, `Data1`=3, `Data2`=0, `Data3`=0, `Data5`=0, `VerifiedBuild`=46455 WHERE (`Id`=10698 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Flags`=0, `Data0`=3, `Data1`=3, `Data2`=0, `Data3`=0, `Data5`=0, `VerifiedBuild`=46455 WHERE (`Id`=10698 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Flags`=0, `Data0`=3, `Data1`=3, `Data2`=0, `Data3`=0, `Data5`=0, `VerifiedBuild`=46455 WHERE (`Id`=10698 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Flags`=0, `Data0`=3, `Data1`=3, `Data2`=0, `Data3`=0, `Data5`=0, `VerifiedBuild`=46455 WHERE (`Id`=10698 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Flags`=0, `Data0`=3, `Data1`=3, `Data2`=0, `Data3`=0, `Data5`=0, `VerifiedBuild`=46455 WHERE (`Id`=10698 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Flags`=0, `Data0`=3, `Data1`=3, `Data2`=0, `Data3`=0, `Data5`=0, `VerifiedBuild`=46455 WHERE (`Id`=10698 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Flags`=0, `Data0`=3, `Data1`=3, `Data2`=0, `Data3`=0, `Data5`=0, `VerifiedBuild`=46455 WHERE (`Id`=10698 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Flags`=0, `Data0`=3, `Data1`=3, `Data2`=0, `Data3`=0, `Data5`=0, `VerifiedBuild`=46455 WHERE (`Id`=10698 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Type`=0, `Flags`=0, `Data0`=3, `Data1`=3, `Data2`=0, `Data3`=0, `Data5`=0, `VerifiedBuild`=46455 WHERE (`Id`=10698 AND `IsServerSide`=0);


UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=4485; -- SpellId : 43265
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23299, `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=2147802881; -- SpellId : 319233 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=2147802881; -- SpellId : 319233 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23299, `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=2147802881; -- SpellId : 319233 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=2147802881; -- SpellId : 319233 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=20000, `TimeToTargetScale`=0, `ShapeData0`=4, `VerifiedBuild`=46455 WHERE `Id`=6710; -- SpellId : 203795
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=20000, `TimeToTargetScale`=0, `ShapeData0`=4, `ShapeData1`=4, `VerifiedBuild`=46455 WHERE `Id`=5977; -- SpellId : 204255
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=20000, `TimeToTargetScale`=0, `ShapeData0`=4, `ShapeData1`=4, `VerifiedBuild`=46455 WHERE `Id`=5977; -- SpellId : 204255
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=20000, `TimeToTargetScale`=0, `ShapeData0`=4, `ShapeData1`=4, `VerifiedBuild`=46455 WHERE `Id`=5977; -- SpellId : 204255
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=120000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=2442; -- SpellId : 163271
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=383; -- SpellId : 117032
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=383; -- SpellId : 117032
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=20000, `TimeToTargetScale`=0, `ShapeData0`=4, `VerifiedBuild`=46455 WHERE `Id`=6710; -- SpellId : 203795
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=20000, `TimeToTargetScale`=0, `ShapeData0`=4, `ShapeData1`=4, `VerifiedBuild`=46455 WHERE `Id`=5977; -- SpellId : 204255
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=20000, `TimeToTargetScale`=0, `ShapeData0`=4, `ShapeData1`=4, `VerifiedBuild`=46455 WHERE `Id`=5977; -- SpellId : 204255
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=20000, `TimeToTargetScale`=0, `ShapeData0`=4, `ShapeData1`=4, `VerifiedBuild`=46455 WHERE `Id`=5977; -- SpellId : 204255
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=20000, `TimeToTargetScale`=0, `ShapeData0`=4, `ShapeData1`=4, `VerifiedBuild`=46455 WHERE `Id`=5977; -- SpellId : 204255
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=21835; -- SpellId : 342878
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=20410; -- SpellId : 328837
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=14881; -- SpellId : 279302
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=1000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=8430; -- SpellId : 279306
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46455 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46455 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=8867; -- SpellId : 228537
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=6006; -- SpellId : 204019
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46455 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=4485; -- SpellId : 43265
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=7398, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=5420; -- SpellId : 5740
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=20000, `TimeToTargetScale`=0, `ShapeData0`=4, `VerifiedBuild`=46455 WHERE `Id`=6710; -- SpellId : 203795
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=18501; -- SpellId : 312695
UPDATE `areatrigger_create_properties` SET `VerifiedBuild`=46455 WHERE `Id`=21822;
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=6919, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=5420; -- SpellId : 5740
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=4485; -- SpellId : 43265
UPDATE `areatrigger_create_properties` SET `AreaTriggerId`=23299, `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=2147802881; -- SpellId : 319233 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=15000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=2147802881; -- SpellId : 319233 CANNOT FIND PROPERTIES ID, USED SPELL ID AS KEY (NEEDS MANUAL CORRECTION)
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=6006; -- SpellId : 204019
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46455 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=6006; -- SpellId : 204019
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=6006; -- SpellId : 204019
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46455 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=6006; -- SpellId : 204019
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=6006; -- SpellId : 204019
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=6006; -- SpellId : 204019
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=6006; -- SpellId : 204019
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=6006; -- SpellId : 204019
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46455 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=6006; -- SpellId : 204019
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=12000, `VerifiedBuild`=46455 WHERE `Id`=4488; -- SpellId : 26573
UPDATE `areatrigger_create_properties` SET `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=6006; -- SpellId : 204019
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=7398, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=5420; -- SpellId : 5740
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=8000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=6917; -- SpellId : 196770
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=18501; -- SpellId : 312695
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=10000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=4485; -- SpellId : 43265
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=18501; -- SpellId : 312695
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=18501; -- SpellId : 312695
UPDATE `areatrigger_create_properties` SET `TimeToTarget`=30000, `TimeToTargetScale`=0, `VerifiedBuild`=46455 WHERE `Id`=18501; -- SpellId : 312695


UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.99998950958251953, `Y`=-0.00013605995627585, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=21835 AND `Idx` IN (30,29)); -- SpellId : 342878
UPDATE `areatrigger_create_properties_spline_point` SET `X`=14.46413326263427734, `Y`=0.000047280896978918, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=21835 AND `Idx`=28); -- SpellId : 342878
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=21835 AND `Idx` IN (27,23,19,18,9)); -- SpellId : 342878
UPDATE `areatrigger_create_properties_spline_point` SET `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=21835 AND `Idx` IN (26,25,17,16,15,8,7,6,5,4,3,2,1,0)) OR (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (2,4));
UPDATE `areatrigger_create_properties_spline_point` SET `X`=12.32140064239501953, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=21835 AND `Idx`=24); -- SpellId : 342878
UPDATE `areatrigger_create_properties_spline_point` SET `X`=11.25003433227539062, `Y`=0.000113842826976906, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=21835 AND `Idx`=22); -- SpellId : 342878
UPDATE `areatrigger_create_properties_spline_point` SET `X`=10.71435260772705078, `Y`=-0.00022032963170204, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=21835 AND `Idx`=21); -- SpellId : 342878
UPDATE `areatrigger_create_properties_spline_point` SET `X`=10.17849636077880859, `Y`=-0.0000369887893612, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=21835 AND `Idx`=20); -- SpellId : 342878
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.964397430419921875, `Y`=0.000029573140636784, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=21835 AND `Idx`=14); -- SpellId : 342878
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.428369522094726562, `Y`=0.000039895065128803, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=21835 AND `Idx`=13); -- SpellId : 342878
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.892859458923339843, `Y`=-0.00012125847570132, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=21835 AND `Idx`=12); -- SpellId : 342878
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.357003211975097656, `Y`=0.000062082377553451, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=21835 AND `Idx`=11); -- SpellId : 342878
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.821493148803710937, `Y`=-0.00009907116327667, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=21835 AND `Idx`=10); -- SpellId : 342878
UPDATE `areatrigger_create_properties_spline_point` SET `X`=30.58966064453125, `Y`=-0.01907688006758689, `Z`=0.28466796875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (15,14)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=27.58972740173339843, `Y`=-0.01893753372132778, `Z`=-0.03125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=13); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=24.58965873718261718, `Y`=-0.01926771737635135, `Z`=0.14404296875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=12); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=21.58972549438476562, `Y`=-0.01912837289273738, `Z`=1.0419921875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=11); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=18.58979225158691406, `Y`=-0.01898902654647827, `Z`=0.013671875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=10); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=15.58972549438476562, `Y`=-0.01931921020150184, `Z`=0.09130859375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=9); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=12.58979225158691406, `Y`=-0.01917986571788787, `Z`=0.16015625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=8); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=9.5898590087890625, `Y`=-0.01904051937162876, `Z`=0.05517578125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=7); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.589925289154052734, `Y`=-0.01890117488801479, `Z`=-0.01416015625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=6); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.231338024139404296, `Y`=-0.33536526560783386, `Z`=0.43212890625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=5); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.589689671993255615, `Y`=-0.01902500540018081, `Z`=0.00830078125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=4); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.41024374961853027, `Y`=-0.01888565905392169, `Z`=0.13916015625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=3); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-5.41031122207641601, `Y`=-0.01921584457159042, `Z`=0.11328125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx`=2); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-8.41024494171142578, `Y`=-0.0190764982253313, `Z`=-0.06591796875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=14881 AND `Idx` IN (1,0)); -- SpellId : 279302
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (28,27,25,22,21,19,18,17,15,14,10,9,8,7,6,5,4,3,26)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.05224609375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=26); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=1.67919921875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=24); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.2958984375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=23); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.37548828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=20); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.723095417022705078, `Y`=-3.91416430473327636, `Z`=1.421875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=16); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.5, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=13); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.7080078125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=12); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.61572265625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=11); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0, `Y`=-0, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (1,0)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-10.0718955993652343, `Y`=0.19528663158416748, `Z`=0.5556640625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (28,27)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-6.80378437042236328, `Y`=-6.74712276458740234, `Z`=3.484375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=26); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.138439998030662536, `Y`=-9.22954368591308593, `Z`=2.498046875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=25); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.524881839752197265, `Y`=-6.19155645370483398, `Z`=0.26123046875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=24); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.777592658996582031, `Y`=0.194954678416252136, `Z`=-0.39013671875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=23); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.969593524932861328, `Y`=6.026641368865966796, `Z`=-0.43505859375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=22); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.138090297579765319, `Y`=8.048925399780273437, `Z`=-1.5625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=21); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-5.13775253295898437, `Y`=5.470839500427246093, `Z`=-2.25146484375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=20); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-6.93020296096801757, `Y`=0.195260196924209594, `Z`=0.54931640625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=19); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-4.58231544494628906, `Y`=-4.52570390701293945, `Z`=2.359375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=18); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.138218879699707031, `Y`=-6.08827161788940429, `Z`=2.08251953125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=17); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.303462982177734375, `Y`=-3.97008752822875976, `Z`=0.57177734375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=16); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.635900020599365234, `Y`=0.194981127977371215, `Z`=-0.18505859375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=15); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.748335123062133789, `Y`=3.805099010467529296, `Z`=-0.6337890625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=14); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.138311415910720825, `Y`=4.907653331756591796, `Z`=-1.46337890625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=13); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.91608619689941406, `Y`=3.249791622161865234, `Z`=-1.267578125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=12); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.78851008415222167, `Y`=0.195233747363090515, `Z`=0.2744140625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=11); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.36105704307556152, `Y`=-2.30416154861450195, `Z`=1.22216796875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=10); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.13824532926082611, `Y`=-2.94657874107360839, `Z`=1.1376953125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=9); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.082044124603271484, `Y`=-1.74861860275268554, `Z`=0.36279296875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=8); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.494417667388916015, `Y`=0.194883778691291809, `Z`=-0.01416015625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=7); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.52686619758605957, `Y`=1.583680272102355957, `Z`=-0.63623046875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=6); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.138284981250762939, `Y`=1.765960454940795898, `Z`=-0.74853515625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=5); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.69466745853424072, `Y`=1.028322696685791015, `Z`=-0.34326171875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=4); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.64702767133712768, `Y`=0.195331096649169921, `Z`=0.0458984375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=3); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.13958823680877685, `Y`=-0.08274279534816741, `Z`=0.05029296875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=2); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.138271763920783996, `Y`=0.195114046335220336, `Z`=-0.08642578125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (1,0)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-10.0552787780761718, `Y`=-1.51507341861724853, `Z`=0.041015625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (28,27)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-6.786956787109375, `Y`=-8.45714473724365234, `Z`=0.041015625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=26); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.154809236526489257, `Y`=-10.9397430419921875, `Z`=-0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=25); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.541446685791015625, `Y`=-7.9015517234802246, `Z`=-0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=24); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.794403076171875, `Y`=-1.51507806777954101, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=23); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.986340999603271484, `Y`=4.316125392913818359, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=22); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.154939770698547363, `Y`=6.338785171508789062, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=21); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-5.1210484504699707, `Y`=3.760744571685791015, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=20); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-6.91362857818603515, `Y`=-1.51514708995819091, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=19); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-4.56560945510864257, `Y`=-6.23591995239257812, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=18); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.154991373419761657, `Y`=-7.79831218719482421, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=17); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.320111751556396484, `Y`=-5.68053150177001953, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=16); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.652753353118896484, `Y`=-1.51500439643859863, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=15); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.764774799346923828, `Y`=2.094791889190673828, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=14); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.154757633805274963, `Y`=3.197354078292846679, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=13); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.89949631690979003, `Y`=1.53928685188293457, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=12); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.77197885513305664, `Y`=-1.5152207612991333, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=11); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.34426021575927734, `Y`=-4.01414918899536132, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=10); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.154737904667854309, `Y`=-4.65655231475830078, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=9); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.098778009414672851, `Y`=-3.45896506309509277, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=8); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.511103630065917968, `Y`=-1.51493072509765625, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=7); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.543208718299865722, `Y`=-0.12654152512550354, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=6); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.155011117458343505, `Y`=0.055594194680452346, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=5); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.67794400453567504, `Y`=-0.68217086791992187, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=4); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.63032925128936767, `Y`=-1.51529443264007568, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=3); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.12269394099712371, `Y`=-1.79281556606292724, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=2); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.154920041561126708, `Y`=-1.51512122154235839, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (1,0)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-6.51686429977416992, `Y`=-1.83945906162261962, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (28,27)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.24854302406311035, `Y`=-8.78153038024902343, `Z`=0.14599609375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=26); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.693223237991333007, `Y`=-11.2641286849975585, `Z`=-0.12451171875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=25); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=10.07986068725585937, `Y`=-8.2259368896484375, `Z`=-0.12451171875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=24); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=12.33281707763671875, `Y`=-1.83946382999420166, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=23); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=9.524755477905273437, `Y`=3.991739749908447265, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=22); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.693353652954101562, `Y`=6.014399528503417968, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=21); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-1.5826345682144165, `Y`=3.436358928680419921, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=20); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.3752145767211914, `Y`=-1.83953285217285156, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=19); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-1.02719557285308837, `Y`=-6.56030559539794921, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=18); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.693405389785766601, `Y`=-8.12269783020019531, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=17); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=7.858525276184082031, `Y`=-6.00491714477539062, `Z`=0.0068359375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=16); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=9.191166877746582031, `Y`=-1.83939015865325927, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=15); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=7.303188800811767578, `Y`=1.770406246185302734, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=14); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.693171501159667968, `Y`=2.872968435287475585, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=13); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.63891768455505371, `Y`=1.214901089668273925, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=12); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.23356498777866363, `Y`=-1.83960652351379394, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=11); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.194153785705566406, `Y`=-4.33853483200073242, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=10); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.69315195083618164, `Y`=-4.98093795776367187, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=9); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.6371917724609375, `Y`=-3.78335070610046386, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=8); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.049517631530761718, `Y`=-1.83931648731231689, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=7); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.081622600555419921, `Y`=-0.45092725753784179, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=6); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.693425178527832031, `Y`=-0.26879152655601501, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=5); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.860470056533813476, `Y`=-1.00655663013458251, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=4); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.908084630966186523, `Y`=-1.83968019485473632, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=3); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.415719985961914062, `Y`=-2.11720132827758789, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=2); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.693334102630615234, `Y`=-1.83950698375701904, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (1,0)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-10.9670972824096679, `Y`=-1.60426902770996093, `Z`=0.02685546875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (28,27)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-7.69898748397827148, `Y`=-8.5461883544921875, `Z`=0.08984375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=26); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.75712889432907104, `Y`=-11.0290794372558593, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=25); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.629609107971191406, `Y`=-7.99082279205322265, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=24); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=7.882516384124755859, `Y`=-1.60417497158050537, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=23); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.074589252471923828, `Y`=4.226882457733154296, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=22); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.75684714317321777, `Y`=6.249805927276611328, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=21); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-6.03272390365600585, `Y`=3.67173171043395996, `Z`=-0.12451171875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=20); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-7.82565736770629882, `Y`=-1.60424971580505371, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=19); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-5.47743606567382812, `Y`=-6.32494497299194335, `Z`=0.12548828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=18); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.73034936189651489, `Y`=-8.00839805603027343, `Z`=0.32666015625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=17); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.408116579055786132, `Y`=-5.76950931549072265, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=16); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.741076946258544921, `Y`=-1.60419440269470214, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=15); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.853037595748901367, `Y`=2.005639553070068359, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=14); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.7570773959159851, `Y`=3.108128070831298828, `Z`=-0.130859375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=13); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.81123661994934082, `Y`=1.450174450874328613, `Z`=-0.048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=12); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-4.68373012542724609, `Y`=-1.60424137115478515, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=11); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.25587868690490722, `Y`=-4.10345792770385742, `Z`=0.12548828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=10); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.75716209411621093, `Y`=-4.7459564208984375, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=9); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.186629414558410644, `Y`=-3.54795217514038085, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=8); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.599149227142333984, `Y`=-1.60420262813568115, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=7); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.631480395793914794, `Y`=-0.21584738790988922, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=6); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.75681948661804199, `Y`=-0.03356120362877845, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=5); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-1.58974409103393554, `Y`=-0.7711387276649475, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=4); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-1.5422903299331665, `Y`=-1.60422205924987792, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=3); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-1.03480958938598632, `Y`=-1.88195991516113281, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=2); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.7569318413734436, `Y`=-1.60427820682525634, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (1,0)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-9.72276687622070312, `Y`=-1.28308022022247314, `Z`=-0.0888671875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (28,27)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-6.45450878143310546, `Y`=-8.22504520416259765, `Z`=-0.14208984375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=26); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.487388134002685546, `Y`=-10.7078704833984375, `Z`=-0.14208984375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=25); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.874235153198242187, `Y`=-7.66945362091064453, `Z`=-0.14208984375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=24); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=9.126921653747558593, `Y`=-1.2827693223953247, `Z`=-0.14208984375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=23); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.318774700164794921, `Y`=4.548419952392578125, `Z`=0.04736328125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=22); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.487545520067214965, `Y`=6.570939064025878906, `Z`=-0.20263671875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=21); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-4.78847122192382812, `Y`=3.993117809295654296, `Z`=-0.14208984375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=20); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-6.58112049102783203, `Y`=-1.28311383724212646, `Z`=-0.0888671875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=19); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-4.23308467864990234, `Y`=-6.00352811813354492, `Z`=-0.14208984375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=18); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.487421780824661254, `Y`=-7.56622505187988281, `Z`=0.1884765625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=17); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.652718544006347656, `Y`=-5.4480295181274414, `Z`=-0.14208984375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=16); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.985275745391845703, `Y`=-1.28273570537567138, `Z`=-0.01708984375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=15); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.097350597381591796, `Y`=2.326903343200683593, `Z`=-0.01708984375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=14); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.487511903047561645, `Y`=3.429293155670166015, `Z`=-0.14208984375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=13); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.56695461273193359, `Y`=1.771693348884582519, `Z`=0.20751953125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=12); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.43947458267211914, `Y`=-1.28314745426177978, `Z`=-0.14208984375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=11); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.01166009902954101, `Y`=-3.78201127052307128, `Z`=-0.2099609375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=10); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.487455397844314575, `Y`=-4.42457914352416992, `Z`=-0.14208984375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=9); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.431201696395874023, `Y`=-3.22660493850708007, `Z`=-0.01708984375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=8); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.84362959861755371, `Y`=-1.28270208835601806, `Z`=-0.01708984375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=7); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.875926136970520019, `Y`=0.105386622250080108, `Z`=-0.029296875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=6); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.487478286027908325, `Y`=0.287647187709808349, `Z`=-0.0322265625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=5); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.34543782472610473, `Y`=-0.44973090291023254, `Z`=0.0234375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=4); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.29782873392105102, `Y`=-1.28318119049072265, `Z`=-0.0751953125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=3); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.209764108061790466, `Y`=-1.56049466133117675, `Z`=-0.1015625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=2); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.487489014863967895, `Y`=-1.28293323516845703, `Z`=-0.064453125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (1,0)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-12.5217714309692382, `Y`=-0.18727181851863861, `Z`=-0.0712890625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (28,27)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-9.25351428985595703, `Y`=-7.12923669815063476, `Z`=-0.12451171875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=26); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.31161713600158691, `Y`=-9.61206245422363281, `Z`=-0.12451171875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=25); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.075230121612548828, `Y`=-6.57364511489868164, `Z`=-0.12451171875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=24); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.327916145324707031, `Y`=-0.1869608461856842, `Z`=-0.12451171875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=23); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.51976943016052246, `Y`=5.644228458404541015, `Z`=0.06494140625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=22); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.31145977973937988, `Y`=7.666747570037841796, `Z`=-0.18505859375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=21); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-7.58747673034667968, `Y`=5.088926315307617187, `Z`=-0.12451171875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=20); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-9.38012599945068359, `Y`=-0.18730543553829193, `Z`=-0.0712890625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=19); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-7.0320897102355957, `Y`=-4.90771961212158203, `Z`=-0.12451171875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=18); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.31158351898193359, `Y`=-6.47041654586791992, `Z`=0.2060546875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=17); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.853713154792785644, `Y`=-4.35222101211547851, `Z`=-0.12451171875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=16); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.18627023696899414, `Y`=-0.18692721426486968, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=15); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.298344969749450683, `Y`=3.422711849212646484, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=14); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.3114933967590332, `Y`=4.525101661682128906, `Z`=-0.12451171875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=13); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-5.36596012115478515, `Y`=2.86750197410583496, `Z`=0.22509765625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=12); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-6.2384800910949707, `Y`=-0.18733906745910644, `Z`=-0.12451171875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=11); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-4.81066560745239257, `Y`=-2.6862030029296875, `Z`=-0.1923828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=10); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.31154990196228027, `Y`=-3.32877063751220703, `Z`=-0.12451171875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=9); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.36780357360839843, `Y`=-2.13079667091369628, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=8); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.044624332338571548, `Y`=-0.18689359724521636, `Z`=0.00048828125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=7); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.92307931184768676, `Y`=1.201195120811462402, `Z`=-0.01171875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=6); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.31152701377868652, `Y`=1.383455634117126464, `Z`=-0.0146484375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=5); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.14444327354431152, `Y`=0.646077573299407958, `Z`=0.041015625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=4); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.09683418273925781, `Y`=-0.18737268447875976, `Z`=-0.0576171875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=3); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.58924126625061035, `Y`=-0.46468615531921386, `Z`=-0.083984375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=2); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.31151628494262695, `Y`=-0.18712472915649414, `Z`=-0.046875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (1,0)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-10.1271600723266601, `Y`=0.12278701364994049, `Z`=0.04150390625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (28,27)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-6.85919618606567382, `Y`=-6.81940460205078125, `Z`=-0.064453125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=26); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.082965537905693054, `Y`=-9.30221176147460937, `Z`=-0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=25); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.469449043273925781, `Y`=-6.26399755477905273, `Z`=-0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=24); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.7226104736328125, `Y`=0.122732527554035186, `Z`=-0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=23); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.914439678192138671, `Y`=5.953968048095703125, `Z`=0.00341796875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=22); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.083099216222763061, `Y`=7.976605415344238281, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=21); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-5.19301366806030273, `Y`=5.398687362670898437, `Z`=-0.13232421875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=20); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-6.98567152023315429, `Y`=0.12269420176744461, `Z`=0.060546875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=19); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-4.63771247863769531, `Y`=-4.59783601760864257, `Z`=-0.04638671875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=18); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.082932755351066589, `Y`=-6.16051340103149414, `Z`=-0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=17); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.248424053192138671, `Y`=-4.04247236251831054, `Z`=-0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=16); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.580703258514404296, `Y`=0.12257414311170578, `Z`=-0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=15); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.692830562591552734, `Y`=3.732608318328857421, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=14); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.083006404340267181, `Y`=4.835116386413574218, `Z`=0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=13); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.97144484519958496, `Y`=3.17720341682434082, `Z`=0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=12); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.84418249130249023, `Y`=0.12260138988494873, `Z`=0.19287109375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=11); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.41610312461853027, `Y`=-2.37647628784179687, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=10); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.083025567233562469, `Y`=-3.01902461051940917, `Z`=-0.18505859375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=9); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.026855230331420898, `Y`=-1.82098841667175292, `Z`=-0.09228515625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=8); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.439214229583740234, `Y`=0.12266695499420166, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=7); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.471346855163574218, `Y`=1.511039257049560546, `Z`=-0.05419921875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=6); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.083039186894893646, `Y`=1.693418264389038085, `Z`=0.05029296875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=5); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.74987578392028808, `Y`=0.955719709396362304, `Z`=0.02587890625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=4); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.70227479934692382, `Y`=0.12275976687669754, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=3); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.19461940228939056, `Y`=-0.1549072116613388, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=2); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.082992784678936004, `Y`=0.122673764824867248, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (1,0)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-10.1848487854003906, `Y`=0.033069439232349395, `Z`=0.01416015625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (28,27)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-6.9163832664489746, `Y`=-6.90881776809692382, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=26); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.025347961112856864, `Y`=-9.39170551300048828, `Z`=-0.140625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=25); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=6.412061691284179687, `Y`=-6.35349607467651367, `Z`=-0.09619140625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=24); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=8.664884567260742187, `Y`=0.033283017575740814, `Z`=0.060546875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=23); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.856989860534667968, `Y`=5.864586830139160156, `Z`=-0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=22); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.025694986805319786, `Y`=7.887225151062011718, `Z`=-0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=21); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-5.25055551528930664, `Y`=5.309053421020507812, `Z`=-0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=20); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-7.04300880432128906, `Y`=0.033242702484130859, `Z`=-0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=19); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-4.69520998001098632, `Y`=-4.68736028671264648, `Z`=0.08154296875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=18); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.025707341730594635, `Y`=-6.2499856948852539, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=17); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=4.190546035766601562, `Y`=-4.13208627700805664, `Z`=0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=16); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=5.523045539855957031, `Y`=0.033109750598669052, `Z`=0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=15); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=3.635343074798583984, `Y`=3.643012285232543945, `Z`=-0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=14); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.025335608050227165, `Y`=4.745505332946777343, `Z`=-0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=13); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.02903938293457031, `Y`=3.087643384933471679, `Z`=-0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=12); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-3.9016430377960205, `Y`=0.033298622816801071, `Z`=-0.19189453125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=11); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-2.47356319427490234, `Y`=-2.46578598022460937, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=10); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.025592749938368797, `Y`=-3.1083831787109375, `Z`=0.14794921875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=9); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.969030261039733886, `Y`=-1.91067636013031005, `Z`=0.0751953125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=8); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.38162088394165039, `Y`=0.033290818333625793, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=7); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=1.413637399673461914, `Y`=1.421674847602844238, `Z`=-0.07861328125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=6); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.025450197979807853, `Y`=1.603902459144592285, `Z`=-0.01416015625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=5); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.80752366781234741, `Y`=0.866233348846435546, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=4); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.75974476337432861, `Y`=0.033234898000955581, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=3); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=-0.25233152508735656, `Y`=-0.24456584453582763, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=2); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=0.025478158146142959, `Y`=0.033219542354345321, `Z`=0, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (1,0)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.01416015625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (28,27,16)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.140625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=25); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.09619140625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=24); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.060546875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=23); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (22,21,20,19,14,13,12,23)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.08154296875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=18); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (16,15)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.19189453125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=11); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.14794921875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=9); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.0751953125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=8); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.07861328125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=6); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.01416015625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=5); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.1005859375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (28,27)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.060546875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (26,19,11)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.185546875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (25,20,12)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.12841796875, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=24); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.25, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=21); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.12353515625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=18); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=-0.1943359375, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=17); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Y`=-0.06854353100061416, `Z`=0.0869140625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=15); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `Z`=0.064453125, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx` IN (10,9,3)); -- SpellId : 204019
UPDATE `areatrigger_create_properties_spline_point` SET `X`=2.132582426071166992, `Y`=-0.03968340530991554, `Z`=0.22265625, `VerifiedBuild`=46455 WHERE (`AreaTriggerCreatePropertiesId`=6006 AND `Idx`=7); -- SpellId : 204019

DELETE FROM `conversation_actors` WHERE (`Idx`=0 AND `ConversationId` IN (16485,13901)) OR (`Idx`=3 AND `ConversationId` IN (16200,16199,16198));
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `Idx`, `CreatureId`, `CreatureDisplayInfoId`, `NoActorObject`, `ActivePlayerObject`, `VerifiedBuild`) VALUES
(16485, 75033, 0, 160390, 97487, 0, 0, 46455),
(16200, 75033, 3, 160390, 97487, 0, 0, 46455),
(13901, 75033, 0, 154629, 95016, 0, 0, 46455),
(16199, 75033, 3, 160390, 97487, 0, 0, 46455),
(16198, 75033, 3, 160390, 97487, 0, 0, 46455);


DELETE FROM `conversation_line_template` WHERE `Id` IN (41461, 40784, 34717, 40779, 40774);
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(41461, 1444, 0, 0, 46455),
(40784, 1444, 3, 0, 46455),
(34717, 1458, 0, 0, 46455),
(40779, 1444, 3, 0, 46455),
(40774, 1444, 3, 0, 46455);


DELETE FROM `conversation_template` WHERE `Id` IN (13901, 16485, 16200, 16199, 16198);
INSERT INTO `conversation_template` (`Id`, `FirstLineID`, `TextureKitId`, `VerifiedBuild`) VALUES
(13901, 34717, 0, 46455),
(16485, 41461, 0, 46455),
(16200, 40784, 0, 46455),
(16199, 40779, 0, 46455),
(16198, 40774, 0, 46455);


DELETE FROM `quest_poi` WHERE (`QuestID`=62732 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62732 AND `BlobIndex`=0 AND `Idx1`=0);
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `UiMapID`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `NavigationPlayerConditionID`, `SpawnTrackingID`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES
(62732, 0, 1, 32, 0, 0, 2222, 1533, 0, 2, 0, 0, 0, 0, 0, 46455), -- Locus Focus
(62732, 0, 0, 31, 0, 0, 2222, 1533, 0, 2, 0, 0, 0, 0, 0, 46455); -- Locus Focus

UPDATE `quest_poi` SET `VerifiedBuild`=46455 WHERE (`QuestID`=62705 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62705 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62170 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=65033 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=65033 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62778 AND `BlobIndex`=1 AND `Idx1`=4) OR (`QuestID`=62778 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=62778 AND `BlobIndex`=2 AND `Idx1`=2) OR (`QuestID`=62778 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=62778 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62735 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=62735 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=62723 AND `BlobIndex`=1 AND `Idx1`=3) OR (`QuestID`=62723 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=62723 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=62723 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59717 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59717 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=53436 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=49929 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=49929 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=43341 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=43341 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=42449 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=42449 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=36309 AND `BlobIndex`=0 AND `Idx1`=0);
DELETE FROM `quest_poi_points` WHERE (`QuestID`=62732 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=62732 AND `Idx1`=0 AND `Idx2`=11) OR (`QuestID`=62732 AND `Idx1`=0 AND `Idx2`=10) OR (`QuestID`=62732 AND `Idx1`=0 AND `Idx2`=9) OR (`QuestID`=62732 AND `Idx1`=0 AND `Idx2`=8) OR (`QuestID`=62732 AND `Idx1`=0 AND `Idx2`=7) OR (`QuestID`=62732 AND `Idx1`=0 AND `Idx2`=6) OR (`QuestID`=62732 AND `Idx1`=0 AND `Idx2`=5) OR (`QuestID`=62732 AND `Idx1`=0 AND `Idx2`=4) OR (`QuestID`=62732 AND `Idx1`=0 AND `Idx2`=3) OR (`QuestID`=62732 AND `Idx1`=0 AND `Idx2`=2) OR (`QuestID`=62732 AND `Idx1`=0 AND `Idx2`=1) OR (`QuestID`=62732 AND `Idx1`=0 AND `Idx2`=0);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `Z`, `VerifiedBuild`) VALUES
(62732, 1, 0, -3691, -5177, 0, 46455), -- Locus Focus
(62732, 0, 11, -3716, -5240, 0, 46455), -- Locus Focus
(62732, 0, 10, -3725, -5202, 0, 46455), -- Locus Focus
(62732, 0, 9, -3721, -5117, 0, 46455), -- Locus Focus
(62732, 0, 8, -3710, -5088, 0, 46455), -- Locus Focus
(62732, 0, 7, -3658, -5051, 0, 46455), -- Locus Focus
(62732, 0, 6, -3521, -5050, 0, 46455), -- Locus Focus
(62732, 0, 5, -3498, -5098, 0, 46455), -- Locus Focus
(62732, 0, 4, -3498, -5150, 0, 46455), -- Locus Focus
(62732, 0, 3, -3498, -5183, 0, 46455), -- Locus Focus
(62732, 0, 2, -3567, -5211, 0, 46455), -- Locus Focus
(62732, 0, 1, -3592, -5282, 0, 46455), -- Locus Focus
(62732, 0, 0, -3664, -5287, 0, 46455); -- Locus Focus


DELETE FROM `world_quest` WHERE `id`=59850;
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(59850, 86400, 19139, 3); -- 59850

UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096

UPDATE `gameobject_template_addon` SET `WorldEffectID`=16227 WHERE `entry`=303146; -- Barbershop Chair
UPDATE `gameobject_template_addon` SET `flags`=4 WHERE `entry`=312208; -- Bucket of Hides
UPDATE `gameobject_template_addon` SET `flags`=4 WHERE `entry`=323383; -- Pail of Scales
UPDATE `gameobject_template_addon` SET `flags`=4 WHERE `entry`=323548; -- Crate of Bones
UPDATE `gameobject_template_addon` SET `WorldEffectID`=2773 WHERE `entry`=35591; -- Fishing Bobber
UPDATE `gameobject_template_addon` SET `flags`=0, `WorldEffectID`=10427 WHERE `entry`=298909; -- Reinforced Hide
UPDATE `gameobject_template_addon` SET `flags`=0, `WorldEffectID`=10427 WHERE `entry`=298910; -- Lightstep Insole
UPDATE `gameobject_template_addon` SET `flags`=4 WHERE `entry`=316423; -- Sack of Dried Star Moss
UPDATE `gameobject_template_addon` SET `flags`=0, `WorldEffectID`=10427 WHERE `entry`=298911; -- Folded Steel Plating
UPDATE `gameobject_template_addon` SET `WorldEffectID`=6026 WHERE `entry`=288433; -- Rope Ladder
UPDATE `gameobject_template_addon` SET `flags`=0, `WorldEffectID`=10427 WHERE `entry`=298913; -- Ensorcelled Runes
UPDATE `gameobject_template_addon` SET `flags`=0, `WorldEffectID`=10427 WHERE `entry`=298914; -- Rainbow Shell Pendant
UPDATE `gameobject_template_addon` SET `flags`=0, `WorldEffectID`=10427 WHERE `entry`=299008; -- Charged Lodestone
UPDATE `gameobject_template_addon` SET `flags`=0, `WorldEffectID`=10427 WHERE `entry`=298915; -- Capacity Draught
UPDATE `gameobject_template_addon` SET `flags`=0, `WorldEffectID`=10427 WHERE `entry`=299009; -- Jitterplant
UPDATE `gameobject_template_addon` SET `flags`=0, `WorldEffectID`=10427 WHERE `entry`=298912; -- Spring-Loaded Spikes
UPDATE `gameobject_template_addon` SET `WorldEffectID`=11127 WHERE `entry`=316904; -- Scrap-O-Matic 1000

DELETE FROM `creature_equip_template` WHERE (`CreatureID`=167164 AND `ID`=1);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(167164, 1, 174388, 0, 0, 174388, 0, 0, 0, 0, 0, 46455); -- Stalwart Valiant

DELETE FROM `areatrigger_template` WHERE (`Id`=30886 AND `IsServerSide`=0);
INSERT INTO `areatrigger_template` (`Id`, `IsServerSide`, `Type`, `Flags`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `VerifiedBuild`) VALUES
(30886, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 46455);


UPDATE `areatrigger_template` SET `Type`=0, `VerifiedBuild`=46455 WHERE (`IsServerSide`=0 AND `Id` IN (22573,8352));
UPDATE `areatrigger_template` SET `VerifiedBuild`=46455 WHERE (`IsServerSide`=0 AND `Id` IN (23995,23926,9225,23556,26096,23924,23925,23299,23297));
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=3, `Data1`=3, `VerifiedBuild`=46455 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=3, `Data1`=3, `VerifiedBuild`=46455 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=3, `Data1`=3, `VerifiedBuild`=46455 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=3, `Data1`=3, `VerifiedBuild`=46455 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=3, `Data1`=3, `VerifiedBuild`=46455 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=3, `Data1`=3, `VerifiedBuild`=46455 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=3, `Data1`=3, `VerifiedBuild`=46455 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=3, `Data1`=3, `VerifiedBuild`=46455 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=3, `Data1`=3, `VerifiedBuild`=46455 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=3, `Data1`=3, `VerifiedBuild`=46455 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=3, `Data1`=3, `VerifiedBuild`=46455 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=3, `Data1`=3, `VerifiedBuild`=46455 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=3, `Data1`=3, `VerifiedBuild`=46455 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=3, `Data1`=3, `VerifiedBuild`=46455 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=3, `Data1`=3, `VerifiedBuild`=46455 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=3, `Data1`=3, `VerifiedBuild`=46455 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=3, `Data1`=3, `VerifiedBuild`=46455 WHERE (`Id`=0 AND `IsServerSide`=0);
UPDATE `areatrigger_template` SET `Flags`=0, `Data0`=3, `Data1`=3, `VerifiedBuild`=46455 WHERE (`Id`=0 AND `IsServerSide`=0);

DELETE FROM `conversation_actors` WHERE (`Idx`=0 AND `ConversationId` IN (14005,14006));
INSERT INTO `conversation_actors` (`ConversationId`, `ConversationActorId`, `Idx`, `CreatureId`, `CreatureDisplayInfoId`, `NoActorObject`, `ActivePlayerObject`, `VerifiedBuild`) VALUES
-- (13779, 75033, 0, UNKNOWN, UNKNOWN, 0, 0, 46455), -- Full: 0x2041D515C0A15DC000025B0000645EAA Creature/0 R4213/S603 Map: 2222 (The Shadowlands) Entry: 165239 (Trainer Ikaros) Low: 6577834
(14005, 72315, 0, 158078, 96505, 0, 0, 46455),
(14006, 72315, 0, 158078, 96505, 0, 0, 46455);

UPDATE `conversation_actors` SET `VerifiedBuild`=46455 WHERE (`Idx`=1 AND `ConversationId` IN (13779,12446)) OR (`Idx`=0 AND `ConversationId` IN (12446,13778));


UPDATE `conversation_line_template` SET `VerifiedBuild`=46455 WHERE `Id` IN (34305, 40918, 30415, 30414, 35081, 34304, 35082);


UPDATE `gameobject_template_addon` SET `flags`=2113540 WHERE `entry`=346108; -- Animyllis Bloom
UPDATE `gameobject_template_addon` SET `flags`=32 WHERE `entry`=354097; -- Vesper of Courage
UPDATE `gameobject_template_addon` SET `flags`=262144 WHERE `entry`=336444; -- Agthian Spear
UPDATE `gameobject_template_addon` SET `flags`=278528 WHERE `entry`=351469; -- Death Blossom
UPDATE `gameobject_template_addon` SET `flags`=0 WHERE `entry`=344725; -- Birds
UPDATE `gameobject_template_addon` SET `flags`=2375680 WHERE `entry`=350086; -- Rich Solenium Deposit
UPDATE `gameobject_template_addon` SET `flags`=2375680 WHERE `entry`=349980; -- Solenium Deposit


DELETE FROM `creature_template_scaling` WHERE (`DifficultyID`=0 AND `Entry` IN (167164,176951,24207,174875));
INSERT INTO `creature_template_scaling` (`Entry`, `DifficultyID`, `LevelScalingDeltaMin`, `LevelScalingDeltaMax`, `ContentTuningID`, `VerifiedBuild`) VALUES
(167164, 0, 0, 0, 1324, 46455),
(176951, 0, 0, 0, 2171, 46455),
(24207, 0, 0, 0, 482, 46455),
(174875, 0, 0, 0, 1318, 46455);

UPDATE `creature_template_scaling` SET `VerifiedBuild`=46455 WHERE (`DifficultyID`=0 AND `Entry` IN (99541,160632,160434,174936,167893,160432,160173,160274,160602,160223,160428,171526,160174,160178,160581,62862,121541,160470,172839,159423,163427,160430,160285,160437,172206,160175,175196,160569,158427,175651,157962,160606,165068,165055,169504,169263,174998,170325,175785,169509,169757,169692,169755,167022,167584,167064,167055,167043,167041,167033,166932,166930,167151,166931,166943,167155,167153,166928,166925,167080,166937,166941,165116,166942,167026,175091,167119,170823,170821,167404,167118,170820,167109,170822,174961,174960,167115,166936,166926,166935,169691,169690,170780,170803,169382,169313,169390,161555,171255,173117,168892,158290,164805,164762,166120,158247,158238,158400,158160,158319,158181,158161,158162,158177,158256,158178,169308,171664,169099,169126,158078,164693,158159,158612,158094,164752,158084,164769,171702,168733,172058,173115,172060,168731,158629,158628,168617,168613,168410,168502,170399,168437,168268,168333,165241,174794,165239,154631,174635,165240,158509,168309,158510,170415,157761,154630,166166,168919,168915,158869,159505,159504,161279,168245,168244,175777,159787,160647,160637,161557,161441,54638,168497,168436,158968,169673,161449,174959,159277,159338,159396,159391,166699,159339,166738,166746,166743,166577,173057,159337,159278,157138,174715,174716,158807,176200,166599,158620,158503,158618,158504,156228,160921,157728,157725,171712,158772,156376,175098,157277,175653,157274,168624,168103,164369,173096,174876,160645,159840,171668,168387,157622,163974,156279,157660,157558,159788,157599,157557,164370,159853,157681,159791,168397,157560));


UPDATE `creature_model_info` SET `VerifiedBuild`=46455 WHERE `DisplayID` IN (66220, 93233, 93462, 94248, 99292, 67251, 99267, 99220, 99710, 99709, 93497, 45494, 27823, 93534, 99125, 99296, 99317, 98495, 98930, 94168, 98493, 93469, 93464, 94293, 98177, 93944, 97324, 94932, 93925, 96132, 4629, 95987, 88583, 95162, 96061, 93563, 95996, 94920, 96114, 95478, 94917, 95986, 95117, 95116, 99373, 96587, 92689, 77177, 60652, 95591, 74432, 80316, 76612, 96142, 93330, 99893, 94295, 99322, 99278, 19283, 95537, 93749, 93759, 59131, 97289, 10002, 92534, 64329, 40712, 68538, 37104, 15505, 99230, 15504, 99973, 99298, 92193, 94150, 99151, 16200, 93757, 99214, 99975, 88422, 82587, 99965, 99967, 2579, 99964, 84412, 99277, 99213, 93602, 98218, 96161, 99293, 98931, 100431, 99966, 99972, 99330, 99211, 99209, 37716, 97456, 65455, 82582, 99208, 96576, 99974, 99215, 99216, 99217, 2577, 100432, 91896, 99212, 99210, 99971, 99881, 94169, 55913, 93472, 93470, 94095, 94304, 94311, 99368, 99370, 94313, 94310, 98213, 94640, 92915, 99308, 99367, 94118, 99237, 99239, 99371, 99248, 99895, 99294, 99247, 10000, 99238, 11686, 94277, 94314, 94303, 99246, 99307, 99369, 94278);
UPDATE `creature_model_info` SET `BoundingRadius`=1.181651949882507324, `CombatReach`=1, `VerifiedBuild`=46455 WHERE `DisplayID`=94092;
UPDATE `creature_model_info` SET `BoundingRadius`=0.759995520114898681, `CombatReach`=1.5, `VerifiedBuild`=46455 WHERE `DisplayID` IN (95551, 95554);
UPDATE `creature_model_info` SET `BoundingRadius`=0.524599969387054443, `VerifiedBuild`=46455 WHERE `DisplayID`=96577;
UPDATE `creature_model_info` SET `BoundingRadius`=0.559553146362304687, `CombatReach`=1, `VerifiedBuild`=46455 WHERE `DisplayID`=96059;
UPDATE `creature_model_info` SET `BoundingRadius`=4.040700435638427734, `VerifiedBuild`=46455 WHERE `DisplayID`=95653;
UPDATE `creature_model_info` SET `BoundingRadius`=1.164438486099243164, `CombatReach`=1.875, `VerifiedBuild`=46455 WHERE `DisplayID`=94834;
UPDATE `creature_model_info` SET `BoundingRadius`=0.652085483074188232, `CombatReach`=1.049999952316284179, `VerifiedBuild`=46455 WHERE `DisplayID` IN (94757, 94791);
UPDATE `creature_model_info` SET `BoundingRadius`=1.358899712562561035, `CombatReach`=1.149999976158142089, `VerifiedBuild`=46455 WHERE `DisplayID` IN (93565, 93566);
UPDATE `creature_model_info` SET `BoundingRadius`=3.447134733200073242, `CombatReach`=5, `VerifiedBuild`=46455 WHERE `DisplayID` IN (94913, 94924);
UPDATE `creature_model_info` SET `BoundingRadius`=0.836437761783599853, `CombatReach`=2.25, `VerifiedBuild`=46455 WHERE `DisplayID`=96456;
UPDATE `creature_model_info` SET `BoundingRadius`=0.839329779148101806, `CombatReach`=1.5, `VerifiedBuild`=46455 WHERE `DisplayID`=96225;
UPDATE `creature_model_info` SET `BoundingRadius`=1.342122197151184082, `CombatReach`=1.149999976158142089, `VerifiedBuild`=46455 WHERE `DisplayID` IN (93241, 93564, 94639);
UPDATE `creature_model_info` SET `BoundingRadius`=0.347687602043151855, `CombatReach`=0.225000008940696716, `VerifiedBuild`=46455 WHERE `DisplayID` IN (94406, 94404);
UPDATE `creature_model_info` SET `BoundingRadius`=0.699441432952880859, `CombatReach`=1.25, `VerifiedBuild`=46455 WHERE `DisplayID`=96060;
UPDATE `creature_model_info` SET `BoundingRadius`=0.551690876483917236, `CombatReach`=0.375, `VerifiedBuild`=46455 WHERE `DisplayID`=95785;
UPDATE `creature_model_info` SET `BoundingRadius`=9.597417831420898437, `CombatReach`=6, `VerifiedBuild`=46455 WHERE `DisplayID`=95115;
UPDATE `creature_model_info` SET `BoundingRadius`=0.190972283482551574, `CombatReach`=0.400000005960464477, `VerifiedBuild`=46455 WHERE `DisplayID`=94167;
UPDATE `creature_model_info` SET `BoundingRadius`=0.911385178565979003, `CombatReach`=2, `VerifiedBuild`=46455 WHERE `DisplayID` IN (96505, 92191);
UPDATE `creature_model_info` SET `BoundingRadius`=1.28946995735168457, `CombatReach`=2.5, `VerifiedBuild`=46455 WHERE `DisplayID`=93463;
UPDATE `creature_model_info` SET `BoundingRadius`=7.23259735107421875, `CombatReach`=15, `VerifiedBuild`=46455 WHERE `DisplayID`=93500;
UPDATE `creature_model_info` SET `BoundingRadius`=1.139231443405151367, `CombatReach`=2.5, `VerifiedBuild`=46455 WHERE `DisplayID`=92192;
UPDATE `creature_model_info` SET `BoundingRadius`=1.35000002384185791, `CombatReach`=2.02500009536743164, `VerifiedBuild`=46455 WHERE `DisplayID`=94151;
UPDATE `creature_model_info` SET `BoundingRadius`=0.450024068355560302, `CombatReach`=0.699999988079071044, `VerifiedBuild`=46455 WHERE `DisplayID` IN (99318, 99329, 94305);
UPDATE `creature_model_info` SET `BoundingRadius`=0.558530211448669433, `CombatReach`=1.5, `VerifiedBuild`=46455 WHERE `DisplayID`=98494;
UPDATE `creature_model_info` SET `BoundingRadius`=0.954861402511596679, `CombatReach`=2, `VerifiedBuild`=46455 WHERE `DisplayID`=47799;
UPDATE `creature_model_info` SET `BoundingRadius`=0.441531181335449218, `CombatReach`=0.200000002980232238, `VerifiedBuild`=46455 WHERE `DisplayID` IN (93496, 93498);
UPDATE `creature_model_info` SET `BoundingRadius`=0.74175351858139038, `CombatReach`=1.27500009536743164, `VerifiedBuild`=46455 WHERE `DisplayID`=26079;
UPDATE `creature_model_info` SET `BoundingRadius`=0.462463796138763427, `CombatReach`=0.699999988079071044, `VerifiedBuild`=46455 WHERE `DisplayID` IN (94306, 94308);
UPDATE `creature_model_info` SET `BoundingRadius`=1.582508563995361328, `CombatReach`=1.875, `VerifiedBuild`=46455 WHERE `DisplayID`=92663;
UPDATE `creature_model_info` SET `BoundingRadius`=0.121000006794929504, `VerifiedBuild`=46455 WHERE `DisplayID`=95319;



UPDATE `creature_template` SET `BaseAttackTime`=1771 WHERE `entry`=99541; -- Risen Skulker
UPDATE `creature_template` SET `unit_flags3`=8388609 WHERE `entry` IN (160434, 160432); -- Kyrian Combat Trainer
UPDATE `creature_template` SET `unit_flags`=33024 WHERE `entry`=160581; -- Giant Glimmerfly
UPDATE `creature_template` SET `unit_flags3`=16777217 WHERE `entry`=62862; -- Mistwing Tree Vehicle
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=160175; -- Praetor Sentry
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry` IN (175196, 174998, 161557, 54638); -- Generic Bunny
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=170325; -- Argentwing Larion
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=166930; -- Skullboar Spinebreaker
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=166943; -- Siege Artillery
UPDATE `creature_template` SET `minlevel`=53, `maxlevel`=53, `faction`=3188, `BaseAttackTime`=2000, `unit_flags`=32768, `unit_flags2`=2048 WHERE `entry`=165116; -- Ossein Summon
UPDATE `creature_template` SET `minlevel`=53, `maxlevel`=53, `faction`=1665, `npcflag`=2, `BaseAttackTime`=2000, `unit_flags`=33024, `unit_flags2`=33572864, `unit_flags3`=1048576 WHERE `entry`=167164; -- Stalwart Valiant
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=169390; -- Copperfur Vulpin
UPDATE `creature_template` SET `npcflag`=1 WHERE `entry`=171255; -- Echo of Aella
UPDATE `creature_template` SET `unit_flags`=32784, `unit_flags2`=33556480 WHERE `entry`=158290; -- Tezulat the Annihilator
UPDATE `creature_template` SET `unit_flags`=512, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=171664; -- Fluttering Glimmerfly
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `speed_walk`=3.20000004768371582, `BaseAttackTime`=2000, `unit_flags`=768, `unit_flags2`=2048, `unit_flags3`=16777216 WHERE `entry`=176951; -- Race Run
UPDATE `creature_template` SET `faction`=2952 WHERE `entry`=168731; -- Copperfur Lurker
UPDATE `creature_template` SET `BaseAttackTime`=1204 WHERE `entry`=165189; -- Generic Hunter Pet
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=165241; -- Pick up a weapon
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=154631; -- Elysian Bulwark
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=170415; -- Travel with Kleia
UPDATE `creature_template` SET `unit_flags3`=8388608 WHERE `entry`=154630; -- Elysian Guardian
UPDATE `creature_template` SET `dynamicflags`=128 WHERE `entry`=166166; -- Centurion Colossus
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=158869; -- Epilon
UPDATE `creature_template` SET  `npcflag`=1, `unit_flags`=32768, `unit_flags3`=1048576 WHERE `entry`=159505; -- Sparring Aspirant
UPDATE `creature_template` SET  `npcflag`=1, `unit_flags`=32768, `unit_flags2`=33589248, `unit_flags3`=1048576 WHERE `entry`=159504; -- Sparring Aspirant
UPDATE `creature_template` SET  `npcflag`=1, `unit_flags`=32768 WHERE `entry`=161279; -- Sparring Aspirant

UPDATE `creature_template` SET `npcflag`=1 WHERE `entry`=161441; -- Orator Kloe
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=158968; -- Memory Witnessed
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=161449; -- Terrapin


UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=166599; -- Anima Extractor

UPDATE `creature_template` SET `faction`=2575 WHERE `entry`=156376; -- River Terrapin
UPDATE `creature_template` SET `unit_flags`=67125248 WHERE `entry`=157277; -- Starved Etherwyrm
UPDATE `creature_template` SET `unit_flags`=67141632 WHERE `entry`=157274; -- Languishing Etherwyrm
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=168624; -- Spiritwing Flitter
UPDATE `creature_template` SET `unit_flags2`=34816 WHERE `entry`=168103; -- Disciple Helene
UPDATE `creature_template` SET `minlevel`=52, `maxlevel`=52, `BaseAttackTime`=1795, `unit_flags2`=2048 WHERE `entry`=24207; -- Army of the Dead
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry` IN (164369, 163974, 164370); -- Purity Vesper
UPDATE `creature_template` SET `minlevel`=51, `maxlevel`=51, `faction`=3166, `npcflag`=16777216, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry`=174875; -- Terrified Steward

UPDATE `creature_template` SET `unit_flags`=512, `unit_flags2`=2048, `unit_flags3`=0 WHERE `entry`=171668; -- Vibrant Glimmerfly
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=156279; -- [DNT] FX Stalker
UPDATE `creature_template` SET `HoverHeight`=3.306249856948852539 WHERE `entry`=157660; -- Forsworn Ascended
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=157558; -- Rising Despair
UPDATE `creature_template` SET `unit_flags`=32768 WHERE `entry`=157557; -- Forsworn Recruit
UPDATE `creature_template` SET `unit_flags`=536904448, `unit_flags2`=33556481, `unit_flags3`=532992 WHERE `entry`=157681; -- Acolyte of Purity
UPDATE `creature_template` SET `unit_flags`=537166592, `unit_flags2`=2049, `unit_flags3`=532992 WHERE `entry`=159791; -- Disciple of Purity
UPDATE `creature_template` SET `dynamicflags`=4 WHERE `entry`=157560; -- Congealed Doubt
UPDATE `creature_template` SET `minlevel`=52, `BaseAttackTime`=1795, `RangeAttackTime`=0, `unit_flags`=262144 WHERE `entry`=26125; -- Risen Ghoul


DELETE FROM `quest_template` WHERE `ID`=66696;
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestPackageID`, `ContentTuningID`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardMoneyDifficulty`, `RewardMoneyMultiplier`, `RewardBonusMoney`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `RewardArtifactXPDifficulty`, `RewardArtifactXPMultiplier`, `RewardArtifactCategoryID`, `Flags`, `FlagsEx`, `FlagsEx2`, `RewardSkillLineID`, `RewardNumSkillUps`, `PortraitGiver`, `PortraitGiverMount`, `PortraitGiverModelSceneID`, `PortraitTurnIn`, `RewardItem1`, `RewardItem2`, `RewardItem3`, `RewardItem4`, `RewardAmount1`, `RewardAmount2`, `RewardAmount3`, `RewardAmount4`, `ItemDrop1`, `ItemDrop2`, `ItemDrop3`, `ItemDrop4`, `ItemDropQuantity1`, `ItemDropQuantity2`, `ItemDropQuantity3`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemID2`, `RewardChoiceItemID3`, `RewardChoiceItemID4`, `RewardChoiceItemID5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity1`, `RewardChoiceItemQuantity2`, `RewardChoiceItemQuantity3`, `RewardChoiceItemQuantity4`, `RewardChoiceItemQuantity5`, `RewardChoiceItemQuantity6`, `RewardChoiceItemDisplayID1`, `RewardChoiceItemDisplayID2`, `RewardChoiceItemDisplayID3`, `RewardChoiceItemDisplayID4`, `RewardChoiceItemDisplayID5`, `RewardChoiceItemDisplayID6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionID2`, `RewardFactionID3`, `RewardFactionID4`, `RewardFactionID5`, `RewardFactionValue1`, `RewardFactionValue2`, `RewardFactionValue3`, `RewardFactionValue4`, `RewardFactionValue5`, `RewardFactionCapIn1`, `RewardFactionCapIn2`, `RewardFactionCapIn3`, `RewardFactionCapIn4`, `RewardFactionCapIn5`, `RewardFactionOverride1`, `RewardFactionOverride2`, `RewardFactionOverride3`, `RewardFactionOverride4`, `RewardFactionOverride5`, `RewardFactionFlags`, `AreaGroupID`, `TimeAllowed`, `AllowableRaces`, `TreasurePickerID`, `Expansion`, `ManagedWorldStateID`, `QuestSessionBonus`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RewardCurrencyID1`, `RewardCurrencyID2`, `RewardCurrencyID3`, `RewardCurrencyID4`, `RewardCurrencyQty1`, `RewardCurrencyQty2`, `RewardCurrencyQty3`, `RewardCurrencyQty4`, `PortraitGiverText`, `PortraitGiverName`, `PortraitTurnInText`, `PortraitTurnInName`, `AcceptedSoundKitID`, `CompleteSoundKitID`, `VerifiedBuild`) VALUES
(66696, 3, 0, 837, -442, 111, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34144576, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2413, 2470, 2478, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 50000, 50000, 50000, 0, 0, 0, 7577, 0, 18446744073709551615, 2013, 8, 0, 0, 'Tempting Fate: Fate of the Shadowlands', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 46455); -- -Unknown-

UPDATE `quest_template` SET `RewardBonusMoney`=5500, `VerifiedBuild`=46455 WHERE `ID`=57712; -- Suggested Reading
UPDATE `quest_template` SET `RewardBonusMoney`=29350, `VerifiedBuild`=46455 WHERE `ID`=60057; -- Necrotic Wake: A Paragon's Plight
UPDATE `quest_template` SET `RewardBonusMoney`=5500, `VerifiedBuild`=46455 WHERE `ID`=57444; -- An Inspired Moral Inventory
UPDATE `quest_template` SET `RewardBonusMoney`=9150, `VerifiedBuild`=46455 WHERE `ID`=60316; -- WANTED: Altered Sentinel
UPDATE `quest_template` SET `RewardBonusMoney`=9150, `VerifiedBuild`=46455 WHERE `ID`=60315; -- WANTED: Gorgebeak
UPDATE `quest_template` SET `RewardBonusMoney`=9150, `VerifiedBuild`=46455 WHERE `ID`=60366; -- WANTED: Darkwing
UPDATE `quest_template` SET `RewardBonusMoney`=9150, `VerifiedBuild`=46455 WHERE `ID`=60466; -- The Old Ways
UPDATE `quest_template` SET `RewardBonusMoney`=7350, `VerifiedBuild`=46455 WHERE `ID`=57931; -- Phalynx Malfunction
UPDATE `quest_template` SET `RewardBonusMoney`=7350, `VerifiedBuild`=46455 WHERE `ID`=57538; -- Disturbing the Peace
UPDATE `quest_template` SET `RewardBonusMoney`=7350, `VerifiedBuild`=46455 WHERE `ID`=57549; -- In Agthia's Memory
UPDATE `quest_template` SET `VerifiedBuild`=46455 WHERE `ID` IN (45838, 49098, 49195, 60475, 59019, 54367, 52951, 49096, 64508, 61303, 59581, 59771, 59850, 58084, 60872, 60653, 61343, 59585, 58605, 61141, 58490, 61946, 61866, 61783, 46736, 46735, 46277, 65033, 62778, 53436, 43341);
UPDATE `quest_template` SET `Expansion`=9, `VerifiedBuild`=46455 WHERE `ID`=48982; -- Invasion Point: Aurinor
UPDATE `quest_template` SET `ContentTuningID`=290, `RewardCurrencyID1`=0, `RewardCurrencyQty1`=0, `VerifiedBuild`=46455 WHERE `ID`=54373; -- Darkshore Donations: Enchant Ring - Seal of Haste
UPDATE `quest_template` SET `RewardCurrencyID1`=0, `RewardCurrencyQty1`=0, `VerifiedBuild`=46455 WHERE `ID`=54380; -- Darkshore Donations: Gold
UPDATE `quest_template` SET `RewardBonusMoney`=9800, `VerifiedBuild`=46455 WHERE `ID`=60840; -- Wild Hunt Offensive
UPDATE `quest_template` SET `RewardBonusMoney`=9800, `Expansion`=9, `VerifiedBuild`=46455 WHERE `ID`=62737; -- Aspirant For a Day
UPDATE `quest_template` SET `RewardBonusMoney`=9800, `Expansion`=9, `VerifiedBuild`=46455 WHERE `ID`=62736; -- Maldraxxi Eviction Notice
UPDATE `quest_template` SET `RewardBonusMoney`=7500, `VerifiedBuild`=46455 WHERE `ID`=43241; -- Flow of the Nightmare
UPDATE `quest_template` SET `RewardBonusMoney`=7500, `VerifiedBuild`=46455 WHERE `ID`=39393; -- Moonclaw Vale
UPDATE `quest_template` SET `RewardBonusMoney`=7500, `VerifiedBuild`=46455 WHERE `ID`=39274; -- Defend the Riverlands
UPDATE `quest_template` SET `RewardBonusMoney`=7500, `VerifiedBuild`=46455 WHERE `ID`=39029; -- Defend The Temple
UPDATE `quest_template` SET `RewardBonusMoney`=7500, `VerifiedBuild`=46455 WHERE `ID`=38748; -- Ruins of Shala'nir
UPDATE `quest_template` SET `RewardBonusMoney`=39100, `QuestDescription`='You are no aspirant, but I welcome any aid that Oribos might bring us in these dire times.\n\nPlease, aid our people in any way you can. With anima in low supply and the insidious Forsworn encroaching from all sides, there is no shortage of trials to overcome.\n\nDo this for us, and I will see to it myself that our almighty Archon hears of your deeds in service of the kyrian. Mark well my words, and follow the path.', `VerifiedBuild`=46455 WHERE `ID`=62723; -- Bolstering Bastion
UPDATE `quest_template` SET `RewardBonusMoney`=9800, `Expansion`=9, `VerifiedBuild`=46455 WHERE `ID`=62705; -- Scour the Temple
UPDATE `quest_template` SET `RewardBonusMoney`=6100, `VerifiedBuild`=46455 WHERE `ID`=62170; -- You'll Never Walk Alone
UPDATE `quest_template` SET `RewardBonusMoney`=625, `VerifiedBuild`=46455 WHERE `ID`=49929; -- The Call for Allies
UPDATE `quest_template` SET `RewardBonusMoney`=470, `VerifiedBuild`=46455 WHERE `ID`=42449; -- Return of the Four Horsemen
UPDATE `quest_template` SET `RewardBonusMoney`=3350, `VerifiedBuild`=46455 WHERE `ID`=36309; -- The Strength of Iron

DELETE FROM `quest_objectives` WHERE `ID` IN (397110 /*397110*/, 397128 /*397128*/, 397127 /*397127*/, 397109 /*397109*/, 427561 /*427561*/);
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
(397110, 59850, 0, 3, 1, 166479, 1, 2, 0, 0, 'Get to the tea party', 46455), -- 397110
(397128, 59850, 0, 2, 3, 160744, 10, 0, 0, 0, 'Ash ghouls slain', 46455), -- 397128
(397127, 59850, 0, 1, 2, 166504, 1, 2, 0, 0, 'Glazier\'s toolkit recovered', 46455), -- 397127
(397109, 59850, 0, 0, 0, 166478, 1, 0, 0, 0, 'Ask Vulca to tell her story', 46455), -- 397109
(427561, 66696, 14, 0, 0, 134418, 1, 0, 0, 0, 'Fated Bosses Defeated in the Shadowlands', 46455); -- 427561

UPDATE `quest_objectives` SET `VerifiedBuild`=46455 WHERE `ID` IN (393028, 393027, 393026, 398150, 398149, 392430, 398169, 398168, 398279, 398287, 398285, 398288, 393309, 393308, 392595, 392864, 392863, 392862, 289066, 289018, 387042, 398341, 398338, 395349, 387030, 387056, 340374, 405569, 405568, 409240, 396527, 396572, 396521, 396520, 396535, 396519, 396927, 396922, 396931, 393628, 393643, 404953, 404831, 404829, 404828, 404827, 404826, 404825, 404795, 404355, 404357, 404354, 404353, 409115, 405647, 405648, 407664, 396533, 396532, 396528, 394456, 408060, 405334, 405331, 408986, 408985, 408984, 394588, 394587, 394586, 394579, 394353, 409276, 408524, 406865, 406764, 406683, 285469, 285188, 285107, 285106, 285105, 285104, 285103, 285102, 280217, 280216, 280215, 280214, 280213, 280212, 279406, 279334, 280557, 280096, 279148, 279144, 279143, 285466, 278822, 278821, 278820, 286576, 286575, 286054, 278418, 278401, 278382, 289536, 289535, 289167, 421938, 421952, 421951, 409271, 408626, 408625, 408624, 408623, 408622, 408620, 408617, 408616, 421956, 421955, 409272, 408422, 408421, 408267, 408266, 408265, 408263, 408260, 408259, 341370, 285211, 285210, 285209, 285208, 286697);
UPDATE `quest_objectives` SET `Amount`=5, `ProgressBarWeight`=20, `VerifiedBuild`=46455 WHERE `ID`=408509; -- 408509
UPDATE `quest_objectives` SET `Amount`=5, `ProgressBarWeight`=20, `VerifiedBuild`=46455 WHERE `ID`=408508; -- 408508
UPDATE `quest_objectives` SET `Amount`=5, `ProgressBarWeight`=20, `VerifiedBuild`=46455 WHERE `ID`=408507; -- 408507
UPDATE `quest_objectives` SET `Amount`=5, `ProgressBarWeight`=20, `VerifiedBuild`=46455 WHERE `ID`=408506; -- 408506
UPDATE `quest_objectives` SET `Amount`=13, `ProgressBarWeight`=8, `VerifiedBuild`=46455 WHERE `ID`=408505; -- 408505
UPDATE `quest_objectives` SET `Amount`=13, `ProgressBarWeight`=8, `VerifiedBuild`=46455 WHERE `ID`=408504; -- 408504
UPDATE `quest_objectives` SET `Amount`=10, `ProgressBarWeight`=10, `VerifiedBuild`=46455 WHERE `ID`=408501; -- 408501
UPDATE `quest_objectives` SET `Amount`=5, `ProgressBarWeight`=20, `VerifiedBuild`=46455 WHERE `ID`=408358; -- 408358
UPDATE `quest_objectives` SET `Amount`=5, `ProgressBarWeight`=20, `VerifiedBuild`=46455 WHERE `ID`=408357; -- 408357
UPDATE `quest_objectives` SET `Amount`=5, `ProgressBarWeight`=20, `VerifiedBuild`=46455 WHERE `ID`=408356; -- 408356
UPDATE `quest_objectives` SET `Amount`=15, `ProgressBarWeight`=7, `VerifiedBuild`=46455 WHERE `ID`=408355; -- 408355
UPDATE `quest_objectives` SET `Amount`=15, `ProgressBarWeight`=7, `VerifiedBuild`=46455 WHERE `ID`=408354; -- 408354
UPDATE `quest_objectives` SET `Amount`=15, `ProgressBarWeight`=7, `VerifiedBuild`=46455 WHERE `ID`=408353; -- 408353
UPDATE `quest_objectives` SET `Amount`=15, `ProgressBarWeight`=7, `VerifiedBuild`=46455 WHERE `ID`=408352; -- 408352
UPDATE `quest_objectives` SET `Amount`=25, `ProgressBarWeight`=4, `VerifiedBuild`=46455 WHERE `ID`=408351; -- 408351
UPDATE `quest_objectives` SET `Flags`=0, `VerifiedBuild`=46455 WHERE `ID`=408350; -- 408350
UPDATE `quest_objectives` SET `Amount`=10, `ProgressBarWeight`=10, `VerifiedBuild`=46455 WHERE `ID`=408532; -- 408532
UPDATE `quest_objectives` SET `Amount`=17, `ProgressBarWeight`=6, `VerifiedBuild`=46455 WHERE `ID`=408527; -- 408527
UPDATE `quest_objectives` SET `Amount`=17, `ProgressBarWeight`=6, `VerifiedBuild`=46455 WHERE `ID`=408526; -- 408526
UPDATE `quest_objectives` SET `Amount`=25, `ProgressBarWeight`=4, `VerifiedBuild`=46455 WHERE `ID`=408525; -- 408525
UPDATE `quest_objectives` SET `Amount`=9, `ProgressBarWeight`=12, `VerifiedBuild`=46455 WHERE `ID`=408523; -- 408523
UPDATE `quest_objectives` SET `Amount`=10, `ProgressBarWeight`=10, `VerifiedBuild`=46455 WHERE `ID`=408520; -- 408520
UPDATE `quest_objectives` SET `Amount`=10, `ProgressBarWeight`=10, `VerifiedBuild`=46455 WHERE `ID`=408519; -- 408519
UPDATE `quest_objectives` SET `Amount`=10, `ProgressBarWeight`=10, `VerifiedBuild`=46455 WHERE `ID`=408518; -- 408518
UPDATE `quest_objectives` SET `Amount`=13, `ProgressBarWeight`=8, `VerifiedBuild`=46455 WHERE `ID`=408517; -- 408517
UPDATE `quest_objectives` SET `Amount`=13, `ProgressBarWeight`=8, `VerifiedBuild`=46455 WHERE `ID`=408516; -- 408516
UPDATE `quest_objectives` SET `Amount`=13, `ProgressBarWeight`=8, `VerifiedBuild`=46455 WHERE `ID`=408522; -- 408522
UPDATE `quest_objectives` SET `Amount`=5, `ProgressBarWeight`=20, `VerifiedBuild`=46455 WHERE `ID`=408515; -- 408515
UPDATE `quest_objectives` SET `Amount`=13, `ProgressBarWeight`=8, `VerifiedBuild`=46455 WHERE `ID`=408514; -- 408514
UPDATE `quest_objectives` SET `Amount`=20, `ProgressBarWeight`=5, `VerifiedBuild`=46455 WHERE `ID`=408513; -- 408513
UPDATE `quest_objectives` SET `Amount`=17, `ProgressBarWeight`=6, `VerifiedBuild`=46455 WHERE `ID`=408512; -- 408512
UPDATE `quest_objectives` SET `Amount`=25, `ProgressBarWeight`=4, `VerifiedBuild`=46455 WHERE `ID`=408511; -- 408511
UPDATE `quest_objectives` SET `Amount`=20, `ProgressBarWeight`=5, `VerifiedBuild`=46455 WHERE `ID`=408510; -- 408510
UPDATE `quest_objectives` SET `Amount`=15, `ProgressBarWeight`=7, `VerifiedBuild`=46455 WHERE `ID`=408349; -- 408349
UPDATE `quest_objectives` SET `Flags`=0, `VerifiedBuild`=46455 WHERE `ID`=408348; -- 408348
UPDATE `quest_objectives` SET `Amount`=20, `ProgressBarWeight`=5, `VerifiedBuild`=46455 WHERE `ID`=408194; -- 408194
UPDATE `quest_objectives` SET `Amount`=7, `ProgressBarWeight`=15, `VerifiedBuild`=46455 WHERE `ID`=408193; -- 408193
UPDATE `quest_objectives` SET `Amount`=7, `ProgressBarWeight`=15, `VerifiedBuild`=46455 WHERE `ID`=408192; -- 408192
UPDATE `quest_objectives` SET `Amount`=7, `ProgressBarWeight`=15, `VerifiedBuild`=46455 WHERE `ID`=408191; -- 408191
UPDATE `quest_objectives` SET `Amount`=4, `ProgressBarWeight`=25, `VerifiedBuild`=46455 WHERE `ID`=408190; -- 408190
UPDATE `quest_objectives` SET `Amount`=13, `ProgressBarWeight`=8, `VerifiedBuild`=46455 WHERE `ID`=408189; -- 408189
UPDATE `quest_objectives` SET `Amount`=25, `ProgressBarWeight`=4, `VerifiedBuild`=46455 WHERE `ID`=408188; -- 408188
UPDATE `quest_objectives` SET `Amount`=20, `ProgressBarWeight`=5, `VerifiedBuild`=46455 WHERE `ID`=408187; -- 408187
UPDATE `quest_objectives` SET `Amount`=25, `ProgressBarWeight`=4, `VerifiedBuild`=46455 WHERE `ID`=408186; -- 408186
UPDATE `quest_objectives` SET `Amount`=15, `ProgressBarWeight`=7, `VerifiedBuild`=46455 WHERE `ID`=408185; -- 408185
UPDATE `quest_objectives` SET `Flags`=0, `VerifiedBuild`=46455 WHERE `ID`=408184; -- 408184

DELETE FROM `quest_visual_effect` WHERE (`Index`=0 AND `ID` IN (397110,397128,397127,397109)) OR (`Index`=1 AND `ID`=397127);
INSERT INTO `quest_visual_effect` (`ID`, `Index`, `VisualEffect`, `VerifiedBuild`) VALUES
(397110, 0, 14430, 46455),
(397128, 0, 14430, 46455),
(397127, 1, 16386, 46455),
(397127, 0, 14430, 46455),
(397109, 0, 14430, 46455);

UPDATE `quest_visual_effect` SET `VerifiedBuild`=46455 WHERE (`Index`=0 AND `ID` IN (393027,393026,398150,398168,398279,398287,398288,393309,393308,392864,392863,392862,289066,398341,405569,405568,396931,393628,393643,404357,404354,405647,405648,396532,396528,394456,405334,405331,408505,408504,408501,408355,408354,408353,406865,406764,406683,285188,285107,285106,279406,279334,278820,278418,408194,408192,408191,408189,408184)) OR (`Index`=1 AND `ID` IN (393309,398341,405648,396532,396528,394456,405331,408505,408501,278820,278418,408184)) OR (`Index`=5 AND `ID` IN (398341,405648,394456,408184)) OR (`Index`=4 AND `ID` IN (398341,405648,394456,408184)) OR (`Index`=3 AND `ID` IN (398341,405648,396532,394456,278418,408184)) OR (`Index`=2 AND `ID` IN (398341,405648,396532,396528,394456,405331,408501,278418,408184)) OR (`Index`=9 AND `ID`=405648) OR (`Index`=8 AND `ID`=405648) OR (`Index`=7 AND `ID`=405648) OR (`Index`=6 AND `ID` IN (405648,408184));


UPDATE `quest_reward_display_spell` SET `VerifiedBuild`=46455 WHERE (`QuestID`=43341 AND `Idx`=0);


UPDATE `creature_template` SET `VerifiedBuild`=46455 WHERE `entry` IN (158618, 158620, 158628, 158629, 167584, 172058, 172060, 159787, 159788, 159791, 157557, 157558, 157560, 168731, 160921, 157599, 159840, 159853, 157622, 166577, 158772, 157660, 166599, 164369, 164370, 157681, 172206, 158807, 168892, 157725, 157728, 168919, 158869, 157761, 166699, 175651, 175653, 166738, 62862, 166743, 166746, 167893, 163427, 171255, 158968, 174635, 161279, 169099, 160173, 160174, 160178, 174715, 174716, 157962, 176951, 154627, 160223, 166925, 166926, 164693, 166928, 166930, 166931, 166932, 166935, 166936, 18375, 166937, 18376, 166941, 166942, 166943, 170325, 174794, 160274, 168103, 164752, 160285, 164762, 164769, 158078, 158084, 167022, 167026, 161441, 169263, 158094, 167033, 161449, 164805, 167041, 167043, 170399, 167055, 174876, 171526, 167064, 170415, 169308, 169313, 167080, 158159, 159277, 158160, 159278, 158161, 158162, 167109, 158177, 158178, 167115, 174936, 158181, 167118, 167119, 168244, 168245, 160428, 160430, 160432, 160434, 160437, 174959, 161555, 174960, 161557, 169382, 167151, 168268, 167153, 167155, 169390, 159337, 159338, 159339, 167164, 160470, 158238, 158247, 157138, 168309, 158256, 159391, 159396, 168333, 158290, 166120, 159423, 172839, 158319, 176200, 169504, 168387, 160569, 175091, 169509, 175098, 160581, 166166, 165055, 165068, 160602, 160606, 168436, 159504, 159505, 163974, 157274, 157277, 160632, 158400, 121541, 160637, 160645, 160647, 165116, 158427, 32206, 168497, 168502, 156228, 167404, 165189, 170780, 169673, 158503, 158504, 158509, 158510, 156279, 170803, 169692, 170820, 170821, 170822, 170823, 173057, 165239, 165240, 168613, 168617, 173096, 169755, 169757, 173115, 173117, 156376, 158612);
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=14565; -- Charger
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=73780; -- Prideful Gladiator's Cloud Serpent
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry` IN (168733, 171702); -- Copperfur Kit
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=99541; -- Risen Skulker
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=21354; -- Fiery Warhorse
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=9158; -- Warhorse
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=65011; -- Albino Riding Crane
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=168915; -- Field Everhopper
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=304; -- Felsteed
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=305; -- White Stallion
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=28302; -- Acherus Deathcharger
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=175777; -- Crystalsnap
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=175785; -- Kostos
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=26125; -- Risen Ghoul
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=160175; -- Praetor Sentry
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=169126; -- Glimmerpool Hatchling
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=154630; -- Elysian Guardian
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=18357; -- Ebon Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=154631; -- Elysian Bulwark
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=18359; -- Snowy Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=18360; -- Golden Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=18362; -- Swift Purple Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=18406; -- Swift Blue Gryphon
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=55272; -- Mountain Horse
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46455 WHERE `entry`=174875; -- Terrified Steward
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46455 WHERE `entry`=174961; -- Crystal Beam Bunny
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry` IN (174998, 175196, 54638); -- Generic Bunny
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=24207; -- Army of the Dead
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=171664; -- Fluttering Glimmerfly
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=171668; -- Vibrant Glimmerfly
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=171712; -- Wader Chick
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=169501; -- Shadowlands Wormhole
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=168397; -- Soulwing Flitter
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=168410; -- Aureate Peachick
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=168437; -- Riverfall Hatchling
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=169690; -- Incursive Slime
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=169691; -- Invasive Boneweaver
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=46455 WHERE `entry`=165241; -- Pick up a weapon
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=168624; -- Spiritwing Flitter
UPDATE `creature_template` SET `HealthScalingExpansion`=9, `VerifiedBuild`=46455 WHERE `entry`=14505; -- Dreadsteed


UPDATE `creature_template_model` SET `VerifiedBuild`=46455 WHERE (`Idx`=3 AND `CreatureID` IN (99541,160437,160285,167043,167155,167153,167080,165116,167026,170823,170822,174960,170780,158094,158084,165240,159505,161279,159504,158620,160921,156228,159791,157681,159853,157557,157599,26125)) OR (`Idx`=2 AND `CreatureID` IN (99541,160437,160285,160569,167043,167155,167153,167080,165116,167026,170823,170822,174960,170780,158094,158084,165240,159505,161279,159504,158620,160921,156228,159791,157681,159853,157557,157599,26125)) OR (`Idx`=1 AND `CreatureID` IN (99541,160632,174936,167893,160274,62862,160437,160285,175196,160569,157962,165068,174998,169692,167043,167155,167153,166925,167080,165116,167026,170823,170822,170820,174961,174960,167115,169691,166926,170780,170803,161555,173117,166120,158247,158400,158178,169126,164693,158094,158084,174794,165241,165240,170415,157761,159505,161279,159504,168245,161557,54638,158968,159396,159338,166699,159339,166746,166743,173057,166599,158620,160921,158618,158504,156228,157725,156279,159791,174876,157681,159853,157557,157660,157622,157599,26125)) OR (`Idx`=0 AND `CreatureID` IN (99541,160632,169501,174936,160434,167893,160602,160432,160428,160274,160223,160173,171526,62862,160581,160470,160178,160174,121541,172839,172206,163427,160437,160430,160285,160175,159423,175196,160569,175651,158427,157962,160606,165068,165055,169504,169263,174998,170325,175785,169509,169757,169692,169755,167584,167064,167055,167043,167022,167041,167033,166932,166930,167155,167153,167151,166943,166931,166928,166925,167080,166937,166941,165116,166942,175091,167119,167026,170823,167164,170821,167404,167118,170822,170820,167109,174961,167115,169691,166936,166935,166926,170780,170803,169690,169382,169313,169390,161555,173117,171255,168892,164805,164762,166120,158247,158238,158400,158319,158256,158181,158178,158177,158162,158161,158160,171664,169308,169126,169099,164693,158159,158612,158078,158290,176951,164752,158094,164769,158084,171702,168733,172058,173115,172060,168731,158629,158628,168617,168613,168410,165189,170399,168502,168437,154627,174794,168333,168268,165241,165239,174635,165240,154631,168309,158509,158510,170415,157761,154630,168919,166166,168915,159505,158869,161279,159504,168245,168244,175777,160647,160637,159787,161557,161441,54638,168497,168436,158968,169673,161449,174959,159277,159396,159391,159338,166699,159339,166738,166746,166743,166577,173057,159337,159278,157138,174716,174715,158807,176200,166599,158620,158503,160921,158618,158504,156228,157728,171712,157725,158772,156376,175098,157277,175653,157274,168624,168103,24207,156279,168387,159791,174875,159840,173096,174876,164369,160645,164370,163974,171668,157681,159853,168397,157557,157660,159788,157622,157599,157560,157558,305,21354,65011,55272,32206,18362,18375,18376,18406,18359,18357,18360,14565,14505,9158,73780,28302,304,26125)) OR (`Idx`=4 AND `CreatureID` IN (167043,167080,167026,174960,165240,159505,161279,159504,158620,160921,156228,159791,157681,159853,157557,157599)) OR (`Idx`=5 AND `CreatureID` IN (159505,161279,159504,158620,160921,156228,157681,157557,157599)) OR (`Idx`=32 AND `CreatureID`=160921) OR (`Idx`=31 AND `CreatureID`=160921) OR (`Idx`=30 AND `CreatureID`=160921) OR (`Idx`=29 AND `CreatureID`=160921) OR (`Idx`=28 AND `CreatureID`=160921) OR (`Idx`=27 AND `CreatureID`=160921) OR (`Idx`=26 AND `CreatureID`=160921) OR (`Idx`=25 AND `CreatureID`=160921) OR (`Idx`=24 AND `CreatureID`=160921) OR (`Idx`=23 AND `CreatureID`=160921) OR (`Idx`=22 AND `CreatureID`=160921) OR (`Idx`=21 AND `CreatureID`=160921) OR (`Idx`=20 AND `CreatureID`=160921) OR (`Idx`=19 AND `CreatureID`=160921) OR (`Idx`=18 AND `CreatureID`=160921) OR (`Idx`=17 AND `CreatureID`=160921) OR (`Idx`=16 AND `CreatureID`=160921) OR (`Idx`=15 AND `CreatureID`=160921) OR (`Idx`=14 AND `CreatureID`=160921) OR (`Idx`=13 AND `CreatureID`=160921) OR (`Idx`=12 AND `CreatureID`=160921) OR (`Idx`=11 AND `CreatureID`=160921) OR (`Idx`=10 AND `CreatureID`=160921) OR (`Idx`=9 AND `CreatureID` IN (160921,156228)) OR (`Idx`=8 AND `CreatureID` IN (160921,156228)) OR (`Idx`=7 AND `CreatureID` IN (160921,156228)) OR (`Idx`=6 AND `CreatureID` IN (160921,156228));
UPDATE `creature_template_model` SET `DisplayScale`=1.149999976158142089, `VerifiedBuild`=46455 WHERE (`CreatureID`=174960 AND `Idx`=0); -- Disciple of Courage


UPDATE `creature_questitem` SET `VerifiedBuild`=46455 WHERE (`Idx`=1 AND `CreatureEntry` IN (172206,160606,169504,169755,169390,171255,172060,168731,168617,168333,157761,168244,157728,157277,157274,168387,157557,157599,157560,157558)) OR (`Idx`=0 AND `CreatureEntry` IN (172206,160569,160606,165068,165055,169504,170325,169509,169757,169755,169390,171255,168892,169099,172058,172060,168731,158629,158628,168617,168613,168333,168309,157761,168244,168436,169673,159277,159278,157728,157277,157274,168387,157557,157660,157599,157560,157558)) OR (`Idx`=2 AND `CreatureEntry` IN (157761,157277,157274,157557,157599,157558));

DELETE FROM `gameobject_template` WHERE `entry` IN (363997 /*Bone Spike*/, 363996 /*Bone Spike*/, 363998 /*Bone Spike*/, 363994 /*Noxious Barrel*/, 363995 /*Banner*/, 364042 /*Necrotic Extractor*/, 364041 /*Banner*/);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `Data24`, `Data25`, `Data26`, `Data27`, `Data28`, `Data29`, `Data30`, `Data31`, `Data32`, `Data33`, `Data34`, `ContentTuningId`, `VerifiedBuild`) VALUES
(363997, 10, 65232, 'Bone Spike', 'questinteract', 'Tearing', '', 1, 2668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 342980, 0, 0, 0, 200898, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46455), -- Bone Spike
(363996, 10, 65231, 'Bone Spike', 'questinteract', 'Tearing', '', 1, 2668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 342980, 0, 0, 0, 200898, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46455), -- Bone Spike
(363998, 10, 65233, 'Bone Spike', 'questinteract', 'Tearing', '', 1, 2668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 342980, 0, 0, 0, 200898, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46455), -- Bone Spike
(363994, 10, 60976, 'Noxious Barrel', 'questinteract', 'Tearing', '', 1, 2741, 0, 0, 0, 0, 0, 0, 0, 0, 0, 333356, 0, 0, 0, 200898, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46455), -- Noxious Barrel
(363995, 10, 61798, 'Banner', 'questinteract', 'Destroying', '', 1, 2799, 0, 0, 0, 0, 0, 0, 0, 0, 0, 333351, 0, 0, 0, 24585, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46455), -- Banner
(364042, 10, 58519, 'Necrotic Extractor', 'questinteract', '', '', 0.5, 2741, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46455), -- Necrotic Extractor
(364041, 10, 62006, 'Banner', 'questinteract', 'Destroying', '', 1, 2799, 0, 0, 0, 0, 0, 0, 0, 0, 0, 333351, 0, 0, 0, 24585, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46455); -- Banner

UPDATE `gameobject_template` SET `VerifiedBuild`=46455 WHERE `entry` IN (352025, 352022, 352085, 352084, 352027, 351720, 343795, 356553, 355783, 353833, 353832, 353831, 341884, 348558, 352023, 346108, 348547, 354164, 354156, 354154, 349964, 350946, 349972, 357085, 354097, 354160, 354158, 355204, 352175, 350073, 355423, 355422, 355421, 354157, 354127, 349969, 349971, 349966, 349965, 357225, 355497, 350809, 349967, 354153, 252248, 336444, 335588, 354926, 346114, 348634, 348633, 349898, 352751, 349084, 351469, 339572, 338504, 338216, 339574, 349704, 349878, 349877, 349876, 349703, 349701, 339587, 363993, 344725, 349702, 334849, 334847, 350086, 349980, 350980, 336690, 339231, 361259, 350771, 350772, 357226, 361260, 349899, 350770, 353378, 354038, 361258, 361261, 352079);
UPDATE `gameobject_template` SET `IconName`='questinteract', `VerifiedBuild`=46455 WHERE `entry`=363992; -- Adrima's Lily


UPDATE `gameobject_questitem` SET `VerifiedBuild`=46455 WHERE (`GameObjectEntry`=356553 AND `Idx` IN (15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0)) OR (`GameObjectEntry`=346108 AND `Idx`=0) OR (`GameObjectEntry`=355497 AND `Idx`=0) OR (`GameObjectEntry`=363992 AND `Idx`=0);

DELETE FROM `world_quest` WHERE `id` IN (54373 /*54373*/, 59850 /*59850*/);
INSERT INTO `world_quest` (`id`, `duration`, `variable`, `value`) VALUES
(54373, 86400, 16758, 1), -- 54373
(59850, 86400, 19139, 3); -- 59850

UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096
UPDATE `world_quest` SET `variable`=14064 WHERE `id`=49098; -- 49098
UPDATE `world_quest` SET `variable`=14246 WHERE `id`=48982; -- 48982
UPDATE `world_quest` SET `variable`=14060 WHERE `id`=49096; -- 49096


SET @NPCTEXTID := 100000;
DELETE FROM `npc_text` WHERE `ID` BETWEEN @NPCTEXTID+0 AND @NPCTEXTID+2;
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(@NPCTEXTID+0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46455), -- 158618 (Aspiring Soul)
(@NPCTEXTID+1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 46455), -- 171255 (Echo of Aella)
(@NPCTEXTID+2, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 46455); -- 160173 (Inkiep)

DELETE FROM `gossip_menu` WHERE (`MenuID`=26582 AND `TextID`=@NPCTEXTID+0) OR (`MenuID`=26002 AND `TextID`=@NPCTEXTID+1) OR (`MenuID`=26686 AND `TextID`=@NPCTEXTID+2);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(26582, @NPCTEXTID+0, 46455), -- 158618 (Aspiring Soul)
(26002, @NPCTEXTID+1, 46455), -- 171255 (Echo of Aella)
(26686, @NPCTEXTID+2, 46455); -- 160173 (Inkiep)

UPDATE `creature_template` SET `gossip_menu_id`='60187' WHERE  `entry`=60187;
REPLACE INTO `gossip_menu_option` (`MenuID`, `OptionText`) VALUES ('60187', 'Let\'s go out of here.');

UPDATE `creature_template` SET `gossip_menu_id`='60178' WHERE  `entry`=60178;
REPLACE INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextID`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES (60178, 0, 0, 'Let\'s head to the stables', 0, 0, 0, 0, 0, 0, NULL, 0, 0);

UPDATE `creature_template` SET `gossip_menu_id`='60189' WHERE  `entry`=60189;
REPLACE INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextID`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES (60189, 0, 0, 'Let\'s go out of here.', 0, 0, 0, 0, 0, 0, NULL, 0, 0);

UPDATE `creature_template` SET `gossip_menu_id`='60190' WHERE  `entry`=60190;
REPLACE INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextID`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES (60190, 0, 0, 'Let\'s go out of here.', 0, 0, 0, 0, 0, 0, NULL, 0, 0);

DELETE FROM `smart_scripts` WHERE `entryorguid`=60178 AND `source_type`=0 AND `id`=0 AND `link`=1;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (60178, 0, 0, 1, 62, 0, 100, 0, 60178, 0, 0, 0, 0, '', 33, 60178, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'on gossip give killcredit');
DELETE FROM `smart_scripts` WHERE `entryorguid`=60178 AND `source_type`=0 AND `id`=1 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (60178, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 62, 870, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1962.61, 2059.76, 455.47, 5.569, 'tele');

DELETE FROM `smart_scripts` WHERE `entryorguid`=60187 AND `source_type`=0 AND `id`=0 AND `link`=1;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (60187, 0, 0, 1, 62, 0, 100, 0, 60187, 0, 0, 0, 0, '', 33, 60187, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'GossipSelect Killcredit');
DELETE FROM `smart_scripts` WHERE `entryorguid`=60187 AND `source_type`=0 AND `id`=1 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (60187, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 62, 870, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1862.99, 2051.7, 455.553, 0.483, 'Tele');

DELETE FROM `smart_scripts` WHERE `entryorguid`=60189 AND `source_type`=0 AND `id`=0 AND `link`=1;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (60189, 0, 0, 1, 62, 0, 100, 0, 60189, 0, 0, 0, 0, '', 33, 60189, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Killcredit');
DELETE FROM `smart_scripts` WHERE `entryorguid`=60189 AND `source_type`=0 AND `id`=1 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (60189, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 62, 870, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1867.96, 2058.01, 455.774, 4.034, 'Tele');

DELETE FROM `smart_scripts` WHERE `entryorguid`=60190 AND `source_type`=0 AND `id`=0 AND `link`=1;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (60190, 0, 0, 1, 62, 0, 100, 0, 60190, 0, 0, 0, 0, '', 33, 60190, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'On Gossip Killcredit');
DELETE FROM `smart_scripts` WHERE `entryorguid`=60190 AND `source_type`=0 AND `id`=1 AND `link`=0;
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (60190, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 62, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1866.69, 2050.17, 455.553, 0.735, 'Tele');

DELETE FROM `creature` WHERE  `guid`=10550057;
DELETE FROM `creature` WHERE  `guid`=10550055;
DELETE FROM `creature` WHERE  `guid`=10550060;
