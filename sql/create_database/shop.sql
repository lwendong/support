/*
 Navicat Premium Data Transfer

 Source Server         : mariadb
 Source Server Type    : MariaDB
 Source Server Version : 100412
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MariaDB
 Target Server Version : 100412
 File Encoding         : 65001

 Date: 05/03/2020 19:49:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
-- ----------------------------
-- Database structure for shop
-- ----------------------------
DROP DATABASE IF EXISTS shop;
CREATE DATABASE shop;
USE shop;
-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品评论id',
  `user_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品评论人id',
  `goods_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '被评论商品id',
  `comment` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品评论',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1880ccce03424691959df575f68a0499', '2d07713dcfd54e7b866c8877dc7afadf', 'ecd897ff7f0f44f3abcb2c342d476d0f', '法院顾额滴就是看你吃顿饭v金额有误i', '2020-03-05 17:08:49');
INSERT INTO `comment` VALUES ('3b242a4e03764cc986dbb8d35e4203c8', '2d07713dcfd54e7b866c8877dc7afadf', 'ecd897ff7f0f44f3abcb2c342d476d0f', '看见吃沙拉聚会', '2020-03-05 17:09:02');
INSERT INTO `comment` VALUES ('b104e322d58d4bd4b0ebe06633ae0a5c', '2d07713dcfd54e7b866c8877dc7afadf', '2052cd826df54538b53b069ab1fa31d2', '1245895623548562314559+623156234865321456325465324565321465154652156231562315462355623456231456215', '2020-02-24 09:47:36');

-- ----------------------------
-- Table structure for focus
-- ----------------------------
DROP TABLE IF EXISTS `focus`;
CREATE TABLE `focus`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户关注id',
  `user_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `goods_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品id',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of focus
-- ----------------------------
INSERT INTO `focus` VALUES ('0e9a5ddac0004cde8a35abd01568050f', '2d07713dcfd54e7b866c8877dc7afadf', '1', '2020-02-24 15:05:16');
INSERT INTO `focus` VALUES ('11821d0e7661406a8a15f8ca4d4696ea', '2d07713dcfd54e7b866c8877dc7afadf', '2', '2020-02-24 15:07:26');
INSERT INTO `focus` VALUES ('3cab238a83af4cba9dd2a009de2b464e', NULL, '14', '2020-03-01 16:55:43');
INSERT INTO `focus` VALUES ('9f421584f6b14bfa9b4898d77c55b6a8', '2d07713dcfd54e7b866c8877dc7afadf', 'ecd897ff7f0f44f3abcb2c342d476d0f', '2020-03-05 18:33:46');
INSERT INTO `focus` VALUES ('e45a19154e814577bba018dfb94ce151', NULL, '1', '2020-03-03 23:37:15');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `description` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品描述',
  `type_code` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类型code',
  `img` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `inventory` int(11) NULL DEFAULT 0 COMMENT '商品库存',
  `price` int(11) NULL DEFAULT 0 COMMENT '商品价格',
  `sell_num` int(11) NULL DEFAULT 0 COMMENT '商品销售数',
  `popularity_num` int(11) NULL DEFAULT 0 COMMENT '商品人气数',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('2052cd826df54538b53b069ab1fa31d2', 'yicangkncjsjilkhusfyugiuhwoijk', 'yi', '1', 'f3e2e6cd7988449ca113104df8f5dc3b.jpg', 12, 555555555, NULL, NULL, '2020-03-04 22:25:50', '2020-03-04 22:25:50', 0);
INSERT INTO `goods` VALUES ('d0d539498b2149d691fad224885c1cd9', '刘', '哈哈', '1', '65795163f8eb42e5816a5ffbf882310e.png', 1, 12, NULL, NULL, '2020-03-05 18:18:58', '2020-03-05 18:18:58', 0);
INSERT INTO `goods` VALUES ('ecd897ff7f0f44f3abcb2c342d476d0f', 'admin', '20000px', '1', 'e581e79eb46a4c65ae50b8b4ed64ed0f.png', 39, 555, NULL, NULL, '2020-03-04 22:24:23', '2020-03-04 22:24:23', 0);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告id',
  `title` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告标题',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('d896734b33b54105818592797c75522a', '541', '1234578\\\r\n\r\nf;jktrlwe;djfhgijo\\sx\\', '2020-03-04 21:37:58');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品订单id',
  `user_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `goods_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品id',
  `due` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单应付款',
  `payment` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单实际付款',
  `num` int(11) NULL DEFAULT NULL COMMENT '订单商品数量',
  `state` int(11) NULL DEFAULT 0 COMMENT '订单状态 0 购物车（未支付的）1 已支付订单',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '是否删除',
  `order_code` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('830684932ca64ce1bafc4fc5c7f90f6c', '2d07713dcfd54e7b866c8877dc7afadf', '2052cd826df54538b53b069ab1fa31d2', '555555555', '555555555', 5, 0, '2020-03-05 14:31:41', 0, NULL);
INSERT INTO `order` VALUES ('9d3ee1f2d9b14debbad9a376fc8c73f5', 'b547877fbce542a5815053d99388e045', '1', '70', '70', 1, 1, '2020-03-02 22:18:44', 0, NULL);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品类型id',
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类型code',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类型名称',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '1', '图书', '2020-02-21 15:47:11', '2020-02-21 15:47:15', 0);
INSERT INTO `type` VALUES ('2', '2', '服装', '2020-02-21 15:48:06', '2020-02-21 15:48:08', 0);
INSERT INTO `type` VALUES ('f138fff258ee4589be6d132abc66d875', '3', '食品', '2020-03-02 20:03:49', '2020-03-02 20:03:49', 0);
INSERT INTO `type` VALUES ('f34450b9ef16440e894a333853c826bd', '4', '家纺', '2020-03-02 20:09:07', '2020-03-02 20:09:07', 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `name` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `isGly` tinyint(1) NULL DEFAULT 0 COMMENT '是否管理员',
  `state` tinyint(1) NULL DEFAULT 0 COMMENT '用户是否被冻结',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '222', '5@qq.com', 1, 0);
INSERT INTO `user` VALUES ('2d07713dcfd54e7b866c8877dc7afadf', '我是刘屁儿', '222', '2@2.com', 0, 0);
INSERT INTO `user` VALUES ('b547877fbce542a5815053d99388e045', 'www', '1', '138559865@qq.com', 0, 1);

SET FOREIGN_KEY_CHECKS = 1;
