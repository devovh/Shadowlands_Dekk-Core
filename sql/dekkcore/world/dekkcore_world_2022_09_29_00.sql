DELETE FROM `creature_loot_template` WHERE `Entry`=75484 AND `Item`=108481;
INSERT INTO `creature_loot_template` VALUES
(75484, 108481, 0, 100, 1, 1, 0, 1, 1, '');

SET @ENTRY := 75484;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,8000,8000,15000,25000,11,157291,0,0,0,0,0,1,0,0,0,0,0,0,0,''),
(@ENTRY,0,1,0,0,0,100,0,8000,8000,22000,25000,11,157360,2,0,0,0,0,5,0,0,0,0,0,0,0,'');

DELETE FROM `spell_script_names` WHERE `spell_id`=65109;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(65109, 'spell_deepholm_kill_all_constructs');

UPDATE creature_template SET ScriptName = 'npc_102585_jace_for_dh_questline' WHERE entry = 102585;
UPDATE creature_template SET gossip_menu_id = 65541, ScriptName = 'npc_ashran_commander_anne_dunworthy' WHERE entry = 84173;
UPDATE creature_template SET gossip_menu_id = 65542, ScriptName = 'npc_ashran_general_ushet_wolfbarger' WHERE entry = 84473;


REPLACE INTO spell_script_names VALUES
(178795, 'spell_ashran_blade_twister'),
(176670, 'spell_ashran_emberfall_living_bomb'),
(178531, 'spell_ashran_faction_rewards'),
(178533, 'spell_ashran_faction_rewards'),
(177150, 'spell_ashran_booming_shout'),
(166819, 'spell_ashran_horde_and_alliance_racer'),
(166784, 'spell_ashran_horde_and_alliance_racer');

REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (1, 10, 40, 45, 120, 611, 610, 150, 1, '', 'Alterac Valley');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (2, 2, 10, 10, 120, 769, 770, 75, 1, '', 'Warsong Gulch');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (3, 2, 15, 10, 120, 890, 889, 75, 1, '', 'Arathi Basin');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (7, 2, 15, 35, 120, 1103, 1104, 75, 1, '', 'Eye of The Storm');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (4, 0, 5, 10, 120, 929, 936, 0, 1, '', 'Nagrand Arena');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (5, 0, 5, 10, 120, 939, 940, 0, 1, '', 'Blades\'s Edge Arena');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (6, 0, 5, 10, 120, 0, 0, 0, 1, '', 'All Arena');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (8, 0, 5, 10, 120, 1258, 1259, 0, 1, '', 'Ruins of Lordaeron');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (9, 15, 15, 111, 120, 1367, 1368, 0, 1, '', 'Strand of the Ancients');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (10, 0, 5, 10, 120, 1362, 1363, 0, 1, '', 'Dalaran Sewers');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (11, 0, 5, 10, 120, 1364, 1365, 0, 1, '', 'The Ring of Valor');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (30, 10, 40, 71, 120, 1299, 1245, 200, 1, '', 'Isle of Conquest');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (32, 2, 40, 45, 120, 0, 0, 0, 1, '', 'Random battleground');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (108, 2, 10, 85, 120, 1726, 1727, 0, 0, '', 'Twin Peaks');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (120, 2, 10, 85, 120, 1798, 1799, 0, 0, '', 'The Battle for Gilneas');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (757, 0, 5, 90, 120, 4534, 4535, 0, 1, '', 'The Tiger\'s Peak');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (719, 0, 5, 90, 120, 4136, 4137, 10, 1, '', 'Tol\'viron Arena');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (809, 2, 5, 90, 120, 5126, 5127, 0, 1, '', 'Nagrand Arena (Legion)');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (816, 0, 5, 90, 120, 5307, 5308, 0, 1, '', 'Arena Ashamanes Fall');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (844, 0, 5, 90, 120, 5816, 5817, 0, 1, '', 'Blades Edge Arena');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (808, 0, 5, 90, 120, 5121, 5122, 0, 1, '', 'Black Rook Hold Arena');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (903, 0, 5, 90, 120, 6616, 6617, 0, 1, '', 'Arena Bfa Mugambala');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (699, 2, 10, 40, 120, 4534, 4535, 50, 1, '', 'Kotmogu\'s Temple');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (708, 5, 10, 35, 120, 4062, 4061, 0, 1, '', 'Silvershard Mines');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (754, 8, 15, 45, 120, 4487, 4486, 0, 1, '', 'Deepwing Gorge');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (1025, 0, 5, 90, 120, 7208, 7209, 0, 1, '', 'The Robodrome');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (1020, 10, 40, 100, 120, 5276, 5275, 0, 1, '', 'Ashran - Epic Battleground');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (1021, 10, 40, 20, 120, 5276, 5275, 0, 1, '', 'Classic Ashran - Endless EB');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (894, 5, 10, 110, 120, 6163, 6164, 0, 1, '', 'Seething Shore - Resource Race	');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (890, 8, 15, 45, 120, 0, 0, 0, 1, '', 'Seething Strand - Domination');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (847, 8, 15, 0, 0, 5821, 5822, 0, 1, '', 'Arathi Basin Winter - Brawl');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (880, 6, 6, 110, 120, 0, 0, 0, 1, '', 'Arathi Basin - Brawl');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (1018, 8, 15, 10, 120, 7056, 7055, 0, 1, '', 'AB New');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (1019, 1, 15, 120, 120, 0, 0, 0, 1, '', 'Arathi Basin - Comp Stomp');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (1022, 8, 15, 120, 120, 0, 0, 0, 1, '', 'Arathi Basin - Brawl');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (897, 0, 5, 90, 120, 6276, 6277, 0, 1, '', 'Hook Point');
REPLACE INTO battleground_template (`ID`, `MinPlayersPerTeam`, `MaxPlayersPerTeam`, `MinLvl`, `MaxLvl`, `AllianceStartLoc`, `HordeStartLoc`, `StartMaxDist`, `Weight`, `ScriptName`, `Comment`) VALUES (1014, 5, 10, 10, 120, 7051, 7050, 0, 1, '', 'WSG New');

UPDATE `creature` SET `curhealth` = '71' WHERE `id` = '32820';

UPDATE `creature_template` SET `ScriptName`='npc_hun_spitting_cobra' WHERE (`entry`='104493');
UPDATE creature_template SET ScriptName = 'npc_pet_dk_guardian' WHERE entry IN(28017,26125);

UPDATE `areatrigger_create_properties` SET `ScriptName`='at_dru_starfall' WHERE  `Id`=4756;

UPDATE `areatrigger_create_properties` SET `ScriptName`='at_monk_chi_burst' WHERE  `Id`=1316;
UPDATE `areatrigger_create_properties` SET `ScriptName`='at_monk_ring_of_peace' WHERE  `Id`=5410;
UPDATE `areatrigger_create_properties` SET `ScriptName`='at_monk_ring_of_peace' WHERE  `Id`=718;

DELETE FROM `instance_template` WHERE `map` IN (1152, 1330, 1154, 1158, 1331, 1160, 1187, 1188, 1189, 1232, 1233, 1234, 1235, 1236, 1237, 1238, 1239, 1240, 1241, 1242, 1243, 1244, 1245);
INSERT INTO `instance_template` (`map`, `parent`, `script`) VALUES
(1152, 1116, 'instance_ffr_horde_garrison_level_1'),
(1330, 1116, 'instance_ffr_horde_garrison_level_2'),
(1154, 1116, 'instance_ffr_horde_garrison_level_3'),
(1232, 1116, 'instance_gor_horde_garrison_level_0'),
(1233, 1116, 'instance_gor_horde_garrison_level_3'),
(1236, 1116, 'instance_tal_horde_garrison_level_0'),
(1237, 1116, 'instance_tal_horde_garrison_level_3'),
(1240, 1116, 'instance_soa_horde_garrison_0'),
(1241, 1116, 'instance_soa_horde_garrison_3'),
(1244, 1116, 'instance_nag_horde_garrison_level_0'),
(1245, 1116, 'instance_nag_horde_garrison_level_3'),
(1158, 1116, 'instance_smv_alliance_garrison_level_1'),
(1331, 1116, 'instance_smv_alliance_garrison_level_2'),
(1160, 1116, 'instance_smv_alliance_garrison_level_3'),
(1187, 1116, 'instance_gor_alliance_garrison_level_1'),
(1188, 1116, 'instance_gor_alliance_garrison_level_2'),
(1189, 1116, 'instance_gor_alliance_garrison_level_3'),
(1234, 1116, 'instance_tal_alliance_garrison_level_0'),
(1235, 1116, 'instance_tal_alliance_garrison_level_3'),
(1238, 1116, 'instance_soa_alliance_garrison_0'),
(1239, 1116, 'instance_soa_alliance_garrison_3'),
(1242, 1116, 'instance_nag_alliance_garrison_level_0'),
(1243, 1116, 'instance_nag_alliance_garrison_level_3');

UPDATE `gameobject_template` SET `scriptname` = 'go_master_surveyor' WHERE `entry` = 233664;

-- Condition
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 25 AND `SourceGroup` = 0 AND `SourceEntry` = 1152;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(25, 0, 1152, 0, 0, 47, 0, 36793, 66, 0, 0, 'TerrainSwap to 1152 if Quest: 36793 is complete/rewarded');

