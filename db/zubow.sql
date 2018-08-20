/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : zubow

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-08-15 15:21:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` varchar(25) NOT NULL,
  `createdate` date DEFAULT NULL,
  `status` int(4) DEFAULT NULL,
  `money` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------

-- ----------------------------
-- Table structure for `appointment`
-- ----------------------------
DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `createdate` date DEFAULT NULL,
  `status` int(4) DEFAULT NULL,
  `house_id` varchar(25) DEFAULT NULL,
  `user_id` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appointment
-- ----------------------------

-- ----------------------------
-- Table structure for `house`
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `id` varchar(25) NOT NULL,
  `createdate` date DEFAULT NULL,
  `status` int(3) DEFAULT '1',
  `address` varchar(255) DEFAULT NULL,
  `housetype` varchar(50) DEFAULT '两室一厅',
  `area` double DEFAULT NULL,
  `floor` varchar(10) DEFAULT NULL,
  `decoration` varchar(4) DEFAULT '精装',
  `configuration` varchar(100) DEFAULT NULL,
  `remark` varchar(512) DEFAULT NULL,
  `rent` double DEFAULT '0',
  `renttype` varchar(10) DEFAULT '押一付三   半年付',
  `leasehold` int(11) DEFAULT NULL,
  `houseuser_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of house
-- ----------------------------

-- ----------------------------
-- Table structure for `houseimage`
-- ----------------------------
DROP TABLE IF EXISTS `houseimage`;
CREATE TABLE `houseimage` (
  `house_id` varchar(25) NOT NULL,
  `imageurl` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of houseimage
-- ----------------------------

-- ----------------------------
-- Table structure for `house_resource`
-- ----------------------------
DROP TABLE IF EXISTS `house_resource`;
CREATE TABLE `house_resource` (
  `status` int(4) NOT NULL DEFAULT '-1' COMMENT '-1(待审核)0(未过) 1(通过)',
  `house_id` varchar(25) NOT NULL,
  `houseuser_id` varchar(25) NOT NULL,
  `Certificateimage` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of house_resource
-- ----------------------------

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `touser_id` varchar(25) NOT NULL,
  `fromuser_id` varchar(25) NOT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for `rental_record`
-- ----------------------------
DROP TABLE IF EXISTS `rental_record`;
CREATE TABLE `rental_record` (
  `id` varchar(25) NOT NULL,
  `createdate` date DEFAULT NULL,
  `status` int(4) DEFAULT '1',
  `house_id` varchar(25) DEFAULT NULL,
  `user_id` varchar(25) DEFAULT NULL,
  `rentmouth` int(4) DEFAULT '1' COMMENT '出租月份 整数',
  `contractimage` varchar(25) DEFAULT NULL COMMENT '合同图片',
  `promise` varchar(25) DEFAULT NULL,
  `due` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rental_record
-- ----------------------------

-- ----------------------------
-- Table structure for `salesman`
-- ----------------------------
DROP TABLE IF EXISTS `salesman`;
CREATE TABLE `salesman` (
  `id` varchar(25) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `tel` varchar(25) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salesman
-- ----------------------------

-- ----------------------------
-- Table structure for `salesman_house`
-- ----------------------------
DROP TABLE IF EXISTS `salesman_house`;
CREATE TABLE `salesman_house` (
  `salesman_id` varchar(25) NOT NULL,
  `house_id` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salesman_house
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `createdate` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0，1	状态   未知',
  `money` double DEFAULT NULL,
  `type` int(11) DEFAULT '1' COMMENT '0 房东  1租客',
  `identity` varchar(25) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `tel` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT '123456',
  `sex` varchar(4) DEFAULT '男',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1534314291670', '2018-08-15', '0', '0', '1', null, 'Jack', '2', '2', '男');
INSERT INTO `user` VALUES ('1534314370360', '2018-08-15', '0', '0', '1', null, '士大夫', '2', '2', '男');
