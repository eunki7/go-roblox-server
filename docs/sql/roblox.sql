/*
Navicat MySQL Data Transfer

Source Database       : roblox

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for roblox_article
-- ----------------------------
DROP TABLE IF EXISTS `roblox_article`;
CREATE TABLE `roblox_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(10) unsigned DEFAULT '0' COMMENT 'ID',
  `title` varchar(100) DEFAULT '' COMMENT 'TITLE',
  `desc` varchar(255) DEFAULT '' COMMENT 'DESCRIPTION',
  `content` text COMMENT 'Content',
  `cover_image_url` varchar(255) DEFAULT '' COMMENT 'COVER IMAGE',
  `created_on` int(10) unsigned DEFAULT '0' COMMENT 'CREATE DATE',
  `created_by` varchar(100) DEFAULT '' COMMENT 'CREATOR',
  `modified_on` int(10) unsigned DEFAULT '0' COMMENT 'MODIFY DATE',
  `modified_by` varchar(255) DEFAULT '' COMMENT 'MODIFIER',
  `deleted_on` int(10) unsigned DEFAULT '0',
  `state` tinyint(3) unsigned DEFAULT '1' COMMENT 'STATE',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ENGINE';

-- ----------------------------
-- Table structure for roblox_auth
-- ----------------------------
DROP TABLE IF EXISTS `roblox_auth`;
CREATE TABLE `roblox_auth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT '' COMMENT 'USER NAME',
  `password` varchar(50) DEFAULT '' COMMENT 'PASSWORD',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `roblox_auth` (`id`, `username`, `password`) VALUES ('1', 'test', 'test123');

-- ----------------------------
-- Table structure for roblox_tag
-- ----------------------------
DROP TABLE IF EXISTS `roblox_tag`;
CREATE TABLE `roblox_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT 'USER NAME',
  `created_on` int(10) unsigned DEFAULT '0' COMMENT 'CREATE DATE',
  `created_by` varchar(100) DEFAULT '' COMMENT 'CREATOR',
  `modified_on` int(10) unsigned DEFAULT '0' COMMENT 'MODIFY DATE',
  `modified_by` varchar(100) DEFAULT '' COMMENT 'MODIFIER',
  `deleted_on` int(10) unsigned DEFAULT '0' COMMENT 'DELETED',
  `state` tinyint(3) unsigned DEFAULT '1' COMMENT 'STATE',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ENGINE';

