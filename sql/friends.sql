/*
 Navicat Premium Data Transfer

 Source Server         : MarainDB
 Source Server Type    : MySQL
 Source Server Version : 100312
 Source Host           : localhost:3306
 Source Schema         : im

 Target Server Type    : MySQL
 Target Server Version : 100312
 File Encoding         : 65001

 Date: 11/02/2019 09:31:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for friends
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends`  (
  `C_ID` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `C_FriendId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '朋友id',
  `C_UserId` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '自己的id',
  `C_Name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `C_FriendType` int(11) DEFAULT NULL COMMENT '好友类型',
  `C_PySzm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名字拼音首字母',
  PRIMARY KEY (`C_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of friends
-- ----------------------------
INSERT INTO `friends` VALUES ('1', '51880c4c032c493788b6c3b9f7372926', 'bfbebc9b1d1b4c56b664cad2cd9e7efb', '测试', 1, 'C');
INSERT INTO `friends` VALUES ('2', 'e4b9f4cb601b42db99864e72aeef18fa', 'bfbebc9b1d1b4c56b664cad2cd9e7efb', '啊啊啊', 1, 'A');
INSERT INTO `friends` VALUES ('3', '8dd03cd5f06b40d5940375acfb89637d', 'bfbebc9b1d1b4c56b664cad2cd9e7efb', 'khdsjkfh', 1, 'D');
INSERT INTO `friends` VALUES ('4', '9e648201b59d4b2dbda3deb3822a2797', 'bfbebc9b1d1b4c56b664cad2cd9e7efb', '啊', 1, 'C');

SET FOREIGN_KEY_CHECKS = 1;
