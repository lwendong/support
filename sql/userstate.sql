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

 Date: 11/02/2019 09:31:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for userstate
-- ----------------------------
DROP TABLE IF EXISTS `userstate`;
CREATE TABLE `userstate`  (
  `C_ID` int(11) DEFAULT NULL COMMENT '用户状态id',
  `C_Name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户状态名字'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userstate
-- ----------------------------
INSERT INTO `userstate` VALUES (0, '正常');
INSERT INTO `userstate` VALUES (1, '已登录');
INSERT INTO `userstate` VALUES (2, '已注销');
INSERT INTO `userstate` VALUES (3, '违规封停');

SET FOREIGN_KEY_CHECKS = 1;
