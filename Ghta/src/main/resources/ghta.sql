/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : ghta

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2016-09-15 16:12:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` varchar(32) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `isAccountEnabled` bit(1) DEFAULT NULL,
  `isAccountExpired` bit(1) DEFAULT NULL,
  `isAccountLocked` bit(1) DEFAULT NULL,
  `isCredentialsExpired` bit(1) DEFAULT NULL,
  `lockedDate` datetime DEFAULT NULL,
  `loginDate` datetime DEFAULT NULL,
  `loginFailureCount` int(11) DEFAULT NULL,
  `loginIp` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `IDCard` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('4028168153b7f13f0153b7fd20390011', '2016-03-27 20:12:12', '2016-08-28 16:20:19', '技术部', '', '', '\0', '\0', '\0', null, '2016-08-28 16:20:19', '0', '127.0.0.1', '超级管理员', '468dfb923993a1a9cf4f1da54cdfacaf', '', '0', 'root', null, null);
INSERT INTO `admin` VALUES ('402881862bf08f18012bf0b1304a0053', '2013-10-23 12:40:57', '2016-09-06 22:05:59', '技术部', '370064940@qq.com', '', '\0', '\0', '\0', null, '2016-09-06 22:05:59', '0', '127.0.0.1', '开发者用户', 'f7f33c074053d2074861cf460a2ab844', null, '9', 'admin', null, null);

-- ----------------------------
-- Table structure for adminrole
-- ----------------------------
DROP TABLE IF EXISTS `adminrole`;
CREATE TABLE `adminrole` (
  `id` varchar(32) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `admin` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminrole
-- ----------------------------
INSERT INTO `adminrole` VALUES ('4028898253826da60153827567890004', '2016-08-26 20:30:50', '2016-08-26 20:30:51', '4028168153b7f13f0153b7fd20390011', '4028168153b7f13f0153b7f98a430008');

-- ----------------------------
-- Table structure for authority
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
  `id` varchar(32) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `leaf` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `visible` bit(1) DEFAULT NULL,
  `parentId` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES ('4028b88141de0a590141de0aa4810000', '2016-03-03 15:30:47', '2016-03-03 15:30:49', null, '1', '0', '0', '个人中心', null, '', null, 'fa-home');
INSERT INTO `authority` VALUES ('4028b88141de0a590141de0aa4810001', '2016-03-04 14:05:12', '2016-03-04 14:05:13', null, '2', '0', '0', '常用功能', null, '', '4028b88141de0a590141de0aa4810000', 'fa-desktop');
INSERT INTO `authority` VALUES ('4028b88141de0a590141de0aa4810002', '2016-03-04 14:06:54', '2016-03-04 14:06:56', 'ROLE_USER_ADDWORK', '3', '0', '0', '发布作业', '/client/home.do?welcome', '', '4028b88141de0a590141de0aa4810001', 'fa-caret-right');
INSERT INTO `authority` VALUES ('4028b88141de0a590141de0aa4810003', '2016-04-11 17:31:22', '2016-04-11 17:31:24', 'ROLE_USER_WORK', '3', '1', '0', '作业管理', 'http://www.baidu.com', '', '4028b88141de0a590141de0aa4810001', 'fa-caret-right');
INSERT INTO `authority` VALUES ('4028b88141de0a590141de0aa4810050', '2016-03-04 13:33:42', '2016-03-04 13:33:44', null, '1', '1', '0', '班级中心', null, '', null, 'fa-list-alt');
INSERT INTO `authority` VALUES ('4028b88141de0a590141de0aa4810051', '2016-03-03 16:07:00', '2016-03-03 16:07:02', null, '2', '0', '0', '通知公告', null, '', '4028b88141de0a590141de0aa4810050', 'fa-pencil-square-o');
INSERT INTO `authority` VALUES ('4028b88141de0a590141de0aa4810052', '2016-03-03 16:10:20', '2016-03-03 16:10:21', 'ROLE_USER_NOTICE', '3', '0', '0', '发布通告', 'http://www.baidu.com', '', '4028b88141de0a590141de0aa4810051', 'fa-caret-right');
INSERT INTO `authority` VALUES ('4028b88141de0a590141de0aa4810100', '2016-03-04 14:29:18', '2016-03-04 14:29:20', null, '1', '2', '0', '发现中心', null, '', null, 'fa-tachometer');
INSERT INTO `authority` VALUES ('4028b88141de0a590141de0aa4810101', '2016-03-04 14:32:54', '2016-03-04 14:32:56', null, '2', '0', '0', '我的朋友圈', null, '', '4028b88141de0a590141de0aa4810100', 'fa-calendar');
INSERT INTO `authority` VALUES ('4028b88141de0a590141de0aa4810102', '2016-03-04 14:35:06', '2016-03-04 14:35:08', 'ROLE_USER_CIRCLE', '3', '0', '0', '学校圈', null, '', '4028b88141de0a590141de0aa4810101', 'fa-caret-right');
INSERT INTO `authority` VALUES ('4028b88141de0a590141de0aa4810150', '2016-03-04 14:38:38', '2016-03-04 14:38:40', null, '1', '3', '0', '学习中心', null, '', null, 'fa-tag');
INSERT INTO `authority` VALUES ('4028b88141de0a590141de0aa4810151', '2016-03-04 14:39:02', '2016-03-04 14:39:03', 'ROLE_USER_IESSON', '3', '0', '0', 'I课堂', null, '', '4028b88141de0a590141de0aa4810150', 'fa-list');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` varchar(32) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `markcode` varchar(255) DEFAULT NULL,
  `markvalue` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config
-- ----------------------------

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` varchar(32) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parentId` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `shortnum` varchar(255) DEFAULT NULL,
  `visible` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------

-- ----------------------------
-- Table structure for letter
-- ----------------------------
DROP TABLE IF EXISTS `letter`;
CREATE TABLE `letter` (
  `id` varchar(32) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `content` text,
  `isSend` int(11) DEFAULT NULL,
  `omit` int(11) DEFAULT NULL,
  `ranged` int(11) DEFAULT NULL,
  `visit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of letter
-- ----------------------------

-- ----------------------------
-- Table structure for letteradmin
-- ----------------------------
DROP TABLE IF EXISTS `letteradmin`;
CREATE TABLE `letteradmin` (
  `id` varchar(32) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `admin` varchar(255) DEFAULT NULL,
  `letter` varchar(255) DEFAULT NULL,
  `state` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of letteradmin
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` varchar(32) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `leaf` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `namespace` varchar(255) DEFAULT NULL,
  `parentId` varchar(255) DEFAULT NULL,
  `visible` bit(1) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('2c958da346862c52014686333e5c0001', '2014-06-12 10:20:40', '2014-06-12 10:20:42', null, '0', '3G站功能', null, null, '', '0', null, '40288861516abbc201516b0d64d90000');
INSERT INTO `menu` VALUES ('2c958da346862c52014686333e5c0050', '2015-11-14 17:18:21', '2015-11-14 17:18:23', null, '0', '系统配置', null, null, '', '0', null, '40288103510e220701510e237c3c0000');
INSERT INTO `menu` VALUES ('2c958da346862c52014686333e5c0051', '2015-11-14 17:36:13', '2015-11-14 17:36:14', 'ROLE_ADMIN_ADMIN', '1', '用户管理', 'admin', '2c958da346862c52014686333e5c0050', '', '2', '/app/resources/default/images/admin.png', '40288103510e220701510e237c3c0000');
INSERT INTO `menu` VALUES ('2c958da346862c52014686333e5c0052', '2015-11-14 17:18:59', '2015-11-14 17:19:01', 'ROLE_ADMIN_ROLE', '1', '角色管理', 'role', '2c958da346862c52014686333e5c0050', '', '1', '/app/resources/default/images/authority.png', '40288103510e220701510e237c3c0000');
INSERT INTO `menu` VALUES ('2c958da346862c52014686333e5c0053', '2015-11-16 09:13:19', '2015-11-16 09:13:21', 'ROLE_ADMIN_MODULE', '1', '系统模块', 'module', '2c958da346862c52014686333e5c0050', '', '0', '/app/resources/default/images/item.png', '40288103510e220701510e237c3c0000');
INSERT INTO `menu` VALUES ('2c958da346862c52014686333e5c0054', '2015-11-18 09:53:30', '2015-11-18 09:53:31', 'ROLE_ADMIN_DEPARTMENT', '1', '部门管理', 'department', '2c958da346862c52014686333e5c0050', '', '3', '/app/resources/default/images/item.png', '40288103510e220701510e237c3c0000');
INSERT INTO `menu` VALUES ('2c958da346862c52014686333e5c0055', '2015-12-02 09:06:13', '2015-12-02 09:06:14', 'ROLE_ADMIN_LETTER', '1', '站内信', 'letter', '2c958da346862c52014686333e5c0050', '', '4', '/app/resources/default/images/item.png', '40288103510e220701510e237c3c0000');
INSERT INTO `menu` VALUES ('2c958da346862c52014686333e5c0500', '2016-04-20 11:12:24', '2016-04-20 11:12:26', null, '0', '系统帮助', null, null, '', '0', null, '40288103510ef60001510f03516f0003');
INSERT INTO `menu` VALUES ('2c958da346862c52014686333e5c0501', '2016-04-20 11:14:00', '2016-04-20 11:14:02', 'ROLE_ADMIN_HELP', '1', '系统使用手册', 'help', '2c958da346862c52014686333e5c0500', '', '0', '/app/resources/default/images/item.png', '40288103510ef60001510f03516f0003');

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `id` varchar(32) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `isdefault` bit(1) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `visible` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('40288103510e220701510e237c3c0000', '2015-11-16 10:33:05', '2016-03-27 20:09:35', '/app/resources/default/images/setting.png', '', '0', '平台功能', '');
INSERT INTO `module` VALUES ('40288103510ef60001510f03516f0003', '2015-11-16 14:37:34', '2016-09-01 08:58:33', '/app/resources/default/images/help.png', '\0', '2', '更多帮助', '');
INSERT INTO `module` VALUES ('40288861516abbc201516b0d64d90000', '2015-12-04 11:33:38', '2016-09-01 08:58:37', '/app/resources/default/images/weixin.png', '\0', '1', '微信功能', '');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(32) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `visible` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('4028168153b7f13f0153b7f98a430008', '2016-03-27 20:08:17', '2016-03-27 20:08:17', '超级管理员', '');
INSERT INTO `role` VALUES ('4028898956e33d020156e342cfc90000', '2016-09-01 09:00:21', '2016-09-01 09:00:21', '销售人员', '');
INSERT INTO `role` VALUES ('4028898956e33d020156e34300af0001', '2016-09-01 09:00:34', '2016-09-01 09:00:34', '送货员', '');
INSERT INTO `role` VALUES ('4028898956e33d020156e34317650002', '2016-09-01 09:00:40', '2016-09-01 09:00:40', '司机', '');
INSERT INTO `role` VALUES ('4028898956e3b73c0156e3c3ab990017', '2016-09-01 11:21:06', '2016-09-01 11:21:06', '安装员', '');

-- ----------------------------
-- Table structure for rolemenu
-- ----------------------------
DROP TABLE IF EXISTS `rolemenu`;
CREATE TABLE `rolemenu` (
  `id` varchar(32) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `menu` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rolemenu
-- ----------------------------
INSERT INTO `rolemenu` VALUES ('4028168153b7f13f0153b7fc4fe5000c', '2016-03-27 20:11:19', '2016-03-27 20:11:19', '2c958da346862c52014686333e5c0051', '4028168153b7f13f0153b7f98a430008');
INSERT INTO `rolemenu` VALUES ('4028168153b7f13f0153b7fc4fe5000d', '2016-03-27 20:11:19', '2016-03-27 20:11:19', '2c958da346862c52014686333e5c0101', '4028168153b7f13f0153b7f98a430008');
INSERT INTO `rolemenu` VALUES ('4028168153b7f13f0153b7fc4fe5000e', '2016-03-27 20:11:19', '2016-03-27 20:11:19', '2c958da346862c52014686333e5c0102', '4028168153b7f13f0153b7f98a430008');
INSERT INTO `rolemenu` VALUES ('4028168153b7f13f0153b7fc4fe5000f', '2016-03-27 20:11:19', '2016-03-27 20:11:19', '2c958da346862c52014686333e5c0104', '4028168153b7f13f0153b7f98a430008');
INSERT INTO `rolemenu` VALUES ('4028168153b7f13f0153b7fc4fe50010', '2016-03-27 20:11:19', '2016-03-27 20:11:19', '2c958da346862c52014686333e5c0105', '4028168153b7f13f0153b7f98a430008');
INSERT INTO `rolemenu` VALUES ('402889825388e53e015388e74d340004', '2016-03-18 16:46:13', '2016-03-18 16:46:13', '2c958da346862c52014686333e5c0104', '4028898253826da6015382743e310000');
INSERT INTO `rolemenu` VALUES ('402889825388e53e015388e74d350005', '2016-03-18 16:46:13', '2016-03-18 16:46:13', '2c958da346862c52014686333e5c0105', '4028898253826da6015382743e310000');
INSERT INTO `rolemenu` VALUES ('40288989540e64ad01540e67d39e0000', '2016-04-13 14:56:06', '2016-04-13 14:56:06', '2c958da346862c52014686333e5c0106', '4028898253826da6015382743e310000');
INSERT INTO `rolemenu` VALUES ('402889895431a649015431aa459c0000', '2016-04-20 11:15:23', '2016-04-20 11:15:23', '2c958da346862c52014686333e5c0501', '4028898253826da6015382743e310000');
INSERT INTO `rolemenu` VALUES ('402889895431a649015431aa5dd80001', '2016-04-20 11:15:29', '2016-04-20 11:15:29', '2c958da346862c52014686333e5c0501', '4028168153b7f13f0153b7f98a430008');

-- ----------------------------
-- Table structure for rolemodule
-- ----------------------------
DROP TABLE IF EXISTS `rolemodule`;
CREATE TABLE `rolemodule` (
  `id` varchar(32) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rolemodule
-- ----------------------------
INSERT INTO `rolemodule` VALUES ('4028168153b7f13f0153b7fab9bf0009', '2016-03-27 20:09:35', '2016-03-27 20:09:35', '40288103510e220701510e237c3c0000', '4028168153b7f13f0153b7f98a430008');
INSERT INTO `rolemodule` VALUES ('4028168153b7f13f0153b7face08000a', '2016-03-27 20:09:40', '2016-03-27 20:09:40', '40288861516abbc201516b0d64d90000', '4028168153b7f13f0153b7f98a430008');
INSERT INTO `rolemodule` VALUES ('4028168153b7f13f0153b7fadf97000b', '2016-03-27 20:09:45', '2016-03-27 20:09:45', '40288103510ef60001510f03516f0003', '4028168153b7f13f0153b7f98a430008');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(32) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `IDCard` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `headimg` varchar(255) DEFAULT NULL,
  `isAccountEnabled` bit(1) DEFAULT NULL,
  `isAccountExpired` bit(1) DEFAULT NULL,
  `isAccountLocked` bit(1) DEFAULT NULL,
  `isCredentialsExpired` bit(1) DEFAULT NULL,
  `lockedDate` datetime DEFAULT NULL,
  `loginDate` datetime DEFAULT NULL,
  `loginFailureCount` int(11) NOT NULL,
  `loginIp` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `sex` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `wxUser` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('3769189447295b2b01472961a9690002', '2016-03-03 15:39:26', '2016-04-19 14:17:32', null, null, '../common/ace/assets/avatars/user.jpg', '', '\0', '\0', '\0', null, '2016-04-19 14:17:32', '0', '192.168.9.9', null, '7837c7867cde9aba3c451fc5c439d350', null, null, '0', 'qiang', '1', null, null);
INSERT INTO `user` VALUES ('4028898956e4296b0156e47566b40026', '2016-09-01 14:35:14', '2016-09-03 13:03:34', null, null, null, '', '\0', '\0', '\0', null, null, '0', null, '333', 'd40ce70488c948a3f2e086327e92ddc1', '13800138000', null, '0', '13800138000', null, '444', '');

-- ----------------------------
-- Table structure for userauthority
-- ----------------------------
DROP TABLE IF EXISTS `userauthority`;
CREATE TABLE `userauthority` (
  `id` varchar(32) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userauthority
-- ----------------------------
INSERT INTO `userauthority` VALUES ('4028b88154081c750154083f95aa000c', '2016-04-12 10:14:25', '2016-04-12 10:14:25', '4028b88141de0a590141de0aa4810003', '3769189447295b2b01472961a9690002');
INSERT INTO `userauthority` VALUES ('4028b88154081c750154083f95aa000d', '2016-04-12 10:14:25', '2016-04-12 10:14:25', '4028b88141de0a590141de0aa4810002', '3769189447295b2b01472961a9690002');
INSERT INTO `userauthority` VALUES ('4028b88154081c750154083f95aa000e', '2016-04-12 10:14:25', '2016-04-12 10:14:25', '4028b88141de0a590141de0aa4810052', '3769189447295b2b01472961a9690002');
INSERT INTO `userauthority` VALUES ('4028b88154081c750154083f95ab000f', '2016-04-12 10:14:25', '2016-04-12 10:14:25', '4028b88141de0a590141de0aa4810102', '3769189447295b2b01472961a9690002');
INSERT INTO `userauthority` VALUES ('4028b88154081c750154083f95ab0010', '2016-04-12 10:14:25', '2016-04-12 10:14:25', '4028b88141de0a590141de0aa4810151', '3769189447295b2b01472961a9690002');
INSERT INTO `userauthority` VALUES ('4028b88154081c750154083f95ab0011', '2016-04-12 10:14:25', '2016-04-12 10:14:25', '4028b88141de0a590141de0aa4810100', '3769189447295b2b01472961a9690002');
INSERT INTO `userauthority` VALUES ('4028b88154081c750154083f95ab0012', '2016-04-12 10:14:25', '2016-04-12 10:14:25', '4028b88141de0a590141de0aa4810101', '3769189447295b2b01472961a9690002');
INSERT INTO `userauthority` VALUES ('4028b88154081c750154083f95ab0013', '2016-04-12 10:14:25', '2016-04-12 10:14:25', '4028b88141de0a590141de0aa4810051', '3769189447295b2b01472961a9690002');
INSERT INTO `userauthority` VALUES ('4028b88154081c750154083f95ab0014', '2016-04-12 10:14:25', '2016-04-12 10:14:25', '4028b88141de0a590141de0aa4810150', '3769189447295b2b01472961a9690002');
INSERT INTO `userauthority` VALUES ('4028b88154081c750154083f95ab0015', '2016-04-12 10:14:25', '2016-04-12 10:14:25', '4028b88141de0a590141de0aa4810050', '3769189447295b2b01472961a9690002');
INSERT INTO `userauthority` VALUES ('4028b88154081c750154083f95ab0016', '2016-04-12 10:14:25', '2016-04-12 10:14:25', '4028b88141de0a590141de0aa4810001', '3769189447295b2b01472961a9690002');
INSERT INTO `userauthority` VALUES ('4028b88154081c750154083f95ab0017', '2016-04-12 10:14:25', '2016-04-12 10:14:25', '4028b88141de0a590141de0aa4810000', '3769189447295b2b01472961a9690002');

-- ----------------------------
-- Table structure for usertypeauthority
-- ----------------------------
DROP TABLE IF EXISTS `usertypeauthority`;
CREATE TABLE `usertypeauthority` (
  `id` varchar(32) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertypeauthority
-- ----------------------------
INSERT INTO `usertypeauthority` VALUES ('2c958da346862c52014686333e5c0001', '2016-04-09 09:31:29', '2016-04-09 09:31:30', '4028b88141de0a590141de0aa4810000', '0');
INSERT INTO `usertypeauthority` VALUES ('2c958da346862c52014686333e5c0002', '2016-04-09 09:31:53', '2016-04-09 09:31:54', '4028b88141de0a590141de0aa4810001', '0');
INSERT INTO `usertypeauthority` VALUES ('2c958da346862c52014686333e5c0003', '2016-04-09 09:32:06', '2016-04-09 09:32:08', '4028b88141de0a590141de0aa4810002', '0');
INSERT INTO `usertypeauthority` VALUES ('2c958da346862c52014686333e5c0004', '2016-04-09 09:33:05', '2016-04-09 09:33:06', '4028b88141de0a590141de0aa4810050', '0');
INSERT INTO `usertypeauthority` VALUES ('2c958da346862c52014686333e5c0005', '2016-04-09 09:33:30', '2016-04-09 09:33:31', '4028b88141de0a590141de0aa4810051', '0');
INSERT INTO `usertypeauthority` VALUES ('2c958da346862c52014686333e5c0006', '2016-04-09 09:33:46', '2016-04-09 09:33:47', '4028b88141de0a590141de0aa4810052', '0');
INSERT INTO `usertypeauthority` VALUES ('2c958da346862c52014686333e5c0007', '2016-04-09 09:34:01', '2016-04-09 09:34:02', '4028b88141de0a590141de0aa4810100', '0');
INSERT INTO `usertypeauthority` VALUES ('2c958da346862c52014686333e5c0008', '2016-04-09 09:34:17', '2016-04-09 09:34:18', '4028b88141de0a590141de0aa4810101', '0');
INSERT INTO `usertypeauthority` VALUES ('2c958da346862c52014686333e5c0009', '2016-04-09 09:34:32', '2016-04-09 09:34:34', '4028b88141de0a590141de0aa4810102', '0');
INSERT INTO `usertypeauthority` VALUES ('2c958da346862c52014686333e5c0010', '2016-04-09 09:34:51', '2016-04-09 09:34:52', '4028b88141de0a590141de0aa4810150', '0');
INSERT INTO `usertypeauthority` VALUES ('2c958da346862c52014686333e5c0011', '2016-04-09 09:35:06', '2016-04-09 09:35:09', '4028b88141de0a590141de0aa4810151', '0');
INSERT INTO `usertypeauthority` VALUES ('2c958da346862c52014686333e5c0012', '2016-04-11 17:32:35', '2016-04-11 17:32:36', '4028b88141de0a590141de0aa4810003', '0');

-- ----------------------------
-- View structure for admin_department_v
-- ----------------------------
DROP VIEW IF EXISTS `admin_department_v`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `admin_department_v` AS select `Admin`.`id` AS `id`,`Admin`.`createDate` AS `createDate`,`Admin`.`modifyDate` AS `modifyDate`,`Admin`.`userType` AS `userType`,`Admin`.`username` AS `username`,`Admin`.`password` AS `password`,`Admin`.`name` AS `name`,`Admin`.`email` AS `email`,`Admin`.`isAccountEnabled` AS `isAccountEnabled`,`Admin`.`loginIp` AS `loginIp`,`Admin`.`loginDate` AS `loginDate`,`Admin`.`department` AS `department`,`dt`.`parentId` AS `departmentParent`,`dt`.`remark` AS `remark`,`dt`.`name` AS `departmentName` from (`Admin` join `Department` `dt`) where (`Admin`.`department` = `dt`.`id`) ; ;
