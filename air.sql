/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50714
Source Host           : 127.0.0.1:3306
Source Database       : air

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2021-10-13 23:15:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for air_data
-- ----------------------------
DROP TABLE IF EXISTS `air_data`;
CREATE TABLE `air_data` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `startDate` char(19) DEFAULT NULL,
  `pm2_5` int(11) DEFAULT NULL,
  `pm10` int(11) DEFAULT NULL,
  `co` int(11) DEFAULT NULL,
  `no2` int(11) DEFAULT NULL,
  `o3` int(11) DEFAULT NULL,
  `so2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1032684701 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of air_data
-- ----------------------------
INSERT INTO `air_data` VALUES ('1032684601', '2021-07-25 02:00:00', '13', '62', '6', '99', '33', '1');
INSERT INTO `air_data` VALUES ('1032684602', '2021-07-25 03:00:00', '69', '54', '7', '9', '36', '9');
INSERT INTO `air_data` VALUES ('1032684603', '2021-07-25 04:00:00', '64', '77', '1', '37', '63', '0');
INSERT INTO `air_data` VALUES ('1032684604', '2021-07-25 05:00:00', '53', '77', '6', '58', '23', '0');
INSERT INTO `air_data` VALUES ('1032684605', '2021-07-25 06:00:00', '17', '89', '7', '98', '104', '5');
INSERT INTO `air_data` VALUES ('1032684606', '2021-07-25 07:00:00', '26', '69', '4', '71', '75', '4');
INSERT INTO `air_data` VALUES ('1032684607', '2021-07-25 08:00:00', '19', '30', '7', '43', '22', '5');
INSERT INTO `air_data` VALUES ('1032684608', '2021-07-25 09:00:00', '57', '71', '1', '44', '130', '0');
INSERT INTO `air_data` VALUES ('1032684609', '2021-07-25 10:00:00', '29', '7', '1', '29', '20', '8');
INSERT INTO `air_data` VALUES ('1032684610', '2021-07-25 11:00:00', '47', '91', '5', '97', '36', '3');
INSERT INTO `air_data` VALUES ('1032684611', '2021-07-25 12:00:00', '49', '66', '2', '1', '71', '3');
INSERT INTO `air_data` VALUES ('1032684612', '2021-07-25 13:00:00', '11', '85', '8', '30', '28', '0');
INSERT INTO `air_data` VALUES ('1032684613', '2021-07-25 14:00:00', '41', '83', '4', '58', '100', '6');
INSERT INTO `air_data` VALUES ('1032684614', '2021-07-25 15:00:00', '63', '77', '1', '36', '61', '9');
INSERT INTO `air_data` VALUES ('1032684615', '2021-07-25 16:00:00', '35', '70', '10', '80', '8', '9');
INSERT INTO `air_data` VALUES ('1032684616', '2021-07-25 17:00:00', '11', '17', '4', '53', '61', '5');
INSERT INTO `air_data` VALUES ('1032684617', '2021-07-25 18:00:00', '5', '98', '7', '40', '1', '8');
INSERT INTO `air_data` VALUES ('1032684618', '2021-07-25 19:00:00', '9', '17', '4', '67', '6', '2');
INSERT INTO `air_data` VALUES ('1032684619', '2021-07-25 20:00:00', '59', '65', '7', '53', '87', '3');
INSERT INTO `air_data` VALUES ('1032684620', '2021-07-25 21:00:00', '57', '16', '4', '27', '42', '6');
INSERT INTO `air_data` VALUES ('1032684621', '2021-07-25 22:00:00', '14', '18', '3', '90', '99', '6');
INSERT INTO `air_data` VALUES ('1032684622', '2021-07-25 23:00:00', '65', '91', '7', '2', '126', '2');
INSERT INTO `air_data` VALUES ('1032684623', '2021-07-26 00:00:00', '17', '78', '2', '52', '12', '8');
INSERT INTO `air_data` VALUES ('1032684624', '2021-07-26 01:00:00', '62', '96', '2', '90', '2', '4');
INSERT INTO `air_data` VALUES ('1032684625', '2021-07-26 02:00:00', '61', '23', '5', '90', '140', '10');
INSERT INTO `air_data` VALUES ('1032684626', '2021-07-26 03:00:00', '4', '36', '6', '9', '81', '4');
INSERT INTO `air_data` VALUES ('1032684627', '2021-07-26 04:00:00', '39', '49', '8', '32', '48', '6');
INSERT INTO `air_data` VALUES ('1032684628', '2021-07-26 05:00:00', '17', '32', '8', '23', '99', '6');
INSERT INTO `air_data` VALUES ('1032684629', '2021-07-26 06:00:00', '68', '8', '5', '21', '85', '2');
INSERT INTO `air_data` VALUES ('1032684630', '2021-07-26 07:00:00', '24', '11', '5', '28', '121', '2');
INSERT INTO `air_data` VALUES ('1032684631', '2021-07-26 08:00:00', '47', '70', '5', '25', '127', '5');
INSERT INTO `air_data` VALUES ('1032684632', '2021-07-26 09:00:00', '61', '92', '10', '6', '62', '9');
INSERT INTO `air_data` VALUES ('1032684633', '2021-07-26 10:00:00', '10', '11', '1', '17', '83', '3');
INSERT INTO `air_data` VALUES ('1032684634', '2021-07-26 11:00:00', '43', '30', '7', '38', '143', '6');
INSERT INTO `air_data` VALUES ('1032684635', '2021-07-26 12:00:00', '16', '26', '6', '41', '21', '5');
INSERT INTO `air_data` VALUES ('1032684636', '2021-07-26 13:00:00', '59', '89', '9', '78', '35', '8');
INSERT INTO `air_data` VALUES ('1032684637', '2021-07-26 14:00:00', '27', '51', '4', '29', '55', '10');
INSERT INTO `air_data` VALUES ('1032684638', '2021-07-26 15:00:00', '46', '46', '3', '12', '108', '2');
INSERT INTO `air_data` VALUES ('1032684639', '2021-07-26 16:00:00', '2', '44', '1', '21', '108', '10');
INSERT INTO `air_data` VALUES ('1032684640', '2021-07-26 17:00:00', '48', '50', '5', '85', '123', '6');
INSERT INTO `air_data` VALUES ('1032684641', '2021-07-26 18:00:00', '25', '7', '3', '18', '9', '8');
INSERT INTO `air_data` VALUES ('1032684642', '2021-07-26 19:00:00', '46', '1', '1', '27', '23', '10');
INSERT INTO `air_data` VALUES ('1032684643', '2021-07-26 20:00:00', '24', '86', '3', '71', '114', '7');
INSERT INTO `air_data` VALUES ('1032684644', '2021-07-26 21:00:00', '8', '51', '2', '54', '10', '7');
INSERT INTO `air_data` VALUES ('1032684645', '2021-07-26 22:00:00', '29', '89', '2', '47', '99', '9');
INSERT INTO `air_data` VALUES ('1032684646', '2021-07-26 23:00:00', '29', '44', '10', '55', '122', '4');
INSERT INTO `air_data` VALUES ('1032684647', '2021-07-27 00:00:00', '42', '81', '2', '76', '12', '1');
INSERT INTO `air_data` VALUES ('1032684648', '2021-07-27 01:00:00', '28', '61', '9', '48', '122', '6');
INSERT INTO `air_data` VALUES ('1032684649', '2021-07-27 02:00:00', '43', '26', '4', '46', '145', '5');
INSERT INTO `air_data` VALUES ('1032684650', '2021-07-27 03:00:00', '26', '49', '3', '23', '16', '9');
INSERT INTO `air_data` VALUES ('1032684651', '2021-07-27 04:00:00', '69', '35', '8', '82', '116', '4');
INSERT INTO `air_data` VALUES ('1032684652', '2021-07-27 05:00:00', '49', '27', '3', '61', '26', '0');
INSERT INTO `air_data` VALUES ('1032684653', '2021-07-27 06:00:00', '50', '42', '9', '49', '93', '6');
INSERT INTO `air_data` VALUES ('1032684654', '2021-07-27 07:00:00', '17', '35', '0', '13', '82', '3');
INSERT INTO `air_data` VALUES ('1032684655', '2021-07-27 08:00:00', '5', '30', '3', '69', '74', '4');
INSERT INTO `air_data` VALUES ('1032684656', '2021-07-27 09:00:00', '37', '46', '7', '18', '112', '2');
INSERT INTO `air_data` VALUES ('1032684657', '2021-07-27 10:00:00', '57', '45', '8', '69', '6', '1');
INSERT INTO `air_data` VALUES ('1032684658', '2021-07-27 11:00:00', '30', '84', '9', '91', '135', '8');
INSERT INTO `air_data` VALUES ('1032684659', '2021-07-27 12:00:00', '9', '35', '4', '71', '75', '4');
INSERT INTO `air_data` VALUES ('1032684660', '2021-07-27 13:00:00', '27', '81', '9', '95', '16', '7');
INSERT INTO `air_data` VALUES ('1032684661', '2021-07-27 14:00:00', '13', '80', '5', '95', '52', '9');
INSERT INTO `air_data` VALUES ('1032684662', '2021-07-27 15:00:00', '25', '17', '7', '23', '139', '9');
INSERT INTO `air_data` VALUES ('1032684663', '2021-07-27 16:00:00', '63', '68', '7', '45', '21', '4');
INSERT INTO `air_data` VALUES ('1032684664', '2021-07-27 17:00:00', '29', '98', '6', '24', '43', '7');
INSERT INTO `air_data` VALUES ('1032684665', '2021-07-27 18:00:00', '52', '54', '5', '81', '88', '5');
INSERT INTO `air_data` VALUES ('1032684666', '2021-07-27 19:00:00', '50', '6', '2', '81', '65', '8');
INSERT INTO `air_data` VALUES ('1032684667', '2021-07-27 20:00:00', '31', '99', '6', '8', '83', '5');
INSERT INTO `air_data` VALUES ('1032684668', '2021-07-27 21:00:00', '0', '43', '1', '30', '23', '9');
INSERT INTO `air_data` VALUES ('1032684669', '2021-07-27 22:00:00', '57', '53', '2', '32', '11', '4');
INSERT INTO `air_data` VALUES ('1032684670', '2021-07-27 23:00:00', '53', '61', '8', '99', '100', '4');
INSERT INTO `air_data` VALUES ('1032684671', '2021-07-23 00:00:00', '58', '6', '8', '86', '128', '7');
INSERT INTO `air_data` VALUES ('1032684672', '2021-07-23 01:00:00', '67', '67', '5', '32', '29', '0');
INSERT INTO `air_data` VALUES ('1032684673', '2021-07-23 02:00:00', '33', '34', '3', '31', '116', '9');
INSERT INTO `air_data` VALUES ('1032684674', '2021-07-23 03:00:00', '24', '94', '7', '46', '47', '2');
INSERT INTO `air_data` VALUES ('1032684675', '2021-07-23 04:00:00', '69', '40', '0', '3', '3', '10');
INSERT INTO `air_data` VALUES ('1032684676', '2021-07-23 05:00:00', '66', '69', '6', '13', '107', '2');
INSERT INTO `air_data` VALUES ('1032684677', '2021-07-23 06:00:00', '53', '23', '9', '87', '89', '4');
INSERT INTO `air_data` VALUES ('1032684678', '2021-07-23 07:00:00', '69', '90', '5', '1', '63', '1');
INSERT INTO `air_data` VALUES ('1032684679', '2021-07-23 08:00:00', '4', '13', '4', '83', '125', '7');
INSERT INTO `air_data` VALUES ('1032684680', '2021-07-23 09:00:00', '56', '4', '8', '75', '64', '9');
INSERT INTO `air_data` VALUES ('1032684681', '2021-07-23 10:00:00', '13', '24', '6', '43', '42', '1');
INSERT INTO `air_data` VALUES ('1032684682', '2021-07-23 11:00:00', '47', '2', '1', '52', '36', '6');
INSERT INTO `air_data` VALUES ('1032684683', '2021-07-23 12:00:00', '33', '46', '9', '96', '32', '2');
INSERT INTO `air_data` VALUES ('1032684684', '2021-07-23 13:00:00', '16', '63', '5', '40', '92', '9');
INSERT INTO `air_data` VALUES ('1032684685', '2021-07-23 14:00:00', '41', '28', '6', '25', '59', '2');
INSERT INTO `air_data` VALUES ('1032684686', '2021-07-23 15:00:00', '66', '5', '4', '86', '15', '9');
INSERT INTO `air_data` VALUES ('1032684687', '2021-07-23 16:00:00', '17', '52', '9', '76', '34', '8');
INSERT INTO `air_data` VALUES ('1032684688', '2021-07-23 17:00:00', '32', '79', '6', '51', '126', '7');
INSERT INTO `air_data` VALUES ('1032684689', '2021-07-23 18:00:00', '55', '96', '5', '37', '74', '4');
INSERT INTO `air_data` VALUES ('1032684690', '2021-07-23 19:00:00', '23', '54', '7', '96', '99', '4');
INSERT INTO `air_data` VALUES ('1032684691', '2021-07-23 20:00:00', '6', '18', '6', '71', '90', '9');
INSERT INTO `air_data` VALUES ('1032684692', '2021-07-23 21:00:00', '37', '5', '6', '8', '68', '0');
INSERT INTO `air_data` VALUES ('1032684693', '2021-07-23 22:00:00', '57', '96', '4', '90', '66', '5');
INSERT INTO `air_data` VALUES ('1032684694', '2021-07-23 23:00:00', '11', '30', '0', '28', '46', '7');
INSERT INTO `air_data` VALUES ('1032684695', '2021-07-24 00:00:00', '31', '20', '7', '78', '133', '1');
INSERT INTO `air_data` VALUES ('1032684696', '2021-07-24 01:00:00', '49', '29', '4', '96', '103', '5');
INSERT INTO `air_data` VALUES ('1032684697', '2021-07-24 02:00:00', '48', '79', '9', '15', '3', '7');
INSERT INTO `air_data` VALUES ('1032684698', '2021-07-24 03:00:00', '20', '40', '2', '62', '91', '2');
INSERT INTO `air_data` VALUES ('1032684699', '2021-07-24 04:00:00', '2', '65', '1', '80', '80', '3');
INSERT INTO `air_data` VALUES ('1032684700', '2021-07-24 00:00:00', '51', '53', '5', '68', '8', '2');

-- ----------------------------
-- Table structure for checkindex
-- ----------------------------
DROP TABLE IF EXISTS `checkindex`;
CREATE TABLE `checkindex` (
  `id` int(20) DEFAULT NULL,
  `deviceid` int(20) DEFAULT NULL,
  `PM2_5` double DEFAULT NULL,
  `PM10` double DEFAULT NULL,
  `CO` double DEFAULT NULL,
  `NO2` double DEFAULT NULL,
  `O3` double DEFAULT NULL,
  `SO2` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checkindex
-- ----------------------------
INSERT INTO `checkindex` VALUES ('0', '10', '6.72', '2.64', '3.01', '7.12', '6.6', '1.61');
INSERT INTO `checkindex` VALUES ('1', '11', '6.84', '9.13', '5.11', '8.15', '5.44', '2.74');
INSERT INTO `checkindex` VALUES ('2', '12', '2.29', '5.68', '1.53', '0.63', '8.53', '0.76');
INSERT INTO `checkindex` VALUES ('3', '13', '3.09', '0.7', '4.21', '8.96', '2.15', '3.89');
INSERT INTO `checkindex` VALUES ('4', '14', '6.47', '0.76', '4.4', '9.72', '5.42', '7.92');
INSERT INTO `checkindex` VALUES ('5', '15', '5.7', '0.82', '7.02', '2.64', '2.13', '2.74');
INSERT INTO `checkindex` VALUES ('6', '16', '5.87', '5.46', '9.68', '2.05', '1.2', '9.83');
INSERT INTO `checkindex` VALUES ('7', '17', '7.47', '4.87', '1.96', '5.19', '0.07', '4.78');
INSERT INTO `checkindex` VALUES ('8', '18', '1.57', '3.94', '4.97', '3.04', '0.31', '2.41');
INSERT INTO `checkindex` VALUES ('9', '19', '7.39', '7.09', '3.3', '5.22', '6.21', '5.36');

-- ----------------------------
-- Table structure for devicetable
-- ----------------------------
DROP TABLE IF EXISTS `devicetable`;
CREATE TABLE `devicetable` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `device` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of devicetable
-- ----------------------------
INSERT INTO `devicetable` VALUES ('1', '激光分层传感器SDS011');
INSERT INTO `devicetable` VALUES ('2', 'ZEO3-SO2二氧化硫模组');
INSERT INTO `devicetable` VALUES ('3', '激光分层传感器SDS011');
INSERT INTO `devicetable` VALUES ('4', 'MICS-6814');
INSERT INTO `devicetable` VALUES ('5', 'ZE14-O3臭氧模块');

-- ----------------------------
-- Table structure for map
-- ----------------------------
DROP TABLE IF EXISTS `map`;
CREATE TABLE `map` (
  `id` int(20) DEFAULT NULL,
  `deviceId` int(20) DEFAULT NULL,
  `mapname` varchar(255) DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `atitude` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of map
-- ----------------------------
INSERT INTO `map` VALUES ('1032684600', '10', '广州', '113.27', '23.13');
INSERT INTO `map` VALUES ('1032684608', '10', '广州', '113.27', '23.14');

-- ----------------------------
-- Table structure for realtime_air_data
-- ----------------------------
DROP TABLE IF EXISTS `realtime_air_data`;
CREATE TABLE `realtime_air_data` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `startDate` char(19) DEFAULT NULL,
  `pm2_5` int(11) DEFAULT NULL,
  `pm10` int(11) DEFAULT NULL,
  `co` int(11) DEFAULT NULL,
  `no2` int(11) DEFAULT NULL,
  `o3` int(11) DEFAULT NULL,
  `so2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1032684701 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realtime_air_data
-- ----------------------------
INSERT INTO `realtime_air_data` VALUES ('1032684600', '2021-07-25 01:00:00', '52', '91', '3', '80', '15', '1');
INSERT INTO `realtime_air_data` VALUES ('1032684601', '2021-07-25 02:00:00', '13', '62', '6', '99', '33', '1');
INSERT INTO `realtime_air_data` VALUES ('1032684602', '2021-07-25 03:00:00', '69', '54', '7', '9', '36', '9');
INSERT INTO `realtime_air_data` VALUES ('1032684603', '2021-07-25 04:00:00', '64', '77', '1', '37', '63', '0');
INSERT INTO `realtime_air_data` VALUES ('1032684604', '2021-07-25 05:00:00', '53', '77', '6', '58', '23', '0');
INSERT INTO `realtime_air_data` VALUES ('1032684605', '2021-07-25 06:00:00', '17', '89', '7', '98', '104', '5');
INSERT INTO `realtime_air_data` VALUES ('1032684606', '2021-07-25 07:00:00', '26', '69', '4', '71', '75', '4');
INSERT INTO `realtime_air_data` VALUES ('1032684607', '2021-07-25 08:00:00', '19', '30', '7', '43', '22', '5');
INSERT INTO `realtime_air_data` VALUES ('1032684608', '2021-07-25 09:00:00', '57', '71', '1', '44', '130', '0');
INSERT INTO `realtime_air_data` VALUES ('1032684609', '2021-07-25 10:00:00', '29', '7', '1', '29', '20', '8');
INSERT INTO `realtime_air_data` VALUES ('1032684610', '2021-07-25 11:00:00', '47', '91', '5', '97', '36', '3');
INSERT INTO `realtime_air_data` VALUES ('1032684611', '2021-07-25 12:00:00', '49', '66', '2', '1', '71', '3');
INSERT INTO `realtime_air_data` VALUES ('1032684612', '2021-07-25 13:00:00', '11', '85', '8', '30', '28', '0');
INSERT INTO `realtime_air_data` VALUES ('1032684613', '2021-07-25 14:00:00', '41', '83', '4', '58', '100', '6');
INSERT INTO `realtime_air_data` VALUES ('1032684614', '2021-07-25 15:00:00', '63', '77', '1', '36', '61', '9');
INSERT INTO `realtime_air_data` VALUES ('1032684615', '2021-07-25 16:00:00', '35', '70', '10', '80', '8', '9');
INSERT INTO `realtime_air_data` VALUES ('1032684616', '2021-07-25 17:00:00', '11', '17', '4', '53', '61', '5');
INSERT INTO `realtime_air_data` VALUES ('1032684617', '2021-07-25 18:00:00', '5', '98', '7', '40', '1', '8');
INSERT INTO `realtime_air_data` VALUES ('1032684618', '2021-07-25 19:00:00', '9', '17', '4', '67', '6', '2');
INSERT INTO `realtime_air_data` VALUES ('1032684619', '2021-07-25 20:00:00', '59', '65', '7', '53', '87', '3');
INSERT INTO `realtime_air_data` VALUES ('1032684620', '2021-07-25 21:00:00', '57', '16', '4', '27', '42', '6');
INSERT INTO `realtime_air_data` VALUES ('1032684621', '2021-07-25 22:00:00', '14', '18', '3', '90', '99', '6');
INSERT INTO `realtime_air_data` VALUES ('1032684622', '2021-07-25 23:00:00', '65', '91', '7', '2', '126', '2');
INSERT INTO `realtime_air_data` VALUES ('1032684623', '2021-07-26 00:00:00', '17', '78', '2', '52', '12', '8');
INSERT INTO `realtime_air_data` VALUES ('1032684624', '2021-07-26 01:00:00', '62', '96', '2', '90', '2', '4');
INSERT INTO `realtime_air_data` VALUES ('1032684625', '2021-07-26 02:00:00', '61', '23', '5', '90', '140', '10');
INSERT INTO `realtime_air_data` VALUES ('1032684626', '2021-07-26 03:00:00', '4', '36', '6', '9', '81', '4');
INSERT INTO `realtime_air_data` VALUES ('1032684627', '2021-07-26 04:00:00', '39', '49', '8', '32', '48', '6');
INSERT INTO `realtime_air_data` VALUES ('1032684628', '2021-07-26 05:00:00', '17', '32', '8', '23', '99', '6');
INSERT INTO `realtime_air_data` VALUES ('1032684629', '2021-07-26 06:00:00', '68', '8', '5', '21', '85', '2');
INSERT INTO `realtime_air_data` VALUES ('1032684630', '2021-07-26 07:00:00', '24', '11', '5', '28', '121', '2');
INSERT INTO `realtime_air_data` VALUES ('1032684631', '2021-07-26 08:00:00', '47', '70', '5', '25', '127', '5');
INSERT INTO `realtime_air_data` VALUES ('1032684632', '2021-07-26 09:00:00', '61', '92', '10', '6', '62', '9');
INSERT INTO `realtime_air_data` VALUES ('1032684633', '2021-07-26 10:00:00', '10', '11', '1', '17', '83', '3');
INSERT INTO `realtime_air_data` VALUES ('1032684634', '2021-07-26 11:00:00', '43', '30', '7', '38', '143', '6');
INSERT INTO `realtime_air_data` VALUES ('1032684635', '2021-07-26 12:00:00', '16', '26', '6', '41', '21', '5');
INSERT INTO `realtime_air_data` VALUES ('1032684636', '2021-07-26 13:00:00', '59', '89', '9', '78', '35', '8');
INSERT INTO `realtime_air_data` VALUES ('1032684637', '2021-07-26 14:00:00', '27', '51', '4', '29', '55', '10');
INSERT INTO `realtime_air_data` VALUES ('1032684638', '2021-07-26 15:00:00', '46', '46', '3', '12', '108', '2');
INSERT INTO `realtime_air_data` VALUES ('1032684639', '2021-07-26 16:00:00', '2', '44', '1', '21', '108', '10');
INSERT INTO `realtime_air_data` VALUES ('1032684640', '2021-07-26 17:00:00', '48', '50', '5', '85', '123', '6');
INSERT INTO `realtime_air_data` VALUES ('1032684641', '2021-07-26 18:00:00', '25', '7', '3', '18', '9', '8');
INSERT INTO `realtime_air_data` VALUES ('1032684642', '2021-07-26 19:00:00', '46', '1', '1', '27', '23', '10');
INSERT INTO `realtime_air_data` VALUES ('1032684643', '2021-07-26 20:00:00', '24', '86', '3', '71', '114', '7');
INSERT INTO `realtime_air_data` VALUES ('1032684644', '2021-07-26 21:00:00', '8', '51', '2', '54', '10', '7');
INSERT INTO `realtime_air_data` VALUES ('1032684645', '2021-07-26 22:00:00', '29', '89', '2', '47', '99', '9');
INSERT INTO `realtime_air_data` VALUES ('1032684646', '2021-07-26 23:00:00', '29', '44', '10', '55', '122', '4');
INSERT INTO `realtime_air_data` VALUES ('1032684647', '2021-07-27 00:00:00', '42', '81', '2', '76', '12', '1');
INSERT INTO `realtime_air_data` VALUES ('1032684648', '2021-07-27 01:00:00', '28', '61', '9', '48', '122', '6');
INSERT INTO `realtime_air_data` VALUES ('1032684649', '2021-07-27 02:00:00', '43', '26', '4', '46', '145', '5');
INSERT INTO `realtime_air_data` VALUES ('1032684650', '2021-07-27 03:00:00', '26', '49', '3', '23', '16', '9');
INSERT INTO `realtime_air_data` VALUES ('1032684651', '2021-07-27 04:00:00', '69', '35', '8', '82', '116', '4');
INSERT INTO `realtime_air_data` VALUES ('1032684652', '2021-07-27 05:00:00', '49', '27', '3', '61', '26', '0');
INSERT INTO `realtime_air_data` VALUES ('1032684653', '2021-07-27 06:00:00', '50', '42', '9', '49', '93', '6');
INSERT INTO `realtime_air_data` VALUES ('1032684654', '2021-07-27 07:00:00', '17', '35', '0', '13', '82', '3');
INSERT INTO `realtime_air_data` VALUES ('1032684655', '2021-07-27 08:00:00', '5', '30', '3', '69', '74', '4');
INSERT INTO `realtime_air_data` VALUES ('1032684656', '2021-07-27 09:00:00', '37', '46', '7', '18', '112', '2');
INSERT INTO `realtime_air_data` VALUES ('1032684657', '2021-07-27 10:00:00', '57', '45', '8', '69', '6', '1');
INSERT INTO `realtime_air_data` VALUES ('1032684658', '2021-07-27 11:00:00', '30', '84', '9', '91', '135', '8');
INSERT INTO `realtime_air_data` VALUES ('1032684659', '2021-07-27 12:00:00', '9', '35', '4', '71', '75', '4');
INSERT INTO `realtime_air_data` VALUES ('1032684660', '2021-07-27 13:00:00', '27', '81', '9', '95', '16', '7');
INSERT INTO `realtime_air_data` VALUES ('1032684661', '2021-07-27 14:00:00', '13', '80', '5', '95', '52', '9');
INSERT INTO `realtime_air_data` VALUES ('1032684662', '2021-07-27 15:00:00', '25', '17', '7', '23', '139', '9');
INSERT INTO `realtime_air_data` VALUES ('1032684663', '2021-07-27 16:00:00', '63', '68', '7', '45', '21', '4');
INSERT INTO `realtime_air_data` VALUES ('1032684664', '2021-07-27 17:00:00', '29', '98', '6', '24', '43', '7');
INSERT INTO `realtime_air_data` VALUES ('1032684665', '2021-07-27 18:00:00', '52', '54', '5', '81', '88', '5');
INSERT INTO `realtime_air_data` VALUES ('1032684666', '2021-07-27 19:00:00', '50', '6', '2', '81', '65', '8');
INSERT INTO `realtime_air_data` VALUES ('1032684667', '2021-07-27 20:00:00', '31', '99', '6', '8', '83', '5');
INSERT INTO `realtime_air_data` VALUES ('1032684668', '2021-07-27 21:00:00', '0', '43', '1', '30', '23', '9');
INSERT INTO `realtime_air_data` VALUES ('1032684669', '2021-07-27 22:00:00', '57', '53', '2', '32', '11', '4');
INSERT INTO `realtime_air_data` VALUES ('1032684670', '2021-07-27 23:00:00', '53', '61', '8', '99', '100', '4');
INSERT INTO `realtime_air_data` VALUES ('1032684671', '2021-07-23 00:00:00', '58', '6', '8', '86', '128', '7');
INSERT INTO `realtime_air_data` VALUES ('1032684672', '2021-07-23 01:00:00', '67', '67', '5', '32', '29', '0');
INSERT INTO `realtime_air_data` VALUES ('1032684673', '2021-07-23 02:00:00', '33', '34', '3', '31', '116', '9');
INSERT INTO `realtime_air_data` VALUES ('1032684674', '2021-07-23 03:00:00', '24', '94', '7', '46', '47', '2');
INSERT INTO `realtime_air_data` VALUES ('1032684675', '2021-07-23 04:00:00', '69', '40', '0', '3', '3', '10');
INSERT INTO `realtime_air_data` VALUES ('1032684676', '2021-07-23 05:00:00', '66', '69', '6', '13', '107', '2');
INSERT INTO `realtime_air_data` VALUES ('1032684677', '2021-07-23 06:00:00', '53', '23', '9', '87', '89', '4');
INSERT INTO `realtime_air_data` VALUES ('1032684678', '2021-07-23 07:00:00', '69', '90', '5', '1', '63', '1');
INSERT INTO `realtime_air_data` VALUES ('1032684679', '2021-07-23 08:00:00', '4', '13', '4', '83', '125', '7');
INSERT INTO `realtime_air_data` VALUES ('1032684680', '2021-07-23 09:00:00', '56', '4', '8', '75', '64', '9');
INSERT INTO `realtime_air_data` VALUES ('1032684681', '2021-07-23 10:00:00', '13', '24', '6', '43', '42', '1');
INSERT INTO `realtime_air_data` VALUES ('1032684682', '2021-07-23 11:00:00', '47', '2', '1', '52', '36', '6');
INSERT INTO `realtime_air_data` VALUES ('1032684683', '2021-07-23 12:00:00', '33', '46', '9', '96', '32', '2');
INSERT INTO `realtime_air_data` VALUES ('1032684684', '2021-07-23 13:00:00', '16', '63', '5', '40', '92', '9');
INSERT INTO `realtime_air_data` VALUES ('1032684685', '2021-07-23 14:00:00', '41', '28', '6', '25', '59', '2');
INSERT INTO `realtime_air_data` VALUES ('1032684686', '2021-07-23 15:00:00', '66', '5', '4', '86', '15', '9');
INSERT INTO `realtime_air_data` VALUES ('1032684687', '2021-07-23 16:00:00', '17', '52', '9', '76', '34', '8');
INSERT INTO `realtime_air_data` VALUES ('1032684688', '2021-07-23 17:00:00', '32', '79', '6', '51', '126', '7');
INSERT INTO `realtime_air_data` VALUES ('1032684689', '2021-07-23 18:00:00', '55', '96', '5', '37', '74', '4');
INSERT INTO `realtime_air_data` VALUES ('1032684690', '2021-07-23 19:00:00', '23', '54', '7', '96', '99', '4');
INSERT INTO `realtime_air_data` VALUES ('1032684691', '2021-07-23 20:00:00', '6', '18', '6', '71', '90', '9');
INSERT INTO `realtime_air_data` VALUES ('1032684692', '2021-07-23 21:00:00', '37', '5', '6', '8', '68', '0');
INSERT INTO `realtime_air_data` VALUES ('1032684693', '2021-07-23 22:00:00', '57', '96', '4', '90', '66', '5');
INSERT INTO `realtime_air_data` VALUES ('1032684694', '2021-07-23 23:00:00', '11', '30', '0', '28', '46', '7');
INSERT INTO `realtime_air_data` VALUES ('1032684695', '2021-07-24 20:00:00', '31', '20', '7', '78', '133', '1');
INSERT INTO `realtime_air_data` VALUES ('1032684696', '2021-07-24 01:00:00', '49', '29', '4', '96', '103', '5');
INSERT INTO `realtime_air_data` VALUES ('1032684697', '2021-07-24 02:00:00', '48', '79', '9', '15', '3', '7');
INSERT INTO `realtime_air_data` VALUES ('1032684698', '2021-07-24 03:00:00', '20', '40', '2', '62', '91', '2');
INSERT INTO `realtime_air_data` VALUES ('1032684699', '2021-07-24 20:00:00', '2', '65', '1', '80', '80', '3');
INSERT INTO `realtime_air_data` VALUES ('1032684700', '2021-07-24 20:00:00', '51', '53', '5', '68', '8', '2');

-- ----------------------------
-- Table structure for timetable
-- ----------------------------
DROP TABLE IF EXISTS `timetable`;
CREATE TABLE `timetable` (
  `id` int(20) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `chargeTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleteTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ifUse` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of timetable
-- ----------------------------
INSERT INTO `timetable` VALUES ('0', '2012-10-10 18:26:41', '2010-08-29 03:03:49', '2010-10-21 07:59:07', '0');
INSERT INTO `timetable` VALUES ('1', '2010-06-23 01:59:14', '2010-12-19 13:31:09', '2010-06-26 13:38:07', '0');
INSERT INTO `timetable` VALUES ('2', '2010-06-17 16:33:30', '2011-01-02 04:02:21', '2010-09-18 18:31:18', '0');
INSERT INTO `timetable` VALUES ('3', '2010-10-03 06:03:35', '2012-01-16 01:12:01', '2012-02-05 11:49:22', '0');
INSERT INTO `timetable` VALUES ('4', '2012-10-14 19:47:26', '2012-07-28 00:21:35', '2011-07-29 14:25:37', '0');
INSERT INTO `timetable` VALUES ('5', '2010-01-30 02:09:33', '2011-07-20 17:23:39', '2011-08-31 08:29:37', '0');
INSERT INTO `timetable` VALUES ('6', '2012-03-16 16:13:39', '2011-12-03 02:28:04', '2010-01-22 11:39:27', '0');
INSERT INTO `timetable` VALUES ('7', '2012-03-29 03:17:59', '2010-07-26 03:13:54', '2011-12-12 06:15:39', '0');
INSERT INTO `timetable` VALUES ('8', '2012-01-07 06:05:53', '2011-06-09 12:00:10', '2011-02-18 17:43:14', '0');
INSERT INTO `timetable` VALUES ('9', '2010-11-22 18:20:47', '2012-05-02 08:28:53', '2010-03-25 11:22:02', '0');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(20) DEFAULT NULL,
  `loginCode` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('0', '21d8a5ba58', '756112', '11d9f9cb4e', null);
INSERT INTO `t_user` VALUES ('1', '98b1a51527', '686495', '7669794cb1', null);
INSERT INTO `t_user` VALUES ('2', '836e23aa70', '882382', '13509a114c', null);
INSERT INTO `t_user` VALUES ('3', '5212593f99', '890495', 'ccd7c90de8', null);
INSERT INTO `t_user` VALUES ('4', 'f8d75eac91', '396092', '670a66e2ff', null);
INSERT INTO `t_user` VALUES ('5', '59e72de55e', '374559', '18926ce938', null);
INSERT INTO `t_user` VALUES ('6', 'e416302c37', '848908', 'dc5df1d78a', null);
INSERT INTO `t_user` VALUES ('7', 'a3cc60fb88', '849963', '4de3a3cd26', null);
INSERT INTO `t_user` VALUES ('8', '0e4e5e87ac', '471813', 'eb5cbedc66', null);
INSERT INTO `t_user` VALUES ('9', '67a4c05ea2', '861560', '382bb87253', null);

-- ----------------------------
-- Procedure structure for dataRandom
-- ----------------------------
DROP PROCEDURE IF EXISTS `dataRandom`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dataRandom`(n int)
BEGIN 
        DECLARE i INT DEFAULT 0;
        WHILE i < n DO
    insert into air_data(startDate,pm2_5,pm10,co,no2,o3,so2) 
    values('2020-01-01 00:00:00',round(rand()*70),round(rand()*100),
    round(rand()*10),round(rand()*100),round(rand()*150),round(rand()*10)
    );
        
            SET i = i+1;
        END WHILE;
    END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for getDateTime
-- ----------------------------
DROP FUNCTION IF EXISTS `getDateTime`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getDateTime`(startDate varchar(10),endDate varchar(10)) RETURNS varchar(20) CHARSET utf8
begin
declare dateStr varchar(20);
select from_unixtime(
        unix_timestamp(startDate) + floor(
            rand() * (
                unix_timestamp(endDate) - unix_timestamp(startDate) + 1
            )
        )
    ) into dateStr;    
    return dateStr;
end
;;
DELIMITER ;

-- ----------------------------
-- Function structure for rand_string
-- ----------------------------
DROP FUNCTION IF EXISTS `rand_string`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `rand_string`(n INT) RETURNS varchar(255) CHARSET utf8
BEGIN 
        DECLARE char_str varchar(200) DEFAULT '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        DECLARE return_str varchar(255) DEFAULT '';
        DECLARE i INT DEFAULT 0;
        WHILE i < n DO
            SET return_str = concat(return_str, substring(char_str, FLOOR(1 + RAND()*36), 1));
            SET i = i+1;
        END WHILE;
        RETURN return_str;
    END
;;
DELIMITER ;
