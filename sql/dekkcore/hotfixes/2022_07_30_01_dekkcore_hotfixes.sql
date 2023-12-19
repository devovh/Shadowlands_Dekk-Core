/*Table structure for table `battle_pet_ability_effect` */

DROP TABLE IF EXISTS `battle_pet_ability_effect`;

CREATE TABLE `battle_pet_ability_effect` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BattlePetAbilityTurnID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BattlePetEffectPropertiesID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AuraBattlePetAbilityID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `BattlePetVisualID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Param1` smallint(6) NOT NULL DEFAULT '0',
  `Param2` smallint(6) NOT NULL DEFAULT '0',
  `Param3` smallint(6) NOT NULL DEFAULT '0',
  `Param4` smallint(6) NOT NULL DEFAULT '0',
  `Param5` smallint(6) NOT NULL DEFAULT '0',
  `Param6` smallint(6) NOT NULL DEFAULT '0',
  `VerifiedBuild` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `battle_pet_ability_effect` */
