DELETE FROM `smart_scripts` WHERE `entryorguid`=3139 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` VALUES (3139, 0, 0, 0, 64, 0, 100, 0, 0, 0, 0, 0, 0, '', 15, 25179, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Quest compete');
DELETE FROM `quest_template_addon` WHERE `ID`=25179;
INSERT INTO `quest_template_addon` VALUES (25179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, '');
DELETE FROM `creature_template` WHERE `entry`=3139;
INSERT INTO `creature_template` VALUES (3139, 0, 0, 0, 0, 0, 'Gar\'Thok', 'Gar\'Thok', '', NULL, '', 11790, 30, 30, 0, 0, 0, 29, 3, 1, 1.14286, 1, 0, 0, 2000, 2000, 0, 0, 1, 512, 2048, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 2688, 0, 0, 1, 0, 0, 2, '', 39653);
