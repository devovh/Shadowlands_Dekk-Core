
-- Phasing
DELETE FROM `phase_area` WHERE (`AreaId` = 7004 AND `PhaseId` IN (3196, 3331, 3427, 3197));
INSERT INTO `phase_area` (`AreaId`, `PhaseId`, `Comment`) VALUES
(7004, 3196, 'Cosmetic - Iconics at Garrison Location'),
(7004, 3331, 'Cosmetic - Durotan at Garrison Location'),
(7004, 3427, 'Frostfire Ridge Intro - Horde'),
(7004, 3197, 'Cosmetic - Gazlowe at Initial Garrison Location');

-- Conditon
DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 26 AND `SourceGroup` = 3196 AND `SourceEntry` = 7004) OR (`SourceTypeOrReferenceId` = 26 AND `SourceGroup` = 3331 AND `SourceEntry` = 7004) OR (`SourceTypeOrReferenceId` = 26 AND `SourceGroup` = 3427 AND `SourceEntry` = 7004) OR (`SourceTypeOrReferenceId` = 26 AND `SourceGroup` = 3197 AND `SourceEntry` = 7004) OR (`SourceTypeOrReferenceId` = 32 AND `SourceGroup` = 8 AND `SourceEntry` = 229057);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 3196, 7004, 0, 0, 47, 0, 34402, 2 | 64, 0, 0, 'Apply Phase 3196 If Quest    IS complete / rewarded'),
(26, 3331, 7004, 0, 0, 47, 0, 34402, 2 | 64, 0, 0, 'Apply Phase 3331 If Quest 34402 IS complete / rewarded'),
(26, 3331, 7004, 0, 0, 47, 0, 34364, 64, 0, 1, 'Apply Phase 3331 if Quest 34364 is NOT rewarded'),
(26, 3427, 7004, 0, 0, 47, 0, 34378, 64, 0, 1, 'Apply Phase 3427 If Quest 34378 IS NOT rewarded'),
(26, 3197, 7004, 0, 0, 47, 0, 34364, 2 | 64, 0, 0, 'Apply Phase 3197 If Quest 34364 IS complete / rewarded'),
-- Horde Banner Gob
(32, 8, 229057, 0, 0, 47, 0, 34364, 2 | 8 | 64, 0, 0, 'Horde Banner gets visible if Quest: 34364 is in Progress / complete / rewarded');

DELETE FROM `gossip_menu` WHERE (`MenuID`=16271 AND `TextID`=23530);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`, `VerifiedBuild`) VALUES
(16271, 23530, 45114); -- 76411 (Farseer Drek'Thar)

UPDATE `creature_template` SET `gossip_menu_id`=16271 WHERE `entry`=76411; -- Farseer Drek'Thar

DELETE FROM `spell_script_names` WHERE `spell_id`=45438;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(45438,'spell_mage_ice_block');

DELETE FROM `spell_script_names` WHERE `ScriptName`= 'spell_gen_eject_passenger_1';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(60603, 'spell_gen_eject_passenger_1');


UPDATE `spell_script_names` SET `ScriptName` = 'spell_zuldrak_cocooned_not_on_quest' WHERE `ScriptName` = 'spell_cocooned_not_on_quest';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_zuldrak_cocooned_on_quest' WHERE `ScriptName` = 'spell_cocooned_on_quest';

UPDATE `spell_script_names` SET `ScriptName` = 'spell_zuldrak_scourge_disguise' WHERE `ScriptName` = 'spell_scourge_disguise';
UPDATE `spell_script_names` SET `ScriptName` = 'spell_zuldrak_scourge_disguise_instability' WHERE `ScriptName` = 'spell_scourge_disguise_instability';

UPDATE `spell_script_names` SET `ScriptName` = 'spell_zuldrak_scourge_disguise_expiring' WHERE `ScriptName` = 'spell_scourge_disguise_expiring';

DELETE FROM `spell_script_names` WHERE `ScriptName` IN ('spell_icecrown_through_the_eye_the_eye_of_the_lk','spell_icecrown_through_the_eye_kill_credit_to_master');
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(25732,'spell_icecrown_through_the_eye_the_eye_of_the_lk'),
(57884,'spell_icecrown_through_the_eye_kill_credit_to_master');

UPDATE `spell_script_names` SET `ScriptName` = 'spell_icecrown_chum_the_water' WHERE `ScriptName` = 'spell_q14112_14145_chum_the_water';

UPDATE `spell_script_names` SET `ScriptName` = 'spell_icecrown_pound_drum' WHERE `ScriptName` = 'spell_q14076_14092_pound_drum';

UPDATE `spell_script_names` SET `ScriptName` = 'spell_icecrown_summon_tualiq_proxy' WHERE `ScriptName` = 'spell_summon_tualiq_proxy';

UPDATE `spell_script_names` SET `ScriptName` = 'spell_icecrown_the_ocular_on_death' WHERE `ScriptName` = 'spell_the_ocular_on_death';

-- Bombard the Ballistae (12232)
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_dragonblight_bombard_the_ballistae_fx_master';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(48347,'spell_dragonblight_bombard_the_ballistae_fx_master');

DELETE FROM `spell_script_names` WHERE `ScriptName` IN ('spell_dragonblight_scarlet_raven_priest_image_master','spell_dragonblight_cancel_scarlet_raven_priest_image');
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(48762,'spell_dragonblight_scarlet_raven_priest_image_master'),
(48769,'spell_dragonblight_cancel_scarlet_raven_priest_image');

-- Priest
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_dragonblight_cancel_banshees_magic_mirror';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(48692,'spell_dragonblight_cancel_banshees_magic_mirror');

UPDATE `spell_script_names` SET `ScriptName` = 'spell_dragonblight_high_executor_branding_iron' WHERE `ScriptName` = 'spell_high_executor_branding_iron';

UPDATE `spell_script_names` SET `ScriptName` = 'spell_dragonblight_call_out_injured_soldier' WHERE `ScriptName` = 'spell_call_out_injured_soldier';

UPDATE `spell_script_names` SET `ScriptName` = 'spell_dragonblight_moti_hourglass_cast_see_invis_on_master' WHERE `ScriptName` = 'spell_moti_hourglass_cast_see_invis_on_master';

UPDATE `spell_script_names` SET `ScriptName` = 'spell_dragonblight_moti_mirror_image_script_effect' WHERE `ScriptName` = 'spell_moti_mirror_image_script_effect';

UPDATE `spell_script_names` SET `ScriptName` = 'spell_dragonblight_warsong_battle_standard' WHERE `ScriptName` = 'spell_warsong_battle_standard';

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_putricide_slime_puddle_aura';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(72868,'spell_putricide_slime_puddle_aura'),
(72869,'spell_putricide_slime_puddle_aura');

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_pos_ice_shards';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(70827, 'spell_pos_ice_shards');


UPDATE `creature_template` SET `ScriptName`='npc_engineer_spark_overgrind' WHERE `entry`='17243';

UPDATE `areatrigger_create_properties` SET `ScriptName`='Instances::Bloodmaul::areatrigger_roltall_burning_slag' WHERE  `Id`=1566;
UPDATE `areatrigger_create_properties` SET `ScriptName`='Instances::Bloodmaul::areatrigger_magma_barrage' WHERE  `Id`=2847;
UPDATE `areatrigger_create_properties` SET `ScriptName`='Instances::Bloodmaul::areatrigger_volcanic_trantum' WHERE  `Id`=1391;
UPDATE `areatrigger_create_properties` SET `ScriptName`='Instances::Bloodmaul::areatrigger_shatter_earth' WHERE  `Id`=1388;

REPLACE INTO `instance_template` (`map`, `parent`, `script`, `insideResurrection`) VALUES
(1208, 1116, 'instance_grimrail_depot', 1);

UPDATE `creature_template` SET `ScriptName`='npc_overseer_kah_delen_167425' WHERE  `entry`=167425;
UPDATE `creature_template` SET `ScriptName`='npc_tal_inara_173615' WHERE  `entry`=173615;
UPDATE `creature_template` SET `ScriptName`='npc_tal_inara_159478' WHERE  `entry`=159478;



DELETE FROM `spell_script_names` WHERE `spell_id`IN (341728,341648,338686,338688);
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(341728, 'aura_nathrian_hymn'),
(341648, 'aura_nathrian_hymn'),
(338686, 'aura_nathrian_hymn'),
(319603, 'aura_curse_of_stone'),
(347548, 'spell_sylvanas_windrunner_ranger_shot'),
(352303, 'spell_sylvanas_windrunner_disappear'),
(358975, 'spell_sylvanas_windrunner_disappear'),
(353969, 'spell_sylvanas_windrunner_banshees_heartseeker'),
(353967, 'spell_sylvanas_windrunner_banshees_heartseeker_shadow_damage'),
(357139, 'spell_sylvanas_windrunner_stonecrash_phase_one_and_three'),
(233614, 'spell_malificus_pestilence'),
(338688, 'aura_nathrian_hymn');



UPDATE `creature_template` SET `ScriptName`='npc_winter_queen_177280' WHERE  `entry`=177280;
UPDATE `creature_template` SET `ScriptName`='npc_inquisitor_baleful' WHERE  `entry`=93105;

-- Update Alliance Legacy Quartermaster in Dalaran-Northrend
DELETE FROM `npc_vendor` WHERE `entry` IN (35494, 37942, 33964, 31579, 31580);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(35494, 109, 41959, 0, 0, 1, 0, 0, 45745), -- Furious Gladiator's Silk Trousers
(35494, 108, 41953, 0, 0, 1, 0, 0, 45745), -- Furious Gladiator's Silk Raiment
(35494, 107, 41971, 0, 0, 1, 0, 0, 45745), -- Furious Gladiator's Silk Handguards
(35494, 106, 41946, 0, 0, 1, 0, 0, 45745), -- Furious Gladiator's Silk Cowl
(35494, 105, 41965, 0, 0, 1, 0, 0, 45745), -- Furious Gladiator's Silk Amice
(35494, 29, 47735, 0, 0, 1, 0, 0, 45745), -- Glyph of Indomitability
(35494, 28, 47734, 0, 0, 1, 0, 0, 45745), -- Mark of Supremacy
(35494, 27, 48724, 0, 0, 1, 0, 0, 45745), -- Talisman of Resurgence
(35494, 26, 48722, 0, 0, 1, 0, 0, 45745), -- Shard of the Crystal Heart
(35494, 25, 47731, 0, 0, 1, 0, 0, 45745), -- Clutch of Fortification
(35494, 24, 47729, 0, 0, 1, 0, 0, 45745), -- Bloodshed Band
(35494, 23, 47730, 0, 0, 1, 0, 0, 45745), -- Dexterous Brightstone Ring
(35494, 22, 47733, 0, 0, 1, 0, 0, 45745), -- Heartmender Circle
(35494, 21, 47732, 0, 0, 1, 0, 0, 45745), -- Band of the Invoker
(35494, 20, 47707, 0, 0, 1, 0, 0, 45745), -- Mantle of the Groundbreaker
(35494, 19, 47708, 0, 0, 1, 0, 0, 45745), -- Duskstalker Shoulderpads
(35494, 18, 47715, 0, 0, 1, 0, 0, 45745), -- Pauldrons of Revered Mortality
(35494, 17, 47698, 0, 0, 1, 0, 0, 45745), -- Shoulderplates of Enduring Order
(35494, 16, 47697, 0, 0, 1, 0, 0, 45745), -- Pauldrons of Trembling Rage
(35494, 15, 47702, 0, 0, 1, 0, 0, 45745), -- Pauldrons of the Cavalier
(35494, 14, 47704, 0, 0, 1, 0, 0, 45745), -- Epaulets of the Devourer
(35494, 13, 47712, 0, 0, 1, 0, 0, 45745), -- Shoulders of the Fateful Accord
(35494, 12, 47713, 0, 0, 1, 0, 0, 45745), -- Mantle of Catastrophic Emanation
(35494, 11, 47686, 0, 0, 1, 0, 0, 45745), -- Helm of Inner Warmth
(35494, 10, 47689, 0, 0, 1, 0, 0, 45745), -- Hood of Lethal Intent
(35494, 9, 47694, 0, 0, 1, 0, 0, 45745), -- Helm of Clouded Sight
(35494, 8, 47677, 0, 0, 1, 0, 0, 45745), -- Faceplate of the Honorbound
(35494, 7, 47674, 0, 0, 1, 0, 0, 45745), -- Helm of Thunderous Rampage
(35494, 6, 47681, 0, 0, 1, 0, 0, 45745), -- Heaume of the Restless Watch
(35494, 5, 47685, 0, 0, 1, 0, 0, 45745), -- Helm of the Brooding Dragon
(35494, 4, 47690, 0, 0, 1, 0, 0, 45745), -- Helm of Abundant Growth
(35494, 3, 47693, 0, 0, 1, 0, 0, 45745), -- Hood of Fiery Aftermath
(35494, 2, 47658, 0, 0, 1, 0, 0, 45745), -- Brimstone Igniter
(35494, 1, 47556, 0, 0, 1, 0, 0, 45745), -- Crusader Orb
(37942, 102, 41966, 0, 0, 1, 0, 0, 45745), -- Relentless Gladiator's Silk Amice
(37942, 101, 41960, 0, 0, 1, 0, 0, 45745), -- Relentless Gladiator's Silk Trousers
(37942, 100, 41947, 0, 0, 1, 0, 0, 45745), -- Relentless Gladiator's Silk Cowl
(37942, 99, 41972, 0, 0, 1, 0, 0, 45745), -- Relentless Gladiator's Silk Handguards
(37942, 98, 41954, 0, 0, 1, 0, 0, 45745), -- Relentless Gladiator's Silk Raiment
(37942, 37, 49908, 0, 0, 1, 0, 0, 45745), -- Primordial Saronite
(37942, 36, 50997, 0, 0, 1, 0, 0, 45745), -- Circle of Ossus
(37942, 35, 50996, 0, 0, 1, 0, 0, 45745), -- Belt of Omission
(37942, 34, 50995, 0, 0, 1, 0, 0, 45745), -- Vengeful Noose
(37942, 33, 50994, 0, 0, 1, 0, 0, 45745), -- Belt of Petrified Ivy
(37942, 32, 50993, 0, 0, 1, 0, 0, 45745), -- Band of the Night Raven
(37942, 31, 50992, 0, 0, 1, 0, 0, 45745), -- Waistband of Despair
(37942, 30, 50991, 0, 0, 1, 0, 0, 45745), -- Verdigris Chain Belt
(37942, 29, 50989, 0, 0, 1, 0, 0, 45745), -- Lich Killer's Lanyard
(37942, 28, 50987, 0, 0, 1, 0, 0, 45745), -- Malevolent Girdle
(37942, 27, 50984, 0, 0, 1, 0, 0, 45745), -- Gloves of Ambivalence
(37942, 26, 50983, 0, 0, 1, 0, 0, 45745), -- Gloves of False Gestures
(37942, 25, 50982, 0, 0, 1, 0, 0, 45745), -- Cat Burglar's Grips
(37942, 24, 50981, 0, 0, 1, 0, 0, 45745), -- Gloves of the Great Horned Owl
(37942, 23, 50980, 0, 0, 1, 0, 0, 45745), -- Blizzard Keeper's Mitts
(37942, 22, 50979, 0, 0, 1, 0, 0, 45745), -- Logsplitters
(37942, 21, 50978, 0, 0, 1, 0, 0, 45745), -- Gauntlets of the Kraken
(37942, 20, 50977, 0, 0, 1, 0, 0, 45745), -- Gatecrasher's Gauntlets
(37942, 19, 50976, 0, 0, 1, 0, 0, 45745), -- Gauntlets of Overexposure
(37942, 18, 50975, 0, 0, 1, 0, 0, 45745), -- Ermine Coronation Robes
(37942, 17, 50974, 0, 0, 1, 0, 0, 45745), -- Meteor Chaser's Raiment
(37942, 16, 50973, 0, 0, 1, 0, 0, 45745), -- Vestments of Spruce and Fir
(37942, 15, 50972, 0, 0, 1, 0, 0, 45745), -- Shadow Seeker's Tunic
(37942, 14, 50971, 0, 0, 1, 0, 0, 45745), -- Mail of the Geyser
(37942, 13, 50970, 0, 0, 1, 0, 0, 45745), -- Longstrider's Vest
(37942, 12, 50969, 0, 0, 1, 0, 0, 45745), -- Chestplate of Unspoken Truths
(37942, 11, 50968, 0, 0, 1, 0, 0, 45745), -- Cataclysmic Chestguard
(37942, 10, 50965, 0, 0, 1, 0, 0, 45745), -- Castle Breaker's Battleplate
(37942, 9, 50470, 0, 0, 1, 0, 0, 45745), -- Recovered Scarlet Onslaught Cape
(37942, 8, 50469, 0, 0, 1, 0, 0, 45745), -- Volde's Cloak of the Night Sky
(37942, 7, 50468, 0, 0, 1, 0, 0, 45745), -- Drape of the Violet Tower
(37942, 6, 50467, 0, 0, 1, 0, 0, 45745), -- Might of the Ocean Serpent
(37942, 5, 50466, 0, 0, 1, 0, 0, 45745), -- Sentinel's Winter Cloak
(37942, 4, 50358, 0, 0, 1, 0, 0, 45745), -- Purified Lunar Dust
(37942, 3, 50357, 0, 0, 1, 0, 0, 45745), -- Maghia's Misguided Quill
(37942, 2, 50356, 0, 0, 1, 0, 0, 45745), -- Corroded Skeleton Key
(37942, 1, 50355, 0, 0, 1, 0, 0, 45745), -- Herkuml War Token
(33964, 115, 41970, 0, 0, 1, 0, 0, 45745), -- Deadly Gladiator's Silk Handguards
(33964, 99, 41964, 0, 0, 1, 0, 0, 45745), -- Deadly Gladiator's Silk Amice
(33964, 83, 41945, 0, 0, 1, 0, 0, 45745), -- Deadly Gladiator's Silk Cowl
(33964, 67, 41958, 0, 0, 1, 0, 0, 45745), -- Deadly Gladiator's Silk Trousers
(33964, 52, 41951, 0, 0, 1, 0, 0, 45745), -- Deadly Gladiator's Silk Raiment
(33964, 36, 45640, 0, 0, 1, 0, 0, 45745), -- Crown of the Wayward Vanquisher
(33964, 33, 45634, 0, 0, 1, 0, 0, 45745), -- Breastplate of the Wayward Vanquisher
(33964, 30, 45842, 0, 0, 1, 0, 0, 45745), -- Wyrmguard Legplates
(33964, 29, 45841, 0, 0, 1, 0, 0, 45745), -- Legplates of the Violet Champion
(33964, 28, 45843, 0, 0, 1, 0, 0, 45745), -- Legguards of the Peaceful Covenant
(33964, 27, 45845, 0, 0, 1, 0, 0, 45745), -- Leggings of the Weary Mystic
(33964, 26, 45844, 0, 0, 1, 0, 0, 45745), -- Leggings of the Tireless Sentry
(33964, 25, 45846, 0, 0, 1, 0, 0, 45745), -- Leggings of Wavering Shadow
(33964, 24, 45847, 0, 0, 1, 0, 0, 45745), -- Wildstrider Legguards
(33964, 23, 45848, 0, 0, 1, 0, 0, 45745), -- Legwraps of the Master Conjurer
(33964, 22, 45834, 0, 0, 1, 0, 0, 45745), -- Gauntlets of the Royal Watch
(33964, 21, 45833, 0, 0, 1, 0, 0, 45745), -- Bladebreaker Gauntlets
(33964, 20, 45835, 0, 0, 1, 0, 0, 45745), -- Gauntlets of Serene Blessing
(33964, 19, 45837, 0, 0, 1, 0, 0, 45745), -- Gloves of Augury
(33964, 18, 45836, 0, 0, 1, 0, 0, 45745), -- Gloves of Unerring Aim
(33964, 17, 45838, 0, 0, 1, 0, 0, 45745), -- Gloves of the Blind Stalker
(33964, 16, 45839, 0, 0, 1, 0, 0, 45745), -- Grips of the Secret Grove
(33964, 15, 45840, 0, 0, 1, 0, 0, 45745), -- Touch of the Occult
(33964, 14, 45825, 0, 0, 1, 0, 0, 45745), -- Shieldwarder Girdle
(33964, 13, 45824, 0, 0, 1, 0, 0, 45745), -- Belt of the Singing Blade
(33964, 12, 45826, 0, 0, 1, 0, 0, 45745), -- Girdle of Unyielding Trust
(33964, 11, 45828, 0, 0, 1, 0, 0, 45745), -- Windchill Binding
(33964, 10, 45827, 0, 0, 1, 0, 0, 45745), -- Belt of the Ardent Marksman
(33964, 9, 45829, 0, 0, 1, 0, 0, 45745), -- Belt of the Twilight Assassin
(33964, 8, 45830, 0, 0, 1, 0, 0, 45745), -- Belt of the Living Thicket
(33964, 7, 45831, 0, 0, 1, 0, 0, 45745), -- Sash of Potent Incantations
(33964, 6, 45821, 0, 0, 1, 0, 0, 45745), -- Shard of the Crystal Forest
(33964, 5, 45819, 0, 0, 1, 0, 0, 45745), -- Spiked Battleguard Choker
(33964, 4, 45820, 0, 0, 1, 0, 0, 45745), -- Broach of the Wailing Night
(33964, 3, 45823, 0, 0, 1, 0, 0, 45745), -- Frozen Tear of Elune
(33964, 2, 45822, 0, 0, 1, 0, 0, 45745), -- Evoker's Charm
(33964, 1, 45087, 0, 0, 1, 0, 0, 45745), -- Runed Orb
(31579, 37, 41963, 0, 0, 1, 0, 0, 45745), -- Hateful Gladiator's Silk Amice
(31579, 36, 41957, 0, 0, 1, 0, 0, 45745), -- Hateful Gladiator's Silk Trousers
(31579, 35, 41944, 0, 0, 1, 0, 0, 45745), -- Hateful Gladiator's Silk Cowl
(31579, 34, 41969, 0, 0, 1, 0, 0, 45745), -- Hateful Gladiator's Silk Handguards
(31579, 33, 41950, 0, 0, 1, 0, 0, 45745), -- Hateful Gladiator's Silk Raiment
(31579, 32, 40636, 0, 0, 1, 0, 0, 45745), -- Legplates of the Lost Vanquisher
(31579, 29, 40639, 0, 0, 1, 0, 0, 45745), -- Mantle of the Lost Vanquisher
(31579, 26, 40750, 0, 0, 1, 0, 0, 45745), -- Xintor's Expeditionary Boots
(31579, 25, 40747, 0, 0, 1, 0, 0, 45745), -- Treads of Coastal Wandering
(31579, 24, 40751, 0, 0, 1, 0, 0, 45745), -- Slippers of the Holy Light
(31579, 23, 40745, 0, 0, 1, 0, 0, 45745), -- Sabatons of Rapid Recovery
(31579, 22, 40749, 0, 0, 1, 0, 0, 45745), -- Rainey's Chewed Boots
(31579, 21, 40746, 0, 0, 1, 0, 0, 45745), -- Pack-Ice Striders
(31579, 20, 40743, 0, 0, 1, 0, 0, 45745), -- Kyzoc's Ground Stompers
(31579, 19, 40748, 0, 0, 1, 0, 0, 45745), -- Boots of Captain Ellis
(31579, 18, 40742, 0, 0, 1, 0, 0, 45745), -- Bladed Steelboots
(31579, 17, 40735, 0, 0, 1, 0, 0, 45745), -- Zartson's Jungle Vambraces
(31579, 16, 40738, 0, 0, 1, 0, 0, 45745), -- Wristwraps of the Cutthroat
(31579, 15, 40733, 0, 0, 1, 0, 0, 45745), -- Wristbands of the Sentinel Huntress
(31579, 14, 40740, 0, 0, 1, 0, 0, 45745), -- Wraps of the Astral Traveler
(31579, 13, 40737, 0, 0, 1, 0, 0, 45745), -- Pigmented Clan Bindings
(31579, 12, 40741, 0, 0, 1, 0, 0, 45745), -- Cuffs of the Shadow Ascendant
(31579, 11, 40734, 0, 0, 1, 0, 0, 45745), -- Bracers of Dalaran's Parapets
(31579, 10, 40739, 0, 0, 1, 0, 0, 45745), -- Bands of the Great Tree
(31579, 9, 40736, 0, 0, 1, 0, 0, 45745), -- Armguard of the Tower Archer
(31579, 8, 40722, 0, 0, 1, 0, 0, 45745), -- Platinum Mesh Cloak
(31579, 7, 40721, 0, 0, 1, 0, 0, 45745), -- Hammerhead Sharkskin Cloak
(31579, 6, 40723, 0, 0, 1, 0, 0, 45745), -- Disguise of the Kumiho
(31579, 5, 40724, 0, 0, 1, 0, 0, 45745), -- Cloak of Kea Feathers
(31579, 4, 40718, 0, 0, 1, 0, 0, 45745), -- Signet of the Impregnable Fortress
(31579, 3, 40717, 0, 0, 1, 0, 0, 45745), -- Ring of Invincibility
(31579, 2, 40720, 0, 0, 1, 0, 0, 45745), -- Renewal of Life
(31579, 1, 40719, 0, 0, 1, 0, 0, 45745), -- Band of Channeled Magic
(31580, 101, 41968, 0, 0, 1, 0, 0, 45745), -- Savage Gladiator's Silk Handguards
(31580, 85, 41962, 0, 0, 1, 0, 0, 45745), -- Savage Gladiator's Silk Amice
(31580, 69, 41943, 0, 0, 1, 0, 0, 45745), -- Savage Gladiator's Silk Cowl
(31580, 53, 41956, 0, 0, 1, 0, 0, 45745), -- Savage Gladiator's Silk Trousers
(31580, 41, 41949, 0, 0, 1, 0, 0, 45745), -- Savage Gladiator's Silk Raiment
(31580, 31, 40612, 0, 0, 1, 0, 0, 45745), -- Chestguard of the Lost Vanquisher
(31580, 28, 40615, 0, 0, 1, 0, 0, 45745), -- Gloves of the Lost Vanquisher
(31580, 25, 40702, 0, 0, 1, 0, 0, 45745), -- Rolfsen's Ripper
(31580, 24, 40704, 0, 0, 1, 0, 0, 45745), -- Pride
(31580, 23, 40703, 0, 0, 1, 0, 0, 45745), -- Grasscutter
(31580, 22, 40700, 0, 0, 1, 0, 0, 45745), -- Protective Barricade of the Light
(31580, 21, 40701, 0, 0, 1, 0, 0, 45745), -- Crygil's Discarded Plate Panel
(31580, 20, 40698, 0, 0, 1, 0, 0, 45745), -- Ward of the Violet Citadel
(31580, 19, 40699, 0, 0, 1, 0, 0, 45745), -- Handbook of Obscure Remedies
(31580, 18, 40689, 0, 0, 1, 0, 0, 45745), -- Waistguard of Living Iron
(31580, 17, 40695, 0, 0, 1, 0, 0, 45745), -- Vine Belt of the Woodland Dryad
(31580, 16, 40692, 0, 0, 1, 0, 0, 45745), -- Vereesa's Silver Chain Belt
(31580, 15, 40688, 0, 0, 1, 0, 0, 45745), -- Verdungo's Barbarian Cord
(31580, 14, 40696, 0, 0, 1, 0, 0, 45745), -- Plush Sash of Guzbah
(31580, 13, 40691, 0, 0, 1, 0, 0, 45745), -- Magroth's Meditative Cincture
(31580, 12, 40694, 0, 0, 1, 0, 0, 45745), -- Jorach's Crocolisk Skin Belt
(31580, 11, 40697, 0, 0, 1, 0, 0, 45745), -- Elegant Temple Gardens' Girdle
(31580, 10, 40693, 0, 0, 1, 0, 0, 45745), -- Beadwork Belt of Shamanic Vision
(31580, 9, 40683, 0, 0, 1, 0, 0, 45745), -- Valor Medal of the First War
(31580, 8, 40685, 0, 0, 1, 0, 0, 45745), -- The Egg of Mortal Essence
(31580, 7, 40682, 0, 0, 1, 0, 0, 45745), -- Sundial of the Exiled
(31580, 6, 40684, 0, 0, 1, 0, 0, 45745), -- Mirror of Truth
(31580, 5, 40678, 0, 0, 1, 0, 0, 45745), -- Pendant of the Outcast Hero
(31580, 4, 40681, 0, 0, 1, 0, 0, 45745), -- Lattice Choker of Light
(31580, 3, 40680, 0, 0, 1, 0, 0, 45745), -- Encircling Burnished Gold Chains
(31580, 2, 40679, 0, 0, 1, 0, 0, 45745), -- Chained Military Gorget
(31580, 1, 43102, 0, 0, 1, 0, 0, 45745); -- Frozen Orb

-- Update Horde Legacy Quartermaster in Dalaran-Northrend
DELETE FROM `npc_vendor` WHERE `entry` IN (35495, 33963, 31581, 37941, 31582);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `ExtendedCost`, `type`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`) VALUES
(35495, 104, 41921, 0, 0, 1, 0, 0, 45745), -- Furious Gladiator's Satin Robe
(35495, 103, 41934, 0, 0, 1, 0, 0, 45745), -- Furious Gladiator's Satin Mantle
(35495, 102, 41927, 0, 0, 1, 0, 0, 45745), -- Furious Gladiator's Satin Leggings
(35495, 101, 41915, 0, 0, 1, 0, 0, 45745), -- Furious Gladiator's Satin Hood
(35495, 100, 41940, 0, 0, 1, 0, 0, 45745), -- Furious Gladiator's Satin Gloves
(35495, 99, 41859, 0, 0, 1, 0, 0, 45745), -- Furious Gladiator's Mooncloth Robe
(35495, 98, 41869, 0, 0, 1, 0, 0, 45745), -- Furious Gladiator's Mooncloth Mantle
(35495, 97, 41864, 0, 0, 1, 0, 0, 45745), -- Furious Gladiator's Mooncloth Leggings
(35495, 96, 41854, 0, 0, 1, 0, 0, 45745), -- Furious Gladiator's Mooncloth Hood
(35495, 95, 41874, 0, 0, 1, 0, 0, 45745), -- Furious Gladiator's Mooncloth Gloves
(35495, 29, 47735, 0, 0, 1, 0, 0, 45745), -- Glyph of Indomitability
(35495, 28, 47734, 0, 0, 1, 0, 0, 45745), -- Mark of Supremacy
(35495, 27, 48724, 0, 0, 1, 0, 0, 45745), -- Talisman of Resurgence
(35495, 26, 48722, 0, 0, 1, 0, 0, 45745), -- Shard of the Crystal Heart
(35495, 25, 47731, 0, 0, 1, 0, 0, 45745), -- Clutch of Fortification
(35495, 24, 47729, 0, 0, 1, 0, 0, 45745), -- Bloodshed Band
(35495, 23, 47730, 0, 0, 1, 0, 0, 45745), -- Dexterous Brightstone Ring
(35495, 22, 47733, 0, 0, 1, 0, 0, 45745), -- Heartmender Circle
(35495, 21, 47732, 0, 0, 1, 0, 0, 45745), -- Band of the Invoker
(35495, 20, 47706, 0, 0, 1, 0, 0, 45745), -- Shoulders of the Groundbreaker
(35495, 19, 47709, 0, 0, 1, 0, 0, 45745), -- Duskstalker Pauldrons
(35495, 18, 47716, 0, 0, 1, 0, 0, 45745), -- Mantle of Revered Mortality
(35495, 17, 47699, 0, 0, 1, 0, 0, 45745), -- Shoulderguards of Enduring Order
(35495, 16, 47696, 0, 0, 1, 0, 0, 45745), -- Shoulderplates of Trembling Rage
(35495, 15, 47701, 0, 0, 1, 0, 0, 45745), -- Shoulderplates of the Cavalier
(35495, 14, 47705, 0, 0, 1, 0, 0, 45745), -- Pauldrons of the Devourer
(35495, 13, 47710, 0, 0, 1, 0, 0, 45745), -- Epaulets of the Fateful Accord
(35495, 12, 47714, 0, 0, 1, 0, 0, 45745), -- Pauldrons of Catastrophic Emanation
(35495, 11, 47687, 0, 0, 1, 0, 0, 45745), -- Headguard of Inner Warmth
(35495, 10, 47688, 0, 0, 1, 0, 0, 45745), -- Mask of Lethal Intent
(35495, 9, 47695, 0, 0, 1, 0, 0, 45745), -- Hood of Clouded Sight
(35495, 8, 47678, 0, 0, 1, 0, 0, 45745), -- Headplate of the Honorbound
(35495, 7, 47675, 0, 0, 1, 0, 0, 45745), -- Faceplate of Thunderous Rampage
(35495, 6, 47682, 0, 0, 1, 0, 0, 45745), -- Helm of the Restless Watch
(35495, 5, 47684, 0, 0, 1, 0, 0, 45745), -- Coif of the Brooding Dragon
(35495, 4, 47691, 0, 0, 1, 0, 0, 45745), -- Mask of Abundant Growth
(35495, 3, 47692, 0, 0, 1, 0, 0, 45745), -- Hood of Smoldering Aftermath
(35495, 2, 47658, 0, 0, 1, 0, 0, 45745), -- Brimstone Igniter
(35495, 1, 47556, 0, 0, 1, 0, 0, 45745), -- Crusader Orb
(33963, 113, 41939, 0, 0, 1, 0, 0, 45745), -- Deadly Gladiator's Satin Gloves
(33963, 109, 41873, 0, 0, 1, 0, 0, 45745), -- Deadly Gladiator's Mooncloth Gloves
(33963, 97, 41933, 0, 0, 1, 0, 0, 45745), -- Deadly Gladiator's Satin Mantle
(33963, 93, 41868, 0, 0, 1, 0, 0, 45745), -- Deadly Gladiator's Mooncloth Mantle
(33963, 81, 41914, 0, 0, 1, 0, 0, 45745), -- Deadly Gladiator's Satin Hood
(33963, 77, 41853, 0, 0, 1, 0, 0, 45745), -- Deadly Gladiator's Mooncloth Hood
(33963, 65, 41926, 0, 0, 1, 0, 0, 45745), -- Deadly Gladiator's Satin Leggings
(33963, 61, 41863, 0, 0, 1, 0, 0, 45745), -- Deadly Gladiator's Mooncloth Leggings
(33963, 51, 41920, 0, 0, 1, 0, 0, 45745), -- Deadly Gladiator's Satin Robe
(33963, 50, 41858, 0, 0, 1, 0, 0, 45745), -- Deadly Gladiator's Mooncloth Robe
(33963, 34, 45638, 0, 0, 1, 0, 0, 45745), -- Crown of the Wayward Conqueror
(33963, 31, 45632, 0, 0, 1, 0, 0, 45745), -- Breastplate of the Wayward Conqueror
(33963, 30, 45842, 0, 0, 1, 0, 0, 45745), -- Wyrmguard Legplates
(33963, 29, 45841, 0, 0, 1, 0, 0, 45745), -- Legplates of the Violet Champion
(33963, 28, 45843, 0, 0, 1, 0, 0, 45745), -- Legguards of the Peaceful Covenant
(33963, 27, 45845, 0, 0, 1, 0, 0, 45745), -- Leggings of the Weary Mystic
(33963, 26, 45844, 0, 0, 1, 0, 0, 45745), -- Leggings of the Tireless Sentry
(33963, 25, 45846, 0, 0, 1, 0, 0, 45745), -- Leggings of Wavering Shadow
(33963, 24, 45847, 0, 0, 1, 0, 0, 45745), -- Wildstrider Legguards
(33963, 23, 45848, 0, 0, 1, 0, 0, 45745), -- Legwraps of the Master Conjurer
(33963, 22, 45834, 0, 0, 1, 0, 0, 45745), -- Gauntlets of the Royal Watch
(33963, 21, 45833, 0, 0, 1, 0, 0, 45745), -- Bladebreaker Gauntlets
(33963, 20, 45835, 0, 0, 1, 0, 0, 45745), -- Gauntlets of Serene Blessing
(33963, 19, 45837, 0, 0, 1, 0, 0, 45745), -- Gloves of Augury
(33963, 18, 45836, 0, 0, 1, 0, 0, 45745), -- Gloves of Unerring Aim
(33963, 17, 45838, 0, 0, 1, 0, 0, 45745), -- Gloves of the Blind Stalker
(33963, 16, 45839, 0, 0, 1, 0, 0, 45745), -- Grips of the Secret Grove
(33963, 15, 45840, 0, 0, 1, 0, 0, 45745), -- Touch of the Occult
(33963, 14, 45825, 0, 0, 1, 0, 0, 45745), -- Shieldwarder Girdle
(33963, 13, 45824, 0, 0, 1, 0, 0, 45745), -- Belt of the Singing Blade
(33963, 12, 45826, 0, 0, 1, 0, 0, 45745), -- Girdle of Unyielding Trust
(33963, 11, 45828, 0, 0, 1, 0, 0, 45745), -- Windchill Binding
(33963, 10, 45827, 0, 0, 1, 0, 0, 45745), -- Belt of the Ardent Marksman
(33963, 9, 45829, 0, 0, 1, 0, 0, 45745), -- Belt of the Twilight Assassin
(33963, 8, 45830, 0, 0, 1, 0, 0, 45745), -- Belt of the Living Thicket
(33963, 7, 45831, 0, 0, 1, 0, 0, 45745), -- Sash of Potent Incantations
(33963, 6, 45821, 0, 0, 1, 0, 0, 45745), -- Shard of the Crystal Forest
(33963, 5, 45819, 0, 0, 1, 0, 0, 45745), -- Spiked Battleguard Choker
(33963, 4, 45820, 0, 0, 1, 0, 0, 45745), -- Broach of the Wailing Night
(33963, 3, 45823, 0, 0, 1, 0, 0, 45745), -- Frozen Tear of Elune
(33963, 2, 45822, 0, 0, 1, 0, 0, 45745), -- Evoker's Charm
(33963, 1, 45087, 0, 0, 1, 0, 0, 45745), -- Runed Orb
(31581, 47, 41931, 0, 0, 1, 0, 0, 45745), -- Hateful Gladiator's Satin Mantle
(31581, 46, 41925, 0, 0, 1, 0, 0, 45745), -- Hateful Gladiator's Satin Leggings
(31581, 45, 41913, 0, 0, 1, 0, 0, 45745), -- Hateful Gladiator's Satin Hood
(31581, 44, 41938, 0, 0, 1, 0, 0, 45745), -- Hateful Gladiator's Satin Gloves
(31581, 43, 41919, 0, 0, 1, 0, 0, 45745), -- Hateful Gladiator's Satin Robe
(31581, 42, 41867, 0, 0, 1, 0, 0, 45745), -- Hateful Gladiator's Mooncloth Mantle
(31581, 41, 41862, 0, 0, 1, 0, 0, 45745), -- Hateful Gladiator's Mooncloth Leggings
(31581, 40, 41852, 0, 0, 1, 0, 0, 45745), -- Hateful Gladiator's Mooncloth Hood
(31581, 39, 41872, 0, 0, 1, 0, 0, 45745), -- Hateful Gladiator's Mooncloth Gloves
(31581, 38, 41857, 0, 0, 1, 0, 0, 45745), -- Hateful Gladiator's Mooncloth Robe
(31581, 30, 40634, 0, 0, 1, 0, 0, 45745), -- Legplates of the Lost Conqueror
(31581, 27, 40637, 0, 0, 1, 0, 0, 45745), -- Mantle of the Lost Conqueror
(31581, 26, 40750, 0, 0, 1, 0, 0, 45745), -- Xintor's Expeditionary Boots
(31581, 25, 40747, 0, 0, 1, 0, 0, 45745), -- Treads of Coastal Wandering
(31581, 24, 40751, 0, 0, 1, 0, 0, 45745), -- Slippers of the Holy Light
(31581, 23, 40745, 0, 0, 1, 0, 0, 45745), -- Sabatons of Rapid Recovery
(31581, 22, 40749, 0, 0, 1, 0, 0, 45745), -- Rainey's Chewed Boots
(31581, 21, 40746, 0, 0, 1, 0, 0, 45745), -- Pack-Ice Striders
(31581, 20, 40743, 0, 0, 1, 0, 0, 45745), -- Kyzoc's Ground Stompers
(31581, 19, 40748, 0, 0, 1, 0, 0, 45745), -- Boots of Captain Ellis
(31581, 18, 40742, 0, 0, 1, 0, 0, 45745), -- Bladed Steelboots
(31581, 17, 40735, 0, 0, 1, 0, 0, 45745), -- Zartson's Jungle Vambraces
(31581, 16, 40738, 0, 0, 1, 0, 0, 45745), -- Wristwraps of the Cutthroat
(31581, 15, 40733, 0, 0, 1, 0, 0, 45745), -- Wristbands of the Sentinel Huntress
(31581, 14, 40740, 0, 0, 1, 0, 0, 45745), -- Wraps of the Astral Traveler
(31581, 13, 40737, 0, 0, 1, 0, 0, 45745), -- Pigmented Clan Bindings
(31581, 12, 40741, 0, 0, 1, 0, 0, 45745), -- Cuffs of the Shadow Ascendant
(31581, 11, 40734, 0, 0, 1, 0, 0, 45745), -- Bracers of Dalaran's Parapets
(31581, 10, 40739, 0, 0, 1, 0, 0, 45745), -- Bands of the Great Tree
(31581, 9, 40736, 0, 0, 1, 0, 0, 45745), -- Armguard of the Tower Archer
(31581, 8, 40722, 0, 0, 1, 0, 0, 45745), -- Platinum Mesh Cloak
(31581, 7, 40721, 0, 0, 1, 0, 0, 45745), -- Hammerhead Sharkskin Cloak
(31581, 6, 40723, 0, 0, 1, 0, 0, 45745), -- Disguise of the Kumiho
(31581, 5, 40724, 0, 0, 1, 0, 0, 45745), -- Cloak of Kea Feathers
(31581, 4, 40718, 0, 0, 1, 0, 0, 45745), -- Signet of the Impregnable Fortress
(31581, 3, 40717, 0, 0, 1, 0, 0, 45745), -- Ring of Invincibility
(31581, 2, 40720, 0, 0, 1, 0, 0, 45745), -- Renewal of Life
(31581, 1, 40719, 0, 0, 1, 0, 0, 45745), -- Band of Channeled Magic
(37941, 112, 41935, 0, 0, 1, 0, 0, 45745), -- Relentless Gladiator's Satin Mantle
(37941, 111, 41928, 0, 0, 1, 0, 0, 45745), -- Relentless Gladiator's Satin Leggings
(37941, 110, 41916, 0, 0, 1, 0, 0, 45745), -- Relentless Gladiator's Satin Hood
(37941, 109, 41941, 0, 0, 1, 0, 0, 45745), -- Relentless Gladiator's Satin Gloves
(37941, 108, 41922, 0, 0, 1, 0, 0, 45745), -- Relentless Gladiator's Satin Robe
(37941, 107, 41870, 0, 0, 1, 0, 0, 45745), -- Relentless Gladiator's Mooncloth Mantle
(37941, 106, 41865, 0, 0, 1, 0, 0, 45745), -- Relentless Gladiator's Mooncloth Leggings
(37941, 105, 41855, 0, 0, 1, 0, 0, 45745), -- Relentless Gladiator's Mooncloth Hood
(37941, 104, 41875, 0, 0, 1, 0, 0, 45745), -- Relentless Gladiator's Mooncloth Gloves
(37941, 103, 41860, 0, 0, 1, 0, 0, 45745), -- Relentless Gladiator's Mooncloth Robe
(37941, 37, 49908, 0, 0, 1, 0, 0, 45745), -- Primordial Saronite
(37941, 36, 50997, 0, 0, 1, 0, 0, 45745), -- Circle of Ossus
(37941, 35, 50996, 0, 0, 1, 0, 0, 45745), -- Belt of Omission
(37941, 34, 50995, 0, 0, 1, 0, 0, 45745), -- Vengeful Noose
(37941, 33, 50994, 0, 0, 1, 0, 0, 45745), -- Belt of Petrified Ivy
(37941, 32, 50993, 0, 0, 1, 0, 0, 45745), -- Band of the Night Raven
(37941, 31, 50992, 0, 0, 1, 0, 0, 45745), -- Waistband of Despair
(37941, 30, 50991, 0, 0, 1, 0, 0, 45745), -- Verdigris Chain Belt
(37941, 29, 50989, 0, 0, 1, 0, 0, 45745), -- Lich Killer's Lanyard
(37941, 28, 50987, 0, 0, 1, 0, 0, 45745), -- Malevolent Girdle
(37941, 27, 50984, 0, 0, 1, 0, 0, 45745), -- Gloves of Ambivalence
(37941, 26, 50983, 0, 0, 1, 0, 0, 45745), -- Gloves of False Gestures
(37941, 25, 50982, 0, 0, 1, 0, 0, 45745), -- Cat Burglar's Grips
(37941, 24, 50981, 0, 0, 1, 0, 0, 45745), -- Gloves of the Great Horned Owl
(37941, 23, 50980, 0, 0, 1, 0, 0, 45745), -- Blizzard Keeper's Mitts
(37941, 22, 50979, 0, 0, 1, 0, 0, 45745), -- Logsplitters
(37941, 21, 50978, 0, 0, 1, 0, 0, 45745), -- Gauntlets of the Kraken
(37941, 20, 50977, 0, 0, 1, 0, 0, 45745), -- Gatecrasher's Gauntlets
(37941, 19, 50976, 0, 0, 1, 0, 0, 45745), -- Gauntlets of Overexposure
(37941, 18, 50975, 0, 0, 1, 0, 0, 45745), -- Ermine Coronation Robes
(37941, 17, 50974, 0, 0, 1, 0, 0, 45745), -- Meteor Chaser's Raiment
(37941, 16, 50973, 0, 0, 1, 0, 0, 45745), -- Vestments of Spruce and Fir
(37941, 15, 50972, 0, 0, 1, 0, 0, 45745), -- Shadow Seeker's Tunic
(37941, 14, 50971, 0, 0, 1, 0, 0, 45745), -- Mail of the Geyser
(37941, 13, 50970, 0, 0, 1, 0, 0, 45745), -- Longstrider's Vest
(37941, 12, 50969, 0, 0, 1, 0, 0, 45745), -- Chestplate of Unspoken Truths
(37941, 11, 50968, 0, 0, 1, 0, 0, 45745), -- Cataclysmic Chestguard
(37941, 10, 50965, 0, 0, 1, 0, 0, 45745), -- Castle Breaker's Battleplate
(37941, 9, 50470, 0, 0, 1, 0, 0, 45745), -- Recovered Scarlet Onslaught Cape
(37941, 8, 50469, 0, 0, 1, 0, 0, 45745), -- Volde's Cloak of the Night Sky
(37941, 7, 50468, 0, 0, 1, 0, 0, 45745), -- Drape of the Violet Tower
(37941, 6, 50467, 0, 0, 1, 0, 0, 45745), -- Might of the Ocean Serpent
(37941, 5, 50466, 0, 0, 1, 0, 0, 45745), -- Sentinel's Winter Cloak
(37941, 4, 50358, 0, 0, 1, 0, 0, 45745), -- Purified Lunar Dust
(37941, 3, 50357, 0, 0, 1, 0, 0, 45745), -- Maghia's Misguided Quill
(37941, 2, 50356, 0, 0, 1, 0, 0, 45745), -- Corroded Skeleton Key
(37941, 1, 50355, 0, 0, 1, 0, 0, 45745), -- Herkuml War Token
(31582, 105, 41937, 0, 0, 1, 0, 0, 45745), -- Savage Gladiator's Satin Gloves
(31582, 104, 41847, 0, 0, 1, 0, 0, 45745), -- Savage Gladiator's Mooncloth Gloves
(31582, 89, 41930, 0, 0, 1, 0, 0, 45745), -- Savage Gladiator's Satin Mantle
(31582, 88, 41850, 0, 0, 1, 0, 0, 45745), -- Savage Gladiator's Mooncloth Mantle
(31582, 73, 41912, 0, 0, 1, 0, 0, 45745), -- Savage Gladiator's Satin Hood
(31582, 72, 41848, 0, 0, 1, 0, 0, 45745), -- Savage Gladiator's Mooncloth Hood
(31582, 57, 41924, 0, 0, 1, 0, 0, 45745), -- Savage Gladiator's Satin Leggings
(31582, 56, 41849, 0, 0, 1, 0, 0, 45745), -- Savage Gladiator's Mooncloth Leggings
(31582, 43, 41918, 0, 0, 1, 0, 0, 45745), -- Savage Gladiator's Satin Robe
(31582, 42, 41851, 0, 0, 1, 0, 0, 45745), -- Savage Gladiator's Mooncloth Robe
(31582, 29, 40610, 0, 0, 1, 0, 0, 45745), -- Chestguard of the Lost Conqueror
(31582, 26, 40613, 0, 0, 1, 0, 0, 45745), -- Gloves of the Lost Conqueror
(31582, 25, 40702, 0, 0, 1, 0, 0, 45745), -- Rolfsen's Ripper
(31582, 24, 40704, 0, 0, 1, 0, 0, 45745), -- Pride
(31582, 23, 40703, 0, 0, 1, 0, 0, 45745), -- Grasscutter
(31582, 22, 40700, 0, 0, 1, 0, 0, 45745), -- Protective Barricade of the Light
(31582, 21, 40701, 0, 0, 1, 0, 0, 45745), -- Crygil's Discarded Plate Panel
(31582, 20, 40698, 0, 0, 1, 0, 0, 45745), -- Ward of the Violet Citadel
(31582, 19, 40699, 0, 0, 1, 0, 0, 45745), -- Handbook of Obscure Remedies
(31582, 18, 40689, 0, 0, 1, 0, 0, 45745), -- Waistguard of Living Iron
(31582, 17, 40695, 0, 0, 1, 0, 0, 45745), -- Vine Belt of the Woodland Dryad
(31582, 16, 40692, 0, 0, 1, 0, 0, 45745), -- Vereesa's Silver Chain Belt
(31582, 15, 40688, 0, 0, 1, 0, 0, 45745), -- Verdungo's Barbarian Cord
(31582, 14, 40696, 0, 0, 1, 0, 0, 45745), -- Plush Sash of Guzbah
(31582, 13, 40691, 0, 0, 1, 0, 0, 45745), -- Magroth's Meditative Cincture
(31582, 12, 40694, 0, 0, 1, 0, 0, 45745), -- Jorach's Crocolisk Skin Belt
(31582, 11, 40697, 0, 0, 1, 0, 0, 45745), -- Elegant Temple Gardens' Girdle
(31582, 10, 40693, 0, 0, 1, 0, 0, 45745), -- Beadwork Belt of Shamanic Vision
(31582, 9, 40683, 0, 0, 1, 0, 0, 45745), -- Valor Medal of the First War
(31582, 8, 40685, 0, 0, 1, 0, 0, 45745), -- The Egg of Mortal Essence
(31582, 7, 40682, 0, 0, 1, 0, 0, 45745), -- Sundial of the Exiled
(31582, 6, 40684, 0, 0, 1, 0, 0, 45745), -- Mirror of Truth
(31582, 5, 40678, 0, 0, 1, 0, 0, 45745), -- Pendant of the Outcast Hero
(31582, 4, 40681, 0, 0, 1, 0, 0, 45745), -- Lattice Choker of Light
(31582, 3, 40680, 0, 0, 1, 0, 0, 45745), -- Encircling Burnished Gold Chains
(31582, 2, 40679, 0, 0, 1, 0, 0, 45745), -- Chained Military Gorget
(31582, 1, 43102, 0, 0, 1, 0, 0, 45745); -- Frozen Orb

DELETE FROM `creature_equip_template` WHERE (`ID`=3 AND `CreatureID` IN (114246,5515)) OR (`ID`=5 AND `CreatureID`=1976);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `AppearanceModID1`, `ItemVisual1`, `ItemID2`, `AppearanceModID2`, `ItemVisual2`, `ItemID3`, `AppearanceModID3`, `ItemVisual3`, `VerifiedBuild`) VALUES
(114246, 3, 118563, 0, 0, 0, 0, 0, 0, 0, 0, 45745), -- Karl Wogksch
(5515, 3, 2703, 0, 0, 0, 0, 0, 0, 0, 0, 45745), -- Einris Brightspear
(1976, 5, 2715, 0, 0, 143, 0, 0, 2551, 0, 0, 45745); -- Stormwind City Patroller


UPDATE `creature_equip_template` SET `VerifiedBuild`=45745 WHERE (`ID`=1 AND `CreatureID` IN (36674,29712,7295,5505,51348,68,5504,42421,1348,113211,133433,54443,68980,57800,54442,14423,188678,338,1316,46180,5493,11068,5494,1312,1431,1301,1298,1297,4974,162935,1275,1257,482,483,1432,4981,49877,12481,12480,49748,1285,1976,112912,35477,1303,61836,61834,3518,1289,1287,1302,14438,11096,1367,1366,1292,1321,44583,61838,87501,61837,1477,1339,1478,1319,1371,1370,1368,1756,61841,58167,5516,5517,55684,54218,54217,54216,656,5384,14439,1472,144133,5514,5513,7798,5511,5413,29725,144135,957,5510,5512,43034,20407,144134,44236,7232,6579,43840,45306,5509,1416,5519,5518,11026,44395,88067,133441,133675,133369,157997)) OR (`ID`=2 AND `CreatureID` IN (68,18927)) OR (`ID`=3 AND `CreatureID` IN (18927,1976));


UPDATE `conversation_actors` SET `VerifiedBuild`=45745 WHERE (`ConversationId`=14278 AND `Idx`=0); -- Full: 0x203B000000A31E00000AB90000337D54 Creature/0 R3776/S2745 Map: 0 (Eastern Kingdoms) Entry: 167032 (Chromie) Low: 3374420


UPDATE `conversation_line_template` SET `VerifiedBuild`=45745 WHERE `Id`=35744;


UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=14278;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=14278;

DELETE FROM `playercreateinfo_action` WHERE (`race`=37 AND `class`=8 AND `button`=131) OR (`race`=37 AND `class`=8 AND `button`=128) OR (`race`=37 AND `class`=8 AND `button`=127) OR (`race`=37 AND `class`=8 AND `button`=121) OR (`race`=37 AND `class`=8 AND `button`=120) OR (`race`=37 AND `class`=8 AND `button`=119) OR (`race`=37 AND `class`=8 AND `button`=117) OR (`race`=37 AND `class`=8 AND `button`=116) OR (`race`=37 AND `class`=8 AND `button`=115) OR (`race`=37 AND `class`=8 AND `button`=114) OR (`race`=37 AND `class`=8 AND `button`=113) OR (`race`=37 AND `class`=8 AND `button`=111) OR (`race`=37 AND `class`=8 AND `button`=110) OR (`race`=37 AND `class`=8 AND `button`=109) OR (`race`=37 AND `class`=8 AND `button`=108) OR (`race`=37 AND `class`=8 AND `button`=107) OR (`race`=37 AND `class`=8 AND `button`=97) OR (`race`=37 AND `class`=8 AND `button`=90) OR (`race`=37 AND `class`=8 AND `button`=89) OR (`race`=37 AND `class`=8 AND `button`=87) OR (`race`=37 AND `class`=8 AND `button`=86) OR (`race`=37 AND `class`=8 AND `button`=85) OR (`race`=37 AND `class`=8 AND `button`=84) OR (`race`=37 AND `class`=8 AND `button`=83) OR (`race`=37 AND `class`=8 AND `button`=80) OR (`race`=37 AND `class`=8 AND `button`=79) OR (`race`=37 AND `class`=8 AND `button`=72) OR (`race`=37 AND `class`=8 AND `button`=71) OR (`race`=37 AND `class`=8 AND `button`=69) OR (`race`=37 AND `class`=8 AND `button`=68) OR (`race`=37 AND `class`=8 AND `button`=67) OR (`race`=37 AND `class`=8 AND `button`=66) OR (`race`=37 AND `class`=8 AND `button`=65) OR (`race`=37 AND `class`=8 AND `button`=64) OR (`race`=37 AND `class`=8 AND `button`=57) OR (`race`=37 AND `class`=8 AND `button`=55) OR (`race`=37 AND `class`=8 AND `button`=52) OR (`race`=37 AND `class`=8 AND `button`=34) OR (`race`=37 AND `class`=8 AND `button`=32) OR (`race`=37 AND `class`=8 AND `button`=31) OR (`race`=37 AND `class`=8 AND `button`=29) OR (`race`=37 AND `class`=8 AND `button`=28) OR (`race`=37 AND `class`=8 AND `button`=27) OR (`race`=37 AND `class`=8 AND `button`=22) OR (`race`=37 AND `class`=8 AND `button`=19) OR (`race`=37 AND `class`=8 AND `button`=15);
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES
(37, 8, 131, 77934112, 0), -- 77934112
(37, 8, 128, 1449, 0), -- Arcane Explosion
(37, 8, 127, 62, 0), -- 62
(37, 8, 121, 497, 0), -- 497
(37, 8, 120, 134146049, 0), -- 134146049
(37, 8, 119, 102274107, 0), -- 102274107
(37, 8, 117, 1449, 0), -- Arcane Explosion
(37, 8, 116, 8, 0), -- 8
(37, 8, 115, 5, 0), -- Death Touch
(37, 8, 114, 16, 0), -- 16
(37, 8, 113, 128426464, 0), -- 128426464
(37, 8, 111, 128426464, 0), -- 128426464
(37, 8, 110, 1488, 0), -- 1488
(37, 8, 109, 100592617, 0), -- 100592617
(37, 8, 108, 2228569, 0), -- 2228569
(37, 8, 107, 1701277281, 0), -- 1701277281
(37, 8, 97, 98411357, 0), -- 98411357
(37, 8, 90, 135981915, 0), -- 135981915
(37, 8, 89, 93753793, 0), -- 93753793
(37, 8, 87, 135981915, 0), -- 135981915
(37, 8, 86, 64, 0), -- 64
(37, 8, 85, 4294967290, 0), -- -6
(37, 8, 84, 135981915, 0), -- 135981915
(37, 8, 83, 48, 0), -- 48
(37, 8, 80, 38, 0), -- 38
(37, 8, 79, 98410236, 0), -- 98410236
(37, 8, 72, 2085127104, 0), -- 2085127104
(37, 8, 71, 93753793, 0), -- 93753793
(37, 8, 69, 135981915, 0), -- 135981915
(37, 8, 68, 112, 0), -- Reflect Magic (TEST)
(37, 8, 67, 4294967290, 0), -- -6
(37, 8, 66, 135981915, 0), -- 135981915
(37, 8, 65, 96, 0), -- Dismember
(37, 8, 64, 132, 0), -- 132
(37, 8, 57, 94341335, 0), -- 94341335
(37, 8, 55, 98408690, 0), -- 98408690
(37, 8, 52, 584, 0), -- 584
(37, 8, 34, 33, 0), -- Teleport Westfall
(37, 8, 32, 155325040, 0), -- 155325040
(37, 8, 31, 98417922, 0), -- 98417922
(37, 8, 29, 98417152, 0), -- 98417152
(37, 8, 28, 22, 0), -- 22
(37, 8, 27, 19, 0), -- 19
(37, 8, 22, 156097528, 0), -- 156097528
(37, 8, 19, 5, 0), -- Death Touch
(37, 8, 15, 78622657, 0); -- 78622657



UPDATE `playercreateinfo_action` SET `action`=190336 WHERE (`race`=37 AND `class`=8 AND `button`=10); -- Conjure Refreshment
UPDATE `playercreateinfo_action` SET `action`=95703538 WHERE (`race`=37 AND `class`=8 AND `button`=9); -- 95703538
UPDATE `playercreateinfo_action` SET `action`=93702438 WHERE (`race`=37 AND `class`=8 AND `button`=5); -- 93702438
UPDATE `playercreateinfo_action` SET `action`=78235314 WHERE (`race`=37 AND `class`=8 AND `button`=3); -- 78235314
UPDATE `playercreateinfo_action` SET `action`=5 WHERE (`race`=37 AND `class`=8 AND `button`=0); -- Death Touch

UPDATE `playercreateinfo` SET `orientation`=0 WHERE (`race`=37 AND `class`=8) OR (`race`=8 AND `class`=11);



UPDATE `quest_offer_reward` SET `RewardText`='Ah, there you are, $n! We\'ve been inspecting--err--expecting you!', `VerifiedBuild`=45745 WHERE `ID`=58146; -- For the Alliance


UPDATE `quest_poi` SET `VerifiedBuild`=45745 WHERE (`QuestID`=28709 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=28709 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=28709 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=60096 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=60096 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=58147 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=58147 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58147 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=58146 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=58146 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=58146 AND `BlobIndex`=0 AND `Idx1`=0);

UPDATE `quest_poi_points` SET `VerifiedBuild`=45745 WHERE (`QuestID`=28709 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=28709 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=28709 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=60096 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=60096 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=58147 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=58147 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58147 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=58146 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=58146 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=58146 AND `Idx1`=0 AND `Idx2`=0);


UPDATE `quest_details` SET `VerifiedBuild`=45745 WHERE `ID` IN (28709, 60096, 58147, 58146);

DELETE FROM `creature_queststarter` WHERE (`id`=133362 AND `quest`=58147);
INSERT INTO `creature_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(133362, 58147, 45745); -- Stranger in a Strange Land offered Ambassador Moorgard

UPDATE `creature_queststarter` SET `VerifiedBuild`=45745 WHERE (`id`=159587 AND `quest`=58146);

DELETE FROM `creature_questender` WHERE (`id`=133362 AND `quest`=58146);
INSERT INTO `creature_questender` (`id`, `quest`, `VerifiedBuild`) VALUES
(133362, 58146, 45745); -- For the Alliance ended by Ambassador Moorgard


UPDATE `spell_target_position` SET `VerifiedBuild`=45745 WHERE (`ID`=312593 AND `EffectIndex`=0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (188678 /*188678 (Worker)*/, 188342 /*188342 (Onnesa)*/, 188151 /*188151 (Worker) - Drinking*/, 188523 /*188523 (Worker) - Drinking*/, 188521 /*188521 (Worker) - Drinking*/);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(188678, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 188678 (Worker)
(188342, 0, 0, 0, 1, 0, 0, 0, 0, 0, ''), -- 188342 (Onnesa)
(188151, 0, 0, 0, 1, 0, 0, 0, 0, 0, '299248'), -- 188151 (Worker) - Drinking
(188523, 0, 0, 0, 1, 0, 0, 0, 0, 0, '299248'), -- 188523 (Worker) - Drinking
(188521, 0, 0, 0, 1, 0, 0, 0, 0, 0, '299248'); -- 188521 (Worker) - Drinking



UPDATE `creature_template_addon` SET `aiAnimKit`=1320 WHERE `entry`=114246; -- 114246 (Karl Wogksch)
UPDATE `creature_template_addon` SET `emote`=0 WHERE `entry`=83878; -- 83878 (Jennica Holzman) - Jennica Visual
UPDATE `creature_template_addon` SET `auras`='221508 18950' WHERE `entry`=14423; -- 14423 (Officer Jaxon) - The Imposter: Stormwind City Guard Stealth Detection Circle, Invisibility and Stealth Detection
UPDATE `creature_template_addon` SET `visibilityDistanceType`=3 WHERE `entry`=52361; -- 52361 (Toy Cart Bunny) - Ride Vehicle Hardcoded, Toy Cart Contents, Freeze Anim
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=162935; -- 162935 (Stormwind City Guard)
UPDATE `creature_template_addon` SET `auras`='60913' WHERE `entry`=1295; -- 1295 (Lara Moore) - [DND] Dalaran - Shop Keeper Greeting
UPDATE `creature_template_addon` SET `auras`='60913' WHERE `entry`=1287; -- 1287 (Marda Weller) - [DND] Dalaran - Shop Keeper Greeting
UPDATE `creature_template_addon` SET `auras`='96573 96577' WHERE `entry`=7386; -- 7386 (White Kitten) - Pet Sit or Sleep, Sleepy Pet (No Zs)
UPDATE `creature_template_addon` SET `bytes2`=257 WHERE `entry`=5515; -- 5515 (Einris Brightspear)
UPDATE `creature_template_addon` SET `bytes1`=0 WHERE `entry`=44392; -- 44392 (Muzzle)
UPDATE `creature_template_addon` SET `auras`='65511 33209 33207 33208' WHERE `entry`=18927; -- 18927 (Human Commoner) - Gossip NPC Appearance - Brewfest, Gossip NPC Periodic - Despawn, Gossip NPC Periodic - Fidget, Gossip NPC Periodic - Talk
UPDATE `creature_template_addon` SET `bytes2`=256 WHERE `entry`=133441; -- 133441 (Trained Brightlance)
UPDATE `creature_template_addon` SET `bytes1`=8 WHERE `entry`=143711; -- 143711 (Nicanor Ward)
UPDATE `creature_template_addon` SET `aiAnimKit`=0 WHERE `entry`=133675; -- 133675 (Peasant Worker)
UPDATE `creature_template_addon` SET `visibilityDistanceType`=4 WHERE `entry`=160273; -- 160273 (Projection)


UPDATE `creature_template_scaling` SET `VerifiedBuild`=45745 WHERE (`DifficultyID`=0 AND `Entry` IN (36674,44880,7295,9977,151287,5505,11827,29712,15214,11828,5504,49893,114246,1348,113211,51081,54443,68980,57800,54442,108180,50432,50424,83878,83882,1350,1349,83883,83890,14423,157498,157496,1405,188678,338,1316,188342,46180,5493,11068,1315,5494,1318,1317,1312,1431,43692,1299,2456,2457,1301,1428,1298,2455,3520,71526,277,52361,52359,52358,43820,6740,1297,43822,43819,5193,4974,51440,162935,46602,48632,1275,1257,482,175420,175416,279,483,40441,1432,8719,1402,4981,15659,49877,8670,6174,12481,12480,1285,50669,29142,44774,1294,1295,1291,179896,1427,29093,1286,112912,44773,141270,35477,1303,188151,61836,61834,3518,1289,1287,1302,14438,4961,176221,1395,188523,176226,176244,50523,5564,11096,1367,1366,50525,50524,56925,1292,23050,1321,50480,1320,5565,44583,44582,61838,87503,87501,2795,4075,7386,61837,1721,1477,176237,176235,1339,1333,1478,1319,1371,1370,1368,3626,8666,1756,61841,42421,58167,5516,5517,55684,5515,53641,2879,44392,54219,54218,54217,54216,54215,54214,11069,656,5384,53991,42339,14439,1472,121541,5514,5513,7798,144133,5511,5413,29725,2334,957,5510,5512,49540,188521,43034,38821,20407,44394,80069,44393,1649,144134,44236,7232,6579,43840,45306,44235,43725,43724,5509,1416,43825,5519,14563,5518,18927,43723,54334,11026,144135,43690,43824,43823,43841,43842,49748,160600,721,42782,20716,19269,16908,44395,88080,88081,51348,88067,133363,133396,129679,1976,133672,133408,172572,133441,112698,112686,72654,32520,112694,111190,126332,133433,143711,133362,133675,133394,158125,50933,133409,158123,1412,158120,167032,68,158119,50927,133509,133369,159559,159529,159587,159528,159558,159524,159571,159485,159550,159545,159568,157997,159486,159471,159470,159549,159572,159569,159468,159523,160273,160578,159543,160628,159530,159487,158145,159552));
UPDATE `creature_template_scaling` SET `LevelScalingDeltaMin`=-4, `LevelScalingDeltaMax`=-4, `VerifiedBuild`=45745 WHERE (`Entry`=66876 AND `DifficultyID`=0);
UPDATE `creature_template_scaling` SET `LevelScalingDeltaMax`=-3, `VerifiedBuild`=45745 WHERE (`Entry`=14496 AND `DifficultyID`=0);


UPDATE `creature_model_info` SET `VerifiedBuild`=45745 WHERE `DisplayID` IN (30284, 34160, 6061, 9249, 2270, 3301, 11747, 11746, 99506, 36656, 73152, 1503, 72724, 38800, 47231, 39809, 38804, 36790, 36786, 58003, 5448, 1498, 1500, 5586, 14472, 85210, 88674, 1524, 5080, 99193, 106441, 83108, 99187, 3285, 10591, 1486, 99496, 99186, 99185, 1477, 5545, 33468, 1447, 1436, 1437, 1443, 5552, 1427, 1450, 1544, 49021, 1433, 22769, 33303, 37850, 33519, 5444, 1446, 33520, 33518, 3133, 2974, 37372, 36213, 1444, 1431, 3246, 913, 99615, 5082, 5546, 31847, 5074, 7992, 1438, 5547, 15594, 36758, 7991, 4888, 5567, 1434, 36839, 33948, 34070, 1423, 1445, 1439, 5551, 25901, 1440, 72447, 80, 87182, 344, 1441, 42274, 42273, 1541, 1429, 1448, 99499, 14492, 3238, 100160, 1508, 100165, 100184, 36814, 3449, 10625, 36816, 36815, 39532, 1449, 1520, 37087, 1517, 3448, 99497, 99498, 42276, 37310, 60207, 60316, 1505, 9990, 42275, 1815, 1509, 100174, 100172, 1522, 1511, 1519, 1510, 262, 338, 1697, 99401, 7935, 45881, 99951, 19670, 34004, 42279, 15921, 18055, 18054, 40027, 3309, 3310, 39184, 99390, 38422, 5043, 719, 38684, 38688, 99399, 38685, 38686, 38683, 10477, 2363, 99164, 38596, 2176, 28507, 14493, 1418, 5570, 27823, 3313, 3308, 6844, 3307, 4997, 26450, 87993, 99392, 3306, 3311, 1141, 106457, 33497, 21072, 19598, 33839, 46544, 33838, 48989, 33740, 6007, 5378, 33527, 34396, 99393, 33496, 33495, 99398, 4998, 33523, 3315, 14375, 3314, 33494, 99495, 99394, 87992, 33471, 99396, 99395, 33528, 33529, 36597, 4626, 1659, 19732, 81304, 81303, 82919, 33840, 221, 257, 37311, 60711, 83231, 82875, 82895, 82867, 15813, 82897, 5446, 98008, 83234, 21342, 11686, 41667, 93413, 18889, 93408, 82918, 87971, 82874, 18890, 82884, 99391, 93411, 83233, 46929, 93415, 134, 3167, 93410, 24877, 99389, 93409, 87972, 83235, 5131, 94037);
UPDATE `creature_model_info` SET `DisplayID_Other_Gender`=0, `VerifiedBuild`=45745 WHERE `DisplayID` IN (8805, 8803, 8796, 8795, 21858, 21859);
UPDATE `creature_model_info` SET `BoundingRadius`=0.305999994277954101, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID` IN (94291, 94026, 93956, 93943, 94013, 93942, 94032, 93917, 94040, 93986, 94029, 93865, 93924, 93921, 93920, 93521, 94033, 94030, 93995, 93940, 94031, 93960, 94301, 93957, 93932, 92106);
UPDATE `creature_model_info` SET `BoundingRadius`=0.216235101222991943, `CombatReach`=0.779591858386993408, `VerifiedBuild`=45745 WHERE `DisplayID` IN (72180, 5585);
UPDATE `creature_model_info` SET `BoundingRadius`=0.217223197221755981, `CombatReach`=1, `VerifiedBuild`=45745 WHERE `DisplayID`=68729;
UPDATE `creature_model_info` SET `BoundingRadius`=19.979827880859375, `CombatReach`=0, `VerifiedBuild`=45745 WHERE `DisplayID`=91922;
UPDATE `creature_model_info` SET `BoundingRadius`=0.336600005626678466, `CombatReach`=1.65000009536743164, `VerifiedBuild`=45745 WHERE `DisplayID`=90798;


UPDATE `creature_template` SET `npcflag`=83 WHERE `entry`=151287; -- Telonis
UPDATE `creature_template` SET `minlevel`=1, `maxlevel`=1 WHERE `entry`=66876; -- Tyler Stockton
UPDATE `creature_template` SET `BaseAttackTime`=2000 WHERE `entry`=113211; -- Officer Fairbanks
UPDATE `creature_template` SET `minlevel`=2, `maxlevel`=2 WHERE `entry`=14496; -- Stormwind Orphan
UPDATE `creature_template` SET `minlevel`=1, `maxlevel`=1 WHERE `entry`=108180; -- Lucas Stockton
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `faction`=12, `BaseAttackTime`=2000, `unit_flags`=33536, `unit_flags2`=2048 WHERE `entry` IN (188523, 188521); -- Worker
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=144133; -- Shadowforge Craftsman
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=144134; -- Shadowforge Peasant
UPDATE `creature_template` SET `npcflag`=1 WHERE `entry`=7232; -- Borgus Steelhand

UPDATE `creature_template` SET `npcflag`=3 WHERE `entry`=18927; -- Human Commoner
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=144135; -- Shadowforge Soldier

UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=44395; -- Celestine of the Harvest
UPDATE `creature_template` SET `npcflag`=81, `unit_flags3`=8388608 WHERE `entry`=133363; -- Aevedos

UPDATE `creature_template` SET `npcflag`=81 WHERE `entry`=133394; -- Elestrae Dawnshard

UPDATE `creature_template` SET `minlevel`=60, `unit_flags3`=8388608 WHERE `entry`=133509; -- Riftwarden Acolyte
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=159528; -- Drusilla Zapwell
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=159572; -- Luka Morespark
UPDATE `creature_template` SET `unit_flags3`=16777216 WHERE `entry`=160273; -- Projection
UPDATE `creature_template` SET `minlevel`=60 WHERE `entry`=160578; -- Quimby Sparklighter


UPDATE `quest_template` SET `RewardBonusMoney`=0, `VerifiedBuild`=45745 WHERE `ID`=28709; -- Hero's Call: Borean Tundra!
UPDATE `quest_template` SET `RewardBonusMoney`=60, `VerifiedBuild`=45745 WHERE `ID`=56775; -- Warming Up
UPDATE `quest_template` SET `RewardBonusMoney`=0, `VerifiedBuild`=45745 WHERE `ID`=46727; -- Tides of War
UPDATE `quest_template` SET `RewardBonusMoney`=0, `VerifiedBuild`=45745 WHERE `ID`=29547; -- The King's Command
UPDATE `quest_template` SET `RewardBonusMoney`=90, `VerifiedBuild`=45745 WHERE `ID`=26209; -- Murder Was The Case That They Gave Me
UPDATE `quest_template` SET `RewardBonusMoney`=840, `VerifiedBuild`=45745 WHERE `ID`=31889; -- Battle Pet Tamers: Kalimdor
UPDATE `quest_template` SET `RewardBonusMoney`=840, `VerifiedBuild`=45745 WHERE `ID`=31902; -- Battle Pet Tamers: Eastern Kingdoms
UPDATE `quest_template` SET `VerifiedBuild`=45745 WHERE `ID` IN (43806, 40519, 60096, 58147, 58146, 46736, 46735, 46277, 57853, 57852, 57850);
UPDATE `quest_template` SET `RewardBonusMoney`=0, `VerifiedBuild`=45745 WHERE `ID`=42978; -- A Royal Audience
UPDATE `quest_template` SET `RewardBonusMoney`=0, `VerifiedBuild`=45745 WHERE `ID`=44700; -- Stormheim


UPDATE `quest_objectives` SET `VerifiedBuild`=45745 WHERE `ID` IN (391353, 337818, 337817, 259891, 265757, 265756, 265755, 265754, 269150, 269149, 269148, 269147, 269145, 269180, 269179, 269178, 269177, 269176, 285830, 397599, 393737, 393803, 289536, 289535, 289167);


UPDATE `quest_visual_effect` SET `VerifiedBuild`=45745 WHERE (`Index`=0 AND `ID` IN (391353,337818,269150,269149,269148,269147,269145,269180,269179,269178,269177,269176,393737,393803));


UPDATE `creature_template` SET `VerifiedBuild`=45745 WHERE `entry` IN (15659, 58167, 29093, 76084, 6740, 44773, 44774, 29142, 68, 2334, 64993, 65011, 44880, 62809, 65058, 65060, 65061, 65063, 65065, 9158, 2455, 2456, 2457, 188151, 87501, 87503, 277, 42782, 279, 53991, 304, 305, 172572, 49540, 338, 141270, 31717, 188342, 18357, 18359, 18360, 18362, 18375, 18376, 482, 483, 4961, 4974, 29582, 4981, 18406, 7232, 54214, 54215, 54216, 54217, 54218, 54219, 43034, 49748, 2795, 20716, 188521, 188523, 29712, 11827, 2879, 11828, 29725, 656, 49877, 49893, 23050, 5193, 721, 121541, 54442, 54443, 188678, 38821, 108180, 112686, 88080, 88081, 112694, 112698, 29929, 36674, 157496, 52358, 157498, 52359, 52361, 5384, 175416, 175420, 179896, 5413, 957, 144133, 144134, 144135, 7690, 56925, 14423, 14438, 14439, 5493, 5494, 7739, 18927, 5509, 5510, 5511, 5512, 5513, 5514, 5518, 5519, 126332, 72654, 14496, 14505, 7798, 5564, 5565, 83878, 83882, 83883, 83890, 14559, 14560, 14561, 14563, 14565, 39208, 43692, 32520, 50424, 50432, 43723, 43724, 21354, 43725, 16908, 1257, 50480, 1275, 3518, 3520, 1285, 1286, 1287, 1289, 1291, 1292, 1294, 12480, 1295, 12481, 1297, 1298, 1299, 1301, 1302, 1303, 50523, 50524, 50525, 1312, 1315, 1316, 43819, 1317, 43820, 1318, 43822, 1319, 43823, 1320, 43824, 1321, 43825, 1333, 43840, 43841, 43842, 1339, 1348, 1349, 1350, 113211, 1366, 1367, 1368, 1370, 1371, 19269, 133369, 3626, 1395, 1402, 1405, 61809, 1412, 1416, 133408, 133409, 1427, 1428, 1431, 1432, 61834, 61836, 61837, 61838, 46180, 61841, 133433, 50669, 133441, 28302, 1472, 1477, 1478, 167032, 158119, 158120, 158123, 158125, 111190, 55272, 55273, 1649, 48632, 133672, 133675, 6174, 1721, 44235, 44236, 176221, 176226, 176235, 176237, 1756, 176244, 19658, 80069, 15214, 4075, 46602, 51081, 162935, 57800, 44392, 35477, 8670, 1976, 55684, 66876, 8719, 4269, 42339, 11026, 44582, 44583, 6579, 11068, 11069, 51348, 71486, 11096, 42421, 71526, 53641, 73780, 51440);
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=20149; -- Dark War Talbuk
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=15715; -- Green Qiraji Battle Tank
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=22511; -- Dark Riding Talbuk
UPDATE `creature_template` SET `femaleName`='', `movementId`=140, `VerifiedBuild`=45745 WHERE `entry`=65017; -- Grey Riding Yak
UPDATE `creature_template` SET `femaleName`='', `movementId`=140, `VerifiedBuild`=45745 WHERE `entry`=65018; -- Blonde Riding Yak
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=114246; -- Karl Wogksch
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=40441; -- Battered Brewmaster
UPDATE `creature_template` SET `VerifiedBuild`=45745 WHERE `entry`=20407; -- Farseer Umbrua
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=284; -- Brown Horse
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=307; -- Pinto
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=40625; -- Celestial Steed
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=31849; -- Black War Mammoth
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=143711; -- Nicanor Ward
UPDATE `creature_template` SET `VerifiedBuild`=45745 WHERE `entry`=45306; -- Chief Surgeon Gashweld
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=7295; -- Shailiea
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159468; -- Abel Camhorn
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159470; -- Jonian Monkash
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159471; -- Alvin Teasprocket
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=54334; -- Darkmoon Faire Mystic Mage
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159485; -- Tera Geotorque
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159486; -- Raz L. Dazzle
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159487; -- Petra Cogwenne
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=7386; -- White Kitten
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159523; -- Lanna Statiglow
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159524; -- Briony Vandercog
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159528; -- Drusilla Zapwell
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159529; -- Heidi Mitercone
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159530; -- Twyla Flickspring
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=20846; -- Gray Elekk
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=20847; -- Purple Elekk
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=20848; -- Great Blue Elekk
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159543; -- Pete Mixelgear
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=20849; -- Great Green Elekk
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=20850; -- Great Purple Elekk
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159545; -- Stuard Sharpsprocket
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159549; -- Shim Crankturner
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159550; -- Lelu Multipass
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159552; -- Noden Gyrozap
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159558; -- Pegi Cogster
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159559; -- Elya Codepunch
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159568; -- Endora Enginator
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159569; -- Yergin Galvaquad
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159571; -- Flouresce Brightgear
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=159572; -- Luka Morespark
UPDATE `creature_template` SET `femaleName`='', `rank`=1, `type`=7, `type_flags`=4, `HealthModifier`=340, `VerifiedBuild`=45745 WHERE `entry`=159587; -- Gelbin Mekkatorque
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=88067; -- Landscaper Ed
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=32158; -- Albino Drake
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=32203; -- Black War Bear
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=9977; -- Sylista
UPDATE `creature_template` SET `VerifiedBuild`=45745 WHERE `entry`=5504; -- Sheldras Moontree
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=5505; -- Theridran
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=7749; -- Blue Mechanostrider
UPDATE `creature_template` SET `VerifiedBuild`=45745 WHERE `entry`=5515; -- Einris Brightspear
UPDATE `creature_template` SET `VerifiedBuild`=45745 WHERE `entry`=5516; -- Ulfir Ironbeard
UPDATE `creature_template` SET `VerifiedBuild`=45745 WHERE `entry`=5517; -- Thorfin Stoneshield
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=50269; -- Sandstone Drake
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=112912; -- Martin Ocejo
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=77178; -- Dread Raven
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=14551; -- Swift Yellow Mechanostrider
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=14552; -- Swift White Mechanostrider
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=14553; -- Swift Green Mechanostrider
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=43695; -- Auctioneer Hesse
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=10180; -- Unpainted Mechanostrider
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=52807; -- Corrupted Fire Hawk
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=133362; -- Ambassador Moorgard
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=133363; -- Aevedos
UPDATE `creature_template` SET `femaleName`='', `type`=7, `type_flags`=4096, `HealthModifier`=3, `VerifiedBuild`=45745 WHERE `entry`=157997; -- Kelsey Steelspark
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=151287; -- Telonis
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=133394; -- Elestrae Dawnshard
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=133396; -- Jandros Terres
UPDATE `creature_template` SET `femaleName`='', `type`=10, `type_flags2`=6, `VerifiedBuild`=45745 WHERE `entry`=160273; -- Projection
UPDATE `creature_template` SET `unit_class`=8, `VerifiedBuild`=45745 WHERE `entry`=133509; -- Riftwarden Acolyte
UPDATE `creature_template` SET `femaleName`='', `type`=7, `HealthModifier`=10, `VerifiedBuild`=45745 WHERE `entry`=158145; -- Prince Erazmin
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=68771; -- Grand Armored Gryphon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=50927; -- Jasper
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=50933; -- Drake
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=160578; -- Quimby Sparklighter
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=160600; -- Lulana
UPDATE `creature_template` SET `femaleName`='', `type`=7, `VerifiedBuild`=45745 WHERE `entry`=160628; -- Milnar Danspark
UPDATE `creature_template` SET `VerifiedBuild`=45745 WHERE `entry`=68980; -- Voidbinder Sturzah
UPDATE `creature_template` SET `VerifiedBuild`=45745 WHERE `entry`=44393; -- Bolner Hammerbeak
UPDATE `creature_template` SET `VerifiedBuild`=45745 WHERE `entry`=44394; -- Dalga Hammerbeak
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=44396; -- Celestine of the Harvest
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=8666; -- Lil Timmy
UPDATE `creature_template` SET `femaleName`='', `family`=160, `VerifiedBuild`=45745 WHERE `entry`=69067; -- Grand Gryphon
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=33301; -- Gnomeregan Mechanostrider
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=129679; -- Shani Ward
UPDATE `creature_template` SET `femaleName`='', `VerifiedBuild`=45745 WHERE `entry`=11147; -- Green Mechanostrider


UPDATE `creature_template_model` SET `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `CreatureID` IN (36674,44880,7295,151287,9977,5505,29712,15214,11827,11828,114246,49893,5504,1348,113211,66876,54443,51081,68980,57800,54442,14496,108180,83890,83883,83882,83878,50432,50424,1350,1349,157498,157496,14423,1405,188678,188342,1316,338,46180,11068,5494,5493,1318,1317,1315,1312,43692,2457,2456,2455,1431,1428,1301,1299,1298,3520,71526,277,52359,52358,52361,43822,43820,43819,6740,1297,162935,51440,46602,5193,4974,1275,1257,175420,175416,482,279,49877,40441,15659,8719,8670,4981,1432,1402,483,6174,12481,12480,179896,112912,50669,44774,29142,29093,1427,1295,1294,1291,1286,1285,141270,44773,188151,61836,61834,35477,3518,1303,1302,1289,1287,14438,188523,176226,176221,4961,1395,176244,50523,61838,56925,50525,50524,50480,44583,44582,23050,11096,5565,5564,1367,1366,1321,1320,1292,87503,87501,61837,7386,4075,2795,176237,176235,1721,1477,1339,1333,1478,1370,1371,1319,1368,3626,8666,61841,1756,58167,42421,5516,55684,53641,5517,5515,44392,2879,5384,11069,54217,54216,54215,656,54214,54219,54218,53991,42339,14439,1472,121541,5514,5513,144133,29725,7798,5512,5511,5510,5413,2334,957,49540,188521,80069,44394,44393,43034,38821,20407,44236,144134,1649,43840,44235,45306,7232,6579,43725,5509,43724,1416,54334,43825,43723,18927,14563,11026,5519,5518,144135,43824,43823,43695,43842,43841,160600,49748,721,42782,20716,19269,16908,44396,88080,88081,51348,133394,126332,133362,112698,72654,112694,158123,112686,129679,111190,50927,158119,172572,1412,88067,143711,133363,133675,158120,133672,133408,133396,167032,133441,32520,50933,158125,1976,133433,133509,133409,133369,68,159559,159468,159471,159587,159552,160578,159524,159528,159545,157997,159550,159569,159529,160628,159543,159485,159486,159530,159470,159487,159558,159523,159572,159549,159571,159568,76084,21354,33301,64993,73780,65011,29929,305,77178,71486,69067,68771,65065,65063,65061,65060,65058,65018,65017,62809,55273,55272,52807,50269,48632,40625,39208,32203,32158,31849,31717,29582,28302,22511,20850,20848,20849,20847,20846,20149,19658,18362,18375,18376,18406,18359,18357,18360,15715,14561,14560,14559,14553,14552,14551,14565,14505,10180,11147,9158,7749,7739,7690,4269,304,307,61809,284)) OR (`Idx`=3 AND `CreatureID` IN (29712,51081,14496,1756,42339,144133,144134,112698,112694,158123,158119,158120,133672,133441,158125,133433,133509,68)) OR (`Idx`=2 AND `CreatureID` IN (29712,51081,14496,4075,1756,42421,42339,144133,49540,144134,112698,112694,158123,112686,158119,158120,133672,133441,158125,133433,133509,68)) OR (`Idx`=1 AND `CreatureID` IN (29712,15214,51081,14496,52361,162935,4075,1756,42421,42339,144133,49540,38821,144134,54334,18927,144135,721,51348,112698,72654,112694,158123,112686,111190,158119,133675,158120,133672,133441,32520,158125,1976,133433,133509,68)) OR (`Idx`=4 AND `CreatureID`=1756);
UPDATE `creature_template_model` SET `DisplayScale`=1.10000002384185791, `VerifiedBuild`=45745 WHERE (`CreatureID`=158145 AND `Idx`=0); -- Prince Erazmin
UPDATE `creature_template_model` SET `DisplayScale`=4, `VerifiedBuild`=45745 WHERE (`CreatureID`=160273 AND `Idx`=0); -- Projection

UPDATE `gameobject_template` SET `ContentTuningId`=53, `VerifiedBuild`=45745 WHERE `entry`=197196; -- Waters of Farseeing
UPDATE `gameobject_template` SET `VerifiedBuild`=45745 WHERE `entry` IN (254121, 254120, 254116, 201982, 254118, 254117, 202001, 202000, 201999, 201998, 202011, 209297, 202002, 140911, 259114, 201995, 201994, 201993, 201992, 201991, 202025, 202024, 202023, 202003, 201997, 201996, 201983, 202028, 202027, 202026, 201987, 202006, 202010, 202005, 202004, 197018, 201989, 197023, 175729, 197024, 197011, 175758, 205553, 197126, 197099, 197022, 197021, 197098, 205106, 205107, 197136, 197125, 197184, 197183, 197182, 197181, 197179, 197178, 197177, 197176, 197186, 197180, 197150, 197149, 197147, 197119, 195264, 197175, 197174, 197148, 197146, 197120, 197185, 197135, 202260, 202258, 202256, 197173, 197172, 197140, 197123, 197118, 197117, 270011, 203978, 202259, 202257, 202253, 197134, 197116, 197138, 197193, 197192, 197191, 197190, 197189, 197188, 197187, 197122, 197121, 197139, 197133, 197132, 197131, 197124, 250672, 201501, 201513, 197137, 201522, 201514, 201497, 201509, 201508, 201506, 201503, 201523, 201500, 278802, 201511, 201512, 201422, 281118, 201488, 201496, 201494, 201495, 201493, 201489, 201446, 201445, 202009, 201492, 201491, 201490, 201453, 201448, 201447, 202007, 1684, 201451, 201450, 209042, 201452, 209049, 209048, 209043, 209050, 175739, 209051, 209101, 209054, 209053, 209052, 209047, 209046, 209045, 209044, 209041, 209040, 202758, 203800, 201449, 201456, 201454, 201459, 201421, 201458, 201455, 201460, 201457, 206560, 201420, 201419, 201418, 201417, 201416, 201415, 201485, 201484, 201483, 201480, 201476, 201475, 206110, 201479, 294556, 205104, 203801, 205105, 201481, 201477, 201482, 201478, 201474, 201463, 201461, 201462, 203762, 92011, 204987, 203976, 193585, 193584, 193583, 180047, 202274, 202272, 202270, 209124, 209114, 204988, 202273, 202271, 202267, 281339, 209116, 218719, 209692, 278330, 190536, 278326, 278311, 232234, 227906, 231870, 209039, 278331, 259008, 273855, 207416, 278327, 232235, 227907, 350063, 278332, 281304, 278328, 278324, 232224, 227908, 210181, 179965, 278333, 298865, 273853, 278329, 203751, 278325, 278310, 232225, 227909, 204281, 339763, 338477, 339761, 339762, 339758, 339337, 339757, 341828, 335518, 335573, 335528, 335537, 335513, 335529, 335534, 335527, 335536, 335538, 335535, 335533, 335517, 335520, 335530, 335572, 335575, 335515, 335525, 335514, 335539, 335519, 335541, 335516, 335532, 335571, 335531, 335521);
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=45745 WHERE `entry`=254119; -- 254119
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=45745 WHERE `entry`=254092; -- 254092
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=45745 WHERE `entry`=254088; -- 254088
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=45745 WHERE `entry`=254093; -- 254093
UPDATE `gameobject_template` SET `name`='Bench', `VerifiedBuild`=45745 WHERE `entry`=254089; -- 254089
UPDATE `gameobject_template` SET `displayId`=57064, `VerifiedBuild`=45745 WHERE `entry`=195265; -- Standing, Large - Brewfest
UPDATE `gameobject_template` SET `displayId`=57059, `VerifiedBuild`=45745 WHERE `entry`=195254; -- Hanging, Square, Large - Brewfest
UPDATE `gameobject_template` SET `displayId`=57060, `VerifiedBuild`=45745 WHERE `entry`=195255; -- Hanging, Tall/Thin, Large - Brewfest
UPDATE `gameobject_template` SET `displayId`=57061, `VerifiedBuild`=45745 WHERE `entry`=195256; -- Standing, Exterior, Medium - Brewfest
UPDATE `gameobject_template` SET `displayId`=57063, `VerifiedBuild`=45745 WHERE `entry`=195260; -- Standing, Interior, Small - Brewfest
UPDATE `gameobject_template` SET `displayId`=57065, `VerifiedBuild`=45745 WHERE `entry`=195266; -- Hanging, Streamer - Brewfest
UPDATE `gameobject_template` SET `displayId`=57058, `VerifiedBuild`=45745 WHERE `entry`=195253; -- Hanging, Streamer x3 - Brewfest
UPDATE `gameobject_template` SET `displayId`=57062, `VerifiedBuild`=45745 WHERE `entry`=195273; -- Hanging, Tall/Thin, Medium - Brewfest
UPDATE `gameobject_template` SET `displayId`=57062, `VerifiedBuild`=45745 WHERE `entry`=195263; -- Hanging, Square, Medium - Brewfest
UPDATE `gameobject_template` SET `type`=10, `VerifiedBuild`=45745 WHERE `entry`=339222; -- Mechagnome
UPDATE `gameobject_template` SET `name`='Mechagon City Teleporter', `VerifiedBuild`=45745 WHERE `entry`=341363; -- 341363
UPDATE `gameobject_template` SET `type`=10, `VerifiedBuild`=45745 WHERE `entry`=316736; -- Kul Tiran


UPDATE `gameobject_questitem` SET `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `GameObjectEntry` IN (140911,278802,203800,203801,203762,203751));


UPDATE `playerchoice_response` SET `ResponseIdentifier`=8255, `VerifiedBuild`=45745 WHERE (`ChoiceId`=352 AND `ResponseId`=1014 AND `Index`=2);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=8254, `VerifiedBuild`=45745 WHERE (`ChoiceId`=352 AND `ResponseId`=977 AND `Index`=1);
UPDATE `playerchoice_response` SET `ResponseIdentifier`=8253, `VerifiedBuild`=45745 WHERE (`ChoiceId`=352 AND `ResponseId`=976 AND `Index`=0);

UPDATE `conversation_actors` SET `VerifiedBuild`=45745 WHERE (`ConversationId`=13712 AND `Idx` IN (2,1,0));
UPDATE `conversation_actors` SET `ConversationActorId`=71372, `VerifiedBuild`=45745 WHERE (`Idx`=1 AND `ConversationId` IN (12090,12092)) OR (`Idx`=0 AND `ConversationId`=12164); -- Full: 0x2030ED0FE0AADAC000190C0000399EC5 Creature/0 R3131/S6412 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 174955 (Alliance Captain) Low: 3776197
UPDATE `conversation_actors` SET `ActivePlayerObject`=1, `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `ConversationId` IN (12090,12088,12044,12087,12092,12066,12086,11685,12127,12089,12128)); -- Full: 0x0800040000000000FFFFFFFFFFFFFFFF Player/0 R1/S16777215 Map: 0 (Eastern Kingdoms) Low: 1099511627775
UPDATE `conversation_actors` SET `ConversationActorId`=71317, `VerifiedBuild`=45745 WHERE (`ConversationId`=12070 AND `Idx`=0); -- Full: 0x2030ED0FE096B5C000190C0000399588 Creature/0 R3131/S6412 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 154327 (Austin Huxworth) Low: 3773832
UPDATE `conversation_actors` SET `ConversationActorId`=68598, `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `ConversationId` IN (14424,14423)); -- Full: 0x2030ED0FE0995EC00018FA0000399AD1 Creature/0 R3131/S6394 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 157051 (Alliance Sparring Partner) Low: 3775185
UPDATE `conversation_actors` SET `ConversationActorId`=0, `VerifiedBuild`=45745 WHERE (`ConversationId`=12091 AND `Idx`=0); -- Full: 0x2030ED0FE0991FC000190C0000399588 Creature/0 R3131/S6412 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 156799 (Henry Garrick) Low: 3773832
UPDATE `conversation_actors` SET `ConversationActorId`=74771, `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `ConversationId` IN (13710,14449,14440)); -- Full: 0x2030ED0FE0A0B84000190C0000399C73 Creature/0 R3131/S6412 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 164577 (Alliance Sparring Partner) Low: 3775603
UPDATE `conversation_actors` SET `CreatureId`=156280, `CreatureDisplayInfoId`=92690, `VerifiedBuild`=45745 WHERE (`Idx`=1 AND `ConversationId` IN (12083,12084));
UPDATE `conversation_actors` SET `CreatureId`=149899, `CreatureDisplayInfoId`=91998, `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `ConversationId` IN (12083,12084));
UPDATE `conversation_actors` SET `ConversationActorId`=71223, `VerifiedBuild`=45745 WHERE (`ConversationId`=12043 AND `Idx`=0); -- Full: 0x2030ED0FE098F48000190C0000399588 Creature/0 R3131/S6412 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 156626 (Captain Garrick) Low: 3773832
UPDATE `conversation_actors` SET `ConversationActorId`=73270, `VerifiedBuild`=45745 WHERE (`ConversationId`=12798 AND `Idx`=0); -- Full: 0x0
UPDATE `conversation_actors` SET `ConversationActorId`=71326, `VerifiedBuild`=45745 WHERE (`ConversationId`=12073 AND `Idx`=0); -- Full: 0x2030ED0FE098FD8000190C0000399D05 Creature/0 R3131/S6412 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 156662 (Captain Garrick) Low: 3775749
UPDATE `conversation_actors` SET `ConversationActorId`=71327, `VerifiedBuild`=45745 WHERE (`ConversationId`=12073 AND `Idx`=1); -- Full: 0x2030ED0FE096B5C000190C0000399D05 Creature/0 R3131/S6412 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 154327 (Austin Huxworth) Low: 3775749
UPDATE `conversation_actors` SET `ConversationActorId`=71366, `VerifiedBuild`=45745 WHERE (`Idx`=1 AND `ConversationId` IN (12088,12087)); -- Full: 0x2030ED0FE099134000190C0000399EA7 Creature/0 R3131/S6412 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 156749 (Lindie Springstock) Low: 3776167
UPDATE `conversation_actors` SET `ConversationActorId`=69830, `VerifiedBuild`=45745 WHERE (`ConversationId`=12044 AND `Idx`=1); -- Full: 0x2030ED0FE0A17BC000190C0000399BCC Creature/0 R3131/S6412 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 165359 (Alliance Survivor) Low: 3775436
UPDATE `conversation_actors` SET `ConversationActorId`=69830, `VerifiedBuild`=45745 WHERE (`ConversationId`=12058 AND `Idx`=1); -- Full: 0x0
UPDATE `conversation_actors` SET `ConversationActorId`=71297, `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `ConversationId` IN (12058,11696,12863)); -- Full: 0x2030ED0FE098EFC000190C0000399588 Creature/0 R3131/S6412 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 156607 (Alaria) Low: 3773832
UPDATE `conversation_actors` SET `ConversationActorId`=78493, `VerifiedBuild`=45745 WHERE (`ConversationId`=15615 AND `Idx`=1); -- Full: 0x0
UPDATE `conversation_actors` SET `ConversationActorId`=71372, `VerifiedBuild`=45745 WHERE (`ConversationId`=15615 AND `Idx`=0); -- Full: 0x0
UPDATE `conversation_actors` SET `ConversationActorId`=71328, `VerifiedBuild`=45745 WHERE (`ConversationId`=12076 AND `Idx`=0); -- Full: 0x2030ED0FE09262C000190C0000399588 Creature/0 R3131/S6412 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 149899 (Lindie Springstock) Low: 3773832
UPDATE `conversation_actors` SET `ConversationActorId`=71330, `VerifiedBuild`=45745 WHERE (`ConversationId`=12076 AND `Idx`=1); -- Full: 0x2030ED0FE0989E0000190C0000399588 Creature/0 R3131/S6412 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 156280 (Captain Garrick) Low: 3773832
UPDATE `conversation_actors` SET `ConversationActorId`=71310, `VerifiedBuild`=45745 WHERE (`ConversationId`=12066 AND `Idx`=1); -- Full: 0x2030ED0FE0A17C0000190C0000399CE0 Creature/0 R3131/S6412 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 165360 (Alliance Survivor) Low: 3775712
UPDATE `conversation_actors` SET `ConversationActorId`=71297, `VerifiedBuild`=45745 WHERE (`ConversationId`=12066 AND `Idx`=2); -- Full: 0x0
UPDATE `conversation_actors` SET `ConversationActorId`=71366, `VerifiedBuild`=45745 WHERE (`ConversationId`=12086 AND `Idx`=1); -- Full: 0x2030ED0FE099134000190C0000399E83 Creature/0 R3131/S6412 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 156749 (Lindie Springstock) Low: 3776131
UPDATE `conversation_actors` SET `ConversationActorId`=71309, `VerifiedBuild`=45745 WHERE (`Idx`=1 AND `ConversationId` IN (11696,12863)); -- Full: 0x2030ED0FE098FAC000190C0000399588 Creature/0 R3131/S6412 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 156651 (Captain Garrick) Low: 3773832
UPDATE `conversation_actors` SET `ConversationActorId`=73270, `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `ConversationId` IN (12818,10768)); -- Full: 0x2030ED0FE0989E000018FA0000B9905F Creature/0 R3131/S6394 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 156280 (Captain Garrick) Low: 12161119
UPDATE `conversation_actors` SET `ConversationActorId`=71345, `VerifiedBuild`=45745 WHERE (`ConversationId`=12078 AND `Idx`=0); -- Full: 0x2030ED0FE09262C000190C0000399DCA Creature/0 R3131/S6412 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 149899 (Lindie Springstock) Low: 3775946
UPDATE `conversation_actors` SET `ConversationActorId`=71344, `VerifiedBuild`=45745 WHERE (`ConversationId`=12078 AND `Idx`=1); -- Full: 0x0
UPDATE `conversation_actors` SET `ConversationActorId`=71536, `VerifiedBuild`=45745 WHERE (`ConversationId`=11685 AND `Idx`=1); -- Full: 0x2030ED0FE0938C4000190C0000399588 Creature/0 R3131/S6412 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 151089 (Bjorn Stouthands) Low: 3773832
UPDATE `conversation_actors` SET `ConversationActorId`=71535, `VerifiedBuild`=45745 WHERE (`ConversationId`=12127 AND `Idx`=1); -- Full: 0x2030ED0FE0938C0000190C0000399588 Creature/0 R3131/S6412 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 151088 (Kee-La) Low: 3773832
UPDATE `conversation_actors` SET `ConversationActorId`=71366, `VerifiedBuild`=45745 WHERE (`ConversationId`=12089 AND `Idx`=1); -- Full: 0x0
UPDATE `conversation_actors` SET `ConversationActorId`=71534, `VerifiedBuild`=45745 WHERE (`ConversationId`=12128 AND `Idx`=1); -- Full: 0x2030ED0FE0968E8000190C0000399588 Creature/0 R3131/S6412 Map: 2175 (9.0 NPE (New Player Experience) - Exile's Reach) Entry: 154170 (Austin Huxworth) Low: 3773832

DELETE FROM `conversation_line_template` WHERE `Id` IN (36259, 36261, 34021, 34025, 34024, 34020);
INSERT INTO `conversation_line_template` (`Id`, `UiCameraID`, `ActorIdx`, `Flags`, `VerifiedBuild`) VALUES
(36259, 0, 0, 0, 45745),
(36261, 0, 0, 0, 45745),
(34021, 0, 0, 0, 45745),
(34025, 0, 0, 0, 45745),
(34024, 0, 0, 0, 45745),
(34020, 0, 0, 0, 45745);

UPDATE `conversation_line_template` SET `VerifiedBuild`=45745 WHERE `Id` IN (36346, 34176, 34175, 29444, 29443, 29367, 36103, 29446, 34173, 29420, 29422, 29421, 31507, 29419, 29262, 36101, 31382, 36179, 34174, 29376, 29375, 29438, 29437, 29263, 29305, 29426, 29424, 29425, 34207, 36161, 34645, 29322, 39166, 39165, 39164, 39163, 39167, 29432, 29435, 29450, 29448, 29447, 29388, 29387, 29386, 29351, 29350, 29349, 29348, 29431, 29430, 29333, 28242, 28241, 34646, 31623, 31445, 29393, 29395, 29392, 29394, 31498, 29391, 29660, 29556, 29557, 29559, 29558, 32717, 29440, 29439, 29561, 29560);


UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=15615;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=12092;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=12164;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=12091;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=12090;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=12089;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=12088;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=12087;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=12086;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=12084;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=12083;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=12078;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=12076;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=13712;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=13712;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=12073;
UPDATE `conversation_template` SET `FirstLineID`=29367, `VerifiedBuild`=45745 WHERE `Id`=12070;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=12066;
UPDATE `conversation_template` SET `FirstLineID`=36179, `VerifiedBuild`=45745 WHERE `Id`=14449;
UPDATE `conversation_template` SET `FirstLineID`=36161, `VerifiedBuild`=45745 WHERE `Id`=14440;
UPDATE `conversation_template` SET `FirstLineID`=34173, `VerifiedBuild`=45745 WHERE `Id`=13710;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=12863;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=11696;
UPDATE `conversation_template` SET `FirstLineID`=29322, `VerifiedBuild`=45745 WHERE `Id`=12058;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=12044;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=12127;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=12128;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=11685;
UPDATE `conversation_template` SET `VerifiedBuild`=45745 WHERE `Id`=12043;
UPDATE `conversation_template` SET `FirstLineID`=36103, `VerifiedBuild`=45745 WHERE `Id`=14424;
UPDATE `conversation_template` SET `FirstLineID`=36101, `VerifiedBuild`=45745 WHERE `Id`=14423;
UPDATE `conversation_template` SET `FirstLineID`=31382, `VerifiedBuild`=45745 WHERE `Id`=12798;
UPDATE `conversation_template` SET `FirstLineID`=31445, `VerifiedBuild`=45745 WHERE `Id`=12818;
UPDATE `conversation_template` SET `FirstLineID`=32717, `VerifiedBuild`=45745 WHERE `Id`=10768;

DELETE FROM `gameobject_template_addon` WHERE `entry`=339769;
INSERT INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `WorldEffectID`, `AIAnimKitID`) VALUES
(339769, 0, 2113540, 0, 0); -- Campfire

UPDATE `gameobject_template_addon` SET `flags`=2113540 WHERE `entry`=342366; -- Veil Blossom


DELETE FROM `playercreateinfo_action` WHERE (`race`=1 AND `class`=8 AND `button`=4) OR (`race`=1 AND `class`=8 AND `button`=3);
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES
(1, 8, 4, 319836, 0), -- Fire Blast
(1, 8, 3, 116, 0); -- Frostbolt


UPDATE `quest_offer_reward` SET `RewardText`='Thank you, stranger. I thought I was going to be punished for failing to save my friends.\n\nI\'m relieved that I was mistaken.', `VerifiedBuild`=45745 WHERE `ID`=55879; -- Ride of the Scientifically Enhanced Boar
UPDATE `quest_offer_reward` SET `RewardText`='I never thought I\'d be so relieved to be face to face with a giant, scientifically enhanced boar.\n\nLet\'s go save my son.', `VerifiedBuild`=45745 WHERE `ID`=56034; -- Re-sizing the Situation
UPDATE `quest_offer_reward` SET `VerifiedBuild`=45745 WHERE `ID` IN (55193, 55184, 55173, 59254, 54951, 55122, 58209);
UPDATE `quest_offer_reward` SET `RewardText`='Thanks for saving my life! They said this would be a run of the mill, uneventful expedition.\n\nIt definitely was NOT! And I couldn\'t be happier!', `VerifiedBuild`=45745 WHERE `ID`=55186; -- Down with the Quilboar
UPDATE `quest_offer_reward` SET `RewardText`='<Alaria quickly eats the meat that you cooked.>\n\nBy the Light... I feel so much better.\n\nYou need to keep moving... quilboar have kidnapped the expedition, including Captain Garrick\'s son!', `VerifiedBuild`=45745 WHERE `ID`=55174; -- Cooking Meat
UPDATE `quest_offer_reward` SET `RewardText`='The others... taken... \n\nNeed... food...', `VerifiedBuild`=45745 WHERE `ID`=54952; -- Finding the Lost Expedition
UPDATE `quest_offer_reward` SET `RewardText`='This ship may not make it to the island.\n\nHold on to something sturdy and stick with your fellow recruits. We\'ll get through this.', `VerifiedBuild`=45745 WHERE `ID`=58208; -- Brace for Impact
UPDATE `quest_offer_reward` SET `RewardText`='Good, looks like you\'ve kept up your $c training during our voyage.\n\nI\'m concerned about the sudden turn in weather. Spar with Private Cole while I speak with the ship\'s crew.\n\nCole\'s report will determine where we\'ll place you on our initial expedition team.', `VerifiedBuild`=45745 WHERE `ID`=56775; -- Warming Up


UPDATE `quest_poi` SET `VerifiedBuild`=45745 WHERE (`QuestID`=55879 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=55879 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=55879 AND `BlobIndex`=1 AND `Idx1`=2) OR (`QuestID`=55879 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=55879 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=56034 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=56034 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=56034 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=55193 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=55193 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=55193 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=55184 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=55184 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=55184 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=55186 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=55186 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=55186 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=55173 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=55173 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=59254 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=59254 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=59254 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=55174 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=55174 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=55174 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=55174 AND `BlobIndex`=1 AND `Idx1`=1) OR (`QuestID`=55174 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=54952 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=54952 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=54952 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=54951 AND `BlobIndex`=0 AND `Idx1`=4) OR (`QuestID`=54951 AND `BlobIndex`=0 AND `Idx1`=3) OR (`QuestID`=54951 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=54951 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=54951 AND `BlobIndex`=0 AND `Idx1`=0) OR (`QuestID`=55122 AND `BlobIndex`=0 AND `Idx1`=2) OR (`QuestID`=55122 AND `BlobIndex`=0 AND `Idx1`=1) OR (`QuestID`=55122 AND `BlobIndex`=0 AND `Idx1`=0);

UPDATE `quest_poi_points` SET `VerifiedBuild`=45745 WHERE (`QuestID`=55879 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=55879 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=55879 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=55879 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=55879 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=55879 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=55879 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=55879 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=55879 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=55879 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=55879 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=55879 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=55879 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=55879 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=55879 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55879 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=56034 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=56034 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=56034 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=56034 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=56034 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=56034 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=56034 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=56034 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=56034 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=56034 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=56034 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=56034 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=56034 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=56034 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=55193 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=55193 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55193 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=55184 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=55184 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=55184 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=55184 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=55184 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=55184 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=55184 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=55184 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=55184 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55184 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=55186 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=55186 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55186 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=55173 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55173 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=59254 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=59254 AND `Idx1`=1 AND `Idx2`=11) OR (`QuestID`=59254 AND `Idx1`=1 AND `Idx2`=10) OR (`QuestID`=59254 AND `Idx1`=1 AND `Idx2`=9) OR (`QuestID`=59254 AND `Idx1`=1 AND `Idx2`=8) OR (`QuestID`=59254 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=59254 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=59254 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=59254 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=59254 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=59254 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=59254 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=59254 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=59254 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=55174 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=55174 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=55174 AND `Idx1`=2 AND `Idx2`=11) OR (`QuestID`=55174 AND `Idx1`=2 AND `Idx2`=10) OR (`QuestID`=55174 AND `Idx1`=2 AND `Idx2`=9) OR (`QuestID`=55174 AND `Idx1`=2 AND `Idx2`=8) OR (`QuestID`=55174 AND `Idx1`=2 AND `Idx2`=7) OR (`QuestID`=55174 AND `Idx1`=2 AND `Idx2`=6) OR (`QuestID`=55174 AND `Idx1`=2 AND `Idx2`=5) OR (`QuestID`=55174 AND `Idx1`=2 AND `Idx2`=4) OR (`QuestID`=55174 AND `Idx1`=2 AND `Idx2`=3) OR (`QuestID`=55174 AND `Idx1`=2 AND `Idx2`=2) OR (`QuestID`=55174 AND `Idx1`=2 AND `Idx2`=1) OR (`QuestID`=55174 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=55174 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55174 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=54952 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=54952 AND `Idx1`=1 AND `Idx2`=7) OR (`QuestID`=54952 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=54952 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=54952 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=54952 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=54952 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=54952 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=54952 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=54952 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=54951 AND `Idx1`=4 AND `Idx2`=0) OR (`QuestID`=54951 AND `Idx1`=3 AND `Idx2`=0) OR (`QuestID`=54951 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=54951 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=54951 AND `Idx1`=0 AND `Idx2`=0) OR (`QuestID`=55122 AND `Idx1`=2 AND `Idx2`=0) OR (`QuestID`=55122 AND `Idx1`=1 AND `Idx2`=6) OR (`QuestID`=55122 AND `Idx1`=1 AND `Idx2`=5) OR (`QuestID`=55122 AND `Idx1`=1 AND `Idx2`=4) OR (`QuestID`=55122 AND `Idx1`=1 AND `Idx2`=3) OR (`QuestID`=55122 AND `Idx1`=1 AND `Idx2`=2) OR (`QuestID`=55122 AND `Idx1`=1 AND `Idx2`=1) OR (`QuestID`=55122 AND `Idx1`=1 AND `Idx2`=0) OR (`QuestID`=55122 AND `Idx1`=0 AND `Idx2`=0);


UPDATE `quest_details` SET `VerifiedBuild`=45745 WHERE `ID` IN (55879, 56034, 55193, 55184, 55186, 55173, 59254, 55174, 54952, 54951, 55122, 58208, 58209, 56775);


UPDATE `creature_queststarter` SET `VerifiedBuild`=45745 WHERE (`id`=156280 AND `quest` IN (55879,56775)) OR (`id`=149899 AND `quest` IN (56034,55193)) OR (`id`=154327 AND `quest` IN (55184,55186)) OR (`id`=175031 AND `quest`=55173) OR (`id`=156651 AND `quest` IN (59254,55174)) OR (`id`=156626 AND `quest` IN (54952,54951,55122)) OR (`id`=160664 AND `quest` IN (58208,58209));


UPDATE `creature_questender` SET `VerifiedBuild`=45745 WHERE (`id`=156799 AND `quest`=55879) OR (`id`=156280 AND `quest` IN (56034,58208,56775)) OR (`id`=149899 AND `quest` IN (55193,55186)) OR (`id`=149915 AND `quest`=55184) OR (`id`=154327 AND `quest`=55173) OR (`id`=156651 AND `quest`=59254) OR (`id`=156607 AND `quest` IN (55174,54952)) OR (`id`=156626 AND `quest` IN (54951,55122)) OR (`id`=160664 AND `quest`=58209);



UPDATE `spell_target_position` SET `VerifiedBuild`=45745 WHERE (`ID`=305425 AND `EffectIndex`=4);


UPDATE `creature_model_info` SET `VerifiedBuild`=45745 WHERE `DisplayID` IN (87594, 70446, 1197, 1198, 70451, 97258, 70448, 10824, 70440, 1072, 34007, 43226, 81106, 4959, 36357, 6106, 81105, 78151, 40123, 1762, 3619, 983, 75371, 70861, 87221, 89868, 64062, 11686, 46929);
UPDATE `creature_model_info` SET `BoundingRadius`=0.255721211433410644, `VerifiedBuild`=45745 WHERE `DisplayID`=78851;
UPDATE `creature_model_info` SET `BoundingRadius`=0.208000004291534423, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID` IN (99445, 92690, 89870);
UPDATE `creature_model_info` SET `BoundingRadius`=1.973168730735778808, `CombatReach`=3.449999809265136718, `VerifiedBuild`=45745 WHERE `DisplayID`=95022;
UPDATE `creature_model_info` SET `BoundingRadius`=1.014356374740600585, `CombatReach`=2.5, `VerifiedBuild`=45745 WHERE `DisplayID`=70162;
UPDATE `creature_model_info` SET `BoundingRadius`=0.300000011920928955, `CombatReach`=5, `VerifiedBuild`=45745 WHERE `DisplayID`=95765;
UPDATE `creature_model_info` SET `BoundingRadius`=0.305999994277954101, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID` IN (92751, 91998, 22661, 94939);
UPDATE `creature_model_info` SET `BoundingRadius`=2.036857128143310546, `VerifiedBuild`=45745 WHERE `DisplayID`=23681;
UPDATE `creature_model_info` SET `BoundingRadius`=0.434946358203887939, `VerifiedBuild`=45745 WHERE `DisplayID` IN (92693, 92691);
UPDATE `creature_model_info` SET `BoundingRadius`=0.249518632888793945, `CombatReach`=0.300000011920928955, `VerifiedBuild`=45745 WHERE `DisplayID` IN (71224, 79614, 70722);
UPDATE `creature_model_info` SET `BoundingRadius`=1.491378188133239746, `CombatReach`=2.099999904632568359, `VerifiedBuild`=45745 WHERE `DisplayID`=4658;
UPDATE `creature_model_info` SET `BoundingRadius`=1.71579897403717041, `CombatReach`=3, `VerifiedBuild`=45745 WHERE `DisplayID`=86424;
UPDATE `creature_model_info` SET `BoundingRadius`=1.342910170555114746, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID`=26566;
UPDATE `creature_model_info` SET `BoundingRadius`=0.798952639102935791, `CombatReach`=1.125, `VerifiedBuild`=45745 WHERE `DisplayID`=1963;
UPDATE `creature_model_info` SET `BoundingRadius`=0.277218431234359741, `CombatReach`=0.649999976158142089, `VerifiedBuild`=45745 WHERE `DisplayID`=2177;
UPDATE `creature_model_info` SET `BoundingRadius`=2.104584932327270507, `CombatReach`=1.346938848495483398, `VerifiedBuild`=45745 WHERE `DisplayID`=52696;
UPDATE `creature_model_info` SET `BoundingRadius`=1.544346570968627929, `CombatReach`=1.724999904632568359, `VerifiedBuild`=45745 WHERE `DisplayID`=43225;
UPDATE `creature_model_info` SET `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID` IN (91996, 99207);
UPDATE `creature_model_info` SET `BoundingRadius`=1.866102457046508789, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID`=77902;
UPDATE `creature_model_info` SET `BoundingRadius`=0.310000002384185791, `CombatReach`=0, `VerifiedBuild`=45745 WHERE `DisplayID`=40122;
UPDATE `creature_model_info` SET `BoundingRadius`=1.5, `CombatReach`=6, `VerifiedBuild`=45745 WHERE `DisplayID`=96541;
UPDATE `creature_model_info` SET `BoundingRadius`=0.514177203178405761, `CombatReach`=1.875, `VerifiedBuild`=45745 WHERE `DisplayID`=66292;
UPDATE `creature_model_info` SET `BoundingRadius`=0.341551274061203002, `CombatReach`=0.4375, `VerifiedBuild`=45745 WHERE `DisplayID` IN (87603, 75380);
UPDATE `creature_model_info` SET `BoundingRadius`=0.347222000360488891, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID` IN (95210, 91997, 92804);
UPDATE `creature_model_info` SET `BoundingRadius`=0.300000011920928955, `CombatReach`=0, `VerifiedBuild`=45745 WHERE `DisplayID`=31;
UPDATE `creature_model_info` SET `BoundingRadius`=0.334899783134460449, `CombatReach`=0.4375, `VerifiedBuild`=45745 WHERE `DisplayID`=75374;
UPDATE `creature_model_info` SET `BoundingRadius`=0.347000002861022949, `CombatReach`=1.5, `VerifiedBuild`=45745 WHERE `DisplayID`=91995;


UPDATE `gossip_menu` SET `VerifiedBuild`=45745 WHERE (`MenuID`=24240 AND `TextID`=38540);


UPDATE `quest_template` SET `RewardBonusMoney`=60, `VerifiedBuild`=45745 WHERE `ID`=55879; -- Ride of the Scientifically Enhanced Boar
UPDATE `quest_template` SET `RewardBonusMoney`=30, `VerifiedBuild`=45745 WHERE `ID`=55193; -- The Scout-o-Matic 5000
UPDATE `quest_template` SET `RewardBonusMoney`=30, `VerifiedBuild`=45745 WHERE `ID`=55184; -- Forbidden Quilboar Necromancy
UPDATE `quest_template` SET `RewardBonusMoney`=30, `Flags`=40894464, `VerifiedBuild`=45745 WHERE `ID`=55186; -- Down with the Quilboar
UPDATE `quest_template` SET `RewardBonusMoney`=30, `VerifiedBuild`=45745 WHERE `ID`=55173; -- Northbound
UPDATE `quest_template` SET `RewardBonusMoney`=30, `VerifiedBuild`=45745 WHERE `ID`=59254; -- Enhanced Combat Tactics
UPDATE `quest_template` SET `RewardBonusMoney`=30, `VerifiedBuild`=45745 WHERE `ID`=55174; -- Cooking Meat
UPDATE `quest_template` SET `RewardBonusMoney`=30, `VerifiedBuild`=45745 WHERE `ID`=54952; -- Finding the Lost Expedition
UPDATE `quest_template` SET `RewardBonusMoney`=30, `Flags`=40894464, `VerifiedBuild`=45745 WHERE `ID`=55122; -- Murloc Mania
UPDATE `quest_template` SET `VerifiedBuild`=45745 WHERE `ID`=58208;
UPDATE `quest_template` SET `RewardBonusMoney`=0, `VerifiedBuild`=45745 WHERE `ID`=58209; -- Stand Your Ground
UPDATE `quest_template` SET `RewardBonusMoney`=0, `VerifiedBuild`=45745 WHERE `ID`=59342; -- Taming the Wilds
UPDATE `quest_template` SET `RewardBonusMoney`=210, `VerifiedBuild`=45745 WHERE `ID`=55992; -- Dungeon: Darkmaul Citadel
UPDATE `quest_template` SET `RewardBonusMoney`=0, `VerifiedBuild`=45745 WHERE `ID`=56034; -- Re-sizing the Situation
UPDATE `quest_template` SET `RewardBonusMoney`=0, `VerifiedBuild`=45745 WHERE `ID`=54951; -- Emergency First Aid

DELETE FROM `quest_objectives` WHERE `ID`=394461;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES
(394461, 55992, 14, 0, 1, 83801, 1, 0, 0, 0, 'Use the Group Finder to enter the dungeon, \"Darkmaul Citadel\"', 45745); -- 394461

UPDATE `quest_objectives` SET `VerifiedBuild`=45745 WHERE `ID` IN (395073, 396499, 389796, 391875, 388849, 388852, 396220, 394179, 396789, 390721, 393824, 396359, 396360, 390101, 391859, 391858, 388448);
UPDATE `quest_objectives` SET `Type`=19, `ObjectID`=17635, `Amount`=0, `Flags`=0, `VerifiedBuild`=45745 WHERE `ID`=391866; -- 391866
UPDATE `quest_objectives` SET `Order`=2, `Flags`=2, `VerifiedBuild`=45745 WHERE `ID`=395924; -- 395924
UPDATE `quest_objectives` SET `Type`=14, `Order`=1, `StorageIndex`=0, `ObjectID`=89016, `Flags`=2, `VerifiedBuild`=45745 WHERE `ID`=394065; -- 394065


UPDATE `quest_visual_effect` SET `VerifiedBuild`=45745 WHERE (`Index`=0 AND `ID` IN (395073,388852,396220,396789,396359,396360,395924,394065,390101)) OR (`Index`=2 AND `ID` IN (396789,396359)) OR (`Index`=1 AND `ID` IN (396789,396359,394065)) OR (`Index`=4 AND `ID`=396359) OR (`Index`=3 AND `ID`=396359);


UPDATE `creature_template_model` SET `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `CreatureID` IN (168373,168372,156886,150245,165758,161666,156833,156807,156267,156595,156781,156749,156804,156803,156801,156800,154300,157114,174955,156799,156532,153266,165727,154268,165730,149899,149915,165757,165711,155371,165713,150238,151091,154301,156662,150237,154327,156660,164577,164605,175031,165359,156651,161133,156607,161131,153168,151088,154170,151089,150228,150229,156609,156622,416,149917,156612,156610,156626,157051,155607,167886,157043,157046,154867,156280,157042,157044,156345,160737,160664,157049)) OR (`Idx`=1 AND `CreatureID` IN (174977,165758,168382,156532,165727,165711,165713,150238,150237,164827,161133,167761,161131,150228,150229,161228,161224,157070,160656,167886,156403,155125,174971)) OR (`Idx`=3 AND `CreatureID` IN (156532,164827,167886)) OR (`Idx`=2 AND `CreatureID` IN (156532,165727,165711,164827,161133,167886));
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `CreatureID` IN (174977,168382,174971)); -- Spar Point Advertisement
UPDATE `creature_template_model` SET `DisplayScale`=0.100000001490116119, `VerifiedBuild`=45745 WHERE (`CreatureID`=156808 AND `Idx`=0); -- Small Boar
UPDATE `creature_template_model` SET `DisplayScale`=2.299999952316284179, `VerifiedBuild`=45745 WHERE (`CreatureID`=162817 AND `Idx`=0); -- Torgok
UPDATE `creature_template_model` SET `DisplayScale`=1.25, `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `CreatureID` IN (165150,157091)); -- Monstrous Cadaver
UPDATE `creature_template_model` SET `DisplayScale`=0.25, `VerifiedBuild`=45745 WHERE (`CreatureID`=156736 AND `Idx`=0); -- Re-sized Boar
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `CreatureID` IN (156526,156518)); -- Scout-o-Matic 5000
UPDATE `creature_template_model` SET `DisplayScale`=0.25, `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `CreatureID` IN (156716,164826)); -- Wandering Boar
UPDATE `creature_template_model` SET `DisplayScale`=2, `VerifiedBuild`=45745 WHERE (`CreatureID`=156676 AND `Idx`=0); -- Ogre Overseer
UPDATE `creature_template_model` SET `DisplayScale`=0.649999976158142089, `VerifiedBuild`=45745 WHERE (`CreatureID`=165712 AND `Idx`=0); -- Cockroach
UPDATE `creature_template_model` SET `DisplayScale`=0.75, `VerifiedBuild`=45745 WHERE (`CreatureID`=164827 AND `Idx`=0); -- Sharpbeak Hawk
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `CreatureID` IN (167761,155125)); -- InvisBunny
UPDATE `creature_template_model` SET `DisplayScale`=1.5, `VerifiedBuild`=45745 WHERE (`CreatureID`=161265 AND `Idx`=0); -- Jrokgar
UPDATE `creature_template_model` SET `DisplayScale`=0.75, `VerifiedBuild`=45745 WHERE (`CreatureID`=161130 AND `Idx`=0); -- Coastal Goat
UPDATE `creature_template_model` SET `DisplayScale`=0.349999994039535522, `VerifiedBuild`=45745 WHERE (`CreatureID`=161228 AND `Idx`=0); -- Glimmering Hermit
UPDATE `creature_template_model` SET `DisplayScale`=0.349999994039535522, `VerifiedBuild`=45745 WHERE (`CreatureID`=161224 AND `Idx`=0); -- Shuffling Crab
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `CreatureID` IN (157070,160656)); -- Invisible Stalker
UPDATE `creature_template_model` SET `Probability`=0, `VerifiedBuild`=45745 WHERE (`CreatureID`=156403 AND `Idx`=0); -- aBoat


UPDATE `creature_questitem` SET `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `CreatureEntry` IN (150238,150237,161133,161131,161130,150228,150229));


UPDATE `gameobject_template` SET `castBarCaption`='Burning', `VerifiedBuild`=45745 WHERE `entry`=342365; -- Campfire
UPDATE `gameobject_template` SET `castBarCaption`='Retrieving', `VerifiedBuild`=45745 WHERE `entry`=342366; -- Veil Blossom
UPDATE `gameobject_template` SET `VerifiedBuild`=45745 WHERE `entry` IN (327146, 329918, 339770, 339769, 335718, 333479);
UPDATE `gameobject_template` SET `name`='Bonfire', `VerifiedBuild`=45745 WHERE `entry` IN (349948, 349947); -- Wood fire


UPDATE `gameobject_questitem` SET `VerifiedBuild`=45745 WHERE (`Idx`=0 AND `GameObjectEntry` IN (342366,339769));
