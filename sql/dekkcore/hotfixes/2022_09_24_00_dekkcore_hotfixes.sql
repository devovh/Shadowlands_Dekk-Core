DELETE FROM hotfix_blob WHERE tablehash = 0xDDC77B6;

--
-- Table structure for table `garr_auto_spell`
--

DROP TABLE IF EXISTS `garr_auto_spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garr_auto_spell` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `Name` text,
  `Description` text,
  `Cooldown` int(11) NOT NULL DEFAULT '0',
  `Duration` int(11) NOT NULL DEFAULT '0',
  `Flags` int(11) NOT NULL DEFAULT '0',
  `SchoolMask` int(11) NOT NULL DEFAULT '0',
  `IconFileDataID` int(11) NOT NULL DEFAULT '0',
  `VerifiedBuild` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garr_auto_spell`
--

LOCK TABLES `garr_auto_spell` WRITE;
/*!40000 ALTER TABLE `garr_auto_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `garr_auto_spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garr_auto_spell_locale`
--

DROP TABLE IF EXISTS `garr_auto_spell_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garr_auto_spell_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `Description_lang` text,
  `VerifiedBuild` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
/*!50500 PARTITION BY LIST  COLUMNS(locale)
(PARTITION deDE VALUES IN ('deDE') ENGINE = InnoDB,
 PARTITION esES VALUES IN ('esES') ENGINE = InnoDB,
 PARTITION esMX VALUES IN ('esMX') ENGINE = InnoDB,
 PARTITION frFR VALUES IN ('frFR') ENGINE = InnoDB,
 PARTITION itIT VALUES IN ('itIT') ENGINE = InnoDB,
 PARTITION koKR VALUES IN ('koKR') ENGINE = InnoDB,
 PARTITION ptBR VALUES IN ('ptBR') ENGINE = InnoDB,
 PARTITION ruRU VALUES IN ('ruRU') ENGINE = InnoDB,
 PARTITION zhCN VALUES IN ('zhCN') ENGINE = InnoDB,
 PARTITION zhTW VALUES IN ('zhTW') ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garr_auto_spell_locale`
--

LOCK TABLES `garr_auto_spell_locale` WRITE;
/*!40000 ALTER TABLE `garr_auto_spell_locale` DISABLE KEYS */;
/*!40000 ALTER TABLE `garr_auto_spell_locale` ENABLE KEYS */;
UNLOCK TABLES;
