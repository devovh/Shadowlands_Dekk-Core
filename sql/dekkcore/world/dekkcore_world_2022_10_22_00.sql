REPLACE INTO `lfg_dungeon_template` (`dungeonId`, `name`, `position_x`, `position_y`, `position_z`, `orientation`, `requiredItemLevel`, `VerifiedBuild`) VALUES
('12','Stormwind Stockade','56.45','0.63','-18.90','6.25','0','0'),
('164','Scarlet Monastery','1124.64','512.466','1.00','1.59','0','0'),
('163','Scarlet Halls','824.15','607.46','13.60','6.27','0','0');


DELETE FROM creature_addon   WHERE guid NOT IN (SELECT guid FROM creature);
DELETE FROM gameobject_addon WHERE guid NOT IN (SELECT guid FROM gameobject);
DELETE FROM creature_template_addon   WHERE entry NOT IN (SELECT entry FROM creature_template);
DELETE FROM gameobject_template_addon WHERE entry NOT IN (SELECT entry FROM gameobject_template);

UPDATE creature_template SET npcflag='2097152' WHERE  entry=8719;
UPDATE creature_template SET gossip_menu_id='699' WHERE  entry=2457;
UPDATE creature_template SET gossip_menu_id='699' WHERE  entry=2456;
UPDATE creature_template SET gossip_menu_id='699' WHERE  entry=2455;
UPDATE creature_template SET gossip_menu_id='699' WHERE  entry=43822;
UPDATE creature_template SET gossip_menu_id='699' WHERE  entry=43820;
UPDATE creature_template SET gossip_menu_id='699' WHERE  entry=43819;
UPDATE creature_template SET gossip_menu_id='699' WHERE  entry=43692;
UPDATE creature_template SET gossip_menu_id='704' WHERE  entry=352;

UPDATE smart_scripts SET event_param1='20677' WHERE  entryorguid=20677 AND source_type=0 AND id=1 AND link=2;
UPDATE smart_scripts SET event_param1='20677' WHERE  entryorguid=20677 AND source_type=0 AND id=0 AND link=0;
UPDATE smart_scripts SET event_param1='20678' WHERE  entryorguid=20678 AND source_type=0 AND id=1 AND link=2;
UPDATE smart_scripts SET event_param1='20678' WHERE  entryorguid=20678 AND source_type=0 AND id=0 AND link=0;

UPDATE smart_scripts SET event_param1='20679' WHERE  entryorguid=20679 AND source_type=0 AND id=1 AND link=2;
UPDATE smart_scripts SET event_param1='20679' WHERE  entryorguid=20679 AND source_type=0 AND id=0 AND link=0;
UPDATE gameobject_template SET Data1='23337', Data2='0' WHERE  entry=188131;
REPLACE INTO gameobject_loot_template (Entry, Item, QuestRequired) VALUES ('23337', '34714', '1');
UPDATE gameobject_template SET Data1='23321', Data2='0' WHERE  entry=188120;
REPLACE INTO gameobject_loot_template (Entry, Item, QuestRequired) VALUES ('23321', '35481', '1');

UPDATE creature_template SET type_flags='0' WHERE  entry=26452;

DELETE FROM smart_scripts WHERE  entryorguid=26452 AND source_type=0 AND id=6 AND link=0;
DELETE FROM smart_scripts WHERE  entryorguid=26452 AND source_type=0 AND id=4 AND link=0;
DELETE FROM smart_scripts WHERE  entryorguid=26452 AND source_type=0 AND id=5 AND link=0;
DELETE FROM smart_scripts WHERE  entryorguid=26452 AND source_type=0 AND id=3 AND link=0;

UPDATE smart_scripts SET id='1', link='0', event_flags='1', action_type='11', action_param1='49882' WHERE  entryorguid=26452 AND source_type=0 AND id=0 AND link=1;
UPDATE smart_scripts SET id='0', link='0', event_type='0', event_param1='5000', event_param2='6500', event_param3='12000', event_param4='13500', action_param1='19643', action_param2='0', target_type='2' WHERE  entryorguid=26452 AND source_type=0 AND id=2 AND link=3;
UPDATE smart_scripts SET id='2', link='0', event_type='6', action_type='33', action_param1='26452', target_type='7' WHERE  entryorguid=26452 AND source_type=0 AND id=1 AND link=2;

UPDATE creature_template_addon SET emote='0', auras='46767' WHERE  entry=26452;

-- Arathi Basin Spawns. Build: 44325

SET @CGUID := 10000000;
SET @OGUID := 10000000;

SET @SPAWNGROUP_HORDE_FARM := 1000;
SET @SPAWNGROUP_HORDE_LUMBERMILL := 1001;
SET @SPAWNGROUP_HORDE_BLACKSMITH := 1002;
SET @SPAWNGROUP_HORDE_STABLES := 1003;
SET @SPAWNGROUP_HORDE_GOLDMINE := 1004;
SET @SPAWNGROUP_ALLIANCE_FARM := 1005;
SET @SPAWNGROUP_ALLIANCE_LUMBERMILL := 1006;
SET @SPAWNGROUP_ALLIANCE_BLACKSMITH := 1007;
SET @SPAWNGROUP_ALLIANCE_STABLES := 1008;
SET @SPAWNGROUP_ALLIANCE_GOLDMINE := 1009;

DELETE FROM `spawn_group_template` WHERE `groupId` IN (@SPAWNGROUP_HORDE_FARM, @SPAWNGROUP_HORDE_LUMBERMILL, @SPAWNGROUP_HORDE_BLACKSMITH, @SPAWNGROUP_HORDE_STABLES,
    @SPAWNGROUP_HORDE_GOLDMINE, @SPAWNGROUP_ALLIANCE_FARM, @SPAWNGROUP_ALLIANCE_LUMBERMILL, @SPAWNGROUP_ALLIANCE_BLACKSMITH, @SPAWNGROUP_ALLIANCE_STABLES, @SPAWNGROUP_ALLIANCE_GOLDMINE);
INSERT INTO `spawn_group_template` (`groupId`, `groupName`, `groupFlags`) VALUES
(@SPAWNGROUP_HORDE_FARM, 'Arathi Basin - Farm - Horde Controlled', 32),
(@SPAWNGROUP_HORDE_LUMBERMILL, 'Arathi Basin - Lumber Mill - Horde Controlled', 32),
(@SPAWNGROUP_HORDE_BLACKSMITH, 'Arathi Basin - Blacksmith - Horde Controlled', 32),
(@SPAWNGROUP_HORDE_STABLES, 'Arathi Basin - Stables - Horde Controlled', 32),
(@SPAWNGROUP_HORDE_GOLDMINE, 'Arathi Basin - Gold Mine - Horde Controlled', 32),
(@SPAWNGROUP_ALLIANCE_FARM, 'Arathi Basin - Farm - Alliance Controlled', 32),
(@SPAWNGROUP_ALLIANCE_LUMBERMILL, 'Arathi Basin - Lumber Mill - Alliance Controlled', 32),
(@SPAWNGROUP_ALLIANCE_BLACKSMITH, 'Arathi Basin - Blacksmith - Alliance Controlled', 32),
(@SPAWNGROUP_ALLIANCE_STABLES, 'Arathi Basin - Stables - Alliance Controlled', 32),
(@SPAWNGROUP_ALLIANCE_GOLDMINE, 'Arathi Basin - Gold Mine - Alliance Controlled', 32);

-- Spawn Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=33 AND `SourceEntry` IN (@SPAWNGROUP_HORDE_FARM, @SPAWNGROUP_HORDE_LUMBERMILL, @SPAWNGROUP_HORDE_BLACKSMITH, @SPAWNGROUP_HORDE_STABLES,
    @SPAWNGROUP_HORDE_GOLDMINE, @SPAWNGROUP_ALLIANCE_FARM, @SPAWNGROUP_ALLIANCE_LUMBERMILL, @SPAWNGROUP_ALLIANCE_BLACKSMITH, @SPAWNGROUP_ALLIANCE_STABLES, @SPAWNGROUP_ALLIANCE_GOLDMINE);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(33, 0, @SPAWNGROUP_HORDE_FARM, 0, 0, 11, 0, 8808, 4, 0, 0, 0, 0, '', 'Arathi Basin - Farm - Horde Controlled'),
(33, 0, @SPAWNGROUP_ALLIANCE_FARM, 0, 0, 11, 0, 8808, 5, 0, 0, 0, 0, '', 'Arathi Basin - Farm - Alliance Controlled'),
(33, 0, @SPAWNGROUP_HORDE_LUMBERMILL, 0, 0, 11, 0, 8805, 4, 0, 0, 0, 0, '', 'Arathi Basin - Lumber Mill - Horde Controlled'),
(33, 0, @SPAWNGROUP_ALLIANCE_LUMBERMILL, 0, 0, 11, 0, 8805, 5, 0, 0, 0, 0, '', 'Arathi Basin - Lumber Mill - Alliance Controlled'),
(33, 0, @SPAWNGROUP_HORDE_BLACKSMITH, 0, 0, 11, 0, 8799, 4, 0, 0, 0, 0, '', 'Arathi Basin - Blacksmith - Horde Controlled'),
(33, 0, @SPAWNGROUP_ALLIANCE_BLACKSMITH, 0, 0, 11, 0, 8799, 5, 0, 0, 0, 0, '', 'Arathi Basin - Blacksmith - Alliance Controlled'),
(33, 0, @SPAWNGROUP_HORDE_STABLES, 0, 0, 11, 0, 5834, 4, 0, 0, 0, 0, '', 'Arathi Basin - Stables - Horde Controlled'),
(33, 0, @SPAWNGROUP_ALLIANCE_STABLES, 0, 0, 11, 0, 5834, 5, 0, 0, 0, 0, '', 'Arathi Basin - Stables - Alliance Controlled'),
(33, 0, @SPAWNGROUP_HORDE_GOLDMINE, 0, 0, 11, 0, 8809, 4, 0, 0, 0, 0, '', 'Arathi Basin - Gold Mine - Horde Controlled'),
(33, 0, @SPAWNGROUP_ALLIANCE_GOLDMINE, 0, 0, 11, 0, 8809, 5, 0, 0, 0, 0, '', 'Arathi Basin - Gold Mine - Alliance Controlled');

DELETE FROM `gameobject_template_addon` WHERE `entry` IN (322274 /*Horde Door*/, 322273 /*Alliance Door*/);
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `WorldEffectID`, `AIAnimKitID`) VALUES
(322274, 1375, 33, 0, 0), -- Horde Door
(322273, 1375, 33, 0, 0); -- Alliance Door

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+262;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@CGUID+0, 150647, 2107, 10053, 10521, '0', '0', 0, 0, 0, 719.01318359375, 631.47576904296875, -10.4975643157958984, 1.681953787803649902, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Basin Rat (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+1, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 700.219482421875, 755.3856201171875, -23.5969429016113281, 1.819434046745300292, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+2, 150426, 2107, 10053, 10521, '0', '0', 0, 0, 0, 481.103424072265625, 1500.848876953125, 195.8998870849609375, 6.191287994384765625, 7200, 10, 0, 11791, 0, 1, 0, 0, 0, '', 44325), -- Arathi Giant (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+3, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1283.9395751953125, 1314.7276611328125, -11.0609874725341796, 2.398959875106811523, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+4, 150426, 2107, 10053, 10521, '0', '0', 0, 0, 0, 270.673614501953125, 813.68927001953125, 217.37396240234375, 6.094564437866210937, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathi Giant (Area: Defiler's Den - Difficulty: 0)
(@CGUID+5, 149785, 2107, 10053, 10521, '0', '0', 0, 0, 0, 640.86962890625, 1074.461669921875, 90.9493255615234375, 1.224027872085571289, 7200, 10, 0, 6869, 0, 1, 0, 0, 0, '', 44325), -- Highland Thrasher (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+6, 149786, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1281.8531494140625, 714.66741943359375, 4.30950927734375, 5.105314254760742187, 7200, 10, 0, 4579, 0, 1, 0, 0, 0, '', 44325), -- Plains Creeper (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+7, 150655, 2107, 10053, 10521, '0', '0', 0, 0, 1, 1333.734375, 1321.8819580078125, -8.73986625671386718, 2.030910730361938476, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Groundskeeper Olivia (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+8, 149760, 2107, 10053, 10521, '0', '0', 0, 0, 0, 535.7117919921875, 489.0069580078125, 85.134735107421875, 1.336545228958129882, 7200, 0, 0, 4579, 0, 0, 0, 0, 0, '', 44325), -- Spell Bunny (Area: Defiler's Den - Difficulty: 0) (Auras: )
(@CGUID+9, 149785, 2107, 10053, 10521, '0', '0', 0, 0, 0, 640.20159912109375, 1064.5498046875, 92.400726318359375, 1.390209197998046875, 7200, 10, 0, 6441, 0, 1, 0, 0, 0, '', 44325), -- Highland Thrasher (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+10, 149786, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1097.817138671875, 651.25885009765625, 24.62078666687011718, 6.138581752777099609, 7200, 10, 0, 4294, 0, 1, 0, 0, 0, '', 44325), -- Plains Creeper (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+11, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1380.501953125, 1301.3232421875, -7.9797372817993164, 3.398830890655517578, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+12, 149760, 2107, 10053, 10521, '0', '0', 0, 0, 0, 711.51910400390625, 683.28643798828125, -15.1177291870117187, 3.388207435607910156, 7200, 0, 0, 4579, 0, 0, 0, 0, 0, '', 44325), -- Spell Bunny (Area: Defiler's Den - Difficulty: 0)
(@CGUID+13, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1387.0928955078125, 1312.1898193359375, -6.2264413833618164, 4.357081413269042968, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+14, 150429, 2107, 10053, 10521, '0', '0', 0, 0, 1, 658.76214599609375, 668.44964599609375, 7.71792459487915039, 1.834298372268676757, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Defiler Combatant (Area: Defiler's Den - Difficulty: 0) (Auras: 282578 - Hold Torch) (possible waypoints or random movement)
(@CGUID+15, 149792, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1170.2982177734375, 632.3450927734375, 23.96047019958496093, 0.953545689582824707, 7200, 10, 0, 4579, 0, 1, 0, 0, 0, '', 44325), -- Arathi Rager (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+16, 150403, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1360.3677978515625, 1357.0140380859375, -6.39866065979003906, 2.381939411163330078, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Watchman (Area: Defiler's Den - Difficulty: 0) (Auras: 282578 - Hold Torch) (possible waypoints or random movement)
(@CGUID+17, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1060.4078369140625, 1004.0341796875, -51.1669082641601562, 2.335479259490966796, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+18, 149792, 2107, 10053, 10521, '0', '0', 0, 0, 0, 504.144073486328125, 406.05364990234375, 130.13250732421875, 5.262158393859863281, 7200, 10, 0, 4579, 0, 1, 0, 0, 0, '', 44325), -- Arathi Rager (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+19, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 936.64385986328125, 855.83038330078125, -64.4358444213867187, 2.88435983657836914, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+20, 150426, 2107, 10053, 10521, '0', '0', 0, 0, 0, 357.19024658203125, 578.93963623046875, 164.0836029052734375, 6.098437786102294921, 7200, 10, 0, 11791, 0, 1, 0, 0, 0, '', 44325), -- Arathi Giant (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+21, 150403, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1290.329833984375, 1323.484375, 18.60406112670898437, 4.883936882019042968, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Watchman (Area: Defiler's Den - Difficulty: 0) (Auras: 282578 - Hold Torch)
(@CGUID+22, 150426, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1491.3177490234375, 779.60418701171875, 54.917236328125, 3.911062002182006835, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathi Giant (Area: Defiler's Den - Difficulty: 0)
(@CGUID+23, 149785, 2107, 10053, 10521, '0', '0', 0, 0, 0, 713.4669189453125, 1180.54931640625, 57.40172195434570312, 6.03346872329711914, 7200, 10, 0, 6869, 0, 1, 0, 0, 0, '', 44325), -- Highland Thrasher (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+24, 150501, 2107, 10053, 10521, '0', '0', 0, 0, 1, 656.09375, 636.46265, -9.3995950, 1.105017066001892089, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_the_black_bride', 44325), -- The Black Bride (Area: Defiler's Den - Difficulty: 0)
(@CGUID+25, 150647, 2107, 10053, 10521, '0', '0', 0, 0, 0, 675.07989501953125, 669.2899169921875, -12.5684747695922851, 1.537112712860107421, 7200, 0, 0, 27, 0, 0, 0, 0, 0, '', 44325), -- Basin Rat (Area: Defiler's Den - Difficulty: 0)
(@CGUID+26, 149786, 2107, 10053, 10521, '0', '0', 0, 0, 0, 602.65960693359375, 826.01800537109375, 68.0590057373046875, 3.483433485031127929, 7200, 10, 0, 4294, 0, 1, 0, 0, 0, '', 44325), -- Plains Creeper (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+27, 149755, 2107, 10053, 10521, '0', '0', 0, 0, 6, 1364.2379150390625, 1299.77783203125, -8.4645395278930664, 0.07065419852733612, 7200, 10, 0, 11791, 0, 1, 0, 0, 0, '', 44325), -- Kevin Young (Area: Defiler's Den - Difficulty: 0) (Auras: 261985 - Blacksmith Working) (possible waypoints or random movement)
(@CGUID+28, 150647, 2107, 10053, 10521, '0', '0', 0, 0, 0, 717.7391357421875, 660.68255615234375, -13.0123090744018554, 1.231605291366577148, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Basin Rat (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+29, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1107.2972412109375, 1280.739501953125, -45.0814323425292968, 5.295517921447753906, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+30, 150449, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1384.93408203125, 861.232666015625, 39.87235260009765625, 2.954025030136108398, 7200, 0, 0, 916, 0, 0, 0, 0, 0, '', 44325), -- Highland Bristleback (Area: Defiler's Den - Difficulty: 0)
(@CGUID+31, 149792, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1089.1663818359375, 580.81988525390625, 51.79526519775390625, 2.421999931335449218, 7200, 10, 0, 4579, 0, 1, 0, 0, 0, '', 44325), -- Arathi Rager (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+32, 149793, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1483.43408203125, 767.93402099609375, 52.163665771484375, 0.696394264698028564, 7200, 0, 0, 4294, 0, 0, 0, 0, 0, '', 44325), -- Bound Arathi Rager (Area: Defiler's Den - Difficulty: 0)
(@CGUID+33, 150403, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1356.439208984375, 1335.2413330078125, 0.447226583957672119, 0.327374935150146484, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Watchman (Area: Defiler's Den - Difficulty: 0)
(@CGUID+34, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 907.33160400390625, 856.546630859375, -63.2753677368164062, 2.080382347106933593, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+35, 149795, 2107, 10053, 10521, '0', '0', 0, 0, 0, 772.6754150390625, 1123.4193115234375, 15.40657520294189453, 4.274608612060546875, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Basin Beaver (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+36, 150403, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1317.5816650390625, 1361.99658203125, 0.656701624393463134, 3.265699148178100585, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Watchman (Area: Defiler's Den - Difficulty: 0) (Auras: 282578 - Hold Torch)
(@CGUID+37, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1237.3538818359375, 980.76422119140625, -90.9696731567382812, 1.361477255821228027, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+38, 150505, 2107, 10053, 10521, '0', '0', 0, 0, 1, 1392.1213, 1345.5967, 0.21549422, 3.650683403015136718, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_radulf_leder', 44325), -- Radulf Leder (Area: Defiler's Den - Difficulty: 0)
(@CGUID+39, 149785, 2107, 10053, 10521, '0', '0', 0, 0, 0, 557.4913330078125, 866.638916015625, 99.32508087158203125, 1.57762157917022705, 7200, 10, 0, 6441, 0, 1, 0, 0, 0, '', 44325), -- Highland Thrasher (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+40, 149786, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1210.8082275390625, 694.72723388671875, -4.61177682876586914, 5.562703132629394531, 7200, 10, 0, 4579, 0, 1, 0, 0, 0, '', 44325), -- Plains Creeper (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+41, 149785, 2107, 10053, 10521, '0', '0', 0, 0, 0, 553.6456298828125, 857.6728515625, 99.81238555908203125, 2.588786840438842773, 7200, 10, 0, 6441, 0, 1, 0, 0, 0, '', 44325), -- Highland Thrasher (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+42, 150543, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1316.3819580078125, 1342.8072509765625, -9.88712501525878906, 3.539296627044677734, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Belle (Area: Defiler's Den - Difficulty: 0)
(@CGUID+43, 150647, 2107, 10053, 10521, '0', '0', 0, 0, 0, 690.5262451171875, 636.86944580078125, -10.0310144424438476, 2.606237173080444335, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Basin Rat (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+44, 149786, 2107, 10053, 10521, '0', '0', 0, 0, 0, 866.51824951171875, 613.09075927734375, 52.96668624877929687, 3.467667102813720703, 7200, 10, 0, 4294, 0, 1, 0, 0, 0, '', 44325), -- Plains Creeper (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+45, 150647, 2107, 10053, 10521, '0', '0', 0, 0, 0, 688.54168701171875, 654.72222900390625, -11.3487586975097656, 1.537112712860107421, 7200, 0, 0, 27, 0, 0, 0, 0, 0, '', 44325), -- Basin Rat (Area: Defiler's Den - Difficulty: 0)
(@CGUID+46, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1235.2691650390625, 970.940185546875, -92.8533401489257812, 1.484998703002929687, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+47, 150647, 2107, 10053, 10521, '0', '0', 0, 0, 0, 643.75, 633.333984375, -8.70977592468261718, 4.542739391326904296, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Basin Rat (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+48, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 973.8271484375, 1074.3173828125, -45.1417160034179687, 1.7982712984085083, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+49, 149792, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1183.0433349609375, 557.20745849609375, 30.43250656127929687, 4.146334171295166015, 7200, 10, 0, 4294, 0, 1, 0, 0, 0, '', 44325), -- Arathi Rager (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+50, 150449, 2107, 10053, 10521, '0', '0', 0, 0, 0, 700.39013671875, 1197.4639892578125, 63.95070648193359375, 3.565069913864135742, 7200, 10, 0, 916, 0, 1, 0, 0, 0, '', 44325), -- Highland Bristleback (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+51, 150513, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1376.2254638671875, 1372.066650390625, 156.5288543701171875, 3.895016908645629882, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Gryphon Rider (Area: Defiler's Den - Difficulty: 0)
(@CGUID+52, 149793, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1538.1163330078125, 882.7413330078125, 107.3975753784179687, 0.318225383758544921, 7200, 0, 0, 4579, 0, 0, 0, 0, 0, '', 44325), -- Bound Arathi Rager (Area: Defiler's Den - Difficulty: 0)
(@CGUID+53, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1313.8524169921875, 1383.638916015625, -9.01089763641357421, 1.476471662521362304, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+54, 149792, 2107, 10053, 10521, '0', '0', 0, 0, 0, 524.27410888671875, 372.629058837890625, 130.08770751953125, 1.890980839729309082, 7200, 10, 0, 4579, 0, 1, 0, 0, 0, '', 44325), -- Arathi Rager (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+55, 149795, 2107, 10053, 10521, '0', '0', 0, 0, 0, 746.31640625, 1205.2843017578125, 21.6436767578125, 0.456220895051956176, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Basin Beaver (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+56, 150449, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1338.31103515625, 877.51458740234375, 5.128692626953125, 4.27995157241821289, 7200, 10, 0, 916, 0, 1, 0, 0, 0, '', 44325), -- Highland Bristleback (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+57, 150513, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1397.6243896484375, 1385.233642578125, 157.1707611083984375, 5.732475757598876953, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Gryphon Rider (Area: Defiler's Den - Difficulty: 0)
(@CGUID+58, 149793, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1511.75, 687.59722900390625, 52.81597137451171875, 4.936140060424804687, 7200, 0, 0, 4294, 0, 0, 0, 0, 0, '', 44325), -- Bound Arathi Rager (Area: Defiler's Den - Difficulty: 0)
(@CGUID+59, 150403, 2107, 10053, 10521, '0', '0', 0, 0, 0, 663.03643798828125, 724.86981201171875, -11.5520706176757812, 1.340009450912475585, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Watchman (Area: Defiler's Den - Difficulty: 0) (Auras: 145363 - Permanent Feign Death (Stun, Untrackable, Immune))
(@CGUID+60, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1378.6597900390625, 1356.232666015625, -0.23344957828521728, 0.447986364364624023, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+61, 149795, 2107, 10053, 10521, '0', '0', 0, 0, 0, 836.35247802734375, 1164.8739013671875, 11.99005699157714843, 1.119794964790344238, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Basin Beaver (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+62, 150403, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1294.390625, 1342.9600830078125, -10.5788164138793945, 6.201286792755126953, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Watchman (Area: Defiler's Den - Difficulty: 0)
(@CGUID+63, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1222.544189453125, 759.67901611328125, -77.957000732421875, 5.781805038452148437, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+64, 150647, 2107, 10053, 10521, '0', '0', 0, 0, 0, 698.44140625, 632.8671875, -10.4185800552368164, 5.378872394561767578, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Basin Rat (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+65, 150459, 2107, 10053, 10521, '0', '0', 0, 0, 0, 629.9687, 376.4514, 178.24315, 1.61511242389678955, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_defiler_bat_rider_leader', 44325), -- Defiler Bat Rider (Area: Defiler's Den - Difficulty: 0)
(@CGUID+66, 150647, 2107, 10053, 10521, '0', '0', 0, 0, 0, 719.77490234375, 651.41754150390625, -12.3436079025268554, 3.3506622314453125, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Basin Rat (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+67, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1298.5242919921875, 1379.0572509765625, -6.90602064132690429, 5.550839424133300781, 7200, 0, 0, 27, 0, 0, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0)
(@CGUID+68, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 919.12396240234375, 920.71795654296875, -61.7486801147460937, 3.646725177764892578, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+69, 149785, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1387.1541748046875, 1199.1875, 19.23383331298828125, 2.778135299682617187, 7200, 10, 0, 6869, 0, 1, 0, 0, 0, '', 44325), -- Highland Thrasher (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+70, 149785, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1017.29522705078125, 666.74481201171875, 22.91433334350585937, 2.534416675567626953, 7200, 10, 0, 6869, 0, 1, 0, 0, 0, '', 44325), -- Highland Thrasher (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+71, 150403, 2107, 10053, 10521, '0', '0', 0, 0, 1, 1337.5728759765625, 1368.63720703125, -7.77858304977416992, 0.937136530876159667, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Watchman (Area: Defiler's Den - Difficulty: 0)
(@CGUID+72, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1308.5889892578125, 1374.7808837890625, -9.6841278076171875, 2.433773994445800781, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+73, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 983.51629638671875, 858.30718994140625, -63.717864990234375, 3.388092517852783203, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+74, 150647, 2107, 10053, 10521, '0', '0', 0, 0, 0, 623.11517333984375, 701.9610595703125, -8.1608896255493164, 3.716466903686523437, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Basin Rat (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+75, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 762.36956787109375, 877.7882080078125, -49.3338241577148437, 1.16210639476776123, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+76, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1390.52197265625, 1329.17578125, -0.02822490036487579, 0.734154105186462402, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+77, 150647, 2107, 10053, 10521, '0', '0', 0, 0, 0, 659.10858154296875, 673.026123046875, -12.1359291076660156, 5.33001565933227539, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Basin Rat (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+78, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1374.5650634765625, 1321.392822265625, -5.3021249771118164, 4.243195056915283203, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+79, 149785, 2107, 10053, 10521, '0', '0', 0, 0, 0, 640.955322265625, 1059.954345703125, 91.897918701171875, 1.358333110809326171, 7200, 10, 0, 6869, 0, 1, 0, 0, 0, '', 44325), -- Highland Thrasher (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+80, 150403, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1323.49658203125, 1343.517333984375, 12.2651214599609375, 4.617429256439208984, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Watchman (Area: Defiler's Den - Difficulty: 0)
(@CGUID+81, 149785, 2107, 10053, 10521, '0', '0', 0, 0, 0, 699.35205078125, 1219.0498046875, 68.07843780517578125, 5.263020992279052734, 7200, 10, 0, 6869, 0, 1, 0, 0, 0, '', 44325), -- Highland Thrasher (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+82, 150403, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1323.2760009765625, 1341.8004150390625, 12.26622295379638671, 1.421558141708374023, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Watchman (Area: Defiler's Den - Difficulty: 0)
(@CGUID+83, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1311.988037109375, 1331.2960205078125, -9.6644906997680664, 5.351158618927001953, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+84, 149718, 2107, 10053, 10521, '0', '0', 0, 0, 0, 706.732666015625, 679.89239501953125, -16.0542812347412109, 2.884756326675415039, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Derek Darkmetal (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+85, 149719, 2107, 10053, 10521, '0', '0', 0, 0, 0, 671.85589599609375, 636.69268798828125, -9.23107337951660156, 2.02702641487121582, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Captain (Area: Defiler's Den - Difficulty: 0) (Auras: 32951 - Sleeping Sleep)
(@CGUID+86, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1362.0052490234375, 1274.1754150390625, -10.5525951385498046, 2.933927774429321289, 7200, 0, 0, 27, 0, 0, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0)
(@CGUID+87, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 905.44866943359375, 841.3917236328125, -64.7079849243164062, 5.579193115234375, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+88, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1296.30908203125, 1326.359375, -9.63511180877685546, 5.2727813720703125, 7200, 0, 0, 27, 0, 0, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0)
(@CGUID+89, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 936.30810546875, 737.00299072265625, -54.9457015991210937, 5.101164817810058593, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+90, 150426, 2107, 10053, 10521, '0', '0', 0, 0, 0, 492.71527099609375, 1019.15875244140625, 120.0015716552734375, 0.181504324078559875, 7200, 10, 0, 11791, 0, 1, 0, 0, 0, '', 44325), -- Arathi Giant (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+91, 149785, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1022.890625, 1398.763916015625, 92.1630401611328125, 0, 7200, 10, 0, 6869, 0, 1, 0, 0, 0, '', 44325), -- Highland Thrasher (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+92, 149786, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1315.43115234375, 1012.087890625, -12.0875930786132812, 4.248086929321289062, 7200, 10, 0, 4294, 0, 1, 0, 0, 0, '', 44325), -- Plains Creeper (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+93, 149785, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1191.970458984375, 663.21875, 15.63309955596923828, 2.55128788948059082, 7200, 10, 0, 6441, 0, 1, 0, 0, 0, '', 44325), -- Highland Thrasher (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+94, 149721, 2107, 10053, 10521, '0', '0', 0, 0, 1, 672.81427001953125, 714.83160400390625, -13.2683420181274414, 5.277019500732421875, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Davis Bradley (Area: Defiler's Den - Difficulty: 0)
(@CGUID+95, 149786, 2107, 10053, 10521, '0', '0', 0, 0, 0, 913.08148193359375, 651.31689453125, 35.60742950439453125, 3.488675117492675781, 7200, 10, 0, 4579, 0, 1, 0, 0, 0, '', 44325), -- Plains Creeper (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+96, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1361.8961181640625, 1387.364990234375, 9.519557952880859375, 0.08193150907754898, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+97, 150418, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1451.37158203125, 1444.0052490234375, 57.979736328125, 3.972086191177368164, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Siege Tank (Area: Defiler's Den - Difficulty: 0)
(@CGUID+98, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1337.43359375, 1375.7352294921875, -9.27597427368164062, 3.31734013557434082, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+99, 150429, 2107, 10053, 10521, '0', '0', 0, 0, 1, 534.29864501953125, 499.359375, 73.03855133056640625, 4.788630008697509765, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Defiler Combatant (Area: Defiler's Den - Difficulty: 0) (Auras: 282578 - Hold Torch)
(@CGUID+100, 149792, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1206.9317626953125, 607.90557861328125, 23.35107612609863281, 3.82182478904724121, 7200, 10, 0, 4294, 0, 1, 0, 0, 0, '', 44325), -- Arathi Rager (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+101, 150449, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1079.7535400390625, 1402.453125, 72.65193939208984375, 5.6436004638671875, 7200, 0, 0, 916, 0, 0, 0, 0, 0, '', 44325), -- Highland Bristleback (Area: Defiler's Den - Difficulty: 0)
(@CGUID+102, 149793, 2107, 10053, 10521, '0', '0', 0, 0, 0, 513.170166015625, 390.836822509765625, 130.0107879638671875, 0.769220530986785888, 7200, 0, 0, 4294, 0, 0, 0, 0, 0, '', 44325), -- Bound Arathi Rager (Area: Defiler's Den - Difficulty: 0) (Auras: 285977 - Earth Channel Omni)
(@CGUID+103, 150431, 2107, 10053, 10521, '0', '0', 0, 0, 0, 608.72222900390625, 596.30731201171875, 19.47521781921386718, 0.844112336635589599, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Defiler Demolisher (Area: Defiler's Den - Difficulty: 0)
(@CGUID+104, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1043.3177490234375, 958.15277099609375, -50.6088371276855468, 0, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+105, 150429, 2107, 10053, 10521, '0', '0', 0, 0, 1, 642.37847900390625, 649.435791015625, -2.86745500564575195, 0.523410201072692871, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Defiler Combatant (Area: Defiler's Den - Difficulty: 0) (Auras: 282578 - Hold Torch)
(@CGUID+106, 149792, 2107, 10053, 10521, '0', '0', 0, 0, 0, 491.214263916015625, 379.14031982421875, 131.9445953369140625, 3.667277812957763671, 7200, 10, 0, 4294, 0, 1, 0, 0, 0, '', 44325), -- Arathi Rager (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+107, 149795, 2107, 10053, 10521, '0', '0', 0, 0, 0, 788.763427734375, 1140.6043701171875, 14.28294277191162109, 2.394186019897460937, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Basin Beaver (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+108, 150449, 2107, 10053, 10521, '0', '0', 0, 0, 0, 528.68829345703125, 622.2509765625, 64.87746429443359375, 2.245537281036376953, 7200, 10, 0, 916, 0, 1, 0, 0, 0, '', 44325), -- Highland Bristleback (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+109, 150403, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1277.8802490234375, 1331.310791015625, 19.27090835571289062, 3.265699386596679687, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Watchman (Area: Defiler's Den - Difficulty: 0) (Auras: 172660 - Spyglass)
(@CGUID+110, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 947.0775146484375, 1067.1544189453125, -55.7641258239746093, 5.347291946411132812, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+111, 150426, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1549.7535400390625, 890.6788330078125, 112.892364501953125, 3.532892704010009765, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathi Giant (Area: Defiler's Den - Difficulty: 0)
(@CGUID+112, 150426, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1518.5555419921875, 675.26739501953125, 52.62845993041992187, 1.867624282836914062, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathi Giant (Area: Defiler's Den - Difficulty: 0)
(@CGUID+113, 149785, 2107, 10053, 10521, '0', '0', 0, 0, 0, 564.30047607421875, 857.50628662109375, 93.77088165283203125, 1.87021803855895996, 7200, 10, 0, 6441, 0, 1, 0, 0, 0, '', 44325), -- Highland Thrasher (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+114, 149786, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1324.3533935546875, 844.531982421875, -0.64782577753067016, 2.942090988159179687, 7200, 10, 0, 4294, 0, 1, 0, 0, 0, '', 44325), -- Plains Creeper (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+115, 150647, 2107, 10053, 10521, '0', '0', 0, 0, 0, 649.79168701171875, 657.42706298828125, -10.7366352081298828, 5.683919906616210937, 7200, 0, 0, 27, 0, 0, 0, 0, 0, '', 44325), -- Basin Rat (Area: Defiler's Den - Difficulty: 0)
(@CGUID+116, 149785, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1481.1475830078125, 1250.6632080078125, 53.71390914916992187, 1.520047664642333984, 7200, 10, 0, 6869, 0, 1, 0, 0, 0, '', 44325), -- Highland Thrasher (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+117, 150647, 2107, 10053, 10521, '0', '0', 0, 0, 0, 704.7845458984375, 654.721435546875, -14.21417236328125, 1.108022451400756835, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Basin Rat (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+118, 149786, 2107, 10053, 10521, '0', '0', 0, 0, 0, 587.18597412109375, 619.87261962890625, 25.62053108215332031, 0.19487994909286499, 7200, 10, 0, 4579, 0, 1, 0, 0, 0, '', 44325), -- Plains Creeper (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+119, 150647, 2107, 10053, 10521, '0', '0', 0, 0, 0, 692.1875, 714.5830078125, -16.0187740325927734, 6.006227016448974609, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Basin Rat (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+120, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1176.8089599609375, 1267.6905517578125, -43.9940338134765625, 4.638944625854492187, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+121, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1181.0621337890625, 1016.4072265625, -63.0742263793945312, 5.361910820007324218, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+122, 149792, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1141.239501953125, 590.187744140625, 32.22942352294921875, 5.403130054473876953, 7200, 10, 0, 4579, 0, 1, 0, 0, 0, '', 44325), -- Arathi Rager (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+123, 150449, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1464.8623046875, 1179.0068359375, 81.2415313720703125, 2.319583415985107421, 7200, 10, 0, 916, 0, 1, 0, 0, 0, '', 44325), -- Highland Bristleback (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+124, 150513, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1390.861572265625, 1392.4630126953125, 157.1707611083984375, 2.02684640884399414, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Gryphon Rider (Area: Defiler's Den - Difficulty: 0)
(@CGUID+125, 150445, 2107, 10053, 10521, '0', '0', 0, 0, 0, 639.5069580078125, 699.53472900390625, -11.3885421752929687, 4.1896209716796875, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Warhorse (Area: Defiler's Den - Difficulty: 0)
(@CGUID+126, 149793, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1173.2413330078125, 602.27606201171875, 29.60327529907226562, 1.039626121520996093, 7200, 0, 0, 4294, 0, 0, 0, 0, 0, '', 44325), -- Bound Arathi Rager (Area: Defiler's Den - Difficulty: 0) (Auras: 285977 - Earth Channel Omni)
(@CGUID+127, 150446, 2107, 10053, 10521, '0', '0', 0, 0, 0, 644.40625, 705.56597900390625, -11.6578969955444335, 2.920136451721191406, 7200, 10, 0, 11791, 0, 1, 0, 0, 0, '', 44325), -- Horde War Wolf (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+128, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1342.1632080078125, 1327.0364990234375, -7.45473289489746093, 5.776561737060546875, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+129, 149792, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1098.4041748046875, 565.98858642578125, 51.28850555419921875, 4.761273860931396484, 7200, 10, 0, 4294, 0, 1, 0, 0, 0, '', 44325), -- Arathi Rager (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+130, 149795, 2107, 10053, 10521, '0', '0', 0, 0, 0, 850.741943359375, 1258.933837890625, 21.20541000366210937, 2.685371637344360351, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Basin Beaver (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+131, 149793, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1080.3509521484375, 576.28143310546875, 57.54082489013671875, 2.838066816329956054, 7200, 10, 0, 4579, 0, 1, 0, 0, 0, '', 44325), -- Bound Arathi Rager (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+132, 150403, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1305.1944580078125, 1349.1754150390625, -10.5335168838500976, 4.780579566955566406, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Watchman (Area: Defiler's Den - Difficulty: 0)
(@CGUID+133, 150403, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1358.060791015625, 1335.842041015625, 0.412317454814910888, 3.52324533462524414, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Watchman (Area: Defiler's Den - Difficulty: 0)
(@CGUID+134, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1076.629150390625, 1162.1763916015625, -61.3454360961914062, 4.583348274230957031, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+135, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1380.107666015625, 1362.15625, 0.848607659339904785, 0.126308128237724304, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+136, 149795, 2107, 10053, 10521, '0', '0', 0, 0, 0, 768.52081298828125, 1068.3646240234375, 3.261466503143310546, 0, 7200, 0, 0, 27, 0, 0, 0, 0, 0, '', 44325), -- Basin Beaver (Area: Defiler's Den - Difficulty: 0)
(@CGUID+137, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1053.7099609375, 1255.5152587890625, -43.996826171875, 3.702295303344726562, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+138, 150414, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1321.204833984375, 1385.078125, -7.35576200485229492, 3.184440851211547851, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Lightning (Area: Defiler's Den - Difficulty: 0) (Auras: 217075 - Sleeping Sleep)
(@CGUID+139, 150647, 2107, 10053, 10521, '0', '0', 0, 0, 0, 672.2615966796875, 630.21954345703125, -8.8275156021118164, 1.02733469009399414, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Basin Rat (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+140, 150622, 2107, 10053, 10521, '0', '0', 0, 0, 1, 684.045166015625, 675.263916015625, -14.6660480499267578, 4.539567470550537109, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_dominic_masonwrite', 44325), -- Dominic Masonwrite (Area: Defiler's Den - Difficulty: 0) (Auras: 122236 - Read Scroll) (possible waypoints or random movement)
(@CGUID+141, 150647, 2107, 10053, 10521, '0', '0', 0, 0, 0, 681.27001953125, 703.30963134765625, -15.3807687759399414, 5.276788711547851562, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Basin Rat (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+142, 149759, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1298.251708984375, 1351.4322509765625, -10.3935556411743164, 5.208214282989501953, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Sarah Gardner (Area: Defiler's Den - Difficulty: 0)
(@CGUID+143, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1052.803955078125, 1177.83251953125, -53.6215629577636718, 2.972865581512451171, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+144, 150449, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1221.4097900390625, 1418.125, -6.12056922912597656, 4.823981285095214843, 7200, 10, 0, 916, 0, 1, 0, 0, 0, '', 44325), -- Highland Bristleback (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+145, 150449, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1356.857666015625, 892.73089599609375, 15.06451225280761718, 2.954025030136108398, 7200, 0, 0, 916, 0, 0, 0, 0, 0, '', 44325), -- Highland Bristleback (Area: Defiler's Den - Difficulty: 0)
(@CGUID+146, 150403, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1331.4132080078125, 1329.59375, 13.7649688720703125, 4.857148170471191406, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Watchman (Area: Defiler's Den - Difficulty: 0) (Auras: 271087 - Cosmetic - Human Male Kul Tiran Spyglass) (possible waypoints or random movement)
(@CGUID+147, 150461, 2107, 10053, 10521, '0', '0', 0, 0, 0, 633.95489501953125, 389.423614501953125, 171.862152099609375, 1.21834874153137207, 7200, 0, 0, 4579, 0, 0, 0, 0, 0, '', 44325), -- Spell Bunny (Area: Defiler's Den - Difficulty: 0)
(@CGUID+148, 150403, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1299.8072509765625, 1338.8646240234375, -10.6652584075927734, 3.047743797302246093, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Watchman (Area: Defiler's Den - Difficulty: 0)
(@CGUID+149, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 678.849853515625, 793.946044921875, -19.0406970977783203, 5.245444297790527343, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+150, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1262, 1284.045166015625, -22.2945213317871093, 0, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+151, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1308.410400390625, 1364.8486328125, -9.66704940795898437, 5.814202308654785156, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+152, 150429, 2107, 10053, 10521, '0', '0', 0, 0, 1, 676.01043701171875, 674.05035400390625, -14.6389789581298828, 3.677953243255615234, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Defiler Combatant (Area: Defiler's Den - Difficulty: 0) (Auras: 282578 - Hold Torch) (possible waypoints or random movement)
(@CGUID+153, 150459, 2107, 10053, 10521, '0', '0', 0, 0, 0, 629.9687, 362.30926, 178.24315, 1.623220682144165039, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Defiler Bat Rider (Area: Defiler's Den - Difficulty: 0)
(@CGUID+154, 150647, 2107, 10053, 10521, '0', '0', 0, 0, 0, 620.75433349609375, 696.850341796875, -8.03371715545654296, 0.011967432685196399, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Basin Rat (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+155, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1331.0491943359375, 1296.4215087890625, -10.2797775268554687, 0.945124149322509765, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+156, 150431, 2107, 10053, 10521, '0', '0', 0, 0, 0, 658.40802001953125, 497.07464599609375, 56.04854965209960937, 1.667433381080627441, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Defiler Demolisher (Area: Defiler's Den - Difficulty: 0)
(@CGUID+157, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1386.0718994140625, 1355.3785400390625, 0.96052408218383789, 2.15455174446105957, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+158, 150459, 2107, 10053, 10521, '0', '0', 0, 0, 0, 615.8266, 362.3093, 178.24315, 1.61513519287109375, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Defiler Bat Rider (Area: Defiler's Den - Difficulty: 0)
(@CGUID+159, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1326.69970703125, 1294.9879150390625, -8.62847137451171875, 3.266753673553466796, 7200, 0, 0, 27, 0, 0, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0)
(@CGUID+160, 14848, 2107, 10053, 10521, '0', '0', 0, 0, 2, 1304.2584228515625, 1322.562744140625, 43.8479156494140625, 0.645771801471710205, 7200, 0, 0, 176865, 0, 0, 0, 0, 0, '', 44325), -- Herald (Area: Defiler's Den - Difficulty: 0)
(@CGUID+161, 149785, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1087.740478515625, 610.6932373046875, 40.4268035888671875, 2.534158229827880859, 7200, 10, 0, 6869, 0, 1, 0, 0, 0, '', 44325), -- Highland Thrasher (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+162, 150403, 2107, 10053, 10521, '0', '0', 0, 0, 0, 643.58856201171875, 673.51739501953125, -9.29238128662109375, 0.675543844699859619, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Watchman (Area: Defiler's Den - Difficulty: 0) (Auras: 145363 - Permanent Feign Death (Stun, Untrackable, Immune))
(@CGUID+163, 150403, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1295.5347900390625, 1344.095458984375, -10.5542268753051757, 4.780579566955566406, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Watchman (Area: Defiler's Den - Difficulty: 0)
(@CGUID+164, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1337.89794921875, 1272.5301513671875, -10.4476747512817382, 3.465642213821411132, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+165, 150647, 2107, 10053, 10521, '0', '0', 0, 0, 0, 662.10418701171875, 645.953125, -12.0993022918701171, 1.804074406623840332, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Basin Rat (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+166, 149794, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1350, 1287.5, -10.2733583450317382, 5.15164947509765625, 7200, 10, 0, 27, 0, 1, 0, 0, 0, '', 44325), -- Highland Hare (Area: Defiler's Den - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+167, 150449, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1229.2725830078125, 1549.9375, 134.137725830078125, 4.80943918228149414, 7200, 0, 0, 916, 0, 0, 0, 0, 0, '', 44325), -- Highland Bristleback (Area: Defiler's Den - Difficulty: 0)
(@CGUID+168, 150418, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1554.53125, 1366.814208984375, 75.9812774658203125, 4.347634792327880859, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathor Siege Tank (Area: Defiler's Den - Difficulty: 0)
(@CGUID+169, 150461, 2107, 10053, 10521, '0', '0', 0, 0, 0, 1412.7742919921875, 1389.326416015625, 152.241973876953125, 1.21834874153137207, 7200, 0, 0, 4579, 0, 0, 0, 0, 0, '', 44325), -- Spell Bunny (Area: Defiler's Den - Difficulty: 0)

-- STABLES (ALLIANCE)
(@CGUID+170, 15107, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1157.76220703125, 1172.59033203125, -56.2799491882324218, 2.808322429656982421, 7200, 0, 0, 27, 0, 0, 0, 0, 0, '', 44325), -- Arathi Horse (Area: Lumber Mill - Difficulty: 0)
(@CGUID+171, 15107, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1181.2100830078125, 1153.0242919921875, -56.2896270751953125, 0, 7200, 0, 0, 27, 0, 0, 0, 0, 0, '', 44325), -- Arathi Horse (Area: Lumber Mill - Difficulty: 0)
(@CGUID+172, 15086, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1172.9278564453125, 1173.1795654296875, -56.3817291259765625, 2.805151224136352539, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathi Stablehand (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+173, 15086, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1196.4251708984375, 1174.828857421875, -56.5686225891113281, 1.300989747047424316, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathi Stablehand (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+174, 15086, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1194.7708740234375, 1190.2396240234375, -55.9351806640625, 0.811477959156036376, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathi Stablehand (Area: Lumber Mill - Difficulty: 0)
(@CGUID+175, 15107, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1187.3367919921875, 1192.09033203125, -55.82574462890625, 3.86099553108215332, 7200, 0, 0, 27, 0, 0, 0, 0, 0, '', 44325), -- Arathi Horse (Area: Lumber Mill - Difficulty: 0)
(@CGUID+176, 15107, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1173.68408203125, 1168.3316650390625, -56.3639869689941406, 2.164245128631591796, 7200, 0, 0, 27, 0, 0, 0, 0, 0, '', 44325), -- Arathi Horse (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+177, 15107, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1191.7066650390625, 1174.986083984375, -56.392364501953125, 0.310988456010818481, 7200, 0, 0, 27, 0, 0, 0, 0, 0, '', 44325), -- Arathi Horse (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+178, 15107, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1167.48095703125, 1159.8177490234375, -56.3874015808105468, 6.067793846130371093, 7200, 0, 0, 27, 0, 0, 0, 0, 0, '', 44325), -- Arathi Horse (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+179, 15086, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1207.6632080078125, 1197.0069580078125, -56.174530029296875, 1.940982580184936523, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathi Stablehand (Area: Lumber Mill - Difficulty: 0)
(@CGUID+180, 15086, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1207.4913330078125, 1198.98095703125, -56.1753044128417968, 5.04430246353149414, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathi Stablehand (Area: Lumber Mill - Difficulty: 0)

-- FARM (HORDE)
(@CGUID+181, 150443, 2107, 10053, 10516, '0', '0', 0, 0, 0, 789.80035400390625, 829.967041015625, -55.4852371215820312, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 0, '', 44325), -- Chicken (Area: Lumber Mill - Difficulty: 0)
(@CGUID+182, 150443, 2107, 10053, 10516, '0', '0', 0, 0, 0, 792.66143798828125, 822.859375, -56.582122802734375, 0, 7200, 10, 0, 1, 0, 1, 0, 0, 0, '', 44325), -- Chicken (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+183, 61366, 2107, 10053, 10516, '0', '0', 0, 0, 0, 860.58856201171875, 835.23614501953125, -57.2612037658691406, 5.8817596435546875, 7200, 10, 0, 5, 0, 1, 0, 0, 0, '', 44325), -- Rat (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+184, 15046, 2107, 10053, 10516, '0', '0', 0, 0, 0, 825.98089599609375, 806.86456298828125, -57.625885009765625, 1.02881479263305664, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Farmer (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+185, 15046, 2107, 10053, 10516, '0', '0', 0, 0, 1, 837.29864501953125, 831.94268798828125, -57.492767333984375, 4.234867572784423828, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Farmer (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+186, 4075, 2107, 10053, 10516, '0', '0', 0, 0, 0, 819.17364501953125, 792.9617919921875, -57.339813232421875, 4.403332233428955078, 7200, 10, 0, 5, 0, 1, 0, 0, 0, '', 44325), -- Rat (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+187, 4075, 2107, 10053, 10516, '0', '0', 0, 0, 0, 799.78472900390625, 842.3819580078125, -57.2786216735839843, 1.98999035358428955, 7200, 10, 0, 5, 0, 1, 0, 0, 0, '', 44325), -- Rat (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+188, 150443, 2107, 10053, 10516, '0', '0', 0, 0, 0, 797.20489501953125, 829.888916015625, -56.8450546264648437, 0, 7200, 10, 0, 1, 0, 1, 0, 0, 0, '', 44325), -- Chicken (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+189, 15046, 2107, 10053, 10516, '0', '0', 0, 0, 1, 860.5225830078125, 846.13714599609375, -58.0085182189941406, 4.185294151306152343, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Farmer (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+190, 15046, 2107, 10053, 10516, '0', '0', 0, 0, 1, 857.28302001953125, 825.342041015625, -57.1301002502441406, 4.251018524169921875, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Farmer (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+191, 4075, 2107, 10053, 10516, '0', '0', 0, 0, 0, 835.21527099609375, 844.826416015625, -57.7741508483886718, 5.8817596435546875, 7200, 10, 0, 5, 0, 1, 0, 0, 0, '', 44325), -- Rat (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+192, 15046, 2107, 10053, 10516, '0', '0', 0, 0, 0, 845.685791015625, 812.9617919921875, -50.7067489624023437, 1.819554686546325683, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Farmer (Area: Lumber Mill - Difficulty: 0)
(@CGUID+193, 4075, 2107, 10053, 10516, '0', '0', 0, 0, 0, 835.57061767578125, 807.02935791015625, -57.1240196228027343, 6.072569847106933593, 7200, 10, 0, 5, 0, 1, 0, 0, 0, '', 44325), -- Rat (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+194, 150443, 2107, 10053, 10516, '0', '0', 0, 0, 0, 815.5980224609375, 827.02947998046875, -56.5844612121582031, 5.315833568572998046, 7200, 10, 0, 1, 0, 1, 0, 0, 0, '', 44325), -- Chicken (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+195, 15046, 2107, 10053, 10516, '0', '0', 0, 0, 0, 789.4461669921875, 815.8992919921875, -56.2427864074707031, 3.338526010513305664, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Farmer (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+196, 15046, 2107, 10053, 10516, '0', '0', 0, 0, 0, 830.52777099609375, 823.3367919921875, -57.7775764465332031, 1.02881479263305664, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Farmer (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+197, 15046, 2107, 10053, 10516, '0', '0', 0, 0, 0, 811.34375, 783.17535400390625, -57.2960281372070312, 2.273226261138916015, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_farmer_talking', 44325), -- Forsaken Farmer (Area: Lumber Mill - Difficulty: 0)
(@CGUID+198, 4075, 2107, 10053, 10516, '0', '0', 0, 0, 0, 821.537353515625, 867.22613525390625, -57.7848434448242187, 4.078652381896972656, 7200, 10, 0, 5, 0, 1, 0, 0, 0, '', 44325), -- Rat (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+199, 15046, 2107, 10053, 10516, '0', '0', 0, 0, 0, 826.89239501953125, 814.22393798828125, -57.7080497741699218, 0.982451319694519042, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Farmer (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+200, 15046, 2107, 10053, 10516, '0', '0', 0, 0, 1, 831.953125, 870.5625, -58.0505104064941406, 4.234867572784423828, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Farmer (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+201, 15046, 2107, 10053, 10516, '0', '0', 0, 0, 0, 810.529541015625, 784.89581298828125, -57.4264144897460937, 5.515162467956542968, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_farmer_talking', 44325), -- Forsaken Farmer (Area: Lumber Mill - Difficulty: 0)
(@CGUID+202, 15046, 2107, 10053, 10516, '0', '0', 0, 0, 1, 837.6805419921875, 852.9288330078125, -57.4091415405273437, 3.991605520248413085, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Farmer (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)


-- LUMBER MILL (HORDE)
(@CGUID+203, 15089, 2107, 10053, 10516, '0', '0', 0, 0, 2, 852.6875, 1236.064208984375, 15.5935516357421875, 0.13475009799003601, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_lumberjack_passive', 44325), -- Forsaken Lumberjack (Area: Lumber Mill - Difficulty: 0)
(@CGUID+204, 15089, 2107, 10053, 10516, '0', '0', 0, 0, 1, 757.3975830078125, 1162.171875, 20.36017227172851562, 3.34941720962524414, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_lumberjack_wood_carrier_1', 44325), -- Forsaken Lumberjack (Area: Lumber Mill - Difficulty: 0) (Auras: 290604 - Lumberjackin') (possible waypoints or random movement)
(@CGUID+205, 15089, 2107, 10053, 10516, '0', '0', 0, 0, 0, 814.2882080078125, 1096.765625, 10.53528881072998046, 4.617629528045654296, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_lumberjack_wood_carrier_3', 44325), -- Forsaken Lumberjack (Area: Lumber Mill - Difficulty: 0) (Auras: 290604 - Lumberjackin') (possible waypoints or random movement)
(@CGUID+206, 15089, 2107, 10053, 10516, '0', '0', 0, 0, 2, 854.97918701171875, 1236.6910400390625, 15.65137004852294921, 4.472290515899658203, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_lumberjack_passive', 44325), -- Forsaken Lumberjack (Area: Lumber Mill - Difficulty: 0)
(@CGUID+207, 15089, 2107, 10053, 10516, '0', '0', 0, 0, 0, 825.779541015625, 1255.8836669921875, 22.23864173889160156, 0.499742180109024047, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_lumberjack_wood_carrier_4', 44325), -- Forsaken Lumberjack (Area: Lumber Mill - Difficulty: 0) (Auras: 290604 - Lumberjackin') (possible waypoints or random movement)
(@CGUID+208, 15089, 2107, 10053, 10516, '0', '0', 0, 0, 1, 761.328125, 1127.359375, 19.03442955017089843, 6.225657939910888671, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_lumberjack', 44325), -- Forsaken Lumberjack (Area: Lumber Mill - Difficulty: 0) (Auras: 290604 - Lumberjackin')
(@CGUID+209, 15089, 2107, 10053, 10516, '0', '0', 0, 0, 1, 904.35418701171875, 1182.953125, 3.927566051483154296, 5.970508098602294921, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_lumberjack_wood_carrier_2', 44325), -- Forsaken Lumberjack (Area: Lumber Mill - Difficulty: 0) (Auras: 290604 - Lumberjackin') (possible waypoints or random movement)
(@CGUID+210, 15089, 2107, 10053, 10516, '0', '0', 0, 0, 0, 854.49481201171875, 1233.670166015625, 15.39551734924316406, 1.891628742218017578, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_lumberjack_wanderer', 44325), -- Forsaken Lumberjack (Area: Lumber Mill - Difficulty: 0) (possible waypoints or random movement)
(@CGUID+211, 15089, 2107, 10053, 10516, '0', '0', 0, 0, 1, 924.763916015625, 1302.88720703125, 22.37109375, 2.183487892150878906, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_lumberjack', 44325), -- Forsaken Lumberjack (Area: Lumber Mill - Difficulty: 0) (Auras: 290604 - Lumberjackin')
(@CGUID+212, 15089, 2107, 10053, 10516, '0', '0', 0, 0, 1, 752.47918701171875, 1236.529541015625, 25.32699966430664062, 2.994447708129882812, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_lumberjack', 44325), -- Forsaken Lumberjack (Area: Lumber Mill - Difficulty: 0) (Auras: 290604 - Lumberjackin')
(@CGUID+213, 15089, 2107, 10053, 10516, '0', '0', 0, 0, 1, 867.34722900390625, 1280.8785400390625, 25.11534881591796875, 1.559418201446533203, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_lumberjack', 44325), -- Forsaken Lumberjack (Area: Lumber Mill - Difficulty: 0) (Auras: 290604 - Lumberjackin')
(@CGUID+214, 15089, 2107, 10053, 10516, '0', '0', 0, 0, 1, 753.4132080078125, 1059.0885009765625, 11.60284328460693359, 4.122416973114013671, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_lumberjack', 44325), -- Forsaken Lumberjack (Area: Lumber Mill - Difficulty: 0) (Auras: 290604 - Lumberjackin')
(@CGUID+215, 15089, 2107, 10053, 10516, '0', '0', 0, 0, 1, 911.7725830078125, 1252.185791015625, 13.25510692596435546, 5.554555892944335937, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_lumberjack', 44325), -- Forsaken Lumberjack (Area: Lumber Mill - Difficulty: 0) (Auras: 290604 - Lumberjackin')


-- GOLD MINE (ALLIANCE)
(@CGUID+216, 15074, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1201.4791259765625, 757.44793701171875, -78.8430328369140625, 1.773384571075439453, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathi Miner (Area: Lumber Mill - Difficulty: 0)
(@CGUID+217, 15074, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1212.013916015625, 809.5555419921875, -82.8137741088867187, 3.915925502777099609, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathi Miner (Area: Lumber Mill - Difficulty: 0) (Auras: 175121 - Carry Sack) (possible waypoints or random movement)
(@CGUID+218, 15074, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1216.34375, 832.71875, -65.9708786010742187, 2.809300422668457031, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathi Miner (Area: Lumber Mill - Difficulty: 0)
(@CGUID+219, 15074, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1197.3055419921875, 864.31597900390625, -98.8753128051757812, 4.500833034515380859, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathi Miner (Area: Lumber Mill - Difficulty: 0) (Auras: 175121 - Carry Sack) (possible waypoints or random movement)
(@CGUID+220, 15074, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1181.5660400390625, 864.623291015625, -104.827781677246093, 4.266554832458496093, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathi Miner (Area: Lumber Mill - Difficulty: 0)
(@CGUID+221, 15074, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1181.1910400390625, 862.80206298828125, -104.996734619140625, 1.279518365859985351, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathi Miner (Area: Lumber Mill - Difficulty: 0)
(@CGUID+222, 15074, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1186.59375, 755.99652099609375, -78.9993667602539062, 1.870739698410034179, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathi Miner (Area: Lumber Mill - Difficulty: 0) (Auras: 217075 - Sleeping Sleep)
(@CGUID+223, 15074, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1180.2569580078125, 901.3819580078125, -103.944252014160156, 5.930918216705322265, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathi Miner (Area: Lumber Mill - Difficulty: 0)
(@CGUID+224, 15074, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1182.779541015625, 828.31427001953125, -100.446136474609375, 4.575056076049804687, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathi Miner (Area: Lumber Mill - Difficulty: 0) (Auras: 175121 - Carry Sack) (possible waypoints or random movement)


-- BLACKSMITH (HORDE)
(@CGUID+225, 15064, 2107, 10053, 10516, '0', '0', 0, 0, 0, 978, 994.0538330078125, -43.8363761901855468, 5.185836315155029296, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_blacksmith_talking', 44325), -- Forsaken Blacksmith (Area: Lumber Mill - Difficulty: 0)
(@CGUID+226, 15064, 2107, 10053, 10516, '0', '0', 0, 0, 0, 978.7742919921875, 992.14239501953125, -43.9096717834472656, 2.039242506027221679, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_blacksmith_talking', 44325), -- Forsaken Blacksmith (Area: Lumber Mill - Difficulty: 0)
(@CGUID+227, 15064, 2107, 10053, 10516, '0', '0', 0, 0, 1, 995.27777099609375, 1009.78472900390625, -42.1646804809570312, 0.476098626852035522, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Blacksmith (Area: Lumber Mill - Difficulty: 0) (Auras: 261985 - Blacksmith Working)
(@CGUID+228, 15071, 2107, 10053, 10516, '0', '0', 0, 0, 0, 993.205322265625, 1036.7705078125, -42.7558250427246093, 3.140616178512573242, 7200, 0, 0, 118, 0, 0, 0, 0, 0, '', 44325), -- Underfoot (Area: Lumber Mill - Difficulty: 0)
(@CGUID+229, 15064, 2107, 10053, 10516, '0', '0', 0, 0, 3, 988.95489501953125, 1005.00701904296875, -42.1504898071289062, 3.150818347930908203, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_blacksmith_working_2', 44325), -- Forsaken Blacksmith (Area: Lumber Mill - Difficulty: 0) (Auras: 261985 - Blacksmith Working)
(@CGUID+230, 15064, 2107, 10053, 10516, '0', '0', 0, 0, 2, 979.4617919921875, 1003.3992919921875, -42.8633880615234375, 3.48093271255493164, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_blacksmith_sitting', 44325), -- Forsaken Blacksmith (Area: Lumber Mill - Difficulty: 0)
(@CGUID+231, 15072, 2107, 10053, 10516, '0', '0', 0, 0, 0, 1008.79681396484375, 1005.8079833984375, -44.0266914367675781, 6.248278617858886718, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Spike (Area: Lumber Mill - Difficulty: 0)
(@CGUID+232, 15064, 2107, 10053, 10516, '0', '0', 0, 0, 0, 971.12847900390625, 976.25518798828125, -43.8743324279785156, 2.090637445449829101, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_blacksmith_stone_carrier', 44325), -- Forsaken Blacksmith (Area: Lumber Mill - Difficulty: 0) (Auras: 282906 - Carry Stone)
(@CGUID+233, 15064, 2107, 10053, 10516, '0', '0', 0, 0, 0, 967.42364501953125, 996.73785400390625, -43.9448280334472656, 2.711585760116577148, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_blacksmith_working_1', 44325); -- Forsaken Blacksmith (Area: Lumber Mill - Difficulty: 0) (Auras: 261985 - Blacksmith Working)

INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES

-- BLACKSMITH (ALLIANCE)
(@CGUID+234, 15065, 2107, 10053, 10514, '0', '0', 0, 0, 0, 1008.76611328125, 1005.79931640625, -44.0248184204101562, 6.213372230529785156, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Lady (Area: Blacksmith - Difficulty: 0)
(@CGUID+235, 15066, 2107, 10053, 10514, '0', '0', 0, 0, 0, 1017.9132080078125, 1008.7742919921875, -44.3178443908691406, 4.465655803680419921, 7200, 0, 0, 118, 0, 0, 0, 0, 0, '', 44325), -- Cleo (Area: Blacksmith - Difficulty: 0)
(@CGUID+236, 15063, 2107, 10053, 10514, '0', '0', 0, 0, 4, 967.42364501953125, 996.73785400390625, -43.9448280334472656, 2.711585760116577148, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_blacksmith_working_1', 44325), -- Arathi Blacksmith (Area: Blacksmith - Difficulty: 0) (Auras: 261985 - Blacksmith Working)
(@CGUID+237, 15063, 2107, 10053, 10514, '0', '0', 0, 0, 4, 988.95489501953125, 1005.00701904296875, -42.1504898071289062, 3.150818347930908203, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_blacksmith_working_2', 44325), -- Arathi Blacksmith (Area: Blacksmith - Difficulty: 0) (Auras: 261985 - Blacksmith Working)
(@CGUID+238, 15063, 2107, 10053, 10514, '0', '0', 0, 0, 0, 971.12847900390625, 976.25518798828125, -43.8743324279785156, 2.090637445449829101, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_blacksmith_stone_carrier', 44325), -- Arathi Blacksmith (Area: Blacksmith - Difficulty: 0) (Auras: 262247 - Carry Crate)
(@CGUID+239, 15063, 2107, 10053, 10514, '0', '0', 0, 0, 0, 978, 994.0538330078125, -43.8363761901855468, 5.185836315155029296, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_blacksmith_talking', 44325), -- Arathi Blacksmith (Area: Blacksmith - Difficulty: 0)
(@CGUID+240, 15063, 2107, 10053, 10514, '0', '0', 0, 0, 0, 978.7742919921875, 992.14239501953125, -43.9096717834472656, 2.039242506027221679, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_blacksmith_talking', 44325), -- Arathi Blacksmith (Area: Blacksmith - Difficulty: 0)
(@CGUID+241, 15063, 2107, 10053, 10514, '0', '0', 0, 0, 4, 995.0555419921875, 1009.43402099609375, -42.1646804809570312, 0.476098626852035522, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Arathi Blacksmith (Area: Blacksmith - Difficulty: 0) (Auras: 261985 - Blacksmith Working)
(@CGUID+242, 15063, 2107, 10053, 10514, '0', '0', 0, 0, 2, 979.4617919921875, 1003.3992919921875, -42.8633880615234375, 3.48093271255493164, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, 'npc_bg_ab_blacksmith_sitting', 44325), -- Arathi Blacksmith (Area: Blacksmith - Difficulty: 0)

-- STABLES (HORDE)
(@CGUID+243, 15108, 2107, 10053, 10517, '0', '0', 0, 0, 0, 1157.76220703125, 1172.59033203125, -56.2799491882324218, 2.808322429656982421, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Horse (Area: Farm - Difficulty: 0)
(@CGUID+244, 15108, 2107, 10053, 10517, '0', '0', 0, 0, 0, 1167.48095703125, 1159.8177490234375, -56.3874015808105468, 0, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Horse (Area: Farm - Difficulty: 0)
(@CGUID+245, 15108, 2107, 10053, 10517, '0', '0', 0, 0, 0, 1181.2100830078125, 1153.0242919921875, -56.2896270751953125, 0, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Horse (Area: Farm - Difficulty: 0)
(@CGUID+246, 15087, 2107, 10053, 10517, '0', '0', 0, 0, 0, 1173.6597900390625, 1172.923583984375, -56.3418312072753906, 2.805151224136352539, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Stablehand (Area: Farm - Difficulty: 0)
(@CGUID+247, 15087, 2107, 10053, 10517, '0', '0', 0, 0, 0, 1207.6632080078125, 1197.0069580078125, -56.174530029296875, 1.940982580184936523, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Stablehand (Area: Farm - Difficulty: 0)
(@CGUID+248, 15108, 2107, 10053, 10517, '0', '0', 0, 0, 0, 1173.68408203125, 1168.3316650390625, -56.3639869689941406, 2.576671123504638671, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Horse (Area: Farm - Difficulty: 0)
(@CGUID+249, 15108, 2107, 10053, 10517, '0', '0', 0, 0, 0, 1187.3367919921875, 1192.09033203125, -55.82574462890625, 3.86099553108215332, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Horse (Area: Farm - Difficulty: 0)
(@CGUID+250, 15108, 2107, 10053, 10517, '0', '0', 0, 0, 0, 1191.7066650390625, 1174.986083984375, -56.392364501953125, 0.798887610435485839, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Horse (Area: Farm - Difficulty: 0)
(@CGUID+251, 15087, 2107, 10053, 10517, '0', '0', 0, 0, 0, 1207.4913330078125, 1198.98095703125, -56.1753044128417968, 5.04430246353149414, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Stablehand (Area: Farm - Difficulty: 0)
(@CGUID+252, 15087, 2107, 10053, 10517, '0', '0', 0, 0, 0, 1196.217041015625, 1174.076416015625, -56.6059036254882812, 1.300989747047424316, 7200, 0, 0, 11791, 0, 0, 0, 0, 0, '', 44325), -- Forsaken Stablehand (Area: Farm - Difficulty: 0)

-- HONORABLE DEFENDERS
-- no create object found for those, positions are based on the capture points (like core did already)
-- FARM
(@CGUID+253, 20212, 2107, 0, 0, '0', '0', 0, 0, 0, 806.25, 874.279541015625, -56.5307502746582031, 0.818242669105529785, 7200, 0, 0, 0, 0, 0, 0, 0, 0, '', 44325), -- World Trigger (Horde Friendly + Invis Man)
(@CGUID+254, 20213, 2107, 0, 0, '0', '0', 0, 0, 0, 806.25, 874.279541015625, -56.5307502746582031, 0.818242669105529785, 7200, 0, 0, 0, 0, 0, 0, 0, 0, '', 44325), -- World Trigger (Alliance Friendly + Invis Man)
-- LUMBER MILL
(@CGUID+255, 20212, 2107, 0, 0, '0', '0', 0, 0, 0, 856.8663330078125, 1150.2135009765625, 11.04314804077148437, 0.989707827568054199, 7200, 0, 0, 0, 0, 0, 0, 0, 0, '', 44325), -- World Trigger (Horde Friendly + Invis Man)
(@CGUID+256, 20213, 2107, 0, 0, '0', '0', 0, 0, 0, 856.8663330078125, 1150.2135009765625, 11.04314804077148437, 0.989707827568054199, 7200, 0, 0, 0, 0, 0, 0, 0, 0, '', 44325), -- World Trigger (Alliance Friendly + Invis Man)
-- BLACKSMITH
(@CGUID+257, 20212, 2107, 0, 0, '0', '0', 0, 0, 0, 977.50518798828125, 1051.0728759765625, -44.7925682067871093, 0.497109025716781616, 7200, 0, 0, 0, 0, 0, 0, 0, 0, '', 44325), -- World Trigger (Horde Friendly + Invis Man)
(@CGUID+258, 20213, 2107, 0, 0, '0', '0', 0, 0, 0, 977.50518798828125, 1051.0728759765625, -44.7925682067871093, 0.497109025716781616, 7200, 0, 0, 0, 0, 0, 0, 0, 0, '', 44325), -- World Trigger (Alliance Friendly + Invis Man)
-- GOLD MINE
(@CGUID+259, 20212, 2107, 0, 0, '0', '0', 0, 0, 0, 1146.9288330078125, 848.2274169921875, -110.917579650878906, 2.417101383209228515, 7200, 0, 0, 0, 0, 0, 0, 0, 0, '', 44325), -- World Trigger (Horde Friendly + Invis Man)
(@CGUID+260, 20213, 2107, 0, 0, '0', '0', 0, 0, 0, 1146.9288330078125, 848.2274169921875, -110.917579650878906, 2.417101383209228515, 7200, 0, 0, 0, 0, 0, 0, 0, 0, '', 44325), -- World Trigger (Alliance Friendly + Invis Man)
-- STABLES
(@CGUID+261, 20212, 2107, 0, 0, '0', '0', 0, 0, 0, 1166.85595703125, 1200.12158203125, -56.3867416381835937, 0.886092901229858398, 7200, 0, 0, 0, 0, 0, 0, 0, 0, '', 44325), -- World Trigger (Horde Friendly + Invis Man)
(@CGUID+262, 20213, 2107, 0, 0, '0', '0', 0, 0, 0, 1166.85595703125, 1200.12158203125, -56.3867416381835937, 0.886092901229858398, 7200, 0, 0, 0, 0, 0, 0, 0, 0, '', 44325); -- World Trigger (Alliance Friendly + Invis Man)

-- Spawn Groups
DELETE FROM `spawn_group` WHERE `spawnType` = 0 AND `spawnId` BETWEEN @CGUID+0 AND @CGUID+262;
INSERT INTO `spawn_group` (`groupId`, `spawnType`, `spawnId`) VALUES
(@SPAWNGROUP_HORDE_FARM, 0, @CGUID+253),
(@SPAWNGROUP_HORDE_FARM, 0, @CGUID+184),
(@SPAWNGROUP_HORDE_FARM, 0, @CGUID+185),
(@SPAWNGROUP_HORDE_FARM, 0, @CGUID+189),
(@SPAWNGROUP_HORDE_FARM, 0, @CGUID+190),
(@SPAWNGROUP_HORDE_FARM, 0, @CGUID+192),
(@SPAWNGROUP_HORDE_FARM, 0, @CGUID+195),
(@SPAWNGROUP_HORDE_FARM, 0, @CGUID+196),
(@SPAWNGROUP_HORDE_FARM, 0, @CGUID+197),
(@SPAWNGROUP_HORDE_FARM, 0, @CGUID+199),
(@SPAWNGROUP_HORDE_FARM, 0, @CGUID+200),
(@SPAWNGROUP_HORDE_FARM, 0, @CGUID+201),
(@SPAWNGROUP_HORDE_FARM, 0, @CGUID+202),
(@SPAWNGROUP_ALLIANCE_FARM, 0, @CGUID+254),
-- TODO MISSING DATA ALLIANCE FARM
(@SPAWNGROUP_HORDE_LUMBERMILL, 0, @CGUID+255),
(@SPAWNGROUP_HORDE_LUMBERMILL, 0, @CGUID+203),
(@SPAWNGROUP_HORDE_LUMBERMILL, 0, @CGUID+204),
(@SPAWNGROUP_HORDE_LUMBERMILL, 0, @CGUID+205),
(@SPAWNGROUP_HORDE_LUMBERMILL, 0, @CGUID+206),
(@SPAWNGROUP_HORDE_LUMBERMILL, 0, @CGUID+207),
(@SPAWNGROUP_HORDE_LUMBERMILL, 0, @CGUID+208),
(@SPAWNGROUP_HORDE_LUMBERMILL, 0, @CGUID+209),
(@SPAWNGROUP_HORDE_LUMBERMILL, 0, @CGUID+210),
(@SPAWNGROUP_HORDE_LUMBERMILL, 0, @CGUID+211),
(@SPAWNGROUP_HORDE_LUMBERMILL, 0, @CGUID+212),
(@SPAWNGROUP_HORDE_LUMBERMILL, 0, @CGUID+213),
(@SPAWNGROUP_HORDE_LUMBERMILL, 0, @CGUID+214),
(@SPAWNGROUP_HORDE_LUMBERMILL, 0, @CGUID+215),
(@SPAWNGROUP_ALLIANCE_LUMBERMILL, 0, @CGUID+256),
-- TODO MISSING DATA ALLIANCE LUMBERMILL
(@SPAWNGROUP_HORDE_BLACKSMITH, 0, @CGUID+257),
(@SPAWNGROUP_HORDE_BLACKSMITH, 0, @CGUID+225),
(@SPAWNGROUP_HORDE_BLACKSMITH, 0, @CGUID+226),
(@SPAWNGROUP_HORDE_BLACKSMITH, 0, @CGUID+227),
(@SPAWNGROUP_HORDE_BLACKSMITH, 0, @CGUID+228),
(@SPAWNGROUP_HORDE_BLACKSMITH, 0, @CGUID+229),
(@SPAWNGROUP_HORDE_BLACKSMITH, 0, @CGUID+230),
(@SPAWNGROUP_HORDE_BLACKSMITH, 0, @CGUID+231),
(@SPAWNGROUP_HORDE_BLACKSMITH, 0, @CGUID+232),
(@SPAWNGROUP_HORDE_BLACKSMITH, 0, @CGUID+233),
(@SPAWNGROUP_ALLIANCE_BLACKSMITH, 0, @CGUID+258),
(@SPAWNGROUP_ALLIANCE_BLACKSMITH, 0, @CGUID+234),
(@SPAWNGROUP_ALLIANCE_BLACKSMITH, 0, @CGUID+235),
(@SPAWNGROUP_ALLIANCE_BLACKSMITH, 0, @CGUID+236),
(@SPAWNGROUP_ALLIANCE_BLACKSMITH, 0, @CGUID+237),
(@SPAWNGROUP_ALLIANCE_BLACKSMITH, 0, @CGUID+238),
(@SPAWNGROUP_ALLIANCE_BLACKSMITH, 0, @CGUID+239),
(@SPAWNGROUP_ALLIANCE_BLACKSMITH, 0, @CGUID+240),
(@SPAWNGROUP_ALLIANCE_BLACKSMITH, 0, @CGUID+241),
(@SPAWNGROUP_ALLIANCE_BLACKSMITH, 0, @CGUID+242),
(@SPAWNGROUP_HORDE_GOLDMINE, 0, @CGUID+259),
-- TODO MISSING DATA HORDE GOLDMINE
(@SPAWNGROUP_ALLIANCE_GOLDMINE, 0, @CGUID+260),
(@SPAWNGROUP_ALLIANCE_GOLDMINE, 0, @CGUID+216),
(@SPAWNGROUP_ALLIANCE_GOLDMINE, 0, @CGUID+217),
(@SPAWNGROUP_ALLIANCE_GOLDMINE, 0, @CGUID+218),
(@SPAWNGROUP_ALLIANCE_GOLDMINE, 0, @CGUID+219),
(@SPAWNGROUP_ALLIANCE_GOLDMINE, 0, @CGUID+220),
(@SPAWNGROUP_ALLIANCE_GOLDMINE, 0, @CGUID+221),
(@SPAWNGROUP_ALLIANCE_GOLDMINE, 0, @CGUID+222),
(@SPAWNGROUP_ALLIANCE_GOLDMINE, 0, @CGUID+223),
(@SPAWNGROUP_ALLIANCE_GOLDMINE, 0, @CGUID+224),
(@SPAWNGROUP_HORDE_STABLES, 0, @CGUID+261),
(@SPAWNGROUP_HORDE_STABLES, 0, @CGUID+243),
(@SPAWNGROUP_HORDE_STABLES, 0, @CGUID+244),
(@SPAWNGROUP_HORDE_STABLES, 0, @CGUID+245),
(@SPAWNGROUP_HORDE_STABLES, 0, @CGUID+246),
(@SPAWNGROUP_HORDE_STABLES, 0, @CGUID+247),
(@SPAWNGROUP_HORDE_STABLES, 0, @CGUID+248),
(@SPAWNGROUP_HORDE_STABLES, 0, @CGUID+249),
(@SPAWNGROUP_HORDE_STABLES, 0, @CGUID+250),
(@SPAWNGROUP_HORDE_STABLES, 0, @CGUID+251),
(@SPAWNGROUP_HORDE_STABLES, 0, @CGUID+252),
(@SPAWNGROUP_ALLIANCE_STABLES, 0, @CGUID+262),
(@SPAWNGROUP_ALLIANCE_STABLES, 0, @CGUID+170),
(@SPAWNGROUP_ALLIANCE_STABLES, 0, @CGUID+171),
(@SPAWNGROUP_ALLIANCE_STABLES, 0, @CGUID+172),
(@SPAWNGROUP_ALLIANCE_STABLES, 0, @CGUID+173),
(@SPAWNGROUP_ALLIANCE_STABLES, 0, @CGUID+174),
(@SPAWNGROUP_ALLIANCE_STABLES, 0, @CGUID+175),
(@SPAWNGROUP_ALLIANCE_STABLES, 0, @CGUID+176),
(@SPAWNGROUP_ALLIANCE_STABLES, 0, @CGUID+177),
(@SPAWNGROUP_ALLIANCE_STABLES, 0, @CGUID+178),
(@SPAWNGROUP_ALLIANCE_STABLES, 0, @CGUID+179),
(@SPAWNGROUP_ALLIANCE_STABLES, 0, @CGUID+180);

-- they do not seem to follow leader when leader moves with c++ script
DELETE FROM `creature_formations` WHERE `memberGUID` IN (@CGUID+153,  @CGUID+158) OR `leaderGUID` IN (@CGUID+65);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES
(@CGUID+65, @CGUID+153, 10, 135, 515, 0, 0),
(@CGUID+65, @CGUID+158, 10, 225, 515, 0, 0);

-- movement templates
DELETE FROM `creature_movement_override` WHERE `SpawnId` BETWEEN @CGUID+0 AND @CGUID+262;
INSERT INTO `creature_movement_override` (`SpawnId`, `Ground`, `Swim`, `Flight`, `Rooted`, `Chase`, `Random`, `InteractionPauseTimer`) VALUES
(@CGUID+175, 1, 0, 0, 1, 0, 0, NULL), -- Arathi Horse
(@CGUID+203, 1, 0, 0, 1, 0, 0, NULL), -- Forsaken Lumberjack
(@CGUID+206, 1, 0, 0, 1, 0, 0, NULL), -- Forsaken Lumberjack
(@CGUID+230, 1, 0, 0, 1, 0, 0, NULL), -- Forsaken Blacksmith
(@CGUID+242, 1, 0, 0, 1, 0, 0, NULL), -- Arathi Blacksmith
(@CGUID+249, 1, 0, 0, 1, 0, 0, NULL); -- Forsaken Horse

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+262;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(@CGUID+102, 0, 0, 0, 1, 0, 0, 0, 0, 3, '285977'), -- Bound Arathi Rager - 285977 - Earth Channel Omni
(@CGUID+126, 0, 0, 0, 1, 0, 0, 0, 0, 3, '285977'), -- Bound Arathi Rager - 285977 - Earth Channel Omni
(@CGUID+227, 0, 0, 0, 1, 0, 0, 0, 0, 0, '261985'), -- Forsaken Blacksmith - 261985 - Blacksmith Working
(@CGUID+241, 0, 0, 0, 1, 0, 0, 0, 0, 0, '261985'), -- Forsaken Blacksmith - 261985 - Blacksmith Working
(@CGUID+253, 0, 0, 0, 1, 0, 0, 0, 0, 0, '66157'), -- World Trigger (Horde Friendly + Invis Man) - 66157 - Honorable Defender
(@CGUID+254, 0, 0, 0, 1, 0, 0, 0, 0, 0, '66157'), -- World Trigger (Alliance Friendly + Invis Man) - 66157 - Honorable Defender
(@CGUID+255, 0, 0, 0, 1, 0, 0, 0, 0, 0, '66157'), -- World Trigger (Horde Friendly + Invis Man) - 66157 - Honorable Defender
(@CGUID+256, 0, 0, 0, 1, 0, 0, 0, 0, 0, '66157'), -- World Trigger (Alliance Friendly + Invis Man) - 66157 - Honorable Defender
(@CGUID+257, 0, 0, 0, 1, 0, 0, 0, 0, 0, '66157'), -- World Trigger (Horde Friendly + Invis Man) - 66157 - Honorable Defender
(@CGUID+258, 0, 0, 0, 1, 0, 0, 0, 0, 0, '66157'), -- World Trigger (Alliance Friendly + Invis Man) - 66157 - Honorable Defender
(@CGUID+259, 0, 0, 0, 1, 0, 0, 0, 0, 0, '66157'), -- World Trigger (Horde Friendly + Invis Man) - 66157 - Honorable Defender
(@CGUID+260, 0, 0, 0, 1, 0, 0, 0, 0, 0, '66157'), -- World Trigger (Alliance Friendly + Invis Man) - 66157 - Honorable Defender
(@CGUID+261, 0, 0, 0, 1, 0, 0, 0, 0, 0, '66157'), -- World Trigger (Horde Friendly + Invis Man) - 66157 - Honorable Defender
(@CGUID+262, 0, 0, 0, 1, 0, 0, 0, 0, 0, '66157'); -- World Trigger (Alliance Friendly + Invis Man) - 66157 - Honorable Defender

DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+20;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 322273, 2107, 10053, 10521, '0', '0', 0, 1284.77783203125, 1280.7239990234375, -15.5517463684082031, 3.961897850036621093, 0.003005027770996093, -0.01773643493652343, -0.91688156127929687, 0.398753851652145385, 7200, 255, 0, 44325), -- Alliance Door (Area: Defiler's Den - Difficulty: 0)
(@OGUID+1, 322274, 2107, 10053, 10521, '0', '0', 0, 708.14239501953125, 708.76043701171875, -17.631387710571289, 0.767943859100341796, 0, 0, 0.374606132507324218, 0.927184045314788818, 7200, 255, 0, 44325), -- Horde Door (Area: Defiler's Den - Difficulty: 0)
(@OGUID+2, 319261, 2107, 10053, 10521, '0', '0', 0, 1295.513916015625, 1337.625, -5.47695112228393554, 5.192355155944824218, 0, 0, -0.51877307891845703, 0.854911983013153076, 7200, 255, 1, 44325), -- Fine Food and Refreshments (Area: Defiler's Den - Difficulty: 0)
(@OGUID+3, 319262, 2107, 10053, 10521, '0', '0', 0, 1365.282958984375, 1306.4461669921875, -4.43625354766845703, 0.061086613684892654, 0, 0, 0.030538558959960937, 0.999533593654632568, 7200, 255, 1, 44325), -- Blacksmith (Area: Defiler's Den - Difficulty: 0)
(@OGUID+4, 317303, 2107, 10053, 10521, '0', '0', 0, 810.8836669921875, 782.1024169921875, -56.8683090209960937, 1.265360832214355468, 0.038332939147949218, -0.08645439147949218, 0.587144851684570312, 0.803938508033752441, 7200, 255, 1, 44325), -- First Prize: "Big Bertha" (Area: Defiler's Den - Difficulty: 0)
(@OGUID+5, 322022, 2107, 10053, 10521, '0', '0', 0, 528.5538330078125, 516.2882080078125, 64.067626953125, 1.659621834754943847, -0.03941202163696289, 0.236527442932128906, 0.696545600891113281, 0.676258623600006103, 7200, 255, 1, 44325), -- Defiler Wagon (Area: Defiler's Den - Difficulty: 0)
(@OGUID+6, 180322, 2107, 10053, 10521, '0', '0', 0, 1284.63720703125, 1280.6822509765625, -16.3245010375976562, 0.715584874153137207, 0, 0, 0.350207328796386718, 0.936672210693359375, 7200, 255, 1, 44325), -- Ghost Gate (Area: Defiler's Den - Difficulty: 0)
(@OGUID+7, 180322, 2107, 10053, 10521, '0', '0', 0, 708.107666015625, 708.6180419921875, -18.3004169464111328, 0.767943859100341796, 0, 0, 0.374606132507324218, 0.927184045314788818, 7200, 255, 1, 44325), -- Ghost Gate (Area: Defiler's Den - Difficulty: 0)
(@OGUID+8, 325741, 2107, 10053, 10521, '0', '0', 0, 987.8297119140625, 1005.13458251953125, -42.2905387878417968, 3.116126298904418945, 0, 0, 0.999918937683105468, 0.012732816860079765, 7200, 255, 1, 44325), -- Anvil (Area: Defiler's Den - Difficulty: 0)
(@OGUID+9, 325742, 2107, 10053, 10521, '0', '0', 0, 996.26495361328125, 1009.94683837890625, -42.3335304260253906, 3.701466083526611328, 0, 0, -0.96107292175292968, 0.276294827461242675, 7200, 255, 1, 44325), -- Anvil (Area: Defiler's Den - Difficulty: 0)
(@OGUID+10, 325743, 2107, 10053, 10521, '0', '0', 0, 993.944091796875, 1001.09075927734375, -42.6673851013183593, 1.89441680908203125, 0, 0, 0.811788558959960937, 0.583951532840728759, 7200, 255, 1, 44325), -- Anvil (Area: Defiler's Den - Difficulty: 0)
(@OGUID+11, 319223, 2107, 10053, 10521, '0', '0', 0, 711.23785400390625, 687.91668701171875, -16.0303688049316406, 3.473215818405151367, -0.02870512008666992, -0.0069131851196289, -0.98584461212158203, 0.165041223168373107, 7200, 255, 1, 44325), -- Derek's Heavy Metals (Area: Defiler's Den - Difficulty: 0)
(@OGUID+12, 319224, 2107, 10053, 10521, '0', '0', 0, 678.578125, 719.45831298828125, -13.0993480682373046, 1.562067508697509765, 0.010341644287109375, -0.00907707214355468, 0.70395660400390625, 0.710109710693359375, 7200, 255, 1, 44325), -- Meats and Treats (Area: Defiler's Den - Difficulty: 0)
(@OGUID+13, 319225, 2107, 10053, 10521, '0', '0', 0, 799.94964599609375, 1173.1041259765625, 15.10321426391601562, 3.935718059539794921, -0.10708475112915039, -0.04864788055419921, -0.91564178466796875, 0.384403884410858154, 7200, 255, 1, 44325), -- Days Since Last Incident: 0 (Area: Defiler's Den - Difficulty: 0)
(@OGUID+14, 227536, 2107, 10053, 0, '0', '0', 0, 806.25, 874.279541015625, -56.5307502746582031, 0.818242669105529785, 0, 0, 0.397803306579589843, 0.917470753192901611, 7200, 255, 1, 44325), -- Capture Point (Area: 0 - Difficulty: 0)
(@OGUID+15, 227420, 2107, 10053, 0, '0', '0', 0, 1166.85595703125, 1200.12158203125, -56.3867416381835937, 0.886092901229858398, 0, 0, 0.428693771362304687, 0.903449833393096923, 7200, 255, 1, 44325), -- Capture Point (Area: 0 - Difficulty: 0)
(@OGUID+16, 227522, 2107, 10053, 0, '0', '0', 0, 977.50518798828125, 1051.0728759765625, -44.7925682067871093, 0.497109025716781616, 0, 0, 0.246003150939941406, 0.969269037246704101, 7200, 255, 1, 44325), -- Capture Point (Area: 0 - Difficulty: 0)
(@OGUID+17, 239300, 2107, 10053, 0, '0', '0', 0, 1647.1859130859375, 1520.0076904296875, 131.380218505859375, 0.846484839916229248, 0, 0, 0.410718917846679687, 0.911761999130249023, 7200, 255, 1, 44325), -- Chair (Area: 0 - Difficulty: 0)
(@OGUID+18, 239301, 2107, 10053, 0, '0', '0', 0, 1646.765869140625, 1522.818603515625, 131.380218505859375, 5.907940864562988281, 0, 0, -0.1865234375, 0.982450485229492187, 7200, 255, 1, 44325), -- Chair (Area: 0 - Difficulty: 0)
(@OGUID+19, 227544, 2107, 10053, 10516, '0', '0', 0, 856.8663330078125, 1150.2135009765625, 11.04314804077148437, 0.989707827568054199, 0, 0, 0.474903106689453125, 0.880038082599639892, 7200, 255, 1, 44325), -- Capture Point (Area: Lumber Mill - Difficulty: 0)
(@OGUID+20, 227538, 2107, 10053, 10516, '0', '0', 0, 1146.9288330078125, 848.2274169921875, -110.917579650878906, 2.417101383209228515, 0, 0, 0.935103416442871093, 0.354374974966049194, 7200, 255, 1, 44325); -- Capture Point (Area: Lumber Mill - Difficulty: 0)

DELETE FROM `gameobject_addon` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+49;
INSERT INTO `gameobject_addon` (`guid`, `parent_rotation0`, `parent_rotation1`, `parent_rotation2`, `parent_rotation3`, `WorldEffectID`, `AIAnimKitID`) VALUES
(@OGUID+8, 0, 0, 0.944089233875274658, 0.329689979553222656, 0, 0), -- Anvil
(@OGUID+9, 0, 0, 0.944089233875274658, 0.329689979553222656, 0, 0), -- Anvil
(@OGUID+10, 0, 0, 0.944089233875274658, 0.329689979553222656, 0, 0), -- Anvil
(@OGUID+17, 0, 0, -0.65275973081588745, 0.757565081119537353, 0, 0), -- Chair
(@OGUID+18, 0, 0, -0.65275973081588745, 0.757565081119537353, 0, 0); -- Chair

DELETE FROM `creature_template_movement` WHERE `CreatureId` IN (150513 /*150513 (Arathor Gryphon Rider)*/, 150459 /*Defiler Bat Rider*/);
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Chase`, `Random`, `InteractionPauseTimer`) VALUES
(150513, 0, 0, 1, 0, 0, NULL),
(150459, 0, 0, 1, 0, 0, NULL);


DELETE FROM `creature_template_addon` WHERE `entry` IN (15071 /*15071 (Underfoot) - Grow*/, 73400 /*73400 (Healing Ran Invisible Stalker DND) - Healing Rain Visual*/, 15063 /*15063 (Arathi Blacksmith) - Blacksmith Working*/, 15065 /*15065 (Lady)*/, 15064 /*15064 (Forsaken Blacksmith) - Blacksmith Working*/, 15074 /*15074 (Arathi Miner) - Carry Sack*/, 15089 /*15089 (Forsaken Lumberjack) - Lumberjackin'*/, 15046 /*15046 (Forsaken Farmer)*/, 150622 /*150622 (Dominic Masonwrite) - Read Scroll*/, 150414 /*150414 (Lightning) - Sleeping Sleep*/, 150418 /*150418 (Arathor Siege Tank)*/, 150459 /*150459 (Defiler Bat Rider)*/, 150513 /*150513 (Arathor Gryphon Rider)*/, 150543 /*150543 (Belle)*/, 149755 /*149755 (Kevin Young) - Blacksmith Working*/, 150403 /*150403 (Arathor Watchman) - Hold Torch*/, 150429 /*150429 (Defiler Combatant) - Hold Torch*/, 150655 /*150655 (Groundskeeper Olivia)*/, 150426 /*150426 (Arathi Giant)*/);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(15071, 0, 0, 0, 1, 0, 0, 0, 0, 0, '24244'), -- 15071 (Underfoot) - Grow
(15065, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- 15065 (Lady)
(150414, 0, 0, 0, 1, 0, 0, 0, 0, 0, '217075'), -- 150414 (Lightning) - Sleeping Sleep
(150418, 0, 0, 0, 1, 0, 0, 0, 0, 3, ''), -- 150418 (Arathor Siege Tank)
(150459, 0, 1566, 50331648, 1, 0, 0, 0, 0, 4, ''), -- 150459 (Defiler Bat Rider)
(150513, 0, 47166, 50331648, 1, 0, 0, 0, 0, 4, ''), -- 150513 (Arathor Gryphon Rider)
(150543, 0, 0, 1, 1, 0, 0, 0, 0, 0, ''), -- 150543 (Belle)
(150426, 0, 0, 0, 1, 0, 0, 0, 0, 3, ''); -- 150426 (Arathi Giant)


-- add UNIT_FLAG_IMMUNE_TO_PC & UNIT_FLAG_IMMUNE_TO_NPC
UPDATE `creature_template` SET `unit_flags` = `unit_flags` | 0x100 | 0x200 WHERE `entry` IN (15087 /*Forsake Stablehand*/, 15063 /*Arathi Blacksmith*/, 15064 /*Forsaken Blacksmith*/, 15074 /*Arathi Miner*/, 15089 /*Forsaken Lumberjack*/, 15046 /*Forsaken Farmer*/, 15086 /*Arathi Stablehand*/);

-- Spell Scripts
DELETE FROM `spell_script_names` WHERE `ScriptName` IN ('spell_bg_ab_blacksmith_working');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(261985, 'spell_bg_ab_blacksmith_working');
