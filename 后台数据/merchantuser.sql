/*
Navicat MySQL Data Transfer

Source Server         : myname
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : list

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-12-14 09:06:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for merchantuser
-- ----------------------------
DROP TABLE IF EXISTS `merchantuser`;
CREATE TABLE `merchantuser` (
  `indexId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`indexId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchantuser
-- ----------------------------
INSERT INTO `merchantuser` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-12-11 20:16:36', '2017-12-11 20:16:36');
INSERT INTO `merchantuser` VALUES ('2', 'admin2', 'c84258e9c39059a89ab77d846ddab909', '2017-12-11 20:16:39', '2017-12-11 20:16:39');
