/*
Navicat MySQL Data Transfer

Source Server         : MYSQL57
Source Server Version : 50713
Source Host           : localhost:3307
Source Database       : project.http

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2023-08-11 16:12:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sss
-- ----------------------------
DROP TABLE IF EXISTS `sss`;
CREATE TABLE `sss` (
  `ss` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sss
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Event structure for test
-- ----------------------------
DROP EVENT IF EXISTS `test`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `test` ON SCHEDULE AT '2023-08-11 16:11:46' ON COMPLETION NOT PRESERVE ENABLE DO -- 创建项目表
CREATE TABLE Projects (
  ProjectID INT PRIMARY KEY,
  ProjectName VARCHAR(100),
  ProjectDescription VARCHAR(255),
  CreationTime TIMESTAMP
);
;;
DELIMITER ;
