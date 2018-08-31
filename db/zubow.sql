/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : zubow

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-08-31 16:13:36
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
  `city` varchar(10) DEFAULT NULL,
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
INSERT INTO `house` VALUES ('1534906743599', '2018-08-22', '1', '渝中区', '12', '一室一厅', '12', '12,33', '精装', '冰箱,空调', '313', '12', '面议', '0', '士大夫');
INSERT INTO `house` VALUES ('1534948387066', '2018-08-22', '1', '渝中区', '12', '一室一厅', '1212', '1,2', '精装', '冰箱,空调', '发士大夫', '12', '付一押一', '0', '士大夫');
INSERT INTO `house` VALUES ('1535002207043', '2018-08-23', '1', '渝中区', '111111', '四室二厅', '11111', '11,111', '精装', '冰箱,空调,洗衣机,热水器,可做饭', '123123213', '111', '付三押二', '1', '士大夫');
INSERT INTO `house` VALUES ('1535420947416', '2018-08-28', '1', '渝中区', '李家吧', '二室一厅', '23', '1,12', '简装', '冰箱,空调,电视,洗衣机,热水器,可做饭,宽带,床,衣柜', '无', '1000', '付一押一', '0', '士大夫');
INSERT INTO `house` VALUES ('1535420996685', '2018-08-28', '1', '渝中区', '你', '二室一厅', '12', '2,33', '精装', '冰箱,空调,电视,洗衣机,热水器,可做饭,宽带,床,衣柜', '无', '1222', '半年付', '0', '士大夫');
INSERT INTO `house` VALUES ('1535421012710', '2018-08-28', '1', '渝中区', '人额人', '一室一厅', '1223', '1,32', '精装', '冰箱,空调,电视,洗衣机,热水器,可做饭,宽带,床,衣柜', '无', '32', '付一押一', '0', '士大夫');
INSERT INTO `house` VALUES ('1535421031229', '2018-08-28', '1', '渝中区', '热风丰富', '二室一厅', '122', '3,4', '精装', '冰箱,空调,电视,洗衣机,热水器,可做饭,宽带,床,衣柜', '无', '32', '付三押二', '1', '士大夫');
INSERT INTO `house` VALUES ('1535421060299', '2018-08-28', '1', '渝中区', '12213', '一室一厅', '123', '123,12321', '精装', '冰箱,空调,洗衣机', '12321', '123', '面议', '0', '士大夫');
INSERT INTO `house` VALUES ('1535421070981', '2018-08-28', '1', '渝中区', '123', '一室一厅', '123', '1,12', '精装', '冰箱,空调,电视', '123', '12', '面议', '1', '士大夫');
INSERT INTO `house` VALUES ('1535421080171', '2018-08-28', '1', '渝中区', '23232', '一室一厅', '3213', '123,3214', '精装', '冰箱,空调,电视', '123', '12', '付一押一', '1', '士大夫');
INSERT INTO `house` VALUES ('1535421093053', '2018-08-28', '1', '渝中区', '123123', '一室一厅', '123', '12,424', '精装', '冰箱,空调,电视,洗衣机,可做饭,宽带,床,衣柜', '123123', '1234', '付三押一', '1', '士大夫');
INSERT INTO `house` VALUES ('1535421137920', '2018-08-28', '1', '渝中区', '123424', '一室一厅', '454', '1,2', '精装', '冰箱,空调,可做饭', '123', '111', '付一押一', '1', '士大夫');
INSERT INTO `house` VALUES ('1535439903688', '2018-08-28', '1', '渝中区', '大溪沟', '三室二厅', '140', '1,22', '简装', '冰箱,空调,电视,洗衣机,热水器,可做饭,宽带,床,衣柜', '测试', '1400', '半年付', '0', '士大夫');
INSERT INTO `house` VALUES ('1535507784585', '2018-08-29', '1', '渝中区', '333', '二室一厅', '3434', '33,44', '精装', '冰箱', '', '443', '付一押一', '1', '士大夫');
INSERT INTO `house` VALUES ('1535508282944', '2018-08-29', '1', '渝中区', '32', '一室一厅', '23', '23,23', '精装', '冰箱', '23', '23', '面议', '0', '士大夫');
INSERT INTO `house` VALUES ('1535509357408', '2018-08-29', '1', '渝中区', '你在', '一室一厅', '122', '1,2', '精装', '冰箱,空调,洗衣机,可做饭', '撒旦发射点', '1222', '面议', '0', '士大夫');
INSERT INTO `house` VALUES ('1535509493724', '2018-08-29', '1', '渝中区', '111', '一室一厅', '12', '12,323', '精装', '冰箱,电视', '123123', '12', '面议', '0', '士大夫');
INSERT INTO `house` VALUES ('1535698925523', '2018-08-31', '1', '渝中区', '九博数据库', '四室一厅', '122', '1,2', '精装', '冰箱,空调,电视,洗衣机,热水器,可做饭', '123123', '14000', '面议', '0', '士大夫');

-- ----------------------------
-- Table structure for `houseimage`
-- ----------------------------
DROP TABLE IF EXISTS `houseimage`;
CREATE TABLE `houseimage` (
  `house_id` varchar(25) NOT NULL,
  `imageurl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of houseimage
-- ----------------------------
INSERT INTO `houseimage` VALUES ('1535002207043', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535002207043', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535002207043', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535420947416', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535420996685', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535421012710', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535421012710', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535421031229', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535421031229', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535421060299', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535421060299', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535421070981', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535421070981', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535421080171', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535421080171', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535421093053', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535421093053', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535421137920', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535421137920', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535439903688', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535507784585', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535508282944', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535509357408', '\\images\\upload\\1534314370360\\1535508281781.jpg');
INSERT INTO `houseimage` VALUES ('1535509493724', '\\images\\upload\\1534314370360\\1535509491740.jpg');
INSERT INTO `houseimage` VALUES ('1535698925523', '\\images\\upload\\1534314370360\\1535698916387.jpg');
INSERT INTO `houseimage` VALUES ('1535698925523', '\\images\\upload\\1534314370360\\1535698918396.jpg');
INSERT INTO `houseimage` VALUES ('1535698925523', '\\images\\upload\\1534314370360\\1535698920384.jpg');
INSERT INTO `houseimage` VALUES ('1535698925523', '\\images\\upload\\1534314370360\\1535698922300.jpg');

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
INSERT INTO `user` VALUES ('1534314291670', '2018-08-17', '0', '0', '1', null, 'Jack', '2', '2', '男');
INSERT INTO `user` VALUES ('1534314370360', '2018-08-23', '0', '0', '0', '', '士大夫', '15655565655', '2', '男');
