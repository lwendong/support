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

 Date: 11/02/2019 13:11:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `C_ID` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键 id',
  `C_PostMessages` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '消息内容',
  `N_State` int(11) DEFAULT NULL COMMENT '接受状态',
  `DT_Time` datetime(0) DEFAULT NULL COMMENT '发送时间',
  `N_MessagesType` int(11) DEFAULT NULL COMMENT '消息类型',
  `C_FromUserID` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发送者id',
  `N_ToUserID` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '接受者id',
  PRIMARY KEY (`C_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES ('c4d2ea407ec24f3ebaf9f2751386247c', NULL, 0, '2019-02-11 13:08:54', 0, 'bfbebc9b1d1b4c56b664cad2cd9e7efb', '51880c4c032c493788b6c3b9f7372926');
INSERT INTO `messages` VALUES ('dc1f888f2d784cb9a73c7a3bc7c3e8dc', NULL, 0, '2019-02-11 13:05:03', 0, 'bfbebc9b1d1b4c56b664cad2cd9e7efb', '51880c4c032c493788b6c3b9f7372926');
INSERT INTO `messages` VALUES ('e45cd5478bef44b5a8d977760fbff21d', NULL, 0, '2019-02-11 13:08:23', 0, 'bfbebc9b1d1b4c56b664cad2cd9e7efb', '9e648201b59d4b2dbda3deb3822a2797');

SET FOREIGN_KEY_CHECKS = 1;
