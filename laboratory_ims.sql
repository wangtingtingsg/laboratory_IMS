/*
 Navicat Premium Data Transfer

 Source Server         : Demo
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : laboratory_ims

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 01/07/2020 16:48:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for experiment_info
-- ----------------------------
DROP TABLE IF EXISTS `experiment_info`;
CREATE TABLE `experiment_info`  (
  `experiment_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `experiment_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lab_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `teacher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exact_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`experiment_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of experiment_info
-- ----------------------------
INSERT INTO `experiment_info` VALUES ('00011', '分光计实验01', '001', '2020-06-26', 'Tea001', '19周，周三，3-4节');
INSERT INTO `experiment_info` VALUES ('00014', '示波器10', '002', '2020-06-20', '1710300101', '18周，周四，3-4节');
INSERT INTO `experiment_info` VALUES ('001', '开普勒实验05', '002', '2020-07-01', 'Tea001', '19周，周二，1-2节');
INSERT INTO `experiment_info` VALUES ('004', '分光计实验', '001', '2020-06-30', 'Tea001', '18周，周二，1-2节');
INSERT INTO `experiment_info` VALUES ('1', '分光计实验09', '001', '2020-07-01', 'Tea001', '19周，周三，1-2节');
INSERT INTO `experiment_info` VALUES ('34', '分光计实验34', '001', '2020-07-01', 'Tea001', '18周，周二，1-2节');

-- ----------------------------
-- Table structure for lab_info
-- ----------------------------
DROP TABLE IF EXISTS `lab_info`;
CREATE TABLE `lab_info`  (
  `lab_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lab_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `site` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `leader` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`lab_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lab_info
-- ----------------------------
INSERT INTO `lab_info` VALUES ('001', '分光计的实验室', '6B-17', 'Tea2', '有', '使用');
INSERT INTO `lab_info` VALUES ('002', '开普勒实验室', '6B-18', 'admin', '无', '使用');
INSERT INTO `lab_info` VALUES ('003', '透镜折射实验室', '6B-06', 'Tea001', '无', '停用');
INSERT INTO `lab_info` VALUES ('004', '示波器实验室', '6B-08', 'Tea001', '有', '停用');
INSERT INTO `lab_info` VALUES ('005', '005', '005', '005', '无', '使用');
INSERT INTO `lab_info` VALUES ('006', '006', '006', '006', '006', '停用');
INSERT INTO `lab_info` VALUES ('007', '007', '007', '007', '007', '停用');
INSERT INTO `lab_info` VALUES ('12', '12', '12', '12', '12', '停用');
INSERT INTO `lab_info` VALUES ('34', '34', '34', '34', '34', '停用');
INSERT INTO `lab_info` VALUES ('56', '56', '56', '56', '56', '停用');
INSERT INTO `lab_info` VALUES ('78', '78', '78', '78', '78', '停用');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(0) NOT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '管理员');
INSERT INTO `role` VALUES (2, '教师');
INSERT INTO `role` VALUES (3, '管理员');

-- ----------------------------
-- Table structure for state
-- ----------------------------
DROP TABLE IF EXISTS `state`;
CREATE TABLE `state`  (
  `id` int(0) NOT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of state
-- ----------------------------
INSERT INTO `state` VALUES (0, '停用');
INSERT INTO `state` VALUES (1, '使用');

-- ----------------------------
-- Table structure for stu_appointment
-- ----------------------------
DROP TABLE IF EXISTS `stu_appointment`;
CREATE TABLE `stu_appointment`  (
  `student_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `experiment_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `explan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stu_appointment
-- ----------------------------
INSERT INTO `stu_appointment` VALUES ('1710300101', '00011', '80', '操作非常规范');
INSERT INTO `stu_appointment` VALUES ('1710300101', '00014', NULL, NULL);
INSERT INTO `stu_appointment` VALUES ('1710300101', '001', '90', '操作非常规范');
INSERT INTO `stu_appointment` VALUES ('1710300101', '004', NULL, NULL);
INSERT INTO `stu_appointment` VALUES ('1710300101', '1', NULL, NULL);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uclass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('01', '贺朝', '123456', '学生', '自动化学院', '18级', '自动化2班', '5678');
INSERT INTO `user_info` VALUES ('1234', '点点', '123456', '教师', '计算机学院', '17级', '计算9班', '123456');
INSERT INTO `user_info` VALUES ('1710300101', '谢俞', '123456', '学生', '计算机学院', '17级', '计算2班', '1234');
INSERT INTO `user_info` VALUES ('1710300927', '王婷', '123456', '教师', '自动化学院', '18级', '计算1班', '1234');
INSERT INTO `user_info` VALUES ('admin', 'admin', 'admin', '管理员', NULL, NULL, NULL, NULL);
INSERT INTO `user_info` VALUES ('Tea001', '顾飞', '123456', '教师', '计算机学院', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
