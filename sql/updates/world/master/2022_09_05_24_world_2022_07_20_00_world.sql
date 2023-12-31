--

DELETE FROM `spell_scripts` WHERE `id` = 67751;
DELETE FROM `spell_script_names` WHERE `ScriptName` IN (
'spell_black_knight_ghoul_explode',
'spell_black_knight_ghoul_explode_risen_ghoul');
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(67751,'spell_black_knight_ghoul_explode'),
(67754,'spell_black_knight_ghoul_explode_risen_ghoul'),
(67889,'spell_black_knight_ghoul_explode_risen_ghoul');


--
UPDATE `creature_template` SET `flags_extra` = `flags_extra` &~ 2 WHERE `entry` = 30273;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (30273,30274) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (3027400) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(30273,0,0,0,37,0,100,0,0,0,0,0,0,116,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Webbed Crusader - On AI Initialize - Set Corpse Delay"),
(30273,0,1,0,37,0,100,0,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Webbed Crusader - On AI Initialize - Set Reactstate Passive"),
(30273,0,2,0,6,0,100,0,0,0,0,0,0,11,56515,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Webbed Crusader - On Death - Cast 'Summon Freed Crusader'"),

(30274,0,0,0,11,0,100,0,0,0,0,0,0,80,3027400,2,0,0,0,0,1,0,0,0,0,0,0,0,0,"Freed Crusader - On Spawn - Run Script"),

(3027400,9,0,0,0,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Freed Crusader - On Script - Say Line 0"),
(3027400,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Freed Crusader - On Script - Set Orientation Summoner"),
(3027400,9,2,0,0,0,100,0,0,0,0,0,0,11,56525,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Freed Crusader - On Script - Cast 'Blessing of Kings'"),
(3027400,9,3,0,0,0,100,0,0,0,0,0,0,33,30274,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Freed Crusader - On Script - Quest Credit 'Scourge Tactics'"),
(3027400,9,4,0,0,0,100,0,4000,4000,0,0,0,1,1,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Freed Crusader - On Script - Say Line 1"),
(3027400,9,5,0,0,0,100,0,0,0,0,0,0,11,56539,0,0,0,0,0,23,0,0,0,0,0,0,0,0,"Freed Crusader - On Script - Cast 'Holy Light'"),
-- One of ~3 random paths\points, then despawn
(3027400,9,6,0,0,0,100,0,3000,3000,0,0,0,53,1,30274,0,0,0,0,1,0,0,0,0,0,0,0,0,"Freed Crusader - On Script - Start Waypoint"),
(3027400,9,7,0,0,0,100,0,0,0,0,0,0,41,4000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Freed Crusader - On Script - Despawn");

UPDATE `creature_text` SET `GroupID` = 1, `ID` = 0 WHERE `CreatureID` = 30274 AND `GroupID` = 0 AND `ID` = 3;

DELETE FROM `spell_scripts` WHERE `id` = 56515;
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_icecrown_summon_freed_crusader';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(56515,'spell_icecrown_summon_freed_crusader');


UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE `entry` IN (29686,29700);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (29686,29700) AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2968600) AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(29686,0,0,0,11,0,100,0,0,0,0,0,0,11,54990,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Captured Rageclaw - On Spawn - Cast 'Chains of the Scourge'"),
(29686,0,1,0,8,0,100,1,55083,0,0,0,0,80,2968600,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Captured Rageclaw - On Spellhit 'Unlock Shackle' - Run Script (No Repeat)"),

(2968600,9,0,0,0,0,100,0,0,0,0,0,0,92,0,54990,1,0,0,0,1,0,0,0,0,0,0,0,0,"Captured Rageclaw - On Script - Interrupt Spell 'Chains of the Scourge'"),
(2968600,9,1,0,0,0,100,0,0,0,0,0,0,11,55085,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Captured Rageclaw - On Script - Cast 'Unshackled!'"),
(2968600,9,2,0,0,0,100,0,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Captured Rageclaw - On Script - Say Line 0"),
(2968600,9,3,0,0,0,100,0,0,0,0,0,0,89,10,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Captured Rageclaw - On Script - Start Random Movement"),
(2968600,9,4,0,0,0,100,0,0,0,0,0,0,145,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Captured Rageclaw - On Script - Set ImmuneNPC Off"),
(2968600,9,5,0,0,0,100,0,0,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Captured Rageclaw - On Script - Remove Flag Standstate Kneel"),
(2968600,9,6,0,0,0,100,0,0,0,0,0,0,33,29686,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Captured Rageclaw - On Script - Quest Credit 'Trolls Is Gone Crazy!'"),
(2968600,9,7,0,0,0,100,0,10000,10000,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Captured Rageclaw - On Script - Despawn"),

(29700,0,0,0,8,0,100,0,55083,0,0,0,0,92,0,55009,1,0,0,0,1,0,0,0,0,0,0,0,0,"Drakuru Shackles - On Spellhit 'Unlock Shackle' - Interrupt Spell 'Chains of the Scourge'");

-- 55223 is not used
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` IN (55223,55083);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,55083,0,0,31,0,3,29700,0,0,0,0,"","Group 0: Spell 'Unlock Shackle' (Effect 0) targets creature 'Drakuru Shackles'"),
(13,2,55083,0,0,31,0,3,29686,0,0,0,0,"","Group 0: Spell 'Unlock Shackle' (Effect 1) targets creature 'Captured Rageclaw'");

DELETE FROM `spell_scripts` WHERE `id` = 54990;
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_zuldrak_chains_of_the_scourge';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(54990,'spell_zuldrak_chains_of_the_scourge');


--
DELETE FROM `spell_scripts` WHERE `id` = 52741;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 29329 AND `source_type` = 0 AND `id` IN (2,3,4);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 29330 AND `source_type` = 0 AND `id` IN (2,3,4);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 29333 AND `source_type` = 0 AND `id` IN (0,1,2);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 29338 AND `source_type` = 0 AND `id` IN (2,3,4);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(29329,0,2,3,8,0,100,1,52741,0,0,0,0,11,54415,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Paladin - On Spellhit 'Darkmender's Tincture' - Cast 'Summon Corrupted Scarlet Onslaught' (No Repeat)"),
(29329,0,3,4,61,0,100,0,0,0,0,0,0,33,29398,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Onslaught Paladin - On Spellhit 'Darkmender's Tincture' - Quest Credit 'From Their Corpses, Rise!'"),
(29329,0,4,0,61,0,100,0,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Paladin - On Spellhit 'Darkmender's Tincture' - Despawn"),

(29330,0,2,3,8,0,100,1,52741,0,0,0,0,11,54415,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Harbor Guard - On Spellhit 'Darkmender's Tincture' - Cast 'Summon Corrupted Scarlet Onslaught' (No Repeat)"),
(29330,0,3,4,61,0,100,0,0,0,0,0,0,33,29398,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Onslaught Harbor Guard - On Spellhit 'Darkmender's Tincture' - Quest Credit 'From Their Corpses, Rise!'"),
(29330,0,4,0,61,0,100,0,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Harbor Guard - On Spellhit 'Darkmender's Tincture' - Despawn"),

(29333,0,0,1,8,0,100,1,52741,0,0,0,0,11,54415,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Gryphon Rider - On Spellhit 'Darkmender's Tincture' - Cast 'Summon Corrupted Scarlet Onslaught' (No Repeat)"),
(29333,0,1,2,61,0,100,0,0,0,0,0,0,33,29398,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Onslaught Gryphon Rider - On Spellhit 'Darkmender's Tincture' - Quest Credit 'From Their Corpses, Rise!'"),
(29333,0,2,0,61,0,100,0,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Gryphon Rider - On Spellhit 'Darkmender's Tincture' - Despawn"),

(29338,0,2,3,8,0,100,1,52741,0,0,0,0,11,54415,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Bishop - On Spellhit 'Darkmender's Tincture' - Cast 'Summon Corrupted Scarlet Onslaught' (No Repeat)"),
(29338,0,3,4,61,0,100,0,0,0,0,0,0,33,29398,0,0,0,0,0,7,0,0,0,0,0,0,0,0,"Onslaught Raven Bishop - On Spellhit 'Darkmender's Tincture' - Quest Credit 'From Their Corpses, Rise!'"),
(29338,0,4,0,61,0,100,0,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Onslaught Raven Bishop - On Spellhit 'Darkmender's Tincture' - Despawn");

UPDATE `creature_template` SET `unit_flags` = 33280 WHERE `entry` = 29400;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 29400 AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 2940000 AND `source_type` = 9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(29400,0,0,0,11,0,100,0,0,0,0,0,0,80,2940000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Corrupted Scarlet Onslaught - On Spawn - Run Script"),
(29400,0,1,0,0,0,100,0,2000,15000,30000,45000,0,11,38056,0,0,0,0,0,2,0,0,0,0,0,0,0,0,"Corrupted Scarlet Onslaught - In Combat - Cast 'Flesh Rip'"),

(2940000,9,0,0,0,0,100,0,2000,2000,0,0,0,145,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Corrupted Scarlet Onslaught - On Script - Set ImmuneNPC Off");
