/*
Navicat MySQL Data Transfer

Source Server         : myname
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : list

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-12-14 09:06:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1', '小明', '111', null, null, null);
INSERT INTO `students` VALUES ('2', '小花', '222', null, null, null);
INSERT INTO `students` VALUES ('3', '大华', '333', null, null, null);
INSERT INTO `students` VALUES ('4', '翠花', '555', null, null, null);
INSERT INTO `students` VALUES ('6', '大梦', '1011', null, null, null);
INSERT INTO `students` VALUES ('10', '大佬', '123', null, null, null);
INSERT INTO `students` VALUES ('9', '大名', '123', null, null, null);
INSERT INTO `students` VALUES ('11', '小明明', '123', '大乔', '1231231', '12313123123');
INSERT INTO `students` VALUES ('12', '谭梁浩', '1234', '谭梁浩', '1231313131', '832183173@qq.com');
INSERT INTO `students` VALUES ('13', '李四', '123', '李四', '12313', '132131');
