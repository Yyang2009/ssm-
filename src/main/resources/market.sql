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

 Date: 22/04/2020 21:20:33
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
