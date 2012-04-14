/*
Navicat MySQL Data Transfer

Source Server         : trilliumX
Source Server Version : 50522
Source Host           : localhost:3306
Source Database       : characters

Target Server Type    : MYSQL
Target Server Version : 50522
File Encoding         : 65001

Date: 2012-04-14 20:33:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account_data`
-- ----------------------------
DROP TABLE IF EXISTS `account_data`;
CREATE TABLE `account_data` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`accountId`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_data
-- ----------------------------
INSERT INTO `account_data` VALUES ('1', '0', '1334428219', 0x53455420666C61676765645475746F7269616C7320227601232324220D0A5345542063616D65726144697374616E63654D6178466163746F72202231220D0A);

-- ----------------------------
-- Table structure for `account_instance_times`
-- ----------------------------
DROP TABLE IF EXISTS `account_instance_times`;
CREATE TABLE `account_instance_times` (
  `accountId` int(10) unsigned NOT NULL,
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0',
  `releaseTime` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`,`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_instance_times
-- ----------------------------

-- ----------------------------
-- Table structure for `account_tutorial`
-- ----------------------------
DROP TABLE IF EXISTS `account_tutorial`;
CREATE TABLE `account_tutorial` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `tut0` int(10) unsigned NOT NULL DEFAULT '0',
  `tut1` int(10) unsigned NOT NULL DEFAULT '0',
  `tut2` int(10) unsigned NOT NULL DEFAULT '0',
  `tut3` int(10) unsigned NOT NULL DEFAULT '0',
  `tut4` int(10) unsigned NOT NULL DEFAULT '0',
  `tut5` int(10) unsigned NOT NULL DEFAULT '0',
  `tut6` int(10) unsigned NOT NULL DEFAULT '0',
  `tut7` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_tutorial
-- ----------------------------
INSERT INTO `account_tutorial` VALUES ('1', '1', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `addons`
-- ----------------------------
DROP TABLE IF EXISTS `addons`;
CREATE TABLE `addons` (
  `name` varchar(120) NOT NULL DEFAULT '',
  `crc` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Addons';

-- ----------------------------
-- Records of addons
-- ----------------------------
INSERT INTO `addons` VALUES ('Blizzard_AchievementUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ArchaeologyUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ArenaUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_AuctionUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_BarbershopUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_BattlefieldMinimap', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_BindingUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_Calendar', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ClientSavedVariables', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_CombatLog', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_CombatText', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_CompactRaidFrames', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_CUFProfiles', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_DebugTools', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GlyphUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GMChatUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GMSurveyUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GuildBankUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GuildControlUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_GuildUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_InspectUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ItemSocketingUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_LookingForGuildUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_MacroUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_MovePad', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_RaidUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_ReforgingUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_TalentUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_TimeManager', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_TokenUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_TradeSkillUI', '1276933997');
INSERT INTO `addons` VALUES ('Blizzard_TrainerUI', '1276933997');

-- ----------------------------
-- Table structure for `arena_team`
-- ----------------------------
DROP TABLE IF EXISTS `arena_team`;
CREATE TABLE `arena_team` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL,
  `captainGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rating` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `backgroundColor` int(10) unsigned NOT NULL DEFAULT '0',
  `emblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `emblemColor` int(10) unsigned NOT NULL DEFAULT '0',
  `borderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `borderColor` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arena_team
-- ----------------------------

-- ----------------------------
-- Table structure for `arena_team_member`
-- ----------------------------
DROP TABLE IF EXISTS `arena_team_member`;
CREATE TABLE `arena_team_member` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `personalRating` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`,`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arena_team_member
-- ----------------------------

-- ----------------------------
-- Table structure for `auctionhouse`
-- ----------------------------
DROP TABLE IF EXISTS `auctionhouse`;
CREATE TABLE `auctionhouse` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `auctioneerguid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemguid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemowner` int(10) unsigned NOT NULL DEFAULT '0',
  `buyoutprice` int(10) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `buyguid` int(10) unsigned NOT NULL DEFAULT '0',
  `lastbid` int(10) unsigned NOT NULL DEFAULT '0',
  `startbid` int(10) unsigned NOT NULL DEFAULT '0',
  `deposit` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_guid` (`itemguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auctionhouse
-- ----------------------------

-- ----------------------------
-- Table structure for `bugreport`
-- ----------------------------
DROP TABLE IF EXISTS `bugreport`;
CREATE TABLE `bugreport` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` longtext NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Debug System';

-- ----------------------------
-- Records of bugreport
-- ----------------------------

-- ----------------------------
-- Table structure for `channels`
-- ----------------------------
DROP TABLE IF EXISTS `channels`;
CREATE TABLE `channels` (
  `name` varchar(128) NOT NULL,
  `team` int(10) unsigned NOT NULL,
  `announce` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ownership` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `password` varchar(32) DEFAULT NULL,
  `bannedList` text,
  `lastUsed` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`,`team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Channel System';

-- ----------------------------
-- Records of channels
-- ----------------------------

-- ----------------------------
-- Table structure for `characters`
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `account` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `name` varchar(12) NOT NULL DEFAULT '',
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xp` int(10) unsigned NOT NULL DEFAULT '0',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  `playerBytes` int(10) unsigned NOT NULL DEFAULT '0',
  `playerBytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `playerFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0',
  `instance_mode_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `taximask` text NOT NULL,
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `totaltime` int(10) unsigned NOT NULL DEFAULT '0',
  `leveltime` int(10) unsigned NOT NULL DEFAULT '0',
  `rest_bonus` float NOT NULL DEFAULT '0',
  `logout_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `resettalents_cost` int(10) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` int(10) unsigned NOT NULL DEFAULT '0',
  `trans_x` float NOT NULL DEFAULT '0',
  `trans_y` float NOT NULL DEFAULT '0',
  `trans_z` float NOT NULL DEFAULT '0',
  `trans_o` float NOT NULL DEFAULT '0',
  `transguid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extra_flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `petSlotUsed` int(10) DEFAULT NULL,
  `currentPetSlot` int(10) DEFAULT NULL,
  `at_login` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zone` smallint(5) unsigned NOT NULL DEFAULT '0',
  `death_expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `taxi_path` text,
  `totalKills` int(10) unsigned NOT NULL DEFAULT '0',
  `todayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `yesterdayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `chosenTitle` int(10) unsigned NOT NULL DEFAULT '0',
  `watchedFaction` int(10) unsigned NOT NULL DEFAULT '0',
  `drunk` smallint(5) unsigned NOT NULL DEFAULT '0',
  `health` int(10) unsigned NOT NULL DEFAULT '0',
  `power1` int(10) unsigned NOT NULL DEFAULT '0',
  `power2` int(10) unsigned NOT NULL DEFAULT '0',
  `power3` int(10) unsigned NOT NULL DEFAULT '0',
  `power4` int(10) unsigned NOT NULL DEFAULT '0',
  `power5` int(10) unsigned NOT NULL DEFAULT '0',
  `latency` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `speccount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `activespec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exploredZones` longtext,
  `equipmentCache` longtext,
  `knownTitles` longtext,
  `achievementPoints` smallint(5) unsigned NOT NULL DEFAULT '0',
  `actionBars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grantableLevels` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guildId` int(10) unsigned NOT NULL DEFAULT '0',
  `deleteInfos_Account` int(10) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of characters
-- ----------------------------
INSERT INTO `characters` VALUES ('3', '1', 'Test', '1', '4', '1', '1', '0', '0', '34081793', '33554437', '0', '0', '0', '0', '-8949.95', '-132.493', '83.5312', '0', '2 0 0 8 0 0 0 0 0 0 0 0 0 0 ', '0', '1', '70', '70', '1.44444', '1334428289', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '-1', '0', '12', '0', '', '0', '0', '0', '0', '4261216256', '0', '59', '4', '4', '4', '4', '4', '114', '1', '0', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 400 0 0 0 0 ', '0', '0', '0', '0', null, null, null);

-- ----------------------------
-- Table structure for `character_account_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_account_data`;
CREATE TABLE `character_account_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_account_data
-- ----------------------------
INSERT INTO `character_account_data` VALUES ('3', '1', '1334428220', 0x534554206175746F5175657374506F7055707320227601220D0A53455420747261636B656451756573747320227601220D0A53455420747261636B6564416368696576656D656E747320227601220D0A5345542063616D657261536176656444697374616E63652022352E353530303030220D0A5345542063616D65726153617665645069746368202231322E303939393937220D0A534554206D696E696D617053686170657368696674547261636B696E6720227601220D0A5345542072657075746174696F6E73436F6C6C617073656420227601232324220D0A);
INSERT INTO `character_account_data` VALUES ('3', '7', '1334428221', 0x56455253494F4E20350A0A414444454456455253494F4E2031360A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C532033353635313538370A0A434F4C4F52530A53595354454D20323535203235352030204E0A534159203235352032353520323535204E0A5041525459203137302031373020323535204E0A5241494420323535203132372030204E0A4755494C4420363420323535203634204E0A4F46464943455220363420313932203634204E0A59454C4C20323535203634203634204E0A57484953504552203235352031323820323535204E0A574849535045525F464F524549474E203235352031323820323535204E0A574849535045525F494E464F524D203235352031323820323535204E0A454D4F54452032353520313238203634204E0A544558545F454D4F54452032353520313238203634204E0A4D4F4E535445525F534159203235352032353520313539204E0A4D4F4E535445525F5041525459203137302031373020323535204E0A4D4F4E535445525F59454C4C20323535203634203634204E0A4D4F4E535445525F57484953504552203235352031383120323335204E0A4D4F4E535445525F454D4F54452032353520313238203634204E0A4348414E4E454C203235352031393220313932204E0A4348414E4E454C5F4A4F494E203139322031323820313238204E0A4348414E4E454C5F4C45415645203139322031323820313238204E0A4348414E4E454C5F4C495354203139322031323820313238204E0A4348414E4E454C5F4E4F54494345203139322031393220313932204E0A4348414E4E454C5F4E4F544943455F55534552203139322031393220313932204E0A41464B203235352031323820323535204E0A444E44203235352031323820323535204E0A49474E4F5245442032353520302030204E0A534B494C4C20383520383520323535204E0A4C4F4F542030203137302030204E0A4D4F4E455920323535203235352030204E0A4F50454E494E47203132382031323820323535204E0A5452414445534B494C4C53203235352032353520323535204E0A5045545F494E464F203132382031323820323535204E0A434F4D4241545F4D4953435F494E464F203132382031323820323535204E0A434F4D4241545F58505F4741494E203131312031313120323535204E0A434F4D4241545F484F4E4F525F4741494E2032323420323032203130204E0A434F4D4241545F46414354494F4E5F4348414E4745203132382031323820323535204E0A42475F53595354454D5F4E45555452414C2032353520313230203130204E0A42475F53595354454D5F414C4C49414E434520302031373420323339204E0A42475F53595354454D5F484F5244452032353520302030204E0A524149445F4C4541444552203235352037322039204E0A524149445F5741524E494E47203235352037322030204E0A524149445F424F53535F454D4F544520323535203232312030204E0A524149445F424F53535F5748495350455220323535203232312030204E0A46494C54455245442032353520302030204E0A424154544C4547524F554E4420323535203132372030204E0A424154544C4547524F554E445F4C4541444552203235352032313920313833204E0A524553545249435445442032353520302030204E0A424154544C454E4554203235352032353520323535204E0A414348494556454D454E5420323535203235352030204E0A4755494C445F414348494556454D454E5420363420323535203634204E0A4152454E415F504F494E5453203235352032353520323535204E0A50415254595F4C4541444552203131382032303020323535204E0A54415247455449434F4E5320323535203235352030204E0A424E5F5748495350455220302032353520323436204E0A424E5F574849535045525F494E464F524D20302032353520323436204E0A424E5F434F4E564552534154494F4E20302031373720323430204E0A424E5F434F4E564552534154494F4E5F4E4F5449434520302031373720323430204E0A424E5F434F4E564552534154494F4E5F4C49535420302031373720323430204E0A424E5F494E4C494E455F544F4153545F414C455254203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F42524F414443415354203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F42524F4144434153545F494E464F524D203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F434F4E564552534154494F4E203133302031393720323535204E0A434F4D4241545F4755494C445F58505F4741494E203131312031313120323535204E0A43555252454E43592030203137302030204E0A424E5F574849535045525F504C415945525F4F46464C494E4520323535203235352030204E0A4348414E4E454C31203235352031393220313932204E0A4348414E4E454C32203235352031393220313932204E0A4348414E4E454C33203235352031393220313932204E0A4348414E4E454C34203235352031393220313932204E0A4348414E4E454C35203235352031393220313932204E0A4348414E4E454C36203235352031393220313932204E0A4348414E4E454C37203235352031393220313932204E0A4348414E4E454C38203235352031393220313932204E0A4348414E4E454C39203235352031393220313932204E0A4348414E4E454C3130203235352031393220313932204E0A454E440A0A57494E444F5720310A4E414D4520416C6C67656D65696E0A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420310A53484F574E20310A4D455353414745530A53595354454D0A53595354454D5F4E4F4D454E550A5341590A454D4F54450A59454C4C0A574849535045520A50415254590A50415254595F4C45414445520A524149440A524149445F4C45414445520A524149445F5741524E494E470A424154544C4547524F554E440A424154544C4547524F554E445F4C45414445520A4755494C440A4F4646494345520A4D4F4E535445525F5341590A4D4F4E535445525F59454C4C0A4D4F4E535445525F454D4F54450A4D4F4E535445525F574849535045520A4D4F4E535445525F424F53535F454D4F54450A4D4F4E535445525F424F53535F574849535045520A4552524F52530A41464B0A444E440A49474E4F5245440A42475F484F5244450A42475F414C4C49414E43450A42475F4E45555452414C0A434F4D4241545F46414354494F4E5F4348414E47450A534B494C4C0A4C4F4F540A4D4F4E45590A4348414E4E454C0A414348494556454D454E540A4755494C445F414348494556454D454E540A54415247455449434F4E530A424E5F574849535045520A424E5F574849535045525F494E464F524D0A424E5F434F4E564552534154494F4E0A424E5F494E4C494E455F544F4153545F414C4552540A43555252454E43590A424E5F574849535045525F504C415945525F4F46464C494E450A454E440A0A4348414E4E454C530A53756368654E6163684772757070650A454E440A0A5A4F4E454348414E4E454C532033353635313538370A0A454E440A0A57494E444F5720320A4E414D45204B616D70666C6F670A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420320A53484F574E20300A4D455353414745530A4F50454E494E470A5452414445534B494C4C530A5045545F494E464F0A434F4D4241545F58505F4741494E0A434F4D4241545F484F4E4F525F4741494E0A434F4D4241545F4D4953435F494E464F0A434F4D4241545F4755494C445F58505F4741494E0A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720330A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720340A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720350A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720360A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720370A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720380A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720390A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F572031300A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A);

-- ----------------------------
-- Table structure for `character_achievement`
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement`;
CREATE TABLE `character_achievement` (
  `guid` int(10) unsigned NOT NULL,
  `achievement` smallint(5) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_achievement
-- ----------------------------

-- ----------------------------
-- Table structure for `character_achievement_progress`
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement_progress`;
CREATE TABLE `character_achievement_progress` (
  `guid` int(10) unsigned NOT NULL,
  `criteria` smallint(5) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_achievement_progress
-- ----------------------------
INSERT INTO `character_achievement_progress` VALUES ('3', '34', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '35', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '36', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '37', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '38', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '39', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '40', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '41', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '2020', '200', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '2030', '4000', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '2031', '3100', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '2032', '3100', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '2033', '3100', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '2034', '3000', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5018', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5212', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5213', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5214', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5215', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5216', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5217', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5218', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5219', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5220', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5221', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5229', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5230', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5231', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5232', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5233', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5234', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5235', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5236', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5237', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5238', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5301', '7', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5328', '3100', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5329', '3100', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5330', '3100', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5331', '4000', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '5332', '3000', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '8819', '500', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '8820', '500', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '8821', '500', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '8822', '500', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '9598', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '9678', '3100', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '9679', '3000', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '9680', '3100', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '9681', '3100', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '9682', '4000', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '13498', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14022', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14023', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14024', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14025', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14026', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14027', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14028', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14029', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14030', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14031', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14173', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14174', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14175', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14176', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14177', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14178', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14179', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14180', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14181', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14182', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14183', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14516', '200', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14537', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14538', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14539', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14540', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14541', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14542', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14543', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14544', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14545', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14546', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14547', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14548', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14549', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14550', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14551', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14552', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14553', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14554', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14555', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14556', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14557', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14558', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14559', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14560', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14561', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14562', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14563', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14564', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14565', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14566', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14567', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14568', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14569', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14570', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14571', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14572', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14573', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14574', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14575', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14648', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14649', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14650', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14651', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14652', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '14653', '1', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '17456', '3100', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '17462', '3000', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '17463', '500', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '17471', '500', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '17475', '3100', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '17476', '500', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '17480', '3100', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '17481', '500', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '17485', '4000', '1334428219');
INSERT INTO `character_achievement_progress` VALUES ('3', '17508', '200', '1334428219');

-- ----------------------------
-- Table structure for `character_action`
-- ----------------------------
DROP TABLE IF EXISTS `character_action`;
CREATE TABLE `character_action` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `button` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`,`button`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_action
-- ----------------------------

-- ----------------------------
-- Table structure for `character_arena_stats`
-- ----------------------------
DROP TABLE IF EXISTS `character_arena_stats`;
CREATE TABLE `character_arena_stats` (
  `guid` int(10) NOT NULL,
  `slot` tinyint(3) NOT NULL,
  `matchMakerRating` smallint(5) NOT NULL,
  PRIMARY KEY (`guid`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_arena_stats
-- ----------------------------

-- ----------------------------
-- Table structure for `character_aura`
-- ----------------------------
DROP TABLE IF EXISTS `character_aura`;
CREATE TABLE `character_aura` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `effect_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recalculate_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stackcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `amount0` int(11) NOT NULL DEFAULT '0',
  `amount1` int(11) NOT NULL DEFAULT '0',
  `amount2` int(11) NOT NULL DEFAULT '0',
  `base_amount0` int(11) NOT NULL DEFAULT '0',
  `base_amount1` int(11) NOT NULL DEFAULT '0',
  `base_amount2` int(11) NOT NULL DEFAULT '0',
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `remaincharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`caster_guid`,`item_guid`,`spell`,`effect_mask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_aura
-- ----------------------------

-- ----------------------------
-- Table structure for `character_banned`
-- ----------------------------
DROP TABLE IF EXISTS `character_banned`;
CREATE TABLE `character_banned` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bandate` int(10) unsigned NOT NULL DEFAULT '0',
  `unbandate` int(10) unsigned NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ban List';

-- ----------------------------
-- Records of character_banned
-- ----------------------------

-- ----------------------------
-- Table structure for `character_battleground_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_battleground_data`;
CREATE TABLE `character_battleground_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `instanceId` int(10) unsigned NOT NULL COMMENT 'Instance Identifier',
  `team` smallint(5) unsigned NOT NULL,
  `joinX` float NOT NULL DEFAULT '0',
  `joinY` float NOT NULL DEFAULT '0',
  `joinZ` float NOT NULL DEFAULT '0',
  `joinO` float NOT NULL DEFAULT '0',
  `joinMapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `taxiStart` int(10) unsigned NOT NULL DEFAULT '0',
  `taxiEnd` int(10) unsigned NOT NULL DEFAULT '0',
  `mountSpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_battleground_data
-- ----------------------------
INSERT INTO `character_battleground_data` VALUES ('3', '0', '0', '0', '0', '0', '0', '65535', '0', '0', '0');

-- ----------------------------
-- Table structure for `character_battleground_random`
-- ----------------------------
DROP TABLE IF EXISTS `character_battleground_random`;
CREATE TABLE `character_battleground_random` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_battleground_random
-- ----------------------------

-- ----------------------------
-- Table structure for `character_cp_weekcap`
-- ----------------------------
DROP TABLE IF EXISTS `character_cp_weekcap`;
CREATE TABLE `character_cp_weekcap` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `source` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `maxWeekRating` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekCap` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_cp_weekcap
-- ----------------------------
INSERT INTO `character_cp_weekcap` VALUES ('3', '0', '0', '1350');
INSERT INTO `character_cp_weekcap` VALUES ('3', '1', '0', '1649');

-- ----------------------------
-- Table structure for `character_currency`
-- ----------------------------
DROP TABLE IF EXISTS `character_currency`;
CREATE TABLE `character_currency` (
  `guid` int(11) unsigned NOT NULL,
  `currency` smallint(5) unsigned NOT NULL,
  `count` smallint(5) unsigned NOT NULL,
  `thisweek` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_currency
-- ----------------------------

-- ----------------------------
-- Table structure for `character_declinedname`
-- ----------------------------
DROP TABLE IF EXISTS `character_declinedname`;
CREATE TABLE `character_declinedname` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `genitive` varchar(15) NOT NULL DEFAULT '',
  `dative` varchar(15) NOT NULL DEFAULT '',
  `accusative` varchar(15) NOT NULL DEFAULT '',
  `instrumental` varchar(15) NOT NULL DEFAULT '',
  `prepositional` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_declinedname
-- ----------------------------

-- ----------------------------
-- Table structure for `character_equipmentsets`
-- ----------------------------
DROP TABLE IF EXISTS `character_equipmentsets`;
CREATE TABLE `character_equipmentsets` (
  `guid` int(10) NOT NULL DEFAULT '0',
  `setguid` bigint(20) NOT NULL AUTO_INCREMENT,
  `setindex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(31) NOT NULL,
  `iconname` varchar(100) NOT NULL,
  `item0` int(10) unsigned NOT NULL DEFAULT '0',
  `item1` int(10) unsigned NOT NULL DEFAULT '0',
  `item2` int(10) unsigned NOT NULL DEFAULT '0',
  `item3` int(10) unsigned NOT NULL DEFAULT '0',
  `item4` int(10) unsigned NOT NULL DEFAULT '0',
  `item5` int(10) unsigned NOT NULL DEFAULT '0',
  `item6` int(10) unsigned NOT NULL DEFAULT '0',
  `item7` int(10) unsigned NOT NULL DEFAULT '0',
  `item8` int(10) unsigned NOT NULL DEFAULT '0',
  `item9` int(10) unsigned NOT NULL DEFAULT '0',
  `item10` int(10) unsigned NOT NULL DEFAULT '0',
  `item11` int(10) unsigned NOT NULL DEFAULT '0',
  `item12` int(10) unsigned NOT NULL DEFAULT '0',
  `item13` int(10) unsigned NOT NULL DEFAULT '0',
  `item14` int(10) unsigned NOT NULL DEFAULT '0',
  `item15` int(10) unsigned NOT NULL DEFAULT '0',
  `item16` int(10) unsigned NOT NULL DEFAULT '0',
  `item17` int(10) unsigned NOT NULL DEFAULT '0',
  `item18` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`),
  KEY `Idx_setindex` (`setindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_equipmentsets
-- ----------------------------

-- ----------------------------
-- Table structure for `character_gifts`
-- ----------------------------
DROP TABLE IF EXISTS `character_gifts`;
CREATE TABLE `character_gifts` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_gifts
-- ----------------------------

-- ----------------------------
-- Table structure for `character_glyphs`
-- ----------------------------
DROP TABLE IF EXISTS `character_glyphs`;
CREATE TABLE `character_glyphs` (
  `guid` int(10) unsigned NOT NULL,
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `glyph1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `glyph2` smallint(5) unsigned DEFAULT '0',
  `glyph3` smallint(5) unsigned DEFAULT '0',
  `glyph4` smallint(5) unsigned DEFAULT '0',
  `glyph5` smallint(5) unsigned DEFAULT '0',
  `glyph6` smallint(5) unsigned DEFAULT '0',
  `glyph7` smallint(5) unsigned DEFAULT '0',
  `glyph8` smallint(5) unsigned DEFAULT '0',
  `glyph9` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_glyphs
-- ----------------------------
INSERT INTO `character_glyphs` VALUES ('3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `character_homebind`
-- ----------------------------
DROP TABLE IF EXISTS `character_homebind`;
CREATE TABLE `character_homebind` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `zoneId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Zone Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_homebind
-- ----------------------------
INSERT INTO `character_homebind` VALUES ('3', '0', '12', '-8949.95', '-132.493', '83.5312');

-- ----------------------------
-- Table structure for `character_instance`
-- ----------------------------
DROP TABLE IF EXISTS `character_instance`;
CREATE TABLE `character_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_instance
-- ----------------------------

-- ----------------------------
-- Table structure for `character_inventory`
-- ----------------------------
DROP TABLE IF EXISTS `character_inventory`;
CREATE TABLE `character_inventory` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bag` int(10) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Global Unique Identifier',
  PRIMARY KEY (`item`),
  UNIQUE KEY `guid` (`guid`,`bag`,`slot`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_inventory
-- ----------------------------

-- ----------------------------
-- Table structure for `character_pet`
-- ----------------------------
DROP TABLE IF EXISTS `character_pet`;
CREATE TABLE `character_pet` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` int(10) unsigned DEFAULT '0',
  `CreatedBySpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `PetType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `Reactstate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(21) NOT NULL DEFAULT 'Pet',
  `renamed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `curhealth` int(10) unsigned NOT NULL DEFAULT '1',
  `curmana` int(10) unsigned NOT NULL DEFAULT '0',
  `curhappiness` int(10) unsigned NOT NULL DEFAULT '0',
  `savetime` int(10) unsigned NOT NULL DEFAULT '0',
  `abdata` text,
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- ----------------------------
-- Records of character_pet
-- ----------------------------

-- ----------------------------
-- Table structure for `character_pet_declinedname`
-- ----------------------------
DROP TABLE IF EXISTS `character_pet_declinedname`;
CREATE TABLE `character_pet_declinedname` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `genitive` varchar(12) NOT NULL DEFAULT '',
  `dative` varchar(12) NOT NULL DEFAULT '',
  `accusative` varchar(12) NOT NULL DEFAULT '',
  `instrumental` varchar(12) NOT NULL DEFAULT '',
  `prepositional` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `owner_key` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_pet_declinedname
-- ----------------------------

-- ----------------------------
-- Table structure for `character_queststatus`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus`;
CREATE TABLE `character_queststatus` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `explored` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `timer` int(10) unsigned NOT NULL DEFAULT '0',
  `mobcount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `mobcount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `itemcount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `playercount` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus
-- ----------------------------

-- ----------------------------
-- Table structure for `character_queststatus_daily`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_daily`;
CREATE TABLE `character_queststatus_daily` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_daily
-- ----------------------------

-- ----------------------------
-- Table structure for `character_queststatus_rewarded`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_rewarded`;
CREATE TABLE `character_queststatus_rewarded` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_rewarded
-- ----------------------------

-- ----------------------------
-- Table structure for `character_queststatus_weekly`
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_weekly`;
CREATE TABLE `character_queststatus_weekly` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_weekly
-- ----------------------------

-- ----------------------------
-- Table structure for `character_reputation`
-- ----------------------------
DROP TABLE IF EXISTS `character_reputation`;
CREATE TABLE `character_reputation` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `faction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `standing` int(11) NOT NULL DEFAULT '0',
  `flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`faction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_reputation
-- ----------------------------
INSERT INTO `character_reputation` VALUES ('3', '21', '0', '64');
INSERT INTO `character_reputation` VALUES ('3', '46', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '47', '0', '17');
INSERT INTO `character_reputation` VALUES ('3', '54', '0', '17');
INSERT INTO `character_reputation` VALUES ('3', '59', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '67', '0', '14');
INSERT INTO `character_reputation` VALUES ('3', '68', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '69', '0', '17');
INSERT INTO `character_reputation` VALUES ('3', '70', '0', '2');
INSERT INTO `character_reputation` VALUES ('3', '72', '0', '17');
INSERT INTO `character_reputation` VALUES ('3', '76', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '81', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '83', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '86', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '87', '0', '2');
INSERT INTO `character_reputation` VALUES ('3', '92', '0', '2');
INSERT INTO `character_reputation` VALUES ('3', '93', '0', '2');
INSERT INTO `character_reputation` VALUES ('3', '169', '0', '12');
INSERT INTO `character_reputation` VALUES ('3', '270', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '289', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '349', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '369', '0', '64');
INSERT INTO `character_reputation` VALUES ('3', '469', '0', '25');
INSERT INTO `character_reputation` VALUES ('3', '470', '0', '64');
INSERT INTO `character_reputation` VALUES ('3', '471', '0', '20');
INSERT INTO `character_reputation` VALUES ('3', '509', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '510', '0', '2');
INSERT INTO `character_reputation` VALUES ('3', '529', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '530', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '549', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '550', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '551', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '569', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '570', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '571', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '574', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '576', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '577', '0', '64');
INSERT INTO `character_reputation` VALUES ('3', '589', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '609', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '729', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '730', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '749', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '809', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '889', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '890', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '891', '0', '24');
INSERT INTO `character_reputation` VALUES ('3', '892', '0', '14');
INSERT INTO `character_reputation` VALUES ('3', '909', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '910', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '911', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '922', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '930', '0', '17');
INSERT INTO `character_reputation` VALUES ('3', '932', '0', '80');
INSERT INTO `character_reputation` VALUES ('3', '933', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '934', '0', '80');
INSERT INTO `character_reputation` VALUES ('3', '935', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '936', '0', '28');
INSERT INTO `character_reputation` VALUES ('3', '941', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '942', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '946', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '947', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '948', '0', '8');
INSERT INTO `character_reputation` VALUES ('3', '949', '0', '24');
INSERT INTO `character_reputation` VALUES ('3', '952', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '967', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '970', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '978', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '980', '0', '24');
INSERT INTO `character_reputation` VALUES ('3', '989', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '990', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1005', '0', '20');
INSERT INTO `character_reputation` VALUES ('3', '1011', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1012', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1015', '0', '2');
INSERT INTO `character_reputation` VALUES ('3', '1031', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1037', '0', '136');
INSERT INTO `character_reputation` VALUES ('3', '1038', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1050', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1052', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '1064', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '1067', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '1068', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1073', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1077', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1082', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '1085', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '1090', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1091', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1094', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1097', '0', '12');
INSERT INTO `character_reputation` VALUES ('3', '1098', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1104', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1105', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1106', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1117', '0', '12');
INSERT INTO `character_reputation` VALUES ('3', '1118', '0', '12');
INSERT INTO `character_reputation` VALUES ('3', '1119', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '1124', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '1126', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1133', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '1134', '0', '17');
INSERT INTO `character_reputation` VALUES ('3', '1135', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1136', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '1137', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '1154', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '1155', '0', '4');
INSERT INTO `character_reputation` VALUES ('3', '1156', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1158', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1162', '0', '8');
INSERT INTO `character_reputation` VALUES ('3', '1163', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '1166', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '1167', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '1168', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1169', '0', '28');
INSERT INTO `character_reputation` VALUES ('3', '1171', '0', '64');
INSERT INTO `character_reputation` VALUES ('3', '1172', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '1173', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1174', '0', '16');
INSERT INTO `character_reputation` VALUES ('3', '1177', '0', '0');
INSERT INTO `character_reputation` VALUES ('3', '1178', '0', '6');
INSERT INTO `character_reputation` VALUES ('3', '1181', '0', '20');
INSERT INTO `character_reputation` VALUES ('3', '1204', '0', '16');

-- ----------------------------
-- Table structure for `character_skills`
-- ----------------------------
DROP TABLE IF EXISTS `character_skills`;
CREATE TABLE `character_skills` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` smallint(5) unsigned NOT NULL,
  `value` smallint(5) unsigned NOT NULL,
  `max` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_skills
-- ----------------------------

-- ----------------------------
-- Table structure for `character_social`
-- ----------------------------
DROP TABLE IF EXISTS `character_social`;
CREATE TABLE `character_social` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `friend` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Flags',
  `note` varchar(48) NOT NULL DEFAULT '' COMMENT 'Friend Note',
  PRIMARY KEY (`guid`,`friend`,`flags`),
  KEY `friend` (`friend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_social
-- ----------------------------

-- ----------------------------
-- Table structure for `character_spell`
-- ----------------------------
DROP TABLE IF EXISTS `character_spell`;
CREATE TABLE `character_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_spell
-- ----------------------------

-- ----------------------------
-- Table structure for `character_spell_cooldown`
-- ----------------------------
DROP TABLE IF EXISTS `character_spell_cooldown`;
CREATE TABLE `character_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_spell_cooldown
-- ----------------------------

-- ----------------------------
-- Table structure for `character_stats`
-- ----------------------------
DROP TABLE IF EXISTS `character_stats`;
CREATE TABLE `character_stats` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower1` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower2` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower3` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower4` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower5` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower6` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower7` int(10) unsigned NOT NULL DEFAULT '0',
  `strength` int(10) unsigned NOT NULL DEFAULT '0',
  `agility` int(10) unsigned NOT NULL DEFAULT '0',
  `stamina` int(10) unsigned NOT NULL DEFAULT '0',
  `intellect` int(10) unsigned NOT NULL DEFAULT '0',
  `spirit` int(10) unsigned NOT NULL DEFAULT '0',
  `armor` int(10) unsigned NOT NULL DEFAULT '0',
  `resHoly` int(10) unsigned NOT NULL DEFAULT '0',
  `resFire` int(10) unsigned NOT NULL DEFAULT '0',
  `resNature` int(10) unsigned NOT NULL DEFAULT '0',
  `resFrost` int(10) unsigned NOT NULL DEFAULT '0',
  `resShadow` int(10) unsigned NOT NULL DEFAULT '0',
  `resArcane` int(10) unsigned NOT NULL DEFAULT '0',
  `blockPct` float unsigned NOT NULL DEFAULT '0',
  `dodgePct` float unsigned NOT NULL DEFAULT '0',
  `parryPct` float unsigned NOT NULL DEFAULT '0',
  `critPct` float unsigned NOT NULL DEFAULT '0',
  `rangedCritPct` float unsigned NOT NULL DEFAULT '0',
  `spellCritPct` float unsigned NOT NULL DEFAULT '0',
  `attackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `rangedAttackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `spellPower` int(10) unsigned NOT NULL DEFAULT '0',
  `resilience` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_stats
-- ----------------------------

-- ----------------------------
-- Table structure for `character_talent`
-- ----------------------------
DROP TABLE IF EXISTS `character_talent`;
CREATE TABLE `character_talent` (
  `guid` int(10) unsigned NOT NULL,
  `spell` mediumint(8) unsigned NOT NULL,
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_talent
-- ----------------------------

-- ----------------------------
-- Table structure for `character_talentbranchspec`
-- ----------------------------
DROP TABLE IF EXISTS `character_talentbranchspec`;
CREATE TABLE `character_talentbranchspec` (
  `guid` int(11) unsigned NOT NULL DEFAULT '0',
  `talentSpec` int(11) unsigned NOT NULL DEFAULT '0',
  `talentBranchSpec` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`talentSpec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_talentbranchspec
-- ----------------------------
INSERT INTO `character_talentbranchspec` VALUES ('3', '0', '0');

-- ----------------------------
-- Table structure for `corpse`
-- ----------------------------
DROP TABLE IF EXISTS `corpse`;
CREATE TABLE `corpse` (
  `corpseGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `phaseMask` smallint(5) unsigned NOT NULL DEFAULT '1',
  `displayId` int(10) unsigned NOT NULL DEFAULT '0',
  `itemCache` text NOT NULL,
  `bytes1` int(10) unsigned NOT NULL DEFAULT '0',
  `bytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dynFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `corpseType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`corpseGuid`),
  KEY `idx_type` (`corpseType`),
  KEY `idx_instance` (`instanceId`),
  KEY `idx_player` (`guid`),
  KEY `idx_time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Death System';

-- ----------------------------
-- Records of corpse
-- ----------------------------

-- ----------------------------
-- Table structure for `creature_respawn`
-- ----------------------------
DROP TABLE IF EXISTS `creature_respawn`;
CREATE TABLE `creature_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

-- ----------------------------
-- Records of creature_respawn
-- ----------------------------

-- ----------------------------
-- Table structure for `gameobject_respawn`
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_respawn`;
CREATE TABLE `gameobject_respawn` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

-- ----------------------------
-- Records of gameobject_respawn
-- ----------------------------

-- ----------------------------
-- Table structure for `game_event_condition_save`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_condition_save`;
CREATE TABLE `game_event_condition_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `condition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `done` float DEFAULT '0',
  PRIMARY KEY (`eventEntry`,`condition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_event_condition_save
-- ----------------------------

-- ----------------------------
-- Table structure for `game_event_save`
-- ----------------------------
DROP TABLE IF EXISTS `game_event_save`;
CREATE TABLE `game_event_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `next_start` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_event_save
-- ----------------------------

-- ----------------------------
-- Table structure for `gm_subsurveys`
-- ----------------------------
DROP TABLE IF EXISTS `gm_subsurveys`;
CREATE TABLE `gm_subsurveys` (
  `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subsurveyId` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  PRIMARY KEY (`surveyId`,`subsurveyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of gm_subsurveys
-- ----------------------------

-- ----------------------------
-- Table structure for `gm_surveys`
-- ----------------------------
DROP TABLE IF EXISTS `gm_surveys`;
CREATE TABLE `gm_surveys` (
  `surveyId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `mainSurvey` int(10) unsigned NOT NULL DEFAULT '0',
  `overallComment` longtext NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`surveyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of gm_surveys
-- ----------------------------

-- ----------------------------
-- Table structure for `gm_tickets`
-- ----------------------------
DROP TABLE IF EXISTS `gm_tickets`;
CREATE TABLE `gm_tickets` (
  `ticketId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier of ticket creator',
  `name` varchar(12) NOT NULL COMMENT 'Name of ticket creator',
  `message` text NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `lastModifiedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `closedBy` int(10) NOT NULL DEFAULT '0',
  `assignedTo` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  `completed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `escalated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `viewed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ticketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of gm_tickets
-- ----------------------------

-- ----------------------------
-- Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `guid` int(10) unsigned NOT NULL,
  `leaderGuid` int(10) unsigned NOT NULL,
  `lootMethod` tinyint(3) unsigned NOT NULL,
  `looterGuid` int(10) unsigned NOT NULL,
  `lootThreshold` tinyint(3) unsigned NOT NULL,
  `icon1` int(10) unsigned NOT NULL,
  `icon2` int(10) unsigned NOT NULL,
  `icon3` int(10) unsigned NOT NULL,
  `icon4` int(10) unsigned NOT NULL,
  `icon5` int(10) unsigned NOT NULL,
  `icon6` int(10) unsigned NOT NULL,
  `icon7` int(10) unsigned NOT NULL,
  `icon8` int(10) unsigned NOT NULL,
  `groupType` tinyint(3) unsigned NOT NULL,
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `raiddifficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `leaderGuid` (`leaderGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

-- ----------------------------
-- Records of groups
-- ----------------------------

-- ----------------------------
-- Table structure for `group_instance`
-- ----------------------------
DROP TABLE IF EXISTS `group_instance`;
CREATE TABLE `group_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_instance
-- ----------------------------

-- ----------------------------
-- Table structure for `group_member`
-- ----------------------------
DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member` (
  `guid` int(10) unsigned NOT NULL,
  `memberGuid` int(10) unsigned NOT NULL,
  `memberFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subgroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `roles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`memberGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

-- ----------------------------
-- Records of group_member
-- ----------------------------

-- ----------------------------
-- Table structure for `guild`
-- ----------------------------
DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `leaderguid` int(10) unsigned NOT NULL DEFAULT '0',
  `EmblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EmblemColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BackgroundColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `motd` varchar(128) NOT NULL DEFAULT '',
  `createdate` int(10) unsigned NOT NULL DEFAULT '0',
  `BankMoney` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of guild
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_bank_eventlog`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_eventlog`;
CREATE TABLE `guild_bank_eventlog` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild bank TabId',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemOrMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemStackCount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DestTabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Destination Tab Id',
  `TimeStamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`,`TabId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_eventlog
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_bank_item`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_item`;
CREATE TABLE `guild_bank_item` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SlotId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`SlotId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_item_guid` (`item_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_item
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_bank_right`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_right`;
CREATE TABLE `guild_bank_right` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gbright` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SlotPerDay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`rid`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_right
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_bank_tab`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_tab`;
CREATE TABLE `guild_bank_tab` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TabName` varchar(16) NOT NULL DEFAULT '',
  `TabIcon` varchar(100) NOT NULL DEFAULT '',
  `TabText` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`guildid`,`TabId`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_tab
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_eventlog`
-- ----------------------------
DROP TABLE IF EXISTS `guild_eventlog`;
CREATE TABLE `guild_eventlog` (
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) unsigned NOT NULL COMMENT 'Event type',
  `PlayerGuid1` int(10) unsigned NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` int(10) unsigned NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint(3) unsigned NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` int(10) unsigned NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `Idx_PlayerGuid1` (`PlayerGuid1`),
  KEY `Idx_PlayerGuid2` (`PlayerGuid2`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Eventlog';

-- ----------------------------
-- Records of guild_eventlog
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_member`
-- ----------------------------
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE `guild_member` (
  `guildid` int(10) unsigned NOT NULL COMMENT 'Guild Identificator',
  `guid` int(10) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `pnote` varchar(31) NOT NULL DEFAULT '',
  `offnote` varchar(31) NOT NULL DEFAULT '',
  `BankResetTimeMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab0` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab0` int(10) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab1` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab1` int(10) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab2` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab2` int(10) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab3` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab3` int(10) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab4` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab4` int(10) unsigned NOT NULL DEFAULT '0',
  `BankResetTimeTab5` int(10) unsigned NOT NULL DEFAULT '0',
  `BankRemSlotsTab5` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `guid_key` (`guid`),
  KEY `guildid_key` (`guildid`),
  KEY `guildid_rank_key` (`guildid`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of guild_member
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_rank`
-- ----------------------------
DROP TABLE IF EXISTS `guild_rank`;
CREATE TABLE `guild_rank` (
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL,
  `rname` varchar(20) NOT NULL DEFAULT '',
  `rights` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BankMoneyPerDay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`rid`),
  KEY `Idx_rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of guild_rank
-- ----------------------------

-- ----------------------------
-- Table structure for `instance`
-- ----------------------------
DROP TABLE IF EXISTS `instance`;
CREATE TABLE `instance` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `completedEncounters` int(10) unsigned NOT NULL DEFAULT '0',
  `data` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `map` (`map`),
  KEY `resettime` (`resettime`),
  KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instance
-- ----------------------------

-- ----------------------------
-- Table structure for `instance_reset`
-- ----------------------------
DROP TABLE IF EXISTS `instance_reset`;
CREATE TABLE `instance_reset` (
  `mapid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mapid`,`difficulty`),
  KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instance_reset
-- ----------------------------
INSERT INTO `instance_reset` VALUES ('33', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('36', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('249', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('249', '1', '1334980800');
INSERT INTO `instance_reset` VALUES ('269', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('409', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('469', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('509', '0', '1334635200');
INSERT INTO `instance_reset` VALUES ('531', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('532', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('533', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('533', '1', '1334980800');
INSERT INTO `instance_reset` VALUES ('534', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('540', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('542', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('543', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('544', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('545', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('546', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('547', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('548', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('550', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('552', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('553', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('554', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('555', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('556', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('557', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('558', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('560', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('564', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('565', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('568', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('574', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('575', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('576', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('578', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('580', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('585', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('595', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('598', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('599', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('600', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('601', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('602', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('603', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('603', '1', '1334980800');
INSERT INTO `instance_reset` VALUES ('604', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('608', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('615', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('615', '1', '1334980800');
INSERT INTO `instance_reset` VALUES ('616', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('616', '1', '1334980800');
INSERT INTO `instance_reset` VALUES ('619', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('624', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('624', '1', '1334980800');
INSERT INTO `instance_reset` VALUES ('631', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('631', '1', '1334980800');
INSERT INTO `instance_reset` VALUES ('631', '2', '1334980800');
INSERT INTO `instance_reset` VALUES ('631', '3', '1334980800');
INSERT INTO `instance_reset` VALUES ('632', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('643', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('644', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('645', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('649', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('649', '1', '1334980800');
INSERT INTO `instance_reset` VALUES ('649', '2', '1334980800');
INSERT INTO `instance_reset` VALUES ('649', '3', '1334980800');
INSERT INTO `instance_reset` VALUES ('650', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('657', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('658', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('668', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('669', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('669', '1', '1334980800');
INSERT INTO `instance_reset` VALUES ('669', '2', '1334980800');
INSERT INTO `instance_reset` VALUES ('669', '3', '1334980800');
INSERT INTO `instance_reset` VALUES ('670', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('671', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('671', '1', '1334980800');
INSERT INTO `instance_reset` VALUES ('671', '2', '1334980800');
INSERT INTO `instance_reset` VALUES ('671', '3', '1334980800');
INSERT INTO `instance_reset` VALUES ('720', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('720', '1', '1334980800');
INSERT INTO `instance_reset` VALUES ('720', '2', '1334980800');
INSERT INTO `instance_reset` VALUES ('720', '3', '1334980800');
INSERT INTO `instance_reset` VALUES ('724', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('724', '1', '1334980800');
INSERT INTO `instance_reset` VALUES ('724', '2', '1334980800');
INSERT INTO `instance_reset` VALUES ('724', '3', '1334980800');
INSERT INTO `instance_reset` VALUES ('725', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('754', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('754', '1', '1334980800');
INSERT INTO `instance_reset` VALUES ('754', '2', '1334980800');
INSERT INTO `instance_reset` VALUES ('754', '3', '1334980800');
INSERT INTO `instance_reset` VALUES ('755', '1', '1334462400');
INSERT INTO `instance_reset` VALUES ('757', '0', '1334980800');
INSERT INTO `instance_reset` VALUES ('757', '1', '1334980800');
INSERT INTO `instance_reset` VALUES ('859', '1', '1334462400');

-- ----------------------------
-- Table structure for `item_instance`
-- ----------------------------
DROP TABLE IF EXISTS `item_instance`;
CREATE TABLE `item_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemEntry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `owner_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `creatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `giftCreatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `duration` int(10) NOT NULL DEFAULT '0',
  `charges` tinytext,
  `flags` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enchantments` text NOT NULL,
  `randomPropertyId` smallint(5) NOT NULL DEFAULT '0',
  `durability` smallint(5) unsigned NOT NULL DEFAULT '0',
  `playedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `text` text,
  PRIMARY KEY (`guid`),
  KEY `idx_owner_guid` (`owner_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item System';

-- ----------------------------
-- Records of item_instance
-- ----------------------------

-- ----------------------------
-- Table structure for `item_refund_instance`
-- ----------------------------
DROP TABLE IF EXISTS `item_refund_instance`;
CREATE TABLE `item_refund_instance` (
  `item_guid` int(10) unsigned NOT NULL COMMENT 'Item GUID',
  `player_guid` int(10) unsigned NOT NULL COMMENT 'Player GUID',
  `paidMoney` int(10) unsigned NOT NULL DEFAULT '0',
  `paidExtendedCost` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`,`player_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

-- ----------------------------
-- Records of item_refund_instance
-- ----------------------------

-- ----------------------------
-- Table structure for `item_soulbound_trade_data`
-- ----------------------------
DROP TABLE IF EXISTS `item_soulbound_trade_data`;
CREATE TABLE `item_soulbound_trade_data` (
  `itemGuid` int(10) unsigned NOT NULL COMMENT 'Item GUID',
  `allowedPlayers` text NOT NULL COMMENT 'Space separated GUID list of players who can receive this item in trade',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

-- ----------------------------
-- Records of item_soulbound_trade_data
-- ----------------------------

-- ----------------------------
-- Table structure for `lag_reports`
-- ----------------------------
DROP TABLE IF EXISTS `lag_reports`;
CREATE TABLE `lag_reports` (
  `reportId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `lagType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`reportId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of lag_reports
-- ----------------------------

-- ----------------------------
-- Table structure for `mail`
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `messageType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stationery` tinyint(3) NOT NULL DEFAULT '41',
  `mailTemplateId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sender` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `subject` longtext,
  `body` longtext,
  `has_items` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `deliver_time` int(10) unsigned NOT NULL DEFAULT '0',
  `money` int(10) unsigned NOT NULL DEFAULT '0',
  `cod` int(10) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_receiver` (`receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mail System';

-- ----------------------------
-- Records of mail
-- ----------------------------

-- ----------------------------
-- Table structure for `mail_items`
-- ----------------------------
DROP TABLE IF EXISTS `mail_items`;
CREATE TABLE `mail_items` (
  `mail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` int(10) unsigned NOT NULL DEFAULT '0',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`mail_id`,`item_guid`),
  KEY `idx_receiver` (`receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mail_items
-- ----------------------------

-- ----------------------------
-- Table structure for `petition`
-- ----------------------------
DROP TABLE IF EXISTS `petition`;
CREATE TABLE `petition` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned DEFAULT '0',
  `name` varchar(24) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ownerguid`,`type`),
  UNIQUE KEY `index_ownerguid_petitionguid` (`ownerguid`,`petitionguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of petition
-- ----------------------------

-- ----------------------------
-- Table structure for `petition_sign`
-- ----------------------------
DROP TABLE IF EXISTS `petition_sign`;
CREATE TABLE `petition_sign` (
  `ownerguid` int(10) unsigned NOT NULL,
  `petitionguid` int(10) unsigned NOT NULL DEFAULT '0',
  `playerguid` int(10) unsigned NOT NULL DEFAULT '0',
  `player_account` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petitionguid`,`playerguid`),
  KEY `Idx_playerguid` (`playerguid`),
  KEY `Idx_ownerguid` (`ownerguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of petition_sign
-- ----------------------------

-- ----------------------------
-- Table structure for `pet_aura`
-- ----------------------------
DROP TABLE IF EXISTS `pet_aura`;
CREATE TABLE `pet_aura` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `effect_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recalculate_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stackcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `amount0` mediumint(8) NOT NULL,
  `amount1` mediumint(8) NOT NULL,
  `amount2` mediumint(8) NOT NULL,
  `base_amount0` mediumint(8) NOT NULL,
  `base_amount1` mediumint(8) NOT NULL,
  `base_amount2` mediumint(8) NOT NULL,
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `remaincharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`effect_mask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- ----------------------------
-- Records of pet_aura
-- ----------------------------

-- ----------------------------
-- Table structure for `pet_spell`
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell`;
CREATE TABLE `pet_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- ----------------------------
-- Records of pet_spell
-- ----------------------------

-- ----------------------------
-- Table structure for `pet_spell_cooldown`
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell_cooldown`;
CREATE TABLE `pet_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_spell_cooldown
-- ----------------------------

-- ----------------------------
-- Table structure for `pool_quest_save`
-- ----------------------------
DROP TABLE IF EXISTS `pool_quest_save`;
CREATE TABLE `pool_quest_save` (
  `pool_id` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pool_id`,`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pool_quest_save
-- ----------------------------

-- ----------------------------
-- Table structure for `reserved_name`
-- ----------------------------
DROP TABLE IF EXISTS `reserved_name`;
CREATE TABLE `reserved_name` (
  `name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player Reserved Names';

-- ----------------------------
-- Records of reserved_name
-- ----------------------------

-- ----------------------------
-- Table structure for `worldstates`
-- ----------------------------
DROP TABLE IF EXISTS `worldstates`;
CREATE TABLE `worldstates` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` tinytext,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Saves';

-- ----------------------------
-- Records of worldstates
-- ----------------------------
INSERT INTO `worldstates` VALUES ('20002', '1335021953', null);
INSERT INTO `worldstates` VALUES ('20003', '1334462400', null);
INSERT INTO `worldstates` VALUES ('20004', '1335021953', null);
