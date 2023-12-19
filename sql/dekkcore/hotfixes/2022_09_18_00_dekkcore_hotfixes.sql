--
-- Table structure for table `anim_kit_bone_set_alias`
--

DROP TABLE IF EXISTS `anim_kit_bone_set_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anim_kit_bone_set_alias` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `BoneDataID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AnimKitBoneSetID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anim_kit_bone_set_alias`
--

LOCK TABLES `anim_kit_bone_set_alias` WRITE;
/*!40000 ALTER TABLE `anim_kit_bone_set_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `anim_kit_bone_set_alias` ENABLE KEYS */;
UNLOCK TABLES;