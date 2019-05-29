/*
 Navicat MySQL Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost:3306
 Source Schema         : taavondb

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 14/03/2019 14:59:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  PRIMARY KEY (`session_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('xCuhRMndF1KAk-mpy6pVk2WPgVaI-n0W', 1552563838, '{\"cookie\":{\"originalMaxAge\":1200000,\"expires\":\"2019-03-14T11:36:41.334Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"csrfSecret\":\"9qbwxrqrm0bljdnPSDUFzWcX\",\"flash\":{},\"countLog\":0,\"passport\":{\"user\":2}}');

-- ----------------------------
-- Table structure for taa_log
-- ----------------------------
DROP TABLE IF EXISTS `taa_log`;
CREATE TABLE `taa_log`  (
  `userid` int(10) NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `code` int(10) NULL DEFAULT NULL,
  `desc` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of taa_log
-- ----------------------------
INSERT INTO `taa_log` VALUES (NULL, '2018-04-22 10:07:41', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-04-22 10:07:41', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-04-22 15:25:20', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-22 15:33:33', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-04-23 08:56:18', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-23 08:56:22', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-23 10:38:05', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-23 10:42:25', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-23 12:09:56', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-23 12:12:33', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-23 12:12:39', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-23 12:13:16', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-23 12:13:20', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-23 12:29:14', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-23 14:04:47', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-23 14:04:47', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-23 14:05:03', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-23 14:05:03', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-23 14:29:30', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-23 14:29:30', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-23 17:02:03', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-04-24 12:28:33', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:28:49', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:31:04', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:31:04', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:31:04', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:31:04', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:31:06', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:34:27', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:34:27', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:34:27', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:34:27', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:34:30', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:36:07', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:36:08', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:36:08', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:36:08', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:36:10', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:38:29', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:38:29', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:38:29', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:38:29', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:38:32', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:38:47', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:38:47', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:38:47', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:38:47', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:38:52', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:43:02', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:44:34', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:47:13', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:52:34', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:52:46', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:54:25', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:54:54', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:56:08', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:57:38', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:57:57', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:58:12', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:58:53', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 12:59:15', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 13:00:30', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 13:02:01', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 13:02:52', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 13:02:52', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 13:03:04', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 13:03:04', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 13:03:05', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 13:06:21', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 13:06:21', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 13:06:21', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 13:57:28', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 13:57:29', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 13:58:27', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 13:58:27', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 13:58:44', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 13:58:45', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 13:58:45', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 13:59:51', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 13:59:52', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:02:22', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:02:22', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:02:25', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:02:28', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:02:29', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:02:32', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:02:32', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:02:39', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:02:43', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:02:43', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:03:35', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:03:36', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:03:39', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:05:01', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:05:16', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:05:16', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:24:15', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:24:15', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:25:07', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:25:07', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:50:56', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:50:56', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:53:06', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:53:06', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:55:21', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:55:21', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:55:41', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:55:41', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:55:59', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:57:30', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:58:27', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 14:58:36', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 15:01:56', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 15:02:11', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 15:03:29', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 15:03:29', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 15:04:54', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 15:04:54', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 15:06:11', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 15:06:12', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-04-24 15:06:16', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 15:06:43', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 15:06:44', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-04-24 16:14:50', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-04-24 16:14:50', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 16:30:39', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 16:30:39', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 16:31:36', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 16:31:36', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-04-24 16:55:31', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-04-24 16:55:31', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 16:57:22', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 16:57:22', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 16:57:33', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 16:57:33', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 17:02:40', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 17:02:40', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 17:02:40', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 17:02:40', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 17:02:43', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 17:14:20', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 17:14:20', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 17:14:50', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-24 17:14:50', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-04-25 14:48:45', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-25 14:56:03', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-25 16:37:59', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-25 16:37:59', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-25 16:38:11', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-25 16:38:11', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-25 16:38:17', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-25 16:38:17', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-25 16:38:32', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-25 16:38:33', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-25 16:39:14', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-25 16:39:15', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-04-28 09:20:19', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-04-28 09:44:55', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-04-28 09:44:55', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-04-28 09:44:55', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-04-28 17:14:14', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-28 17:14:18', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-04-29 10:35:04', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-29 10:35:08', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-29 15:27:12', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-29 15:27:12', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-29 15:27:46', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-29 15:27:46', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-04-30 14:39:53', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-04-30 14:39:58', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-01 09:18:27', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-01 09:18:32', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-01 15:30:22', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-01 15:30:29', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-05 09:26:45', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-05 10:07:55', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-05 10:07:55', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-05 10:07:56', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-05 11:29:29', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-05 11:29:29', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-05 14:37:54', 3, 'access denides to :me399121227', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-05 14:38:54', 3, 'access denides to :me399121227', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-05 14:39:31', 3, 'access denides to :me399121227', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-07 11:35:32', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-07 11:35:39', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (3, '2018-05-07 16:11:32', 3, 'access denides to :me10257124423', '::1');
INSERT INTO `taa_log` VALUES (4, '2018-05-07 16:15:42', 3, 'access denides to :me10357161409', '::1');
INSERT INTO `taa_log` VALUES (4, '2018-05-07 16:20:55', 3, 'access denides to :me10257161327', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-08 09:44:25', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (3, '2018-05-08 09:44:31', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (3, '2018-05-08 10:06:14', 3, 'access denides to :me10258100419', '::1');
INSERT INTO `taa_log` VALUES (3, '2018-05-08 10:23:52', 3, 'access denides to :me10258102212', '::1');
INSERT INTO `taa_log` VALUES (3, '2018-05-08 10:24:05', 3, 'access denides to :me10258102212', '::1');
INSERT INTO `taa_log` VALUES (3, '2018-05-08 10:37:40', 3, 'access denides to :me10258102212', '::1');
INSERT INTO `taa_log` VALUES (3, '2018-05-08 10:38:48', 3, 'access denides to :me10258102212', '::1');
INSERT INTO `taa_log` VALUES (3, '2018-05-08 10:39:25', 3, 'access denides to :me10258102212', '::1');
INSERT INTO `taa_log` VALUES (4, '2018-05-08 10:39:52', 3, 'access denides to :me10258102212', '::1');
INSERT INTO `taa_log` VALUES (4, '2018-05-08 10:45:36', 3, 'access denides to :me10258102212', '::1');
INSERT INTO `taa_log` VALUES (3, '2018-05-08 11:48:07', 3, 'access denides to :me10258114455', '::1');
INSERT INTO `taa_log` VALUES (3, '2018-05-08 11:49:34', 3, 'access denides to :me10258114455', '::1');
INSERT INTO `taa_log` VALUES (3, '2018-05-08 11:50:41', 3, 'access denides to :me10258114455', '::1');
INSERT INTO `taa_log` VALUES (3, '2018-05-08 12:31:39', 3, 'access denides to :me10258114455', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-09 10:02:50', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-09 10:02:56', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-12 09:02:33', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-12 09:02:40', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-12 10:57:57', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-12 10:57:58', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-12 10:58:55', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-12 10:58:56', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-12 10:59:17', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-12 10:59:17', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-12 11:10:55', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-12 11:11:27', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-12 11:11:40', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-12 11:12:40', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-12 11:15:10', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-12 11:17:49', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-12 11:27:39', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-12 11:27:40', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-12 11:48:48', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-12 14:46:06', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-12 14:46:06', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-12 14:46:19', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-12 14:46:19', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-14 09:32:56', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-14 09:33:02', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-14 09:42:56', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-14 09:42:57', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-14 09:42:57', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-14 09:42:57', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-14 09:43:41', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-14 09:43:41', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-14 09:43:42', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-14 09:43:42', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-14 10:08:43', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-14 10:08:43', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-14 10:08:44', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-14 10:08:44', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-14 15:58:13', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-14 15:58:16', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-19 12:02:58', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-19 12:03:04', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-20 09:54:25', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 09:54:29', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 10:17:17', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 10:17:17', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-20 13:46:34', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-20 13:46:34', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:39:02', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:39:02', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:39:02', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:39:02', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:39:04', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:40:35', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:40:36', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:40:36', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:40:36', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:41:01', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:41:12', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:42:04', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:42:04', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:42:04', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:42:04', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:43:07', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:43:07', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:43:07', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:43:07', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:49:04', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:53:39', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:53:39', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:53:39', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:53:39', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:53:41', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:58:05', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:58:05', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:58:05', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:58:05', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:58:10', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:58:32', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:58:32', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:58:32', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 14:58:32', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:00:31', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:00:31', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:00:42', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:00:47', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:01:22', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:01:22', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:01:22', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:01:22', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:01:39', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:02:08', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:02:08', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:02:08', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:02:08', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:02:25', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:02:25', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:02:25', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:02:25', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:02:44', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:02:44', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:02:44', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:02:44', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:04:02', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:04:02', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:04:11', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:04:11', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:04:37', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:04:37', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:04:37', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:05:19', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:05:19', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:05:29', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:05:30', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:08:40', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:08:40', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:08:41', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:08:42', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:11:16', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:11:17', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:11:17', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:11:17', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:11:23', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:13:19', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:13:19', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:13:19', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:13:19', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:15:27', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:15:28', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:15:28', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:15:28', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:17:14', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:17:14', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:17:14', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:17:14', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:19:05', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:19:05', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:19:05', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:19:05', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:19:20', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:19:20', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:19:20', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:19:20', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:29:18', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:29:18', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:29:18', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:29:18', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:31:02', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:31:02', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:31:03', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:31:03', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:35:22', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:35:22', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:35:22', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:35:22', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:36:16', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:36:16', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:36:16', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:36:16', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:37:03', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:37:04', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:37:04', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:37:04', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:39:46', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:39:46', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:40:14', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:40:15', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:42:26', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:42:26', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:42:28', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:42:28', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:47:30', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:47:30', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:47:30', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-20 15:47:30', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-21 10:17:30', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-21 10:17:35', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 12:24:29', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 12:24:29', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:27:20', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:27:20', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:29:28', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:29:28', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:30:02', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:30:02', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:30:16', 2, '401.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:30:16', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:30:16', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:31:08', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:31:08', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:31:39', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:31:39', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:31:53', 2, '401.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:31:53', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:31:53', 2, '401.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:31:53', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:31:54', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:32:34', 2, '401.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:32:35', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:34:57', 2, '401.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:34:58', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:35:19', 2, '401.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:35:19', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:35:19', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:37:08', 2, '401.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:37:09', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:39:00', 2, '401.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:39:00', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:39:09', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:41:13', 2, '401.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:41:13', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:41:22', 2, '401.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-21 16:41:22', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-22 14:23:05', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-22 14:23:09', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-22 14:23:49', 2, '401.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-22 14:23:49', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-22 14:40:24', 3, 'access denides to :me101522142412', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-22 14:44:56', 2, '401.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-22 14:44:56', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-22 14:45:12', 2, '401.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-22 14:45:12', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-23 09:43:44', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 09:43:49', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:08:56', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:08:56', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:08:56', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:10:31', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:10:31', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:10:31', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:22:14', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:22:14', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:22:14', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:22:26', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:22:26', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:22:26', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:22:51', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:22:51', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:22:51', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:23:33', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:23:33', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:23:33', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:24:04', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:24:04', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:24:04', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:24:10', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:24:10', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:24:10', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:25:17', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:25:17', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:25:17', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:26:35', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:26:35', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:26:35', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:26:36', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:30:17', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:30:17', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:30:17', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:30:17', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:31:30', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:31:30', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:31:30', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:31:30', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:31:50', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:31:50', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:31:50', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:32:35', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:36:11', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:36:54', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:37:44', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:38:33', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:39:07', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:40:16', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:42:51', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:43:53', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:44:00', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:44:28', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:46:36', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:47:18', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-23 10:47:24', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-23 13:59:27', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-23 13:59:27', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-23 14:00:44', 3, 'access denides to :me101522142412', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2018-05-26 12:13:03', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2018-05-26 12:13:09', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-26 12:21:31', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2018-05-26 12:21:31', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-02-04 08:14:21', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-02-04 08:14:30', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-02-04 08:15:07', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-02-04 08:19:59', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (4, '2019-02-04 08:20:53', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-02-04 09:37:48', 3, 'access denides to :me10024082010', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-02-04 09:53:32', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (4, '2019-02-04 09:59:30', 3, 'access denides to :me10324095806', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-02-04 10:48:09', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-02-04 13:50:08', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-02-04 13:50:08', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-02-05 09:10:21', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-02-05 09:10:26', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-02-12 11:23:25', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-02-12 11:24:53', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-02-21 12:16:08', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-03-04 15:05:33', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-03-04 15:05:55', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-03-04 15:20:33', 3, 'access denides to :124', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-03-04 15:21:31', 3, 'access denides to :124', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-03-04 15:31:53', 3, 'access denides to :me10024082010', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-03-04 15:32:39', 3, 'access denides to :me10024081450', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-03-04 15:39:21', 3, 'access denides to :me10024082010', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-03-04 15:41:31', 3, 'access denides to :me10024082010', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-03-04 15:42:43', 3, 'access denides to :me10024082010', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-03-04 15:45:51', 3, 'access denides to :me10024082010', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-03-04 15:46:28', 3, 'access denides to :me10024082010', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-03-04 15:47:40', 3, 'access denides to :me10024082010', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-03-04 15:48:21', 3, 'access denides to :me10024082010', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-03-05 09:16:34', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-03-05 09:16:42', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-03-05 09:22:00', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (4, '2019-03-05 09:22:36', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-03-05 10:36:36', 2, '403.html', '::ffff:127.0.0.1');
INSERT INTO `taa_log` VALUES (NULL, '2019-03-05 10:36:36', 2, '404.html', '::ffff:127.0.0.1');
INSERT INTO `taa_log` VALUES (NULL, '2019-03-06 12:06:48', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-03-06 14:34:42', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-03-06 14:38:31', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (4, '2019-03-06 14:39:45', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-03-09 11:06:33', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-03-09 11:06:39', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-03-10 08:17:53', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (1, '2019-03-10 08:18:00', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-10 10:32:31', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-10 10:33:20', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-10 10:34:13', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-10 11:02:39', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-03-10 13:21:13', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-10 13:21:30', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-10 14:46:10', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-10 14:52:35', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-10 15:05:59', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-10 15:06:04', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-10 15:09:15', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-10 15:10:43', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-10 15:11:39', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-10 15:11:41', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-10 15:15:14', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-10 15:16:35', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-03-11 09:07:03', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-11 09:07:09', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-03-12 08:58:54', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-03-12 09:56:26', 2, '403.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-03-12 09:56:26', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-03-12 09:56:26', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (NULL, '2019-03-14 09:49:58', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-14 09:50:09', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-14 10:26:37', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-14 14:19:21', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-14 14:20:02', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-14 14:20:43', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-14 14:21:22', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-14 14:25:03', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-14 14:25:39', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-14 14:26:04', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-14 14:26:56', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-14 14:27:05', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-14 14:27:24', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-14 14:31:57', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-14 14:32:49', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-14 14:33:43', 2, '404.html', '::1');
INSERT INTO `taa_log` VALUES (2, '2019-03-14 14:33:48', 2, '404.html', '::1');

-- ----------------------------
-- Table structure for taa_loginloger
-- ----------------------------
DROP TABLE IF EXISTS `taa_loginloger`;
CREATE TABLE `taa_loginloger`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NULL DEFAULT NULL COMMENT 'یوزر',
  `dateloginE` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT 'تاریخ میلادی',
  `status` int(1) NOT NULL COMMENT 'وضعیت لاگین',
  `dateloginF` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL COMMENT 'تاریخ ورود شمسی',
  `ip` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'ip',
  `others` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'موارد اضافه',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `taa_userlogin_id_users_id`(`userid`) USING BTREE,
  CONSTRAINT `taa_userlogin_id_users_id` FOREIGN KEY (`userid`) REFERENCES `taa_users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2458 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of taa_loginloger
-- ----------------------------
INSERT INTO `taa_loginloger` VALUES (207, 1, '2018-04-21 10:27:38', 3, '۱۳۹۷-۰۱-۲۱ ۱۲:۴۰:۰۳ ب ظ', '192.168.100.100', NULL);
INSERT INTO `taa_loginloger` VALUES (208, 1, '2018-04-10 12:41:16', 3, '۱۳۹۷-۰۱-۲۱ ۱۲:۴۱:۱۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (209, 1, '2018-04-10 12:41:41', 3, '۱۳۹۷-۰۱-۲۱ ۱۲:۴۱:۴۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (210, 1, '2018-04-10 12:42:25', 1, '۱۳۹۷-۰۱-۲۱ ۱۲:۴۲:۲۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (211, 1, '2018-04-10 12:46:06', 2, '۱۳۹۷-۰۱-۲۱ ۱۲:۴۶:۰۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (212, 1, '2018-04-10 12:46:11', 3, '۱۳۹۷-۰۱-۲۱ ۱۲:۴۶:۱۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (213, 1, '2018-04-10 12:48:24', 3, '۱۳۹۷-۰۱-۲۱ ۱۲:۴۸:۲۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (214, 1, '2018-04-10 12:50:07', 1, '۱۳۹۷-۰۱-۲۱ ۱۲:۵۰:۰۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (215, 1, '2018-04-10 12:50:19', 2, '۱۳۹۷-۰۱-۲۱ ۱۲:۵۰:۱۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (216, 1, '2018-04-10 12:52:04', 1, '۱۳۹۷-۰۱-۲۱ ۱۲:۵۲:۰۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (217, 1, '2018-04-10 12:52:11', 2, '۱۳۹۷-۰۱-۲۱ ۱۲:۵۲:۱۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (218, 1, '2018-04-10 12:52:14', 3, '۱۳۹۷-۰۱-۲۱ ۱۲:۵۲:۱۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (219, 1, '2018-04-10 12:52:26', 3, '۱۳۹۷-۰۱-۲۱ ۱۲:۵۲:۲۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (220, 1, '2018-04-10 12:52:33', 3, '۱۳۹۷-۰۱-۲۱ ۱۲:۵۲:۳۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (221, 1, '2018-04-10 13:01:14', 1, '۱۳۹۷-۰۱-۲۱ ۱۳:۰۱:۱۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (222, 1, '2018-04-10 13:03:35', 2, '۱۳۹۷-۰۱-۲۱ ۱۳:۰۳:۳۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (223, 1, '2018-04-10 13:03:38', 3, '۱۳۹۷-۰۱-۲۱ ۱۳:۰۳:۳۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (224, 1, '2018-04-10 13:03:48', 3, '۱۳۹۷-۰۱-۲۱ ۱۳:۰۳:۴۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (225, 1, '2018-04-10 13:03:51', 3, '۱۳۹۷-۰۱-۲۱ ۱۳:۰۳:۵۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (226, 1, '2018-04-10 13:06:24', 1, '۱۳۹۷-۰۱-۲۱ ۱۳:۰۶:۲۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (227, 1, '2018-04-10 13:06:27', 2, '۱۳۹۷-۰۱-۲۱ ۱۳:۰۶:۲۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (228, 1, '2018-04-10 13:06:31', 3, '۱۳۹۷-۰۱-۲۱ ۱۳:۰۶:۳۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (229, 1, '2018-04-10 13:06:39', 3, '۱۳۹۷-۰۱-۲۱ ۱۳:۰۶:۳۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (230, 1, '2018-04-10 13:06:53', 3, '۱۳۹۷-۰۱-۲۱ ۱۳:۰۶:۵۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (231, 1, '2018-04-10 14:12:17', 1, '۱۳۹۷-۰۱-۲۱ ۱۴:۱۲:۱۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (232, 1, '2018-04-10 14:12:35', 2, '۱۳۹۷-۰۱-۲۱ ۱۴:۱۲:۳۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (233, NULL, '2018-04-10 14:16:35', 3, '۱۳۹۷-۰۱-۲۱ ۱۴:۱۶:۳۵ ب ظ', '::1', 'asdf');
INSERT INTO `taa_loginloger` VALUES (234, NULL, '2018-04-10 14:16:38', 3, '۱۳۹۷-۰۱-۲۱ ۱۴:۱۶:۳۸ ب ظ', '::1', 'asdf');
INSERT INTO `taa_loginloger` VALUES (235, NULL, '2018-04-10 14:16:44', 3, '۱۳۹۷-۰۱-۲۱ ۱۴:۱۶:۴۴ ب ظ', '::1', 'asdf');
INSERT INTO `taa_loginloger` VALUES (236, 1, '2018-04-10 14:16:57', 1, '۱۳۹۷-۰۱-۲۱ ۱۴:۱۶:۵۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (237, 1, '2018-04-10 14:16:59', 2, '۱۳۹۷-۰۱-۲۱ ۱۴:۱۶:۵۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (238, NULL, '2018-04-10 14:17:00', 3, '۱۳۹۷-۰۱-۲۱ ۱۴:۱۷:۰۰ ب ظ', '::1', 'asdf');
INSERT INTO `taa_loginloger` VALUES (239, 1, '2018-04-10 14:17:17', 3, '۱۳۹۷-۰۱-۲۱ ۱۴:۱۷:۱۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (240, 1, '2018-04-10 14:18:19', 3, '۱۳۹۷-۰۱-۲۱ ۱۴:۱۸:۱۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (241, 1, '2018-04-10 14:18:38', 1, '۱۳۹۷-۰۱-۲۱ ۱۴:۱۸:۳۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (242, 1, '2018-04-10 14:18:40', 2, '۱۳۹۷-۰۱-۲۱ ۱۴:۱۸:۴۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (243, 1, '2018-04-10 14:18:45', 3, '۱۳۹۷-۰۱-۲۱ ۱۴:۱۸:۴۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (244, NULL, '2018-04-10 14:18:51', 3, '۱۳۹۷-۰۱-۲۱ ۱۴:۱۸:۵۱ ب ظ', '::1', 'sdf');
INSERT INTO `taa_loginloger` VALUES (245, 1, '2018-04-10 14:18:55', 3, '۱۳۹۷-۰۱-۲۱ ۱۴:۱۸:۵۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (246, 1, '2018-04-10 14:20:33', 1, '۱۳۹۷-۰۱-۲۱ ۱۴:۲۰:۳۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (247, 1, '2018-04-10 14:20:35', 2, '۱۳۹۷-۰۱-۲۱ ۱۴:۲۰:۳۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (248, 1, '2018-04-10 14:21:02', 1, '۱۳۹۷-۰۱-۲۱ ۱۴:۲۱:۰۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (249, 1, '2018-04-10 14:27:02', 2, '۱۳۹۷-۰۱-۲۱ ۱۴:۲۷:۰۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (250, 1, '2018-04-10 14:48:35', 1, '۱۳۹۷-۰۱-۲۱ ۱۴:۴۸:۳۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (251, 1, '2018-04-10 14:49:36', 2, '۱۳۹۷-۰۱-۲۱ ۱۴:۴۹:۳۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (252, 1, '2018-04-10 14:49:40', 1, '۱۳۹۷-۰۱-۲۱ ۱۴:۴۹:۴۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (253, 1, '2018-04-10 14:49:43', 2, '۱۳۹۷-۰۱-۲۱ ۱۴:۴۹:۴۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (254, NULL, '2018-04-10 15:12:34', 3, '۱۳۹۷-۰۱-۲۱ ۱۵:۱۲:۳۴ ب ظ', '::1', '&lt;script>');
INSERT INTO `taa_loginloger` VALUES (255, NULL, '2018-04-10 15:16:33', 1, '۱۳۹۷-۰۱-۲۱ ۱۵:۱۶:۳۳ ب ظ', '::1', 'OR \'1\'=\'1\'');
INSERT INTO `taa_loginloger` VALUES (256, NULL, '2018-04-10 15:16:47', 1, '۱۳۹۷-۰۱-۲۱ ۱۵:۱۶:۴۷ ب ظ', '::1', 'OR 1 = 1');
INSERT INTO `taa_loginloger` VALUES (257, 1, '2018-04-10 15:37:03', 3, '۱۳۹۷-۰۱-۲۱ ۱۵:۳۷:۰۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (258, 1, '2018-04-10 15:38:24', 1, '۱۳۹۷-۰۱-۲۱ ۱۵:۳۸:۲۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (259, 1, '2018-04-10 15:40:50', 2, '۱۳۹۷-۰۱-۲۱ ۱۵:۴۰:۵۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (260, 1, '2018-04-10 15:41:32', 1, '۱۳۹۷-۰۱-۲۱ ۱۵:۴۱:۳۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (261, 1, '2018-04-10 15:44:48', 2, '۱۳۹۷-۰۱-۲۱ ۱۵:۴۴:۴۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (262, 1, '2018-04-10 15:44:52', 1, '۱۳۹۷-۰۱-۲۱ ۱۵:۴۴:۵۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (263, 1, '2018-04-10 15:46:56', 2, '۱۳۹۷-۰۱-۲۱ ۱۵:۴۶:۵۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (264, 1, '2018-04-10 15:47:00', 1, '۱۳۹۷-۰۱-۲۱ ۱۵:۴۷:۰۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (265, 1, '2018-04-10 15:52:10', 2, '۱۳۹۷-۰۱-۲۱ ۱۵:۵۲:۱۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (266, 1, '2018-04-10 15:52:42', 3, '۱۳۹۷-۰۱-۲۱ ۱۵:۵۲:۴۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (267, NULL, '2018-04-10 15:52:45', 3, '۱۳۹۷-۰۱-۲۱ ۱۵:۵۲:۴۵ ب ظ', '::1', 'sdf');
INSERT INTO `taa_loginloger` VALUES (268, NULL, '2018-04-10 15:52:47', 3, '۱۳۹۷-۰۱-۲۱ ۱۵:۵۲:۴۷ ب ظ', '::1', 'asdf');
INSERT INTO `taa_loginloger` VALUES (269, NULL, '2018-04-10 15:52:53', 3, '۱۳۹۷-۰۱-۲۱ ۱۵:۵۲:۵۳ ب ظ', '::1', 'sadf');
INSERT INTO `taa_loginloger` VALUES (270, NULL, '2018-04-10 15:53:03', 3, '۱۳۹۷-۰۱-۲۱ ۱۵:۵۳:۰۳ ب ظ', '::1', 'asdf');
INSERT INTO `taa_loginloger` VALUES (271, NULL, '2018-04-10 15:53:19', 3, '۱۳۹۷-۰۱-۲۱ ۱۵:۵۳:۱۹ ب ظ', '::1', 'asdf');
INSERT INTO `taa_loginloger` VALUES (272, 1, '2018-04-10 15:53:31', 1, '۱۳۹۷-۰۱-۲۱ ۱۵:۵۳:۳۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (273, 1, '2018-04-10 15:53:51', 2, '۱۳۹۷-۰۱-۲۱ ۱۵:۵۳:۵۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (274, NULL, '2018-04-10 15:54:06', 3, '۱۳۹۷-۰۱-۲۱ ۱۵:۵۴:۰۶ ب ظ', '::1', 'mshq');
INSERT INTO `taa_loginloger` VALUES (275, NULL, '2018-04-10 15:54:19', 3, '۱۳۹۷-۰۱-۲۱ ۱۵:۵۴:۱۹ ب ظ', '::1', 'asd');
INSERT INTO `taa_loginloger` VALUES (276, 1, '2018-04-10 17:30:33', 1, '۱۳۹۷-۰۱-۲۱ ۱۷:۳۰:۳۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (277, 1, '2018-04-10 17:30:35', 2, '۱۳۹۷-۰۱-۲۱ ۱۷:۳۰:۳۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (278, NULL, '2018-04-10 17:30:37', 3, '۱۳۹۷-۰۱-۲۱ ۱۷:۳۰:۳۷ ب ظ', '::1', 'sdf');
INSERT INTO `taa_loginloger` VALUES (279, NULL, '2018-04-10 17:30:38', 3, '۱۳۹۷-۰۱-۲۱ ۱۷:۳۰:۳۸ ب ظ', '::1', 'asd');
INSERT INTO `taa_loginloger` VALUES (280, NULL, '2018-04-10 17:30:40', 3, '۱۳۹۷-۰۱-۲۱ ۱۷:۳۰:۴۰ ب ظ', '::1', 'asdf');
INSERT INTO `taa_loginloger` VALUES (281, NULL, '2018-04-10 17:30:48', 3, '۱۳۹۷-۰۱-۲۱ ۱۷:۳۰:۴۸ ب ظ', '::1', 'asdf');
INSERT INTO `taa_loginloger` VALUES (282, 1, '2018-04-10 17:30:57', 1, '۱۳۹۷-۰۱-۲۱ ۱۷:۳۰:۵۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (283, 1, '2018-04-11 15:15:01', 1, '۱۳۹۷-۰۱-۲۲ ۱۵:۱۵:۰۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (284, 1, '2018-04-11 15:56:04', 1, '۱۳۹۷-۰۱-۲۲ ۱۵:۵۶:۰۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (285, 1, '2018-04-11 16:22:31', 1, '۱۳۹۷-۰۱-۲۲ ۱۶:۲۲:۳۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (286, 1, '2018-04-11 17:07:54', 2, '۱۳۹۷-۰۱-۲۲ ۱۷:۰۷:۵۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (287, 1, '2018-04-11 17:08:01', 1, '۱۳۹۷-۰۱-۲۲ ۱۷:۰۸:۰۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (288, 1, '2018-04-11 17:32:33', 2, '۱۳۹۷-۰۱-۲۲ ۱۷:۳۲:۳۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (289, 1, '2018-04-11 17:32:40', 1, '۱۳۹۷-۰۱-۲۲ ۱۷:۳۲:۴۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (290, 1, '2018-04-11 17:42:32', 1, '۱۳۹۷-۰۱-۲۲ ۱۷:۴۲:۳۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (291, 1, '2018-04-11 18:19:59', 1, '۱۳۹۷-۰۱-۲۲ ۱۸:۱۹:۵۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (292, 1, '2018-04-11 18:20:25', 1, '۱۳۹۷-۰۱-۲۲ ۱۸:۲۰:۲۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (293, 1, '2018-04-11 18:30:14', 2, '۱۳۹۷-۰۱-۲۲ ۱۸:۳۰:۱۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (294, 1, '2018-04-11 18:32:13', 1, '۱۳۹۷-۰۱-۲۲ ۱۸:۳۲:۱۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (295, 1, '2018-04-17 10:34:11', 1, '۱۳۹۷-۰۱-۲۸ ۱۰:۳۴:۱۱ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (296, 1, '2018-04-17 10:38:47', 1, '۱۳۹۷-۰۱-۲۸ ۱۰:۳۸:۴۷ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (297, 1, '2018-04-17 10:44:24', 1, '۱۳۹۷-۰۱-۲۸ ۱۰:۴۴:۲۴ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (298, 1, '2018-04-17 11:00:43', 1, '۱۳۹۷-۰۱-۲۸ ۱۱:۰۰:۴۳ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (299, 1, '2018-04-17 11:12:50', 1, '۱۳۹۷-۰۱-۲۸ ۱۱:۱۲:۵۰ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (300, 1, '2018-04-17 11:17:55', 2, '۱۳۹۷-۰۱-۲۸ ۱۱:۱۷:۵۵ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (301, 1, '2018-04-17 11:18:07', 1, '۱۳۹۷-۰۱-۲۸ ۱۱:۱۸:۰۷ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (302, 1, '2018-04-17 11:19:07', 1, '۱۳۹۷-۰۱-۲۸ ۱۱:۱۹:۰۷ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (303, 1, '2018-04-17 11:19:43', 1, '۱۳۹۷-۰۱-۲۸ ۱۱:۱۹:۴۳ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (304, 1, '2018-04-17 11:21:37', 2, '۱۳۹۷-۰۱-۲۸ ۱۱:۲۱:۳۷ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (305, 1, '2018-04-17 11:21:52', 1, '۱۳۹۷-۰۱-۲۸ ۱۱:۲۱:۵۲ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (306, 1, '2018-04-17 11:22:31', 1, '۱۳۹۷-۰۱-۲۸ ۱۱:۲۲:۳۱ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (307, 1, '2018-04-17 11:23:13', 2, '۱۳۹۷-۰۱-۲۸ ۱۱:۲۳:۱۳ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (308, 1, '2018-04-17 11:23:22', 1, '۱۳۹۷-۰۱-۲۸ ۱۱:۲۳:۲۲ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (309, 1, '2018-04-17 11:26:32', 2, '۱۳۹۷-۰۱-۲۸ ۱۱:۲۶:۳۲ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (310, 1, '2018-04-17 11:26:43', 1, '۱۳۹۷-۰۱-۲۸ ۱۱:۲۶:۴۳ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (311, 1, '2018-04-17 12:36:05', 1, '۱۳۹۷-۰۱-۲۸ ۱۲:۳۶:۰۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (312, 1, '2018-04-17 12:57:48', 1, '۱۳۹۷-۰۱-۲۸ ۱۲:۵۷:۴۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (313, 1, '2018-04-17 14:03:43', 1, '۱۳۹۷-۰۱-۲۸ ۱۴:۰۳:۴۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (314, 1, '2018-04-17 14:14:29', 1, '۱۳۹۷-۰۱-۲۸ ۱۴:۱۴:۲۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (315, 1, '2018-04-17 14:36:58', 1, '۱۳۹۷-۰۱-۲۸ ۱۴:۳۶:۵۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (316, 1, '2018-04-17 14:53:40', 1, '۱۳۹۷-۰۱-۲۸ ۱۴:۵۳:۴۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (317, 1, '2018-04-17 16:05:17', 1, '۱۳۹۷-۰۱-۲۸ ۱۶:۰۵:۱۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (318, 1, '2018-04-17 16:05:18', 1, '۱۳۹۷-۰۱-۲۸ ۱۶:۰۵:۱۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (319, 1, '2018-04-17 16:05:19', 1, '۱۳۹۷-۰۱-۲۸ ۱۶:۰۵:۱۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (320, 1, '2018-04-17 16:06:57', 1, '۱۳۹۷-۰۱-۲۸ ۱۶:۰۶:۵۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (321, 1, '2018-04-17 16:07:08', 2, '۱۳۹۷-۰۱-۲۸ ۱۶:۰۷:۰۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (322, 1, '2018-04-17 16:07:12', 1, '۱۳۹۷-۰۱-۲۸ ۱۶:۰۷:۱۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (323, 1, '2018-04-17 16:09:12', 1, '۱۳۹۷-۰۱-۲۸ ۱۶:۰۹:۱۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (324, 1, '2018-04-17 16:10:17', 1, '۱۳۹۷-۰۱-۲۸ ۱۶:۱۰:۱۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (325, 1, '2018-04-17 16:11:35', 1, '۱۳۹۷-۰۱-۲۸ ۱۶:۱۱:۳۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (326, 1, '2018-04-17 16:24:30', 1, '۱۳۹۷-۰۱-۲۸ ۱۶:۲۴:۳۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (327, 1, '2018-04-17 16:44:24', 1, '۱۳۹۷-۰۱-۲۸ ۱۶:۴۴:۲۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (328, 1, '2018-04-17 17:05:37', 2, '۱۳۹۷-۰۱-۲۸ ۱۷:۰۵:۳۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (329, 1, '2018-04-17 17:05:41', 3, '۱۳۹۷-۰۱-۲۸ ۱۷:۰۵:۴۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (330, 1, '2018-04-17 17:05:45', 1, '۱۳۹۷-۰۱-۲۸ ۱۷:۰۵:۴۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (331, 1, '2018-04-17 17:12:26', 2, '۱۳۹۷-۰۱-۲۸ ۱۷:۱۲:۲۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (332, 1, '2018-04-17 17:12:29', 3, '۱۳۹۷-۰۱-۲۸ ۱۷:۱۲:۲۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (333, 1, '2018-04-17 17:12:33', 3, '۱۳۹۷-۰۱-۲۸ ۱۷:۱۲:۳۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (334, NULL, '2018-04-17 17:12:35', 1, '۱۳۹۷-۰۱-۲۸ ۱۷:۱۲:۳۵ ب ظ', '::1', ',sh');
INSERT INTO `taa_loginloger` VALUES (335, 1, '2018-04-17 17:12:44', 1, '۱۳۹۷-۰۱-۲۸ ۱۷:۱۲:۴۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (336, 1, '2018-04-18 09:41:34', 1, '۱۳۹۷-۰۱-۲۹ ۰۹:۴۱:۳۳ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (337, 1, '2018-04-18 10:30:04', 1, '۱۳۹۷-۰۱-۲۹ ۱۰:۳۰:۰۴ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (338, 1, '2018-04-18 11:07:49', 1, '۱۳۹۷-۰۱-۲۹ ۱۱:۰۷:۴۹ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (339, 1, '2018-04-18 12:14:56', 2, '۱۳۹۷-۰۱-۲۹ ۱۲:۱۴:۵۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (340, 1, '2018-04-18 12:14:59', 1, '۱۳۹۷-۰۱-۲۹ ۱۲:۱۴:۵۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (341, 1, '2018-04-18 12:44:42', 1, '۱۳۹۷-۰۱-۲۹ ۱۲:۴۴:۴۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (342, 1, '2018-04-18 12:53:59', 2, '۱۳۹۷-۰۱-۲۹ ۱۲:۵۳:۵۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (343, 1, '2018-04-18 12:54:05', 1, '۱۳۹۷-۰۱-۲۹ ۱۲:۵۴:۰۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (344, 1, '2018-04-18 12:56:09', 2, '۱۳۹۷-۰۱-۲۹ ۱۲:۵۶:۰۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (345, 1, '2018-04-18 12:56:15', 1, '۱۳۹۷-۰۱-۲۹ ۱۲:۵۶:۱۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (346, 1, '2018-04-18 12:59:01', 2, '۱۳۹۷-۰۱-۲۹ ۱۲:۵۹:۰۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (347, 1, '2018-04-18 12:59:09', 1, '۱۳۹۷-۰۱-۲۹ ۱۲:۵۹:۰۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (348, 1, '2018-04-18 14:19:06', 1, '۱۳۹۷-۰۱-۲۹ ۱۴:۱۹:۰۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (349, 1, '2018-04-18 16:12:52', 1, '۱۳۹۷-۰۱-۲۹ ۱۶:۱۲:۵۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (350, 1, '2018-04-18 16:16:08', 2, '۱۳۹۷-۰۱-۲۹ ۱۶:۱۶:۰۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (351, 1, '2018-04-18 16:16:15', 1, '۱۳۹۷-۰۱-۲۹ ۱۶:۱۶:۱۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (352, 1, '2018-04-18 17:12:36', 1, '۱۳۹۷-۰۱-۲۹ ۱۷:۱۲:۳۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (353, 1, '2018-04-21 10:01:03', 1, '۱۳۹۷-۰۲-۰۱ ۱۰:۰۱:۰۳ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (354, 1, '2018-04-21 10:48:18', 1, '۱۳۹۷-۰۲-۰۱ ۱۰:۴۸:۱۸ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (355, 1, '2018-04-21 11:07:35', 2, '۱۳۹۷-۰۲-۰۱ ۱۱:۰۷:۳۵ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (356, 3, '2018-04-21 11:07:40', 1, '۱۳۹۷-۰۲-۰۱ ۱۱:۰۷:۴۰ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (357, 3, '2018-04-21 11:31:44', 1, '۱۳۹۷-۰۲-۰۱ ۱۱:۳۱:۴۴ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (358, 3, '2018-04-21 11:37:21', 2, '۱۳۹۷-۰۲-۰۱ ۱۱:۳۷:۲۱ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (359, 1, '2018-04-21 11:37:25', 1, '۱۳۹۷-۰۲-۰۱ ۱۱:۳۷:۲۵ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (360, 1, '2018-04-21 11:37:35', 2, '۱۳۹۷-۰۲-۰۱ ۱۱:۳۷:۳۵ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (361, 3, '2018-04-21 11:37:39', 1, '۱۳۹۷-۰۲-۰۱ ۱۱:۳۷:۳۹ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (362, 1, '2018-04-21 12:05:53', 1, '۱۳۹۷-۰۲-۰۱ ۱۲:۰۵:۵۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (363, 3, '2018-04-21 12:27:50', 1, '۱۳۹۷-۰۲-۰۱ ۱۲:۲۷:۵۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (364, 1, '2018-04-21 14:05:09', 1, '۱۳۹۷-۰۲-۰۱ ۱۴:۰۵:۰۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (365, 1, '2018-04-21 14:16:33', 2, '۱۳۹۷-۰۲-۰۱ ۱۴:۱۶:۳۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (366, NULL, '2018-04-21 14:16:54', 3, '۱۳۹۷-۰۲-۰۱ ۱۴:۱۶:۵۴ ب ظ', '::1', 'fa');
INSERT INTO `taa_loginloger` VALUES (367, NULL, '2018-04-21 14:16:58', 3, '۱۳۹۷-۰۲-۰۱ ۱۴:۱۶:۵۸ ب ظ', '::1', 'fa');
INSERT INTO `taa_loginloger` VALUES (368, 1, '2018-04-21 14:17:12', 1, '۱۳۹۷-۰۲-۰۱ ۱۴:۱۷:۱۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (369, 1, '2018-04-21 14:17:39', 2, '۱۳۹۷-۰۲-۰۱ ۱۴:۱۷:۳۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (370, 3, '2018-04-21 14:17:43', 1, '۱۳۹۷-۰۲-۰۱ ۱۴:۱۷:۴۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (371, 3, '2018-04-21 15:23:38', 1, '۱۳۹۷-۰۲-۰۱ ۱۵:۲۳:۳۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (372, 1, '2018-04-21 15:50:23', 1, '۱۳۹۷-۰۲-۰۱ ۱۵:۵۰:۲۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (373, 1, '2018-04-21 16:30:54', 1, '۱۳۹۷-۰۲-۰۱ ۱۶:۳۰:۵۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (374, 1, '2018-04-21 16:37:59', 2, '۱۳۹۷-۰۲-۰۱ ۱۶:۳۷:۵۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (375, 1, '2018-04-21 16:38:06', 1, '۱۳۹۷-۰۲-۰۱ ۱۶:۳۸:۰۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (376, 1, '2018-04-21 16:38:55', 2, '۱۳۹۷-۰۲-۰۱ ۱۶:۳۸:۵۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (377, 1, '2018-04-21 16:39:00', 1, '۱۳۹۷-۰۲-۰۱ ۱۶:۳۹:۰۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (378, 1, '2018-04-21 16:52:48', 1, '۱۳۹۷-۰۲-۰۱ ۱۶:۵۲:۴۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (379, 1, '2018-04-21 16:59:32', 2, '۱۳۹۷-۰۲-۰۱ ۱۶:۵۹:۳۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (380, 1, '2018-04-21 16:59:39', 1, '۱۳۹۷-۰۲-۰۱ ۱۶:۵۹:۳۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (381, 1, '2018-04-21 17:01:33', 2, '۱۳۹۷-۰۲-۰۱ ۱۷:۰۱:۳۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (382, 1, '2018-04-21 17:02:30', 1, '۱۳۹۷-۰۲-۰۱ ۱۷:۰۲:۳۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (383, 1, '2018-04-21 17:02:34', 2, '۱۳۹۷-۰۲-۰۱ ۱۷:۰۲:۳۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (384, 1, '2018-04-21 17:04:12', 1, '۱۳۹۷-۰۲-۰۱ ۱۷:۰۴:۱۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (385, 1, '2018-04-21 17:04:15', 2, '۱۳۹۷-۰۲-۰۱ ۱۷:۰۴:۱۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (386, 1, '2018-04-21 17:08:05', 1, '۱۳۹۷-۰۲-۰۱ ۱۷:۰۸:۰۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (387, 1, '2018-04-22 09:30:32', 1, '۱۳۹۷-۰۲-۰۲ ۰۹:۳۰:۳۲ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (388, 1, '2018-04-22 10:07:50', 1, '۱۳۹۷-۰۲-۰۲ ۱۰:۰۷:۵۰ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (389, 1, '2018-04-22 10:23:21', 1, '۱۳۹۷-۰۲-۰۲ ۱۰:۲۳:۲۱ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (390, 1, '2018-04-22 10:44:03', 1, '۱۳۹۷-۰۲-۰۲ ۱۰:۴۴:۰۳ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (391, 1, '2018-04-22 10:44:10', 1, '۱۳۹۷-۰۲-۰۲ ۱۰:۴۴:۱۰ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (392, 1, '2018-04-22 10:45:09', 1, '۱۳۹۷-۰۲-۰۲ ۱۰:۴۵:۰۹ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (393, 1, '2018-04-22 10:54:46', 1, '۱۳۹۷-۰۲-۰۲ ۱۰:۵۴:۴۶ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (394, 1, '2018-04-22 10:55:46', 1, '۱۳۹۷-۰۲-۰۲ ۱۰:۵۵:۴۶ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (395, 1, '2018-04-22 10:56:10', 1, '۱۳۹۷-۰۲-۰۲ ۱۰:۵۶:۱۰ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (396, 1, '2018-04-22 10:56:14', 1, '۱۳۹۷-۰۲-۰۲ ۱۰:۵۶:۱۴ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (397, 1, '2018-04-22 10:56:29', 1, '۱۳۹۷-۰۲-۰۲ ۱۰:۵۶:۲۹ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (398, 1, '2018-04-22 10:56:53', 1, '۱۳۹۷-۰۲-۰۲ ۱۰:۵۶:۵۳ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (399, 1, '2018-04-22 10:57:26', 1, '۱۳۹۷-۰۲-۰۲ ۱۰:۵۷:۲۶ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (400, 1, '2018-04-22 10:58:14', 1, '۱۳۹۷-۰۲-۰۲ ۱۰:۵۸:۱۴ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (401, 1, '2018-04-22 11:03:11', 1, '۱۳۹۷-۰۲-۰۲ ۱۱:۰۳:۱۱ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (402, 1, '2018-04-22 11:05:53', 2, '۱۳۹۷-۰۲-۰۲ ۱۱:۰۵:۵۳ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (403, 1, '2018-04-22 11:06:05', 1, '۱۳۹۷-۰۲-۰۲ ۱۱:۰۶:۰۵ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (404, 3, '2018-04-22 11:06:31', 1, '۱۳۹۷-۰۲-۰۲ ۱۱:۰۶:۳۱ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (405, 1, '2018-04-22 11:08:31', 2, '۱۳۹۷-۰۲-۰۲ ۱۱:۰۸:۳۱ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (406, 1, '2018-04-22 11:08:38', 2, '۱۳۹۷-۰۲-۰۲ ۱۱:۰۸:۳۸ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (407, 1, '2018-04-22 11:36:00', 1, '۱۳۹۷-۰۲-۰۲ ۱۱:۳۶:۰۰ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (408, 3, '2018-04-22 11:36:14', 1, '۱۳۹۷-۰۲-۰۲ ۱۱:۳۶:۱۴ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (409, 1, '2018-04-22 11:50:09', 1, '۱۳۹۷-۰۲-۰۲ ۱۱:۵۰:۰۹ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (410, 1, '2018-04-22 12:14:01', 1, '۱۳۹۷-۰۲-۰۲ ۱۲:۱۴:۰۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (411, 1, '2018-04-22 12:14:04', 2, '۱۳۹۷-۰۲-۰۲ ۱۲:۱۴:۰۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (412, 1, '2018-04-22 12:23:07', 1, '۱۳۹۷-۰۲-۰۲ ۱۲:۲۳:۰۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (413, 1, '2018-04-22 12:24:23', 1, '۱۳۹۷-۰۲-۰۲ ۱۲:۲۴:۲۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (414, 1, '2018-04-22 12:24:29', 1, '۱۳۹۷-۰۲-۰۲ ۱۲:۲۴:۲۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (415, 1, '2018-04-22 12:25:06', 1, '۱۳۹۷-۰۲-۰۲ ۱۲:۲۵:۰۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (416, 1, '2018-04-22 12:25:56', 1, '۱۳۹۷-۰۲-۰۲ ۱۲:۲۵:۵۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (417, 1, '2018-04-22 12:26:49', 1, '۱۳۹۷-۰۲-۰۲ ۱۲:۲۶:۴۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (418, 1, '2018-04-22 12:28:14', 1, '۱۳۹۷-۰۲-۰۲ ۱۲:۲۸:۱۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (419, 1, '2018-04-22 12:28:25', 2, '۱۳۹۷-۰۲-۰۲ ۱۲:۲۸:۲۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (420, 1, '2018-04-22 12:28:29', 1, '۱۳۹۷-۰۲-۰۲ ۱۲:۲۸:۲۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (421, 1, '2018-04-22 12:28:50', 1, '۱۳۹۷-۰۲-۰۲ ۱۲:۲۸:۵۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (422, 1, '2018-04-22 12:33:44', 2, '۱۳۹۷-۰۲-۰۲ ۱۲:۳۳:۴۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (423, 1, '2018-04-22 12:34:02', 1, '۱۳۹۷-۰۲-۰۲ ۱۲:۳۴:۰۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (424, 1, '2018-04-22 12:35:22', 2, '۱۳۹۷-۰۲-۰۲ ۱۲:۳۵:۲۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (425, 1, '2018-04-22 12:35:27', 1, '۱۳۹۷-۰۲-۰۲ ۱۲:۳۵:۲۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (426, 1, '2018-04-22 12:45:55', 1, '۱۳۹۷-۰۲-۰۲ ۱۲:۴۵:۵۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (427, 1, '2018-04-22 12:50:36', 2, '۱۳۹۷-۰۲-۰۲ ۱۲:۵۰:۳۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (428, 1, '2018-04-22 12:51:53', 2, '۱۳۹۷-۰۲-۰۲ ۱۲:۵۱:۵۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (429, 1, '2018-04-22 12:53:18', 1, '۱۳۹۷-۰۲-۰۲ ۱۲:۵۳:۱۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (430, 1, '2018-04-22 12:53:28', 2, '۱۳۹۷-۰۲-۰۲ ۱۲:۵۳:۲۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (431, 3, '2018-04-22 12:59:13', 1, '۱۳۹۷-۰۲-۰۲ ۱۲:۵۹:۱۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (432, 1, '2018-04-22 12:59:24', 1, '۱۳۹۷-۰۲-۰۲ ۱۲:۵۹:۲۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (433, 1, '2018-04-22 15:33:33', 1, '۱۳۹۷-۰۲-۰۲ ۱۵:۳۳:۳۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (434, 1, '2018-04-22 15:49:36', 1, '۱۳۹۷-۰۲-۰۲ ۱۵:۴۹:۳۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (435, 1, '2018-04-22 15:59:01', 1, '۱۳۹۷-۰۲-۰۲ ۱۵:۵۹:۰۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (436, 3, '2018-04-22 16:07:00', 1, '۱۳۹۷-۰۲-۰۲ ۱۶:۰۷:۰۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (437, 3, '2018-04-22 16:15:49', 2, '۱۳۹۷-۰۲-۰۲ ۱۶:۱۵:۴۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (438, 1, '2018-04-22 16:35:45', 1, '۱۳۹۷-۰۲-۰۲ ۱۶:۳۵:۴۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (439, 1, '2018-04-22 17:26:00', 1, '۱۳۹۷-۰۲-۰۲ ۱۷:۲۶:۰۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (440, 1, '2018-04-23 08:56:22', 1, '۱۳۹۷-۰۲-۰۳ ۰۸:۵۶:۲۲ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (441, 1, '2018-04-23 09:26:03', 1, '۱۳۹۷-۰۲-۰۳ ۰۹:۲۶:۰۳ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (442, 1, '2018-04-23 10:20:00', 1, '۱۳۹۷-۰۲-۰۳ ۱۰:۲۰:۰۰ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (443, 1, '2018-04-23 12:09:55', 1, '۱۳۹۷-۰۲-۰۳ ۱۲:۰۹:۵۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (444, 1, '2018-04-23 12:51:22', 1, '۱۳۹۷-۰۲-۰۳ ۱۲:۵۱:۲۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (445, 1, '2018-04-23 13:55:45', 1, '۱۳۹۷-۰۲-۰۳ ۱۳:۵۵:۴۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (446, 1, '2018-04-23 15:13:46', 1, '۱۳۹۷-۰۲-۰۳ ۱۵:۱۳:۴۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2113, 1, '2018-04-23 17:01:34', 1, '۱۳۹۷-۰۲-۰۳ ۱۷:۰۱:۳۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2114, 1, '2018-04-24 12:28:48', 1, '۱۳۹۷-۰۲-۰۴ ۱۲:۲۸:۴۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2115, 1, '2018-04-24 13:06:06', 2, '۱۳۹۷-۰۲-۰۴ ۱۳:۰۶:۰۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2116, 1, '2018-04-24 13:06:10', 1, '۱۳۹۷-۰۲-۰۴ ۱۳:۰۶:۱۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2117, 1, '2018-04-24 13:55:22', 1, '۱۳۹۷-۰۲-۰۴ ۱۳:۵۵:۲۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2118, 1, '2018-04-24 13:59:48', 1, '۱۳۹۷-۰۲-۰۴ ۱۳:۵۹:۴۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2119, 1, '2018-04-24 14:05:07', 1, '۱۳۹۷-۰۲-۰۴ ۱۴:۰۵:۰۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2120, 1, '2018-04-24 14:05:18', 2, '۱۳۹۷-۰۲-۰۴ ۱۴:۰۵:۱۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2121, 1, '2018-04-24 14:05:23', 1, '۱۳۹۷-۰۲-۰۴ ۱۴:۰۵:۲۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2122, 1, '2018-04-24 14:13:55', 1, '۱۳۹۷-۰۲-۰۴ ۱۴:۱۳:۵۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2123, 1, '2018-04-24 14:23:50', 2, '۱۳۹۷-۰۲-۰۴ ۱۴:۲۳:۵۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2124, 1, '2018-04-24 14:24:05', 1, '۱۳۹۷-۰۲-۰۴ ۱۴:۲۴:۰۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2125, 1, '2018-04-24 14:42:25', 1, '۱۳۹۷-۰۲-۰۴ ۱۴:۴۲:۲۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2126, 1, '2018-04-24 14:59:29', 2, '۱۳۹۷-۰۲-۰۴ ۱۴:۵۹:۲۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2127, 1, '2018-04-24 14:59:33', 1, '۱۳۹۷-۰۲-۰۴ ۱۴:۵۹:۳۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2128, 1, '2018-04-24 15:01:26', 2, '۱۳۹۷-۰۲-۰۴ ۱۵:۰۱:۲۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2129, 1, '2018-04-24 15:01:35', 1, '۱۳۹۷-۰۲-۰۴ ۱۵:۰۱:۳۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2130, 1, '2018-04-24 15:03:31', 2, '۱۳۹۷-۰۲-۰۴ ۱۵:۰۳:۳۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2131, 1, '2018-04-24 15:03:35', 1, '۱۳۹۷-۰۲-۰۴ ۱۵:۰۳:۳۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2132, 1, '2018-04-24 15:04:55', 2, '۱۳۹۷-۰۲-۰۴ ۱۵:۰۴:۵۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2133, 1, '2018-04-24 15:05:00', 1, '۱۳۹۷-۰۲-۰۴ ۱۵:۰۵:۰۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2134, 1, '2018-04-24 15:06:15', 2, '۱۳۹۷-۰۲-۰۴ ۱۵:۰۶:۱۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2135, 1, '2018-04-24 15:06:25', 1, '۱۳۹۷-۰۲-۰۴ ۱۵:۰۶:۲۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2136, NULL, '2018-04-24 15:42:31', 3, '۱۳۹۷-۰۲-۰۴ ۱۵:۴۲:۳۱ ب ظ', '::1', 'ms');
INSERT INTO `taa_loginloger` VALUES (2137, 1, '2018-04-24 15:42:35', 1, '۱۳۹۷-۰۲-۰۴ ۱۵:۴۲:۳۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2138, 1, '2018-04-24 16:05:47', 1, '۱۳۹۷-۰۲-۰۴ ۱۶:۰۵:۴۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2139, 1, '2018-04-24 16:09:42', 1, '۱۳۹۷-۰۲-۰۴ ۱۶:۰۹:۴۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2140, 3, '2018-04-24 16:10:29', 1, '۱۳۹۷-۰۲-۰۴ ۱۶:۱۰:۲۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2141, 1, '2018-04-24 16:17:35', 1, '۱۳۹۷-۰۲-۰۴ ۱۶:۱۷:۳۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2142, 1, '2018-04-24 16:18:40', 1, '۱۳۹۷-۰۲-۰۴ ۱۶:۱۸:۴۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2143, 1, '2018-04-24 16:30:02', 1, '۱۳۹۷-۰۲-۰۴ ۱۶:۳۰:۰۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2144, 3, '2018-04-24 16:55:36', 1, '۱۳۹۷-۰۲-۰۴ ۱۶:۵۵:۳۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2145, 1, '2018-04-24 16:57:35', 2, '۱۳۹۷-۰۲-۰۴ ۱۶:۵۷:۳۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2146, 1, '2018-04-24 16:57:38', 1, '۱۳۹۷-۰۲-۰۴ ۱۶:۵۷:۳۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2147, 1, '2018-04-24 17:12:19', 2, '۱۳۹۷-۰۲-۰۴ ۱۷:۱۲:۱۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2148, 1, '2018-04-24 17:12:24', 1, '۱۳۹۷-۰۲-۰۴ ۱۷:۱۲:۲۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2149, 1, '2018-04-24 17:23:13', 2, '۱۳۹۷-۰۲-۰۴ ۱۷:۲۳:۱۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2150, NULL, '2018-04-24 17:28:41', 3, '۱۳۹۷-۰۲-۰۴ ۱۷:۲۸:۴۱ ب ظ', '::1', 'we');
INSERT INTO `taa_loginloger` VALUES (2151, 1, '2018-04-24 17:28:45', 1, '۱۳۹۷-۰۲-۰۴ ۱۷:۲۸:۴۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2152, 1, '2018-04-24 17:43:38', 1, '۱۳۹۷-۰۲-۰۴ ۱۷:۴۳:۳۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2153, 1, '2018-04-25 14:56:02', 1, '۱۳۹۷-۰۲-۰۵ ۱۴:۵۶:۰۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2154, 1, '2018-04-25 14:56:12', 2, '۱۳۹۷-۰۲-۰۵ ۱۴:۵۶:۱۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2155, 1, '2018-04-25 14:56:18', 1, '۱۳۹۷-۰۲-۰۵ ۱۴:۵۶:۱۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2156, 1, '2018-04-25 15:10:01', 1, '۱۳۹۷-۰۲-۰۵ ۱۵:۱۰:۰۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2157, NULL, '2018-04-25 15:57:14', 1, '۱۳۹۷-۰۲-۰۵ ۱۵:۵۷:۱۴ ب ظ', '::1', 'msh');
INSERT INTO `taa_loginloger` VALUES (2158, NULL, '2018-04-25 15:57:18', 1, '۱۳۹۷-۰۲-۰۵ ۱۵:۵۷:۱۸ ب ظ', '::1', 'msh');
INSERT INTO `taa_loginloger` VALUES (2159, NULL, '2018-04-25 15:57:32', 1, '۱۳۹۷-۰۲-۰۵ ۱۵:۵۷:۳۲ ب ظ', '::1', 'msh');
INSERT INTO `taa_loginloger` VALUES (2160, 1, '2018-04-25 15:58:26', 1, '۱۳۹۷-۰۲-۰۵ ۱۵:۵۸:۲۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2161, 1, '2018-04-28 09:45:00', 1, '۱۳۹۷-۰۲-۰۸ ۰۹:۴۵:۰۰ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2162, 1, '2018-04-28 10:04:11', 1, '۱۳۹۷-۰۲-۰۸ ۱۰:۰۴:۱۱ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2163, 1, '2018-04-28 10:25:26', 1, '۱۳۹۷-۰۲-۰۸ ۱۰:۲۵:۲۶ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2164, 1, '2018-04-28 11:16:39', 1, '۱۳۹۷-۰۲-۰۸ ۱۱:۱۶:۳۹ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2165, 1, '2018-04-28 11:34:00', 1, '۱۳۹۷-۰۲-۰۸ ۱۱:۳۴:۰۰ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2166, 1, '2018-04-28 12:29:14', 1, '۱۳۹۷-۰۲-۰۸ ۱۲:۲۹:۱۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2167, 1, '2018-04-28 14:24:21', 1, '۱۳۹۷-۰۲-۰۸ ۱۴:۲۴:۲۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2168, NULL, '2018-04-28 15:04:32', 3, '۱۳۹۷-۰۲-۰۸ ۱۵:۰۴:۳۲ ب ظ', '::1', 'ms');
INSERT INTO `taa_loginloger` VALUES (2169, 1, '2018-04-28 15:04:36', 1, '۱۳۹۷-۰۲-۰۸ ۱۵:۰۴:۳۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2170, 1, '2018-04-28 15:25:53', 1, '۱۳۹۷-۰۲-۰۸ ۱۵:۲۵:۵۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2171, 1, '2018-04-28 17:14:17', 1, '۱۳۹۷-۰۲-۰۸ ۱۷:۱۴:۱۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2172, 1, '2018-04-29 10:35:07', 1, '۱۳۹۷-۰۲-۰۹ ۱۰:۳۵:۰۷ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2173, 1, '2018-04-29 10:57:46', 1, '۱۳۹۷-۰۲-۰۹ ۱۰:۵۷:۴۶ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2174, 1, '2018-04-29 11:33:14', 1, '۱۳۹۷-۰۲-۰۹ ۱۱:۳۳:۱۴ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2175, 1, '2018-04-29 11:49:21', 1, '۱۳۹۷-۰۲-۰۹ ۱۱:۴۹:۲۱ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2176, 1, '2018-04-29 12:03:50', 1, '۱۳۹۷-۰۲-۰۹ ۱۲:۰۳:۵۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2177, 1, '2018-04-29 12:24:31', 1, '۱۳۹۷-۰۲-۰۹ ۱۲:۲۴:۳۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2178, 1, '2018-04-29 14:14:21', 1, '۱۳۹۷-۰۲-۰۹ ۱۴:۱۴:۲۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2179, 1, '2018-04-29 16:07:06', 1, '۱۳۹۷-۰۲-۰۹ ۱۶:۰۷:۰۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2180, 1, '2018-04-30 14:39:57', 1, '۱۳۹۷-۰۲-۱۰ ۱۴:۳۹:۵۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2181, 1, '2018-04-30 15:41:07', 1, '۱۳۹۷-۰۲-۱۰ ۱۵:۴۱:۰۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2182, 1, '2018-04-30 16:47:56', 1, '۱۳۹۷-۰۲-۱۰ ۱۶:۴۷:۵۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2183, 1, '2018-05-01 09:18:31', 1, '۱۳۹۷-۰۲-۱۱ ۰۹:۱۸:۳۱ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2184, 1, '2018-05-01 10:06:15', 1, '۱۳۹۷-۰۲-۱۱ ۱۰:۰۶:۱۵ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2185, 1, '2018-05-01 11:10:14', 1, '۱۳۹۷-۰۲-۱۱ ۱۱:۱۰:۱۴ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2186, 1, '2018-05-01 12:06:15', 1, '۱۳۹۷-۰۲-۱۱ ۱۲:۰۶:۱۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2187, 1, '2018-05-01 12:35:20', 2, '۱۳۹۷-۰۲-۱۱ ۱۲:۳۵:۲۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2188, 1, '2018-05-01 12:35:26', 1, '۱۳۹۷-۰۲-۱۱ ۱۲:۳۵:۲۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2189, 1, '2018-05-01 12:35:33', 2, '۱۳۹۷-۰۲-۱۱ ۱۲:۳۵:۳۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2190, 3, '2018-05-01 12:35:37', 1, '۱۳۹۷-۰۲-۱۱ ۱۲:۳۵:۳۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2191, 3, '2018-05-01 12:37:36', 2, '۱۳۹۷-۰۲-۱۱ ۱۲:۳۷:۳۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2192, 1, '2018-05-01 12:37:43', 1, '۱۳۹۷-۰۲-۱۱ ۱۲:۳۷:۴۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2193, 1, '2018-05-01 12:38:22', 2, '۱۳۹۷-۰۲-۱۱ ۱۲:۳۸:۲۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2194, 3, '2018-05-01 12:38:26', 1, '۱۳۹۷-۰۲-۱۱ ۱۲:۳۸:۲۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2195, 3, '2018-05-01 12:39:04', 2, '۱۳۹۷-۰۲-۱۱ ۱۲:۳۹:۰۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2196, 1, '2018-05-01 12:39:12', 1, '۱۳۹۷-۰۲-۱۱ ۱۲:۳۹:۱۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2197, 3, '2018-05-01 14:55:04', 1, '۱۳۹۷-۰۲-۱۱ ۱۴:۵۵:۰۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2198, 3, '2018-05-01 15:05:10', 2, '۱۳۹۷-۰۲-۱۱ ۱۵:۰۵:۱۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2199, 1, '2018-05-01 15:05:13', 1, '۱۳۹۷-۰۲-۱۱ ۱۵:۰۵:۱۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2200, 1, '2018-05-01 15:30:26', 1, '۱۳۹۷-۰۲-۱۱ ۱۵:۳۰:۲۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2201, 1, '2018-05-01 15:56:39', 1, '۱۳۹۷-۰۲-۱۱ ۱۵:۵۶:۳۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2202, 1, '2018-05-01 16:29:51', 1, '۱۳۹۷-۰۲-۱۱ ۱۶:۲۹:۵۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2203, 1, '2018-05-01 17:31:59', 1, '۱۳۹۷-۰۲-۱۱ ۱۷:۳۱:۵۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2204, 1, '2018-05-05 10:08:02', 1, '۱۳۹۷-۰۲-۱۵ ۱۰:۰۸:۰۲ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2205, 1, '2018-05-05 10:20:55', 2, '۱۳۹۷-۰۲-۱۵ ۱۰:۲۰:۵۵ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2206, 3, '2018-05-05 11:29:35', 1, '۱۳۹۷-۰۲-۱۵ ۱۱:۲۹:۳۵ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2207, 3, '2018-05-05 12:00:15', 1, '۱۳۹۷-۰۲-۱۵ ۱۲:۰۰:۱۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2208, 3, '2018-05-05 12:09:56', 2, '۱۳۹۷-۰۲-۱۵ ۱۲:۰۹:۵۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2209, 3, '2018-05-05 12:10:00', 1, '۱۳۹۷-۰۲-۱۵ ۱۲:۱۰:۰۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2210, 3, '2018-05-05 12:12:55', 2, '۱۳۹۷-۰۲-۱۵ ۱۲:۱۲:۵۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2211, 1, '2018-05-05 12:12:59', 1, '۱۳۹۷-۰۲-۱۵ ۱۲:۱۲:۵۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2212, 1, '2018-05-05 12:20:37', 2, '۱۳۹۷-۰۲-۱۵ ۱۲:۲۰:۳۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2213, NULL, '2018-05-05 12:20:44', 3, '۱۳۹۷-۰۲-۱۵ ۱۲:۲۰:۴۴ ب ظ', '::1', 'msg');
INSERT INTO `taa_loginloger` VALUES (2214, 1, '2018-05-05 12:20:49', 1, '۱۳۹۷-۰۲-۱۵ ۱۲:۲۰:۴۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2215, 1, '2018-05-05 14:06:44', 1, '۱۳۹۷-۰۲-۱۵ ۱۴:۰۶:۴۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2216, 1, '2018-05-05 14:40:16', 2, '۱۳۹۷-۰۲-۱۵ ۱۴:۴۰:۱۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2217, 3, '2018-05-05 14:40:21', 1, '۱۳۹۷-۰۲-۱۵ ۱۴:۴۰:۲۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2218, 3, '2018-05-05 15:28:52', 2, '۱۳۹۷-۰۲-۱۵ ۱۵:۲۸:۵۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2219, 1, '2018-05-05 15:29:00', 1, '۱۳۹۷-۰۲-۱۵ ۱۵:۲۹:۰۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2220, 1, '2018-05-05 16:27:41', 2, '۱۳۹۷-۰۲-۱۵ ۱۶:۲۷:۴۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2221, 1, '2018-05-05 16:27:45', 1, '۱۳۹۷-۰۲-۱۵ ۱۶:۲۷:۴۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2222, 1, '2018-05-05 16:28:23', 2, '۱۳۹۷-۰۲-۱۵ ۱۶:۲۸:۲۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2223, 3, '2018-05-05 16:28:27', 1, '۱۳۹۷-۰۲-۱۵ ۱۶:۲۸:۲۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2224, 1, '2018-05-07 11:35:37', 1, '۱۳۹۷-۰۲-۱۷ ۱۱:۳۵:۳۷ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2225, 1, '2018-05-07 11:44:24', 2, '۱۳۹۷-۰۲-۱۷ ۱۱:۴۴:۲۴ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2226, 3, '2018-05-07 11:44:28', 1, '۱۳۹۷-۰۲-۱۷ ۱۱:۴۴:۲۸ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2227, 3, '2018-05-07 11:49:08', 2, '۱۳۹۷-۰۲-۱۷ ۱۱:۴۹:۰۸ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2228, 1, '2018-05-07 11:49:13', 1, '۱۳۹۷-۰۲-۱۷ ۱۱:۴۹:۱۳ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2229, 1, '2018-05-07 12:16:50', 2, '۱۳۹۷-۰۲-۱۷ ۱۲:۱۶:۵۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2230, 3, '2018-05-07 12:16:56', 1, '۱۳۹۷-۰۲-۱۷ ۱۲:۱۶:۵۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2231, 3, '2018-05-07 12:44:49', 2, '۱۳۹۷-۰۲-۱۷ ۱۲:۴۴:۴۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2232, 1, '2018-05-07 12:44:54', 1, '۱۳۹۷-۰۲-۱۷ ۱۲:۴۴:۵۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2233, 1, '2018-05-07 14:57:29', 1, '۱۳۹۷-۰۲-۱۷ ۱۴:۵۷:۲۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2234, 1, '2018-05-07 14:58:02', 1, '۱۳۹۷-۰۲-۱۷ ۱۴:۵۸:۰۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2235, 1, '2018-05-07 16:07:50', 2, '۱۳۹۷-۰۲-۱۷ ۱۶:۰۷:۵۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2236, 4, '2018-05-07 16:07:57', 1, '۱۳۹۷-۰۲-۱۷ ۱۶:۰۷:۵۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2237, 4, '2018-05-07 16:08:25', 2, '۱۳۹۷-۰۲-۱۷ ۱۶:۰۸:۲۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2238, 1, '2018-05-07 16:08:31', 1, '۱۳۹۷-۰۲-۱۷ ۱۶:۰۸:۳۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2239, 1, '2018-05-07 16:08:48', 2, '۱۳۹۷-۰۲-۱۷ ۱۶:۰۸:۴۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2240, 3, '2018-05-07 16:08:51', 3, '۱۳۹۷-۰۲-۱۷ ۱۶:۰۸:۵۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2241, 3, '2018-05-07 16:08:55', 1, '۱۳۹۷-۰۲-۱۷ ۱۶:۰۸:۵۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2242, 3, '2018-05-07 16:13:29', 2, '۱۳۹۷-۰۲-۱۷ ۱۶:۱۳:۲۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2243, 4, '2018-05-07 16:13:37', 1, '۱۳۹۷-۰۲-۱۷ ۱۶:۱۳:۳۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2244, 4, '2018-05-07 16:14:11', 2, '۱۳۹۷-۰۲-۱۷ ۱۶:۱۴:۱۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2245, 3, '2018-05-07 16:14:17', 1, '۱۳۹۷-۰۲-۱۷ ۱۶:۱۴:۱۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2246, 3, '2018-05-07 16:15:26', 2, '۱۳۹۷-۰۲-۱۷ ۱۶:۱۵:۲۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2247, 4, '2018-05-07 16:15:33', 1, '۱۳۹۷-۰۲-۱۷ ۱۶:۱۵:۳۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2248, 4, '2018-05-07 16:16:46', 2, '۱۳۹۷-۰۲-۱۷ ۱۶:۱۶:۴۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2249, 3, '2018-05-07 16:16:54', 1, '۱۳۹۷-۰۲-۱۷ ۱۶:۱۶:۵۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2250, 3, '2018-05-07 16:20:31', 2, '۱۳۹۷-۰۲-۱۷ ۱۶:۲۰:۳۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2251, 4, '2018-05-07 16:20:38', 1, '۱۳۹۷-۰۲-۱۷ ۱۶:۲۰:۳۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2252, 4, '2018-05-07 16:23:24', 2, '۱۳۹۷-۰۲-۱۷ ۱۶:۲۳:۲۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2253, 1, '2018-05-07 16:23:30', 1, '۱۳۹۷-۰۲-۱۷ ۱۶:۲۳:۳۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2254, 1, '2018-05-07 16:24:13', 2, '۱۳۹۷-۰۲-۱۷ ۱۶:۲۴:۱۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2255, 4, '2018-05-07 16:24:21', 1, '۱۳۹۷-۰۲-۱۷ ۱۶:۲۴:۲۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2256, 4, '2018-05-07 16:25:03', 2, '۱۳۹۷-۰۲-۱۷ ۱۶:۲۵:۰۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2257, 3, '2018-05-07 16:25:09', 1, '۱۳۹۷-۰۲-۱۷ ۱۶:۲۵:۰۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2258, 3, '2018-05-08 09:44:30', 1, '۱۳۹۷-۰۲-۱۸ ۰۹:۴۴:۳۰ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2259, 3, '2018-05-08 10:04:21', 2, '۱۳۹۷-۰۲-۱۸ ۱۰:۰۴:۲۱ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2260, 4, '2018-05-08 10:04:40', 1, '۱۳۹۷-۰۲-۱۸ ۱۰:۰۴:۴۰ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2261, 4, '2018-05-08 10:05:11', 2, '۱۳۹۷-۰۲-۱۸ ۱۰:۰۵:۱۱ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2262, 1, '2018-05-08 10:05:16', 1, '۱۳۹۷-۰۲-۱۸ ۱۰:۰۵:۱۶ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2263, 1, '2018-05-08 10:05:19', 2, '۱۳۹۷-۰۲-۱۸ ۱۰:۰۵:۱۹ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2264, 3, '2018-05-08 10:05:22', 1, '۱۳۹۷-۰۲-۱۸ ۱۰:۰۵:۲۲ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2265, 3, '2018-05-08 10:24:21', 2, '۱۳۹۷-۰۲-۱۸ ۱۰:۲۴:۲۱ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2266, 4, '2018-05-08 10:24:26', 1, '۱۳۹۷-۰۲-۱۸ ۱۰:۲۴:۲۶ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2267, 4, '2018-05-08 10:35:30', 2, '۱۳۹۷-۰۲-۱۸ ۱۰:۳۵:۲۹ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2268, 3, '2018-05-08 10:35:36', 1, '۱۳۹۷-۰۲-۱۸ ۱۰:۳۵:۳۶ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2269, 3, '2018-05-08 10:39:30', 2, '۱۳۹۷-۰۲-۱۸ ۱۰:۳۹:۳۰ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2270, 4, '2018-05-08 10:39:37', 1, '۱۳۹۷-۰۲-۱۸ ۱۰:۳۹:۳۷ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2271, 4, '2018-05-08 10:48:39', 2, '۱۳۹۷-۰۲-۱۸ ۱۰:۴۸:۳۹ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2272, 1, '2018-05-08 10:48:43', 1, '۱۳۹۷-۰۲-۱۸ ۱۰:۴۸:۴۳ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2273, 1, '2018-05-08 10:49:37', 2, '۱۳۹۷-۰۲-۱۸ ۱۰:۴۹:۳۷ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2274, 4, '2018-05-08 10:49:51', 1, '۱۳۹۷-۰۲-۱۸ ۱۰:۴۹:۵۱ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2275, 4, '2018-05-08 10:58:26', 2, '۱۳۹۷-۰۲-۱۸ ۱۰:۵۸:۲۶ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2276, 3, '2018-05-08 10:58:33', 1, '۱۳۹۷-۰۲-۱۸ ۱۰:۵۸:۳۳ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2277, 3, '2018-05-08 11:03:28', 2, '۱۳۹۷-۰۲-۱۸ ۱۱:۰۳:۲۸ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2278, 4, '2018-05-08 11:03:34', 1, '۱۳۹۷-۰۲-۱۸ ۱۱:۰۳:۳۴ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2279, 4, '2018-05-08 11:03:56', 2, '۱۳۹۷-۰۲-۱۸ ۱۱:۰۳:۵۶ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2280, 1, '2018-05-08 11:03:59', 1, '۱۳۹۷-۰۲-۱۸ ۱۱:۰۳:۵۹ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2281, 1, '2018-05-08 11:04:37', 2, '۱۳۹۷-۰۲-۱۸ ۱۱:۰۴:۳۷ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2282, 4, '2018-05-08 11:04:44', 1, '۱۳۹۷-۰۲-۱۸ ۱۱:۰۴:۴۴ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2283, 4, '2018-05-08 11:22:50', 2, '۱۳۹۷-۰۲-۱۸ ۱۱:۲۲:۵۰ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2284, 4, '2018-05-08 11:22:55', 1, '۱۳۹۷-۰۲-۱۸ ۱۱:۲۲:۵۵ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2285, 4, '2018-05-08 11:23:14', 2, '۱۳۹۷-۰۲-۱۸ ۱۱:۲۳:۱۴ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2286, 1, '2018-05-08 11:23:18', 1, '۱۳۹۷-۰۲-۱۸ ۱۱:۲۳:۱۸ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2287, 1, '2018-05-08 11:23:38', 2, '۱۳۹۷-۰۲-۱۸ ۱۱:۲۳:۳۸ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2288, 4, '2018-05-08 11:23:43', 1, '۱۳۹۷-۰۲-۱۸ ۱۱:۲۳:۴۳ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2289, 4, '2018-05-08 11:24:17', 2, '۱۳۹۷-۰۲-۱۸ ۱۱:۲۴:۱۷ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2290, 3, '2018-05-08 11:24:22', 1, '۱۳۹۷-۰۲-۱۸ ۱۱:۲۴:۲۲ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2291, 3, '2018-05-08 11:44:32', 2, '۱۳۹۷-۰۲-۱۸ ۱۱:۴۴:۳۲ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2292, 3, '2018-05-08 11:44:38', 1, '۱۳۹۷-۰۲-۱۸ ۱۱:۴۴:۳۸ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2293, 3, '2018-05-08 11:44:57', 2, '۱۳۹۷-۰۲-۱۸ ۱۱:۴۴:۵۷ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2294, 1, '2018-05-08 11:45:04', 1, '۱۳۹۷-۰۲-۱۸ ۱۱:۴۵:۰۴ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2295, 1, '2018-05-08 11:47:54', 2, '۱۳۹۷-۰۲-۱۸ ۱۱:۴۷:۵۴ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2296, 3, '2018-05-08 11:48:00', 1, '۱۳۹۷-۰۲-۱۸ ۱۱:۴۸:۰۰ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2297, 3, '2018-05-08 12:33:06', 2, '۱۳۹۷-۰۲-۱۸ ۱۲:۳۳:۰۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2298, 1, '2018-05-08 12:33:09', 1, '۱۳۹۷-۰۲-۱۸ ۱۲:۳۳:۰۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2299, 1, '2018-05-08 12:33:18', 2, '۱۳۹۷-۰۲-۱۸ ۱۲:۳۳:۱۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2300, 3, '2018-05-08 12:33:39', 1, '۱۳۹۷-۰۲-۱۸ ۱۲:۳۳:۳۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2301, 3, '2018-05-08 13:03:20', 2, '۱۳۹۷-۰۲-۱۸ ۱۳:۰۳:۲۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2302, 1, '2018-05-08 13:03:24', 3, '۱۳۹۷-۰۲-۱۸ ۱۳:۰۳:۲۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2303, 1, '2018-05-08 13:03:27', 1, '۱۳۹۷-۰۲-۱۸ ۱۳:۰۳:۲۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2304, 1, '2018-05-08 14:02:58', 1, '۱۳۹۷-۰۲-۱۸ ۱۴:۰۲:۵۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2305, 1, '2018-05-08 14:03:35', 2, '۱۳۹۷-۰۲-۱۸ ۱۴:۰۳:۳۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2306, 3, '2018-05-08 14:03:39', 1, '۱۳۹۷-۰۲-۱۸ ۱۴:۰۳:۳۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2307, 3, '2018-05-08 14:05:27', 2, '۱۳۹۷-۰۲-۱۸ ۱۴:۰۵:۲۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2308, 1, '2018-05-08 16:54:49', 1, '۱۳۹۷-۰۲-۱۸ ۱۶:۵۴:۴۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2309, 1, '2018-05-08 17:55:52', 2, '۱۳۹۷-۰۲-۱۸ ۱۷:۵۵:۵۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2310, 1, '2018-05-08 17:56:19', 1, '۱۳۹۷-۰۲-۱۸ ۱۷:۵۶:۱۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2311, 1, '2018-05-09 10:02:55', 1, '۱۳۹۷-۰۲-۱۹ ۱۰:۰۲:۵۵ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2312, 1, '2018-05-12 09:02:38', 1, '۱۳۹۷-۰۲-۲۲ ۰۹:۰۲:۳۸ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2313, 1, '2018-05-12 10:10:00', 1, '۱۳۹۷-۰۲-۲۲ ۱۰:۱۰:۰۰ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2314, 1, '2018-05-12 11:48:52', 1, '۱۳۹۷-۰۲-۲۲ ۱۱:۴۸:۵۲ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2315, 1, '2018-05-12 13:52:54', 1, '۱۳۹۷-۰۲-۲۲ ۱۳:۵۲:۵۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2316, 1, '2018-05-12 14:47:23', 1, '۱۳۹۷-۰۲-۲۲ ۱۴:۴۷:۲۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2317, 1, '2018-05-12 17:34:55', 1, '۱۳۹۷-۰۲-۲۲ ۱۷:۳۴:۵۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2318, 1, '2018-05-14 09:33:00', 1, '۱۳۹۷-۰۲-۲۴ ۰۹:۳۳:۰۰ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2319, 1, '2018-05-14 12:57:00', 1, '۱۳۹۷-۰۲-۲۴ ۱۲:۵۷:۰۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2320, 1, '2018-05-14 15:58:30', 1, '۱۳۹۷-۰۲-۲۴ ۱۵:۵۸:۳۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2321, 1, '2018-05-19 12:03:02', 1, '۱۳۹۷-۰۲-۲۹ ۱۲:۰۳:۰۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2322, 1, '2018-05-19 12:45:11', 1, '۱۳۹۷-۰۲-۲۹ ۱۲:۴۵:۱۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2323, 1, '2018-05-19 13:56:07', 1, '۱۳۹۷-۰۲-۲۹ ۱۳:۵۶:۰۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2324, 1, '2018-05-19 14:19:42', 1, '۱۳۹۷-۰۲-۲۹ ۱۴:۱۹:۴۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2325, 1, '2018-05-20 09:54:28', 1, '۱۳۹۷-۰۲-۳۰ ۰۹:۵۴:۲۸ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2326, 1, '2018-05-20 10:17:10', 1, '۱۳۹۷-۰۲-۳۰ ۱۰:۱۷:۱۰ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2327, 1, '2018-05-20 12:03:05', 1, '۱۳۹۷-۰۲-۳۰ ۱۲:۰۳:۰۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2328, 1, '2018-05-20 13:47:22', 1, '۱۳۹۷-۰۲-۳۰ ۱۳:۴۷:۲۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2329, 1, '2018-05-20 14:25:09', 1, '۱۳۹۷-۰۲-۳۰ ۱۴:۲۵:۰۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2330, 1, '2018-05-21 10:17:34', 1, '۱۳۹۷-۰۲-۳۱ ۱۰:۱۷:۳۴ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2331, 1, '2018-05-21 11:56:51', 1, '۱۳۹۷-۰۲-۳۱ ۱۱:۵۶:۵۱ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2332, 1, '2018-05-21 11:57:47', 2, '۱۳۹۷-۰۲-۳۱ ۱۱:۵۷:۴۷ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2333, 2, '2018-05-21 11:57:52', 1, '۱۳۹۷-۰۲-۳۱ ۱۱:۵۷:۵۲ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2334, 2, '2018-05-21 15:59:41', 1, '۱۳۹۷-۰۲-۳۱ ۱۵:۵۹:۴۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2335, 2, '2018-05-21 16:23:13', 2, '۱۳۹۷-۰۲-۳۱ ۱۶:۲۳:۱۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2336, 1, '2018-05-21 16:23:20', 1, '۱۳۹۷-۰۲-۳۱ ۱۶:۲۳:۲۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2337, 1, '2018-05-21 16:23:57', 2, '۱۳۹۷-۰۲-۳۱ ۱۶:۲۳:۵۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2338, 1, '2018-05-21 16:24:14', 1, '۱۳۹۷-۰۲-۳۱ ۱۶:۲۴:۱۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2339, 1, '2018-05-21 16:25:42', 2, '۱۳۹۷-۰۲-۳۱ ۱۶:۲۵:۴۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2340, 2, '2018-05-21 16:25:48', 1, '۱۳۹۷-۰۲-۳۱ ۱۶:۲۵:۴۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2341, 2, '2018-05-21 16:41:32', 2, '۱۳۹۷-۰۲-۳۱ ۱۶:۴۱:۳۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2342, 1, '2018-05-21 16:41:41', 1, '۱۳۹۷-۰۲-۳۱ ۱۶:۴۱:۴۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2343, 1, '2018-05-22 14:23:08', 1, '۱۳۹۷-۰۳-۰۱ ۱۴:۲۳:۰۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2344, 1, '2018-05-22 14:23:12', 2, '۱۳۹۷-۰۳-۰۱ ۱۴:۲۳:۱۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2345, 2, '2018-05-22 14:23:17', 1, '۱۳۹۷-۰۳-۰۱ ۱۴:۲۳:۱۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2346, 2, '2018-05-22 14:24:15', 2, '۱۳۹۷-۰۳-۰۱ ۱۴:۲۴:۱۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2347, 1, '2018-05-22 14:24:21', 1, '۱۳۹۷-۰۳-۰۱ ۱۴:۲۴:۲۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2348, 1, '2018-05-22 14:40:05', 2, '۱۳۹۷-۰۳-۰۱ ۱۴:۴۰:۰۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2349, 2, '2018-05-22 14:40:12', 1, '۱۳۹۷-۰۳-۰۱ ۱۴:۴۰:۱۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2350, 1, '2018-05-22 15:18:07', 1, '۱۳۹۷-۰۳-۰۱ ۱۵:۱۸:۰۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2351, 1, '2018-05-22 15:18:09', 2, '۱۳۹۷-۰۳-۰۱ ۱۵:۱۸:۰۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2352, 2, '2018-05-22 15:18:13', 1, '۱۳۹۷-۰۳-۰۱ ۱۵:۱۸:۱۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2353, 2, '2018-05-22 15:27:21', 2, '۱۳۹۷-۰۳-۰۱ ۱۵:۲۷:۲۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2354, 1, '2018-05-22 15:27:27', 1, '۱۳۹۷-۰۳-۰۱ ۱۵:۲۷:۲۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2355, 1, '2018-05-22 15:32:33', 2, '۱۳۹۷-۰۳-۰۱ ۱۵:۳۲:۳۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2356, 2, '2018-05-22 15:32:38', 1, '۱۳۹۷-۰۳-۰۱ ۱۵:۳۲:۳۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2357, 2, '2018-05-22 15:33:49', 2, '۱۳۹۷-۰۳-۰۱ ۱۵:۳۳:۴۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2358, 1, '2018-05-22 15:33:52', 1, '۱۳۹۷-۰۳-۰۱ ۱۵:۳۳:۵۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2359, 1, '2018-05-22 15:35:19', 2, '۱۳۹۷-۰۳-۰۱ ۱۵:۳۵:۱۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2360, 2, '2018-05-22 15:35:27', 1, '۱۳۹۷-۰۳-۰۱ ۱۵:۳۵:۲۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2361, 2, '2018-05-22 15:45:44', 2, '۱۳۹۷-۰۳-۰۱ ۱۵:۴۵:۴۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2362, 1, '2018-05-22 15:51:57', 1, '۱۳۹۷-۰۳-۰۱ ۱۵:۴۵:۴۸ ب ظ', '::1192.168.100.100', NULL);
INSERT INTO `taa_loginloger` VALUES (2363, 1, '2018-05-22 15:51:56', 2, '۱۳۹۷-۰۳-۰۱ ۱۵:۵۰:۳۳ ب ظ', '::1192.168.100.100', NULL);
INSERT INTO `taa_loginloger` VALUES (2364, 1, '2018-05-22 15:51:55', 3, '۱۳۹۷-۰۳-۰۱ ۱۵:۵۰:۳۷ ب ظ', '192.168.100.100::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2365, 1, '2018-05-22 15:51:54', 1, '۱۳۹۷-۰۳-۰۱ ۱۵:۵۰:۴۱ ب ظ', '192.168.100.100', NULL);
INSERT INTO `taa_loginloger` VALUES (2366, 1, '2018-05-23 09:43:48', 1, '۱۳۹۷-۰۳-۰۲ ۰۹:۴۳:۴۸ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2367, 1, '2018-05-23 11:24:50', 2, '۱۳۹۷-۰۳-۰۲ ۱۱:۲۴:۵۰ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2368, 2, '2018-05-23 11:24:54', 1, '۱۳۹۷-۰۳-۰۲ ۱۱:۲۴:۵۴ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2369, 2, '2018-05-23 11:36:07', 2, '۱۳۹۷-۰۳-۰۲ ۱۱:۳۶:۰۷ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2370, 1, '2018-05-23 11:36:14', 1, '۱۳۹۷-۰۳-۰۲ ۱۱:۳۶:۱۴ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2371, 1, '2018-05-23 11:51:05', 2, '۱۳۹۷-۰۳-۰۲ ۱۱:۵۱:۰۵ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2372, 2, '2018-05-23 11:51:12', 1, '۱۳۹۷-۰۳-۰۲ ۱۱:۵۱:۱۲ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2373, 2, '2018-05-23 11:51:28', 2, '۱۳۹۷-۰۳-۰۲ ۱۱:۵۱:۲۸ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2374, 1, '2018-05-23 13:59:32', 1, '۱۳۹۷-۰۳-۰۲ ۱۳:۵۹:۳۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2375, 1, '2018-05-23 13:59:56', 2, '۱۳۹۷-۰۳-۰۲ ۱۳:۵۹:۵۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2376, 2, '2018-05-23 14:00:01', 1, '۱۳۹۷-۰۳-۰۲ ۱۴:۰۰:۰۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2377, 2, '2018-05-23 14:01:19', 2, '۱۳۹۷-۰۳-۰۲ ۱۴:۰۱:۱۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2378, 1, '2018-05-23 14:01:22', 1, '۱۳۹۷-۰۳-۰۲ ۱۴:۰۱:۲۲ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2379, 1, '2018-05-23 15:23:51', 2, '۱۳۹۷-۰۳-۰۲ ۱۵:۲۳:۵۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2380, 2, '2018-05-23 15:23:56', 1, '۱۳۹۷-۰۳-۰۲ ۱۵:۲۳:۵۶ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2381, 1, '2018-05-26 12:13:08', 1, '۱۳۹۷-۰۳-۰۵ ۱۲:۱۳:۰۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2382, 1, '2018-05-26 12:16:23', 1, '۱۳۹۷-۰۳-۰۵ ۱۲:۱۶:۲۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2383, 1, '2018-05-26 12:17:13', 2, '۱۳۹۷-۰۳-۰۵ ۱۲:۱۷:۱۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2384, 1, '2018-05-26 12:21:18', 1, '۱۳۹۷-۰۳-۰۵ ۱۲:۲۱:۱۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2385, 1, '2018-05-26 12:21:21', 2, '۱۳۹۷-۰۳-۰۵ ۱۲:۲۱:۲۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2386, 2, '2018-05-26 12:21:28', 1, '۱۳۹۷-۰۳-۰۵ ۱۲:۲۱:۲۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2387, 1, '2019-02-04 08:14:28', 1, '۱۳۹۷-۱۱-۱۵ ۰۸:۱۴:۲۸ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2388, 4, '2019-02-04 08:20:46', 1, '۱۳۹۷-۱۱-۱۵ ۰۸:۲۰:۴۶ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2389, 1, '2019-02-04 09:28:12', 1, '۱۳۹۷-۱۱-۱۵ ۰۹:۲۸:۱۲ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2390, 4, '2019-02-04 09:36:48', 1, '۱۳۹۷-۱۱-۱۵ ۰۹:۳۶:۴۸ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2391, 4, '2019-02-04 10:46:40', 1, '۱۳۹۷-۱۱-۱۵ ۱۰:۴۶:۴۰ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2392, 4, '2019-02-04 10:46:49', 1, '۱۳۹۷-۱۱-۱۵ ۱۰:۴۶:۴۹ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2393, 1, '2019-02-04 10:48:13', 1, '۱۳۹۷-۱۱-۱۵ ۱۰:۴۸:۱۳ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2394, 1, '2019-02-04 10:48:13', 2, '۱۳۹۷-۱۱-۱۵ ۱۰:۴۸:۱۳ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2395, 1, '2019-02-04 10:48:17', 1, '۱۳۹۷-۱۱-۱۵ ۱۰:۴۸:۱۷ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2396, 1, '2019-02-04 13:48:21', 1, '۱۳۹۷-۱۱-۱۵ ۱۳:۴۸:۲۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2397, 4, '2019-02-04 13:50:03', 1, '۱۳۹۷-۱۱-۱۵ ۱۳:۵۰:۰۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2398, 4, '2019-02-04 13:50:19', 1, '۱۳۹۷-۱۱-۱۵ ۱۳:۵۰:۱۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2399, 4, '2019-02-04 13:50:51', 1, '۱۳۹۷-۱۱-۱۵ ۱۳:۵۰:۵۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2400, 4, '2019-02-04 15:02:41', 1, '۱۳۹۷-۱۱-۱۵ ۱۵:۰۲:۴۱ ب ظ', '::ffff:127.0.0.1', NULL);
INSERT INTO `taa_loginloger` VALUES (2401, 1, '2019-02-04 15:11:43', 1, '۱۳۹۷-۱۱-۱۵ ۱۵:۱۱:۴۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2402, 4, '2019-02-04 16:04:57', 1, '۱۳۹۷-۱۱-۱۵ ۱۶:۰۴:۵۷ ب ظ', '::ffff:127.0.0.1', NULL);
INSERT INTO `taa_loginloger` VALUES (2403, 1, '2019-02-04 16:13:53', 1, '۱۳۹۷-۱۱-۱۵ ۱۶:۱۳:۵۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2404, 1, '2019-02-05 09:10:25', 1, '۱۳۹۷-۱۱-۱۶ ۰۹:۱۰:۲۵ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2405, 1, '2019-02-12 11:24:45', 1, '۱۳۹۷-۱۱-۲۳ ۱۱:۲۴:۴۵ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2406, 1, '2019-02-12 11:24:45', 2, '۱۳۹۷-۱۱-۲۳ ۱۱:۲۴:۴۵ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2407, 1, '2019-02-12 11:24:51', 1, '۱۳۹۷-۱۱-۲۳ ۱۱:۲۴:۵۱ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2408, 1, '2019-03-04 15:05:38', 1, '۱۳۹۷-۱۲-۱۳ ۱۵:۰۵:۳۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2409, 1, '2019-03-04 15:05:38', 2, '۱۳۹۷-۱۲-۱۳ ۱۵:۰۵:۳۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2410, 1, '2019-03-04 15:05:53', 1, '۱۳۹۷-۱۲-۱۳ ۱۵:۰۵:۵۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2411, 1, '2019-03-04 15:39:00', 1, '۱۳۹۷-۱۲-۱۳ ۱۵:۳۹:۰۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2412, 1, '2019-03-04 16:20:43', 1, '۱۳۹۷-۱۲-۱۳ ۱۶:۲۰:۴۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2413, 1, '2019-03-04 16:20:43', 2, '۱۳۹۷-۱۲-۱۳ ۱۶:۲۰:۴۳ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2414, 1, '2019-03-04 16:20:49', 1, '۱۳۹۷-۱۲-۱۳ ۱۶:۲۰:۴۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2415, 1, '2019-03-04 16:20:55', 1, '۱۳۹۷-۱۲-۱۳ ۱۶:۲۰:۵۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2416, 1, '2019-03-05 09:16:41', 1, '۱۳۹۷-۱۲-۱۴ ۰۹:۱۶:۴۱ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2417, NULL, '2019-03-05 09:22:18', 3, '۱۳۹۷-۱۲-۱۴ ۰۹:۲۲:۱۸ ق ظ', '::1', 'ms');
INSERT INTO `taa_loginloger` VALUES (2418, 4, '2019-03-05 09:22:28', 1, '۱۳۹۷-۱۲-۱۴ ۰۹:۲۲:۲۸ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2419, 4, '2019-03-05 10:36:43', 1, '۱۳۹۷-۱۲-۱۴ ۱۰:۳۶:۴۳ ق ظ', '::ffff:127.0.0.1', NULL);
INSERT INTO `taa_loginloger` VALUES (2420, 1, '2019-03-05 10:37:46', 1, '۱۳۹۷-۱۲-۱۴ ۱۰:۳۷:۴۶ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2421, 1, '2019-03-05 10:37:49', 1, '۱۳۹۷-۱۲-۱۴ ۱۰:۳۷:۴۹ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2422, 1, '2019-03-06 14:34:40', 1, '۱۳۹۷-۱۲-۱۵ ۱۴:۳۴:۴۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2423, 4, '2019-03-06 14:39:38', 1, '۱۳۹۷-۱۲-۱۵ ۱۴:۳۹:۳۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2424, 1, '2019-03-09 11:06:37', 1, '۱۳۹۷-۱۲-۱۸ ۱۱:۰۶:۳۷ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2425, 1, '2019-03-09 11:16:19', 2, '۱۳۹۷-۱۲-۱۸ ۱۱:۱۶:۱۹ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2426, 2, '2019-03-09 11:16:25', 1, '۱۳۹۷-۱۲-۱۸ ۱۱:۱۶:۲۵ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2427, 2, '2019-03-09 14:31:04', 1, '۱۳۹۷-۱۲-۱۸ ۱۴:۳۱:۰۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2428, 1, '2019-03-10 08:17:59', 1, '۱۳۹۷-۱۲-۱۹ ۰۸:۱۷:۵۹ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2429, 1, '2019-03-10 08:22:16', 2, '۱۳۹۷-۱۲-۱۹ ۰۸:۲۲:۱۶ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2430, 2, '2019-03-10 08:22:26', 1, '۱۳۹۷-۱۲-۱۹ ۰۸:۲۲:۲۶ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2431, NULL, '2019-03-10 09:06:13', 1, '۱۳۹۷-۱۲-۱۹ ۰۹:۰۶:۱۳ ق ظ', '::1', '1]');
INSERT INTO `taa_loginloger` VALUES (2432, 2, '2019-03-10 09:06:18', 1, '۱۳۹۷-۱۲-۱۹ ۰۹:۰۶:۱۸ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2433, 1, '2019-03-10 10:09:09', 1, '۱۳۹۷-۱۲-۱۹ ۱۰:۰۹:۰۹ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2434, 1, '2019-03-10 10:09:13', 2, '۱۳۹۷-۱۲-۱۹ ۱۰:۰۹:۱۳ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2435, 2, '2019-03-10 10:09:18', 1, '۱۳۹۷-۱۲-۱۹ ۱۰:۰۹:۱۸ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2436, 2, '2019-03-10 10:24:26', 1, '۱۳۹۷-۱۲-۱۹ ۱۰:۲۴:۲۶ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2437, 2, '2019-03-10 13:21:19', 3, '۱۳۹۷-۱۲-۱۹ ۱۳:۲۱:۱۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2438, 2, '2019-03-10 13:21:29', 1, '۱۳۹۷-۱۲-۱۹ ۱۳:۲۱:۲۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2439, 2, '2019-03-10 13:52:25', 1, '۱۳۹۷-۱۲-۱۹ ۱۳:۵۲:۲۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2440, 2, '2019-03-10 14:34:28', 1, '۱۳۹۷-۱۲-۱۹ ۱۴:۳۴:۲۸ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2441, 2, '2019-03-11 09:07:08', 1, '۱۳۹۷-۱۲-۲۰ ۰۹:۰۷:۰۸ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2442, 2, '2019-03-12 09:56:32', 1, '۱۳۹۷-۱۲-۲۱ ۰۹:۵۶:۳۲ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2443, 2, '2019-03-12 10:17:22', 1, '۱۳۹۷-۱۲-۲۱ ۱۰:۱۷:۲۲ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2444, 2, '2019-03-14 09:50:03', 1, '۱۳۹۷-۱۲-۲۳ ۰۹:۵۰:۰۳ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2445, 2, '2019-03-14 09:50:04', 2, '۱۳۹۷-۱۲-۲۳ ۰۹:۵۰:۰۳ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2446, 2, '2019-03-14 09:50:08', 1, '۱۳۹۷-۱۲-۲۳ ۰۹:۵۰:۰۸ ق ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2447, 2, '2019-03-14 12:12:00', 1, '۱۳۹۷-۱۲-۲۳ ۱۲:۱۲:۰۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2448, 2, '2019-03-14 12:54:56', 1, '۱۳۹۷-۱۲-۲۳ ۱۲:۵۴:۵۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2449, 2, '2019-03-14 14:03:34', 1, '۱۳۹۷-۱۲-۲۳ ۱۴:۰۳:۳۴ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2450, 2, '2019-03-14 14:36:30', 2, '۱۳۹۷-۱۲-۲۳ ۱۴:۳۶:۳۰ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2451, 4, '2019-03-14 14:36:35', 1, '۱۳۹۷-۱۲-۲۳ ۱۴:۳۶:۳۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2452, 4, '2019-03-14 14:36:39', 2, '۱۳۹۷-۱۲-۲۳ ۱۴:۳۶:۳۹ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2453, 4, '2019-03-14 14:36:47', 1, '۱۳۹۷-۱۲-۲۳ ۱۴:۳۶:۴۷ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2454, 4, '2019-03-14 14:36:51', 2, '۱۳۹۷-۱۲-۲۳ ۱۴:۳۶:۵۱ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2455, 2, '2019-03-14 14:36:55', 1, '۱۳۹۷-۱۲-۲۳ ۱۴:۳۶:۵۵ ب ظ', '::1', NULL);
INSERT INTO `taa_loginloger` VALUES (2456, 2, '2019-03-14 14:46:37', 2, '۱۳۹۷-۱۲-۲۳ ۱۴:۴۶:۳۷ ب ظ', '::ffff:127.0.0.1', NULL);
INSERT INTO `taa_loginloger` VALUES (2457, 2, '2019-03-14 14:46:41', 1, '۱۳۹۷-۱۲-۲۳ ۱۴:۴۶:۴۱ ب ظ', '::1', NULL);

-- ----------------------------
-- Table structure for taa_message
-- ----------------------------
DROP TABLE IF EXISTS `taa_message`;
CREATE TABLE `taa_message`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'کد موضوع',
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL COMMENT 'موضوع',
  `desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL COMMENT 'شرح',
  `sender` int(10) NOT NULL COMMENT 'فرستنده',
  `reciver` int(10) NOT NULL COMMENT 'گیرنده',
  `datecreateF` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'تاریخ درخواست فارسی',
  `datecreateE` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'تاریخ درخواست ',
  `status` int(1) NOT NULL COMMENT 'وضعیت',
  `parent` int(10) NULL DEFAULT NULL COMMENT 'کد مرجع',
  `changeDate` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT 'تاریخ تغییر',
  `owner` int(10) NULL DEFAULT NULL COMMENT 'صاحب پیام',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `reciver_id`(`reciver`) USING BTREE,
  INDEX `sender_id`(`sender`) USING BTREE,
  INDEX `owner_id`(`owner`) USING BTREE,
  CONSTRAINT `taa_message_ibfk_1` FOREIGN KEY (`owner`) REFERENCES `taa_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `taa_message_ibfk_2` FOREIGN KEY (`reciver`) REFERENCES `taa_users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `taa_message_ibfk_3` FOREIGN KEY (`sender`) REFERENCES `taa_users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of taa_message
-- ----------------------------
INSERT INTO `taa_message` VALUES (34, 'me10335103713', 'مشکل نمایش', 'با عرض سلام. یکی از نمودار ها سیاه مشاهده می شود.بررسی فرمائید', 4, 1, '۱۳۹۷-۱۲-۱۴ ۱۰:۳۷:۱۳ ق ظ', '2019-03-05 10:37:13', 3, NULL, '2019-03-06 14:46:19', 4);
INSERT INTO `taa_message` VALUES (38, 'me10036143745', 'مشکل نمایش', 'کدام نمودار؟', 1, 4, '۱۳۹۷-۱۲-۱۵ ۱۴:۳۷:۴۵ ب ظ', '2019-03-06 14:37:45', 3, 34, '2019-03-06 14:46:19', 4);
INSERT INTO `taa_message` VALUES (39, 'me10336144008', 'مشکل نمایش', 'نمودار اول صفحه', 4, 1, '۱۳۹۷-۱۲-۱۵ ۱۴:۴۰:۰۸ ب ظ', '2019-03-06 14:40:08', 3, 34, '2019-03-06 14:46:19', 4);
INSERT INTO `taa_message` VALUES (40, 'me10036144526', 'مشکل نمایش', 'فعلا قابل حل نیست. بسته شود.', 1, 4, '۱۳۹۷-۱۲-۱۵ ۱۴:۴۵:۲۶ ب ظ', '2019-03-06 14:45:26', 3, 34, '2019-03-06 14:46:19', 4);
INSERT INTO `taa_message` VALUES (41, 'me10336144619', 'مشکل نمایش', 'فعلا حل شد', 4, 1, '۱۳۹۷-۱۲-۱۵ ۱۴:۴۶:۱۹ ب ظ', '2019-03-06 14:46:19', 3, 34, '2019-03-06 14:46:19', 4);

-- ----------------------------
-- Table structure for taa_messageold
-- ----------------------------
DROP TABLE IF EXISTS `taa_messageold`;
CREATE TABLE `taa_messageold`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'کد موضوع',
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL COMMENT 'موضوع',
  `desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL COMMENT 'شرح',
  `sender` int(10) NOT NULL COMMENT 'فرستنده',
  `reciver` int(10) NOT NULL COMMENT 'گیرنده',
  `datecreateF` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'تاریخ درخواست فارسی',
  `datecreateE` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'تاریخ درخواست ',
  `status` int(1) NOT NULL COMMENT 'وضعیت',
  `replayCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'کد مرجع',
  `changeDate` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT 'تاریخ تغییر',
  `owner` int(10) NULL DEFAULT NULL COMMENT 'صاحب پیام',
  PRIMARY KEY (`id`, `code`) USING BTREE,
  INDEX `reciver_id`(`reciver`) USING BTREE,
  INDEX `sender_id`(`sender`) USING BTREE,
  INDEX `owner_id`(`owner`) USING BTREE,
  CONSTRAINT `owner_id` FOREIGN KEY (`owner`) REFERENCES `taa_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `reciver_id` FOREIGN KEY (`reciver`) REFERENCES `taa_users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sender_id` FOREIGN KEY (`sender`) REFERENCES `taa_users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of taa_messageold
-- ----------------------------
INSERT INTO `taa_messageold` VALUES (8, 'me10258102212', 'سلام', 'ایراد هست', 3, 4, '۱۳۹۷-۰۲-۱۸ ۱۰:۲۲:۱۲ ق ظ', '2018-05-08 10:22:12', 3, NULL, '2018-05-08 11:24:02', 3);
INSERT INTO `taa_messageold` VALUES (12, 'me10358103446', 'سلام', 'کجا ؟', 4, 3, '۱۳۹۷-۰۲-۱۸ ۱۰:۳۴:۴۶ ق ظ', '2018-05-08 10:34:46', 3, 'me10258102212', '2018-05-08 11:24:02', 3);
INSERT INTO `taa_messageold` VALUES (13, 'me10258103916', 'سلام', 'همین جا', 3, 4, '۱۳۹۷-۰۲-۱۸ ۱۰:۳۹:۱۶ ق ظ', '2018-05-08 10:39:16', 3, 'me10258102212', '2018-05-08 11:24:02', 3);
INSERT INTO `taa_messageold` VALUES (14, 'me10358104828', 'سلام', 'لطفا سابقه را بخوانید !', 4, 1, '۱۳۹۷-۰۲-۱۸ ۱۰:۴۸:۲۸ ق ظ', '2018-05-08 10:48:28', 3, 'me10258102212', '2018-05-08 11:24:02', 3);
INSERT INTO `taa_messageold` VALUES (17, 'me10058112334', 'سلام', 'ببند', 1, 4, '۱۳۹۷-۰۲-۱۸ ۱۱:۲۳:۳۴ ق ظ', '2018-05-08 11:23:34', 3, 'me10258102212', '2018-05-08 11:24:02', 3);
INSERT INTO `taa_messageold` VALUES (18, 'me10358112402', 'سلام', 'حله کاربر', 4, 1, '۱۳۹۷-۰۲-۱۸ ۱۱:۲۴:۰۲ ق ظ', '2018-05-08 11:24:02', 3, 'me10258102212', '2018-05-08 11:24:02', 3);
INSERT INTO `taa_messageold` VALUES (19, 'me10258114455', 'پیام شماره 2', 'پیام اصلی', 3, 1, '۱۳۹۷-۰۲-۱۸ ۱۱:۴۴:۵۵ ق ظ', '2018-05-08 11:44:55', 3, NULL, '2018-05-08 12:32:36', 3);
INSERT INTO `taa_messageold` VALUES (20, 'me10058114732', 'پیام شماره 2', 'دوباره نگاه کنید !', 1, 3, '۱۳۹۷-۰۲-۱۸ ۱۱:۴۷:۳۲ ق ظ', '2018-05-08 11:47:32', 3, 'me10258114455', '2018-05-08 12:32:36', 3);
INSERT INTO `taa_messageold` VALUES (21, 'me101522142412', 'سلام', 'تست', 2, 1, '۱۳۹۷-۰۳-۰۱ ۱۴:۲۴:۱۲ ب ظ', '2018-05-22 14:24:12', 3, NULL, '2018-05-23 14:00:48', 2);
INSERT INTO `taa_messageold` VALUES (22, 'me100522142452', 'سلام', 'علیک سلام', 1, 2, '۱۳۹۷-۰۳-۰۱ ۱۴:۲۴:۵۲ ب ظ', '2018-05-22 14:24:52', 3, 'me101522142412', '2018-05-23 14:00:48', 2);
INSERT INTO `taa_messageold` VALUES (23, 'me10024081450', 'تست پیام', 'سلام', 1, 1, '۱۳۹۷-۱۱-۱۵ ۰۸:۱۴:۵۰ ق ظ', '2019-02-04 08:14:50', 3, NULL, '2019-02-04 08:15:47', 1);
INSERT INTO `taa_messageold` VALUES (24, 'me10024081547', 'تست پیام', 'به خودم بود ...', 1, 1, '۱۳۹۷-۱۱-۱۵ ۰۸:۱۵:۴۷ ق ظ', '2019-02-04 08:15:47', 3, 'me10024081450', '2019-02-04 08:15:47', 1);
INSERT INTO `taa_messageold` VALUES (25, 'me10024082010', 'تست', 'سلام', 1, 4, '۱۳۹۷-۱۱-۱۵ ۰۸:۲۰:۱۰ ق ظ', '2019-02-04 08:20:10', 3, NULL, '2019-02-04 09:57:21', 1);
INSERT INTO `taa_messageold` VALUES (26, 'me10324082124', 'تست', 'ممنون . نمودار سیاه هست.', 4, 1, '۱۳۹۷-۱۱-۱۵ ۰۸:۲۱:۲۴ ق ظ', '2019-02-04 08:21:24', 3, 'me10024082010', '2019-02-04 09:57:21', 1);
INSERT INTO `taa_messageold` VALUES (27, 'me10024095721', 'تست', 'حل', 1, 4, '۱۳۹۷-۱۱-۱۵ ۰۹:۵۷:۲۱ ق ظ', '2019-02-04 09:57:21', 3, 'me10024082010', '2019-02-04 09:57:21', 1);
INSERT INTO `taa_messageold` VALUES (28, 'me10324095806', 'پیام جدید', 'نمودار سیاه است. بررسی کنید', 4, 1, '۱۳۹۷-۱۱-۱۵ ۰۹:۵۸:۰۶ ق ظ', '2019-02-04 09:58:06', 4, NULL, '2019-02-04 09:58:37', 4);
INSERT INTO `taa_messageold` VALUES (29, 'me10024095837', 'پیام جدید', 'کدام پیام؟', 1, 4, '۱۳۹۷-۱۱-۱۵ ۰۹:۵۸:۳۷ ق ظ', '2019-02-04 09:58:37', 4, 'me10324095806', '2019-02-04 09:58:56', 4);
INSERT INTO `taa_messageold` VALUES (30, 'me10324095856', 'پیام جدید', 'صفحه لاگین .', 4, 1, '۱۳۹۷-۱۱-۱۵ ۰۹:۵۸:۵۶ ق ظ', '2019-02-04 09:58:56', 5, 'me10324095806', '2019-02-04 09:59:07', 4);
INSERT INTO `taa_messageold` VALUES (31, 'me10324105943', 'پیام 2', 'سوال', 4, 1, '۱۳۹۷-۱۱-۱۵ ۱۰:۵۹:۴۳ ق ظ', '2019-02-04 10:59:43', 4, NULL, '2019-02-04 11:00:14', 4);
INSERT INTO `taa_messageold` VALUES (32, 'me10024110014', 'پیام 2', 'چیست؟', 1, 4, '۱۳۹۷-۱۱-۱۵ ۱۱:۰۰:۱۴ ق ظ', '2019-02-04 11:00:14', 2, 'me10324105943', '2019-02-04 11:00:14', 4);

-- ----------------------------
-- Table structure for taa_property
-- ----------------------------
DROP TABLE IF EXISTS `taa_property`;
CREATE TABLE `taa_property`  (
  `type` int(10) NOT NULL,
  `typeDesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `property` int(10) NOT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  UNIQUE INDEX `type`(`type`, `property`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of taa_property
-- ----------------------------
INSERT INTO `taa_property` VALUES (1, 'وضعیت کاربر', 0, 'غیر فعال');
INSERT INTO `taa_property` VALUES (1, 'وضعیت کاربر', 1, 'فعال');
INSERT INTO `taa_property` VALUES (1, 'وضعیت کاربر', 2, 'قفل موقت');
INSERT INTO `taa_property` VALUES (2, 'وضعیت ورود در سابقه لاگین', 1, 'ورود موفق');
INSERT INTO `taa_property` VALUES (2, 'وضعیت ورود در سابقه لاگین', 2, 'خروج کاربر');
INSERT INTO `taa_property` VALUES (2, 'وضعیت ورود در سابقه لاگین', 3, 'ورود ناموفق');
INSERT INTO `taa_property` VALUES (3, 'نقش کاربری', 0, 'کاربر ارشد');
INSERT INTO `taa_property` VALUES (3, 'نقش کاربری', 1, 'کاربر ادمین');
INSERT INTO `taa_property` VALUES (3, 'نقش کاربری', 2, 'کاربر عادی');
INSERT INTO `taa_property` VALUES (4, 'آنلاین بودن کاربر', 0, 'OffLine');
INSERT INTO `taa_property` VALUES (4, 'آنلاین بودن کاربر', 1, 'Online');
INSERT INTO `taa_property` VALUES (5, 'وضعیت پیام', 1, 'اقدام نشده');
INSERT INTO `taa_property` VALUES (5, 'وضعیت پیام', 2, 'پاسخ داده شده');
INSERT INTO `taa_property` VALUES (5, 'وضعیت پیام', 3, 'بسته شده');
INSERT INTO `taa_property` VALUES (5, 'وضعیت پیام', 4, 'وابسته');
INSERT INTO `taa_property` VALUES (5, 'وضعیت پیام', 5, 'در دست بررسی');

-- ----------------------------
-- Table structure for taa_transaction
-- ----------------------------
DROP TABLE IF EXISTS `taa_transaction`;
CREATE TABLE `taa_transaction`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `creditor` decimal(15, 0) NOT NULL DEFAULT 0 COMMENT 'طلبکار',
  `debtor` decimal(15, 0) NOT NULL DEFAULT 0 COMMENT 'بدهکار',
  `transdate` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'تاریخ',
  `description` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'توضیحات',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `taa_variz_id_users_id`(`userid`) USING BTREE,
  CONSTRAINT `taa_variz_id_users_id` FOREIGN KEY (`userid`) REFERENCES `taa_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of taa_transaction
-- ----------------------------
INSERT INTO `taa_transaction` VALUES (2, 2, 1465, 0, '1397/02/04', 'شس');
INSERT INTO `taa_transaction` VALUES (14, 2, 0, 343, '1397/02/04', 'شس');
INSERT INTO `taa_transaction` VALUES (15, 2, 6554, 0, '1397/02/04', 'شس');
INSERT INTO `taa_transaction` VALUES (16, 2, 1232, 0, '1397/02/04', 'شس');
INSERT INTO `taa_transaction` VALUES (17, 2, 1234, 0, '1397/02/01', 'شس');
INSERT INTO `taa_transaction` VALUES (18, 2, 0, 322243, '1397/02/05', 'شس');
INSERT INTO `taa_transaction` VALUES (20, 1, 0, 23434, '1397/02/04', 'ererer');
INSERT INTO `taa_transaction` VALUES (22, 1, 0, 12312, '1397/02/16', 'ضص');
INSERT INTO `taa_transaction` VALUES (23, 1, 0, 131234, '1397/02/11', '');
INSERT INTO `taa_transaction` VALUES (24, 1, 0, 12323, '1397/02/16', '');
INSERT INTO `taa_transaction` VALUES (28, 4, 0, 123, '1397/02/12', '');
INSERT INTO `taa_transaction` VALUES (29, 4, 3234, 0, '1397/02/29', '222222222');
INSERT INTO `taa_transaction` VALUES (30, 2, 13254, 0, '1397/03/01', 'واریزی');
INSERT INTO `taa_transaction` VALUES (32, 1, 2222, 0, '1397/03/01', 'asd');
INSERT INTO `taa_transaction` VALUES (33, 1, 12323, 0, '1397/03/08', '');
INSERT INTO `taa_transaction` VALUES (35, 1, 100000000, 0, '1397/12/01', 'واریز اول');

-- ----------------------------
-- Table structure for taa_users
-- ----------------------------
DROP TABLE IF EXISTS `taa_users`;
CREATE TABLE `taa_users`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL COMMENT 'نام',
  `famili` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL COMMENT 'فامیلی',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(1) NOT NULL COMMENT 'وضعیت کاربر',
  `rules` int(1) NOT NULL COMMENT 'نقض کاربری',
  `createdate` datetime(0) NOT NULL COMMENT 'تاریخ ایجاد',
  `changedate` datetime(0) NULL DEFAULT NULL COMMENT 'تاریخ ویرایش',
  `edituser` int(10) NULL DEFAULT NULL COMMENT 'کاربر ویرایش کننده',
  `lockdate` datetime(0) NULL DEFAULT NULL COMMENT 'زمان لاک شدن',
  `avatar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'تصویر کاربر',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_uniq_field`(`name`, `famili`) USING BTREE,
  UNIQUE INDEX `user_uniq_username`(`username`) USING BTREE,
  INDEX `changeuser_id_id`(`edituser`) USING BTREE,
  CONSTRAINT `changeuser_id_id` FOREIGN KEY (`edituser`) REFERENCES `taa_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of taa_users
-- ----------------------------
INSERT INTO `taa_users` VALUES (1, 'محمد', 'شهرستانکی', 'msh', '$2a$10$BaBYmxL5lJILodbQsKAbdecM/z3i/guexqknBc59m0AE1oBXp8nd.', 1, 1, '2018-03-03 13:38:11', '2018-04-24 17:02:08', 1, NULL, NULL);
INSERT INTO `taa_users` VALUES (2, 'مجتبی', 'شهرستانکی', 'moj', '$2a$10$V0nsRQg.QfcK/cvYoSdcW.Lm0Cijh4I.X8EtN7ezzjl3uHdeAYBqi', 1, 2, '2018-03-03 13:38:11', '2019-03-10 08:22:32', 2, NULL, 'images/faces/2.png');
INSERT INTO `taa_users` VALUES (3, 'جواد', 'کاظمی نشاط', 'fa', '$2a$10$4kYgAwJ5pj7RM5kZ0z1HIOSY73vmYlw4giJ4vFO3UdexhMuUD5e5C', 1, 1, '2018-03-03 13:38:11', '2018-05-01 12:35:18', 1, NULL, NULL);
INSERT INTO `taa_users` VALUES (4, 'محمد صادق', 'پیرامون مقدم', 'm.s', '$2a$10$fwsaXz9rjLdACkt5pRvPnuUNw9.5cIgxOjbwpr9GgEVHYuwulod7O', 1, 1, '2018-03-03 13:38:11', '2019-02-04 08:20:37', 1, NULL, NULL);
INSERT INTO `taa_users` VALUES (5, 'علیرضا', 'گلشنی', 'a.golshani', '$2a$10$5NInUkArEoA9lqoIlDMDle3k8wc0noqH.gM6WJSd52Lw79MX8/R.O', 1, 2, '2018-03-03 13:38:11', '2018-04-28 14:34:29', 1, NULL, NULL);
INSERT INTO `taa_users` VALUES (6, 'مجید', 'کاظمی', 'm.k', '$2a$10$U8KG0RsFkT932vHw3WRYD.ij5iGLGGMcnjSlLjg4Ez9xuEl0/gBci', 1, 2, '2018-03-03 13:38:11', '2018-04-29 15:13:14', 1, NULL, NULL);
INSERT INTO `taa_users` VALUES (7, 'رضا', 'تقی زاده', 'm.dd', '$2a$10$TrPsUZ0.tFPZJ9qGuv.5wOiNd5mal6fv902npQ8pvne78I9nbGxue', 1, 2, '2018-03-04 17:12:17', '2018-04-24 17:01:22', 1, NULL, NULL);
INSERT INTO `taa_users` VALUES (10, 'عباس', 'رضایی', 'M.REZAII', '$2a$10$ZqRHFoSgpOf.bAbupIcMtO4BMPfwW8cXfq4LoUGpWySK5T.LVQK7y', 1, 2, '2018-03-03 13:38:11', '2018-04-11 17:22:06', 1, '2018-04-09 17:42:41', NULL);
INSERT INTO `taa_users` VALUES (15, 'عباس', 'کریمی', 'a.karimi', '$2a$10$ZSR8AsZ0JP49ELFWfI2WP.IYIWnrm6W6VdoK.8GMH102jGymGvxe6', 1, 2, '2018-04-28 10:28:19', '2018-04-28 12:45:22', 1, NULL, NULL);

-- ----------------------------
-- Table structure for temp
-- ----------------------------
DROP TABLE IF EXISTS `temp`;
CREATE TABLE `temp`  (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for useronline
-- ----------------------------
DROP TABLE IF EXISTS `useronline`;
CREATE TABLE `useronline`  (
  `userid` int(10) NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of useronline
-- ----------------------------
INSERT INTO `useronline` VALUES (2);

-- ----------------------------
-- View structure for vi_taa_adminuser
-- ----------------------------
DROP VIEW IF EXISTS `vi_taa_adminuser`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `vi_taa_adminuser` AS select (`us`.`id` + 99) AS `code`,concat(`us`.`name`,' ',`us`.`famili`) AS `fullname` from `taa_users` `us` where (`us`.`rules` = 1);

-- ----------------------------
-- View structure for vi_taa_loginchart
-- ----------------------------
DROP VIEW IF EXISTS `vi_taa_loginchart`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `vi_taa_loginchart` AS select `b`.`count` AS `count`,`b`.`date` AS `date` from (select `a`.`count` AS `count`,`a`.`date` AS `date` from (select count(`log`.`userid`) AS `count`,cast(`log`.`dateloginE` as date) AS `date` from `taavondb`.`taa_loginloger` `log` where ((`log`.`status` = 1) and (`log`.`userid` is not null)) group by cast(`log`.`dateloginE` as date)) `a` order by `a`.`date` desc limit 10) `b` order by `b`.`date`;

-- ----------------------------
-- View structure for vi_taa_message
-- ----------------------------
DROP VIEW IF EXISTS `vi_taa_message`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `vi_taa_message` AS select (`msg`.`id` + 99) AS `id`,`msg`.`code` AS `code`,`msg`.`datecreateE` AS `datecreateE`,`msg`.`subject` AS `subject`,`msg`.`desc` AS `desc`,`msg`.`datecreateF` AS `datecreateF`,`msg`.`status` AS `status`,`prop`.`desc` AS `statusname`,(`sender`.`id` + 99) AS `sender`,`sender`.`fullname` AS `sendername`,(`reciver`.`id` + 99) AS `reciver`,`reciver`.`fullname` AS `recivername`,(`msg`.`owner` + 99) AS `owner`,(`msg`.`parent` + 99) AS `parent`,(select `vm2`.`status` from `taa_message` `vm2` where ((`vm2`.`parent` = `msg`.`id`) or (`vm2`.`parent` = `msg`.`parent`)) order by `vm2`.`datecreateE` desc limit 1) AS `lastStatue`,(select `pr`.`desc` from `taa_property` `pr` where ((`pr`.`type` = 5) and (`pr`.`property` = `lastStatue`))) AS `lastStatueName` from (((`taa_message` `msg` join `taa_property` `prop` on((`msg`.`status` = `prop`.`property`))) join `vi_taa_userlist` `sender` on((`msg`.`sender` = `sender`.`id`))) join `vi_taa_userlist` `reciver` on((`msg`.`reciver` = `reciver`.`id`))) where (`prop`.`type` = 5);

-- ----------------------------
-- View structure for vi_taa_messageold
-- ----------------------------
DROP VIEW IF EXISTS `vi_taa_messageold`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `vi_taa_messageold` AS select `msg`.`id` AS `id`,`msg`.`code` AS `code`,`msg`.`datecreateE` AS `datecreateE`,`msg`.`subject` AS `subject`,`msg`.`desc` AS `desc`,`msg`.`datecreateF` AS `datecreateF`,`msg`.`status` AS `status`,`prop`.`desc` AS `statusname`,(`sender`.`id` + 99) AS `sender`,`sender`.`fullname` AS `sendername`,(`reciver`.`id` + 99) AS `reciver`,`reciver`.`fullname` AS `recivername`,(`msg`.`owner` + 99) AS `owner`,`msg`.`replayCode` AS `replayCode` from (((`taa_messageold` `msg` join `taa_property` `prop` on((`msg`.`status` = `prop`.`property`))) join `vi_taa_userlist` `sender` on((`msg`.`sender` = `sender`.`id`))) join `vi_taa_userlist` `reciver` on((`msg`.`reciver` = `reciver`.`id`))) where (`prop`.`type` = 5);

-- ----------------------------
-- View structure for vi_taa_transaction
-- ----------------------------
DROP VIEW IF EXISTS `vi_taa_transaction`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `vi_taa_transaction` AS select `trans`.`id` AS `id`,`users`.`id` AS `personid`,concat(`users`.`name`,' ',`users`.`famili`) AS `person`,`trans`.`transdate` AS `transdate`,(case when (`trans`.`creditor` = 0) then concat('-',`trans`.`debtor`) else `trans`.`creditor` end) AS `currency`,`trans`.`description` AS `description` from (`taa_transaction` `trans` join `taa_users` `users`) where (`users`.`id` = `trans`.`userid`);

-- ----------------------------
-- View structure for vi_taa_useredit
-- ----------------------------
DROP VIEW IF EXISTS `vi_taa_useredit`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `vi_taa_useredit` AS select `us`.`id` AS `id`,`us`.`name` AS `name`,`us`.`username` AS `username`,`us`.`famili` AS `famili`,`us`.`status` AS `status`,(select `prop`.`desc` from `taa_property` `prop` where ((`prop`.`property` = `us`.`status`) and (`prop`.`type` = 1))) AS `statusname`,`us`.`rules` AS `rules`,(select `prop`.`desc` from `taa_property` `prop` where ((`prop`.`property` = `us`.`rules`) and (`prop`.`type` = 3))) AS `rulesname` from `taa_users` `us`;

-- ----------------------------
-- View structure for vi_taa_userlist
-- ----------------------------
DROP VIEW IF EXISTS `vi_taa_userlist`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `vi_taa_userlist` AS select `us`.`id` AS `id`,`us`.`name` AS `name`,`us`.`username` AS `username`,`us`.`famili` AS `famili`,concat(`us`.`name`,' ',`us`.`famili`) AS `fullname`,(select `prop`.`desc` from `taa_property` `prop` where ((`prop`.`property` = `us`.`rules`) and (`prop`.`type` = 3))) AS `rulesname`,`us`.`rules` AS `rules`,'******' AS `password`,`us`.`status` AS `status`,(select `prop`.`desc` from `taa_property` `prop` where ((`prop`.`property` = `us`.`status`) and (`prop`.`type` = 1))) AS `statusname`,(`onl`.`userid` is not null) AS `useronline`,coalesce((select `prop`.`desc` from `taa_property` `prop` where ((`prop`.`property` = `useronline`) and (`prop`.`type` = 4))),(select `prop`.`desc` from `taa_property` `prop` where ((`prop`.`property` = 0) and (`prop`.`type` = 4)))) AS `useronlineDesc`,`us`.`avatar` AS `avatar` from (`taa_users` `us` left join `useronline` `onl` on((`us`.`id` = `onl`.`userid`)));

-- ----------------------------
-- View structure for vi_taa_userloginlog
-- ----------------------------
DROP VIEW IF EXISTS `vi_taa_userloginlog`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `vi_taa_userloginlog` AS select `log`.`userid` AS `userid`,`log`.`dateloginF` AS `dateloginF`,`log`.`ip` AS `ip`,`pro`.`desc` AS `desc`,`log`.`others` AS `others`,`log`.`status` AS `status` from (`taa_loginloger` `log` join `taa_property` `pro`) where ((`log`.`userid` = `log`.`userid`) and (`log`.`status` = `pro`.`property`) and (`pro`.`type` = 2)) order by `log`.`dateloginE` desc;

-- ----------------------------
-- Function structure for NewProc
-- ----------------------------
DROP FUNCTION IF EXISTS `NewProc`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `NewProc`() RETURNS int(11)
BEGIN
DECLARE index1 int;
DECLARE index2 int;
DECLARE userid int;
 select a.index1 INTO index1  from( select POSITION('"passport":{"user":' in ses.`data` )+ 19 as index1 from sessions ses)a  ;
 select b.index2 INTO index2  from( select POSITION('}}' in ses.`data` ) as index2 from sessions ses)b  ;
 select c.userid INTO userid  from( select SUBSTRING(ses.`data` ,index1,index2-index1) as userid from sessions ses)c ;
     
		if(userid <> 0) then
		insert into useronline (userid) VALUES(userid);
		end if;
		
RETURN userid;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for userCountLogin
-- ----------------------------
DROP FUNCTION IF EXISTS `userCountLogin`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `userCountLogin`(userid int,lim int,sta int ) RETURNS int(11)
BEGIN
DECLARE count_var int;
 select count(*) INTO count_var  from( select a.* from (select * from taa_loginloger log where log.userid = userid ORDER BY log.dateloginE desc)a limit lim )b where b.`status` = sta ;
RETURN count_var;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table sessions
-- ----------------------------
DROP TRIGGER IF EXISTS `trig_afer_update`;
delimiter ;;
CREATE TRIGGER `trig_afer_update` AFTER UPDATE ON `sessions` FOR EACH ROW BEGIN
		/*insert*/
		DECLARE index1 int;
		DECLARE index2 int;
		DECLARE olduserid int;
		DECLARE user_id int;
		select a.index1 INTO index1  from( select POSITION('"passport":{"user":' in ses.`data` ) as index1 from sessions ses where ses.session_id = NEW.session_id)a  ;
		
		if(index1 != 0) then
			set index1 = index1 + 19;
			select b.index2 INTO index2  from( select POSITION('}}' in ses.`data` ) as index2 from sessions ses where ses.session_id = NEW.session_id)b  ;
			select coalesce(c.userid,0) INTO user_id  from( select SUBSTRING(ses.`data` ,index1,index2-index1) as userid from sessions ses where ses.session_id = NEW.session_id)c ;
		
			select coalesce ((select us.userid from useronline us where userid = user_id),0) into olduserid;
			if(olduserid = 0) THEN
				insert into useronline (userid) VALUES(user_id);
			end if;
		end if;
 END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table sessions
-- ----------------------------
DROP TRIGGER IF EXISTS `trig_before_delete`;
delimiter ;;
CREATE TRIGGER `trig_before_delete` BEFORE DELETE ON `sessions` FOR EACH ROW BEGIN
		/*delete*/
		DECLARE index1 int;
		DECLARE index2 int;
		DECLARE olduserid int;
		DECLARE user_id int;
		select a.index1 INTO index1  from( select POSITION('"passport":{"user":' in ses.`data` ) as index1 from sessions ses where ses.session_id = OLD.session_id)a  ;
		
		if(index1 != 0) then
			set index1 = index1 + 19;
			select b.index2 INTO index2  from( select POSITION('}}' in ses.`data` ) as index2 from sessions ses where ses.session_id = OLD.session_id)b  ;
			select coalesce(c.userid,0) INTO user_id  from( select SUBSTRING(ses.`data` ,index1,index2-index1) as userid from sessions ses where ses.session_id = OLD.session_id)c ;
			
			select coalesce ((select us.userid from useronline us where userid = user_id),0) into olduserid;
			if(olduserid != 0) THEN
				delete from useronline  where  userid = user_id ;
			end if;
		end if;
 END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
