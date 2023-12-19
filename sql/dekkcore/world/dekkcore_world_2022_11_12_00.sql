UPDATE creature_template SET npcflag='2097152' WHERE  entry=8719;
UPDATE creature_template SET gossip_menu_id='699' WHERE  entry=2457;
UPDATE creature_template SET gossip_menu_id='699' WHERE  entry=2456;
UPDATE creature_template SET gossip_menu_id='699' WHERE  entry=2455;
UPDATE creature_template SET gossip_menu_id='699' WHERE  entry=43822;
UPDATE creature_template SET gossip_menu_id='699' WHERE  entry=43820;
UPDATE creature_template SET gossip_menu_id='699' WHERE  entry=43819;
UPDATE creature_template SET gossip_menu_id='699' WHERE  entry=43692;
UPDATE creature_template SET gossip_menu_id='704' WHERE  entry=352;

-- parte  1
-- fix quest 54952 -- ya se puede cogear la mision --
UPDATE `quest_template` SET `questtype`='2'  WHERE `id`=54952;


-- quest 54952 fix  aliansa 156626--
-- Quest 54952
-- capitana garrick 156626 (questgiver)
-- capitana garrick 196626 (objetive)
-- quest al 85% 

DELETE FROM `creature_template` WHERE `entry`=196626 ;
insert into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `femaleName`, `subname`, `TitleAlt`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `HealthScalingExpansion`, `RequiredExpansion`, `VignetteID`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `family`, `trainer_class`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `HealthModifierExtra`, `ManaModifier`, `ManaModifierExtra`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `CreatureDifficultyID`, `WidgetSetID`, `WidgetSetUnitConditionID`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) values
('196626','0','0','0','0','0','Captain Garrick','',NULL,NULL,NULL,'0','1','10','0','0','0','1732','2','1','1.14286','1','0','0','2000','2000','1','1','1','768','34816','0','0','0','0','7','0','0','0','0','0','0','0','0','','0','1','1','1','1','1','1','0.2','1','0','0','173834','0','0','1','0','0','0','npc_captain_garrick_156626','45745');
UPDATE `creature_template` SET `scriptname`='0' ,`AIName`='SmartAI'  WHERE `entry` in (156626,196626);
UPDATE `creature` SET `spawntimesecs`=15 WHERE `id` in (156626);
UPDATE `creature` SET `spawntimesecs`=15 WHERE `id` in (196626);

UPDATE `quest_objectives` SET `OBJECTID`='196626' , `type`='2' WHERE `questid` in (54952);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (156626);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,
`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(156626,0,0,1,19,0,100,0,54952,0,100,100,12,196626,6,100,0,0,0,8,0,0,0,-435.153015,-2610.989990,0.667893,0.702199,'On quest 29907 accepted - Summon capitana garrick 56343'),
(156626,0,1,2,19,0,100,0,54952,0,100,100,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Despawn Chen capitana garrick 156626');


DELETE FROM `smart_scripts` WHERE `entryorguid` IN (196626);
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,
`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(196626,0,1,2,25,0,100,0,0,0,3000,3000,53,1,969789,0,0,0,0,7,0,0,0,0,0,0,0,'npc - on just summoned - start WP'),
(196626,0,2,3,40,0,100,0,1,0,0,0,54,35000,0,0,0,0,0,7,0,0,0,0,0,0,0,'npc - on waypoint 4 - wp pause 35 secs'),
(196626,0,3,4,40,0,100,0,1,0,0,0,33,196626,0,0,0,0,0,18,20,0,0,0,0,0,0, 'npc - on wp 4 reached - Kill credit 56343 quest 29907');




DELETE FROM `waypoints` WHERE `entry`=969789 ;
INSERT INTO `waypoints`(`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(969789,1,-425.320740,-2608.071045,0.625727,'capitana garrick waypoint 1');


-- npc para  entregar quest 
replace into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values
('61000000001349674','149899','2175','0','0','0','0','0','0','-1','0','0','106.308','-2415.6','90.422','4.41219','300','0','0','57','0','0','0','0','0','0','0','','0');

-- npc faltante agregado --
replace into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values
('61000000001349675','156799','2175','0','0','0','0','0','0','-1','0','0','230.023','-2298.77','80.8949','1.20953','300','0','0','99','382','0','0','0','0','0','0','','0');

-- npc faltante agregado para  entregar quest [A Paladin's Service] --
replace into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values
('61000000001349676','162998','2175','0','0','0','0','0','0','-1','0','0','256.685','-2464.52','119.674','0.66449','300','0','0','149','0','0','0','0','0','0','0','','0');


-- fix  quest [A Paladin's Service] 58923

UPDATE `creature_template` SET `ainame`='SmartAI' , `gossip_menu_id`='25098' WHERE `entry` in (162998);
REPLACE INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextID`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) values
('25098','2','0','¿Qué desea que haga la Luz?','0','0','25099','0','0','100000','Are you sure you wish to purchase a Dual Talent Specialization?','0','38134');
REPLACE INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionNpc`, `OptionText`, `OptionBroadcastTextID`, `Language`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) values
('25098','0','0','Necesito que reduzcas el tiempo de reutilización de Escudo divino.','0','0','0','0','0','0',NULL,'0','38134');
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (162998);
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
('162998','0','0','0','62','0','100','0','25098','0','0','0','0','','33','162998','0','0','0','0','0','7','0','0','0','0','0','0','0','0','Smart Script');



