-- smart_scripts
DELETE FROM `smart_scripts` WHERE `entryorguid`=39380 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` VALUES (39380, 0, 0, 0, 62, 0, 100, 0, 11209, 0, 0, 0, 0, "", 85, 73840, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon The wolf');
DELETE FROM `smart_scripts` WHERE `entryorguid`=39364 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` VALUES (39364, 0, 0, 0, 27, 0, 100, 512, 0, 0, 0, 0, 0, '', 1, 0, 10000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'the wolf text');
DELETE FROM `smart_scripts` WHERE `entryorguid`=39364 AND `source_type`=0 AND `id`=1 AND `link`=0;
INSERT INTO `smart_scripts` VALUES (39364, 0, 1, 0, 52, 0, 100, 512, 0, 39364, 0, 0, 0, '', 1, 1, 6000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `smart_scripts` WHERE `entryorguid`=39364 AND `source_type`=0 AND `id`=2 AND `link`=0;
INSERT INTO `smart_scripts` VALUES (39364, 0, 2, 0, 52, 0, 100, 512, 1, 39364, 0, 0, 0, '', 1, 2, 6000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `smart_scripts` WHERE `entryorguid`=39364 AND `source_type`=0 AND `id`=3 AND `link`=0;
INSERT INTO `smart_scripts` VALUES (39364, 0, 3, 0, 52, 0, 100, 512, 2, 39364, 0, 0, 0, '', 1, 3, 6000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `smart_scripts` WHERE `entryorguid`=39364 AND `source_type`=0 AND `id`=4 AND `link`=0;
INSERT INTO `smart_scripts` VALUES (39364, 0, 4, 0, 52, 0, 100, 512, 3, 39364, 0, 0, 0, '', 1, 4, 6000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `smart_scripts` WHERE `entryorguid`=39364 AND `source_type`=0 AND `id`=5 AND `link`=0;
INSERT INTO `smart_scripts` VALUES (39364, 0, 5, 0, 52, 0, 100, 512, 4, 39364, 0, 0, 0, '', 1, 5, 6000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `smart_scripts` WHERE `entryorguid`=39364 AND `source_type`=0 AND `id`=6 AND `link`=0;
INSERT INTO `smart_scripts` VALUES (39364, 0, 6, 0, 52, 0, 100, 512, 5, 39364, 0, 0, 0, '', 1, 6, 6000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `smart_scripts` WHERE `entryorguid`=39364 AND `source_type`=0 AND `id`=7 AND `link`=0;
INSERT INTO `smart_scripts` VALUES (39364, 0, 7, 0, 52, 0, 100, 512, 6, 39364, 0, 0, 0, '', 1, 7, 6000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `smart_scripts` WHERE `entryorguid`=39364 AND `source_type`=0 AND `id`=8 AND `link`=0;
INSERT INTO `smart_scripts` VALUES (39364, 0, 8, 0, 52, 0, 100, 512, 7, 39364, 0, 0, 0, '', 1, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- creature_text
DELETE FROM `creature_text` WHERE `CreatureID`=39364 AND `Text`='One day, The Wolf was very hungry, so he ran east to look for some food';
INSERT INTO `creature_text` VALUES (39364, 0, 0, 'One day, The Wolf was very hungry, so he ran east to look for some food', 41, 0, 100, 0, 0, 0, 0, 0, 0, 'the wolf text');
DELETE FROM `creature_text` WHERE `CreatureID`=39364 AND `Text`='The Wolf had grown tired of eating boar meat.';
INSERT INTO `creature_text` VALUES (39364, 1, 0, 'The Wolf had grown tired of eating boar meat.', 41, 0, 100, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=39364 AND `Text`='The Wolf did not care for raptor meat.';
INSERT INTO `creature_text` VALUES (39364, 2, 0, 'The Wolf did not care for raptor meat.', 41, 0, 100, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=39364 AND `Text`='The Wolf found scorpid meat too bitter.';
INSERT INTO `creature_text` VALUES (39364, 3, 0, 'The Wolf found scorpid meat too bitter.', 41, 0, 100, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=39364 AND `Text`='He was hungry for kodo meat.';
INSERT INTO `creature_text` VALUES (39364, 4, 0, 'He was hungry for kodo meat.', 41, 0, 100, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=39364 AND `Text`='The Wolf ran and ran, looking for an easy meal.';
INSERT INTO `creature_text` VALUES (39364, 5, 0, 'The Wolf ran and ran, looking for an easy meal.', 41, 0, 100, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=39364 AND `Text`='The more he ran, the more his stomach growled.';
INSERT INTO `creature_text` VALUES (39364, 6, 0, 'The more he ran, the more his stomach growled.', 41, 0, 100, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=39364 AND `Text`='He scoured the sands of Durotar, hunting for his prey.';
INSERT INTO `creature_text` VALUES (39364, 7, 0, 'He scoured the sands of Durotar, hunting for his prey.', 41, 0, 100, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=39364 AND `Text`='The Wolf was lazy, and didn\'t want to work for his meal.';
INSERT INTO `creature_text` VALUES (39364, 8, 0, 'The Wolf was lazy, and didn\'t want to work for his meal.', 41, 0, 100, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=39365 AND `GroupID`=0 AND `ID`=0;
INSERT INTO `creature_text` VALUES (39365, 0, 0, 'He happened upon a pair of battling kodos.', 41, 0, 100, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=39365 AND `GroupID`=1 AND `ID`=0;
INSERT INTO `creature_text` VALUES (39365, 1, 0, 'Clever as he was, The Wolf decided to wait for one to defeat the other.', 41, 0, 100, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=39365 AND `GroupID`=2 AND `ID`=0;
INSERT INTO `creature_text` VALUES (39365, 2, 0, 'When the weaker Kodo died, The Wolf approached and tried to eat it.', 41, 0, 100, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=39365 AND `GroupID`=3 AND `ID`=0;
INSERT INTO `creature_text` VALUES (39365, 3, 0, 'The remaining Kodo, angry at The Wolf\'s impetuousness,', 41, 0, 100, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `CreatureID`=39365 AND `GroupID`=4 AND `ID`=0;
INSERT INTO `creature_text` VALUES (39365, 4, 0, 'swiftly killed The Wolf before he had a chance to eat.', 41, 0, 100, 0, 0, 0, 0, 0, 0, '');

-- creature_template
DELETE FROM `creature_template` WHERE `entry`=39364;
INSERT INTO `creature_template` VALUES (39364, 0, 0, 0, 0, 0, 'The Wolf', 'The Wolf', '', NULL, '', 0, 1, 1, 0, 0, 0, 35, 0, 1, 1.14286, 1, 0, 0, 2000, 2000, 0, 0, 1, 768, 2048, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73851, 73841, 0, 0, 0, 0, 0, 0, 690, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 49701, 0, 0, 1, 0, 0, 0, '', 39653);
DELETE FROM `creature_template` WHERE `entry`=39380;
INSERT INTO `creature_template` VALUES (39380, 0, 0, 0, 0, 0, 'Shin Stonepillar', 'Shin Stonepillar', 'Far Seer', NULL, '', 11209, 30, 30, 0, 0, 0, 125, 3, 1, 1.14286, 1, 0, 0, 2000, 0, 0, 0, 2, 32768, 2048, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 49747, 0, 0, 1, 0, 0, 0, '', 39653);
DELETE FROM `creature_template` WHERE `entry`=393650;
INSERT INTO `creature_template` VALUES (393650, 0, 0, 0, 0, 0, 'The Kodo', 'The Kodo', '', NULL, '', 0, 30, 30, 0, 0, 0, 35, 0, 1, 1.14286, 1, 0, 0, 2000, 2000, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73868, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 49703, 0, 0, 1, 0, 0, 0, '', 39653);

-- creature_template_model
DELETE FROM `creature_template_model` WHERE `CreatureID`=393650 AND `Idx`=0;
INSERT INTO `creature_template_model` VALUES (393650, 0, 31425, 1, 0, 39653);

-- creature
DELETE FROM `creature` WHERE `guid`=303086;
DELETE FROM `creature` WHERE `guid`=303091;
DELETE FROM `creature` WHERE `guid`=303093;
DELETE FROM `creature` WHERE `guid`=303087;
INSERT INTO `creature` VALUES (303087, 39365, 1, 14, 14, '0', 0, '', 0, -1, 31425, 0, 1227.3, -4738.68, 16.9896, 1.32645, 300, 3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'npc_the_kodo_39365', 0);
DELETE FROM `creature` WHERE `guid`=303092;
INSERT INTO `creature` VALUES (303092, 39365, 1, 14, 4982, '0', 0, '', 0, -1, 31425, 0, 1278.48, -4826.69, 17.5388, 2.58309, 300, 3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'npc_the_kodo_39365', 0);
DELETE FROM `creature` WHERE `guid`=303094;
INSERT INTO `creature` VALUES (303094, 39365, 1, 14, 4982, '0', 0, '', 0, -1, 31425, 0, 1327.74, -4772.85, 24.8507, 2.58309, 300, 3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'npc_the_kodo_39365', 0);

-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=11209 AND `SourceEntry`=0 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=9 AND `ConditionTarget`=0 AND `ConditionValue1`=25205 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` VALUES (15, 11209, 0, 0, 0, 9, 0, 25205, 0, 0, 0, 0, 0, '', 'quest accept - gossip visiable');

-- spell_script_names
DELETE FROM `spell_script_names` WHERE `spell_id`=73841 AND `ScriptName`='spell_kodo_hunting';
INSERT INTO `spell_script_names` VALUES (73841, 'spell_kodo_hunting');
