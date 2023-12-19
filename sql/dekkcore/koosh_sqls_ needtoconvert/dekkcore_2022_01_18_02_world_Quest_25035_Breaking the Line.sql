--creature_template
DELETE FROM `creature_template` WHERE `entry`=38930;
INSERT INTO `creature_template` VALUES (38930, 0, 0, 0, 0, 0, 'Zuni', 'Zuni', '', NULL, '', 0, 4, 4, 0, 0, 0, 126, 0, 1, 1.14286, 1, 0, 0, 2000, 2000, 0, 0, 2, 33280, 2048, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 49024, 0, 0, 1, 0, 0, 0, 'npc_zuni_38930', 39653);
DELETE FROM `creature_template` WHERE `entry`=38989;
INSERT INTO `creature_template` VALUES (38989, 0, 0, 0, 0, 0, 'Jornun', 'Jornun', '', NULL, '', 11131, 30, 30, 0, 0, 0, 126, 1, 1, 1.14286, 1, 0, 0, 2000, 2000, 0, 0, 1, 33024, 2048, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 49093, 0, 0, 1, 0, 0, 0, '', 39653);
DELETE FROM `creature_template` WHERE `entry`=38440;
INSERT INTO `creature_template` VALUES (38440, 0, 0, 0, 0, 0, 'Tortunga', 'Tortunga', '', NULL, '', 0, 30, 30, 0, 0, 0, 126, 2, 1, 1.14286, 1, 1, 0, 2000, 0, 0, 0, 1, 32832, 2048, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 50, 1, 10, 1, 1, 1, 1, 0, 0, 48296, 0, 0, 1, 0, 0, 0, '', 39653);

--creature
DELETE FROM `creature` WHERE `guid`=10591708;
INSERT INTO `creature` VALUES (10591708, 38440, 1, 6453, 4866, '0', 0, '', 0, -1, 0, 0, -1331.66, -5556.11, 21.4355, 0.0283536, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);

--creature_template_movement
DELETE FROM `creature_template_movement` WHERE `CreatureId`=39004;
INSERT INTO `creature_template_movement` VALUES (39004, 1, 1, 0, 0);
DELETE FROM `creature_template_movement` WHERE `CreatureId`=39157;
INSERT INTO `creature_template_movement` VALUES (39157, 1, 1, 0, 0);

--creature_text
DELETE FROM `creature_text` WHERE `CreatureID`=38930 AND `GroupID`=0 AND `ID`=0;
INSERT INTO `creature_text` VALUES (38930, 0, 0, 'Wait up, mon!', 12, 0, 100, 5, 0, 21368, 0, 39066, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=38930 AND `GroupID`=1 AND `ID`=0;
INSERT INTO `creature_text` VALUES (38930, 1, 0, 'You finished with ya trainin\' too? Glad you make it through, mon!', 12, 0, 100, 6, 0, 21370, 0, 39067, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=38930 AND `GroupID`=2 AND `ID`=0;
INSERT INTO `creature_text` VALUES (38930, 2, 0, 'I know dis is prolly busy work, but I don\'t mind. Dese baby raptors are cute lil devils.', 12, 0, 100, 1, 0, 21371, 0, 39068, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=38930 AND `GroupID`=3 AND `ID`=0;
INSERT INTO `creature_text` VALUES (38930, 3, 0, 'Try not ta make me look too bad, eh?', 12, 0, 100, 1, 0, 21373, 0, 39069, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=38931 AND `GroupID`=0 AND `ID`=0;
INSERT INTO `creature_text` VALUES (38931, 0, 0, 'Not so fast! Save some for me, mon!', 12, 0, 100, 5, 0, 21374, 0, 39064, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=38989 AND `GroupID`=0 AND `ID`=0;
INSERT INTO `creature_text` VALUES (38989, 0, 0, 'Just let me know when ya ready, mon.', 12, 0, 100, 5, 0, 0, 0, 39243, 0, '');

--smart_scripts
DELETE FROM `smart_scripts` WHERE `entryorguid`=38440 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` VALUES (38440, 0, 0, 0, 19, 0, 100, 0, 25035, 0, 0, 0, 0, '', 84, 0, 0, 0, 0, 0, 0, 11, 38989, 10, 0, 0, 0, 0, 0, 'quest accept - say');
DELETE FROM `smart_scripts` WHERE `entryorguid`=38989 AND `source_type`=0 AND `id`=0 AND `link`=1;
INSERT INTO `smart_scripts` VALUES (38989, 0, 0, 1, 62, 0, 100, 0, 11131, 0, 0, 0, 0, '', 85, 73208, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'gossip Sellect - cast spell');
DELETE FROM `smart_scripts` WHERE `entryorguid`=38989 AND `source_type`=0 AND `id`=1 AND `link`=0;
INSERT INTO `smart_scripts` VALUES (38989, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, '', 84, 0, 0, 0, 0, 0, 0, 11, 38931, 20, 0, 0, 0, 0, 0, 'say');
