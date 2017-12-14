/*
Navicat MySQL Data Transfer

Source Server         : myname
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : list

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-12-14 09:06:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for facehotel
-- ----------------------------
DROP TABLE IF EXISTS `facehotel`;
CREATE TABLE `facehotel` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pirce` varchar(255) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `star` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `add` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of facehotel
-- ----------------------------
INSERT INTO `facehotel` VALUES ('3', '如家酒店', '1300', '广州白云区嘉禾万岗', '三星经济', '广州', 'src/img/d3.jpg');
INSERT INTO `facehotel` VALUES ('4', '七天酒店', '3200', '上海市杨浦区邯郸路220号', '三星豪华', '上海', 'src/img/d4.jpg');
INSERT INTO `facehotel` VALUES ('5', '广州四季酒店', '1800', '广东省广州市番禺区天河南一路', '四星豪华', '广州', 'src/img/d5.jpg');
INSERT INTO `facehotel` VALUES ('6', '香港旺角酒店', '1500', '旺角', '五星超豪华', '香港', 'src/img/d6.jpg');
INSERT INTO `facehotel` VALUES ('7', '天蓝酒店', '2000', '上海浦东广场', '五星豪华', '上海', 'src/img/d7.jpg');
INSERT INTO `facehotel` VALUES ('8', '八天酒店', '3000', '上海市杨浦区邯郸路210号', '三星豪华', '上海', 'src/img/d8.jpg');
INSERT INTO `facehotel` VALUES ('9', '广州天气酒店', '750', '广东体育西路东路', '四星豪华', '广州', 'src/img/d9.jpg');
INSERT INTO `facehotel` VALUES ('10', '香港铜锣湾酒店', '1500', '旺角', '五星超豪华', '香港', 'src/img/d10.jpg');
INSERT INTO `facehotel` VALUES ('11', '天青酒店', '2000', '上海浦东广场', '五星豪华', '上海', 'src/img/d11.jpg');
INSERT INTO `facehotel` VALUES ('12', '七日酒店', '300', '静安区秣陵路303号', '三星豪华', '上海', 'src/img/d4.jpg');
INSERT INTO `facehotel` VALUES ('13', '广州四方酒店', '600', '广东体育西路', '四星豪华', '广州', 'src/img/d5.jpg');
INSERT INTO `facehotel` VALUES ('14', '香港九龙酒店', '1500', '旺角', '五星超豪华', '香港', 'src/img/d6.jpg');
INSERT INTO `facehotel` VALUES ('15', '天狂酒店', '2000', '上海浦东广场', '五星豪华', '上海', 'src/img/d7.jpg');
INSERT INTO `facehotel` VALUES ('16', '七阵酒店', '2300', '广东省广州市天河区天河南一路', '三星豪华', '上海', 'src/img/d8.jpg');
INSERT INTO `facehotel` VALUES ('17', '广州四欧酒店', '2300', '广东体育西路', '四星豪华', '广州', 'src/img/d9.jpg');
INSERT INTO `facehotel` VALUES ('18', '香港陆港酒店', '1500', '旺角', '五星超豪华', '香港', 'src/img/d10.jpg');
INSERT INTO `facehotel` VALUES ('19', '天青酒店', '2000', '上海浦东广场', '五星豪华', '上海', 'src/img/d6.jpg');
