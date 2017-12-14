/*
Navicat MySQL Data Transfer

Source Server         : myname
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : list

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-12-14 09:06:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for createorders
-- ----------------------------
DROP TABLE IF EXISTS `createorders`;
CREATE TABLE `createorders` (
  `ordernumber` int(11) NOT NULL,
  `starttime` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `personnumber` int(11) DEFAULT NULL,
  `information` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `myname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ordernumber`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of createorders
-- ----------------------------
INSERT INTO `createorders` VALUES ('80017457', '出发日期：2017-12-19', '【温泉】惠州龙门大观园温泉2/3天＊直通车＊', '1', '隔壁老王13378564778', '399.00', '4', 'src/view/details/img/hz1.jpg', '小明明');
INSERT INTO `createorders` VALUES ('800012151', '出发日期：2017-12-16', '【典·全景】海南、三亚、海口、双飞4天＊皇牌特惠＊＜天涯海角，蜈支洲早机升级＞', '1', '隔壁老王13378564778', '25.00', '1', 'src/view/details/img/mz1.jpg', '小明明');
INSERT INTO `createorders` VALUES ('80009297', '出发日期：2017-12-16', '＜超值豪华，国际连锁酒店，GA鹰航＞', '1', '隔壁老王13378564778', '3899.00', '1', 'src/view/details/img/bld1.jpg', '小明明');
INSERT INTO `createorders` VALUES ('80014715', '出发日期：2017-12-16', '＊＜熹乐纯＞【典·全景】江西、南昌、九江、上饶、高铁5天＊高庐婺三＊冬韵庐山＊＜滕王阁，庐山，婺源，三清山，景德镇＞', '1', '隔壁老王13378564778', '499.00', '1', 'src/view/details/img/qy1.jpg', '小明明');
INSERT INTO `createorders` VALUES ('80014734', '出发日期：2017-12-16', '＊大侠谷＊一票通玩＊机动游戏＊', '1', '谭梁浩1231313131', '219.00', '1', 'src/view/details/img/sz1.jpg', '谭梁浩');
INSERT INTO `createorders` VALUES ('80017456', '出发日期：2017-12-19', '【典·全景】湖南、张家界、凤凰古城、双飞5天＊直飞凤凰＊挑战玻璃桥＊＜天门山，大峡谷＞', '1', '大乔1231231', '399.00', '1', 'src/view/details/img/hz1.jpg', '小明明');
INSERT INTO `createorders` VALUES ('80025146', '出发日期：2017-12-19', '＜简朴自然，舒适悠闲，快艇＞', '1', '李四12313', '6999.00', '0', 'src/view/details/img/mrdf1.jpg', '李四');
