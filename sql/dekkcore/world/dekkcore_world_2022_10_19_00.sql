UPDATE `gameobject_loot_template` SET `MinCount`='1', `MaxCount`='1' WHERE  `Entry`=338681 AND `Item`=178602;

DELETE FROM `creature_loot_template` WHERE item IN (180789, 183802, 133995);
DELETE FROM `gameobject_loot_template` WHERE item IN (56249, 56249, 104038, 133760, 5798, 6172, 7146, 112266, 46819, 35480, 158078, 164770, 164911);
DELETE FROM `gameobject_loot_template` WHERE item IN (35482, 40843, 52498, 11098, 9293, 183967, 178145, 178146, 5397, 12537, 180534, 171061, 158078);
DELETE FROM `gameobject_loot_template` WHERE item IN (165690, 158078, 158078, 166881, 167037, 167173, 167172, 167174, 167830, 167538, 168174, 169106);
DELETE FROM `gameobject_loot_template` WHERE item IN (169207, 175158, 178149, 181710, 179316, 178997, 178996, 185751, 185749, 185750, 186164, 185754);
DELETE FROM `gameobject_loot_template` WHERE item IN (186486, 185751, 185751, 186165, 185753, 186458);

UPDATE gameobject_template SET data1 = 348723 WHERE entry = 348723 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '348723';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('348723', '176446', '0', '0', '1', '1', '0', '1', '1', '');

UPDATE gameobject_template SET data1 = 241634 WHERE entry = 241634 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '241634';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('241634', '124403', '0', '0', '1', '1', '0', '1', '1', '');


UPDATE gameobject_template SET data1 = 375373 WHERE entry = 375373 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '375373';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('375373', '187707', '0', '0', '0', '1', '0', '1', '1', ''),
('375373', '188671', '0', '0', '0', '1', '0', '3', '4', ''),
('375373', '188682', '0', '0', '0', '1', '0', '3', '4', ''),
('375373', '188683', '0', '0', '0', '1', '0', '1', '1', ''),
('375373', '188685', '0', '0', '0', '1', '0', '1', '1', ''),
('375373', '188760', '0', '0', '0', '1', '0', '1', '1', ''),
('375373', '188762', '0', '0', '0', '1', '0', '1', '1', ''),
('375373', '188790', '0', '0', '0', '1', '0', '3', '5', ''),
('375373', '188792', '0', '0', '0', '1', '0', '3', '5', ''),
('375373', '189707', '0', '0', '0', '1', '0', '1', '1', ''),
('375373', '189708', '0', '0', '0', '1', '0', '1', '1', ''),
('375373', '189712', '0', '0', '0', '1', '0', '1', '1', ''),
('375373', '189717', '0', '0', '0', '1', '0', '1', '1', ''),
('375373', '189718', '0', '0', '0', '1', '0', '1', '1', ''),
('375373', '189864', '0', '0', '0', '1', '0', '4', '8', ''),
('375373', '190927', '0', '0', '1', '1', '0', '2', '3', ''),
('375373', '190955', '0', '0', '1', '1', '0', '15', '18', '');


UPDATE gameobject_template SET data1 = 352488 WHERE entry = 352488 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '352488';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('352488', '171343', '0', '0', '1', '1', '0', '1', '1', '');


UPDATE gameobject_template SET data1 = 278339 WHERE entry = 278339 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '278339';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('278339', '153697', '0', '0', '1', '1', '0', '10', '15', '');


UPDATE gameobject_template SET data1 = 343617 WHERE entry = 343617 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '343617';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('343617', '174999', '0', '0', '0', '1', '0', '1', '1', '');

UPDATE gameobject_template SET data1 = 375387 WHERE entry = 375387 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '375387';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('375387', '189443', '0', '0', '1', '1', '0', '1', '1', '');


UPDATE gameobject_template SET data1 = 245996 WHERE entry = 245996 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '245996';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('245996', '129196', '0', '0', '0', '1', '0', '2', '3', ''),
('245996', '129210', '0', '0', '0', '1', '0', '1', '1', '');


UPDATE gameobject_template SET data1 = 369439 WHERE entry = 369439 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '369439';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('369439', '173874', '0', '0', '0', '1', '0', '8', '8', ''),
('369439', '176086', '0', '0', '0', '1', '0', '10', '10', ''),
('369439', '176881', '0', '0', '0', '1', '0', '1', '1', ''),
('369439', '176885', '0', '0', '0', '1', '0', '1', '1', ''),
('369439', '176887', '0', '0', '0', '1', '0', '1', '1', ''),
('369439', '178133', '0', '0', '0', '1', '0', '16', '16', ''),
('369439', '178134', '0', '0', '0', '1', '0', '8', '8', ''),
('369439', '178135', '0', '0', '0', '1', '0', '1', '1', ''),
('369439', '180622', '0', '0', '0', '1', '0', '1', '1', ''),
('369439', '180624', '0', '0', '0', '1', '0', '16', '16', ''),
('369439', '183109', '0', '0', '0', '1', '0', '8', '8', ''),
('369439', '183110', '0', '0', '0', '1', '0', '16', '16', ''),
('369439', '185050', '0', '0', '1', '1', '0', '1', '1', ''),
('369439', '185970', '0', '0', '0', '1', '0', '8', '8', ''),
('369439', '186017', '0', '0', '0', '1', '0', '1', '1', ''),
('369439', '186200', '0', '0', '0', '1', '0', '5', '13', ''),
('369439', '186204', '0', '0', '0', '1', '0', '8', '13', ''),
('369439', '186685', '0', '0', '0', '1', '0', '5', '15', ''),
('369439', '186731', '0', '0', '0', '1', '0', '1', '1', ''),
('369439', '186994', '0', '0', '0', '1', '0', '1', '1', ''),
('369439', '187006', '0', '0', '0', '1', '0', '1', '1', ''),
('369439', '187187', '0', '0', '0', '1', '0', '1', '1', ''),
('369439', '187216', '0', '0', '0', '1', '0', '1', '1', ''),
('369439', '187243', '0', '0', '0', '1', '0', '1', '1', ''),
('369439', '187251', '0', '0', '0', '1', '0', '1', '1', ''),
('369439', '187276', '0', '0', '1', '1', '0', '1', '1', ''),
('369439', '187326', '0', '0', '0', '1', '0', '1', '4', ''),
('369439', '187329', '0', '0', '0', '1', '0', '1', '4', ''),
('369439', '187330', '0', '0', '0', '1', '0', '1', '4', ''),
('369439', '187331', '0', '0', '0', '1', '0', '1', '4', ''),
('369439', '187421', '0', '0', '0', '1', '0', '2', '3', ''),
('369439', '187463', '0', '0', '0', '1', '0', '1', '4', ''),
('369439', '187465', '0', '0', '0', '1', '0', '1', '4', ''),
('369439', '187467', '0', '0', '0', '1', '0', '1', '4', ''),
('369439', '188740', '0', '0', '1', '1', '0', '4', '4', '');

UPDATE gameobject_template SET data1 = 354081 WHERE entry = 354081 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '354081';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('354081', '180470', '0', '0', '0', '1', '0', '1', '1', '');

UPDATE gameobject_template SET data1 = 270040 WHERE entry = 270040 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '270040';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('270040', '150272', '0', '0', '1', '1', '0', '1', '1', '');

UPDATE gameobject_template SET data1 = 341951 WHERE entry = 341951 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '341951';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('341951', '174916', '0', '0', '1', '1', '0', '1', '1', '');

UPDATE gameobject_template SET data1 = 209353 WHERE entry = 209353 AND type IN (3, 50);
INSERT IGNORE INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('209353', '72237', '0', '98', '0', '1', '0', '1', '9', ''),
('209353', '72238', '0', '1', '0', '1', '0', '1', '4', ''),
('209353', '89640', '0', '9.463887', '0', '1', '0', '2', '3', ''),
('209353', '89641', '0', '6.797612', '0', '1', '0', '1', '1', ''),
('209353', '97620', '0', '4.491663', '0', '1', '0', '1', '12', '');

UPDATE gameobject_template SET data1 = 356885 WHERE entry = 356885 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '356885';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('356885', '182186', '0', '0', '0', '1', '0', '1', '1', '');

UPDATE gameobject_template SET data1 = 344608 WHERE entry = 344608 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '344608';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('344608', '175153', '0', '0', '1', '1', '0', '1', '1', '');

UPDATE gameobject_template SET data1 = 244000 WHERE entry = 244000 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '244000';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('244000', '128745', '0', '0', '1', '1', '0', '1', '1', '');

UPDATE gameobject_template SET data1 = 288475 WHERE entry = 288475 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '288475';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('288475', '159910', '0', '0', '1', '1', '0', '1', '1', '');

UPDATE gameobject_template SET data1 = 354174 WHERE entry = 354174 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '354174';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('354174', '180486', '0', '0', '0', '1', '0', '1', '1', '');

UPDATE gameobject_template SET data1 = 250372 WHERE entry = 250372 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '250372';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('250372', '137422', '0', '0', '1', '1', '0', '1', '1', '');

UPDATE gameobject_template SET data1 = 280545 WHERE entry = 280545 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '280545';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('280545', '156609', '0', '0', '1', '1', '0', '2', '3', '');

UPDATE gameobject_template SET data1 = 231097 WHERE entry = 231097 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '231097';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('231097', '112266', '0', '0', '1', '1', '0', '3', '5', '');

UPDATE gameobject_template SET data1 = 291226 WHERE entry = 291226 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '291226';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('291226', '161198', '0', '0', '0', '1', '0', '1', '1', ''),
('291226', '161199', '0', '0', '0', '1', '0', '1', '1', ''),
('291226', '161200', '0', '0', '0', '1', '0', '1', '1', ''),
('291226', '161201', '0', '0', '0', '1', '0', '1', '1', ''),
('291226', '161202', '0', '0', '0', '1', '0', '1', '1', ''),
('291226', '161203', '0', '0', '0', '1', '0', '1', '1', ''),
('291226', '161204', '0', '0', '0', '1', '0', '1', '1', ''),
('291226', '161205', '0', '0', '0', '1', '0', '1', '1', ''),
('291226', '161206', '0', '0', '0', '1', '0', '1', '1', ''),
('291226', '161207', '0', '0', '0', '1', '0', '1', '1', ''),
('291226', '161211', '0', '0', '0', '1', '0', '1', '1', ''),
('291226', '163091', '0', '0', '0', '1', '0', '1', '1', ''),
('291226', '163092', '0', '0', '0', '1', '0', '1', '1', ''),
('291226', '163096', '0', '0', '0', '1', '0', '1', '1', ''),
('291226', '163852', '0', '0', '1', '1', '0', '1', '1', ''),
('291226', '163856', '0', '0', '1', '1', '0', '1', '1', '');

UPDATE gameobject_template SET data1 = 243972 WHERE entry = 243972 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '243972';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('243972', '128703', '0', '0', '1', '1', '0', '1', '1', '');

UPDATE gameobject_template SET data1 = 251774 WHERE entry = 251774 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '251774';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('251774', '138484', '0', '0', '1', '1', '0', '1', '1', '');

UPDATE gameobject_template SET data1 = 370427 WHERE entry = 370427 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '370427';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('370427', '187730', '0', '0', '1', '1', '0', '1', '1', '');

UPDATE gameobject_template SET data1 = 281904 WHERE entry = 281904 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '281904';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('281904', '162634', '0', '0', '0', '1', '0', '1', '1', ''),
('281904', '162672', '0', '0', '0', '1', '0', '1', '1', ''),
('281904', '162673', '0', '0', '0', '1', '0', '1', '1', ''),
('281904', '162684', '0', '0', '0', '1', '0', '1', '1', ''),
('281904', '162978', '0', '0', '0', '1', '0', '1', '1', ''),
('281904', '162979', '0', '0', '0', '1', '0', '1', '1', ''),
('281904', '162980', '0', '0', '0', '1', '0', '1', '1', ''),
('281904', '163590', '0', '0', '0', '1', '0', '1', '1', ''),
('281904', '163591', '0', '0', '0', '1', '0', '1', '1', ''),
('281904', '163592', '0', '0', '0', '1', '0', '1', '1', ''),
('281904', '163593', '0', '0', '0', '1', '0', '1', '1', ''),
('281904', '163849', '0', '0', '0', '1', '0', '1', '1', ''),
('281904', '163852', '0', '0', '1', '1', '0', '1', '1', '');


UPDATE gameobject_template SET data1 = 233599 WHERE entry = 233599 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '233599';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('233599', '113630', '0', '0', '1', '1', '0', '1', '1', '');

UPDATE gameobject_template SET data1 = 334869 WHERE entry = 334869 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '334869';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('334869', '171469', '0', '0', '1', '1', '0', '1', '1', '');

UPDATE `creature_template_model` SET `CreatureDisplayID`='23317' WHERE  `CreatureID`=25693 AND `Idx`=0;
UPDATE `creature_template_model` SET `CreatureDisplayID`='13629' WHERE  `CreatureID`=46450 AND `Idx`=0;
UPDATE `creature_template_model` SET `CreatureDisplayID`='235' WHERE  `CreatureID`=48968 AND `Idx`=0;
UPDATE `creature_template_model` SET `CreatureDisplayID`='5562' WHERE  `CreatureID`=49070 AND `Idx`=0;
UPDATE `creature_template_model` SET `CreatureDisplayID`='4607' WHERE  `CreatureID`=50194 AND `Idx`=0;
UPDATE `creature_template_model` SET `CreatureDisplayID`='4607' WHERE  `CreatureID`=50195 AND `Idx`=0;
UPDATE `creature_template_model` SET `CreatureDisplayID`='4607' WHERE  `CreatureID`=50196 AND `Idx`=0;
UPDATE `creature_template_model` SET `CreatureDisplayID`='37456' WHERE  `CreatureID`=38168 AND `Idx`=0;
UPDATE `creature_template_model` SET `CreatureDisplayID`='67156' WHERE  `CreatureID`=38258 AND `Idx`=0;
UPDATE `creature_template_model` SET `CreatureDisplayID`='37456' WHERE  `CreatureID`=38726 AND `Idx`=0;
UPDATE `creature_template_model` SET `CreatureDisplayID`='37456' WHERE  `CreatureID`=38736 AND `Idx`=0;
UPDATE `creature_template_model` SET `CreatureDisplayID`='67146' WHERE  `CreatureID`=39120 AND `Idx`=0;
UPDATE `creature_template_model` SET `CreatureDisplayID`='67146' WHERE  `CreatureID`=39121 AND `Idx`=0;
UPDATE `creature_template_model` SET `CreatureDisplayID`='68146' WHERE  `CreatureID`=39122 AND `Idx`=0;
UPDATE `creature_template_model` SET `CreatureDisplayID`='1070' WHERE  `CreatureID`=40022 AND `Idx`=0;
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('119900', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('98870', '1', '1');
REPLACE INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`) VALUES ('100372', '1', '1');
UPDATE `creature_template_model` SET `CreatureDisplayID`='18342' WHERE  `CreatureID`=18604 AND `Idx`=0;
REPLACE INTO `creature_template_model` (`CreatureID`, `CreatureDisplayID`, `VerifiedBuild`) VALUES ('29229', '958', '45114');
DELETE FROM `gameobject_addon` WHERE  `guid`=19925;
DELETE FROM `gameobject_addon` WHERE  `guid`=19929;
DELETE FROM `gameobject_addon` WHERE  `guid`=19930;
DELETE FROM `gameobject_addon` WHERE  `guid`=19960;
DELETE FROM `gameobject_addon` WHERE  `guid`=184234;
DELETE FROM `gameobject_addon` WHERE  `guid`=184235;
UPDATE `quest_offer_reward` SET `Emote1`='1' WHERE  `ID`=59916;
UPDATE `quest_template` SET `RewardFactionID2`='2163' WHERE  `ID`=52348;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=48874;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=48776;
UPDATE `quest_template` SET `RewardItem1`='0', `RewardAmount1`='0' WHERE  `ID`=40664;
UPDATE `quest_template_addon` SET `ProvidedItemCount`='0' WHERE  `ID`=11122;
UPDATE `quest_template_addon` SET `ProvidedItemCount`='0' WHERE  `ID`=11294;
UPDATE `quest_template_addon` SET `ProvidedItemCount`='0' WHERE  `ID`=11318;
UPDATE `quest_template_addon` SET `ProvidedItemCount`='0' WHERE  `ID`=11407;
UPDATE `quest_template_addon` SET `ProvidedItemCount`='0' WHERE  `ID`=11408;
UPDATE `quest_template_addon` SET `ProvidedItemCount`='0' WHERE  `ID`=11409;
UPDATE `quest_template_addon` SET `ProvidedItemCount`='0' WHERE  `ID`=11412;
UPDATE `quest_template` SET `ItemDrop2`='0', `ItemDropQuantity2`='0' WHERE  `ID`=11466;
UPDATE `quest_template_addon` SET `ProvidedItemCount`='0' WHERE  `ID`=11293;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=47645;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=39451;
UPDATE `quest_template_addon` SET `NextQuestID`='12292', `BreadcrumbForQuestId`='0' WHERE  `ID`=12511;
UPDATE `quest_template` SET `RewardSpell`='0' WHERE  `ID`=42464;
UPDATE `quest_template_addon` SET `NextQuestID`='12328', `BreadcrumbForQuestId`='0' WHERE  `ID`=12161;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=30103;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=28407;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=24054;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=23911;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=28605;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=25702;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=18301;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=20241;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=22001;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=21993;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=20072;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=19157;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=18335;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=35254;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=15649;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=16221;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=16268;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=16541;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=16187;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=16528;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=17186;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=17323;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=19687;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=13321;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=18910;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=18564;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=2914;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=20710;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=20514;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=19568;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=19336;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=17197;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=15271;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=15977;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=37738;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=133430;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=137996;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=136934;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=130437;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=349;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=448;

UPDATE gameobject_template SET Data0='43', Data1='27522', Data3='0', Data30='0' WHERE  entry=195531;
REPLACE INTO gameobject_loot_template (Entry, Item, QuestRequired) VALUES 
('27522', '48951', '1');

UPDATE gameobject_template SET Data1='27537' WHERE  entry=195601;


UPDATE gameobject_template SET data1 = 375495 WHERE entry = 375495 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '375495';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('375495', '187707', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188006', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188009', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188010', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188011', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188013', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188016', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188017', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188019', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188027', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188028', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188032', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188035', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188038', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188040', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188041', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188042', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188043', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188045', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188046', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188047', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188051', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188056', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188106', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '188671', '0', '0', '0', '1', '0', '6', '8', ''),
('375495', '188682', '0', '0', '0', '1', '0', '2', '3', ''),
('375495', '188683', '0', '0', '0', '1', '0', '2', '2', ''),
('375495', '188685', '0', '0', '0', '1', '0', '2', '2', ''),
('375495', '188760', '0', '0', '0', '1', '0', '2', '2', ''),
('375495', '188762', '0', '0', '0', '1', '0', '2', '2', ''),
('375495', '188811', '0', '0', '0', '1', '0', '2', '2', ''),
('375495', '188835', '0', '0', '0', '1', '0', '6', '10', ''),
('375495', '189544', '0', '0', '0', '1', '0', '1', '2', ''),
('375495', '189863', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '190350', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '190353', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '190354', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '190358', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '190361', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '190372', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '190605', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '190633', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '190635', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '190926', '0', '0', '0', '1', '0', '1', '1', ''),
('375495', '190927', '0', '0', '1', '1', '0', '2', '3', ''),
('375495', '190955', '0', '0', '1', '1', '0', '15', '18', '');

UPDATE gameobject_template SET data1 = 212174 WHERE entry = 212174 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '212174';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('212174', '46109', '0', '0', '0', '1', '0', '1', '1', ''),
('212174', '74864', '0', '0', '0', '1', '0', '1', '1', ''),
('212174', '86545', '0', '0', '1', '1', '0', '1', '1', ''),
('212174', '88496', '0', '0', '0', '1', '0', '1', '1', ''),
('212174', '94935', '0', '0', '0', '1', '0', '1', '1', ''),
('212174', '97981', '0', '0', '1', '1', '0', '1', '1', '');


UPDATE gameobject_template SET data1 = 230946 WHERE entry = 230946 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '230946';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('230946', '112020', '0', '0', '1', '1', '0', '1', '1', '');

UPDATE gameobject_template SET data1 = 342366 WHERE entry = 342366 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '342366';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('342366', '174968', '0', '0', '1', '1', '0', '1', '1', '');

UPDATE gameobject_template SET data1 = 229654 WHERE entry = 229654 AND type IN (3, 50);
DELETE FROM `gameobject_loot_template` WHERE `entry` = '229654';
INSERT INTO `gameobject_loot_template` (`entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
('229654', '109197', '0', '0', '1', '1', '0', '1', '1', '');


UPDATE gameobject SET animprogress='255' WHERE  id=195692;
UPDATE gameobject_template SET Data1='27568' WHERE  entry=195692;




