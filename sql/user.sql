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

 Date: 11/02/2019 09:31:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `C_ID` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `C_LoginID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户登录id',
  `C_LoginName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户登录账号',
  `C_NickName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '昵称',
  `C_PassWord` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `C_SignaTure` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '个性签名',
  `N_Sex` int(11) DEFAULT NULL COMMENT '性别',
  `D_Birthday` date DEFAULT NULL COMMENT '生日',
  `C_Telephone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话',
  `C_Name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '真实姓名',
  `C_Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `C_Intro` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '简介',
  `C_HeadPortrait` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像地址',
  `C_ShengXiao` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '生肖',
  `N_Age` int(11) DEFAULT NULL COMMENT '年龄',
  `C_Constellation` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '星座',
  `C_BloodType` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '血型',
  `C_SchoolTag` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '毕业学校',
  `C_Vocation` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '职业',
  `C_NationID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '国家ID',
  `C_ProvinceID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '省份ID',
  `C_CityID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '城市ID',
  `C_FriendshipPolicyID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '好友策略ID',
  `C_UserState` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户状态',
  `C_FriendPolicyQuestion` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '好友策略问题',
  `C_FriendPolicyAnswer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '好友策略答案',
  `C_FriendPolicyPassword` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '好友策略密码',
  `DT_createDate` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `C_PySzm` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '拼音首字母',
  PRIMARY KEY (`C_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('3ff77555c6d74749a34d2313c4dc0f2b', '51880c4c032c493788b6c3b9f7372926', 'test', '测试', 'F76B71C4C13CE17F8DF42F6979CF11F6', '爱一个人就是希望她幸福，不管哪一天你爱她的方式都是让他幸福爱一个人就是希望她幸福，不管哪一天你爱她的方式都是让他幸福爱一个人就是希望她幸福，不管哪一天你爱她的方式都是让他幸福爱一个人就是希望她幸福，不管哪一天你爱她的方式都是让他幸福爱一个人就是希望她幸福，不管哪一天你爱她的方式都是让他幸福爱一个人就是希望她幸福，不管哪一天你爱她的方式都是让他幸福', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-08 19:33:29', NULL);
INSERT INTO `user` VALUES ('605c9c5b8f704683be35c53e9b6673e1', 'bfbebc9b1d1b4c56b664cad2cd9e7efb', 'admin', '超级管理员', '7B18449F19873177279B3132E8A10343', '爱一个人就是希望她幸福，不管哪一天你爱她的方式都是让他幸福爱一个人就是希望她幸福，不管哪一天你爱她的方式都是让他幸福爱一个人就是希望她幸福，不管哪一天你爱她的方式都是让他幸福爱一个人就是希望她幸福，不管哪一天你爱她的方式都是让他幸福爱一个人就是希望她幸福，不管哪一天你爱她的方式都是让他幸福爱一个人就是希望她幸福，不管哪一天你爱她的方式都是让他幸福', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-08 19:33:16', NULL);
INSERT INTO `user` VALUES ('a270785fc0d640c39128ab9bf99d3741', 'e4b9f4cb601b42db99864e72aeef18fa', '2222', '2222', '841B6067F3248272C6AE0F97F4B26E23', '222测试个性签名', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-08 20:05:52', NULL);
INSERT INTO `user` VALUES ('e23e871bb56e4141a2c76aa9027bf152', '8dd03cd5f06b40d5940375acfb89637d', '222', '2222', '841B6067F3248272C6AE0F97F4B26E23', '测试的个性签名 啦啦啦啦啦啦啦阿拉啦啦啦', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-08 20:03:08', NULL);
INSERT INTO `user` VALUES ('f105fed0730946c6bed36af87f41ba1d', '9e648201b59d4b2dbda3deb3822a2797', '111', '1111', '830DA9132AB15D5F82B89BD22604CE43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-08 19:33:39', NULL);

SET FOREIGN_KEY_CHECKS = 1;
