/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : market

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 23/04/2020 17:59:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for T_PURCHASE_RECORD
-- ----------------------------
DROP TABLE IF EXISTS `T_PURCHASE_RECORD`;
CREATE TABLE `T_PURCHASE_RECORD` (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(12) NOT NULL COMMENT '用户编号',
  `product_id` int(12) NOT NULL COMMENT '产品编号',
  `price` decimal(10,2) NOT NULL COMMENT '价格',
  `quantity` int(12) NOT NULL COMMENT '数量',
  `sum` decimal(16,2) NOT NULL COMMENT '总价',
  `purchase_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '购买日期',
  `note` varchar(255) NOT NULL COMMENT '‘备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of T_PURCHASE_RECORD
-- ----------------------------
BEGIN;
INSERT INTO `T_PURCHASE_RECORD` VALUES (1, 1, 1, 10.00, 10, 100.00, '2020-04-23 16:59:10', '购买日志：时间 1587632350750');
INSERT INTO `T_PURCHASE_RECORD` VALUES (2, 1, 1, 10.00, 10, 100.00, '2020-04-23 17:03:15', '购买日志：时间 1587632595187');
INSERT INTO `T_PURCHASE_RECORD` VALUES (3, 1, 1, 10.00, 10, 100.00, '2020-04-23 17:03:48', '购买日志：时间 1587632628637');
INSERT INTO `T_PURCHASE_RECORD` VALUES (4, 1, 1, 10.00, 10, 100.00, '2020-04-23 17:04:19', '购买日志：时间 1587632659530');
INSERT INTO `T_PURCHASE_RECORD` VALUES (5, 1, 1, 10.00, 10, 100.00, '2020-04-23 17:07:32', '购买日志：时间 1587632852979');
INSERT INTO `T_PURCHASE_RECORD` VALUES (6, 1, 1, 10.00, 10, 100.00, '2020-04-23 17:26:31', '购买日志：时间 1587633968633');
INSERT INTO `T_PURCHASE_RECORD` VALUES (7, 1, 1, 10.00, 10, 100.00, '2020-04-23 17:33:58', '购买日志：时间 1587634438610');
INSERT INTO `T_PURCHASE_RECORD` VALUES (8, 1, 1, 10.00, 10, 100.00, '2020-04-23 17:38:18', '购买日志：时间 1587634578961');
COMMIT;

-- ----------------------------
-- Table structure for T_Product
-- ----------------------------
DROP TABLE IF EXISTS `T_Product`;
CREATE TABLE `T_Product` (
  `id` int(12) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `product_name` varchar(60) NOT NULL COMMENT '产品名称',
  `stock` int(10) NOT NULL COMMENT '库存',
  `price` decimal(16,2) NOT NULL COMMENT '单价',
  `version` int(10) NOT NULL DEFAULT '0' COMMENT '版本号',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of T_Product
-- ----------------------------
BEGIN;
INSERT INTO `T_Product` VALUES (1, '西虹市', 20, 10.00, 0, NULL);
INSERT INTO `T_Product` VALUES (2, '黄瓜', 200, 5.00, 0, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
