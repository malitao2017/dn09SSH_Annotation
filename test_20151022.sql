/*
Navicat MySQL Data Transfer

Source Server         : 本机连接测试邮件导入功能
Source Server Version : 50024
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50024
File Encoding         : 65001

Date: 2015-10-22 09:27:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `class`
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `cname` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', '数学');
INSERT INTO `class` VALUES ('2', '语文');
INSERT INTO `class` VALUES ('4', '英文');

-- ----------------------------
-- Table structure for `d_user`
-- ----------------------------
DROP TABLE IF EXISTS `d_user`;
CREATE TABLE `d_user` (
  `id` bigint(20) NOT NULL auto_increment,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `details` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` USING BTREE (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of d_user
-- ----------------------------
INSERT INTO `d_user` VALUES ('1', 'admin', '11', 'hahahhaa');
INSERT INTO `d_user` VALUES ('2', 'admin2', '11', 'dfsdfsd');

-- ----------------------------
-- Table structure for `sc`
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc` (
  `sid` int(11) NOT NULL default '0',
  `cid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`sid`,`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES ('1', '1');
INSERT INTO `sc` VALUES ('1', '2');
INSERT INTO `sc` VALUES ('2', '1');
INSERT INTO `sc` VALUES ('2', '2');
INSERT INTO `sc` VALUES ('3', '1');
INSERT INTO `sc` VALUES ('4', '1');
INSERT INTO `sc` VALUES ('4', '2');
INSERT INTO `sc` VALUES ('4', '3');
INSERT INTO `sc` VALUES ('5', '3');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '小芳');
INSERT INTO `student` VALUES ('2', '小明');
INSERT INTO `student` VALUES ('3', '小孟');
INSERT INTO `student` VALUES ('4', '小马');
INSERT INTO `student` VALUES ('5', '小五');

-- ----------------------------
-- Table structure for `t_computer`
-- ----------------------------
DROP TABLE IF EXISTS `t_computer`;
CREATE TABLE `t_computer` (
  `id` bigint(20) NOT NULL auto_increment,
  `model` varchar(20) default NULL,
  `pic` varchar(20) default NULL,
  `prodDesc` text,
  `price` double default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_computer
-- ----------------------------
INSERT INTO `t_computer` VALUES ('1', 'x200', 'x200.jpg', '还算便宜', '2000');
INSERT INTO `t_computer` VALUES ('2', 'x500', 'x500.jpg', '性价比最好', '4000');
INSERT INTO `t_computer` VALUES ('3', 'x600', 'x600.jpg', '性能不错', '6000');

-- ----------------------------
-- Table structure for `t_emp`
-- ----------------------------
DROP TABLE IF EXISTS `t_emp`;
CREATE TABLE `t_emp` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `salary` double default NULL,
  `age` int(11) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_emp
-- ----------------------------
INSERT INTO `t_emp` VALUES ('1', '小黑', '1212', '23');
INSERT INTO `t_emp` VALUES ('3', '小兰', '3000', '21');
INSERT INTO `t_emp` VALUES ('4', '小绿', '4000', '20');
INSERT INTO `t_emp` VALUES ('5', 'lg', '3000', '21');
INSERT INTO `t_emp` VALUES ('10', '凤飞飞', '444', '33');
INSERT INTO `t_emp` VALUES ('12', '是你么', '321', '11');
INSERT INTO `t_emp` VALUES ('14', '333范德萨的', '33', '33');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `NAME` varchar(50) default NULL,
  `pwd` varchar(20) default NULL,
  `gender` char(1) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', '管理员', 'admin', 'm');
INSERT INTO `t_user` VALUES ('2', 'admin1', '管理员', 'admin', 'm');
INSERT INTO `t_user` VALUES ('3', 'admin2', '管理员2', 'admin', null);
INSERT INTO `t_user` VALUES ('4', 'admin3', '管理员3', 'admin', null);
INSERT INTO `t_user` VALUES ('5', 'admin4', '管理员4', 'admin', null);
INSERT INTO `t_user` VALUES ('6', '', '', '', 'm');
INSERT INTO `t_user` VALUES ('7', 'admin5', '管理员5', 'admin', 'f');

-- ----------------------------
-- Table structure for `t_user_old`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_old`;
CREATE TABLE `t_user_old` (
  `id` bigint(20) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `age` int(11) default NULL,
  `gendar` char(1) default NULL,
  `brithday` date default NULL,
  `salary` double default NULL,
  `info` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_user_old
-- ----------------------------
