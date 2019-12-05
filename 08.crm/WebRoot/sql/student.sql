/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50710
 Source Host           : localhost:3306
 Source Schema         : student

 Target Server Type    : MySQL
 Target Server Version : 50710
 File Encoding         : 65001

 Date: 05/12/2019 19:56:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for act
-- ----------------------------
DROP TABLE IF EXISTS `act`;
CREATE TABLE `act`  (
  `actno` int(11) DEFAULT NULL,
  `balance` float DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of act
-- ----------------------------
INSERT INTO `act` VALUES (1, 250);
INSERT INTO `act` VALUES (2, 100);

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes`  (
  `class_id1` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class_status` int(11) DEFAULT 0,
  PRIMARY KEY (`class_id1`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES (1, '1304', 1);
INSERT INTO `classes` VALUES (2, 'GD1504A', 1);
INSERT INTO `classes` VALUES (3, '15安卓101', 1);
INSERT INTO `classes` VALUES (4, '材料1701', 1);
INSERT INTO `classes` VALUES (5, 'AZ1704', 1);
INSERT INTO `classes` VALUES (6, '1604', 1);
INSERT INTO `classes` VALUES (7, 'GD1703', 1);
INSERT INTO `classes` VALUES (8, '16安2', 1);
INSERT INTO `classes` VALUES (9, 'GD1402A', 1);
INSERT INTO `classes` VALUES (10, 'XZ网技1603', 1);
INSERT INTO `classes` VALUES (11, '16网销107', 1);
INSERT INTO `classes` VALUES (12, 'XZ网技1602', 0);
INSERT INTO `classes` VALUES (13, '16安1', 0);
INSERT INTO `classes` VALUES (14, 'S107', 0);
INSERT INTO `classes` VALUES (15, 'GD1602A', 1);
INSERT INTO `classes` VALUES (16, '15安卓102', 1);
INSERT INTO `classes` VALUES (17, 'XZ网技1702', 1);
INSERT INTO `classes` VALUES (18, '16网销108班', 1);
INSERT INTO `classes` VALUES (19, '15Java103', 1);
INSERT INTO `classes` VALUES (20, '16网销102', 1);
INSERT INTO `classes` VALUES (21, '17微4', 1);
INSERT INTO `classes` VALUES (22, 'S106', 1);
INSERT INTO `classes` VALUES (23, '1303', 1);
INSERT INTO `classes` VALUES (24, 'S109', 1);
INSERT INTO `classes` VALUES (25, '15安卓103', 1);

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `stu_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mtel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `qq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `birthday` datetime(0) DEFAULT NULL,
  `stu_status` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES (1, '孙嘊此', '女', '13322000000', '13711000000', '郑州', '2015-07-21 00:00:00', '统招', 1);
INSERT INTO `students` VALUES (2, '张琴豨', '女', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 2);
INSERT INTO `students` VALUES (3, '王氹趃', '女', '18322202901', '2171174610', '郑州', '2018-12-25 14:27:16', '统招', 3);
INSERT INTO `students` VALUES (4, '牛宐卩11', '女', '13322527229', '1571109982', '郑州', '2018-12-25 14:27:16', '统招', 4);
INSERT INTO `students` VALUES (7, '刘宷硓', '女', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 7);
INSERT INTO `students` VALUES (9, '王晳', '女', '18322670050', '3171135001', '郑州', '2018-12-25 14:27:16', '统招', 2);
INSERT INTO `students` VALUES (10, '张荤荡', '女', '15322526325', '117111', '郑州', '2018-12-25 14:27:16', '统招', 3);
INSERT INTO `students` VALUES (11, '李晔布', '女', '15322529650', '3171175086', '郑州', '2018-12-25 14:27:16', '统招', 4);
INSERT INTO `students` VALUES (12, '李猜虌', '男', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 5);
INSERT INTO `students` VALUES (13, '周炍', '男', '13322111111', NULL, '郑州', '2018-12-25 14:27:16', '统招', 6);
INSERT INTO `students` VALUES (14, '郭技泮', '男', '18322818527', '1171170124', '郑州', '2018-12-25 14:27:16', '统招', 6);
INSERT INTO `students` VALUES (15, '张舩', '男', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 7);
INSERT INTO `students` VALUES (16, '古馚率', '女', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 8);
INSERT INTO `students` VALUES (17, '郭挰单', '男', '15322901817', '797119999', '郑州', '2018-12-25 14:27:16', '统招', 9);
INSERT INTO `students` VALUES (18, '宋雩靗', '女', '15322178153', '937116206', '郑州', '2018-12-25 14:27:16', '统招', 11);
INSERT INTO `students` VALUES (19, '苏徘贠', '男', '13322111111', NULL, '郑州', '2018-12-25 14:27:16', '统招', 12);
INSERT INTO `students` VALUES (20, '刘纫业', '男', '15322323793', '2771136794', '郑州', '2018-12-25 14:27:16', '统招', 13);
INSERT INTO `students` VALUES (21, '苑迫雃', '女', '  322      ', NULL, '郑州', '2018-12-25 14:27:16', '统招', 14);
INSERT INTO `students` VALUES (22, '陈龘', '男', '18322670765', '557117882', '郑州', '2018-12-25 14:27:16', '统招', 15);
INSERT INTO `students` VALUES (23, '吴玊艭', '男', '13322633003', '1971104931', '郑州', '2018-12-25 14:27:16', '统招', 16);
INSERT INTO `students` VALUES (24, '李秌艭', '男', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 17);
INSERT INTO `students` VALUES (25, '陈帆布', '男', '13322688342', NULL, '郑州', '2018-12-25 14:27:16', '统招', 18);
INSERT INTO `students` VALUES (26, '田蜛', '女', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 19);
INSERT INTO `students` VALUES (27, '陈斈茚', '女', '13322003634', '947113808', '郑州', '2018-12-25 14:27:16', '统招', 20);
INSERT INTO `students` VALUES (28, '娄桄现', '女', '13322111111', NULL, '郑州', '2018-12-25 14:27:16', '统招', 21);
INSERT INTO `students` VALUES (29, '陈锧彨', '男', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 22);
INSERT INTO `students` VALUES (30, '马图只', '男', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 11);
INSERT INTO `students` VALUES (31, '余梧寂', '女', '15322061900', '1771147659', '郑州', '2018-12-25 14:27:16', '统招', 12);
INSERT INTO `students` VALUES (32, '关谰', '男', '15322839670', NULL, '郑州', '2018-12-25 14:27:16', '统招', 13);
INSERT INTO `students` VALUES (33, '高兵伝', '男', '15322682389', '287118185', '郑州', '2018-12-25 14:27:16', '统招', 1);
INSERT INTO `students` VALUES (34, '郭雫艱', '女', '15322743626', '1271146153', '郑州', '2018-12-25 14:27:16', '统招', 2);
INSERT INTO `students` VALUES (35, '张太浵', '男', '13322120619', NULL, '郑州', '2018-12-25 14:27:16', '统招', 3);
INSERT INTO `students` VALUES (36, '郝紡财', '女', '17322627076', '527110848', '郑州', '2018-12-25 14:27:16', '统招', 4);
INSERT INTO `students` VALUES (37, '郭兄昈', '男', '13322852712', '1171148756', '郑州', '2018-12-25 14:27:16', '统招', 5);
INSERT INTO `students` VALUES (38, '李涧蕼', '女', '15322526325', '117111', '郑州', '2018-12-25 14:27:16', '统招', 6);
INSERT INTO `students` VALUES (39, '王俋辇', '男', '18322052273', NULL, '郑州', '2018-12-25 14:27:16', '统招', 7);
INSERT INTO `students` VALUES (40, '赵瑟写', '男', '15322508725', '307119446', '郑州', '2018-12-25 14:27:16', '统招', 8);
INSERT INTO `students` VALUES (41, '刘帆鹍', '男', '15322888460', '917113438', '郑州', '2018-12-25 14:27:16', '统招', 9);
INSERT INTO `students` VALUES (42, '杨丗畊', '男', '15322612076', '1471126238', '郑州', '2018-12-25 14:27:16', '统招', 1);
INSERT INTO `students` VALUES (43, '杨翋蔵', '女', '18322882310', '1271156', '郑州', '2018-12-25 14:27:16', '统招', 2);
INSERT INTO `students` VALUES (44, '张兊', '女', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 3);
INSERT INTO `students` VALUES (45, '谢盋泻', '男', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 4);
INSERT INTO `students` VALUES (46, '蒋冱', '男', '13322542675', '1771197704', '郑州', '2018-12-25 14:27:16', '统招', 5);
INSERT INTO `students` VALUES (47, '朱业写', '女', '13322111111', NULL, '郑州', '2018-12-25 14:27:16', '统招', 6);
INSERT INTO `students` VALUES (48, '鲍太圄', '男', '15322255612', '117111', '郑州', '2018-12-25 14:27:16', '统招', 7);
INSERT INTO `students` VALUES (49, '李贻杮', '女', '13322582579', '26711813494', '郑州', '2018-12-25 14:27:16', '统招', 8);
INSERT INTO `students` VALUES (50, '杨昉', '男', '13322487959', '1471123213', '郑州', '2018-12-25 14:27:16', '统招', 9);
INSERT INTO `students` VALUES (51, '程雎衟', '男', '18322931606', '937111447', '郑州', '2018-12-25 14:27:16', '统招', 10);
INSERT INTO `students` VALUES (52, '陈門飜', '男', '15322526325', '127116', '郑州', '2018-12-25 14:27:16', '统招', 11);
INSERT INTO `students` VALUES (53, '陈艰吭', '男', '15322971853', '1971108247', '郑州', '2018-12-25 14:27:16', '统招', 12);
INSERT INTO `students` VALUES (54, '吴洫雦', '女', '15322248060', '1271123609', '郑州', '2018-12-25 14:27:16', '统招', 22);
INSERT INTO `students` VALUES (55, '冯晹', '男', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 13);
INSERT INTO `students` VALUES (56, '祝鹐辇', '男', '13322991257', '1571123209', '郑州', '2018-12-25 14:27:16', '统招', 14);
INSERT INTO `students` VALUES (57, '符達氶', '女', '18322140281', '1771196060', '郑州', '2018-12-25 14:27:16', '统招', 15);
INSERT INTO `students` VALUES (58, '陈泾斅', '女', '17322419912', '1371127168', '郑州', '2018-12-25 14:27:16', '统招', 16);
INSERT INTO `students` VALUES (59, '马岖', '女', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 17);
INSERT INTO `students` VALUES (60, '陈茝茚', '男', '18322207631', '1771192691', '郑州', '2018-12-25 14:27:16', '统招', 1);
INSERT INTO `students` VALUES (61, '赵伛鹍', '男', '13322446785', '65711654', '郑州', '2018-12-25 14:27:16', '统招', 2);
INSERT INTO `students` VALUES (62, '秦苘苕', '女', '13322839271', '727118153', '郑州', '2018-12-25 14:27:16', '统招', 3);
INSERT INTO `students` VALUES (63, '曹昏勁', '男', '15322255612', '117111', '郑州', '2018-12-25 14:27:16', '统招', 4);
INSERT INTO `students` VALUES (64, '葛晒', '男', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 5);
INSERT INTO `students` VALUES (65, '李锧绡', '女', '13322003090', '997117187', '郑州', '2018-12-25 14:27:16', '统招', 6);
INSERT INTO `students` VALUES (66, '鲍晘晕', '男', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 7);
INSERT INTO `students` VALUES (67, '王孑恐', '男', '15322167503', '767110476', '郑州', '2018-12-25 14:27:16', '统招', 8);
INSERT INTO `students` VALUES (68, '朱板涙', '男', '13322000000', '127116789', '郑州', '2018-12-25 14:27:16', '统招', 9);
INSERT INTO `students` VALUES (69, '程倪倧', '女', '15322781926', '1871120431', '郑州', '2018-12-25 14:27:16', '统招', 10);
INSERT INTO `students` VALUES (70, '闫玊奉', '女', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 1);
INSERT INTO `students` VALUES (71, '王梧鸻', '女', '15322255612', '117111', '郑州', '2018-12-25 14:27:16', '统招', 12);
INSERT INTO `students` VALUES (72, '石凰隄', '女', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 13);
INSERT INTO `students` VALUES (73, '程斈俈', '女', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 14);
INSERT INTO `students` VALUES (74, '吉棯义', '男', '15322255612', '117111', '郑州', '2018-12-25 14:27:16', '统招', 15);
INSERT INTO `students` VALUES (75, '王丗聨', '男', '13322392724', '2471185410', '郑州', '2018-12-25 14:27:16', '统招', 16);
INSERT INTO `students` VALUES (76, '张凰主', '女', '15322876495', '1671102839', '郑州', '2018-12-25 14:27:16', '统招', 17);
INSERT INTO `students` VALUES (77, '杨挰杮', '男', '15322750310', '157119992', '郑州', '2018-12-25 14:27:16', '统招', 18);
INSERT INTO `students` VALUES (78, '李哱', '女', '13322111111', NULL, '郑州', '2018-12-25 14:27:16', '统招', 19);
INSERT INTO `students` VALUES (79, '路乿乼', '男', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 1);
INSERT INTO `students` VALUES (80, '陈龚飜', '男', '15322520859', '1371109149', '郑州', '2018-12-25 14:27:16', '统招', 2);
INSERT INTO `students` VALUES (81, '郑斈戎', '男', '13322829611', '1871150051', '郑州', '2018-12-25 14:27:16', '统招', 3);
INSERT INTO `students` VALUES (82, '马晔雦', '女', '18322932306', '1071167214', '郑州', '2018-12-25 14:27:16', '统招', 4);
INSERT INTO `students` VALUES (83, '刘泡', '女', '13322178488', '1571148018', '郑州', '2018-12-25 14:27:16', '统招', 5);
INSERT INTO `students` VALUES (84, '石议兆', '女', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 6);
INSERT INTO `students` VALUES (85, '孟辱兇', '男', '13322284615', '937113677', '郑州', '2018-12-25 14:27:16', '统招', 7);
INSERT INTO `students` VALUES (86, '王反及', '女', '15322526325', '117111', '郑州', '2018-12-25 14:27:16', '统招', 8);
INSERT INTO `students` VALUES (87, '孙锕', '男', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 9);
INSERT INTO `students` VALUES (88, '杨鹐鹍', '男', '13322137316', NULL, '郑州', '2018-12-25 14:27:16', '统招', 10);
INSERT INTO `students` VALUES (89, '陈盹龗', '男', '15322876183', '977110179', '郑州', '2018-12-25 14:27:16', '统招', 11);
INSERT INTO `students` VALUES (90, '陈嘊桎', '男', '15322817500', NULL, '郑州', '2018-12-25 14:27:16', '统招', 12);
INSERT INTO `students` VALUES (91, '马琴业', '男', '15322255612', '117111', '郑州', '2018-12-25 14:27:16', '统招', 13);
INSERT INTO `students` VALUES (92, '张翡翞', '女', '15322255612', '117111', '郑州', '2018-12-25 14:27:16', '统招', 14);
INSERT INTO `students` VALUES (93, '李泊辮', '男', '15322407616', '247118334', '郑州', '2018-12-25 14:27:16', '统招', 15);
INSERT INTO `students` VALUES (94, '何伞', '男', '13322111111', NULL, '郑州', '2018-12-25 14:27:16', '统招', 16);
INSERT INTO `students` VALUES (95, '杨!丽', '女', '  322      ', NULL, '郑州', '2018-12-25 14:27:16', '统招', 17);
INSERT INTO `students` VALUES (96, '郭斈壬', '男', '15322087315', '80711289', '郑州', '2018-12-25 14:27:16', '统招', 18);
INSERT INTO `students` VALUES (97, '耿浸晭', '男', '17322701334', '2971168493', '郑州', '2018-12-25 14:27:16', '统招', 19);
INSERT INTO `students` VALUES (98, '张冡戎', '男', '15322460502', NULL, '郑州', '2018-12-25 14:27:16', '统招', 20);
INSERT INTO `students` VALUES (99, '郑胝姿', '男', '15322787362', '17711283034', '郑州', '2018-12-25 14:27:16', '统招', 21);
INSERT INTO `students` VALUES (100, '肖太寿', '女', '13322000000', '13711000000', '郑州', '2018-12-25 14:27:16', '统招', 22);
INSERT INTO `students` VALUES (101, '小明', '男', NULL, '1336518954', '哈哈哈', '2019-06-17 10:52:38', '统招', 3);
INSERT INTO `students` VALUES (102, '小红', '男', '1336518954', '1336518954', '呵呵', '2019-06-17 10:54:44', '统招', 3);
INSERT INTO `students` VALUES (103, '小张', '', '', '', '', '2019-06-17 10:57:02', '统招', 3);
INSERT INTO `students` VALUES (104, '你好', '', '', '', '', '2019-06-17 11:03:21', '', 7);
INSERT INTO `students` VALUES (105, '1', '1', '1', '1', '1', '2019-06-10 22:52:41', '统招', 2);
INSERT INTO `students` VALUES (106, NULL, '男', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `students` VALUES (107, NULL, '男', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `students` VALUES (108, '小明明', '男', '15560293265', NULL, '中原区', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
