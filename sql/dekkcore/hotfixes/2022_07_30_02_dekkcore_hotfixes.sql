/*Table structure for table `battle_pet_ability_state` */

DROP TABLE IF EXISTS `battle_pet_ability_state`;

CREATE TABLE `battle_pet_ability_state` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BattlePetStateID` int(10) unsigned NOT NULL DEFAULT '0',
  `Value` int(11) NOT NULL DEFAULT '0',
  `BattlePetAbilityID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `battle_pet_ability_state` */

/*Table structure for table `battle_pet_ability_turn` */

DROP TABLE IF EXISTS `battle_pet_ability_turn`;

CREATE TABLE `battle_pet_ability_turn` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BattlePetAbilityID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TurnTypeEnum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EventTypeEnum` tinyint(4) NOT NULL DEFAULT '0',
  `BattlePetVisualID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `battle_pet_ability_turn` */