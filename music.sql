/*
 Navicat Premium Data Transfer

 Source Server         : HOST
 Source Server Type    : MySQL
 Source Server Version : 50743
 Source Host           : localhost:3306
 Source Schema         : music

 Target Server Type    : MySQL
 Target Server Version : 50743
 File Encoding         : 65001

 Date: 19/05/2024 11:50:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `admin_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `admin_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `admin_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '111111', 'gly1@gmail.com', '72b8e92cd8cadbe6b3f4bd300.jpg', '2024-01-17 10:12:20', '2024-05-15 10:47:19');
INSERT INTO `admin` VALUES (2, 'admin1', '111111', 'guanli@gmail.com', 'default.png', '2024-01-17 10:22:45', '2024-05-15 10:47:30');
INSERT INTO `admin` VALUES (5, '管理员名', '111111', 'admin123@qq.com', '72b8e92cd8cadbe6b3f4bd301.jpg', '2024-01-26 13:31:58', '2024-05-15 10:47:38');
INSERT INTO `admin` VALUES (8, '测试管理员', '111111', 'ceshi@qq.com', 'c7ed94a44d1b73051da98f400.jpg', '2024-03-10 12:56:42', '2024-05-17 16:14:45');
INSERT INTO `admin` VALUES (19, 'guanliyuan', '111111', '123345987@qq.com', 'default.png', '2024-05-18 00:04:02', '2024-05-18 00:04:13');

-- ----------------------------
-- Table structure for artist
-- ----------------------------
DROP TABLE IF EXISTS `artist`;
CREATE TABLE `artist`  (
  `artist_id` int(11) NOT NULL AUTO_INCREMENT,
  `artist_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `birth_date` datetime NULL DEFAULT NULL,
  `nationality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `artist_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`artist_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artist
-- ----------------------------
INSERT INTO `artist` VALUES (2, '周杰伦', 'zhou_jie_lun@QQ.COM', '13897510346', '个性签名', '1', '13897510346', '1979-01-18 00:00:00', '中国', '72b8e92cd8cadbe6b3f4bd306.png', '2024-01-17 11:47:52', '2024-05-15 11:13:22');
INSERT INTO `artist` VALUES (4, '符号歌手', 'fu_hao@qq.com', '18729281464', '该歌手未设置此项', '1', '18729281464', '2000-01-10 00:00:00', 'china', '72b8e92cd8cadbe6b3f4bd307.jpg', '2024-01-27 12:21:35', '2024-05-15 11:13:35');
INSERT INTO `artist` VALUES (5, '邓紫棋', '该歌手未设置此项', '该歌手未设置此项', '该歌手未设置此项', '0', '', '1991-08-16 00:00:00', '中国', '72b8e92cd8cadbe6b3f4bd308.jpg', '2024-01-27 13:12:34', '2024-01-31 05:11:10');
INSERT INTO `artist` VALUES (6, '胡歌', '该歌手未设置此项', '该歌手未设置此项', '该歌手未设置此项', '1', '', '1982-09-20 00:00:00', '中国', 'c0ad2e1fb079007aef2e6c500.png', '2024-05-08 15:01:57', '2024-05-08 15:01:57');
INSERT INTO `artist` VALUES (7, '薛之谦', '该歌手未设置此项', '该歌手未设置此项', '该歌手未设置此项', '1', '1', '2024-05-28 00:00:00', '中国', '0563dd7a88da38fa5aabd4202.jpg', '2024-05-09 14:31:51', '2024-05-09 14:31:51');
INSERT INTO `artist` VALUES (8, '毛不易', '该歌手未设置此项', '该歌手未设置此项', '该歌手未设置此项', '1', '', '2024-05-29 00:00:00', 'china', '0563dd7a88da38fa5aabd4203.jpg', '2024-05-09 14:35:33', '2024-05-09 14:37:45');
INSERT INTO `artist` VALUES (9, '许嵩', '该歌手未设置此项', '该歌手未设置此项', '该歌手未设置此项', '1', '该歌手未设置此项', '2016-04-14 00:00:00', '中国', 'fb28240316c3d3c29f78f8500.jpg', '2024-05-09 14:39:52', '2024-05-09 14:39:52');
INSERT INTO `artist` VALUES (11, '林俊杰', 'linjunjie@qq.com', '13819731976', '该歌手未设置此项', '1', '13819731976', '1980-01-02 00:00:00', '中国', 'fb28240316c3d3c29f78f8523.jpg', '2024-05-09 15:14:52', '2024-05-15 10:58:15');
INSERT INTO `artist` VALUES (18, '陈奕迅', '该歌手未设置此项', '该歌手未设置此项', '该歌手未设置此项', '1', '该歌手未设置此项', '1981-02-03 00:00:00', '中国', '5cc04693ca1f954289bfe7607.png', '2024-05-18 00:05:20', '2024-05-18 00:05:20');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category_type` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (2, '华语流行', 0, '2024-01-18 11:55:40', '2024-01-30 04:37:18');
INSERT INTO `category` VALUES (3, '欧美流行', 0, '2024-01-18 11:55:46', '2024-01-30 04:38:26');
INSERT INTO `category` VALUES (4, '欧美歌手', 1, '2024-01-18 11:55:54', '2024-01-30 04:51:48');
INSERT INTO `category` VALUES (5, '日韩流行', 0, '2024-01-30 04:38:42', '2024-01-30 04:39:39');
INSERT INTO `category` VALUES (8, '日韩歌手', 1, '2024-01-30 04:51:55', '2024-01-30 04:51:55');
INSERT INTO `category` VALUES (9, '华语歌手', 1, '2024-01-30 04:52:01', '2024-01-30 04:52:01');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `collect_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `collect_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `synopsis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`collect_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (4, 1, 'b823a0b72915fe5b0b18f1100.jpg', '华语90年代', '华语90年代歌曲', '2023-12-27 20:24:54', '2024-02-02 08:48:44');
INSERT INTO `collect` VALUES (5, 1, 'b823a0b72915fe5b0b18f1101.jpg', '春节听R＆B', '春节新歌', '2024-01-29 12:29:49', '2024-02-02 08:50:39');
INSERT INTO `collect` VALUES (6, 1, 'b823a0b72915fe5b0b18f1104.png', '周杰伦经典', '周杰伦歌曲｜Jay经典 青春回忆旋律曲', '2024-01-29 12:43:31', '2024-02-02 08:56:32');
INSERT INTO `collect` VALUES (7, 1, 'b823a0b72915fe5b0b18f1102.jpg', '向往自由', '随波逐流，何时能到达彼岸？', '2024-01-29 12:59:50', '2024-02-02 08:52:58');
INSERT INTO `collect` VALUES (8, 1, 'b823a0b72915fe5b0b18f1103.png', '仙剑奇侠传', '回忆～仙剑奇侠传主题曲', '2024-02-02 08:55:46', '2024-02-02 08:55:46');
INSERT INTO `collect` VALUES (9, 1, 'b823a0b72915fe5b0b18f1105.jpg', '华语经典老歌', '从前车马很慢，书信很远，一生只够爱一个人。', '2024-02-02 08:57:35', '2024-02-02 08:57:35');
INSERT INTO `collect` VALUES (16, 1, '5cc04693ca1f954289bfe760b.png', '陈奕迅歌单', '陈奕迅', '2024-05-18 00:06:43', '2024-05-18 00:06:43');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 1, 16, '听周杰伦的歌曲就是一种享受', '2024-02-01 17:27:30', '2024-05-06 17:27:38');
INSERT INTO `comment` VALUES (2, 2, 12, '烟花一冷真的好听', '2024-03-06 17:27:49', '2024-05-14 17:27:45');
INSERT INTO `comment` VALUES (3, 1, 12, '又想起了十七八岁的高中岁月，那时烫着非主流自以为很酷的爆炸头，和成绩很差死党们拉帮结派，在班级里捣蛋，背着班主任偷偷的谈恋爱，给她买最大的棒棒糖，一起哼着这首歌，假装着淡淡的哀伤。一晃四五年，二十好几了，在听这首歌，我才发现，最适合听这首歌的，莫过于现在，别怀念，怀念也回不到从前', '2024-04-03 17:39:11', '2024-04-01 17:39:14');
INSERT INTO `comment` VALUES (4, 4, 13, '这是我最爱最爱最爱的一首歌没有之一《夜曲》封神了❤️❤️❤️❤️❤️❤️❤️❤️', '2024-04-30 17:39:36', '2024-03-05 17:39:42');

-- ----------------------------
-- Table structure for favorite
-- ----------------------------
DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite`  (
  `favorite_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`favorite_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of favorite
-- ----------------------------
INSERT INTO `favorite` VALUES (11, 1, 22, '2024-05-14 06:11:15', '2024-05-14 06:11:15');
INSERT INTO `favorite` VALUES (14, 1, 28, '2024-05-14 06:11:34', '2024-05-14 06:11:34');
INSERT INTO `favorite` VALUES (17, 1, 23, '2024-05-14 06:58:39', '2024-05-14 06:58:39');
INSERT INTO `favorite` VALUES (25, 1, 29, '2024-05-18 00:08:14', '2024-05-18 00:08:14');

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow`  (
  `follow_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `follow_date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`follow_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of follow
-- ----------------------------

-- ----------------------------
-- Table structure for include
-- ----------------------------
DROP TABLE IF EXISTS `include`;
CREATE TABLE `include`  (
  `include_id` int(11) NOT NULL AUTO_INCREMENT,
  `collect_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`include_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of include
-- ----------------------------
INSERT INTO `include` VALUES (1, 7, 5, '2024-02-01 19:49:45', '2024-02-07 19:49:48');
INSERT INTO `include` VALUES (2, 7, 6, '2024-02-01 19:50:05', '2024-02-02 19:50:09');
INSERT INTO `include` VALUES (3, 6, 11, '2024-02-05 15:16:28', '2024-02-05 15:16:31');
INSERT INTO `include` VALUES (4, 6, 12, '2024-02-05 15:16:53', '2024-02-06 15:16:57');
INSERT INTO `include` VALUES (5, 6, 13, '2024-02-05 15:17:10', '2024-02-07 15:17:14');
INSERT INTO `include` VALUES (6, 6, 14, '2024-02-05 15:17:29', '2024-02-06 15:17:33');
INSERT INTO `include` VALUES (7, 6, 15, '2024-01-02 15:25:02', '2024-02-05 15:25:08');
INSERT INTO `include` VALUES (8, 6, 16, '2024-02-05 15:25:21', '2024-02-06 15:25:24');
INSERT INTO `include` VALUES (9, 6, 17, '2024-02-05 15:27:21', '2024-02-06 15:27:24');
INSERT INTO `include` VALUES (10, 8, 18, '2024-01-09 11:00:11', '2024-04-18 11:00:23');
INSERT INTO `include` VALUES (11, 8, 19, '2024-01-01 11:00:42', '2024-04-18 11:00:48');
INSERT INTO `include` VALUES (12, 8, 20, '2024-02-01 11:00:55', '2024-04-18 11:00:53');
INSERT INTO `include` VALUES (13, 8, 21, '2024-04-02 11:01:12', '2024-04-18 11:01:16');
INSERT INTO `include` VALUES (14, 6, 22, '2024-04-18 11:27:27', '2024-04-18 11:27:30');
INSERT INTO `include` VALUES (15, 6, 23, '2024-04-11 11:27:46', '2024-04-10 11:27:48');
INSERT INTO `include` VALUES (16, 6, 24, '2024-04-02 11:28:01', '2024-04-18 11:28:04');
INSERT INTO `include` VALUES (18, 9, 17, '2021-12-17 02:10:07', '2007-08-30 02:44:12');
INSERT INTO `include` VALUES (19, 9, 5, '2000-11-06 12:01:05', '2014-09-05 09:21:34');
INSERT INTO `include` VALUES (20, 9, 24, '2012-06-07 15:00:39', '2019-11-02 02:05:32');
INSERT INTO `include` VALUES (21, 9, 15, '2000-09-14 13:23:48', '2022-07-23 01:58:28');
INSERT INTO `include` VALUES (22, 9, 17, '2020-01-01 14:17:12', '2003-04-15 14:00:48');
INSERT INTO `include` VALUES (23, 9, 30, '2015-12-04 16:56:39', '2020-08-18 14:08:00');
INSERT INTO `include` VALUES (24, 9, 8, '2003-07-11 22:23:09', '2019-09-20 20:48:59');
INSERT INTO `include` VALUES (25, 9, 20, '2019-10-08 03:15:15', '2013-01-30 17:32:04');
INSERT INTO `include` VALUES (26, 9, 16, '2019-01-02 02:28:47', '2005-01-26 00:02:31');
INSERT INTO `include` VALUES (27, 9, 23, '2016-03-10 12:18:47', '2004-11-06 07:34:35');
INSERT INTO `include` VALUES (28, 4, 18, '2014-05-02 01:33:24', '2019-11-30 04:32:33');
INSERT INTO `include` VALUES (29, 4, 4, '2012-01-21 13:13:24', '2019-11-28 20:16:34');
INSERT INTO `include` VALUES (30, 4, 29, '2002-10-23 04:46:04', '2019-08-08 06:33:47');
INSERT INTO `include` VALUES (40, 4, 22, '2002-05-18 15:42:50', '2007-09-19 18:37:27');
INSERT INTO `include` VALUES (44, 4, 13, '2011-05-02 06:11:43', '2008-02-19 00:22:54');
INSERT INTO `include` VALUES (48, 4, 30, '2015-04-24 20:14:06', '2016-08-22 11:17:30');
INSERT INTO `include` VALUES (52, 4, 21, '2006-04-22 23:59:03', '2018-09-22 16:31:32');
INSERT INTO `include` VALUES (56, 4, 13, '2005-11-09 07:32:01', '2013-02-11 09:20:46');
INSERT INTO `include` VALUES (60, 4, 28, '2008-06-22 06:54:30', '2000-10-12 19:54:44');
INSERT INTO `include` VALUES (64, 4, 8, '2006-11-14 17:12:21', '2014-12-06 13:06:45');
INSERT INTO `include` VALUES (65, 5, 28, '2000-03-17 05:50:06', '2012-10-22 13:16:14');
INSERT INTO `include` VALUES (66, 5, 22, '2004-02-16 08:11:49', '2013-11-19 17:57:29');
INSERT INTO `include` VALUES (67, 5, 9, '2017-04-22 04:26:48', '2004-05-05 05:16:35');
INSERT INTO `include` VALUES (68, 5, 29, '2023-03-04 04:00:02', '2010-04-18 22:45:07');
INSERT INTO `include` VALUES (69, 5, 6, '2019-01-04 15:42:24', '2003-06-19 10:04:55');
INSERT INTO `include` VALUES (70, 5, 17, '2015-07-30 04:38:24', '2020-03-18 15:29:54');
INSERT INTO `include` VALUES (71, 5, 7, '2020-09-26 04:17:00', '2004-11-13 01:07:28');
INSERT INTO `include` VALUES (72, 5, 28, '2000-09-21 10:21:14', '2017-06-06 18:41:14');
INSERT INTO `include` VALUES (73, 5, 17, '2023-12-15 21:37:43', '2011-01-21 21:27:26');
INSERT INTO `include` VALUES (74, 5, 11, '2017-12-04 06:19:13', '2008-11-27 06:10:15');
INSERT INTO `include` VALUES (75, 5, 6, '2021-08-17 17:35:20', '2010-02-19 18:20:45');
INSERT INTO `include` VALUES (76, 5, 4, '2002-05-09 14:07:14', '2001-04-22 07:38:50');
INSERT INTO `include` VALUES (77, 7, 3, '2009-12-08 21:16:02', '2005-06-30 13:23:01');
INSERT INTO `include` VALUES (78, 7, 19, '2015-02-10 03:27:05', '2004-02-08 02:54:48');
INSERT INTO `include` VALUES (79, 7, 25, '2015-11-20 06:02:54', '2007-12-20 11:17:34');
INSERT INTO `include` VALUES (80, 7, 15, '2013-05-06 22:13:11', '2019-05-16 14:24:51');
INSERT INTO `include` VALUES (81, 7, 22, '2013-08-26 20:31:20', '2019-03-26 06:17:09');
INSERT INTO `include` VALUES (82, 7, 31, '2015-12-20 22:26:04', '2000-11-10 04:15:48');
INSERT INTO `include` VALUES (83, 7, 14, '2019-03-02 19:36:36', '2007-05-21 07:19:23');
INSERT INTO `include` VALUES (84, 7, 27, '2014-07-17 06:04:46', '2019-06-13 01:34:09');
INSERT INTO `include` VALUES (85, 7, 15, '2023-01-29 11:10:25', '2011-10-12 21:47:23');
INSERT INTO `include` VALUES (86, 7, 15, '2000-08-01 11:11:58', '2013-01-02 00:40:41');
INSERT INTO `include` VALUES (87, 7, 27, '2011-08-25 20:25:54', '2010-03-18 07:09:34');
INSERT INTO `include` VALUES (88, 7, 3, '2000-08-07 19:17:31', '2019-12-24 22:10:18');

-- ----------------------------
-- Table structure for playlist
-- ----------------------------
DROP TABLE IF EXISTS `playlist`;
CREATE TABLE `playlist`  (
  `playlist_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `add_time` time NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`playlist_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playlist
-- ----------------------------

-- ----------------------------
-- Table structure for sing
-- ----------------------------
DROP TABLE IF EXISTS `sing`;
CREATE TABLE `sing`  (
  `sing_id` int(11) NOT NULL AUTO_INCREMENT,
  `artist_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`sing_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sing
-- ----------------------------
INSERT INTO `sing` VALUES (1, 2, 11, '2024-04-30 23:57:15', '2024-05-01 23:57:19');
INSERT INTO `sing` VALUES (2, 2, 12, '2024-04-29 23:58:49', '2024-04-30 23:58:52');
INSERT INTO `sing` VALUES (3, 2, 13, '2024-05-01 00:00:07', '2024-05-08 00:00:04');
INSERT INTO `sing` VALUES (4, 2, 14, '2024-05-01 00:00:20', '2024-05-01 00:00:24');
INSERT INTO `sing` VALUES (5, 2, 15, '2024-05-07 00:00:42', '2024-04-30 00:00:32');
INSERT INTO `sing` VALUES (6, 2, 16, '2024-05-01 00:00:50', '2024-05-01 00:00:47');
INSERT INTO `sing` VALUES (7, 2, 17, '2024-05-02 00:01:03', '2024-05-01 00:01:06');
INSERT INTO `sing` VALUES (8, 2, 22, '2024-04-30 00:01:34', '2024-05-09 00:01:36');
INSERT INTO `sing` VALUES (9, 2, 23, '2024-05-09 00:01:47', '2024-05-09 00:01:52');
INSERT INTO `sing` VALUES (10, 2, 24, '2024-05-09 00:01:58', '2024-05-09 00:01:56');
INSERT INTO `sing` VALUES (11, 5, 5, '2024-05-09 00:04:17', '2024-05-09 00:04:18');
INSERT INTO `sing` VALUES (12, 5, 6, '2024-05-09 00:04:24', '2024-05-09 00:04:23');
INSERT INTO `sing` VALUES (13, 5, 7, '2024-05-09 00:04:43', '2024-05-09 00:04:45');
INSERT INTO `sing` VALUES (14, 5, 8, '2024-05-14 00:04:56', '2024-05-07 00:04:59');
INSERT INTO `sing` VALUES (15, 5, 9, '2024-05-07 00:05:14', '2024-05-09 00:05:16');
INSERT INTO `sing` VALUES (16, 9, 25, '2024-05-09 23:15:16', '2024-05-09 23:15:18');
INSERT INTO `sing` VALUES (17, 9, 26, '2024-05-08 23:15:34', '2024-05-09 23:15:37');
INSERT INTO `sing` VALUES (18, 9, 27, '2024-05-09 23:15:47', '2024-05-09 23:15:51');
INSERT INTO `sing` VALUES (19, 9, 28, '2024-05-09 23:16:01', '2024-05-09 23:16:02');
INSERT INTO `sing` VALUES (20, 9, 29, '2024-05-09 23:16:09', '2024-05-09 23:16:10');
INSERT INTO `sing` VALUES (21, 11, 30, '2024-05-09 23:16:37', '2024-05-09 23:16:39');
INSERT INTO `sing` VALUES (22, 11, 31, '2024-05-09 23:16:45', '2024-05-09 23:16:46');
INSERT INTO `sing` VALUES (23, 11, 32, '2024-05-09 23:16:56', '2024-05-09 23:16:57');
INSERT INTO `sing` VALUES (24, 11, 33, '2024-05-09 23:17:08', '2024-05-09 23:17:09');

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song`  (
  `song_id` int(11) NOT NULL AUTO_INCREMENT,
  `song_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '歌曲名',
  `song_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '封面',
  `song_author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '原唱',
  `lyricist` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作词',
  `songwriter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作曲',
  `release_date` datetime NOT NULL COMMENT '发行时间',
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '歌曲路径',
  `lyrics` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '歌词路径',
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属音乐公司',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`song_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES (5, '句号', '8dc80a4913676dc1021df8f01.jpg', '邓紫棋', '未知', '未知', '2018-09-10 16:00:00', '72b8e92cd8cadbe6b3f4bd309.E.M.邓紫棋 - 句号.flac', '72b8e92cd8cadbe6b3f4bd30a.E.M.邓紫棋 - 句号.lrc', '未知', '2024-01-31 05:11:42', '2024-01-31 05:11:42');
INSERT INTO `song` VALUES (6, '倒数', '8dc80a4913676dc1021df8f02.png', '邓紫棋', '未知', '未知', '2023-12-31 16:00:00', '72b8e92cd8cadbe6b3f4bd30c.E.M. 邓紫棋 - 倒数.flac', '72b8e92cd8cadbe6b3f4bd30d.E.M. 邓紫棋 - 倒数.lrc', '未知', '2024-01-31 05:12:15', '2024-01-31 05:12:15');
INSERT INTO `song` VALUES (7, '喜欢你', '8dc80a4913676dc1021df8f05.jpg', 'Beyond', '黄家驹', '黄家驹', '1988-09-05 16:00:00', '8dc80a4913676dc1021df8f03.E.M. 邓紫棋 - 喜欢你.flac', '8dc80a4913676dc1021df8f04.E.M. 邓紫棋 - 喜欢你.lrc', '', '2024-02-05 12:04:09', '2024-02-05 12:04:09');
INSERT INTO `song` VALUES (8, '光年之外', '8dc80a4913676dc1021df8f08.jpg', 'G.E.M.邓紫棋', 'G.E.M.邓紫棋', 'G.E.M.邓紫棋', '2016-12-29 16:00:00', '8dc80a4913676dc1021df8f06.E.M.邓紫棋 - 光年之外.flac', '8dc80a4913676dc1021df8f07.E.M.邓紫棋 - 光年之外.lrc', 'Lupo Groinig', '2024-02-05 12:08:47', '2024-02-05 12:08:47');
INSERT INTO `song` VALUES (9, '泡沫', '8dc80a4913676dc1021df8f0b.jpg', '邓紫棋', '邓紫棋', '邓紫棋', '2012-07-04 16:00:00', '8dc80a4913676dc1021df8f09.E.M.邓紫棋 - 泡沫.flac', '8dc80a4913676dc1021df8f0a.E.M.邓紫棋 - 泡沫.lrc', '', '2024-02-05 12:11:36', '2024-02-05 12:11:36');
INSERT INTO `song` VALUES (10, '七月上', '8dc80a4913676dc1021df8f14.jpg', 'Jam', 'Jam', 'Jam', '2015-04-16 16:00:00', '8dc80a4913676dc1021df8f12.MP3', '8dc80a4913676dc1021df8f13.lrc', '', '2024-02-05 12:24:18', '2024-02-05 12:24:18');
INSERT INTO `song` VALUES (11, '烟花易冷', '8dc80a4913676dc1021df8f17.png', '周杰伦', '方文山', '黄雨勋', '2010-05-17 16:00:00', '8dc80a4913676dc1021df8f15.mp3', '8dc80a4913676dc1021df8f16.lrc', '', '2024-02-05 12:32:16', '2024-02-05 12:32:16');
INSERT INTO `song` VALUES (12, '牛仔很忙', '8dc80a4913676dc1021df8f1a.png', '周杰伦', '黄俊郎', '钟兴民', '2007-11-01 16:00:00', '8dc80a4913676dc1021df8f18.flac', '8dc80a4913676dc1021df8f19.lrc', '杰威尔唱片公司', '2024-02-05 12:39:20', '2024-02-05 12:39:20');
INSERT INTO `song` VALUES (13, '枫', '8dc80a4913676dc1021df8f1d.png', '周杰伦', '宋健彰', '钟兴民', '2005-10-31 16:00:00', '8dc80a4913676dc1021df8f1b.mp3', '8dc80a4913676dc1021df8f1c.lrc', '杰威尔音乐有限公司', '2024-02-05 12:48:28', '2024-02-05 12:48:28');
INSERT INTO `song` VALUES (14, 'Mojito', '8dc80a4913676dc1021df8f20.png', '周杰伦', '黄俊郎', '黄雨勋', '2020-06-11 16:00:00', '8dc80a4913676dc1021df8f1e.flac', '8dc80a4913676dc1021df8f1f.lrc', '', '2024-02-05 12:51:52', '2024-02-05 12:51:52');
INSERT INTO `song` VALUES (15, '以父之名', '8dc80a4913676dc1021df8f23.png', '周杰伦', '黄俊郎', '洪敬尧', '2003-07-15 16:00:00', '8dc80a4913676dc1021df8f21.flac', '8dc80a4913676dc1021df8f22.lrc', '', '2024-02-05 12:55:25', '2024-02-05 12:55:25');
INSERT INTO `song` VALUES (16, '止战之殇', '8dc80a4913676dc1021df8f26.png', '周杰伦', '方文山', '周杰伦', '2004-08-02 16:00:00', '8dc80a4913676dc1021df8f24.mp3', '8dc80a4913676dc1021df8f25.lrc', '', '2024-02-05 12:59:28', '2024-02-05 12:59:28');
INSERT INTO `song` VALUES (17, '夜曲', '8dc80a4913676dc1021df8f29.png', '周杰伦', '方文山', '林迈可', '2005-10-31 16:00:00', '8dc80a4913676dc1021df8f27.mp3', '8dc80a4913676dc1021df8f28.lrc', '', '2024-02-05 13:15:19', '2024-02-05 13:15:19');
INSERT INTO `song` VALUES (18, '忘记时间', '13516b47a63f2b5eda9c0b402.png', '胡歌', '孙艺', '程振兴', '2009-06-17 16:00:00', '13516b47a63f2b5eda9c0b400.flac', '13516b47a63f2b5eda9c0b401.lrc', '', '2024-04-18 02:36:01', '2024-04-18 02:36:01');
INSERT INTO `song` VALUES (19, '生生世世爱', '13516b47a63f2b5eda9c0b40e.png', '吴雨霏', '杨漩予', '林毅', '2024-04-18 16:00:00', '13516b47a63f2b5eda9c0b40c.flac', '13516b47a63f2b5eda9c0b40d.lrc', '', '2024-04-18 02:49:26', '2024-04-18 02:49:26');
INSERT INTO `song` VALUES (20, '此生不换', '13516b47a63f2b5eda9c0b414.png', '青鸟飞鱼', '翟松', '抒情', '2009-05-17 16:00:00', '13516b47a63f2b5eda9c0b412.flac', '13516b47a63f2b5eda9c0b413.lrc', '', '2024-04-18 02:52:53', '2024-04-18 02:52:53');
INSERT INTO `song` VALUES (21, '偏爱', '13516b47a63f2b5eda9c0b417.png', '张芸京', '葛大为', '陈伟', '2009-05-17 16:00:00', '13516b47a63f2b5eda9c0b415.flac', '13516b47a63f2b5eda9c0b416.lrc', '', '2024-04-18 02:56:15', '2024-04-18 02:56:15');
INSERT INTO `song` VALUES (22, '告白气球', '13516b47a63f2b5eda9c0b41a.png', '周杰伦', '方文山', '周杰伦', '2016-06-23 16:00:00', '13516b47a63f2b5eda9c0b418.mp3', '13516b47a63f2b5eda9c0b419.lrc', '杰威尔音乐有限公司', '2024-04-18 03:10:45', '2024-04-18 03:10:45');
INSERT INTO `song` VALUES (23, '花海', '13516b47a63f2b5eda9c0b41d.png', '周杰伦', '古小力/黄淩嘉', '黄雨勋', '2008-10-14 16:00:00', '13516b47a63f2b5eda9c0b41b.mp3', '13516b47a63f2b5eda9c0b41c.lrc', '', '2024-04-18 03:18:28', '2024-04-18 03:18:28');
INSERT INTO `song` VALUES (24, '简单爱', '13516b47a63f2b5eda9c0b423.png', '周杰伦', '徐若瑄', '周杰伦', '2001-09-13 16:00:00', '13516b47a63f2b5eda9c0b421.mp3', '13516b47a63f2b5eda9c0b422.lrc', '', '2024-04-18 03:22:28', '2024-04-18 03:22:28');
INSERT INTO `song` VALUES (25, ' 庐州月', 'fb28240316c3d3c29f78f850a.png', '许嵩', '许嵩', '许嵩', '2009-12-27 16:00:00', 'fb28240316c3d3c29f78f8508.mp3', 'fb28240316c3d3c29f78f8509.lrc', '许嵩所在公司', '2024-05-09 14:57:25', '2024-05-09 14:57:25');
INSERT INTO `song` VALUES (26, '有何不可', 'fb28240316c3d3c29f78f850d.png', '许嵩', '未知', '未知', '1975-07-09 15:00:00', 'fb28240316c3d3c29f78f850b.mp3', 'fb28240316c3d3c29f78f850c.lrc', '未知', '2024-05-09 14:59:40', '2024-05-09 14:59:40');
INSERT INTO `song` VALUES (27, ' 素颜', 'fb28240316c3d3c29f78f8510.png', '许嵩', '未知', '未知', '2018-03-07 16:00:00', 'fb28240316c3d3c29f78f850e.mp3', 'fb28240316c3d3c29f78f850f.lrc', '未知', '2024-05-09 15:00:54', '2024-05-09 15:00:54');
INSERT INTO `song` VALUES (28, ' 最佳歌手', 'fb28240316c3d3c29f78f8513.png', '许嵩', '许嵩', '许嵩', '2002-02-26 16:00:00', 'fb28240316c3d3c29f78f8511.mp3', 'fb28240316c3d3c29f78f8512.lrc', '许嵩所在公司', '2024-05-09 15:03:00', '2024-05-09 15:03:00');
INSERT INTO `song` VALUES (29, ' 灰色头像', 'fb28240316c3d3c29f78f8516.png', '许嵩', '许嵩', '许嵩', '2009-12-26 16:00:00', 'fb28240316c3d3c29f78f8514.mp3', 'fb28240316c3d3c29f78f8515.lrc', '许嵩', '2024-05-09 15:03:59', '2024-05-09 15:03:59');
INSERT INTO `song` VALUES (30, ' 新地球', 'fb28240316c3d3c29f78f8519.png', '林俊杰', '林俊杰', '林俊杰', '2011-05-17 16:00:00', 'fb28240316c3d3c29f78f8517.mp3', 'fb28240316c3d3c29f78f8518.lrc', '林俊杰所在公司', '2024-05-09 15:08:07', '2024-05-09 15:08:07');
INSERT INTO `song` VALUES (31, ' 背对背拥抱', 'fb28240316c3d3c29f78f851c.png', '林俊杰', 'test', 'test', '2012-05-15 16:00:00', 'fb28240316c3d3c29f78f851a.mp3', 'fb28240316c3d3c29f78f851b.lrc', 'test公司', '2024-05-09 15:09:33', '2024-05-09 15:09:33');
INSERT INTO `song` VALUES (32, ' 不潮不用花钱', 'fb28240316c3d3c29f78f851f.png', '林俊杰', '林俊杰', '俊杰', '2000-01-01 16:00:00', 'fb28240316c3d3c29f78f851d.mp3', 'fb28240316c3d3c29f78f851e.lrc', '公司', '2024-05-09 15:10:53', '2024-05-09 15:10:53');
INSERT INTO `song` VALUES (33, ' 江南', 'fb28240316c3d3c29f78f8522.png', '林俊杰', '作词人', '作曲人', '2014-05-04 16:00:00', 'fb28240316c3d3c29f78f8520.mp3', 'fb28240316c3d3c29f78f8521.lrc', '公司', '2024-05-09 15:12:20', '2024-05-09 15:12:20');
INSERT INTO `song` VALUES (40, ' 孤勇者', '5cc04693ca1f954289bfe760a.png', '陈奕迅', '陈奕迅', '', '2001-01-31 16:00:00', '5cc04693ca1f954289bfe7608.mp3', '5cc04693ca1f954289bfe7609.lrc', '', '2024-05-18 00:06:07', '2024-05-18 00:06:07');

-- ----------------------------
-- Table structure for songcategory
-- ----------------------------
DROP TABLE IF EXISTS `songcategory`;
CREATE TABLE `songcategory`  (
  `songcategory_id` int(11) NOT NULL AUTO_INCREMENT,
  `song_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`songcategory_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of songcategory
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `integral` int(11) NOT NULL,
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `state` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '温zh', '111111', 'wzh@yinyue.com', '13088888888', 10, '我特别喜欢听音乐', '1', '重庆', '8dc80a4913676dc1021df8f00.jpg', 1, '2024-01-21 03:23:44', '2024-02-05 11:46:16');
INSERT INTO `user` VALUES (21, 'Maxime', 'Pa$$w0rd!', 'qq130340@qq.com', '13854851245', 11, 'Nemo ullam dignissim', '0', '新西兰', '72b8e92cd8cadbe6b3f4bd303.jpg', 0, '2024-01-25 09:21:03', '2024-05-15 10:53:28');
INSERT INTO `user` VALUES (22, '修改后名字', 'Pa$$w0rd!', '224981456@qq.com', '18440093387', 0, '', '1', 'Numquam officia corr', '72b8e92cd8cadbe6b3f4bd304.jpg', 1, '2024-01-25 09:21:33', '2024-05-15 10:53:56');
INSERT INTO `user` VALUES (26, '邓紫棋', '111111', 'test@mail.com', '13087932145', 35, '', '1', '重庆巴南', '0e3cf9c7c51b6846a7a6daf00.jpg', 1, '2024-03-28 15:19:07', '2024-05-15 10:56:07');
INSERT INTO `user` VALUES (36, '陈奕迅', '111111', '13049270192@qq.com', '13049270192', 0, '', '0', '', '5cc04693ca1f954289bfe7606.png', 1, '2024-05-18 00:04:46', '2024-05-18 00:04:57');

SET FOREIGN_KEY_CHECKS = 1;
