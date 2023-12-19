--
-- Table structure for table `garr_auto_combatant`
--

DROP TABLE IF EXISTS `garr_auto_combatant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garr_auto_combatant` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `HealthBase` int(11) NOT NULL DEFAULT '0',
  `HealthGainPerLevel` int(11) NOT NULL DEFAULT '0',
  `AttackBase` int(11) NOT NULL DEFAULT '0',
  `AttackGainPerLevel` int(11) NOT NULL DEFAULT '0',
  `AttackSpellID` int(11) NOT NULL DEFAULT '0',
  `AbilitySpellID` int(11) NOT NULL DEFAULT '0',
  `AbilitySpellID2` int(11) NOT NULL DEFAULT '0',
  `PassiveSpellID` int(11) NOT NULL DEFAULT '0',
  `Role` int(11) NOT NULL DEFAULT '0',
  `VerifiedBuild` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`VerifiedBuild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garr_auto_combatant`
--

LOCK TABLES `garr_auto_combatant` WRITE;
/*!40000 ALTER TABLE `garr_auto_combatant` DISABLE KEYS */;
/*!40000 ALTER TABLE `garr_auto_combatant` ENABLE KEYS */;
UNLOCK TABLES;