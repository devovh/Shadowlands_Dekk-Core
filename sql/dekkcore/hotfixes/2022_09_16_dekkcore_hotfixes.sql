--
-- Table structure for table `anim_kit_bone_set`
--

DROP TABLE IF EXISTS `anim_kit_bone_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anim_kit_bone_set` (
  `Name` text,
  `ID` int(11) NOT NULL DEFAULT '0',
  `BoneDataID` int(11) NOT NULL DEFAULT '0',
  `ParentAnimKitBoneSetID` tinyint(4) NOT NULL DEFAULT '0',
  `AltAnimKitBoneSetID` tinyint(4) NOT NULL DEFAULT '0',
  `AltBoneDataID` int(11) NOT NULL DEFAULT '0',
  `VerifiedBuild` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anim_kit_bone_set`
--

LOCK TABLES `anim_kit_bone_set` WRITE;
/*!40000 ALTER TABLE `anim_kit_bone_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `anim_kit_bone_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anim_kit_bone_set_locale`
--

DROP TABLE IF EXISTS `anim_kit_bone_set_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anim_kit_bone_set_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
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
-- Dumping data for table `anim_kit_bone_set_locale`
--

LOCK TABLES `anim_kit_bone_set_locale` WRITE;
/*!40000 ALTER TABLE `anim_kit_bone_set_locale` DISABLE KEYS */;
/*!40000 ALTER TABLE `anim_kit_bone_set_locale` ENABLE KEYS */;
UNLOCK TABLES;