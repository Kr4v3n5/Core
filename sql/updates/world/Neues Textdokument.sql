ALTER TABLE `exploration_basexp` CHANGE `level` `level` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `exploration_basexp` CHANGE `basexp` `basexp` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `fishing_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `game_event_creature` CHANGE `eventEntry` `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.';
ALTER TABLE `game_event_gameobject` CHANGE `eventEntry` `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.';
ALTER TABLE `game_event_model_equip` CHANGE `eventEntry` `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_npc_vendor` CHANGE `eventEntry` `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_pool` CHANGE `eventEntry` `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.';
ALTER TABLE `gameobject_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `gameobject_template` CHANGE `WDBVerified` `WDBVerified` smallint(6) NULL DEFAULT '1';
ALTER TABLE `gossip_menu` CHANGE `entry` `entry` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `gossip_menu_option` CHANGE `menu_id` `menu_id` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `gossip_menu_option` CHANGE `id` `id` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `gossip_menu_option` CHANGE `box_money` `box_money` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `gossip_menu_option` CHANGE `action_menu_id` `action_menu_id` int(10) unsigned NOT NULL DEFAULT '0';